
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	d9013103          	ld	sp,-624(sp) # 80008d90 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	40d040ef          	jal	ra,80004c28 <start>

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
    80001080:	5e5010ef          	jal	ra,80002e64 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001464:	00006517          	auipc	a0,0x6
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80007020 <CONSOLE_STATUS+0x10>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	8c0080e7          	jalr	-1856(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001494:	00006517          	auipc	a0,0x6
    80001498:	b9450513          	addi	a0,a0,-1132 # 80007028 <CONSOLE_STATUS+0x18>
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	890080e7          	jalr	-1904(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    800014b4:	00006517          	auipc	a0,0x6
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80007040 <CONSOLE_STATUS+0x30>
    800014bc:	00002097          	auipc	ra,0x2
    800014c0:	870080e7          	jalr	-1936(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	8d4080e7          	jalr	-1836(ra) # 80002d9c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00006517          	auipc	a0,0x6
    800014d4:	d4850513          	addi	a0,a0,-696 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	854080e7          	jalr	-1964(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    8000152c:	00006517          	auipc	a0,0x6
    80001530:	b1c50513          	addi	a0,a0,-1252 # 80007048 <CONSOLE_STATUS+0x38>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	7f8080e7          	jalr	2040(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    8000154c:	00006517          	auipc	a0,0x6
    80001550:	b1450513          	addi	a0,a0,-1260 # 80007060 <CONSOLE_STATUS+0x50>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	7d8080e7          	jalr	2008(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	83c080e7          	jalr	-1988(ra) # 80002d9c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00006517          	auipc	a0,0x6
    8000156c:	cb050513          	addi	a0,a0,-848 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	7bc080e7          	jalr	1980(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    800015c4:	00006517          	auipc	a0,0x6
    800015c8:	a8450513          	addi	a0,a0,-1404 # 80007048 <CONSOLE_STATUS+0x38>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	760080e7          	jalr	1888(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    800015f0:	00006517          	auipc	a0,0x6
    800015f4:	a7050513          	addi	a0,a0,-1424 # 80007060 <CONSOLE_STATUS+0x50>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	734080e7          	jalr	1844(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001600:	00048513          	mv	a0,s1
    80001604:	00001097          	auipc	ra,0x1
    80001608:	798080e7          	jalr	1944(ra) # 80002d9c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000160c:	00006517          	auipc	a0,0x6
    80001610:	c0c50513          	addi	a0,a0,-1012 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	718080e7          	jalr	1816(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001674:	00006517          	auipc	a0,0x6
    80001678:	9f450513          	addi	a0,a0,-1548 # 80007068 <CONSOLE_STATUS+0x58>
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	6b0080e7          	jalr	1712(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001698:	00007917          	auipc	s2,0x7
    8000169c:	75890913          	addi	s2,s2,1880 # 80008df0 <_ZL5mutex>
    800016a0:	00093503          	ld	a0,0(s2)
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	4b8080e7          	jalr	1208(ra) # 80002b5c <_ZN9Semaphore4waitEv>
        mutex->signal();
    800016ac:	00093503          	ld	a0,0(s2)
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	510080e7          	jalr	1296(ra) # 80002bc0 <_ZN9Semaphore6signalEv>
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
    800016e4:	00006517          	auipc	a0,0x6
    800016e8:	99450513          	addi	a0,a0,-1644 # 80007078 <CONSOLE_STATUS+0x68>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	640080e7          	jalr	1600(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    int x = 0;
    while(true)
    {
        mutex->wait();
    800016f4:	00007497          	auipc	s1,0x7
    800016f8:	6fc48493          	addi	s1,s1,1788 # 80008df0 <_ZL5mutex>
    800016fc:	0004b503          	ld	a0,0(s1)
    80001700:	00001097          	auipc	ra,0x1
    80001704:	45c080e7          	jalr	1116(ra) # 80002b5c <_ZN9Semaphore4waitEv>
        //__putc('2');
        //__putc('\n');
        mutex->signal();
    80001708:	0004b503          	ld	a0,0(s1)
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	4b4080e7          	jalr	1204(ra) # 80002bc0 <_ZN9Semaphore6signalEv>
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
    80001738:	00006517          	auipc	a0,0x6
    8000173c:	95050513          	addi	a0,a0,-1712 # 80007088 <CONSOLE_STATUS+0x78>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	5ec080e7          	jalr	1516(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    8000175c:	00007917          	auipc	s2,0x7
    80001760:	69490913          	addi	s2,s2,1684 # 80008df0 <_ZL5mutex>
    80001764:	00893503          	ld	a0,8(s2)
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	3f4080e7          	jalr	1012(ra) # 80002b5c <_ZN9Semaphore4waitEv>
        __putc('1');
    80001770:	03100513          	li	a0,49
    80001774:	00005097          	auipc	ra,0x5
    80001778:	578080e7          	jalr	1400(ra) # 80006cec <__putc>
        __putc('\n');
    8000177c:	00a00513          	li	a0,10
    80001780:	00005097          	auipc	ra,0x5
    80001784:	56c080e7          	jalr	1388(ra) # 80006cec <__putc>
        s2->signal();
    80001788:	01093503          	ld	a0,16(s2)
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	434080e7          	jalr	1076(ra) # 80002bc0 <_ZN9Semaphore6signalEv>
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
    800017c4:	00006517          	auipc	a0,0x6
    800017c8:	8d450513          	addi	a0,a0,-1836 # 80007098 <CONSOLE_STATUS+0x88>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	560080e7          	jalr	1376(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    800017e8:	00007917          	auipc	s2,0x7
    800017ec:	60890913          	addi	s2,s2,1544 # 80008df0 <_ZL5mutex>
    800017f0:	01093503          	ld	a0,16(s2)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	368080e7          	jalr	872(ra) # 80002b5c <_ZN9Semaphore4waitEv>
        __putc('2');
    800017fc:	03200513          	li	a0,50
    80001800:	00005097          	auipc	ra,0x5
    80001804:	4ec080e7          	jalr	1260(ra) # 80006cec <__putc>
        __putc('\n');
    80001808:	00a00513          	li	a0,10
    8000180c:	00005097          	auipc	ra,0x5
    80001810:	4e0080e7          	jalr	1248(ra) # 80006cec <__putc>
        s3->signal();
    80001814:	01893503          	ld	a0,24(s2)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	3a8080e7          	jalr	936(ra) # 80002bc0 <_ZN9Semaphore6signalEv>
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
    80001850:	00006517          	auipc	a0,0x6
    80001854:	85850513          	addi	a0,a0,-1960 # 800070a8 <CONSOLE_STATUS+0x98>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	4d4080e7          	jalr	1236(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001874:	00007917          	auipc	s2,0x7
    80001878:	57c90913          	addi	s2,s2,1404 # 80008df0 <_ZL5mutex>
    8000187c:	01893503          	ld	a0,24(s2)
    80001880:	00001097          	auipc	ra,0x1
    80001884:	2dc080e7          	jalr	732(ra) # 80002b5c <_ZN9Semaphore4waitEv>
        __putc('3');
    80001888:	03300513          	li	a0,51
    8000188c:	00005097          	auipc	ra,0x5
    80001890:	460080e7          	jalr	1120(ra) # 80006cec <__putc>
        __putc('\n');
    80001894:	00a00513          	li	a0,10
    80001898:	00005097          	auipc	ra,0x5
    8000189c:	454080e7          	jalr	1108(ra) # 80006cec <__putc>
        s1->signal();
    800018a0:	00893503          	ld	a0,8(s2)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	31c080e7          	jalr	796(ra) # 80002bc0 <_ZN9Semaphore6signalEv>
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
    800018e4:	0c0080e7          	jalr	192(ra) # 800029a0 <_Znwm>
    800018e8:	00050493          	mv	s1,a0
    800018ec:	00000613          	li	a2,0
    800018f0:	00000597          	auipc	a1,0x0
    800018f4:	b9058593          	addi	a1,a1,-1136 # 80001480 <_Z15thread1FunctionPv>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	1d8080e7          	jalr	472(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001900:	00048513          	mv	a0,s1
    80001904:	00001097          	auipc	ra,0x1
    80001908:	13c080e7          	jalr	316(ra) # 80002a40 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000190c:	02000513          	li	a0,32
    80001910:	00001097          	auipc	ra,0x1
    80001914:	090080e7          	jalr	144(ra) # 800029a0 <_Znwm>
    80001918:	00050913          	mv	s2,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	bf858593          	addi	a1,a1,-1032 # 80001518 <_Z15thread2FunctionPv>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	1a8080e7          	jalr	424(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001930:	00090513          	mv	a0,s2
    80001934:	00001097          	auipc	ra,0x1
    80001938:	10c080e7          	jalr	268(ra) # 80002a40 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	368080e7          	jalr	872(ra) # 80002ca4 <_ZN5Riscv16enableInterruptsEv>
    80001944:	01c0006f          	j	80001960 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001948:	00005517          	auipc	a0,0x5
    8000194c:	77050513          	addi	a0,a0,1904 # 800070b8 <CONSOLE_STATUS+0xa8>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	3dc080e7          	jalr	988(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001980:	00005517          	auipc	a0,0x5
    80001984:	74850513          	addi	a0,a0,1864 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	3a4080e7          	jalr	932(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001990:	00001097          	auipc	ra,0x1
    80001994:	334080e7          	jalr	820(ra) # 80002cc4 <_ZN5Riscv17disableInterruptsEv>
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
    800019bc:	010080e7          	jalr	16(ra) # 800029c8 <_ZdlPv>
    800019c0:	00090513          	mv	a0,s2
    800019c4:	00008097          	auipc	ra,0x8
    800019c8:	584080e7          	jalr	1412(ra) # 80009f48 <_Unwind_Resume>
    800019cc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	ff4080e7          	jalr	-12(ra) # 800029c8 <_ZdlPv>
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00008097          	auipc	ra,0x8
    800019e4:	568080e7          	jalr	1384(ra) # 80009f48 <_Unwind_Resume>

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
    80001a08:	f9c080e7          	jalr	-100(ra) # 800029a0 <_Znwm>
    80001a0c:	00050493          	mv	s1,a0
    80001a10:	00000613          	li	a2,0
    80001a14:	00000597          	auipc	a1,0x0
    80001a18:	a4058593          	addi	a1,a1,-1472 # 80001454 <_Z4idlePv>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	0b4080e7          	jalr	180(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	018080e7          	jalr	24(ra) # 80002a40 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a30:	02000513          	li	a0,32
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	f6c080e7          	jalr	-148(ra) # 800029a0 <_Znwm>
    80001a3c:	00050913          	mv	s2,a0
    80001a40:	00000613          	li	a2,0
    80001a44:	00000597          	auipc	a1,0x0
    80001a48:	a3c58593          	addi	a1,a1,-1476 # 80001480 <_Z15thread1FunctionPv>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	084080e7          	jalr	132(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a54:	00090513          	mv	a0,s2
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	fe8080e7          	jalr	-24(ra) # 80002a40 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a60:	02000513          	li	a0,32
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	f3c080e7          	jalr	-196(ra) # 800029a0 <_Znwm>
    80001a6c:	00050913          	mv	s2,a0
    80001a70:	00000613          	li	a2,0
    80001a74:	00000597          	auipc	a1,0x0
    80001a78:	b3c58593          	addi	a1,a1,-1220 # 800015b0 <_Z20thread2FunctionTest2Pv>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	054080e7          	jalr	84(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	fb8080e7          	jalr	-72(ra) # 80002a40 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	214080e7          	jalr	532(ra) # 80002ca4 <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001a98:	0084b783          	ld	a5,8(s1)
    80001a9c:	0307a703          	lw	a4,48(a5)
    80001aa0:	00300793          	li	a5,3
    80001aa4:	fef71ae3          	bne	a4,a5,80001a98 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001aa8:	00005517          	auipc	a0,0x5
    80001aac:	62050513          	addi	a0,a0,1568 # 800070c8 <CONSOLE_STATUS+0xb8>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	27c080e7          	jalr	636(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	20c080e7          	jalr	524(ra) # 80002cc4 <_ZN5Riscv17disableInterruptsEv>
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
    80001ae4:	ee8080e7          	jalr	-280(ra) # 800029c8 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	00008097          	auipc	ra,0x8
    80001af0:	45c080e7          	jalr	1116(ra) # 80009f48 <_Unwind_Resume>
    80001af4:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	ecc080e7          	jalr	-308(ra) # 800029c8 <_ZdlPv>
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00008097          	auipc	ra,0x8
    80001b0c:	440080e7          	jalr	1088(ra) # 80009f48 <_Unwind_Resume>
    80001b10:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b14:	00090513          	mv	a0,s2
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	eb0080e7          	jalr	-336(ra) # 800029c8 <_ZdlPv>
    80001b20:	00048513          	mv	a0,s1
    80001b24:	00008097          	auipc	ra,0x8
    80001b28:	424080e7          	jalr	1060(ra) # 80009f48 <_Unwind_Resume>

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
    80001b68:	00005517          	auipc	a0,0x5
    80001b6c:	56850513          	addi	a0,a0,1384 # 800070d0 <CONSOLE_STATUS+0xc0>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	1bc080e7          	jalr	444(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001bac:	00005517          	auipc	a0,0x5
    80001bb0:	53450513          	addi	a0,a0,1332 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	178080e7          	jalr	376(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001c00:	00005517          	auipc	a0,0x5
    80001c04:	4e050513          	addi	a0,a0,1248 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	124080e7          	jalr	292(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001c48:	00005517          	auipc	a0,0x5
    80001c4c:	49850513          	addi	a0,a0,1176 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	0dc080e7          	jalr	220(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001c8c:	00005517          	auipc	a0,0x5
    80001c90:	45450513          	addi	a0,a0,1108 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	098080e7          	jalr	152(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
            return;
    80001c9c:	f21ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001ca0:	00005517          	auipc	a0,0x5
    80001ca4:	44850513          	addi	a0,a0,1096 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	084080e7          	jalr	132(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    80001cb0:	f0dff06f          	j	80001bbc <_Z10mallocFreev+0x68>

0000000080001cb4 <_Z9bigMallocv>:
{
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001cc4:	00005517          	auipc	a0,0x5
    80001cc8:	42c50513          	addi	a0,a0,1068 # 800070f0 <CONSOLE_STATUS+0xe0>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	060080e7          	jalr	96(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cd4:	00007797          	auipc	a5,0x7
    80001cd8:	0cc7b783          	ld	a5,204(a5) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cdc:	0007b503          	ld	a0,0(a5)
    80001ce0:	00007797          	auipc	a5,0x7
    80001ce4:	0987b783          	ld	a5,152(a5) # 80008d78 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ce8:	0007b783          	ld	a5,0(a5)
    80001cec:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cf0:	06450513          	addi	a0,a0,100
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	554080e7          	jalr	1364(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001cfc:	02050263          	beqz	a0,80001d20 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001d00:	00005517          	auipc	a0,0x5
    80001d04:	3e050513          	addi	a0,a0,992 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	024080e7          	jalr	36(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001d20:	00005517          	auipc	a0,0x5
    80001d24:	3c850513          	addi	a0,a0,968 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	004080e7          	jalr	4(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001d50:	00005517          	auipc	a0,0x5
    80001d54:	3b050513          	addi	a0,a0,944 # 80007100 <CONSOLE_STATUS+0xf0>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	fd4080e7          	jalr	-44(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001da8:	ff8080e7          	jalr	-8(ra) # 80002d9c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001dac:	00005517          	auipc	a0,0x5
    80001db0:	46c50513          	addi	a0,a0,1132 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	f78080e7          	jalr	-136(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001dbc:	00291793          	slli	a5,s2,0x2
    80001dc0:	01278933          	add	s2,a5,s2
    80001dc4:	00191913          	slli	s2,s2,0x1
    80001dc8:	03390863          	beq	s2,s3,80001df8 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001dcc:	00005517          	auipc	a0,0x5
    80001dd0:	31450513          	addi	a0,a0,788 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	f58080e7          	jalr	-168(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
}
    80001ddc:	02813083          	ld	ra,40(sp)
    80001de0:	02013403          	ld	s0,32(sp)
    80001de4:	01813483          	ld	s1,24(sp)
    80001de8:	01013903          	ld	s2,16(sp)
    80001dec:	00813983          	ld	s3,8(sp)
    80001df0:	03010113          	addi	sp,sp,48
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00005517          	auipc	a0,0x5
    80001dfc:	2f050513          	addi	a0,a0,752 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	f2c080e7          	jalr	-212(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    80001e08:	fd5ff06f          	j	80001ddc <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e0c <_Z7badFreev>:
{
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e1c:	00005517          	auipc	a0,0x5
    80001e20:	2fc50513          	addi	a0,a0,764 # 80007118 <CONSOLE_STATUS+0x108>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	f08080e7          	jalr	-248(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001e48:	00005517          	auipc	a0,0x5
    80001e4c:	29850513          	addi	a0,a0,664 # 800070e0 <CONSOLE_STATUS+0xd0>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	edc080e7          	jalr	-292(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret
        Riscv::printString("OK\n");
    80001e68:	00005517          	auipc	a0,0x5
    80001e6c:	28050513          	addi	a0,a0,640 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	ebc080e7          	jalr	-324(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001e94:	00005517          	auipc	a0,0x5
    80001e98:	29450513          	addi	a0,a0,660 # 80007128 <CONSOLE_STATUS+0x118>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	e90080e7          	jalr	-368(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001fa8:	00005517          	auipc	a0,0x5
    80001fac:	14050513          	addi	a0,a0,320 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	d7c080e7          	jalr	-644(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
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
    80001ffc:	00800513          	li	a0,8
    80002000:	00001097          	auipc	ra,0x1
    80002004:	9a0080e7          	jalr	-1632(ra) # 800029a0 <_Znwm>
    80002008:	00050493          	mv	s1,a0
    8000200c:	00100593          	li	a1,1
    80002010:	00001097          	auipc	ra,0x1
    80002014:	b78080e7          	jalr	-1160(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80002018:	00007797          	auipc	a5,0x7
    8000201c:	dc97bc23          	sd	s1,-552(a5) # 80008df0 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002020:	02000513          	li	a0,32
    80002024:	00001097          	auipc	ra,0x1
    80002028:	97c080e7          	jalr	-1668(ra) # 800029a0 <_Znwm>
    8000202c:	00050913          	mv	s2,a0
    80002030:	00000613          	li	a2,0
    80002034:	fffff597          	auipc	a1,0xfffff
    80002038:	62858593          	addi	a1,a1,1576 # 8000165c <_Z2f1Pv>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	a94080e7          	jalr	-1388(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002044:	02000513          	li	a0,32
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	958080e7          	jalr	-1704(ra) # 800029a0 <_Znwm>
    80002050:	00050493          	mv	s1,a0
    80002054:	00000613          	li	a2,0
    80002058:	fffff597          	auipc	a1,0xfffff
    8000205c:	67858593          	addi	a1,a1,1656 # 800016d0 <_Z2f2Pv>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	a70080e7          	jalr	-1424(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80002068:	00090513          	mv	a0,s2
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	9d4080e7          	jalr	-1580(ra) # 80002a40 <_ZN6Thread5startEv>
    t2->start();
    80002074:	00048513          	mv	a0,s1
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	9c8080e7          	jalr	-1592(ra) # 80002a40 <_ZN6Thread5startEv>
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
    800020c0:	90c080e7          	jalr	-1780(ra) # 800029c8 <_ZdlPv>
    800020c4:	00090513          	mv	a0,s2
    800020c8:	00008097          	auipc	ra,0x8
    800020cc:	e80080e7          	jalr	-384(ra) # 80009f48 <_Unwind_Resume>
    800020d0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    800020d4:	00090513          	mv	a0,s2
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	8f0080e7          	jalr	-1808(ra) # 800029c8 <_ZdlPv>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00008097          	auipc	ra,0x8
    800020e8:	e64080e7          	jalr	-412(ra) # 80009f48 <_Unwind_Resume>
    800020ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	8d4080e7          	jalr	-1836(ra) # 800029c8 <_ZdlPv>
    800020fc:	00090513          	mv	a0,s2
    80002100:	00008097          	auipc	ra,0x8
    80002104:	e48080e7          	jalr	-440(ra) # 80009f48 <_Unwind_Resume>

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
    80002124:	00800513          	li	a0,8
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	878080e7          	jalr	-1928(ra) # 800029a0 <_Znwm>
    80002130:	00050493          	mv	s1,a0
    80002134:	00100593          	li	a1,1
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	a50080e7          	jalr	-1456(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80002140:	00007797          	auipc	a5,0x7
    80002144:	ca97bc23          	sd	s1,-840(a5) # 80008df8 <_ZL2s1>
    s2 = new Semaphore(0);
    80002148:	00800513          	li	a0,8
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	854080e7          	jalr	-1964(ra) # 800029a0 <_Znwm>
    80002154:	00050493          	mv	s1,a0
    80002158:	00000593          	li	a1,0
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	a2c080e7          	jalr	-1492(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80002164:	00007797          	auipc	a5,0x7
    80002168:	c897be23          	sd	s1,-868(a5) # 80008e00 <_ZL2s2>
    s3 = new Semaphore(0);
    8000216c:	00800513          	li	a0,8
    80002170:	00001097          	auipc	ra,0x1
    80002174:	830080e7          	jalr	-2000(ra) # 800029a0 <_Znwm>
    80002178:	00050493          	mv	s1,a0
    8000217c:	00000593          	li	a1,0
    80002180:	00001097          	auipc	ra,0x1
    80002184:	a08080e7          	jalr	-1528(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80002188:	00007797          	auipc	a5,0x7
    8000218c:	c897b023          	sd	s1,-896(a5) # 80008e08 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002190:	02000513          	li	a0,32
    80002194:	00001097          	auipc	ra,0x1
    80002198:	80c080e7          	jalr	-2036(ra) # 800029a0 <_Znwm>
    8000219c:	00050993          	mv	s3,a0
    800021a0:	00000613          	li	a2,0
    800021a4:	fffff597          	auipc	a1,0xfffff
    800021a8:	57c58593          	addi	a1,a1,1404 # 80001720 <_Z4f1_2Pv>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	924080e7          	jalr	-1756(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021b4:	02000513          	li	a0,32
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	7e8080e7          	jalr	2024(ra) # 800029a0 <_Znwm>
    800021c0:	00050913          	mv	s2,a0
    800021c4:	00000613          	li	a2,0
    800021c8:	fffff597          	auipc	a1,0xfffff
    800021cc:	5e458593          	addi	a1,a1,1508 # 800017ac <_Z4f2_2Pv>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	900080e7          	jalr	-1792(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    800021d8:	02000513          	li	a0,32
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	7c4080e7          	jalr	1988(ra) # 800029a0 <_Znwm>
    800021e4:	00050493          	mv	s1,a0
    800021e8:	00000613          	li	a2,0
    800021ec:	fffff597          	auipc	a1,0xfffff
    800021f0:	64c58593          	addi	a1,a1,1612 # 80001838 <_Z4f3_2Pv>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	8dc080e7          	jalr	-1828(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800021fc:	00048513          	mv	a0,s1
    80002200:	00001097          	auipc	ra,0x1
    80002204:	840080e7          	jalr	-1984(ra) # 80002a40 <_ZN6Thread5startEv>
    t2->start();
    80002208:	00090513          	mv	a0,s2
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	834080e7          	jalr	-1996(ra) # 80002a40 <_ZN6Thread5startEv>
    t1->start();
    80002214:	00098513          	mv	a0,s3
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	828080e7          	jalr	-2008(ra) # 80002a40 <_ZN6Thread5startEv>

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
    80002260:	00000097          	auipc	ra,0x0
    80002264:	768080e7          	jalr	1896(ra) # 800029c8 <_ZdlPv>
    80002268:	00090513          	mv	a0,s2
    8000226c:	00008097          	auipc	ra,0x8
    80002270:	cdc080e7          	jalr	-804(ra) # 80009f48 <_Unwind_Resume>
    80002274:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	74c080e7          	jalr	1868(ra) # 800029c8 <_ZdlPv>
    80002284:	00090513          	mv	a0,s2
    80002288:	00008097          	auipc	ra,0x8
    8000228c:	cc0080e7          	jalr	-832(ra) # 80009f48 <_Unwind_Resume>
    80002290:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002294:	00048513          	mv	a0,s1
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	730080e7          	jalr	1840(ra) # 800029c8 <_ZdlPv>
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00008097          	auipc	ra,0x8
    800022a8:	ca4080e7          	jalr	-860(ra) # 80009f48 <_Unwind_Resume>
    800022ac:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022b0:	00098513          	mv	a0,s3
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	714080e7          	jalr	1812(ra) # 800029c8 <_ZdlPv>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00008097          	auipc	ra,0x8
    800022c4:	c88080e7          	jalr	-888(ra) # 80009f48 <_Unwind_Resume>
    800022c8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	6f8080e7          	jalr	1784(ra) # 800029c8 <_ZdlPv>
    800022d8:	00048513          	mv	a0,s1
    800022dc:	00008097          	auipc	ra,0x8
    800022e0:	c6c080e7          	jalr	-916(ra) # 80009f48 <_Unwind_Resume>
    800022e4:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	6dc080e7          	jalr	1756(ra) # 800029c8 <_ZdlPv>
    800022f4:	00090513          	mv	a0,s2
    800022f8:	00008097          	auipc	ra,0x8
    800022fc:	c50080e7          	jalr	-944(ra) # 80009f48 <_Unwind_Resume>

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
    80002350:	fe010113          	addi	sp,sp,-32
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80002364:	00005517          	auipc	a0,0x5
    80002368:	dd450513          	addi	a0,a0,-556 # 80007138 <CONSOLE_STATUS+0x128>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	9c0080e7          	jalr	-1600(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002374:	00001097          	auipc	ra,0x1
    80002378:	998080e7          	jalr	-1640(ra) # 80002d0c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000237c:	00007497          	auipc	s1,0x7
    80002380:	a9448493          	addi	s1,s1,-1388 # 80008e10 <_ZN3PCB7runningE>
    80002384:	0004b783          	ld	a5,0(s1)
    80002388:	0187b703          	ld	a4,24(a5)
    8000238c:	0207b503          	ld	a0,32(a5)
    80002390:	000700e7          	jalr	a4
    //todo
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    running->setState(PCB::FINISHED);
    80002394:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80002398:	00300713          	li	a4,3
    8000239c:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("PCB finished\n");
    800023a0:	00005517          	auipc	a0,0x5
    800023a4:	db050513          	addi	a0,a0,-592 # 80007150 <CONSOLE_STATUS+0x140>
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	984080e7          	jalr	-1660(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	f74080e7          	jalr	-140(ra) # 80001324 <thread_dispatch>
}
    800023b8:	01813083          	ld	ra,24(sp)
    800023bc:	01013403          	ld	s0,16(sp)
    800023c0:	00813483          	ld	s1,8(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00008067          	ret

00000000800023cc <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	00050493          	mv	s1,a0
    })
    800023e4:	00e53423          	sd	a4,8(a0)
    800023e8:	00053823          	sd	zero,16(a0)
    800023ec:	00b53c23          	sd	a1,24(a0)
    800023f0:	02c53023          	sd	a2,32(a0)
    800023f4:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023f8:	000017b7          	lui	a5,0x1
    800023fc:	00f686b3          	add	a3,a3,a5
    })
    80002400:	02d53c23          	sd	a3,56(a0)
    80002404:	00000797          	auipc	a5,0x0
    80002408:	f4c78793          	addi	a5,a5,-180 # 80002350 <_ZN3PCB6runnerEv>
    8000240c:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80002410:	00000097          	auipc	ra,0x0
    80002414:	4a4080e7          	jalr	1188(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002418:	0004b023          	sd	zero,0(s1)
}
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret

0000000080002430 <_ZN3PCB5sleepEm>:
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
}
    8000243c:	00813403          	ld	s0,8(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <_ZN3PCB5startEv>:
{
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00113423          	sd	ra,8(sp)
    80002450:	00813023          	sd	s0,0(sp)
    80002454:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	45c080e7          	jalr	1116(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
}
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002470:	fe010113          	addi	sp,sp,-32
    80002474:	00113c23          	sd	ra,24(sp)
    80002478:	00813823          	sd	s0,16(sp)
    8000247c:	00913423          	sd	s1,8(sp)
    80002480:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002484:	00007497          	auipc	s1,0x7
    80002488:	98c4b483          	ld	s1,-1652(s1) # 80008e10 <_ZN3PCB7runningE>
    State getState() {return state;}
    8000248c:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002490:	00100793          	li	a5,1
    80002494:	04f70063          	beq	a4,a5,800024d4 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	470080e7          	jalr	1136(ra) # 80002908 <_ZN9Scheduler3getEv>
    800024a0:	00007797          	auipc	a5,0x7
    800024a4:	96a7b823          	sd	a0,-1680(a5) # 80008e10 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800024a8:	00100793          	li	a5,1
    800024ac:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    800024b0:	03850593          	addi	a1,a0,56
    800024b4:	03848513          	addi	a0,s1,56
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	d70080e7          	jalr	-656(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024c0:	01813083          	ld	ra,24(sp)
    800024c4:	01013403          	ld	s0,16(sp)
    800024c8:	00813483          	ld	s1,8(sp)
    800024cc:	02010113          	addi	sp,sp,32
    800024d0:	00008067          	ret
        Scheduler::put(old);
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	3dc080e7          	jalr	988(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    800024e0:	fb9ff06f          	j	80002498 <_ZN3PCB8dispatchEv+0x28>

00000000800024e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	0c4080e7          	jalr	196(ra) # 800035b8 <_Z7kmallocm>
}
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret

000000008000250c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	00813023          	sd	s0,0(sp)
    80002518:	01010413          	addi	s0,sp,16
    kfree(p);
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	0c4080e7          	jalr	196(ra) # 800035e0 <_Z5kfreePv>
}
    80002524:	00813083          	ld	ra,8(sp)
    80002528:	00013403          	ld	s0,0(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002544:	02853503          	ld	a0,40(a0)
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	098080e7          	jalr	152(ra) # 800035e0 <_Z5kfreePv>
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00013403          	ld	s0,0(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000256c:	00007797          	auipc	a5,0x7
    80002570:	82c7b783          	ld	a5,-2004(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002574:	0007b583          	ld	a1,0(a5)
    80002578:	00500793          	li	a5,5
    8000257c:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002580:	00007797          	auipc	a5,0x7
    80002584:	8a87b783          	ld	a5,-1880(a5) # 80008e28 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002588:	00000613          	li	a2,0
    while(curr != 0)
    8000258c:	02078063          	beqz	a5,800025ac <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002590:	0105b683          	ld	a3,16(a1)
    80002594:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002598:	00e6e863          	bltu	a3,a4,800025a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000259c:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    800025a0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800025a4:	fe9ff06f          	j	8000258c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800025a8:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    800025ac:	02060863          	beqz	a2,800025dc <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800025b0:	00006797          	auipc	a5,0x6
    800025b4:	7e87b783          	ld	a5,2024(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025b8:	0007b783          	ld	a5,0(a5)
    800025bc:	0107b703          	ld	a4,16(a5)
    800025c0:	01063683          	ld	a3,16(a2)
    800025c4:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800025c8:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800025cc:	00f63023          	sd	a5,0(a2)
    }
}
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800025dc:	00006797          	auipc	a5,0x6
    800025e0:	7bc7b783          	ld	a5,1980(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025e4:	0007b783          	ld	a5,0(a5)
    800025e8:	00007717          	auipc	a4,0x7
    800025ec:	84f73023          	sd	a5,-1984(a4) # 80008e28 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800025f0:	0007b703          	ld	a4,0(a5)
    800025f4:	fc070ee3          	beqz	a4,800025d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    800025f8:	01073683          	ld	a3,16(a4)
    800025fc:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002600:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002604:	00f73823          	sd	a5,16(a4)
    80002608:	fc9ff06f          	j	800025d0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

000000008000260c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002620:	00007517          	auipc	a0,0x7
    80002624:	80853503          	ld	a0,-2040(a0) # 80008e28 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002628:	02050663          	beqz	a0,80002654 <_ZN12SleepPCBList13tryToWakePCBsEv+0x48>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000262c:	01053783          	ld	a5,16(a0)
    {
        Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002630:	00100713          	li	a4,1
    80002634:	04e78863          	beq	a5,a4,80002684 <_ZN12SleepPCBList13tryToWakePCBsEv+0x78>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002638:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000263c:	00f53823          	sd	a5,16(a0)
    }
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret
        Riscv::printString("No sleeping PCBs...\n");
    80002654:	00005517          	auipc	a0,0x5
    80002658:	b0c50513          	addi	a0,a0,-1268 # 80007160 <CONSOLE_STATUS+0x150>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	6d0080e7          	jalr	1744(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
        return;
    80002664:	fddff06f          	j	80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
            curr = curr->nextPCB;
    80002668:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    8000266c:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002670:	00000097          	auipc	ra,0x0
    80002674:	244080e7          	jalr	580(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002678:	00006797          	auipc	a5,0x6
    8000267c:	7a97b823          	sd	s1,1968(a5) # 80008e28 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002680:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002684:	fa050ee3          	beqz	a0,80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
    80002688:	00006797          	auipc	a5,0x6
    8000268c:	7a07b783          	ld	a5,1952(a5) # 80008e28 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002690:	fca78ce3          	beq	a5,a0,80002668 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002694:	01053783          	ld	a5,16(a0)
    80002698:	fc0788e3          	beqz	a5,80002668 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    8000269c:	fa5ff06f          	j	80002640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>

00000000800026a0 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    800026a0:	fe010113          	addi	sp,sp,-32
    800026a4:	00113c23          	sd	ra,24(sp)
    800026a8:	00813823          	sd	s0,16(sp)
    800026ac:	00913423          	sd	s1,8(sp)
    800026b0:	01213023          	sd	s2,0(sp)
    800026b4:	02010413          	addi	s0,sp,32
    800026b8:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800026bc:	00053503          	ld	a0,0(a0)
    800026c0:	00853903          	ld	s2,8(a0)
    kfree(first);
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	f1c080e7          	jalr	-228(ra) # 800035e0 <_Z5kfreePv>
    first = newFirst;
    800026cc:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800026d0:	00090e63          	beqz	s2,800026ec <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	00013903          	ld	s2,0(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret
        first = last = 0;
    800026ec:	0004b423          	sd	zero,8(s1)
    800026f0:	0004b023          	sd	zero,0(s1)
}
    800026f4:	fe1ff06f          	j	800026d4 <_ZN5Queue3popEv+0x34>

00000000800026f8 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    800026f8:	fe010113          	addi	sp,sp,-32
    800026fc:	00113c23          	sd	ra,24(sp)
    80002700:	00813823          	sd	s0,16(sp)
    80002704:	00913423          	sd	s1,8(sp)
    80002708:	01213023          	sd	s2,0(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
    80002714:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002718:	01000513          	li	a0,16
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	e9c080e7          	jalr	-356(ra) # 800035b8 <_Z7kmallocm>
    newElem->data = t;
    80002724:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002728:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    8000272c:	0004b783          	ld	a5,0(s1)
    80002730:	02078463          	beqz	a5,80002758 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002734:	0084b783          	ld	a5,8(s1)
    80002738:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    8000273c:	00a4b423          	sd	a0,8(s1)
    }
}
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	01013403          	ld	s0,16(sp)
    80002748:	00813483          	ld	s1,8(sp)
    8000274c:	00013903          	ld	s2,0(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret
        first = newElem;
    80002758:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000275c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002760:	00053423          	sd	zero,8(a0)
    80002764:	0004b783          	ld	a5,0(s1)
    80002768:	0007b423          	sd	zero,8(a5)
    8000276c:	fd5ff06f          	j	80002740 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002770 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00813423          	sd	s0,8(sp)
    80002778:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000277c:	00053503          	ld	a0,0(a0)
    80002780:	00050463          	beqz	a0,80002788 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002784:	00053503          	ld	a0,0(a0)
}
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00813423          	sd	s0,8(sp)
    8000279c:	01010413          	addi	s0,sp,16
    first = last = 0;
    800027a0:	00053423          	sd	zero,8(a0)
    800027a4:	00053023          	sd	zero,0(a0)
}
    800027a8:	00813403          	ld	s0,8(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    800027b4:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800027b8:	04050063          	beqz	a0,800027f8 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800027d0:	00853483          	ld	s1,8(a0)
        kfree(old);
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	e0c080e7          	jalr	-500(ra) # 800035e0 <_Z5kfreePv>
        curr = curr->next;
    800027dc:	00048513          	mv	a0,s1
    while(curr != 0)
    800027e0:	fe0498e3          	bnez	s1,800027d0 <_ZN5QueueD1Ev+0x1c>
    }
}
    800027e4:	01813083          	ld	ra,24(sp)
    800027e8:	01013403          	ld	s0,16(sp)
    800027ec:	00813483          	ld	s1,8(sp)
    800027f0:	02010113          	addi	sp,sp,32
    800027f4:	00008067          	ret
    800027f8:	00008067          	ret

00000000800027fc <_ZN5Queue4sizeEv>:

int Queue::size() {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00813423          	sd	s0,8(sp)
    80002804:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002808:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000280c:	00000513          	li	a0,0
    while(curr != 0)
    80002810:	00078863          	beqz	a5,80002820 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002814:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002818:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000281c:	ff5ff06f          	j	80002810 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00113423          	sd	ra,8(sp)
    80002834:	00813023          	sd	s0,0(sp)
    80002838:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	d7c080e7          	jalr	-644(ra) # 800035b8 <_Z7kmallocm>
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    kfree(p);
    80002864:	00001097          	auipc	ra,0x1
    80002868:	d7c080e7          	jalr	-644(ra) # 800035e0 <_Z5kfreePv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00813423          	sd	s0,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002888:	00006797          	auipc	a5,0x6
    8000288c:	5a87b783          	ld	a5,1448(a5) # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002890:	00000513          	li	a0,0
    while(curr != 0)
    80002894:	00078863          	beqz	a5,800028a4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002898:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000289c:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800028a0:	ff5ff06f          	j	80002894 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800028a4:	0005051b          	sext.w	a0,a0
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800028c0:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800028c4:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800028c8:	00006797          	auipc	a5,0x6
    800028cc:	5687b783          	ld	a5,1384(a5) # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    800028d0:	02078263          	beqz	a5,800028f4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800028d4:	00006797          	auipc	a5,0x6
    800028d8:	55c78793          	addi	a5,a5,1372 # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    800028dc:	0087b703          	ld	a4,8(a5)
    800028e0:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    800028e4:	00a7b423          	sd	a0,8(a5)
    }
}
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800028f4:	00006797          	auipc	a5,0x6
    800028f8:	53c78793          	addi	a5,a5,1340 # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    800028fc:	00a7b423          	sd	a0,8(a5)
    80002900:	00a7b023          	sd	a0,0(a5)
    80002904:	fe5ff06f          	j	800028e8 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002908 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002914:	00006517          	auipc	a0,0x6
    80002918:	51c53503          	ld	a0,1308(a0) # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    8000291c:	00050c63          	beqz	a0,80002934 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002920:	00053783          	ld	a5,0(a0)
    80002924:	00078e63          	beqz	a5,80002940 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002928:	00006717          	auipc	a4,0x6
    8000292c:	50f73423          	sd	a5,1288(a4) # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002930:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002940:	00006797          	auipc	a5,0x6
    80002944:	4f078793          	addi	a5,a5,1264 # 80008e30 <_ZN9Scheduler16schedulerPCBHeadE>
    80002948:	0007b423          	sd	zero,8(a5)
    8000294c:	0007b023          	sd	zero,0(a5)
    80002950:	fe1ff06f          	j	80002930 <_ZN9Scheduler3getEv+0x28>

0000000080002954 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    80002964:	00000097          	auipc	ra,0x0
    80002968:	2a0080e7          	jalr	672(ra) # 80002c04 <_ZN5Riscv10initSystemEv>

    while(true)
    8000296c:	0000006f          	j	8000296c <main+0x18>

0000000080002970 <_ZN6ThreadD1Ev>:
    //todo
    //sta ovde treba da se uradi, mozda thread_exit()
    thread_dispatch();
}

Thread::~Thread() {
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00813423          	sd	s0,8(sp)
    80002978:	01010413          	addi	s0,sp,16

}
    8000297c:	00813403          	ld	s0,8(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN9SemaphoreD1Ev>:
        //what then
    }

}

Semaphore::~Semaphore() {
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00813423          	sd	s0,8(sp)
    80002990:	01010413          	addi	s0,sp,16

}
    80002994:	00813403          	ld	s0,8(sp)
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret

00000000800029a0 <_Znwm>:
{
    800029a0:	ff010113          	addi	sp,sp,-16
    800029a4:	00113423          	sd	ra,8(sp)
    800029a8:	00813023          	sd	s0,0(sp)
    800029ac:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	898080e7          	jalr	-1896(ra) # 80001248 <mem_alloc>
}
    800029b8:	00813083          	ld	ra,8(sp)
    800029bc:	00013403          	ld	s0,0(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <_ZdlPv>:
{
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
   mem_free(p);
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	8a0080e7          	jalr	-1888(ra) # 80001278 <mem_free>
}
    800029e0:	00813083          	ld	ra,8(sp)
    800029e4:	00013403          	ld	s0,0(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00113423          	sd	ra,8(sp)
    800029f8:	00813023          	sd	s0,0(sp)
    800029fc:	01010413          	addi	s0,sp,16
}
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	fc8080e7          	jalr	-56(ra) # 800029c8 <_ZdlPv>
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
}
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	fa0080e7          	jalr	-96(ra) # 800029c8 <_ZdlPv>
    80002a30:	00813083          	ld	ra,8(sp)
    80002a34:	00013403          	ld	s0,0(sp)
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80002a40:	00853783          	ld	a5,8(a0)
    80002a44:	00078463          	beqz	a5,80002a4c <_ZN6Thread5startEv+0xc>
    80002a48:	00008067          	ret
{
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00113423          	sd	ra,8(sp)
    80002a54:	00813023          	sd	s0,0(sp)
    80002a58:	01010413          	addi	s0,sp,16
        int retval = thread_create((void**)&myHandle, f, args);
    80002a5c:	01853603          	ld	a2,24(a0)
    80002a60:	01053583          	ld	a1,16(a0)
    80002a64:	00850513          	addi	a0,a0,8
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	83c080e7          	jalr	-1988(ra) # 800012a4 <thread_create>
}
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00013403          	ld	s0,0(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00113423          	sd	ra,8(sp)
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	894080e7          	jalr	-1900(ra) # 80001324 <thread_dispatch>
}
    80002a98:	00813083          	ld	ra,8(sp)
    80002a9c:	00013403          	ld	s0,0(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00113423          	sd	ra,8(sp)
    80002ab0:	00813023          	sd	s0,0(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	970080e7          	jalr	-1680(ra) # 80001428 <time_sleep>
}
    80002ac0:	00813083          	ld	ra,8(sp)
    80002ac4:	00013403          	ld	s0,0(sp)
    80002ac8:	01010113          	addi	sp,sp,16
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	00006797          	auipc	a5,0x6
    80002ae0:	25c78793          	addi	a5,a5,604 # 80008d38 <_ZTV6Thread+0x10>
    80002ae4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002ae8:	00053423          	sd	zero,8(a0)
    f = body;
    80002aec:	00b53823          	sd	a1,16(a0)
    this->args = args;
    80002af0:	00c53c23          	sd	a2,24(a0)
}
    80002af4:	00813403          	ld	s0,8(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00006797          	auipc	a5,0x6
    80002b10:	22c78793          	addi	a5,a5,556 # 80008d38 <_ZTV6Thread+0x10>
    80002b14:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002b18:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80002b1c:	00a53c23          	sd	a0,24(a0)
}
    80002b20:	00813403          	ld	s0,8(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN6Thread6runnerEPS_>:
void Thread::runner(Thread *t) {
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	1d0080e7          	jalr	464(ra) # 80002d0c <_ZN5Riscv10popSppSpieEv>
    thread_dispatch();
    80002b44:	ffffe097          	auipc	ra,0xffffe
    80002b48:	7e0080e7          	jalr	2016(ra) # 80001324 <thread_dispatch>
}
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret

0000000080002b5c <_ZN9Semaphore4waitEv>:
void Semaphore::wait() {
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00113423          	sd	ra,8(sp)
    80002b64:	00813023          	sd	s0,0(sp)
    80002b68:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    80002b6c:	00853503          	ld	a0,8(a0)
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	860080e7          	jalr	-1952(ra) # 800013d0 <sem_wait>
}
    80002b78:	00813083          	ld	ra,8(sp)
    80002b7c:	00013403          	ld	s0,0(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00006797          	auipc	a5,0x6
    80002b9c:	1c878793          	addi	a5,a5,456 # 80008d60 <_ZTV9Semaphore+0x10>
    80002ba0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80002ba4:	00850513          	addi	a0,a0,8
    80002ba8:	ffffe097          	auipc	ra,0xffffe
    80002bac:	7c4080e7          	jalr	1988(ra) # 8000136c <sem_open>
}
    80002bb0:	00813083          	ld	ra,8(sp)
    80002bb4:	00013403          	ld	s0,0(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN9Semaphore6signalEv>:
void Semaphore::signal() {
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00113423          	sd	ra,8(sp)
    80002bc8:	00813023          	sd	s0,0(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002bd0:	00853503          	ld	a0,8(a0)
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	828080e7          	jalr	-2008(ra) # 800013fc <sem_signal>
}
    80002bdc:	00813083          	ld	ra,8(sp)
    80002be0:	00013403          	ld	s0,0(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <_ZN6Thread3runEv>:
protected:
    //todo
    Thread();

    //todo
    virtual void run() {}
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00813423          	sd	s0,8(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN5Riscv10initSystemEv>:
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem()
{
    80002c04:	fe010113          	addi	sp,sp,-32
    80002c08:	00113c23          	sd	ra,24(sp)
    80002c0c:	00813823          	sd	s0,16(sp)
    80002c10:	00913423          	sd	s1,8(sp)
    80002c14:	01213023          	sd	s2,0(sp)
    80002c18:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002c1c:	00006797          	auipc	a5,0x6
    80002c20:	1647b783          	ld	a5,356(a5) # 80008d80 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002c24:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002c28:	02000513          	li	a0,32
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	d74080e7          	jalr	-652(ra) # 800029a0 <_Znwm>
    80002c34:	00050493          	mv	s1,a0
    80002c38:	00000613          	li	a2,0
    80002c3c:	00000593          	li	a1,0
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	e90080e7          	jalr	-368(ra) # 80002ad0 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	df4080e7          	jalr	-524(ra) # 80002a40 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	cb4080e7          	jalr	-844(ra) # 80002908 <_ZN9Scheduler3getEv>
    80002c5c:	00006797          	auipc	a5,0x6
    80002c60:	13c7b783          	ld	a5,316(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c64:	00a7b023          	sd	a0,0(a5)
    80002c68:	00100793          	li	a5,1
    80002c6c:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	00013903          	ld	s2,0(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret
    80002c88:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	d38080e7          	jalr	-712(ra) # 800029c8 <_ZdlPv>
    80002c98:	00090513          	mv	a0,s2
    80002c9c:	00007097          	auipc	ra,0x7
    80002ca0:	2ac080e7          	jalr	684(ra) # 80009f48 <_Unwind_Resume>

0000000080002ca4 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80002ca4:	ff010113          	addi	sp,sp,-16
    80002ca8:	00813423          	sd	s0,8(sp)
    80002cac:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002cb0:	00200793          	li	a5,2
    80002cb4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002cb8:	00813403          	ld	s0,8(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret

0000000080002cc4 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002cd0:	00200793          	li	a5,2
    80002cd4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002cd8:	00813403          	ld	s0,8(sp)
    80002cdc:	01010113          	addi	sp,sp,16
    80002ce0:	00008067          	ret

0000000080002ce4 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00113423          	sd	ra,8(sp)
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	fd0080e7          	jalr	-48(ra) # 80002cc4 <_ZN5Riscv17disableInterruptsEv>
}
    80002cfc:	00813083          	ld	ra,8(sp)
    80002d00:	00013403          	ld	s0,0(sp)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret

0000000080002d0c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002d0c:	ff010113          	addi	sp,sp,-16
    80002d10:	00813423          	sd	s0,8(sp)
    80002d14:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002d18:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002d1c:	10200073          	sret
}
    80002d20:	00813403          	ld	s0,8(sp)
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret

0000000080002d2c <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002d2c:	fd010113          	addi	sp,sp,-48
    80002d30:	02113423          	sd	ra,40(sp)
    80002d34:	02813023          	sd	s0,32(sp)
    80002d38:	00913c23          	sd	s1,24(sp)
    80002d3c:	01213823          	sd	s2,16(sp)
    80002d40:	03010413          	addi	s0,sp,48
    80002d44:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d48:	100027f3          	csrr	a5,sstatus
    80002d4c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002d50:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002d54:	00200793          	li	a5,2
    80002d58:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002d5c:	0004c503          	lbu	a0,0(s1)
    80002d60:	00050a63          	beqz	a0,80002d74 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002d64:	00004097          	auipc	ra,0x4
    80002d68:	f88080e7          	jalr	-120(ra) # 80006cec <__putc>
        string++;
    80002d6c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002d70:	fedff06f          	j	80002d5c <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002d74:	0009091b          	sext.w	s2,s2
    80002d78:	00297913          	andi	s2,s2,2
    80002d7c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002d80:	10092073          	csrs	sstatus,s2
}
    80002d84:	02813083          	ld	ra,40(sp)
    80002d88:	02013403          	ld	s0,32(sp)
    80002d8c:	01813483          	ld	s1,24(sp)
    80002d90:	01013903          	ld	s2,16(sp)
    80002d94:	03010113          	addi	sp,sp,48
    80002d98:	00008067          	ret

0000000080002d9c <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002d9c:	fc010113          	addi	sp,sp,-64
    80002da0:	02113c23          	sd	ra,56(sp)
    80002da4:	02813823          	sd	s0,48(sp)
    80002da8:	02913423          	sd	s1,40(sp)
    80002dac:	03213023          	sd	s2,32(sp)
    80002db0:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002db4:	100027f3          	csrr	a5,sstatus
    80002db8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002dbc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002dc0:	00200793          	li	a5,2
    80002dc4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002dc8:	0005051b          	sext.w	a0,a0

    i = 0;
    80002dcc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002dd0:	00a00613          	li	a2,10
    80002dd4:	02c5773b          	remuw	a4,a0,a2
    80002dd8:	02071693          	slli	a3,a4,0x20
    80002ddc:	0206d693          	srli	a3,a3,0x20
    80002de0:	00004717          	auipc	a4,0x4
    80002de4:	3c070713          	addi	a4,a4,960 # 800071a0 <_ZZN5Riscv12printIntegerEmE6digits>
    80002de8:	00d70733          	add	a4,a4,a3
    80002dec:	00074703          	lbu	a4,0(a4)
    80002df0:	fe040693          	addi	a3,s0,-32
    80002df4:	009687b3          	add	a5,a3,s1
    80002df8:	0014849b          	addiw	s1,s1,1
    80002dfc:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002e00:	0005071b          	sext.w	a4,a0
    80002e04:	02c5553b          	divuw	a0,a0,a2
    80002e08:	00900793          	li	a5,9
    80002e0c:	fce7e2e3          	bltu	a5,a4,80002dd0 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002e10:	fff4849b          	addiw	s1,s1,-1
    80002e14:	0004ce63          	bltz	s1,80002e30 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002e18:	fe040793          	addi	a5,s0,-32
    80002e1c:	009787b3          	add	a5,a5,s1
    80002e20:	ff07c503          	lbu	a0,-16(a5)
    80002e24:	00004097          	auipc	ra,0x4
    80002e28:	ec8080e7          	jalr	-312(ra) # 80006cec <__putc>
    80002e2c:	fe5ff06f          	j	80002e10 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002e30:	00a00513          	li	a0,10
    80002e34:	00004097          	auipc	ra,0x4
    80002e38:	eb8080e7          	jalr	-328(ra) # 80006cec <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002e3c:	0009091b          	sext.w	s2,s2
    80002e40:	00297913          	andi	s2,s2,2
    80002e44:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002e48:	10092073          	csrs	sstatus,s2
}
    80002e4c:	03813083          	ld	ra,56(sp)
    80002e50:	03013403          	ld	s0,48(sp)
    80002e54:	02813483          	ld	s1,40(sp)
    80002e58:	02013903          	ld	s2,32(sp)
    80002e5c:	04010113          	addi	sp,sp,64
    80002e60:	00008067          	ret

0000000080002e64 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002e64:	f8010113          	addi	sp,sp,-128
    80002e68:	06113c23          	sd	ra,120(sp)
    80002e6c:	06813823          	sd	s0,112(sp)
    80002e70:	06913423          	sd	s1,104(sp)
    80002e74:	07213023          	sd	s2,96(sp)
    80002e78:	05313c23          	sd	s3,88(sp)
    80002e7c:	05413823          	sd	s4,80(sp)
    80002e80:	05513423          	sd	s5,72(sp)
    80002e84:	05613023          	sd	s6,64(sp)
    80002e88:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002e8c:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002e90:	142027f3          	csrr	a5,scause
    80002e94:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002e98:	f8843783          	ld	a5,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80002e9c:	fff00713          	li	a4,-1
    80002ea0:	03f71713          	slli	a4,a4,0x3f
    80002ea4:	00170713          	addi	a4,a4,1
    80002ea8:	0ee78e63          	beq	a5,a4,80002fa4 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
    80002eac:	fff00713          	li	a4,-1
    80002eb0:	03f71713          	slli	a4,a4,0x3f
    80002eb4:	00170713          	addi	a4,a4,1
    80002eb8:	08f76e63          	bltu	a4,a5,80002f54 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002ebc:	ff878793          	addi	a5,a5,-8
    80002ec0:	00100713          	li	a4,1
    80002ec4:	0af76863          	bltu	a4,a5,80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

        case ecallSystemInterupt:
        case ecallUserInterrupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ec8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002ecc:	14102773          	csrr	a4,sepc
    80002ed0:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002ed4:	fa043703          	ld	a4,-96(s0)

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;
    80002ed8:	00470913          	addi	s2,a4,4

            if(operation == MemoryAllocator::MEM_ALLOC)
    80002edc:	00100713          	li	a4,1
    80002ee0:	14e78463          	beq	a5,a4,80003028 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE)
    80002ee4:	00200713          	li	a4,2
    80002ee8:	14e78e63          	beq	a5,a4,80003044 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
    80002eec:	01100713          	li	a4,17
    80002ef0:	16e78463          	beq	a5,a4,80003058 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                if(newPCB == 0)
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                    __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::THREAD_DISPATCH)
    80002ef4:	01300713          	li	a4,19
    80002ef8:	1ae78663          	beq	a5,a4,800030a4 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::THREAD_EXIT)
    80002efc:	01200713          	li	a4,18
    80002f00:	1ce78663          	beq	a5,a4,800030cc <_ZN5Riscv20handleSupervisorTrapEv+0x268>
                PCB::timeSliceCounter = 0;
                PCB::running->setState(PCB::EXITING);
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::TIME_SLEEP)
    80002f04:	03100713          	li	a4,49
    80002f08:	20e78c63          	beq	a5,a4,80003120 <_ZN5Riscv20handleSupervisorTrapEv+0x2bc>
                Riscv::w_sstatus(sstatus);
                //todo
                //kad treba vratiti kod greske
                __asm__ volatile("li a0, 0x0");
            }
            else if(operation == KSemaphore::SEM_OPEN)
    80002f0c:	02100713          	li	a4,33
    80002f10:	24e78c63          	beq	a5,a4,80003168 <_ZN5Riscv20handleSupervisorTrapEv+0x304>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                        __asm__ volatile("li a0, 0");

            }
            else if(operation == KSemaphore::SEM_WAIT)
    80002f14:	02300713          	li	a4,35
    80002f18:	28e78663          	beq	a5,a4,800031a4 <_ZN5Riscv20handleSupervisorTrapEv+0x340>
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->wait();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_SIGNAL)
    80002f1c:	02400713          	li	a4,36
    80002f20:	28e78c63          	beq	a5,a4,800031b8 <_ZN5Riscv20handleSupervisorTrapEv+0x354>
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->signal();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_CLOSE)
    80002f24:	02200713          	li	a4,34
    80002f28:	10e79a63          	bne	a5,a4,8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
            {
                //todo
                //negativna povratna vrednost sta i kako
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002f2c:	00058493          	mv	s1,a1

                delete kSem;
    80002f30:	00048e63          	beqz	s1,80002f4c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80002f34:	00048513          	mv	a0,s1
    80002f38:	00001097          	auipc	ra,0x1
    80002f3c:	818080e7          	jalr	-2024(ra) # 80003750 <_ZN10KSemaphoreD1Ev>
    80002f40:	00048513          	mv	a0,s1
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	944080e7          	jalr	-1724(ra) # 80003888 <_ZN10KSemaphoredlEPv>

                __asm__ volatile("li a0, 0");
    80002f4c:	00000513          	li	a0,0
    80002f50:	0ec0006f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    switch(scause)
    80002f54:	fff00713          	li	a4,-1
    80002f58:	03f71713          	slli	a4,a4,0x3f
    80002f5c:	00970713          	addi	a4,a4,9
    80002f60:	00e79a63          	bne	a5,a4,80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            Riscv::printString("Hardware interrupt...\n");
    80002f64:	00004517          	auipc	a0,0x4
    80002f68:	22450513          	addi	a0,a0,548 # 80007188 <CONSOLE_STATUS+0x178>
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	dc0080e7          	jalr	-576(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    80002f74:	00004097          	auipc	ra,0x4
    80002f78:	dec080e7          	jalr	-532(ra) # 80006d60 <console_handler>
}
    80002f7c:	07813083          	ld	ra,120(sp)
    80002f80:	07013403          	ld	s0,112(sp)
    80002f84:	06813483          	ld	s1,104(sp)
    80002f88:	06013903          	ld	s2,96(sp)
    80002f8c:	05813983          	ld	s3,88(sp)
    80002f90:	05013a03          	ld	s4,80(sp)
    80002f94:	04813a83          	ld	s5,72(sp)
    80002f98:	04013b03          	ld	s6,64(sp)
    80002f9c:	08010113          	addi	sp,sp,128
    80002fa0:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002fa4:	00200793          	li	a5,2
    80002fa8:	1447b073          	csrc	sip,a5
            Riscv::printString("timerInterrupt\n");
    80002fac:	00004517          	auipc	a0,0x4
    80002fb0:	1cc50513          	addi	a0,a0,460 # 80007178 <CONSOLE_STATUS+0x168>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	d78080e7          	jalr	-648(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002fbc:	00006497          	auipc	s1,0x6
    80002fc0:	dcc4b483          	ld	s1,-564(s1) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002fc4:	0004b783          	ld	a5,0(s1)
    80002fc8:	00178793          	addi	a5,a5,1
    80002fcc:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	63c080e7          	jalr	1596(ra) # 8000260c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002fd8:	00006797          	auipc	a5,0x6
    80002fdc:	dc07b783          	ld	a5,-576(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fe0:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002fe4:	0087b783          	ld	a5,8(a5)
    80002fe8:	0004b703          	ld	a4,0(s1)
    80002fec:	f8f764e3          	bltu	a4,a5,80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002ff0:	141027f3          	csrr	a5,sepc
    80002ff4:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002ff8:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002ffc:	100027f3          	csrr	a5,sstatus
    80003000:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80003004:	f9043903          	ld	s2,-112(s0)
                PCB::timeSliceCounter = 0;
    80003008:	00006797          	auipc	a5,0x6
    8000300c:	d807b783          	ld	a5,-640(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003010:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	45c080e7          	jalr	1116(ra) # 80002470 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000301c:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003020:	14149073          	csrw	sepc,s1
}
    80003024:	f51ff06f          	j	80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003028:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    8000302c:	00651513          	slli	a0,a0,0x6
    80003030:	00000097          	auipc	ra,0x0
    80003034:	588080e7          	jalr	1416(ra) # 800035b8 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003038:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000303c:	14191073          	csrw	sepc,s2
}
    80003040:	f3dff06f          	j	80002f7c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003044:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	598080e7          	jalr	1432(ra) # 800035e0 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003050:	00050513          	mv	a0,a0
    80003054:	fe9ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003058:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000305c:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003060:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003064:	05000513          	li	a0,80
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	47c080e7          	jalr	1148(ra) # 800024e4 <_ZN3PCBnwEm>
    80003070:	00050993          	mv	s3,a0
    80003074:	00200713          	li	a4,2
    80003078:	00048693          	mv	a3,s1
    8000307c:	000b0613          	mv	a2,s6
    80003080:	000a8593          	mv	a1,s5
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	348080e7          	jalr	840(ra) # 800023cc <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    8000308c:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80003090:	00098663          	beqz	s3,8000309c <_ZN5Riscv20handleSupervisorTrapEv+0x238>
                    __asm__ volatile("li a0, 0");
    80003094:	00000513          	li	a0,0
    80003098:	fa5ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    8000309c:	fff00513          	li	a0,-1
    800030a0:	f9dff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800030a4:	100027f3          	csrr	a5,sstatus
    800030a8:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800030ac:	fa843483          	ld	s1,-88(s0)
                PCB::timeSliceCounter = 0;
    800030b0:	00006797          	auipc	a5,0x6
    800030b4:	cd87b783          	ld	a5,-808(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x18>
    800030b8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	3b4080e7          	jalr	948(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800030c4:	10049073          	csrw	sstatus,s1
}
    800030c8:	f75ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                if(PCB::running == 0)
    800030cc:	00006797          	auipc	a5,0x6
    800030d0:	ccc7b783          	ld	a5,-820(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030d4:	0007b783          	ld	a5,0(a5)
    800030d8:	04078063          	beqz	a5,80003118 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800030dc:	100027f3          	csrr	a5,sstatus
    800030e0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800030e4:	fb043483          	ld	s1,-80(s0)
                PCB::timeSliceCounter = 0;
    800030e8:	00006797          	auipc	a5,0x6
    800030ec:	ca07b783          	ld	a5,-864(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x18>
    800030f0:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    800030f4:	00006797          	auipc	a5,0x6
    800030f8:	ca47b783          	ld	a5,-860(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030fc:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003100:	00400713          	li	a4,4
    80003104:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	368080e7          	jalr	872(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003110:	10049073          	csrw	sstatus,s1
}
    80003114:	f29ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003118:	fff00513          	li	a0,-1
                    return;
    8000311c:	e61ff06f          	j	80002f7c <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80003120:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003124:	100027f3          	csrr	a5,sstatus
    80003128:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000312c:	fb843483          	ld	s1,-72(s0)
                PCB::timeSliceCounter = 0;
    80003130:	00006797          	auipc	a5,0x6
    80003134:	c587b783          	ld	a5,-936(a5) # 80008d88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003138:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    8000313c:	00006797          	auipc	a5,0x6
    80003140:	c5c7b783          	ld	a5,-932(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003144:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003148:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    8000314c:	fffff097          	auipc	ra,0xfffff
    80003150:	414080e7          	jalr	1044(ra) # 80002560 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	31c080e7          	jalr	796(ra) # 80002470 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000315c:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0x0");
    80003160:	00000513          	li	a0,0
    80003164:	ed9ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003168:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    8000316c:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003170:	01800513          	li	a0,24
    80003174:	00000097          	auipc	ra,0x0
    80003178:	6ec080e7          	jalr	1772(ra) # 80003860 <_ZN10KSemaphorenwEm>
    8000317c:	00050493          	mv	s1,a0
    80003180:	000a059b          	sext.w	a1,s4
    80003184:	00000097          	auipc	ra,0x0
    80003188:	484080e7          	jalr	1156(ra) # 80003608 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    8000318c:	0099b023          	sd	s1,0(s3)
                if(newSem == 0)
    80003190:	00048663          	beqz	s1,8000319c <_ZN5Riscv20handleSupervisorTrapEv+0x338>
                        __asm__ volatile("li a0, 0");
    80003194:	00000513          	li	a0,0
    80003198:	ea5ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000319c:	fff00513          	li	a0,-1
    800031a0:	e9dff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800031a4:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	508080e7          	jalr	1288(ra) # 800036b0 <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800031b0:	00050513          	mv	a0,a0
    800031b4:	e89ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800031b8:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	654080e7          	jalr	1620(ra) # 80003810 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800031c4:	00050513          	mv	a0,a0
    800031c8:	e75ff06f          	j	8000303c <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    800031cc:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800031d0:	00098513          	mv	a0,s3
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	338080e7          	jalr	824(ra) # 8000250c <_ZN3PCBdlEPv>
    800031dc:	00048513          	mv	a0,s1
    800031e0:	00007097          	auipc	ra,0x7
    800031e4:	d68080e7          	jalr	-664(ra) # 80009f48 <_Unwind_Resume>
    800031e8:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    800031ec:	00048513          	mv	a0,s1
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	698080e7          	jalr	1688(ra) # 80003888 <_ZN10KSemaphoredlEPv>
    800031f8:	00090513          	mv	a0,s2
    800031fc:	00007097          	auipc	ra,0x7
    80003200:	d4c080e7          	jalr	-692(ra) # 80009f48 <_Unwind_Resume>

0000000080003204 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00813423          	sd	s0,8(sp)
    8000320c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003210:	00006717          	auipc	a4,0x6
    80003214:	c3072703          	lw	a4,-976(a4) # 80008e40 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003218:	00100793          	li	a5,1
    8000321c:	04f70263          	beq	a4,a5,80003260 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003220:	00006797          	auipc	a5,0x6
    80003224:	c2078793          	addi	a5,a5,-992 # 80008e40 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003228:	00100713          	li	a4,1
    8000322c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003230:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003234:	00006717          	auipc	a4,0x6
    80003238:	b4473703          	ld	a4,-1212(a4) # 80008d78 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000323c:	00073703          	ld	a4,0(a4)
    80003240:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003244:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003248:	00006797          	auipc	a5,0x6
    8000324c:	b587b783          	ld	a5,-1192(a5) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003250:	0007b783          	ld	a5,0(a5)
    80003254:	40e787b3          	sub	a5,a5,a4
    80003258:	ff178793          	addi	a5,a5,-15
    8000325c:	00f73023          	sd	a5,0(a4)
}
    80003260:	00813403          	ld	s0,8(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	01213023          	sd	s2,0(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	00050493          	mv	s1,a0
    80003288:	00058913          	mv	s2,a1

    initMemory();
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	f78080e7          	jalr	-136(ra) # 80003204 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003294:	00006797          	auipc	a5,0x6
    80003298:	bb47b783          	ld	a5,-1100(a5) # 80008e48 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000329c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800032a0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800032a4:	00000713          	li	a4,0
    while(curr != 0)
    800032a8:	00078c63          	beqz	a5,800032c0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800032ac:	00f4e863          	bltu	s1,a5,800032bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800032b0:	00078713          	mv	a4,a5
        curr = curr->next;
    800032b4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800032b8:	ff1ff06f          	j	800032a8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800032bc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800032c0:	02070063          	beqz	a4,800032e0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800032c4:	00973423          	sd	s1,8(a4)
}
    800032c8:	01813083          	ld	ra,24(sp)
    800032cc:	01013403          	ld	s0,16(sp)
    800032d0:	00813483          	ld	s1,8(sp)
    800032d4:	00013903          	ld	s2,0(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret
        headAllocated = newAllocated;
    800032e0:	00006797          	auipc	a5,0x6
    800032e4:	b697b423          	sd	s1,-1176(a5) # 80008e48 <_ZN15MemoryAllocator13headAllocatedE>
    800032e8:	fe1ff06f          	j	800032c8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

00000000800032ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	01213023          	sd	s2,0(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	00050913          	mv	s2,a0
    initMemory();
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	efc080e7          	jalr	-260(ra) # 80003204 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003310:	00006497          	auipc	s1,0x6
    80003314:	b404b483          	ld	s1,-1216(s1) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003318:	00000713          	li	a4,0
    while(curr != 0)
    8000331c:	0a048863          	beqz	s1,800033cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003320:	0004b783          	ld	a5,0(s1)
    80003324:	0127f863          	bgeu	a5,s2,80003334 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003328:	00048713          	mv	a4,s1
        curr = curr->next;
    8000332c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003330:	fedff06f          	j	8000331c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003334:	01090693          	addi	a3,s2,16
    80003338:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    8000333c:	00006617          	auipc	a2,0x6
    80003340:	a6463603          	ld	a2,-1436(a2) # 80008da0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003344:	00063603          	ld	a2,0(a2)
    80003348:	04d66c63          	bltu	a2,a3,800033a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    8000334c:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003350:	01000613          	li	a2,16
    80003354:	02f67663          	bgeu	a2,a5,80003380 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003358:	0084b603          	ld	a2,8(s1)
    8000335c:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003360:	ff078793          	addi	a5,a5,-16
    80003364:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003368:	00070663          	beqz	a4,80003374 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    8000336c:	00d73423          	sd	a3,8(a4)
    80003370:	0380006f          	j	800033a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003374:	00006797          	auipc	a5,0x6
    80003378:	acd7be23          	sd	a3,-1316(a5) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    8000337c:	02c0006f          	j	800033a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003380:	00070863          	beqz	a4,80003390 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003384:	0084b783          	ld	a5,8(s1)
    80003388:	00f73423          	sd	a5,8(a4)
    8000338c:	01c0006f          	j	800033a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003390:	0084b783          	ld	a5,8(s1)
    80003394:	00006717          	auipc	a4,0x6
    80003398:	aaf73e23          	sd	a5,-1348(a4) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    8000339c:	00c0006f          	j	800033a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800033a0:	02070063          	beqz	a4,800033c0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800033a4:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800033a8:	00090593          	mv	a1,s2
    800033ac:	00048513          	mv	a0,s1
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	ebc080e7          	jalr	-324(ra) # 8000326c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800033b8:	01048513          	addi	a0,s1,16
            break;
    800033bc:	0140006f          	j	800033d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800033c0:	00006797          	auipc	a5,0x6
    800033c4:	a807b823          	sd	zero,-1392(a5) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    800033c8:	fe1ff06f          	j	800033a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    800033cc:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	00013903          	ld	s2,0(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00113423          	sd	ra,8(sp)
    800033f0:	00813023          	sd	s0,0(sp)
    800033f4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	ef4080e7          	jalr	-268(ra) # 800032ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00013403          	ld	s0,0(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	02010413          	addi	s0,sp,32
    80003428:	00050493          	mv	s1,a0
    8000342c:	00058913          	mv	s2,a1
    initMemory();
    80003430:	00000097          	auipc	ra,0x0
    80003434:	dd4080e7          	jalr	-556(ra) # 80003204 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003438:	00006797          	auipc	a5,0x6
    8000343c:	a187b783          	ld	a5,-1512(a5) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003440:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003444:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003448:	00000713          	li	a4,0
    while(curr != 0)
    8000344c:	00078c63          	beqz	a5,80003464 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003450:	00f4e863          	bltu	s1,a5,80003460 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003454:	00078713          	mv	a4,a5
        curr = curr->next;
    80003458:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000345c:	ff1ff06f          	j	8000344c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003460:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003464:	04070663          	beqz	a4,800034b0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003468:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000346c:	0084b783          	ld	a5,8(s1)
    80003470:	00078a63          	beqz	a5,80003484 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003474:	0004b603          	ld	a2,0(s1)
    80003478:	01060693          	addi	a3,a2,16
    8000347c:	00d486b3          	add	a3,s1,a3
    80003480:	02d78e63          	beq	a5,a3,800034bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003484:	00070a63          	beqz	a4,80003498 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003488:	00073683          	ld	a3,0(a4)
    8000348c:	01068793          	addi	a5,a3,16
    80003490:	00f707b3          	add	a5,a4,a5
    80003494:	04978263          	beq	a5,s1,800034d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003498:	01813083          	ld	ra,24(sp)
    8000349c:	01013403          	ld	s0,16(sp)
    800034a0:	00813483          	ld	s1,8(sp)
    800034a4:	00013903          	ld	s2,0(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret
        headFree = newSegment;
    800034b0:	00006797          	auipc	a5,0x6
    800034b4:	9a97b023          	sd	s1,-1632(a5) # 80008e50 <_ZN15MemoryAllocator8headFreeE>
    800034b8:	fb5ff06f          	j	8000346c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800034bc:	0007b683          	ld	a3,0(a5)
    800034c0:	00d60633          	add	a2,a2,a3
    800034c4:	01060613          	addi	a2,a2,16
    800034c8:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    800034cc:	0087b783          	ld	a5,8(a5)
    800034d0:	00f4b423          	sd	a5,8(s1)
    800034d4:	fb1ff06f          	j	80003484 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800034d8:	0004b783          	ld	a5,0(s1)
    800034dc:	00f686b3          	add	a3,a3,a5
    800034e0:	01068693          	addi	a3,a3,16
    800034e4:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800034e8:	0084b783          	ld	a5,8(s1)
    800034ec:	00f73423          	sd	a5,8(a4)
}
    800034f0:	fa9ff06f          	j	80003498 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800034f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800034f4:	fe010113          	addi	sp,sp,-32
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00813823          	sd	s0,16(sp)
    80003500:	00913423          	sd	s1,8(sp)
    80003504:	01213023          	sd	s2,0(sp)
    80003508:	02010413          	addi	s0,sp,32
    8000350c:	00050913          	mv	s2,a0
    initMemory();
    80003510:	00000097          	auipc	ra,0x0
    80003514:	cf4080e7          	jalr	-780(ra) # 80003204 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003518:	00006497          	auipc	s1,0x6
    8000351c:	9304b483          	ld	s1,-1744(s1) # 80008e48 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003520:	00000713          	li	a4,0
    while(curr != 0)
    80003524:	02048a63          	beqz	s1,80003558 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003528:	01048793          	addi	a5,s1,16
    8000352c:	01278863          	beq	a5,s2,8000353c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003530:	00048713          	mv	a4,s1
        curr = curr->next;
    80003534:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003538:	fedff06f          	j	80003524 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000353c:	02070e63          	beqz	a4,80003578 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003540:	0084b783          	ld	a5,8(s1)
    80003544:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003548:	0004b583          	ld	a1,0(s1)
    8000354c:	00048513          	mv	a0,s1
    80003550:	00000097          	auipc	ra,0x0
    80003554:	ec0080e7          	jalr	-320(ra) # 80003410 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003558:	02048863          	beqz	s1,80003588 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000355c:	00000513          	li	a0,0
    else
        return 1;
}
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	00013903          	ld	s2,0(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret
                headAllocated = curr->next;
    80003578:	0084b783          	ld	a5,8(s1)
    8000357c:	00006717          	auipc	a4,0x6
    80003580:	8cf73623          	sd	a5,-1844(a4) # 80008e48 <_ZN15MemoryAllocator13headAllocatedE>
    80003584:	fc5ff06f          	j	80003548 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003588:	00100513          	li	a0,1
    8000358c:	fd5ff06f          	j	80003560 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003590 <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00113423          	sd	ra,8(sp)
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	f54080e7          	jalr	-172(ra) # 800034f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800035a8:	00813083          	ld	ra,8(sp)
    800035ac:	00013403          	ld	s0,0(sp)
    800035b0:	01010113          	addi	sp,sp,16
    800035b4:	00008067          	ret

00000000800035b8 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00113423          	sd	ra,8(sp)
    800035c0:	00813023          	sd	s0,0(sp)
    800035c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	e20080e7          	jalr	-480(ra) # 800033e8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800035d0:	00813083          	ld	ra,8(sp)
    800035d4:	00013403          	ld	s0,0(sp)
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret

00000000800035e0 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00113423          	sd	ra,8(sp)
    800035e8:	00813023          	sd	s0,0(sp)
    800035ec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	fa0080e7          	jalr	-96(ra) # 80003590 <_ZN15MemoryAllocator8mem_freeEPv>
    800035f8:	00813083          	ld	ra,8(sp)
    800035fc:	00013403          	ld	s0,0(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003614:	00b52a23          	sw	a1,20(a0)
    80003618:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000361c:	00053423          	sd	zero,8(a0)
    80003620:	00053023          	sd	zero,0(a0)
}
    80003624:	00813403          	ld	s0,8(sp)
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00008067          	ret

0000000080003630 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003630:	ff010113          	addi	sp,sp,-16
    80003634:	00813423          	sd	s0,8(sp)
    80003638:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000363c:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    80003640:	00053783          	ld	a5,0(a0)
    80003644:	00078e63          	beqz	a5,80003660 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003648:	00853783          	ld	a5,8(a0)
    8000364c:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    80003650:	00b53423          	sd	a1,8(a0)
    }
}
    80003654:	00813403          	ld	s0,8(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003660:	00b53423          	sd	a1,8(a0)
    80003664:	00b53023          	sd	a1,0(a0)
    80003668:	fedff06f          	j	80003654 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000366c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00113423          	sd	ra,8(sp)
    80003674:	00813023          	sd	s0,0(sp)
    80003678:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000367c:	00005797          	auipc	a5,0x5
    80003680:	71c7b783          	ld	a5,1820(a5) # 80008d98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003684:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003688:	00200793          	li	a5,2
    8000368c:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    80003690:	00000097          	auipc	ra,0x0
    80003694:	fa0080e7          	jalr	-96(ra) # 80003630 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	dd8080e7          	jalr	-552(ra) # 80002470 <_ZN3PCB8dispatchEv>
}
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00013403          	ld	s0,0(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret

00000000800036b0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800036b0:	01052783          	lw	a5,16(a0)
    800036b4:	fff7879b          	addiw	a5,a5,-1
    800036b8:	00f52823          	sw	a5,16(a0)
    800036bc:	02079713          	slli	a4,a5,0x20
    800036c0:	00074663          	bltz	a4,800036cc <_ZN10KSemaphore4waitEv+0x1c>
}
    800036c4:	00000513          	li	a0,0
    800036c8:	00008067          	ret
uint64 KSemaphore::wait() {
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00113423          	sd	ra,8(sp)
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	01010413          	addi	s0,sp,16
        block();
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	f90080e7          	jalr	-112(ra) # 8000366c <_ZN10KSemaphore5blockEv>
}
    800036e4:	00000513          	li	a0,0
    800036e8:	00813083          	ld	ra,8(sp)
    800036ec:	00013403          	ld	s0,0(sp)
    800036f0:	01010113          	addi	sp,sp,16
    800036f4:	00008067          	ret

00000000800036f8 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00813423          	sd	s0,8(sp)
    80003700:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003704:	00053503          	ld	a0,0(a0)
    80003708:	00813403          	ld	s0,8(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00813423          	sd	s0,8(sp)
    8000371c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003720:	00053783          	ld	a5,0(a0)
    80003724:	00078c63          	beqz	a5,8000373c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003728:	0007b703          	ld	a4,0(a5)
    8000372c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003730:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003734:	00053783          	ld	a5,0(a0)
    80003738:	00078863          	beqz	a5,80003748 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000373c:	00813403          	ld	s0,8(sp)
    80003740:	01010113          	addi	sp,sp,16
    80003744:	00008067          	ret
        tailBlocked =0;
    80003748:	00053423          	sd	zero,8(a0)
    8000374c:	ff1ff06f          	j	8000373c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003750 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00113c23          	sd	ra,24(sp)
    80003758:	00813823          	sd	s0,16(sp)
    8000375c:	00913423          	sd	s1,8(sp)
    80003760:	01213023          	sd	s2,0(sp)
    80003764:	02010413          	addi	s0,sp,32
    80003768:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000376c:	00090513          	mv	a0,s2
    80003770:	00000097          	auipc	ra,0x0
    80003774:	f88080e7          	jalr	-120(ra) # 800036f8 <_ZN10KSemaphore15getFirstBlockedEv>
    80003778:	00050493          	mv	s1,a0
    8000377c:	02050063          	beqz	a0,8000379c <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003780:	00090513          	mv	a0,s2
    80003784:	00000097          	auipc	ra,0x0
    80003788:	f90080e7          	jalr	-112(ra) # 80003714 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    8000378c:	00048513          	mv	a0,s1
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	124080e7          	jalr	292(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003798:	fd5ff06f          	j	8000376c <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000379c:	01813083          	ld	ra,24(sp)
    800037a0:	01013403          	ld	s0,16(sp)
    800037a4:	00813483          	ld	s1,8(sp)
    800037a8:	00013903          	ld	s2,0(sp)
    800037ac:	02010113          	addi	sp,sp,32
    800037b0:	00008067          	ret

00000000800037b4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800037b4:	fe010113          	addi	sp,sp,-32
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00913423          	sd	s1,8(sp)
    800037c4:	01213023          	sd	s2,0(sp)
    800037c8:	02010413          	addi	s0,sp,32
    800037cc:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	f28080e7          	jalr	-216(ra) # 800036f8 <_ZN10KSemaphore15getFirstBlockedEv>
    800037d8:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	f34080e7          	jalr	-204(ra) # 80003714 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800037e8:	00048863          	beqz	s1,800037f8 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    800037ec:	00048513          	mv	a0,s1
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	0c4080e7          	jalr	196(ra) # 800028b4 <_ZN9Scheduler3putEP3PCB>
}
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	00013903          	ld	s2,0(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret

0000000080003810 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003810:	01052783          	lw	a5,16(a0)
    80003814:	0017879b          	addiw	a5,a5,1
    80003818:	0007871b          	sext.w	a4,a5
    8000381c:	00f52823          	sw	a5,16(a0)
    80003820:	00e05a63          	blez	a4,80003834 <_ZN10KSemaphore6signalEv+0x24>
        val = beginVal;
    80003824:	01452783          	lw	a5,20(a0)
    80003828:	00f52823          	sw	a5,16(a0)
}
    8000382c:	00000513          	li	a0,0
    80003830:	00008067          	ret
uint64 KSemaphore::signal() {
    80003834:	ff010113          	addi	sp,sp,-16
    80003838:	00113423          	sd	ra,8(sp)
    8000383c:	00813023          	sd	s0,0(sp)
    80003840:	01010413          	addi	s0,sp,16
        unblock();
    80003844:	00000097          	auipc	ra,0x0
    80003848:	f70080e7          	jalr	-144(ra) # 800037b4 <_ZN10KSemaphore7unblockEv>
}
    8000384c:	00000513          	li	a0,0
    80003850:	00813083          	ld	ra,8(sp)
    80003854:	00013403          	ld	s0,0(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret

0000000080003860 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00113423          	sd	ra,8(sp)
    80003868:	00813023          	sd	s0,0(sp)
    8000386c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003870:	00000097          	auipc	ra,0x0
    80003874:	d48080e7          	jalr	-696(ra) # 800035b8 <_Z7kmallocm>
}
    80003878:	00813083          	ld	ra,8(sp)
    8000387c:	00013403          	ld	s0,0(sp)
    80003880:	01010113          	addi	sp,sp,16
    80003884:	00008067          	ret

0000000080003888 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00113423          	sd	ra,8(sp)
    80003890:	00813023          	sd	s0,0(sp)
    80003894:	01010413          	addi	s0,sp,16
    kfree(p);
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	d48080e7          	jalr	-696(ra) # 800035e0 <_Z5kfreePv>
}
    800038a0:	00813083          	ld	ra,8(sp)
    800038a4:	00013403          	ld	s0,0(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret

00000000800038b0 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00113c23          	sd	ra,24(sp)
    800038b8:	00813823          	sd	s0,16(sp)
    800038bc:	00913423          	sd	s1,8(sp)
    800038c0:	01213023          	sd	s2,0(sp)
    800038c4:	02010413          	addi	s0,sp,32
    800038c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    800038cc:	00004517          	auipc	a0,0x4
    800038d0:	8e450513          	addi	a0,a0,-1820 # 800071b0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	458080e7          	jalr	1112(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    800038dc:	00000913          	li	s2,0
    800038e0:	00c0006f          	j	800038ec <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	a40080e7          	jalr	-1472(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    800038ec:	00005797          	auipc	a5,0x5
    800038f0:	56c7a783          	lw	a5,1388(a5) # 80008e58 <threadEnd>
    800038f4:	02079e63          	bnez	a5,80003930 <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    800038f8:	0004a583          	lw	a1,0(s1)
    800038fc:	0305859b          	addiw	a1,a1,48
    80003900:	0084b503          	ld	a0,8(s1)
    80003904:	00001097          	auipc	ra,0x1
    80003908:	208080e7          	jalr	520(ra) # 80004b0c <_ZN6Buffer3putEi>
        i++;
    8000390c:	0019071b          	addiw	a4,s2,1
    80003910:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003914:	0004a683          	lw	a3,0(s1)
    80003918:	0026979b          	slliw	a5,a3,0x2
    8000391c:	00d787bb          	addw	a5,a5,a3
    80003920:	0017979b          	slliw	a5,a5,0x1
    80003924:	02f767bb          	remw	a5,a4,a5
    80003928:	fc0792e3          	bnez	a5,800038ec <_Z8producerPv+0x3c>
    8000392c:	fb9ff06f          	j	800038e4 <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80003930:	0104b503          	ld	a0,16(s1)
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	ac8080e7          	jalr	-1336(ra) # 800013fc <sem_signal>
}
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	00013903          	ld	s2,0(sp)
    8000394c:	02010113          	addi	sp,sp,32
    80003950:	00008067          	ret

0000000080003954 <_Z8consumerPv>:

void consumer(void *arg) {
    80003954:	fd010113          	addi	sp,sp,-48
    80003958:	02113423          	sd	ra,40(sp)
    8000395c:	02813023          	sd	s0,32(sp)
    80003960:	00913c23          	sd	s1,24(sp)
    80003964:	01213823          	sd	s2,16(sp)
    80003968:	01313423          	sd	s3,8(sp)
    8000396c:	03010413          	addi	s0,sp,48
    80003970:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80003974:	00004517          	auipc	a0,0x4
    80003978:	85450513          	addi	a0,a0,-1964 # 800071c8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	3b0080e7          	jalr	944(ra) # 80002d2c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003984:	00000993          	li	s3,0
    80003988:	01c0006f          	j	800039a4 <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	998080e7          	jalr	-1640(ra) # 80001324 <thread_dispatch>
    80003994:	04c0006f          	j	800039e0 <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003998:	00a00513          	li	a0,10
    8000399c:	00003097          	auipc	ra,0x3
    800039a0:	350080e7          	jalr	848(ra) # 80006cec <__putc>
    while (!threadEnd) {
    800039a4:	00005797          	auipc	a5,0x5
    800039a8:	4b47a783          	lw	a5,1204(a5) # 80008e58 <threadEnd>
    800039ac:	04079263          	bnez	a5,800039f0 <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    800039b0:	00893503          	ld	a0,8(s2)
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	1e8080e7          	jalr	488(ra) # 80004b9c <_ZN6Buffer3getEv>
        i++;
    800039bc:	0019849b          	addiw	s1,s3,1
    800039c0:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	3d8080e7          	jalr	984(ra) # 80002d9c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    800039cc:	00092703          	lw	a4,0(s2)
    800039d0:	0027179b          	slliw	a5,a4,0x2
    800039d4:	00e787bb          	addw	a5,a5,a4
    800039d8:	02f4e7bb          	remw	a5,s1,a5
    800039dc:	fa0788e3          	beqz	a5,8000398c <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    800039e0:	05000793          	li	a5,80
    800039e4:	02f4e4bb          	remw	s1,s1,a5
    800039e8:	fa049ee3          	bnez	s1,800039a4 <_Z8consumerPv+0x50>
    800039ec:	fadff06f          	j	80003998 <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    800039f0:	01093503          	ld	a0,16(s2)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	a08080e7          	jalr	-1528(ra) # 800013fc <sem_signal>
}
    800039fc:	02813083          	ld	ra,40(sp)
    80003a00:	02013403          	ld	s0,32(sp)
    80003a04:	01813483          	ld	s1,24(sp)
    80003a08:	01013903          	ld	s2,16(sp)
    80003a0c:	00813983          	ld	s3,8(sp)
    80003a10:	03010113          	addi	sp,sp,48
    80003a14:	00008067          	ret

0000000080003a18 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	01213023          	sd	s2,0(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	00050493          	mv	s1,a0
    int i = 0;
    80003a34:	00000913          	li	s2,0
    80003a38:	00c0006f          	j	80003a44 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	8e8080e7          	jalr	-1816(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003a44:	00003097          	auipc	ra,0x3
    80003a48:	2e4080e7          	jalr	740(ra) # 80006d28 <__getc>
    80003a4c:	0005059b          	sext.w	a1,a0
    80003a50:	01b00793          	li	a5,27
    80003a54:	02f58a63          	beq	a1,a5,80003a88 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003a58:	0084b503          	ld	a0,8(s1)
    80003a5c:	00001097          	auipc	ra,0x1
    80003a60:	0b0080e7          	jalr	176(ra) # 80004b0c <_ZN6Buffer3putEi>
        i++;
    80003a64:	0019071b          	addiw	a4,s2,1
    80003a68:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a6c:	0004a683          	lw	a3,0(s1)
    80003a70:	0026979b          	slliw	a5,a3,0x2
    80003a74:	00d787bb          	addw	a5,a5,a3
    80003a78:	0017979b          	slliw	a5,a5,0x1
    80003a7c:	02f767bb          	remw	a5,a4,a5
    80003a80:	fc0792e3          	bnez	a5,80003a44 <_Z16producerKeyboardPv+0x2c>
    80003a84:	fb9ff06f          	j	80003a3c <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80003a88:	00100793          	li	a5,1
    80003a8c:	00005717          	auipc	a4,0x5
    80003a90:	3cf72623          	sw	a5,972(a4) # 80008e58 <threadEnd>
    delete data->buffer;
    80003a94:	0084b903          	ld	s2,8(s1)
    80003a98:	00090e63          	beqz	s2,80003ab4 <_Z16producerKeyboardPv+0x9c>
    80003a9c:	00090513          	mv	a0,s2
    80003aa0:	00001097          	auipc	ra,0x1
    80003aa4:	fc0080e7          	jalr	-64(ra) # 80004a60 <_ZN6BufferD1Ev>
    80003aa8:	00090513          	mv	a0,s2
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	f1c080e7          	jalr	-228(ra) # 800029c8 <_ZdlPv>
    sem_signal(data->wait);
    80003ab4:	0104b503          	ld	a0,16(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	944080e7          	jalr	-1724(ra) # 800013fc <sem_signal>
}
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	00013903          	ld	s2,0(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80003ad8:	f2010113          	addi	sp,sp,-224
    80003adc:	0c113c23          	sd	ra,216(sp)
    80003ae0:	0c813823          	sd	s0,208(sp)
    80003ae4:	0c913423          	sd	s1,200(sp)
    80003ae8:	0d213023          	sd	s2,192(sp)
    80003aec:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80003af0:	00003517          	auipc	a0,0x3
    80003af4:	6f050513          	addi	a0,a0,1776 # 800071e0 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	7c8080e7          	jalr	1992(ra) # 800042c0 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	70050513          	addi	a0,a0,1792 # 80007200 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	7b8080e7          	jalr	1976(ra) # 800042c0 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b10:	00003517          	auipc	a0,0x3
    80003b14:	71050513          	addi	a0,a0,1808 # 80007220 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	7a8080e7          	jalr	1960(ra) # 800042c0 <_Z11printStringPKc>
    80003b20:	00000613          	li	a2,0
    80003b24:	00a00593          	li	a1,10
    80003b28:	00500513          	li	a0,5
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	92c080e7          	jalr	-1748(ra) # 80004458 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b34:	00003517          	auipc	a0,0x3
    80003b38:	70450513          	addi	a0,a0,1796 # 80007238 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003b3c:	00000097          	auipc	ra,0x0
    80003b40:	784080e7          	jalr	1924(ra) # 800042c0 <_Z11printStringPKc>
    80003b44:	00000613          	li	a2,0
    80003b48:	00a00593          	li	a1,10
    80003b4c:	00a00513          	li	a0,10
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	908080e7          	jalr	-1784(ra) # 80004458 <_Z8printIntiii>
    printString(".\n");
    80003b58:	00003517          	auipc	a0,0x3
    80003b5c:	5f050513          	addi	a0,a0,1520 # 80007148 <CONSOLE_STATUS+0x138>
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	760080e7          	jalr	1888(ra) # 800042c0 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80003b68:	03800513          	li	a0,56
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	e34080e7          	jalr	-460(ra) # 800029a0 <_Znwm>
    80003b74:	00050913          	mv	s2,a0
    80003b78:	00a00593          	li	a1,10
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	e5c080e7          	jalr	-420(ra) # 800049d8 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003b84:	00000593          	li	a1,0
    80003b88:	00005517          	auipc	a0,0x5
    80003b8c:	2d850513          	addi	a0,a0,728 # 80008e60 <waitForAll>
    80003b90:	ffffd097          	auipc	ra,0xffffd
    80003b94:	7dc080e7          	jalr	2012(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80003b98:	00500793          	li	a5,5
    80003b9c:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80003ba0:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80003ba4:	00005797          	auipc	a5,0x5
    80003ba8:	2bc7b783          	ld	a5,700(a5) # 80008e60 <waitForAll>
    80003bac:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003bb0:	fc040613          	addi	a2,s0,-64
    80003bb4:	00000597          	auipc	a1,0x0
    80003bb8:	da058593          	addi	a1,a1,-608 # 80003954 <_Z8consumerPv>
    80003bbc:	fd840513          	addi	a0,s0,-40
    80003bc0:	ffffd097          	auipc	ra,0xffffd
    80003bc4:	6e4080e7          	jalr	1764(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80003bc8:	00000493          	li	s1,0
    80003bcc:	00400793          	li	a5,4
    80003bd0:	0697c063          	blt	a5,s1,80003c30 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80003bd4:	00149613          	slli	a2,s1,0x1
    80003bd8:	009607b3          	add	a5,a2,s1
    80003bdc:	00379793          	slli	a5,a5,0x3
    80003be0:	fe040713          	addi	a4,s0,-32
    80003be4:	00f707b3          	add	a5,a4,a5
    80003be8:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80003bec:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80003bf0:	00005717          	auipc	a4,0x5
    80003bf4:	27073703          	ld	a4,624(a4) # 80008e60 <waitForAll>
    80003bf8:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    80003bfc:	00349793          	slli	a5,s1,0x3
    80003c00:	00960633          	add	a2,a2,s1
    80003c04:	00361613          	slli	a2,a2,0x3
    80003c08:	f4840713          	addi	a4,s0,-184
    80003c0c:	00c70633          	add	a2,a4,a2
    80003c10:	00000597          	auipc	a1,0x0
    80003c14:	ca058593          	addi	a1,a1,-864 # 800038b0 <_Z8producerPv>
    80003c18:	f2040513          	addi	a0,s0,-224
    80003c1c:	00f50533          	add	a0,a0,a5
    80003c20:	ffffd097          	auipc	ra,0xffffd
    80003c24:	684080e7          	jalr	1668(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003c28:	0014849b          	addiw	s1,s1,1
    80003c2c:	fa1ff06f          	j	80003bcc <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80003c30:	ffffd097          	auipc	ra,0xffffd
    80003c34:	6f4080e7          	jalr	1780(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80003c38:	00000493          	li	s1,0
    80003c3c:	00500793          	li	a5,5
    80003c40:	0097ce63          	blt	a5,s1,80003c5c <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    80003c44:	00005517          	auipc	a0,0x5
    80003c48:	21c53503          	ld	a0,540(a0) # 80008e60 <waitForAll>
    80003c4c:	ffffd097          	auipc	ra,0xffffd
    80003c50:	784080e7          	jalr	1924(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003c54:	0014849b          	addiw	s1,s1,1
    80003c58:	fe5ff06f          	j	80003c3c <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    80003c5c:	00005517          	auipc	a0,0x5
    80003c60:	20453503          	ld	a0,516(a0) # 80008e60 <waitForAll>
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	740080e7          	jalr	1856(ra) # 800013a4 <sem_close>
    80003c6c:	0d813083          	ld	ra,216(sp)
    80003c70:	0d013403          	ld	s0,208(sp)
    80003c74:	0c813483          	ld	s1,200(sp)
    80003c78:	0c013903          	ld	s2,192(sp)
    80003c7c:	0e010113          	addi	sp,sp,224
    80003c80:	00008067          	ret
    80003c84:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003c88:	00090513          	mv	a0,s2
    80003c8c:	fffff097          	auipc	ra,0xfffff
    80003c90:	d3c080e7          	jalr	-708(ra) # 800029c8 <_ZdlPv>
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00006097          	auipc	ra,0x6
    80003c9c:	2b0080e7          	jalr	688(ra) # 80009f48 <_Unwind_Resume>

0000000080003ca0 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80003ca0:	fe010113          	addi	sp,sp,-32
    80003ca4:	00113c23          	sd	ra,24(sp)
    80003ca8:	00813823          	sd	s0,16(sp)
    80003cac:	00913423          	sd	s1,8(sp)
    80003cb0:	01213023          	sd	s2,0(sp)
    80003cb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003cb8:	00000913          	li	s2,0
    80003cbc:	0380006f          	j	80003cf4 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003cc0:	ffffd097          	auipc	ra,0xffffd
    80003cc4:	664080e7          	jalr	1636(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003cc8:	00148493          	addi	s1,s1,1
    80003ccc:	000027b7          	lui	a5,0x2
    80003cd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cd4:	0097ee63          	bltu	a5,s1,80003cf0 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003cd8:	00000713          	li	a4,0
    80003cdc:	000077b7          	lui	a5,0x7
    80003ce0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ce4:	fce7eee3          	bltu	a5,a4,80003cc0 <_Z11workerBodyAPv+0x20>
    80003ce8:	00170713          	addi	a4,a4,1
    80003cec:	ff1ff06f          	j	80003cdc <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003cf0:	00190913          	addi	s2,s2,1
    80003cf4:	00900793          	li	a5,9
    80003cf8:	0527e063          	bltu	a5,s2,80003d38 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003cfc:	00003517          	auipc	a0,0x3
    80003d00:	55450513          	addi	a0,a0,1364 # 80007250 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	5bc080e7          	jalr	1468(ra) # 800042c0 <_Z11printStringPKc>
    80003d0c:	00000613          	li	a2,0
    80003d10:	00a00593          	li	a1,10
    80003d14:	0009051b          	sext.w	a0,s2
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	740080e7          	jalr	1856(ra) # 80004458 <_Z8printIntiii>
    80003d20:	00003517          	auipc	a0,0x3
    80003d24:	4f850513          	addi	a0,a0,1272 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	598080e7          	jalr	1432(ra) # 800042c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d30:	00000493          	li	s1,0
    80003d34:	f99ff06f          	j	80003ccc <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003d38:	00003517          	auipc	a0,0x3
    80003d3c:	52050513          	addi	a0,a0,1312 # 80007258 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	580080e7          	jalr	1408(ra) # 800042c0 <_Z11printStringPKc>
    finishedA = true;
    80003d48:	00100793          	li	a5,1
    80003d4c:	00005717          	auipc	a4,0x5
    80003d50:	10f70e23          	sb	a5,284(a4) # 80008e68 <finishedA>
}
    80003d54:	01813083          	ld	ra,24(sp)
    80003d58:	01013403          	ld	s0,16(sp)
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	00013903          	ld	s2,0(sp)
    80003d64:	02010113          	addi	sp,sp,32
    80003d68:	00008067          	ret

0000000080003d6c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00113c23          	sd	ra,24(sp)
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	01213023          	sd	s2,0(sp)
    80003d80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d84:	00000913          	li	s2,0
    80003d88:	0380006f          	j	80003dc0 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d8c:	ffffd097          	auipc	ra,0xffffd
    80003d90:	598080e7          	jalr	1432(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003d94:	00148493          	addi	s1,s1,1
    80003d98:	000027b7          	lui	a5,0x2
    80003d9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003da0:	0097ee63          	bltu	a5,s1,80003dbc <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003da4:	00000713          	li	a4,0
    80003da8:	000077b7          	lui	a5,0x7
    80003dac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003db0:	fce7eee3          	bltu	a5,a4,80003d8c <_Z11workerBodyBPv+0x20>
    80003db4:	00170713          	addi	a4,a4,1
    80003db8:	ff1ff06f          	j	80003da8 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003dbc:	00190913          	addi	s2,s2,1
    80003dc0:	00f00793          	li	a5,15
    80003dc4:	0527e063          	bltu	a5,s2,80003e04 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003dc8:	00003517          	auipc	a0,0x3
    80003dcc:	4a050513          	addi	a0,a0,1184 # 80007268 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	4f0080e7          	jalr	1264(ra) # 800042c0 <_Z11printStringPKc>
    80003dd8:	00000613          	li	a2,0
    80003ddc:	00a00593          	li	a1,10
    80003de0:	0009051b          	sext.w	a0,s2
    80003de4:	00000097          	auipc	ra,0x0
    80003de8:	674080e7          	jalr	1652(ra) # 80004458 <_Z8printIntiii>
    80003dec:	00003517          	auipc	a0,0x3
    80003df0:	42c50513          	addi	a0,a0,1068 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	4cc080e7          	jalr	1228(ra) # 800042c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003dfc:	00000493          	li	s1,0
    80003e00:	f99ff06f          	j	80003d98 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003e04:	00003517          	auipc	a0,0x3
    80003e08:	46c50513          	addi	a0,a0,1132 # 80007270 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	4b4080e7          	jalr	1204(ra) # 800042c0 <_Z11printStringPKc>
    finishedB = true;
    80003e14:	00100793          	li	a5,1
    80003e18:	00005717          	auipc	a4,0x5
    80003e1c:	04f708a3          	sb	a5,81(a4) # 80008e69 <finishedB>
    thread_dispatch();
    80003e20:	ffffd097          	auipc	ra,0xffffd
    80003e24:	504080e7          	jalr	1284(ra) # 80001324 <thread_dispatch>
}
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	00813483          	ld	s1,8(sp)
    80003e34:	00013903          	ld	s2,0(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	00008067          	ret

0000000080003e40 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80003e40:	fe010113          	addi	sp,sp,-32
    80003e44:	00113c23          	sd	ra,24(sp)
    80003e48:	00813823          	sd	s0,16(sp)
    80003e4c:	00913423          	sd	s1,8(sp)
    80003e50:	01213023          	sd	s2,0(sp)
    80003e54:	02010413          	addi	s0,sp,32
    80003e58:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003e5c:	00100793          	li	a5,1
    80003e60:	02a7f863          	bgeu	a5,a0,80003e90 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003e64:	00a00793          	li	a5,10
    80003e68:	02f577b3          	remu	a5,a0,a5
    80003e6c:	02078e63          	beqz	a5,80003ea8 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003e70:	fff48513          	addi	a0,s1,-1
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	fcc080e7          	jalr	-52(ra) # 80003e40 <_Z9fibonaccim>
    80003e7c:	00050913          	mv	s2,a0
    80003e80:	ffe48513          	addi	a0,s1,-2
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	fbc080e7          	jalr	-68(ra) # 80003e40 <_Z9fibonaccim>
    80003e8c:	00a90533          	add	a0,s2,a0
}
    80003e90:	01813083          	ld	ra,24(sp)
    80003e94:	01013403          	ld	s0,16(sp)
    80003e98:	00813483          	ld	s1,8(sp)
    80003e9c:	00013903          	ld	s2,0(sp)
    80003ea0:	02010113          	addi	sp,sp,32
    80003ea4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ea8:	ffffd097          	auipc	ra,0xffffd
    80003eac:	47c080e7          	jalr	1148(ra) # 80001324 <thread_dispatch>
    80003eb0:	fc1ff06f          	j	80003e70 <_Z9fibonaccim+0x30>

0000000080003eb4 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80003eb4:	fe010113          	addi	sp,sp,-32
    80003eb8:	00113c23          	sd	ra,24(sp)
    80003ebc:	00813823          	sd	s0,16(sp)
    80003ec0:	00913423          	sd	s1,8(sp)
    80003ec4:	01213023          	sd	s2,0(sp)
    80003ec8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ecc:	00000493          	li	s1,0
    80003ed0:	0400006f          	j	80003f10 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ed4:	00003517          	auipc	a0,0x3
    80003ed8:	3ac50513          	addi	a0,a0,940 # 80007280 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	3e4080e7          	jalr	996(ra) # 800042c0 <_Z11printStringPKc>
    80003ee4:	00000613          	li	a2,0
    80003ee8:	00a00593          	li	a1,10
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	568080e7          	jalr	1384(ra) # 80004458 <_Z8printIntiii>
    80003ef8:	00003517          	auipc	a0,0x3
    80003efc:	32050513          	addi	a0,a0,800 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	3c0080e7          	jalr	960(ra) # 800042c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f08:	0014849b          	addiw	s1,s1,1
    80003f0c:	0ff4f493          	andi	s1,s1,255
    80003f10:	00200793          	li	a5,2
    80003f14:	fc97f0e3          	bgeu	a5,s1,80003ed4 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80003f18:	00003517          	auipc	a0,0x3
    80003f1c:	37050513          	addi	a0,a0,880 # 80007288 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	3a0080e7          	jalr	928(ra) # 800042c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f28:	00700313          	li	t1,7
    thread_dispatch();
    80003f2c:	ffffd097          	auipc	ra,0xffffd
    80003f30:	3f8080e7          	jalr	1016(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f34:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003f38:	00003517          	auipc	a0,0x3
    80003f3c:	36050513          	addi	a0,a0,864 # 80007298 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	380080e7          	jalr	896(ra) # 800042c0 <_Z11printStringPKc>
    80003f48:	00000613          	li	a2,0
    80003f4c:	00a00593          	li	a1,10
    80003f50:	0009051b          	sext.w	a0,s2
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	504080e7          	jalr	1284(ra) # 80004458 <_Z8printIntiii>
    80003f5c:	00003517          	auipc	a0,0x3
    80003f60:	2bc50513          	addi	a0,a0,700 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	35c080e7          	jalr	860(ra) # 800042c0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003f6c:	00c00513          	li	a0,12
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	ed0080e7          	jalr	-304(ra) # 80003e40 <_Z9fibonaccim>
    80003f78:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003f7c:	00003517          	auipc	a0,0x3
    80003f80:	32450513          	addi	a0,a0,804 # 800072a0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80003f84:	00000097          	auipc	ra,0x0
    80003f88:	33c080e7          	jalr	828(ra) # 800042c0 <_Z11printStringPKc>
    80003f8c:	00000613          	li	a2,0
    80003f90:	00a00593          	li	a1,10
    80003f94:	0009051b          	sext.w	a0,s2
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	4c0080e7          	jalr	1216(ra) # 80004458 <_Z8printIntiii>
    80003fa0:	00003517          	auipc	a0,0x3
    80003fa4:	27850513          	addi	a0,a0,632 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	318080e7          	jalr	792(ra) # 800042c0 <_Z11printStringPKc>
    80003fb0:	0400006f          	j	80003ff0 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003fb4:	00003517          	auipc	a0,0x3
    80003fb8:	2cc50513          	addi	a0,a0,716 # 80007280 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003fbc:	00000097          	auipc	ra,0x0
    80003fc0:	304080e7          	jalr	772(ra) # 800042c0 <_Z11printStringPKc>
    80003fc4:	00000613          	li	a2,0
    80003fc8:	00a00593          	li	a1,10
    80003fcc:	00048513          	mv	a0,s1
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	488080e7          	jalr	1160(ra) # 80004458 <_Z8printIntiii>
    80003fd8:	00003517          	auipc	a0,0x3
    80003fdc:	24050513          	addi	a0,a0,576 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	2e0080e7          	jalr	736(ra) # 800042c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003fe8:	0014849b          	addiw	s1,s1,1
    80003fec:	0ff4f493          	andi	s1,s1,255
    80003ff0:	00500793          	li	a5,5
    80003ff4:	fc97f0e3          	bgeu	a5,s1,80003fb4 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80003ff8:	00003517          	auipc	a0,0x3
    80003ffc:	2b850513          	addi	a0,a0,696 # 800072b0 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004000:	00000097          	auipc	ra,0x0
    80004004:	2c0080e7          	jalr	704(ra) # 800042c0 <_Z11printStringPKc>
    finishedC = true;
    80004008:	00100793          	li	a5,1
    8000400c:	00005717          	auipc	a4,0x5
    80004010:	e4f70f23          	sb	a5,-418(a4) # 80008e6a <finishedC>
    thread_dispatch();
    80004014:	ffffd097          	auipc	ra,0xffffd
    80004018:	310080e7          	jalr	784(ra) # 80001324 <thread_dispatch>
}
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	00013903          	ld	s2,0(sp)
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret

0000000080004034 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004034:	fe010113          	addi	sp,sp,-32
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	00813823          	sd	s0,16(sp)
    80004040:	00913423          	sd	s1,8(sp)
    80004044:	01213023          	sd	s2,0(sp)
    80004048:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000404c:	00a00493          	li	s1,10
    80004050:	0400006f          	j	80004090 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004054:	00003517          	auipc	a0,0x3
    80004058:	26c50513          	addi	a0,a0,620 # 800072c0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	264080e7          	jalr	612(ra) # 800042c0 <_Z11printStringPKc>
    80004064:	00000613          	li	a2,0
    80004068:	00a00593          	li	a1,10
    8000406c:	00048513          	mv	a0,s1
    80004070:	00000097          	auipc	ra,0x0
    80004074:	3e8080e7          	jalr	1000(ra) # 80004458 <_Z8printIntiii>
    80004078:	00003517          	auipc	a0,0x3
    8000407c:	1a050513          	addi	a0,a0,416 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004080:	00000097          	auipc	ra,0x0
    80004084:	240080e7          	jalr	576(ra) # 800042c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004088:	0014849b          	addiw	s1,s1,1
    8000408c:	0ff4f493          	andi	s1,s1,255
    80004090:	00c00793          	li	a5,12
    80004094:	fc97f0e3          	bgeu	a5,s1,80004054 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004098:	00003517          	auipc	a0,0x3
    8000409c:	23050513          	addi	a0,a0,560 # 800072c8 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	220080e7          	jalr	544(ra) # 800042c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800040a8:	00500313          	li	t1,5
    thread_dispatch();
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	278080e7          	jalr	632(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    800040b4:	01000513          	li	a0,16
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	d88080e7          	jalr	-632(ra) # 80003e40 <_Z9fibonaccim>
    800040c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800040c4:	00003517          	auipc	a0,0x3
    800040c8:	21450513          	addi	a0,a0,532 # 800072d8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	1f4080e7          	jalr	500(ra) # 800042c0 <_Z11printStringPKc>
    800040d4:	00000613          	li	a2,0
    800040d8:	00a00593          	li	a1,10
    800040dc:	0009051b          	sext.w	a0,s2
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	378080e7          	jalr	888(ra) # 80004458 <_Z8printIntiii>
    800040e8:	00003517          	auipc	a0,0x3
    800040ec:	13050513          	addi	a0,a0,304 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	1d0080e7          	jalr	464(ra) # 800042c0 <_Z11printStringPKc>
    800040f8:	0400006f          	j	80004138 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040fc:	00003517          	auipc	a0,0x3
    80004100:	1c450513          	addi	a0,a0,452 # 800072c0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004104:	00000097          	auipc	ra,0x0
    80004108:	1bc080e7          	jalr	444(ra) # 800042c0 <_Z11printStringPKc>
    8000410c:	00000613          	li	a2,0
    80004110:	00a00593          	li	a1,10
    80004114:	00048513          	mv	a0,s1
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	340080e7          	jalr	832(ra) # 80004458 <_Z8printIntiii>
    80004120:	00003517          	auipc	a0,0x3
    80004124:	0f850513          	addi	a0,a0,248 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004128:	00000097          	auipc	ra,0x0
    8000412c:	198080e7          	jalr	408(ra) # 800042c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004130:	0014849b          	addiw	s1,s1,1
    80004134:	0ff4f493          	andi	s1,s1,255
    80004138:	00f00793          	li	a5,15
    8000413c:	fc97f0e3          	bgeu	a5,s1,800040fc <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004140:	00003517          	auipc	a0,0x3
    80004144:	1a850513          	addi	a0,a0,424 # 800072e8 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	178080e7          	jalr	376(ra) # 800042c0 <_Z11printStringPKc>
    finishedD = true;
    80004150:	00100793          	li	a5,1
    80004154:	00005717          	auipc	a4,0x5
    80004158:	d0f70ba3          	sb	a5,-745(a4) # 80008e6b <finishedD>
    thread_dispatch();
    8000415c:	ffffd097          	auipc	ra,0xffffd
    80004160:	1c8080e7          	jalr	456(ra) # 80001324 <thread_dispatch>
}
    80004164:	01813083          	ld	ra,24(sp)
    80004168:	01013403          	ld	s0,16(sp)
    8000416c:	00813483          	ld	s1,8(sp)
    80004170:	00013903          	ld	s2,0(sp)
    80004174:	02010113          	addi	sp,sp,32
    80004178:	00008067          	ret

000000008000417c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000417c:	fc010113          	addi	sp,sp,-64
    80004180:	02113c23          	sd	ra,56(sp)
    80004184:	02813823          	sd	s0,48(sp)
    80004188:	02913423          	sd	s1,40(sp)
    8000418c:	03213023          	sd	s2,32(sp)
    80004190:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004194:	00000613          	li	a2,0
    80004198:	00000597          	auipc	a1,0x0
    8000419c:	b0858593          	addi	a1,a1,-1272 # 80003ca0 <_Z11workerBodyAPv>
    800041a0:	fc040513          	addi	a0,s0,-64
    800041a4:	ffffd097          	auipc	ra,0xffffd
    800041a8:	100080e7          	jalr	256(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800041ac:	00003517          	auipc	a0,0x3
    800041b0:	14c50513          	addi	a0,a0,332 # 800072f8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	10c080e7          	jalr	268(ra) # 800042c0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800041bc:	00000613          	li	a2,0
    800041c0:	00000597          	auipc	a1,0x0
    800041c4:	bac58593          	addi	a1,a1,-1108 # 80003d6c <_Z11workerBodyBPv>
    800041c8:	fc840513          	addi	a0,s0,-56
    800041cc:	ffffd097          	auipc	ra,0xffffd
    800041d0:	0d8080e7          	jalr	216(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800041d4:	00003517          	auipc	a0,0x3
    800041d8:	13c50513          	addi	a0,a0,316 # 80007310 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	0e4080e7          	jalr	228(ra) # 800042c0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800041e4:	00000613          	li	a2,0
    800041e8:	00000597          	auipc	a1,0x0
    800041ec:	ccc58593          	addi	a1,a1,-820 # 80003eb4 <_Z11workerBodyCPv>
    800041f0:	fd040513          	addi	a0,s0,-48
    800041f4:	ffffd097          	auipc	ra,0xffffd
    800041f8:	0b0080e7          	jalr	176(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800041fc:	00003517          	auipc	a0,0x3
    80004200:	12c50513          	addi	a0,a0,300 # 80007328 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004204:	00000097          	auipc	ra,0x0
    80004208:	0bc080e7          	jalr	188(ra) # 800042c0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000420c:	00000613          	li	a2,0
    80004210:	00000597          	auipc	a1,0x0
    80004214:	e2458593          	addi	a1,a1,-476 # 80004034 <_Z11workerBodyDPv>
    80004218:	fd840513          	addi	a0,s0,-40
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	088080e7          	jalr	136(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80004224:	00003517          	auipc	a0,0x3
    80004228:	11c50513          	addi	a0,a0,284 # 80007340 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    8000422c:	00000097          	auipc	ra,0x0
    80004230:	094080e7          	jalr	148(ra) # 800042c0 <_Z11printStringPKc>
    80004234:	00c0006f          	j	80004240 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80004238:	ffffd097          	auipc	ra,0xffffd
    8000423c:	0ec080e7          	jalr	236(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004240:	00005797          	auipc	a5,0x5
    80004244:	c287c783          	lbu	a5,-984(a5) # 80008e68 <finishedA>
    80004248:	fe0788e3          	beqz	a5,80004238 <_Z18Threads_C_API_testv+0xbc>
    8000424c:	00005797          	auipc	a5,0x5
    80004250:	c1d7c783          	lbu	a5,-995(a5) # 80008e69 <finishedB>
    80004254:	fe0782e3          	beqz	a5,80004238 <_Z18Threads_C_API_testv+0xbc>
    80004258:	00005797          	auipc	a5,0x5
    8000425c:	c127c783          	lbu	a5,-1006(a5) # 80008e6a <finishedC>
    80004260:	fc078ce3          	beqz	a5,80004238 <_Z18Threads_C_API_testv+0xbc>
    80004264:	00005797          	auipc	a5,0x5
    80004268:	c077c783          	lbu	a5,-1017(a5) # 80008e6b <finishedD>
    8000426c:	fc0786e3          	beqz	a5,80004238 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80004270:	fc040493          	addi	s1,s0,-64
    80004274:	0080006f          	j	8000427c <_Z18Threads_C_API_testv+0x100>
    80004278:	00848493          	addi	s1,s1,8
    8000427c:	fe040793          	addi	a5,s0,-32
    80004280:	02f48463          	beq	s1,a5,800042a8 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80004284:	0004b903          	ld	s2,0(s1)
    80004288:	fe0908e3          	beqz	s2,80004278 <_Z18Threads_C_API_testv+0xfc>
    8000428c:	00090513          	mv	a0,s2
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	2a4080e7          	jalr	676(ra) # 80002534 <_ZN3PCBD1Ev>
    80004298:	00090513          	mv	a0,s2
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	270080e7          	jalr	624(ra) # 8000250c <_ZN3PCBdlEPv>
    800042a4:	fd5ff06f          	j	80004278 <_Z18Threads_C_API_testv+0xfc>
    }
}
    800042a8:	03813083          	ld	ra,56(sp)
    800042ac:	03013403          	ld	s0,48(sp)
    800042b0:	02813483          	ld	s1,40(sp)
    800042b4:	02013903          	ld	s2,32(sp)
    800042b8:	04010113          	addi	sp,sp,64
    800042bc:	00008067          	ret

00000000800042c0 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800042c0:	fe010113          	addi	sp,sp,-32
    800042c4:	00113c23          	sd	ra,24(sp)
    800042c8:	00813823          	sd	s0,16(sp)
    800042cc:	00913423          	sd	s1,8(sp)
    800042d0:	02010413          	addi	s0,sp,32
    800042d4:	00050493          	mv	s1,a0
    LOCK();
    800042d8:	00100613          	li	a2,1
    800042dc:	00000593          	li	a1,0
    800042e0:	00005517          	auipc	a0,0x5
    800042e4:	b9050513          	addi	a0,a0,-1136 # 80008e70 <lockPrint>
    800042e8:	ffffd097          	auipc	ra,0xffffd
    800042ec:	f20080e7          	jalr	-224(ra) # 80001208 <copy_and_swap>
    800042f0:	fe0514e3          	bnez	a0,800042d8 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800042f4:	0004c503          	lbu	a0,0(s1)
    800042f8:	00050a63          	beqz	a0,8000430c <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    800042fc:	00003097          	auipc	ra,0x3
    80004300:	9f0080e7          	jalr	-1552(ra) # 80006cec <__putc>
        putc(*string);
        string++;
    80004304:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80004308:	fedff06f          	j	800042f4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000430c:	00000613          	li	a2,0
    80004310:	00100593          	li	a1,1
    80004314:	00005517          	auipc	a0,0x5
    80004318:	b5c50513          	addi	a0,a0,-1188 # 80008e70 <lockPrint>
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	eec080e7          	jalr	-276(ra) # 80001208 <copy_and_swap>
    80004324:	fe0514e3          	bnez	a0,8000430c <_Z11printStringPKc+0x4c>
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00008067          	ret

000000008000433c <_Z9getStringPci>:

char *getString(char *buf, int max) {
    8000433c:	fd010113          	addi	sp,sp,-48
    80004340:	02113423          	sd	ra,40(sp)
    80004344:	02813023          	sd	s0,32(sp)
    80004348:	00913c23          	sd	s1,24(sp)
    8000434c:	01213823          	sd	s2,16(sp)
    80004350:	01313423          	sd	s3,8(sp)
    80004354:	01413023          	sd	s4,0(sp)
    80004358:	03010413          	addi	s0,sp,48
    8000435c:	00050993          	mv	s3,a0
    80004360:	00058a13          	mv	s4,a1
    LOCK();
    80004364:	00100613          	li	a2,1
    80004368:	00000593          	li	a1,0
    8000436c:	00005517          	auipc	a0,0x5
    80004370:	b0450513          	addi	a0,a0,-1276 # 80008e70 <lockPrint>
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	e94080e7          	jalr	-364(ra) # 80001208 <copy_and_swap>
    8000437c:	fe0514e3          	bnez	a0,80004364 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80004380:	00000913          	li	s2,0
    80004384:	00090493          	mv	s1,s2
    80004388:	0019091b          	addiw	s2,s2,1
    8000438c:	03495a63          	bge	s2,s4,800043c0 <_Z9getStringPci+0x84>
    return __getc();
    80004390:	00003097          	auipc	ra,0x3
    80004394:	998080e7          	jalr	-1640(ra) # 80006d28 <__getc>
        cc = getc();
        if (cc < 1)
    80004398:	02050463          	beqz	a0,800043c0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000439c:	009984b3          	add	s1,s3,s1
    800043a0:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800043a4:	00a00793          	li	a5,10
    800043a8:	00f50a63          	beq	a0,a5,800043bc <_Z9getStringPci+0x80>
    800043ac:	00d00793          	li	a5,13
    800043b0:	fcf51ae3          	bne	a0,a5,80004384 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800043b4:	00090493          	mv	s1,s2
    800043b8:	0080006f          	j	800043c0 <_Z9getStringPci+0x84>
    800043bc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800043c0:	009984b3          	add	s1,s3,s1
    800043c4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800043c8:	00000613          	li	a2,0
    800043cc:	00100593          	li	a1,1
    800043d0:	00005517          	auipc	a0,0x5
    800043d4:	aa050513          	addi	a0,a0,-1376 # 80008e70 <lockPrint>
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	e30080e7          	jalr	-464(ra) # 80001208 <copy_and_swap>
    800043e0:	fe0514e3          	bnez	a0,800043c8 <_Z9getStringPci+0x8c>
    return buf;
}
    800043e4:	00098513          	mv	a0,s3
    800043e8:	02813083          	ld	ra,40(sp)
    800043ec:	02013403          	ld	s0,32(sp)
    800043f0:	01813483          	ld	s1,24(sp)
    800043f4:	01013903          	ld	s2,16(sp)
    800043f8:	00813983          	ld	s3,8(sp)
    800043fc:	00013a03          	ld	s4,0(sp)
    80004400:	03010113          	addi	sp,sp,48
    80004404:	00008067          	ret

0000000080004408 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004408:	ff010113          	addi	sp,sp,-16
    8000440c:	00813423          	sd	s0,8(sp)
    80004410:	01010413          	addi	s0,sp,16
    80004414:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004418:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000441c:	0006c603          	lbu	a2,0(a3)
    80004420:	fd06071b          	addiw	a4,a2,-48
    80004424:	0ff77713          	andi	a4,a4,255
    80004428:	00900793          	li	a5,9
    8000442c:	02e7e063          	bltu	a5,a4,8000444c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004430:	0025179b          	slliw	a5,a0,0x2
    80004434:	00a787bb          	addw	a5,a5,a0
    80004438:	0017979b          	slliw	a5,a5,0x1
    8000443c:	00168693          	addi	a3,a3,1
    80004440:	00c787bb          	addw	a5,a5,a2
    80004444:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004448:	fd5ff06f          	j	8000441c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000444c:	00813403          	ld	s0,8(sp)
    80004450:	01010113          	addi	sp,sp,16
    80004454:	00008067          	ret

0000000080004458 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80004458:	fc010113          	addi	sp,sp,-64
    8000445c:	02113c23          	sd	ra,56(sp)
    80004460:	02813823          	sd	s0,48(sp)
    80004464:	02913423          	sd	s1,40(sp)
    80004468:	03213023          	sd	s2,32(sp)
    8000446c:	01313c23          	sd	s3,24(sp)
    80004470:	04010413          	addi	s0,sp,64
    80004474:	00050493          	mv	s1,a0
    80004478:	00058913          	mv	s2,a1
    8000447c:	00060993          	mv	s3,a2
    LOCK();
    80004480:	00100613          	li	a2,1
    80004484:	00000593          	li	a1,0
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	9e850513          	addi	a0,a0,-1560 # 80008e70 <lockPrint>
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	d78080e7          	jalr	-648(ra) # 80001208 <copy_and_swap>
    80004498:	fe0514e3          	bnez	a0,80004480 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    8000449c:	00098463          	beqz	s3,800044a4 <_Z8printIntiii+0x4c>
    800044a0:	0804c463          	bltz	s1,80004528 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800044a4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800044a8:	00000593          	li	a1,0
    }

    i = 0;
    800044ac:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800044b0:	0009079b          	sext.w	a5,s2
    800044b4:	0325773b          	remuw	a4,a0,s2
    800044b8:	00048613          	mv	a2,s1
    800044bc:	0014849b          	addiw	s1,s1,1
    800044c0:	02071693          	slli	a3,a4,0x20
    800044c4:	0206d693          	srli	a3,a3,0x20
    800044c8:	00003717          	auipc	a4,0x3
    800044cc:	e9070713          	addi	a4,a4,-368 # 80007358 <_ZL6digits>
    800044d0:	00d70733          	add	a4,a4,a3
    800044d4:	00074683          	lbu	a3,0(a4)
    800044d8:	fd040713          	addi	a4,s0,-48
    800044dc:	00c70733          	add	a4,a4,a2
    800044e0:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800044e4:	0005071b          	sext.w	a4,a0
    800044e8:	0325553b          	divuw	a0,a0,s2
    800044ec:	fcf772e3          	bgeu	a4,a5,800044b0 <_Z8printIntiii+0x58>
    if (neg)
    800044f0:	00058c63          	beqz	a1,80004508 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800044f4:	fd040793          	addi	a5,s0,-48
    800044f8:	009784b3          	add	s1,a5,s1
    800044fc:	02d00793          	li	a5,45
    80004500:	fef48823          	sb	a5,-16(s1)
    80004504:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80004508:	fff4849b          	addiw	s1,s1,-1
    8000450c:	0204c463          	bltz	s1,80004534 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004510:	fd040793          	addi	a5,s0,-48
    80004514:	009787b3          	add	a5,a5,s1
    __putc(c);
    80004518:	ff07c503          	lbu	a0,-16(a5)
    8000451c:	00002097          	auipc	ra,0x2
    80004520:	7d0080e7          	jalr	2000(ra) # 80006cec <__putc>
}
    80004524:	fe5ff06f          	j	80004508 <_Z8printIntiii+0xb0>
        x = -xx;
    80004528:	4090053b          	negw	a0,s1
        neg = 1;
    8000452c:	00100593          	li	a1,1
        x = -xx;
    80004530:	f7dff06f          	j	800044ac <_Z8printIntiii+0x54>

    UNLOCK();
    80004534:	00000613          	li	a2,0
    80004538:	00100593          	li	a1,1
    8000453c:	00005517          	auipc	a0,0x5
    80004540:	93450513          	addi	a0,a0,-1740 # 80008e70 <lockPrint>
    80004544:	ffffd097          	auipc	ra,0xffffd
    80004548:	cc4080e7          	jalr	-828(ra) # 80001208 <copy_and_swap>
    8000454c:	fe0514e3          	bnez	a0,80004534 <_Z8printIntiii+0xdc>
}
    80004550:	03813083          	ld	ra,56(sp)
    80004554:	03013403          	ld	s0,48(sp)
    80004558:	02813483          	ld	s1,40(sp)
    8000455c:	02013903          	ld	s2,32(sp)
    80004560:	01813983          	ld	s3,24(sp)
    80004564:	04010113          	addi	sp,sp,64
    80004568:	00008067          	ret

000000008000456c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    8000456c:	fe010113          	addi	sp,sp,-32
    80004570:	00113c23          	sd	ra,24(sp)
    80004574:	00813823          	sd	s0,16(sp)
    80004578:	00913423          	sd	s1,8(sp)
    8000457c:	01213023          	sd	s2,0(sp)
    80004580:	02010413          	addi	s0,sp,32
    80004584:	00050493          	mv	s1,a0
    80004588:	00b52023          	sw	a1,0(a0)
    8000458c:	00052823          	sw	zero,16(a0)
    80004590:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004594:	00259513          	slli	a0,a1,0x2
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	cb0080e7          	jalr	-848(ra) # 80001248 <mem_alloc>
    800045a0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800045a4:	00800513          	li	a0,8
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	3f8080e7          	jalr	1016(ra) # 800029a0 <_Znwm>
    800045b0:	00050913          	mv	s2,a0
    800045b4:	00000593          	li	a1,0
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	5d0080e7          	jalr	1488(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    800045c0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800045c4:	00800513          	li	a0,8
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	3d8080e7          	jalr	984(ra) # 800029a0 <_Znwm>
    800045d0:	00050913          	mv	s2,a0
    800045d4:	0004a583          	lw	a1,0(s1)
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	5b0080e7          	jalr	1456(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    800045e0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800045e4:	00800513          	li	a0,8
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	3b8080e7          	jalr	952(ra) # 800029a0 <_Znwm>
    800045f0:	00050913          	mv	s2,a0
    800045f4:	00100593          	li	a1,1
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	590080e7          	jalr	1424(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80004600:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004604:	00800513          	li	a0,8
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	398080e7          	jalr	920(ra) # 800029a0 <_Znwm>
    80004610:	00050913          	mv	s2,a0
    80004614:	00100593          	li	a1,1
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	570080e7          	jalr	1392(ra) # 80002b88 <_ZN9SemaphoreC1Ej>
    80004620:	0324b823          	sd	s2,48(s1)
}
    80004624:	01813083          	ld	ra,24(sp)
    80004628:	01013403          	ld	s0,16(sp)
    8000462c:	00813483          	ld	s1,8(sp)
    80004630:	00013903          	ld	s2,0(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret
    8000463c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004640:	00090513          	mv	a0,s2
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	384080e7          	jalr	900(ra) # 800029c8 <_ZdlPv>
    8000464c:	00048513          	mv	a0,s1
    80004650:	00006097          	auipc	ra,0x6
    80004654:	8f8080e7          	jalr	-1800(ra) # 80009f48 <_Unwind_Resume>
    80004658:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    8000465c:	00090513          	mv	a0,s2
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	368080e7          	jalr	872(ra) # 800029c8 <_ZdlPv>
    80004668:	00048513          	mv	a0,s1
    8000466c:	00006097          	auipc	ra,0x6
    80004670:	8dc080e7          	jalr	-1828(ra) # 80009f48 <_Unwind_Resume>
    80004674:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004678:	00090513          	mv	a0,s2
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	34c080e7          	jalr	844(ra) # 800029c8 <_ZdlPv>
    80004684:	00048513          	mv	a0,s1
    80004688:	00006097          	auipc	ra,0x6
    8000468c:	8c0080e7          	jalr	-1856(ra) # 80009f48 <_Unwind_Resume>
    80004690:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004694:	00090513          	mv	a0,s2
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	330080e7          	jalr	816(ra) # 800029c8 <_ZdlPv>
    800046a0:	00048513          	mv	a0,s1
    800046a4:	00006097          	auipc	ra,0x6
    800046a8:	8a4080e7          	jalr	-1884(ra) # 80009f48 <_Unwind_Resume>

00000000800046ac <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800046ac:	fe010113          	addi	sp,sp,-32
    800046b0:	00113c23          	sd	ra,24(sp)
    800046b4:	00813823          	sd	s0,16(sp)
    800046b8:	00913423          	sd	s1,8(sp)
    800046bc:	02010413          	addi	s0,sp,32
    800046c0:	00050493          	mv	s1,a0
    __putc(c);
    800046c4:	00a00513          	li	a0,10
    800046c8:	00002097          	auipc	ra,0x2
    800046cc:	624080e7          	jalr	1572(ra) # 80006cec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800046d0:	0104a783          	lw	a5,16(s1)
    800046d4:	0144a703          	lw	a4,20(s1)
    800046d8:	00e78c63          	beq	a5,a4,800046f0 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800046dc:	0017879b          	addiw	a5,a5,1
    800046e0:	0004a703          	lw	a4,0(s1)
    800046e4:	02e7e7bb          	remw	a5,a5,a4
    800046e8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800046ec:	fe5ff06f          	j	800046d0 <_ZN9BufferCPPD1Ev+0x24>
    800046f0:	02100513          	li	a0,33
    800046f4:	00002097          	auipc	ra,0x2
    800046f8:	5f8080e7          	jalr	1528(ra) # 80006cec <__putc>
    800046fc:	00a00513          	li	a0,10
    80004700:	00002097          	auipc	ra,0x2
    80004704:	5ec080e7          	jalr	1516(ra) # 80006cec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80004708:	0084b503          	ld	a0,8(s1)
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	b6c080e7          	jalr	-1172(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80004714:	0204b503          	ld	a0,32(s1)
    80004718:	00050663          	beqz	a0,80004724 <_ZN9BufferCPPD1Ev+0x78>
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	2ac080e7          	jalr	684(ra) # 800029c8 <_ZdlPv>
    delete spaceAvailable;
    80004724:	0184b503          	ld	a0,24(s1)
    80004728:	00050663          	beqz	a0,80004734 <_ZN9BufferCPPD1Ev+0x88>
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	29c080e7          	jalr	668(ra) # 800029c8 <_ZdlPv>
    delete mutexTail;
    80004734:	0304b503          	ld	a0,48(s1)
    80004738:	00050663          	beqz	a0,80004744 <_ZN9BufferCPPD1Ev+0x98>
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	28c080e7          	jalr	652(ra) # 800029c8 <_ZdlPv>
    delete mutexHead;
    80004744:	0284b503          	ld	a0,40(s1)
    80004748:	00050663          	beqz	a0,80004754 <_ZN9BufferCPPD1Ev+0xa8>
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	27c080e7          	jalr	636(ra) # 800029c8 <_ZdlPv>

}
    80004754:	01813083          	ld	ra,24(sp)
    80004758:	01013403          	ld	s0,16(sp)
    8000475c:	00813483          	ld	s1,8(sp)
    80004760:	02010113          	addi	sp,sp,32
    80004764:	00008067          	ret

0000000080004768 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80004768:	fe010113          	addi	sp,sp,-32
    8000476c:	00113c23          	sd	ra,24(sp)
    80004770:	00813823          	sd	s0,16(sp)
    80004774:	00913423          	sd	s1,8(sp)
    80004778:	01213023          	sd	s2,0(sp)
    8000477c:	02010413          	addi	s0,sp,32
    80004780:	00050493          	mv	s1,a0
    80004784:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004788:	01853503          	ld	a0,24(a0)
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	3d0080e7          	jalr	976(ra) # 80002b5c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004794:	0304b503          	ld	a0,48(s1)
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	3c4080e7          	jalr	964(ra) # 80002b5c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800047a0:	0084b783          	ld	a5,8(s1)
    800047a4:	0144a703          	lw	a4,20(s1)
    800047a8:	00271713          	slli	a4,a4,0x2
    800047ac:	00e787b3          	add	a5,a5,a4
    800047b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800047b4:	0144a783          	lw	a5,20(s1)
    800047b8:	0017879b          	addiw	a5,a5,1
    800047bc:	0004a703          	lw	a4,0(s1)
    800047c0:	02e7e7bb          	remw	a5,a5,a4
    800047c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800047c8:	0304b503          	ld	a0,48(s1)
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	3f4080e7          	jalr	1012(ra) # 80002bc0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800047d4:	0204b503          	ld	a0,32(s1)
    800047d8:	ffffe097          	auipc	ra,0xffffe
    800047dc:	3e8080e7          	jalr	1000(ra) # 80002bc0 <_ZN9Semaphore6signalEv>

}
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	00013903          	ld	s2,0(sp)
    800047f0:	02010113          	addi	sp,sp,32
    800047f4:	00008067          	ret

00000000800047f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800047f8:	fe010113          	addi	sp,sp,-32
    800047fc:	00113c23          	sd	ra,24(sp)
    80004800:	00813823          	sd	s0,16(sp)
    80004804:	00913423          	sd	s1,8(sp)
    80004808:	01213023          	sd	s2,0(sp)
    8000480c:	02010413          	addi	s0,sp,32
    80004810:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004814:	02053503          	ld	a0,32(a0)
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	344080e7          	jalr	836(ra) # 80002b5c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004820:	0284b503          	ld	a0,40(s1)
    80004824:	ffffe097          	auipc	ra,0xffffe
    80004828:	338080e7          	jalr	824(ra) # 80002b5c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000482c:	0084b703          	ld	a4,8(s1)
    80004830:	0104a783          	lw	a5,16(s1)
    80004834:	00279693          	slli	a3,a5,0x2
    80004838:	00d70733          	add	a4,a4,a3
    8000483c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004840:	0017879b          	addiw	a5,a5,1
    80004844:	0004a703          	lw	a4,0(s1)
    80004848:	02e7e7bb          	remw	a5,a5,a4
    8000484c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004850:	0284b503          	ld	a0,40(s1)
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	36c080e7          	jalr	876(ra) # 80002bc0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000485c:	0184b503          	ld	a0,24(s1)
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	360080e7          	jalr	864(ra) # 80002bc0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004868:	00090513          	mv	a0,s2
    8000486c:	01813083          	ld	ra,24(sp)
    80004870:	01013403          	ld	s0,16(sp)
    80004874:	00813483          	ld	s1,8(sp)
    80004878:	00013903          	ld	s2,0(sp)
    8000487c:	02010113          	addi	sp,sp,32
    80004880:	00008067          	ret

0000000080004884 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80004884:	ff010113          	addi	sp,sp,-16
    80004888:	00113423          	sd	ra,8(sp)
    8000488c:	00813023          	sd	s0,0(sp)
    80004890:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80004894:	00000097          	auipc	ra,0x0
    80004898:	0bc080e7          	jalr	188(ra) # 80004950 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    8000489c:	00813083          	ld	ra,8(sp)
    800048a0:	00013403          	ld	s0,0(sp)
    800048a4:	01010113          	addi	sp,sp,16
    800048a8:	00008067          	ret

00000000800048ac <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	01213023          	sd	s2,0(sp)
    800048c0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800048c4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800048c8:	00600493          	li	s1,6
    while (--i > 0) {
    800048cc:	fff4849b          	addiw	s1,s1,-1
    800048d0:	04905463          	blez	s1,80004918 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800048d4:	00003517          	auipc	a0,0x3
    800048d8:	a9c50513          	addi	a0,a0,-1380 # 80007370 <_ZL6digits+0x18>
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	9e4080e7          	jalr	-1564(ra) # 800042c0 <_Z11printStringPKc>
        printInt(sleep_time);
    800048e4:	00000613          	li	a2,0
    800048e8:	00a00593          	li	a1,10
    800048ec:	0009051b          	sext.w	a0,s2
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	b68080e7          	jalr	-1176(ra) # 80004458 <_Z8printIntiii>
        printString(" !\n");
    800048f8:	00003517          	auipc	a0,0x3
    800048fc:	a8050513          	addi	a0,a0,-1408 # 80007378 <_ZL6digits+0x20>
    80004900:	00000097          	auipc	ra,0x0
    80004904:	9c0080e7          	jalr	-1600(ra) # 800042c0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004908:	00090513          	mv	a0,s2
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	b1c080e7          	jalr	-1252(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80004914:	fb9ff06f          	j	800048cc <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004918:	00a00793          	li	a5,10
    8000491c:	02f95933          	divu	s2,s2,a5
    80004920:	fff90913          	addi	s2,s2,-1
    80004924:	00004797          	auipc	a5,0x4
    80004928:	55478793          	addi	a5,a5,1364 # 80008e78 <finished>
    8000492c:	01278933          	add	s2,a5,s2
    80004930:	00100793          	li	a5,1
    80004934:	00f90023          	sb	a5,0(s2)
}
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	00013903          	ld	s2,0(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret

0000000080004950 <_Z12testSleepingv>:

void testSleeping()
{
    80004950:	fc010113          	addi	sp,sp,-64
    80004954:	02113c23          	sd	ra,56(sp)
    80004958:	02813823          	sd	s0,48(sp)
    8000495c:	02913423          	sd	s1,40(sp)
    80004960:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004964:	00a00793          	li	a5,10
    80004968:	fcf43823          	sd	a5,-48(s0)
    8000496c:	01400793          	li	a5,20
    80004970:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004974:	00000493          	li	s1,0
    80004978:	02c0006f          	j	800049a4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000497c:	00349793          	slli	a5,s1,0x3
    80004980:	fd040613          	addi	a2,s0,-48
    80004984:	00f60633          	add	a2,a2,a5
    80004988:	00000597          	auipc	a1,0x0
    8000498c:	f2458593          	addi	a1,a1,-220 # 800048ac <_Z9sleepyRunPv>
    80004990:	fc040513          	addi	a0,s0,-64
    80004994:	00f50533          	add	a0,a0,a5
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	90c080e7          	jalr	-1780(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800049a0:	0014849b          	addiw	s1,s1,1
    800049a4:	00100793          	li	a5,1
    800049a8:	fc97dae3          	bge	a5,s1,8000497c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800049ac:	00004797          	auipc	a5,0x4
    800049b0:	4cc7c783          	lbu	a5,1228(a5) # 80008e78 <finished>
    800049b4:	fe078ce3          	beqz	a5,800049ac <_Z12testSleepingv+0x5c>
    800049b8:	00004797          	auipc	a5,0x4
    800049bc:	4c17c783          	lbu	a5,1217(a5) # 80008e79 <finished+0x1>
    800049c0:	fe0786e3          	beqz	a5,800049ac <_Z12testSleepingv+0x5c>
}
    800049c4:	03813083          	ld	ra,56(sp)
    800049c8:	03013403          	ld	s0,48(sp)
    800049cc:	02813483          	ld	s1,40(sp)
    800049d0:	04010113          	addi	sp,sp,64
    800049d4:	00008067          	ret

00000000800049d8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800049d8:	fe010113          	addi	sp,sp,-32
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	02010413          	addi	s0,sp,32
    800049ec:	00050493          	mv	s1,a0
    800049f0:	00b52023          	sw	a1,0(a0)
    800049f4:	00052823          	sw	zero,16(a0)
    800049f8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800049fc:	00259513          	slli	a0,a1,0x2
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	848080e7          	jalr	-1976(ra) # 80001248 <mem_alloc>
    80004a08:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004a0c:	00000593          	li	a1,0
    80004a10:	02048513          	addi	a0,s1,32
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	958080e7          	jalr	-1704(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80004a1c:	0004a583          	lw	a1,0(s1)
    80004a20:	01848513          	addi	a0,s1,24
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	948080e7          	jalr	-1720(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80004a2c:	00100593          	li	a1,1
    80004a30:	02848513          	addi	a0,s1,40
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	938080e7          	jalr	-1736(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80004a3c:	00100593          	li	a1,1
    80004a40:	03048513          	addi	a0,s1,48
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	928080e7          	jalr	-1752(ra) # 8000136c <sem_open>
}
    80004a4c:	01813083          	ld	ra,24(sp)
    80004a50:	01013403          	ld	s0,16(sp)
    80004a54:	00813483          	ld	s1,8(sp)
    80004a58:	02010113          	addi	sp,sp,32
    80004a5c:	00008067          	ret

0000000080004a60 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    80004a78:	00a00513          	li	a0,10
    80004a7c:	00002097          	auipc	ra,0x2
    80004a80:	270080e7          	jalr	624(ra) # 80006cec <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80004a84:	0104a783          	lw	a5,16(s1)
    80004a88:	0144a703          	lw	a4,20(s1)
    80004a8c:	00e78c63          	beq	a5,a4,80004aa4 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80004a90:	0017879b          	addiw	a5,a5,1
    80004a94:	0004a703          	lw	a4,0(s1)
    80004a98:	02e7e7bb          	remw	a5,a5,a4
    80004a9c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80004aa0:	fe5ff06f          	j	80004a84 <_ZN6BufferD1Ev+0x24>
    80004aa4:	02100513          	li	a0,33
    80004aa8:	00002097          	auipc	ra,0x2
    80004aac:	244080e7          	jalr	580(ra) # 80006cec <__putc>
    80004ab0:	00a00513          	li	a0,10
    80004ab4:	00002097          	auipc	ra,0x2
    80004ab8:	238080e7          	jalr	568(ra) # 80006cec <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80004abc:	0084b503          	ld	a0,8(s1)
    80004ac0:	ffffc097          	auipc	ra,0xffffc
    80004ac4:	7b8080e7          	jalr	1976(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80004ac8:	0204b503          	ld	a0,32(s1)
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	8d8080e7          	jalr	-1832(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80004ad4:	0184b503          	ld	a0,24(s1)
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	8cc080e7          	jalr	-1844(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80004ae0:	0304b503          	ld	a0,48(s1)
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	8c0080e7          	jalr	-1856(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80004aec:	0284b503          	ld	a0,40(s1)
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	8b4080e7          	jalr	-1868(ra) # 800013a4 <sem_close>
}
    80004af8:	01813083          	ld	ra,24(sp)
    80004afc:	01013403          	ld	s0,16(sp)
    80004b00:	00813483          	ld	s1,8(sp)
    80004b04:	02010113          	addi	sp,sp,32
    80004b08:	00008067          	ret

0000000080004b0c <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00113c23          	sd	ra,24(sp)
    80004b14:	00813823          	sd	s0,16(sp)
    80004b18:	00913423          	sd	s1,8(sp)
    80004b1c:	01213023          	sd	s2,0(sp)
    80004b20:	02010413          	addi	s0,sp,32
    80004b24:	00050493          	mv	s1,a0
    80004b28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004b2c:	01853503          	ld	a0,24(a0)
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	8a0080e7          	jalr	-1888(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80004b38:	0304b503          	ld	a0,48(s1)
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	894080e7          	jalr	-1900(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80004b44:	0084b783          	ld	a5,8(s1)
    80004b48:	0144a703          	lw	a4,20(s1)
    80004b4c:	00271713          	slli	a4,a4,0x2
    80004b50:	00e787b3          	add	a5,a5,a4
    80004b54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004b58:	0144a783          	lw	a5,20(s1)
    80004b5c:	0017879b          	addiw	a5,a5,1
    80004b60:	0004a703          	lw	a4,0(s1)
    80004b64:	02e7e7bb          	remw	a5,a5,a4
    80004b68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004b6c:	0304b503          	ld	a0,48(s1)
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	88c080e7          	jalr	-1908(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80004b78:	0204b503          	ld	a0,32(s1)
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	880080e7          	jalr	-1920(ra) # 800013fc <sem_signal>

}
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	00013903          	ld	s2,0(sp)
    80004b94:	02010113          	addi	sp,sp,32
    80004b98:	00008067          	ret

0000000080004b9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	01213023          	sd	s2,0(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004bb8:	02053503          	ld	a0,32(a0)
    80004bbc:	ffffd097          	auipc	ra,0xffffd
    80004bc0:	814080e7          	jalr	-2028(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80004bc4:	0284b503          	ld	a0,40(s1)
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	808080e7          	jalr	-2040(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80004bd0:	0084b703          	ld	a4,8(s1)
    80004bd4:	0104a783          	lw	a5,16(s1)
    80004bd8:	00279693          	slli	a3,a5,0x2
    80004bdc:	00d70733          	add	a4,a4,a3
    80004be0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004be4:	0017879b          	addiw	a5,a5,1
    80004be8:	0004a703          	lw	a4,0(s1)
    80004bec:	02e7e7bb          	remw	a5,a5,a4
    80004bf0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004bf4:	0284b503          	ld	a0,40(s1)
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	804080e7          	jalr	-2044(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80004c00:	0184b503          	ld	a0,24(s1)
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	7f8080e7          	jalr	2040(ra) # 800013fc <sem_signal>

    return ret;
}
    80004c0c:	00090513          	mv	a0,s2
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	00013903          	ld	s2,0(sp)
    80004c20:	02010113          	addi	sp,sp,32
    80004c24:	00008067          	ret

0000000080004c28 <start>:
    80004c28:	ff010113          	addi	sp,sp,-16
    80004c2c:	00813423          	sd	s0,8(sp)
    80004c30:	01010413          	addi	s0,sp,16
    80004c34:	300027f3          	csrr	a5,mstatus
    80004c38:	ffffe737          	lui	a4,0xffffe
    80004c3c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff471f>
    80004c40:	00e7f7b3          	and	a5,a5,a4
    80004c44:	00001737          	lui	a4,0x1
    80004c48:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004c4c:	00e7e7b3          	or	a5,a5,a4
    80004c50:	30079073          	csrw	mstatus,a5
    80004c54:	00000797          	auipc	a5,0x0
    80004c58:	16078793          	addi	a5,a5,352 # 80004db4 <system_main>
    80004c5c:	34179073          	csrw	mepc,a5
    80004c60:	00000793          	li	a5,0
    80004c64:	18079073          	csrw	satp,a5
    80004c68:	000107b7          	lui	a5,0x10
    80004c6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004c70:	30279073          	csrw	medeleg,a5
    80004c74:	30379073          	csrw	mideleg,a5
    80004c78:	104027f3          	csrr	a5,sie
    80004c7c:	2227e793          	ori	a5,a5,546
    80004c80:	10479073          	csrw	sie,a5
    80004c84:	fff00793          	li	a5,-1
    80004c88:	00a7d793          	srli	a5,a5,0xa
    80004c8c:	3b079073          	csrw	pmpaddr0,a5
    80004c90:	00f00793          	li	a5,15
    80004c94:	3a079073          	csrw	pmpcfg0,a5
    80004c98:	f14027f3          	csrr	a5,mhartid
    80004c9c:	0200c737          	lui	a4,0x200c
    80004ca0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004ca4:	0007869b          	sext.w	a3,a5
    80004ca8:	00269713          	slli	a4,a3,0x2
    80004cac:	000f4637          	lui	a2,0xf4
    80004cb0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004cb4:	00d70733          	add	a4,a4,a3
    80004cb8:	0037979b          	slliw	a5,a5,0x3
    80004cbc:	020046b7          	lui	a3,0x2004
    80004cc0:	00d787b3          	add	a5,a5,a3
    80004cc4:	00c585b3          	add	a1,a1,a2
    80004cc8:	00371693          	slli	a3,a4,0x3
    80004ccc:	00004717          	auipc	a4,0x4
    80004cd0:	1b470713          	addi	a4,a4,436 # 80008e80 <timer_scratch>
    80004cd4:	00b7b023          	sd	a1,0(a5)
    80004cd8:	00d70733          	add	a4,a4,a3
    80004cdc:	00f73c23          	sd	a5,24(a4)
    80004ce0:	02c73023          	sd	a2,32(a4)
    80004ce4:	34071073          	csrw	mscratch,a4
    80004ce8:	00000797          	auipc	a5,0x0
    80004cec:	6e878793          	addi	a5,a5,1768 # 800053d0 <timervec>
    80004cf0:	30579073          	csrw	mtvec,a5
    80004cf4:	300027f3          	csrr	a5,mstatus
    80004cf8:	0087e793          	ori	a5,a5,8
    80004cfc:	30079073          	csrw	mstatus,a5
    80004d00:	304027f3          	csrr	a5,mie
    80004d04:	0807e793          	ori	a5,a5,128
    80004d08:	30479073          	csrw	mie,a5
    80004d0c:	f14027f3          	csrr	a5,mhartid
    80004d10:	0007879b          	sext.w	a5,a5
    80004d14:	00078213          	mv	tp,a5
    80004d18:	30200073          	mret
    80004d1c:	00813403          	ld	s0,8(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <timerinit>:
    80004d28:	ff010113          	addi	sp,sp,-16
    80004d2c:	00813423          	sd	s0,8(sp)
    80004d30:	01010413          	addi	s0,sp,16
    80004d34:	f14027f3          	csrr	a5,mhartid
    80004d38:	0200c737          	lui	a4,0x200c
    80004d3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004d40:	0007869b          	sext.w	a3,a5
    80004d44:	00269713          	slli	a4,a3,0x2
    80004d48:	000f4637          	lui	a2,0xf4
    80004d4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004d50:	00d70733          	add	a4,a4,a3
    80004d54:	0037979b          	slliw	a5,a5,0x3
    80004d58:	020046b7          	lui	a3,0x2004
    80004d5c:	00d787b3          	add	a5,a5,a3
    80004d60:	00c585b3          	add	a1,a1,a2
    80004d64:	00371693          	slli	a3,a4,0x3
    80004d68:	00004717          	auipc	a4,0x4
    80004d6c:	11870713          	addi	a4,a4,280 # 80008e80 <timer_scratch>
    80004d70:	00b7b023          	sd	a1,0(a5)
    80004d74:	00d70733          	add	a4,a4,a3
    80004d78:	00f73c23          	sd	a5,24(a4)
    80004d7c:	02c73023          	sd	a2,32(a4)
    80004d80:	34071073          	csrw	mscratch,a4
    80004d84:	00000797          	auipc	a5,0x0
    80004d88:	64c78793          	addi	a5,a5,1612 # 800053d0 <timervec>
    80004d8c:	30579073          	csrw	mtvec,a5
    80004d90:	300027f3          	csrr	a5,mstatus
    80004d94:	0087e793          	ori	a5,a5,8
    80004d98:	30079073          	csrw	mstatus,a5
    80004d9c:	304027f3          	csrr	a5,mie
    80004da0:	0807e793          	ori	a5,a5,128
    80004da4:	30479073          	csrw	mie,a5
    80004da8:	00813403          	ld	s0,8(sp)
    80004dac:	01010113          	addi	sp,sp,16
    80004db0:	00008067          	ret

0000000080004db4 <system_main>:
    80004db4:	fe010113          	addi	sp,sp,-32
    80004db8:	00813823          	sd	s0,16(sp)
    80004dbc:	00913423          	sd	s1,8(sp)
    80004dc0:	00113c23          	sd	ra,24(sp)
    80004dc4:	02010413          	addi	s0,sp,32
    80004dc8:	00000097          	auipc	ra,0x0
    80004dcc:	0c4080e7          	jalr	196(ra) # 80004e8c <cpuid>
    80004dd0:	00004497          	auipc	s1,0x4
    80004dd4:	ff048493          	addi	s1,s1,-16 # 80008dc0 <started>
    80004dd8:	02050263          	beqz	a0,80004dfc <system_main+0x48>
    80004ddc:	0004a783          	lw	a5,0(s1)
    80004de0:	0007879b          	sext.w	a5,a5
    80004de4:	fe078ce3          	beqz	a5,80004ddc <system_main+0x28>
    80004de8:	0ff0000f          	fence
    80004dec:	00002517          	auipc	a0,0x2
    80004df0:	5c450513          	addi	a0,a0,1476 # 800073b0 <_ZL6digits+0x58>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	a78080e7          	jalr	-1416(ra) # 8000586c <panic>
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	9cc080e7          	jalr	-1588(ra) # 800057c8 <consoleinit>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	158080e7          	jalr	344(ra) # 80005f5c <printfinit>
    80004e0c:	00002517          	auipc	a0,0x2
    80004e10:	40c50513          	addi	a0,a0,1036 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	ab4080e7          	jalr	-1356(ra) # 800058c8 <__printf>
    80004e1c:	00002517          	auipc	a0,0x2
    80004e20:	56450513          	addi	a0,a0,1380 # 80007380 <_ZL6digits+0x28>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	aa4080e7          	jalr	-1372(ra) # 800058c8 <__printf>
    80004e2c:	00002517          	auipc	a0,0x2
    80004e30:	3ec50513          	addi	a0,a0,1004 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	a94080e7          	jalr	-1388(ra) # 800058c8 <__printf>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	4ac080e7          	jalr	1196(ra) # 800062e8 <kinit>
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	148080e7          	jalr	328(ra) # 80004f8c <trapinit>
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	16c080e7          	jalr	364(ra) # 80004fb8 <trapinithart>
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	5bc080e7          	jalr	1468(ra) # 80005410 <plicinit>
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	5dc080e7          	jalr	1500(ra) # 80005438 <plicinithart>
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	078080e7          	jalr	120(ra) # 80004edc <userinit>
    80004e6c:	0ff0000f          	fence
    80004e70:	00100793          	li	a5,1
    80004e74:	00002517          	auipc	a0,0x2
    80004e78:	52450513          	addi	a0,a0,1316 # 80007398 <_ZL6digits+0x40>
    80004e7c:	00f4a023          	sw	a5,0(s1)
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	a48080e7          	jalr	-1464(ra) # 800058c8 <__printf>
    80004e88:	0000006f          	j	80004e88 <system_main+0xd4>

0000000080004e8c <cpuid>:
    80004e8c:	ff010113          	addi	sp,sp,-16
    80004e90:	00813423          	sd	s0,8(sp)
    80004e94:	01010413          	addi	s0,sp,16
    80004e98:	00020513          	mv	a0,tp
    80004e9c:	00813403          	ld	s0,8(sp)
    80004ea0:	0005051b          	sext.w	a0,a0
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret

0000000080004eac <mycpu>:
    80004eac:	ff010113          	addi	sp,sp,-16
    80004eb0:	00813423          	sd	s0,8(sp)
    80004eb4:	01010413          	addi	s0,sp,16
    80004eb8:	00020793          	mv	a5,tp
    80004ebc:	00813403          	ld	s0,8(sp)
    80004ec0:	0007879b          	sext.w	a5,a5
    80004ec4:	00779793          	slli	a5,a5,0x7
    80004ec8:	00005517          	auipc	a0,0x5
    80004ecc:	fe850513          	addi	a0,a0,-24 # 80009eb0 <cpus>
    80004ed0:	00f50533          	add	a0,a0,a5
    80004ed4:	01010113          	addi	sp,sp,16
    80004ed8:	00008067          	ret

0000000080004edc <userinit>:
    80004edc:	ff010113          	addi	sp,sp,-16
    80004ee0:	00813423          	sd	s0,8(sp)
    80004ee4:	01010413          	addi	s0,sp,16
    80004ee8:	00813403          	ld	s0,8(sp)
    80004eec:	01010113          	addi	sp,sp,16
    80004ef0:	ffffe317          	auipc	t1,0xffffe
    80004ef4:	a6430067          	jr	-1436(t1) # 80002954 <main>

0000000080004ef8 <either_copyout>:
    80004ef8:	ff010113          	addi	sp,sp,-16
    80004efc:	00813023          	sd	s0,0(sp)
    80004f00:	00113423          	sd	ra,8(sp)
    80004f04:	01010413          	addi	s0,sp,16
    80004f08:	02051663          	bnez	a0,80004f34 <either_copyout+0x3c>
    80004f0c:	00058513          	mv	a0,a1
    80004f10:	00060593          	mv	a1,a2
    80004f14:	0006861b          	sext.w	a2,a3
    80004f18:	00002097          	auipc	ra,0x2
    80004f1c:	c5c080e7          	jalr	-932(ra) # 80006b74 <__memmove>
    80004f20:	00813083          	ld	ra,8(sp)
    80004f24:	00013403          	ld	s0,0(sp)
    80004f28:	00000513          	li	a0,0
    80004f2c:	01010113          	addi	sp,sp,16
    80004f30:	00008067          	ret
    80004f34:	00002517          	auipc	a0,0x2
    80004f38:	4a450513          	addi	a0,a0,1188 # 800073d8 <_ZL6digits+0x80>
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	930080e7          	jalr	-1744(ra) # 8000586c <panic>

0000000080004f44 <either_copyin>:
    80004f44:	ff010113          	addi	sp,sp,-16
    80004f48:	00813023          	sd	s0,0(sp)
    80004f4c:	00113423          	sd	ra,8(sp)
    80004f50:	01010413          	addi	s0,sp,16
    80004f54:	02059463          	bnez	a1,80004f7c <either_copyin+0x38>
    80004f58:	00060593          	mv	a1,a2
    80004f5c:	0006861b          	sext.w	a2,a3
    80004f60:	00002097          	auipc	ra,0x2
    80004f64:	c14080e7          	jalr	-1004(ra) # 80006b74 <__memmove>
    80004f68:	00813083          	ld	ra,8(sp)
    80004f6c:	00013403          	ld	s0,0(sp)
    80004f70:	00000513          	li	a0,0
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00008067          	ret
    80004f7c:	00002517          	auipc	a0,0x2
    80004f80:	48450513          	addi	a0,a0,1156 # 80007400 <_ZL6digits+0xa8>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	8e8080e7          	jalr	-1816(ra) # 8000586c <panic>

0000000080004f8c <trapinit>:
    80004f8c:	ff010113          	addi	sp,sp,-16
    80004f90:	00813423          	sd	s0,8(sp)
    80004f94:	01010413          	addi	s0,sp,16
    80004f98:	00813403          	ld	s0,8(sp)
    80004f9c:	00002597          	auipc	a1,0x2
    80004fa0:	48c58593          	addi	a1,a1,1164 # 80007428 <_ZL6digits+0xd0>
    80004fa4:	00005517          	auipc	a0,0x5
    80004fa8:	f8c50513          	addi	a0,a0,-116 # 80009f30 <tickslock>
    80004fac:	01010113          	addi	sp,sp,16
    80004fb0:	00001317          	auipc	t1,0x1
    80004fb4:	5c830067          	jr	1480(t1) # 80006578 <initlock>

0000000080004fb8 <trapinithart>:
    80004fb8:	ff010113          	addi	sp,sp,-16
    80004fbc:	00813423          	sd	s0,8(sp)
    80004fc0:	01010413          	addi	s0,sp,16
    80004fc4:	00000797          	auipc	a5,0x0
    80004fc8:	2fc78793          	addi	a5,a5,764 # 800052c0 <kernelvec>
    80004fcc:	10579073          	csrw	stvec,a5
    80004fd0:	00813403          	ld	s0,8(sp)
    80004fd4:	01010113          	addi	sp,sp,16
    80004fd8:	00008067          	ret

0000000080004fdc <usertrap>:
    80004fdc:	ff010113          	addi	sp,sp,-16
    80004fe0:	00813423          	sd	s0,8(sp)
    80004fe4:	01010413          	addi	s0,sp,16
    80004fe8:	00813403          	ld	s0,8(sp)
    80004fec:	01010113          	addi	sp,sp,16
    80004ff0:	00008067          	ret

0000000080004ff4 <usertrapret>:
    80004ff4:	ff010113          	addi	sp,sp,-16
    80004ff8:	00813423          	sd	s0,8(sp)
    80004ffc:	01010413          	addi	s0,sp,16
    80005000:	00813403          	ld	s0,8(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret

000000008000500c <kerneltrap>:
    8000500c:	fe010113          	addi	sp,sp,-32
    80005010:	00813823          	sd	s0,16(sp)
    80005014:	00113c23          	sd	ra,24(sp)
    80005018:	00913423          	sd	s1,8(sp)
    8000501c:	02010413          	addi	s0,sp,32
    80005020:	142025f3          	csrr	a1,scause
    80005024:	100027f3          	csrr	a5,sstatus
    80005028:	0027f793          	andi	a5,a5,2
    8000502c:	10079c63          	bnez	a5,80005144 <kerneltrap+0x138>
    80005030:	142027f3          	csrr	a5,scause
    80005034:	0207ce63          	bltz	a5,80005070 <kerneltrap+0x64>
    80005038:	00002517          	auipc	a0,0x2
    8000503c:	43850513          	addi	a0,a0,1080 # 80007470 <_ZL6digits+0x118>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	888080e7          	jalr	-1912(ra) # 800058c8 <__printf>
    80005048:	141025f3          	csrr	a1,sepc
    8000504c:	14302673          	csrr	a2,stval
    80005050:	00002517          	auipc	a0,0x2
    80005054:	43050513          	addi	a0,a0,1072 # 80007480 <_ZL6digits+0x128>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	870080e7          	jalr	-1936(ra) # 800058c8 <__printf>
    80005060:	00002517          	auipc	a0,0x2
    80005064:	43850513          	addi	a0,a0,1080 # 80007498 <_ZL6digits+0x140>
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	804080e7          	jalr	-2044(ra) # 8000586c <panic>
    80005070:	0ff7f713          	andi	a4,a5,255
    80005074:	00900693          	li	a3,9
    80005078:	04d70063          	beq	a4,a3,800050b8 <kerneltrap+0xac>
    8000507c:	fff00713          	li	a4,-1
    80005080:	03f71713          	slli	a4,a4,0x3f
    80005084:	00170713          	addi	a4,a4,1
    80005088:	fae798e3          	bne	a5,a4,80005038 <kerneltrap+0x2c>
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	e00080e7          	jalr	-512(ra) # 80004e8c <cpuid>
    80005094:	06050663          	beqz	a0,80005100 <kerneltrap+0xf4>
    80005098:	144027f3          	csrr	a5,sip
    8000509c:	ffd7f793          	andi	a5,a5,-3
    800050a0:	14479073          	csrw	sip,a5
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00813483          	ld	s1,8(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret
    800050b8:	00000097          	auipc	ra,0x0
    800050bc:	3cc080e7          	jalr	972(ra) # 80005484 <plic_claim>
    800050c0:	00a00793          	li	a5,10
    800050c4:	00050493          	mv	s1,a0
    800050c8:	06f50863          	beq	a0,a5,80005138 <kerneltrap+0x12c>
    800050cc:	fc050ce3          	beqz	a0,800050a4 <kerneltrap+0x98>
    800050d0:	00050593          	mv	a1,a0
    800050d4:	00002517          	auipc	a0,0x2
    800050d8:	37c50513          	addi	a0,a0,892 # 80007450 <_ZL6digits+0xf8>
    800050dc:	00000097          	auipc	ra,0x0
    800050e0:	7ec080e7          	jalr	2028(ra) # 800058c8 <__printf>
    800050e4:	01013403          	ld	s0,16(sp)
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	00048513          	mv	a0,s1
    800050f0:	00813483          	ld	s1,8(sp)
    800050f4:	02010113          	addi	sp,sp,32
    800050f8:	00000317          	auipc	t1,0x0
    800050fc:	3c430067          	jr	964(t1) # 800054bc <plic_complete>
    80005100:	00005517          	auipc	a0,0x5
    80005104:	e3050513          	addi	a0,a0,-464 # 80009f30 <tickslock>
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	494080e7          	jalr	1172(ra) # 8000659c <acquire>
    80005110:	00004717          	auipc	a4,0x4
    80005114:	cb470713          	addi	a4,a4,-844 # 80008dc4 <ticks>
    80005118:	00072783          	lw	a5,0(a4)
    8000511c:	00005517          	auipc	a0,0x5
    80005120:	e1450513          	addi	a0,a0,-492 # 80009f30 <tickslock>
    80005124:	0017879b          	addiw	a5,a5,1
    80005128:	00f72023          	sw	a5,0(a4)
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	53c080e7          	jalr	1340(ra) # 80006668 <release>
    80005134:	f65ff06f          	j	80005098 <kerneltrap+0x8c>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	098080e7          	jalr	152(ra) # 800061d0 <uartintr>
    80005140:	fa5ff06f          	j	800050e4 <kerneltrap+0xd8>
    80005144:	00002517          	auipc	a0,0x2
    80005148:	2ec50513          	addi	a0,a0,748 # 80007430 <_ZL6digits+0xd8>
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	720080e7          	jalr	1824(ra) # 8000586c <panic>

0000000080005154 <clockintr>:
    80005154:	fe010113          	addi	sp,sp,-32
    80005158:	00813823          	sd	s0,16(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	00113c23          	sd	ra,24(sp)
    80005164:	02010413          	addi	s0,sp,32
    80005168:	00005497          	auipc	s1,0x5
    8000516c:	dc848493          	addi	s1,s1,-568 # 80009f30 <tickslock>
    80005170:	00048513          	mv	a0,s1
    80005174:	00001097          	auipc	ra,0x1
    80005178:	428080e7          	jalr	1064(ra) # 8000659c <acquire>
    8000517c:	00004717          	auipc	a4,0x4
    80005180:	c4870713          	addi	a4,a4,-952 # 80008dc4 <ticks>
    80005184:	00072783          	lw	a5,0(a4)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	01813083          	ld	ra,24(sp)
    80005190:	00048513          	mv	a0,s1
    80005194:	0017879b          	addiw	a5,a5,1
    80005198:	00813483          	ld	s1,8(sp)
    8000519c:	00f72023          	sw	a5,0(a4)
    800051a0:	02010113          	addi	sp,sp,32
    800051a4:	00001317          	auipc	t1,0x1
    800051a8:	4c430067          	jr	1220(t1) # 80006668 <release>

00000000800051ac <devintr>:
    800051ac:	142027f3          	csrr	a5,scause
    800051b0:	00000513          	li	a0,0
    800051b4:	0007c463          	bltz	a5,800051bc <devintr+0x10>
    800051b8:	00008067          	ret
    800051bc:	fe010113          	addi	sp,sp,-32
    800051c0:	00813823          	sd	s0,16(sp)
    800051c4:	00113c23          	sd	ra,24(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	02010413          	addi	s0,sp,32
    800051d0:	0ff7f713          	andi	a4,a5,255
    800051d4:	00900693          	li	a3,9
    800051d8:	04d70c63          	beq	a4,a3,80005230 <devintr+0x84>
    800051dc:	fff00713          	li	a4,-1
    800051e0:	03f71713          	slli	a4,a4,0x3f
    800051e4:	00170713          	addi	a4,a4,1
    800051e8:	00e78c63          	beq	a5,a4,80005200 <devintr+0x54>
    800051ec:	01813083          	ld	ra,24(sp)
    800051f0:	01013403          	ld	s0,16(sp)
    800051f4:	00813483          	ld	s1,8(sp)
    800051f8:	02010113          	addi	sp,sp,32
    800051fc:	00008067          	ret
    80005200:	00000097          	auipc	ra,0x0
    80005204:	c8c080e7          	jalr	-884(ra) # 80004e8c <cpuid>
    80005208:	06050663          	beqz	a0,80005274 <devintr+0xc8>
    8000520c:	144027f3          	csrr	a5,sip
    80005210:	ffd7f793          	andi	a5,a5,-3
    80005214:	14479073          	csrw	sip,a5
    80005218:	01813083          	ld	ra,24(sp)
    8000521c:	01013403          	ld	s0,16(sp)
    80005220:	00813483          	ld	s1,8(sp)
    80005224:	00200513          	li	a0,2
    80005228:	02010113          	addi	sp,sp,32
    8000522c:	00008067          	ret
    80005230:	00000097          	auipc	ra,0x0
    80005234:	254080e7          	jalr	596(ra) # 80005484 <plic_claim>
    80005238:	00a00793          	li	a5,10
    8000523c:	00050493          	mv	s1,a0
    80005240:	06f50663          	beq	a0,a5,800052ac <devintr+0x100>
    80005244:	00100513          	li	a0,1
    80005248:	fa0482e3          	beqz	s1,800051ec <devintr+0x40>
    8000524c:	00048593          	mv	a1,s1
    80005250:	00002517          	auipc	a0,0x2
    80005254:	20050513          	addi	a0,a0,512 # 80007450 <_ZL6digits+0xf8>
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	670080e7          	jalr	1648(ra) # 800058c8 <__printf>
    80005260:	00048513          	mv	a0,s1
    80005264:	00000097          	auipc	ra,0x0
    80005268:	258080e7          	jalr	600(ra) # 800054bc <plic_complete>
    8000526c:	00100513          	li	a0,1
    80005270:	f7dff06f          	j	800051ec <devintr+0x40>
    80005274:	00005517          	auipc	a0,0x5
    80005278:	cbc50513          	addi	a0,a0,-836 # 80009f30 <tickslock>
    8000527c:	00001097          	auipc	ra,0x1
    80005280:	320080e7          	jalr	800(ra) # 8000659c <acquire>
    80005284:	00004717          	auipc	a4,0x4
    80005288:	b4070713          	addi	a4,a4,-1216 # 80008dc4 <ticks>
    8000528c:	00072783          	lw	a5,0(a4)
    80005290:	00005517          	auipc	a0,0x5
    80005294:	ca050513          	addi	a0,a0,-864 # 80009f30 <tickslock>
    80005298:	0017879b          	addiw	a5,a5,1
    8000529c:	00f72023          	sw	a5,0(a4)
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	3c8080e7          	jalr	968(ra) # 80006668 <release>
    800052a8:	f65ff06f          	j	8000520c <devintr+0x60>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	f24080e7          	jalr	-220(ra) # 800061d0 <uartintr>
    800052b4:	fadff06f          	j	80005260 <devintr+0xb4>
	...

00000000800052c0 <kernelvec>:
    800052c0:	f0010113          	addi	sp,sp,-256
    800052c4:	00113023          	sd	ra,0(sp)
    800052c8:	00213423          	sd	sp,8(sp)
    800052cc:	00313823          	sd	gp,16(sp)
    800052d0:	00413c23          	sd	tp,24(sp)
    800052d4:	02513023          	sd	t0,32(sp)
    800052d8:	02613423          	sd	t1,40(sp)
    800052dc:	02713823          	sd	t2,48(sp)
    800052e0:	02813c23          	sd	s0,56(sp)
    800052e4:	04913023          	sd	s1,64(sp)
    800052e8:	04a13423          	sd	a0,72(sp)
    800052ec:	04b13823          	sd	a1,80(sp)
    800052f0:	04c13c23          	sd	a2,88(sp)
    800052f4:	06d13023          	sd	a3,96(sp)
    800052f8:	06e13423          	sd	a4,104(sp)
    800052fc:	06f13823          	sd	a5,112(sp)
    80005300:	07013c23          	sd	a6,120(sp)
    80005304:	09113023          	sd	a7,128(sp)
    80005308:	09213423          	sd	s2,136(sp)
    8000530c:	09313823          	sd	s3,144(sp)
    80005310:	09413c23          	sd	s4,152(sp)
    80005314:	0b513023          	sd	s5,160(sp)
    80005318:	0b613423          	sd	s6,168(sp)
    8000531c:	0b713823          	sd	s7,176(sp)
    80005320:	0b813c23          	sd	s8,184(sp)
    80005324:	0d913023          	sd	s9,192(sp)
    80005328:	0da13423          	sd	s10,200(sp)
    8000532c:	0db13823          	sd	s11,208(sp)
    80005330:	0dc13c23          	sd	t3,216(sp)
    80005334:	0fd13023          	sd	t4,224(sp)
    80005338:	0fe13423          	sd	t5,232(sp)
    8000533c:	0ff13823          	sd	t6,240(sp)
    80005340:	ccdff0ef          	jal	ra,8000500c <kerneltrap>
    80005344:	00013083          	ld	ra,0(sp)
    80005348:	00813103          	ld	sp,8(sp)
    8000534c:	01013183          	ld	gp,16(sp)
    80005350:	02013283          	ld	t0,32(sp)
    80005354:	02813303          	ld	t1,40(sp)
    80005358:	03013383          	ld	t2,48(sp)
    8000535c:	03813403          	ld	s0,56(sp)
    80005360:	04013483          	ld	s1,64(sp)
    80005364:	04813503          	ld	a0,72(sp)
    80005368:	05013583          	ld	a1,80(sp)
    8000536c:	05813603          	ld	a2,88(sp)
    80005370:	06013683          	ld	a3,96(sp)
    80005374:	06813703          	ld	a4,104(sp)
    80005378:	07013783          	ld	a5,112(sp)
    8000537c:	07813803          	ld	a6,120(sp)
    80005380:	08013883          	ld	a7,128(sp)
    80005384:	08813903          	ld	s2,136(sp)
    80005388:	09013983          	ld	s3,144(sp)
    8000538c:	09813a03          	ld	s4,152(sp)
    80005390:	0a013a83          	ld	s5,160(sp)
    80005394:	0a813b03          	ld	s6,168(sp)
    80005398:	0b013b83          	ld	s7,176(sp)
    8000539c:	0b813c03          	ld	s8,184(sp)
    800053a0:	0c013c83          	ld	s9,192(sp)
    800053a4:	0c813d03          	ld	s10,200(sp)
    800053a8:	0d013d83          	ld	s11,208(sp)
    800053ac:	0d813e03          	ld	t3,216(sp)
    800053b0:	0e013e83          	ld	t4,224(sp)
    800053b4:	0e813f03          	ld	t5,232(sp)
    800053b8:	0f013f83          	ld	t6,240(sp)
    800053bc:	10010113          	addi	sp,sp,256
    800053c0:	10200073          	sret
    800053c4:	00000013          	nop
    800053c8:	00000013          	nop
    800053cc:	00000013          	nop

00000000800053d0 <timervec>:
    800053d0:	34051573          	csrrw	a0,mscratch,a0
    800053d4:	00b53023          	sd	a1,0(a0)
    800053d8:	00c53423          	sd	a2,8(a0)
    800053dc:	00d53823          	sd	a3,16(a0)
    800053e0:	01853583          	ld	a1,24(a0)
    800053e4:	02053603          	ld	a2,32(a0)
    800053e8:	0005b683          	ld	a3,0(a1)
    800053ec:	00c686b3          	add	a3,a3,a2
    800053f0:	00d5b023          	sd	a3,0(a1)
    800053f4:	00200593          	li	a1,2
    800053f8:	14459073          	csrw	sip,a1
    800053fc:	01053683          	ld	a3,16(a0)
    80005400:	00853603          	ld	a2,8(a0)
    80005404:	00053583          	ld	a1,0(a0)
    80005408:	34051573          	csrrw	a0,mscratch,a0
    8000540c:	30200073          	mret

0000000080005410 <plicinit>:
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00813423          	sd	s0,8(sp)
    80005418:	01010413          	addi	s0,sp,16
    8000541c:	00813403          	ld	s0,8(sp)
    80005420:	0c0007b7          	lui	a5,0xc000
    80005424:	00100713          	li	a4,1
    80005428:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000542c:	00e7a223          	sw	a4,4(a5)
    80005430:	01010113          	addi	sp,sp,16
    80005434:	00008067          	ret

0000000080005438 <plicinithart>:
    80005438:	ff010113          	addi	sp,sp,-16
    8000543c:	00813023          	sd	s0,0(sp)
    80005440:	00113423          	sd	ra,8(sp)
    80005444:	01010413          	addi	s0,sp,16
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	a44080e7          	jalr	-1468(ra) # 80004e8c <cpuid>
    80005450:	0085171b          	slliw	a4,a0,0x8
    80005454:	0c0027b7          	lui	a5,0xc002
    80005458:	00e787b3          	add	a5,a5,a4
    8000545c:	40200713          	li	a4,1026
    80005460:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005464:	00813083          	ld	ra,8(sp)
    80005468:	00013403          	ld	s0,0(sp)
    8000546c:	00d5151b          	slliw	a0,a0,0xd
    80005470:	0c2017b7          	lui	a5,0xc201
    80005474:	00a78533          	add	a0,a5,a0
    80005478:	00052023          	sw	zero,0(a0)
    8000547c:	01010113          	addi	sp,sp,16
    80005480:	00008067          	ret

0000000080005484 <plic_claim>:
    80005484:	ff010113          	addi	sp,sp,-16
    80005488:	00813023          	sd	s0,0(sp)
    8000548c:	00113423          	sd	ra,8(sp)
    80005490:	01010413          	addi	s0,sp,16
    80005494:	00000097          	auipc	ra,0x0
    80005498:	9f8080e7          	jalr	-1544(ra) # 80004e8c <cpuid>
    8000549c:	00813083          	ld	ra,8(sp)
    800054a0:	00013403          	ld	s0,0(sp)
    800054a4:	00d5151b          	slliw	a0,a0,0xd
    800054a8:	0c2017b7          	lui	a5,0xc201
    800054ac:	00a78533          	add	a0,a5,a0
    800054b0:	00452503          	lw	a0,4(a0)
    800054b4:	01010113          	addi	sp,sp,16
    800054b8:	00008067          	ret

00000000800054bc <plic_complete>:
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00913423          	sd	s1,8(sp)
    800054c8:	00113c23          	sd	ra,24(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	00050493          	mv	s1,a0
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	9b8080e7          	jalr	-1608(ra) # 80004e8c <cpuid>
    800054dc:	01813083          	ld	ra,24(sp)
    800054e0:	01013403          	ld	s0,16(sp)
    800054e4:	00d5179b          	slliw	a5,a0,0xd
    800054e8:	0c201737          	lui	a4,0xc201
    800054ec:	00f707b3          	add	a5,a4,a5
    800054f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret

0000000080005500 <consolewrite>:
    80005500:	fb010113          	addi	sp,sp,-80
    80005504:	04813023          	sd	s0,64(sp)
    80005508:	04113423          	sd	ra,72(sp)
    8000550c:	02913c23          	sd	s1,56(sp)
    80005510:	03213823          	sd	s2,48(sp)
    80005514:	03313423          	sd	s3,40(sp)
    80005518:	03413023          	sd	s4,32(sp)
    8000551c:	01513c23          	sd	s5,24(sp)
    80005520:	05010413          	addi	s0,sp,80
    80005524:	06c05c63          	blez	a2,8000559c <consolewrite+0x9c>
    80005528:	00060993          	mv	s3,a2
    8000552c:	00050a13          	mv	s4,a0
    80005530:	00058493          	mv	s1,a1
    80005534:	00000913          	li	s2,0
    80005538:	fff00a93          	li	s5,-1
    8000553c:	01c0006f          	j	80005558 <consolewrite+0x58>
    80005540:	fbf44503          	lbu	a0,-65(s0)
    80005544:	0019091b          	addiw	s2,s2,1
    80005548:	00148493          	addi	s1,s1,1
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	a9c080e7          	jalr	-1380(ra) # 80005fe8 <uartputc>
    80005554:	03298063          	beq	s3,s2,80005574 <consolewrite+0x74>
    80005558:	00048613          	mv	a2,s1
    8000555c:	00100693          	li	a3,1
    80005560:	000a0593          	mv	a1,s4
    80005564:	fbf40513          	addi	a0,s0,-65
    80005568:	00000097          	auipc	ra,0x0
    8000556c:	9dc080e7          	jalr	-1572(ra) # 80004f44 <either_copyin>
    80005570:	fd5518e3          	bne	a0,s5,80005540 <consolewrite+0x40>
    80005574:	04813083          	ld	ra,72(sp)
    80005578:	04013403          	ld	s0,64(sp)
    8000557c:	03813483          	ld	s1,56(sp)
    80005580:	02813983          	ld	s3,40(sp)
    80005584:	02013a03          	ld	s4,32(sp)
    80005588:	01813a83          	ld	s5,24(sp)
    8000558c:	00090513          	mv	a0,s2
    80005590:	03013903          	ld	s2,48(sp)
    80005594:	05010113          	addi	sp,sp,80
    80005598:	00008067          	ret
    8000559c:	00000913          	li	s2,0
    800055a0:	fd5ff06f          	j	80005574 <consolewrite+0x74>

00000000800055a4 <consoleread>:
    800055a4:	f9010113          	addi	sp,sp,-112
    800055a8:	06813023          	sd	s0,96(sp)
    800055ac:	04913c23          	sd	s1,88(sp)
    800055b0:	05213823          	sd	s2,80(sp)
    800055b4:	05313423          	sd	s3,72(sp)
    800055b8:	05413023          	sd	s4,64(sp)
    800055bc:	03513c23          	sd	s5,56(sp)
    800055c0:	03613823          	sd	s6,48(sp)
    800055c4:	03713423          	sd	s7,40(sp)
    800055c8:	03813023          	sd	s8,32(sp)
    800055cc:	06113423          	sd	ra,104(sp)
    800055d0:	01913c23          	sd	s9,24(sp)
    800055d4:	07010413          	addi	s0,sp,112
    800055d8:	00060b93          	mv	s7,a2
    800055dc:	00050913          	mv	s2,a0
    800055e0:	00058c13          	mv	s8,a1
    800055e4:	00060b1b          	sext.w	s6,a2
    800055e8:	00005497          	auipc	s1,0x5
    800055ec:	97048493          	addi	s1,s1,-1680 # 80009f58 <cons>
    800055f0:	00400993          	li	s3,4
    800055f4:	fff00a13          	li	s4,-1
    800055f8:	00a00a93          	li	s5,10
    800055fc:	05705e63          	blez	s7,80005658 <consoleread+0xb4>
    80005600:	09c4a703          	lw	a4,156(s1)
    80005604:	0984a783          	lw	a5,152(s1)
    80005608:	0007071b          	sext.w	a4,a4
    8000560c:	08e78463          	beq	a5,a4,80005694 <consoleread+0xf0>
    80005610:	07f7f713          	andi	a4,a5,127
    80005614:	00e48733          	add	a4,s1,a4
    80005618:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000561c:	0017869b          	addiw	a3,a5,1
    80005620:	08d4ac23          	sw	a3,152(s1)
    80005624:	00070c9b          	sext.w	s9,a4
    80005628:	0b370663          	beq	a4,s3,800056d4 <consoleread+0x130>
    8000562c:	00100693          	li	a3,1
    80005630:	f9f40613          	addi	a2,s0,-97
    80005634:	000c0593          	mv	a1,s8
    80005638:	00090513          	mv	a0,s2
    8000563c:	f8e40fa3          	sb	a4,-97(s0)
    80005640:	00000097          	auipc	ra,0x0
    80005644:	8b8080e7          	jalr	-1864(ra) # 80004ef8 <either_copyout>
    80005648:	01450863          	beq	a0,s4,80005658 <consoleread+0xb4>
    8000564c:	001c0c13          	addi	s8,s8,1
    80005650:	fffb8b9b          	addiw	s7,s7,-1
    80005654:	fb5c94e3          	bne	s9,s5,800055fc <consoleread+0x58>
    80005658:	000b851b          	sext.w	a0,s7
    8000565c:	06813083          	ld	ra,104(sp)
    80005660:	06013403          	ld	s0,96(sp)
    80005664:	05813483          	ld	s1,88(sp)
    80005668:	05013903          	ld	s2,80(sp)
    8000566c:	04813983          	ld	s3,72(sp)
    80005670:	04013a03          	ld	s4,64(sp)
    80005674:	03813a83          	ld	s5,56(sp)
    80005678:	02813b83          	ld	s7,40(sp)
    8000567c:	02013c03          	ld	s8,32(sp)
    80005680:	01813c83          	ld	s9,24(sp)
    80005684:	40ab053b          	subw	a0,s6,a0
    80005688:	03013b03          	ld	s6,48(sp)
    8000568c:	07010113          	addi	sp,sp,112
    80005690:	00008067          	ret
    80005694:	00001097          	auipc	ra,0x1
    80005698:	1d8080e7          	jalr	472(ra) # 8000686c <push_on>
    8000569c:	0984a703          	lw	a4,152(s1)
    800056a0:	09c4a783          	lw	a5,156(s1)
    800056a4:	0007879b          	sext.w	a5,a5
    800056a8:	fef70ce3          	beq	a4,a5,800056a0 <consoleread+0xfc>
    800056ac:	00001097          	auipc	ra,0x1
    800056b0:	234080e7          	jalr	564(ra) # 800068e0 <pop_on>
    800056b4:	0984a783          	lw	a5,152(s1)
    800056b8:	07f7f713          	andi	a4,a5,127
    800056bc:	00e48733          	add	a4,s1,a4
    800056c0:	01874703          	lbu	a4,24(a4)
    800056c4:	0017869b          	addiw	a3,a5,1
    800056c8:	08d4ac23          	sw	a3,152(s1)
    800056cc:	00070c9b          	sext.w	s9,a4
    800056d0:	f5371ee3          	bne	a4,s3,8000562c <consoleread+0x88>
    800056d4:	000b851b          	sext.w	a0,s7
    800056d8:	f96bf2e3          	bgeu	s7,s6,8000565c <consoleread+0xb8>
    800056dc:	08f4ac23          	sw	a5,152(s1)
    800056e0:	f7dff06f          	j	8000565c <consoleread+0xb8>

00000000800056e4 <consputc>:
    800056e4:	10000793          	li	a5,256
    800056e8:	00f50663          	beq	a0,a5,800056f4 <consputc+0x10>
    800056ec:	00001317          	auipc	t1,0x1
    800056f0:	9f430067          	jr	-1548(t1) # 800060e0 <uartputc_sync>
    800056f4:	ff010113          	addi	sp,sp,-16
    800056f8:	00113423          	sd	ra,8(sp)
    800056fc:	00813023          	sd	s0,0(sp)
    80005700:	01010413          	addi	s0,sp,16
    80005704:	00800513          	li	a0,8
    80005708:	00001097          	auipc	ra,0x1
    8000570c:	9d8080e7          	jalr	-1576(ra) # 800060e0 <uartputc_sync>
    80005710:	02000513          	li	a0,32
    80005714:	00001097          	auipc	ra,0x1
    80005718:	9cc080e7          	jalr	-1588(ra) # 800060e0 <uartputc_sync>
    8000571c:	00013403          	ld	s0,0(sp)
    80005720:	00813083          	ld	ra,8(sp)
    80005724:	00800513          	li	a0,8
    80005728:	01010113          	addi	sp,sp,16
    8000572c:	00001317          	auipc	t1,0x1
    80005730:	9b430067          	jr	-1612(t1) # 800060e0 <uartputc_sync>

0000000080005734 <consoleintr>:
    80005734:	fe010113          	addi	sp,sp,-32
    80005738:	00813823          	sd	s0,16(sp)
    8000573c:	00913423          	sd	s1,8(sp)
    80005740:	01213023          	sd	s2,0(sp)
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	02010413          	addi	s0,sp,32
    8000574c:	00005917          	auipc	s2,0x5
    80005750:	80c90913          	addi	s2,s2,-2036 # 80009f58 <cons>
    80005754:	00050493          	mv	s1,a0
    80005758:	00090513          	mv	a0,s2
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	e40080e7          	jalr	-448(ra) # 8000659c <acquire>
    80005764:	02048c63          	beqz	s1,8000579c <consoleintr+0x68>
    80005768:	0a092783          	lw	a5,160(s2)
    8000576c:	09892703          	lw	a4,152(s2)
    80005770:	07f00693          	li	a3,127
    80005774:	40e7873b          	subw	a4,a5,a4
    80005778:	02e6e263          	bltu	a3,a4,8000579c <consoleintr+0x68>
    8000577c:	00d00713          	li	a4,13
    80005780:	04e48063          	beq	s1,a4,800057c0 <consoleintr+0x8c>
    80005784:	07f7f713          	andi	a4,a5,127
    80005788:	00e90733          	add	a4,s2,a4
    8000578c:	0017879b          	addiw	a5,a5,1
    80005790:	0af92023          	sw	a5,160(s2)
    80005794:	00970c23          	sb	s1,24(a4)
    80005798:	08f92e23          	sw	a5,156(s2)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	00013903          	ld	s2,0(sp)
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	7ac50513          	addi	a0,a0,1964 # 80009f58 <cons>
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00001317          	auipc	t1,0x1
    800057bc:	eb030067          	jr	-336(t1) # 80006668 <release>
    800057c0:	00a00493          	li	s1,10
    800057c4:	fc1ff06f          	j	80005784 <consoleintr+0x50>

00000000800057c8 <consoleinit>:
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	02010413          	addi	s0,sp,32
    800057dc:	00004497          	auipc	s1,0x4
    800057e0:	77c48493          	addi	s1,s1,1916 # 80009f58 <cons>
    800057e4:	00048513          	mv	a0,s1
    800057e8:	00002597          	auipc	a1,0x2
    800057ec:	cc058593          	addi	a1,a1,-832 # 800074a8 <_ZL6digits+0x150>
    800057f0:	00001097          	auipc	ra,0x1
    800057f4:	d88080e7          	jalr	-632(ra) # 80006578 <initlock>
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	7ac080e7          	jalr	1964(ra) # 80005fa4 <uartinit>
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00000797          	auipc	a5,0x0
    8000580c:	d9c78793          	addi	a5,a5,-612 # 800055a4 <consoleread>
    80005810:	0af4bc23          	sd	a5,184(s1)
    80005814:	00000797          	auipc	a5,0x0
    80005818:	cec78793          	addi	a5,a5,-788 # 80005500 <consolewrite>
    8000581c:	0cf4b023          	sd	a5,192(s1)
    80005820:	00813483          	ld	s1,8(sp)
    80005824:	02010113          	addi	sp,sp,32
    80005828:	00008067          	ret

000000008000582c <console_read>:
    8000582c:	ff010113          	addi	sp,sp,-16
    80005830:	00813423          	sd	s0,8(sp)
    80005834:	01010413          	addi	s0,sp,16
    80005838:	00813403          	ld	s0,8(sp)
    8000583c:	00004317          	auipc	t1,0x4
    80005840:	7d433303          	ld	t1,2004(t1) # 8000a010 <devsw+0x10>
    80005844:	01010113          	addi	sp,sp,16
    80005848:	00030067          	jr	t1

000000008000584c <console_write>:
    8000584c:	ff010113          	addi	sp,sp,-16
    80005850:	00813423          	sd	s0,8(sp)
    80005854:	01010413          	addi	s0,sp,16
    80005858:	00813403          	ld	s0,8(sp)
    8000585c:	00004317          	auipc	t1,0x4
    80005860:	7bc33303          	ld	t1,1980(t1) # 8000a018 <devsw+0x18>
    80005864:	01010113          	addi	sp,sp,16
    80005868:	00030067          	jr	t1

000000008000586c <panic>:
    8000586c:	fe010113          	addi	sp,sp,-32
    80005870:	00113c23          	sd	ra,24(sp)
    80005874:	00813823          	sd	s0,16(sp)
    80005878:	00913423          	sd	s1,8(sp)
    8000587c:	02010413          	addi	s0,sp,32
    80005880:	00050493          	mv	s1,a0
    80005884:	00002517          	auipc	a0,0x2
    80005888:	c2c50513          	addi	a0,a0,-980 # 800074b0 <_ZL6digits+0x158>
    8000588c:	00005797          	auipc	a5,0x5
    80005890:	8207a623          	sw	zero,-2004(a5) # 8000a0b8 <pr+0x18>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	034080e7          	jalr	52(ra) # 800058c8 <__printf>
    8000589c:	00048513          	mv	a0,s1
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	028080e7          	jalr	40(ra) # 800058c8 <__printf>
    800058a8:	00002517          	auipc	a0,0x2
    800058ac:	97050513          	addi	a0,a0,-1680 # 80007218 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	018080e7          	jalr	24(ra) # 800058c8 <__printf>
    800058b8:	00100793          	li	a5,1
    800058bc:	00003717          	auipc	a4,0x3
    800058c0:	50f72623          	sw	a5,1292(a4) # 80008dc8 <panicked>
    800058c4:	0000006f          	j	800058c4 <panic+0x58>

00000000800058c8 <__printf>:
    800058c8:	f3010113          	addi	sp,sp,-208
    800058cc:	08813023          	sd	s0,128(sp)
    800058d0:	07313423          	sd	s3,104(sp)
    800058d4:	09010413          	addi	s0,sp,144
    800058d8:	05813023          	sd	s8,64(sp)
    800058dc:	08113423          	sd	ra,136(sp)
    800058e0:	06913c23          	sd	s1,120(sp)
    800058e4:	07213823          	sd	s2,112(sp)
    800058e8:	07413023          	sd	s4,96(sp)
    800058ec:	05513c23          	sd	s5,88(sp)
    800058f0:	05613823          	sd	s6,80(sp)
    800058f4:	05713423          	sd	s7,72(sp)
    800058f8:	03913c23          	sd	s9,56(sp)
    800058fc:	03a13823          	sd	s10,48(sp)
    80005900:	03b13423          	sd	s11,40(sp)
    80005904:	00004317          	auipc	t1,0x4
    80005908:	79c30313          	addi	t1,t1,1948 # 8000a0a0 <pr>
    8000590c:	01832c03          	lw	s8,24(t1)
    80005910:	00b43423          	sd	a1,8(s0)
    80005914:	00c43823          	sd	a2,16(s0)
    80005918:	00d43c23          	sd	a3,24(s0)
    8000591c:	02e43023          	sd	a4,32(s0)
    80005920:	02f43423          	sd	a5,40(s0)
    80005924:	03043823          	sd	a6,48(s0)
    80005928:	03143c23          	sd	a7,56(s0)
    8000592c:	00050993          	mv	s3,a0
    80005930:	4a0c1663          	bnez	s8,80005ddc <__printf+0x514>
    80005934:	60098c63          	beqz	s3,80005f4c <__printf+0x684>
    80005938:	0009c503          	lbu	a0,0(s3)
    8000593c:	00840793          	addi	a5,s0,8
    80005940:	f6f43c23          	sd	a5,-136(s0)
    80005944:	00000493          	li	s1,0
    80005948:	22050063          	beqz	a0,80005b68 <__printf+0x2a0>
    8000594c:	00002a37          	lui	s4,0x2
    80005950:	00018ab7          	lui	s5,0x18
    80005954:	000f4b37          	lui	s6,0xf4
    80005958:	00989bb7          	lui	s7,0x989
    8000595c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005960:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005964:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005968:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000596c:	00148c9b          	addiw	s9,s1,1
    80005970:	02500793          	li	a5,37
    80005974:	01998933          	add	s2,s3,s9
    80005978:	38f51263          	bne	a0,a5,80005cfc <__printf+0x434>
    8000597c:	00094783          	lbu	a5,0(s2)
    80005980:	00078c9b          	sext.w	s9,a5
    80005984:	1e078263          	beqz	a5,80005b68 <__printf+0x2a0>
    80005988:	0024849b          	addiw	s1,s1,2
    8000598c:	07000713          	li	a4,112
    80005990:	00998933          	add	s2,s3,s1
    80005994:	38e78a63          	beq	a5,a4,80005d28 <__printf+0x460>
    80005998:	20f76863          	bltu	a4,a5,80005ba8 <__printf+0x2e0>
    8000599c:	42a78863          	beq	a5,a0,80005dcc <__printf+0x504>
    800059a0:	06400713          	li	a4,100
    800059a4:	40e79663          	bne	a5,a4,80005db0 <__printf+0x4e8>
    800059a8:	f7843783          	ld	a5,-136(s0)
    800059ac:	0007a603          	lw	a2,0(a5)
    800059b0:	00878793          	addi	a5,a5,8
    800059b4:	f6f43c23          	sd	a5,-136(s0)
    800059b8:	42064a63          	bltz	a2,80005dec <__printf+0x524>
    800059bc:	00a00713          	li	a4,10
    800059c0:	02e677bb          	remuw	a5,a2,a4
    800059c4:	00002d97          	auipc	s11,0x2
    800059c8:	b14d8d93          	addi	s11,s11,-1260 # 800074d8 <digits>
    800059cc:	00900593          	li	a1,9
    800059d0:	0006051b          	sext.w	a0,a2
    800059d4:	00000c93          	li	s9,0
    800059d8:	02079793          	slli	a5,a5,0x20
    800059dc:	0207d793          	srli	a5,a5,0x20
    800059e0:	00fd87b3          	add	a5,s11,a5
    800059e4:	0007c783          	lbu	a5,0(a5)
    800059e8:	02e656bb          	divuw	a3,a2,a4
    800059ec:	f8f40023          	sb	a5,-128(s0)
    800059f0:	14c5d863          	bge	a1,a2,80005b40 <__printf+0x278>
    800059f4:	06300593          	li	a1,99
    800059f8:	00100c93          	li	s9,1
    800059fc:	02e6f7bb          	remuw	a5,a3,a4
    80005a00:	02079793          	slli	a5,a5,0x20
    80005a04:	0207d793          	srli	a5,a5,0x20
    80005a08:	00fd87b3          	add	a5,s11,a5
    80005a0c:	0007c783          	lbu	a5,0(a5)
    80005a10:	02e6d73b          	divuw	a4,a3,a4
    80005a14:	f8f400a3          	sb	a5,-127(s0)
    80005a18:	12a5f463          	bgeu	a1,a0,80005b40 <__printf+0x278>
    80005a1c:	00a00693          	li	a3,10
    80005a20:	00900593          	li	a1,9
    80005a24:	02d777bb          	remuw	a5,a4,a3
    80005a28:	02079793          	slli	a5,a5,0x20
    80005a2c:	0207d793          	srli	a5,a5,0x20
    80005a30:	00fd87b3          	add	a5,s11,a5
    80005a34:	0007c503          	lbu	a0,0(a5)
    80005a38:	02d757bb          	divuw	a5,a4,a3
    80005a3c:	f8a40123          	sb	a0,-126(s0)
    80005a40:	48e5f263          	bgeu	a1,a4,80005ec4 <__printf+0x5fc>
    80005a44:	06300513          	li	a0,99
    80005a48:	02d7f5bb          	remuw	a1,a5,a3
    80005a4c:	02059593          	slli	a1,a1,0x20
    80005a50:	0205d593          	srli	a1,a1,0x20
    80005a54:	00bd85b3          	add	a1,s11,a1
    80005a58:	0005c583          	lbu	a1,0(a1)
    80005a5c:	02d7d7bb          	divuw	a5,a5,a3
    80005a60:	f8b401a3          	sb	a1,-125(s0)
    80005a64:	48e57263          	bgeu	a0,a4,80005ee8 <__printf+0x620>
    80005a68:	3e700513          	li	a0,999
    80005a6c:	02d7f5bb          	remuw	a1,a5,a3
    80005a70:	02059593          	slli	a1,a1,0x20
    80005a74:	0205d593          	srli	a1,a1,0x20
    80005a78:	00bd85b3          	add	a1,s11,a1
    80005a7c:	0005c583          	lbu	a1,0(a1)
    80005a80:	02d7d7bb          	divuw	a5,a5,a3
    80005a84:	f8b40223          	sb	a1,-124(s0)
    80005a88:	46e57663          	bgeu	a0,a4,80005ef4 <__printf+0x62c>
    80005a8c:	02d7f5bb          	remuw	a1,a5,a3
    80005a90:	02059593          	slli	a1,a1,0x20
    80005a94:	0205d593          	srli	a1,a1,0x20
    80005a98:	00bd85b3          	add	a1,s11,a1
    80005a9c:	0005c583          	lbu	a1,0(a1)
    80005aa0:	02d7d7bb          	divuw	a5,a5,a3
    80005aa4:	f8b402a3          	sb	a1,-123(s0)
    80005aa8:	46ea7863          	bgeu	s4,a4,80005f18 <__printf+0x650>
    80005aac:	02d7f5bb          	remuw	a1,a5,a3
    80005ab0:	02059593          	slli	a1,a1,0x20
    80005ab4:	0205d593          	srli	a1,a1,0x20
    80005ab8:	00bd85b3          	add	a1,s11,a1
    80005abc:	0005c583          	lbu	a1,0(a1)
    80005ac0:	02d7d7bb          	divuw	a5,a5,a3
    80005ac4:	f8b40323          	sb	a1,-122(s0)
    80005ac8:	3eeaf863          	bgeu	s5,a4,80005eb8 <__printf+0x5f0>
    80005acc:	02d7f5bb          	remuw	a1,a5,a3
    80005ad0:	02059593          	slli	a1,a1,0x20
    80005ad4:	0205d593          	srli	a1,a1,0x20
    80005ad8:	00bd85b3          	add	a1,s11,a1
    80005adc:	0005c583          	lbu	a1,0(a1)
    80005ae0:	02d7d7bb          	divuw	a5,a5,a3
    80005ae4:	f8b403a3          	sb	a1,-121(s0)
    80005ae8:	42eb7e63          	bgeu	s6,a4,80005f24 <__printf+0x65c>
    80005aec:	02d7f5bb          	remuw	a1,a5,a3
    80005af0:	02059593          	slli	a1,a1,0x20
    80005af4:	0205d593          	srli	a1,a1,0x20
    80005af8:	00bd85b3          	add	a1,s11,a1
    80005afc:	0005c583          	lbu	a1,0(a1)
    80005b00:	02d7d7bb          	divuw	a5,a5,a3
    80005b04:	f8b40423          	sb	a1,-120(s0)
    80005b08:	42ebfc63          	bgeu	s7,a4,80005f40 <__printf+0x678>
    80005b0c:	02079793          	slli	a5,a5,0x20
    80005b10:	0207d793          	srli	a5,a5,0x20
    80005b14:	00fd8db3          	add	s11,s11,a5
    80005b18:	000dc703          	lbu	a4,0(s11)
    80005b1c:	00a00793          	li	a5,10
    80005b20:	00900c93          	li	s9,9
    80005b24:	f8e404a3          	sb	a4,-119(s0)
    80005b28:	00065c63          	bgez	a2,80005b40 <__printf+0x278>
    80005b2c:	f9040713          	addi	a4,s0,-112
    80005b30:	00f70733          	add	a4,a4,a5
    80005b34:	02d00693          	li	a3,45
    80005b38:	fed70823          	sb	a3,-16(a4)
    80005b3c:	00078c93          	mv	s9,a5
    80005b40:	f8040793          	addi	a5,s0,-128
    80005b44:	01978cb3          	add	s9,a5,s9
    80005b48:	f7f40d13          	addi	s10,s0,-129
    80005b4c:	000cc503          	lbu	a0,0(s9)
    80005b50:	fffc8c93          	addi	s9,s9,-1
    80005b54:	00000097          	auipc	ra,0x0
    80005b58:	b90080e7          	jalr	-1136(ra) # 800056e4 <consputc>
    80005b5c:	ffac98e3          	bne	s9,s10,80005b4c <__printf+0x284>
    80005b60:	00094503          	lbu	a0,0(s2)
    80005b64:	e00514e3          	bnez	a0,8000596c <__printf+0xa4>
    80005b68:	1a0c1663          	bnez	s8,80005d14 <__printf+0x44c>
    80005b6c:	08813083          	ld	ra,136(sp)
    80005b70:	08013403          	ld	s0,128(sp)
    80005b74:	07813483          	ld	s1,120(sp)
    80005b78:	07013903          	ld	s2,112(sp)
    80005b7c:	06813983          	ld	s3,104(sp)
    80005b80:	06013a03          	ld	s4,96(sp)
    80005b84:	05813a83          	ld	s5,88(sp)
    80005b88:	05013b03          	ld	s6,80(sp)
    80005b8c:	04813b83          	ld	s7,72(sp)
    80005b90:	04013c03          	ld	s8,64(sp)
    80005b94:	03813c83          	ld	s9,56(sp)
    80005b98:	03013d03          	ld	s10,48(sp)
    80005b9c:	02813d83          	ld	s11,40(sp)
    80005ba0:	0d010113          	addi	sp,sp,208
    80005ba4:	00008067          	ret
    80005ba8:	07300713          	li	a4,115
    80005bac:	1ce78a63          	beq	a5,a4,80005d80 <__printf+0x4b8>
    80005bb0:	07800713          	li	a4,120
    80005bb4:	1ee79e63          	bne	a5,a4,80005db0 <__printf+0x4e8>
    80005bb8:	f7843783          	ld	a5,-136(s0)
    80005bbc:	0007a703          	lw	a4,0(a5)
    80005bc0:	00878793          	addi	a5,a5,8
    80005bc4:	f6f43c23          	sd	a5,-136(s0)
    80005bc8:	28074263          	bltz	a4,80005e4c <__printf+0x584>
    80005bcc:	00002d97          	auipc	s11,0x2
    80005bd0:	90cd8d93          	addi	s11,s11,-1780 # 800074d8 <digits>
    80005bd4:	00f77793          	andi	a5,a4,15
    80005bd8:	00fd87b3          	add	a5,s11,a5
    80005bdc:	0007c683          	lbu	a3,0(a5)
    80005be0:	00f00613          	li	a2,15
    80005be4:	0007079b          	sext.w	a5,a4
    80005be8:	f8d40023          	sb	a3,-128(s0)
    80005bec:	0047559b          	srliw	a1,a4,0x4
    80005bf0:	0047569b          	srliw	a3,a4,0x4
    80005bf4:	00000c93          	li	s9,0
    80005bf8:	0ee65063          	bge	a2,a4,80005cd8 <__printf+0x410>
    80005bfc:	00f6f693          	andi	a3,a3,15
    80005c00:	00dd86b3          	add	a3,s11,a3
    80005c04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005c08:	0087d79b          	srliw	a5,a5,0x8
    80005c0c:	00100c93          	li	s9,1
    80005c10:	f8d400a3          	sb	a3,-127(s0)
    80005c14:	0cb67263          	bgeu	a2,a1,80005cd8 <__printf+0x410>
    80005c18:	00f7f693          	andi	a3,a5,15
    80005c1c:	00dd86b3          	add	a3,s11,a3
    80005c20:	0006c583          	lbu	a1,0(a3)
    80005c24:	00f00613          	li	a2,15
    80005c28:	0047d69b          	srliw	a3,a5,0x4
    80005c2c:	f8b40123          	sb	a1,-126(s0)
    80005c30:	0047d593          	srli	a1,a5,0x4
    80005c34:	28f67e63          	bgeu	a2,a5,80005ed0 <__printf+0x608>
    80005c38:	00f6f693          	andi	a3,a3,15
    80005c3c:	00dd86b3          	add	a3,s11,a3
    80005c40:	0006c503          	lbu	a0,0(a3)
    80005c44:	0087d813          	srli	a6,a5,0x8
    80005c48:	0087d69b          	srliw	a3,a5,0x8
    80005c4c:	f8a401a3          	sb	a0,-125(s0)
    80005c50:	28b67663          	bgeu	a2,a1,80005edc <__printf+0x614>
    80005c54:	00f6f693          	andi	a3,a3,15
    80005c58:	00dd86b3          	add	a3,s11,a3
    80005c5c:	0006c583          	lbu	a1,0(a3)
    80005c60:	00c7d513          	srli	a0,a5,0xc
    80005c64:	00c7d69b          	srliw	a3,a5,0xc
    80005c68:	f8b40223          	sb	a1,-124(s0)
    80005c6c:	29067a63          	bgeu	a2,a6,80005f00 <__printf+0x638>
    80005c70:	00f6f693          	andi	a3,a3,15
    80005c74:	00dd86b3          	add	a3,s11,a3
    80005c78:	0006c583          	lbu	a1,0(a3)
    80005c7c:	0107d813          	srli	a6,a5,0x10
    80005c80:	0107d69b          	srliw	a3,a5,0x10
    80005c84:	f8b402a3          	sb	a1,-123(s0)
    80005c88:	28a67263          	bgeu	a2,a0,80005f0c <__printf+0x644>
    80005c8c:	00f6f693          	andi	a3,a3,15
    80005c90:	00dd86b3          	add	a3,s11,a3
    80005c94:	0006c683          	lbu	a3,0(a3)
    80005c98:	0147d79b          	srliw	a5,a5,0x14
    80005c9c:	f8d40323          	sb	a3,-122(s0)
    80005ca0:	21067663          	bgeu	a2,a6,80005eac <__printf+0x5e4>
    80005ca4:	02079793          	slli	a5,a5,0x20
    80005ca8:	0207d793          	srli	a5,a5,0x20
    80005cac:	00fd8db3          	add	s11,s11,a5
    80005cb0:	000dc683          	lbu	a3,0(s11)
    80005cb4:	00800793          	li	a5,8
    80005cb8:	00700c93          	li	s9,7
    80005cbc:	f8d403a3          	sb	a3,-121(s0)
    80005cc0:	00075c63          	bgez	a4,80005cd8 <__printf+0x410>
    80005cc4:	f9040713          	addi	a4,s0,-112
    80005cc8:	00f70733          	add	a4,a4,a5
    80005ccc:	02d00693          	li	a3,45
    80005cd0:	fed70823          	sb	a3,-16(a4)
    80005cd4:	00078c93          	mv	s9,a5
    80005cd8:	f8040793          	addi	a5,s0,-128
    80005cdc:	01978cb3          	add	s9,a5,s9
    80005ce0:	f7f40d13          	addi	s10,s0,-129
    80005ce4:	000cc503          	lbu	a0,0(s9)
    80005ce8:	fffc8c93          	addi	s9,s9,-1
    80005cec:	00000097          	auipc	ra,0x0
    80005cf0:	9f8080e7          	jalr	-1544(ra) # 800056e4 <consputc>
    80005cf4:	ff9d18e3          	bne	s10,s9,80005ce4 <__printf+0x41c>
    80005cf8:	0100006f          	j	80005d08 <__printf+0x440>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	9e8080e7          	jalr	-1560(ra) # 800056e4 <consputc>
    80005d04:	000c8493          	mv	s1,s9
    80005d08:	00094503          	lbu	a0,0(s2)
    80005d0c:	c60510e3          	bnez	a0,8000596c <__printf+0xa4>
    80005d10:	e40c0ee3          	beqz	s8,80005b6c <__printf+0x2a4>
    80005d14:	00004517          	auipc	a0,0x4
    80005d18:	38c50513          	addi	a0,a0,908 # 8000a0a0 <pr>
    80005d1c:	00001097          	auipc	ra,0x1
    80005d20:	94c080e7          	jalr	-1716(ra) # 80006668 <release>
    80005d24:	e49ff06f          	j	80005b6c <__printf+0x2a4>
    80005d28:	f7843783          	ld	a5,-136(s0)
    80005d2c:	03000513          	li	a0,48
    80005d30:	01000d13          	li	s10,16
    80005d34:	00878713          	addi	a4,a5,8
    80005d38:	0007bc83          	ld	s9,0(a5)
    80005d3c:	f6e43c23          	sd	a4,-136(s0)
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	9a4080e7          	jalr	-1628(ra) # 800056e4 <consputc>
    80005d48:	07800513          	li	a0,120
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	998080e7          	jalr	-1640(ra) # 800056e4 <consputc>
    80005d54:	00001d97          	auipc	s11,0x1
    80005d58:	784d8d93          	addi	s11,s11,1924 # 800074d8 <digits>
    80005d5c:	03ccd793          	srli	a5,s9,0x3c
    80005d60:	00fd87b3          	add	a5,s11,a5
    80005d64:	0007c503          	lbu	a0,0(a5)
    80005d68:	fffd0d1b          	addiw	s10,s10,-1
    80005d6c:	004c9c93          	slli	s9,s9,0x4
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	974080e7          	jalr	-1676(ra) # 800056e4 <consputc>
    80005d78:	fe0d12e3          	bnez	s10,80005d5c <__printf+0x494>
    80005d7c:	f8dff06f          	j	80005d08 <__printf+0x440>
    80005d80:	f7843783          	ld	a5,-136(s0)
    80005d84:	0007bc83          	ld	s9,0(a5)
    80005d88:	00878793          	addi	a5,a5,8
    80005d8c:	f6f43c23          	sd	a5,-136(s0)
    80005d90:	000c9a63          	bnez	s9,80005da4 <__printf+0x4dc>
    80005d94:	1080006f          	j	80005e9c <__printf+0x5d4>
    80005d98:	001c8c93          	addi	s9,s9,1
    80005d9c:	00000097          	auipc	ra,0x0
    80005da0:	948080e7          	jalr	-1720(ra) # 800056e4 <consputc>
    80005da4:	000cc503          	lbu	a0,0(s9)
    80005da8:	fe0518e3          	bnez	a0,80005d98 <__printf+0x4d0>
    80005dac:	f5dff06f          	j	80005d08 <__printf+0x440>
    80005db0:	02500513          	li	a0,37
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	930080e7          	jalr	-1744(ra) # 800056e4 <consputc>
    80005dbc:	000c8513          	mv	a0,s9
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	924080e7          	jalr	-1756(ra) # 800056e4 <consputc>
    80005dc8:	f41ff06f          	j	80005d08 <__printf+0x440>
    80005dcc:	02500513          	li	a0,37
    80005dd0:	00000097          	auipc	ra,0x0
    80005dd4:	914080e7          	jalr	-1772(ra) # 800056e4 <consputc>
    80005dd8:	f31ff06f          	j	80005d08 <__printf+0x440>
    80005ddc:	00030513          	mv	a0,t1
    80005de0:	00000097          	auipc	ra,0x0
    80005de4:	7bc080e7          	jalr	1980(ra) # 8000659c <acquire>
    80005de8:	b4dff06f          	j	80005934 <__printf+0x6c>
    80005dec:	40c0053b          	negw	a0,a2
    80005df0:	00a00713          	li	a4,10
    80005df4:	02e576bb          	remuw	a3,a0,a4
    80005df8:	00001d97          	auipc	s11,0x1
    80005dfc:	6e0d8d93          	addi	s11,s11,1760 # 800074d8 <digits>
    80005e00:	ff700593          	li	a1,-9
    80005e04:	02069693          	slli	a3,a3,0x20
    80005e08:	0206d693          	srli	a3,a3,0x20
    80005e0c:	00dd86b3          	add	a3,s11,a3
    80005e10:	0006c683          	lbu	a3,0(a3)
    80005e14:	02e557bb          	divuw	a5,a0,a4
    80005e18:	f8d40023          	sb	a3,-128(s0)
    80005e1c:	10b65e63          	bge	a2,a1,80005f38 <__printf+0x670>
    80005e20:	06300593          	li	a1,99
    80005e24:	02e7f6bb          	remuw	a3,a5,a4
    80005e28:	02069693          	slli	a3,a3,0x20
    80005e2c:	0206d693          	srli	a3,a3,0x20
    80005e30:	00dd86b3          	add	a3,s11,a3
    80005e34:	0006c683          	lbu	a3,0(a3)
    80005e38:	02e7d73b          	divuw	a4,a5,a4
    80005e3c:	00200793          	li	a5,2
    80005e40:	f8d400a3          	sb	a3,-127(s0)
    80005e44:	bca5ece3          	bltu	a1,a0,80005a1c <__printf+0x154>
    80005e48:	ce5ff06f          	j	80005b2c <__printf+0x264>
    80005e4c:	40e007bb          	negw	a5,a4
    80005e50:	00001d97          	auipc	s11,0x1
    80005e54:	688d8d93          	addi	s11,s11,1672 # 800074d8 <digits>
    80005e58:	00f7f693          	andi	a3,a5,15
    80005e5c:	00dd86b3          	add	a3,s11,a3
    80005e60:	0006c583          	lbu	a1,0(a3)
    80005e64:	ff100613          	li	a2,-15
    80005e68:	0047d69b          	srliw	a3,a5,0x4
    80005e6c:	f8b40023          	sb	a1,-128(s0)
    80005e70:	0047d59b          	srliw	a1,a5,0x4
    80005e74:	0ac75e63          	bge	a4,a2,80005f30 <__printf+0x668>
    80005e78:	00f6f693          	andi	a3,a3,15
    80005e7c:	00dd86b3          	add	a3,s11,a3
    80005e80:	0006c603          	lbu	a2,0(a3)
    80005e84:	00f00693          	li	a3,15
    80005e88:	0087d79b          	srliw	a5,a5,0x8
    80005e8c:	f8c400a3          	sb	a2,-127(s0)
    80005e90:	d8b6e4e3          	bltu	a3,a1,80005c18 <__printf+0x350>
    80005e94:	00200793          	li	a5,2
    80005e98:	e2dff06f          	j	80005cc4 <__printf+0x3fc>
    80005e9c:	00001c97          	auipc	s9,0x1
    80005ea0:	61cc8c93          	addi	s9,s9,1564 # 800074b8 <_ZL6digits+0x160>
    80005ea4:	02800513          	li	a0,40
    80005ea8:	ef1ff06f          	j	80005d98 <__printf+0x4d0>
    80005eac:	00700793          	li	a5,7
    80005eb0:	00600c93          	li	s9,6
    80005eb4:	e0dff06f          	j	80005cc0 <__printf+0x3f8>
    80005eb8:	00700793          	li	a5,7
    80005ebc:	00600c93          	li	s9,6
    80005ec0:	c69ff06f          	j	80005b28 <__printf+0x260>
    80005ec4:	00300793          	li	a5,3
    80005ec8:	00200c93          	li	s9,2
    80005ecc:	c5dff06f          	j	80005b28 <__printf+0x260>
    80005ed0:	00300793          	li	a5,3
    80005ed4:	00200c93          	li	s9,2
    80005ed8:	de9ff06f          	j	80005cc0 <__printf+0x3f8>
    80005edc:	00400793          	li	a5,4
    80005ee0:	00300c93          	li	s9,3
    80005ee4:	dddff06f          	j	80005cc0 <__printf+0x3f8>
    80005ee8:	00400793          	li	a5,4
    80005eec:	00300c93          	li	s9,3
    80005ef0:	c39ff06f          	j	80005b28 <__printf+0x260>
    80005ef4:	00500793          	li	a5,5
    80005ef8:	00400c93          	li	s9,4
    80005efc:	c2dff06f          	j	80005b28 <__printf+0x260>
    80005f00:	00500793          	li	a5,5
    80005f04:	00400c93          	li	s9,4
    80005f08:	db9ff06f          	j	80005cc0 <__printf+0x3f8>
    80005f0c:	00600793          	li	a5,6
    80005f10:	00500c93          	li	s9,5
    80005f14:	dadff06f          	j	80005cc0 <__printf+0x3f8>
    80005f18:	00600793          	li	a5,6
    80005f1c:	00500c93          	li	s9,5
    80005f20:	c09ff06f          	j	80005b28 <__printf+0x260>
    80005f24:	00800793          	li	a5,8
    80005f28:	00700c93          	li	s9,7
    80005f2c:	bfdff06f          	j	80005b28 <__printf+0x260>
    80005f30:	00100793          	li	a5,1
    80005f34:	d91ff06f          	j	80005cc4 <__printf+0x3fc>
    80005f38:	00100793          	li	a5,1
    80005f3c:	bf1ff06f          	j	80005b2c <__printf+0x264>
    80005f40:	00900793          	li	a5,9
    80005f44:	00800c93          	li	s9,8
    80005f48:	be1ff06f          	j	80005b28 <__printf+0x260>
    80005f4c:	00001517          	auipc	a0,0x1
    80005f50:	57450513          	addi	a0,a0,1396 # 800074c0 <_ZL6digits+0x168>
    80005f54:	00000097          	auipc	ra,0x0
    80005f58:	918080e7          	jalr	-1768(ra) # 8000586c <panic>

0000000080005f5c <printfinit>:
    80005f5c:	fe010113          	addi	sp,sp,-32
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	00113c23          	sd	ra,24(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00004497          	auipc	s1,0x4
    80005f74:	13048493          	addi	s1,s1,304 # 8000a0a0 <pr>
    80005f78:	00048513          	mv	a0,s1
    80005f7c:	00001597          	auipc	a1,0x1
    80005f80:	55458593          	addi	a1,a1,1364 # 800074d0 <_ZL6digits+0x178>
    80005f84:	00000097          	auipc	ra,0x0
    80005f88:	5f4080e7          	jalr	1524(ra) # 80006578 <initlock>
    80005f8c:	01813083          	ld	ra,24(sp)
    80005f90:	01013403          	ld	s0,16(sp)
    80005f94:	0004ac23          	sw	zero,24(s1)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <uartinit>:
    80005fa4:	ff010113          	addi	sp,sp,-16
    80005fa8:	00813423          	sd	s0,8(sp)
    80005fac:	01010413          	addi	s0,sp,16
    80005fb0:	100007b7          	lui	a5,0x10000
    80005fb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005fb8:	f8000713          	li	a4,-128
    80005fbc:	00e781a3          	sb	a4,3(a5)
    80005fc0:	00300713          	li	a4,3
    80005fc4:	00e78023          	sb	a4,0(a5)
    80005fc8:	000780a3          	sb	zero,1(a5)
    80005fcc:	00e781a3          	sb	a4,3(a5)
    80005fd0:	00700693          	li	a3,7
    80005fd4:	00d78123          	sb	a3,2(a5)
    80005fd8:	00e780a3          	sb	a4,1(a5)
    80005fdc:	00813403          	ld	s0,8(sp)
    80005fe0:	01010113          	addi	sp,sp,16
    80005fe4:	00008067          	ret

0000000080005fe8 <uartputc>:
    80005fe8:	00003797          	auipc	a5,0x3
    80005fec:	de07a783          	lw	a5,-544(a5) # 80008dc8 <panicked>
    80005ff0:	00078463          	beqz	a5,80005ff8 <uartputc+0x10>
    80005ff4:	0000006f          	j	80005ff4 <uartputc+0xc>
    80005ff8:	fd010113          	addi	sp,sp,-48
    80005ffc:	02813023          	sd	s0,32(sp)
    80006000:	00913c23          	sd	s1,24(sp)
    80006004:	01213823          	sd	s2,16(sp)
    80006008:	01313423          	sd	s3,8(sp)
    8000600c:	02113423          	sd	ra,40(sp)
    80006010:	03010413          	addi	s0,sp,48
    80006014:	00003917          	auipc	s2,0x3
    80006018:	dbc90913          	addi	s2,s2,-580 # 80008dd0 <uart_tx_r>
    8000601c:	00093783          	ld	a5,0(s2)
    80006020:	00003497          	auipc	s1,0x3
    80006024:	db848493          	addi	s1,s1,-584 # 80008dd8 <uart_tx_w>
    80006028:	0004b703          	ld	a4,0(s1)
    8000602c:	02078693          	addi	a3,a5,32
    80006030:	00050993          	mv	s3,a0
    80006034:	02e69c63          	bne	a3,a4,8000606c <uartputc+0x84>
    80006038:	00001097          	auipc	ra,0x1
    8000603c:	834080e7          	jalr	-1996(ra) # 8000686c <push_on>
    80006040:	00093783          	ld	a5,0(s2)
    80006044:	0004b703          	ld	a4,0(s1)
    80006048:	02078793          	addi	a5,a5,32
    8000604c:	00e79463          	bne	a5,a4,80006054 <uartputc+0x6c>
    80006050:	0000006f          	j	80006050 <uartputc+0x68>
    80006054:	00001097          	auipc	ra,0x1
    80006058:	88c080e7          	jalr	-1908(ra) # 800068e0 <pop_on>
    8000605c:	00093783          	ld	a5,0(s2)
    80006060:	0004b703          	ld	a4,0(s1)
    80006064:	02078693          	addi	a3,a5,32
    80006068:	fce688e3          	beq	a3,a4,80006038 <uartputc+0x50>
    8000606c:	01f77693          	andi	a3,a4,31
    80006070:	00004597          	auipc	a1,0x4
    80006074:	05058593          	addi	a1,a1,80 # 8000a0c0 <uart_tx_buf>
    80006078:	00d586b3          	add	a3,a1,a3
    8000607c:	00170713          	addi	a4,a4,1
    80006080:	01368023          	sb	s3,0(a3)
    80006084:	00e4b023          	sd	a4,0(s1)
    80006088:	10000637          	lui	a2,0x10000
    8000608c:	02f71063          	bne	a4,a5,800060ac <uartputc+0xc4>
    80006090:	0340006f          	j	800060c4 <uartputc+0xdc>
    80006094:	00074703          	lbu	a4,0(a4)
    80006098:	00f93023          	sd	a5,0(s2)
    8000609c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800060a0:	00093783          	ld	a5,0(s2)
    800060a4:	0004b703          	ld	a4,0(s1)
    800060a8:	00f70e63          	beq	a4,a5,800060c4 <uartputc+0xdc>
    800060ac:	00564683          	lbu	a3,5(a2)
    800060b0:	01f7f713          	andi	a4,a5,31
    800060b4:	00e58733          	add	a4,a1,a4
    800060b8:	0206f693          	andi	a3,a3,32
    800060bc:	00178793          	addi	a5,a5,1
    800060c0:	fc069ae3          	bnez	a3,80006094 <uartputc+0xac>
    800060c4:	02813083          	ld	ra,40(sp)
    800060c8:	02013403          	ld	s0,32(sp)
    800060cc:	01813483          	ld	s1,24(sp)
    800060d0:	01013903          	ld	s2,16(sp)
    800060d4:	00813983          	ld	s3,8(sp)
    800060d8:	03010113          	addi	sp,sp,48
    800060dc:	00008067          	ret

00000000800060e0 <uartputc_sync>:
    800060e0:	ff010113          	addi	sp,sp,-16
    800060e4:	00813423          	sd	s0,8(sp)
    800060e8:	01010413          	addi	s0,sp,16
    800060ec:	00003717          	auipc	a4,0x3
    800060f0:	cdc72703          	lw	a4,-804(a4) # 80008dc8 <panicked>
    800060f4:	02071663          	bnez	a4,80006120 <uartputc_sync+0x40>
    800060f8:	00050793          	mv	a5,a0
    800060fc:	100006b7          	lui	a3,0x10000
    80006100:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006104:	02077713          	andi	a4,a4,32
    80006108:	fe070ce3          	beqz	a4,80006100 <uartputc_sync+0x20>
    8000610c:	0ff7f793          	andi	a5,a5,255
    80006110:	00f68023          	sb	a5,0(a3)
    80006114:	00813403          	ld	s0,8(sp)
    80006118:	01010113          	addi	sp,sp,16
    8000611c:	00008067          	ret
    80006120:	0000006f          	j	80006120 <uartputc_sync+0x40>

0000000080006124 <uartstart>:
    80006124:	ff010113          	addi	sp,sp,-16
    80006128:	00813423          	sd	s0,8(sp)
    8000612c:	01010413          	addi	s0,sp,16
    80006130:	00003617          	auipc	a2,0x3
    80006134:	ca060613          	addi	a2,a2,-864 # 80008dd0 <uart_tx_r>
    80006138:	00003517          	auipc	a0,0x3
    8000613c:	ca050513          	addi	a0,a0,-864 # 80008dd8 <uart_tx_w>
    80006140:	00063783          	ld	a5,0(a2)
    80006144:	00053703          	ld	a4,0(a0)
    80006148:	04f70263          	beq	a4,a5,8000618c <uartstart+0x68>
    8000614c:	100005b7          	lui	a1,0x10000
    80006150:	00004817          	auipc	a6,0x4
    80006154:	f7080813          	addi	a6,a6,-144 # 8000a0c0 <uart_tx_buf>
    80006158:	01c0006f          	j	80006174 <uartstart+0x50>
    8000615c:	0006c703          	lbu	a4,0(a3)
    80006160:	00f63023          	sd	a5,0(a2)
    80006164:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006168:	00063783          	ld	a5,0(a2)
    8000616c:	00053703          	ld	a4,0(a0)
    80006170:	00f70e63          	beq	a4,a5,8000618c <uartstart+0x68>
    80006174:	01f7f713          	andi	a4,a5,31
    80006178:	00e806b3          	add	a3,a6,a4
    8000617c:	0055c703          	lbu	a4,5(a1)
    80006180:	00178793          	addi	a5,a5,1
    80006184:	02077713          	andi	a4,a4,32
    80006188:	fc071ae3          	bnez	a4,8000615c <uartstart+0x38>
    8000618c:	00813403          	ld	s0,8(sp)
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <uartgetc>:
    80006198:	ff010113          	addi	sp,sp,-16
    8000619c:	00813423          	sd	s0,8(sp)
    800061a0:	01010413          	addi	s0,sp,16
    800061a4:	10000737          	lui	a4,0x10000
    800061a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800061ac:	0017f793          	andi	a5,a5,1
    800061b0:	00078c63          	beqz	a5,800061c8 <uartgetc+0x30>
    800061b4:	00074503          	lbu	a0,0(a4)
    800061b8:	0ff57513          	andi	a0,a0,255
    800061bc:	00813403          	ld	s0,8(sp)
    800061c0:	01010113          	addi	sp,sp,16
    800061c4:	00008067          	ret
    800061c8:	fff00513          	li	a0,-1
    800061cc:	ff1ff06f          	j	800061bc <uartgetc+0x24>

00000000800061d0 <uartintr>:
    800061d0:	100007b7          	lui	a5,0x10000
    800061d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800061d8:	0017f793          	andi	a5,a5,1
    800061dc:	0a078463          	beqz	a5,80006284 <uartintr+0xb4>
    800061e0:	fe010113          	addi	sp,sp,-32
    800061e4:	00813823          	sd	s0,16(sp)
    800061e8:	00913423          	sd	s1,8(sp)
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	02010413          	addi	s0,sp,32
    800061f4:	100004b7          	lui	s1,0x10000
    800061f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800061fc:	0ff57513          	andi	a0,a0,255
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	534080e7          	jalr	1332(ra) # 80005734 <consoleintr>
    80006208:	0054c783          	lbu	a5,5(s1)
    8000620c:	0017f793          	andi	a5,a5,1
    80006210:	fe0794e3          	bnez	a5,800061f8 <uartintr+0x28>
    80006214:	00003617          	auipc	a2,0x3
    80006218:	bbc60613          	addi	a2,a2,-1092 # 80008dd0 <uart_tx_r>
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	bbc50513          	addi	a0,a0,-1092 # 80008dd8 <uart_tx_w>
    80006224:	00063783          	ld	a5,0(a2)
    80006228:	00053703          	ld	a4,0(a0)
    8000622c:	04f70263          	beq	a4,a5,80006270 <uartintr+0xa0>
    80006230:	100005b7          	lui	a1,0x10000
    80006234:	00004817          	auipc	a6,0x4
    80006238:	e8c80813          	addi	a6,a6,-372 # 8000a0c0 <uart_tx_buf>
    8000623c:	01c0006f          	j	80006258 <uartintr+0x88>
    80006240:	0006c703          	lbu	a4,0(a3)
    80006244:	00f63023          	sd	a5,0(a2)
    80006248:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000624c:	00063783          	ld	a5,0(a2)
    80006250:	00053703          	ld	a4,0(a0)
    80006254:	00f70e63          	beq	a4,a5,80006270 <uartintr+0xa0>
    80006258:	01f7f713          	andi	a4,a5,31
    8000625c:	00e806b3          	add	a3,a6,a4
    80006260:	0055c703          	lbu	a4,5(a1)
    80006264:	00178793          	addi	a5,a5,1
    80006268:	02077713          	andi	a4,a4,32
    8000626c:	fc071ae3          	bnez	a4,80006240 <uartintr+0x70>
    80006270:	01813083          	ld	ra,24(sp)
    80006274:	01013403          	ld	s0,16(sp)
    80006278:	00813483          	ld	s1,8(sp)
    8000627c:	02010113          	addi	sp,sp,32
    80006280:	00008067          	ret
    80006284:	00003617          	auipc	a2,0x3
    80006288:	b4c60613          	addi	a2,a2,-1204 # 80008dd0 <uart_tx_r>
    8000628c:	00003517          	auipc	a0,0x3
    80006290:	b4c50513          	addi	a0,a0,-1204 # 80008dd8 <uart_tx_w>
    80006294:	00063783          	ld	a5,0(a2)
    80006298:	00053703          	ld	a4,0(a0)
    8000629c:	04f70263          	beq	a4,a5,800062e0 <uartintr+0x110>
    800062a0:	100005b7          	lui	a1,0x10000
    800062a4:	00004817          	auipc	a6,0x4
    800062a8:	e1c80813          	addi	a6,a6,-484 # 8000a0c0 <uart_tx_buf>
    800062ac:	01c0006f          	j	800062c8 <uartintr+0xf8>
    800062b0:	0006c703          	lbu	a4,0(a3)
    800062b4:	00f63023          	sd	a5,0(a2)
    800062b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800062bc:	00063783          	ld	a5,0(a2)
    800062c0:	00053703          	ld	a4,0(a0)
    800062c4:	02f70063          	beq	a4,a5,800062e4 <uartintr+0x114>
    800062c8:	01f7f713          	andi	a4,a5,31
    800062cc:	00e806b3          	add	a3,a6,a4
    800062d0:	0055c703          	lbu	a4,5(a1)
    800062d4:	00178793          	addi	a5,a5,1
    800062d8:	02077713          	andi	a4,a4,32
    800062dc:	fc071ae3          	bnez	a4,800062b0 <uartintr+0xe0>
    800062e0:	00008067          	ret
    800062e4:	00008067          	ret

00000000800062e8 <kinit>:
    800062e8:	fc010113          	addi	sp,sp,-64
    800062ec:	02913423          	sd	s1,40(sp)
    800062f0:	fffff7b7          	lui	a5,0xfffff
    800062f4:	00005497          	auipc	s1,0x5
    800062f8:	deb48493          	addi	s1,s1,-533 # 8000b0df <end+0xfff>
    800062fc:	02813823          	sd	s0,48(sp)
    80006300:	01313c23          	sd	s3,24(sp)
    80006304:	00f4f4b3          	and	s1,s1,a5
    80006308:	02113c23          	sd	ra,56(sp)
    8000630c:	03213023          	sd	s2,32(sp)
    80006310:	01413823          	sd	s4,16(sp)
    80006314:	01513423          	sd	s5,8(sp)
    80006318:	04010413          	addi	s0,sp,64
    8000631c:	000017b7          	lui	a5,0x1
    80006320:	01100993          	li	s3,17
    80006324:	00f487b3          	add	a5,s1,a5
    80006328:	01b99993          	slli	s3,s3,0x1b
    8000632c:	06f9e063          	bltu	s3,a5,8000638c <kinit+0xa4>
    80006330:	00004a97          	auipc	s5,0x4
    80006334:	db0a8a93          	addi	s5,s5,-592 # 8000a0e0 <end>
    80006338:	0754ec63          	bltu	s1,s5,800063b0 <kinit+0xc8>
    8000633c:	0734fa63          	bgeu	s1,s3,800063b0 <kinit+0xc8>
    80006340:	00088a37          	lui	s4,0x88
    80006344:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006348:	00003917          	auipc	s2,0x3
    8000634c:	a9890913          	addi	s2,s2,-1384 # 80008de0 <kmem>
    80006350:	00ca1a13          	slli	s4,s4,0xc
    80006354:	0140006f          	j	80006368 <kinit+0x80>
    80006358:	000017b7          	lui	a5,0x1
    8000635c:	00f484b3          	add	s1,s1,a5
    80006360:	0554e863          	bltu	s1,s5,800063b0 <kinit+0xc8>
    80006364:	0534f663          	bgeu	s1,s3,800063b0 <kinit+0xc8>
    80006368:	00001637          	lui	a2,0x1
    8000636c:	00100593          	li	a1,1
    80006370:	00048513          	mv	a0,s1
    80006374:	00000097          	auipc	ra,0x0
    80006378:	5e4080e7          	jalr	1508(ra) # 80006958 <__memset>
    8000637c:	00093783          	ld	a5,0(s2)
    80006380:	00f4b023          	sd	a5,0(s1)
    80006384:	00993023          	sd	s1,0(s2)
    80006388:	fd4498e3          	bne	s1,s4,80006358 <kinit+0x70>
    8000638c:	03813083          	ld	ra,56(sp)
    80006390:	03013403          	ld	s0,48(sp)
    80006394:	02813483          	ld	s1,40(sp)
    80006398:	02013903          	ld	s2,32(sp)
    8000639c:	01813983          	ld	s3,24(sp)
    800063a0:	01013a03          	ld	s4,16(sp)
    800063a4:	00813a83          	ld	s5,8(sp)
    800063a8:	04010113          	addi	sp,sp,64
    800063ac:	00008067          	ret
    800063b0:	00001517          	auipc	a0,0x1
    800063b4:	14050513          	addi	a0,a0,320 # 800074f0 <digits+0x18>
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	4b4080e7          	jalr	1204(ra) # 8000586c <panic>

00000000800063c0 <freerange>:
    800063c0:	fc010113          	addi	sp,sp,-64
    800063c4:	000017b7          	lui	a5,0x1
    800063c8:	02913423          	sd	s1,40(sp)
    800063cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800063d0:	009504b3          	add	s1,a0,s1
    800063d4:	fffff537          	lui	a0,0xfffff
    800063d8:	02813823          	sd	s0,48(sp)
    800063dc:	02113c23          	sd	ra,56(sp)
    800063e0:	03213023          	sd	s2,32(sp)
    800063e4:	01313c23          	sd	s3,24(sp)
    800063e8:	01413823          	sd	s4,16(sp)
    800063ec:	01513423          	sd	s5,8(sp)
    800063f0:	01613023          	sd	s6,0(sp)
    800063f4:	04010413          	addi	s0,sp,64
    800063f8:	00a4f4b3          	and	s1,s1,a0
    800063fc:	00f487b3          	add	a5,s1,a5
    80006400:	06f5e463          	bltu	a1,a5,80006468 <freerange+0xa8>
    80006404:	00004a97          	auipc	s5,0x4
    80006408:	cdca8a93          	addi	s5,s5,-804 # 8000a0e0 <end>
    8000640c:	0954e263          	bltu	s1,s5,80006490 <freerange+0xd0>
    80006410:	01100993          	li	s3,17
    80006414:	01b99993          	slli	s3,s3,0x1b
    80006418:	0734fc63          	bgeu	s1,s3,80006490 <freerange+0xd0>
    8000641c:	00058a13          	mv	s4,a1
    80006420:	00003917          	auipc	s2,0x3
    80006424:	9c090913          	addi	s2,s2,-1600 # 80008de0 <kmem>
    80006428:	00002b37          	lui	s6,0x2
    8000642c:	0140006f          	j	80006440 <freerange+0x80>
    80006430:	000017b7          	lui	a5,0x1
    80006434:	00f484b3          	add	s1,s1,a5
    80006438:	0554ec63          	bltu	s1,s5,80006490 <freerange+0xd0>
    8000643c:	0534fa63          	bgeu	s1,s3,80006490 <freerange+0xd0>
    80006440:	00001637          	lui	a2,0x1
    80006444:	00100593          	li	a1,1
    80006448:	00048513          	mv	a0,s1
    8000644c:	00000097          	auipc	ra,0x0
    80006450:	50c080e7          	jalr	1292(ra) # 80006958 <__memset>
    80006454:	00093703          	ld	a4,0(s2)
    80006458:	016487b3          	add	a5,s1,s6
    8000645c:	00e4b023          	sd	a4,0(s1)
    80006460:	00993023          	sd	s1,0(s2)
    80006464:	fcfa76e3          	bgeu	s4,a5,80006430 <freerange+0x70>
    80006468:	03813083          	ld	ra,56(sp)
    8000646c:	03013403          	ld	s0,48(sp)
    80006470:	02813483          	ld	s1,40(sp)
    80006474:	02013903          	ld	s2,32(sp)
    80006478:	01813983          	ld	s3,24(sp)
    8000647c:	01013a03          	ld	s4,16(sp)
    80006480:	00813a83          	ld	s5,8(sp)
    80006484:	00013b03          	ld	s6,0(sp)
    80006488:	04010113          	addi	sp,sp,64
    8000648c:	00008067          	ret
    80006490:	00001517          	auipc	a0,0x1
    80006494:	06050513          	addi	a0,a0,96 # 800074f0 <digits+0x18>
    80006498:	fffff097          	auipc	ra,0xfffff
    8000649c:	3d4080e7          	jalr	980(ra) # 8000586c <panic>

00000000800064a0 <kfree>:
    800064a0:	fe010113          	addi	sp,sp,-32
    800064a4:	00813823          	sd	s0,16(sp)
    800064a8:	00113c23          	sd	ra,24(sp)
    800064ac:	00913423          	sd	s1,8(sp)
    800064b0:	02010413          	addi	s0,sp,32
    800064b4:	03451793          	slli	a5,a0,0x34
    800064b8:	04079c63          	bnez	a5,80006510 <kfree+0x70>
    800064bc:	00004797          	auipc	a5,0x4
    800064c0:	c2478793          	addi	a5,a5,-988 # 8000a0e0 <end>
    800064c4:	00050493          	mv	s1,a0
    800064c8:	04f56463          	bltu	a0,a5,80006510 <kfree+0x70>
    800064cc:	01100793          	li	a5,17
    800064d0:	01b79793          	slli	a5,a5,0x1b
    800064d4:	02f57e63          	bgeu	a0,a5,80006510 <kfree+0x70>
    800064d8:	00001637          	lui	a2,0x1
    800064dc:	00100593          	li	a1,1
    800064e0:	00000097          	auipc	ra,0x0
    800064e4:	478080e7          	jalr	1144(ra) # 80006958 <__memset>
    800064e8:	00003797          	auipc	a5,0x3
    800064ec:	8f878793          	addi	a5,a5,-1800 # 80008de0 <kmem>
    800064f0:	0007b703          	ld	a4,0(a5)
    800064f4:	01813083          	ld	ra,24(sp)
    800064f8:	01013403          	ld	s0,16(sp)
    800064fc:	00e4b023          	sd	a4,0(s1)
    80006500:	0097b023          	sd	s1,0(a5)
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	02010113          	addi	sp,sp,32
    8000650c:	00008067          	ret
    80006510:	00001517          	auipc	a0,0x1
    80006514:	fe050513          	addi	a0,a0,-32 # 800074f0 <digits+0x18>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	354080e7          	jalr	852(ra) # 8000586c <panic>

0000000080006520 <kalloc>:
    80006520:	fe010113          	addi	sp,sp,-32
    80006524:	00813823          	sd	s0,16(sp)
    80006528:	00913423          	sd	s1,8(sp)
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	02010413          	addi	s0,sp,32
    80006534:	00003797          	auipc	a5,0x3
    80006538:	8ac78793          	addi	a5,a5,-1876 # 80008de0 <kmem>
    8000653c:	0007b483          	ld	s1,0(a5)
    80006540:	02048063          	beqz	s1,80006560 <kalloc+0x40>
    80006544:	0004b703          	ld	a4,0(s1)
    80006548:	00001637          	lui	a2,0x1
    8000654c:	00500593          	li	a1,5
    80006550:	00048513          	mv	a0,s1
    80006554:	00e7b023          	sd	a4,0(a5)
    80006558:	00000097          	auipc	ra,0x0
    8000655c:	400080e7          	jalr	1024(ra) # 80006958 <__memset>
    80006560:	01813083          	ld	ra,24(sp)
    80006564:	01013403          	ld	s0,16(sp)
    80006568:	00048513          	mv	a0,s1
    8000656c:	00813483          	ld	s1,8(sp)
    80006570:	02010113          	addi	sp,sp,32
    80006574:	00008067          	ret

0000000080006578 <initlock>:
    80006578:	ff010113          	addi	sp,sp,-16
    8000657c:	00813423          	sd	s0,8(sp)
    80006580:	01010413          	addi	s0,sp,16
    80006584:	00813403          	ld	s0,8(sp)
    80006588:	00b53423          	sd	a1,8(a0)
    8000658c:	00052023          	sw	zero,0(a0)
    80006590:	00053823          	sd	zero,16(a0)
    80006594:	01010113          	addi	sp,sp,16
    80006598:	00008067          	ret

000000008000659c <acquire>:
    8000659c:	fe010113          	addi	sp,sp,-32
    800065a0:	00813823          	sd	s0,16(sp)
    800065a4:	00913423          	sd	s1,8(sp)
    800065a8:	00113c23          	sd	ra,24(sp)
    800065ac:	01213023          	sd	s2,0(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	00050493          	mv	s1,a0
    800065b8:	10002973          	csrr	s2,sstatus
    800065bc:	100027f3          	csrr	a5,sstatus
    800065c0:	ffd7f793          	andi	a5,a5,-3
    800065c4:	10079073          	csrw	sstatus,a5
    800065c8:	fffff097          	auipc	ra,0xfffff
    800065cc:	8e4080e7          	jalr	-1820(ra) # 80004eac <mycpu>
    800065d0:	07852783          	lw	a5,120(a0)
    800065d4:	06078e63          	beqz	a5,80006650 <acquire+0xb4>
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	8d4080e7          	jalr	-1836(ra) # 80004eac <mycpu>
    800065e0:	07852783          	lw	a5,120(a0)
    800065e4:	0004a703          	lw	a4,0(s1)
    800065e8:	0017879b          	addiw	a5,a5,1
    800065ec:	06f52c23          	sw	a5,120(a0)
    800065f0:	04071063          	bnez	a4,80006630 <acquire+0x94>
    800065f4:	00100713          	li	a4,1
    800065f8:	00070793          	mv	a5,a4
    800065fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006600:	0007879b          	sext.w	a5,a5
    80006604:	fe079ae3          	bnez	a5,800065f8 <acquire+0x5c>
    80006608:	0ff0000f          	fence
    8000660c:	fffff097          	auipc	ra,0xfffff
    80006610:	8a0080e7          	jalr	-1888(ra) # 80004eac <mycpu>
    80006614:	01813083          	ld	ra,24(sp)
    80006618:	01013403          	ld	s0,16(sp)
    8000661c:	00a4b823          	sd	a0,16(s1)
    80006620:	00013903          	ld	s2,0(sp)
    80006624:	00813483          	ld	s1,8(sp)
    80006628:	02010113          	addi	sp,sp,32
    8000662c:	00008067          	ret
    80006630:	0104b903          	ld	s2,16(s1)
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	878080e7          	jalr	-1928(ra) # 80004eac <mycpu>
    8000663c:	faa91ce3          	bne	s2,a0,800065f4 <acquire+0x58>
    80006640:	00001517          	auipc	a0,0x1
    80006644:	eb850513          	addi	a0,a0,-328 # 800074f8 <digits+0x20>
    80006648:	fffff097          	auipc	ra,0xfffff
    8000664c:	224080e7          	jalr	548(ra) # 8000586c <panic>
    80006650:	00195913          	srli	s2,s2,0x1
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	858080e7          	jalr	-1960(ra) # 80004eac <mycpu>
    8000665c:	00197913          	andi	s2,s2,1
    80006660:	07252e23          	sw	s2,124(a0)
    80006664:	f75ff06f          	j	800065d8 <acquire+0x3c>

0000000080006668 <release>:
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00113c23          	sd	ra,24(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	01213023          	sd	s2,0(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	00052783          	lw	a5,0(a0)
    80006684:	00079a63          	bnez	a5,80006698 <release+0x30>
    80006688:	00001517          	auipc	a0,0x1
    8000668c:	e7850513          	addi	a0,a0,-392 # 80007500 <digits+0x28>
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	1dc080e7          	jalr	476(ra) # 8000586c <panic>
    80006698:	01053903          	ld	s2,16(a0)
    8000669c:	00050493          	mv	s1,a0
    800066a0:	fffff097          	auipc	ra,0xfffff
    800066a4:	80c080e7          	jalr	-2036(ra) # 80004eac <mycpu>
    800066a8:	fea910e3          	bne	s2,a0,80006688 <release+0x20>
    800066ac:	0004b823          	sd	zero,16(s1)
    800066b0:	0ff0000f          	fence
    800066b4:	0f50000f          	fence	iorw,ow
    800066b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800066bc:	ffffe097          	auipc	ra,0xffffe
    800066c0:	7f0080e7          	jalr	2032(ra) # 80004eac <mycpu>
    800066c4:	100027f3          	csrr	a5,sstatus
    800066c8:	0027f793          	andi	a5,a5,2
    800066cc:	04079a63          	bnez	a5,80006720 <release+0xb8>
    800066d0:	07852783          	lw	a5,120(a0)
    800066d4:	02f05e63          	blez	a5,80006710 <release+0xa8>
    800066d8:	fff7871b          	addiw	a4,a5,-1
    800066dc:	06e52c23          	sw	a4,120(a0)
    800066e0:	00071c63          	bnez	a4,800066f8 <release+0x90>
    800066e4:	07c52783          	lw	a5,124(a0)
    800066e8:	00078863          	beqz	a5,800066f8 <release+0x90>
    800066ec:	100027f3          	csrr	a5,sstatus
    800066f0:	0027e793          	ori	a5,a5,2
    800066f4:	10079073          	csrw	sstatus,a5
    800066f8:	01813083          	ld	ra,24(sp)
    800066fc:	01013403          	ld	s0,16(sp)
    80006700:	00813483          	ld	s1,8(sp)
    80006704:	00013903          	ld	s2,0(sp)
    80006708:	02010113          	addi	sp,sp,32
    8000670c:	00008067          	ret
    80006710:	00001517          	auipc	a0,0x1
    80006714:	e1050513          	addi	a0,a0,-496 # 80007520 <digits+0x48>
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	154080e7          	jalr	340(ra) # 8000586c <panic>
    80006720:	00001517          	auipc	a0,0x1
    80006724:	de850513          	addi	a0,a0,-536 # 80007508 <digits+0x30>
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	144080e7          	jalr	324(ra) # 8000586c <panic>

0000000080006730 <holding>:
    80006730:	00052783          	lw	a5,0(a0)
    80006734:	00079663          	bnez	a5,80006740 <holding+0x10>
    80006738:	00000513          	li	a0,0
    8000673c:	00008067          	ret
    80006740:	fe010113          	addi	sp,sp,-32
    80006744:	00813823          	sd	s0,16(sp)
    80006748:	00913423          	sd	s1,8(sp)
    8000674c:	00113c23          	sd	ra,24(sp)
    80006750:	02010413          	addi	s0,sp,32
    80006754:	01053483          	ld	s1,16(a0)
    80006758:	ffffe097          	auipc	ra,0xffffe
    8000675c:	754080e7          	jalr	1876(ra) # 80004eac <mycpu>
    80006760:	01813083          	ld	ra,24(sp)
    80006764:	01013403          	ld	s0,16(sp)
    80006768:	40a48533          	sub	a0,s1,a0
    8000676c:	00153513          	seqz	a0,a0
    80006770:	00813483          	ld	s1,8(sp)
    80006774:	02010113          	addi	sp,sp,32
    80006778:	00008067          	ret

000000008000677c <push_off>:
    8000677c:	fe010113          	addi	sp,sp,-32
    80006780:	00813823          	sd	s0,16(sp)
    80006784:	00113c23          	sd	ra,24(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	02010413          	addi	s0,sp,32
    80006790:	100024f3          	csrr	s1,sstatus
    80006794:	100027f3          	csrr	a5,sstatus
    80006798:	ffd7f793          	andi	a5,a5,-3
    8000679c:	10079073          	csrw	sstatus,a5
    800067a0:	ffffe097          	auipc	ra,0xffffe
    800067a4:	70c080e7          	jalr	1804(ra) # 80004eac <mycpu>
    800067a8:	07852783          	lw	a5,120(a0)
    800067ac:	02078663          	beqz	a5,800067d8 <push_off+0x5c>
    800067b0:	ffffe097          	auipc	ra,0xffffe
    800067b4:	6fc080e7          	jalr	1788(ra) # 80004eac <mycpu>
    800067b8:	07852783          	lw	a5,120(a0)
    800067bc:	01813083          	ld	ra,24(sp)
    800067c0:	01013403          	ld	s0,16(sp)
    800067c4:	0017879b          	addiw	a5,a5,1
    800067c8:	06f52c23          	sw	a5,120(a0)
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	02010113          	addi	sp,sp,32
    800067d4:	00008067          	ret
    800067d8:	0014d493          	srli	s1,s1,0x1
    800067dc:	ffffe097          	auipc	ra,0xffffe
    800067e0:	6d0080e7          	jalr	1744(ra) # 80004eac <mycpu>
    800067e4:	0014f493          	andi	s1,s1,1
    800067e8:	06952e23          	sw	s1,124(a0)
    800067ec:	fc5ff06f          	j	800067b0 <push_off+0x34>

00000000800067f0 <pop_off>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813023          	sd	s0,0(sp)
    800067f8:	00113423          	sd	ra,8(sp)
    800067fc:	01010413          	addi	s0,sp,16
    80006800:	ffffe097          	auipc	ra,0xffffe
    80006804:	6ac080e7          	jalr	1708(ra) # 80004eac <mycpu>
    80006808:	100027f3          	csrr	a5,sstatus
    8000680c:	0027f793          	andi	a5,a5,2
    80006810:	04079663          	bnez	a5,8000685c <pop_off+0x6c>
    80006814:	07852783          	lw	a5,120(a0)
    80006818:	02f05a63          	blez	a5,8000684c <pop_off+0x5c>
    8000681c:	fff7871b          	addiw	a4,a5,-1
    80006820:	06e52c23          	sw	a4,120(a0)
    80006824:	00071c63          	bnez	a4,8000683c <pop_off+0x4c>
    80006828:	07c52783          	lw	a5,124(a0)
    8000682c:	00078863          	beqz	a5,8000683c <pop_off+0x4c>
    80006830:	100027f3          	csrr	a5,sstatus
    80006834:	0027e793          	ori	a5,a5,2
    80006838:	10079073          	csrw	sstatus,a5
    8000683c:	00813083          	ld	ra,8(sp)
    80006840:	00013403          	ld	s0,0(sp)
    80006844:	01010113          	addi	sp,sp,16
    80006848:	00008067          	ret
    8000684c:	00001517          	auipc	a0,0x1
    80006850:	cd450513          	addi	a0,a0,-812 # 80007520 <digits+0x48>
    80006854:	fffff097          	auipc	ra,0xfffff
    80006858:	018080e7          	jalr	24(ra) # 8000586c <panic>
    8000685c:	00001517          	auipc	a0,0x1
    80006860:	cac50513          	addi	a0,a0,-852 # 80007508 <digits+0x30>
    80006864:	fffff097          	auipc	ra,0xfffff
    80006868:	008080e7          	jalr	8(ra) # 8000586c <panic>

000000008000686c <push_on>:
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00813823          	sd	s0,16(sp)
    80006874:	00113c23          	sd	ra,24(sp)
    80006878:	00913423          	sd	s1,8(sp)
    8000687c:	02010413          	addi	s0,sp,32
    80006880:	100024f3          	csrr	s1,sstatus
    80006884:	100027f3          	csrr	a5,sstatus
    80006888:	0027e793          	ori	a5,a5,2
    8000688c:	10079073          	csrw	sstatus,a5
    80006890:	ffffe097          	auipc	ra,0xffffe
    80006894:	61c080e7          	jalr	1564(ra) # 80004eac <mycpu>
    80006898:	07852783          	lw	a5,120(a0)
    8000689c:	02078663          	beqz	a5,800068c8 <push_on+0x5c>
    800068a0:	ffffe097          	auipc	ra,0xffffe
    800068a4:	60c080e7          	jalr	1548(ra) # 80004eac <mycpu>
    800068a8:	07852783          	lw	a5,120(a0)
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	0017879b          	addiw	a5,a5,1
    800068b8:	06f52c23          	sw	a5,120(a0)
    800068bc:	00813483          	ld	s1,8(sp)
    800068c0:	02010113          	addi	sp,sp,32
    800068c4:	00008067          	ret
    800068c8:	0014d493          	srli	s1,s1,0x1
    800068cc:	ffffe097          	auipc	ra,0xffffe
    800068d0:	5e0080e7          	jalr	1504(ra) # 80004eac <mycpu>
    800068d4:	0014f493          	andi	s1,s1,1
    800068d8:	06952e23          	sw	s1,124(a0)
    800068dc:	fc5ff06f          	j	800068a0 <push_on+0x34>

00000000800068e0 <pop_on>:
    800068e0:	ff010113          	addi	sp,sp,-16
    800068e4:	00813023          	sd	s0,0(sp)
    800068e8:	00113423          	sd	ra,8(sp)
    800068ec:	01010413          	addi	s0,sp,16
    800068f0:	ffffe097          	auipc	ra,0xffffe
    800068f4:	5bc080e7          	jalr	1468(ra) # 80004eac <mycpu>
    800068f8:	100027f3          	csrr	a5,sstatus
    800068fc:	0027f793          	andi	a5,a5,2
    80006900:	04078463          	beqz	a5,80006948 <pop_on+0x68>
    80006904:	07852783          	lw	a5,120(a0)
    80006908:	02f05863          	blez	a5,80006938 <pop_on+0x58>
    8000690c:	fff7879b          	addiw	a5,a5,-1
    80006910:	06f52c23          	sw	a5,120(a0)
    80006914:	07853783          	ld	a5,120(a0)
    80006918:	00079863          	bnez	a5,80006928 <pop_on+0x48>
    8000691c:	100027f3          	csrr	a5,sstatus
    80006920:	ffd7f793          	andi	a5,a5,-3
    80006924:	10079073          	csrw	sstatus,a5
    80006928:	00813083          	ld	ra,8(sp)
    8000692c:	00013403          	ld	s0,0(sp)
    80006930:	01010113          	addi	sp,sp,16
    80006934:	00008067          	ret
    80006938:	00001517          	auipc	a0,0x1
    8000693c:	c1050513          	addi	a0,a0,-1008 # 80007548 <digits+0x70>
    80006940:	fffff097          	auipc	ra,0xfffff
    80006944:	f2c080e7          	jalr	-212(ra) # 8000586c <panic>
    80006948:	00001517          	auipc	a0,0x1
    8000694c:	be050513          	addi	a0,a0,-1056 # 80007528 <digits+0x50>
    80006950:	fffff097          	auipc	ra,0xfffff
    80006954:	f1c080e7          	jalr	-228(ra) # 8000586c <panic>

0000000080006958 <__memset>:
    80006958:	ff010113          	addi	sp,sp,-16
    8000695c:	00813423          	sd	s0,8(sp)
    80006960:	01010413          	addi	s0,sp,16
    80006964:	1a060e63          	beqz	a2,80006b20 <__memset+0x1c8>
    80006968:	40a007b3          	neg	a5,a0
    8000696c:	0077f793          	andi	a5,a5,7
    80006970:	00778693          	addi	a3,a5,7
    80006974:	00b00813          	li	a6,11
    80006978:	0ff5f593          	andi	a1,a1,255
    8000697c:	fff6071b          	addiw	a4,a2,-1
    80006980:	1b06e663          	bltu	a3,a6,80006b2c <__memset+0x1d4>
    80006984:	1cd76463          	bltu	a4,a3,80006b4c <__memset+0x1f4>
    80006988:	1a078e63          	beqz	a5,80006b44 <__memset+0x1ec>
    8000698c:	00b50023          	sb	a1,0(a0)
    80006990:	00100713          	li	a4,1
    80006994:	1ae78463          	beq	a5,a4,80006b3c <__memset+0x1e4>
    80006998:	00b500a3          	sb	a1,1(a0)
    8000699c:	00200713          	li	a4,2
    800069a0:	1ae78a63          	beq	a5,a4,80006b54 <__memset+0x1fc>
    800069a4:	00b50123          	sb	a1,2(a0)
    800069a8:	00300713          	li	a4,3
    800069ac:	18e78463          	beq	a5,a4,80006b34 <__memset+0x1dc>
    800069b0:	00b501a3          	sb	a1,3(a0)
    800069b4:	00400713          	li	a4,4
    800069b8:	1ae78263          	beq	a5,a4,80006b5c <__memset+0x204>
    800069bc:	00b50223          	sb	a1,4(a0)
    800069c0:	00500713          	li	a4,5
    800069c4:	1ae78063          	beq	a5,a4,80006b64 <__memset+0x20c>
    800069c8:	00b502a3          	sb	a1,5(a0)
    800069cc:	00700713          	li	a4,7
    800069d0:	18e79e63          	bne	a5,a4,80006b6c <__memset+0x214>
    800069d4:	00b50323          	sb	a1,6(a0)
    800069d8:	00700e93          	li	t4,7
    800069dc:	00859713          	slli	a4,a1,0x8
    800069e0:	00e5e733          	or	a4,a1,a4
    800069e4:	01059e13          	slli	t3,a1,0x10
    800069e8:	01c76e33          	or	t3,a4,t3
    800069ec:	01859313          	slli	t1,a1,0x18
    800069f0:	006e6333          	or	t1,t3,t1
    800069f4:	02059893          	slli	a7,a1,0x20
    800069f8:	40f60e3b          	subw	t3,a2,a5
    800069fc:	011368b3          	or	a7,t1,a7
    80006a00:	02859813          	slli	a6,a1,0x28
    80006a04:	0108e833          	or	a6,a7,a6
    80006a08:	03059693          	slli	a3,a1,0x30
    80006a0c:	003e589b          	srliw	a7,t3,0x3
    80006a10:	00d866b3          	or	a3,a6,a3
    80006a14:	03859713          	slli	a4,a1,0x38
    80006a18:	00389813          	slli	a6,a7,0x3
    80006a1c:	00f507b3          	add	a5,a0,a5
    80006a20:	00e6e733          	or	a4,a3,a4
    80006a24:	000e089b          	sext.w	a7,t3
    80006a28:	00f806b3          	add	a3,a6,a5
    80006a2c:	00e7b023          	sd	a4,0(a5)
    80006a30:	00878793          	addi	a5,a5,8
    80006a34:	fed79ce3          	bne	a5,a3,80006a2c <__memset+0xd4>
    80006a38:	ff8e7793          	andi	a5,t3,-8
    80006a3c:	0007871b          	sext.w	a4,a5
    80006a40:	01d787bb          	addw	a5,a5,t4
    80006a44:	0ce88e63          	beq	a7,a4,80006b20 <__memset+0x1c8>
    80006a48:	00f50733          	add	a4,a0,a5
    80006a4c:	00b70023          	sb	a1,0(a4)
    80006a50:	0017871b          	addiw	a4,a5,1
    80006a54:	0cc77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006a58:	00e50733          	add	a4,a0,a4
    80006a5c:	00b70023          	sb	a1,0(a4)
    80006a60:	0027871b          	addiw	a4,a5,2
    80006a64:	0ac77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006a68:	00e50733          	add	a4,a0,a4
    80006a6c:	00b70023          	sb	a1,0(a4)
    80006a70:	0037871b          	addiw	a4,a5,3
    80006a74:	0ac77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006a78:	00e50733          	add	a4,a0,a4
    80006a7c:	00b70023          	sb	a1,0(a4)
    80006a80:	0047871b          	addiw	a4,a5,4
    80006a84:	08c77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006a88:	00e50733          	add	a4,a0,a4
    80006a8c:	00b70023          	sb	a1,0(a4)
    80006a90:	0057871b          	addiw	a4,a5,5
    80006a94:	08c77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006a98:	00e50733          	add	a4,a0,a4
    80006a9c:	00b70023          	sb	a1,0(a4)
    80006aa0:	0067871b          	addiw	a4,a5,6
    80006aa4:	06c77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006aa8:	00e50733          	add	a4,a0,a4
    80006aac:	00b70023          	sb	a1,0(a4)
    80006ab0:	0077871b          	addiw	a4,a5,7
    80006ab4:	06c77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006ab8:	00e50733          	add	a4,a0,a4
    80006abc:	00b70023          	sb	a1,0(a4)
    80006ac0:	0087871b          	addiw	a4,a5,8
    80006ac4:	04c77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006ac8:	00e50733          	add	a4,a0,a4
    80006acc:	00b70023          	sb	a1,0(a4)
    80006ad0:	0097871b          	addiw	a4,a5,9
    80006ad4:	04c77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006ad8:	00e50733          	add	a4,a0,a4
    80006adc:	00b70023          	sb	a1,0(a4)
    80006ae0:	00a7871b          	addiw	a4,a5,10
    80006ae4:	02c77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006ae8:	00e50733          	add	a4,a0,a4
    80006aec:	00b70023          	sb	a1,0(a4)
    80006af0:	00b7871b          	addiw	a4,a5,11
    80006af4:	02c77663          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006af8:	00e50733          	add	a4,a0,a4
    80006afc:	00b70023          	sb	a1,0(a4)
    80006b00:	00c7871b          	addiw	a4,a5,12
    80006b04:	00c77e63          	bgeu	a4,a2,80006b20 <__memset+0x1c8>
    80006b08:	00e50733          	add	a4,a0,a4
    80006b0c:	00b70023          	sb	a1,0(a4)
    80006b10:	00d7879b          	addiw	a5,a5,13
    80006b14:	00c7f663          	bgeu	a5,a2,80006b20 <__memset+0x1c8>
    80006b18:	00f507b3          	add	a5,a0,a5
    80006b1c:	00b78023          	sb	a1,0(a5)
    80006b20:	00813403          	ld	s0,8(sp)
    80006b24:	01010113          	addi	sp,sp,16
    80006b28:	00008067          	ret
    80006b2c:	00b00693          	li	a3,11
    80006b30:	e55ff06f          	j	80006984 <__memset+0x2c>
    80006b34:	00300e93          	li	t4,3
    80006b38:	ea5ff06f          	j	800069dc <__memset+0x84>
    80006b3c:	00100e93          	li	t4,1
    80006b40:	e9dff06f          	j	800069dc <__memset+0x84>
    80006b44:	00000e93          	li	t4,0
    80006b48:	e95ff06f          	j	800069dc <__memset+0x84>
    80006b4c:	00000793          	li	a5,0
    80006b50:	ef9ff06f          	j	80006a48 <__memset+0xf0>
    80006b54:	00200e93          	li	t4,2
    80006b58:	e85ff06f          	j	800069dc <__memset+0x84>
    80006b5c:	00400e93          	li	t4,4
    80006b60:	e7dff06f          	j	800069dc <__memset+0x84>
    80006b64:	00500e93          	li	t4,5
    80006b68:	e75ff06f          	j	800069dc <__memset+0x84>
    80006b6c:	00600e93          	li	t4,6
    80006b70:	e6dff06f          	j	800069dc <__memset+0x84>

0000000080006b74 <__memmove>:
    80006b74:	ff010113          	addi	sp,sp,-16
    80006b78:	00813423          	sd	s0,8(sp)
    80006b7c:	01010413          	addi	s0,sp,16
    80006b80:	0e060863          	beqz	a2,80006c70 <__memmove+0xfc>
    80006b84:	fff6069b          	addiw	a3,a2,-1
    80006b88:	0006881b          	sext.w	a6,a3
    80006b8c:	0ea5e863          	bltu	a1,a0,80006c7c <__memmove+0x108>
    80006b90:	00758713          	addi	a4,a1,7
    80006b94:	00a5e7b3          	or	a5,a1,a0
    80006b98:	40a70733          	sub	a4,a4,a0
    80006b9c:	0077f793          	andi	a5,a5,7
    80006ba0:	00f73713          	sltiu	a4,a4,15
    80006ba4:	00174713          	xori	a4,a4,1
    80006ba8:	0017b793          	seqz	a5,a5
    80006bac:	00e7f7b3          	and	a5,a5,a4
    80006bb0:	10078863          	beqz	a5,80006cc0 <__memmove+0x14c>
    80006bb4:	00900793          	li	a5,9
    80006bb8:	1107f463          	bgeu	a5,a6,80006cc0 <__memmove+0x14c>
    80006bbc:	0036581b          	srliw	a6,a2,0x3
    80006bc0:	fff8081b          	addiw	a6,a6,-1
    80006bc4:	02081813          	slli	a6,a6,0x20
    80006bc8:	01d85893          	srli	a7,a6,0x1d
    80006bcc:	00858813          	addi	a6,a1,8
    80006bd0:	00058793          	mv	a5,a1
    80006bd4:	00050713          	mv	a4,a0
    80006bd8:	01088833          	add	a6,a7,a6
    80006bdc:	0007b883          	ld	a7,0(a5)
    80006be0:	00878793          	addi	a5,a5,8
    80006be4:	00870713          	addi	a4,a4,8
    80006be8:	ff173c23          	sd	a7,-8(a4)
    80006bec:	ff0798e3          	bne	a5,a6,80006bdc <__memmove+0x68>
    80006bf0:	ff867713          	andi	a4,a2,-8
    80006bf4:	02071793          	slli	a5,a4,0x20
    80006bf8:	0207d793          	srli	a5,a5,0x20
    80006bfc:	00f585b3          	add	a1,a1,a5
    80006c00:	40e686bb          	subw	a3,a3,a4
    80006c04:	00f507b3          	add	a5,a0,a5
    80006c08:	06e60463          	beq	a2,a4,80006c70 <__memmove+0xfc>
    80006c0c:	0005c703          	lbu	a4,0(a1)
    80006c10:	00e78023          	sb	a4,0(a5)
    80006c14:	04068e63          	beqz	a3,80006c70 <__memmove+0xfc>
    80006c18:	0015c603          	lbu	a2,1(a1)
    80006c1c:	00100713          	li	a4,1
    80006c20:	00c780a3          	sb	a2,1(a5)
    80006c24:	04e68663          	beq	a3,a4,80006c70 <__memmove+0xfc>
    80006c28:	0025c603          	lbu	a2,2(a1)
    80006c2c:	00200713          	li	a4,2
    80006c30:	00c78123          	sb	a2,2(a5)
    80006c34:	02e68e63          	beq	a3,a4,80006c70 <__memmove+0xfc>
    80006c38:	0035c603          	lbu	a2,3(a1)
    80006c3c:	00300713          	li	a4,3
    80006c40:	00c781a3          	sb	a2,3(a5)
    80006c44:	02e68663          	beq	a3,a4,80006c70 <__memmove+0xfc>
    80006c48:	0045c603          	lbu	a2,4(a1)
    80006c4c:	00400713          	li	a4,4
    80006c50:	00c78223          	sb	a2,4(a5)
    80006c54:	00e68e63          	beq	a3,a4,80006c70 <__memmove+0xfc>
    80006c58:	0055c603          	lbu	a2,5(a1)
    80006c5c:	00500713          	li	a4,5
    80006c60:	00c782a3          	sb	a2,5(a5)
    80006c64:	00e68663          	beq	a3,a4,80006c70 <__memmove+0xfc>
    80006c68:	0065c703          	lbu	a4,6(a1)
    80006c6c:	00e78323          	sb	a4,6(a5)
    80006c70:	00813403          	ld	s0,8(sp)
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00008067          	ret
    80006c7c:	02061713          	slli	a4,a2,0x20
    80006c80:	02075713          	srli	a4,a4,0x20
    80006c84:	00e587b3          	add	a5,a1,a4
    80006c88:	f0f574e3          	bgeu	a0,a5,80006b90 <__memmove+0x1c>
    80006c8c:	02069613          	slli	a2,a3,0x20
    80006c90:	02065613          	srli	a2,a2,0x20
    80006c94:	fff64613          	not	a2,a2
    80006c98:	00e50733          	add	a4,a0,a4
    80006c9c:	00c78633          	add	a2,a5,a2
    80006ca0:	fff7c683          	lbu	a3,-1(a5)
    80006ca4:	fff78793          	addi	a5,a5,-1
    80006ca8:	fff70713          	addi	a4,a4,-1
    80006cac:	00d70023          	sb	a3,0(a4)
    80006cb0:	fec798e3          	bne	a5,a2,80006ca0 <__memmove+0x12c>
    80006cb4:	00813403          	ld	s0,8(sp)
    80006cb8:	01010113          	addi	sp,sp,16
    80006cbc:	00008067          	ret
    80006cc0:	02069713          	slli	a4,a3,0x20
    80006cc4:	02075713          	srli	a4,a4,0x20
    80006cc8:	00170713          	addi	a4,a4,1
    80006ccc:	00e50733          	add	a4,a0,a4
    80006cd0:	00050793          	mv	a5,a0
    80006cd4:	0005c683          	lbu	a3,0(a1)
    80006cd8:	00178793          	addi	a5,a5,1
    80006cdc:	00158593          	addi	a1,a1,1
    80006ce0:	fed78fa3          	sb	a3,-1(a5)
    80006ce4:	fee798e3          	bne	a5,a4,80006cd4 <__memmove+0x160>
    80006ce8:	f89ff06f          	j	80006c70 <__memmove+0xfc>

0000000080006cec <__putc>:
    80006cec:	fe010113          	addi	sp,sp,-32
    80006cf0:	00813823          	sd	s0,16(sp)
    80006cf4:	00113c23          	sd	ra,24(sp)
    80006cf8:	02010413          	addi	s0,sp,32
    80006cfc:	00050793          	mv	a5,a0
    80006d00:	fef40593          	addi	a1,s0,-17
    80006d04:	00100613          	li	a2,1
    80006d08:	00000513          	li	a0,0
    80006d0c:	fef407a3          	sb	a5,-17(s0)
    80006d10:	fffff097          	auipc	ra,0xfffff
    80006d14:	b3c080e7          	jalr	-1220(ra) # 8000584c <console_write>
    80006d18:	01813083          	ld	ra,24(sp)
    80006d1c:	01013403          	ld	s0,16(sp)
    80006d20:	02010113          	addi	sp,sp,32
    80006d24:	00008067          	ret

0000000080006d28 <__getc>:
    80006d28:	fe010113          	addi	sp,sp,-32
    80006d2c:	00813823          	sd	s0,16(sp)
    80006d30:	00113c23          	sd	ra,24(sp)
    80006d34:	02010413          	addi	s0,sp,32
    80006d38:	fe840593          	addi	a1,s0,-24
    80006d3c:	00100613          	li	a2,1
    80006d40:	00000513          	li	a0,0
    80006d44:	fffff097          	auipc	ra,0xfffff
    80006d48:	ae8080e7          	jalr	-1304(ra) # 8000582c <console_read>
    80006d4c:	fe844503          	lbu	a0,-24(s0)
    80006d50:	01813083          	ld	ra,24(sp)
    80006d54:	01013403          	ld	s0,16(sp)
    80006d58:	02010113          	addi	sp,sp,32
    80006d5c:	00008067          	ret

0000000080006d60 <console_handler>:
    80006d60:	fe010113          	addi	sp,sp,-32
    80006d64:	00813823          	sd	s0,16(sp)
    80006d68:	00113c23          	sd	ra,24(sp)
    80006d6c:	00913423          	sd	s1,8(sp)
    80006d70:	02010413          	addi	s0,sp,32
    80006d74:	14202773          	csrr	a4,scause
    80006d78:	100027f3          	csrr	a5,sstatus
    80006d7c:	0027f793          	andi	a5,a5,2
    80006d80:	06079e63          	bnez	a5,80006dfc <console_handler+0x9c>
    80006d84:	00074c63          	bltz	a4,80006d9c <console_handler+0x3c>
    80006d88:	01813083          	ld	ra,24(sp)
    80006d8c:	01013403          	ld	s0,16(sp)
    80006d90:	00813483          	ld	s1,8(sp)
    80006d94:	02010113          	addi	sp,sp,32
    80006d98:	00008067          	ret
    80006d9c:	0ff77713          	andi	a4,a4,255
    80006da0:	00900793          	li	a5,9
    80006da4:	fef712e3          	bne	a4,a5,80006d88 <console_handler+0x28>
    80006da8:	ffffe097          	auipc	ra,0xffffe
    80006dac:	6dc080e7          	jalr	1756(ra) # 80005484 <plic_claim>
    80006db0:	00a00793          	li	a5,10
    80006db4:	00050493          	mv	s1,a0
    80006db8:	02f50c63          	beq	a0,a5,80006df0 <console_handler+0x90>
    80006dbc:	fc0506e3          	beqz	a0,80006d88 <console_handler+0x28>
    80006dc0:	00050593          	mv	a1,a0
    80006dc4:	00000517          	auipc	a0,0x0
    80006dc8:	68c50513          	addi	a0,a0,1676 # 80007450 <_ZL6digits+0xf8>
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	afc080e7          	jalr	-1284(ra) # 800058c8 <__printf>
    80006dd4:	01013403          	ld	s0,16(sp)
    80006dd8:	01813083          	ld	ra,24(sp)
    80006ddc:	00048513          	mv	a0,s1
    80006de0:	00813483          	ld	s1,8(sp)
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	ffffe317          	auipc	t1,0xffffe
    80006dec:	6d430067          	jr	1748(t1) # 800054bc <plic_complete>
    80006df0:	fffff097          	auipc	ra,0xfffff
    80006df4:	3e0080e7          	jalr	992(ra) # 800061d0 <uartintr>
    80006df8:	fddff06f          	j	80006dd4 <console_handler+0x74>
    80006dfc:	00000517          	auipc	a0,0x0
    80006e00:	75450513          	addi	a0,a0,1876 # 80007550 <digits+0x78>
    80006e04:	fffff097          	auipc	ra,0xfffff
    80006e08:	a68080e7          	jalr	-1432(ra) # 8000586c <panic>
	...
