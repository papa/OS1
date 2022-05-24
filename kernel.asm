
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8c013103          	ld	sp,-1856(sp) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7e5050ef          	jal	ra,80006000 <start>

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
    80001080:	684020ef          	jal	ra,80003704 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	160080e7          	jalr	352(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    800014a0:	130080e7          	jalr	304(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    800014c0:	110080e7          	jalr	272(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	174080e7          	jalr	372(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	cb850513          	addi	a0,a0,-840 # 80009188 <CONSOLE_STATUS+0x178>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	0f4080e7          	jalr	244(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    80001538:	098080e7          	jalr	152(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    80001558:	078080e7          	jalr	120(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	0dc080e7          	jalr	220(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	c2050513          	addi	a0,a0,-992 # 80009188 <CONSOLE_STATUS+0x178>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	05c080e7          	jalr	92(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    800015e0:	ff0080e7          	jalr	-16(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	054080e7          	jalr	84(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
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
    80001620:	00008517          	auipc	a0,0x8
    80001624:	a2850513          	addi	a0,a0,-1496 # 80009048 <CONSOLE_STATUS+0x38>
    80001628:	00002097          	auipc	ra,0x2
    8000162c:	fa4080e7          	jalr	-92(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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
    80001658:	f78080e7          	jalr	-136(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	fdc080e7          	jalr	-36(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	b2050513          	addi	a0,a0,-1248 # 80009188 <CONSOLE_STATUS+0x178>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	f5c080e7          	jalr	-164(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
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

00000000800016b8 <_Z4f1_2Pv>:
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    Riscv::printString("f1_2 started\n");
    800016d0:	00008517          	auipc	a0,0x8
    800016d4:	99850513          	addi	a0,a0,-1640 # 80009068 <CONSOLE_STATUS+0x58>
    800016d8:	00002097          	auipc	ra,0x2
    800016dc:	ef4080e7          	jalr	-268(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800016e0:	00000493          	li	s1,0
    800016e4:	00c0006f          	j	800016f0 <_Z4f1_2Pv+0x38>
            thread_exit();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c5c080e7          	jalr	-932(ra) # 80001344 <thread_exit>
        x++;
    800016f0:	0014849b          	addiw	s1,s1,1
        s1->wait();
    800016f4:	0000a917          	auipc	s2,0xa
    800016f8:	22c90913          	addi	s2,s2,556 # 8000b920 <_ZL2s1>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	c64080e7          	jalr	-924(ra) # 80003364 <_ZN9Semaphore4waitEv>
        __putc('1');
    80001708:	03100513          	li	a0,49
    8000170c:	00007097          	auipc	ra,0x7
    80001710:	9b0080e7          	jalr	-1616(ra) # 800080bc <__putc>
        __putc('\n');
    80001714:	00a00513          	li	a0,10
    80001718:	00007097          	auipc	ra,0x7
    8000171c:	9a4080e7          	jalr	-1628(ra) # 800080bc <__putc>
        s2->signal();
    80001720:	00893503          	ld	a0,8(s2)
    80001724:	00002097          	auipc	ra,0x2
    80001728:	cc4080e7          	jalr	-828(ra) # 800033e8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    8000172c:	000017b7          	lui	a5,0x1
    80001730:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80001734:	fa97cae3          	blt	a5,s1,800016e8 <_Z4f1_2Pv+0x30>
            thread_dispatch();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	bec080e7          	jalr	-1044(ra) # 80001324 <thread_dispatch>
    80001740:	fb1ff06f          	j	800016f0 <_Z4f1_2Pv+0x38>

0000000080001744 <_Z4f2_2Pv>:
{
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	01213023          	sd	s2,0(sp)
    80001758:	02010413          	addi	s0,sp,32
    Riscv::printString("f2_2 started\n");
    8000175c:	00008517          	auipc	a0,0x8
    80001760:	91c50513          	addi	a0,a0,-1764 # 80009078 <CONSOLE_STATUS+0x68>
    80001764:	00002097          	auipc	ra,0x2
    80001768:	e68080e7          	jalr	-408(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    int x = 0;
    8000176c:	00000493          	li	s1,0
    80001770:	00c0006f          	j	8000177c <_Z4f2_2Pv+0x38>
            thread_exit();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	bd0080e7          	jalr	-1072(ra) # 80001344 <thread_exit>
        x++;
    8000177c:	0014849b          	addiw	s1,s1,1
        s2->wait();
    80001780:	0000a917          	auipc	s2,0xa
    80001784:	1a090913          	addi	s2,s2,416 # 8000b920 <_ZL2s1>
    80001788:	00893503          	ld	a0,8(s2)
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	bd8080e7          	jalr	-1064(ra) # 80003364 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001794:	03200513          	li	a0,50
    80001798:	00007097          	auipc	ra,0x7
    8000179c:	924080e7          	jalr	-1756(ra) # 800080bc <__putc>
        __putc('\n');
    800017a0:	00a00513          	li	a0,10
    800017a4:	00007097          	auipc	ra,0x7
    800017a8:	918080e7          	jalr	-1768(ra) # 800080bc <__putc>
        s3->signal();
    800017ac:	01093503          	ld	a0,16(s2)
    800017b0:	00002097          	auipc	ra,0x2
    800017b4:	c38080e7          	jalr	-968(ra) # 800033e8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    800017b8:	000017b7          	lui	a5,0x1
    800017bc:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800017c0:	fa97cae3          	blt	a5,s1,80001774 <_Z4f2_2Pv+0x30>
            thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	b60080e7          	jalr	-1184(ra) # 80001324 <thread_dispatch>
    800017cc:	fb1ff06f          	j	8000177c <_Z4f2_2Pv+0x38>

00000000800017d0 <_Z4f3_2Pv>:
{
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    Riscv::printString("f3_2 started\n");
    800017e8:	00008517          	auipc	a0,0x8
    800017ec:	8a050513          	addi	a0,a0,-1888 # 80009088 <CONSOLE_STATUS+0x78>
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	ddc080e7          	jalr	-548(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    int x = 0;
    800017f8:	00000493          	li	s1,0
    800017fc:	00c0006f          	j	80001808 <_Z4f3_2Pv+0x38>
            thread_exit();
    80001800:	00000097          	auipc	ra,0x0
    80001804:	b44080e7          	jalr	-1212(ra) # 80001344 <thread_exit>
        x++;
    80001808:	0014849b          	addiw	s1,s1,1
        s3->wait();
    8000180c:	0000a917          	auipc	s2,0xa
    80001810:	11490913          	addi	s2,s2,276 # 8000b920 <_ZL2s1>
    80001814:	01093503          	ld	a0,16(s2)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	b4c080e7          	jalr	-1204(ra) # 80003364 <_ZN9Semaphore4waitEv>
        __putc('3');
    80001820:	03300513          	li	a0,51
    80001824:	00007097          	auipc	ra,0x7
    80001828:	898080e7          	jalr	-1896(ra) # 800080bc <__putc>
        __putc('\n');
    8000182c:	00a00513          	li	a0,10
    80001830:	00007097          	auipc	ra,0x7
    80001834:	88c080e7          	jalr	-1908(ra) # 800080bc <__putc>
        s1->signal();
    80001838:	00093503          	ld	a0,0(s2)
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	bac080e7          	jalr	-1108(ra) # 800033e8 <_ZN9Semaphore6signalEv>
        if(x < 5000)
    80001844:	000017b7          	lui	a5,0x1
    80001848:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    8000184c:	fa97cae3          	blt	a5,s1,80001800 <_Z4f3_2Pv+0x30>
            thread_dispatch();
    80001850:	00000097          	auipc	ra,0x0
    80001854:	ad4080e7          	jalr	-1324(ra) # 80001324 <thread_dispatch>
    80001858:	fb1ff06f          	j	80001808 <_Z4f3_2Pv+0x38>

000000008000185c <_Z11threadTest1v>:
{
    8000185c:	fe010113          	addi	sp,sp,-32
    80001860:	00113c23          	sd	ra,24(sp)
    80001864:	00813823          	sd	s0,16(sp)
    80001868:	00913423          	sd	s1,8(sp)
    8000186c:	01213023          	sd	s2,0(sp)
    80001870:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001874:	02000513          	li	a0,32
    80001878:	00002097          	auipc	ra,0x2
    8000187c:	8e8080e7          	jalr	-1816(ra) # 80003160 <_Znwm>
    80001880:	00050493          	mv	s1,a0
    80001884:	00000613          	li	a2,0
    80001888:	00000597          	auipc	a1,0x0
    8000188c:	bf858593          	addi	a1,a1,-1032 # 80001480 <_Z15thread1FunctionPv>
    80001890:	00002097          	auipc	ra,0x2
    80001894:	a6c080e7          	jalr	-1428(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001898:	00048513          	mv	a0,s1
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	994080e7          	jalr	-1644(ra) # 80003230 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018a4:	02000513          	li	a0,32
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	8b8080e7          	jalr	-1864(ra) # 80003160 <_Znwm>
    800018b0:	00050913          	mv	s2,a0
    800018b4:	00000613          	li	a2,0
    800018b8:	00000597          	auipc	a1,0x0
    800018bc:	c6058593          	addi	a1,a1,-928 # 80001518 <_Z15thread2FunctionPv>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	a3c080e7          	jalr	-1476(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00002097          	auipc	ra,0x2
    800018d0:	964080e7          	jalr	-1692(ra) # 80003230 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	c70080e7          	jalr	-912(ra) # 80003544 <_ZN5Riscv16enableInterruptsEv>
    800018dc:	01c0006f          	j	800018f8 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800018e0:	00007517          	auipc	a0,0x7
    800018e4:	7b850513          	addi	a0,a0,1976 # 80009098 <CONSOLE_STATUS+0x88>
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	ce4080e7          	jalr	-796(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	a34080e7          	jalr	-1484(ra) # 80001324 <thread_dispatch>
    while(((PCB*)(t1->myHandle))->getState() != PCB::FINISHED || ((PCB*)(t2->myHandle))->getState()!= PCB::FINISHED)
    800018f8:	0084b783          	ld	a5,8(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800018fc:	0387a703          	lw	a4,56(a5)
    80001900:	00300793          	li	a5,3
    80001904:	fcf71ee3          	bne	a4,a5,800018e0 <_Z11threadTest1v+0x84>
    80001908:	00893783          	ld	a5,8(s2)
    8000190c:	0387a703          	lw	a4,56(a5)
    80001910:	00300793          	li	a5,3
    80001914:	fcf716e3          	bne	a4,a5,800018e0 <_Z11threadTest1v+0x84>
    Riscv::printString("End...\n");
    80001918:	00007517          	auipc	a0,0x7
    8000191c:	79050513          	addi	a0,a0,1936 # 800090a8 <CONSOLE_STATUS+0x98>
    80001920:	00002097          	auipc	ra,0x2
    80001924:	cac080e7          	jalr	-852(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	c3c080e7          	jalr	-964(ra) # 80003564 <_ZN5Riscv17disableInterruptsEv>
}
    80001930:	01813083          	ld	ra,24(sp)
    80001934:	01013403          	ld	s0,16(sp)
    80001938:	00813483          	ld	s1,8(sp)
    8000193c:	00013903          	ld	s2,0(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret
    80001948:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00002097          	auipc	ra,0x2
    80001954:	838080e7          	jalr	-1992(ra) # 80003188 <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	15c080e7          	jalr	348(ra) # 8000cab8 <_Unwind_Resume>
    80001964:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	00090513          	mv	a0,s2
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	81c080e7          	jalr	-2020(ra) # 80003188 <_ZdlPv>
    80001974:	00048513          	mv	a0,s1
    80001978:	0000b097          	auipc	ra,0xb
    8000197c:	140080e7          	jalr	320(ra) # 8000cab8 <_Unwind_Resume>

0000000080001980 <_Z11threadTest2v>:
{
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001998:	02000513          	li	a0,32
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	7c4080e7          	jalr	1988(ra) # 80003160 <_Znwm>
    800019a4:	00050493          	mv	s1,a0
    800019a8:	00000613          	li	a2,0
    800019ac:	00000597          	auipc	a1,0x0
    800019b0:	aa858593          	addi	a1,a1,-1368 # 80001454 <_Z4idlePv>
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	948080e7          	jalr	-1720(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00002097          	auipc	ra,0x2
    800019c4:	870080e7          	jalr	-1936(ra) # 80003230 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019c8:	02000513          	li	a0,32
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	794080e7          	jalr	1940(ra) # 80003160 <_Znwm>
    800019d4:	00050913          	mv	s2,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	aa458593          	addi	a1,a1,-1372 # 80001480 <_Z15thread1FunctionPv>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	918080e7          	jalr	-1768(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019ec:	00090513          	mv	a0,s2
    800019f0:	00002097          	auipc	ra,0x2
    800019f4:	840080e7          	jalr	-1984(ra) # 80003230 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019f8:	02000513          	li	a0,32
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	764080e7          	jalr	1892(ra) # 80003160 <_Znwm>
    80001a04:	00050913          	mv	s2,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	c0058593          	addi	a1,a1,-1024 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	8e8080e7          	jalr	-1816(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	810080e7          	jalr	-2032(ra) # 80003230 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	b1c080e7          	jalr	-1252(ra) # 80003544 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    80001a30:	0084b783          	ld	a5,8(s1)
    80001a34:	0387a703          	lw	a4,56(a5)
    80001a38:	00300793          	li	a5,3
    80001a3c:	fef71ae3          	bne	a4,a5,80001a30 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	66850513          	addi	a0,a0,1640 # 800090a8 <CONSOLE_STATUS+0x98>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	b84080e7          	jalr	-1148(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	b14080e7          	jalr	-1260(ra) # 80003564 <_ZN5Riscv17disableInterruptsEv>
}
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	00013903          	ld	s2,0(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret
    80001a70:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	710080e7          	jalr	1808(ra) # 80003188 <_ZdlPv>
    80001a80:	00090513          	mv	a0,s2
    80001a84:	0000b097          	auipc	ra,0xb
    80001a88:	034080e7          	jalr	52(ra) # 8000cab8 <_Unwind_Resume>
    80001a8c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	6f4080e7          	jalr	1780(ra) # 80003188 <_ZdlPv>
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	0000b097          	auipc	ra,0xb
    80001aa4:	018080e7          	jalr	24(ra) # 8000cab8 <_Unwind_Resume>
    80001aa8:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001aac:	00090513          	mv	a0,s2
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	6d8080e7          	jalr	1752(ra) # 80003188 <_ZdlPv>
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	0000b097          	auipc	ra,0xb
    80001ac0:	ffc080e7          	jalr	-4(ra) # 8000cab8 <_Unwind_Resume>

0000000080001ac4 <_Z10mallocFreev>:
{
    80001ac4:	cc010113          	addi	sp,sp,-832
    80001ac8:	32113c23          	sd	ra,824(sp)
    80001acc:	32813823          	sd	s0,816(sp)
    80001ad0:	32913423          	sd	s1,808(sp)
    80001ad4:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001ad8:	00007517          	auipc	a0,0x7
    80001adc:	5d850513          	addi	a0,a0,1496 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001ae0:	00002097          	auipc	ra,0x2
    80001ae4:	aec080e7          	jalr	-1300(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001ae8:	00000493          	li	s1,0
    80001aec:	0080006f          	j	80001af4 <_Z10mallocFreev+0x30>
    80001af0:	0014849b          	addiw	s1,s1,1
    80001af4:	06300793          	li	a5,99
    80001af8:	0497c463          	blt	a5,s1,80001b40 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001afc:	06400513          	li	a0,100
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	748080e7          	jalr	1864(ra) # 80001248 <mem_alloc>
    80001b08:	00349793          	slli	a5,s1,0x3
    80001b0c:	fe040713          	addi	a4,s0,-32
    80001b10:	00f707b3          	add	a5,a4,a5
    80001b14:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b18:	fc051ce3          	bnez	a0,80001af0 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001b1c:	00007517          	auipc	a0,0x7
    80001b20:	5a450513          	addi	a0,a0,1444 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b24:	00002097          	auipc	ra,0x2
    80001b28:	aa8080e7          	jalr	-1368(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80001b2c:	33813083          	ld	ra,824(sp)
    80001b30:	33013403          	ld	s0,816(sp)
    80001b34:	32813483          	ld	s1,808(sp)
    80001b38:	34010113          	addi	sp,sp,832
    80001b3c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b40:	00000493          	li	s1,0
    80001b44:	06300793          	li	a5,99
    80001b48:	0297ce63          	blt	a5,s1,80001b84 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b4c:	00349793          	slli	a5,s1,0x3
    80001b50:	fe040713          	addi	a4,s0,-32
    80001b54:	00f707b3          	add	a5,a4,a5
    80001b58:	ce07b503          	ld	a0,-800(a5)
    80001b5c:	fffff097          	auipc	ra,0xfffff
    80001b60:	71c080e7          	jalr	1820(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b64:	00051663          	bnez	a0,80001b70 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b68:	0024849b          	addiw	s1,s1,2
    80001b6c:	fd9ff06f          	j	80001b44 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b70:	00007517          	auipc	a0,0x7
    80001b74:	55050513          	addi	a0,a0,1360 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b78:	00002097          	auipc	ra,0x2
    80001b7c:	a54080e7          	jalr	-1452(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
            return;
    80001b80:	fadff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001b84:	00000493          	li	s1,0
    80001b88:	0080006f          	j	80001b90 <_Z10mallocFreev+0xcc>
    80001b8c:	0024849b          	addiw	s1,s1,2
    80001b90:	06300793          	li	a5,99
    80001b94:	0297cc63          	blt	a5,s1,80001bcc <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001b98:	01400513          	li	a0,20
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	6ac080e7          	jalr	1708(ra) # 80001248 <mem_alloc>
    80001ba4:	00349793          	slli	a5,s1,0x3
    80001ba8:	fe040713          	addi	a4,s0,-32
    80001bac:	00f707b3          	add	a5,a4,a5
    80001bb0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bb4:	fc051ce3          	bnez	a0,80001b8c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001bb8:	00007517          	auipc	a0,0x7
    80001bbc:	50850513          	addi	a0,a0,1288 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001bc0:	00002097          	auipc	ra,0x2
    80001bc4:	a0c080e7          	jalr	-1524(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
            return;
    80001bc8:	f65ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001bcc:	00000493          	li	s1,0
    80001bd0:	06300793          	li	a5,99
    80001bd4:	0297ce63          	blt	a5,s1,80001c10 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bd8:	00349793          	slli	a5,s1,0x3
    80001bdc:	fe040713          	addi	a4,s0,-32
    80001be0:	00f707b3          	add	a5,a4,a5
    80001be4:	ce07b503          	ld	a0,-800(a5)
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	690080e7          	jalr	1680(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001bf0:	00051663          	bnez	a0,80001bfc <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001bf4:	0014849b          	addiw	s1,s1,1
    80001bf8:	fd9ff06f          	j	80001bd0 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001bfc:	00007517          	auipc	a0,0x7
    80001c00:	4c450513          	addi	a0,a0,1220 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001c04:	00002097          	auipc	ra,0x2
    80001c08:	9c8080e7          	jalr	-1592(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
            return;
    80001c0c:	f21ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	4b850513          	addi	a0,a0,1208 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	9b4080e7          	jalr	-1612(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    80001c20:	f0dff06f          	j	80001b2c <_Z10mallocFreev+0x68>

0000000080001c24 <_Z9bigMallocv>:
{
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00113423          	sd	ra,8(sp)
    80001c2c:	00813023          	sd	s0,0(sp)
    80001c30:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c34:	00007517          	auipc	a0,0x7
    80001c38:	49c50513          	addi	a0,a0,1180 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c3c:	00002097          	auipc	ra,0x2
    80001c40:	990080e7          	jalr	-1648(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c44:	0000a797          	auipc	a5,0xa
    80001c48:	c8c7b783          	ld	a5,-884(a5) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c4c:	0007b503          	ld	a0,0(a5)
    80001c50:	0000a797          	auipc	a5,0xa
    80001c54:	c587b783          	ld	a5,-936(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c58:	0007b783          	ld	a5,0(a5)
    80001c5c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c60:	06450513          	addi	a0,a0,100
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	5e4080e7          	jalr	1508(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001c6c:	02050263          	beqz	a0,80001c90 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001c70:	00007517          	auipc	a0,0x7
    80001c74:	45050513          	addi	a0,a0,1104 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001c78:	00002097          	auipc	ra,0x2
    80001c7c:	954080e7          	jalr	-1708(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret
        Riscv::printString("OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	43850513          	addi	a0,a0,1080 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	934080e7          	jalr	-1740(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    80001ca0:	fe1ff06f          	j	80001c80 <_Z9bigMallocv+0x5c>

0000000080001ca4 <_Z17lotOfSmallMallocsv>:
{
    80001ca4:	fd010113          	addi	sp,sp,-48
    80001ca8:	02113423          	sd	ra,40(sp)
    80001cac:	02813023          	sd	s0,32(sp)
    80001cb0:	00913c23          	sd	s1,24(sp)
    80001cb4:	01213823          	sd	s2,16(sp)
    80001cb8:	01313423          	sd	s3,8(sp)
    80001cbc:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	42050513          	addi	a0,a0,1056 # 800090e0 <CONSOLE_STATUS+0xd0>
    80001cc8:	00002097          	auipc	ra,0x2
    80001ccc:	904080e7          	jalr	-1788(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001cd0:	00000493          	li	s1,0
    uint64 sum = 0;
    80001cd4:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cd8:	00000913          	li	s2,0
    80001cdc:	0180006f          	j	80001cf4 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001ce0:	00a00793          	li	a5,10
    80001ce4:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001ce8:	00a98993          	addi	s3,s3,10
        cnt++;
    80001cec:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001cf0:	00148493          	addi	s1,s1,1
    80001cf4:	000027b7          	lui	a5,0x2
    80001cf8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001cfc:	0097ea63          	bltu	a5,s1,80001d10 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d00:	00800513          	li	a0,8
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	544080e7          	jalr	1348(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001d0c:	fc051ae3          	bnez	a0,80001ce0 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001d10:	00090513          	mv	a0,s2
    80001d14:	00002097          	auipc	ra,0x2
    80001d18:	928080e7          	jalr	-1752(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d1c:	00007517          	auipc	a0,0x7
    80001d20:	46c50513          	addi	a0,a0,1132 # 80009188 <CONSOLE_STATUS+0x178>
    80001d24:	00002097          	auipc	ra,0x2
    80001d28:	8a8080e7          	jalr	-1880(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d2c:	00291793          	slli	a5,s2,0x2
    80001d30:	01278933          	add	s2,a5,s2
    80001d34:	00191913          	slli	s2,s2,0x1
    80001d38:	03390863          	beq	s2,s3,80001d68 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	38450513          	addi	a0,a0,900 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	888080e7          	jalr	-1912(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80001d4c:	02813083          	ld	ra,40(sp)
    80001d50:	02013403          	ld	s0,32(sp)
    80001d54:	01813483          	ld	s1,24(sp)
    80001d58:	01013903          	ld	s2,16(sp)
    80001d5c:	00813983          	ld	s3,8(sp)
    80001d60:	03010113          	addi	sp,sp,48
    80001d64:	00008067          	ret
        Riscv::printString("OK\n");
    80001d68:	00007517          	auipc	a0,0x7
    80001d6c:	36050513          	addi	a0,a0,864 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001d70:	00002097          	auipc	ra,0x2
    80001d74:	85c080e7          	jalr	-1956(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    80001d78:	fd5ff06f          	j	80001d4c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d7c <_Z7badFreev>:
{
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	36c50513          	addi	a0,a0,876 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001d94:	00002097          	auipc	ra,0x2
    80001d98:	838080e7          	jalr	-1992(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d9c:	00800513          	li	a0,8
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	4a8080e7          	jalr	1192(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001da8:	00250513          	addi	a0,a0,2
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	4cc080e7          	jalr	1228(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001db4:	02051263          	bnez	a0,80001dd8 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001db8:	00007517          	auipc	a0,0x7
    80001dbc:	30850513          	addi	a0,a0,776 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001dc0:	00002097          	auipc	ra,0x2
    80001dc4:	80c080e7          	jalr	-2036(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        Riscv::printString("OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2f050513          	addi	a0,a0,752 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	7ec080e7          	jalr	2028(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80001de8:	fe1ff06f          	j	80001dc8 <_Z7badFreev+0x4c>

0000000080001dec <_Z13stressTestingv>:
{
    80001dec:	cc010113          	addi	sp,sp,-832
    80001df0:	32113c23          	sd	ra,824(sp)
    80001df4:	32813823          	sd	s0,816(sp)
    80001df8:	32913423          	sd	s1,808(sp)
    80001dfc:	33213023          	sd	s2,800(sp)
    80001e00:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001e04:	00007517          	auipc	a0,0x7
    80001e08:	30450513          	addi	a0,a0,772 # 80009108 <CONSOLE_STATUS+0xf8>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	7c0080e7          	jalr	1984(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001e14:	00000493          	li	s1,0
    80001e18:	0080006f          	j	80001e20 <_Z13stressTestingv+0x34>
    80001e1c:	0014849b          	addiw	s1,s1,1
    80001e20:	06300793          	li	a5,99
    80001e24:	0297ce63          	blt	a5,s1,80001e60 <_Z13stressTestingv+0x74>
        addrs[i] = mem_alloc(1);
    80001e28:	00100513          	li	a0,1
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	41c080e7          	jalr	1052(ra) # 80001248 <mem_alloc>
    80001e34:	00349793          	slli	a5,s1,0x3
    80001e38:	fe040713          	addi	a4,s0,-32
    80001e3c:	00f707b3          	add	a5,a4,a5
    80001e40:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e44:	fc051ce3          	bnez	a0,80001e1c <_Z13stressTestingv+0x30>
}
    80001e48:	33813083          	ld	ra,824(sp)
    80001e4c:	33013403          	ld	s0,816(sp)
    80001e50:	32813483          	ld	s1,808(sp)
    80001e54:	32013903          	ld	s2,800(sp)
    80001e58:	34010113          	addi	sp,sp,832
    80001e5c:	00008067          	ret
    int sz = 300;
    80001e60:	12c00913          	li	s2,300
    while(sz > 0)
    80001e64:	0b205a63          	blez	s2,80001f18 <_Z13stressTestingv+0x12c>
        for(int i = 0 ; i < num;i+=2)
    80001e68:	00000493          	li	s1,0
    80001e6c:	06300793          	li	a5,99
    80001e70:	0497c863          	blt	a5,s1,80001ec0 <_Z13stressTestingv+0xd4>
            int retval = mem_free(addrs[i]);
    80001e74:	00349793          	slli	a5,s1,0x3
    80001e78:	fe040713          	addi	a4,s0,-32
    80001e7c:	00f707b3          	add	a5,a4,a5
    80001e80:	ce07b503          	ld	a0,-800(a5)
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	3f4080e7          	jalr	1012(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001e8c:	fa051ee3          	bnez	a0,80001e48 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz/2);
    80001e90:	01f9551b          	srliw	a0,s2,0x1f
    80001e94:	0125053b          	addw	a0,a0,s2
    80001e98:	4015551b          	sraiw	a0,a0,0x1
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	3ac080e7          	jalr	940(ra) # 80001248 <mem_alloc>
    80001ea4:	00349793          	slli	a5,s1,0x3
    80001ea8:	fe040713          	addi	a4,s0,-32
    80001eac:	00f707b3          	add	a5,a4,a5
    80001eb0:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001eb4:	f8050ae3          	beqz	a0,80001e48 <_Z13stressTestingv+0x5c>
        for(int i = 0 ; i < num;i+=2)
    80001eb8:	0024849b          	addiw	s1,s1,2
    80001ebc:	fb1ff06f          	j	80001e6c <_Z13stressTestingv+0x80>
        for(int i = 1 ; i < num;i+=2)
    80001ec0:	00100493          	li	s1,1
    80001ec4:	06300793          	li	a5,99
    80001ec8:	0497c463          	blt	a5,s1,80001f10 <_Z13stressTestingv+0x124>
            int retval = mem_free(addrs[i]);
    80001ecc:	00349793          	slli	a5,s1,0x3
    80001ed0:	fe040713          	addi	a4,s0,-32
    80001ed4:	00f707b3          	add	a5,a4,a5
    80001ed8:	ce07b503          	ld	a0,-800(a5)
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	39c080e7          	jalr	924(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ee4:	f60512e3          	bnez	a0,80001e48 <_Z13stressTestingv+0x5c>
            addrs[i] = mem_alloc(sz);
    80001ee8:	00090513          	mv	a0,s2
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	35c080e7          	jalr	860(ra) # 80001248 <mem_alloc>
    80001ef4:	00349793          	slli	a5,s1,0x3
    80001ef8:	fe040713          	addi	a4,s0,-32
    80001efc:	00f707b3          	add	a5,a4,a5
    80001f00:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f04:	f40502e3          	beqz	a0,80001e48 <_Z13stressTestingv+0x5c>
        for(int i = 1 ; i < num;i+=2)
    80001f08:	0024849b          	addiw	s1,s1,2
    80001f0c:	fb9ff06f          	j	80001ec4 <_Z13stressTestingv+0xd8>
        sz-=10;
    80001f10:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f14:	f51ff06f          	j	80001e64 <_Z13stressTestingv+0x78>
    Riscv::printString("OK\n");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	1b050513          	addi	a0,a0,432 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	6ac080e7          	jalr	1708(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    80001f28:	f21ff06f          	j	80001e48 <_Z13stressTestingv+0x5c>

0000000080001f2c <_Z21memoryAllocationTestsv>:
{
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    stressTesting();
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	eb0080e7          	jalr	-336(ra) # 80001dec <_Z13stressTestingv>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_Z3foov>:
{
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	02010413          	addi	s0,sp,32
    s11->wait();
    80001f68:	0000a497          	auipc	s1,0xa
    80001f6c:	9b848493          	addi	s1,s1,-1608 # 8000b920 <_ZL2s1>
    80001f70:	0184b503          	ld	a0,24(s1)
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	3f0080e7          	jalr	1008(ra) # 80003364 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo exec\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	19c50513          	addi	a0,a0,412 # 80009118 <CONSOLE_STATUS+0x108>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	648080e7          	jalr	1608(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    s22->signal();
    80001f8c:	0204b503          	ld	a0,32(s1)
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	458080e7          	jalr	1112(ra) # 800033e8 <_ZN9Semaphore6signalEv>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_Z2f1Pv>:
{
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	01213023          	sd	s2,0(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80001fc4:	00007517          	auipc	a0,0x7
    80001fc8:	16450513          	addi	a0,a0,356 # 80009128 <CONSOLE_STATUS+0x118>
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	600080e7          	jalr	1536(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 10;br++)
    80001fd4:	00000913          	li	s2,0
    80001fd8:	0100006f          	j	80001fe8 <_Z2f1Pv+0x3c>
        if(br == 5)
    80001fdc:	00500793          	li	a5,5
    80001fe0:	02f90663          	beq	s2,a5,8000200c <_Z2f1Pv+0x60>
    for(int br = 0;br < 10;br++)
    80001fe4:	0019091b          	addiw	s2,s2,1
    80001fe8:	00900793          	li	a5,9
    80001fec:	0327c663          	blt	a5,s2,80002018 <_Z2f1Pv+0x6c>
        for (int i = 0; i < 5; i++)
    80001ff0:	00000493          	li	s1,0
    80001ff4:	00400793          	li	a5,4
    80001ff8:	fe97c2e3          	blt	a5,s1,80001fdc <_Z2f1Pv+0x30>
            foo();
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	f58080e7          	jalr	-168(ra) # 80001f54 <_Z3foov>
        for (int i = 0; i < 5; i++)
    80002004:	0014849b          	addiw	s1,s1,1
    80002008:	fedff06f          	j	80001ff4 <_Z2f1Pv+0x48>
            thread_dispatch();
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	318080e7          	jalr	792(ra) # 80001324 <thread_dispatch>
    80002014:	fd1ff06f          	j	80001fe4 <_Z2f1Pv+0x38>
}
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	00013903          	ld	s2,0(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret

0000000080002030 <_Z4foo2v>:
{
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00813823          	sd	s0,16(sp)
    8000203c:	00913423          	sd	s1,8(sp)
    80002040:	02010413          	addi	s0,sp,32
    s22->wait();
    80002044:	0000a497          	auipc	s1,0xa
    80002048:	8dc48493          	addi	s1,s1,-1828 # 8000b920 <_ZL2s1>
    8000204c:	0204b503          	ld	a0,32(s1)
    80002050:	00001097          	auipc	ra,0x1
    80002054:	314080e7          	jalr	788(ra) # 80003364 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo2 exec\n");
    80002058:	00007517          	auipc	a0,0x7
    8000205c:	0e050513          	addi	a0,a0,224 # 80009138 <CONSOLE_STATUS+0x128>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	56c080e7          	jalr	1388(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    s11->signal();
    80002068:	0184b503          	ld	a0,24(s1)
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	37c080e7          	jalr	892(ra) # 800033e8 <_ZN9Semaphore6signalEv>
}
    80002074:	01813083          	ld	ra,24(sp)
    80002078:	01013403          	ld	s0,16(sp)
    8000207c:	00813483          	ld	s1,8(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_Z2f2Pv>:
{
    80002088:	fe010113          	addi	sp,sp,-32
    8000208c:	00113c23          	sd	ra,24(sp)
    80002090:	00813823          	sd	s0,16(sp)
    80002094:	00913423          	sd	s1,8(sp)
    80002098:	01213023          	sd	s2,0(sp)
    8000209c:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    800020a0:	00007517          	auipc	a0,0x7
    800020a4:	0a850513          	addi	a0,a0,168 # 80009148 <CONSOLE_STATUS+0x138>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	524080e7          	jalr	1316(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 1;br++)
    800020b0:	00000913          	li	s2,0
    800020b4:	03204e63          	bgtz	s2,800020f0 <_Z2f2Pv+0x68>
        for(int j = 0; j < 10;j++)
    800020b8:	00000493          	li	s1,0
    800020bc:	00900793          	li	a5,9
    800020c0:	0097ca63          	blt	a5,s1,800020d4 <_Z2f2Pv+0x4c>
            foo2();
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	f6c080e7          	jalr	-148(ra) # 80002030 <_Z4foo2v>
        for(int j = 0; j < 10;j++)
    800020cc:	0014849b          	addiw	s1,s1,1
    800020d0:	fedff06f          	j	800020bc <_Z2f2Pv+0x34>
        if(br == 6)
    800020d4:	00600793          	li	a5,6
    800020d8:	00f90663          	beq	s2,a5,800020e4 <_Z2f2Pv+0x5c>
    for(int br = 0;br < 1;br++)
    800020dc:	0019091b          	addiw	s2,s2,1
    800020e0:	fd5ff06f          	j	800020b4 <_Z2f2Pv+0x2c>
            thread_dispatch();
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	240080e7          	jalr	576(ra) # 80001324 <thread_dispatch>
    800020ec:	ff1ff06f          	j	800020dc <_Z2f2Pv+0x54>
}
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	00013903          	ld	s2,0(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00008067          	ret

0000000080002108 <_Z8semTest1v>:
{
    80002108:	fd010113          	addi	sp,sp,-48
    8000210c:	02113423          	sd	ra,40(sp)
    80002110:	02813023          	sd	s0,32(sp)
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01213823          	sd	s2,16(sp)
    8000211c:	01313423          	sd	s3,8(sp)
    80002120:	03010413          	addi	s0,sp,48
    mutex = new Semaphore(1);
    80002124:	01000513          	li	a0,16
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	038080e7          	jalr	56(ra) # 80003160 <_Znwm>
    80002130:	00050913          	mv	s2,a0
    80002134:	00100593          	li	a1,1
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	264080e7          	jalr	612(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    s11 = new Semaphore(1);
    80002140:	01000513          	li	a0,16
    80002144:	00001097          	auipc	ra,0x1
    80002148:	01c080e7          	jalr	28(ra) # 80003160 <_Znwm>
    8000214c:	00050493          	mv	s1,a0
    80002150:	00100593          	li	a1,1
    80002154:	00001097          	auipc	ra,0x1
    80002158:	248080e7          	jalr	584(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    8000215c:	00009797          	auipc	a5,0x9
    80002160:	7c97be23          	sd	s1,2012(a5) # 8000b938 <_ZL3s11>
    s22 = new Semaphore(0);
    80002164:	01000513          	li	a0,16
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	ff8080e7          	jalr	-8(ra) # 80003160 <_Znwm>
    80002170:	00050493          	mv	s1,a0
    80002174:	00000593          	li	a1,0
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	224080e7          	jalr	548(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    80002180:	00009797          	auipc	a5,0x9
    80002184:	7c97b023          	sd	s1,1984(a5) # 8000b940 <_ZL3s22>
    Thread* t1 = new Thread(&f1, 0);
    80002188:	02000513          	li	a0,32
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	fd4080e7          	jalr	-44(ra) # 80003160 <_Znwm>
    80002194:	00050993          	mv	s3,a0
    80002198:	00000613          	li	a2,0
    8000219c:	00000597          	auipc	a1,0x0
    800021a0:	e1058593          	addi	a1,a1,-496 # 80001fac <_Z2f1Pv>
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	158080e7          	jalr	344(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    800021ac:	02000513          	li	a0,32
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	fb0080e7          	jalr	-80(ra) # 80003160 <_Znwm>
    800021b8:	00050913          	mv	s2,a0
    800021bc:	00000613          	li	a2,0
    800021c0:	00000597          	auipc	a1,0x0
    800021c4:	ec858593          	addi	a1,a1,-312 # 80002088 <_Z2f2Pv>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	134080e7          	jalr	308(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800021d0:	00090513          	mv	a0,s2
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	05c080e7          	jalr	92(ra) # 80003230 <_ZN6Thread5startEv>
    t1->start();
    800021dc:	00098513          	mv	a0,s3
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	050080e7          	jalr	80(ra) # 80003230 <_ZN6Thread5startEv>
    thread_dispatch();
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	13c080e7          	jalr	316(ra) # 80001324 <thread_dispatch>
        thread_dispatch();
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	134080e7          	jalr	308(ra) # 80001324 <thread_dispatch>
    while(true)
    800021f8:	ff9ff06f          	j	800021f0 <_Z8semTest1v+0xe8>
    800021fc:	00050493          	mv	s1,a0
    mutex = new Semaphore(1);
    80002200:	00090513          	mv	a0,s2
    80002204:	00001097          	auipc	ra,0x1
    80002208:	f84080e7          	jalr	-124(ra) # 80003188 <_ZdlPv>
    8000220c:	00048513          	mv	a0,s1
    80002210:	0000b097          	auipc	ra,0xb
    80002214:	8a8080e7          	jalr	-1880(ra) # 8000cab8 <_Unwind_Resume>
    80002218:	00050913          	mv	s2,a0
    s11 = new Semaphore(1);
    8000221c:	00048513          	mv	a0,s1
    80002220:	00001097          	auipc	ra,0x1
    80002224:	f68080e7          	jalr	-152(ra) # 80003188 <_ZdlPv>
    80002228:	00090513          	mv	a0,s2
    8000222c:	0000b097          	auipc	ra,0xb
    80002230:	88c080e7          	jalr	-1908(ra) # 8000cab8 <_Unwind_Resume>
    80002234:	00050913          	mv	s2,a0
    s22 = new Semaphore(0);
    80002238:	00048513          	mv	a0,s1
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	f4c080e7          	jalr	-180(ra) # 80003188 <_ZdlPv>
    80002244:	00090513          	mv	a0,s2
    80002248:	0000b097          	auipc	ra,0xb
    8000224c:	870080e7          	jalr	-1936(ra) # 8000cab8 <_Unwind_Resume>
    80002250:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    80002254:	00098513          	mv	a0,s3
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	f30080e7          	jalr	-208(ra) # 80003188 <_ZdlPv>
    80002260:	00048513          	mv	a0,s1
    80002264:	0000b097          	auipc	ra,0xb
    80002268:	854080e7          	jalr	-1964(ra) # 8000cab8 <_Unwind_Resume>
    8000226c:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2, 0);
    80002270:	00090513          	mv	a0,s2
    80002274:	00001097          	auipc	ra,0x1
    80002278:	f14080e7          	jalr	-236(ra) # 80003188 <_ZdlPv>
    8000227c:	00048513          	mv	a0,s1
    80002280:	0000b097          	auipc	ra,0xb
    80002284:	838080e7          	jalr	-1992(ra) # 8000cab8 <_Unwind_Resume>

0000000080002288 <_Z8semTest2v>:
{
    80002288:	fd010113          	addi	sp,sp,-48
    8000228c:	02113423          	sd	ra,40(sp)
    80002290:	02813023          	sd	s0,32(sp)
    80002294:	00913c23          	sd	s1,24(sp)
    80002298:	01213823          	sd	s2,16(sp)
    8000229c:	01313423          	sd	s3,8(sp)
    800022a0:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    800022a4:	01000513          	li	a0,16
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	eb8080e7          	jalr	-328(ra) # 80003160 <_Znwm>
    800022b0:	00050493          	mv	s1,a0
    800022b4:	00100593          	li	a1,1
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	0e4080e7          	jalr	228(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    800022c0:	00009797          	auipc	a5,0x9
    800022c4:	6697b023          	sd	s1,1632(a5) # 8000b920 <_ZL2s1>
    s2 = new Semaphore(0);
    800022c8:	01000513          	li	a0,16
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	e94080e7          	jalr	-364(ra) # 80003160 <_Znwm>
    800022d4:	00050493          	mv	s1,a0
    800022d8:	00000593          	li	a1,0
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	0c0080e7          	jalr	192(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    800022e4:	00009797          	auipc	a5,0x9
    800022e8:	6497b223          	sd	s1,1604(a5) # 8000b928 <_ZL2s2>
    s3 = new Semaphore(0);
    800022ec:	01000513          	li	a0,16
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	e70080e7          	jalr	-400(ra) # 80003160 <_Znwm>
    800022f8:	00050493          	mv	s1,a0
    800022fc:	00000593          	li	a1,0
    80002300:	00001097          	auipc	ra,0x1
    80002304:	09c080e7          	jalr	156(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    80002308:	00009797          	auipc	a5,0x9
    8000230c:	6297b423          	sd	s1,1576(a5) # 8000b930 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002310:	02000513          	li	a0,32
    80002314:	00001097          	auipc	ra,0x1
    80002318:	e4c080e7          	jalr	-436(ra) # 80003160 <_Znwm>
    8000231c:	00050993          	mv	s3,a0
    80002320:	00000613          	li	a2,0
    80002324:	fffff597          	auipc	a1,0xfffff
    80002328:	39458593          	addi	a1,a1,916 # 800016b8 <_Z4f1_2Pv>
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	fd0080e7          	jalr	-48(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    80002334:	02000513          	li	a0,32
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	e28080e7          	jalr	-472(ra) # 80003160 <_Znwm>
    80002340:	00050913          	mv	s2,a0
    80002344:	00000613          	li	a2,0
    80002348:	fffff597          	auipc	a1,0xfffff
    8000234c:	3fc58593          	addi	a1,a1,1020 # 80001744 <_Z4f2_2Pv>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	fac080e7          	jalr	-84(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    80002358:	02000513          	li	a0,32
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	e04080e7          	jalr	-508(ra) # 80003160 <_Znwm>
    80002364:	00050493          	mv	s1,a0
    80002368:	00000613          	li	a2,0
    8000236c:	fffff597          	auipc	a1,0xfffff
    80002370:	46458593          	addi	a1,a1,1124 # 800017d0 <_Z4f3_2Pv>
    80002374:	00001097          	auipc	ra,0x1
    80002378:	f88080e7          	jalr	-120(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    8000237c:	00048513          	mv	a0,s1
    80002380:	00001097          	auipc	ra,0x1
    80002384:	eb0080e7          	jalr	-336(ra) # 80003230 <_ZN6Thread5startEv>
    t2->start();
    80002388:	00090513          	mv	a0,s2
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	ea4080e7          	jalr	-348(ra) # 80003230 <_ZN6Thread5startEv>
    t1->start();
    80002394:	00098513          	mv	a0,s3
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	e98080e7          	jalr	-360(ra) # 80003230 <_ZN6Thread5startEv>
    int y = 0;
    800023a0:	00000493          	li	s1,0
        y++;
    800023a4:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	f7c080e7          	jalr	-132(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    800023b0:	000317b7          	lui	a5,0x31
    800023b4:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    800023b8:	fef496e3          	bne	s1,a5,800023a4 <_Z8semTest2v+0x11c>
}
    800023bc:	02813083          	ld	ra,40(sp)
    800023c0:	02013403          	ld	s0,32(sp)
    800023c4:	01813483          	ld	s1,24(sp)
    800023c8:	01013903          	ld	s2,16(sp)
    800023cc:	00813983          	ld	s3,8(sp)
    800023d0:	03010113          	addi	sp,sp,48
    800023d4:	00008067          	ret
    800023d8:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    800023dc:	00048513          	mv	a0,s1
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	da8080e7          	jalr	-600(ra) # 80003188 <_ZdlPv>
    800023e8:	00090513          	mv	a0,s2
    800023ec:	0000a097          	auipc	ra,0xa
    800023f0:	6cc080e7          	jalr	1740(ra) # 8000cab8 <_Unwind_Resume>
    800023f4:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    800023f8:	00048513          	mv	a0,s1
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	d8c080e7          	jalr	-628(ra) # 80003188 <_ZdlPv>
    80002404:	00090513          	mv	a0,s2
    80002408:	0000a097          	auipc	ra,0xa
    8000240c:	6b0080e7          	jalr	1712(ra) # 8000cab8 <_Unwind_Resume>
    80002410:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002414:	00048513          	mv	a0,s1
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	d70080e7          	jalr	-656(ra) # 80003188 <_ZdlPv>
    80002420:	00090513          	mv	a0,s2
    80002424:	0000a097          	auipc	ra,0xa
    80002428:	694080e7          	jalr	1684(ra) # 8000cab8 <_Unwind_Resume>
    8000242c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    80002430:	00098513          	mv	a0,s3
    80002434:	00001097          	auipc	ra,0x1
    80002438:	d54080e7          	jalr	-684(ra) # 80003188 <_ZdlPv>
    8000243c:	00048513          	mv	a0,s1
    80002440:	0000a097          	auipc	ra,0xa
    80002444:	678080e7          	jalr	1656(ra) # 8000cab8 <_Unwind_Resume>
    80002448:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    8000244c:	00090513          	mv	a0,s2
    80002450:	00001097          	auipc	ra,0x1
    80002454:	d38080e7          	jalr	-712(ra) # 80003188 <_ZdlPv>
    80002458:	00048513          	mv	a0,s1
    8000245c:	0000a097          	auipc	ra,0xa
    80002460:	65c080e7          	jalr	1628(ra) # 8000cab8 <_Unwind_Resume>
    80002464:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    80002468:	00048513          	mv	a0,s1
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	d1c080e7          	jalr	-740(ra) # 80003188 <_ZdlPv>
    80002474:	00090513          	mv	a0,s2
    80002478:	0000a097          	auipc	ra,0xa
    8000247c:	640080e7          	jalr	1600(ra) # 8000cab8 <_Unwind_Resume>

0000000080002480 <_Z14semaphoreTestsv>:
{
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    semTest1();
    80002490:	00000097          	auipc	ra,0x0
    80002494:	c78080e7          	jalr	-904(ra) # 80002108 <_Z8semTest1v>

0000000080002498 <_Z7myTestsv>:
{
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813423          	sd	s0,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
}
    800024a4:	00813403          	ld	s0,8(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	02010413          	addi	s0,sp,32
    800024c4:	00050493          	mv	s1,a0
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	f8c080e7          	jalr	-116(ra) # 80003454 <_ZN14PeriodicThreadC1Em>
    800024d0:	00009797          	auipc	a5,0x9
    800024d4:	2c078793          	addi	a5,a5,704 # 8000b790 <_ZTV12TestPeriodic+0x10>
    800024d8:	00f4b023          	sd	a5,0(s1)
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	02010113          	addi	sp,sp,32
    800024ec:	00008067          	ret

00000000800024f0 <_Z11threadTest3v>:
{
    800024f0:	fe010113          	addi	sp,sp,-32
    800024f4:	00113c23          	sd	ra,24(sp)
    800024f8:	00813823          	sd	s0,16(sp)
    800024fc:	00913423          	sd	s1,8(sp)
    80002500:	01213023          	sd	s2,0(sp)
    80002504:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002508:	02800513          	li	a0,40
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	c54080e7          	jalr	-940(ra) # 80003160 <_Znwm>
    80002514:	00050913          	mv	s2,a0
    80002518:	03200593          	li	a1,50
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	f94080e7          	jalr	-108(ra) # 800024b0 <_ZN12TestPeriodicC1Em>
    t->start();
    80002524:	00090513          	mv	a0,s2
    80002528:	00001097          	auipc	ra,0x1
    8000252c:	d08080e7          	jalr	-760(ra) # 80003230 <_ZN6Thread5startEv>
    while(true)
    80002530:	0000006f          	j	80002530 <_Z11threadTest3v+0x40>
    80002534:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002538:	00090513          	mv	a0,s2
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	c4c080e7          	jalr	-948(ra) # 80003188 <_ZdlPv>
    80002544:	00048513          	mv	a0,s1
    80002548:	0000a097          	auipc	ra,0xa
    8000254c:	570080e7          	jalr	1392(ra) # 8000cab8 <_Unwind_Resume>

0000000080002550 <_Z11threadTestsv>:
{
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002560:	00000097          	auipc	ra,0x0
    80002564:	f90080e7          	jalr	-112(ra) # 800024f0 <_Z11threadTest3v>

0000000080002568 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00813423          	sd	s0,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00813403          	ld	s0,8(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
    800025a8:	00009797          	auipc	a5,0x9
    800025ac:	1b878793          	addi	a5,a5,440 # 8000b760 <_ZTV14PeriodicThread+0x10>
    800025b0:	00f53023          	sd	a5,0(a0)
    800025b4:	00001097          	auipc	ra,0x1
    800025b8:	af0080e7          	jalr	-1296(ra) # 800030a4 <_ZN6ThreadD1Ev>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN14PeriodicThreadD0Ev>:
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00113c23          	sd	ra,24(sp)
    800025d4:	00813823          	sd	s0,16(sp)
    800025d8:	00913423          	sd	s1,8(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	00050493          	mv	s1,a0
    800025e4:	00009797          	auipc	a5,0x9
    800025e8:	17c78793          	addi	a5,a5,380 # 8000b760 <_ZTV14PeriodicThread+0x10>
    800025ec:	00f53023          	sd	a5,0(a0)
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	ab4080e7          	jalr	-1356(ra) # 800030a4 <_ZN6ThreadD1Ev>
    800025f8:	00048513          	mv	a0,s1
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	b8c080e7          	jalr	-1140(ra) # 80003188 <_ZdlPv>
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	00813483          	ld	s1,8(sp)
    80002610:	02010113          	addi	sp,sp,32
    80002614:	00008067          	ret

0000000080002618 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00113423          	sd	ra,8(sp)
    80002620:	00813023          	sd	s0,0(sp)
    80002624:	01010413          	addi	s0,sp,16
    80002628:	00009797          	auipc	a5,0x9
    8000262c:	13878793          	addi	a5,a5,312 # 8000b760 <_ZTV14PeriodicThread+0x10>
    80002630:	00f53023          	sd	a5,0(a0)
    80002634:	00001097          	auipc	ra,0x1
    80002638:	a70080e7          	jalr	-1424(ra) # 800030a4 <_ZN6ThreadD1Ev>
    8000263c:	00813083          	ld	ra,8(sp)
    80002640:	00013403          	ld	s0,0(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <_ZN12TestPeriodicD0Ev>:
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
    80002664:	00009797          	auipc	a5,0x9
    80002668:	0fc78793          	addi	a5,a5,252 # 8000b760 <_ZTV14PeriodicThread+0x10>
    8000266c:	00f53023          	sd	a5,0(a0)
    80002670:	00001097          	auipc	ra,0x1
    80002674:	a34080e7          	jalr	-1484(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80002678:	00048513          	mv	a0,s1
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	b0c080e7          	jalr	-1268(ra) # 80003188 <_ZdlPv>
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	00813023          	sd	s0,0(sp)
    800026a4:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    800026a8:	00007517          	auipc	a0,0x7
    800026ac:	ab050513          	addi	a0,a0,-1360 # 80009158 <CONSOLE_STATUS+0x148>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	f1c080e7          	jalr	-228(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	ef4080e7          	jalr	-268(ra) # 800035ac <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	2887b783          	ld	a5,648(a5) # 8000b948 <_ZN3PCB7runningE>
    800026c8:	0207b703          	ld	a4,32(a5)
    800026cc:	0287b503          	ld	a0,40(a5)
    800026d0:	000700e7          	jalr	a4

    thread_exit();
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	c70080e7          	jalr	-912(ra) # 80001344 <thread_exit>
}
    800026dc:	00813083          	ld	ra,8(sp)
    800026e0:	00013403          	ld	s0,0(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800026ec:	fe010113          	addi	sp,sp,-32
    800026f0:	00113c23          	sd	ra,24(sp)
    800026f4:	00813823          	sd	s0,16(sp)
    800026f8:	00913423          	sd	s1,8(sp)
    800026fc:	02010413          	addi	s0,sp,32
    80002700:	00050493          	mv	s1,a0
    })
    80002704:	00050023          	sb	zero,0(a0)
    80002708:	00e53823          	sd	a4,16(a0)
    8000270c:	00053c23          	sd	zero,24(a0)
    80002710:	02b53023          	sd	a1,32(a0)
    80002714:	02c53423          	sd	a2,40(a0)
    80002718:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000271c:	000017b7          	lui	a5,0x1
    80002720:	00f686b3          	add	a3,a3,a5
    })
    80002724:	04d53023          	sd	a3,64(a0)
    80002728:	00000797          	auipc	a5,0x0
    8000272c:	f7078793          	addi	a5,a5,-144 # 80002698 <_ZN3PCB6runnerEv>
    80002730:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    80002734:	00001097          	auipc	ra,0x1
    80002738:	8a8080e7          	jalr	-1880(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    8000273c:	0004b423          	sd	zero,8(s1)
}
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	01013403          	ld	s0,16(sp)
    80002748:	00813483          	ld	s1,8(sp)
    8000274c:	02010113          	addi	sp,sp,32
    80002750:	00008067          	ret

0000000080002754 <_ZN3PCB5sleepEm>:
{
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
}
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN3PCB5startEv>:
{
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	860080e7          	jalr	-1952(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
}
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002794:	fe010113          	addi	sp,sp,-32
    80002798:	00113c23          	sd	ra,24(sp)
    8000279c:	00813823          	sd	s0,16(sp)
    800027a0:	00913423          	sd	s1,8(sp)
    800027a4:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800027a8:	00009497          	auipc	s1,0x9
    800027ac:	1a04b483          	ld	s1,416(s1) # 8000b948 <_ZN3PCB7runningE>
    800027b0:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800027b4:	00100793          	li	a5,1
    800027b8:	04f70863          	beq	a4,a5,80002808 <_ZN3PCB8dispatchEv+0x74>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	874080e7          	jalr	-1932(ra) # 80003030 <_ZN9Scheduler3getEv>
    800027c4:	00009797          	auipc	a5,0x9
    800027c8:	18a7b223          	sd	a0,388(a5) # 8000b948 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800027cc:	00100793          	li	a5,1
    800027d0:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
    800027d4:	00054783          	lbu	a5,0(a0)
    800027d8:	04078063          	beqz	a5,80002818 <_ZN3PCB8dispatchEv+0x84>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800027dc:	10000793          	li	a5,256
    800027e0:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    800027e4:	04050593          	addi	a1,a0,64
    800027e8:	04048513          	addi	a0,s1,64
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	a3c080e7          	jalr	-1476(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027f4:	01813083          	ld	ra,24(sp)
    800027f8:	01013403          	ld	s0,16(sp)
    800027fc:	00813483          	ld	s1,8(sp)
    80002800:	02010113          	addi	sp,sp,32
    80002804:	00008067          	ret
        Scheduler::put(old);
    80002808:	00048513          	mv	a0,s1
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	7d0080e7          	jalr	2000(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
    80002814:	fa9ff06f          	j	800027bc <_ZN3PCB8dispatchEv+0x28>
    80002818:	10000793          	li	a5,256
    8000281c:	1007a073          	csrs	sstatus,a5
}
    80002820:	fc5ff06f          	j	800027e4 <_ZN3PCB8dispatchEv+0x50>

0000000080002824 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00113423          	sd	ra,8(sp)
    8000282c:	00813023          	sd	s0,0(sp)
    80002830:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002834:	00001097          	auipc	ra,0x1
    80002838:	6ec080e7          	jalr	1772(ra) # 80003f20 <_Z7kmallocm>
}
    8000283c:	00813083          	ld	ra,8(sp)
    80002840:	00013403          	ld	s0,0(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    kfree(p);
    8000285c:	00001097          	auipc	ra,0x1
    80002860:	6ec080e7          	jalr	1772(ra) # 80003f48 <_Z5kfreePv>
}
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002884:	03053503          	ld	a0,48(a0)
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	6c0080e7          	jalr	1728(ra) # 80003f48 <_Z5kfreePv>
}
    80002890:	00813083          	ld	ra,8(sp)
    80002894:	00013403          	ld	s0,0(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	01213023          	sd	s2,0(sp)
    800028b4:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028b8:	05000513          	li	a0,80
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	f68080e7          	jalr	-152(ra) # 80002824 <_ZN3PCBnwEm>
    800028c4:	00050493          	mv	s1,a0
    800028c8:	00000713          	li	a4,0
    800028cc:	00000693          	li	a3,0
    800028d0:	00000613          	li	a2,0
    800028d4:	00000593          	li	a1,0
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	e14080e7          	jalr	-492(ra) # 800026ec <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028e0:	00100793          	li	a5,1
    800028e4:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	748080e7          	jalr	1864(ra) # 80003030 <_ZN9Scheduler3getEv>
    800028f0:	00009797          	auipc	a5,0x9
    800028f4:	04a7bc23          	sd	a0,88(a5) # 8000b948 <_ZN3PCB7runningE>
    800028f8:	00100793          	li	a5,1
    800028fc:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002900:	01813083          	ld	ra,24(sp)
    80002904:	01013403          	ld	s0,16(sp)
    80002908:	00813483          	ld	s1,8(sp)
    8000290c:	00013903          	ld	s2,0(sp)
    80002910:	02010113          	addi	sp,sp,32
    80002914:	00008067          	ret
    80002918:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000291c:	00048513          	mv	a0,s1
    80002920:	00000097          	auipc	ra,0x0
    80002924:	f2c080e7          	jalr	-212(ra) # 8000284c <_ZN3PCBdlEPv>
    80002928:	00090513          	mv	a0,s2
    8000292c:	0000a097          	auipc	ra,0xa
    80002930:	18c080e7          	jalr	396(ra) # 8000cab8 <_Unwind_Resume>

0000000080002934 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002934:	fd010113          	addi	sp,sp,-48
    80002938:	02113423          	sd	ra,40(sp)
    8000293c:	02813023          	sd	s0,32(sp)
    80002940:	00913c23          	sd	s1,24(sp)
    80002944:	01213823          	sd	s2,16(sp)
    80002948:	01313423          	sd	s3,8(sp)
    8000294c:	03010413          	addi	s0,sp,48
    80002950:	00050993          	mv	s3,a0
    80002954:	00058913          	mv	s2,a1
    80002958:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    8000295c:	01000513          	li	a0,16
    80002960:	00001097          	auipc	ra,0x1
    80002964:	5c0080e7          	jalr	1472(ra) # 80003f20 <_Z7kmallocm>
    newElem->next = 0;
    80002968:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    8000296c:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002970:	00093783          	ld	a5,0(s2)
    80002974:	02078663          	beqz	a5,800029a0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002978:	0004b783          	ld	a5,0(s1)
    8000297c:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002980:	00a4b023          	sd	a0,0(s1)
    }
}
    80002984:	02813083          	ld	ra,40(sp)
    80002988:	02013403          	ld	s0,32(sp)
    8000298c:	01813483          	ld	s1,24(sp)
    80002990:	01013903          	ld	s2,16(sp)
    80002994:	00813983          	ld	s3,8(sp)
    80002998:	03010113          	addi	sp,sp,48
    8000299c:	00008067          	ret
        head = tail = newElem;
    800029a0:	00a4b023          	sd	a0,0(s1)
    800029a4:	00a93023          	sd	a0,0(s2)
    800029a8:	fddff06f          	j	80002984 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

00000000800029ac <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00113c23          	sd	ra,24(sp)
    800029b4:	00813823          	sd	s0,16(sp)
    800029b8:	00913423          	sd	s1,8(sp)
    800029bc:	02010413          	addi	s0,sp,32
    800029c0:	00050793          	mv	a5,a0
    if(head == 0)
    800029c4:	00053503          	ld	a0,0(a0)
    800029c8:	02050e63          	beqz	a0,80002a04 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    800029cc:	00053703          	ld	a4,0(a0)
    800029d0:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    800029d4:	02070463          	beqz	a4,800029fc <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    800029d8:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	56c080e7          	jalr	1388(ra) # 80003f48 <_Z5kfreePv>
    return c;
}
    800029e4:	00048513          	mv	a0,s1
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	02010113          	addi	sp,sp,32
    800029f8:	00008067          	ret
        tail = 0;
    800029fc:	0005b023          	sd	zero,0(a1)
    80002a00:	fd9ff06f          	j	800029d8 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002a04:	00000493          	li	s1,0
    80002a08:	fddff06f          	j	800029e4 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002a0c <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002a0c:	fe010113          	addi	sp,sp,-32
    80002a10:	00113c23          	sd	ra,24(sp)
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00913423          	sd	s1,8(sp)
    80002a1c:	01213023          	sd	s2,0(sp)
    80002a20:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a24:	01800513          	li	a0,24
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	798080e7          	jalr	1944(ra) # 800041c0 <_ZN10KSemaphorenwEm>
    80002a30:	00050493          	mv	s1,a0
    80002a34:	00000593          	li	a1,0
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	538080e7          	jalr	1336(ra) # 80003f70 <_ZN10KSemaphoreC1Ei>
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	f097bc23          	sd	s1,-232(a5) # 8000b958 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a48:	01800513          	li	a0,24
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	774080e7          	jalr	1908(ra) # 800041c0 <_ZN10KSemaphorenwEm>
    80002a54:	00050493          	mv	s1,a0
    80002a58:	00000593          	li	a1,0
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	514080e7          	jalr	1300(ra) # 80003f70 <_ZN10KSemaphoreC1Ei>
    80002a64:	00009797          	auipc	a5,0x9
    80002a68:	ee97be23          	sd	s1,-260(a5) # 8000b960 <_ZN8KConsole19hasCharactersOutputE>
}
    80002a6c:	01813083          	ld	ra,24(sp)
    80002a70:	01013403          	ld	s0,16(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	00013903          	ld	s2,0(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret
    80002a84:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002a88:	00048513          	mv	a0,s1
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	75c080e7          	jalr	1884(ra) # 800041e8 <_ZN10KSemaphoredlEPv>
    80002a94:	00090513          	mv	a0,s2
    80002a98:	0000a097          	auipc	ra,0xa
    80002a9c:	020080e7          	jalr	32(ra) # 8000cab8 <_Unwind_Resume>
    80002aa0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002aa4:	00048513          	mv	a0,s1
    80002aa8:	00001097          	auipc	ra,0x1
    80002aac:	740080e7          	jalr	1856(ra) # 800041e8 <_ZN10KSemaphoredlEPv>
    80002ab0:	00090513          	mv	a0,s2
    80002ab4:	0000a097          	auipc	ra,0xa
    80002ab8:	004080e7          	jalr	4(ra) # 8000cab8 <_Unwind_Resume>

0000000080002abc <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002acc:	00009617          	auipc	a2,0x9
    80002ad0:	e9c60613          	addi	a2,a2,-356 # 8000b968 <_ZN8KConsole9tailInputE>
    80002ad4:	00009597          	auipc	a1,0x9
    80002ad8:	e9c58593          	addi	a1,a1,-356 # 8000b970 <_ZN8KConsole9headInputE>
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	e58080e7          	jalr	-424(ra) # 80002934 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002ae4:	00009517          	auipc	a0,0x9
    80002ae8:	e7453503          	ld	a0,-396(a0) # 8000b958 <_ZN8KConsole18hasCharactersInputE>
    80002aec:	00001097          	auipc	ra,0x1
    80002af0:	68c080e7          	jalr	1676(ra) # 80004178 <_ZN10KSemaphore6signalEv>
}
    80002af4:	00813083          	ld	ra,8(sp)
    80002af8:	00013403          	ld	s0,0(sp)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002b04:	00006517          	auipc	a0,0x6
    80002b08:	50c53503          	ld	a0,1292(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002b0c:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002b10:	0017f793          	andi	a5,a5,1
    80002b14:	04078863          	beqz	a5,80002b64 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002b28:	00006517          	auipc	a0,0x6
    80002b2c:	4e053503          	ld	a0,1248(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002b30:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002b34:	0ff57513          	andi	a0,a0,255
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	f84080e7          	jalr	-124(ra) # 80002abc <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002b40:	00006517          	auipc	a0,0x6
    80002b44:	4d053503          	ld	a0,1232(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002b48:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002b4c:	0017f793          	andi	a5,a5,1
    80002b50:	fc079ce3          	bnez	a5,80002b28 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002b54:	00813083          	ld	ra,8(sp)
    80002b58:	00013403          	ld	s0,0(sp)
    80002b5c:	01010113          	addi	sp,sp,16
    80002b60:	00008067          	ret
    80002b64:	00008067          	ret

0000000080002b68 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b68:	ff010113          	addi	sp,sp,-16
    80002b6c:	00113423          	sd	ra,8(sp)
    80002b70:	00813023          	sd	s0,0(sp)
    80002b74:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002b78:	00009517          	auipc	a0,0x9
    80002b7c:	de053503          	ld	a0,-544(a0) # 8000b958 <_ZN8KConsole18hasCharactersInputE>
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	498080e7          	jalr	1176(ra) # 80004018 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002b88:	00009597          	auipc	a1,0x9
    80002b8c:	de058593          	addi	a1,a1,-544 # 8000b968 <_ZN8KConsole9tailInputE>
    80002b90:	00009517          	auipc	a0,0x9
    80002b94:	de050513          	addi	a0,a0,-544 # 8000b970 <_ZN8KConsole9headInputE>
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	e14080e7          	jalr	-492(ra) # 800029ac <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002ba0:	00813083          	ld	ra,8(sp)
    80002ba4:	00013403          	ld	s0,0(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002bc0:	00009617          	auipc	a2,0x9
    80002bc4:	db860613          	addi	a2,a2,-584 # 8000b978 <_ZN8KConsole10tailOutputE>
    80002bc8:	00009597          	auipc	a1,0x9
    80002bcc:	db858593          	addi	a1,a1,-584 # 8000b980 <_ZN8KConsole10headOutputE>
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	d64080e7          	jalr	-668(ra) # 80002934 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002bd8:	00009517          	auipc	a0,0x9
    80002bdc:	d8853503          	ld	a0,-632(a0) # 8000b960 <_ZN8KConsole19hasCharactersOutputE>
    80002be0:	00001097          	auipc	ra,0x1
    80002be4:	598080e7          	jalr	1432(ra) # 80004178 <_ZN10KSemaphore6signalEv>
}
    80002be8:	00813083          	ld	ra,8(sp)
    80002bec:	00013403          	ld	s0,0(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002bf8:	ff010113          	addi	sp,sp,-16
    80002bfc:	00113423          	sd	ra,8(sp)
    80002c00:	00813023          	sd	s0,0(sp)
    80002c04:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002c08:	00009517          	auipc	a0,0x9
    80002c0c:	d5853503          	ld	a0,-680(a0) # 8000b960 <_ZN8KConsole19hasCharactersOutputE>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	408080e7          	jalr	1032(ra) # 80004018 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002c18:	00009597          	auipc	a1,0x9
    80002c1c:	d6058593          	addi	a1,a1,-672 # 8000b978 <_ZN8KConsole10tailOutputE>
    80002c20:	00009517          	auipc	a0,0x9
    80002c24:	d6050513          	addi	a0,a0,-672 # 8000b980 <_ZN8KConsole10headOutputE>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	d84080e7          	jalr	-636(ra) # 800029ac <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002c30:	00813083          	ld	ra,8(sp)
    80002c34:	00013403          	ld	s0,0(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c40:	00006517          	auipc	a0,0x6
    80002c44:	3d053503          	ld	a0,976(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002c48:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002c4c:	0207f793          	andi	a5,a5,32
    80002c50:	04078263          	beqz	a5,80002c94 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00113423          	sd	ra,8(sp)
    80002c5c:	00813023          	sd	s0,0(sp)
    80002c60:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f94080e7          	jalr	-108(ra) # 80002bf8 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002c6c:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c70:	00006517          	auipc	a0,0x6
    80002c74:	3a053503          	ld	a0,928(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002c78:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002c7c:	0207f793          	andi	a5,a5,32
    80002c80:	fe0792e3          	bnez	a5,80002c64 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002c84:	00813083          	ld	ra,8(sp)
    80002c88:	00013403          	ld	s0,0(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret
    80002c94:	00008067          	ret

0000000080002c98 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002ca4:	00009797          	auipc	a5,0x9
    80002ca8:	c247b783          	ld	a5,-988(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cac:	0007b603          	ld	a2,0(a5)
    80002cb0:	00500793          	li	a5,5
    80002cb4:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002cb8:	00009797          	auipc	a5,0x9
    80002cbc:	cd07b783          	ld	a5,-816(a5) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002cc0:	00000593          	li	a1,0
    while(curr != 0)
    80002cc4:	02078063          	beqz	a5,80002ce4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002cc8:	01863683          	ld	a3,24(a2)
    80002ccc:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002cd0:	00e6e863          	bltu	a3,a4,80002ce0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002cd4:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002cd8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002cdc:	fe9ff06f          	j	80002cc4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002ce0:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002ce4:	02058263          	beqz	a1,80002d08 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002ce8:	01863783          	ld	a5,24(a2)
    80002cec:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002cf0:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002cf4:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002cf8:	00c5b423          	sd	a2,8(a1)
    }
}
    80002cfc:	00813403          	ld	s0,8(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002d08:	00009797          	auipc	a5,0x9
    80002d0c:	c8c7b023          	sd	a2,-896(a5) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002d10:	00863783          	ld	a5,8(a2)
    80002d14:	fe0784e3          	beqz	a5,80002cfc <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d18:	0187b703          	ld	a4,24(a5)
    80002d1c:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002d20:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002d24:	00e7bc23          	sd	a4,24(a5)
    80002d28:	fd5ff06f          	j	80002cfc <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002d2c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002d2c:	00009517          	auipc	a0,0x9
    80002d30:	c5c53503          	ld	a0,-932(a0) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002d34:	08050863          	beqz	a0,80002dc4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d38:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002d3c:	00100713          	li	a4,1
    80002d40:	00e78863          	beq	a5,a4,80002d50 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002d44:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002d48:	00f53c23          	sd	a5,24(a0)
    80002d4c:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002d50:	06050a63          	beqz	a0,80002dc4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002d54:	00009797          	auipc	a5,0x9
    80002d58:	c347b783          	ld	a5,-972(a5) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002d5c:	00a78663          	beq	a5,a0,80002d68 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002d60:	01853783          	ld	a5,24(a0)
    80002d64:	06079063          	bnez	a5,80002dc4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002d68:	fe010113          	addi	sp,sp,-32
    80002d6c:	00113c23          	sd	ra,24(sp)
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002d7c:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002d80:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	258080e7          	jalr	600(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002d8c:	00009797          	auipc	a5,0x9
    80002d90:	be97be23          	sd	s1,-1028(a5) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002d94:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002d98:	00048c63          	beqz	s1,80002db0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002d9c:	00009797          	auipc	a5,0x9
    80002da0:	bec7b783          	ld	a5,-1044(a5) # 8000b988 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002da4:	fc978ce3          	beq	a5,s1,80002d7c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002da8:	0184b783          	ld	a5,24(s1)
    80002dac:	fc0788e3          	beqz	a5,80002d7c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002db0:	01813083          	ld	ra,24(sp)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	00813483          	ld	s1,8(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret
    80002dc4:	00008067          	ret

0000000080002dc8 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00113c23          	sd	ra,24(sp)
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	01213023          	sd	s2,0(sp)
    80002ddc:	02010413          	addi	s0,sp,32
    80002de0:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002de4:	00053503          	ld	a0,0(a0)
    80002de8:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	15c080e7          	jalr	348(ra) # 80003f48 <_Z5kfreePv>
    first = newFirst;
    80002df4:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002df8:	00090e63          	beqz	s2,80002e14 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002dfc:	01813083          	ld	ra,24(sp)
    80002e00:	01013403          	ld	s0,16(sp)
    80002e04:	00813483          	ld	s1,8(sp)
    80002e08:	00013903          	ld	s2,0(sp)
    80002e0c:	02010113          	addi	sp,sp,32
    80002e10:	00008067          	ret
        first = last = 0;
    80002e14:	0004b423          	sd	zero,8(s1)
    80002e18:	0004b023          	sd	zero,0(s1)
}
    80002e1c:	fe1ff06f          	j	80002dfc <_ZN5Queue3popEv+0x34>

0000000080002e20 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002e20:	fe010113          	addi	sp,sp,-32
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	01213023          	sd	s2,0(sp)
    80002e34:	02010413          	addi	s0,sp,32
    80002e38:	00050493          	mv	s1,a0
    80002e3c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002e40:	01000513          	li	a0,16
    80002e44:	00001097          	auipc	ra,0x1
    80002e48:	0dc080e7          	jalr	220(ra) # 80003f20 <_Z7kmallocm>
    newElem->data = t;
    80002e4c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002e50:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002e54:	0004b783          	ld	a5,0(s1)
    80002e58:	02078463          	beqz	a5,80002e80 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002e5c:	0084b783          	ld	a5,8(s1)
    80002e60:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002e64:	00a4b423          	sd	a0,8(s1)
    }
}
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	00013903          	ld	s2,0(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret
        first = newElem;
    80002e80:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002e84:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002e88:	00053423          	sd	zero,8(a0)
    80002e8c:	0004b783          	ld	a5,0(s1)
    80002e90:	0007b423          	sd	zero,8(a5)
    80002e94:	fd5ff06f          	j	80002e68 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002e98 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002e98:	ff010113          	addi	sp,sp,-16
    80002e9c:	00813423          	sd	s0,8(sp)
    80002ea0:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002ea4:	00053503          	ld	a0,0(a0)
    80002ea8:	00050463          	beqz	a0,80002eb0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002eac:	00053503          	ld	a0,0(a0)
}
    80002eb0:	00813403          	ld	s0,8(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00813423          	sd	s0,8(sp)
    80002ec4:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002ec8:	00053423          	sd	zero,8(a0)
    80002ecc:	00053023          	sd	zero,0(a0)
}
    80002ed0:	00813403          	ld	s0,8(sp)
    80002ed4:	01010113          	addi	sp,sp,16
    80002ed8:	00008067          	ret

0000000080002edc <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002edc:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002ee0:	04050063          	beqz	a0,80002f20 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002ee4:	fe010113          	addi	sp,sp,-32
    80002ee8:	00113c23          	sd	ra,24(sp)
    80002eec:	00813823          	sd	s0,16(sp)
    80002ef0:	00913423          	sd	s1,8(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002ef8:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002efc:	00001097          	auipc	ra,0x1
    80002f00:	04c080e7          	jalr	76(ra) # 80003f48 <_Z5kfreePv>
        curr = curr->next;
    80002f04:	00048513          	mv	a0,s1
    while(curr != 0)
    80002f08:	fe0498e3          	bnez	s1,80002ef8 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002f0c:	01813083          	ld	ra,24(sp)
    80002f10:	01013403          	ld	s0,16(sp)
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	02010113          	addi	sp,sp,32
    80002f1c:	00008067          	ret
    80002f20:	00008067          	ret

0000000080002f24 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00813423          	sd	s0,8(sp)
    80002f2c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002f30:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002f34:	00000513          	li	a0,0
    while(curr != 0)
    80002f38:	00078863          	beqz	a5,80002f48 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002f3c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002f40:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f44:	ff5ff06f          	j	80002f38 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002f48:	00813403          	ld	s0,8(sp)
    80002f4c:	01010113          	addi	sp,sp,16
    80002f50:	00008067          	ret

0000000080002f54 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00113423          	sd	ra,8(sp)
    80002f5c:	00813023          	sd	s0,0(sp)
    80002f60:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	fbc080e7          	jalr	-68(ra) # 80003f20 <_Z7kmallocm>
}
    80002f6c:	00813083          	ld	ra,8(sp)
    80002f70:	00013403          	ld	s0,0(sp)
    80002f74:	01010113          	addi	sp,sp,16
    80002f78:	00008067          	ret

0000000080002f7c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00113423          	sd	ra,8(sp)
    80002f84:	00813023          	sd	s0,0(sp)
    80002f88:	01010413          	addi	s0,sp,16
    kfree(p);
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	fbc080e7          	jalr	-68(ra) # 80003f48 <_Z5kfreePv>
}
    80002f94:	00813083          	ld	ra,8(sp)
    80002f98:	00013403          	ld	s0,0(sp)
    80002f9c:	01010113          	addi	sp,sp,16
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00813423          	sd	s0,8(sp)
    80002fac:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002fb0:	00009797          	auipc	a5,0x9
    80002fb4:	9e07b783          	ld	a5,-1568(a5) # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002fb8:	00000513          	li	a0,0
    while(curr != 0)
    80002fbc:	00078863          	beqz	a5,80002fcc <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002fc0:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002fc4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002fc8:	ff5ff06f          	j	80002fbc <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002fcc:	0005051b          	sext.w	a0,a0
    80002fd0:	00813403          	ld	s0,8(sp)
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret

0000000080002fdc <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002fdc:	ff010113          	addi	sp,sp,-16
    80002fe0:	00813423          	sd	s0,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002fe8:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002fec:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002ff0:	00009797          	auipc	a5,0x9
    80002ff4:	9a07b783          	ld	a5,-1632(a5) # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    80002ff8:	02078263          	beqz	a5,8000301c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002ffc:	00009797          	auipc	a5,0x9
    80003000:	99478793          	addi	a5,a5,-1644 # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    80003004:	0087b703          	ld	a4,8(a5)
    80003008:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000300c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003010:	00813403          	ld	s0,8(sp)
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	97478793          	addi	a5,a5,-1676 # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    80003024:	00a7b423          	sd	a0,8(a5)
    80003028:	00a7b023          	sd	a0,0(a5)
    8000302c:	fe5ff06f          	j	80003010 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003030 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00813423          	sd	s0,8(sp)
    80003038:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000303c:	00009517          	auipc	a0,0x9
    80003040:	95453503          	ld	a0,-1708(a0) # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    80003044:	00050c63          	beqz	a0,8000305c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003048:	00853783          	ld	a5,8(a0)
    8000304c:	00078e63          	beqz	a5,80003068 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003050:	00009717          	auipc	a4,0x9
    80003054:	94f73023          	sd	a5,-1728(a4) # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003058:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000305c:	00813403          	ld	s0,8(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003068:	00009797          	auipc	a5,0x9
    8000306c:	92878793          	addi	a5,a5,-1752 # 8000b990 <_ZN9Scheduler16schedulerPCBHeadE>
    80003070:	0007b423          	sd	zero,8(a5)
    80003074:	0007b023          	sd	zero,0(a5)
    80003078:	fe1ff06f          	j	80003058 <_ZN9Scheduler3getEv+0x28>

000000008000307c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00113423          	sd	ra,8(sp)
    80003084:	00813023          	sd	s0,0(sp)
    80003088:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	a20080e7          	jalr	-1504(ra) # 80003aac <_ZN5Riscv10kernelMainEv>
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret

00000000800030a4 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00113423          	sd	ra,8(sp)
    800030ac:	00813023          	sd	s0,0(sp)
    800030b0:	01010413          	addi	s0,sp,16
    800030b4:	00008797          	auipc	a5,0x8
    800030b8:	71478793          	addi	a5,a5,1812 # 8000b7c8 <_ZTV6Thread+0x10>
    800030bc:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800030c0:	00853503          	ld	a0,8(a0)
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	1b4080e7          	jalr	436(ra) # 80001278 <mem_free>
}
    800030cc:	00813083          	ld	ra,8(sp)
    800030d0:	00013403          	ld	s0,0(sp)
    800030d4:	01010113          	addi	sp,sp,16
    800030d8:	00008067          	ret

00000000800030dc <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    800030dc:	ff010113          	addi	sp,sp,-16
    800030e0:	00113423          	sd	ra,8(sp)
    800030e4:	00813023          	sd	s0,0(sp)
    800030e8:	01010413          	addi	s0,sp,16
    800030ec:	00008797          	auipc	a5,0x8
    800030f0:	70478793          	addi	a5,a5,1796 # 8000b7f0 <_ZTV9Semaphore+0x10>
    800030f4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800030f8:	00853503          	ld	a0,8(a0)
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	17c080e7          	jalr	380(ra) # 80001278 <mem_free>
}
    80003104:	00813083          	ld	ra,8(sp)
    80003108:	00013403          	ld	s0,0(sp)
    8000310c:	01010113          	addi	sp,sp,16
    80003110:	00008067          	ret

0000000080003114 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80003114:	fe010113          	addi	sp,sp,-32
    80003118:	00113c23          	sd	ra,24(sp)
    8000311c:	00813823          	sd	s0,16(sp)
    80003120:	00913423          	sd	s1,8(sp)
    80003124:	02010413          	addi	s0,sp,32
    80003128:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	04450513          	addi	a0,a0,68 # 80009170 <CONSOLE_STATUS+0x160>
    80003134:	00000097          	auipc	ra,0x0
    80003138:	498080e7          	jalr	1176(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    thr->run();
    8000313c:	0004b783          	ld	a5,0(s1)
    80003140:	0107b783          	ld	a5,16(a5)
    80003144:	00048513          	mv	a0,s1
    80003148:	000780e7          	jalr	a5
}
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret

0000000080003160 <_Znwm>:
{
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00113423          	sd	ra,8(sp)
    80003168:	00813023          	sd	s0,0(sp)
    8000316c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	0d8080e7          	jalr	216(ra) # 80001248 <mem_alloc>
}
    80003178:	00813083          	ld	ra,8(sp)
    8000317c:	00013403          	ld	s0,0(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_ZdlPv>:
{
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00113423          	sd	ra,8(sp)
    80003190:	00813023          	sd	s0,0(sp)
    80003194:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	0e0080e7          	jalr	224(ra) # 80001278 <mem_free>
}
    800031a0:	00813083          	ld	ra,8(sp)
    800031a4:	00013403          	ld	s0,0(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	00050493          	mv	s1,a0
}
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	edc080e7          	jalr	-292(ra) # 800030a4 <_ZN6ThreadD1Ev>
    800031d0:	00048513          	mv	a0,s1
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	fb4080e7          	jalr	-76(ra) # 80003188 <_ZdlPv>
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret

00000000800031f0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	00050493          	mv	s1,a0
}
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	ed4080e7          	jalr	-300(ra) # 800030dc <_ZN9SemaphoreD1Ev>
    80003210:	00048513          	mv	a0,s1
    80003214:	00000097          	auipc	ra,0x0
    80003218:	f74080e7          	jalr	-140(ra) # 80003188 <_ZdlPv>
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret

0000000080003230 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80003230:	00853783          	ld	a5,8(a0)
    80003234:	02079c63          	bnez	a5,8000326c <_ZN6Thread5startEv+0x3c>
{
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00113423          	sd	ra,8(sp)
    80003240:	00813023          	sd	s0,0(sp)
    80003244:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003248:	01853603          	ld	a2,24(a0)
    8000324c:	01053583          	ld	a1,16(a0)
    80003250:	00850513          	addi	a0,a0,8
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	050080e7          	jalr	80(ra) # 800012a4 <thread_create>
}
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret
        return -1;
    8000326c:	fff00513          	li	a0,-1
}
    80003270:	00008067          	ret

0000000080003274 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	00813023          	sd	s0,0(sp)
    80003280:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	0a0080e7          	jalr	160(ra) # 80001324 <thread_dispatch>
}
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	17c080e7          	jalr	380(ra) # 80001428 <time_sleep>
}
    800032b4:	00813083          	ld	ra,8(sp)
    800032b8:	00013403          	ld	s0,0(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret

00000000800032c4 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	02010413          	addi	s0,sp,32
    800032d8:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    800032dc:	0004b783          	ld	a5,0(s1)
    800032e0:	0187b783          	ld	a5,24(a5)
    800032e4:	00048513          	mv	a0,s1
    800032e8:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    800032ec:	0204b503          	ld	a0,32(s1)
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	fac080e7          	jalr	-84(ra) # 8000329c <_ZN6Thread5sleepEm>
    while(true)
    800032f8:	fe5ff06f          	j	800032dc <_ZN14PeriodicThread6runnerEPv+0x18>

00000000800032fc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    800032fc:	ff010113          	addi	sp,sp,-16
    80003300:	00813423          	sd	s0,8(sp)
    80003304:	01010413          	addi	s0,sp,16
    80003308:	00008797          	auipc	a5,0x8
    8000330c:	4c078793          	addi	a5,a5,1216 # 8000b7c8 <_ZTV6Thread+0x10>
    80003310:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003314:	00053423          	sd	zero,8(a0)
    f = body;
    80003318:	00b53823          	sd	a1,16(a0)
    this->args = args;
    8000331c:	00c53c23          	sd	a2,24(a0)
}
    80003320:	00813403          	ld	s0,8(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00813423          	sd	s0,8(sp)
    80003334:	01010413          	addi	s0,sp,16
    80003338:	00008797          	auipc	a5,0x8
    8000333c:	49078793          	addi	a5,a5,1168 # 8000b7c8 <_ZTV6Thread+0x10>
    80003340:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003344:	00000797          	auipc	a5,0x0
    80003348:	dd078793          	addi	a5,a5,-560 # 80003114 <_ZN6Thread6runnerEPv>
    8000334c:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80003350:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003354:	00a53c23          	sd	a0,24(a0)
}
    80003358:	00813403          	ld	s0,8(sp)
    8000335c:	01010113          	addi	sp,sp,16
    80003360:	00008067          	ret

0000000080003364 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003364:	00853503          	ld	a0,8(a0)
    80003368:	02050663          	beqz	a0,80003394 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00113423          	sd	ra,8(sp)
    80003374:	00813023          	sd	s0,0(sp)
    80003378:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	054080e7          	jalr	84(ra) # 800013d0 <sem_wait>
}
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret
        return -1;
    80003394:	fff00513          	li	a0,-1
}
    80003398:	00008067          	ret

000000008000339c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00113c23          	sd	ra,24(sp)
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	00050493          	mv	s1,a0
    800033b4:	00008797          	auipc	a5,0x8
    800033b8:	43c78793          	addi	a5,a5,1084 # 8000b7f0 <_ZTV9Semaphore+0x10>
    800033bc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800033c0:	00850513          	addi	a0,a0,8
    800033c4:	ffffe097          	auipc	ra,0xffffe
    800033c8:	fa8080e7          	jalr	-88(ra) # 8000136c <sem_open>
    if(retval != 0)
    800033cc:	00050463          	beqz	a0,800033d4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800033d0:	0004b423          	sd	zero,8(s1)
}
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800033e8:	00853503          	ld	a0,8(a0)
    800033ec:	02050663          	beqz	a0,80003418 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800033f0:	ff010113          	addi	sp,sp,-16
    800033f4:	00113423          	sd	ra,8(sp)
    800033f8:	00813023          	sd	s0,0(sp)
    800033fc:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    80003400:	ffffe097          	auipc	ra,0xffffe
    80003404:	ffc080e7          	jalr	-4(ra) # 800013fc <sem_signal>
}
    80003408:	00813083          	ld	ra,8(sp)
    8000340c:	00013403          	ld	s0,0(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret
        return -1;
    80003418:	fff00513          	li	a0,-1
}
    8000341c:	00008067          	ret

0000000080003420 <_ZN7Console4getcEv>:
char Console::getc() {
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00813423          	sd	s0,8(sp)
    80003428:	01010413          	addi	s0,sp,16
}
    8000342c:	00000513          	li	a0,0
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN7Console4putcEc>:
void Console::putc(char) {
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
}
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003454:	fe010113          	addi	sp,sp,-32
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	00813823          	sd	s0,16(sp)
    80003460:	00913423          	sd	s1,8(sp)
    80003464:	01213023          	sd	s2,0(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00050493          	mv	s1,a0
    80003470:	00058913          	mv	s2,a1
    80003474:	00050613          	mv	a2,a0
    80003478:	00000597          	auipc	a1,0x0
    8000347c:	e4c58593          	addi	a1,a1,-436 # 800032c4 <_ZN14PeriodicThread6runnerEPv>
    80003480:	00000097          	auipc	ra,0x0
    80003484:	e7c080e7          	jalr	-388(ra) # 800032fc <_ZN6ThreadC1EPFvPvES0_>
    80003488:	00008797          	auipc	a5,0x8
    8000348c:	2d878793          	addi	a5,a5,728 # 8000b760 <_ZTV14PeriodicThread+0x10>
    80003490:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003494:	0324b023          	sd	s2,32(s1)
}
    80003498:	01813083          	ld	ra,24(sp)
    8000349c:	01013403          	ld	s0,16(sp)
    800034a0:	00813483          	ld	s1,8(sp)
    800034a4:	00013903          	ld	s2,0(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret

00000000800034b0 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00813423          	sd	s0,8(sp)
    800034b8:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	01010113          	addi	sp,sp,16
    800034c4:	00008067          	ret

00000000800034c8 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00813423          	sd	s0,8(sp)
    800034d0:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    800034d4:	00813403          	ld	s0,8(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00113423          	sd	ra,8(sp)
    800034e8:	00813023          	sd	s0,0(sp)
    800034ec:	01010413          	addi	s0,sp,16
    userMain();
    800034f0:	00002097          	auipc	ra,0x2
    800034f4:	76c080e7          	jalr	1900(ra) # 80005c5c <_Z8userMainv>
}
    800034f8:	00813083          	ld	ra,8(sp)
    800034fc:	00013403          	ld	s0,0(sp)
    80003500:	01010113          	addi	sp,sp,16
    80003504:	00008067          	ret

0000000080003508 <_ZN5Riscv10initSystemEv>:
{
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00113423          	sd	ra,8(sp)
    80003510:	00813023          	sd	s0,0(sp)
    80003514:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003518:	00008797          	auipc	a5,0x8
    8000351c:	3987b783          	ld	a5,920(a5) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003520:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003524:	fffff097          	auipc	ra,0xfffff
    80003528:	37c080e7          	jalr	892(ra) # 800028a0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000352c:	fffff097          	auipc	ra,0xfffff
    80003530:	4e0080e7          	jalr	1248(ra) # 80002a0c <_ZN8KConsole10initializeEv>
}
    80003534:	00813083          	ld	ra,8(sp)
    80003538:	00013403          	ld	s0,0(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	00008067          	ret

0000000080003544 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813423          	sd	s0,8(sp)
    8000354c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003550:	00200793          	li	a5,2
    80003554:	1007a073          	csrs	sstatus,a5
}
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN5Riscv17disableInterruptsEv>:
{
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003570:	00200793          	li	a5,2
    80003574:	1007b073          	csrc	sstatus,a5
}
    80003578:	00813403          	ld	s0,8(sp)
    8000357c:	01010113          	addi	sp,sp,16
    80003580:	00008067          	ret

0000000080003584 <_ZN5Riscv9endSystemEv>:
{
    80003584:	ff010113          	addi	sp,sp,-16
    80003588:	00113423          	sd	ra,8(sp)
    8000358c:	00813023          	sd	s0,0(sp)
    80003590:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003594:	00000097          	auipc	ra,0x0
    80003598:	fd0080e7          	jalr	-48(ra) # 80003564 <_ZN5Riscv17disableInterruptsEv>
}
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN5Riscv10popSppSpieEv>:
{
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00813423          	sd	s0,8(sp)
    800035b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800035b8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800035bc:	10200073          	sret
}
    800035c0:	00813403          	ld	s0,8(sp)
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret

00000000800035cc <_ZN5Riscv11printStringEPKc>:
{
    800035cc:	fd010113          	addi	sp,sp,-48
    800035d0:	02113423          	sd	ra,40(sp)
    800035d4:	02813023          	sd	s0,32(sp)
    800035d8:	00913c23          	sd	s1,24(sp)
    800035dc:	01213823          	sd	s2,16(sp)
    800035e0:	03010413          	addi	s0,sp,48
    800035e4:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800035e8:	100027f3          	csrr	a5,sstatus
    800035ec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800035f0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800035f4:	00200793          	li	a5,2
    800035f8:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    800035fc:	0004c503          	lbu	a0,0(s1)
    80003600:	00050a63          	beqz	a0,80003614 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003604:	00005097          	auipc	ra,0x5
    80003608:	ab8080e7          	jalr	-1352(ra) # 800080bc <__putc>
        string++;
    8000360c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003610:	fedff06f          	j	800035fc <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003614:	0009091b          	sext.w	s2,s2
    80003618:	00297913          	andi	s2,s2,2
    8000361c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003620:	10092073          	csrs	sstatus,s2
}
    80003624:	02813083          	ld	ra,40(sp)
    80003628:	02013403          	ld	s0,32(sp)
    8000362c:	01813483          	ld	s1,24(sp)
    80003630:	01013903          	ld	s2,16(sp)
    80003634:	03010113          	addi	sp,sp,48
    80003638:	00008067          	ret

000000008000363c <_ZN5Riscv12printIntegerEm>:
{
    8000363c:	fc010113          	addi	sp,sp,-64
    80003640:	02113c23          	sd	ra,56(sp)
    80003644:	02813823          	sd	s0,48(sp)
    80003648:	02913423          	sd	s1,40(sp)
    8000364c:	03213023          	sd	s2,32(sp)
    80003650:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003654:	100027f3          	csrr	a5,sstatus
    80003658:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000365c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003660:	00200793          	li	a5,2
    80003664:	1007b073          	csrc	sstatus,a5
        x = num;
    80003668:	0005051b          	sext.w	a0,a0
    i = 0;
    8000366c:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003670:	00a00613          	li	a2,10
    80003674:	02c5773b          	remuw	a4,a0,a2
    80003678:	02071693          	slli	a3,a4,0x20
    8000367c:	0206d693          	srli	a3,a3,0x20
    80003680:	00006717          	auipc	a4,0x6
    80003684:	b3070713          	addi	a4,a4,-1232 # 800091b0 <_ZZN5Riscv12printIntegerEmE6digits>
    80003688:	00d70733          	add	a4,a4,a3
    8000368c:	00074703          	lbu	a4,0(a4)
    80003690:	fe040693          	addi	a3,s0,-32
    80003694:	009687b3          	add	a5,a3,s1
    80003698:	0014849b          	addiw	s1,s1,1
    8000369c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800036a0:	0005071b          	sext.w	a4,a0
    800036a4:	02c5553b          	divuw	a0,a0,a2
    800036a8:	00900793          	li	a5,9
    800036ac:	fce7e2e3          	bltu	a5,a4,80003670 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    800036b0:	fff4849b          	addiw	s1,s1,-1
    800036b4:	0004ce63          	bltz	s1,800036d0 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800036b8:	fe040793          	addi	a5,s0,-32
    800036bc:	009787b3          	add	a5,a5,s1
    800036c0:	ff07c503          	lbu	a0,-16(a5)
    800036c4:	00005097          	auipc	ra,0x5
    800036c8:	9f8080e7          	jalr	-1544(ra) # 800080bc <__putc>
    800036cc:	fe5ff06f          	j	800036b0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    800036d0:	00a00513          	li	a0,10
    800036d4:	00005097          	auipc	ra,0x5
    800036d8:	9e8080e7          	jalr	-1560(ra) # 800080bc <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800036dc:	0009091b          	sext.w	s2,s2
    800036e0:	00297913          	andi	s2,s2,2
    800036e4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800036e8:	10092073          	csrs	sstatus,s2
}
    800036ec:	03813083          	ld	ra,56(sp)
    800036f0:	03013403          	ld	s0,48(sp)
    800036f4:	02813483          	ld	s1,40(sp)
    800036f8:	02013903          	ld	s2,32(sp)
    800036fc:	04010113          	addi	sp,sp,64
    80003700:	00008067          	ret

0000000080003704 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003704:	f8010113          	addi	sp,sp,-128
    80003708:	06113c23          	sd	ra,120(sp)
    8000370c:	06813823          	sd	s0,112(sp)
    80003710:	06913423          	sd	s1,104(sp)
    80003714:	07213023          	sd	s2,96(sp)
    80003718:	05313c23          	sd	s3,88(sp)
    8000371c:	05413823          	sd	s4,80(sp)
    80003720:	05513423          	sd	s5,72(sp)
    80003724:	05613023          	sd	s6,64(sp)
    80003728:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000372c:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003730:	142027f3          	csrr	a5,scause
    80003734:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80003738:	f8043783          	ld	a5,-128(s0)
    switch(scause)
    8000373c:	fff00713          	li	a4,-1
    80003740:	03f71713          	slli	a4,a4,0x3f
    80003744:	00170713          	addi	a4,a4,1
    80003748:	0ee78663          	beq	a5,a4,80003834 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    8000374c:	fff00713          	li	a4,-1
    80003750:	03f71713          	slli	a4,a4,0x3f
    80003754:	00170713          	addi	a4,a4,1
    80003758:	08f76e63          	bltu	a4,a5,800037f4 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    8000375c:	ff878793          	addi	a5,a5,-8
    80003760:	00100713          	li	a4,1
    80003764:	0af76463          	bltu	a4,a5,8000380c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003768:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000376c:	14102773          	csrr	a4,sepc
    80003770:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    80003774:	f9843903          	ld	s2,-104(s0)
            sepc+=4;
    80003778:	00490913          	addi	s2,s2,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    8000377c:	00100713          	li	a4,1
    80003780:	14e78263          	beq	a5,a4,800038c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003784:	00200713          	li	a4,2
    80003788:	14e78c63          	beq	a5,a4,800038e0 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
            else if(operation == PCB::THREAD_CREATE)
    8000378c:	01100713          	li	a4,17
    80003790:	16e78263          	beq	a5,a4,800038f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            else if(operation == PCB::THREAD_DISPATCH)
    80003794:	01300713          	li	a4,19
    80003798:	1ae78463          	beq	a5,a4,80003940 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
            else if(operation == PCB::THREAD_EXIT)
    8000379c:	01200713          	li	a4,18
    800037a0:	1ce78463          	beq	a5,a4,80003968 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
            else if(operation == PCB::TIME_SLEEP)
    800037a4:	03100713          	li	a4,49
    800037a8:	20e78863          	beq	a5,a4,800039b8 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
            else if(operation == KSemaphore::SEM_OPEN)
    800037ac:	02100713          	li	a4,33
    800037b0:	24e78863          	beq	a5,a4,80003a00 <_ZN5Riscv20handleSupervisorTrapEv+0x2fc>
            else if(operation == KSemaphore::SEM_WAIT)
    800037b4:	02300713          	li	a4,35
    800037b8:	28e78263          	beq	a5,a4,80003a3c <_ZN5Riscv20handleSupervisorTrapEv+0x338>
            else if(operation == KSemaphore::SEM_SIGNAL)
    800037bc:	02400713          	li	a4,36
    800037c0:	2ae78063          	beq	a5,a4,80003a60 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
            else if(operation == KSemaphore::SEM_CLOSE)
    800037c4:	02200713          	li	a4,34
    800037c8:	10e79863          	bne	a5,a4,800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800037cc:	00058493          	mv	s1,a1
                delete kSem;
    800037d0:	00048e63          	beqz	s1,800037ec <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    800037d4:	00048513          	mv	a0,s1
    800037d8:	00001097          	auipc	ra,0x1
    800037dc:	8e0080e7          	jalr	-1824(ra) # 800040b8 <_ZN10KSemaphoreD1Ev>
    800037e0:	00048513          	mv	a0,s1
    800037e4:	00001097          	auipc	ra,0x1
    800037e8:	a04080e7          	jalr	-1532(ra) # 800041e8 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    800037ec:	00000513          	li	a0,0
    800037f0:	0e80006f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    switch(scause)
    800037f4:	fff00713          	li	a4,-1
    800037f8:	03f71713          	slli	a4,a4,0x3f
    800037fc:	00970713          	addi	a4,a4,9
    80003800:	00e79663          	bne	a5,a4,8000380c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            console_handler();
    80003804:	00005097          	auipc	ra,0x5
    80003808:	92c080e7          	jalr	-1748(ra) # 80008130 <console_handler>
}
    8000380c:	07813083          	ld	ra,120(sp)
    80003810:	07013403          	ld	s0,112(sp)
    80003814:	06813483          	ld	s1,104(sp)
    80003818:	06013903          	ld	s2,96(sp)
    8000381c:	05813983          	ld	s3,88(sp)
    80003820:	05013a03          	ld	s4,80(sp)
    80003824:	04813a83          	ld	s5,72(sp)
    80003828:	04013b03          	ld	s6,64(sp)
    8000382c:	08010113          	addi	sp,sp,128
    80003830:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003834:	00200793          	li	a5,2
    80003838:	1447b073          	csrc	sip,a5
            total++;
    8000383c:	00008797          	auipc	a5,0x8
    80003840:	16478793          	addi	a5,a5,356 # 8000b9a0 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003844:	0007b503          	ld	a0,0(a5)
    80003848:	00150513          	addi	a0,a0,1
    8000384c:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    80003850:	00000097          	auipc	ra,0x0
    80003854:	dec080e7          	jalr	-532(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
            PCB::timeSliceCounter++;
    80003858:	00008497          	auipc	s1,0x8
    8000385c:	0604b483          	ld	s1,96(s1) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003860:	0004b783          	ld	a5,0(s1)
    80003864:	00178793          	addi	a5,a5,1
    80003868:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000386c:	fffff097          	auipc	ra,0xfffff
    80003870:	4c0080e7          	jalr	1216(ra) # 80002d2c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003874:	00008797          	auipc	a5,0x8
    80003878:	0547b783          	ld	a5,84(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000387c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003880:	0107b783          	ld	a5,16(a5)
    80003884:	0004b703          	ld	a4,0(s1)
    80003888:	f8f762e3          	bltu	a4,a5,8000380c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000388c:	141027f3          	csrr	a5,sepc
    80003890:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80003894:	f9043483          	ld	s1,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003898:	100027f3          	csrr	a5,sstatus
    8000389c:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800038a0:	f8843903          	ld	s2,-120(s0)
                PCB::timeSliceCounter = 0;
    800038a4:	00008797          	auipc	a5,0x8
    800038a8:	0147b783          	ld	a5,20(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038ac:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	ee4080e7          	jalr	-284(ra) # 80002794 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800038b8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800038bc:	14149073          	csrw	sepc,s1
}
    800038c0:	f4dff06f          	j	8000380c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800038c4:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800038c8:	00651513          	slli	a0,a0,0x6
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	654080e7          	jalr	1620(ra) # 80003f20 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800038d4:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800038d8:	14191073          	csrw	sepc,s2
}
    800038dc:	f31ff06f          	j	8000380c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800038e0:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	664080e7          	jalr	1636(ra) # 80003f48 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800038ec:	00050513          	mv	a0,a0
    800038f0:	fe9ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800038f4:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800038f8:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    800038fc:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003900:	05000513          	li	a0,80
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	f20080e7          	jalr	-224(ra) # 80002824 <_ZN3PCBnwEm>
    8000390c:	00050993          	mv	s3,a0
    80003910:	00200713          	li	a4,2
    80003914:	00048693          	mv	a3,s1
    80003918:	000b0613          	mv	a2,s6
    8000391c:	000a8593          	mv	a1,s5
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	dcc080e7          	jalr	-564(ra) # 800026ec <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003928:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    8000392c:	00098663          	beqz	s3,80003938 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                    __asm__ volatile("li a0, 0");
    80003930:	00000513          	li	a0,0
    80003934:	fa5ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003938:	fff00513          	li	a0,-1
    8000393c:	f9dff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003940:	100027f3          	csrr	a5,sstatus
    80003944:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80003948:	fa043483          	ld	s1,-96(s0)
                PCB::timeSliceCounter = 0;
    8000394c:	00008797          	auipc	a5,0x8
    80003950:	f6c7b783          	ld	a5,-148(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003954:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	e3c080e7          	jalr	-452(ra) # 80002794 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003960:	10049073          	csrw	sstatus,s1
}
    80003964:	f75ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                Riscv::printString("Exiting thread...\n");
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	82850513          	addi	a0,a0,-2008 # 80009190 <CONSOLE_STATUS+0x180>
    80003970:	00000097          	auipc	ra,0x0
    80003974:	c5c080e7          	jalr	-932(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003978:	100027f3          	csrr	a5,sstatus
    8000397c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003980:	fa843483          	ld	s1,-88(s0)
                PCB::timeSliceCounter = 0;
    80003984:	00008797          	auipc	a5,0x8
    80003988:	f347b783          	ld	a5,-204(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000398c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003990:	00008797          	auipc	a5,0x8
    80003994:	f387b783          	ld	a5,-200(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003998:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    8000399c:	00300713          	li	a4,3
    800039a0:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	df0080e7          	jalr	-528(ra) # 80002794 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800039ac:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0");
    800039b0:	00000513          	li	a0,0
    800039b4:	f25ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800039b8:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800039bc:	100027f3          	csrr	a5,sstatus
    800039c0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800039c4:	fb043483          	ld	s1,-80(s0)
                PCB::timeSliceCounter = 0;
    800039c8:	00008797          	auipc	a5,0x8
    800039cc:	ef07b783          	ld	a5,-272(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039d0:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    800039d4:	00008797          	auipc	a5,0x8
    800039d8:	ef47b783          	ld	a5,-268(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800039dc:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800039e0:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	2b4080e7          	jalr	692(ra) # 80002c98 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	da8080e7          	jalr	-600(ra) # 80002794 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800039f4:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0x0");
    800039f8:	00000513          	li	a0,0
    800039fc:	eddff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003a00:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003a04:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003a08:	01800513          	li	a0,24
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	7b4080e7          	jalr	1972(ra) # 800041c0 <_ZN10KSemaphorenwEm>
    80003a14:	00050493          	mv	s1,a0
    80003a18:	000a059b          	sext.w	a1,s4
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	554080e7          	jalr	1364(ra) # 80003f70 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003a24:	0099b023          	sd	s1,0(s3)
                if(newSem == 0)
    80003a28:	00048663          	beqz	s1,80003a34 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
                        __asm__ volatile("li a0, 0");
    80003a2c:	00000513          	li	a0,0
    80003a30:	ea9ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003a34:	fff00513          	li	a0,-1
    80003a38:	ea1ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003a44:	fb843483          	ld	s1,-72(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003a48:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	5cc080e7          	jalr	1484(ra) # 80004018 <_ZN10KSemaphore4waitEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a54:	10049073          	csrw	sstatus,s1
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003a58:	00050513          	mv	a0,a0
    80003a5c:	e7dff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003a60:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	714080e7          	jalr	1812(ra) # 80004178 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003a6c:	00050513          	mv	a0,a0
    80003a70:	e69ff06f          	j	800038d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    80003a74:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003a78:	00098513          	mv	a0,s3
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	dd0080e7          	jalr	-560(ra) # 8000284c <_ZN3PCBdlEPv>
    80003a84:	00048513          	mv	a0,s1
    80003a88:	00009097          	auipc	ra,0x9
    80003a8c:	030080e7          	jalr	48(ra) # 8000cab8 <_Unwind_Resume>
    80003a90:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003a94:	00048513          	mv	a0,s1
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	750080e7          	jalr	1872(ra) # 800041e8 <_ZN10KSemaphoredlEPv>
    80003aa0:	00090513          	mv	a0,s2
    80003aa4:	00009097          	auipc	ra,0x9
    80003aa8:	014080e7          	jalr	20(ra) # 8000cab8 <_Unwind_Resume>

0000000080003aac <_ZN5Riscv10kernelMainEv>:
{
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	01213023          	sd	s2,0(sp)
    80003ac0:	02010413          	addi	s0,sp,32
    initSystem();
    80003ac4:	00000097          	auipc	ra,0x0
    80003ac8:	a44080e7          	jalr	-1468(ra) # 80003508 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003acc:	00001537          	lui	a0,0x1
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	450080e7          	jalr	1104(ra) # 80003f20 <_Z7kmallocm>
    80003ad8:	00050913          	mv	s2,a0
    80003adc:	05000513          	li	a0,80
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	d44080e7          	jalr	-700(ra) # 80002824 <_ZN3PCBnwEm>
    80003ae8:	00050493          	mv	s1,a0
    80003aec:	00200713          	li	a4,2
    80003af0:	00090693          	mv	a3,s2
    80003af4:	00000613          	li	a2,0
    80003af8:	00000597          	auipc	a1,0x0
    80003afc:	9e858593          	addi	a1,a1,-1560 # 800034e0 <_ZN5Riscv15userMainWrapperEPv>
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	bec080e7          	jalr	-1044(ra) # 800026ec <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003b08:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003b0c:	00300793          	li	a5,3
    80003b10:	00f70863          	beq	a4,a5,80003b20 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	810080e7          	jalr	-2032(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003b1c:	fedff06f          	j	80003b08 <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	a64080e7          	jalr	-1436(ra) # 80003584 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003b28:	00005517          	auipc	a0,0x5
    80003b2c:	68050513          	addi	a0,a0,1664 # 800091a8 <CONSOLE_STATUS+0x198>
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	a9c080e7          	jalr	-1380(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
}
    80003b38:	01813083          	ld	ra,24(sp)
    80003b3c:	01013403          	ld	s0,16(sp)
    80003b40:	00813483          	ld	s1,8(sp)
    80003b44:	00013903          	ld	s2,0(sp)
    80003b48:	02010113          	addi	sp,sp,32
    80003b4c:	00008067          	ret
    80003b50:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003b54:	00048513          	mv	a0,s1
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	cf4080e7          	jalr	-780(ra) # 8000284c <_ZN3PCBdlEPv>
    80003b60:	00090513          	mv	a0,s2
    80003b64:	00009097          	auipc	ra,0x9
    80003b68:	f54080e7          	jalr	-172(ra) # 8000cab8 <_Unwind_Resume>

0000000080003b6c <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003b6c:	ff010113          	addi	sp,sp,-16
    80003b70:	00813423          	sd	s0,8(sp)
    80003b74:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003b78:	00008717          	auipc	a4,0x8
    80003b7c:	e3072703          	lw	a4,-464(a4) # 8000b9a8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003b80:	00100793          	li	a5,1
    80003b84:	04f70263          	beq	a4,a5,80003bc8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003b88:	00008797          	auipc	a5,0x8
    80003b8c:	e2078793          	addi	a5,a5,-480 # 8000b9a8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003b90:	00100713          	li	a4,1
    80003b94:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003b98:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003b9c:	00008717          	auipc	a4,0x8
    80003ba0:	d0c73703          	ld	a4,-756(a4) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003ba4:	00073703          	ld	a4,0(a4)
    80003ba8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003bac:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003bb0:	00008797          	auipc	a5,0x8
    80003bb4:	d207b783          	ld	a5,-736(a5) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003bb8:	0007b783          	ld	a5,0(a5)
    80003bbc:	40e787b3          	sub	a5,a5,a4
    80003bc0:	ff178793          	addi	a5,a5,-15
    80003bc4:	00f73023          	sd	a5,0(a4)
}
    80003bc8:	00813403          	ld	s0,8(sp)
    80003bcc:	01010113          	addi	sp,sp,16
    80003bd0:	00008067          	ret

0000000080003bd4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003bd4:	fe010113          	addi	sp,sp,-32
    80003bd8:	00113c23          	sd	ra,24(sp)
    80003bdc:	00813823          	sd	s0,16(sp)
    80003be0:	00913423          	sd	s1,8(sp)
    80003be4:	01213023          	sd	s2,0(sp)
    80003be8:	02010413          	addi	s0,sp,32
    80003bec:	00050493          	mv	s1,a0
    80003bf0:	00058913          	mv	s2,a1

    initMemory();
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	f78080e7          	jalr	-136(ra) # 80003b6c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003bfc:	00008797          	auipc	a5,0x8
    80003c00:	db47b783          	ld	a5,-588(a5) # 8000b9b0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003c04:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003c08:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003c0c:	00000713          	li	a4,0
    while(curr != 0)
    80003c10:	00078c63          	beqz	a5,80003c28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003c14:	00f4e863          	bltu	s1,a5,80003c24 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003c18:	00078713          	mv	a4,a5
        curr = curr->next;
    80003c1c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003c20:	ff1ff06f          	j	80003c10 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003c24:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003c28:	02070063          	beqz	a4,80003c48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003c2c:	00973423          	sd	s1,8(a4)
}
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	00013903          	ld	s2,0(sp)
    80003c40:	02010113          	addi	sp,sp,32
    80003c44:	00008067          	ret
        headAllocated = newAllocated;
    80003c48:	00008797          	auipc	a5,0x8
    80003c4c:	d697b423          	sd	s1,-664(a5) # 8000b9b0 <_ZN15MemoryAllocator13headAllocatedE>
    80003c50:	fe1ff06f          	j	80003c30 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003c54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003c54:	fe010113          	addi	sp,sp,-32
    80003c58:	00113c23          	sd	ra,24(sp)
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00913423          	sd	s1,8(sp)
    80003c64:	01213023          	sd	s2,0(sp)
    80003c68:	02010413          	addi	s0,sp,32
    80003c6c:	00050913          	mv	s2,a0
    initMemory();
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	efc080e7          	jalr	-260(ra) # 80003b6c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003c78:	00008497          	auipc	s1,0x8
    80003c7c:	d404b483          	ld	s1,-704(s1) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003c80:	00000713          	li	a4,0
    while(curr != 0)
    80003c84:	0a048863          	beqz	s1,80003d34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003c88:	0004b783          	ld	a5,0(s1)
    80003c8c:	0127f863          	bgeu	a5,s2,80003c9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003c90:	00048713          	mv	a4,s1
        curr = curr->next;
    80003c94:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003c98:	fedff06f          	j	80003c84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003c9c:	01090693          	addi	a3,s2,16
    80003ca0:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003ca4:	00008617          	auipc	a2,0x8
    80003ca8:	c2c63603          	ld	a2,-980(a2) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003cac:	00063603          	ld	a2,0(a2)
    80003cb0:	04d66c63          	bltu	a2,a3,80003d08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003cb4:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003cb8:	01000613          	li	a2,16
    80003cbc:	02f67663          	bgeu	a2,a5,80003ce8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003cc0:	0084b603          	ld	a2,8(s1)
    80003cc4:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003cc8:	ff078793          	addi	a5,a5,-16
    80003ccc:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003cd0:	00070663          	beqz	a4,80003cdc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003cd4:	00d73423          	sd	a3,8(a4)
    80003cd8:	0380006f          	j	80003d10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003cdc:	00008797          	auipc	a5,0x8
    80003ce0:	ccd7be23          	sd	a3,-804(a5) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    80003ce4:	02c0006f          	j	80003d10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003ce8:	00070863          	beqz	a4,80003cf8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003cec:	0084b783          	ld	a5,8(s1)
    80003cf0:	00f73423          	sd	a5,8(a4)
    80003cf4:	01c0006f          	j	80003d10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003cf8:	0084b783          	ld	a5,8(s1)
    80003cfc:	00008717          	auipc	a4,0x8
    80003d00:	caf73e23          	sd	a5,-836(a4) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    80003d04:	00c0006f          	j	80003d10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003d08:	02070063          	beqz	a4,80003d28 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003d0c:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003d10:	00090593          	mv	a1,s2
    80003d14:	00048513          	mv	a0,s1
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	ebc080e7          	jalr	-324(ra) # 80003bd4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003d20:	01048513          	addi	a0,s1,16
            break;
    80003d24:	0140006f          	j	80003d38 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	c807b823          	sd	zero,-880(a5) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    80003d30:	fe1ff06f          	j	80003d10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003d34:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003d50:	ff010113          	addi	sp,sp,-16
    80003d54:	00113423          	sd	ra,8(sp)
    80003d58:	00813023          	sd	s0,0(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	ef4080e7          	jalr	-268(ra) # 80003c54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003d68:	00813083          	ld	ra,8(sp)
    80003d6c:	00013403          	ld	s0,0(sp)
    80003d70:	01010113          	addi	sp,sp,16
    80003d74:	00008067          	ret

0000000080003d78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003d78:	fe010113          	addi	sp,sp,-32
    80003d7c:	00113c23          	sd	ra,24(sp)
    80003d80:	00813823          	sd	s0,16(sp)
    80003d84:	00913423          	sd	s1,8(sp)
    80003d88:	01213023          	sd	s2,0(sp)
    80003d8c:	02010413          	addi	s0,sp,32
    80003d90:	00050493          	mv	s1,a0
    80003d94:	00058913          	mv	s2,a1
    initMemory();
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	dd4080e7          	jalr	-556(ra) # 80003b6c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003da0:	00008797          	auipc	a5,0x8
    80003da4:	c187b783          	ld	a5,-1000(a5) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003da8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003dac:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003db0:	00000713          	li	a4,0
    while(curr != 0)
    80003db4:	00078c63          	beqz	a5,80003dcc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003db8:	00f4e863          	bltu	s1,a5,80003dc8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003dbc:	00078713          	mv	a4,a5
        curr = curr->next;
    80003dc0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003dc4:	ff1ff06f          	j	80003db4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003dc8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003dcc:	04070663          	beqz	a4,80003e18 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003dd0:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003dd4:	0084b783          	ld	a5,8(s1)
    80003dd8:	00078a63          	beqz	a5,80003dec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003ddc:	0004b603          	ld	a2,0(s1)
    80003de0:	01060693          	addi	a3,a2,16
    80003de4:	00d486b3          	add	a3,s1,a3
    80003de8:	02d78e63          	beq	a5,a3,80003e24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003dec:	00070a63          	beqz	a4,80003e00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003df0:	00073683          	ld	a3,0(a4)
    80003df4:	01068793          	addi	a5,a3,16
    80003df8:	00f707b3          	add	a5,a4,a5
    80003dfc:	04978263          	beq	a5,s1,80003e40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00813483          	ld	s1,8(sp)
    80003e0c:	00013903          	ld	s2,0(sp)
    80003e10:	02010113          	addi	sp,sp,32
    80003e14:	00008067          	ret
        headFree = newSegment;
    80003e18:	00008797          	auipc	a5,0x8
    80003e1c:	ba97b023          	sd	s1,-1120(a5) # 8000b9b8 <_ZN15MemoryAllocator8headFreeE>
    80003e20:	fb5ff06f          	j	80003dd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003e24:	0007b683          	ld	a3,0(a5)
    80003e28:	00d60633          	add	a2,a2,a3
    80003e2c:	01060613          	addi	a2,a2,16
    80003e30:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003e34:	0087b783          	ld	a5,8(a5)
    80003e38:	00f4b423          	sd	a5,8(s1)
    80003e3c:	fb1ff06f          	j	80003dec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003e40:	0004b783          	ld	a5,0(s1)
    80003e44:	00f686b3          	add	a3,a3,a5
    80003e48:	01068693          	addi	a3,a3,16
    80003e4c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003e50:	0084b783          	ld	a5,8(s1)
    80003e54:	00f73423          	sd	a5,8(a4)
}
    80003e58:	fa9ff06f          	j	80003e00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003e5c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00113c23          	sd	ra,24(sp)
    80003e64:	00813823          	sd	s0,16(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	01213023          	sd	s2,0(sp)
    80003e70:	02010413          	addi	s0,sp,32
    80003e74:	00050913          	mv	s2,a0
    initMemory();
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	cf4080e7          	jalr	-780(ra) # 80003b6c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003e80:	00008497          	auipc	s1,0x8
    80003e84:	b304b483          	ld	s1,-1232(s1) # 8000b9b0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003e88:	00000713          	li	a4,0
    while(curr != 0)
    80003e8c:	02048a63          	beqz	s1,80003ec0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003e90:	01048793          	addi	a5,s1,16
    80003e94:	01278863          	beq	a5,s2,80003ea4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003e98:	00048713          	mv	a4,s1
        curr = curr->next;
    80003e9c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ea0:	fedff06f          	j	80003e8c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003ea4:	02070e63          	beqz	a4,80003ee0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ea8:	0084b783          	ld	a5,8(s1)
    80003eac:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003eb0:	0004b583          	ld	a1,0(s1)
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	ec0080e7          	jalr	-320(ra) # 80003d78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003ec0:	02048863          	beqz	s1,80003ef0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003ec4:	00000513          	li	a0,0
    else
        return 1;
}
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	00013903          	ld	s2,0(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret
                headAllocated = curr->next;
    80003ee0:	0084b783          	ld	a5,8(s1)
    80003ee4:	00008717          	auipc	a4,0x8
    80003ee8:	acf73623          	sd	a5,-1332(a4) # 8000b9b0 <_ZN15MemoryAllocator13headAllocatedE>
    80003eec:	fc5ff06f          	j	80003eb0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003ef0:	00100513          	li	a0,1
    80003ef4:	fd5ff06f          	j	80003ec8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003ef8 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003ef8:	ff010113          	addi	sp,sp,-16
    80003efc:	00113423          	sd	ra,8(sp)
    80003f00:	00813023          	sd	s0,0(sp)
    80003f04:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	f54080e7          	jalr	-172(ra) # 80003e5c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003f10:	00813083          	ld	ra,8(sp)
    80003f14:	00013403          	ld	s0,0(sp)
    80003f18:	01010113          	addi	sp,sp,16
    80003f1c:	00008067          	ret

0000000080003f20 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003f20:	ff010113          	addi	sp,sp,-16
    80003f24:	00113423          	sd	ra,8(sp)
    80003f28:	00813023          	sd	s0,0(sp)
    80003f2c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	e20080e7          	jalr	-480(ra) # 80003d50 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003f38:	00813083          	ld	ra,8(sp)
    80003f3c:	00013403          	ld	s0,0(sp)
    80003f40:	01010113          	addi	sp,sp,16
    80003f44:	00008067          	ret

0000000080003f48 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00113423          	sd	ra,8(sp)
    80003f50:	00813023          	sd	s0,0(sp)
    80003f54:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	fa0080e7          	jalr	-96(ra) # 80003ef8 <_ZN15MemoryAllocator8mem_freeEPv>
    80003f60:	00813083          	ld	ra,8(sp)
    80003f64:	00013403          	ld	s0,0(sp)
    80003f68:	01010113          	addi	sp,sp,16
    80003f6c:	00008067          	ret

0000000080003f70 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00813423          	sd	s0,8(sp)
    80003f78:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003f7c:	00b52a23          	sw	a1,20(a0)
    80003f80:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003f84:	00053423          	sd	zero,8(a0)
    80003f88:	00053023          	sd	zero,0(a0)
}
    80003f8c:	00813403          	ld	s0,8(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003f98:	ff010113          	addi	sp,sp,-16
    80003f9c:	00813423          	sd	s0,8(sp)
    80003fa0:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003fa4:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003fa8:	00053783          	ld	a5,0(a0)
    80003fac:	00078e63          	beqz	a5,80003fc8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003fb0:	00853783          	ld	a5,8(a0)
    80003fb4:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80003fb8:	00b53423          	sd	a1,8(a0)
    }
}
    80003fbc:	00813403          	ld	s0,8(sp)
    80003fc0:	01010113          	addi	sp,sp,16
    80003fc4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003fc8:	00b53423          	sd	a1,8(a0)
    80003fcc:	00b53023          	sd	a1,0(a0)
    80003fd0:	fedff06f          	j	80003fbc <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003fd4 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	00813023          	sd	s0,0(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003fe4:	00008797          	auipc	a5,0x8
    80003fe8:	8e47b783          	ld	a5,-1820(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003fec:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003ff0:	00200793          	li	a5,2
    80003ff4:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	fa0080e7          	jalr	-96(ra) # 80003f98 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	794080e7          	jalr	1940(ra) # 80002794 <_ZN3PCB8dispatchEv>
}
    80004008:	00813083          	ld	ra,8(sp)
    8000400c:	00013403          	ld	s0,0(sp)
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret

0000000080004018 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80004018:	01052783          	lw	a5,16(a0)
    8000401c:	fff7879b          	addiw	a5,a5,-1
    80004020:	00f52823          	sw	a5,16(a0)
    80004024:	02079713          	slli	a4,a5,0x20
    80004028:	00074663          	bltz	a4,80004034 <_ZN10KSemaphore4waitEv+0x1c>
}
    8000402c:	00000513          	li	a0,0
    80004030:	00008067          	ret
uint64 KSemaphore::wait() {
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	00813023          	sd	s0,0(sp)
    80004040:	01010413          	addi	s0,sp,16
        block();
    80004044:	00000097          	auipc	ra,0x0
    80004048:	f90080e7          	jalr	-112(ra) # 80003fd4 <_ZN10KSemaphore5blockEv>
}
    8000404c:	00000513          	li	a0,0
    80004050:	00813083          	ld	ra,8(sp)
    80004054:	00013403          	ld	s0,0(sp)
    80004058:	01010113          	addi	sp,sp,16
    8000405c:	00008067          	ret

0000000080004060 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000406c:	00053503          	ld	a0,0(a0)
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000407c:	ff010113          	addi	sp,sp,-16
    80004080:	00813423          	sd	s0,8(sp)
    80004084:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004088:	00053783          	ld	a5,0(a0)
    8000408c:	00078c63          	beqz	a5,800040a4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004090:	0087b703          	ld	a4,8(a5)
    80004094:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004098:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000409c:	00053783          	ld	a5,0(a0)
    800040a0:	00078863          	beqz	a5,800040b0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800040a4:	00813403          	ld	s0,8(sp)
    800040a8:	01010113          	addi	sp,sp,16
    800040ac:	00008067          	ret
        tailBlocked =0;
    800040b0:	00053423          	sd	zero,8(a0)
    800040b4:	ff1ff06f          	j	800040a4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800040b8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	01213023          	sd	s2,0(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800040d4:	00090513          	mv	a0,s2
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	f88080e7          	jalr	-120(ra) # 80004060 <_ZN10KSemaphore15getFirstBlockedEv>
    800040e0:	00050493          	mv	s1,a0
    800040e4:	02050063          	beqz	a0,80004104 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800040e8:	00090513          	mv	a0,s2
    800040ec:	00000097          	auipc	ra,0x0
    800040f0:	f90080e7          	jalr	-112(ra) # 8000407c <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800040f4:	00048513          	mv	a0,s1
    800040f8:	fffff097          	auipc	ra,0xfffff
    800040fc:	ee4080e7          	jalr	-284(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004100:	fd5ff06f          	j	800040d4 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004104:	01813083          	ld	ra,24(sp)
    80004108:	01013403          	ld	s0,16(sp)
    8000410c:	00813483          	ld	s1,8(sp)
    80004110:	00013903          	ld	s2,0(sp)
    80004114:	02010113          	addi	sp,sp,32
    80004118:	00008067          	ret

000000008000411c <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00113c23          	sd	ra,24(sp)
    80004124:	00813823          	sd	s0,16(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	01213023          	sd	s2,0(sp)
    80004130:	02010413          	addi	s0,sp,32
    80004134:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	f28080e7          	jalr	-216(ra) # 80004060 <_ZN10KSemaphore15getFirstBlockedEv>
    80004140:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004144:	00090513          	mv	a0,s2
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	f34080e7          	jalr	-204(ra) # 8000407c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004150:	00048863          	beqz	s1,80004160 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80004154:	00048513          	mv	a0,s1
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	e84080e7          	jalr	-380(ra) # 80002fdc <_ZN9Scheduler3putEP3PCB>
}
    80004160:	01813083          	ld	ra,24(sp)
    80004164:	01013403          	ld	s0,16(sp)
    80004168:	00813483          	ld	s1,8(sp)
    8000416c:	00013903          	ld	s2,0(sp)
    80004170:	02010113          	addi	sp,sp,32
    80004174:	00008067          	ret

0000000080004178 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004178:	01052783          	lw	a5,16(a0)
    8000417c:	0017879b          	addiw	a5,a5,1
    80004180:	0007871b          	sext.w	a4,a5
    80004184:	00f52823          	sw	a5,16(a0)
    80004188:	00e05663          	blez	a4,80004194 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000418c:	00000513          	li	a0,0
    80004190:	00008067          	ret
uint64 KSemaphore::signal() {
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	00813023          	sd	s0,0(sp)
    800041a0:	01010413          	addi	s0,sp,16
        unblock();
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	f78080e7          	jalr	-136(ra) # 8000411c <_ZN10KSemaphore7unblockEv>
}
    800041ac:	00000513          	li	a0,0
    800041b0:	00813083          	ld	ra,8(sp)
    800041b4:	00013403          	ld	s0,0(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00113423          	sd	ra,8(sp)
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	d50080e7          	jalr	-688(ra) # 80003f20 <_Z7kmallocm>
}
    800041d8:	00813083          	ld	ra,8(sp)
    800041dc:	00013403          	ld	s0,0(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00113423          	sd	ra,8(sp)
    800041f0:	00813023          	sd	s0,0(sp)
    800041f4:	01010413          	addi	s0,sp,16
    kfree(p);
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	d50080e7          	jalr	-688(ra) # 80003f48 <_Z5kfreePv>
}
    80004200:	00813083          	ld	ra,8(sp)
    80004204:	00013403          	ld	s0,0(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004210:	fd010113          	addi	sp,sp,-48
    80004214:	02113423          	sd	ra,40(sp)
    80004218:	02813023          	sd	s0,32(sp)
    8000421c:	00913c23          	sd	s1,24(sp)
    80004220:	01213823          	sd	s2,16(sp)
    80004224:	01313423          	sd	s3,8(sp)
    80004228:	03010413          	addi	s0,sp,48
    8000422c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    80004230:	00005517          	auipc	a0,0x5
    80004234:	f9050513          	addi	a0,a0,-112 # 800091c0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	394080e7          	jalr	916(ra) # 800035cc <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004240:	00000993          	li	s3,0
    while (!threadEnd) {
    80004244:	00007797          	auipc	a5,0x7
    80004248:	77c7a783          	lw	a5,1916(a5) # 8000b9c0 <threadEnd>
    8000424c:	0c079863          	bnez	a5,8000431c <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    80004250:	00092583          	lw	a1,0(s2)
    80004254:	0305859b          	addiw	a1,a1,48
    80004258:	00893503          	ld	a0,8(s2)
    8000425c:	00002097          	auipc	ra,0x2
    80004260:	c88080e7          	jalr	-888(ra) # 80005ee4 <_ZN6Buffer3putEi>
        i++;
    80004264:	0019849b          	addiw	s1,s3,1
    80004268:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    8000426c:	00007717          	auipc	a4,0x7
    80004270:	75470713          	addi	a4,a4,1876 # 8000b9c0 <threadEnd>
    80004274:	00472783          	lw	a5,4(a4)
    80004278:	0017879b          	addiw	a5,a5,1
    8000427c:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    80004280:	00005517          	auipc	a0,0x5
    80004284:	f5850513          	addi	a0,a0,-168 # 800091d8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	344080e7          	jalr	836(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    80004290:	00092503          	lw	a0,0(s2)
    80004294:	0305051b          	addiw	a0,a0,48
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	3a4080e7          	jalr	932(ra) # 8000363c <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    800042a0:	00092703          	lw	a4,0(s2)
    800042a4:	0027179b          	slliw	a5,a4,0x2
    800042a8:	00e787bb          	addw	a5,a5,a4
    800042ac:	0017979b          	slliw	a5,a5,0x1
    800042b0:	02f4e7bb          	remw	a5,s1,a5
    800042b4:	02078e63          	beqz	a5,800042f0 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    800042b8:	00007497          	auipc	s1,0x7
    800042bc:	70848493          	addi	s1,s1,1800 # 8000b9c0 <threadEnd>
    800042c0:	0044a503          	lw	a0,4(s1)
    800042c4:	0005051b          	sext.w	a0,a0
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	374080e7          	jalr	884(ra) # 8000363c <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    800042d0:	0044a783          	lw	a5,4(s1)
    800042d4:	0007879b          	sext.w	a5,a5
    800042d8:	00f00713          	li	a4,15
    800042dc:	f6e794e3          	bne	a5,a4,80004244 <_Z8producerPv+0x34>
            threadEnd = 1;
    800042e0:	00100793          	li	a5,1
    800042e4:	00007717          	auipc	a4,0x7
    800042e8:	6cf72e23          	sw	a5,1756(a4) # 8000b9c0 <threadEnd>
    800042ec:	f59ff06f          	j	80004244 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    800042f0:	00005517          	auipc	a0,0x5
    800042f4:	ef050513          	addi	a0,a0,-272 # 800091e0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	2d4080e7          	jalr	724(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	024080e7          	jalr	36(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    80004308:	00005517          	auipc	a0,0x5
    8000430c:	ee850513          	addi	a0,a0,-280 # 800091f0 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004310:	fffff097          	auipc	ra,0xfffff
    80004314:	2bc080e7          	jalr	700(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    80004318:	fa1ff06f          	j	800042b8 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    8000431c:	00005517          	auipc	a0,0x5
    80004320:	eec50513          	addi	a0,a0,-276 # 80009208 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004324:	fffff097          	auipc	ra,0xfffff
    80004328:	2a8080e7          	jalr	680(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    8000432c:	01093503          	ld	a0,16(s2)
    80004330:	ffffd097          	auipc	ra,0xffffd
    80004334:	0cc080e7          	jalr	204(ra) # 800013fc <sem_signal>
}
    80004338:	02813083          	ld	ra,40(sp)
    8000433c:	02013403          	ld	s0,32(sp)
    80004340:	01813483          	ld	s1,24(sp)
    80004344:	01013903          	ld	s2,16(sp)
    80004348:	00813983          	ld	s3,8(sp)
    8000434c:	03010113          	addi	sp,sp,48
    80004350:	00008067          	ret

0000000080004354 <_Z8consumerPv>:

void consumer(void *arg) {
    80004354:	fd010113          	addi	sp,sp,-48
    80004358:	02113423          	sd	ra,40(sp)
    8000435c:	02813023          	sd	s0,32(sp)
    80004360:	00913c23          	sd	s1,24(sp)
    80004364:	01213823          	sd	s2,16(sp)
    80004368:	01313423          	sd	s3,8(sp)
    8000436c:	01413023          	sd	s4,0(sp)
    80004370:	03010413          	addi	s0,sp,48
    80004374:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    80004378:	00005517          	auipc	a0,0x5
    8000437c:	ea850513          	addi	a0,a0,-344 # 80009220 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	24c080e7          	jalr	588(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    int i = 0;
    80004388:	00000a13          	li	s4,0
    8000438c:	0200006f          	j	800043ac <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	f94080e7          	jalr	-108(ra) # 80001324 <thread_dispatch>
    80004398:	0680006f          	j	80004400 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    8000439c:	00005517          	auipc	a0,0x5
    800043a0:	dec50513          	addi	a0,a0,-532 # 80009188 <CONSOLE_STATUS+0x178>
    800043a4:	fffff097          	auipc	ra,0xfffff
    800043a8:	228080e7          	jalr	552(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    800043ac:	00007797          	auipc	a5,0x7
    800043b0:	6147a783          	lw	a5,1556(a5) # 8000b9c0 <threadEnd>
    800043b4:	04079e63          	bnez	a5,80004410 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    800043b8:	0089b503          	ld	a0,8(s3)
    800043bc:	00002097          	auipc	ra,0x2
    800043c0:	bb8080e7          	jalr	-1096(ra) # 80005f74 <_ZN6Buffer3getEv>
    800043c4:	00050913          	mv	s2,a0
        i++;
    800043c8:	001a049b          	addiw	s1,s4,1
    800043cc:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	e6850513          	addi	a0,a0,-408 # 80009238 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    800043d8:	fffff097          	auipc	ra,0xfffff
    800043dc:	1f4080e7          	jalr	500(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    800043e0:	00090513          	mv	a0,s2
    800043e4:	fffff097          	auipc	ra,0xfffff
    800043e8:	258080e7          	jalr	600(ra) # 8000363c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    800043ec:	0009a703          	lw	a4,0(s3)
    800043f0:	0027179b          	slliw	a5,a4,0x2
    800043f4:	00e787bb          	addw	a5,a5,a4
    800043f8:	02f4e7bb          	remw	a5,s1,a5
    800043fc:	f8078ae3          	beqz	a5,80004390 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004400:	05000793          	li	a5,80
    80004404:	02f4e4bb          	remw	s1,s1,a5
    80004408:	fa0492e3          	bnez	s1,800043ac <_Z8consumerPv+0x58>
    8000440c:	f91ff06f          	j	8000439c <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004410:	00005517          	auipc	a0,0x5
    80004414:	e3050513          	addi	a0,a0,-464 # 80009240 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004418:	fffff097          	auipc	ra,0xfffff
    8000441c:	1b4080e7          	jalr	436(ra) # 800035cc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004420:	0109b503          	ld	a0,16(s3)
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	fd8080e7          	jalr	-40(ra) # 800013fc <sem_signal>
}
    8000442c:	02813083          	ld	ra,40(sp)
    80004430:	02013403          	ld	s0,32(sp)
    80004434:	01813483          	ld	s1,24(sp)
    80004438:	01013903          	ld	s2,16(sp)
    8000443c:	00813983          	ld	s3,8(sp)
    80004440:	00013a03          	ld	s4,0(sp)
    80004444:	03010113          	addi	sp,sp,48
    80004448:	00008067          	ret

000000008000444c <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    8000444c:	fe010113          	addi	sp,sp,-32
    80004450:	00113c23          	sd	ra,24(sp)
    80004454:	00813823          	sd	s0,16(sp)
    80004458:	00913423          	sd	s1,8(sp)
    8000445c:	01213023          	sd	s2,0(sp)
    80004460:	02010413          	addi	s0,sp,32
    80004464:	00050493          	mv	s1,a0
    int i = 0;
    80004468:	00000913          	li	s2,0
    8000446c:	00c0006f          	j	80004478 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	eb4080e7          	jalr	-332(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    80004478:	00004097          	auipc	ra,0x4
    8000447c:	c80080e7          	jalr	-896(ra) # 800080f8 <__getc>
    while ((key = getc()) != 0x1b) {
    80004480:	0005059b          	sext.w	a1,a0
    80004484:	01b00793          	li	a5,27
    80004488:	02f58a63          	beq	a1,a5,800044bc <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000448c:	0084b503          	ld	a0,8(s1)
    80004490:	00002097          	auipc	ra,0x2
    80004494:	a54080e7          	jalr	-1452(ra) # 80005ee4 <_ZN6Buffer3putEi>
        i++;
    80004498:	0019071b          	addiw	a4,s2,1
    8000449c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800044a0:	0004a683          	lw	a3,0(s1)
    800044a4:	0026979b          	slliw	a5,a3,0x2
    800044a8:	00d787bb          	addw	a5,a5,a3
    800044ac:	0017979b          	slliw	a5,a5,0x1
    800044b0:	02f767bb          	remw	a5,a4,a5
    800044b4:	fc0792e3          	bnez	a5,80004478 <_Z16producerKeyboardPv+0x2c>
    800044b8:	fb9ff06f          	j	80004470 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800044bc:	00100793          	li	a5,1
    800044c0:	00007717          	auipc	a4,0x7
    800044c4:	50f72023          	sw	a5,1280(a4) # 8000b9c0 <threadEnd>
    delete data->buffer;
    800044c8:	0084b903          	ld	s2,8(s1)
    800044cc:	00090e63          	beqz	s2,800044e8 <_Z16producerKeyboardPv+0x9c>
    800044d0:	00090513          	mv	a0,s2
    800044d4:	00002097          	auipc	ra,0x2
    800044d8:	964080e7          	jalr	-1692(ra) # 80005e38 <_ZN6BufferD1Ev>
    800044dc:	00090513          	mv	a0,s2
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	ca8080e7          	jalr	-856(ra) # 80003188 <_ZdlPv>
    sem_signal(data->wait);
    800044e8:	0104b503          	ld	a0,16(s1)
    800044ec:	ffffd097          	auipc	ra,0xffffd
    800044f0:	f10080e7          	jalr	-240(ra) # 800013fc <sem_signal>
}
    800044f4:	01813083          	ld	ra,24(sp)
    800044f8:	01013403          	ld	s0,16(sp)
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	00013903          	ld	s2,0(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret

000000008000450c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000450c:	f6010113          	addi	sp,sp,-160
    80004510:	08113c23          	sd	ra,152(sp)
    80004514:	08813823          	sd	s0,144(sp)
    80004518:	08913423          	sd	s1,136(sp)
    8000451c:	09213023          	sd	s2,128(sp)
    80004520:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	d3450513          	addi	a0,a0,-716 # 80009258 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	15c080e7          	jalr	348(ra) # 80005688 <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004534:	00005517          	auipc	a0,0x5
    80004538:	d4450513          	addi	a0,a0,-700 # 80009278 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	14c080e7          	jalr	332(ra) # 80005688 <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004544:	00005517          	auipc	a0,0x5
    80004548:	d5450513          	addi	a0,a0,-684 # 80009298 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	13c080e7          	jalr	316(ra) # 80005688 <_Z11printStringPKc>
    80004554:	00000613          	li	a2,0
    80004558:	00a00593          	li	a1,10
    8000455c:	00300513          	li	a0,3
    80004560:	00001097          	auipc	ra,0x1
    80004564:	2c0080e7          	jalr	704(ra) # 80005820 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004568:	00005517          	auipc	a0,0x5
    8000456c:	d4850513          	addi	a0,a0,-696 # 800092b0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004570:	00001097          	auipc	ra,0x1
    80004574:	118080e7          	jalr	280(ra) # 80005688 <_Z11printStringPKc>
    80004578:	00000613          	li	a2,0
    8000457c:	00a00593          	li	a1,10
    80004580:	00100513          	li	a0,1
    80004584:	00001097          	auipc	ra,0x1
    80004588:	29c080e7          	jalr	668(ra) # 80005820 <_Z8printIntiii>
    printString(".\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	c1450513          	addi	a0,a0,-1004 # 800091a0 <CONSOLE_STATUS+0x190>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	0f4080e7          	jalr	244(ra) # 80005688 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000459c:	03800513          	li	a0,56
    800045a0:	fffff097          	auipc	ra,0xfffff
    800045a4:	bc0080e7          	jalr	-1088(ra) # 80003160 <_Znwm>
    800045a8:	00050913          	mv	s2,a0
    800045ac:	00100593          	li	a1,1
    800045b0:	00002097          	auipc	ra,0x2
    800045b4:	800080e7          	jalr	-2048(ra) # 80005db0 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800045b8:	00000593          	li	a1,0
    800045bc:	00007517          	auipc	a0,0x7
    800045c0:	40c50513          	addi	a0,a0,1036 # 8000b9c8 <waitForAll>
    800045c4:	ffffd097          	auipc	ra,0xffffd
    800045c8:	da8080e7          	jalr	-600(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    800045cc:	00300793          	li	a5,3
    800045d0:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    800045d4:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    800045d8:	00007797          	auipc	a5,0x7
    800045dc:	3f07b783          	ld	a5,1008(a5) # 8000b9c8 <waitForAll>
    800045e0:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    800045e4:	fa840613          	addi	a2,s0,-88
    800045e8:	00000597          	auipc	a1,0x0
    800045ec:	d6c58593          	addi	a1,a1,-660 # 80004354 <_Z8consumerPv>
    800045f0:	fc040513          	addi	a0,s0,-64
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	cb0080e7          	jalr	-848(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800045fc:	00000493          	li	s1,0
    80004600:	00200793          	li	a5,2
    80004604:	0697c063          	blt	a5,s1,80004664 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004608:	00149613          	slli	a2,s1,0x1
    8000460c:	009607b3          	add	a5,a2,s1
    80004610:	00379793          	slli	a5,a5,0x3
    80004614:	fe040713          	addi	a4,s0,-32
    80004618:	00f707b3          	add	a5,a4,a5
    8000461c:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004620:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004624:	00007717          	auipc	a4,0x7
    80004628:	3a473703          	ld	a4,932(a4) # 8000b9c8 <waitForAll>
    8000462c:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004630:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004634:	00960633          	add	a2,a2,s1
    80004638:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000463c:	f6040713          	addi	a4,s0,-160
    80004640:	00c70633          	add	a2,a4,a2
    80004644:	00000597          	auipc	a1,0x0
    80004648:	bcc58593          	addi	a1,a1,-1076 # 80004210 <_Z8producerPv>
    8000464c:	fc840513          	addi	a0,s0,-56
    80004650:	00f50533          	add	a0,a0,a5
    80004654:	ffffd097          	auipc	ra,0xffffd
    80004658:	c50080e7          	jalr	-944(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000465c:	0014849b          	addiw	s1,s1,1
    80004660:	fa1ff06f          	j	80004600 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	cc0080e7          	jalr	-832(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    8000466c:	00000493          	li	s1,0
    80004670:	0180006f          	j	80004688 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    80004674:	00007517          	auipc	a0,0x7
    80004678:	35453503          	ld	a0,852(a0) # 8000b9c8 <waitForAll>
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	d54080e7          	jalr	-684(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004684:	0014849b          	addiw	s1,s1,1
    80004688:	00300793          	li	a5,3
    8000468c:	fe97d4e3          	bge	a5,s1,80004674 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004690:	00007517          	auipc	a0,0x7
    80004694:	33853503          	ld	a0,824(a0) # 8000b9c8 <waitForAll>
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	d0c080e7          	jalr	-756(ra) # 800013a4 <sem_close>
}
    800046a0:	09813083          	ld	ra,152(sp)
    800046a4:	09013403          	ld	s0,144(sp)
    800046a8:	08813483          	ld	s1,136(sp)
    800046ac:	08013903          	ld	s2,128(sp)
    800046b0:	0a010113          	addi	sp,sp,160
    800046b4:	00008067          	ret
    800046b8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800046bc:	00090513          	mv	a0,s2
    800046c0:	fffff097          	auipc	ra,0xfffff
    800046c4:	ac8080e7          	jalr	-1336(ra) # 80003188 <_ZdlPv>
    800046c8:	00048513          	mv	a0,s1
    800046cc:	00008097          	auipc	ra,0x8
    800046d0:	3ec080e7          	jalr	1004(ra) # 8000cab8 <_Unwind_Resume>

00000000800046d4 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800046d4:	fe010113          	addi	sp,sp,-32
    800046d8:	00113c23          	sd	ra,24(sp)
    800046dc:	00813823          	sd	s0,16(sp)
    800046e0:	00913423          	sd	s1,8(sp)
    800046e4:	01213023          	sd	s2,0(sp)
    800046e8:	02010413          	addi	s0,sp,32
    800046ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800046f0:	00100793          	li	a5,1
    800046f4:	02a7f863          	bgeu	a5,a0,80004724 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800046f8:	00a00793          	li	a5,10
    800046fc:	02f577b3          	remu	a5,a0,a5
    80004700:	02078e63          	beqz	a5,8000473c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004704:	fff48513          	addi	a0,s1,-1
    80004708:	00000097          	auipc	ra,0x0
    8000470c:	fcc080e7          	jalr	-52(ra) # 800046d4 <_ZL9fibonaccim>
    80004710:	00050913          	mv	s2,a0
    80004714:	ffe48513          	addi	a0,s1,-2
    80004718:	00000097          	auipc	ra,0x0
    8000471c:	fbc080e7          	jalr	-68(ra) # 800046d4 <_ZL9fibonaccim>
    80004720:	00a90533          	add	a0,s2,a0
}
    80004724:	01813083          	ld	ra,24(sp)
    80004728:	01013403          	ld	s0,16(sp)
    8000472c:	00813483          	ld	s1,8(sp)
    80004730:	00013903          	ld	s2,0(sp)
    80004734:	02010113          	addi	sp,sp,32
    80004738:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	be8080e7          	jalr	-1048(ra) # 80001324 <thread_dispatch>
    80004744:	fc1ff06f          	j	80004704 <_ZL9fibonaccim+0x30>

0000000080004748 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004748:	fe010113          	addi	sp,sp,-32
    8000474c:	00113c23          	sd	ra,24(sp)
    80004750:	00813823          	sd	s0,16(sp)
    80004754:	00913423          	sd	s1,8(sp)
    80004758:	01213023          	sd	s2,0(sp)
    8000475c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004760:	00000913          	li	s2,0
    80004764:	0380006f          	j	8000479c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	bbc080e7          	jalr	-1092(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004770:	00148493          	addi	s1,s1,1
    80004774:	000027b7          	lui	a5,0x2
    80004778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000477c:	0097ee63          	bltu	a5,s1,80004798 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004780:	00000713          	li	a4,0
    80004784:	000077b7          	lui	a5,0x7
    80004788:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000478c:	fce7eee3          	bltu	a5,a4,80004768 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004790:	00170713          	addi	a4,a4,1
    80004794:	ff1ff06f          	j	80004784 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004798:	00190913          	addi	s2,s2,1
    8000479c:	00900793          	li	a5,9
    800047a0:	0527e063          	bltu	a5,s2,800047e0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	b2450513          	addi	a0,a0,-1244 # 800092c8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	edc080e7          	jalr	-292(ra) # 80005688 <_Z11printStringPKc>
    800047b4:	00000613          	li	a2,0
    800047b8:	00a00593          	li	a1,10
    800047bc:	0009051b          	sext.w	a0,s2
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	060080e7          	jalr	96(ra) # 80005820 <_Z8printIntiii>
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	9c050513          	addi	a0,a0,-1600 # 80009188 <CONSOLE_STATUS+0x178>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	eb8080e7          	jalr	-328(ra) # 80005688 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047d8:	00000493          	li	s1,0
    800047dc:	f99ff06f          	j	80004774 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	af050513          	addi	a0,a0,-1296 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	ea0080e7          	jalr	-352(ra) # 80005688 <_Z11printStringPKc>
    finishedA = true;
    800047f0:	00100793          	li	a5,1
    800047f4:	00007717          	auipc	a4,0x7
    800047f8:	1cf70e23          	sb	a5,476(a4) # 8000b9d0 <_ZL9finishedA>
}
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	00013903          	ld	s2,0(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00008067          	ret

0000000080004814 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	00913423          	sd	s1,8(sp)
    80004824:	01213023          	sd	s2,0(sp)
    80004828:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000482c:	00000913          	li	s2,0
    80004830:	0380006f          	j	80004868 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	af0080e7          	jalr	-1296(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000483c:	00148493          	addi	s1,s1,1
    80004840:	000027b7          	lui	a5,0x2
    80004844:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004848:	0097ee63          	bltu	a5,s1,80004864 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000484c:	00000713          	li	a4,0
    80004850:	000077b7          	lui	a5,0x7
    80004854:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004858:	fce7eee3          	bltu	a5,a4,80004834 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000485c:	00170713          	addi	a4,a4,1
    80004860:	ff1ff06f          	j	80004850 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004864:	00190913          	addi	s2,s2,1
    80004868:	00f00793          	li	a5,15
    8000486c:	0527e063          	bltu	a5,s2,800048ac <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	a7050513          	addi	a0,a0,-1424 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	e10080e7          	jalr	-496(ra) # 80005688 <_Z11printStringPKc>
    80004880:	00000613          	li	a2,0
    80004884:	00a00593          	li	a1,10
    80004888:	0009051b          	sext.w	a0,s2
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	f94080e7          	jalr	-108(ra) # 80005820 <_Z8printIntiii>
    80004894:	00005517          	auipc	a0,0x5
    80004898:	8f450513          	addi	a0,a0,-1804 # 80009188 <CONSOLE_STATUS+0x178>
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	dec080e7          	jalr	-532(ra) # 80005688 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800048a4:	00000493          	li	s1,0
    800048a8:	f99ff06f          	j	80004840 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800048ac:	00005517          	auipc	a0,0x5
    800048b0:	a3c50513          	addi	a0,a0,-1476 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	dd4080e7          	jalr	-556(ra) # 80005688 <_Z11printStringPKc>
    finishedB = true;
    800048bc:	00100793          	li	a5,1
    800048c0:	00007717          	auipc	a4,0x7
    800048c4:	10f708a3          	sb	a5,273(a4) # 8000b9d1 <_ZL9finishedB>
    thread_dispatch();
    800048c8:	ffffd097          	auipc	ra,0xffffd
    800048cc:	a5c080e7          	jalr	-1444(ra) # 80001324 <thread_dispatch>
}
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00913423          	sd	s1,8(sp)
    800048f8:	01213023          	sd	s2,0(sp)
    800048fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004900:	00000493          	li	s1,0
    80004904:	0400006f          	j	80004944 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004908:	00005517          	auipc	a0,0x5
    8000490c:	9f050513          	addi	a0,a0,-1552 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	d78080e7          	jalr	-648(ra) # 80005688 <_Z11printStringPKc>
    80004918:	00000613          	li	a2,0
    8000491c:	00a00593          	li	a1,10
    80004920:	00048513          	mv	a0,s1
    80004924:	00001097          	auipc	ra,0x1
    80004928:	efc080e7          	jalr	-260(ra) # 80005820 <_Z8printIntiii>
    8000492c:	00005517          	auipc	a0,0x5
    80004930:	85c50513          	addi	a0,a0,-1956 # 80009188 <CONSOLE_STATUS+0x178>
    80004934:	00001097          	auipc	ra,0x1
    80004938:	d54080e7          	jalr	-684(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000493c:	0014849b          	addiw	s1,s1,1
    80004940:	0ff4f493          	andi	s1,s1,255
    80004944:	00200793          	li	a5,2
    80004948:	fc97f0e3          	bgeu	a5,s1,80004908 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000494c:	00005517          	auipc	a0,0x5
    80004950:	9b450513          	addi	a0,a0,-1612 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004954:	00001097          	auipc	ra,0x1
    80004958:	d34080e7          	jalr	-716(ra) # 80005688 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000495c:	00700313          	li	t1,7
    thread_dispatch();
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	9c4080e7          	jalr	-1596(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004968:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000496c:	00005517          	auipc	a0,0x5
    80004970:	9a450513          	addi	a0,a0,-1628 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004974:	00001097          	auipc	ra,0x1
    80004978:	d14080e7          	jalr	-748(ra) # 80005688 <_Z11printStringPKc>
    8000497c:	00000613          	li	a2,0
    80004980:	00a00593          	li	a1,10
    80004984:	0009051b          	sext.w	a0,s2
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	e98080e7          	jalr	-360(ra) # 80005820 <_Z8printIntiii>
    80004990:	00004517          	auipc	a0,0x4
    80004994:	7f850513          	addi	a0,a0,2040 # 80009188 <CONSOLE_STATUS+0x178>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	cf0080e7          	jalr	-784(ra) # 80005688 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800049a0:	00c00513          	li	a0,12
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	d30080e7          	jalr	-720(ra) # 800046d4 <_ZL9fibonaccim>
    800049ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800049b0:	00005517          	auipc	a0,0x5
    800049b4:	96850513          	addi	a0,a0,-1688 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	cd0080e7          	jalr	-816(ra) # 80005688 <_Z11printStringPKc>
    800049c0:	00000613          	li	a2,0
    800049c4:	00a00593          	li	a1,10
    800049c8:	0009051b          	sext.w	a0,s2
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	e54080e7          	jalr	-428(ra) # 80005820 <_Z8printIntiii>
    800049d4:	00004517          	auipc	a0,0x4
    800049d8:	7b450513          	addi	a0,a0,1972 # 80009188 <CONSOLE_STATUS+0x178>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	cac080e7          	jalr	-852(ra) # 80005688 <_Z11printStringPKc>
    800049e4:	0400006f          	j	80004a24 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	91050513          	addi	a0,a0,-1776 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	c98080e7          	jalr	-872(ra) # 80005688 <_Z11printStringPKc>
    800049f8:	00000613          	li	a2,0
    800049fc:	00a00593          	li	a1,10
    80004a00:	00048513          	mv	a0,s1
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	e1c080e7          	jalr	-484(ra) # 80005820 <_Z8printIntiii>
    80004a0c:	00004517          	auipc	a0,0x4
    80004a10:	77c50513          	addi	a0,a0,1916 # 80009188 <CONSOLE_STATUS+0x178>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	c74080e7          	jalr	-908(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a1c:	0014849b          	addiw	s1,s1,1
    80004a20:	0ff4f493          	andi	s1,s1,255
    80004a24:	00500793          	li	a5,5
    80004a28:	fc97f0e3          	bgeu	a5,s1,800049e8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	8a450513          	addi	a0,a0,-1884 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	c54080e7          	jalr	-940(ra) # 80005688 <_Z11printStringPKc>
    finishedC = true;
    80004a3c:	00100793          	li	a5,1
    80004a40:	00007717          	auipc	a4,0x7
    80004a44:	f8f70923          	sb	a5,-110(a4) # 8000b9d2 <_ZL9finishedC>
    thread_dispatch();
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	8dc080e7          	jalr	-1828(ra) # 80001324 <thread_dispatch>
}
    80004a50:	01813083          	ld	ra,24(sp)
    80004a54:	01013403          	ld	s0,16(sp)
    80004a58:	00813483          	ld	s1,8(sp)
    80004a5c:	00013903          	ld	s2,0(sp)
    80004a60:	02010113          	addi	sp,sp,32
    80004a64:	00008067          	ret

0000000080004a68 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004a68:	fe010113          	addi	sp,sp,-32
    80004a6c:	00113c23          	sd	ra,24(sp)
    80004a70:	00813823          	sd	s0,16(sp)
    80004a74:	00913423          	sd	s1,8(sp)
    80004a78:	01213023          	sd	s2,0(sp)
    80004a7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a80:	00a00493          	li	s1,10
    80004a84:	0400006f          	j	80004ac4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a88:	00005517          	auipc	a0,0x5
    80004a8c:	8a050513          	addi	a0,a0,-1888 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	bf8080e7          	jalr	-1032(ra) # 80005688 <_Z11printStringPKc>
    80004a98:	00000613          	li	a2,0
    80004a9c:	00a00593          	li	a1,10
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	d7c080e7          	jalr	-644(ra) # 80005820 <_Z8printIntiii>
    80004aac:	00004517          	auipc	a0,0x4
    80004ab0:	6dc50513          	addi	a0,a0,1756 # 80009188 <CONSOLE_STATUS+0x178>
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	bd4080e7          	jalr	-1068(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004abc:	0014849b          	addiw	s1,s1,1
    80004ac0:	0ff4f493          	andi	s1,s1,255
    80004ac4:	00c00793          	li	a5,12
    80004ac8:	fc97f0e3          	bgeu	a5,s1,80004a88 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004acc:	00005517          	auipc	a0,0x5
    80004ad0:	86450513          	addi	a0,a0,-1948 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	bb4080e7          	jalr	-1100(ra) # 80005688 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004adc:	00500313          	li	t1,5
    thread_dispatch();
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	844080e7          	jalr	-1980(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004ae8:	01000513          	li	a0,16
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	be8080e7          	jalr	-1048(ra) # 800046d4 <_ZL9fibonaccim>
    80004af4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004af8:	00005517          	auipc	a0,0x5
    80004afc:	84850513          	addi	a0,a0,-1976 # 80009340 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	b88080e7          	jalr	-1144(ra) # 80005688 <_Z11printStringPKc>
    80004b08:	00000613          	li	a2,0
    80004b0c:	00a00593          	li	a1,10
    80004b10:	0009051b          	sext.w	a0,s2
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	d0c080e7          	jalr	-756(ra) # 80005820 <_Z8printIntiii>
    80004b1c:	00004517          	auipc	a0,0x4
    80004b20:	66c50513          	addi	a0,a0,1644 # 80009188 <CONSOLE_STATUS+0x178>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	b64080e7          	jalr	-1180(ra) # 80005688 <_Z11printStringPKc>
    80004b2c:	0400006f          	j	80004b6c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b30:	00004517          	auipc	a0,0x4
    80004b34:	7f850513          	addi	a0,a0,2040 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	b50080e7          	jalr	-1200(ra) # 80005688 <_Z11printStringPKc>
    80004b40:	00000613          	li	a2,0
    80004b44:	00a00593          	li	a1,10
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	cd4080e7          	jalr	-812(ra) # 80005820 <_Z8printIntiii>
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	63450513          	addi	a0,a0,1588 # 80009188 <CONSOLE_STATUS+0x178>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	b2c080e7          	jalr	-1236(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b64:	0014849b          	addiw	s1,s1,1
    80004b68:	0ff4f493          	andi	s1,s1,255
    80004b6c:	00f00793          	li	a5,15
    80004b70:	fc97f0e3          	bgeu	a5,s1,80004b30 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004b74:	00004517          	auipc	a0,0x4
    80004b78:	7dc50513          	addi	a0,a0,2012 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	b0c080e7          	jalr	-1268(ra) # 80005688 <_Z11printStringPKc>
    finishedD = true;
    80004b84:	00100793          	li	a5,1
    80004b88:	00007717          	auipc	a4,0x7
    80004b8c:	e4f705a3          	sb	a5,-437(a4) # 8000b9d3 <_ZL9finishedD>
    thread_dispatch();
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	794080e7          	jalr	1940(ra) # 80001324 <thread_dispatch>
}
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	01013403          	ld	s0,16(sp)
    80004ba0:	00813483          	ld	s1,8(sp)
    80004ba4:	00013903          	ld	s2,0(sp)
    80004ba8:	02010113          	addi	sp,sp,32
    80004bac:	00008067          	ret

0000000080004bb0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004bb0:	fc010113          	addi	sp,sp,-64
    80004bb4:	02113c23          	sd	ra,56(sp)
    80004bb8:	02813823          	sd	s0,48(sp)
    80004bbc:	02913423          	sd	s1,40(sp)
    80004bc0:	03213023          	sd	s2,32(sp)
    80004bc4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004bc8:	02000513          	li	a0,32
    80004bcc:	ffffe097          	auipc	ra,0xffffe
    80004bd0:	594080e7          	jalr	1428(ra) # 80003160 <_Znwm>
    80004bd4:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004bd8:	ffffe097          	auipc	ra,0xffffe
    80004bdc:	754080e7          	jalr	1876(ra) # 8000332c <_ZN6ThreadC1Ev>
    80004be0:	00007797          	auipc	a5,0x7
    80004be4:	c3078793          	addi	a5,a5,-976 # 8000b810 <_ZTV7WorkerA+0x10>
    80004be8:	00f4b023          	sd	a5,0(s1)
    80004bec:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004bf0:	00004517          	auipc	a0,0x4
    80004bf4:	77050513          	addi	a0,a0,1904 # 80009360 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	a90080e7          	jalr	-1392(ra) # 80005688 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004c00:	02000513          	li	a0,32
    80004c04:	ffffe097          	auipc	ra,0xffffe
    80004c08:	55c080e7          	jalr	1372(ra) # 80003160 <_Znwm>
    80004c0c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004c10:	ffffe097          	auipc	ra,0xffffe
    80004c14:	71c080e7          	jalr	1820(ra) # 8000332c <_ZN6ThreadC1Ev>
    80004c18:	00007797          	auipc	a5,0x7
    80004c1c:	c2078793          	addi	a5,a5,-992 # 8000b838 <_ZTV7WorkerB+0x10>
    80004c20:	00f4b023          	sd	a5,0(s1)
    80004c24:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004c28:	00004517          	auipc	a0,0x4
    80004c2c:	75050513          	addi	a0,a0,1872 # 80009378 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	a58080e7          	jalr	-1448(ra) # 80005688 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004c38:	02000513          	li	a0,32
    80004c3c:	ffffe097          	auipc	ra,0xffffe
    80004c40:	524080e7          	jalr	1316(ra) # 80003160 <_Znwm>
    80004c44:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004c48:	ffffe097          	auipc	ra,0xffffe
    80004c4c:	6e4080e7          	jalr	1764(ra) # 8000332c <_ZN6ThreadC1Ev>
    80004c50:	00007797          	auipc	a5,0x7
    80004c54:	c1078793          	addi	a5,a5,-1008 # 8000b860 <_ZTV7WorkerC+0x10>
    80004c58:	00f4b023          	sd	a5,0(s1)
    80004c5c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004c60:	00004517          	auipc	a0,0x4
    80004c64:	73050513          	addi	a0,a0,1840 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004c68:	00001097          	auipc	ra,0x1
    80004c6c:	a20080e7          	jalr	-1504(ra) # 80005688 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004c70:	02000513          	li	a0,32
    80004c74:	ffffe097          	auipc	ra,0xffffe
    80004c78:	4ec080e7          	jalr	1260(ra) # 80003160 <_Znwm>
    80004c7c:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	6ac080e7          	jalr	1708(ra) # 8000332c <_ZN6ThreadC1Ev>
    80004c88:	00007797          	auipc	a5,0x7
    80004c8c:	c0078793          	addi	a5,a5,-1024 # 8000b888 <_ZTV7WorkerD+0x10>
    80004c90:	00f4b023          	sd	a5,0(s1)
    80004c94:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	71050513          	addi	a0,a0,1808 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	9e8080e7          	jalr	-1560(ra) # 80005688 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004ca8:	00000493          	li	s1,0
    80004cac:	00300793          	li	a5,3
    80004cb0:	0297c663          	blt	a5,s1,80004cdc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004cb4:	00349793          	slli	a5,s1,0x3
    80004cb8:	fe040713          	addi	a4,s0,-32
    80004cbc:	00f707b3          	add	a5,a4,a5
    80004cc0:	fe07b503          	ld	a0,-32(a5)
    80004cc4:	ffffe097          	auipc	ra,0xffffe
    80004cc8:	56c080e7          	jalr	1388(ra) # 80003230 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004ccc:	0014849b          	addiw	s1,s1,1
    80004cd0:	fddff06f          	j	80004cac <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004cd4:	ffffe097          	auipc	ra,0xffffe
    80004cd8:	5a0080e7          	jalr	1440(ra) # 80003274 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004cdc:	00007797          	auipc	a5,0x7
    80004ce0:	cf47c783          	lbu	a5,-780(a5) # 8000b9d0 <_ZL9finishedA>
    80004ce4:	fe0788e3          	beqz	a5,80004cd4 <_Z20Threads_CPP_API_testv+0x124>
    80004ce8:	00007797          	auipc	a5,0x7
    80004cec:	ce97c783          	lbu	a5,-791(a5) # 8000b9d1 <_ZL9finishedB>
    80004cf0:	fe0782e3          	beqz	a5,80004cd4 <_Z20Threads_CPP_API_testv+0x124>
    80004cf4:	00007797          	auipc	a5,0x7
    80004cf8:	cde7c783          	lbu	a5,-802(a5) # 8000b9d2 <_ZL9finishedC>
    80004cfc:	fc078ce3          	beqz	a5,80004cd4 <_Z20Threads_CPP_API_testv+0x124>
    80004d00:	00007797          	auipc	a5,0x7
    80004d04:	cd37c783          	lbu	a5,-813(a5) # 8000b9d3 <_ZL9finishedD>
    80004d08:	fc0786e3          	beqz	a5,80004cd4 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004d0c:	fc040493          	addi	s1,s0,-64
    80004d10:	0080006f          	j	80004d18 <_Z20Threads_CPP_API_testv+0x168>
    80004d14:	00848493          	addi	s1,s1,8
    80004d18:	fe040793          	addi	a5,s0,-32
    80004d1c:	08f48663          	beq	s1,a5,80004da8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004d20:	0004b503          	ld	a0,0(s1)
    80004d24:	fe0508e3          	beqz	a0,80004d14 <_Z20Threads_CPP_API_testv+0x164>
    80004d28:	00053783          	ld	a5,0(a0)
    80004d2c:	0087b783          	ld	a5,8(a5)
    80004d30:	000780e7          	jalr	a5
    80004d34:	fe1ff06f          	j	80004d14 <_Z20Threads_CPP_API_testv+0x164>
    80004d38:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	ffffe097          	auipc	ra,0xffffe
    80004d44:	448080e7          	jalr	1096(ra) # 80003188 <_ZdlPv>
    80004d48:	00090513          	mv	a0,s2
    80004d4c:	00008097          	auipc	ra,0x8
    80004d50:	d6c080e7          	jalr	-660(ra) # 8000cab8 <_Unwind_Resume>
    80004d54:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004d58:	00048513          	mv	a0,s1
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	42c080e7          	jalr	1068(ra) # 80003188 <_ZdlPv>
    80004d64:	00090513          	mv	a0,s2
    80004d68:	00008097          	auipc	ra,0x8
    80004d6c:	d50080e7          	jalr	-688(ra) # 8000cab8 <_Unwind_Resume>
    80004d70:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004d74:	00048513          	mv	a0,s1
    80004d78:	ffffe097          	auipc	ra,0xffffe
    80004d7c:	410080e7          	jalr	1040(ra) # 80003188 <_ZdlPv>
    80004d80:	00090513          	mv	a0,s2
    80004d84:	00008097          	auipc	ra,0x8
    80004d88:	d34080e7          	jalr	-716(ra) # 8000cab8 <_Unwind_Resume>
    80004d8c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004d90:	00048513          	mv	a0,s1
    80004d94:	ffffe097          	auipc	ra,0xffffe
    80004d98:	3f4080e7          	jalr	1012(ra) # 80003188 <_ZdlPv>
    80004d9c:	00090513          	mv	a0,s2
    80004da0:	00008097          	auipc	ra,0x8
    80004da4:	d18080e7          	jalr	-744(ra) # 8000cab8 <_Unwind_Resume>
    80004da8:	03813083          	ld	ra,56(sp)
    80004dac:	03013403          	ld	s0,48(sp)
    80004db0:	02813483          	ld	s1,40(sp)
    80004db4:	02013903          	ld	s2,32(sp)
    80004db8:	04010113          	addi	sp,sp,64
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004dc0:	ff010113          	addi	sp,sp,-16
    80004dc4:	00113423          	sd	ra,8(sp)
    80004dc8:	00813023          	sd	s0,0(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    80004dd0:	00007797          	auipc	a5,0x7
    80004dd4:	a4078793          	addi	a5,a5,-1472 # 8000b810 <_ZTV7WorkerA+0x10>
    80004dd8:	00f53023          	sd	a5,0(a0)
    80004ddc:	ffffe097          	auipc	ra,0xffffe
    80004de0:	2c8080e7          	jalr	712(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004de4:	00813083          	ld	ra,8(sp)
    80004de8:	00013403          	ld	s0,0(sp)
    80004dec:	01010113          	addi	sp,sp,16
    80004df0:	00008067          	ret

0000000080004df4 <_ZN7WorkerAD0Ev>:
    80004df4:	fe010113          	addi	sp,sp,-32
    80004df8:	00113c23          	sd	ra,24(sp)
    80004dfc:	00813823          	sd	s0,16(sp)
    80004e00:	00913423          	sd	s1,8(sp)
    80004e04:	02010413          	addi	s0,sp,32
    80004e08:	00050493          	mv	s1,a0
    80004e0c:	00007797          	auipc	a5,0x7
    80004e10:	a0478793          	addi	a5,a5,-1532 # 8000b810 <_ZTV7WorkerA+0x10>
    80004e14:	00f53023          	sd	a5,0(a0)
    80004e18:	ffffe097          	auipc	ra,0xffffe
    80004e1c:	28c080e7          	jalr	652(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004e20:	00048513          	mv	a0,s1
    80004e24:	ffffe097          	auipc	ra,0xffffe
    80004e28:	364080e7          	jalr	868(ra) # 80003188 <_ZdlPv>
    80004e2c:	01813083          	ld	ra,24(sp)
    80004e30:	01013403          	ld	s0,16(sp)
    80004e34:	00813483          	ld	s1,8(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret

0000000080004e40 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004e40:	ff010113          	addi	sp,sp,-16
    80004e44:	00113423          	sd	ra,8(sp)
    80004e48:	00813023          	sd	s0,0(sp)
    80004e4c:	01010413          	addi	s0,sp,16
    80004e50:	00007797          	auipc	a5,0x7
    80004e54:	9e878793          	addi	a5,a5,-1560 # 8000b838 <_ZTV7WorkerB+0x10>
    80004e58:	00f53023          	sd	a5,0(a0)
    80004e5c:	ffffe097          	auipc	ra,0xffffe
    80004e60:	248080e7          	jalr	584(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004e64:	00813083          	ld	ra,8(sp)
    80004e68:	00013403          	ld	s0,0(sp)
    80004e6c:	01010113          	addi	sp,sp,16
    80004e70:	00008067          	ret

0000000080004e74 <_ZN7WorkerBD0Ev>:
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	02010413          	addi	s0,sp,32
    80004e88:	00050493          	mv	s1,a0
    80004e8c:	00007797          	auipc	a5,0x7
    80004e90:	9ac78793          	addi	a5,a5,-1620 # 8000b838 <_ZTV7WorkerB+0x10>
    80004e94:	00f53023          	sd	a5,0(a0)
    80004e98:	ffffe097          	auipc	ra,0xffffe
    80004e9c:	20c080e7          	jalr	524(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004ea0:	00048513          	mv	a0,s1
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	2e4080e7          	jalr	740(ra) # 80003188 <_ZdlPv>
    80004eac:	01813083          	ld	ra,24(sp)
    80004eb0:	01013403          	ld	s0,16(sp)
    80004eb4:	00813483          	ld	s1,8(sp)
    80004eb8:	02010113          	addi	sp,sp,32
    80004ebc:	00008067          	ret

0000000080004ec0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004ec0:	ff010113          	addi	sp,sp,-16
    80004ec4:	00113423          	sd	ra,8(sp)
    80004ec8:	00813023          	sd	s0,0(sp)
    80004ecc:	01010413          	addi	s0,sp,16
    80004ed0:	00007797          	auipc	a5,0x7
    80004ed4:	99078793          	addi	a5,a5,-1648 # 8000b860 <_ZTV7WorkerC+0x10>
    80004ed8:	00f53023          	sd	a5,0(a0)
    80004edc:	ffffe097          	auipc	ra,0xffffe
    80004ee0:	1c8080e7          	jalr	456(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004ee4:	00813083          	ld	ra,8(sp)
    80004ee8:	00013403          	ld	s0,0(sp)
    80004eec:	01010113          	addi	sp,sp,16
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZN7WorkerCD0Ev>:
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	02010413          	addi	s0,sp,32
    80004f08:	00050493          	mv	s1,a0
    80004f0c:	00007797          	auipc	a5,0x7
    80004f10:	95478793          	addi	a5,a5,-1708 # 8000b860 <_ZTV7WorkerC+0x10>
    80004f14:	00f53023          	sd	a5,0(a0)
    80004f18:	ffffe097          	auipc	ra,0xffffe
    80004f1c:	18c080e7          	jalr	396(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004f20:	00048513          	mv	a0,s1
    80004f24:	ffffe097          	auipc	ra,0xffffe
    80004f28:	264080e7          	jalr	612(ra) # 80003188 <_ZdlPv>
    80004f2c:	01813083          	ld	ra,24(sp)
    80004f30:	01013403          	ld	s0,16(sp)
    80004f34:	00813483          	ld	s1,8(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret

0000000080004f40 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004f40:	ff010113          	addi	sp,sp,-16
    80004f44:	00113423          	sd	ra,8(sp)
    80004f48:	00813023          	sd	s0,0(sp)
    80004f4c:	01010413          	addi	s0,sp,16
    80004f50:	00007797          	auipc	a5,0x7
    80004f54:	93878793          	addi	a5,a5,-1736 # 8000b888 <_ZTV7WorkerD+0x10>
    80004f58:	00f53023          	sd	a5,0(a0)
    80004f5c:	ffffe097          	auipc	ra,0xffffe
    80004f60:	148080e7          	jalr	328(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004f64:	00813083          	ld	ra,8(sp)
    80004f68:	00013403          	ld	s0,0(sp)
    80004f6c:	01010113          	addi	sp,sp,16
    80004f70:	00008067          	ret

0000000080004f74 <_ZN7WorkerDD0Ev>:
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00113c23          	sd	ra,24(sp)
    80004f7c:	00813823          	sd	s0,16(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	02010413          	addi	s0,sp,32
    80004f88:	00050493          	mv	s1,a0
    80004f8c:	00007797          	auipc	a5,0x7
    80004f90:	8fc78793          	addi	a5,a5,-1796 # 8000b888 <_ZTV7WorkerD+0x10>
    80004f94:	00f53023          	sd	a5,0(a0)
    80004f98:	ffffe097          	auipc	ra,0xffffe
    80004f9c:	10c080e7          	jalr	268(ra) # 800030a4 <_ZN6ThreadD1Ev>
    80004fa0:	00048513          	mv	a0,s1
    80004fa4:	ffffe097          	auipc	ra,0xffffe
    80004fa8:	1e4080e7          	jalr	484(ra) # 80003188 <_ZdlPv>
    80004fac:	01813083          	ld	ra,24(sp)
    80004fb0:	01013403          	ld	s0,16(sp)
    80004fb4:	00813483          	ld	s1,8(sp)
    80004fb8:	02010113          	addi	sp,sp,32
    80004fbc:	00008067          	ret

0000000080004fc0 <_ZN7WorkerA3runEv>:
    void run() override {
    80004fc0:	ff010113          	addi	sp,sp,-16
    80004fc4:	00113423          	sd	ra,8(sp)
    80004fc8:	00813023          	sd	s0,0(sp)
    80004fcc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004fd0:	00000593          	li	a1,0
    80004fd4:	fffff097          	auipc	ra,0xfffff
    80004fd8:	774080e7          	jalr	1908(ra) # 80004748 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004fdc:	00813083          	ld	ra,8(sp)
    80004fe0:	00013403          	ld	s0,0(sp)
    80004fe4:	01010113          	addi	sp,sp,16
    80004fe8:	00008067          	ret

0000000080004fec <_ZN7WorkerB3runEv>:
    void run() override {
    80004fec:	ff010113          	addi	sp,sp,-16
    80004ff0:	00113423          	sd	ra,8(sp)
    80004ff4:	00813023          	sd	s0,0(sp)
    80004ff8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004ffc:	00000593          	li	a1,0
    80005000:	00000097          	auipc	ra,0x0
    80005004:	814080e7          	jalr	-2028(ra) # 80004814 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005008:	00813083          	ld	ra,8(sp)
    8000500c:	00013403          	ld	s0,0(sp)
    80005010:	01010113          	addi	sp,sp,16
    80005014:	00008067          	ret

0000000080005018 <_ZN7WorkerC3runEv>:
    void run() override {
    80005018:	ff010113          	addi	sp,sp,-16
    8000501c:	00113423          	sd	ra,8(sp)
    80005020:	00813023          	sd	s0,0(sp)
    80005024:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005028:	00000593          	li	a1,0
    8000502c:	00000097          	auipc	ra,0x0
    80005030:	8bc080e7          	jalr	-1860(ra) # 800048e8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005034:	00813083          	ld	ra,8(sp)
    80005038:	00013403          	ld	s0,0(sp)
    8000503c:	01010113          	addi	sp,sp,16
    80005040:	00008067          	ret

0000000080005044 <_ZN7WorkerD3runEv>:

    void run() override {
    80005044:	ff010113          	addi	sp,sp,-16
    80005048:	00113423          	sd	ra,8(sp)
    8000504c:	00813023          	sd	s0,0(sp)
    80005050:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005054:	00000593          	li	a1,0
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	a10080e7          	jalr	-1520(ra) # 80004a68 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005060:	00813083          	ld	ra,8(sp)
    80005064:	00013403          	ld	s0,0(sp)
    80005068:	01010113          	addi	sp,sp,16
    8000506c:	00008067          	ret

0000000080005070 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00813823          	sd	s0,16(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	01213023          	sd	s2,0(sp)
    80005084:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005088:	00000913          	li	s2,0
    8000508c:	0340006f          	j	800050c0 <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	294080e7          	jalr	660(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80005098:	00148493          	addi	s1,s1,1
    8000509c:	1f300793          	li	a5,499
    800050a0:	0097ee63          	bltu	a5,s1,800050bc <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    800050a4:	00000713          	li	a4,0
    800050a8:	000017b7          	lui	a5,0x1
    800050ac:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    800050b0:	fee7e0e3          	bltu	a5,a4,80005090 <_Z11workerBodyAPv+0x20>
    800050b4:	00170713          	addi	a4,a4,1
    800050b8:	ff1ff06f          	j	800050a8 <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    800050bc:	00190913          	addi	s2,s2,1
    800050c0:	00900793          	li	a5,9
    800050c4:	0527e063          	bltu	a5,s2,80005104 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	20050513          	addi	a0,a0,512 # 800092c8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800050d0:	00000097          	auipc	ra,0x0
    800050d4:	5b8080e7          	jalr	1464(ra) # 80005688 <_Z11printStringPKc>
    800050d8:	00000613          	li	a2,0
    800050dc:	00a00593          	li	a1,10
    800050e0:	0009051b          	sext.w	a0,s2
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	73c080e7          	jalr	1852(ra) # 80005820 <_Z8printIntiii>
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	09c50513          	addi	a0,a0,156 # 80009188 <CONSOLE_STATUS+0x178>
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	594080e7          	jalr	1428(ra) # 80005688 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    800050fc:	00000493          	li	s1,0
    80005100:	f9dff06f          	j	8000509c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	1cc50513          	addi	a0,a0,460 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	57c080e7          	jalr	1404(ra) # 80005688 <_Z11printStringPKc>
    finishedA = true;
    80005114:	00100793          	li	a5,1
    80005118:	00007717          	auipc	a4,0x7
    8000511c:	8af70e23          	sb	a5,-1860(a4) # 8000b9d4 <_ZL9finishedA>
}
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	00013903          	ld	s2,0(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret

0000000080005138 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005138:	fe010113          	addi	sp,sp,-32
    8000513c:	00113c23          	sd	ra,24(sp)
    80005140:	00813823          	sd	s0,16(sp)
    80005144:	00913423          	sd	s1,8(sp)
    80005148:	01213023          	sd	s2,0(sp)
    8000514c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005150:	00000913          	li	s2,0
    80005154:	0340006f          	j	80005188 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	1cc080e7          	jalr	460(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80005160:	00148493          	addi	s1,s1,1
    80005164:	1f300793          	li	a5,499
    80005168:	0097ee63          	bltu	a5,s1,80005184 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    8000516c:	00000713          	li	a4,0
    80005170:	000017b7          	lui	a5,0x1
    80005174:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80005178:	fee7e0e3          	bltu	a5,a4,80005158 <_Z11workerBodyBPv+0x20>
    8000517c:	00170713          	addi	a4,a4,1
    80005180:	ff1ff06f          	j	80005170 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80005184:	00190913          	addi	s2,s2,1
    80005188:	00f00793          	li	a5,15
    8000518c:	0527e063          	bltu	a5,s2,800051cc <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80005190:	00004517          	auipc	a0,0x4
    80005194:	15050513          	addi	a0,a0,336 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005198:	00000097          	auipc	ra,0x0
    8000519c:	4f0080e7          	jalr	1264(ra) # 80005688 <_Z11printStringPKc>
    800051a0:	00000613          	li	a2,0
    800051a4:	00a00593          	li	a1,10
    800051a8:	0009051b          	sext.w	a0,s2
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	674080e7          	jalr	1652(ra) # 80005820 <_Z8printIntiii>
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	fd450513          	addi	a0,a0,-44 # 80009188 <CONSOLE_STATUS+0x178>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	4cc080e7          	jalr	1228(ra) # 80005688 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    800051c4:	00000493          	li	s1,0
    800051c8:	f9dff06f          	j	80005164 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    800051cc:	00004517          	auipc	a0,0x4
    800051d0:	11c50513          	addi	a0,a0,284 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	4b4080e7          	jalr	1204(ra) # 80005688 <_Z11printStringPKc>
    finishedB = true;
    800051dc:	00100793          	li	a5,1
    800051e0:	00006717          	auipc	a4,0x6
    800051e4:	7ef70aa3          	sb	a5,2037(a4) # 8000b9d5 <_ZL9finishedB>
    thread_dispatch();
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	13c080e7          	jalr	316(ra) # 80001324 <thread_dispatch>
}
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	00813483          	ld	s1,8(sp)
    800051fc:	00013903          	ld	s2,0(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80005208:	fe010113          	addi	sp,sp,-32
    8000520c:	00113c23          	sd	ra,24(sp)
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00913423          	sd	s1,8(sp)
    80005218:	01213023          	sd	s2,0(sp)
    8000521c:	02010413          	addi	s0,sp,32
    80005220:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005224:	00100793          	li	a5,1
    80005228:	02a7f863          	bgeu	a5,a0,80005258 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000522c:	00a00793          	li	a5,10
    80005230:	02f577b3          	remu	a5,a0,a5
    80005234:	02078e63          	beqz	a5,80005270 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005238:	fff48513          	addi	a0,s1,-1
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	fcc080e7          	jalr	-52(ra) # 80005208 <_ZL9fibonaccim>
    80005244:	00050913          	mv	s2,a0
    80005248:	ffe48513          	addi	a0,s1,-2
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	fbc080e7          	jalr	-68(ra) # 80005208 <_ZL9fibonaccim>
    80005254:	00a90533          	add	a0,s2,a0
}
    80005258:	01813083          	ld	ra,24(sp)
    8000525c:	01013403          	ld	s0,16(sp)
    80005260:	00813483          	ld	s1,8(sp)
    80005264:	00013903          	ld	s2,0(sp)
    80005268:	02010113          	addi	sp,sp,32
    8000526c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	0b4080e7          	jalr	180(ra) # 80001324 <thread_dispatch>
    80005278:	fc1ff06f          	j	80005238 <_ZL9fibonaccim+0x30>

000000008000527c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    8000527c:	fe010113          	addi	sp,sp,-32
    80005280:	00113c23          	sd	ra,24(sp)
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00913423          	sd	s1,8(sp)
    8000528c:	01213023          	sd	s2,0(sp)
    80005290:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005294:	00000493          	li	s1,0
    80005298:	0400006f          	j	800052d8 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000529c:	00004517          	auipc	a0,0x4
    800052a0:	05c50513          	addi	a0,a0,92 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	3e4080e7          	jalr	996(ra) # 80005688 <_Z11printStringPKc>
    800052ac:	00000613          	li	a2,0
    800052b0:	00a00593          	li	a1,10
    800052b4:	00048513          	mv	a0,s1
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	568080e7          	jalr	1384(ra) # 80005820 <_Z8printIntiii>
    800052c0:	00004517          	auipc	a0,0x4
    800052c4:	ec850513          	addi	a0,a0,-312 # 80009188 <CONSOLE_STATUS+0x178>
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	3c0080e7          	jalr	960(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800052d0:	0014849b          	addiw	s1,s1,1
    800052d4:	0ff4f493          	andi	s1,s1,255
    800052d8:	00200793          	li	a5,2
    800052dc:	fc97f0e3          	bgeu	a5,s1,8000529c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800052e0:	00004517          	auipc	a0,0x4
    800052e4:	02050513          	addi	a0,a0,32 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	3a0080e7          	jalr	928(ra) # 80005688 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800052f0:	00700313          	li	t1,7
    thread_dispatch();
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	030080e7          	jalr	48(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800052fc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005300:	00004517          	auipc	a0,0x4
    80005304:	01050513          	addi	a0,a0,16 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	380080e7          	jalr	896(ra) # 80005688 <_Z11printStringPKc>
    80005310:	00000613          	li	a2,0
    80005314:	00a00593          	li	a1,10
    80005318:	0009051b          	sext.w	a0,s2
    8000531c:	00000097          	auipc	ra,0x0
    80005320:	504080e7          	jalr	1284(ra) # 80005820 <_Z8printIntiii>
    80005324:	00004517          	auipc	a0,0x4
    80005328:	e6450513          	addi	a0,a0,-412 # 80009188 <CONSOLE_STATUS+0x178>
    8000532c:	00000097          	auipc	ra,0x0
    80005330:	35c080e7          	jalr	860(ra) # 80005688 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005334:	00c00513          	li	a0,12
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	ed0080e7          	jalr	-304(ra) # 80005208 <_ZL9fibonaccim>
    80005340:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005344:	00004517          	auipc	a0,0x4
    80005348:	fd450513          	addi	a0,a0,-44 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    8000534c:	00000097          	auipc	ra,0x0
    80005350:	33c080e7          	jalr	828(ra) # 80005688 <_Z11printStringPKc>
    80005354:	00000613          	li	a2,0
    80005358:	00a00593          	li	a1,10
    8000535c:	0009051b          	sext.w	a0,s2
    80005360:	00000097          	auipc	ra,0x0
    80005364:	4c0080e7          	jalr	1216(ra) # 80005820 <_Z8printIntiii>
    80005368:	00004517          	auipc	a0,0x4
    8000536c:	e2050513          	addi	a0,a0,-480 # 80009188 <CONSOLE_STATUS+0x178>
    80005370:	00000097          	auipc	ra,0x0
    80005374:	318080e7          	jalr	792(ra) # 80005688 <_Z11printStringPKc>
    80005378:	0400006f          	j	800053b8 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	f7c50513          	addi	a0,a0,-132 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	304080e7          	jalr	772(ra) # 80005688 <_Z11printStringPKc>
    8000538c:	00000613          	li	a2,0
    80005390:	00a00593          	li	a1,10
    80005394:	00048513          	mv	a0,s1
    80005398:	00000097          	auipc	ra,0x0
    8000539c:	488080e7          	jalr	1160(ra) # 80005820 <_Z8printIntiii>
    800053a0:	00004517          	auipc	a0,0x4
    800053a4:	de850513          	addi	a0,a0,-536 # 80009188 <CONSOLE_STATUS+0x178>
    800053a8:	00000097          	auipc	ra,0x0
    800053ac:	2e0080e7          	jalr	736(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053b0:	0014849b          	addiw	s1,s1,1
    800053b4:	0ff4f493          	andi	s1,s1,255
    800053b8:	00500793          	li	a5,5
    800053bc:	fc97f0e3          	bgeu	a5,s1,8000537c <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	00050513          	mv	a0,a0
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	2c0080e7          	jalr	704(ra) # 80005688 <_Z11printStringPKc>
    finishedC = true;
    800053d0:	00100793          	li	a5,1
    800053d4:	00006717          	auipc	a4,0x6
    800053d8:	60f70123          	sb	a5,1538(a4) # 8000b9d6 <_ZL9finishedC>
    thread_dispatch();
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	f48080e7          	jalr	-184(ra) # 80001324 <thread_dispatch>
}
    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	00013903          	ld	s2,0(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret

00000000800053fc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00113c23          	sd	ra,24(sp)
    80005404:	00813823          	sd	s0,16(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	01213023          	sd	s2,0(sp)
    80005410:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005414:	00a00493          	li	s1,10
    80005418:	0400006f          	j	80005458 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000541c:	00004517          	auipc	a0,0x4
    80005420:	f0c50513          	addi	a0,a0,-244 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005424:	00000097          	auipc	ra,0x0
    80005428:	264080e7          	jalr	612(ra) # 80005688 <_Z11printStringPKc>
    8000542c:	00000613          	li	a2,0
    80005430:	00a00593          	li	a1,10
    80005434:	00048513          	mv	a0,s1
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	3e8080e7          	jalr	1000(ra) # 80005820 <_Z8printIntiii>
    80005440:	00004517          	auipc	a0,0x4
    80005444:	d4850513          	addi	a0,a0,-696 # 80009188 <CONSOLE_STATUS+0x178>
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	240080e7          	jalr	576(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005450:	0014849b          	addiw	s1,s1,1
    80005454:	0ff4f493          	andi	s1,s1,255
    80005458:	00c00793          	li	a5,12
    8000545c:	fc97f0e3          	bgeu	a5,s1,8000541c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005460:	00004517          	auipc	a0,0x4
    80005464:	ed050513          	addi	a0,a0,-304 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	220080e7          	jalr	544(ra) # 80005688 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005470:	00500313          	li	t1,5
    thread_dispatch();
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	eb0080e7          	jalr	-336(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000547c:	01000513          	li	a0,16
    80005480:	00000097          	auipc	ra,0x0
    80005484:	d88080e7          	jalr	-632(ra) # 80005208 <_ZL9fibonaccim>
    80005488:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	eb450513          	addi	a0,a0,-332 # 80009340 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005494:	00000097          	auipc	ra,0x0
    80005498:	1f4080e7          	jalr	500(ra) # 80005688 <_Z11printStringPKc>
    8000549c:	00000613          	li	a2,0
    800054a0:	00a00593          	li	a1,10
    800054a4:	0009051b          	sext.w	a0,s2
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	378080e7          	jalr	888(ra) # 80005820 <_Z8printIntiii>
    800054b0:	00004517          	auipc	a0,0x4
    800054b4:	cd850513          	addi	a0,a0,-808 # 80009188 <CONSOLE_STATUS+0x178>
    800054b8:	00000097          	auipc	ra,0x0
    800054bc:	1d0080e7          	jalr	464(ra) # 80005688 <_Z11printStringPKc>
    800054c0:	0400006f          	j	80005500 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054c4:	00004517          	auipc	a0,0x4
    800054c8:	e6450513          	addi	a0,a0,-412 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	1bc080e7          	jalr	444(ra) # 80005688 <_Z11printStringPKc>
    800054d4:	00000613          	li	a2,0
    800054d8:	00a00593          	li	a1,10
    800054dc:	00048513          	mv	a0,s1
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	340080e7          	jalr	832(ra) # 80005820 <_Z8printIntiii>
    800054e8:	00004517          	auipc	a0,0x4
    800054ec:	ca050513          	addi	a0,a0,-864 # 80009188 <CONSOLE_STATUS+0x178>
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	198080e7          	jalr	408(ra) # 80005688 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800054f8:	0014849b          	addiw	s1,s1,1
    800054fc:	0ff4f493          	andi	s1,s1,255
    80005500:	00f00793          	li	a5,15
    80005504:	fc97f0e3          	bgeu	a5,s1,800054c4 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005508:	00004517          	auipc	a0,0x4
    8000550c:	e4850513          	addi	a0,a0,-440 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005510:	00000097          	auipc	ra,0x0
    80005514:	178080e7          	jalr	376(ra) # 80005688 <_Z11printStringPKc>
    finishedD = true;
    80005518:	00100793          	li	a5,1
    8000551c:	00006717          	auipc	a4,0x6
    80005520:	4af70da3          	sb	a5,1211(a4) # 8000b9d7 <_ZL9finishedD>
    thread_dispatch();
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	e00080e7          	jalr	-512(ra) # 80001324 <thread_dispatch>
}
    8000552c:	01813083          	ld	ra,24(sp)
    80005530:	01013403          	ld	s0,16(sp)
    80005534:	00813483          	ld	s1,8(sp)
    80005538:	00013903          	ld	s2,0(sp)
    8000553c:	02010113          	addi	sp,sp,32
    80005540:	00008067          	ret

0000000080005544 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005544:	fc010113          	addi	sp,sp,-64
    80005548:	02113c23          	sd	ra,56(sp)
    8000554c:	02813823          	sd	s0,48(sp)
    80005550:	02913423          	sd	s1,40(sp)
    80005554:	03213023          	sd	s2,32(sp)
    80005558:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000555c:	00000613          	li	a2,0
    80005560:	00000597          	auipc	a1,0x0
    80005564:	b1058593          	addi	a1,a1,-1264 # 80005070 <_Z11workerBodyAPv>
    80005568:	fc040513          	addi	a0,s0,-64
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	d38080e7          	jalr	-712(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005574:	00004517          	auipc	a0,0x4
    80005578:	dec50513          	addi	a0,a0,-532 # 80009360 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    8000557c:	00000097          	auipc	ra,0x0
    80005580:	10c080e7          	jalr	268(ra) # 80005688 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005584:	00000613          	li	a2,0
    80005588:	00000597          	auipc	a1,0x0
    8000558c:	bb058593          	addi	a1,a1,-1104 # 80005138 <_Z11workerBodyBPv>
    80005590:	fc840513          	addi	a0,s0,-56
    80005594:	ffffc097          	auipc	ra,0xffffc
    80005598:	d10080e7          	jalr	-752(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    8000559c:	00004517          	auipc	a0,0x4
    800055a0:	ddc50513          	addi	a0,a0,-548 # 80009378 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	0e4080e7          	jalr	228(ra) # 80005688 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800055ac:	00000613          	li	a2,0
    800055b0:	00000597          	auipc	a1,0x0
    800055b4:	ccc58593          	addi	a1,a1,-820 # 8000527c <_Z11workerBodyCPv>
    800055b8:	fd040513          	addi	a0,s0,-48
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	ce8080e7          	jalr	-792(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800055c4:	00004517          	auipc	a0,0x4
    800055c8:	dcc50513          	addi	a0,a0,-564 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	0bc080e7          	jalr	188(ra) # 80005688 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800055d4:	00000613          	li	a2,0
    800055d8:	00000597          	auipc	a1,0x0
    800055dc:	e2458593          	addi	a1,a1,-476 # 800053fc <_Z11workerBodyDPv>
    800055e0:	fd840513          	addi	a0,s0,-40
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	cc0080e7          	jalr	-832(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	dbc50513          	addi	a0,a0,-580 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	094080e7          	jalr	148(ra) # 80005688 <_Z11printStringPKc>
    800055fc:	00c0006f          	j	80005608 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	d24080e7          	jalr	-732(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005608:	00006797          	auipc	a5,0x6
    8000560c:	3cc7c783          	lbu	a5,972(a5) # 8000b9d4 <_ZL9finishedA>
    80005610:	fe0788e3          	beqz	a5,80005600 <_Z18Threads_C_API_testv+0xbc>
    80005614:	00006797          	auipc	a5,0x6
    80005618:	3c17c783          	lbu	a5,961(a5) # 8000b9d5 <_ZL9finishedB>
    8000561c:	fe0782e3          	beqz	a5,80005600 <_Z18Threads_C_API_testv+0xbc>
    80005620:	00006797          	auipc	a5,0x6
    80005624:	3b67c783          	lbu	a5,950(a5) # 8000b9d6 <_ZL9finishedC>
    80005628:	fc078ce3          	beqz	a5,80005600 <_Z18Threads_C_API_testv+0xbc>
    8000562c:	00006797          	auipc	a5,0x6
    80005630:	3ab7c783          	lbu	a5,939(a5) # 8000b9d7 <_ZL9finishedD>
    80005634:	fc0786e3          	beqz	a5,80005600 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80005638:	fc040493          	addi	s1,s0,-64
    8000563c:	0080006f          	j	80005644 <_Z18Threads_C_API_testv+0x100>
    80005640:	00848493          	addi	s1,s1,8
    80005644:	fe040793          	addi	a5,s0,-32
    80005648:	02f48463          	beq	s1,a5,80005670 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    8000564c:	0004b903          	ld	s2,0(s1)
    80005650:	fe0908e3          	beqz	s2,80005640 <_Z18Threads_C_API_testv+0xfc>
    80005654:	00090513          	mv	a0,s2
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	21c080e7          	jalr	540(ra) # 80002874 <_ZN3PCBD1Ev>
    80005660:	00090513          	mv	a0,s2
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	1e8080e7          	jalr	488(ra) # 8000284c <_ZN3PCBdlEPv>
    8000566c:	fd5ff06f          	j	80005640 <_Z18Threads_C_API_testv+0xfc>
    }
}
    80005670:	03813083          	ld	ra,56(sp)
    80005674:	03013403          	ld	s0,48(sp)
    80005678:	02813483          	ld	s1,40(sp)
    8000567c:	02013903          	ld	s2,32(sp)
    80005680:	04010113          	addi	sp,sp,64
    80005684:	00008067          	ret

0000000080005688 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005688:	fe010113          	addi	sp,sp,-32
    8000568c:	00113c23          	sd	ra,24(sp)
    80005690:	00813823          	sd	s0,16(sp)
    80005694:	00913423          	sd	s1,8(sp)
    80005698:	02010413          	addi	s0,sp,32
    8000569c:	00050493          	mv	s1,a0
    LOCK();
    800056a0:	00100613          	li	a2,1
    800056a4:	00000593          	li	a1,0
    800056a8:	00006517          	auipc	a0,0x6
    800056ac:	33050513          	addi	a0,a0,816 # 8000b9d8 <lockPrint>
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	b58080e7          	jalr	-1192(ra) # 80001208 <copy_and_swap>
    800056b8:	fe0514e3          	bnez	a0,800056a0 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800056bc:	0004c503          	lbu	a0,0(s1)
    800056c0:	00050a63          	beqz	a0,800056d4 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    800056c4:	00003097          	auipc	ra,0x3
    800056c8:	9f8080e7          	jalr	-1544(ra) # 800080bc <__putc>
        putc(*string);
        string++;
    800056cc:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800056d0:	fedff06f          	j	800056bc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800056d4:	00000613          	li	a2,0
    800056d8:	00100593          	li	a1,1
    800056dc:	00006517          	auipc	a0,0x6
    800056e0:	2fc50513          	addi	a0,a0,764 # 8000b9d8 <lockPrint>
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	b24080e7          	jalr	-1244(ra) # 80001208 <copy_and_swap>
    800056ec:	fe0514e3          	bnez	a0,800056d4 <_Z11printStringPKc+0x4c>
}
    800056f0:	01813083          	ld	ra,24(sp)
    800056f4:	01013403          	ld	s0,16(sp)
    800056f8:	00813483          	ld	s1,8(sp)
    800056fc:	02010113          	addi	sp,sp,32
    80005700:	00008067          	ret

0000000080005704 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005704:	fd010113          	addi	sp,sp,-48
    80005708:	02113423          	sd	ra,40(sp)
    8000570c:	02813023          	sd	s0,32(sp)
    80005710:	00913c23          	sd	s1,24(sp)
    80005714:	01213823          	sd	s2,16(sp)
    80005718:	01313423          	sd	s3,8(sp)
    8000571c:	01413023          	sd	s4,0(sp)
    80005720:	03010413          	addi	s0,sp,48
    80005724:	00050993          	mv	s3,a0
    80005728:	00058a13          	mv	s4,a1
    LOCK();
    8000572c:	00100613          	li	a2,1
    80005730:	00000593          	li	a1,0
    80005734:	00006517          	auipc	a0,0x6
    80005738:	2a450513          	addi	a0,a0,676 # 8000b9d8 <lockPrint>
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	acc080e7          	jalr	-1332(ra) # 80001208 <copy_and_swap>
    80005744:	fe0514e3          	bnez	a0,8000572c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005748:	00000913          	li	s2,0
    8000574c:	00090493          	mv	s1,s2
    80005750:	0019091b          	addiw	s2,s2,1
    80005754:	03495a63          	bge	s2,s4,80005788 <_Z9getStringPci+0x84>
    return __getc();
    80005758:	00003097          	auipc	ra,0x3
    8000575c:	9a0080e7          	jalr	-1632(ra) # 800080f8 <__getc>
        cc = getc();
        if (cc < 1)
    80005760:	02050463          	beqz	a0,80005788 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005764:	009984b3          	add	s1,s3,s1
    80005768:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    8000576c:	00a00793          	li	a5,10
    80005770:	00f50a63          	beq	a0,a5,80005784 <_Z9getStringPci+0x80>
    80005774:	00d00793          	li	a5,13
    80005778:	fcf51ae3          	bne	a0,a5,8000574c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000577c:	00090493          	mv	s1,s2
    80005780:	0080006f          	j	80005788 <_Z9getStringPci+0x84>
    80005784:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005788:	009984b3          	add	s1,s3,s1
    8000578c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005790:	00000613          	li	a2,0
    80005794:	00100593          	li	a1,1
    80005798:	00006517          	auipc	a0,0x6
    8000579c:	24050513          	addi	a0,a0,576 # 8000b9d8 <lockPrint>
    800057a0:	ffffc097          	auipc	ra,0xffffc
    800057a4:	a68080e7          	jalr	-1432(ra) # 80001208 <copy_and_swap>
    800057a8:	fe0514e3          	bnez	a0,80005790 <_Z9getStringPci+0x8c>
    return buf;
}
    800057ac:	00098513          	mv	a0,s3
    800057b0:	02813083          	ld	ra,40(sp)
    800057b4:	02013403          	ld	s0,32(sp)
    800057b8:	01813483          	ld	s1,24(sp)
    800057bc:	01013903          	ld	s2,16(sp)
    800057c0:	00813983          	ld	s3,8(sp)
    800057c4:	00013a03          	ld	s4,0(sp)
    800057c8:	03010113          	addi	sp,sp,48
    800057cc:	00008067          	ret

00000000800057d0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800057d0:	ff010113          	addi	sp,sp,-16
    800057d4:	00813423          	sd	s0,8(sp)
    800057d8:	01010413          	addi	s0,sp,16
    800057dc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800057e0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800057e4:	0006c603          	lbu	a2,0(a3)
    800057e8:	fd06071b          	addiw	a4,a2,-48
    800057ec:	0ff77713          	andi	a4,a4,255
    800057f0:	00900793          	li	a5,9
    800057f4:	02e7e063          	bltu	a5,a4,80005814 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800057f8:	0025179b          	slliw	a5,a0,0x2
    800057fc:	00a787bb          	addw	a5,a5,a0
    80005800:	0017979b          	slliw	a5,a5,0x1
    80005804:	00168693          	addi	a3,a3,1
    80005808:	00c787bb          	addw	a5,a5,a2
    8000580c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005810:	fd5ff06f          	j	800057e4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005814:	00813403          	ld	s0,8(sp)
    80005818:	01010113          	addi	sp,sp,16
    8000581c:	00008067          	ret

0000000080005820 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005820:	fc010113          	addi	sp,sp,-64
    80005824:	02113c23          	sd	ra,56(sp)
    80005828:	02813823          	sd	s0,48(sp)
    8000582c:	02913423          	sd	s1,40(sp)
    80005830:	03213023          	sd	s2,32(sp)
    80005834:	01313c23          	sd	s3,24(sp)
    80005838:	04010413          	addi	s0,sp,64
    8000583c:	00050493          	mv	s1,a0
    80005840:	00058913          	mv	s2,a1
    80005844:	00060993          	mv	s3,a2
    LOCK();
    80005848:	00100613          	li	a2,1
    8000584c:	00000593          	li	a1,0
    80005850:	00006517          	auipc	a0,0x6
    80005854:	18850513          	addi	a0,a0,392 # 8000b9d8 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	9b0080e7          	jalr	-1616(ra) # 80001208 <copy_and_swap>
    80005860:	fe0514e3          	bnez	a0,80005848 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005864:	00098463          	beqz	s3,8000586c <_Z8printIntiii+0x4c>
    80005868:	0804c463          	bltz	s1,800058f0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000586c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005870:	00000593          	li	a1,0
    }

    i = 0;
    80005874:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005878:	0009079b          	sext.w	a5,s2
    8000587c:	0325773b          	remuw	a4,a0,s2
    80005880:	00048613          	mv	a2,s1
    80005884:	0014849b          	addiw	s1,s1,1
    80005888:	02071693          	slli	a3,a4,0x20
    8000588c:	0206d693          	srli	a3,a3,0x20
    80005890:	00004717          	auipc	a4,0x4
    80005894:	b4070713          	addi	a4,a4,-1216 # 800093d0 <_ZL6digits>
    80005898:	00d70733          	add	a4,a4,a3
    8000589c:	00074683          	lbu	a3,0(a4)
    800058a0:	fd040713          	addi	a4,s0,-48
    800058a4:	00c70733          	add	a4,a4,a2
    800058a8:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800058ac:	0005071b          	sext.w	a4,a0
    800058b0:	0325553b          	divuw	a0,a0,s2
    800058b4:	fcf772e3          	bgeu	a4,a5,80005878 <_Z8printIntiii+0x58>
    if (neg)
    800058b8:	00058c63          	beqz	a1,800058d0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800058bc:	fd040793          	addi	a5,s0,-48
    800058c0:	009784b3          	add	s1,a5,s1
    800058c4:	02d00793          	li	a5,45
    800058c8:	fef48823          	sb	a5,-16(s1)
    800058cc:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    800058d0:	fff4849b          	addiw	s1,s1,-1
    800058d4:	0204c463          	bltz	s1,800058fc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800058d8:	fd040793          	addi	a5,s0,-48
    800058dc:	009787b3          	add	a5,a5,s1
    __putc(c);
    800058e0:	ff07c503          	lbu	a0,-16(a5)
    800058e4:	00002097          	auipc	ra,0x2
    800058e8:	7d8080e7          	jalr	2008(ra) # 800080bc <__putc>
}
    800058ec:	fe5ff06f          	j	800058d0 <_Z8printIntiii+0xb0>
        x = -xx;
    800058f0:	4090053b          	negw	a0,s1
        neg = 1;
    800058f4:	00100593          	li	a1,1
        x = -xx;
    800058f8:	f7dff06f          	j	80005874 <_Z8printIntiii+0x54>

    UNLOCK();
    800058fc:	00000613          	li	a2,0
    80005900:	00100593          	li	a1,1
    80005904:	00006517          	auipc	a0,0x6
    80005908:	0d450513          	addi	a0,a0,212 # 8000b9d8 <lockPrint>
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	8fc080e7          	jalr	-1796(ra) # 80001208 <copy_and_swap>
    80005914:	fe0514e3          	bnez	a0,800058fc <_Z8printIntiii+0xdc>
}
    80005918:	03813083          	ld	ra,56(sp)
    8000591c:	03013403          	ld	s0,48(sp)
    80005920:	02813483          	ld	s1,40(sp)
    80005924:	02013903          	ld	s2,32(sp)
    80005928:	01813983          	ld	s3,24(sp)
    8000592c:	04010113          	addi	sp,sp,64
    80005930:	00008067          	ret

0000000080005934 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050493          	mv	s1,a0
    80005950:	00b52023          	sw	a1,0(a0)
    80005954:	00052823          	sw	zero,16(a0)
    80005958:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000595c:	00259513          	slli	a0,a1,0x2
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	8e8080e7          	jalr	-1816(ra) # 80001248 <mem_alloc>
    80005968:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000596c:	01000513          	li	a0,16
    80005970:	ffffd097          	auipc	ra,0xffffd
    80005974:	7f0080e7          	jalr	2032(ra) # 80003160 <_Znwm>
    80005978:	00050913          	mv	s2,a0
    8000597c:	00000593          	li	a1,0
    80005980:	ffffe097          	auipc	ra,0xffffe
    80005984:	a1c080e7          	jalr	-1508(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    80005988:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    8000598c:	01000513          	li	a0,16
    80005990:	ffffd097          	auipc	ra,0xffffd
    80005994:	7d0080e7          	jalr	2000(ra) # 80003160 <_Znwm>
    80005998:	00050913          	mv	s2,a0
    8000599c:	0004a583          	lw	a1,0(s1)
    800059a0:	ffffe097          	auipc	ra,0xffffe
    800059a4:	9fc080e7          	jalr	-1540(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    800059a8:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800059ac:	01000513          	li	a0,16
    800059b0:	ffffd097          	auipc	ra,0xffffd
    800059b4:	7b0080e7          	jalr	1968(ra) # 80003160 <_Znwm>
    800059b8:	00050913          	mv	s2,a0
    800059bc:	00100593          	li	a1,1
    800059c0:	ffffe097          	auipc	ra,0xffffe
    800059c4:	9dc080e7          	jalr	-1572(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    800059c8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800059cc:	01000513          	li	a0,16
    800059d0:	ffffd097          	auipc	ra,0xffffd
    800059d4:	790080e7          	jalr	1936(ra) # 80003160 <_Znwm>
    800059d8:	00050913          	mv	s2,a0
    800059dc:	00100593          	li	a1,1
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	9bc080e7          	jalr	-1604(ra) # 8000339c <_ZN9SemaphoreC1Ej>
    800059e8:	0324b823          	sd	s2,48(s1)
}
    800059ec:	01813083          	ld	ra,24(sp)
    800059f0:	01013403          	ld	s0,16(sp)
    800059f4:	00813483          	ld	s1,8(sp)
    800059f8:	00013903          	ld	s2,0(sp)
    800059fc:	02010113          	addi	sp,sp,32
    80005a00:	00008067          	ret
    80005a04:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005a08:	00090513          	mv	a0,s2
    80005a0c:	ffffd097          	auipc	ra,0xffffd
    80005a10:	77c080e7          	jalr	1916(ra) # 80003188 <_ZdlPv>
    80005a14:	00048513          	mv	a0,s1
    80005a18:	00007097          	auipc	ra,0x7
    80005a1c:	0a0080e7          	jalr	160(ra) # 8000cab8 <_Unwind_Resume>
    80005a20:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005a24:	00090513          	mv	a0,s2
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	760080e7          	jalr	1888(ra) # 80003188 <_ZdlPv>
    80005a30:	00048513          	mv	a0,s1
    80005a34:	00007097          	auipc	ra,0x7
    80005a38:	084080e7          	jalr	132(ra) # 8000cab8 <_Unwind_Resume>
    80005a3c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a40:	00090513          	mv	a0,s2
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	744080e7          	jalr	1860(ra) # 80003188 <_ZdlPv>
    80005a4c:	00048513          	mv	a0,s1
    80005a50:	00007097          	auipc	ra,0x7
    80005a54:	068080e7          	jalr	104(ra) # 8000cab8 <_Unwind_Resume>
    80005a58:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a5c:	00090513          	mv	a0,s2
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	728080e7          	jalr	1832(ra) # 80003188 <_ZdlPv>
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00007097          	auipc	ra,0x7
    80005a70:	04c080e7          	jalr	76(ra) # 8000cab8 <_Unwind_Resume>

0000000080005a74 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005a74:	fe010113          	addi	sp,sp,-32
    80005a78:	00113c23          	sd	ra,24(sp)
    80005a7c:	00813823          	sd	s0,16(sp)
    80005a80:	00913423          	sd	s1,8(sp)
    80005a84:	02010413          	addi	s0,sp,32
    80005a88:	00050493          	mv	s1,a0
    __putc(c);
    80005a8c:	00a00513          	li	a0,10
    80005a90:	00002097          	auipc	ra,0x2
    80005a94:	62c080e7          	jalr	1580(ra) # 800080bc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005a98:	0104a783          	lw	a5,16(s1)
    80005a9c:	0144a703          	lw	a4,20(s1)
    80005aa0:	00e78c63          	beq	a5,a4,80005ab8 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005aa4:	0017879b          	addiw	a5,a5,1
    80005aa8:	0004a703          	lw	a4,0(s1)
    80005aac:	02e7e7bb          	remw	a5,a5,a4
    80005ab0:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005ab4:	fe5ff06f          	j	80005a98 <_ZN9BufferCPPD1Ev+0x24>
    80005ab8:	02100513          	li	a0,33
    80005abc:	00002097          	auipc	ra,0x2
    80005ac0:	600080e7          	jalr	1536(ra) # 800080bc <__putc>
    80005ac4:	00a00513          	li	a0,10
    80005ac8:	00002097          	auipc	ra,0x2
    80005acc:	5f4080e7          	jalr	1524(ra) # 800080bc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005ad0:	0084b503          	ld	a0,8(s1)
    80005ad4:	ffffb097          	auipc	ra,0xffffb
    80005ad8:	7a4080e7          	jalr	1956(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005adc:	0204b503          	ld	a0,32(s1)
    80005ae0:	00050863          	beqz	a0,80005af0 <_ZN9BufferCPPD1Ev+0x7c>
    80005ae4:	00053783          	ld	a5,0(a0)
    80005ae8:	0087b783          	ld	a5,8(a5)
    80005aec:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005af0:	0184b503          	ld	a0,24(s1)
    80005af4:	00050863          	beqz	a0,80005b04 <_ZN9BufferCPPD1Ev+0x90>
    80005af8:	00053783          	ld	a5,0(a0)
    80005afc:	0087b783          	ld	a5,8(a5)
    80005b00:	000780e7          	jalr	a5
    delete mutexTail;
    80005b04:	0304b503          	ld	a0,48(s1)
    80005b08:	00050863          	beqz	a0,80005b18 <_ZN9BufferCPPD1Ev+0xa4>
    80005b0c:	00053783          	ld	a5,0(a0)
    80005b10:	0087b783          	ld	a5,8(a5)
    80005b14:	000780e7          	jalr	a5
    delete mutexHead;
    80005b18:	0284b503          	ld	a0,40(s1)
    80005b1c:	00050863          	beqz	a0,80005b2c <_ZN9BufferCPPD1Ev+0xb8>
    80005b20:	00053783          	ld	a5,0(a0)
    80005b24:	0087b783          	ld	a5,8(a5)
    80005b28:	000780e7          	jalr	a5

}
    80005b2c:	01813083          	ld	ra,24(sp)
    80005b30:	01013403          	ld	s0,16(sp)
    80005b34:	00813483          	ld	s1,8(sp)
    80005b38:	02010113          	addi	sp,sp,32
    80005b3c:	00008067          	ret

0000000080005b40 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005b40:	fe010113          	addi	sp,sp,-32
    80005b44:	00113c23          	sd	ra,24(sp)
    80005b48:	00813823          	sd	s0,16(sp)
    80005b4c:	00913423          	sd	s1,8(sp)
    80005b50:	01213023          	sd	s2,0(sp)
    80005b54:	02010413          	addi	s0,sp,32
    80005b58:	00050493          	mv	s1,a0
    80005b5c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b60:	01853503          	ld	a0,24(a0)
    80005b64:	ffffe097          	auipc	ra,0xffffe
    80005b68:	800080e7          	jalr	-2048(ra) # 80003364 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b6c:	0304b503          	ld	a0,48(s1)
    80005b70:	ffffd097          	auipc	ra,0xffffd
    80005b74:	7f4080e7          	jalr	2036(ra) # 80003364 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b78:	0084b783          	ld	a5,8(s1)
    80005b7c:	0144a703          	lw	a4,20(s1)
    80005b80:	00271713          	slli	a4,a4,0x2
    80005b84:	00e787b3          	add	a5,a5,a4
    80005b88:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b8c:	0144a783          	lw	a5,20(s1)
    80005b90:	0017879b          	addiw	a5,a5,1
    80005b94:	0004a703          	lw	a4,0(s1)
    80005b98:	02e7e7bb          	remw	a5,a5,a4
    80005b9c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ba0:	0304b503          	ld	a0,48(s1)
    80005ba4:	ffffe097          	auipc	ra,0xffffe
    80005ba8:	844080e7          	jalr	-1980(ra) # 800033e8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bac:	0204b503          	ld	a0,32(s1)
    80005bb0:	ffffe097          	auipc	ra,0xffffe
    80005bb4:	838080e7          	jalr	-1992(ra) # 800033e8 <_ZN9Semaphore6signalEv>

}
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	01013403          	ld	s0,16(sp)
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	00013903          	ld	s2,0(sp)
    80005bc8:	02010113          	addi	sp,sp,32
    80005bcc:	00008067          	ret

0000000080005bd0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bd0:	fe010113          	addi	sp,sp,-32
    80005bd4:	00113c23          	sd	ra,24(sp)
    80005bd8:	00813823          	sd	s0,16(sp)
    80005bdc:	00913423          	sd	s1,8(sp)
    80005be0:	01213023          	sd	s2,0(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bec:	02053503          	ld	a0,32(a0)
    80005bf0:	ffffd097          	auipc	ra,0xffffd
    80005bf4:	774080e7          	jalr	1908(ra) # 80003364 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005bf8:	0284b503          	ld	a0,40(s1)
    80005bfc:	ffffd097          	auipc	ra,0xffffd
    80005c00:	768080e7          	jalr	1896(ra) # 80003364 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c04:	0084b703          	ld	a4,8(s1)
    80005c08:	0104a783          	lw	a5,16(s1)
    80005c0c:	00279693          	slli	a3,a5,0x2
    80005c10:	00d70733          	add	a4,a4,a3
    80005c14:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c18:	0017879b          	addiw	a5,a5,1
    80005c1c:	0004a703          	lw	a4,0(s1)
    80005c20:	02e7e7bb          	remw	a5,a5,a4
    80005c24:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c28:	0284b503          	ld	a0,40(s1)
    80005c2c:	ffffd097          	auipc	ra,0xffffd
    80005c30:	7bc080e7          	jalr	1980(ra) # 800033e8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c34:	0184b503          	ld	a0,24(s1)
    80005c38:	ffffd097          	auipc	ra,0xffffd
    80005c3c:	7b0080e7          	jalr	1968(ra) # 800033e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c40:	00090513          	mv	a0,s2
    80005c44:	01813083          	ld	ra,24(sp)
    80005c48:	01013403          	ld	s0,16(sp)
    80005c4c:	00813483          	ld	s1,8(sp)
    80005c50:	00013903          	ld	s2,0(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005c5c:	ff010113          	addi	sp,sp,-16
    80005c60:	00113423          	sd	ra,8(sp)
    80005c64:	00813023          	sd	s0,0(sp)
    80005c68:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	8d8080e7          	jalr	-1832(ra) # 80005544 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005c74:	00813083          	ld	ra,8(sp)
    80005c78:	00013403          	ld	s0,0(sp)
    80005c7c:	01010113          	addi	sp,sp,16
    80005c80:	00008067          	ret

0000000080005c84 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005c84:	fe010113          	addi	sp,sp,-32
    80005c88:	00113c23          	sd	ra,24(sp)
    80005c8c:	00813823          	sd	s0,16(sp)
    80005c90:	00913423          	sd	s1,8(sp)
    80005c94:	01213023          	sd	s2,0(sp)
    80005c98:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005c9c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ca0:	00600493          	li	s1,6
    while (--i > 0) {
    80005ca4:	fff4849b          	addiw	s1,s1,-1
    80005ca8:	04905463          	blez	s1,80005cf0 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005cac:	00003517          	auipc	a0,0x3
    80005cb0:	73c50513          	addi	a0,a0,1852 # 800093e8 <_ZL6digits+0x18>
    80005cb4:	00000097          	auipc	ra,0x0
    80005cb8:	9d4080e7          	jalr	-1580(ra) # 80005688 <_Z11printStringPKc>
        printInt(sleep_time);
    80005cbc:	00000613          	li	a2,0
    80005cc0:	00a00593          	li	a1,10
    80005cc4:	0009051b          	sext.w	a0,s2
    80005cc8:	00000097          	auipc	ra,0x0
    80005ccc:	b58080e7          	jalr	-1192(ra) # 80005820 <_Z8printIntiii>
        printString(" !\n");
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	72050513          	addi	a0,a0,1824 # 800093f0 <_ZL6digits+0x20>
    80005cd8:	00000097          	auipc	ra,0x0
    80005cdc:	9b0080e7          	jalr	-1616(ra) # 80005688 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ce0:	00090513          	mv	a0,s2
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	744080e7          	jalr	1860(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005cec:	fb9ff06f          	j	80005ca4 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005cf0:	00a00793          	li	a5,10
    80005cf4:	02f95933          	divu	s2,s2,a5
    80005cf8:	fff90913          	addi	s2,s2,-1
    80005cfc:	00006797          	auipc	a5,0x6
    80005d00:	ce478793          	addi	a5,a5,-796 # 8000b9e0 <finished>
    80005d04:	01278933          	add	s2,a5,s2
    80005d08:	00100793          	li	a5,1
    80005d0c:	00f90023          	sb	a5,0(s2)
}
    80005d10:	01813083          	ld	ra,24(sp)
    80005d14:	01013403          	ld	s0,16(sp)
    80005d18:	00813483          	ld	s1,8(sp)
    80005d1c:	00013903          	ld	s2,0(sp)
    80005d20:	02010113          	addi	sp,sp,32
    80005d24:	00008067          	ret

0000000080005d28 <_Z12testSleepingv>:

void testSleeping()
{
    80005d28:	fc010113          	addi	sp,sp,-64
    80005d2c:	02113c23          	sd	ra,56(sp)
    80005d30:	02813823          	sd	s0,48(sp)
    80005d34:	02913423          	sd	s1,40(sp)
    80005d38:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005d3c:	00a00793          	li	a5,10
    80005d40:	fcf43823          	sd	a5,-48(s0)
    80005d44:	01400793          	li	a5,20
    80005d48:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d4c:	00000493          	li	s1,0
    80005d50:	02c0006f          	j	80005d7c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005d54:	00349793          	slli	a5,s1,0x3
    80005d58:	fd040613          	addi	a2,s0,-48
    80005d5c:	00f60633          	add	a2,a2,a5
    80005d60:	00000597          	auipc	a1,0x0
    80005d64:	f2458593          	addi	a1,a1,-220 # 80005c84 <_Z9sleepyRunPv>
    80005d68:	fc040513          	addi	a0,s0,-64
    80005d6c:	00f50533          	add	a0,a0,a5
    80005d70:	ffffb097          	auipc	ra,0xffffb
    80005d74:	534080e7          	jalr	1332(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005d78:	0014849b          	addiw	s1,s1,1
    80005d7c:	00100793          	li	a5,1
    80005d80:	fc97dae3          	bge	a5,s1,80005d54 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005d84:	00006797          	auipc	a5,0x6
    80005d88:	c5c7c783          	lbu	a5,-932(a5) # 8000b9e0 <finished>
    80005d8c:	fe078ce3          	beqz	a5,80005d84 <_Z12testSleepingv+0x5c>
    80005d90:	00006797          	auipc	a5,0x6
    80005d94:	c517c783          	lbu	a5,-943(a5) # 8000b9e1 <finished+0x1>
    80005d98:	fe0786e3          	beqz	a5,80005d84 <_Z12testSleepingv+0x5c>
}
    80005d9c:	03813083          	ld	ra,56(sp)
    80005da0:	03013403          	ld	s0,48(sp)
    80005da4:	02813483          	ld	s1,40(sp)
    80005da8:	04010113          	addi	sp,sp,64
    80005dac:	00008067          	ret

0000000080005db0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005db0:	fe010113          	addi	sp,sp,-32
    80005db4:	00113c23          	sd	ra,24(sp)
    80005db8:	00813823          	sd	s0,16(sp)
    80005dbc:	00913423          	sd	s1,8(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	00050493          	mv	s1,a0
    80005dc8:	00b52023          	sw	a1,0(a0)
    80005dcc:	00052823          	sw	zero,16(a0)
    80005dd0:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005dd4:	00259513          	slli	a0,a1,0x2
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	470080e7          	jalr	1136(ra) # 80001248 <mem_alloc>
    80005de0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005de4:	00000593          	li	a1,0
    80005de8:	02048513          	addi	a0,s1,32
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	580080e7          	jalr	1408(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005df4:	0004a583          	lw	a1,0(s1)
    80005df8:	01848513          	addi	a0,s1,24
    80005dfc:	ffffb097          	auipc	ra,0xffffb
    80005e00:	570080e7          	jalr	1392(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005e04:	00100593          	li	a1,1
    80005e08:	02848513          	addi	a0,s1,40
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	560080e7          	jalr	1376(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005e14:	00100593          	li	a1,1
    80005e18:	03048513          	addi	a0,s1,48
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	550080e7          	jalr	1360(ra) # 8000136c <sem_open>
}
    80005e24:	01813083          	ld	ra,24(sp)
    80005e28:	01013403          	ld	s0,16(sp)
    80005e2c:	00813483          	ld	s1,8(sp)
    80005e30:	02010113          	addi	sp,sp,32
    80005e34:	00008067          	ret

0000000080005e38 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	00813823          	sd	s0,16(sp)
    80005e44:	00913423          	sd	s1,8(sp)
    80005e48:	02010413          	addi	s0,sp,32
    80005e4c:	00050493          	mv	s1,a0
    80005e50:	00a00513          	li	a0,10
    80005e54:	00002097          	auipc	ra,0x2
    80005e58:	268080e7          	jalr	616(ra) # 800080bc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005e5c:	0104a783          	lw	a5,16(s1)
    80005e60:	0144a703          	lw	a4,20(s1)
    80005e64:	00e78c63          	beq	a5,a4,80005e7c <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005e68:	0017879b          	addiw	a5,a5,1
    80005e6c:	0004a703          	lw	a4,0(s1)
    80005e70:	02e7e7bb          	remw	a5,a5,a4
    80005e74:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005e78:	fe5ff06f          	j	80005e5c <_ZN6BufferD1Ev+0x24>
    80005e7c:	02100513          	li	a0,33
    80005e80:	00002097          	auipc	ra,0x2
    80005e84:	23c080e7          	jalr	572(ra) # 800080bc <__putc>
    80005e88:	00a00513          	li	a0,10
    80005e8c:	00002097          	auipc	ra,0x2
    80005e90:	230080e7          	jalr	560(ra) # 800080bc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005e94:	0084b503          	ld	a0,8(s1)
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	3e0080e7          	jalr	992(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005ea0:	0204b503          	ld	a0,32(s1)
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	500080e7          	jalr	1280(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005eac:	0184b503          	ld	a0,24(s1)
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	4f4080e7          	jalr	1268(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005eb8:	0304b503          	ld	a0,48(s1)
    80005ebc:	ffffb097          	auipc	ra,0xffffb
    80005ec0:	4e8080e7          	jalr	1256(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005ec4:	0284b503          	ld	a0,40(s1)
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	4dc080e7          	jalr	1244(ra) # 800013a4 <sem_close>
}
    80005ed0:	01813083          	ld	ra,24(sp)
    80005ed4:	01013403          	ld	s0,16(sp)
    80005ed8:	00813483          	ld	s1,8(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret

0000000080005ee4 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005ee4:	fe010113          	addi	sp,sp,-32
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00813823          	sd	s0,16(sp)
    80005ef0:	00913423          	sd	s1,8(sp)
    80005ef4:	01213023          	sd	s2,0(sp)
    80005ef8:	02010413          	addi	s0,sp,32
    80005efc:	00050493          	mv	s1,a0
    80005f00:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005f04:	01853503          	ld	a0,24(a0)
    80005f08:	ffffb097          	auipc	ra,0xffffb
    80005f0c:	4c8080e7          	jalr	1224(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005f10:	0304b503          	ld	a0,48(s1)
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	4bc080e7          	jalr	1212(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005f1c:	0084b783          	ld	a5,8(s1)
    80005f20:	0144a703          	lw	a4,20(s1)
    80005f24:	00271713          	slli	a4,a4,0x2
    80005f28:	00e787b3          	add	a5,a5,a4
    80005f2c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f30:	0144a783          	lw	a5,20(s1)
    80005f34:	0017879b          	addiw	a5,a5,1
    80005f38:	0004a703          	lw	a4,0(s1)
    80005f3c:	02e7e7bb          	remw	a5,a5,a4
    80005f40:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005f44:	0304b503          	ld	a0,48(s1)
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	4b4080e7          	jalr	1204(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005f50:	0204b503          	ld	a0,32(s1)
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	4a8080e7          	jalr	1192(ra) # 800013fc <sem_signal>

}
    80005f5c:	01813083          	ld	ra,24(sp)
    80005f60:	01013403          	ld	s0,16(sp)
    80005f64:	00813483          	ld	s1,8(sp)
    80005f68:	00013903          	ld	s2,0(sp)
    80005f6c:	02010113          	addi	sp,sp,32
    80005f70:	00008067          	ret

0000000080005f74 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005f74:	fe010113          	addi	sp,sp,-32
    80005f78:	00113c23          	sd	ra,24(sp)
    80005f7c:	00813823          	sd	s0,16(sp)
    80005f80:	00913423          	sd	s1,8(sp)
    80005f84:	01213023          	sd	s2,0(sp)
    80005f88:	02010413          	addi	s0,sp,32
    80005f8c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005f90:	02053503          	ld	a0,32(a0)
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	43c080e7          	jalr	1084(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005f9c:	0284b503          	ld	a0,40(s1)
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	430080e7          	jalr	1072(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005fa8:	0084b703          	ld	a4,8(s1)
    80005fac:	0104a783          	lw	a5,16(s1)
    80005fb0:	00279693          	slli	a3,a5,0x2
    80005fb4:	00d70733          	add	a4,a4,a3
    80005fb8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005fbc:	0017879b          	addiw	a5,a5,1
    80005fc0:	0004a703          	lw	a4,0(s1)
    80005fc4:	02e7e7bb          	remw	a5,a5,a4
    80005fc8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005fcc:	0284b503          	ld	a0,40(s1)
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	42c080e7          	jalr	1068(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005fd8:	0184b503          	ld	a0,24(s1)
    80005fdc:	ffffb097          	auipc	ra,0xffffb
    80005fe0:	420080e7          	jalr	1056(ra) # 800013fc <sem_signal>

    return ret;
}
    80005fe4:	00090513          	mv	a0,s2
    80005fe8:	01813083          	ld	ra,24(sp)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	00813483          	ld	s1,8(sp)
    80005ff4:	00013903          	ld	s2,0(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret

0000000080006000 <start>:
    80006000:	ff010113          	addi	sp,sp,-16
    80006004:	00813423          	sd	s0,8(sp)
    80006008:	01010413          	addi	s0,sp,16
    8000600c:	300027f3          	csrr	a5,mstatus
    80006010:	ffffe737          	lui	a4,0xffffe
    80006014:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1baf>
    80006018:	00e7f7b3          	and	a5,a5,a4
    8000601c:	00001737          	lui	a4,0x1
    80006020:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006024:	00e7e7b3          	or	a5,a5,a4
    80006028:	30079073          	csrw	mstatus,a5
    8000602c:	00000797          	auipc	a5,0x0
    80006030:	16078793          	addi	a5,a5,352 # 8000618c <system_main>
    80006034:	34179073          	csrw	mepc,a5
    80006038:	00000793          	li	a5,0
    8000603c:	18079073          	csrw	satp,a5
    80006040:	000107b7          	lui	a5,0x10
    80006044:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006048:	30279073          	csrw	medeleg,a5
    8000604c:	30379073          	csrw	mideleg,a5
    80006050:	104027f3          	csrr	a5,sie
    80006054:	2227e793          	ori	a5,a5,546
    80006058:	10479073          	csrw	sie,a5
    8000605c:	fff00793          	li	a5,-1
    80006060:	00a7d793          	srli	a5,a5,0xa
    80006064:	3b079073          	csrw	pmpaddr0,a5
    80006068:	00f00793          	li	a5,15
    8000606c:	3a079073          	csrw	pmpcfg0,a5
    80006070:	f14027f3          	csrr	a5,mhartid
    80006074:	0200c737          	lui	a4,0x200c
    80006078:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000607c:	0007869b          	sext.w	a3,a5
    80006080:	00269713          	slli	a4,a3,0x2
    80006084:	000f4637          	lui	a2,0xf4
    80006088:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000608c:	00d70733          	add	a4,a4,a3
    80006090:	0037979b          	slliw	a5,a5,0x3
    80006094:	020046b7          	lui	a3,0x2004
    80006098:	00d787b3          	add	a5,a5,a3
    8000609c:	00c585b3          	add	a1,a1,a2
    800060a0:	00371693          	slli	a3,a4,0x3
    800060a4:	00006717          	auipc	a4,0x6
    800060a8:	94c70713          	addi	a4,a4,-1716 # 8000b9f0 <timer_scratch>
    800060ac:	00b7b023          	sd	a1,0(a5)
    800060b0:	00d70733          	add	a4,a4,a3
    800060b4:	00f73c23          	sd	a5,24(a4)
    800060b8:	02c73023          	sd	a2,32(a4)
    800060bc:	34071073          	csrw	mscratch,a4
    800060c0:	00000797          	auipc	a5,0x0
    800060c4:	6e078793          	addi	a5,a5,1760 # 800067a0 <timervec>
    800060c8:	30579073          	csrw	mtvec,a5
    800060cc:	300027f3          	csrr	a5,mstatus
    800060d0:	0087e793          	ori	a5,a5,8
    800060d4:	30079073          	csrw	mstatus,a5
    800060d8:	304027f3          	csrr	a5,mie
    800060dc:	0807e793          	ori	a5,a5,128
    800060e0:	30479073          	csrw	mie,a5
    800060e4:	f14027f3          	csrr	a5,mhartid
    800060e8:	0007879b          	sext.w	a5,a5
    800060ec:	00078213          	mv	tp,a5
    800060f0:	30200073          	mret
    800060f4:	00813403          	ld	s0,8(sp)
    800060f8:	01010113          	addi	sp,sp,16
    800060fc:	00008067          	ret

0000000080006100 <timerinit>:
    80006100:	ff010113          	addi	sp,sp,-16
    80006104:	00813423          	sd	s0,8(sp)
    80006108:	01010413          	addi	s0,sp,16
    8000610c:	f14027f3          	csrr	a5,mhartid
    80006110:	0200c737          	lui	a4,0x200c
    80006114:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006118:	0007869b          	sext.w	a3,a5
    8000611c:	00269713          	slli	a4,a3,0x2
    80006120:	000f4637          	lui	a2,0xf4
    80006124:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006128:	00d70733          	add	a4,a4,a3
    8000612c:	0037979b          	slliw	a5,a5,0x3
    80006130:	020046b7          	lui	a3,0x2004
    80006134:	00d787b3          	add	a5,a5,a3
    80006138:	00c585b3          	add	a1,a1,a2
    8000613c:	00371693          	slli	a3,a4,0x3
    80006140:	00006717          	auipc	a4,0x6
    80006144:	8b070713          	addi	a4,a4,-1872 # 8000b9f0 <timer_scratch>
    80006148:	00b7b023          	sd	a1,0(a5)
    8000614c:	00d70733          	add	a4,a4,a3
    80006150:	00f73c23          	sd	a5,24(a4)
    80006154:	02c73023          	sd	a2,32(a4)
    80006158:	34071073          	csrw	mscratch,a4
    8000615c:	00000797          	auipc	a5,0x0
    80006160:	64478793          	addi	a5,a5,1604 # 800067a0 <timervec>
    80006164:	30579073          	csrw	mtvec,a5
    80006168:	300027f3          	csrr	a5,mstatus
    8000616c:	0087e793          	ori	a5,a5,8
    80006170:	30079073          	csrw	mstatus,a5
    80006174:	304027f3          	csrr	a5,mie
    80006178:	0807e793          	ori	a5,a5,128
    8000617c:	30479073          	csrw	mie,a5
    80006180:	00813403          	ld	s0,8(sp)
    80006184:	01010113          	addi	sp,sp,16
    80006188:	00008067          	ret

000000008000618c <system_main>:
    8000618c:	fe010113          	addi	sp,sp,-32
    80006190:	00813823          	sd	s0,16(sp)
    80006194:	00913423          	sd	s1,8(sp)
    80006198:	00113c23          	sd	ra,24(sp)
    8000619c:	02010413          	addi	s0,sp,32
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	0c4080e7          	jalr	196(ra) # 80006264 <cpuid>
    800061a8:	00005497          	auipc	s1,0x5
    800061ac:	74848493          	addi	s1,s1,1864 # 8000b8f0 <started>
    800061b0:	02050263          	beqz	a0,800061d4 <system_main+0x48>
    800061b4:	0004a783          	lw	a5,0(s1)
    800061b8:	0007879b          	sext.w	a5,a5
    800061bc:	fe078ce3          	beqz	a5,800061b4 <system_main+0x28>
    800061c0:	0ff0000f          	fence
    800061c4:	00003517          	auipc	a0,0x3
    800061c8:	26450513          	addi	a0,a0,612 # 80009428 <_ZL6digits+0x58>
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	a70080e7          	jalr	-1424(ra) # 80006c3c <panic>
    800061d4:	00001097          	auipc	ra,0x1
    800061d8:	9c4080e7          	jalr	-1596(ra) # 80006b98 <consoleinit>
    800061dc:	00001097          	auipc	ra,0x1
    800061e0:	150080e7          	jalr	336(ra) # 8000732c <printfinit>
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	fa450513          	addi	a0,a0,-92 # 80009188 <CONSOLE_STATUS+0x178>
    800061ec:	00001097          	auipc	ra,0x1
    800061f0:	aac080e7          	jalr	-1364(ra) # 80006c98 <__printf>
    800061f4:	00003517          	auipc	a0,0x3
    800061f8:	20450513          	addi	a0,a0,516 # 800093f8 <_ZL6digits+0x28>
    800061fc:	00001097          	auipc	ra,0x1
    80006200:	a9c080e7          	jalr	-1380(ra) # 80006c98 <__printf>
    80006204:	00003517          	auipc	a0,0x3
    80006208:	f8450513          	addi	a0,a0,-124 # 80009188 <CONSOLE_STATUS+0x178>
    8000620c:	00001097          	auipc	ra,0x1
    80006210:	a8c080e7          	jalr	-1396(ra) # 80006c98 <__printf>
    80006214:	00001097          	auipc	ra,0x1
    80006218:	4a4080e7          	jalr	1188(ra) # 800076b8 <kinit>
    8000621c:	00000097          	auipc	ra,0x0
    80006220:	148080e7          	jalr	328(ra) # 80006364 <trapinit>
    80006224:	00000097          	auipc	ra,0x0
    80006228:	16c080e7          	jalr	364(ra) # 80006390 <trapinithart>
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	5b4080e7          	jalr	1460(ra) # 800067e0 <plicinit>
    80006234:	00000097          	auipc	ra,0x0
    80006238:	5d4080e7          	jalr	1492(ra) # 80006808 <plicinithart>
    8000623c:	00000097          	auipc	ra,0x0
    80006240:	078080e7          	jalr	120(ra) # 800062b4 <userinit>
    80006244:	0ff0000f          	fence
    80006248:	00100793          	li	a5,1
    8000624c:	00003517          	auipc	a0,0x3
    80006250:	1c450513          	addi	a0,a0,452 # 80009410 <_ZL6digits+0x40>
    80006254:	00f4a023          	sw	a5,0(s1)
    80006258:	00001097          	auipc	ra,0x1
    8000625c:	a40080e7          	jalr	-1472(ra) # 80006c98 <__printf>
    80006260:	0000006f          	j	80006260 <system_main+0xd4>

0000000080006264 <cpuid>:
    80006264:	ff010113          	addi	sp,sp,-16
    80006268:	00813423          	sd	s0,8(sp)
    8000626c:	01010413          	addi	s0,sp,16
    80006270:	00020513          	mv	a0,tp
    80006274:	00813403          	ld	s0,8(sp)
    80006278:	0005051b          	sext.w	a0,a0
    8000627c:	01010113          	addi	sp,sp,16
    80006280:	00008067          	ret

0000000080006284 <mycpu>:
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00813423          	sd	s0,8(sp)
    8000628c:	01010413          	addi	s0,sp,16
    80006290:	00020793          	mv	a5,tp
    80006294:	00813403          	ld	s0,8(sp)
    80006298:	0007879b          	sext.w	a5,a5
    8000629c:	00779793          	slli	a5,a5,0x7
    800062a0:	00006517          	auipc	a0,0x6
    800062a4:	78050513          	addi	a0,a0,1920 # 8000ca20 <cpus>
    800062a8:	00f50533          	add	a0,a0,a5
    800062ac:	01010113          	addi	sp,sp,16
    800062b0:	00008067          	ret

00000000800062b4 <userinit>:
    800062b4:	ff010113          	addi	sp,sp,-16
    800062b8:	00813423          	sd	s0,8(sp)
    800062bc:	01010413          	addi	s0,sp,16
    800062c0:	00813403          	ld	s0,8(sp)
    800062c4:	01010113          	addi	sp,sp,16
    800062c8:	ffffd317          	auipc	t1,0xffffd
    800062cc:	db430067          	jr	-588(t1) # 8000307c <main>

00000000800062d0 <either_copyout>:
    800062d0:	ff010113          	addi	sp,sp,-16
    800062d4:	00813023          	sd	s0,0(sp)
    800062d8:	00113423          	sd	ra,8(sp)
    800062dc:	01010413          	addi	s0,sp,16
    800062e0:	02051663          	bnez	a0,8000630c <either_copyout+0x3c>
    800062e4:	00058513          	mv	a0,a1
    800062e8:	00060593          	mv	a1,a2
    800062ec:	0006861b          	sext.w	a2,a3
    800062f0:	00002097          	auipc	ra,0x2
    800062f4:	c54080e7          	jalr	-940(ra) # 80007f44 <__memmove>
    800062f8:	00813083          	ld	ra,8(sp)
    800062fc:	00013403          	ld	s0,0(sp)
    80006300:	00000513          	li	a0,0
    80006304:	01010113          	addi	sp,sp,16
    80006308:	00008067          	ret
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	14450513          	addi	a0,a0,324 # 80009450 <_ZL6digits+0x80>
    80006314:	00001097          	auipc	ra,0x1
    80006318:	928080e7          	jalr	-1752(ra) # 80006c3c <panic>

000000008000631c <either_copyin>:
    8000631c:	ff010113          	addi	sp,sp,-16
    80006320:	00813023          	sd	s0,0(sp)
    80006324:	00113423          	sd	ra,8(sp)
    80006328:	01010413          	addi	s0,sp,16
    8000632c:	02059463          	bnez	a1,80006354 <either_copyin+0x38>
    80006330:	00060593          	mv	a1,a2
    80006334:	0006861b          	sext.w	a2,a3
    80006338:	00002097          	auipc	ra,0x2
    8000633c:	c0c080e7          	jalr	-1012(ra) # 80007f44 <__memmove>
    80006340:	00813083          	ld	ra,8(sp)
    80006344:	00013403          	ld	s0,0(sp)
    80006348:	00000513          	li	a0,0
    8000634c:	01010113          	addi	sp,sp,16
    80006350:	00008067          	ret
    80006354:	00003517          	auipc	a0,0x3
    80006358:	12450513          	addi	a0,a0,292 # 80009478 <_ZL6digits+0xa8>
    8000635c:	00001097          	auipc	ra,0x1
    80006360:	8e0080e7          	jalr	-1824(ra) # 80006c3c <panic>

0000000080006364 <trapinit>:
    80006364:	ff010113          	addi	sp,sp,-16
    80006368:	00813423          	sd	s0,8(sp)
    8000636c:	01010413          	addi	s0,sp,16
    80006370:	00813403          	ld	s0,8(sp)
    80006374:	00003597          	auipc	a1,0x3
    80006378:	12c58593          	addi	a1,a1,300 # 800094a0 <_ZL6digits+0xd0>
    8000637c:	00006517          	auipc	a0,0x6
    80006380:	72450513          	addi	a0,a0,1828 # 8000caa0 <tickslock>
    80006384:	01010113          	addi	sp,sp,16
    80006388:	00001317          	auipc	t1,0x1
    8000638c:	5c030067          	jr	1472(t1) # 80007948 <initlock>

0000000080006390 <trapinithart>:
    80006390:	ff010113          	addi	sp,sp,-16
    80006394:	00813423          	sd	s0,8(sp)
    80006398:	01010413          	addi	s0,sp,16
    8000639c:	00000797          	auipc	a5,0x0
    800063a0:	2f478793          	addi	a5,a5,756 # 80006690 <kernelvec>
    800063a4:	10579073          	csrw	stvec,a5
    800063a8:	00813403          	ld	s0,8(sp)
    800063ac:	01010113          	addi	sp,sp,16
    800063b0:	00008067          	ret

00000000800063b4 <usertrap>:
    800063b4:	ff010113          	addi	sp,sp,-16
    800063b8:	00813423          	sd	s0,8(sp)
    800063bc:	01010413          	addi	s0,sp,16
    800063c0:	00813403          	ld	s0,8(sp)
    800063c4:	01010113          	addi	sp,sp,16
    800063c8:	00008067          	ret

00000000800063cc <usertrapret>:
    800063cc:	ff010113          	addi	sp,sp,-16
    800063d0:	00813423          	sd	s0,8(sp)
    800063d4:	01010413          	addi	s0,sp,16
    800063d8:	00813403          	ld	s0,8(sp)
    800063dc:	01010113          	addi	sp,sp,16
    800063e0:	00008067          	ret

00000000800063e4 <kerneltrap>:
    800063e4:	fe010113          	addi	sp,sp,-32
    800063e8:	00813823          	sd	s0,16(sp)
    800063ec:	00113c23          	sd	ra,24(sp)
    800063f0:	00913423          	sd	s1,8(sp)
    800063f4:	02010413          	addi	s0,sp,32
    800063f8:	142025f3          	csrr	a1,scause
    800063fc:	100027f3          	csrr	a5,sstatus
    80006400:	0027f793          	andi	a5,a5,2
    80006404:	10079c63          	bnez	a5,8000651c <kerneltrap+0x138>
    80006408:	142027f3          	csrr	a5,scause
    8000640c:	0207ce63          	bltz	a5,80006448 <kerneltrap+0x64>
    80006410:	00003517          	auipc	a0,0x3
    80006414:	0d850513          	addi	a0,a0,216 # 800094e8 <_ZL6digits+0x118>
    80006418:	00001097          	auipc	ra,0x1
    8000641c:	880080e7          	jalr	-1920(ra) # 80006c98 <__printf>
    80006420:	141025f3          	csrr	a1,sepc
    80006424:	14302673          	csrr	a2,stval
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	0d050513          	addi	a0,a0,208 # 800094f8 <_ZL6digits+0x128>
    80006430:	00001097          	auipc	ra,0x1
    80006434:	868080e7          	jalr	-1944(ra) # 80006c98 <__printf>
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	0d850513          	addi	a0,a0,216 # 80009510 <_ZL6digits+0x140>
    80006440:	00000097          	auipc	ra,0x0
    80006444:	7fc080e7          	jalr	2044(ra) # 80006c3c <panic>
    80006448:	0ff7f713          	andi	a4,a5,255
    8000644c:	00900693          	li	a3,9
    80006450:	04d70063          	beq	a4,a3,80006490 <kerneltrap+0xac>
    80006454:	fff00713          	li	a4,-1
    80006458:	03f71713          	slli	a4,a4,0x3f
    8000645c:	00170713          	addi	a4,a4,1
    80006460:	fae798e3          	bne	a5,a4,80006410 <kerneltrap+0x2c>
    80006464:	00000097          	auipc	ra,0x0
    80006468:	e00080e7          	jalr	-512(ra) # 80006264 <cpuid>
    8000646c:	06050663          	beqz	a0,800064d8 <kerneltrap+0xf4>
    80006470:	144027f3          	csrr	a5,sip
    80006474:	ffd7f793          	andi	a5,a5,-3
    80006478:	14479073          	csrw	sip,a5
    8000647c:	01813083          	ld	ra,24(sp)
    80006480:	01013403          	ld	s0,16(sp)
    80006484:	00813483          	ld	s1,8(sp)
    80006488:	02010113          	addi	sp,sp,32
    8000648c:	00008067          	ret
    80006490:	00000097          	auipc	ra,0x0
    80006494:	3c4080e7          	jalr	964(ra) # 80006854 <plic_claim>
    80006498:	00a00793          	li	a5,10
    8000649c:	00050493          	mv	s1,a0
    800064a0:	06f50863          	beq	a0,a5,80006510 <kerneltrap+0x12c>
    800064a4:	fc050ce3          	beqz	a0,8000647c <kerneltrap+0x98>
    800064a8:	00050593          	mv	a1,a0
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	01c50513          	addi	a0,a0,28 # 800094c8 <_ZL6digits+0xf8>
    800064b4:	00000097          	auipc	ra,0x0
    800064b8:	7e4080e7          	jalr	2020(ra) # 80006c98 <__printf>
    800064bc:	01013403          	ld	s0,16(sp)
    800064c0:	01813083          	ld	ra,24(sp)
    800064c4:	00048513          	mv	a0,s1
    800064c8:	00813483          	ld	s1,8(sp)
    800064cc:	02010113          	addi	sp,sp,32
    800064d0:	00000317          	auipc	t1,0x0
    800064d4:	3bc30067          	jr	956(t1) # 8000688c <plic_complete>
    800064d8:	00006517          	auipc	a0,0x6
    800064dc:	5c850513          	addi	a0,a0,1480 # 8000caa0 <tickslock>
    800064e0:	00001097          	auipc	ra,0x1
    800064e4:	48c080e7          	jalr	1164(ra) # 8000796c <acquire>
    800064e8:	00005717          	auipc	a4,0x5
    800064ec:	40c70713          	addi	a4,a4,1036 # 8000b8f4 <ticks>
    800064f0:	00072783          	lw	a5,0(a4)
    800064f4:	00006517          	auipc	a0,0x6
    800064f8:	5ac50513          	addi	a0,a0,1452 # 8000caa0 <tickslock>
    800064fc:	0017879b          	addiw	a5,a5,1
    80006500:	00f72023          	sw	a5,0(a4)
    80006504:	00001097          	auipc	ra,0x1
    80006508:	534080e7          	jalr	1332(ra) # 80007a38 <release>
    8000650c:	f65ff06f          	j	80006470 <kerneltrap+0x8c>
    80006510:	00001097          	auipc	ra,0x1
    80006514:	090080e7          	jalr	144(ra) # 800075a0 <uartintr>
    80006518:	fa5ff06f          	j	800064bc <kerneltrap+0xd8>
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	f8c50513          	addi	a0,a0,-116 # 800094a8 <_ZL6digits+0xd8>
    80006524:	00000097          	auipc	ra,0x0
    80006528:	718080e7          	jalr	1816(ra) # 80006c3c <panic>

000000008000652c <clockintr>:
    8000652c:	fe010113          	addi	sp,sp,-32
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	00113c23          	sd	ra,24(sp)
    8000653c:	02010413          	addi	s0,sp,32
    80006540:	00006497          	auipc	s1,0x6
    80006544:	56048493          	addi	s1,s1,1376 # 8000caa0 <tickslock>
    80006548:	00048513          	mv	a0,s1
    8000654c:	00001097          	auipc	ra,0x1
    80006550:	420080e7          	jalr	1056(ra) # 8000796c <acquire>
    80006554:	00005717          	auipc	a4,0x5
    80006558:	3a070713          	addi	a4,a4,928 # 8000b8f4 <ticks>
    8000655c:	00072783          	lw	a5,0(a4)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	01813083          	ld	ra,24(sp)
    80006568:	00048513          	mv	a0,s1
    8000656c:	0017879b          	addiw	a5,a5,1
    80006570:	00813483          	ld	s1,8(sp)
    80006574:	00f72023          	sw	a5,0(a4)
    80006578:	02010113          	addi	sp,sp,32
    8000657c:	00001317          	auipc	t1,0x1
    80006580:	4bc30067          	jr	1212(t1) # 80007a38 <release>

0000000080006584 <devintr>:
    80006584:	142027f3          	csrr	a5,scause
    80006588:	00000513          	li	a0,0
    8000658c:	0007c463          	bltz	a5,80006594 <devintr+0x10>
    80006590:	00008067          	ret
    80006594:	fe010113          	addi	sp,sp,-32
    80006598:	00813823          	sd	s0,16(sp)
    8000659c:	00113c23          	sd	ra,24(sp)
    800065a0:	00913423          	sd	s1,8(sp)
    800065a4:	02010413          	addi	s0,sp,32
    800065a8:	0ff7f713          	andi	a4,a5,255
    800065ac:	00900693          	li	a3,9
    800065b0:	04d70c63          	beq	a4,a3,80006608 <devintr+0x84>
    800065b4:	fff00713          	li	a4,-1
    800065b8:	03f71713          	slli	a4,a4,0x3f
    800065bc:	00170713          	addi	a4,a4,1
    800065c0:	00e78c63          	beq	a5,a4,800065d8 <devintr+0x54>
    800065c4:	01813083          	ld	ra,24(sp)
    800065c8:	01013403          	ld	s0,16(sp)
    800065cc:	00813483          	ld	s1,8(sp)
    800065d0:	02010113          	addi	sp,sp,32
    800065d4:	00008067          	ret
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	c8c080e7          	jalr	-884(ra) # 80006264 <cpuid>
    800065e0:	06050663          	beqz	a0,8000664c <devintr+0xc8>
    800065e4:	144027f3          	csrr	a5,sip
    800065e8:	ffd7f793          	andi	a5,a5,-3
    800065ec:	14479073          	csrw	sip,a5
    800065f0:	01813083          	ld	ra,24(sp)
    800065f4:	01013403          	ld	s0,16(sp)
    800065f8:	00813483          	ld	s1,8(sp)
    800065fc:	00200513          	li	a0,2
    80006600:	02010113          	addi	sp,sp,32
    80006604:	00008067          	ret
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	24c080e7          	jalr	588(ra) # 80006854 <plic_claim>
    80006610:	00a00793          	li	a5,10
    80006614:	00050493          	mv	s1,a0
    80006618:	06f50663          	beq	a0,a5,80006684 <devintr+0x100>
    8000661c:	00100513          	li	a0,1
    80006620:	fa0482e3          	beqz	s1,800065c4 <devintr+0x40>
    80006624:	00048593          	mv	a1,s1
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	ea050513          	addi	a0,a0,-352 # 800094c8 <_ZL6digits+0xf8>
    80006630:	00000097          	auipc	ra,0x0
    80006634:	668080e7          	jalr	1640(ra) # 80006c98 <__printf>
    80006638:	00048513          	mv	a0,s1
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	250080e7          	jalr	592(ra) # 8000688c <plic_complete>
    80006644:	00100513          	li	a0,1
    80006648:	f7dff06f          	j	800065c4 <devintr+0x40>
    8000664c:	00006517          	auipc	a0,0x6
    80006650:	45450513          	addi	a0,a0,1108 # 8000caa0 <tickslock>
    80006654:	00001097          	auipc	ra,0x1
    80006658:	318080e7          	jalr	792(ra) # 8000796c <acquire>
    8000665c:	00005717          	auipc	a4,0x5
    80006660:	29870713          	addi	a4,a4,664 # 8000b8f4 <ticks>
    80006664:	00072783          	lw	a5,0(a4)
    80006668:	00006517          	auipc	a0,0x6
    8000666c:	43850513          	addi	a0,a0,1080 # 8000caa0 <tickslock>
    80006670:	0017879b          	addiw	a5,a5,1
    80006674:	00f72023          	sw	a5,0(a4)
    80006678:	00001097          	auipc	ra,0x1
    8000667c:	3c0080e7          	jalr	960(ra) # 80007a38 <release>
    80006680:	f65ff06f          	j	800065e4 <devintr+0x60>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	f1c080e7          	jalr	-228(ra) # 800075a0 <uartintr>
    8000668c:	fadff06f          	j	80006638 <devintr+0xb4>

0000000080006690 <kernelvec>:
    80006690:	f0010113          	addi	sp,sp,-256
    80006694:	00113023          	sd	ra,0(sp)
    80006698:	00213423          	sd	sp,8(sp)
    8000669c:	00313823          	sd	gp,16(sp)
    800066a0:	00413c23          	sd	tp,24(sp)
    800066a4:	02513023          	sd	t0,32(sp)
    800066a8:	02613423          	sd	t1,40(sp)
    800066ac:	02713823          	sd	t2,48(sp)
    800066b0:	02813c23          	sd	s0,56(sp)
    800066b4:	04913023          	sd	s1,64(sp)
    800066b8:	04a13423          	sd	a0,72(sp)
    800066bc:	04b13823          	sd	a1,80(sp)
    800066c0:	04c13c23          	sd	a2,88(sp)
    800066c4:	06d13023          	sd	a3,96(sp)
    800066c8:	06e13423          	sd	a4,104(sp)
    800066cc:	06f13823          	sd	a5,112(sp)
    800066d0:	07013c23          	sd	a6,120(sp)
    800066d4:	09113023          	sd	a7,128(sp)
    800066d8:	09213423          	sd	s2,136(sp)
    800066dc:	09313823          	sd	s3,144(sp)
    800066e0:	09413c23          	sd	s4,152(sp)
    800066e4:	0b513023          	sd	s5,160(sp)
    800066e8:	0b613423          	sd	s6,168(sp)
    800066ec:	0b713823          	sd	s7,176(sp)
    800066f0:	0b813c23          	sd	s8,184(sp)
    800066f4:	0d913023          	sd	s9,192(sp)
    800066f8:	0da13423          	sd	s10,200(sp)
    800066fc:	0db13823          	sd	s11,208(sp)
    80006700:	0dc13c23          	sd	t3,216(sp)
    80006704:	0fd13023          	sd	t4,224(sp)
    80006708:	0fe13423          	sd	t5,232(sp)
    8000670c:	0ff13823          	sd	t6,240(sp)
    80006710:	cd5ff0ef          	jal	ra,800063e4 <kerneltrap>
    80006714:	00013083          	ld	ra,0(sp)
    80006718:	00813103          	ld	sp,8(sp)
    8000671c:	01013183          	ld	gp,16(sp)
    80006720:	02013283          	ld	t0,32(sp)
    80006724:	02813303          	ld	t1,40(sp)
    80006728:	03013383          	ld	t2,48(sp)
    8000672c:	03813403          	ld	s0,56(sp)
    80006730:	04013483          	ld	s1,64(sp)
    80006734:	04813503          	ld	a0,72(sp)
    80006738:	05013583          	ld	a1,80(sp)
    8000673c:	05813603          	ld	a2,88(sp)
    80006740:	06013683          	ld	a3,96(sp)
    80006744:	06813703          	ld	a4,104(sp)
    80006748:	07013783          	ld	a5,112(sp)
    8000674c:	07813803          	ld	a6,120(sp)
    80006750:	08013883          	ld	a7,128(sp)
    80006754:	08813903          	ld	s2,136(sp)
    80006758:	09013983          	ld	s3,144(sp)
    8000675c:	09813a03          	ld	s4,152(sp)
    80006760:	0a013a83          	ld	s5,160(sp)
    80006764:	0a813b03          	ld	s6,168(sp)
    80006768:	0b013b83          	ld	s7,176(sp)
    8000676c:	0b813c03          	ld	s8,184(sp)
    80006770:	0c013c83          	ld	s9,192(sp)
    80006774:	0c813d03          	ld	s10,200(sp)
    80006778:	0d013d83          	ld	s11,208(sp)
    8000677c:	0d813e03          	ld	t3,216(sp)
    80006780:	0e013e83          	ld	t4,224(sp)
    80006784:	0e813f03          	ld	t5,232(sp)
    80006788:	0f013f83          	ld	t6,240(sp)
    8000678c:	10010113          	addi	sp,sp,256
    80006790:	10200073          	sret
    80006794:	00000013          	nop
    80006798:	00000013          	nop
    8000679c:	00000013          	nop

00000000800067a0 <timervec>:
    800067a0:	34051573          	csrrw	a0,mscratch,a0
    800067a4:	00b53023          	sd	a1,0(a0)
    800067a8:	00c53423          	sd	a2,8(a0)
    800067ac:	00d53823          	sd	a3,16(a0)
    800067b0:	01853583          	ld	a1,24(a0)
    800067b4:	02053603          	ld	a2,32(a0)
    800067b8:	0005b683          	ld	a3,0(a1)
    800067bc:	00c686b3          	add	a3,a3,a2
    800067c0:	00d5b023          	sd	a3,0(a1)
    800067c4:	00200593          	li	a1,2
    800067c8:	14459073          	csrw	sip,a1
    800067cc:	01053683          	ld	a3,16(a0)
    800067d0:	00853603          	ld	a2,8(a0)
    800067d4:	00053583          	ld	a1,0(a0)
    800067d8:	34051573          	csrrw	a0,mscratch,a0
    800067dc:	30200073          	mret

00000000800067e0 <plicinit>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813423          	sd	s0,8(sp)
    800067e8:	01010413          	addi	s0,sp,16
    800067ec:	00813403          	ld	s0,8(sp)
    800067f0:	0c0007b7          	lui	a5,0xc000
    800067f4:	00100713          	li	a4,1
    800067f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800067fc:	00e7a223          	sw	a4,4(a5)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret

0000000080006808 <plicinithart>:
    80006808:	ff010113          	addi	sp,sp,-16
    8000680c:	00813023          	sd	s0,0(sp)
    80006810:	00113423          	sd	ra,8(sp)
    80006814:	01010413          	addi	s0,sp,16
    80006818:	00000097          	auipc	ra,0x0
    8000681c:	a4c080e7          	jalr	-1460(ra) # 80006264 <cpuid>
    80006820:	0085171b          	slliw	a4,a0,0x8
    80006824:	0c0027b7          	lui	a5,0xc002
    80006828:	00e787b3          	add	a5,a5,a4
    8000682c:	40200713          	li	a4,1026
    80006830:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006834:	00813083          	ld	ra,8(sp)
    80006838:	00013403          	ld	s0,0(sp)
    8000683c:	00d5151b          	slliw	a0,a0,0xd
    80006840:	0c2017b7          	lui	a5,0xc201
    80006844:	00a78533          	add	a0,a5,a0
    80006848:	00052023          	sw	zero,0(a0)
    8000684c:	01010113          	addi	sp,sp,16
    80006850:	00008067          	ret

0000000080006854 <plic_claim>:
    80006854:	ff010113          	addi	sp,sp,-16
    80006858:	00813023          	sd	s0,0(sp)
    8000685c:	00113423          	sd	ra,8(sp)
    80006860:	01010413          	addi	s0,sp,16
    80006864:	00000097          	auipc	ra,0x0
    80006868:	a00080e7          	jalr	-1536(ra) # 80006264 <cpuid>
    8000686c:	00813083          	ld	ra,8(sp)
    80006870:	00013403          	ld	s0,0(sp)
    80006874:	00d5151b          	slliw	a0,a0,0xd
    80006878:	0c2017b7          	lui	a5,0xc201
    8000687c:	00a78533          	add	a0,a5,a0
    80006880:	00452503          	lw	a0,4(a0)
    80006884:	01010113          	addi	sp,sp,16
    80006888:	00008067          	ret

000000008000688c <plic_complete>:
    8000688c:	fe010113          	addi	sp,sp,-32
    80006890:	00813823          	sd	s0,16(sp)
    80006894:	00913423          	sd	s1,8(sp)
    80006898:	00113c23          	sd	ra,24(sp)
    8000689c:	02010413          	addi	s0,sp,32
    800068a0:	00050493          	mv	s1,a0
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	9c0080e7          	jalr	-1600(ra) # 80006264 <cpuid>
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	00d5179b          	slliw	a5,a0,0xd
    800068b8:	0c201737          	lui	a4,0xc201
    800068bc:	00f707b3          	add	a5,a4,a5
    800068c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800068c4:	00813483          	ld	s1,8(sp)
    800068c8:	02010113          	addi	sp,sp,32
    800068cc:	00008067          	ret

00000000800068d0 <consolewrite>:
    800068d0:	fb010113          	addi	sp,sp,-80
    800068d4:	04813023          	sd	s0,64(sp)
    800068d8:	04113423          	sd	ra,72(sp)
    800068dc:	02913c23          	sd	s1,56(sp)
    800068e0:	03213823          	sd	s2,48(sp)
    800068e4:	03313423          	sd	s3,40(sp)
    800068e8:	03413023          	sd	s4,32(sp)
    800068ec:	01513c23          	sd	s5,24(sp)
    800068f0:	05010413          	addi	s0,sp,80
    800068f4:	06c05c63          	blez	a2,8000696c <consolewrite+0x9c>
    800068f8:	00060993          	mv	s3,a2
    800068fc:	00050a13          	mv	s4,a0
    80006900:	00058493          	mv	s1,a1
    80006904:	00000913          	li	s2,0
    80006908:	fff00a93          	li	s5,-1
    8000690c:	01c0006f          	j	80006928 <consolewrite+0x58>
    80006910:	fbf44503          	lbu	a0,-65(s0)
    80006914:	0019091b          	addiw	s2,s2,1
    80006918:	00148493          	addi	s1,s1,1
    8000691c:	00001097          	auipc	ra,0x1
    80006920:	a9c080e7          	jalr	-1380(ra) # 800073b8 <uartputc>
    80006924:	03298063          	beq	s3,s2,80006944 <consolewrite+0x74>
    80006928:	00048613          	mv	a2,s1
    8000692c:	00100693          	li	a3,1
    80006930:	000a0593          	mv	a1,s4
    80006934:	fbf40513          	addi	a0,s0,-65
    80006938:	00000097          	auipc	ra,0x0
    8000693c:	9e4080e7          	jalr	-1564(ra) # 8000631c <either_copyin>
    80006940:	fd5518e3          	bne	a0,s5,80006910 <consolewrite+0x40>
    80006944:	04813083          	ld	ra,72(sp)
    80006948:	04013403          	ld	s0,64(sp)
    8000694c:	03813483          	ld	s1,56(sp)
    80006950:	02813983          	ld	s3,40(sp)
    80006954:	02013a03          	ld	s4,32(sp)
    80006958:	01813a83          	ld	s5,24(sp)
    8000695c:	00090513          	mv	a0,s2
    80006960:	03013903          	ld	s2,48(sp)
    80006964:	05010113          	addi	sp,sp,80
    80006968:	00008067          	ret
    8000696c:	00000913          	li	s2,0
    80006970:	fd5ff06f          	j	80006944 <consolewrite+0x74>

0000000080006974 <consoleread>:
    80006974:	f9010113          	addi	sp,sp,-112
    80006978:	06813023          	sd	s0,96(sp)
    8000697c:	04913c23          	sd	s1,88(sp)
    80006980:	05213823          	sd	s2,80(sp)
    80006984:	05313423          	sd	s3,72(sp)
    80006988:	05413023          	sd	s4,64(sp)
    8000698c:	03513c23          	sd	s5,56(sp)
    80006990:	03613823          	sd	s6,48(sp)
    80006994:	03713423          	sd	s7,40(sp)
    80006998:	03813023          	sd	s8,32(sp)
    8000699c:	06113423          	sd	ra,104(sp)
    800069a0:	01913c23          	sd	s9,24(sp)
    800069a4:	07010413          	addi	s0,sp,112
    800069a8:	00060b93          	mv	s7,a2
    800069ac:	00050913          	mv	s2,a0
    800069b0:	00058c13          	mv	s8,a1
    800069b4:	00060b1b          	sext.w	s6,a2
    800069b8:	00006497          	auipc	s1,0x6
    800069bc:	11048493          	addi	s1,s1,272 # 8000cac8 <cons>
    800069c0:	00400993          	li	s3,4
    800069c4:	fff00a13          	li	s4,-1
    800069c8:	00a00a93          	li	s5,10
    800069cc:	05705e63          	blez	s7,80006a28 <consoleread+0xb4>
    800069d0:	09c4a703          	lw	a4,156(s1)
    800069d4:	0984a783          	lw	a5,152(s1)
    800069d8:	0007071b          	sext.w	a4,a4
    800069dc:	08e78463          	beq	a5,a4,80006a64 <consoleread+0xf0>
    800069e0:	07f7f713          	andi	a4,a5,127
    800069e4:	00e48733          	add	a4,s1,a4
    800069e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800069ec:	0017869b          	addiw	a3,a5,1
    800069f0:	08d4ac23          	sw	a3,152(s1)
    800069f4:	00070c9b          	sext.w	s9,a4
    800069f8:	0b370663          	beq	a4,s3,80006aa4 <consoleread+0x130>
    800069fc:	00100693          	li	a3,1
    80006a00:	f9f40613          	addi	a2,s0,-97
    80006a04:	000c0593          	mv	a1,s8
    80006a08:	00090513          	mv	a0,s2
    80006a0c:	f8e40fa3          	sb	a4,-97(s0)
    80006a10:	00000097          	auipc	ra,0x0
    80006a14:	8c0080e7          	jalr	-1856(ra) # 800062d0 <either_copyout>
    80006a18:	01450863          	beq	a0,s4,80006a28 <consoleread+0xb4>
    80006a1c:	001c0c13          	addi	s8,s8,1
    80006a20:	fffb8b9b          	addiw	s7,s7,-1
    80006a24:	fb5c94e3          	bne	s9,s5,800069cc <consoleread+0x58>
    80006a28:	000b851b          	sext.w	a0,s7
    80006a2c:	06813083          	ld	ra,104(sp)
    80006a30:	06013403          	ld	s0,96(sp)
    80006a34:	05813483          	ld	s1,88(sp)
    80006a38:	05013903          	ld	s2,80(sp)
    80006a3c:	04813983          	ld	s3,72(sp)
    80006a40:	04013a03          	ld	s4,64(sp)
    80006a44:	03813a83          	ld	s5,56(sp)
    80006a48:	02813b83          	ld	s7,40(sp)
    80006a4c:	02013c03          	ld	s8,32(sp)
    80006a50:	01813c83          	ld	s9,24(sp)
    80006a54:	40ab053b          	subw	a0,s6,a0
    80006a58:	03013b03          	ld	s6,48(sp)
    80006a5c:	07010113          	addi	sp,sp,112
    80006a60:	00008067          	ret
    80006a64:	00001097          	auipc	ra,0x1
    80006a68:	1d8080e7          	jalr	472(ra) # 80007c3c <push_on>
    80006a6c:	0984a703          	lw	a4,152(s1)
    80006a70:	09c4a783          	lw	a5,156(s1)
    80006a74:	0007879b          	sext.w	a5,a5
    80006a78:	fef70ce3          	beq	a4,a5,80006a70 <consoleread+0xfc>
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	234080e7          	jalr	564(ra) # 80007cb0 <pop_on>
    80006a84:	0984a783          	lw	a5,152(s1)
    80006a88:	07f7f713          	andi	a4,a5,127
    80006a8c:	00e48733          	add	a4,s1,a4
    80006a90:	01874703          	lbu	a4,24(a4)
    80006a94:	0017869b          	addiw	a3,a5,1
    80006a98:	08d4ac23          	sw	a3,152(s1)
    80006a9c:	00070c9b          	sext.w	s9,a4
    80006aa0:	f5371ee3          	bne	a4,s3,800069fc <consoleread+0x88>
    80006aa4:	000b851b          	sext.w	a0,s7
    80006aa8:	f96bf2e3          	bgeu	s7,s6,80006a2c <consoleread+0xb8>
    80006aac:	08f4ac23          	sw	a5,152(s1)
    80006ab0:	f7dff06f          	j	80006a2c <consoleread+0xb8>

0000000080006ab4 <consputc>:
    80006ab4:	10000793          	li	a5,256
    80006ab8:	00f50663          	beq	a0,a5,80006ac4 <consputc+0x10>
    80006abc:	00001317          	auipc	t1,0x1
    80006ac0:	9f430067          	jr	-1548(t1) # 800074b0 <uartputc_sync>
    80006ac4:	ff010113          	addi	sp,sp,-16
    80006ac8:	00113423          	sd	ra,8(sp)
    80006acc:	00813023          	sd	s0,0(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	00800513          	li	a0,8
    80006ad8:	00001097          	auipc	ra,0x1
    80006adc:	9d8080e7          	jalr	-1576(ra) # 800074b0 <uartputc_sync>
    80006ae0:	02000513          	li	a0,32
    80006ae4:	00001097          	auipc	ra,0x1
    80006ae8:	9cc080e7          	jalr	-1588(ra) # 800074b0 <uartputc_sync>
    80006aec:	00013403          	ld	s0,0(sp)
    80006af0:	00813083          	ld	ra,8(sp)
    80006af4:	00800513          	li	a0,8
    80006af8:	01010113          	addi	sp,sp,16
    80006afc:	00001317          	auipc	t1,0x1
    80006b00:	9b430067          	jr	-1612(t1) # 800074b0 <uartputc_sync>

0000000080006b04 <consoleintr>:
    80006b04:	fe010113          	addi	sp,sp,-32
    80006b08:	00813823          	sd	s0,16(sp)
    80006b0c:	00913423          	sd	s1,8(sp)
    80006b10:	01213023          	sd	s2,0(sp)
    80006b14:	00113c23          	sd	ra,24(sp)
    80006b18:	02010413          	addi	s0,sp,32
    80006b1c:	00006917          	auipc	s2,0x6
    80006b20:	fac90913          	addi	s2,s2,-84 # 8000cac8 <cons>
    80006b24:	00050493          	mv	s1,a0
    80006b28:	00090513          	mv	a0,s2
    80006b2c:	00001097          	auipc	ra,0x1
    80006b30:	e40080e7          	jalr	-448(ra) # 8000796c <acquire>
    80006b34:	02048c63          	beqz	s1,80006b6c <consoleintr+0x68>
    80006b38:	0a092783          	lw	a5,160(s2)
    80006b3c:	09892703          	lw	a4,152(s2)
    80006b40:	07f00693          	li	a3,127
    80006b44:	40e7873b          	subw	a4,a5,a4
    80006b48:	02e6e263          	bltu	a3,a4,80006b6c <consoleintr+0x68>
    80006b4c:	00d00713          	li	a4,13
    80006b50:	04e48063          	beq	s1,a4,80006b90 <consoleintr+0x8c>
    80006b54:	07f7f713          	andi	a4,a5,127
    80006b58:	00e90733          	add	a4,s2,a4
    80006b5c:	0017879b          	addiw	a5,a5,1
    80006b60:	0af92023          	sw	a5,160(s2)
    80006b64:	00970c23          	sb	s1,24(a4)
    80006b68:	08f92e23          	sw	a5,156(s2)
    80006b6c:	01013403          	ld	s0,16(sp)
    80006b70:	01813083          	ld	ra,24(sp)
    80006b74:	00813483          	ld	s1,8(sp)
    80006b78:	00013903          	ld	s2,0(sp)
    80006b7c:	00006517          	auipc	a0,0x6
    80006b80:	f4c50513          	addi	a0,a0,-180 # 8000cac8 <cons>
    80006b84:	02010113          	addi	sp,sp,32
    80006b88:	00001317          	auipc	t1,0x1
    80006b8c:	eb030067          	jr	-336(t1) # 80007a38 <release>
    80006b90:	00a00493          	li	s1,10
    80006b94:	fc1ff06f          	j	80006b54 <consoleintr+0x50>

0000000080006b98 <consoleinit>:
    80006b98:	fe010113          	addi	sp,sp,-32
    80006b9c:	00113c23          	sd	ra,24(sp)
    80006ba0:	00813823          	sd	s0,16(sp)
    80006ba4:	00913423          	sd	s1,8(sp)
    80006ba8:	02010413          	addi	s0,sp,32
    80006bac:	00006497          	auipc	s1,0x6
    80006bb0:	f1c48493          	addi	s1,s1,-228 # 8000cac8 <cons>
    80006bb4:	00048513          	mv	a0,s1
    80006bb8:	00003597          	auipc	a1,0x3
    80006bbc:	96858593          	addi	a1,a1,-1688 # 80009520 <_ZL6digits+0x150>
    80006bc0:	00001097          	auipc	ra,0x1
    80006bc4:	d88080e7          	jalr	-632(ra) # 80007948 <initlock>
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	7ac080e7          	jalr	1964(ra) # 80007374 <uartinit>
    80006bd0:	01813083          	ld	ra,24(sp)
    80006bd4:	01013403          	ld	s0,16(sp)
    80006bd8:	00000797          	auipc	a5,0x0
    80006bdc:	d9c78793          	addi	a5,a5,-612 # 80006974 <consoleread>
    80006be0:	0af4bc23          	sd	a5,184(s1)
    80006be4:	00000797          	auipc	a5,0x0
    80006be8:	cec78793          	addi	a5,a5,-788 # 800068d0 <consolewrite>
    80006bec:	0cf4b023          	sd	a5,192(s1)
    80006bf0:	00813483          	ld	s1,8(sp)
    80006bf4:	02010113          	addi	sp,sp,32
    80006bf8:	00008067          	ret

0000000080006bfc <console_read>:
    80006bfc:	ff010113          	addi	sp,sp,-16
    80006c00:	00813423          	sd	s0,8(sp)
    80006c04:	01010413          	addi	s0,sp,16
    80006c08:	00813403          	ld	s0,8(sp)
    80006c0c:	00006317          	auipc	t1,0x6
    80006c10:	f7433303          	ld	t1,-140(t1) # 8000cb80 <devsw+0x10>
    80006c14:	01010113          	addi	sp,sp,16
    80006c18:	00030067          	jr	t1

0000000080006c1c <console_write>:
    80006c1c:	ff010113          	addi	sp,sp,-16
    80006c20:	00813423          	sd	s0,8(sp)
    80006c24:	01010413          	addi	s0,sp,16
    80006c28:	00813403          	ld	s0,8(sp)
    80006c2c:	00006317          	auipc	t1,0x6
    80006c30:	f5c33303          	ld	t1,-164(t1) # 8000cb88 <devsw+0x18>
    80006c34:	01010113          	addi	sp,sp,16
    80006c38:	00030067          	jr	t1

0000000080006c3c <panic>:
    80006c3c:	fe010113          	addi	sp,sp,-32
    80006c40:	00113c23          	sd	ra,24(sp)
    80006c44:	00813823          	sd	s0,16(sp)
    80006c48:	00913423          	sd	s1,8(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    80006c50:	00050493          	mv	s1,a0
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	8d450513          	addi	a0,a0,-1836 # 80009528 <_ZL6digits+0x158>
    80006c5c:	00006797          	auipc	a5,0x6
    80006c60:	fc07a623          	sw	zero,-52(a5) # 8000cc28 <pr+0x18>
    80006c64:	00000097          	auipc	ra,0x0
    80006c68:	034080e7          	jalr	52(ra) # 80006c98 <__printf>
    80006c6c:	00048513          	mv	a0,s1
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	028080e7          	jalr	40(ra) # 80006c98 <__printf>
    80006c78:	00002517          	auipc	a0,0x2
    80006c7c:	51050513          	addi	a0,a0,1296 # 80009188 <CONSOLE_STATUS+0x178>
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	018080e7          	jalr	24(ra) # 80006c98 <__printf>
    80006c88:	00100793          	li	a5,1
    80006c8c:	00005717          	auipc	a4,0x5
    80006c90:	c6f72623          	sw	a5,-916(a4) # 8000b8f8 <panicked>
    80006c94:	0000006f          	j	80006c94 <panic+0x58>

0000000080006c98 <__printf>:
    80006c98:	f3010113          	addi	sp,sp,-208
    80006c9c:	08813023          	sd	s0,128(sp)
    80006ca0:	07313423          	sd	s3,104(sp)
    80006ca4:	09010413          	addi	s0,sp,144
    80006ca8:	05813023          	sd	s8,64(sp)
    80006cac:	08113423          	sd	ra,136(sp)
    80006cb0:	06913c23          	sd	s1,120(sp)
    80006cb4:	07213823          	sd	s2,112(sp)
    80006cb8:	07413023          	sd	s4,96(sp)
    80006cbc:	05513c23          	sd	s5,88(sp)
    80006cc0:	05613823          	sd	s6,80(sp)
    80006cc4:	05713423          	sd	s7,72(sp)
    80006cc8:	03913c23          	sd	s9,56(sp)
    80006ccc:	03a13823          	sd	s10,48(sp)
    80006cd0:	03b13423          	sd	s11,40(sp)
    80006cd4:	00006317          	auipc	t1,0x6
    80006cd8:	f3c30313          	addi	t1,t1,-196 # 8000cc10 <pr>
    80006cdc:	01832c03          	lw	s8,24(t1)
    80006ce0:	00b43423          	sd	a1,8(s0)
    80006ce4:	00c43823          	sd	a2,16(s0)
    80006ce8:	00d43c23          	sd	a3,24(s0)
    80006cec:	02e43023          	sd	a4,32(s0)
    80006cf0:	02f43423          	sd	a5,40(s0)
    80006cf4:	03043823          	sd	a6,48(s0)
    80006cf8:	03143c23          	sd	a7,56(s0)
    80006cfc:	00050993          	mv	s3,a0
    80006d00:	4a0c1663          	bnez	s8,800071ac <__printf+0x514>
    80006d04:	60098c63          	beqz	s3,8000731c <__printf+0x684>
    80006d08:	0009c503          	lbu	a0,0(s3)
    80006d0c:	00840793          	addi	a5,s0,8
    80006d10:	f6f43c23          	sd	a5,-136(s0)
    80006d14:	00000493          	li	s1,0
    80006d18:	22050063          	beqz	a0,80006f38 <__printf+0x2a0>
    80006d1c:	00002a37          	lui	s4,0x2
    80006d20:	00018ab7          	lui	s5,0x18
    80006d24:	000f4b37          	lui	s6,0xf4
    80006d28:	00989bb7          	lui	s7,0x989
    80006d2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006d30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006d34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006d38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006d3c:	00148c9b          	addiw	s9,s1,1
    80006d40:	02500793          	li	a5,37
    80006d44:	01998933          	add	s2,s3,s9
    80006d48:	38f51263          	bne	a0,a5,800070cc <__printf+0x434>
    80006d4c:	00094783          	lbu	a5,0(s2)
    80006d50:	00078c9b          	sext.w	s9,a5
    80006d54:	1e078263          	beqz	a5,80006f38 <__printf+0x2a0>
    80006d58:	0024849b          	addiw	s1,s1,2
    80006d5c:	07000713          	li	a4,112
    80006d60:	00998933          	add	s2,s3,s1
    80006d64:	38e78a63          	beq	a5,a4,800070f8 <__printf+0x460>
    80006d68:	20f76863          	bltu	a4,a5,80006f78 <__printf+0x2e0>
    80006d6c:	42a78863          	beq	a5,a0,8000719c <__printf+0x504>
    80006d70:	06400713          	li	a4,100
    80006d74:	40e79663          	bne	a5,a4,80007180 <__printf+0x4e8>
    80006d78:	f7843783          	ld	a5,-136(s0)
    80006d7c:	0007a603          	lw	a2,0(a5)
    80006d80:	00878793          	addi	a5,a5,8
    80006d84:	f6f43c23          	sd	a5,-136(s0)
    80006d88:	42064a63          	bltz	a2,800071bc <__printf+0x524>
    80006d8c:	00a00713          	li	a4,10
    80006d90:	02e677bb          	remuw	a5,a2,a4
    80006d94:	00002d97          	auipc	s11,0x2
    80006d98:	7bcd8d93          	addi	s11,s11,1980 # 80009550 <digits>
    80006d9c:	00900593          	li	a1,9
    80006da0:	0006051b          	sext.w	a0,a2
    80006da4:	00000c93          	li	s9,0
    80006da8:	02079793          	slli	a5,a5,0x20
    80006dac:	0207d793          	srli	a5,a5,0x20
    80006db0:	00fd87b3          	add	a5,s11,a5
    80006db4:	0007c783          	lbu	a5,0(a5)
    80006db8:	02e656bb          	divuw	a3,a2,a4
    80006dbc:	f8f40023          	sb	a5,-128(s0)
    80006dc0:	14c5d863          	bge	a1,a2,80006f10 <__printf+0x278>
    80006dc4:	06300593          	li	a1,99
    80006dc8:	00100c93          	li	s9,1
    80006dcc:	02e6f7bb          	remuw	a5,a3,a4
    80006dd0:	02079793          	slli	a5,a5,0x20
    80006dd4:	0207d793          	srli	a5,a5,0x20
    80006dd8:	00fd87b3          	add	a5,s11,a5
    80006ddc:	0007c783          	lbu	a5,0(a5)
    80006de0:	02e6d73b          	divuw	a4,a3,a4
    80006de4:	f8f400a3          	sb	a5,-127(s0)
    80006de8:	12a5f463          	bgeu	a1,a0,80006f10 <__printf+0x278>
    80006dec:	00a00693          	li	a3,10
    80006df0:	00900593          	li	a1,9
    80006df4:	02d777bb          	remuw	a5,a4,a3
    80006df8:	02079793          	slli	a5,a5,0x20
    80006dfc:	0207d793          	srli	a5,a5,0x20
    80006e00:	00fd87b3          	add	a5,s11,a5
    80006e04:	0007c503          	lbu	a0,0(a5)
    80006e08:	02d757bb          	divuw	a5,a4,a3
    80006e0c:	f8a40123          	sb	a0,-126(s0)
    80006e10:	48e5f263          	bgeu	a1,a4,80007294 <__printf+0x5fc>
    80006e14:	06300513          	li	a0,99
    80006e18:	02d7f5bb          	remuw	a1,a5,a3
    80006e1c:	02059593          	slli	a1,a1,0x20
    80006e20:	0205d593          	srli	a1,a1,0x20
    80006e24:	00bd85b3          	add	a1,s11,a1
    80006e28:	0005c583          	lbu	a1,0(a1)
    80006e2c:	02d7d7bb          	divuw	a5,a5,a3
    80006e30:	f8b401a3          	sb	a1,-125(s0)
    80006e34:	48e57263          	bgeu	a0,a4,800072b8 <__printf+0x620>
    80006e38:	3e700513          	li	a0,999
    80006e3c:	02d7f5bb          	remuw	a1,a5,a3
    80006e40:	02059593          	slli	a1,a1,0x20
    80006e44:	0205d593          	srli	a1,a1,0x20
    80006e48:	00bd85b3          	add	a1,s11,a1
    80006e4c:	0005c583          	lbu	a1,0(a1)
    80006e50:	02d7d7bb          	divuw	a5,a5,a3
    80006e54:	f8b40223          	sb	a1,-124(s0)
    80006e58:	46e57663          	bgeu	a0,a4,800072c4 <__printf+0x62c>
    80006e5c:	02d7f5bb          	remuw	a1,a5,a3
    80006e60:	02059593          	slli	a1,a1,0x20
    80006e64:	0205d593          	srli	a1,a1,0x20
    80006e68:	00bd85b3          	add	a1,s11,a1
    80006e6c:	0005c583          	lbu	a1,0(a1)
    80006e70:	02d7d7bb          	divuw	a5,a5,a3
    80006e74:	f8b402a3          	sb	a1,-123(s0)
    80006e78:	46ea7863          	bgeu	s4,a4,800072e8 <__printf+0x650>
    80006e7c:	02d7f5bb          	remuw	a1,a5,a3
    80006e80:	02059593          	slli	a1,a1,0x20
    80006e84:	0205d593          	srli	a1,a1,0x20
    80006e88:	00bd85b3          	add	a1,s11,a1
    80006e8c:	0005c583          	lbu	a1,0(a1)
    80006e90:	02d7d7bb          	divuw	a5,a5,a3
    80006e94:	f8b40323          	sb	a1,-122(s0)
    80006e98:	3eeaf863          	bgeu	s5,a4,80007288 <__printf+0x5f0>
    80006e9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ea0:	02059593          	slli	a1,a1,0x20
    80006ea4:	0205d593          	srli	a1,a1,0x20
    80006ea8:	00bd85b3          	add	a1,s11,a1
    80006eac:	0005c583          	lbu	a1,0(a1)
    80006eb0:	02d7d7bb          	divuw	a5,a5,a3
    80006eb4:	f8b403a3          	sb	a1,-121(s0)
    80006eb8:	42eb7e63          	bgeu	s6,a4,800072f4 <__printf+0x65c>
    80006ebc:	02d7f5bb          	remuw	a1,a5,a3
    80006ec0:	02059593          	slli	a1,a1,0x20
    80006ec4:	0205d593          	srli	a1,a1,0x20
    80006ec8:	00bd85b3          	add	a1,s11,a1
    80006ecc:	0005c583          	lbu	a1,0(a1)
    80006ed0:	02d7d7bb          	divuw	a5,a5,a3
    80006ed4:	f8b40423          	sb	a1,-120(s0)
    80006ed8:	42ebfc63          	bgeu	s7,a4,80007310 <__printf+0x678>
    80006edc:	02079793          	slli	a5,a5,0x20
    80006ee0:	0207d793          	srli	a5,a5,0x20
    80006ee4:	00fd8db3          	add	s11,s11,a5
    80006ee8:	000dc703          	lbu	a4,0(s11)
    80006eec:	00a00793          	li	a5,10
    80006ef0:	00900c93          	li	s9,9
    80006ef4:	f8e404a3          	sb	a4,-119(s0)
    80006ef8:	00065c63          	bgez	a2,80006f10 <__printf+0x278>
    80006efc:	f9040713          	addi	a4,s0,-112
    80006f00:	00f70733          	add	a4,a4,a5
    80006f04:	02d00693          	li	a3,45
    80006f08:	fed70823          	sb	a3,-16(a4)
    80006f0c:	00078c93          	mv	s9,a5
    80006f10:	f8040793          	addi	a5,s0,-128
    80006f14:	01978cb3          	add	s9,a5,s9
    80006f18:	f7f40d13          	addi	s10,s0,-129
    80006f1c:	000cc503          	lbu	a0,0(s9)
    80006f20:	fffc8c93          	addi	s9,s9,-1
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	b90080e7          	jalr	-1136(ra) # 80006ab4 <consputc>
    80006f2c:	ffac98e3          	bne	s9,s10,80006f1c <__printf+0x284>
    80006f30:	00094503          	lbu	a0,0(s2)
    80006f34:	e00514e3          	bnez	a0,80006d3c <__printf+0xa4>
    80006f38:	1a0c1663          	bnez	s8,800070e4 <__printf+0x44c>
    80006f3c:	08813083          	ld	ra,136(sp)
    80006f40:	08013403          	ld	s0,128(sp)
    80006f44:	07813483          	ld	s1,120(sp)
    80006f48:	07013903          	ld	s2,112(sp)
    80006f4c:	06813983          	ld	s3,104(sp)
    80006f50:	06013a03          	ld	s4,96(sp)
    80006f54:	05813a83          	ld	s5,88(sp)
    80006f58:	05013b03          	ld	s6,80(sp)
    80006f5c:	04813b83          	ld	s7,72(sp)
    80006f60:	04013c03          	ld	s8,64(sp)
    80006f64:	03813c83          	ld	s9,56(sp)
    80006f68:	03013d03          	ld	s10,48(sp)
    80006f6c:	02813d83          	ld	s11,40(sp)
    80006f70:	0d010113          	addi	sp,sp,208
    80006f74:	00008067          	ret
    80006f78:	07300713          	li	a4,115
    80006f7c:	1ce78a63          	beq	a5,a4,80007150 <__printf+0x4b8>
    80006f80:	07800713          	li	a4,120
    80006f84:	1ee79e63          	bne	a5,a4,80007180 <__printf+0x4e8>
    80006f88:	f7843783          	ld	a5,-136(s0)
    80006f8c:	0007a703          	lw	a4,0(a5)
    80006f90:	00878793          	addi	a5,a5,8
    80006f94:	f6f43c23          	sd	a5,-136(s0)
    80006f98:	28074263          	bltz	a4,8000721c <__printf+0x584>
    80006f9c:	00002d97          	auipc	s11,0x2
    80006fa0:	5b4d8d93          	addi	s11,s11,1460 # 80009550 <digits>
    80006fa4:	00f77793          	andi	a5,a4,15
    80006fa8:	00fd87b3          	add	a5,s11,a5
    80006fac:	0007c683          	lbu	a3,0(a5)
    80006fb0:	00f00613          	li	a2,15
    80006fb4:	0007079b          	sext.w	a5,a4
    80006fb8:	f8d40023          	sb	a3,-128(s0)
    80006fbc:	0047559b          	srliw	a1,a4,0x4
    80006fc0:	0047569b          	srliw	a3,a4,0x4
    80006fc4:	00000c93          	li	s9,0
    80006fc8:	0ee65063          	bge	a2,a4,800070a8 <__printf+0x410>
    80006fcc:	00f6f693          	andi	a3,a3,15
    80006fd0:	00dd86b3          	add	a3,s11,a3
    80006fd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006fd8:	0087d79b          	srliw	a5,a5,0x8
    80006fdc:	00100c93          	li	s9,1
    80006fe0:	f8d400a3          	sb	a3,-127(s0)
    80006fe4:	0cb67263          	bgeu	a2,a1,800070a8 <__printf+0x410>
    80006fe8:	00f7f693          	andi	a3,a5,15
    80006fec:	00dd86b3          	add	a3,s11,a3
    80006ff0:	0006c583          	lbu	a1,0(a3)
    80006ff4:	00f00613          	li	a2,15
    80006ff8:	0047d69b          	srliw	a3,a5,0x4
    80006ffc:	f8b40123          	sb	a1,-126(s0)
    80007000:	0047d593          	srli	a1,a5,0x4
    80007004:	28f67e63          	bgeu	a2,a5,800072a0 <__printf+0x608>
    80007008:	00f6f693          	andi	a3,a3,15
    8000700c:	00dd86b3          	add	a3,s11,a3
    80007010:	0006c503          	lbu	a0,0(a3)
    80007014:	0087d813          	srli	a6,a5,0x8
    80007018:	0087d69b          	srliw	a3,a5,0x8
    8000701c:	f8a401a3          	sb	a0,-125(s0)
    80007020:	28b67663          	bgeu	a2,a1,800072ac <__printf+0x614>
    80007024:	00f6f693          	andi	a3,a3,15
    80007028:	00dd86b3          	add	a3,s11,a3
    8000702c:	0006c583          	lbu	a1,0(a3)
    80007030:	00c7d513          	srli	a0,a5,0xc
    80007034:	00c7d69b          	srliw	a3,a5,0xc
    80007038:	f8b40223          	sb	a1,-124(s0)
    8000703c:	29067a63          	bgeu	a2,a6,800072d0 <__printf+0x638>
    80007040:	00f6f693          	andi	a3,a3,15
    80007044:	00dd86b3          	add	a3,s11,a3
    80007048:	0006c583          	lbu	a1,0(a3)
    8000704c:	0107d813          	srli	a6,a5,0x10
    80007050:	0107d69b          	srliw	a3,a5,0x10
    80007054:	f8b402a3          	sb	a1,-123(s0)
    80007058:	28a67263          	bgeu	a2,a0,800072dc <__printf+0x644>
    8000705c:	00f6f693          	andi	a3,a3,15
    80007060:	00dd86b3          	add	a3,s11,a3
    80007064:	0006c683          	lbu	a3,0(a3)
    80007068:	0147d79b          	srliw	a5,a5,0x14
    8000706c:	f8d40323          	sb	a3,-122(s0)
    80007070:	21067663          	bgeu	a2,a6,8000727c <__printf+0x5e4>
    80007074:	02079793          	slli	a5,a5,0x20
    80007078:	0207d793          	srli	a5,a5,0x20
    8000707c:	00fd8db3          	add	s11,s11,a5
    80007080:	000dc683          	lbu	a3,0(s11)
    80007084:	00800793          	li	a5,8
    80007088:	00700c93          	li	s9,7
    8000708c:	f8d403a3          	sb	a3,-121(s0)
    80007090:	00075c63          	bgez	a4,800070a8 <__printf+0x410>
    80007094:	f9040713          	addi	a4,s0,-112
    80007098:	00f70733          	add	a4,a4,a5
    8000709c:	02d00693          	li	a3,45
    800070a0:	fed70823          	sb	a3,-16(a4)
    800070a4:	00078c93          	mv	s9,a5
    800070a8:	f8040793          	addi	a5,s0,-128
    800070ac:	01978cb3          	add	s9,a5,s9
    800070b0:	f7f40d13          	addi	s10,s0,-129
    800070b4:	000cc503          	lbu	a0,0(s9)
    800070b8:	fffc8c93          	addi	s9,s9,-1
    800070bc:	00000097          	auipc	ra,0x0
    800070c0:	9f8080e7          	jalr	-1544(ra) # 80006ab4 <consputc>
    800070c4:	ff9d18e3          	bne	s10,s9,800070b4 <__printf+0x41c>
    800070c8:	0100006f          	j	800070d8 <__printf+0x440>
    800070cc:	00000097          	auipc	ra,0x0
    800070d0:	9e8080e7          	jalr	-1560(ra) # 80006ab4 <consputc>
    800070d4:	000c8493          	mv	s1,s9
    800070d8:	00094503          	lbu	a0,0(s2)
    800070dc:	c60510e3          	bnez	a0,80006d3c <__printf+0xa4>
    800070e0:	e40c0ee3          	beqz	s8,80006f3c <__printf+0x2a4>
    800070e4:	00006517          	auipc	a0,0x6
    800070e8:	b2c50513          	addi	a0,a0,-1236 # 8000cc10 <pr>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	94c080e7          	jalr	-1716(ra) # 80007a38 <release>
    800070f4:	e49ff06f          	j	80006f3c <__printf+0x2a4>
    800070f8:	f7843783          	ld	a5,-136(s0)
    800070fc:	03000513          	li	a0,48
    80007100:	01000d13          	li	s10,16
    80007104:	00878713          	addi	a4,a5,8
    80007108:	0007bc83          	ld	s9,0(a5)
    8000710c:	f6e43c23          	sd	a4,-136(s0)
    80007110:	00000097          	auipc	ra,0x0
    80007114:	9a4080e7          	jalr	-1628(ra) # 80006ab4 <consputc>
    80007118:	07800513          	li	a0,120
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	998080e7          	jalr	-1640(ra) # 80006ab4 <consputc>
    80007124:	00002d97          	auipc	s11,0x2
    80007128:	42cd8d93          	addi	s11,s11,1068 # 80009550 <digits>
    8000712c:	03ccd793          	srli	a5,s9,0x3c
    80007130:	00fd87b3          	add	a5,s11,a5
    80007134:	0007c503          	lbu	a0,0(a5)
    80007138:	fffd0d1b          	addiw	s10,s10,-1
    8000713c:	004c9c93          	slli	s9,s9,0x4
    80007140:	00000097          	auipc	ra,0x0
    80007144:	974080e7          	jalr	-1676(ra) # 80006ab4 <consputc>
    80007148:	fe0d12e3          	bnez	s10,8000712c <__printf+0x494>
    8000714c:	f8dff06f          	j	800070d8 <__printf+0x440>
    80007150:	f7843783          	ld	a5,-136(s0)
    80007154:	0007bc83          	ld	s9,0(a5)
    80007158:	00878793          	addi	a5,a5,8
    8000715c:	f6f43c23          	sd	a5,-136(s0)
    80007160:	000c9a63          	bnez	s9,80007174 <__printf+0x4dc>
    80007164:	1080006f          	j	8000726c <__printf+0x5d4>
    80007168:	001c8c93          	addi	s9,s9,1
    8000716c:	00000097          	auipc	ra,0x0
    80007170:	948080e7          	jalr	-1720(ra) # 80006ab4 <consputc>
    80007174:	000cc503          	lbu	a0,0(s9)
    80007178:	fe0518e3          	bnez	a0,80007168 <__printf+0x4d0>
    8000717c:	f5dff06f          	j	800070d8 <__printf+0x440>
    80007180:	02500513          	li	a0,37
    80007184:	00000097          	auipc	ra,0x0
    80007188:	930080e7          	jalr	-1744(ra) # 80006ab4 <consputc>
    8000718c:	000c8513          	mv	a0,s9
    80007190:	00000097          	auipc	ra,0x0
    80007194:	924080e7          	jalr	-1756(ra) # 80006ab4 <consputc>
    80007198:	f41ff06f          	j	800070d8 <__printf+0x440>
    8000719c:	02500513          	li	a0,37
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	914080e7          	jalr	-1772(ra) # 80006ab4 <consputc>
    800071a8:	f31ff06f          	j	800070d8 <__printf+0x440>
    800071ac:	00030513          	mv	a0,t1
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	7bc080e7          	jalr	1980(ra) # 8000796c <acquire>
    800071b8:	b4dff06f          	j	80006d04 <__printf+0x6c>
    800071bc:	40c0053b          	negw	a0,a2
    800071c0:	00a00713          	li	a4,10
    800071c4:	02e576bb          	remuw	a3,a0,a4
    800071c8:	00002d97          	auipc	s11,0x2
    800071cc:	388d8d93          	addi	s11,s11,904 # 80009550 <digits>
    800071d0:	ff700593          	li	a1,-9
    800071d4:	02069693          	slli	a3,a3,0x20
    800071d8:	0206d693          	srli	a3,a3,0x20
    800071dc:	00dd86b3          	add	a3,s11,a3
    800071e0:	0006c683          	lbu	a3,0(a3)
    800071e4:	02e557bb          	divuw	a5,a0,a4
    800071e8:	f8d40023          	sb	a3,-128(s0)
    800071ec:	10b65e63          	bge	a2,a1,80007308 <__printf+0x670>
    800071f0:	06300593          	li	a1,99
    800071f4:	02e7f6bb          	remuw	a3,a5,a4
    800071f8:	02069693          	slli	a3,a3,0x20
    800071fc:	0206d693          	srli	a3,a3,0x20
    80007200:	00dd86b3          	add	a3,s11,a3
    80007204:	0006c683          	lbu	a3,0(a3)
    80007208:	02e7d73b          	divuw	a4,a5,a4
    8000720c:	00200793          	li	a5,2
    80007210:	f8d400a3          	sb	a3,-127(s0)
    80007214:	bca5ece3          	bltu	a1,a0,80006dec <__printf+0x154>
    80007218:	ce5ff06f          	j	80006efc <__printf+0x264>
    8000721c:	40e007bb          	negw	a5,a4
    80007220:	00002d97          	auipc	s11,0x2
    80007224:	330d8d93          	addi	s11,s11,816 # 80009550 <digits>
    80007228:	00f7f693          	andi	a3,a5,15
    8000722c:	00dd86b3          	add	a3,s11,a3
    80007230:	0006c583          	lbu	a1,0(a3)
    80007234:	ff100613          	li	a2,-15
    80007238:	0047d69b          	srliw	a3,a5,0x4
    8000723c:	f8b40023          	sb	a1,-128(s0)
    80007240:	0047d59b          	srliw	a1,a5,0x4
    80007244:	0ac75e63          	bge	a4,a2,80007300 <__printf+0x668>
    80007248:	00f6f693          	andi	a3,a3,15
    8000724c:	00dd86b3          	add	a3,s11,a3
    80007250:	0006c603          	lbu	a2,0(a3)
    80007254:	00f00693          	li	a3,15
    80007258:	0087d79b          	srliw	a5,a5,0x8
    8000725c:	f8c400a3          	sb	a2,-127(s0)
    80007260:	d8b6e4e3          	bltu	a3,a1,80006fe8 <__printf+0x350>
    80007264:	00200793          	li	a5,2
    80007268:	e2dff06f          	j	80007094 <__printf+0x3fc>
    8000726c:	00002c97          	auipc	s9,0x2
    80007270:	2c4c8c93          	addi	s9,s9,708 # 80009530 <_ZL6digits+0x160>
    80007274:	02800513          	li	a0,40
    80007278:	ef1ff06f          	j	80007168 <__printf+0x4d0>
    8000727c:	00700793          	li	a5,7
    80007280:	00600c93          	li	s9,6
    80007284:	e0dff06f          	j	80007090 <__printf+0x3f8>
    80007288:	00700793          	li	a5,7
    8000728c:	00600c93          	li	s9,6
    80007290:	c69ff06f          	j	80006ef8 <__printf+0x260>
    80007294:	00300793          	li	a5,3
    80007298:	00200c93          	li	s9,2
    8000729c:	c5dff06f          	j	80006ef8 <__printf+0x260>
    800072a0:	00300793          	li	a5,3
    800072a4:	00200c93          	li	s9,2
    800072a8:	de9ff06f          	j	80007090 <__printf+0x3f8>
    800072ac:	00400793          	li	a5,4
    800072b0:	00300c93          	li	s9,3
    800072b4:	dddff06f          	j	80007090 <__printf+0x3f8>
    800072b8:	00400793          	li	a5,4
    800072bc:	00300c93          	li	s9,3
    800072c0:	c39ff06f          	j	80006ef8 <__printf+0x260>
    800072c4:	00500793          	li	a5,5
    800072c8:	00400c93          	li	s9,4
    800072cc:	c2dff06f          	j	80006ef8 <__printf+0x260>
    800072d0:	00500793          	li	a5,5
    800072d4:	00400c93          	li	s9,4
    800072d8:	db9ff06f          	j	80007090 <__printf+0x3f8>
    800072dc:	00600793          	li	a5,6
    800072e0:	00500c93          	li	s9,5
    800072e4:	dadff06f          	j	80007090 <__printf+0x3f8>
    800072e8:	00600793          	li	a5,6
    800072ec:	00500c93          	li	s9,5
    800072f0:	c09ff06f          	j	80006ef8 <__printf+0x260>
    800072f4:	00800793          	li	a5,8
    800072f8:	00700c93          	li	s9,7
    800072fc:	bfdff06f          	j	80006ef8 <__printf+0x260>
    80007300:	00100793          	li	a5,1
    80007304:	d91ff06f          	j	80007094 <__printf+0x3fc>
    80007308:	00100793          	li	a5,1
    8000730c:	bf1ff06f          	j	80006efc <__printf+0x264>
    80007310:	00900793          	li	a5,9
    80007314:	00800c93          	li	s9,8
    80007318:	be1ff06f          	j	80006ef8 <__printf+0x260>
    8000731c:	00002517          	auipc	a0,0x2
    80007320:	21c50513          	addi	a0,a0,540 # 80009538 <_ZL6digits+0x168>
    80007324:	00000097          	auipc	ra,0x0
    80007328:	918080e7          	jalr	-1768(ra) # 80006c3c <panic>

000000008000732c <printfinit>:
    8000732c:	fe010113          	addi	sp,sp,-32
    80007330:	00813823          	sd	s0,16(sp)
    80007334:	00913423          	sd	s1,8(sp)
    80007338:	00113c23          	sd	ra,24(sp)
    8000733c:	02010413          	addi	s0,sp,32
    80007340:	00006497          	auipc	s1,0x6
    80007344:	8d048493          	addi	s1,s1,-1840 # 8000cc10 <pr>
    80007348:	00048513          	mv	a0,s1
    8000734c:	00002597          	auipc	a1,0x2
    80007350:	1fc58593          	addi	a1,a1,508 # 80009548 <_ZL6digits+0x178>
    80007354:	00000097          	auipc	ra,0x0
    80007358:	5f4080e7          	jalr	1524(ra) # 80007948 <initlock>
    8000735c:	01813083          	ld	ra,24(sp)
    80007360:	01013403          	ld	s0,16(sp)
    80007364:	0004ac23          	sw	zero,24(s1)
    80007368:	00813483          	ld	s1,8(sp)
    8000736c:	02010113          	addi	sp,sp,32
    80007370:	00008067          	ret

0000000080007374 <uartinit>:
    80007374:	ff010113          	addi	sp,sp,-16
    80007378:	00813423          	sd	s0,8(sp)
    8000737c:	01010413          	addi	s0,sp,16
    80007380:	100007b7          	lui	a5,0x10000
    80007384:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007388:	f8000713          	li	a4,-128
    8000738c:	00e781a3          	sb	a4,3(a5)
    80007390:	00300713          	li	a4,3
    80007394:	00e78023          	sb	a4,0(a5)
    80007398:	000780a3          	sb	zero,1(a5)
    8000739c:	00e781a3          	sb	a4,3(a5)
    800073a0:	00700693          	li	a3,7
    800073a4:	00d78123          	sb	a3,2(a5)
    800073a8:	00e780a3          	sb	a4,1(a5)
    800073ac:	00813403          	ld	s0,8(sp)
    800073b0:	01010113          	addi	sp,sp,16
    800073b4:	00008067          	ret

00000000800073b8 <uartputc>:
    800073b8:	00004797          	auipc	a5,0x4
    800073bc:	5407a783          	lw	a5,1344(a5) # 8000b8f8 <panicked>
    800073c0:	00078463          	beqz	a5,800073c8 <uartputc+0x10>
    800073c4:	0000006f          	j	800073c4 <uartputc+0xc>
    800073c8:	fd010113          	addi	sp,sp,-48
    800073cc:	02813023          	sd	s0,32(sp)
    800073d0:	00913c23          	sd	s1,24(sp)
    800073d4:	01213823          	sd	s2,16(sp)
    800073d8:	01313423          	sd	s3,8(sp)
    800073dc:	02113423          	sd	ra,40(sp)
    800073e0:	03010413          	addi	s0,sp,48
    800073e4:	00004917          	auipc	s2,0x4
    800073e8:	51c90913          	addi	s2,s2,1308 # 8000b900 <uart_tx_r>
    800073ec:	00093783          	ld	a5,0(s2)
    800073f0:	00004497          	auipc	s1,0x4
    800073f4:	51848493          	addi	s1,s1,1304 # 8000b908 <uart_tx_w>
    800073f8:	0004b703          	ld	a4,0(s1)
    800073fc:	02078693          	addi	a3,a5,32
    80007400:	00050993          	mv	s3,a0
    80007404:	02e69c63          	bne	a3,a4,8000743c <uartputc+0x84>
    80007408:	00001097          	auipc	ra,0x1
    8000740c:	834080e7          	jalr	-1996(ra) # 80007c3c <push_on>
    80007410:	00093783          	ld	a5,0(s2)
    80007414:	0004b703          	ld	a4,0(s1)
    80007418:	02078793          	addi	a5,a5,32
    8000741c:	00e79463          	bne	a5,a4,80007424 <uartputc+0x6c>
    80007420:	0000006f          	j	80007420 <uartputc+0x68>
    80007424:	00001097          	auipc	ra,0x1
    80007428:	88c080e7          	jalr	-1908(ra) # 80007cb0 <pop_on>
    8000742c:	00093783          	ld	a5,0(s2)
    80007430:	0004b703          	ld	a4,0(s1)
    80007434:	02078693          	addi	a3,a5,32
    80007438:	fce688e3          	beq	a3,a4,80007408 <uartputc+0x50>
    8000743c:	01f77693          	andi	a3,a4,31
    80007440:	00005597          	auipc	a1,0x5
    80007444:	7f058593          	addi	a1,a1,2032 # 8000cc30 <uart_tx_buf>
    80007448:	00d586b3          	add	a3,a1,a3
    8000744c:	00170713          	addi	a4,a4,1
    80007450:	01368023          	sb	s3,0(a3)
    80007454:	00e4b023          	sd	a4,0(s1)
    80007458:	10000637          	lui	a2,0x10000
    8000745c:	02f71063          	bne	a4,a5,8000747c <uartputc+0xc4>
    80007460:	0340006f          	j	80007494 <uartputc+0xdc>
    80007464:	00074703          	lbu	a4,0(a4)
    80007468:	00f93023          	sd	a5,0(s2)
    8000746c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007470:	00093783          	ld	a5,0(s2)
    80007474:	0004b703          	ld	a4,0(s1)
    80007478:	00f70e63          	beq	a4,a5,80007494 <uartputc+0xdc>
    8000747c:	00564683          	lbu	a3,5(a2)
    80007480:	01f7f713          	andi	a4,a5,31
    80007484:	00e58733          	add	a4,a1,a4
    80007488:	0206f693          	andi	a3,a3,32
    8000748c:	00178793          	addi	a5,a5,1
    80007490:	fc069ae3          	bnez	a3,80007464 <uartputc+0xac>
    80007494:	02813083          	ld	ra,40(sp)
    80007498:	02013403          	ld	s0,32(sp)
    8000749c:	01813483          	ld	s1,24(sp)
    800074a0:	01013903          	ld	s2,16(sp)
    800074a4:	00813983          	ld	s3,8(sp)
    800074a8:	03010113          	addi	sp,sp,48
    800074ac:	00008067          	ret

00000000800074b0 <uartputc_sync>:
    800074b0:	ff010113          	addi	sp,sp,-16
    800074b4:	00813423          	sd	s0,8(sp)
    800074b8:	01010413          	addi	s0,sp,16
    800074bc:	00004717          	auipc	a4,0x4
    800074c0:	43c72703          	lw	a4,1084(a4) # 8000b8f8 <panicked>
    800074c4:	02071663          	bnez	a4,800074f0 <uartputc_sync+0x40>
    800074c8:	00050793          	mv	a5,a0
    800074cc:	100006b7          	lui	a3,0x10000
    800074d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800074d4:	02077713          	andi	a4,a4,32
    800074d8:	fe070ce3          	beqz	a4,800074d0 <uartputc_sync+0x20>
    800074dc:	0ff7f793          	andi	a5,a5,255
    800074e0:	00f68023          	sb	a5,0(a3)
    800074e4:	00813403          	ld	s0,8(sp)
    800074e8:	01010113          	addi	sp,sp,16
    800074ec:	00008067          	ret
    800074f0:	0000006f          	j	800074f0 <uartputc_sync+0x40>

00000000800074f4 <uartstart>:
    800074f4:	ff010113          	addi	sp,sp,-16
    800074f8:	00813423          	sd	s0,8(sp)
    800074fc:	01010413          	addi	s0,sp,16
    80007500:	00004617          	auipc	a2,0x4
    80007504:	40060613          	addi	a2,a2,1024 # 8000b900 <uart_tx_r>
    80007508:	00004517          	auipc	a0,0x4
    8000750c:	40050513          	addi	a0,a0,1024 # 8000b908 <uart_tx_w>
    80007510:	00063783          	ld	a5,0(a2)
    80007514:	00053703          	ld	a4,0(a0)
    80007518:	04f70263          	beq	a4,a5,8000755c <uartstart+0x68>
    8000751c:	100005b7          	lui	a1,0x10000
    80007520:	00005817          	auipc	a6,0x5
    80007524:	71080813          	addi	a6,a6,1808 # 8000cc30 <uart_tx_buf>
    80007528:	01c0006f          	j	80007544 <uartstart+0x50>
    8000752c:	0006c703          	lbu	a4,0(a3)
    80007530:	00f63023          	sd	a5,0(a2)
    80007534:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007538:	00063783          	ld	a5,0(a2)
    8000753c:	00053703          	ld	a4,0(a0)
    80007540:	00f70e63          	beq	a4,a5,8000755c <uartstart+0x68>
    80007544:	01f7f713          	andi	a4,a5,31
    80007548:	00e806b3          	add	a3,a6,a4
    8000754c:	0055c703          	lbu	a4,5(a1)
    80007550:	00178793          	addi	a5,a5,1
    80007554:	02077713          	andi	a4,a4,32
    80007558:	fc071ae3          	bnez	a4,8000752c <uartstart+0x38>
    8000755c:	00813403          	ld	s0,8(sp)
    80007560:	01010113          	addi	sp,sp,16
    80007564:	00008067          	ret

0000000080007568 <uartgetc>:
    80007568:	ff010113          	addi	sp,sp,-16
    8000756c:	00813423          	sd	s0,8(sp)
    80007570:	01010413          	addi	s0,sp,16
    80007574:	10000737          	lui	a4,0x10000
    80007578:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000757c:	0017f793          	andi	a5,a5,1
    80007580:	00078c63          	beqz	a5,80007598 <uartgetc+0x30>
    80007584:	00074503          	lbu	a0,0(a4)
    80007588:	0ff57513          	andi	a0,a0,255
    8000758c:	00813403          	ld	s0,8(sp)
    80007590:	01010113          	addi	sp,sp,16
    80007594:	00008067          	ret
    80007598:	fff00513          	li	a0,-1
    8000759c:	ff1ff06f          	j	8000758c <uartgetc+0x24>

00000000800075a0 <uartintr>:
    800075a0:	100007b7          	lui	a5,0x10000
    800075a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800075a8:	0017f793          	andi	a5,a5,1
    800075ac:	0a078463          	beqz	a5,80007654 <uartintr+0xb4>
    800075b0:	fe010113          	addi	sp,sp,-32
    800075b4:	00813823          	sd	s0,16(sp)
    800075b8:	00913423          	sd	s1,8(sp)
    800075bc:	00113c23          	sd	ra,24(sp)
    800075c0:	02010413          	addi	s0,sp,32
    800075c4:	100004b7          	lui	s1,0x10000
    800075c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800075cc:	0ff57513          	andi	a0,a0,255
    800075d0:	fffff097          	auipc	ra,0xfffff
    800075d4:	534080e7          	jalr	1332(ra) # 80006b04 <consoleintr>
    800075d8:	0054c783          	lbu	a5,5(s1)
    800075dc:	0017f793          	andi	a5,a5,1
    800075e0:	fe0794e3          	bnez	a5,800075c8 <uartintr+0x28>
    800075e4:	00004617          	auipc	a2,0x4
    800075e8:	31c60613          	addi	a2,a2,796 # 8000b900 <uart_tx_r>
    800075ec:	00004517          	auipc	a0,0x4
    800075f0:	31c50513          	addi	a0,a0,796 # 8000b908 <uart_tx_w>
    800075f4:	00063783          	ld	a5,0(a2)
    800075f8:	00053703          	ld	a4,0(a0)
    800075fc:	04f70263          	beq	a4,a5,80007640 <uartintr+0xa0>
    80007600:	100005b7          	lui	a1,0x10000
    80007604:	00005817          	auipc	a6,0x5
    80007608:	62c80813          	addi	a6,a6,1580 # 8000cc30 <uart_tx_buf>
    8000760c:	01c0006f          	j	80007628 <uartintr+0x88>
    80007610:	0006c703          	lbu	a4,0(a3)
    80007614:	00f63023          	sd	a5,0(a2)
    80007618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000761c:	00063783          	ld	a5,0(a2)
    80007620:	00053703          	ld	a4,0(a0)
    80007624:	00f70e63          	beq	a4,a5,80007640 <uartintr+0xa0>
    80007628:	01f7f713          	andi	a4,a5,31
    8000762c:	00e806b3          	add	a3,a6,a4
    80007630:	0055c703          	lbu	a4,5(a1)
    80007634:	00178793          	addi	a5,a5,1
    80007638:	02077713          	andi	a4,a4,32
    8000763c:	fc071ae3          	bnez	a4,80007610 <uartintr+0x70>
    80007640:	01813083          	ld	ra,24(sp)
    80007644:	01013403          	ld	s0,16(sp)
    80007648:	00813483          	ld	s1,8(sp)
    8000764c:	02010113          	addi	sp,sp,32
    80007650:	00008067          	ret
    80007654:	00004617          	auipc	a2,0x4
    80007658:	2ac60613          	addi	a2,a2,684 # 8000b900 <uart_tx_r>
    8000765c:	00004517          	auipc	a0,0x4
    80007660:	2ac50513          	addi	a0,a0,684 # 8000b908 <uart_tx_w>
    80007664:	00063783          	ld	a5,0(a2)
    80007668:	00053703          	ld	a4,0(a0)
    8000766c:	04f70263          	beq	a4,a5,800076b0 <uartintr+0x110>
    80007670:	100005b7          	lui	a1,0x10000
    80007674:	00005817          	auipc	a6,0x5
    80007678:	5bc80813          	addi	a6,a6,1468 # 8000cc30 <uart_tx_buf>
    8000767c:	01c0006f          	j	80007698 <uartintr+0xf8>
    80007680:	0006c703          	lbu	a4,0(a3)
    80007684:	00f63023          	sd	a5,0(a2)
    80007688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000768c:	00063783          	ld	a5,0(a2)
    80007690:	00053703          	ld	a4,0(a0)
    80007694:	02f70063          	beq	a4,a5,800076b4 <uartintr+0x114>
    80007698:	01f7f713          	andi	a4,a5,31
    8000769c:	00e806b3          	add	a3,a6,a4
    800076a0:	0055c703          	lbu	a4,5(a1)
    800076a4:	00178793          	addi	a5,a5,1
    800076a8:	02077713          	andi	a4,a4,32
    800076ac:	fc071ae3          	bnez	a4,80007680 <uartintr+0xe0>
    800076b0:	00008067          	ret
    800076b4:	00008067          	ret

00000000800076b8 <kinit>:
    800076b8:	fc010113          	addi	sp,sp,-64
    800076bc:	02913423          	sd	s1,40(sp)
    800076c0:	fffff7b7          	lui	a5,0xfffff
    800076c4:	00006497          	auipc	s1,0x6
    800076c8:	58b48493          	addi	s1,s1,1419 # 8000dc4f <end+0xfff>
    800076cc:	02813823          	sd	s0,48(sp)
    800076d0:	01313c23          	sd	s3,24(sp)
    800076d4:	00f4f4b3          	and	s1,s1,a5
    800076d8:	02113c23          	sd	ra,56(sp)
    800076dc:	03213023          	sd	s2,32(sp)
    800076e0:	01413823          	sd	s4,16(sp)
    800076e4:	01513423          	sd	s5,8(sp)
    800076e8:	04010413          	addi	s0,sp,64
    800076ec:	000017b7          	lui	a5,0x1
    800076f0:	01100993          	li	s3,17
    800076f4:	00f487b3          	add	a5,s1,a5
    800076f8:	01b99993          	slli	s3,s3,0x1b
    800076fc:	06f9e063          	bltu	s3,a5,8000775c <kinit+0xa4>
    80007700:	00005a97          	auipc	s5,0x5
    80007704:	550a8a93          	addi	s5,s5,1360 # 8000cc50 <end>
    80007708:	0754ec63          	bltu	s1,s5,80007780 <kinit+0xc8>
    8000770c:	0734fa63          	bgeu	s1,s3,80007780 <kinit+0xc8>
    80007710:	00088a37          	lui	s4,0x88
    80007714:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007718:	00004917          	auipc	s2,0x4
    8000771c:	1f890913          	addi	s2,s2,504 # 8000b910 <kmem>
    80007720:	00ca1a13          	slli	s4,s4,0xc
    80007724:	0140006f          	j	80007738 <kinit+0x80>
    80007728:	000017b7          	lui	a5,0x1
    8000772c:	00f484b3          	add	s1,s1,a5
    80007730:	0554e863          	bltu	s1,s5,80007780 <kinit+0xc8>
    80007734:	0534f663          	bgeu	s1,s3,80007780 <kinit+0xc8>
    80007738:	00001637          	lui	a2,0x1
    8000773c:	00100593          	li	a1,1
    80007740:	00048513          	mv	a0,s1
    80007744:	00000097          	auipc	ra,0x0
    80007748:	5e4080e7          	jalr	1508(ra) # 80007d28 <__memset>
    8000774c:	00093783          	ld	a5,0(s2)
    80007750:	00f4b023          	sd	a5,0(s1)
    80007754:	00993023          	sd	s1,0(s2)
    80007758:	fd4498e3          	bne	s1,s4,80007728 <kinit+0x70>
    8000775c:	03813083          	ld	ra,56(sp)
    80007760:	03013403          	ld	s0,48(sp)
    80007764:	02813483          	ld	s1,40(sp)
    80007768:	02013903          	ld	s2,32(sp)
    8000776c:	01813983          	ld	s3,24(sp)
    80007770:	01013a03          	ld	s4,16(sp)
    80007774:	00813a83          	ld	s5,8(sp)
    80007778:	04010113          	addi	sp,sp,64
    8000777c:	00008067          	ret
    80007780:	00002517          	auipc	a0,0x2
    80007784:	de850513          	addi	a0,a0,-536 # 80009568 <digits+0x18>
    80007788:	fffff097          	auipc	ra,0xfffff
    8000778c:	4b4080e7          	jalr	1204(ra) # 80006c3c <panic>

0000000080007790 <freerange>:
    80007790:	fc010113          	addi	sp,sp,-64
    80007794:	000017b7          	lui	a5,0x1
    80007798:	02913423          	sd	s1,40(sp)
    8000779c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800077a0:	009504b3          	add	s1,a0,s1
    800077a4:	fffff537          	lui	a0,0xfffff
    800077a8:	02813823          	sd	s0,48(sp)
    800077ac:	02113c23          	sd	ra,56(sp)
    800077b0:	03213023          	sd	s2,32(sp)
    800077b4:	01313c23          	sd	s3,24(sp)
    800077b8:	01413823          	sd	s4,16(sp)
    800077bc:	01513423          	sd	s5,8(sp)
    800077c0:	01613023          	sd	s6,0(sp)
    800077c4:	04010413          	addi	s0,sp,64
    800077c8:	00a4f4b3          	and	s1,s1,a0
    800077cc:	00f487b3          	add	a5,s1,a5
    800077d0:	06f5e463          	bltu	a1,a5,80007838 <freerange+0xa8>
    800077d4:	00005a97          	auipc	s5,0x5
    800077d8:	47ca8a93          	addi	s5,s5,1148 # 8000cc50 <end>
    800077dc:	0954e263          	bltu	s1,s5,80007860 <freerange+0xd0>
    800077e0:	01100993          	li	s3,17
    800077e4:	01b99993          	slli	s3,s3,0x1b
    800077e8:	0734fc63          	bgeu	s1,s3,80007860 <freerange+0xd0>
    800077ec:	00058a13          	mv	s4,a1
    800077f0:	00004917          	auipc	s2,0x4
    800077f4:	12090913          	addi	s2,s2,288 # 8000b910 <kmem>
    800077f8:	00002b37          	lui	s6,0x2
    800077fc:	0140006f          	j	80007810 <freerange+0x80>
    80007800:	000017b7          	lui	a5,0x1
    80007804:	00f484b3          	add	s1,s1,a5
    80007808:	0554ec63          	bltu	s1,s5,80007860 <freerange+0xd0>
    8000780c:	0534fa63          	bgeu	s1,s3,80007860 <freerange+0xd0>
    80007810:	00001637          	lui	a2,0x1
    80007814:	00100593          	li	a1,1
    80007818:	00048513          	mv	a0,s1
    8000781c:	00000097          	auipc	ra,0x0
    80007820:	50c080e7          	jalr	1292(ra) # 80007d28 <__memset>
    80007824:	00093703          	ld	a4,0(s2)
    80007828:	016487b3          	add	a5,s1,s6
    8000782c:	00e4b023          	sd	a4,0(s1)
    80007830:	00993023          	sd	s1,0(s2)
    80007834:	fcfa76e3          	bgeu	s4,a5,80007800 <freerange+0x70>
    80007838:	03813083          	ld	ra,56(sp)
    8000783c:	03013403          	ld	s0,48(sp)
    80007840:	02813483          	ld	s1,40(sp)
    80007844:	02013903          	ld	s2,32(sp)
    80007848:	01813983          	ld	s3,24(sp)
    8000784c:	01013a03          	ld	s4,16(sp)
    80007850:	00813a83          	ld	s5,8(sp)
    80007854:	00013b03          	ld	s6,0(sp)
    80007858:	04010113          	addi	sp,sp,64
    8000785c:	00008067          	ret
    80007860:	00002517          	auipc	a0,0x2
    80007864:	d0850513          	addi	a0,a0,-760 # 80009568 <digits+0x18>
    80007868:	fffff097          	auipc	ra,0xfffff
    8000786c:	3d4080e7          	jalr	980(ra) # 80006c3c <panic>

0000000080007870 <kfree>:
    80007870:	fe010113          	addi	sp,sp,-32
    80007874:	00813823          	sd	s0,16(sp)
    80007878:	00113c23          	sd	ra,24(sp)
    8000787c:	00913423          	sd	s1,8(sp)
    80007880:	02010413          	addi	s0,sp,32
    80007884:	03451793          	slli	a5,a0,0x34
    80007888:	04079c63          	bnez	a5,800078e0 <kfree+0x70>
    8000788c:	00005797          	auipc	a5,0x5
    80007890:	3c478793          	addi	a5,a5,964 # 8000cc50 <end>
    80007894:	00050493          	mv	s1,a0
    80007898:	04f56463          	bltu	a0,a5,800078e0 <kfree+0x70>
    8000789c:	01100793          	li	a5,17
    800078a0:	01b79793          	slli	a5,a5,0x1b
    800078a4:	02f57e63          	bgeu	a0,a5,800078e0 <kfree+0x70>
    800078a8:	00001637          	lui	a2,0x1
    800078ac:	00100593          	li	a1,1
    800078b0:	00000097          	auipc	ra,0x0
    800078b4:	478080e7          	jalr	1144(ra) # 80007d28 <__memset>
    800078b8:	00004797          	auipc	a5,0x4
    800078bc:	05878793          	addi	a5,a5,88 # 8000b910 <kmem>
    800078c0:	0007b703          	ld	a4,0(a5)
    800078c4:	01813083          	ld	ra,24(sp)
    800078c8:	01013403          	ld	s0,16(sp)
    800078cc:	00e4b023          	sd	a4,0(s1)
    800078d0:	0097b023          	sd	s1,0(a5)
    800078d4:	00813483          	ld	s1,8(sp)
    800078d8:	02010113          	addi	sp,sp,32
    800078dc:	00008067          	ret
    800078e0:	00002517          	auipc	a0,0x2
    800078e4:	c8850513          	addi	a0,a0,-888 # 80009568 <digits+0x18>
    800078e8:	fffff097          	auipc	ra,0xfffff
    800078ec:	354080e7          	jalr	852(ra) # 80006c3c <panic>

00000000800078f0 <kalloc>:
    800078f0:	fe010113          	addi	sp,sp,-32
    800078f4:	00813823          	sd	s0,16(sp)
    800078f8:	00913423          	sd	s1,8(sp)
    800078fc:	00113c23          	sd	ra,24(sp)
    80007900:	02010413          	addi	s0,sp,32
    80007904:	00004797          	auipc	a5,0x4
    80007908:	00c78793          	addi	a5,a5,12 # 8000b910 <kmem>
    8000790c:	0007b483          	ld	s1,0(a5)
    80007910:	02048063          	beqz	s1,80007930 <kalloc+0x40>
    80007914:	0004b703          	ld	a4,0(s1)
    80007918:	00001637          	lui	a2,0x1
    8000791c:	00500593          	li	a1,5
    80007920:	00048513          	mv	a0,s1
    80007924:	00e7b023          	sd	a4,0(a5)
    80007928:	00000097          	auipc	ra,0x0
    8000792c:	400080e7          	jalr	1024(ra) # 80007d28 <__memset>
    80007930:	01813083          	ld	ra,24(sp)
    80007934:	01013403          	ld	s0,16(sp)
    80007938:	00048513          	mv	a0,s1
    8000793c:	00813483          	ld	s1,8(sp)
    80007940:	02010113          	addi	sp,sp,32
    80007944:	00008067          	ret

0000000080007948 <initlock>:
    80007948:	ff010113          	addi	sp,sp,-16
    8000794c:	00813423          	sd	s0,8(sp)
    80007950:	01010413          	addi	s0,sp,16
    80007954:	00813403          	ld	s0,8(sp)
    80007958:	00b53423          	sd	a1,8(a0)
    8000795c:	00052023          	sw	zero,0(a0)
    80007960:	00053823          	sd	zero,16(a0)
    80007964:	01010113          	addi	sp,sp,16
    80007968:	00008067          	ret

000000008000796c <acquire>:
    8000796c:	fe010113          	addi	sp,sp,-32
    80007970:	00813823          	sd	s0,16(sp)
    80007974:	00913423          	sd	s1,8(sp)
    80007978:	00113c23          	sd	ra,24(sp)
    8000797c:	01213023          	sd	s2,0(sp)
    80007980:	02010413          	addi	s0,sp,32
    80007984:	00050493          	mv	s1,a0
    80007988:	10002973          	csrr	s2,sstatus
    8000798c:	100027f3          	csrr	a5,sstatus
    80007990:	ffd7f793          	andi	a5,a5,-3
    80007994:	10079073          	csrw	sstatus,a5
    80007998:	fffff097          	auipc	ra,0xfffff
    8000799c:	8ec080e7          	jalr	-1812(ra) # 80006284 <mycpu>
    800079a0:	07852783          	lw	a5,120(a0)
    800079a4:	06078e63          	beqz	a5,80007a20 <acquire+0xb4>
    800079a8:	fffff097          	auipc	ra,0xfffff
    800079ac:	8dc080e7          	jalr	-1828(ra) # 80006284 <mycpu>
    800079b0:	07852783          	lw	a5,120(a0)
    800079b4:	0004a703          	lw	a4,0(s1)
    800079b8:	0017879b          	addiw	a5,a5,1
    800079bc:	06f52c23          	sw	a5,120(a0)
    800079c0:	04071063          	bnez	a4,80007a00 <acquire+0x94>
    800079c4:	00100713          	li	a4,1
    800079c8:	00070793          	mv	a5,a4
    800079cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800079d0:	0007879b          	sext.w	a5,a5
    800079d4:	fe079ae3          	bnez	a5,800079c8 <acquire+0x5c>
    800079d8:	0ff0000f          	fence
    800079dc:	fffff097          	auipc	ra,0xfffff
    800079e0:	8a8080e7          	jalr	-1880(ra) # 80006284 <mycpu>
    800079e4:	01813083          	ld	ra,24(sp)
    800079e8:	01013403          	ld	s0,16(sp)
    800079ec:	00a4b823          	sd	a0,16(s1)
    800079f0:	00013903          	ld	s2,0(sp)
    800079f4:	00813483          	ld	s1,8(sp)
    800079f8:	02010113          	addi	sp,sp,32
    800079fc:	00008067          	ret
    80007a00:	0104b903          	ld	s2,16(s1)
    80007a04:	fffff097          	auipc	ra,0xfffff
    80007a08:	880080e7          	jalr	-1920(ra) # 80006284 <mycpu>
    80007a0c:	faa91ce3          	bne	s2,a0,800079c4 <acquire+0x58>
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	b6050513          	addi	a0,a0,-1184 # 80009570 <digits+0x20>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	224080e7          	jalr	548(ra) # 80006c3c <panic>
    80007a20:	00195913          	srli	s2,s2,0x1
    80007a24:	fffff097          	auipc	ra,0xfffff
    80007a28:	860080e7          	jalr	-1952(ra) # 80006284 <mycpu>
    80007a2c:	00197913          	andi	s2,s2,1
    80007a30:	07252e23          	sw	s2,124(a0)
    80007a34:	f75ff06f          	j	800079a8 <acquire+0x3c>

0000000080007a38 <release>:
    80007a38:	fe010113          	addi	sp,sp,-32
    80007a3c:	00813823          	sd	s0,16(sp)
    80007a40:	00113c23          	sd	ra,24(sp)
    80007a44:	00913423          	sd	s1,8(sp)
    80007a48:	01213023          	sd	s2,0(sp)
    80007a4c:	02010413          	addi	s0,sp,32
    80007a50:	00052783          	lw	a5,0(a0)
    80007a54:	00079a63          	bnez	a5,80007a68 <release+0x30>
    80007a58:	00002517          	auipc	a0,0x2
    80007a5c:	b2050513          	addi	a0,a0,-1248 # 80009578 <digits+0x28>
    80007a60:	fffff097          	auipc	ra,0xfffff
    80007a64:	1dc080e7          	jalr	476(ra) # 80006c3c <panic>
    80007a68:	01053903          	ld	s2,16(a0)
    80007a6c:	00050493          	mv	s1,a0
    80007a70:	fffff097          	auipc	ra,0xfffff
    80007a74:	814080e7          	jalr	-2028(ra) # 80006284 <mycpu>
    80007a78:	fea910e3          	bne	s2,a0,80007a58 <release+0x20>
    80007a7c:	0004b823          	sd	zero,16(s1)
    80007a80:	0ff0000f          	fence
    80007a84:	0f50000f          	fence	iorw,ow
    80007a88:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007a8c:	ffffe097          	auipc	ra,0xffffe
    80007a90:	7f8080e7          	jalr	2040(ra) # 80006284 <mycpu>
    80007a94:	100027f3          	csrr	a5,sstatus
    80007a98:	0027f793          	andi	a5,a5,2
    80007a9c:	04079a63          	bnez	a5,80007af0 <release+0xb8>
    80007aa0:	07852783          	lw	a5,120(a0)
    80007aa4:	02f05e63          	blez	a5,80007ae0 <release+0xa8>
    80007aa8:	fff7871b          	addiw	a4,a5,-1
    80007aac:	06e52c23          	sw	a4,120(a0)
    80007ab0:	00071c63          	bnez	a4,80007ac8 <release+0x90>
    80007ab4:	07c52783          	lw	a5,124(a0)
    80007ab8:	00078863          	beqz	a5,80007ac8 <release+0x90>
    80007abc:	100027f3          	csrr	a5,sstatus
    80007ac0:	0027e793          	ori	a5,a5,2
    80007ac4:	10079073          	csrw	sstatus,a5
    80007ac8:	01813083          	ld	ra,24(sp)
    80007acc:	01013403          	ld	s0,16(sp)
    80007ad0:	00813483          	ld	s1,8(sp)
    80007ad4:	00013903          	ld	s2,0(sp)
    80007ad8:	02010113          	addi	sp,sp,32
    80007adc:	00008067          	ret
    80007ae0:	00002517          	auipc	a0,0x2
    80007ae4:	ab850513          	addi	a0,a0,-1352 # 80009598 <digits+0x48>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	154080e7          	jalr	340(ra) # 80006c3c <panic>
    80007af0:	00002517          	auipc	a0,0x2
    80007af4:	a9050513          	addi	a0,a0,-1392 # 80009580 <digits+0x30>
    80007af8:	fffff097          	auipc	ra,0xfffff
    80007afc:	144080e7          	jalr	324(ra) # 80006c3c <panic>

0000000080007b00 <holding>:
    80007b00:	00052783          	lw	a5,0(a0)
    80007b04:	00079663          	bnez	a5,80007b10 <holding+0x10>
    80007b08:	00000513          	li	a0,0
    80007b0c:	00008067          	ret
    80007b10:	fe010113          	addi	sp,sp,-32
    80007b14:	00813823          	sd	s0,16(sp)
    80007b18:	00913423          	sd	s1,8(sp)
    80007b1c:	00113c23          	sd	ra,24(sp)
    80007b20:	02010413          	addi	s0,sp,32
    80007b24:	01053483          	ld	s1,16(a0)
    80007b28:	ffffe097          	auipc	ra,0xffffe
    80007b2c:	75c080e7          	jalr	1884(ra) # 80006284 <mycpu>
    80007b30:	01813083          	ld	ra,24(sp)
    80007b34:	01013403          	ld	s0,16(sp)
    80007b38:	40a48533          	sub	a0,s1,a0
    80007b3c:	00153513          	seqz	a0,a0
    80007b40:	00813483          	ld	s1,8(sp)
    80007b44:	02010113          	addi	sp,sp,32
    80007b48:	00008067          	ret

0000000080007b4c <push_off>:
    80007b4c:	fe010113          	addi	sp,sp,-32
    80007b50:	00813823          	sd	s0,16(sp)
    80007b54:	00113c23          	sd	ra,24(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	02010413          	addi	s0,sp,32
    80007b60:	100024f3          	csrr	s1,sstatus
    80007b64:	100027f3          	csrr	a5,sstatus
    80007b68:	ffd7f793          	andi	a5,a5,-3
    80007b6c:	10079073          	csrw	sstatus,a5
    80007b70:	ffffe097          	auipc	ra,0xffffe
    80007b74:	714080e7          	jalr	1812(ra) # 80006284 <mycpu>
    80007b78:	07852783          	lw	a5,120(a0)
    80007b7c:	02078663          	beqz	a5,80007ba8 <push_off+0x5c>
    80007b80:	ffffe097          	auipc	ra,0xffffe
    80007b84:	704080e7          	jalr	1796(ra) # 80006284 <mycpu>
    80007b88:	07852783          	lw	a5,120(a0)
    80007b8c:	01813083          	ld	ra,24(sp)
    80007b90:	01013403          	ld	s0,16(sp)
    80007b94:	0017879b          	addiw	a5,a5,1
    80007b98:	06f52c23          	sw	a5,120(a0)
    80007b9c:	00813483          	ld	s1,8(sp)
    80007ba0:	02010113          	addi	sp,sp,32
    80007ba4:	00008067          	ret
    80007ba8:	0014d493          	srli	s1,s1,0x1
    80007bac:	ffffe097          	auipc	ra,0xffffe
    80007bb0:	6d8080e7          	jalr	1752(ra) # 80006284 <mycpu>
    80007bb4:	0014f493          	andi	s1,s1,1
    80007bb8:	06952e23          	sw	s1,124(a0)
    80007bbc:	fc5ff06f          	j	80007b80 <push_off+0x34>

0000000080007bc0 <pop_off>:
    80007bc0:	ff010113          	addi	sp,sp,-16
    80007bc4:	00813023          	sd	s0,0(sp)
    80007bc8:	00113423          	sd	ra,8(sp)
    80007bcc:	01010413          	addi	s0,sp,16
    80007bd0:	ffffe097          	auipc	ra,0xffffe
    80007bd4:	6b4080e7          	jalr	1716(ra) # 80006284 <mycpu>
    80007bd8:	100027f3          	csrr	a5,sstatus
    80007bdc:	0027f793          	andi	a5,a5,2
    80007be0:	04079663          	bnez	a5,80007c2c <pop_off+0x6c>
    80007be4:	07852783          	lw	a5,120(a0)
    80007be8:	02f05a63          	blez	a5,80007c1c <pop_off+0x5c>
    80007bec:	fff7871b          	addiw	a4,a5,-1
    80007bf0:	06e52c23          	sw	a4,120(a0)
    80007bf4:	00071c63          	bnez	a4,80007c0c <pop_off+0x4c>
    80007bf8:	07c52783          	lw	a5,124(a0)
    80007bfc:	00078863          	beqz	a5,80007c0c <pop_off+0x4c>
    80007c00:	100027f3          	csrr	a5,sstatus
    80007c04:	0027e793          	ori	a5,a5,2
    80007c08:	10079073          	csrw	sstatus,a5
    80007c0c:	00813083          	ld	ra,8(sp)
    80007c10:	00013403          	ld	s0,0(sp)
    80007c14:	01010113          	addi	sp,sp,16
    80007c18:	00008067          	ret
    80007c1c:	00002517          	auipc	a0,0x2
    80007c20:	97c50513          	addi	a0,a0,-1668 # 80009598 <digits+0x48>
    80007c24:	fffff097          	auipc	ra,0xfffff
    80007c28:	018080e7          	jalr	24(ra) # 80006c3c <panic>
    80007c2c:	00002517          	auipc	a0,0x2
    80007c30:	95450513          	addi	a0,a0,-1708 # 80009580 <digits+0x30>
    80007c34:	fffff097          	auipc	ra,0xfffff
    80007c38:	008080e7          	jalr	8(ra) # 80006c3c <panic>

0000000080007c3c <push_on>:
    80007c3c:	fe010113          	addi	sp,sp,-32
    80007c40:	00813823          	sd	s0,16(sp)
    80007c44:	00113c23          	sd	ra,24(sp)
    80007c48:	00913423          	sd	s1,8(sp)
    80007c4c:	02010413          	addi	s0,sp,32
    80007c50:	100024f3          	csrr	s1,sstatus
    80007c54:	100027f3          	csrr	a5,sstatus
    80007c58:	0027e793          	ori	a5,a5,2
    80007c5c:	10079073          	csrw	sstatus,a5
    80007c60:	ffffe097          	auipc	ra,0xffffe
    80007c64:	624080e7          	jalr	1572(ra) # 80006284 <mycpu>
    80007c68:	07852783          	lw	a5,120(a0)
    80007c6c:	02078663          	beqz	a5,80007c98 <push_on+0x5c>
    80007c70:	ffffe097          	auipc	ra,0xffffe
    80007c74:	614080e7          	jalr	1556(ra) # 80006284 <mycpu>
    80007c78:	07852783          	lw	a5,120(a0)
    80007c7c:	01813083          	ld	ra,24(sp)
    80007c80:	01013403          	ld	s0,16(sp)
    80007c84:	0017879b          	addiw	a5,a5,1
    80007c88:	06f52c23          	sw	a5,120(a0)
    80007c8c:	00813483          	ld	s1,8(sp)
    80007c90:	02010113          	addi	sp,sp,32
    80007c94:	00008067          	ret
    80007c98:	0014d493          	srli	s1,s1,0x1
    80007c9c:	ffffe097          	auipc	ra,0xffffe
    80007ca0:	5e8080e7          	jalr	1512(ra) # 80006284 <mycpu>
    80007ca4:	0014f493          	andi	s1,s1,1
    80007ca8:	06952e23          	sw	s1,124(a0)
    80007cac:	fc5ff06f          	j	80007c70 <push_on+0x34>

0000000080007cb0 <pop_on>:
    80007cb0:	ff010113          	addi	sp,sp,-16
    80007cb4:	00813023          	sd	s0,0(sp)
    80007cb8:	00113423          	sd	ra,8(sp)
    80007cbc:	01010413          	addi	s0,sp,16
    80007cc0:	ffffe097          	auipc	ra,0xffffe
    80007cc4:	5c4080e7          	jalr	1476(ra) # 80006284 <mycpu>
    80007cc8:	100027f3          	csrr	a5,sstatus
    80007ccc:	0027f793          	andi	a5,a5,2
    80007cd0:	04078463          	beqz	a5,80007d18 <pop_on+0x68>
    80007cd4:	07852783          	lw	a5,120(a0)
    80007cd8:	02f05863          	blez	a5,80007d08 <pop_on+0x58>
    80007cdc:	fff7879b          	addiw	a5,a5,-1
    80007ce0:	06f52c23          	sw	a5,120(a0)
    80007ce4:	07853783          	ld	a5,120(a0)
    80007ce8:	00079863          	bnez	a5,80007cf8 <pop_on+0x48>
    80007cec:	100027f3          	csrr	a5,sstatus
    80007cf0:	ffd7f793          	andi	a5,a5,-3
    80007cf4:	10079073          	csrw	sstatus,a5
    80007cf8:	00813083          	ld	ra,8(sp)
    80007cfc:	00013403          	ld	s0,0(sp)
    80007d00:	01010113          	addi	sp,sp,16
    80007d04:	00008067          	ret
    80007d08:	00002517          	auipc	a0,0x2
    80007d0c:	8b850513          	addi	a0,a0,-1864 # 800095c0 <digits+0x70>
    80007d10:	fffff097          	auipc	ra,0xfffff
    80007d14:	f2c080e7          	jalr	-212(ra) # 80006c3c <panic>
    80007d18:	00002517          	auipc	a0,0x2
    80007d1c:	88850513          	addi	a0,a0,-1912 # 800095a0 <digits+0x50>
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	f1c080e7          	jalr	-228(ra) # 80006c3c <panic>

0000000080007d28 <__memset>:
    80007d28:	ff010113          	addi	sp,sp,-16
    80007d2c:	00813423          	sd	s0,8(sp)
    80007d30:	01010413          	addi	s0,sp,16
    80007d34:	1a060e63          	beqz	a2,80007ef0 <__memset+0x1c8>
    80007d38:	40a007b3          	neg	a5,a0
    80007d3c:	0077f793          	andi	a5,a5,7
    80007d40:	00778693          	addi	a3,a5,7
    80007d44:	00b00813          	li	a6,11
    80007d48:	0ff5f593          	andi	a1,a1,255
    80007d4c:	fff6071b          	addiw	a4,a2,-1
    80007d50:	1b06e663          	bltu	a3,a6,80007efc <__memset+0x1d4>
    80007d54:	1cd76463          	bltu	a4,a3,80007f1c <__memset+0x1f4>
    80007d58:	1a078e63          	beqz	a5,80007f14 <__memset+0x1ec>
    80007d5c:	00b50023          	sb	a1,0(a0)
    80007d60:	00100713          	li	a4,1
    80007d64:	1ae78463          	beq	a5,a4,80007f0c <__memset+0x1e4>
    80007d68:	00b500a3          	sb	a1,1(a0)
    80007d6c:	00200713          	li	a4,2
    80007d70:	1ae78a63          	beq	a5,a4,80007f24 <__memset+0x1fc>
    80007d74:	00b50123          	sb	a1,2(a0)
    80007d78:	00300713          	li	a4,3
    80007d7c:	18e78463          	beq	a5,a4,80007f04 <__memset+0x1dc>
    80007d80:	00b501a3          	sb	a1,3(a0)
    80007d84:	00400713          	li	a4,4
    80007d88:	1ae78263          	beq	a5,a4,80007f2c <__memset+0x204>
    80007d8c:	00b50223          	sb	a1,4(a0)
    80007d90:	00500713          	li	a4,5
    80007d94:	1ae78063          	beq	a5,a4,80007f34 <__memset+0x20c>
    80007d98:	00b502a3          	sb	a1,5(a0)
    80007d9c:	00700713          	li	a4,7
    80007da0:	18e79e63          	bne	a5,a4,80007f3c <__memset+0x214>
    80007da4:	00b50323          	sb	a1,6(a0)
    80007da8:	00700e93          	li	t4,7
    80007dac:	00859713          	slli	a4,a1,0x8
    80007db0:	00e5e733          	or	a4,a1,a4
    80007db4:	01059e13          	slli	t3,a1,0x10
    80007db8:	01c76e33          	or	t3,a4,t3
    80007dbc:	01859313          	slli	t1,a1,0x18
    80007dc0:	006e6333          	or	t1,t3,t1
    80007dc4:	02059893          	slli	a7,a1,0x20
    80007dc8:	40f60e3b          	subw	t3,a2,a5
    80007dcc:	011368b3          	or	a7,t1,a7
    80007dd0:	02859813          	slli	a6,a1,0x28
    80007dd4:	0108e833          	or	a6,a7,a6
    80007dd8:	03059693          	slli	a3,a1,0x30
    80007ddc:	003e589b          	srliw	a7,t3,0x3
    80007de0:	00d866b3          	or	a3,a6,a3
    80007de4:	03859713          	slli	a4,a1,0x38
    80007de8:	00389813          	slli	a6,a7,0x3
    80007dec:	00f507b3          	add	a5,a0,a5
    80007df0:	00e6e733          	or	a4,a3,a4
    80007df4:	000e089b          	sext.w	a7,t3
    80007df8:	00f806b3          	add	a3,a6,a5
    80007dfc:	00e7b023          	sd	a4,0(a5)
    80007e00:	00878793          	addi	a5,a5,8
    80007e04:	fed79ce3          	bne	a5,a3,80007dfc <__memset+0xd4>
    80007e08:	ff8e7793          	andi	a5,t3,-8
    80007e0c:	0007871b          	sext.w	a4,a5
    80007e10:	01d787bb          	addw	a5,a5,t4
    80007e14:	0ce88e63          	beq	a7,a4,80007ef0 <__memset+0x1c8>
    80007e18:	00f50733          	add	a4,a0,a5
    80007e1c:	00b70023          	sb	a1,0(a4)
    80007e20:	0017871b          	addiw	a4,a5,1
    80007e24:	0cc77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e28:	00e50733          	add	a4,a0,a4
    80007e2c:	00b70023          	sb	a1,0(a4)
    80007e30:	0027871b          	addiw	a4,a5,2
    80007e34:	0ac77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e38:	00e50733          	add	a4,a0,a4
    80007e3c:	00b70023          	sb	a1,0(a4)
    80007e40:	0037871b          	addiw	a4,a5,3
    80007e44:	0ac77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e48:	00e50733          	add	a4,a0,a4
    80007e4c:	00b70023          	sb	a1,0(a4)
    80007e50:	0047871b          	addiw	a4,a5,4
    80007e54:	08c77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e58:	00e50733          	add	a4,a0,a4
    80007e5c:	00b70023          	sb	a1,0(a4)
    80007e60:	0057871b          	addiw	a4,a5,5
    80007e64:	08c77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00b70023          	sb	a1,0(a4)
    80007e70:	0067871b          	addiw	a4,a5,6
    80007e74:	06c77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00b70023          	sb	a1,0(a4)
    80007e80:	0077871b          	addiw	a4,a5,7
    80007e84:	06c77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00b70023          	sb	a1,0(a4)
    80007e90:	0087871b          	addiw	a4,a5,8
    80007e94:	04c77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00b70023          	sb	a1,0(a4)
    80007ea0:	0097871b          	addiw	a4,a5,9
    80007ea4:	04c77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007ea8:	00e50733          	add	a4,a0,a4
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	00a7871b          	addiw	a4,a5,10
    80007eb4:	02c77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	00b7871b          	addiw	a4,a5,11
    80007ec4:	02c77663          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007ec8:	00e50733          	add	a4,a0,a4
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	00c7871b          	addiw	a4,a5,12
    80007ed4:	00c77e63          	bgeu	a4,a2,80007ef0 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	00d7879b          	addiw	a5,a5,13
    80007ee4:	00c7f663          	bgeu	a5,a2,80007ef0 <__memset+0x1c8>
    80007ee8:	00f507b3          	add	a5,a0,a5
    80007eec:	00b78023          	sb	a1,0(a5)
    80007ef0:	00813403          	ld	s0,8(sp)
    80007ef4:	01010113          	addi	sp,sp,16
    80007ef8:	00008067          	ret
    80007efc:	00b00693          	li	a3,11
    80007f00:	e55ff06f          	j	80007d54 <__memset+0x2c>
    80007f04:	00300e93          	li	t4,3
    80007f08:	ea5ff06f          	j	80007dac <__memset+0x84>
    80007f0c:	00100e93          	li	t4,1
    80007f10:	e9dff06f          	j	80007dac <__memset+0x84>
    80007f14:	00000e93          	li	t4,0
    80007f18:	e95ff06f          	j	80007dac <__memset+0x84>
    80007f1c:	00000793          	li	a5,0
    80007f20:	ef9ff06f          	j	80007e18 <__memset+0xf0>
    80007f24:	00200e93          	li	t4,2
    80007f28:	e85ff06f          	j	80007dac <__memset+0x84>
    80007f2c:	00400e93          	li	t4,4
    80007f30:	e7dff06f          	j	80007dac <__memset+0x84>
    80007f34:	00500e93          	li	t4,5
    80007f38:	e75ff06f          	j	80007dac <__memset+0x84>
    80007f3c:	00600e93          	li	t4,6
    80007f40:	e6dff06f          	j	80007dac <__memset+0x84>

0000000080007f44 <__memmove>:
    80007f44:	ff010113          	addi	sp,sp,-16
    80007f48:	00813423          	sd	s0,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	0e060863          	beqz	a2,80008040 <__memmove+0xfc>
    80007f54:	fff6069b          	addiw	a3,a2,-1
    80007f58:	0006881b          	sext.w	a6,a3
    80007f5c:	0ea5e863          	bltu	a1,a0,8000804c <__memmove+0x108>
    80007f60:	00758713          	addi	a4,a1,7
    80007f64:	00a5e7b3          	or	a5,a1,a0
    80007f68:	40a70733          	sub	a4,a4,a0
    80007f6c:	0077f793          	andi	a5,a5,7
    80007f70:	00f73713          	sltiu	a4,a4,15
    80007f74:	00174713          	xori	a4,a4,1
    80007f78:	0017b793          	seqz	a5,a5
    80007f7c:	00e7f7b3          	and	a5,a5,a4
    80007f80:	10078863          	beqz	a5,80008090 <__memmove+0x14c>
    80007f84:	00900793          	li	a5,9
    80007f88:	1107f463          	bgeu	a5,a6,80008090 <__memmove+0x14c>
    80007f8c:	0036581b          	srliw	a6,a2,0x3
    80007f90:	fff8081b          	addiw	a6,a6,-1
    80007f94:	02081813          	slli	a6,a6,0x20
    80007f98:	01d85893          	srli	a7,a6,0x1d
    80007f9c:	00858813          	addi	a6,a1,8
    80007fa0:	00058793          	mv	a5,a1
    80007fa4:	00050713          	mv	a4,a0
    80007fa8:	01088833          	add	a6,a7,a6
    80007fac:	0007b883          	ld	a7,0(a5)
    80007fb0:	00878793          	addi	a5,a5,8
    80007fb4:	00870713          	addi	a4,a4,8
    80007fb8:	ff173c23          	sd	a7,-8(a4)
    80007fbc:	ff0798e3          	bne	a5,a6,80007fac <__memmove+0x68>
    80007fc0:	ff867713          	andi	a4,a2,-8
    80007fc4:	02071793          	slli	a5,a4,0x20
    80007fc8:	0207d793          	srli	a5,a5,0x20
    80007fcc:	00f585b3          	add	a1,a1,a5
    80007fd0:	40e686bb          	subw	a3,a3,a4
    80007fd4:	00f507b3          	add	a5,a0,a5
    80007fd8:	06e60463          	beq	a2,a4,80008040 <__memmove+0xfc>
    80007fdc:	0005c703          	lbu	a4,0(a1)
    80007fe0:	00e78023          	sb	a4,0(a5)
    80007fe4:	04068e63          	beqz	a3,80008040 <__memmove+0xfc>
    80007fe8:	0015c603          	lbu	a2,1(a1)
    80007fec:	00100713          	li	a4,1
    80007ff0:	00c780a3          	sb	a2,1(a5)
    80007ff4:	04e68663          	beq	a3,a4,80008040 <__memmove+0xfc>
    80007ff8:	0025c603          	lbu	a2,2(a1)
    80007ffc:	00200713          	li	a4,2
    80008000:	00c78123          	sb	a2,2(a5)
    80008004:	02e68e63          	beq	a3,a4,80008040 <__memmove+0xfc>
    80008008:	0035c603          	lbu	a2,3(a1)
    8000800c:	00300713          	li	a4,3
    80008010:	00c781a3          	sb	a2,3(a5)
    80008014:	02e68663          	beq	a3,a4,80008040 <__memmove+0xfc>
    80008018:	0045c603          	lbu	a2,4(a1)
    8000801c:	00400713          	li	a4,4
    80008020:	00c78223          	sb	a2,4(a5)
    80008024:	00e68e63          	beq	a3,a4,80008040 <__memmove+0xfc>
    80008028:	0055c603          	lbu	a2,5(a1)
    8000802c:	00500713          	li	a4,5
    80008030:	00c782a3          	sb	a2,5(a5)
    80008034:	00e68663          	beq	a3,a4,80008040 <__memmove+0xfc>
    80008038:	0065c703          	lbu	a4,6(a1)
    8000803c:	00e78323          	sb	a4,6(a5)
    80008040:	00813403          	ld	s0,8(sp)
    80008044:	01010113          	addi	sp,sp,16
    80008048:	00008067          	ret
    8000804c:	02061713          	slli	a4,a2,0x20
    80008050:	02075713          	srli	a4,a4,0x20
    80008054:	00e587b3          	add	a5,a1,a4
    80008058:	f0f574e3          	bgeu	a0,a5,80007f60 <__memmove+0x1c>
    8000805c:	02069613          	slli	a2,a3,0x20
    80008060:	02065613          	srli	a2,a2,0x20
    80008064:	fff64613          	not	a2,a2
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00c78633          	add	a2,a5,a2
    80008070:	fff7c683          	lbu	a3,-1(a5)
    80008074:	fff78793          	addi	a5,a5,-1
    80008078:	fff70713          	addi	a4,a4,-1
    8000807c:	00d70023          	sb	a3,0(a4)
    80008080:	fec798e3          	bne	a5,a2,80008070 <__memmove+0x12c>
    80008084:	00813403          	ld	s0,8(sp)
    80008088:	01010113          	addi	sp,sp,16
    8000808c:	00008067          	ret
    80008090:	02069713          	slli	a4,a3,0x20
    80008094:	02075713          	srli	a4,a4,0x20
    80008098:	00170713          	addi	a4,a4,1
    8000809c:	00e50733          	add	a4,a0,a4
    800080a0:	00050793          	mv	a5,a0
    800080a4:	0005c683          	lbu	a3,0(a1)
    800080a8:	00178793          	addi	a5,a5,1
    800080ac:	00158593          	addi	a1,a1,1
    800080b0:	fed78fa3          	sb	a3,-1(a5)
    800080b4:	fee798e3          	bne	a5,a4,800080a4 <__memmove+0x160>
    800080b8:	f89ff06f          	j	80008040 <__memmove+0xfc>

00000000800080bc <__putc>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00113c23          	sd	ra,24(sp)
    800080c8:	02010413          	addi	s0,sp,32
    800080cc:	00050793          	mv	a5,a0
    800080d0:	fef40593          	addi	a1,s0,-17
    800080d4:	00100613          	li	a2,1
    800080d8:	00000513          	li	a0,0
    800080dc:	fef407a3          	sb	a5,-17(s0)
    800080e0:	fffff097          	auipc	ra,0xfffff
    800080e4:	b3c080e7          	jalr	-1220(ra) # 80006c1c <console_write>
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	01013403          	ld	s0,16(sp)
    800080f0:	02010113          	addi	sp,sp,32
    800080f4:	00008067          	ret

00000000800080f8 <__getc>:
    800080f8:	fe010113          	addi	sp,sp,-32
    800080fc:	00813823          	sd	s0,16(sp)
    80008100:	00113c23          	sd	ra,24(sp)
    80008104:	02010413          	addi	s0,sp,32
    80008108:	fe840593          	addi	a1,s0,-24
    8000810c:	00100613          	li	a2,1
    80008110:	00000513          	li	a0,0
    80008114:	fffff097          	auipc	ra,0xfffff
    80008118:	ae8080e7          	jalr	-1304(ra) # 80006bfc <console_read>
    8000811c:	fe844503          	lbu	a0,-24(s0)
    80008120:	01813083          	ld	ra,24(sp)
    80008124:	01013403          	ld	s0,16(sp)
    80008128:	02010113          	addi	sp,sp,32
    8000812c:	00008067          	ret

0000000080008130 <console_handler>:
    80008130:	fe010113          	addi	sp,sp,-32
    80008134:	00813823          	sd	s0,16(sp)
    80008138:	00113c23          	sd	ra,24(sp)
    8000813c:	00913423          	sd	s1,8(sp)
    80008140:	02010413          	addi	s0,sp,32
    80008144:	14202773          	csrr	a4,scause
    80008148:	100027f3          	csrr	a5,sstatus
    8000814c:	0027f793          	andi	a5,a5,2
    80008150:	06079e63          	bnez	a5,800081cc <console_handler+0x9c>
    80008154:	00074c63          	bltz	a4,8000816c <console_handler+0x3c>
    80008158:	01813083          	ld	ra,24(sp)
    8000815c:	01013403          	ld	s0,16(sp)
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	02010113          	addi	sp,sp,32
    80008168:	00008067          	ret
    8000816c:	0ff77713          	andi	a4,a4,255
    80008170:	00900793          	li	a5,9
    80008174:	fef712e3          	bne	a4,a5,80008158 <console_handler+0x28>
    80008178:	ffffe097          	auipc	ra,0xffffe
    8000817c:	6dc080e7          	jalr	1756(ra) # 80006854 <plic_claim>
    80008180:	00a00793          	li	a5,10
    80008184:	00050493          	mv	s1,a0
    80008188:	02f50c63          	beq	a0,a5,800081c0 <console_handler+0x90>
    8000818c:	fc0506e3          	beqz	a0,80008158 <console_handler+0x28>
    80008190:	00050593          	mv	a1,a0
    80008194:	00001517          	auipc	a0,0x1
    80008198:	33450513          	addi	a0,a0,820 # 800094c8 <_ZL6digits+0xf8>
    8000819c:	fffff097          	auipc	ra,0xfffff
    800081a0:	afc080e7          	jalr	-1284(ra) # 80006c98 <__printf>
    800081a4:	01013403          	ld	s0,16(sp)
    800081a8:	01813083          	ld	ra,24(sp)
    800081ac:	00048513          	mv	a0,s1
    800081b0:	00813483          	ld	s1,8(sp)
    800081b4:	02010113          	addi	sp,sp,32
    800081b8:	ffffe317          	auipc	t1,0xffffe
    800081bc:	6d430067          	jr	1748(t1) # 8000688c <plic_complete>
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	3e0080e7          	jalr	992(ra) # 800075a0 <uartintr>
    800081c8:	fddff06f          	j	800081a4 <console_handler+0x74>
    800081cc:	00001517          	auipc	a0,0x1
    800081d0:	3fc50513          	addi	a0,a0,1020 # 800095c8 <digits+0x78>
    800081d4:	fffff097          	auipc	ra,0xfffff
    800081d8:	a68080e7          	jalr	-1432(ra) # 80006c3c <panic>
	...
