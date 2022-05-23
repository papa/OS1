
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	87013103          	ld	sp,-1936(sp) # 8000b870 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	719050ef          	jal	ra,80005f34 <start>

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
    80001080:	5b4020ef          	jal	ra,80003634 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	090080e7          	jalr	144(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    800014a0:	060080e7          	jalr	96(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    800014c0:	040080e7          	jalr	64(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	0a4080e7          	jalr	164(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	cb850513          	addi	a0,a0,-840 # 80009188 <CONSOLE_STATUS+0x178>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	024080e7          	jalr	36(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001538:	fc8080e7          	jalr	-56(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001558:	fa8080e7          	jalr	-88(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	00c080e7          	jalr	12(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	c2050513          	addi	a0,a0,-992 # 80009188 <CONSOLE_STATUS+0x178>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	f8c080e7          	jalr	-116(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    800015e0:	f20080e7          	jalr	-224(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	f84080e7          	jalr	-124(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
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
    8000162c:	ed4080e7          	jalr	-300(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001658:	ea8080e7          	jalr	-344(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	f0c080e7          	jalr	-244(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	b2050513          	addi	a0,a0,-1248 # 80009188 <CONSOLE_STATUS+0x178>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	e8c080e7          	jalr	-372(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    800016dc:	e24080e7          	jalr	-476(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    800016f8:	1dc90913          	addi	s2,s2,476 # 8000b8d0 <_ZL2s1>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	b94080e7          	jalr	-1132(ra) # 80003294 <_ZN9Semaphore4waitEv>
        __putc('1');
    80001708:	03100513          	li	a0,49
    8000170c:	00007097          	auipc	ra,0x7
    80001710:	8f0080e7          	jalr	-1808(ra) # 80007ffc <__putc>
        __putc('\n');
    80001714:	00a00513          	li	a0,10
    80001718:	00007097          	auipc	ra,0x7
    8000171c:	8e4080e7          	jalr	-1820(ra) # 80007ffc <__putc>
        s2->signal();
    80001720:	00893503          	ld	a0,8(s2)
    80001724:	00002097          	auipc	ra,0x2
    80001728:	bf4080e7          	jalr	-1036(ra) # 80003318 <_ZN9Semaphore6signalEv>
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
    80001768:	d98080e7          	jalr	-616(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001784:	15090913          	addi	s2,s2,336 # 8000b8d0 <_ZL2s1>
    80001788:	00893503          	ld	a0,8(s2)
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	b08080e7          	jalr	-1272(ra) # 80003294 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001794:	03200513          	li	a0,50
    80001798:	00007097          	auipc	ra,0x7
    8000179c:	864080e7          	jalr	-1948(ra) # 80007ffc <__putc>
        __putc('\n');
    800017a0:	00a00513          	li	a0,10
    800017a4:	00007097          	auipc	ra,0x7
    800017a8:	858080e7          	jalr	-1960(ra) # 80007ffc <__putc>
        s3->signal();
    800017ac:	01093503          	ld	a0,16(s2)
    800017b0:	00002097          	auipc	ra,0x2
    800017b4:	b68080e7          	jalr	-1176(ra) # 80003318 <_ZN9Semaphore6signalEv>
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
    800017f4:	d0c080e7          	jalr	-756(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001810:	0c490913          	addi	s2,s2,196 # 8000b8d0 <_ZL2s1>
    80001814:	01093503          	ld	a0,16(s2)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	a7c080e7          	jalr	-1412(ra) # 80003294 <_ZN9Semaphore4waitEv>
        __putc('3');
    80001820:	03300513          	li	a0,51
    80001824:	00006097          	auipc	ra,0x6
    80001828:	7d8080e7          	jalr	2008(ra) # 80007ffc <__putc>
        __putc('\n');
    8000182c:	00a00513          	li	a0,10
    80001830:	00006097          	auipc	ra,0x6
    80001834:	7cc080e7          	jalr	1996(ra) # 80007ffc <__putc>
        s1->signal();
    80001838:	00093503          	ld	a0,0(s2)
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	adc080e7          	jalr	-1316(ra) # 80003318 <_ZN9Semaphore6signalEv>
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
    8000187c:	818080e7          	jalr	-2024(ra) # 80003090 <_Znwm>
    80001880:	00050493          	mv	s1,a0
    80001884:	00000613          	li	a2,0
    80001888:	00000597          	auipc	a1,0x0
    8000188c:	bf858593          	addi	a1,a1,-1032 # 80001480 <_Z15thread1FunctionPv>
    80001890:	00002097          	auipc	ra,0x2
    80001894:	99c080e7          	jalr	-1636(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001898:	00048513          	mv	a0,s1
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	8c4080e7          	jalr	-1852(ra) # 80003160 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018a4:	02000513          	li	a0,32
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	7e8080e7          	jalr	2024(ra) # 80003090 <_Znwm>
    800018b0:	00050913          	mv	s2,a0
    800018b4:	00000613          	li	a2,0
    800018b8:	00000597          	auipc	a1,0x0
    800018bc:	c6058593          	addi	a1,a1,-928 # 80001518 <_Z15thread2FunctionPv>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	96c080e7          	jalr	-1684(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00002097          	auipc	ra,0x2
    800018d0:	894080e7          	jalr	-1900(ra) # 80003160 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	ba0080e7          	jalr	-1120(ra) # 80003474 <_ZN5Riscv16enableInterruptsEv>
    800018dc:	01c0006f          	j	800018f8 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800018e0:	00007517          	auipc	a0,0x7
    800018e4:	7b850513          	addi	a0,a0,1976 # 80009098 <CONSOLE_STATUS+0x88>
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	c14080e7          	jalr	-1004(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001924:	bdc080e7          	jalr	-1060(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	b6c080e7          	jalr	-1172(ra) # 80003494 <_ZN5Riscv17disableInterruptsEv>
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
    80001950:	00001097          	auipc	ra,0x1
    80001954:	768080e7          	jalr	1896(ra) # 800030b8 <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	10c080e7          	jalr	268(ra) # 8000ca68 <_Unwind_Resume>
    80001964:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	00090513          	mv	a0,s2
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	74c080e7          	jalr	1868(ra) # 800030b8 <_ZdlPv>
    80001974:	00048513          	mv	a0,s1
    80001978:	0000b097          	auipc	ra,0xb
    8000197c:	0f0080e7          	jalr	240(ra) # 8000ca68 <_Unwind_Resume>

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
    800019a0:	6f4080e7          	jalr	1780(ra) # 80003090 <_Znwm>
    800019a4:	00050493          	mv	s1,a0
    800019a8:	00000613          	li	a2,0
    800019ac:	00000597          	auipc	a1,0x0
    800019b0:	aa858593          	addi	a1,a1,-1368 # 80001454 <_Z4idlePv>
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	878080e7          	jalr	-1928(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	7a0080e7          	jalr	1952(ra) # 80003160 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019c8:	02000513          	li	a0,32
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	6c4080e7          	jalr	1732(ra) # 80003090 <_Znwm>
    800019d4:	00050913          	mv	s2,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	aa458593          	addi	a1,a1,-1372 # 80001480 <_Z15thread1FunctionPv>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	848080e7          	jalr	-1976(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019ec:	00090513          	mv	a0,s2
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	770080e7          	jalr	1904(ra) # 80003160 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019f8:	02000513          	li	a0,32
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	694080e7          	jalr	1684(ra) # 80003090 <_Znwm>
    80001a04:	00050913          	mv	s2,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	c0058593          	addi	a1,a1,-1024 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	818080e7          	jalr	-2024(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	740080e7          	jalr	1856(ra) # 80003160 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	a4c080e7          	jalr	-1460(ra) # 80003474 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    80001a30:	0084b783          	ld	a5,8(s1)
    80001a34:	0387a703          	lw	a4,56(a5)
    80001a38:	00300793          	li	a5,3
    80001a3c:	fef71ae3          	bne	a4,a5,80001a30 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	66850513          	addi	a0,a0,1640 # 800090a8 <CONSOLE_STATUS+0x98>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	ab4080e7          	jalr	-1356(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	a44080e7          	jalr	-1468(ra) # 80003494 <_ZN5Riscv17disableInterruptsEv>
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
    80001a7c:	640080e7          	jalr	1600(ra) # 800030b8 <_ZdlPv>
    80001a80:	00090513          	mv	a0,s2
    80001a84:	0000b097          	auipc	ra,0xb
    80001a88:	fe4080e7          	jalr	-28(ra) # 8000ca68 <_Unwind_Resume>
    80001a8c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	624080e7          	jalr	1572(ra) # 800030b8 <_ZdlPv>
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	0000b097          	auipc	ra,0xb
    80001aa4:	fc8080e7          	jalr	-56(ra) # 8000ca68 <_Unwind_Resume>
    80001aa8:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001aac:	00090513          	mv	a0,s2
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	608080e7          	jalr	1544(ra) # 800030b8 <_ZdlPv>
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	0000b097          	auipc	ra,0xb
    80001ac0:	fac080e7          	jalr	-84(ra) # 8000ca68 <_Unwind_Resume>

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
    80001ae4:	a1c080e7          	jalr	-1508(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001b28:	9d8080e7          	jalr	-1576(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001b7c:	984080e7          	jalr	-1660(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001bc4:	93c080e7          	jalr	-1732(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001c08:	8f8080e7          	jalr	-1800(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
            return;
    80001c0c:	f21ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	4b850513          	addi	a0,a0,1208 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	8e4080e7          	jalr	-1820(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001c40:	8c0080e7          	jalr	-1856(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c44:	0000a797          	auipc	a5,0xa
    80001c48:	c3c7b783          	ld	a5,-964(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c4c:	0007b503          	ld	a0,0(a5)
    80001c50:	0000a797          	auipc	a5,0xa
    80001c54:	c087b783          	ld	a5,-1016(a5) # 8000b858 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001c7c:	884080e7          	jalr	-1916(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret
        Riscv::printString("OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	43850513          	addi	a0,a0,1080 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	864080e7          	jalr	-1948(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001ccc:	834080e7          	jalr	-1996(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001d18:	858080e7          	jalr	-1960(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d1c:	00007517          	auipc	a0,0x7
    80001d20:	46c50513          	addi	a0,a0,1132 # 80009188 <CONSOLE_STATUS+0x178>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	7d8080e7          	jalr	2008(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d2c:	00291793          	slli	a5,s2,0x2
    80001d30:	01278933          	add	s2,a5,s2
    80001d34:	00191913          	slli	s2,s2,0x1
    80001d38:	03390863          	beq	s2,s3,80001d68 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	38450513          	addi	a0,a0,900 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	7b8080e7          	jalr	1976(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	78c080e7          	jalr	1932(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	768080e7          	jalr	1896(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	73c080e7          	jalr	1852(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        Riscv::printString("OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2f050513          	addi	a0,a0,752 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	71c080e7          	jalr	1820(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001e10:	6f0080e7          	jalr	1776(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001f24:	5dc080e7          	jalr	1500(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
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
    80001f6c:	96848493          	addi	s1,s1,-1688 # 8000b8d0 <_ZL2s1>
    80001f70:	0184b503          	ld	a0,24(s1)
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	320080e7          	jalr	800(ra) # 80003294 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo exec\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	19c50513          	addi	a0,a0,412 # 80009118 <CONSOLE_STATUS+0x108>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	578080e7          	jalr	1400(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    s22->signal();
    80001f8c:	0204b503          	ld	a0,32(s1)
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	388080e7          	jalr	904(ra) # 80003318 <_ZN9Semaphore6signalEv>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_Z4foo2v>:
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    s22->wait();
    80001fbc:	0000a517          	auipc	a0,0xa
    80001fc0:	93453503          	ld	a0,-1740(a0) # 8000b8f0 <_ZL3s22>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	2d0080e7          	jalr	720(ra) # 80003294 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo2 exec\n");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	15c50513          	addi	a0,a0,348 # 80009128 <CONSOLE_STATUS+0x118>
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	528080e7          	jalr	1320(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_Z2f2Pv>:
{
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    80002000:	00007517          	auipc	a0,0x7
    80002004:	13850513          	addi	a0,a0,312 # 80009138 <CONSOLE_STATUS+0x128>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	4f4080e7          	jalr	1268(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 1;br++)
    80002010:	00000493          	li	s1,0
    80002014:	00904a63          	bgtz	s1,80002028 <_Z2f2Pv+0x3c>
        foo2();
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	f94080e7          	jalr	-108(ra) # 80001fac <_Z4foo2v>
    for(int br = 0;br < 1;br++)
    80002020:	0014849b          	addiw	s1,s1,1
    80002024:	ff1ff06f          	j	80002014 <_Z2f2Pv+0x28>
}
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret

000000008000203c <_Z2f1Pv>:
{
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80002050:	00007517          	auipc	a0,0x7
    80002054:	0f850513          	addi	a0,a0,248 # 80009148 <CONSOLE_STATUS+0x138>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	4a4080e7          	jalr	1188(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 2;br++)
    80002060:	00000493          	li	s1,0
    80002064:	0100006f          	j	80002074 <_Z2f1Pv+0x38>
        foo();
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	eec080e7          	jalr	-276(ra) # 80001f54 <_Z3foov>
    for(int br = 0;br < 2;br++)
    80002070:	0014849b          	addiw	s1,s1,1
    80002074:	00100793          	li	a5,1
    80002078:	fe97d8e3          	bge	a5,s1,80002068 <_Z2f1Pv+0x2c>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret

0000000080002090 <_Z8semTest1v>:
{
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00113c23          	sd	ra,24(sp)
    80002098:	00813823          	sd	s0,16(sp)
    8000209c:	00913423          	sd	s1,8(sp)
    800020a0:	01213023          	sd	s2,0(sp)
    800020a4:	02010413          	addi	s0,sp,32
    mutex = new Semaphore(1);
    800020a8:	01000513          	li	a0,16
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	fe4080e7          	jalr	-28(ra) # 80003090 <_Znwm>
    800020b4:	00050913          	mv	s2,a0
    800020b8:	00100593          	li	a1,1
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	210080e7          	jalr	528(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    s11 = new Semaphore(1);
    800020c4:	01000513          	li	a0,16
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	fc8080e7          	jalr	-56(ra) # 80003090 <_Znwm>
    800020d0:	00050493          	mv	s1,a0
    800020d4:	00100593          	li	a1,1
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	1f4080e7          	jalr	500(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    800020e0:	0000a797          	auipc	a5,0xa
    800020e4:	8097b423          	sd	s1,-2040(a5) # 8000b8e8 <_ZL3s11>
    s22 = new Semaphore(0);
    800020e8:	01000513          	li	a0,16
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	fa4080e7          	jalr	-92(ra) # 80003090 <_Znwm>
    800020f4:	00050493          	mv	s1,a0
    800020f8:	00000593          	li	a1,0
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	1d0080e7          	jalr	464(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    80002104:	00009797          	auipc	a5,0x9
    80002108:	7e97b623          	sd	s1,2028(a5) # 8000b8f0 <_ZL3s22>
    Thread* t2 = new Thread(&f2, 0);
    8000210c:	02000513          	li	a0,32
    80002110:	00001097          	auipc	ra,0x1
    80002114:	f80080e7          	jalr	-128(ra) # 80003090 <_Znwm>
    80002118:	00050913          	mv	s2,a0
    8000211c:	00000613          	li	a2,0
    80002120:	00000597          	auipc	a1,0x0
    80002124:	ecc58593          	addi	a1,a1,-308 # 80001fec <_Z2f2Pv>
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	104080e7          	jalr	260(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80002130:	00090513          	mv	a0,s2
    80002134:	00001097          	auipc	ra,0x1
    80002138:	02c080e7          	jalr	44(ra) # 80003160 <_ZN6Thread5startEv>
    thread_dispatch();
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	1e8080e7          	jalr	488(ra) # 80001324 <thread_dispatch>
    while(true)
    80002144:	0000006f          	j	80002144 <_Z8semTest1v+0xb4>
    80002148:	00050493          	mv	s1,a0
    mutex = new Semaphore(1);
    8000214c:	00090513          	mv	a0,s2
    80002150:	00001097          	auipc	ra,0x1
    80002154:	f68080e7          	jalr	-152(ra) # 800030b8 <_ZdlPv>
    80002158:	00048513          	mv	a0,s1
    8000215c:	0000b097          	auipc	ra,0xb
    80002160:	90c080e7          	jalr	-1780(ra) # 8000ca68 <_Unwind_Resume>
    80002164:	00050913          	mv	s2,a0
    s11 = new Semaphore(1);
    80002168:	00048513          	mv	a0,s1
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	f4c080e7          	jalr	-180(ra) # 800030b8 <_ZdlPv>
    80002174:	00090513          	mv	a0,s2
    80002178:	0000b097          	auipc	ra,0xb
    8000217c:	8f0080e7          	jalr	-1808(ra) # 8000ca68 <_Unwind_Resume>
    80002180:	00050913          	mv	s2,a0
    s22 = new Semaphore(0);
    80002184:	00048513          	mv	a0,s1
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	f30080e7          	jalr	-208(ra) # 800030b8 <_ZdlPv>
    80002190:	00090513          	mv	a0,s2
    80002194:	0000b097          	auipc	ra,0xb
    80002198:	8d4080e7          	jalr	-1836(ra) # 8000ca68 <_Unwind_Resume>
    8000219c:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2, 0);
    800021a0:	00090513          	mv	a0,s2
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	f14080e7          	jalr	-236(ra) # 800030b8 <_ZdlPv>
    800021ac:	00048513          	mv	a0,s1
    800021b0:	0000b097          	auipc	ra,0xb
    800021b4:	8b8080e7          	jalr	-1864(ra) # 8000ca68 <_Unwind_Resume>

00000000800021b8 <_Z8semTest2v>:
{
    800021b8:	fd010113          	addi	sp,sp,-48
    800021bc:	02113423          	sd	ra,40(sp)
    800021c0:	02813023          	sd	s0,32(sp)
    800021c4:	00913c23          	sd	s1,24(sp)
    800021c8:	01213823          	sd	s2,16(sp)
    800021cc:	01313423          	sd	s3,8(sp)
    800021d0:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    800021d4:	01000513          	li	a0,16
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	eb8080e7          	jalr	-328(ra) # 80003090 <_Znwm>
    800021e0:	00050493          	mv	s1,a0
    800021e4:	00100593          	li	a1,1
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	0e4080e7          	jalr	228(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    800021f0:	00009797          	auipc	a5,0x9
    800021f4:	6e97b023          	sd	s1,1760(a5) # 8000b8d0 <_ZL2s1>
    s2 = new Semaphore(0);
    800021f8:	01000513          	li	a0,16
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	e94080e7          	jalr	-364(ra) # 80003090 <_Znwm>
    80002204:	00050493          	mv	s1,a0
    80002208:	00000593          	li	a1,0
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	0c0080e7          	jalr	192(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    80002214:	00009797          	auipc	a5,0x9
    80002218:	6c97b223          	sd	s1,1732(a5) # 8000b8d8 <_ZL2s2>
    s3 = new Semaphore(0);
    8000221c:	01000513          	li	a0,16
    80002220:	00001097          	auipc	ra,0x1
    80002224:	e70080e7          	jalr	-400(ra) # 80003090 <_Znwm>
    80002228:	00050493          	mv	s1,a0
    8000222c:	00000593          	li	a1,0
    80002230:	00001097          	auipc	ra,0x1
    80002234:	09c080e7          	jalr	156(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    80002238:	00009797          	auipc	a5,0x9
    8000223c:	6a97b423          	sd	s1,1704(a5) # 8000b8e0 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002240:	02000513          	li	a0,32
    80002244:	00001097          	auipc	ra,0x1
    80002248:	e4c080e7          	jalr	-436(ra) # 80003090 <_Znwm>
    8000224c:	00050993          	mv	s3,a0
    80002250:	00000613          	li	a2,0
    80002254:	fffff597          	auipc	a1,0xfffff
    80002258:	46458593          	addi	a1,a1,1124 # 800016b8 <_Z4f1_2Pv>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	fd0080e7          	jalr	-48(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    80002264:	02000513          	li	a0,32
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	e28080e7          	jalr	-472(ra) # 80003090 <_Znwm>
    80002270:	00050913          	mv	s2,a0
    80002274:	00000613          	li	a2,0
    80002278:	fffff597          	auipc	a1,0xfffff
    8000227c:	4cc58593          	addi	a1,a1,1228 # 80001744 <_Z4f2_2Pv>
    80002280:	00001097          	auipc	ra,0x1
    80002284:	fac080e7          	jalr	-84(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    80002288:	02000513          	li	a0,32
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	e04080e7          	jalr	-508(ra) # 80003090 <_Znwm>
    80002294:	00050493          	mv	s1,a0
    80002298:	00000613          	li	a2,0
    8000229c:	fffff597          	auipc	a1,0xfffff
    800022a0:	53458593          	addi	a1,a1,1332 # 800017d0 <_Z4f3_2Pv>
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	f88080e7          	jalr	-120(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	eb0080e7          	jalr	-336(ra) # 80003160 <_ZN6Thread5startEv>
    t2->start();
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	ea4080e7          	jalr	-348(ra) # 80003160 <_ZN6Thread5startEv>
    t1->start();
    800022c4:	00098513          	mv	a0,s3
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	e98080e7          	jalr	-360(ra) # 80003160 <_ZN6Thread5startEv>
    int y = 0;
    800022d0:	00000493          	li	s1,0
        y++;
    800022d4:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	04c080e7          	jalr	76(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    800022e0:	000317b7          	lui	a5,0x31
    800022e4:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    800022e8:	fef496e3          	bne	s1,a5,800022d4 <_Z8semTest2v+0x11c>
}
    800022ec:	02813083          	ld	ra,40(sp)
    800022f0:	02013403          	ld	s0,32(sp)
    800022f4:	01813483          	ld	s1,24(sp)
    800022f8:	01013903          	ld	s2,16(sp)
    800022fc:	00813983          	ld	s3,8(sp)
    80002300:	03010113          	addi	sp,sp,48
    80002304:	00008067          	ret
    80002308:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    8000230c:	00048513          	mv	a0,s1
    80002310:	00001097          	auipc	ra,0x1
    80002314:	da8080e7          	jalr	-600(ra) # 800030b8 <_ZdlPv>
    80002318:	00090513          	mv	a0,s2
    8000231c:	0000a097          	auipc	ra,0xa
    80002320:	74c080e7          	jalr	1868(ra) # 8000ca68 <_Unwind_Resume>
    80002324:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002328:	00048513          	mv	a0,s1
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	d8c080e7          	jalr	-628(ra) # 800030b8 <_ZdlPv>
    80002334:	00090513          	mv	a0,s2
    80002338:	0000a097          	auipc	ra,0xa
    8000233c:	730080e7          	jalr	1840(ra) # 8000ca68 <_Unwind_Resume>
    80002340:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002344:	00048513          	mv	a0,s1
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	d70080e7          	jalr	-656(ra) # 800030b8 <_ZdlPv>
    80002350:	00090513          	mv	a0,s2
    80002354:	0000a097          	auipc	ra,0xa
    80002358:	714080e7          	jalr	1812(ra) # 8000ca68 <_Unwind_Resume>
    8000235c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    80002360:	00098513          	mv	a0,s3
    80002364:	00001097          	auipc	ra,0x1
    80002368:	d54080e7          	jalr	-684(ra) # 800030b8 <_ZdlPv>
    8000236c:	00048513          	mv	a0,s1
    80002370:	0000a097          	auipc	ra,0xa
    80002374:	6f8080e7          	jalr	1784(ra) # 8000ca68 <_Unwind_Resume>
    80002378:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    8000237c:	00090513          	mv	a0,s2
    80002380:	00001097          	auipc	ra,0x1
    80002384:	d38080e7          	jalr	-712(ra) # 800030b8 <_ZdlPv>
    80002388:	00048513          	mv	a0,s1
    8000238c:	0000a097          	auipc	ra,0xa
    80002390:	6dc080e7          	jalr	1756(ra) # 8000ca68 <_Unwind_Resume>
    80002394:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    80002398:	00048513          	mv	a0,s1
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	d1c080e7          	jalr	-740(ra) # 800030b8 <_ZdlPv>
    800023a4:	00090513          	mv	a0,s2
    800023a8:	0000a097          	auipc	ra,0xa
    800023ac:	6c0080e7          	jalr	1728(ra) # 8000ca68 <_Unwind_Resume>

00000000800023b0 <_Z14semaphoreTestsv>:
{
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00113423          	sd	ra,8(sp)
    800023b8:	00813023          	sd	s0,0(sp)
    800023bc:	01010413          	addi	s0,sp,16
    semTest1();
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	cd0080e7          	jalr	-816(ra) # 80002090 <_Z8semTest1v>

00000000800023c8 <_Z7myTestsv>:
{
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00113423          	sd	ra,8(sp)
    800023d0:	00813023          	sd	s0,0(sp)
    800023d4:	01010413          	addi	s0,sp,16
    semaphoreTests();
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	fd8080e7          	jalr	-40(ra) # 800023b0 <_Z14semaphoreTestsv>

00000000800023e0 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    800023e0:	fe010113          	addi	sp,sp,-32
    800023e4:	00113c23          	sd	ra,24(sp)
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	02010413          	addi	s0,sp,32
    800023f4:	00050493          	mv	s1,a0
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	f8c080e7          	jalr	-116(ra) # 80003384 <_ZN14PeriodicThreadC1Em>
    80002400:	00009797          	auipc	a5,0x9
    80002404:	34078793          	addi	a5,a5,832 # 8000b740 <_ZTV12TestPeriodic+0x10>
    80002408:	00f4b023          	sd	a5,0(s1)
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret

0000000080002420 <_Z11threadTest3v>:
{
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	01213023          	sd	s2,0(sp)
    80002434:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002438:	02800513          	li	a0,40
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	c54080e7          	jalr	-940(ra) # 80003090 <_Znwm>
    80002444:	00050913          	mv	s2,a0
    80002448:	03200593          	li	a1,50
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	f94080e7          	jalr	-108(ra) # 800023e0 <_ZN12TestPeriodicC1Em>
    t->start();
    80002454:	00090513          	mv	a0,s2
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	d08080e7          	jalr	-760(ra) # 80003160 <_ZN6Thread5startEv>
    while(true)
    80002460:	0000006f          	j	80002460 <_Z11threadTest3v+0x40>
    80002464:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002468:	00090513          	mv	a0,s2
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	c4c080e7          	jalr	-948(ra) # 800030b8 <_ZdlPv>
    80002474:	00048513          	mv	a0,s1
    80002478:	0000a097          	auipc	ra,0xa
    8000247c:	5f0080e7          	jalr	1520(ra) # 8000ca68 <_Unwind_Resume>

0000000080002480 <_Z11threadTestsv>:
{
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002490:	00000097          	auipc	ra,0x0
    80002494:	f90080e7          	jalr	-112(ra) # 80002420 <_Z11threadTest3v>

0000000080002498 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00813423          	sd	s0,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00813403          	ld	s0,8(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00813423          	sd	s0,8(sp)
    800024b8:	01010413          	addi	s0,sp,16
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00009797          	auipc	a5,0x9
    800024dc:	23878793          	addi	a5,a5,568 # 8000b710 <_ZTV14PeriodicThread+0x10>
    800024e0:	00f53023          	sd	a5,0(a0)
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	af0080e7          	jalr	-1296(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN14PeriodicThreadD0Ev>:
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00113c23          	sd	ra,24(sp)
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
    80002514:	00009797          	auipc	a5,0x9
    80002518:	1fc78793          	addi	a5,a5,508 # 8000b710 <_ZTV14PeriodicThread+0x10>
    8000251c:	00f53023          	sd	a5,0(a0)
    80002520:	00001097          	auipc	ra,0x1
    80002524:	ab4080e7          	jalr	-1356(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80002528:	00048513          	mv	a0,s1
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	b8c080e7          	jalr	-1140(ra) # 800030b8 <_ZdlPv>
    80002534:	01813083          	ld	ra,24(sp)
    80002538:	01013403          	ld	s0,16(sp)
    8000253c:	00813483          	ld	s1,8(sp)
    80002540:	02010113          	addi	sp,sp,32
    80002544:	00008067          	ret

0000000080002548 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00009797          	auipc	a5,0x9
    8000255c:	1b878793          	addi	a5,a5,440 # 8000b710 <_ZTV14PeriodicThread+0x10>
    80002560:	00f53023          	sd	a5,0(a0)
    80002564:	00001097          	auipc	ra,0x1
    80002568:	a70080e7          	jalr	-1424(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    8000256c:	00813083          	ld	ra,8(sp)
    80002570:	00013403          	ld	s0,0(sp)
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret

000000008000257c <_ZN12TestPeriodicD0Ev>:
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00113c23          	sd	ra,24(sp)
    80002584:	00813823          	sd	s0,16(sp)
    80002588:	00913423          	sd	s1,8(sp)
    8000258c:	02010413          	addi	s0,sp,32
    80002590:	00050493          	mv	s1,a0
    80002594:	00009797          	auipc	a5,0x9
    80002598:	17c78793          	addi	a5,a5,380 # 8000b710 <_ZTV14PeriodicThread+0x10>
    8000259c:	00f53023          	sd	a5,0(a0)
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	a34080e7          	jalr	-1484(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    800025a8:	00048513          	mv	a0,s1
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	b0c080e7          	jalr	-1268(ra) # 800030b8 <_ZdlPv>
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret

00000000800025c8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00113423          	sd	ra,8(sp)
    800025d0:	00813023          	sd	s0,0(sp)
    800025d4:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    800025d8:	00007517          	auipc	a0,0x7
    800025dc:	b8050513          	addi	a0,a0,-1152 # 80009158 <CONSOLE_STATUS+0x148>
    800025e0:	00001097          	auipc	ra,0x1
    800025e4:	f1c080e7          	jalr	-228(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800025e8:	00001097          	auipc	ra,0x1
    800025ec:	ef4080e7          	jalr	-268(ra) # 800034dc <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	3087b783          	ld	a5,776(a5) # 8000b8f8 <_ZN3PCB7runningE>
    800025f8:	0207b703          	ld	a4,32(a5)
    800025fc:	0287b503          	ld	a0,40(a5)
    80002600:	000700e7          	jalr	a4

    //Riscv::printString("PCB finished\n");

    thread_exit();
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	d40080e7          	jalr	-704(ra) # 80001344 <thread_exit>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000261c:	fe010113          	addi	sp,sp,-32
    80002620:	00113c23          	sd	ra,24(sp)
    80002624:	00813823          	sd	s0,16(sp)
    80002628:	00913423          	sd	s1,8(sp)
    8000262c:	02010413          	addi	s0,sp,32
    80002630:	00050493          	mv	s1,a0
    })
    80002634:	00050023          	sb	zero,0(a0)
    80002638:	00e53823          	sd	a4,16(a0)
    8000263c:	00053c23          	sd	zero,24(a0)
    80002640:	02b53023          	sd	a1,32(a0)
    80002644:	02c53423          	sd	a2,40(a0)
    80002648:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000264c:	000017b7          	lui	a5,0x1
    80002650:	00f686b3          	add	a3,a3,a5
    })
    80002654:	04d53023          	sd	a3,64(a0)
    80002658:	00000797          	auipc	a5,0x0
    8000265c:	f7078793          	addi	a5,a5,-144 # 800025c8 <_ZN3PCB6runnerEv>
    80002660:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    80002664:	00001097          	auipc	ra,0x1
    80002668:	8a8080e7          	jalr	-1880(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    8000266c:	0004b423          	sd	zero,8(s1)
}
    80002670:	01813083          	ld	ra,24(sp)
    80002674:	01013403          	ld	s0,16(sp)
    80002678:	00813483          	ld	s1,8(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret

0000000080002684 <_ZN3PCB5sleepEm>:
{
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
}
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN3PCB5startEv>:
{
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	860080e7          	jalr	-1952(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800026d8:	00009497          	auipc	s1,0x9
    800026dc:	2204b483          	ld	s1,544(s1) # 8000b8f8 <_ZN3PCB7runningE>
    800026e0:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800026e4:	00100793          	li	a5,1
    800026e8:	04f70863          	beq	a4,a5,80002738 <_ZN3PCB8dispatchEv+0x74>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	874080e7          	jalr	-1932(ra) # 80002f60 <_ZN9Scheduler3getEv>
    800026f4:	00009797          	auipc	a5,0x9
    800026f8:	20a7b223          	sd	a0,516(a5) # 8000b8f8 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800026fc:	00100793          	li	a5,1
    80002700:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
    80002704:	00054783          	lbu	a5,0(a0)
    80002708:	04078063          	beqz	a5,80002748 <_ZN3PCB8dispatchEv+0x84>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000270c:	10000793          	li	a5,256
    80002710:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    80002714:	04050593          	addi	a1,a0,64
    80002718:	04048513          	addi	a0,s1,64
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	b0c080e7          	jalr	-1268(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret
        Scheduler::put(old);
    80002738:	00048513          	mv	a0,s1
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	7d0080e7          	jalr	2000(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
    80002744:	fa9ff06f          	j	800026ec <_ZN3PCB8dispatchEv+0x28>
    80002748:	10000793          	li	a5,256
    8000274c:	1007a073          	csrs	sstatus,a5
}
    80002750:	fc5ff06f          	j	80002714 <_ZN3PCB8dispatchEv+0x50>

0000000080002754 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002764:	00001097          	auipc	ra,0x1
    80002768:	6f0080e7          	jalr	1776(ra) # 80003e54 <_Z7kmallocm>
}
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00113423          	sd	ra,8(sp)
    80002784:	00813023          	sd	s0,0(sp)
    80002788:	01010413          	addi	s0,sp,16
    kfree(p);
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	6f0080e7          	jalr	1776(ra) # 80003e7c <_Z5kfreePv>
}
    80002794:	00813083          	ld	ra,8(sp)
    80002798:	00013403          	ld	s0,0(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00113423          	sd	ra,8(sp)
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    800027b4:	03053503          	ld	a0,48(a0)
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	6c4080e7          	jalr	1732(ra) # 80003e7c <_Z5kfreePv>
}
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret

00000000800027d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800027d0:	fe010113          	addi	sp,sp,-32
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	01213023          	sd	s2,0(sp)
    800027e4:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800027e8:	05800513          	li	a0,88
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	f68080e7          	jalr	-152(ra) # 80002754 <_ZN3PCBnwEm>
    800027f4:	00050493          	mv	s1,a0
    800027f8:	00000713          	li	a4,0
    800027fc:	00000693          	li	a3,0
    80002800:	00000613          	li	a2,0
    80002804:	00000593          	li	a1,0
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	e14080e7          	jalr	-492(ra) # 8000261c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002810:	00100793          	li	a5,1
    80002814:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	748080e7          	jalr	1864(ra) # 80002f60 <_ZN9Scheduler3getEv>
    80002820:	00009797          	auipc	a5,0x9
    80002824:	0ca7bc23          	sd	a0,216(a5) # 8000b8f8 <_ZN3PCB7runningE>
    80002828:	00100793          	li	a5,1
    8000282c:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	00013903          	ld	s2,0(sp)
    80002840:	02010113          	addi	sp,sp,32
    80002844:	00008067          	ret
    80002848:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000284c:	00048513          	mv	a0,s1
    80002850:	00000097          	auipc	ra,0x0
    80002854:	f2c080e7          	jalr	-212(ra) # 8000277c <_ZN3PCBdlEPv>
    80002858:	00090513          	mv	a0,s2
    8000285c:	0000a097          	auipc	ra,0xa
    80002860:	20c080e7          	jalr	524(ra) # 8000ca68 <_Unwind_Resume>

0000000080002864 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002864:	fd010113          	addi	sp,sp,-48
    80002868:	02113423          	sd	ra,40(sp)
    8000286c:	02813023          	sd	s0,32(sp)
    80002870:	00913c23          	sd	s1,24(sp)
    80002874:	01213823          	sd	s2,16(sp)
    80002878:	01313423          	sd	s3,8(sp)
    8000287c:	03010413          	addi	s0,sp,48
    80002880:	00050993          	mv	s3,a0
    80002884:	00058913          	mv	s2,a1
    80002888:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    8000288c:	01000513          	li	a0,16
    80002890:	00001097          	auipc	ra,0x1
    80002894:	5c4080e7          	jalr	1476(ra) # 80003e54 <_Z7kmallocm>
    newElem->next = 0;
    80002898:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    8000289c:	01350423          	sb	s3,8(a0)
    if(head == 0)
    800028a0:	00093783          	ld	a5,0(s2)
    800028a4:	02078663          	beqz	a5,800028d0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    800028a8:	0004b783          	ld	a5,0(s1)
    800028ac:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    800028b0:	00a4b023          	sd	a0,0(s1)
    }
}
    800028b4:	02813083          	ld	ra,40(sp)
    800028b8:	02013403          	ld	s0,32(sp)
    800028bc:	01813483          	ld	s1,24(sp)
    800028c0:	01013903          	ld	s2,16(sp)
    800028c4:	00813983          	ld	s3,8(sp)
    800028c8:	03010113          	addi	sp,sp,48
    800028cc:	00008067          	ret
        head = tail = newElem;
    800028d0:	00a4b023          	sd	a0,0(s1)
    800028d4:	00a93023          	sd	a0,0(s2)
    800028d8:	fddff06f          	j	800028b4 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

00000000800028dc <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00113c23          	sd	ra,24(sp)
    800028e4:	00813823          	sd	s0,16(sp)
    800028e8:	00913423          	sd	s1,8(sp)
    800028ec:	02010413          	addi	s0,sp,32
    800028f0:	00050793          	mv	a5,a0
    if(head == 0)
    800028f4:	00053503          	ld	a0,0(a0)
    800028f8:	02050e63          	beqz	a0,80002934 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    800028fc:	00053703          	ld	a4,0(a0)
    80002900:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002904:	02070463          	beqz	a4,8000292c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002908:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	570080e7          	jalr	1392(ra) # 80003e7c <_Z5kfreePv>
    return c;
}
    80002914:	00048513          	mv	a0,s1
    80002918:	01813083          	ld	ra,24(sp)
    8000291c:	01013403          	ld	s0,16(sp)
    80002920:	00813483          	ld	s1,8(sp)
    80002924:	02010113          	addi	sp,sp,32
    80002928:	00008067          	ret
        tail = 0;
    8000292c:	0005b023          	sd	zero,0(a1)
    80002930:	fd9ff06f          	j	80002908 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002934:	00000493          	li	s1,0
    80002938:	fddff06f          	j	80002914 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

000000008000293c <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00113c23          	sd	ra,24(sp)
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	01213023          	sd	s2,0(sp)
    80002950:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002954:	01800513          	li	a0,24
    80002958:	00001097          	auipc	ra,0x1
    8000295c:	79c080e7          	jalr	1948(ra) # 800040f4 <_ZN10KSemaphorenwEm>
    80002960:	00050493          	mv	s1,a0
    80002964:	00000593          	li	a1,0
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	53c080e7          	jalr	1340(ra) # 80003ea4 <_ZN10KSemaphoreC1Ei>
    80002970:	00009797          	auipc	a5,0x9
    80002974:	fa97b023          	sd	s1,-96(a5) # 8000b910 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002978:	01800513          	li	a0,24
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	778080e7          	jalr	1912(ra) # 800040f4 <_ZN10KSemaphorenwEm>
    80002984:	00050493          	mv	s1,a0
    80002988:	00000593          	li	a1,0
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	518080e7          	jalr	1304(ra) # 80003ea4 <_ZN10KSemaphoreC1Ei>
    80002994:	00009797          	auipc	a5,0x9
    80002998:	f897b223          	sd	s1,-124(a5) # 8000b918 <_ZN8KConsole19hasCharactersOutputE>
}
    8000299c:	01813083          	ld	ra,24(sp)
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	00013903          	ld	s2,0(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret
    800029b4:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	760080e7          	jalr	1888(ra) # 8000411c <_ZN10KSemaphoredlEPv>
    800029c4:	00090513          	mv	a0,s2
    800029c8:	0000a097          	auipc	ra,0xa
    800029cc:	0a0080e7          	jalr	160(ra) # 8000ca68 <_Unwind_Resume>
    800029d0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800029d4:	00048513          	mv	a0,s1
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	744080e7          	jalr	1860(ra) # 8000411c <_ZN10KSemaphoredlEPv>
    800029e0:	00090513          	mv	a0,s2
    800029e4:	0000a097          	auipc	ra,0xa
    800029e8:	084080e7          	jalr	132(ra) # 8000ca68 <_Unwind_Resume>

00000000800029ec <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00113423          	sd	ra,8(sp)
    800029f4:	00813023          	sd	s0,0(sp)
    800029f8:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    800029fc:	00009617          	auipc	a2,0x9
    80002a00:	f2460613          	addi	a2,a2,-220 # 8000b920 <_ZN8KConsole9tailInputE>
    80002a04:	00009597          	auipc	a1,0x9
    80002a08:	f2458593          	addi	a1,a1,-220 # 8000b928 <_ZN8KConsole9headInputE>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	e58080e7          	jalr	-424(ra) # 80002864 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002a14:	00009517          	auipc	a0,0x9
    80002a18:	efc53503          	ld	a0,-260(a0) # 8000b910 <_ZN8KConsole18hasCharactersInputE>
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	690080e7          	jalr	1680(ra) # 800040ac <_ZN10KSemaphore6signalEv>
}
    80002a24:	00813083          	ld	ra,8(sp)
    80002a28:	00013403          	ld	s0,0(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002a34:	00006517          	auipc	a0,0x6
    80002a38:	5dc53503          	ld	a0,1500(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002a3c:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002a40:	0017f793          	andi	a5,a5,1
    80002a44:	04078863          	beqz	a5,80002a94 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	00813023          	sd	s0,0(sp)
    80002a54:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002a58:	00006517          	auipc	a0,0x6
    80002a5c:	5b053503          	ld	a0,1456(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002a60:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002a64:	0ff57513          	andi	a0,a0,255
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	f84080e7          	jalr	-124(ra) # 800029ec <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002a70:	00006517          	auipc	a0,0x6
    80002a74:	5a053503          	ld	a0,1440(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002a78:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002a7c:	0017f793          	andi	a5,a5,1
    80002a80:	fc079ce3          	bnez	a5,80002a58 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret
    80002a94:	00008067          	ret

0000000080002a98 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002a98:	ff010113          	addi	sp,sp,-16
    80002a9c:	00113423          	sd	ra,8(sp)
    80002aa0:	00813023          	sd	s0,0(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002aa8:	00009517          	auipc	a0,0x9
    80002aac:	e6853503          	ld	a0,-408(a0) # 8000b910 <_ZN8KConsole18hasCharactersInputE>
    80002ab0:	00001097          	auipc	ra,0x1
    80002ab4:	49c080e7          	jalr	1180(ra) # 80003f4c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002ab8:	00009597          	auipc	a1,0x9
    80002abc:	e6858593          	addi	a1,a1,-408 # 8000b920 <_ZN8KConsole9tailInputE>
    80002ac0:	00009517          	auipc	a0,0x9
    80002ac4:	e6850513          	addi	a0,a0,-408 # 8000b928 <_ZN8KConsole9headInputE>
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	e14080e7          	jalr	-492(ra) # 800028dc <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00013403          	ld	s0,0(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret

0000000080002ae0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00113423          	sd	ra,8(sp)
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002af0:	00009617          	auipc	a2,0x9
    80002af4:	e4060613          	addi	a2,a2,-448 # 8000b930 <_ZN8KConsole10tailOutputE>
    80002af8:	00009597          	auipc	a1,0x9
    80002afc:	e4058593          	addi	a1,a1,-448 # 8000b938 <_ZN8KConsole10headOutputE>
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	d64080e7          	jalr	-668(ra) # 80002864 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002b08:	00009517          	auipc	a0,0x9
    80002b0c:	e1053503          	ld	a0,-496(a0) # 8000b918 <_ZN8KConsole19hasCharactersOutputE>
    80002b10:	00001097          	auipc	ra,0x1
    80002b14:	59c080e7          	jalr	1436(ra) # 800040ac <_ZN10KSemaphore6signalEv>
}
    80002b18:	00813083          	ld	ra,8(sp)
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002b38:	00009517          	auipc	a0,0x9
    80002b3c:	de053503          	ld	a0,-544(a0) # 8000b918 <_ZN8KConsole19hasCharactersOutputE>
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	40c080e7          	jalr	1036(ra) # 80003f4c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002b48:	00009597          	auipc	a1,0x9
    80002b4c:	de858593          	addi	a1,a1,-536 # 8000b930 <_ZN8KConsole10tailOutputE>
    80002b50:	00009517          	auipc	a0,0x9
    80002b54:	de850513          	addi	a0,a0,-536 # 8000b938 <_ZN8KConsole10headOutputE>
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	d84080e7          	jalr	-636(ra) # 800028dc <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002b60:	00813083          	ld	ra,8(sp)
    80002b64:	00013403          	ld	s0,0(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002b70:	00006517          	auipc	a0,0x6
    80002b74:	4a053503          	ld	a0,1184(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002b78:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002b7c:	0207f793          	andi	a5,a5,32
    80002b80:	04078263          	beqz	a5,80002bc4 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00113423          	sd	ra,8(sp)
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	f94080e7          	jalr	-108(ra) # 80002b28 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002b9c:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002ba0:	00006517          	auipc	a0,0x6
    80002ba4:	47053503          	ld	a0,1136(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ba8:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002bac:	0207f793          	andi	a5,a5,32
    80002bb0:	fe0792e3          	bnez	a5,80002b94 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret
    80002bc4:	00008067          	ret

0000000080002bc8 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002bc8:	ff010113          	addi	sp,sp,-16
    80002bcc:	00813423          	sd	s0,8(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002bd4:	00009797          	auipc	a5,0x9
    80002bd8:	ca47b783          	ld	a5,-860(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bdc:	0007b603          	ld	a2,0(a5)
    80002be0:	00500793          	li	a5,5
    80002be4:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002be8:	00009797          	auipc	a5,0x9
    80002bec:	d587b783          	ld	a5,-680(a5) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002bf0:	00000593          	li	a1,0
    while(curr != 0)
    80002bf4:	02078063          	beqz	a5,80002c14 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002bf8:	01863683          	ld	a3,24(a2)
    80002bfc:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002c00:	00e6e863          	bltu	a3,a4,80002c10 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002c04:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002c08:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002c0c:	fe9ff06f          	j	80002bf4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002c10:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002c14:	02058263          	beqz	a1,80002c38 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002c18:	01863783          	ld	a5,24(a2)
    80002c1c:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002c20:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c24:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002c28:	00c5b423          	sd	a2,8(a1)
    }
}
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002c38:	00009797          	auipc	a5,0x9
    80002c3c:	d0c7b423          	sd	a2,-760(a5) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002c40:	00863783          	ld	a5,8(a2)
    80002c44:	fe0784e3          	beqz	a5,80002c2c <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002c48:	0187b703          	ld	a4,24(a5)
    80002c4c:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002c50:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c54:	00e7bc23          	sd	a4,24(a5)
    80002c58:	fd5ff06f          	j	80002c2c <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002c5c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002c5c:	00009517          	auipc	a0,0x9
    80002c60:	ce453503          	ld	a0,-796(a0) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002c64:	08050863          	beqz	a0,80002cf4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002c68:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002c6c:	00100713          	li	a4,1
    80002c70:	00e78863          	beq	a5,a4,80002c80 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002c74:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c78:	00f53c23          	sd	a5,24(a0)
    80002c7c:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002c80:	06050a63          	beqz	a0,80002cf4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002c84:	00009797          	auipc	a5,0x9
    80002c88:	cbc7b783          	ld	a5,-836(a5) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002c8c:	00a78663          	beq	a5,a0,80002c98 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002c90:	01853783          	ld	a5,24(a0)
    80002c94:	06079063          	bnez	a5,80002cf4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002c98:	fe010113          	addi	sp,sp,-32
    80002c9c:	00113c23          	sd	ra,24(sp)
    80002ca0:	00813823          	sd	s0,16(sp)
    80002ca4:	00913423          	sd	s1,8(sp)
    80002ca8:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002cac:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002cb0:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	258080e7          	jalr	600(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002cbc:	00009797          	auipc	a5,0x9
    80002cc0:	c897b223          	sd	s1,-892(a5) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002cc4:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002cc8:	00048c63          	beqz	s1,80002ce0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002ccc:	00009797          	auipc	a5,0x9
    80002cd0:	c747b783          	ld	a5,-908(a5) # 8000b940 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002cd4:	fc978ce3          	beq	a5,s1,80002cac <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002cd8:	0184b783          	ld	a5,24(s1)
    80002cdc:	fc0788e3          	beqz	a5,80002cac <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	01013403          	ld	s0,16(sp)
    80002ce8:	00813483          	ld	s1,8(sp)
    80002cec:	02010113          	addi	sp,sp,32
    80002cf0:	00008067          	ret
    80002cf4:	00008067          	ret

0000000080002cf8 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002cf8:	fe010113          	addi	sp,sp,-32
    80002cfc:	00113c23          	sd	ra,24(sp)
    80002d00:	00813823          	sd	s0,16(sp)
    80002d04:	00913423          	sd	s1,8(sp)
    80002d08:	01213023          	sd	s2,0(sp)
    80002d0c:	02010413          	addi	s0,sp,32
    80002d10:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002d14:	00053503          	ld	a0,0(a0)
    80002d18:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	160080e7          	jalr	352(ra) # 80003e7c <_Z5kfreePv>
    first = newFirst;
    80002d24:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002d28:	00090e63          	beqz	s2,80002d44 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	00813483          	ld	s1,8(sp)
    80002d38:	00013903          	ld	s2,0(sp)
    80002d3c:	02010113          	addi	sp,sp,32
    80002d40:	00008067          	ret
        first = last = 0;
    80002d44:	0004b423          	sd	zero,8(s1)
    80002d48:	0004b023          	sd	zero,0(s1)
}
    80002d4c:	fe1ff06f          	j	80002d2c <_ZN5Queue3popEv+0x34>

0000000080002d50 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002d50:	fe010113          	addi	sp,sp,-32
    80002d54:	00113c23          	sd	ra,24(sp)
    80002d58:	00813823          	sd	s0,16(sp)
    80002d5c:	00913423          	sd	s1,8(sp)
    80002d60:	01213023          	sd	s2,0(sp)
    80002d64:	02010413          	addi	s0,sp,32
    80002d68:	00050493          	mv	s1,a0
    80002d6c:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002d70:	01000513          	li	a0,16
    80002d74:	00001097          	auipc	ra,0x1
    80002d78:	0e0080e7          	jalr	224(ra) # 80003e54 <_Z7kmallocm>
    newElem->data = t;
    80002d7c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002d80:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002d84:	0004b783          	ld	a5,0(s1)
    80002d88:	02078463          	beqz	a5,80002db0 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002d8c:	0084b783          	ld	a5,8(s1)
    80002d90:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002d94:	00a4b423          	sd	a0,8(s1)
    }
}
    80002d98:	01813083          	ld	ra,24(sp)
    80002d9c:	01013403          	ld	s0,16(sp)
    80002da0:	00813483          	ld	s1,8(sp)
    80002da4:	00013903          	ld	s2,0(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret
        first = newElem;
    80002db0:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002db4:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002db8:	00053423          	sd	zero,8(a0)
    80002dbc:	0004b783          	ld	a5,0(s1)
    80002dc0:	0007b423          	sd	zero,8(a5)
    80002dc4:	fd5ff06f          	j	80002d98 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002dc8 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00813423          	sd	s0,8(sp)
    80002dd0:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002dd4:	00053503          	ld	a0,0(a0)
    80002dd8:	00050463          	beqz	a0,80002de0 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002ddc:	00053503          	ld	a0,0(a0)
}
    80002de0:	00813403          	ld	s0,8(sp)
    80002de4:	01010113          	addi	sp,sp,16
    80002de8:	00008067          	ret

0000000080002dec <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002df8:	00053423          	sd	zero,8(a0)
    80002dfc:	00053023          	sd	zero,0(a0)
}
    80002e00:	00813403          	ld	s0,8(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002e0c:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002e10:	04050063          	beqz	a0,80002e50 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80002e14:	fe010113          	addi	sp,sp,-32
    80002e18:	00113c23          	sd	ra,24(sp)
    80002e1c:	00813823          	sd	s0,16(sp)
    80002e20:	00913423          	sd	s1,8(sp)
    80002e24:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80002e28:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	050080e7          	jalr	80(ra) # 80003e7c <_Z5kfreePv>
        curr = curr->next;
    80002e34:	00048513          	mv	a0,s1
    while(curr != 0)
    80002e38:	fe0498e3          	bnez	s1,80002e28 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002e3c:	01813083          	ld	ra,24(sp)
    80002e40:	01013403          	ld	s0,16(sp)
    80002e44:	00813483          	ld	s1,8(sp)
    80002e48:	02010113          	addi	sp,sp,32
    80002e4c:	00008067          	ret
    80002e50:	00008067          	ret

0000000080002e54 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80002e54:	ff010113          	addi	sp,sp,-16
    80002e58:	00813423          	sd	s0,8(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002e60:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    80002e64:	00000513          	li	a0,0
    while(curr != 0)
    80002e68:	00078863          	beqz	a5,80002e78 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002e6c:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002e70:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002e74:	ff5ff06f          	j	80002e68 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002e78:	00813403          	ld	s0,8(sp)
    80002e7c:	01010113          	addi	sp,sp,16
    80002e80:	00008067          	ret

0000000080002e84 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	fc0080e7          	jalr	-64(ra) # 80003e54 <_Z7kmallocm>
}
    80002e9c:	00813083          	ld	ra,8(sp)
    80002ea0:	00013403          	ld	s0,0(sp)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret

0000000080002eac <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80002eac:	ff010113          	addi	sp,sp,-16
    80002eb0:	00113423          	sd	ra,8(sp)
    80002eb4:	00813023          	sd	s0,0(sp)
    80002eb8:	01010413          	addi	s0,sp,16
    kfree(p);
    80002ebc:	00001097          	auipc	ra,0x1
    80002ec0:	fc0080e7          	jalr	-64(ra) # 80003e7c <_Z5kfreePv>
}
    80002ec4:	00813083          	ld	ra,8(sp)
    80002ec8:	00013403          	ld	s0,0(sp)
    80002ecc:	01010113          	addi	sp,sp,16
    80002ed0:	00008067          	ret

0000000080002ed4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00813423          	sd	s0,8(sp)
    80002edc:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002ee0:	00009797          	auipc	a5,0x9
    80002ee4:	a687b783          	ld	a5,-1432(a5) # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002ee8:	00000513          	li	a0,0
    while(curr != 0)
    80002eec:	00078863          	beqz	a5,80002efc <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002ef0:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002ef4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002ef8:	ff5ff06f          	j	80002eec <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002efc:	0005051b          	sext.w	a0,a0
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002f18:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002f1c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002f20:	00009797          	auipc	a5,0x9
    80002f24:	a287b783          	ld	a5,-1496(a5) # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    80002f28:	02078263          	beqz	a5,80002f4c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002f2c:	00009797          	auipc	a5,0x9
    80002f30:	a1c78793          	addi	a5,a5,-1508 # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    80002f34:	0087b703          	ld	a4,8(a5)
    80002f38:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80002f3c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002f40:	00813403          	ld	s0,8(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002f4c:	00009797          	auipc	a5,0x9
    80002f50:	9fc78793          	addi	a5,a5,-1540 # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    80002f54:	00a7b423          	sd	a0,8(a5)
    80002f58:	00a7b023          	sd	a0,0(a5)
    80002f5c:	fe5ff06f          	j	80002f40 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002f60 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00813423          	sd	s0,8(sp)
    80002f68:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002f6c:	00009517          	auipc	a0,0x9
    80002f70:	9dc53503          	ld	a0,-1572(a0) # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    80002f74:	00050c63          	beqz	a0,80002f8c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002f78:	00853783          	ld	a5,8(a0)
    80002f7c:	00078e63          	beqz	a5,80002f98 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002f80:	00009717          	auipc	a4,0x9
    80002f84:	9cf73423          	sd	a5,-1592(a4) # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002f88:	00053423          	sd	zero,8(a0)
    return retval;
}
    80002f8c:	00813403          	ld	s0,8(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002f98:	00009797          	auipc	a5,0x9
    80002f9c:	9b078793          	addi	a5,a5,-1616 # 8000b948 <_ZN9Scheduler16schedulerPCBHeadE>
    80002fa0:	0007b423          	sd	zero,8(a5)
    80002fa4:	0007b023          	sd	zero,0(a5)
    80002fa8:	fe1ff06f          	j	80002f88 <_ZN9Scheduler3getEv+0x28>

0000000080002fac <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00113423          	sd	ra,8(sp)
    80002fb4:	00813023          	sd	s0,0(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80002fbc:	00001097          	auipc	ra,0x1
    80002fc0:	a24080e7          	jalr	-1500(ra) # 800039e0 <_ZN5Riscv10kernelMainEv>
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    80002fe4:	00008797          	auipc	a5,0x8
    80002fe8:	79478793          	addi	a5,a5,1940 # 8000b778 <_ZTV6Thread+0x10>
    80002fec:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80002ff0:	00853503          	ld	a0,8(a0)
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	284080e7          	jalr	644(ra) # 80001278 <mem_free>
}
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret

000000008000300c <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    8000301c:	00008797          	auipc	a5,0x8
    80003020:	78478793          	addi	a5,a5,1924 # 8000b7a0 <_ZTV9Semaphore+0x10>
    80003024:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003028:	00853503          	ld	a0,8(a0)
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	24c080e7          	jalr	588(ra) # 80001278 <mem_free>
}
    80003034:	00813083          	ld	ra,8(sp)
    80003038:	00013403          	ld	s0,0(sp)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	00913423          	sd	s1,8(sp)
    80003054:	02010413          	addi	s0,sp,32
    80003058:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    8000305c:	00006517          	auipc	a0,0x6
    80003060:	11450513          	addi	a0,a0,276 # 80009170 <CONSOLE_STATUS+0x160>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	498080e7          	jalr	1176(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    thr->run();
    8000306c:	0004b783          	ld	a5,0(s1)
    80003070:	0107b783          	ld	a5,16(a5)
    80003074:	00048513          	mv	a0,s1
    80003078:	000780e7          	jalr	a5
}
    8000307c:	01813083          	ld	ra,24(sp)
    80003080:	01013403          	ld	s0,16(sp)
    80003084:	00813483          	ld	s1,8(sp)
    80003088:	02010113          	addi	sp,sp,32
    8000308c:	00008067          	ret

0000000080003090 <_Znwm>:
{
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00113423          	sd	ra,8(sp)
    80003098:	00813023          	sd	s0,0(sp)
    8000309c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	1a8080e7          	jalr	424(ra) # 80001248 <mem_alloc>
}
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZdlPv>:
{
    800030b8:	ff010113          	addi	sp,sp,-16
    800030bc:	00113423          	sd	ra,8(sp)
    800030c0:	00813023          	sd	s0,0(sp)
    800030c4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800030c8:	ffffe097          	auipc	ra,0xffffe
    800030cc:	1b0080e7          	jalr	432(ra) # 80001278 <mem_free>
}
    800030d0:	00813083          	ld	ra,8(sp)
    800030d4:	00013403          	ld	s0,0(sp)
    800030d8:	01010113          	addi	sp,sp,16
    800030dc:	00008067          	ret

00000000800030e0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800030e0:	fe010113          	addi	sp,sp,-32
    800030e4:	00113c23          	sd	ra,24(sp)
    800030e8:	00813823          	sd	s0,16(sp)
    800030ec:	00913423          	sd	s1,8(sp)
    800030f0:	02010413          	addi	s0,sp,32
    800030f4:	00050493          	mv	s1,a0
}
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	edc080e7          	jalr	-292(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80003100:	00048513          	mv	a0,s1
    80003104:	00000097          	auipc	ra,0x0
    80003108:	fb4080e7          	jalr	-76(ra) # 800030b8 <_ZdlPv>
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	01013403          	ld	s0,16(sp)
    80003114:	00813483          	ld	s1,8(sp)
    80003118:	02010113          	addi	sp,sp,32
    8000311c:	00008067          	ret

0000000080003120 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003120:	fe010113          	addi	sp,sp,-32
    80003124:	00113c23          	sd	ra,24(sp)
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00913423          	sd	s1,8(sp)
    80003130:	02010413          	addi	s0,sp,32
    80003134:	00050493          	mv	s1,a0
}
    80003138:	00000097          	auipc	ra,0x0
    8000313c:	ed4080e7          	jalr	-300(ra) # 8000300c <_ZN9SemaphoreD1Ev>
    80003140:	00048513          	mv	a0,s1
    80003144:	00000097          	auipc	ra,0x0
    80003148:	f74080e7          	jalr	-140(ra) # 800030b8 <_ZdlPv>
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret

0000000080003160 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80003160:	00853783          	ld	a5,8(a0)
    80003164:	02079c63          	bnez	a5,8000319c <_ZN6Thread5startEv+0x3c>
{
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00113423          	sd	ra,8(sp)
    80003170:	00813023          	sd	s0,0(sp)
    80003174:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003178:	01853603          	ld	a2,24(a0)
    8000317c:	01053583          	ld	a1,16(a0)
    80003180:	00850513          	addi	a0,a0,8
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	120080e7          	jalr	288(ra) # 800012a4 <thread_create>
}
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret
        return -1;
    8000319c:	fff00513          	li	a0,-1
}
    800031a0:	00008067          	ret

00000000800031a4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00113423          	sd	ra,8(sp)
    800031ac:	00813023          	sd	s0,0(sp)
    800031b0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800031b4:	ffffe097          	auipc	ra,0xffffe
    800031b8:	170080e7          	jalr	368(ra) # 80001324 <thread_dispatch>
}
    800031bc:	00813083          	ld	ra,8(sp)
    800031c0:	00013403          	ld	s0,0(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret

00000000800031cc <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    800031cc:	ff010113          	addi	sp,sp,-16
    800031d0:	00113423          	sd	ra,8(sp)
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	24c080e7          	jalr	588(ra) # 80001428 <time_sleep>
}
    800031e4:	00813083          	ld	ra,8(sp)
    800031e8:	00013403          	ld	s0,0(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    800031f4:	fe010113          	addi	sp,sp,-32
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	00813823          	sd	s0,16(sp)
    80003200:	00913423          	sd	s1,8(sp)
    80003204:	02010413          	addi	s0,sp,32
    80003208:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    8000320c:	0004b783          	ld	a5,0(s1)
    80003210:	0187b783          	ld	a5,24(a5)
    80003214:	00048513          	mv	a0,s1
    80003218:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    8000321c:	0204b503          	ld	a0,32(s1)
    80003220:	00000097          	auipc	ra,0x0
    80003224:	fac080e7          	jalr	-84(ra) # 800031cc <_ZN6Thread5sleepEm>
    while(true)
    80003228:	fe5ff06f          	j	8000320c <_ZN14PeriodicThread6runnerEPv+0x18>

000000008000322c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    8000322c:	ff010113          	addi	sp,sp,-16
    80003230:	00813423          	sd	s0,8(sp)
    80003234:	01010413          	addi	s0,sp,16
    80003238:	00008797          	auipc	a5,0x8
    8000323c:	54078793          	addi	a5,a5,1344 # 8000b778 <_ZTV6Thread+0x10>
    80003240:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003244:	00053423          	sd	zero,8(a0)
    f = body;
    80003248:	00b53823          	sd	a1,16(a0)
    this->args = args;
    8000324c:	00c53c23          	sd	a2,24(a0)
}
    80003250:	00813403          	ld	s0,8(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00813423          	sd	s0,8(sp)
    80003264:	01010413          	addi	s0,sp,16
    80003268:	00008797          	auipc	a5,0x8
    8000326c:	51078793          	addi	a5,a5,1296 # 8000b778 <_ZTV6Thread+0x10>
    80003270:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003274:	00000797          	auipc	a5,0x0
    80003278:	dd078793          	addi	a5,a5,-560 # 80003044 <_ZN6Thread6runnerEPv>
    8000327c:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80003280:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003284:	00a53c23          	sd	a0,24(a0)
}
    80003288:	00813403          	ld	s0,8(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003294:	00853503          	ld	a0,8(a0)
    80003298:	02050663          	beqz	a0,800032c4 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	124080e7          	jalr	292(ra) # 800013d0 <sem_wait>
}
    800032b4:	00813083          	ld	ra,8(sp)
    800032b8:	00013403          	ld	s0,0(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret
        return -1;
    800032c4:	fff00513          	li	a0,-1
}
    800032c8:	00008067          	ret

00000000800032cc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00113c23          	sd	ra,24(sp)
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	02010413          	addi	s0,sp,32
    800032e0:	00050493          	mv	s1,a0
    800032e4:	00008797          	auipc	a5,0x8
    800032e8:	4bc78793          	addi	a5,a5,1212 # 8000b7a0 <_ZTV9Semaphore+0x10>
    800032ec:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800032f0:	00850513          	addi	a0,a0,8
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	078080e7          	jalr	120(ra) # 8000136c <sem_open>
    if(retval != 0)
    800032fc:	00050463          	beqz	a0,80003304 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003300:	0004b423          	sd	zero,8(s1)
}
    80003304:	01813083          	ld	ra,24(sp)
    80003308:	01013403          	ld	s0,16(sp)
    8000330c:	00813483          	ld	s1,8(sp)
    80003310:	02010113          	addi	sp,sp,32
    80003314:	00008067          	ret

0000000080003318 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003318:	00853503          	ld	a0,8(a0)
    8000331c:	02050663          	beqz	a0,80003348 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00113423          	sd	ra,8(sp)
    80003328:	00813023          	sd	s0,0(sp)
    8000332c:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	0cc080e7          	jalr	204(ra) # 800013fc <sem_signal>
}
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret
        return -1;
    80003348:	fff00513          	li	a0,-1
}
    8000334c:	00008067          	ret

0000000080003350 <_ZN7Console4getcEv>:
char Console::getc() {
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
}
    8000335c:	00000513          	li	a0,0
    80003360:	00813403          	ld	s0,8(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN7Console4putcEc>:
void Console::putc(char) {
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00813423          	sd	s0,8(sp)
    80003374:	01010413          	addi	s0,sp,16
}
    80003378:	00813403          	ld	s0,8(sp)
    8000337c:	01010113          	addi	sp,sp,16
    80003380:	00008067          	ret

0000000080003384 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003384:	fe010113          	addi	sp,sp,-32
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00913423          	sd	s1,8(sp)
    80003394:	01213023          	sd	s2,0(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00050493          	mv	s1,a0
    800033a0:	00058913          	mv	s2,a1
    800033a4:	00050613          	mv	a2,a0
    800033a8:	00000597          	auipc	a1,0x0
    800033ac:	e4c58593          	addi	a1,a1,-436 # 800031f4 <_ZN14PeriodicThread6runnerEPv>
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	e7c080e7          	jalr	-388(ra) # 8000322c <_ZN6ThreadC1EPFvPvES0_>
    800033b8:	00008797          	auipc	a5,0x8
    800033bc:	35878793          	addi	a5,a5,856 # 8000b710 <_ZTV14PeriodicThread+0x10>
    800033c0:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    800033c4:	0324b023          	sd	s2,32(s1)
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	00013903          	ld	s2,0(sp)
    800033d8:	02010113          	addi	sp,sp,32
    800033dc:	00008067          	ret

00000000800033e0 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    800033e0:	ff010113          	addi	sp,sp,-16
    800033e4:	00813423          	sd	s0,8(sp)
    800033e8:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    80003404:	00813403          	ld	s0,8(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00113423          	sd	ra,8(sp)
    80003418:	00813023          	sd	s0,0(sp)
    8000341c:	01010413          	addi	s0,sp,16
    userMain();
    80003420:	00002097          	auipc	ra,0x2
    80003424:	770080e7          	jalr	1904(ra) # 80005b90 <_Z8userMainv>
}
    80003428:	00813083          	ld	ra,8(sp)
    8000342c:	00013403          	ld	s0,0(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <_ZN5Riscv10initSystemEv>:
{
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003448:	00008797          	auipc	a5,0x8
    8000344c:	4187b783          	ld	a5,1048(a5) # 8000b860 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003450:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	37c080e7          	jalr	892(ra) # 800027d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	4e0080e7          	jalr	1248(ra) # 8000293c <_ZN8KConsole10initializeEv>
}
    80003464:	00813083          	ld	ra,8(sp)
    80003468:	00013403          	ld	s0,0(sp)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret

0000000080003474 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00813423          	sd	s0,8(sp)
    8000347c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003480:	00200793          	li	a5,2
    80003484:	1007a073          	csrs	sstatus,a5
}
    80003488:	00813403          	ld	s0,8(sp)
    8000348c:	01010113          	addi	sp,sp,16
    80003490:	00008067          	ret

0000000080003494 <_ZN5Riscv17disableInterruptsEv>:
{
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00813423          	sd	s0,8(sp)
    8000349c:	01010413          	addi	s0,sp,16

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800034a0:	00200793          	li	a5,2
    800034a4:	1007b073          	csrc	sstatus,a5
}
    800034a8:	00813403          	ld	s0,8(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret

00000000800034b4 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00113423          	sd	ra,8(sp)
    800034bc:	00813023          	sd	s0,0(sp)
    800034c0:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	fd0080e7          	jalr	-48(ra) # 80003494 <_ZN5Riscv17disableInterruptsEv>
}
    800034cc:	00813083          	ld	ra,8(sp)
    800034d0:	00013403          	ld	s0,0(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret

00000000800034dc <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00813423          	sd	s0,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800034e8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800034ec:	10200073          	sret
}
    800034f0:	00813403          	ld	s0,8(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <_ZN5Riscv11printStringEPKc>:
{
    800034fc:	fd010113          	addi	sp,sp,-48
    80003500:	02113423          	sd	ra,40(sp)
    80003504:	02813023          	sd	s0,32(sp)
    80003508:	00913c23          	sd	s1,24(sp)
    8000350c:	01213823          	sd	s2,16(sp)
    80003510:	03010413          	addi	s0,sp,48
    80003514:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003518:	100027f3          	csrr	a5,sstatus
    8000351c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003520:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003524:	00200793          	li	a5,2
    80003528:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    8000352c:	0004c503          	lbu	a0,0(s1)
    80003530:	00050a63          	beqz	a0,80003544 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003534:	00005097          	auipc	ra,0x5
    80003538:	ac8080e7          	jalr	-1336(ra) # 80007ffc <__putc>
        string++;
    8000353c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003540:	fedff06f          	j	8000352c <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003544:	0009091b          	sext.w	s2,s2
    80003548:	00297913          	andi	s2,s2,2
    8000354c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003550:	10092073          	csrs	sstatus,s2
}
    80003554:	02813083          	ld	ra,40(sp)
    80003558:	02013403          	ld	s0,32(sp)
    8000355c:	01813483          	ld	s1,24(sp)
    80003560:	01013903          	ld	s2,16(sp)
    80003564:	03010113          	addi	sp,sp,48
    80003568:	00008067          	ret

000000008000356c <_ZN5Riscv12printIntegerEm>:
{
    8000356c:	fc010113          	addi	sp,sp,-64
    80003570:	02113c23          	sd	ra,56(sp)
    80003574:	02813823          	sd	s0,48(sp)
    80003578:	02913423          	sd	s1,40(sp)
    8000357c:	03213023          	sd	s2,32(sp)
    80003580:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003584:	100027f3          	csrr	a5,sstatus
    80003588:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000358c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003590:	00200793          	li	a5,2
    80003594:	1007b073          	csrc	sstatus,a5
        x = num;
    80003598:	0005051b          	sext.w	a0,a0
    i = 0;
    8000359c:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    800035a0:	00a00613          	li	a2,10
    800035a4:	02c5773b          	remuw	a4,a0,a2
    800035a8:	02071693          	slli	a3,a4,0x20
    800035ac:	0206d693          	srli	a3,a3,0x20
    800035b0:	00006717          	auipc	a4,0x6
    800035b4:	be870713          	addi	a4,a4,-1048 # 80009198 <_ZZN5Riscv12printIntegerEmE6digits>
    800035b8:	00d70733          	add	a4,a4,a3
    800035bc:	00074703          	lbu	a4,0(a4)
    800035c0:	fe040693          	addi	a3,s0,-32
    800035c4:	009687b3          	add	a5,a3,s1
    800035c8:	0014849b          	addiw	s1,s1,1
    800035cc:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800035d0:	0005071b          	sext.w	a4,a0
    800035d4:	02c5553b          	divuw	a0,a0,a2
    800035d8:	00900793          	li	a5,9
    800035dc:	fce7e2e3          	bltu	a5,a4,800035a0 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    800035e0:	fff4849b          	addiw	s1,s1,-1
    800035e4:	0004ce63          	bltz	s1,80003600 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800035e8:	fe040793          	addi	a5,s0,-32
    800035ec:	009787b3          	add	a5,a5,s1
    800035f0:	ff07c503          	lbu	a0,-16(a5)
    800035f4:	00005097          	auipc	ra,0x5
    800035f8:	a08080e7          	jalr	-1528(ra) # 80007ffc <__putc>
    800035fc:	fe5ff06f          	j	800035e0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003600:	00a00513          	li	a0,10
    80003604:	00005097          	auipc	ra,0x5
    80003608:	9f8080e7          	jalr	-1544(ra) # 80007ffc <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000360c:	0009091b          	sext.w	s2,s2
    80003610:	00297913          	andi	s2,s2,2
    80003614:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003618:	10092073          	csrs	sstatus,s2
}
    8000361c:	03813083          	ld	ra,56(sp)
    80003620:	03013403          	ld	s0,48(sp)
    80003624:	02813483          	ld	s1,40(sp)
    80003628:	02013903          	ld	s2,32(sp)
    8000362c:	04010113          	addi	sp,sp,64
    80003630:	00008067          	ret

0000000080003634 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003634:	f8010113          	addi	sp,sp,-128
    80003638:	06113c23          	sd	ra,120(sp)
    8000363c:	06813823          	sd	s0,112(sp)
    80003640:	06913423          	sd	s1,104(sp)
    80003644:	07213023          	sd	s2,96(sp)
    80003648:	05313c23          	sd	s3,88(sp)
    8000364c:	05413823          	sd	s4,80(sp)
    80003650:	05513423          	sd	s5,72(sp)
    80003654:	05613023          	sd	s6,64(sp)
    80003658:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    8000365c:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003660:	142027f3          	csrr	a5,scause
    80003664:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80003668:	f8043783          	ld	a5,-128(s0)
    switch(scause)
    8000366c:	fff00713          	li	a4,-1
    80003670:	03f71713          	slli	a4,a4,0x3f
    80003674:	00170713          	addi	a4,a4,1
    80003678:	0ee78663          	beq	a5,a4,80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    8000367c:	fff00713          	li	a4,-1
    80003680:	03f71713          	slli	a4,a4,0x3f
    80003684:	00170713          	addi	a4,a4,1
    80003688:	08f76e63          	bltu	a4,a5,80003724 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    8000368c:	ff878793          	addi	a5,a5,-8
    80003690:	00100713          	li	a4,1
    80003694:	0af76463          	bltu	a4,a5,8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003698:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000369c:	14102773          	csrr	a4,sepc
    800036a0:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    800036a4:	f9843703          	ld	a4,-104(s0)
            sepc+=4;
    800036a8:	00470913          	addi	s2,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    800036ac:	00100713          	li	a4,1
    800036b0:	14e78263          	beq	a5,a4,800037f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == MemoryAllocator::MEM_FREE)
    800036b4:	00200713          	li	a4,2
    800036b8:	14e78c63          	beq	a5,a4,80003810 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
            else if(operation == PCB::THREAD_CREATE)
    800036bc:	01100713          	li	a4,17
    800036c0:	16e78263          	beq	a5,a4,80003824 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            else if(operation == PCB::THREAD_DISPATCH)
    800036c4:	01300713          	li	a4,19
    800036c8:	1ae78463          	beq	a5,a4,80003870 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
            else if(operation == PCB::THREAD_EXIT)
    800036cc:	01200713          	li	a4,18
    800036d0:	1ce78463          	beq	a5,a4,80003898 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
            else if(operation == PCB::TIME_SLEEP)
    800036d4:	03100713          	li	a4,49
    800036d8:	20e78a63          	beq	a5,a4,800038ec <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
            else if(operation == KSemaphore::SEM_OPEN)
    800036dc:	02100713          	li	a4,33
    800036e0:	24e78a63          	beq	a5,a4,80003934 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
            else if(operation == KSemaphore::SEM_WAIT)
    800036e4:	02300713          	li	a4,35
    800036e8:	28e78463          	beq	a5,a4,80003970 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
            else if(operation == KSemaphore::SEM_SIGNAL)
    800036ec:	02400713          	li	a4,36
    800036f0:	2ae78263          	beq	a5,a4,80003994 <_ZN5Riscv20handleSupervisorTrapEv+0x360>
            else if(operation == KSemaphore::SEM_CLOSE)
    800036f4:	02200713          	li	a4,34
    800036f8:	10e79863          	bne	a5,a4,80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800036fc:	00058493          	mv	s1,a1
                delete kSem;
    80003700:	00048e63          	beqz	s1,8000371c <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80003704:	00048513          	mv	a0,s1
    80003708:	00001097          	auipc	ra,0x1
    8000370c:	8e4080e7          	jalr	-1820(ra) # 80003fec <_ZN10KSemaphoreD1Ev>
    80003710:	00048513          	mv	a0,s1
    80003714:	00001097          	auipc	ra,0x1
    80003718:	a08080e7          	jalr	-1528(ra) # 8000411c <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    8000371c:	00000513          	li	a0,0
    80003720:	0e80006f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    switch(scause)
    80003724:	fff00713          	li	a4,-1
    80003728:	03f71713          	slli	a4,a4,0x3f
    8000372c:	00970713          	addi	a4,a4,9
    80003730:	00e79663          	bne	a5,a4,8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            console_handler();
    80003734:	00005097          	auipc	ra,0x5
    80003738:	93c080e7          	jalr	-1732(ra) # 80008070 <console_handler>
}
    8000373c:	07813083          	ld	ra,120(sp)
    80003740:	07013403          	ld	s0,112(sp)
    80003744:	06813483          	ld	s1,104(sp)
    80003748:	06013903          	ld	s2,96(sp)
    8000374c:	05813983          	ld	s3,88(sp)
    80003750:	05013a03          	ld	s4,80(sp)
    80003754:	04813a83          	ld	s5,72(sp)
    80003758:	04013b03          	ld	s6,64(sp)
    8000375c:	08010113          	addi	sp,sp,128
    80003760:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003764:	00200793          	li	a5,2
    80003768:	1447b073          	csrc	sip,a5
            total++;
    8000376c:	00008797          	auipc	a5,0x8
    80003770:	1ec78793          	addi	a5,a5,492 # 8000b958 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003774:	0007b503          	ld	a0,0(a5)
    80003778:	00150513          	addi	a0,a0,1
    8000377c:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    80003780:	00000097          	auipc	ra,0x0
    80003784:	dec080e7          	jalr	-532(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
            PCB::timeSliceCounter++;
    80003788:	00008497          	auipc	s1,0x8
    8000378c:	0e04b483          	ld	s1,224(s1) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003790:	0004b783          	ld	a5,0(s1)
    80003794:	00178793          	addi	a5,a5,1
    80003798:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	4c0080e7          	jalr	1216(ra) # 80002c5c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800037a4:	00008797          	auipc	a5,0x8
    800037a8:	0d47b783          	ld	a5,212(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037ac:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800037b0:	0107b783          	ld	a5,16(a5)
    800037b4:	0004b703          	ld	a4,0(s1)
    800037b8:	f8f762e3          	bltu	a4,a5,8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800037bc:	141027f3          	csrr	a5,sepc
    800037c0:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800037c4:	f9043483          	ld	s1,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800037c8:	100027f3          	csrr	a5,sstatus
    800037cc:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    800037d0:	f8843903          	ld	s2,-120(s0)
                PCB::timeSliceCounter = 0;
    800037d4:	00008797          	auipc	a5,0x8
    800037d8:	0947b783          	ld	a5,148(a5) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x18>
    800037dc:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	ee4080e7          	jalr	-284(ra) # 800026c4 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800037e8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800037ec:	14149073          	csrw	sepc,s1
}
    800037f0:	f4dff06f          	j	8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800037f4:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800037f8:	00651513          	slli	a0,a0,0x6
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	658080e7          	jalr	1624(ra) # 80003e54 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003804:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003808:	14191073          	csrw	sepc,s2
}
    8000380c:	f31ff06f          	j	8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003810:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003814:	00000097          	auipc	ra,0x0
    80003818:	668080e7          	jalr	1640(ra) # 80003e7c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000381c:	00050513          	mv	a0,a0
    80003820:	fe9ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003824:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80003828:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    8000382c:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003830:	05800513          	li	a0,88
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	f20080e7          	jalr	-224(ra) # 80002754 <_ZN3PCBnwEm>
    8000383c:	00050993          	mv	s3,a0
    80003840:	00200713          	li	a4,2
    80003844:	00048693          	mv	a3,s1
    80003848:	000b0613          	mv	a2,s6
    8000384c:	000a8593          	mv	a1,s5
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	dcc080e7          	jalr	-564(ra) # 8000261c <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003858:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    8000385c:	00098663          	beqz	s3,80003868 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                    __asm__ volatile("li a0, 0");
    80003860:	00000513          	li	a0,0
    80003864:	fa5ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003868:	fff00513          	li	a0,-1
    8000386c:	f9dff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003870:	100027f3          	csrr	a5,sstatus
    80003874:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80003878:	fa043483          	ld	s1,-96(s0)
                PCB::timeSliceCounter = 0;
    8000387c:	00008797          	auipc	a5,0x8
    80003880:	fec7b783          	ld	a5,-20(a5) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003884:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	e3c080e7          	jalr	-452(ra) # 800026c4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003890:	10049073          	csrw	sstatus,s1
}
    80003894:	f75ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                if(PCB::running == 0)
    80003898:	00008797          	auipc	a5,0x8
    8000389c:	fe07b783          	ld	a5,-32(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    800038a0:	0007b783          	ld	a5,0(a5)
    800038a4:	04078063          	beqz	a5,800038e4 <_ZN5Riscv20handleSupervisorTrapEv+0x2b0>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800038a8:	100027f3          	csrr	a5,sstatus
    800038ac:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    800038b0:	fa843483          	ld	s1,-88(s0)
                PCB::timeSliceCounter = 0;
    800038b4:	00008797          	auipc	a5,0x8
    800038b8:	fb47b783          	ld	a5,-76(a5) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038bc:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    800038c0:	00008797          	auipc	a5,0x8
    800038c4:	fb87b783          	ld	a5,-72(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    800038c8:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    800038cc:	00300713          	li	a4,3
    800038d0:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	df0080e7          	jalr	-528(ra) # 800026c4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800038dc:	10049073          	csrw	sstatus,s1
}
    800038e0:	f29ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800038e4:	fff00513          	li	a0,-1
                    return;
    800038e8:	e55ff06f          	j	8000373c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800038ec:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800038f0:	100027f3          	csrr	a5,sstatus
    800038f4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800038f8:	fb043483          	ld	s1,-80(s0)
                PCB::timeSliceCounter = 0;
    800038fc:	00008797          	auipc	a5,0x8
    80003900:	f6c7b783          	ld	a5,-148(a5) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003904:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003908:	00008797          	auipc	a5,0x8
    8000390c:	f707b783          	ld	a5,-144(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003910:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003914:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	2b0080e7          	jalr	688(ra) # 80002bc8 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	da4080e7          	jalr	-604(ra) # 800026c4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003928:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0x0");
    8000392c:	00000513          	li	a0,0
    80003930:	ed9ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003934:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003938:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    8000393c:	01800513          	li	a0,24
    80003940:	00000097          	auipc	ra,0x0
    80003944:	7b4080e7          	jalr	1972(ra) # 800040f4 <_ZN10KSemaphorenwEm>
    80003948:	00050493          	mv	s1,a0
    8000394c:	000a059b          	sext.w	a1,s4
    80003950:	00000097          	auipc	ra,0x0
    80003954:	554080e7          	jalr	1364(ra) # 80003ea4 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003958:	0099b023          	sd	s1,0(s3)
                if(newSem == 0)
    8000395c:	00048663          	beqz	s1,80003968 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
                        __asm__ volatile("li a0, 0");
    80003960:	00000513          	li	a0,0
    80003964:	ea5ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003968:	fff00513          	li	a0,-1
    8000396c:	e9dff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003970:	100027f3          	csrr	a5,sstatus
    80003974:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003978:	fb843483          	ld	s1,-72(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000397c:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003980:	00000097          	auipc	ra,0x0
    80003984:	5cc080e7          	jalr	1484(ra) # 80003f4c <_ZN10KSemaphore4waitEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003988:	10049073          	csrw	sstatus,s1
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000398c:	00050513          	mv	a0,a0
    80003990:	e79ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003994:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	714080e7          	jalr	1812(ra) # 800040ac <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800039a0:	00050513          	mv	a0,a0
    800039a4:	e65ff06f          	j	80003808 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    800039a8:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    800039ac:	00098513          	mv	a0,s3
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	dcc080e7          	jalr	-564(ra) # 8000277c <_ZN3PCBdlEPv>
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00009097          	auipc	ra,0x9
    800039c0:	0ac080e7          	jalr	172(ra) # 8000ca68 <_Unwind_Resume>
    800039c4:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00000097          	auipc	ra,0x0
    800039d0:	750080e7          	jalr	1872(ra) # 8000411c <_ZN10KSemaphoredlEPv>
    800039d4:	00090513          	mv	a0,s2
    800039d8:	00009097          	auipc	ra,0x9
    800039dc:	090080e7          	jalr	144(ra) # 8000ca68 <_Unwind_Resume>

00000000800039e0 <_ZN5Riscv10kernelMainEv>:
{
    800039e0:	fe010113          	addi	sp,sp,-32
    800039e4:	00113c23          	sd	ra,24(sp)
    800039e8:	00813823          	sd	s0,16(sp)
    800039ec:	00913423          	sd	s1,8(sp)
    800039f0:	01213023          	sd	s2,0(sp)
    800039f4:	02010413          	addi	s0,sp,32
    initSystem();
    800039f8:	00000097          	auipc	ra,0x0
    800039fc:	a40080e7          	jalr	-1472(ra) # 80003438 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003a00:	00001537          	lui	a0,0x1
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	450080e7          	jalr	1104(ra) # 80003e54 <_Z7kmallocm>
    80003a0c:	00050913          	mv	s2,a0
    80003a10:	05800513          	li	a0,88
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	d40080e7          	jalr	-704(ra) # 80002754 <_ZN3PCBnwEm>
    80003a1c:	00050493          	mv	s1,a0
    80003a20:	00200713          	li	a4,2
    80003a24:	00090693          	mv	a3,s2
    80003a28:	00000613          	li	a2,0
    80003a2c:	00000597          	auipc	a1,0x0
    80003a30:	9e458593          	addi	a1,a1,-1564 # 80003410 <_ZN5Riscv15userMainWrapperEPv>
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	be8080e7          	jalr	-1048(ra) # 8000261c <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003a3c:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003a40:	00300793          	li	a5,3
    80003a44:	00f70863          	beq	a4,a5,80003a54 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	8dc080e7          	jalr	-1828(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003a50:	fedff06f          	j	80003a3c <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	a60080e7          	jalr	-1440(ra) # 800034b4 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003a5c:	00005517          	auipc	a0,0x5
    80003a60:	73450513          	addi	a0,a0,1844 # 80009190 <CONSOLE_STATUS+0x180>
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	a98080e7          	jalr	-1384(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
}
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	00013903          	ld	s2,0(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret
    80003a84:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	cf0080e7          	jalr	-784(ra) # 8000277c <_ZN3PCBdlEPv>
    80003a94:	00090513          	mv	a0,s2
    80003a98:	00009097          	auipc	ra,0x9
    80003a9c:	fd0080e7          	jalr	-48(ra) # 8000ca68 <_Unwind_Resume>

0000000080003aa0 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003aac:	00008717          	auipc	a4,0x8
    80003ab0:	eb472703          	lw	a4,-332(a4) # 8000b960 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ab4:	00100793          	li	a5,1
    80003ab8:	04f70263          	beq	a4,a5,80003afc <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003abc:	00008797          	auipc	a5,0x8
    80003ac0:	ea478793          	addi	a5,a5,-348 # 8000b960 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ac4:	00100713          	li	a4,1
    80003ac8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003acc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003ad0:	00008717          	auipc	a4,0x8
    80003ad4:	d8873703          	ld	a4,-632(a4) # 8000b858 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003ad8:	00073703          	ld	a4,0(a4)
    80003adc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003ae0:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003ae4:	00008797          	auipc	a5,0x8
    80003ae8:	d9c7b783          	ld	a5,-612(a5) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003aec:	0007b783          	ld	a5,0(a5)
    80003af0:	40e787b3          	sub	a5,a5,a4
    80003af4:	ff178793          	addi	a5,a5,-15
    80003af8:	00f73023          	sd	a5,0(a4)
}
    80003afc:	00813403          	ld	s0,8(sp)
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	00008067          	ret

0000000080003b08 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003b08:	fe010113          	addi	sp,sp,-32
    80003b0c:	00113c23          	sd	ra,24(sp)
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	01213023          	sd	s2,0(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00058913          	mv	s2,a1

    initMemory();
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	f78080e7          	jalr	-136(ra) # 80003aa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003b30:	00008797          	auipc	a5,0x8
    80003b34:	e387b783          	ld	a5,-456(a5) # 8000b968 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003b38:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003b3c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003b40:	00000713          	li	a4,0
    while(curr != 0)
    80003b44:	00078c63          	beqz	a5,80003b5c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003b48:	00f4e863          	bltu	s1,a5,80003b58 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003b4c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003b50:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003b54:	ff1ff06f          	j	80003b44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003b58:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003b5c:	02070063          	beqz	a4,80003b7c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003b60:	00973423          	sd	s1,8(a4)
}
    80003b64:	01813083          	ld	ra,24(sp)
    80003b68:	01013403          	ld	s0,16(sp)
    80003b6c:	00813483          	ld	s1,8(sp)
    80003b70:	00013903          	ld	s2,0(sp)
    80003b74:	02010113          	addi	sp,sp,32
    80003b78:	00008067          	ret
        headAllocated = newAllocated;
    80003b7c:	00008797          	auipc	a5,0x8
    80003b80:	de97b623          	sd	s1,-532(a5) # 8000b968 <_ZN15MemoryAllocator13headAllocatedE>
    80003b84:	fe1ff06f          	j	80003b64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003b88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003b88:	fe010113          	addi	sp,sp,-32
    80003b8c:	00113c23          	sd	ra,24(sp)
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	01213023          	sd	s2,0(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00050913          	mv	s2,a0
    initMemory();
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	efc080e7          	jalr	-260(ra) # 80003aa0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003bac:	00008497          	auipc	s1,0x8
    80003bb0:	dc44b483          	ld	s1,-572(s1) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003bb4:	00000713          	li	a4,0
    while(curr != 0)
    80003bb8:	0a048863          	beqz	s1,80003c68 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003bbc:	0004b783          	ld	a5,0(s1)
    80003bc0:	0127f863          	bgeu	a5,s2,80003bd0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003bc4:	00048713          	mv	a4,s1
        curr = curr->next;
    80003bc8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003bcc:	fedff06f          	j	80003bb8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003bd0:	01090693          	addi	a3,s2,16
    80003bd4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003bd8:	00008617          	auipc	a2,0x8
    80003bdc:	ca863603          	ld	a2,-856(a2) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003be0:	00063603          	ld	a2,0(a2)
    80003be4:	04d66c63          	bltu	a2,a3,80003c3c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003be8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003bec:	01000613          	li	a2,16
    80003bf0:	02f67663          	bgeu	a2,a5,80003c1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003bf4:	0084b603          	ld	a2,8(s1)
    80003bf8:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003bfc:	ff078793          	addi	a5,a5,-16
    80003c00:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003c04:	00070663          	beqz	a4,80003c10 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003c08:	00d73423          	sd	a3,8(a4)
    80003c0c:	0380006f          	j	80003c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003c10:	00008797          	auipc	a5,0x8
    80003c14:	d6d7b023          	sd	a3,-672(a5) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    80003c18:	02c0006f          	j	80003c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003c1c:	00070863          	beqz	a4,80003c2c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003c20:	0084b783          	ld	a5,8(s1)
    80003c24:	00f73423          	sd	a5,8(a4)
    80003c28:	01c0006f          	j	80003c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003c2c:	0084b783          	ld	a5,8(s1)
    80003c30:	00008717          	auipc	a4,0x8
    80003c34:	d4f73023          	sd	a5,-704(a4) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    80003c38:	00c0006f          	j	80003c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003c3c:	02070063          	beqz	a4,80003c5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003c40:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003c44:	00090593          	mv	a1,s2
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	ebc080e7          	jalr	-324(ra) # 80003b08 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003c54:	01048513          	addi	a0,s1,16
            break;
    80003c58:	0140006f          	j	80003c6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003c5c:	00008797          	auipc	a5,0x8
    80003c60:	d007ba23          	sd	zero,-748(a5) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    80003c64:	fe1ff06f          	j	80003c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003c68:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	00013903          	ld	s2,0(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret

0000000080003c84 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00113423          	sd	ra,8(sp)
    80003c8c:	00813023          	sd	s0,0(sp)
    80003c90:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	ef4080e7          	jalr	-268(ra) # 80003b88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003c9c:	00813083          	ld	ra,8(sp)
    80003ca0:	00013403          	ld	s0,0(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret

0000000080003cac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	01213023          	sd	s2,0(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    80003cc4:	00050493          	mv	s1,a0
    80003cc8:	00058913          	mv	s2,a1
    initMemory();
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	dd4080e7          	jalr	-556(ra) # 80003aa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003cd4:	00008797          	auipc	a5,0x8
    80003cd8:	c9c7b783          	ld	a5,-868(a5) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003cdc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003ce0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003ce4:	00000713          	li	a4,0
    while(curr != 0)
    80003ce8:	00078c63          	beqz	a5,80003d00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003cec:	00f4e863          	bltu	s1,a5,80003cfc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003cf0:	00078713          	mv	a4,a5
        curr = curr->next;
    80003cf4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003cf8:	ff1ff06f          	j	80003ce8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003cfc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d00:	04070663          	beqz	a4,80003d4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003d04:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003d08:	0084b783          	ld	a5,8(s1)
    80003d0c:	00078a63          	beqz	a5,80003d20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003d10:	0004b603          	ld	a2,0(s1)
    80003d14:	01060693          	addi	a3,a2,16
    80003d18:	00d486b3          	add	a3,s1,a3
    80003d1c:	02d78e63          	beq	a5,a3,80003d58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003d20:	00070a63          	beqz	a4,80003d34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003d24:	00073683          	ld	a3,0(a4)
    80003d28:	01068793          	addi	a5,a3,16
    80003d2c:	00f707b3          	add	a5,a4,a5
    80003d30:	04978263          	beq	a5,s1,80003d74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	00013903          	ld	s2,0(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret
        headFree = newSegment;
    80003d4c:	00008797          	auipc	a5,0x8
    80003d50:	c297b223          	sd	s1,-988(a5) # 8000b970 <_ZN15MemoryAllocator8headFreeE>
    80003d54:	fb5ff06f          	j	80003d08 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003d58:	0007b683          	ld	a3,0(a5)
    80003d5c:	00d60633          	add	a2,a2,a3
    80003d60:	01060613          	addi	a2,a2,16
    80003d64:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003d68:	0087b783          	ld	a5,8(a5)
    80003d6c:	00f4b423          	sd	a5,8(s1)
    80003d70:	fb1ff06f          	j	80003d20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003d74:	0004b783          	ld	a5,0(s1)
    80003d78:	00f686b3          	add	a3,a3,a5
    80003d7c:	01068693          	addi	a3,a3,16
    80003d80:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003d84:	0084b783          	ld	a5,8(s1)
    80003d88:	00f73423          	sd	a5,8(a4)
}
    80003d8c:	fa9ff06f          	j	80003d34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003d90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003d90:	fe010113          	addi	sp,sp,-32
    80003d94:	00113c23          	sd	ra,24(sp)
    80003d98:	00813823          	sd	s0,16(sp)
    80003d9c:	00913423          	sd	s1,8(sp)
    80003da0:	01213023          	sd	s2,0(sp)
    80003da4:	02010413          	addi	s0,sp,32
    80003da8:	00050913          	mv	s2,a0
    initMemory();
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	cf4080e7          	jalr	-780(ra) # 80003aa0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003db4:	00008497          	auipc	s1,0x8
    80003db8:	bb44b483          	ld	s1,-1100(s1) # 8000b968 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003dbc:	00000713          	li	a4,0
    while(curr != 0)
    80003dc0:	02048a63          	beqz	s1,80003df4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003dc4:	01048793          	addi	a5,s1,16
    80003dc8:	01278863          	beq	a5,s2,80003dd8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003dcc:	00048713          	mv	a4,s1
        curr = curr->next;
    80003dd0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003dd4:	fedff06f          	j	80003dc0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003dd8:	02070e63          	beqz	a4,80003e14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ddc:	0084b783          	ld	a5,8(s1)
    80003de0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003de4:	0004b583          	ld	a1,0(s1)
    80003de8:	00048513          	mv	a0,s1
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	ec0080e7          	jalr	-320(ra) # 80003cac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003df4:	02048863          	beqz	s1,80003e24 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003df8:	00000513          	li	a0,0
    else
        return 1;
}
    80003dfc:	01813083          	ld	ra,24(sp)
    80003e00:	01013403          	ld	s0,16(sp)
    80003e04:	00813483          	ld	s1,8(sp)
    80003e08:	00013903          	ld	s2,0(sp)
    80003e0c:	02010113          	addi	sp,sp,32
    80003e10:	00008067          	ret
                headAllocated = curr->next;
    80003e14:	0084b783          	ld	a5,8(s1)
    80003e18:	00008717          	auipc	a4,0x8
    80003e1c:	b4f73823          	sd	a5,-1200(a4) # 8000b968 <_ZN15MemoryAllocator13headAllocatedE>
    80003e20:	fc5ff06f          	j	80003de4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003e24:	00100513          	li	a0,1
    80003e28:	fd5ff06f          	j	80003dfc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003e2c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003e2c:	ff010113          	addi	sp,sp,-16
    80003e30:	00113423          	sd	ra,8(sp)
    80003e34:	00813023          	sd	s0,0(sp)
    80003e38:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	f54080e7          	jalr	-172(ra) # 80003d90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003e44:	00813083          	ld	ra,8(sp)
    80003e48:	00013403          	ld	s0,0(sp)
    80003e4c:	01010113          	addi	sp,sp,16
    80003e50:	00008067          	ret

0000000080003e54 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00113423          	sd	ra,8(sp)
    80003e5c:	00813023          	sd	s0,0(sp)
    80003e60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	e20080e7          	jalr	-480(ra) # 80003c84 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003e6c:	00813083          	ld	ra,8(sp)
    80003e70:	00013403          	ld	s0,0(sp)
    80003e74:	01010113          	addi	sp,sp,16
    80003e78:	00008067          	ret

0000000080003e7c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003e7c:	ff010113          	addi	sp,sp,-16
    80003e80:	00113423          	sd	ra,8(sp)
    80003e84:	00813023          	sd	s0,0(sp)
    80003e88:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	fa0080e7          	jalr	-96(ra) # 80003e2c <_ZN15MemoryAllocator8mem_freeEPv>
    80003e94:	00813083          	ld	ra,8(sp)
    80003e98:	00013403          	ld	s0,0(sp)
    80003e9c:	01010113          	addi	sp,sp,16
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003ea4:	ff010113          	addi	sp,sp,-16
    80003ea8:	00813423          	sd	s0,8(sp)
    80003eac:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003eb0:	00b52a23          	sw	a1,20(a0)
    80003eb4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003eb8:	00053423          	sd	zero,8(a0)
    80003ebc:	00053023          	sd	zero,0(a0)
}
    80003ec0:	00813403          	ld	s0,8(sp)
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00008067          	ret

0000000080003ecc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003ed8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80003edc:	00053783          	ld	a5,0(a0)
    80003ee0:	00078e63          	beqz	a5,80003efc <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003ee4:	00853783          	ld	a5,8(a0)
    80003ee8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80003eec:	00b53423          	sd	a1,8(a0)
    }
}
    80003ef0:	00813403          	ld	s0,8(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003efc:	00b53423          	sd	a1,8(a0)
    80003f00:	00b53023          	sd	a1,0(a0)
    80003f04:	fedff06f          	j	80003ef0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003f08 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003f08:	ff010113          	addi	sp,sp,-16
    80003f0c:	00113423          	sd	ra,8(sp)
    80003f10:	00813023          	sd	s0,0(sp)
    80003f14:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003f18:	00008797          	auipc	a5,0x8
    80003f1c:	9607b783          	ld	a5,-1696(a5) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f20:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003f24:	00200793          	li	a5,2
    80003f28:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80003f2c:	00000097          	auipc	ra,0x0
    80003f30:	fa0080e7          	jalr	-96(ra) # 80003ecc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	790080e7          	jalr	1936(ra) # 800026c4 <_ZN3PCB8dispatchEv>
}
    80003f3c:	00813083          	ld	ra,8(sp)
    80003f40:	00013403          	ld	s0,0(sp)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	00008067          	ret

0000000080003f4c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003f4c:	01052783          	lw	a5,16(a0)
    80003f50:	fff7879b          	addiw	a5,a5,-1
    80003f54:	00f52823          	sw	a5,16(a0)
    80003f58:	02079713          	slli	a4,a5,0x20
    80003f5c:	00074663          	bltz	a4,80003f68 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003f60:	00000513          	li	a0,0
    80003f64:	00008067          	ret
uint64 KSemaphore::wait() {
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00113423          	sd	ra,8(sp)
    80003f70:	00813023          	sd	s0,0(sp)
    80003f74:	01010413          	addi	s0,sp,16
        block();
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	f90080e7          	jalr	-112(ra) # 80003f08 <_ZN10KSemaphore5blockEv>
}
    80003f80:	00000513          	li	a0,0
    80003f84:	00813083          	ld	ra,8(sp)
    80003f88:	00013403          	ld	s0,0(sp)
    80003f8c:	01010113          	addi	sp,sp,16
    80003f90:	00008067          	ret

0000000080003f94 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003f94:	ff010113          	addi	sp,sp,-16
    80003f98:	00813423          	sd	s0,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003fa0:	00053503          	ld	a0,0(a0)
    80003fa4:	00813403          	ld	s0,8(sp)
    80003fa8:	01010113          	addi	sp,sp,16
    80003fac:	00008067          	ret

0000000080003fb0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003fb0:	ff010113          	addi	sp,sp,-16
    80003fb4:	00813423          	sd	s0,8(sp)
    80003fb8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003fbc:	00053783          	ld	a5,0(a0)
    80003fc0:	00078c63          	beqz	a5,80003fd8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003fc4:	0087b703          	ld	a4,8(a5)
    80003fc8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003fcc:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003fd0:	00053783          	ld	a5,0(a0)
    80003fd4:	00078863          	beqz	a5,80003fe4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003fd8:	00813403          	ld	s0,8(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret
        tailBlocked =0;
    80003fe4:	00053423          	sd	zero,8(a0)
    80003fe8:	ff1ff06f          	j	80003fd8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003fec <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00113c23          	sd	ra,24(sp)
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	01213023          	sd	s2,0(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004008:	00090513          	mv	a0,s2
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	f88080e7          	jalr	-120(ra) # 80003f94 <_ZN10KSemaphore15getFirstBlockedEv>
    80004014:	00050493          	mv	s1,a0
    80004018:	02050063          	beqz	a0,80004038 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000401c:	00090513          	mv	a0,s2
    80004020:	00000097          	auipc	ra,0x0
    80004024:	f90080e7          	jalr	-112(ra) # 80003fb0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004028:	00048513          	mv	a0,s1
    8000402c:	fffff097          	auipc	ra,0xfffff
    80004030:	ee0080e7          	jalr	-288(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004034:	fd5ff06f          	j	80004008 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004038:	01813083          	ld	ra,24(sp)
    8000403c:	01013403          	ld	s0,16(sp)
    80004040:	00813483          	ld	s1,8(sp)
    80004044:	00013903          	ld	s2,0(sp)
    80004048:	02010113          	addi	sp,sp,32
    8000404c:	00008067          	ret

0000000080004050 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004050:	fe010113          	addi	sp,sp,-32
    80004054:	00113c23          	sd	ra,24(sp)
    80004058:	00813823          	sd	s0,16(sp)
    8000405c:	00913423          	sd	s1,8(sp)
    80004060:	01213023          	sd	s2,0(sp)
    80004064:	02010413          	addi	s0,sp,32
    80004068:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000406c:	00000097          	auipc	ra,0x0
    80004070:	f28080e7          	jalr	-216(ra) # 80003f94 <_ZN10KSemaphore15getFirstBlockedEv>
    80004074:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004078:	00090513          	mv	a0,s2
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	f34080e7          	jalr	-204(ra) # 80003fb0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004084:	00048863          	beqz	s1,80004094 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80004088:	00048513          	mv	a0,s1
    8000408c:	fffff097          	auipc	ra,0xfffff
    80004090:	e80080e7          	jalr	-384(ra) # 80002f0c <_ZN9Scheduler3putEP3PCB>
}
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00813483          	ld	s1,8(sp)
    800040a0:	00013903          	ld	s2,0(sp)
    800040a4:	02010113          	addi	sp,sp,32
    800040a8:	00008067          	ret

00000000800040ac <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800040ac:	01052783          	lw	a5,16(a0)
    800040b0:	0017879b          	addiw	a5,a5,1
    800040b4:	0007871b          	sext.w	a4,a5
    800040b8:	00f52823          	sw	a5,16(a0)
    800040bc:	00e05663          	blez	a4,800040c8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800040c0:	00000513          	li	a0,0
    800040c4:	00008067          	ret
uint64 KSemaphore::signal() {
    800040c8:	ff010113          	addi	sp,sp,-16
    800040cc:	00113423          	sd	ra,8(sp)
    800040d0:	00813023          	sd	s0,0(sp)
    800040d4:	01010413          	addi	s0,sp,16
        unblock();
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	f78080e7          	jalr	-136(ra) # 80004050 <_ZN10KSemaphore7unblockEv>
}
    800040e0:	00000513          	li	a0,0
    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00113423          	sd	ra,8(sp)
    800040fc:	00813023          	sd	s0,0(sp)
    80004100:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004104:	00000097          	auipc	ra,0x0
    80004108:	d50080e7          	jalr	-688(ra) # 80003e54 <_Z7kmallocm>
}
    8000410c:	00813083          	ld	ra,8(sp)
    80004110:	00013403          	ld	s0,0(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    8000411c:	ff010113          	addi	sp,sp,-16
    80004120:	00113423          	sd	ra,8(sp)
    80004124:	00813023          	sd	s0,0(sp)
    80004128:	01010413          	addi	s0,sp,16
    kfree(p);
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	d50080e7          	jalr	-688(ra) # 80003e7c <_Z5kfreePv>
}
    80004134:	00813083          	ld	ra,8(sp)
    80004138:	00013403          	ld	s0,0(sp)
    8000413c:	01010113          	addi	sp,sp,16
    80004140:	00008067          	ret

0000000080004144 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004144:	fd010113          	addi	sp,sp,-48
    80004148:	02113423          	sd	ra,40(sp)
    8000414c:	02813023          	sd	s0,32(sp)
    80004150:	00913c23          	sd	s1,24(sp)
    80004154:	01213823          	sd	s2,16(sp)
    80004158:	01313423          	sd	s3,8(sp)
    8000415c:	03010413          	addi	s0,sp,48
    80004160:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    80004164:	00005517          	auipc	a0,0x5
    80004168:	04450513          	addi	a0,a0,68 # 800091a8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    8000416c:	fffff097          	auipc	ra,0xfffff
    80004170:	390080e7          	jalr	912(ra) # 800034fc <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004174:	00000993          	li	s3,0
    while (!threadEnd) {
    80004178:	00008797          	auipc	a5,0x8
    8000417c:	8007a783          	lw	a5,-2048(a5) # 8000b978 <threadEnd>
    80004180:	0c079863          	bnez	a5,80004250 <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    80004184:	00092583          	lw	a1,0(s2)
    80004188:	0305859b          	addiw	a1,a1,48
    8000418c:	00893503          	ld	a0,8(s2)
    80004190:	00002097          	auipc	ra,0x2
    80004194:	c88080e7          	jalr	-888(ra) # 80005e18 <_ZN6Buffer3putEi>
        i++;
    80004198:	0019849b          	addiw	s1,s3,1
    8000419c:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    800041a0:	00007717          	auipc	a4,0x7
    800041a4:	7d870713          	addi	a4,a4,2008 # 8000b978 <threadEnd>
    800041a8:	00472783          	lw	a5,4(a4)
    800041ac:	0017879b          	addiw	a5,a5,1
    800041b0:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    800041b4:	00005517          	auipc	a0,0x5
    800041b8:	00c50513          	addi	a0,a0,12 # 800091c0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	340080e7          	jalr	832(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    800041c4:	00092503          	lw	a0,0(s2)
    800041c8:	0305051b          	addiw	a0,a0,48
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	3a0080e7          	jalr	928(ra) # 8000356c <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    800041d4:	00092703          	lw	a4,0(s2)
    800041d8:	0027179b          	slliw	a5,a4,0x2
    800041dc:	00e787bb          	addw	a5,a5,a4
    800041e0:	0017979b          	slliw	a5,a5,0x1
    800041e4:	02f4e7bb          	remw	a5,s1,a5
    800041e8:	02078e63          	beqz	a5,80004224 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    800041ec:	00007497          	auipc	s1,0x7
    800041f0:	78c48493          	addi	s1,s1,1932 # 8000b978 <threadEnd>
    800041f4:	0044a503          	lw	a0,4(s1)
    800041f8:	0005051b          	sext.w	a0,a0
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	370080e7          	jalr	880(ra) # 8000356c <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004204:	0044a783          	lw	a5,4(s1)
    80004208:	0007879b          	sext.w	a5,a5
    8000420c:	00f00713          	li	a4,15
    80004210:	f6e794e3          	bne	a5,a4,80004178 <_Z8producerPv+0x34>
            threadEnd = 1;
    80004214:	00100793          	li	a5,1
    80004218:	00007717          	auipc	a4,0x7
    8000421c:	76f72023          	sw	a5,1888(a4) # 8000b978 <threadEnd>
    80004220:	f59ff06f          	j	80004178 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    80004224:	00005517          	auipc	a0,0x5
    80004228:	fa450513          	addi	a0,a0,-92 # 800091c8 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    8000422c:	fffff097          	auipc	ra,0xfffff
    80004230:	2d0080e7          	jalr	720(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004234:	ffffd097          	auipc	ra,0xffffd
    80004238:	0f0080e7          	jalr	240(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    8000423c:	00005517          	auipc	a0,0x5
    80004240:	f9c50513          	addi	a0,a0,-100 # 800091d8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	2b8080e7          	jalr	696(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    8000424c:	fa1ff06f          	j	800041ec <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    80004250:	00005517          	auipc	a0,0x5
    80004254:	fa050513          	addi	a0,a0,-96 # 800091f0 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	2a4080e7          	jalr	676(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004260:	01093503          	ld	a0,16(s2)
    80004264:	ffffd097          	auipc	ra,0xffffd
    80004268:	198080e7          	jalr	408(ra) # 800013fc <sem_signal>
}
    8000426c:	02813083          	ld	ra,40(sp)
    80004270:	02013403          	ld	s0,32(sp)
    80004274:	01813483          	ld	s1,24(sp)
    80004278:	01013903          	ld	s2,16(sp)
    8000427c:	00813983          	ld	s3,8(sp)
    80004280:	03010113          	addi	sp,sp,48
    80004284:	00008067          	ret

0000000080004288 <_Z8consumerPv>:

void consumer(void *arg) {
    80004288:	fd010113          	addi	sp,sp,-48
    8000428c:	02113423          	sd	ra,40(sp)
    80004290:	02813023          	sd	s0,32(sp)
    80004294:	00913c23          	sd	s1,24(sp)
    80004298:	01213823          	sd	s2,16(sp)
    8000429c:	01313423          	sd	s3,8(sp)
    800042a0:	01413023          	sd	s4,0(sp)
    800042a4:	03010413          	addi	s0,sp,48
    800042a8:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    800042ac:	00005517          	auipc	a0,0x5
    800042b0:	f5c50513          	addi	a0,a0,-164 # 80009208 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	248080e7          	jalr	584(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    int i = 0;
    800042bc:	00000a13          	li	s4,0
    800042c0:	0200006f          	j	800042e0 <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800042c4:	ffffd097          	auipc	ra,0xffffd
    800042c8:	060080e7          	jalr	96(ra) # 80001324 <thread_dispatch>
    800042cc:	0680006f          	j	80004334 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    800042d0:	00005517          	auipc	a0,0x5
    800042d4:	eb850513          	addi	a0,a0,-328 # 80009188 <CONSOLE_STATUS+0x178>
    800042d8:	fffff097          	auipc	ra,0xfffff
    800042dc:	224080e7          	jalr	548(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    800042e0:	00007797          	auipc	a5,0x7
    800042e4:	6987a783          	lw	a5,1688(a5) # 8000b978 <threadEnd>
    800042e8:	04079e63          	bnez	a5,80004344 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    800042ec:	0089b503          	ld	a0,8(s3)
    800042f0:	00002097          	auipc	ra,0x2
    800042f4:	bb8080e7          	jalr	-1096(ra) # 80005ea8 <_ZN6Buffer3getEv>
    800042f8:	00050913          	mv	s2,a0
        i++;
    800042fc:	001a049b          	addiw	s1,s4,1
    80004300:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004304:	00005517          	auipc	a0,0x5
    80004308:	f1c50513          	addi	a0,a0,-228 # 80009220 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    8000430c:	fffff097          	auipc	ra,0xfffff
    80004310:	1f0080e7          	jalr	496(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004314:	00090513          	mv	a0,s2
    80004318:	fffff097          	auipc	ra,0xfffff
    8000431c:	254080e7          	jalr	596(ra) # 8000356c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80004320:	0009a703          	lw	a4,0(s3)
    80004324:	0027179b          	slliw	a5,a4,0x2
    80004328:	00e787bb          	addw	a5,a5,a4
    8000432c:	02f4e7bb          	remw	a5,s1,a5
    80004330:	f8078ae3          	beqz	a5,800042c4 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004334:	05000793          	li	a5,80
    80004338:	02f4e4bb          	remw	s1,s1,a5
    8000433c:	fa0492e3          	bnez	s1,800042e0 <_Z8consumerPv+0x58>
    80004340:	f91ff06f          	j	800042d0 <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004344:	00005517          	auipc	a0,0x5
    80004348:	ee450513          	addi	a0,a0,-284 # 80009228 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    8000434c:	fffff097          	auipc	ra,0xfffff
    80004350:	1b0080e7          	jalr	432(ra) # 800034fc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004354:	0109b503          	ld	a0,16(s3)
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	0a4080e7          	jalr	164(ra) # 800013fc <sem_signal>
}
    80004360:	02813083          	ld	ra,40(sp)
    80004364:	02013403          	ld	s0,32(sp)
    80004368:	01813483          	ld	s1,24(sp)
    8000436c:	01013903          	ld	s2,16(sp)
    80004370:	00813983          	ld	s3,8(sp)
    80004374:	00013a03          	ld	s4,0(sp)
    80004378:	03010113          	addi	sp,sp,48
    8000437c:	00008067          	ret

0000000080004380 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	00113c23          	sd	ra,24(sp)
    80004388:	00813823          	sd	s0,16(sp)
    8000438c:	00913423          	sd	s1,8(sp)
    80004390:	01213023          	sd	s2,0(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	00050493          	mv	s1,a0
    int i = 0;
    8000439c:	00000913          	li	s2,0
    800043a0:	00c0006f          	j	800043ac <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    800043a4:	ffffd097          	auipc	ra,0xffffd
    800043a8:	f80080e7          	jalr	-128(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    800043ac:	00004097          	auipc	ra,0x4
    800043b0:	c8c080e7          	jalr	-884(ra) # 80008038 <__getc>
    while ((key = getc()) != 0x1b) {
    800043b4:	0005059b          	sext.w	a1,a0
    800043b8:	01b00793          	li	a5,27
    800043bc:	02f58a63          	beq	a1,a5,800043f0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800043c0:	0084b503          	ld	a0,8(s1)
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	a54080e7          	jalr	-1452(ra) # 80005e18 <_ZN6Buffer3putEi>
        i++;
    800043cc:	0019071b          	addiw	a4,s2,1
    800043d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800043d4:	0004a683          	lw	a3,0(s1)
    800043d8:	0026979b          	slliw	a5,a3,0x2
    800043dc:	00d787bb          	addw	a5,a5,a3
    800043e0:	0017979b          	slliw	a5,a5,0x1
    800043e4:	02f767bb          	remw	a5,a4,a5
    800043e8:	fc0792e3          	bnez	a5,800043ac <_Z16producerKeyboardPv+0x2c>
    800043ec:	fb9ff06f          	j	800043a4 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800043f0:	00100793          	li	a5,1
    800043f4:	00007717          	auipc	a4,0x7
    800043f8:	58f72223          	sw	a5,1412(a4) # 8000b978 <threadEnd>
    delete data->buffer;
    800043fc:	0084b903          	ld	s2,8(s1)
    80004400:	00090e63          	beqz	s2,8000441c <_Z16producerKeyboardPv+0x9c>
    80004404:	00090513          	mv	a0,s2
    80004408:	00002097          	auipc	ra,0x2
    8000440c:	964080e7          	jalr	-1692(ra) # 80005d6c <_ZN6BufferD1Ev>
    80004410:	00090513          	mv	a0,s2
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	ca4080e7          	jalr	-860(ra) # 800030b8 <_ZdlPv>
    sem_signal(data->wait);
    8000441c:	0104b503          	ld	a0,16(s1)
    80004420:	ffffd097          	auipc	ra,0xffffd
    80004424:	fdc080e7          	jalr	-36(ra) # 800013fc <sem_signal>
}
    80004428:	01813083          	ld	ra,24(sp)
    8000442c:	01013403          	ld	s0,16(sp)
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	00013903          	ld	s2,0(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret

0000000080004440 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004440:	f6010113          	addi	sp,sp,-160
    80004444:	08113c23          	sd	ra,152(sp)
    80004448:	08813823          	sd	s0,144(sp)
    8000444c:	08913423          	sd	s1,136(sp)
    80004450:	09213023          	sd	s2,128(sp)
    80004454:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004458:	00005517          	auipc	a0,0x5
    8000445c:	de850513          	addi	a0,a0,-536 # 80009240 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004460:	00001097          	auipc	ra,0x1
    80004464:	15c080e7          	jalr	348(ra) # 800055bc <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004468:	00005517          	auipc	a0,0x5
    8000446c:	df850513          	addi	a0,a0,-520 # 80009260 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004470:	00001097          	auipc	ra,0x1
    80004474:	14c080e7          	jalr	332(ra) # 800055bc <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	e0850513          	addi	a0,a0,-504 # 80009280 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	13c080e7          	jalr	316(ra) # 800055bc <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	00300513          	li	a0,3
    80004494:	00001097          	auipc	ra,0x1
    80004498:	2c0080e7          	jalr	704(ra) # 80005754 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	dfc50513          	addi	a0,a0,-516 # 80009298 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	118080e7          	jalr	280(ra) # 800055bc <_Z11printStringPKc>
    800044ac:	00000613          	li	a2,0
    800044b0:	00a00593          	li	a1,10
    800044b4:	00100513          	li	a0,1
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	29c080e7          	jalr	668(ra) # 80005754 <_Z8printIntiii>
    printString(".\n");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	ca850513          	addi	a0,a0,-856 # 80009168 <CONSOLE_STATUS+0x158>
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	0f4080e7          	jalr	244(ra) # 800055bc <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800044d0:	03800513          	li	a0,56
    800044d4:	fffff097          	auipc	ra,0xfffff
    800044d8:	bbc080e7          	jalr	-1092(ra) # 80003090 <_Znwm>
    800044dc:	00050913          	mv	s2,a0
    800044e0:	00100593          	li	a1,1
    800044e4:	00002097          	auipc	ra,0x2
    800044e8:	800080e7          	jalr	-2048(ra) # 80005ce4 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800044ec:	00000593          	li	a1,0
    800044f0:	00007517          	auipc	a0,0x7
    800044f4:	49050513          	addi	a0,a0,1168 # 8000b980 <waitForAll>
    800044f8:	ffffd097          	auipc	ra,0xffffd
    800044fc:	e74080e7          	jalr	-396(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004500:	00300793          	li	a5,3
    80004504:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    80004508:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    8000450c:	00007797          	auipc	a5,0x7
    80004510:	4747b783          	ld	a5,1140(a5) # 8000b980 <waitForAll>
    80004514:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004518:	fa840613          	addi	a2,s0,-88
    8000451c:	00000597          	auipc	a1,0x0
    80004520:	d6c58593          	addi	a1,a1,-660 # 80004288 <_Z8consumerPv>
    80004524:	fc040513          	addi	a0,s0,-64
    80004528:	ffffd097          	auipc	ra,0xffffd
    8000452c:	d7c080e7          	jalr	-644(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004530:	00000493          	li	s1,0
    80004534:	00200793          	li	a5,2
    80004538:	0697c063          	blt	a5,s1,80004598 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    8000453c:	00149613          	slli	a2,s1,0x1
    80004540:	009607b3          	add	a5,a2,s1
    80004544:	00379793          	slli	a5,a5,0x3
    80004548:	fe040713          	addi	a4,s0,-32
    8000454c:	00f707b3          	add	a5,a4,a5
    80004550:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004554:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004558:	00007717          	auipc	a4,0x7
    8000455c:	42873703          	ld	a4,1064(a4) # 8000b980 <waitForAll>
    80004560:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004564:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004568:	00960633          	add	a2,a2,s1
    8000456c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004570:	f6040713          	addi	a4,s0,-160
    80004574:	00c70633          	add	a2,a4,a2
    80004578:	00000597          	auipc	a1,0x0
    8000457c:	bcc58593          	addi	a1,a1,-1076 # 80004144 <_Z8producerPv>
    80004580:	fc840513          	addi	a0,s0,-56
    80004584:	00f50533          	add	a0,a0,a5
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	d1c080e7          	jalr	-740(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004590:	0014849b          	addiw	s1,s1,1
    80004594:	fa1ff06f          	j	80004534 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	d8c080e7          	jalr	-628(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800045a0:	00000493          	li	s1,0
    800045a4:	0180006f          	j	800045bc <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    800045a8:	00007517          	auipc	a0,0x7
    800045ac:	3d853503          	ld	a0,984(a0) # 8000b980 <waitForAll>
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	e20080e7          	jalr	-480(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800045b8:	0014849b          	addiw	s1,s1,1
    800045bc:	00300793          	li	a5,3
    800045c0:	fe97d4e3          	bge	a5,s1,800045a8 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    800045c4:	00007517          	auipc	a0,0x7
    800045c8:	3bc53503          	ld	a0,956(a0) # 8000b980 <waitForAll>
    800045cc:	ffffd097          	auipc	ra,0xffffd
    800045d0:	dd8080e7          	jalr	-552(ra) # 800013a4 <sem_close>
}
    800045d4:	09813083          	ld	ra,152(sp)
    800045d8:	09013403          	ld	s0,144(sp)
    800045dc:	08813483          	ld	s1,136(sp)
    800045e0:	08013903          	ld	s2,128(sp)
    800045e4:	0a010113          	addi	sp,sp,160
    800045e8:	00008067          	ret
    800045ec:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800045f0:	00090513          	mv	a0,s2
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	ac4080e7          	jalr	-1340(ra) # 800030b8 <_ZdlPv>
    800045fc:	00048513          	mv	a0,s1
    80004600:	00008097          	auipc	ra,0x8
    80004604:	468080e7          	jalr	1128(ra) # 8000ca68 <_Unwind_Resume>

0000000080004608 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004608:	fe010113          	addi	sp,sp,-32
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	00813823          	sd	s0,16(sp)
    80004614:	00913423          	sd	s1,8(sp)
    80004618:	01213023          	sd	s2,0(sp)
    8000461c:	02010413          	addi	s0,sp,32
    80004620:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004624:	00100793          	li	a5,1
    80004628:	02a7f863          	bgeu	a5,a0,80004658 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000462c:	00a00793          	li	a5,10
    80004630:	02f577b3          	remu	a5,a0,a5
    80004634:	02078e63          	beqz	a5,80004670 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004638:	fff48513          	addi	a0,s1,-1
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	fcc080e7          	jalr	-52(ra) # 80004608 <_ZL9fibonaccim>
    80004644:	00050913          	mv	s2,a0
    80004648:	ffe48513          	addi	a0,s1,-2
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	fbc080e7          	jalr	-68(ra) # 80004608 <_ZL9fibonaccim>
    80004654:	00a90533          	add	a0,s2,a0
}
    80004658:	01813083          	ld	ra,24(sp)
    8000465c:	01013403          	ld	s0,16(sp)
    80004660:	00813483          	ld	s1,8(sp)
    80004664:	00013903          	ld	s2,0(sp)
    80004668:	02010113          	addi	sp,sp,32
    8000466c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004670:	ffffd097          	auipc	ra,0xffffd
    80004674:	cb4080e7          	jalr	-844(ra) # 80001324 <thread_dispatch>
    80004678:	fc1ff06f          	j	80004638 <_ZL9fibonaccim+0x30>

000000008000467c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	01213023          	sd	s2,0(sp)
    80004690:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004694:	00000913          	li	s2,0
    80004698:	0380006f          	j	800046d0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	c88080e7          	jalr	-888(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800046a4:	00148493          	addi	s1,s1,1
    800046a8:	000027b7          	lui	a5,0x2
    800046ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046b0:	0097ee63          	bltu	a5,s1,800046cc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046b4:	00000713          	li	a4,0
    800046b8:	000077b7          	lui	a5,0x7
    800046bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046c0:	fce7eee3          	bltu	a5,a4,8000469c <_ZN7WorkerA11workerBodyAEPv+0x20>
    800046c4:	00170713          	addi	a4,a4,1
    800046c8:	ff1ff06f          	j	800046b8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800046cc:	00190913          	addi	s2,s2,1
    800046d0:	00900793          	li	a5,9
    800046d4:	0527e063          	bltu	a5,s2,80004714 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	bd850513          	addi	a0,a0,-1064 # 800092b0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	edc080e7          	jalr	-292(ra) # 800055bc <_Z11printStringPKc>
    800046e8:	00000613          	li	a2,0
    800046ec:	00a00593          	li	a1,10
    800046f0:	0009051b          	sext.w	a0,s2
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	060080e7          	jalr	96(ra) # 80005754 <_Z8printIntiii>
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	a8c50513          	addi	a0,a0,-1396 # 80009188 <CONSOLE_STATUS+0x178>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	eb8080e7          	jalr	-328(ra) # 800055bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000470c:	00000493          	li	s1,0
    80004710:	f99ff06f          	j	800046a8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004714:	00005517          	auipc	a0,0x5
    80004718:	ba450513          	addi	a0,a0,-1116 # 800092b8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	ea0080e7          	jalr	-352(ra) # 800055bc <_Z11printStringPKc>
    finishedA = true;
    80004724:	00100793          	li	a5,1
    80004728:	00007717          	auipc	a4,0x7
    8000472c:	26f70023          	sb	a5,608(a4) # 8000b988 <_ZL9finishedA>
}
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	00013903          	ld	s2,0(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004748:	fe010113          	addi	sp,sp,-32
    8000474c:	00113c23          	sd	ra,24(sp)
    80004750:	00813823          	sd	s0,16(sp)
    80004754:	00913423          	sd	s1,8(sp)
    80004758:	01213023          	sd	s2,0(sp)
    8000475c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004760:	00000913          	li	s2,0
    80004764:	0380006f          	j	8000479c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	bbc080e7          	jalr	-1092(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004770:	00148493          	addi	s1,s1,1
    80004774:	000027b7          	lui	a5,0x2
    80004778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000477c:	0097ee63          	bltu	a5,s1,80004798 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004780:	00000713          	li	a4,0
    80004784:	000077b7          	lui	a5,0x7
    80004788:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000478c:	fce7eee3          	bltu	a5,a4,80004768 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004790:	00170713          	addi	a4,a4,1
    80004794:	ff1ff06f          	j	80004784 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004798:	00190913          	addi	s2,s2,1
    8000479c:	00f00793          	li	a5,15
    800047a0:	0527e063          	bltu	a5,s2,800047e0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	b2450513          	addi	a0,a0,-1244 # 800092c8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	e10080e7          	jalr	-496(ra) # 800055bc <_Z11printStringPKc>
    800047b4:	00000613          	li	a2,0
    800047b8:	00a00593          	li	a1,10
    800047bc:	0009051b          	sext.w	a0,s2
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	f94080e7          	jalr	-108(ra) # 80005754 <_Z8printIntiii>
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	9c050513          	addi	a0,a0,-1600 # 80009188 <CONSOLE_STATUS+0x178>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	dec080e7          	jalr	-532(ra) # 800055bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047d8:	00000493          	li	s1,0
    800047dc:	f99ff06f          	j	80004774 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	af050513          	addi	a0,a0,-1296 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	dd4080e7          	jalr	-556(ra) # 800055bc <_Z11printStringPKc>
    finishedB = true;
    800047f0:	00100793          	li	a5,1
    800047f4:	00007717          	auipc	a4,0x7
    800047f8:	18f70aa3          	sb	a5,405(a4) # 8000b989 <_ZL9finishedB>
    thread_dispatch();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	b28080e7          	jalr	-1240(ra) # 80001324 <thread_dispatch>
}
    80004804:	01813083          	ld	ra,24(sp)
    80004808:	01013403          	ld	s0,16(sp)
    8000480c:	00813483          	ld	s1,8(sp)
    80004810:	00013903          	ld	s2,0(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	01213023          	sd	s2,0(sp)
    80004830:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004834:	00000493          	li	s1,0
    80004838:	0400006f          	j	80004878 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	aa450513          	addi	a0,a0,-1372 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	d78080e7          	jalr	-648(ra) # 800055bc <_Z11printStringPKc>
    8000484c:	00000613          	li	a2,0
    80004850:	00a00593          	li	a1,10
    80004854:	00048513          	mv	a0,s1
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	efc080e7          	jalr	-260(ra) # 80005754 <_Z8printIntiii>
    80004860:	00005517          	auipc	a0,0x5
    80004864:	92850513          	addi	a0,a0,-1752 # 80009188 <CONSOLE_STATUS+0x178>
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	d54080e7          	jalr	-684(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004870:	0014849b          	addiw	s1,s1,1
    80004874:	0ff4f493          	andi	s1,s1,255
    80004878:	00200793          	li	a5,2
    8000487c:	fc97f0e3          	bgeu	a5,s1,8000483c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004880:	00005517          	auipc	a0,0x5
    80004884:	a6850513          	addi	a0,a0,-1432 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	d34080e7          	jalr	-716(ra) # 800055bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004890:	00700313          	li	t1,7
    thread_dispatch();
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	a90080e7          	jalr	-1392(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000489c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800048a0:	00005517          	auipc	a0,0x5
    800048a4:	a5850513          	addi	a0,a0,-1448 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	d14080e7          	jalr	-748(ra) # 800055bc <_Z11printStringPKc>
    800048b0:	00000613          	li	a2,0
    800048b4:	00a00593          	li	a1,10
    800048b8:	0009051b          	sext.w	a0,s2
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	e98080e7          	jalr	-360(ra) # 80005754 <_Z8printIntiii>
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	8c450513          	addi	a0,a0,-1852 # 80009188 <CONSOLE_STATUS+0x178>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	cf0080e7          	jalr	-784(ra) # 800055bc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800048d4:	00c00513          	li	a0,12
    800048d8:	00000097          	auipc	ra,0x0
    800048dc:	d30080e7          	jalr	-720(ra) # 80004608 <_ZL9fibonaccim>
    800048e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800048e4:	00005517          	auipc	a0,0x5
    800048e8:	a1c50513          	addi	a0,a0,-1508 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	cd0080e7          	jalr	-816(ra) # 800055bc <_Z11printStringPKc>
    800048f4:	00000613          	li	a2,0
    800048f8:	00a00593          	li	a1,10
    800048fc:	0009051b          	sext.w	a0,s2
    80004900:	00001097          	auipc	ra,0x1
    80004904:	e54080e7          	jalr	-428(ra) # 80005754 <_Z8printIntiii>
    80004908:	00005517          	auipc	a0,0x5
    8000490c:	88050513          	addi	a0,a0,-1920 # 80009188 <CONSOLE_STATUS+0x178>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	cac080e7          	jalr	-852(ra) # 800055bc <_Z11printStringPKc>
    80004918:	0400006f          	j	80004958 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000491c:	00005517          	auipc	a0,0x5
    80004920:	9c450513          	addi	a0,a0,-1596 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004924:	00001097          	auipc	ra,0x1
    80004928:	c98080e7          	jalr	-872(ra) # 800055bc <_Z11printStringPKc>
    8000492c:	00000613          	li	a2,0
    80004930:	00a00593          	li	a1,10
    80004934:	00048513          	mv	a0,s1
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	e1c080e7          	jalr	-484(ra) # 80005754 <_Z8printIntiii>
    80004940:	00005517          	auipc	a0,0x5
    80004944:	84850513          	addi	a0,a0,-1976 # 80009188 <CONSOLE_STATUS+0x178>
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	c74080e7          	jalr	-908(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004950:	0014849b          	addiw	s1,s1,1
    80004954:	0ff4f493          	andi	s1,s1,255
    80004958:	00500793          	li	a5,5
    8000495c:	fc97f0e3          	bgeu	a5,s1,8000491c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	95850513          	addi	a0,a0,-1704 # 800092b8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	c54080e7          	jalr	-940(ra) # 800055bc <_Z11printStringPKc>
    finishedC = true;
    80004970:	00100793          	li	a5,1
    80004974:	00007717          	auipc	a4,0x7
    80004978:	00f70b23          	sb	a5,22(a4) # 8000b98a <_ZL9finishedC>
    thread_dispatch();
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	9a8080e7          	jalr	-1624(ra) # 80001324 <thread_dispatch>
}
    80004984:	01813083          	ld	ra,24(sp)
    80004988:	01013403          	ld	s0,16(sp)
    8000498c:	00813483          	ld	s1,8(sp)
    80004990:	00013903          	ld	s2,0(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000499c:	fe010113          	addi	sp,sp,-32
    800049a0:	00113c23          	sd	ra,24(sp)
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	01213023          	sd	s2,0(sp)
    800049b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049b4:	00a00493          	li	s1,10
    800049b8:	0400006f          	j	800049f8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	95450513          	addi	a0,a0,-1708 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	bf8080e7          	jalr	-1032(ra) # 800055bc <_Z11printStringPKc>
    800049cc:	00000613          	li	a2,0
    800049d0:	00a00593          	li	a1,10
    800049d4:	00048513          	mv	a0,s1
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	d7c080e7          	jalr	-644(ra) # 80005754 <_Z8printIntiii>
    800049e0:	00004517          	auipc	a0,0x4
    800049e4:	7a850513          	addi	a0,a0,1960 # 80009188 <CONSOLE_STATUS+0x178>
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	bd4080e7          	jalr	-1068(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049f0:	0014849b          	addiw	s1,s1,1
    800049f4:	0ff4f493          	andi	s1,s1,255
    800049f8:	00c00793          	li	a5,12
    800049fc:	fc97f0e3          	bgeu	a5,s1,800049bc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	91850513          	addi	a0,a0,-1768 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	bb4080e7          	jalr	-1100(ra) # 800055bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a10:	00500313          	li	t1,5
    thread_dispatch();
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	910080e7          	jalr	-1776(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004a1c:	01000513          	li	a0,16
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	be8080e7          	jalr	-1048(ra) # 80004608 <_ZL9fibonaccim>
    80004a28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	8fc50513          	addi	a0,a0,-1796 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	b88080e7          	jalr	-1144(ra) # 800055bc <_Z11printStringPKc>
    80004a3c:	00000613          	li	a2,0
    80004a40:	00a00593          	li	a1,10
    80004a44:	0009051b          	sext.w	a0,s2
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	d0c080e7          	jalr	-756(ra) # 80005754 <_Z8printIntiii>
    80004a50:	00004517          	auipc	a0,0x4
    80004a54:	73850513          	addi	a0,a0,1848 # 80009188 <CONSOLE_STATUS+0x178>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	b64080e7          	jalr	-1180(ra) # 800055bc <_Z11printStringPKc>
    80004a60:	0400006f          	j	80004aa0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	8ac50513          	addi	a0,a0,-1876 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	b50080e7          	jalr	-1200(ra) # 800055bc <_Z11printStringPKc>
    80004a74:	00000613          	li	a2,0
    80004a78:	00a00593          	li	a1,10
    80004a7c:	00048513          	mv	a0,s1
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	cd4080e7          	jalr	-812(ra) # 80005754 <_Z8printIntiii>
    80004a88:	00004517          	auipc	a0,0x4
    80004a8c:	70050513          	addi	a0,a0,1792 # 80009188 <CONSOLE_STATUS+0x178>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	b2c080e7          	jalr	-1236(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a98:	0014849b          	addiw	s1,s1,1
    80004a9c:	0ff4f493          	andi	s1,s1,255
    80004aa0:	00f00793          	li	a5,15
    80004aa4:	fc97f0e3          	bgeu	a5,s1,80004a64 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004aa8:	00005517          	auipc	a0,0x5
    80004aac:	89050513          	addi	a0,a0,-1904 # 80009338 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	b0c080e7          	jalr	-1268(ra) # 800055bc <_Z11printStringPKc>
    finishedD = true;
    80004ab8:	00100793          	li	a5,1
    80004abc:	00007717          	auipc	a4,0x7
    80004ac0:	ecf707a3          	sb	a5,-305(a4) # 8000b98b <_ZL9finishedD>
    thread_dispatch();
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	860080e7          	jalr	-1952(ra) # 80001324 <thread_dispatch>
}
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	00013903          	ld	s2,0(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004ae4:	fc010113          	addi	sp,sp,-64
    80004ae8:	02113c23          	sd	ra,56(sp)
    80004aec:	02813823          	sd	s0,48(sp)
    80004af0:	02913423          	sd	s1,40(sp)
    80004af4:	03213023          	sd	s2,32(sp)
    80004af8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004afc:	02000513          	li	a0,32
    80004b00:	ffffe097          	auipc	ra,0xffffe
    80004b04:	590080e7          	jalr	1424(ra) # 80003090 <_Znwm>
    80004b08:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004b0c:	ffffe097          	auipc	ra,0xffffe
    80004b10:	750080e7          	jalr	1872(ra) # 8000325c <_ZN6ThreadC1Ev>
    80004b14:	00007797          	auipc	a5,0x7
    80004b18:	cac78793          	addi	a5,a5,-852 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80004b1c:	00f4b023          	sd	a5,0(s1)
    80004b20:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004b24:	00005517          	auipc	a0,0x5
    80004b28:	82450513          	addi	a0,a0,-2012 # 80009348 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	a90080e7          	jalr	-1392(ra) # 800055bc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004b34:	02000513          	li	a0,32
    80004b38:	ffffe097          	auipc	ra,0xffffe
    80004b3c:	558080e7          	jalr	1368(ra) # 80003090 <_Znwm>
    80004b40:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004b44:	ffffe097          	auipc	ra,0xffffe
    80004b48:	718080e7          	jalr	1816(ra) # 8000325c <_ZN6ThreadC1Ev>
    80004b4c:	00007797          	auipc	a5,0x7
    80004b50:	c9c78793          	addi	a5,a5,-868 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80004b54:	00f4b023          	sd	a5,0(s1)
    80004b58:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004b5c:	00005517          	auipc	a0,0x5
    80004b60:	80450513          	addi	a0,a0,-2044 # 80009360 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	a58080e7          	jalr	-1448(ra) # 800055bc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004b6c:	02000513          	li	a0,32
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	520080e7          	jalr	1312(ra) # 80003090 <_Znwm>
    80004b78:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004b7c:	ffffe097          	auipc	ra,0xffffe
    80004b80:	6e0080e7          	jalr	1760(ra) # 8000325c <_ZN6ThreadC1Ev>
    80004b84:	00007797          	auipc	a5,0x7
    80004b88:	c8c78793          	addi	a5,a5,-884 # 8000b810 <_ZTV7WorkerC+0x10>
    80004b8c:	00f4b023          	sd	a5,0(s1)
    80004b90:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	7e450513          	addi	a0,a0,2020 # 80009378 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	a20080e7          	jalr	-1504(ra) # 800055bc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004ba4:	02000513          	li	a0,32
    80004ba8:	ffffe097          	auipc	ra,0xffffe
    80004bac:	4e8080e7          	jalr	1256(ra) # 80003090 <_Znwm>
    80004bb0:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	6a8080e7          	jalr	1704(ra) # 8000325c <_ZN6ThreadC1Ev>
    80004bbc:	00007797          	auipc	a5,0x7
    80004bc0:	c7c78793          	addi	a5,a5,-900 # 8000b838 <_ZTV7WorkerD+0x10>
    80004bc4:	00f4b023          	sd	a5,0(s1)
    80004bc8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004bcc:	00004517          	auipc	a0,0x4
    80004bd0:	7c450513          	addi	a0,a0,1988 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	9e8080e7          	jalr	-1560(ra) # 800055bc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004bdc:	00000493          	li	s1,0
    80004be0:	00300793          	li	a5,3
    80004be4:	0297c663          	blt	a5,s1,80004c10 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004be8:	00349793          	slli	a5,s1,0x3
    80004bec:	fe040713          	addi	a4,s0,-32
    80004bf0:	00f707b3          	add	a5,a4,a5
    80004bf4:	fe07b503          	ld	a0,-32(a5)
    80004bf8:	ffffe097          	auipc	ra,0xffffe
    80004bfc:	568080e7          	jalr	1384(ra) # 80003160 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004c00:	0014849b          	addiw	s1,s1,1
    80004c04:	fddff06f          	j	80004be0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	59c080e7          	jalr	1436(ra) # 800031a4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c10:	00007797          	auipc	a5,0x7
    80004c14:	d787c783          	lbu	a5,-648(a5) # 8000b988 <_ZL9finishedA>
    80004c18:	fe0788e3          	beqz	a5,80004c08 <_Z20Threads_CPP_API_testv+0x124>
    80004c1c:	00007797          	auipc	a5,0x7
    80004c20:	d6d7c783          	lbu	a5,-659(a5) # 8000b989 <_ZL9finishedB>
    80004c24:	fe0782e3          	beqz	a5,80004c08 <_Z20Threads_CPP_API_testv+0x124>
    80004c28:	00007797          	auipc	a5,0x7
    80004c2c:	d627c783          	lbu	a5,-670(a5) # 8000b98a <_ZL9finishedC>
    80004c30:	fc078ce3          	beqz	a5,80004c08 <_Z20Threads_CPP_API_testv+0x124>
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	d577c783          	lbu	a5,-681(a5) # 8000b98b <_ZL9finishedD>
    80004c3c:	fc0786e3          	beqz	a5,80004c08 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004c40:	fc040493          	addi	s1,s0,-64
    80004c44:	0080006f          	j	80004c4c <_Z20Threads_CPP_API_testv+0x168>
    80004c48:	00848493          	addi	s1,s1,8
    80004c4c:	fe040793          	addi	a5,s0,-32
    80004c50:	08f48663          	beq	s1,a5,80004cdc <_Z20Threads_CPP_API_testv+0x1f8>
    80004c54:	0004b503          	ld	a0,0(s1)
    80004c58:	fe0508e3          	beqz	a0,80004c48 <_Z20Threads_CPP_API_testv+0x164>
    80004c5c:	00053783          	ld	a5,0(a0)
    80004c60:	0087b783          	ld	a5,8(a5)
    80004c64:	000780e7          	jalr	a5
    80004c68:	fe1ff06f          	j	80004c48 <_Z20Threads_CPP_API_testv+0x164>
    80004c6c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004c70:	00048513          	mv	a0,s1
    80004c74:	ffffe097          	auipc	ra,0xffffe
    80004c78:	444080e7          	jalr	1092(ra) # 800030b8 <_ZdlPv>
    80004c7c:	00090513          	mv	a0,s2
    80004c80:	00008097          	auipc	ra,0x8
    80004c84:	de8080e7          	jalr	-536(ra) # 8000ca68 <_Unwind_Resume>
    80004c88:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004c8c:	00048513          	mv	a0,s1
    80004c90:	ffffe097          	auipc	ra,0xffffe
    80004c94:	428080e7          	jalr	1064(ra) # 800030b8 <_ZdlPv>
    80004c98:	00090513          	mv	a0,s2
    80004c9c:	00008097          	auipc	ra,0x8
    80004ca0:	dcc080e7          	jalr	-564(ra) # 8000ca68 <_Unwind_Resume>
    80004ca4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	ffffe097          	auipc	ra,0xffffe
    80004cb0:	40c080e7          	jalr	1036(ra) # 800030b8 <_ZdlPv>
    80004cb4:	00090513          	mv	a0,s2
    80004cb8:	00008097          	auipc	ra,0x8
    80004cbc:	db0080e7          	jalr	-592(ra) # 8000ca68 <_Unwind_Resume>
    80004cc0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004cc4:	00048513          	mv	a0,s1
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	3f0080e7          	jalr	1008(ra) # 800030b8 <_ZdlPv>
    80004cd0:	00090513          	mv	a0,s2
    80004cd4:	00008097          	auipc	ra,0x8
    80004cd8:	d94080e7          	jalr	-620(ra) # 8000ca68 <_Unwind_Resume>
    80004cdc:	03813083          	ld	ra,56(sp)
    80004ce0:	03013403          	ld	s0,48(sp)
    80004ce4:	02813483          	ld	s1,40(sp)
    80004ce8:	02013903          	ld	s2,32(sp)
    80004cec:	04010113          	addi	sp,sp,64
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004cf4:	ff010113          	addi	sp,sp,-16
    80004cf8:	00113423          	sd	ra,8(sp)
    80004cfc:	00813023          	sd	s0,0(sp)
    80004d00:	01010413          	addi	s0,sp,16
    80004d04:	00007797          	auipc	a5,0x7
    80004d08:	abc78793          	addi	a5,a5,-1348 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80004d0c:	00f53023          	sd	a5,0(a0)
    80004d10:	ffffe097          	auipc	ra,0xffffe
    80004d14:	2c4080e7          	jalr	708(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004d18:	00813083          	ld	ra,8(sp)
    80004d1c:	00013403          	ld	s0,0(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <_ZN7WorkerAD0Ev>:
    80004d28:	fe010113          	addi	sp,sp,-32
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	02010413          	addi	s0,sp,32
    80004d3c:	00050493          	mv	s1,a0
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	a8078793          	addi	a5,a5,-1408 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80004d48:	00f53023          	sd	a5,0(a0)
    80004d4c:	ffffe097          	auipc	ra,0xffffe
    80004d50:	288080e7          	jalr	648(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004d54:	00048513          	mv	a0,s1
    80004d58:	ffffe097          	auipc	ra,0xffffe
    80004d5c:	360080e7          	jalr	864(ra) # 800030b8 <_ZdlPv>
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00113423          	sd	ra,8(sp)
    80004d7c:	00813023          	sd	s0,0(sp)
    80004d80:	01010413          	addi	s0,sp,16
    80004d84:	00007797          	auipc	a5,0x7
    80004d88:	a6478793          	addi	a5,a5,-1436 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80004d8c:	00f53023          	sd	a5,0(a0)
    80004d90:	ffffe097          	auipc	ra,0xffffe
    80004d94:	244080e7          	jalr	580(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004d98:	00813083          	ld	ra,8(sp)
    80004d9c:	00013403          	ld	s0,0(sp)
    80004da0:	01010113          	addi	sp,sp,16
    80004da4:	00008067          	ret

0000000080004da8 <_ZN7WorkerBD0Ev>:
    80004da8:	fe010113          	addi	sp,sp,-32
    80004dac:	00113c23          	sd	ra,24(sp)
    80004db0:	00813823          	sd	s0,16(sp)
    80004db4:	00913423          	sd	s1,8(sp)
    80004db8:	02010413          	addi	s0,sp,32
    80004dbc:	00050493          	mv	s1,a0
    80004dc0:	00007797          	auipc	a5,0x7
    80004dc4:	a2878793          	addi	a5,a5,-1496 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80004dc8:	00f53023          	sd	a5,0(a0)
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	208080e7          	jalr	520(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004dd4:	00048513          	mv	a0,s1
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	2e0080e7          	jalr	736(ra) # 800030b8 <_ZdlPv>
    80004de0:	01813083          	ld	ra,24(sp)
    80004de4:	01013403          	ld	s0,16(sp)
    80004de8:	00813483          	ld	s1,8(sp)
    80004dec:	02010113          	addi	sp,sp,32
    80004df0:	00008067          	ret

0000000080004df4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004df4:	ff010113          	addi	sp,sp,-16
    80004df8:	00113423          	sd	ra,8(sp)
    80004dfc:	00813023          	sd	s0,0(sp)
    80004e00:	01010413          	addi	s0,sp,16
    80004e04:	00007797          	auipc	a5,0x7
    80004e08:	a0c78793          	addi	a5,a5,-1524 # 8000b810 <_ZTV7WorkerC+0x10>
    80004e0c:	00f53023          	sd	a5,0(a0)
    80004e10:	ffffe097          	auipc	ra,0xffffe
    80004e14:	1c4080e7          	jalr	452(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004e18:	00813083          	ld	ra,8(sp)
    80004e1c:	00013403          	ld	s0,0(sp)
    80004e20:	01010113          	addi	sp,sp,16
    80004e24:	00008067          	ret

0000000080004e28 <_ZN7WorkerCD0Ev>:
    80004e28:	fe010113          	addi	sp,sp,-32
    80004e2c:	00113c23          	sd	ra,24(sp)
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	02010413          	addi	s0,sp,32
    80004e3c:	00050493          	mv	s1,a0
    80004e40:	00007797          	auipc	a5,0x7
    80004e44:	9d078793          	addi	a5,a5,-1584 # 8000b810 <_ZTV7WorkerC+0x10>
    80004e48:	00f53023          	sd	a5,0(a0)
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	188080e7          	jalr	392(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004e54:	00048513          	mv	a0,s1
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	260080e7          	jalr	608(ra) # 800030b8 <_ZdlPv>
    80004e60:	01813083          	ld	ra,24(sp)
    80004e64:	01013403          	ld	s0,16(sp)
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004e74:	ff010113          	addi	sp,sp,-16
    80004e78:	00113423          	sd	ra,8(sp)
    80004e7c:	00813023          	sd	s0,0(sp)
    80004e80:	01010413          	addi	s0,sp,16
    80004e84:	00007797          	auipc	a5,0x7
    80004e88:	9b478793          	addi	a5,a5,-1612 # 8000b838 <_ZTV7WorkerD+0x10>
    80004e8c:	00f53023          	sd	a5,0(a0)
    80004e90:	ffffe097          	auipc	ra,0xffffe
    80004e94:	144080e7          	jalr	324(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004e98:	00813083          	ld	ra,8(sp)
    80004e9c:	00013403          	ld	s0,0(sp)
    80004ea0:	01010113          	addi	sp,sp,16
    80004ea4:	00008067          	ret

0000000080004ea8 <_ZN7WorkerDD0Ev>:
    80004ea8:	fe010113          	addi	sp,sp,-32
    80004eac:	00113c23          	sd	ra,24(sp)
    80004eb0:	00813823          	sd	s0,16(sp)
    80004eb4:	00913423          	sd	s1,8(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    80004ebc:	00050493          	mv	s1,a0
    80004ec0:	00007797          	auipc	a5,0x7
    80004ec4:	97878793          	addi	a5,a5,-1672 # 8000b838 <_ZTV7WorkerD+0x10>
    80004ec8:	00f53023          	sd	a5,0(a0)
    80004ecc:	ffffe097          	auipc	ra,0xffffe
    80004ed0:	108080e7          	jalr	264(ra) # 80002fd4 <_ZN6ThreadD1Ev>
    80004ed4:	00048513          	mv	a0,s1
    80004ed8:	ffffe097          	auipc	ra,0xffffe
    80004edc:	1e0080e7          	jalr	480(ra) # 800030b8 <_ZdlPv>
    80004ee0:	01813083          	ld	ra,24(sp)
    80004ee4:	01013403          	ld	s0,16(sp)
    80004ee8:	00813483          	ld	s1,8(sp)
    80004eec:	02010113          	addi	sp,sp,32
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZN7WorkerA3runEv>:
    void run() override {
    80004ef4:	ff010113          	addi	sp,sp,-16
    80004ef8:	00113423          	sd	ra,8(sp)
    80004efc:	00813023          	sd	s0,0(sp)
    80004f00:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004f04:	00000593          	li	a1,0
    80004f08:	fffff097          	auipc	ra,0xfffff
    80004f0c:	774080e7          	jalr	1908(ra) # 8000467c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004f10:	00813083          	ld	ra,8(sp)
    80004f14:	00013403          	ld	s0,0(sp)
    80004f18:	01010113          	addi	sp,sp,16
    80004f1c:	00008067          	ret

0000000080004f20 <_ZN7WorkerB3runEv>:
    void run() override {
    80004f20:	ff010113          	addi	sp,sp,-16
    80004f24:	00113423          	sd	ra,8(sp)
    80004f28:	00813023          	sd	s0,0(sp)
    80004f2c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004f30:	00000593          	li	a1,0
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	814080e7          	jalr	-2028(ra) # 80004748 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004f3c:	00813083          	ld	ra,8(sp)
    80004f40:	00013403          	ld	s0,0(sp)
    80004f44:	01010113          	addi	sp,sp,16
    80004f48:	00008067          	ret

0000000080004f4c <_ZN7WorkerC3runEv>:
    void run() override {
    80004f4c:	ff010113          	addi	sp,sp,-16
    80004f50:	00113423          	sd	ra,8(sp)
    80004f54:	00813023          	sd	s0,0(sp)
    80004f58:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004f5c:	00000593          	li	a1,0
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	8bc080e7          	jalr	-1860(ra) # 8000481c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004f68:	00813083          	ld	ra,8(sp)
    80004f6c:	00013403          	ld	s0,0(sp)
    80004f70:	01010113          	addi	sp,sp,16
    80004f74:	00008067          	ret

0000000080004f78 <_ZN7WorkerD3runEv>:

    void run() override {
    80004f78:	ff010113          	addi	sp,sp,-16
    80004f7c:	00113423          	sd	ra,8(sp)
    80004f80:	00813023          	sd	s0,0(sp)
    80004f84:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004f88:	00000593          	li	a1,0
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	a10080e7          	jalr	-1520(ra) # 8000499c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004f94:	00813083          	ld	ra,8(sp)
    80004f98:	00013403          	ld	s0,0(sp)
    80004f9c:	01010113          	addi	sp,sp,16
    80004fa0:	00008067          	ret

0000000080004fa4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004fa4:	fe010113          	addi	sp,sp,-32
    80004fa8:	00113c23          	sd	ra,24(sp)
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00913423          	sd	s1,8(sp)
    80004fb4:	01213023          	sd	s2,0(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004fbc:	00000913          	li	s2,0
    80004fc0:	0340006f          	j	80004ff4 <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004fc4:	ffffc097          	auipc	ra,0xffffc
    80004fc8:	360080e7          	jalr	864(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004fcc:	00148493          	addi	s1,s1,1
    80004fd0:	1f300793          	li	a5,499
    80004fd4:	0097ee63          	bltu	a5,s1,80004ff0 <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004fd8:	00000713          	li	a4,0
    80004fdc:	000017b7          	lui	a5,0x1
    80004fe0:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004fe4:	fee7e0e3          	bltu	a5,a4,80004fc4 <_Z11workerBodyAPv+0x20>
    80004fe8:	00170713          	addi	a4,a4,1
    80004fec:	ff1ff06f          	j	80004fdc <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004ff0:	00190913          	addi	s2,s2,1
    80004ff4:	00900793          	li	a5,9
    80004ff8:	0527e063          	bltu	a5,s2,80005038 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	2b450513          	addi	a0,a0,692 # 800092b0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80005004:	00000097          	auipc	ra,0x0
    80005008:	5b8080e7          	jalr	1464(ra) # 800055bc <_Z11printStringPKc>
    8000500c:	00000613          	li	a2,0
    80005010:	00a00593          	li	a1,10
    80005014:	0009051b          	sext.w	a0,s2
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	73c080e7          	jalr	1852(ra) # 80005754 <_Z8printIntiii>
    80005020:	00004517          	auipc	a0,0x4
    80005024:	16850513          	addi	a0,a0,360 # 80009188 <CONSOLE_STATUS+0x178>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	594080e7          	jalr	1428(ra) # 800055bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80005030:	00000493          	li	s1,0
    80005034:	f9dff06f          	j	80004fd0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	28050513          	addi	a0,a0,640 # 800092b8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80005040:	00000097          	auipc	ra,0x0
    80005044:	57c080e7          	jalr	1404(ra) # 800055bc <_Z11printStringPKc>
    finishedA = true;
    80005048:	00100793          	li	a5,1
    8000504c:	00007717          	auipc	a4,0x7
    80005050:	94f70023          	sb	a5,-1728(a4) # 8000b98c <_ZL9finishedA>
}
    80005054:	01813083          	ld	ra,24(sp)
    80005058:	01013403          	ld	s0,16(sp)
    8000505c:	00813483          	ld	s1,8(sp)
    80005060:	00013903          	ld	s2,0(sp)
    80005064:	02010113          	addi	sp,sp,32
    80005068:	00008067          	ret

000000008000506c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    8000506c:	fe010113          	addi	sp,sp,-32
    80005070:	00113c23          	sd	ra,24(sp)
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00913423          	sd	s1,8(sp)
    8000507c:	01213023          	sd	s2,0(sp)
    80005080:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005084:	00000913          	li	s2,0
    80005088:	0340006f          	j	800050bc <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	298080e7          	jalr	664(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80005094:	00148493          	addi	s1,s1,1
    80005098:	1f300793          	li	a5,499
    8000509c:	0097ee63          	bltu	a5,s1,800050b8 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    800050a0:	00000713          	li	a4,0
    800050a4:	000017b7          	lui	a5,0x1
    800050a8:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    800050ac:	fee7e0e3          	bltu	a5,a4,8000508c <_Z11workerBodyBPv+0x20>
    800050b0:	00170713          	addi	a4,a4,1
    800050b4:	ff1ff06f          	j	800050a4 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    800050b8:	00190913          	addi	s2,s2,1
    800050bc:	00f00793          	li	a5,15
    800050c0:	0527e063          	bltu	a5,s2,80005100 <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    800050c4:	00004517          	auipc	a0,0x4
    800050c8:	20450513          	addi	a0,a0,516 # 800092c8 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	4f0080e7          	jalr	1264(ra) # 800055bc <_Z11printStringPKc>
    800050d4:	00000613          	li	a2,0
    800050d8:	00a00593          	li	a1,10
    800050dc:	0009051b          	sext.w	a0,s2
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	674080e7          	jalr	1652(ra) # 80005754 <_Z8printIntiii>
    800050e8:	00004517          	auipc	a0,0x4
    800050ec:	0a050513          	addi	a0,a0,160 # 80009188 <CONSOLE_STATUS+0x178>
    800050f0:	00000097          	auipc	ra,0x0
    800050f4:	4cc080e7          	jalr	1228(ra) # 800055bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    800050f8:	00000493          	li	s1,0
    800050fc:	f9dff06f          	j	80005098 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80005100:	00004517          	auipc	a0,0x4
    80005104:	1d050513          	addi	a0,a0,464 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005108:	00000097          	auipc	ra,0x0
    8000510c:	4b4080e7          	jalr	1204(ra) # 800055bc <_Z11printStringPKc>
    finishedB = true;
    80005110:	00100793          	li	a5,1
    80005114:	00007717          	auipc	a4,0x7
    80005118:	86f70ca3          	sb	a5,-1927(a4) # 8000b98d <_ZL9finishedB>
    thread_dispatch();
    8000511c:	ffffc097          	auipc	ra,0xffffc
    80005120:	208080e7          	jalr	520(ra) # 80001324 <thread_dispatch>
}
    80005124:	01813083          	ld	ra,24(sp)
    80005128:	01013403          	ld	s0,16(sp)
    8000512c:	00813483          	ld	s1,8(sp)
    80005130:	00013903          	ld	s2,0(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	01213023          	sd	s2,0(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005158:	00100793          	li	a5,1
    8000515c:	02a7f863          	bgeu	a5,a0,8000518c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005160:	00a00793          	li	a5,10
    80005164:	02f577b3          	remu	a5,a0,a5
    80005168:	02078e63          	beqz	a5,800051a4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000516c:	fff48513          	addi	a0,s1,-1
    80005170:	00000097          	auipc	ra,0x0
    80005174:	fcc080e7          	jalr	-52(ra) # 8000513c <_ZL9fibonaccim>
    80005178:	00050913          	mv	s2,a0
    8000517c:	ffe48513          	addi	a0,s1,-2
    80005180:	00000097          	auipc	ra,0x0
    80005184:	fbc080e7          	jalr	-68(ra) # 8000513c <_ZL9fibonaccim>
    80005188:	00a90533          	add	a0,s2,a0
}
    8000518c:	01813083          	ld	ra,24(sp)
    80005190:	01013403          	ld	s0,16(sp)
    80005194:	00813483          	ld	s1,8(sp)
    80005198:	00013903          	ld	s2,0(sp)
    8000519c:	02010113          	addi	sp,sp,32
    800051a0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800051a4:	ffffc097          	auipc	ra,0xffffc
    800051a8:	180080e7          	jalr	384(ra) # 80001324 <thread_dispatch>
    800051ac:	fc1ff06f          	j	8000516c <_ZL9fibonaccim+0x30>

00000000800051b0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00113c23          	sd	ra,24(sp)
    800051b8:	00813823          	sd	s0,16(sp)
    800051bc:	00913423          	sd	s1,8(sp)
    800051c0:	01213023          	sd	s2,0(sp)
    800051c4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800051c8:	00000493          	li	s1,0
    800051cc:	0400006f          	j	8000520c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800051d0:	00004517          	auipc	a0,0x4
    800051d4:	11050513          	addi	a0,a0,272 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	3e4080e7          	jalr	996(ra) # 800055bc <_Z11printStringPKc>
    800051e0:	00000613          	li	a2,0
    800051e4:	00a00593          	li	a1,10
    800051e8:	00048513          	mv	a0,s1
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	568080e7          	jalr	1384(ra) # 80005754 <_Z8printIntiii>
    800051f4:	00004517          	auipc	a0,0x4
    800051f8:	f9450513          	addi	a0,a0,-108 # 80009188 <CONSOLE_STATUS+0x178>
    800051fc:	00000097          	auipc	ra,0x0
    80005200:	3c0080e7          	jalr	960(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005204:	0014849b          	addiw	s1,s1,1
    80005208:	0ff4f493          	andi	s1,s1,255
    8000520c:	00200793          	li	a5,2
    80005210:	fc97f0e3          	bgeu	a5,s1,800051d0 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005214:	00004517          	auipc	a0,0x4
    80005218:	0d450513          	addi	a0,a0,212 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	3a0080e7          	jalr	928(ra) # 800055bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005224:	00700313          	li	t1,7
    thread_dispatch();
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	0fc080e7          	jalr	252(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005230:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	0c450513          	addi	a0,a0,196 # 800092f8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	380080e7          	jalr	896(ra) # 800055bc <_Z11printStringPKc>
    80005244:	00000613          	li	a2,0
    80005248:	00a00593          	li	a1,10
    8000524c:	0009051b          	sext.w	a0,s2
    80005250:	00000097          	auipc	ra,0x0
    80005254:	504080e7          	jalr	1284(ra) # 80005754 <_Z8printIntiii>
    80005258:	00004517          	auipc	a0,0x4
    8000525c:	f3050513          	addi	a0,a0,-208 # 80009188 <CONSOLE_STATUS+0x178>
    80005260:	00000097          	auipc	ra,0x0
    80005264:	35c080e7          	jalr	860(ra) # 800055bc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005268:	00c00513          	li	a0,12
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	ed0080e7          	jalr	-304(ra) # 8000513c <_ZL9fibonaccim>
    80005274:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005278:	00004517          	auipc	a0,0x4
    8000527c:	08850513          	addi	a0,a0,136 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80005280:	00000097          	auipc	ra,0x0
    80005284:	33c080e7          	jalr	828(ra) # 800055bc <_Z11printStringPKc>
    80005288:	00000613          	li	a2,0
    8000528c:	00a00593          	li	a1,10
    80005290:	0009051b          	sext.w	a0,s2
    80005294:	00000097          	auipc	ra,0x0
    80005298:	4c0080e7          	jalr	1216(ra) # 80005754 <_Z8printIntiii>
    8000529c:	00004517          	auipc	a0,0x4
    800052a0:	eec50513          	addi	a0,a0,-276 # 80009188 <CONSOLE_STATUS+0x178>
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	318080e7          	jalr	792(ra) # 800055bc <_Z11printStringPKc>
    800052ac:	0400006f          	j	800052ec <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800052b0:	00004517          	auipc	a0,0x4
    800052b4:	03050513          	addi	a0,a0,48 # 800092e0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	304080e7          	jalr	772(ra) # 800055bc <_Z11printStringPKc>
    800052c0:	00000613          	li	a2,0
    800052c4:	00a00593          	li	a1,10
    800052c8:	00048513          	mv	a0,s1
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	488080e7          	jalr	1160(ra) # 80005754 <_Z8printIntiii>
    800052d4:	00004517          	auipc	a0,0x4
    800052d8:	eb450513          	addi	a0,a0,-332 # 80009188 <CONSOLE_STATUS+0x178>
    800052dc:	00000097          	auipc	ra,0x0
    800052e0:	2e0080e7          	jalr	736(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    800052e4:	0014849b          	addiw	s1,s1,1
    800052e8:	0ff4f493          	andi	s1,s1,255
    800052ec:	00500793          	li	a5,5
    800052f0:	fc97f0e3          	bgeu	a5,s1,800052b0 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    800052f4:	00004517          	auipc	a0,0x4
    800052f8:	0b450513          	addi	a0,a0,180 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	2c0080e7          	jalr	704(ra) # 800055bc <_Z11printStringPKc>
    finishedC = true;
    80005304:	00100793          	li	a5,1
    80005308:	00006717          	auipc	a4,0x6
    8000530c:	68f70323          	sb	a5,1670(a4) # 8000b98e <_ZL9finishedC>
    thread_dispatch();
    80005310:	ffffc097          	auipc	ra,0xffffc
    80005314:	014080e7          	jalr	20(ra) # 80001324 <thread_dispatch>
}
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	00013903          	ld	s2,0(sp)
    80005328:	02010113          	addi	sp,sp,32
    8000532c:	00008067          	ret

0000000080005330 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005330:	fe010113          	addi	sp,sp,-32
    80005334:	00113c23          	sd	ra,24(sp)
    80005338:	00813823          	sd	s0,16(sp)
    8000533c:	00913423          	sd	s1,8(sp)
    80005340:	01213023          	sd	s2,0(sp)
    80005344:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005348:	00a00493          	li	s1,10
    8000534c:	0400006f          	j	8000538c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005350:	00004517          	auipc	a0,0x4
    80005354:	fc050513          	addi	a0,a0,-64 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	264080e7          	jalr	612(ra) # 800055bc <_Z11printStringPKc>
    80005360:	00000613          	li	a2,0
    80005364:	00a00593          	li	a1,10
    80005368:	00048513          	mv	a0,s1
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	3e8080e7          	jalr	1000(ra) # 80005754 <_Z8printIntiii>
    80005374:	00004517          	auipc	a0,0x4
    80005378:	e1450513          	addi	a0,a0,-492 # 80009188 <CONSOLE_STATUS+0x178>
    8000537c:	00000097          	auipc	ra,0x0
    80005380:	240080e7          	jalr	576(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005384:	0014849b          	addiw	s1,s1,1
    80005388:	0ff4f493          	andi	s1,s1,255
    8000538c:	00c00793          	li	a5,12
    80005390:	fc97f0e3          	bgeu	a5,s1,80005350 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005394:	00004517          	auipc	a0,0x4
    80005398:	f8450513          	addi	a0,a0,-124 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    8000539c:	00000097          	auipc	ra,0x0
    800053a0:	220080e7          	jalr	544(ra) # 800055bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800053a4:	00500313          	li	t1,5
    thread_dispatch();
    800053a8:	ffffc097          	auipc	ra,0xffffc
    800053ac:	f7c080e7          	jalr	-132(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    800053b0:	01000513          	li	a0,16
    800053b4:	00000097          	auipc	ra,0x0
    800053b8:	d88080e7          	jalr	-632(ra) # 8000513c <_ZL9fibonaccim>
    800053bc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	f6850513          	addi	a0,a0,-152 # 80009328 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	1f4080e7          	jalr	500(ra) # 800055bc <_Z11printStringPKc>
    800053d0:	00000613          	li	a2,0
    800053d4:	00a00593          	li	a1,10
    800053d8:	0009051b          	sext.w	a0,s2
    800053dc:	00000097          	auipc	ra,0x0
    800053e0:	378080e7          	jalr	888(ra) # 80005754 <_Z8printIntiii>
    800053e4:	00004517          	auipc	a0,0x4
    800053e8:	da450513          	addi	a0,a0,-604 # 80009188 <CONSOLE_STATUS+0x178>
    800053ec:	00000097          	auipc	ra,0x0
    800053f0:	1d0080e7          	jalr	464(ra) # 800055bc <_Z11printStringPKc>
    800053f4:	0400006f          	j	80005434 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053f8:	00004517          	auipc	a0,0x4
    800053fc:	f1850513          	addi	a0,a0,-232 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005400:	00000097          	auipc	ra,0x0
    80005404:	1bc080e7          	jalr	444(ra) # 800055bc <_Z11printStringPKc>
    80005408:	00000613          	li	a2,0
    8000540c:	00a00593          	li	a1,10
    80005410:	00048513          	mv	a0,s1
    80005414:	00000097          	auipc	ra,0x0
    80005418:	340080e7          	jalr	832(ra) # 80005754 <_Z8printIntiii>
    8000541c:	00004517          	auipc	a0,0x4
    80005420:	d6c50513          	addi	a0,a0,-660 # 80009188 <CONSOLE_STATUS+0x178>
    80005424:	00000097          	auipc	ra,0x0
    80005428:	198080e7          	jalr	408(ra) # 800055bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000542c:	0014849b          	addiw	s1,s1,1
    80005430:	0ff4f493          	andi	s1,s1,255
    80005434:	00f00793          	li	a5,15
    80005438:	fc97f0e3          	bgeu	a5,s1,800053f8 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000543c:	00004517          	auipc	a0,0x4
    80005440:	efc50513          	addi	a0,a0,-260 # 80009338 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005444:	00000097          	auipc	ra,0x0
    80005448:	178080e7          	jalr	376(ra) # 800055bc <_Z11printStringPKc>
    finishedD = true;
    8000544c:	00100793          	li	a5,1
    80005450:	00006717          	auipc	a4,0x6
    80005454:	52f70fa3          	sb	a5,1343(a4) # 8000b98f <_ZL9finishedD>
    thread_dispatch();
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	ecc080e7          	jalr	-308(ra) # 80001324 <thread_dispatch>
}
    80005460:	01813083          	ld	ra,24(sp)
    80005464:	01013403          	ld	s0,16(sp)
    80005468:	00813483          	ld	s1,8(sp)
    8000546c:	00013903          	ld	s2,0(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret

0000000080005478 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005478:	fc010113          	addi	sp,sp,-64
    8000547c:	02113c23          	sd	ra,56(sp)
    80005480:	02813823          	sd	s0,48(sp)
    80005484:	02913423          	sd	s1,40(sp)
    80005488:	03213023          	sd	s2,32(sp)
    8000548c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005490:	00000613          	li	a2,0
    80005494:	00000597          	auipc	a1,0x0
    80005498:	b1058593          	addi	a1,a1,-1264 # 80004fa4 <_Z11workerBodyAPv>
    8000549c:	fc040513          	addi	a0,s0,-64
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	e04080e7          	jalr	-508(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800054a8:	00004517          	auipc	a0,0x4
    800054ac:	ea050513          	addi	a0,a0,-352 # 80009348 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	10c080e7          	jalr	268(ra) # 800055bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800054b8:	00000613          	li	a2,0
    800054bc:	00000597          	auipc	a1,0x0
    800054c0:	bb058593          	addi	a1,a1,-1104 # 8000506c <_Z11workerBodyBPv>
    800054c4:	fc840513          	addi	a0,s0,-56
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	ddc080e7          	jalr	-548(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    800054d0:	00004517          	auipc	a0,0x4
    800054d4:	e9050513          	addi	a0,a0,-368 # 80009360 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800054d8:	00000097          	auipc	ra,0x0
    800054dc:	0e4080e7          	jalr	228(ra) # 800055bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800054e0:	00000613          	li	a2,0
    800054e4:	00000597          	auipc	a1,0x0
    800054e8:	ccc58593          	addi	a1,a1,-820 # 800051b0 <_Z11workerBodyCPv>
    800054ec:	fd040513          	addi	a0,s0,-48
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	db4080e7          	jalr	-588(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800054f8:	00004517          	auipc	a0,0x4
    800054fc:	e8050513          	addi	a0,a0,-384 # 80009378 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80005500:	00000097          	auipc	ra,0x0
    80005504:	0bc080e7          	jalr	188(ra) # 800055bc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005508:	00000613          	li	a2,0
    8000550c:	00000597          	auipc	a1,0x0
    80005510:	e2458593          	addi	a1,a1,-476 # 80005330 <_Z11workerBodyDPv>
    80005514:	fd840513          	addi	a0,s0,-40
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	d8c080e7          	jalr	-628(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005520:	00004517          	auipc	a0,0x4
    80005524:	e7050513          	addi	a0,a0,-400 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	094080e7          	jalr	148(ra) # 800055bc <_Z11printStringPKc>
    80005530:	00c0006f          	j	8000553c <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80005534:	ffffc097          	auipc	ra,0xffffc
    80005538:	df0080e7          	jalr	-528(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000553c:	00006797          	auipc	a5,0x6
    80005540:	4507c783          	lbu	a5,1104(a5) # 8000b98c <_ZL9finishedA>
    80005544:	fe0788e3          	beqz	a5,80005534 <_Z18Threads_C_API_testv+0xbc>
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	4457c783          	lbu	a5,1093(a5) # 8000b98d <_ZL9finishedB>
    80005550:	fe0782e3          	beqz	a5,80005534 <_Z18Threads_C_API_testv+0xbc>
    80005554:	00006797          	auipc	a5,0x6
    80005558:	43a7c783          	lbu	a5,1082(a5) # 8000b98e <_ZL9finishedC>
    8000555c:	fc078ce3          	beqz	a5,80005534 <_Z18Threads_C_API_testv+0xbc>
    80005560:	00006797          	auipc	a5,0x6
    80005564:	42f7c783          	lbu	a5,1071(a5) # 8000b98f <_ZL9finishedD>
    80005568:	fc0786e3          	beqz	a5,80005534 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    8000556c:	fc040493          	addi	s1,s0,-64
    80005570:	0080006f          	j	80005578 <_Z18Threads_C_API_testv+0x100>
    80005574:	00848493          	addi	s1,s1,8
    80005578:	fe040793          	addi	a5,s0,-32
    8000557c:	02f48463          	beq	s1,a5,800055a4 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005580:	0004b903          	ld	s2,0(s1)
    80005584:	fe0908e3          	beqz	s2,80005574 <_Z18Threads_C_API_testv+0xfc>
    80005588:	00090513          	mv	a0,s2
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	218080e7          	jalr	536(ra) # 800027a4 <_ZN3PCBD1Ev>
    80005594:	00090513          	mv	a0,s2
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	1e4080e7          	jalr	484(ra) # 8000277c <_ZN3PCBdlEPv>
    800055a0:	fd5ff06f          	j	80005574 <_Z18Threads_C_API_testv+0xfc>
    }
}
    800055a4:	03813083          	ld	ra,56(sp)
    800055a8:	03013403          	ld	s0,48(sp)
    800055ac:	02813483          	ld	s1,40(sp)
    800055b0:	02013903          	ld	s2,32(sp)
    800055b4:	04010113          	addi	sp,sp,64
    800055b8:	00008067          	ret

00000000800055bc <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00113c23          	sd	ra,24(sp)
    800055c4:	00813823          	sd	s0,16(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	00050493          	mv	s1,a0
    LOCK();
    800055d4:	00100613          	li	a2,1
    800055d8:	00000593          	li	a1,0
    800055dc:	00006517          	auipc	a0,0x6
    800055e0:	3b450513          	addi	a0,a0,948 # 8000b990 <lockPrint>
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	c24080e7          	jalr	-988(ra) # 80001208 <copy_and_swap>
    800055ec:	fe0514e3          	bnez	a0,800055d4 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    800055f0:	0004c503          	lbu	a0,0(s1)
    800055f4:	00050a63          	beqz	a0,80005608 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    800055f8:	00003097          	auipc	ra,0x3
    800055fc:	a04080e7          	jalr	-1532(ra) # 80007ffc <__putc>
        putc(*string);
        string++;
    80005600:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005604:	fedff06f          	j	800055f0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005608:	00000613          	li	a2,0
    8000560c:	00100593          	li	a1,1
    80005610:	00006517          	auipc	a0,0x6
    80005614:	38050513          	addi	a0,a0,896 # 8000b990 <lockPrint>
    80005618:	ffffc097          	auipc	ra,0xffffc
    8000561c:	bf0080e7          	jalr	-1040(ra) # 80001208 <copy_and_swap>
    80005620:	fe0514e3          	bnez	a0,80005608 <_Z11printStringPKc+0x4c>
}
    80005624:	01813083          	ld	ra,24(sp)
    80005628:	01013403          	ld	s0,16(sp)
    8000562c:	00813483          	ld	s1,8(sp)
    80005630:	02010113          	addi	sp,sp,32
    80005634:	00008067          	ret

0000000080005638 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005638:	fd010113          	addi	sp,sp,-48
    8000563c:	02113423          	sd	ra,40(sp)
    80005640:	02813023          	sd	s0,32(sp)
    80005644:	00913c23          	sd	s1,24(sp)
    80005648:	01213823          	sd	s2,16(sp)
    8000564c:	01313423          	sd	s3,8(sp)
    80005650:	01413023          	sd	s4,0(sp)
    80005654:	03010413          	addi	s0,sp,48
    80005658:	00050993          	mv	s3,a0
    8000565c:	00058a13          	mv	s4,a1
    LOCK();
    80005660:	00100613          	li	a2,1
    80005664:	00000593          	li	a1,0
    80005668:	00006517          	auipc	a0,0x6
    8000566c:	32850513          	addi	a0,a0,808 # 8000b990 <lockPrint>
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	b98080e7          	jalr	-1128(ra) # 80001208 <copy_and_swap>
    80005678:	fe0514e3          	bnez	a0,80005660 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    8000567c:	00000913          	li	s2,0
    80005680:	00090493          	mv	s1,s2
    80005684:	0019091b          	addiw	s2,s2,1
    80005688:	03495a63          	bge	s2,s4,800056bc <_Z9getStringPci+0x84>
    return __getc();
    8000568c:	00003097          	auipc	ra,0x3
    80005690:	9ac080e7          	jalr	-1620(ra) # 80008038 <__getc>
        cc = getc();
        if (cc < 1)
    80005694:	02050463          	beqz	a0,800056bc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005698:	009984b3          	add	s1,s3,s1
    8000569c:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800056a0:	00a00793          	li	a5,10
    800056a4:	00f50a63          	beq	a0,a5,800056b8 <_Z9getStringPci+0x80>
    800056a8:	00d00793          	li	a5,13
    800056ac:	fcf51ae3          	bne	a0,a5,80005680 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800056b0:	00090493          	mv	s1,s2
    800056b4:	0080006f          	j	800056bc <_Z9getStringPci+0x84>
    800056b8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800056bc:	009984b3          	add	s1,s3,s1
    800056c0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800056c4:	00000613          	li	a2,0
    800056c8:	00100593          	li	a1,1
    800056cc:	00006517          	auipc	a0,0x6
    800056d0:	2c450513          	addi	a0,a0,708 # 8000b990 <lockPrint>
    800056d4:	ffffc097          	auipc	ra,0xffffc
    800056d8:	b34080e7          	jalr	-1228(ra) # 80001208 <copy_and_swap>
    800056dc:	fe0514e3          	bnez	a0,800056c4 <_Z9getStringPci+0x8c>
    return buf;
}
    800056e0:	00098513          	mv	a0,s3
    800056e4:	02813083          	ld	ra,40(sp)
    800056e8:	02013403          	ld	s0,32(sp)
    800056ec:	01813483          	ld	s1,24(sp)
    800056f0:	01013903          	ld	s2,16(sp)
    800056f4:	00813983          	ld	s3,8(sp)
    800056f8:	00013a03          	ld	s4,0(sp)
    800056fc:	03010113          	addi	sp,sp,48
    80005700:	00008067          	ret

0000000080005704 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005704:	ff010113          	addi	sp,sp,-16
    80005708:	00813423          	sd	s0,8(sp)
    8000570c:	01010413          	addi	s0,sp,16
    80005710:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005714:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005718:	0006c603          	lbu	a2,0(a3)
    8000571c:	fd06071b          	addiw	a4,a2,-48
    80005720:	0ff77713          	andi	a4,a4,255
    80005724:	00900793          	li	a5,9
    80005728:	02e7e063          	bltu	a5,a4,80005748 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000572c:	0025179b          	slliw	a5,a0,0x2
    80005730:	00a787bb          	addw	a5,a5,a0
    80005734:	0017979b          	slliw	a5,a5,0x1
    80005738:	00168693          	addi	a3,a3,1
    8000573c:	00c787bb          	addw	a5,a5,a2
    80005740:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005744:	fd5ff06f          	j	80005718 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005748:	00813403          	ld	s0,8(sp)
    8000574c:	01010113          	addi	sp,sp,16
    80005750:	00008067          	ret

0000000080005754 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005754:	fc010113          	addi	sp,sp,-64
    80005758:	02113c23          	sd	ra,56(sp)
    8000575c:	02813823          	sd	s0,48(sp)
    80005760:	02913423          	sd	s1,40(sp)
    80005764:	03213023          	sd	s2,32(sp)
    80005768:	01313c23          	sd	s3,24(sp)
    8000576c:	04010413          	addi	s0,sp,64
    80005770:	00050493          	mv	s1,a0
    80005774:	00058913          	mv	s2,a1
    80005778:	00060993          	mv	s3,a2
    LOCK();
    8000577c:	00100613          	li	a2,1
    80005780:	00000593          	li	a1,0
    80005784:	00006517          	auipc	a0,0x6
    80005788:	20c50513          	addi	a0,a0,524 # 8000b990 <lockPrint>
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	a7c080e7          	jalr	-1412(ra) # 80001208 <copy_and_swap>
    80005794:	fe0514e3          	bnez	a0,8000577c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005798:	00098463          	beqz	s3,800057a0 <_Z8printIntiii+0x4c>
    8000579c:	0804c463          	bltz	s1,80005824 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800057a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800057a4:	00000593          	li	a1,0
    }

    i = 0;
    800057a8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800057ac:	0009079b          	sext.w	a5,s2
    800057b0:	0325773b          	remuw	a4,a0,s2
    800057b4:	00048613          	mv	a2,s1
    800057b8:	0014849b          	addiw	s1,s1,1
    800057bc:	02071693          	slli	a3,a4,0x20
    800057c0:	0206d693          	srli	a3,a3,0x20
    800057c4:	00004717          	auipc	a4,0x4
    800057c8:	bf470713          	addi	a4,a4,-1036 # 800093b8 <_ZL6digits>
    800057cc:	00d70733          	add	a4,a4,a3
    800057d0:	00074683          	lbu	a3,0(a4)
    800057d4:	fd040713          	addi	a4,s0,-48
    800057d8:	00c70733          	add	a4,a4,a2
    800057dc:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    800057e0:	0005071b          	sext.w	a4,a0
    800057e4:	0325553b          	divuw	a0,a0,s2
    800057e8:	fcf772e3          	bgeu	a4,a5,800057ac <_Z8printIntiii+0x58>
    if (neg)
    800057ec:	00058c63          	beqz	a1,80005804 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800057f0:	fd040793          	addi	a5,s0,-48
    800057f4:	009784b3          	add	s1,a5,s1
    800057f8:	02d00793          	li	a5,45
    800057fc:	fef48823          	sb	a5,-16(s1)
    80005800:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005804:	fff4849b          	addiw	s1,s1,-1
    80005808:	0204c463          	bltz	s1,80005830 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000580c:	fd040793          	addi	a5,s0,-48
    80005810:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005814:	ff07c503          	lbu	a0,-16(a5)
    80005818:	00002097          	auipc	ra,0x2
    8000581c:	7e4080e7          	jalr	2020(ra) # 80007ffc <__putc>
}
    80005820:	fe5ff06f          	j	80005804 <_Z8printIntiii+0xb0>
        x = -xx;
    80005824:	4090053b          	negw	a0,s1
        neg = 1;
    80005828:	00100593          	li	a1,1
        x = -xx;
    8000582c:	f7dff06f          	j	800057a8 <_Z8printIntiii+0x54>

    UNLOCK();
    80005830:	00000613          	li	a2,0
    80005834:	00100593          	li	a1,1
    80005838:	00006517          	auipc	a0,0x6
    8000583c:	15850513          	addi	a0,a0,344 # 8000b990 <lockPrint>
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	9c8080e7          	jalr	-1592(ra) # 80001208 <copy_and_swap>
    80005848:	fe0514e3          	bnez	a0,80005830 <_Z8printIntiii+0xdc>
}
    8000584c:	03813083          	ld	ra,56(sp)
    80005850:	03013403          	ld	s0,48(sp)
    80005854:	02813483          	ld	s1,40(sp)
    80005858:	02013903          	ld	s2,32(sp)
    8000585c:	01813983          	ld	s3,24(sp)
    80005860:	04010113          	addi	sp,sp,64
    80005864:	00008067          	ret

0000000080005868 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005868:	fe010113          	addi	sp,sp,-32
    8000586c:	00113c23          	sd	ra,24(sp)
    80005870:	00813823          	sd	s0,16(sp)
    80005874:	00913423          	sd	s1,8(sp)
    80005878:	01213023          	sd	s2,0(sp)
    8000587c:	02010413          	addi	s0,sp,32
    80005880:	00050493          	mv	s1,a0
    80005884:	00b52023          	sw	a1,0(a0)
    80005888:	00052823          	sw	zero,16(a0)
    8000588c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005890:	00259513          	slli	a0,a1,0x2
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	9b4080e7          	jalr	-1612(ra) # 80001248 <mem_alloc>
    8000589c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800058a0:	01000513          	li	a0,16
    800058a4:	ffffd097          	auipc	ra,0xffffd
    800058a8:	7ec080e7          	jalr	2028(ra) # 80003090 <_Znwm>
    800058ac:	00050913          	mv	s2,a0
    800058b0:	00000593          	li	a1,0
    800058b4:	ffffe097          	auipc	ra,0xffffe
    800058b8:	a18080e7          	jalr	-1512(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    800058bc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800058c0:	01000513          	li	a0,16
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	7cc080e7          	jalr	1996(ra) # 80003090 <_Znwm>
    800058cc:	00050913          	mv	s2,a0
    800058d0:	0004a583          	lw	a1,0(s1)
    800058d4:	ffffe097          	auipc	ra,0xffffe
    800058d8:	9f8080e7          	jalr	-1544(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    800058dc:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800058e0:	01000513          	li	a0,16
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	7ac080e7          	jalr	1964(ra) # 80003090 <_Znwm>
    800058ec:	00050913          	mv	s2,a0
    800058f0:	00100593          	li	a1,1
    800058f4:	ffffe097          	auipc	ra,0xffffe
    800058f8:	9d8080e7          	jalr	-1576(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    800058fc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005900:	01000513          	li	a0,16
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	78c080e7          	jalr	1932(ra) # 80003090 <_Znwm>
    8000590c:	00050913          	mv	s2,a0
    80005910:	00100593          	li	a1,1
    80005914:	ffffe097          	auipc	ra,0xffffe
    80005918:	9b8080e7          	jalr	-1608(ra) # 800032cc <_ZN9SemaphoreC1Ej>
    8000591c:	0324b823          	sd	s2,48(s1)
}
    80005920:	01813083          	ld	ra,24(sp)
    80005924:	01013403          	ld	s0,16(sp)
    80005928:	00813483          	ld	s1,8(sp)
    8000592c:	00013903          	ld	s2,0(sp)
    80005930:	02010113          	addi	sp,sp,32
    80005934:	00008067          	ret
    80005938:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000593c:	00090513          	mv	a0,s2
    80005940:	ffffd097          	auipc	ra,0xffffd
    80005944:	778080e7          	jalr	1912(ra) # 800030b8 <_ZdlPv>
    80005948:	00048513          	mv	a0,s1
    8000594c:	00007097          	auipc	ra,0x7
    80005950:	11c080e7          	jalr	284(ra) # 8000ca68 <_Unwind_Resume>
    80005954:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005958:	00090513          	mv	a0,s2
    8000595c:	ffffd097          	auipc	ra,0xffffd
    80005960:	75c080e7          	jalr	1884(ra) # 800030b8 <_ZdlPv>
    80005964:	00048513          	mv	a0,s1
    80005968:	00007097          	auipc	ra,0x7
    8000596c:	100080e7          	jalr	256(ra) # 8000ca68 <_Unwind_Resume>
    80005970:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005974:	00090513          	mv	a0,s2
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	740080e7          	jalr	1856(ra) # 800030b8 <_ZdlPv>
    80005980:	00048513          	mv	a0,s1
    80005984:	00007097          	auipc	ra,0x7
    80005988:	0e4080e7          	jalr	228(ra) # 8000ca68 <_Unwind_Resume>
    8000598c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005990:	00090513          	mv	a0,s2
    80005994:	ffffd097          	auipc	ra,0xffffd
    80005998:	724080e7          	jalr	1828(ra) # 800030b8 <_ZdlPv>
    8000599c:	00048513          	mv	a0,s1
    800059a0:	00007097          	auipc	ra,0x7
    800059a4:	0c8080e7          	jalr	200(ra) # 8000ca68 <_Unwind_Resume>

00000000800059a8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800059a8:	fe010113          	addi	sp,sp,-32
    800059ac:	00113c23          	sd	ra,24(sp)
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	02010413          	addi	s0,sp,32
    800059bc:	00050493          	mv	s1,a0
    __putc(c);
    800059c0:	00a00513          	li	a0,10
    800059c4:	00002097          	auipc	ra,0x2
    800059c8:	638080e7          	jalr	1592(ra) # 80007ffc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800059cc:	0104a783          	lw	a5,16(s1)
    800059d0:	0144a703          	lw	a4,20(s1)
    800059d4:	00e78c63          	beq	a5,a4,800059ec <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800059d8:	0017879b          	addiw	a5,a5,1
    800059dc:	0004a703          	lw	a4,0(s1)
    800059e0:	02e7e7bb          	remw	a5,a5,a4
    800059e4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800059e8:	fe5ff06f          	j	800059cc <_ZN9BufferCPPD1Ev+0x24>
    800059ec:	02100513          	li	a0,33
    800059f0:	00002097          	auipc	ra,0x2
    800059f4:	60c080e7          	jalr	1548(ra) # 80007ffc <__putc>
    800059f8:	00a00513          	li	a0,10
    800059fc:	00002097          	auipc	ra,0x2
    80005a00:	600080e7          	jalr	1536(ra) # 80007ffc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005a04:	0084b503          	ld	a0,8(s1)
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	870080e7          	jalr	-1936(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005a10:	0204b503          	ld	a0,32(s1)
    80005a14:	00050863          	beqz	a0,80005a24 <_ZN9BufferCPPD1Ev+0x7c>
    80005a18:	00053783          	ld	a5,0(a0)
    80005a1c:	0087b783          	ld	a5,8(a5)
    80005a20:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005a24:	0184b503          	ld	a0,24(s1)
    80005a28:	00050863          	beqz	a0,80005a38 <_ZN9BufferCPPD1Ev+0x90>
    80005a2c:	00053783          	ld	a5,0(a0)
    80005a30:	0087b783          	ld	a5,8(a5)
    80005a34:	000780e7          	jalr	a5
    delete mutexTail;
    80005a38:	0304b503          	ld	a0,48(s1)
    80005a3c:	00050863          	beqz	a0,80005a4c <_ZN9BufferCPPD1Ev+0xa4>
    80005a40:	00053783          	ld	a5,0(a0)
    80005a44:	0087b783          	ld	a5,8(a5)
    80005a48:	000780e7          	jalr	a5
    delete mutexHead;
    80005a4c:	0284b503          	ld	a0,40(s1)
    80005a50:	00050863          	beqz	a0,80005a60 <_ZN9BufferCPPD1Ev+0xb8>
    80005a54:	00053783          	ld	a5,0(a0)
    80005a58:	0087b783          	ld	a5,8(a5)
    80005a5c:	000780e7          	jalr	a5

}
    80005a60:	01813083          	ld	ra,24(sp)
    80005a64:	01013403          	ld	s0,16(sp)
    80005a68:	00813483          	ld	s1,8(sp)
    80005a6c:	02010113          	addi	sp,sp,32
    80005a70:	00008067          	ret

0000000080005a74 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005a74:	fe010113          	addi	sp,sp,-32
    80005a78:	00113c23          	sd	ra,24(sp)
    80005a7c:	00813823          	sd	s0,16(sp)
    80005a80:	00913423          	sd	s1,8(sp)
    80005a84:	01213023          	sd	s2,0(sp)
    80005a88:	02010413          	addi	s0,sp,32
    80005a8c:	00050493          	mv	s1,a0
    80005a90:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005a94:	01853503          	ld	a0,24(a0)
    80005a98:	ffffd097          	auipc	ra,0xffffd
    80005a9c:	7fc080e7          	jalr	2044(ra) # 80003294 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005aa0:	0304b503          	ld	a0,48(s1)
    80005aa4:	ffffd097          	auipc	ra,0xffffd
    80005aa8:	7f0080e7          	jalr	2032(ra) # 80003294 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005aac:	0084b783          	ld	a5,8(s1)
    80005ab0:	0144a703          	lw	a4,20(s1)
    80005ab4:	00271713          	slli	a4,a4,0x2
    80005ab8:	00e787b3          	add	a5,a5,a4
    80005abc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ac0:	0144a783          	lw	a5,20(s1)
    80005ac4:	0017879b          	addiw	a5,a5,1
    80005ac8:	0004a703          	lw	a4,0(s1)
    80005acc:	02e7e7bb          	remw	a5,a5,a4
    80005ad0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ad4:	0304b503          	ld	a0,48(s1)
    80005ad8:	ffffe097          	auipc	ra,0xffffe
    80005adc:	840080e7          	jalr	-1984(ra) # 80003318 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ae0:	0204b503          	ld	a0,32(s1)
    80005ae4:	ffffe097          	auipc	ra,0xffffe
    80005ae8:	834080e7          	jalr	-1996(ra) # 80003318 <_ZN9Semaphore6signalEv>

}
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	00013903          	ld	s2,0(sp)
    80005afc:	02010113          	addi	sp,sp,32
    80005b00:	00008067          	ret

0000000080005b04 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005b04:	fe010113          	addi	sp,sp,-32
    80005b08:	00113c23          	sd	ra,24(sp)
    80005b0c:	00813823          	sd	s0,16(sp)
    80005b10:	00913423          	sd	s1,8(sp)
    80005b14:	01213023          	sd	s2,0(sp)
    80005b18:	02010413          	addi	s0,sp,32
    80005b1c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005b20:	02053503          	ld	a0,32(a0)
    80005b24:	ffffd097          	auipc	ra,0xffffd
    80005b28:	770080e7          	jalr	1904(ra) # 80003294 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005b2c:	0284b503          	ld	a0,40(s1)
    80005b30:	ffffd097          	auipc	ra,0xffffd
    80005b34:	764080e7          	jalr	1892(ra) # 80003294 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005b38:	0084b703          	ld	a4,8(s1)
    80005b3c:	0104a783          	lw	a5,16(s1)
    80005b40:	00279693          	slli	a3,a5,0x2
    80005b44:	00d70733          	add	a4,a4,a3
    80005b48:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b4c:	0017879b          	addiw	a5,a5,1
    80005b50:	0004a703          	lw	a4,0(s1)
    80005b54:	02e7e7bb          	remw	a5,a5,a4
    80005b58:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b5c:	0284b503          	ld	a0,40(s1)
    80005b60:	ffffd097          	auipc	ra,0xffffd
    80005b64:	7b8080e7          	jalr	1976(ra) # 80003318 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b68:	0184b503          	ld	a0,24(s1)
    80005b6c:	ffffd097          	auipc	ra,0xffffd
    80005b70:	7ac080e7          	jalr	1964(ra) # 80003318 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b74:	00090513          	mv	a0,s2
    80005b78:	01813083          	ld	ra,24(sp)
    80005b7c:	01013403          	ld	s0,16(sp)
    80005b80:	00813483          	ld	s1,8(sp)
    80005b84:	00013903          	ld	s2,0(sp)
    80005b88:	02010113          	addi	sp,sp,32
    80005b8c:	00008067          	ret

0000000080005b90 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005b90:	ff010113          	addi	sp,sp,-16
    80005b94:	00113423          	sd	ra,8(sp)
    80005b98:	00813023          	sd	s0,0(sp)
    80005b9c:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	8d8080e7          	jalr	-1832(ra) # 80005478 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005ba8:	00813083          	ld	ra,8(sp)
    80005bac:	00013403          	ld	s0,0(sp)
    80005bb0:	01010113          	addi	sp,sp,16
    80005bb4:	00008067          	ret

0000000080005bb8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005bb8:	fe010113          	addi	sp,sp,-32
    80005bbc:	00113c23          	sd	ra,24(sp)
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00913423          	sd	s1,8(sp)
    80005bc8:	01213023          	sd	s2,0(sp)
    80005bcc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005bd0:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005bd4:	00600493          	li	s1,6
    while (--i > 0) {
    80005bd8:	fff4849b          	addiw	s1,s1,-1
    80005bdc:	04905463          	blez	s1,80005c24 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	7f050513          	addi	a0,a0,2032 # 800093d0 <_ZL6digits+0x18>
    80005be8:	00000097          	auipc	ra,0x0
    80005bec:	9d4080e7          	jalr	-1580(ra) # 800055bc <_Z11printStringPKc>
        printInt(sleep_time);
    80005bf0:	00000613          	li	a2,0
    80005bf4:	00a00593          	li	a1,10
    80005bf8:	0009051b          	sext.w	a0,s2
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	b58080e7          	jalr	-1192(ra) # 80005754 <_Z8printIntiii>
        printString(" !\n");
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	7d450513          	addi	a0,a0,2004 # 800093d8 <_ZL6digits+0x20>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	9b0080e7          	jalr	-1616(ra) # 800055bc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005c14:	00090513          	mv	a0,s2
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	810080e7          	jalr	-2032(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005c20:	fb9ff06f          	j	80005bd8 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005c24:	00a00793          	li	a5,10
    80005c28:	02f95933          	divu	s2,s2,a5
    80005c2c:	fff90913          	addi	s2,s2,-1
    80005c30:	00006797          	auipc	a5,0x6
    80005c34:	d6878793          	addi	a5,a5,-664 # 8000b998 <finished>
    80005c38:	01278933          	add	s2,a5,s2
    80005c3c:	00100793          	li	a5,1
    80005c40:	00f90023          	sb	a5,0(s2)
}
    80005c44:	01813083          	ld	ra,24(sp)
    80005c48:	01013403          	ld	s0,16(sp)
    80005c4c:	00813483          	ld	s1,8(sp)
    80005c50:	00013903          	ld	s2,0(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <_Z12testSleepingv>:

void testSleeping()
{
    80005c5c:	fc010113          	addi	sp,sp,-64
    80005c60:	02113c23          	sd	ra,56(sp)
    80005c64:	02813823          	sd	s0,48(sp)
    80005c68:	02913423          	sd	s1,40(sp)
    80005c6c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005c70:	00a00793          	li	a5,10
    80005c74:	fcf43823          	sd	a5,-48(s0)
    80005c78:	01400793          	li	a5,20
    80005c7c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c80:	00000493          	li	s1,0
    80005c84:	02c0006f          	j	80005cb0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c88:	00349793          	slli	a5,s1,0x3
    80005c8c:	fd040613          	addi	a2,s0,-48
    80005c90:	00f60633          	add	a2,a2,a5
    80005c94:	00000597          	auipc	a1,0x0
    80005c98:	f2458593          	addi	a1,a1,-220 # 80005bb8 <_Z9sleepyRunPv>
    80005c9c:	fc040513          	addi	a0,s0,-64
    80005ca0:	00f50533          	add	a0,a0,a5
    80005ca4:	ffffb097          	auipc	ra,0xffffb
    80005ca8:	600080e7          	jalr	1536(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005cac:	0014849b          	addiw	s1,s1,1
    80005cb0:	00100793          	li	a5,1
    80005cb4:	fc97dae3          	bge	a5,s1,80005c88 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005cb8:	00006797          	auipc	a5,0x6
    80005cbc:	ce07c783          	lbu	a5,-800(a5) # 8000b998 <finished>
    80005cc0:	fe078ce3          	beqz	a5,80005cb8 <_Z12testSleepingv+0x5c>
    80005cc4:	00006797          	auipc	a5,0x6
    80005cc8:	cd57c783          	lbu	a5,-811(a5) # 8000b999 <finished+0x1>
    80005ccc:	fe0786e3          	beqz	a5,80005cb8 <_Z12testSleepingv+0x5c>
}
    80005cd0:	03813083          	ld	ra,56(sp)
    80005cd4:	03013403          	ld	s0,48(sp)
    80005cd8:	02813483          	ld	s1,40(sp)
    80005cdc:	04010113          	addi	sp,sp,64
    80005ce0:	00008067          	ret

0000000080005ce4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005ce4:	fe010113          	addi	sp,sp,-32
    80005ce8:	00113c23          	sd	ra,24(sp)
    80005cec:	00813823          	sd	s0,16(sp)
    80005cf0:	00913423          	sd	s1,8(sp)
    80005cf4:	02010413          	addi	s0,sp,32
    80005cf8:	00050493          	mv	s1,a0
    80005cfc:	00b52023          	sw	a1,0(a0)
    80005d00:	00052823          	sw	zero,16(a0)
    80005d04:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d08:	00259513          	slli	a0,a1,0x2
    80005d0c:	ffffb097          	auipc	ra,0xffffb
    80005d10:	53c080e7          	jalr	1340(ra) # 80001248 <mem_alloc>
    80005d14:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005d18:	00000593          	li	a1,0
    80005d1c:	02048513          	addi	a0,s1,32
    80005d20:	ffffb097          	auipc	ra,0xffffb
    80005d24:	64c080e7          	jalr	1612(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005d28:	0004a583          	lw	a1,0(s1)
    80005d2c:	01848513          	addi	a0,s1,24
    80005d30:	ffffb097          	auipc	ra,0xffffb
    80005d34:	63c080e7          	jalr	1596(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005d38:	00100593          	li	a1,1
    80005d3c:	02848513          	addi	a0,s1,40
    80005d40:	ffffb097          	auipc	ra,0xffffb
    80005d44:	62c080e7          	jalr	1580(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005d48:	00100593          	li	a1,1
    80005d4c:	03048513          	addi	a0,s1,48
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	61c080e7          	jalr	1564(ra) # 8000136c <sem_open>
}
    80005d58:	01813083          	ld	ra,24(sp)
    80005d5c:	01013403          	ld	s0,16(sp)
    80005d60:	00813483          	ld	s1,8(sp)
    80005d64:	02010113          	addi	sp,sp,32
    80005d68:	00008067          	ret

0000000080005d6c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005d6c:	fe010113          	addi	sp,sp,-32
    80005d70:	00113c23          	sd	ra,24(sp)
    80005d74:	00813823          	sd	s0,16(sp)
    80005d78:	00913423          	sd	s1,8(sp)
    80005d7c:	02010413          	addi	s0,sp,32
    80005d80:	00050493          	mv	s1,a0
    80005d84:	00a00513          	li	a0,10
    80005d88:	00002097          	auipc	ra,0x2
    80005d8c:	274080e7          	jalr	628(ra) # 80007ffc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005d90:	0104a783          	lw	a5,16(s1)
    80005d94:	0144a703          	lw	a4,20(s1)
    80005d98:	00e78c63          	beq	a5,a4,80005db0 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005d9c:	0017879b          	addiw	a5,a5,1
    80005da0:	0004a703          	lw	a4,0(s1)
    80005da4:	02e7e7bb          	remw	a5,a5,a4
    80005da8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005dac:	fe5ff06f          	j	80005d90 <_ZN6BufferD1Ev+0x24>
    80005db0:	02100513          	li	a0,33
    80005db4:	00002097          	auipc	ra,0x2
    80005db8:	248080e7          	jalr	584(ra) # 80007ffc <__putc>
    80005dbc:	00a00513          	li	a0,10
    80005dc0:	00002097          	auipc	ra,0x2
    80005dc4:	23c080e7          	jalr	572(ra) # 80007ffc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005dc8:	0084b503          	ld	a0,8(s1)
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	4ac080e7          	jalr	1196(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005dd4:	0204b503          	ld	a0,32(s1)
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	5cc080e7          	jalr	1484(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005de0:	0184b503          	ld	a0,24(s1)
    80005de4:	ffffb097          	auipc	ra,0xffffb
    80005de8:	5c0080e7          	jalr	1472(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005dec:	0304b503          	ld	a0,48(s1)
    80005df0:	ffffb097          	auipc	ra,0xffffb
    80005df4:	5b4080e7          	jalr	1460(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005df8:	0284b503          	ld	a0,40(s1)
    80005dfc:	ffffb097          	auipc	ra,0xffffb
    80005e00:	5a8080e7          	jalr	1448(ra) # 800013a4 <sem_close>
}
    80005e04:	01813083          	ld	ra,24(sp)
    80005e08:	01013403          	ld	s0,16(sp)
    80005e0c:	00813483          	ld	s1,8(sp)
    80005e10:	02010113          	addi	sp,sp,32
    80005e14:	00008067          	ret

0000000080005e18 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005e18:	fe010113          	addi	sp,sp,-32
    80005e1c:	00113c23          	sd	ra,24(sp)
    80005e20:	00813823          	sd	s0,16(sp)
    80005e24:	00913423          	sd	s1,8(sp)
    80005e28:	01213023          	sd	s2,0(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    80005e30:	00050493          	mv	s1,a0
    80005e34:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005e38:	01853503          	ld	a0,24(a0)
    80005e3c:	ffffb097          	auipc	ra,0xffffb
    80005e40:	594080e7          	jalr	1428(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005e44:	0304b503          	ld	a0,48(s1)
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	588080e7          	jalr	1416(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005e50:	0084b783          	ld	a5,8(s1)
    80005e54:	0144a703          	lw	a4,20(s1)
    80005e58:	00271713          	slli	a4,a4,0x2
    80005e5c:	00e787b3          	add	a5,a5,a4
    80005e60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e64:	0144a783          	lw	a5,20(s1)
    80005e68:	0017879b          	addiw	a5,a5,1
    80005e6c:	0004a703          	lw	a4,0(s1)
    80005e70:	02e7e7bb          	remw	a5,a5,a4
    80005e74:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005e78:	0304b503          	ld	a0,48(s1)
    80005e7c:	ffffb097          	auipc	ra,0xffffb
    80005e80:	580080e7          	jalr	1408(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005e84:	0204b503          	ld	a0,32(s1)
    80005e88:	ffffb097          	auipc	ra,0xffffb
    80005e8c:	574080e7          	jalr	1396(ra) # 800013fc <sem_signal>

}
    80005e90:	01813083          	ld	ra,24(sp)
    80005e94:	01013403          	ld	s0,16(sp)
    80005e98:	00813483          	ld	s1,8(sp)
    80005e9c:	00013903          	ld	s2,0(sp)
    80005ea0:	02010113          	addi	sp,sp,32
    80005ea4:	00008067          	ret

0000000080005ea8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ea8:	fe010113          	addi	sp,sp,-32
    80005eac:	00113c23          	sd	ra,24(sp)
    80005eb0:	00813823          	sd	s0,16(sp)
    80005eb4:	00913423          	sd	s1,8(sp)
    80005eb8:	01213023          	sd	s2,0(sp)
    80005ebc:	02010413          	addi	s0,sp,32
    80005ec0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005ec4:	02053503          	ld	a0,32(a0)
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	508080e7          	jalr	1288(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005ed0:	0284b503          	ld	a0,40(s1)
    80005ed4:	ffffb097          	auipc	ra,0xffffb
    80005ed8:	4fc080e7          	jalr	1276(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005edc:	0084b703          	ld	a4,8(s1)
    80005ee0:	0104a783          	lw	a5,16(s1)
    80005ee4:	00279693          	slli	a3,a5,0x2
    80005ee8:	00d70733          	add	a4,a4,a3
    80005eec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005ef0:	0017879b          	addiw	a5,a5,1
    80005ef4:	0004a703          	lw	a4,0(s1)
    80005ef8:	02e7e7bb          	remw	a5,a5,a4
    80005efc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005f00:	0284b503          	ld	a0,40(s1)
    80005f04:	ffffb097          	auipc	ra,0xffffb
    80005f08:	4f8080e7          	jalr	1272(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005f0c:	0184b503          	ld	a0,24(s1)
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	4ec080e7          	jalr	1260(ra) # 800013fc <sem_signal>

    return ret;
}
    80005f18:	00090513          	mv	a0,s2
    80005f1c:	01813083          	ld	ra,24(sp)
    80005f20:	01013403          	ld	s0,16(sp)
    80005f24:	00813483          	ld	s1,8(sp)
    80005f28:	00013903          	ld	s2,0(sp)
    80005f2c:	02010113          	addi	sp,sp,32
    80005f30:	00008067          	ret

0000000080005f34 <start>:
    80005f34:	ff010113          	addi	sp,sp,-16
    80005f38:	00813423          	sd	s0,8(sp)
    80005f3c:	01010413          	addi	s0,sp,16
    80005f40:	300027f3          	csrr	a5,mstatus
    80005f44:	ffffe737          	lui	a4,0xffffe
    80005f48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bff>
    80005f4c:	00e7f7b3          	and	a5,a5,a4
    80005f50:	00001737          	lui	a4,0x1
    80005f54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005f58:	00e7e7b3          	or	a5,a5,a4
    80005f5c:	30079073          	csrw	mstatus,a5
    80005f60:	00000797          	auipc	a5,0x0
    80005f64:	16078793          	addi	a5,a5,352 # 800060c0 <system_main>
    80005f68:	34179073          	csrw	mepc,a5
    80005f6c:	00000793          	li	a5,0
    80005f70:	18079073          	csrw	satp,a5
    80005f74:	000107b7          	lui	a5,0x10
    80005f78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005f7c:	30279073          	csrw	medeleg,a5
    80005f80:	30379073          	csrw	mideleg,a5
    80005f84:	104027f3          	csrr	a5,sie
    80005f88:	2227e793          	ori	a5,a5,546
    80005f8c:	10479073          	csrw	sie,a5
    80005f90:	fff00793          	li	a5,-1
    80005f94:	00a7d793          	srli	a5,a5,0xa
    80005f98:	3b079073          	csrw	pmpaddr0,a5
    80005f9c:	00f00793          	li	a5,15
    80005fa0:	3a079073          	csrw	pmpcfg0,a5
    80005fa4:	f14027f3          	csrr	a5,mhartid
    80005fa8:	0200c737          	lui	a4,0x200c
    80005fac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005fb0:	0007869b          	sext.w	a3,a5
    80005fb4:	00269713          	slli	a4,a3,0x2
    80005fb8:	000f4637          	lui	a2,0xf4
    80005fbc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005fc0:	00d70733          	add	a4,a4,a3
    80005fc4:	0037979b          	slliw	a5,a5,0x3
    80005fc8:	020046b7          	lui	a3,0x2004
    80005fcc:	00d787b3          	add	a5,a5,a3
    80005fd0:	00c585b3          	add	a1,a1,a2
    80005fd4:	00371693          	slli	a3,a4,0x3
    80005fd8:	00006717          	auipc	a4,0x6
    80005fdc:	9c870713          	addi	a4,a4,-1592 # 8000b9a0 <timer_scratch>
    80005fe0:	00b7b023          	sd	a1,0(a5)
    80005fe4:	00d70733          	add	a4,a4,a3
    80005fe8:	00f73c23          	sd	a5,24(a4)
    80005fec:	02c73023          	sd	a2,32(a4)
    80005ff0:	34071073          	csrw	mscratch,a4
    80005ff4:	00000797          	auipc	a5,0x0
    80005ff8:	6ec78793          	addi	a5,a5,1772 # 800066e0 <timervec>
    80005ffc:	30579073          	csrw	mtvec,a5
    80006000:	300027f3          	csrr	a5,mstatus
    80006004:	0087e793          	ori	a5,a5,8
    80006008:	30079073          	csrw	mstatus,a5
    8000600c:	304027f3          	csrr	a5,mie
    80006010:	0807e793          	ori	a5,a5,128
    80006014:	30479073          	csrw	mie,a5
    80006018:	f14027f3          	csrr	a5,mhartid
    8000601c:	0007879b          	sext.w	a5,a5
    80006020:	00078213          	mv	tp,a5
    80006024:	30200073          	mret
    80006028:	00813403          	ld	s0,8(sp)
    8000602c:	01010113          	addi	sp,sp,16
    80006030:	00008067          	ret

0000000080006034 <timerinit>:
    80006034:	ff010113          	addi	sp,sp,-16
    80006038:	00813423          	sd	s0,8(sp)
    8000603c:	01010413          	addi	s0,sp,16
    80006040:	f14027f3          	csrr	a5,mhartid
    80006044:	0200c737          	lui	a4,0x200c
    80006048:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000604c:	0007869b          	sext.w	a3,a5
    80006050:	00269713          	slli	a4,a3,0x2
    80006054:	000f4637          	lui	a2,0xf4
    80006058:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000605c:	00d70733          	add	a4,a4,a3
    80006060:	0037979b          	slliw	a5,a5,0x3
    80006064:	020046b7          	lui	a3,0x2004
    80006068:	00d787b3          	add	a5,a5,a3
    8000606c:	00c585b3          	add	a1,a1,a2
    80006070:	00371693          	slli	a3,a4,0x3
    80006074:	00006717          	auipc	a4,0x6
    80006078:	92c70713          	addi	a4,a4,-1748 # 8000b9a0 <timer_scratch>
    8000607c:	00b7b023          	sd	a1,0(a5)
    80006080:	00d70733          	add	a4,a4,a3
    80006084:	00f73c23          	sd	a5,24(a4)
    80006088:	02c73023          	sd	a2,32(a4)
    8000608c:	34071073          	csrw	mscratch,a4
    80006090:	00000797          	auipc	a5,0x0
    80006094:	65078793          	addi	a5,a5,1616 # 800066e0 <timervec>
    80006098:	30579073          	csrw	mtvec,a5
    8000609c:	300027f3          	csrr	a5,mstatus
    800060a0:	0087e793          	ori	a5,a5,8
    800060a4:	30079073          	csrw	mstatus,a5
    800060a8:	304027f3          	csrr	a5,mie
    800060ac:	0807e793          	ori	a5,a5,128
    800060b0:	30479073          	csrw	mie,a5
    800060b4:	00813403          	ld	s0,8(sp)
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	00008067          	ret

00000000800060c0 <system_main>:
    800060c0:	fe010113          	addi	sp,sp,-32
    800060c4:	00813823          	sd	s0,16(sp)
    800060c8:	00913423          	sd	s1,8(sp)
    800060cc:	00113c23          	sd	ra,24(sp)
    800060d0:	02010413          	addi	s0,sp,32
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	0c4080e7          	jalr	196(ra) # 80006198 <cpuid>
    800060dc:	00005497          	auipc	s1,0x5
    800060e0:	7c448493          	addi	s1,s1,1988 # 8000b8a0 <started>
    800060e4:	02050263          	beqz	a0,80006108 <system_main+0x48>
    800060e8:	0004a783          	lw	a5,0(s1)
    800060ec:	0007879b          	sext.w	a5,a5
    800060f0:	fe078ce3          	beqz	a5,800060e8 <system_main+0x28>
    800060f4:	0ff0000f          	fence
    800060f8:	00003517          	auipc	a0,0x3
    800060fc:	31850513          	addi	a0,a0,792 # 80009410 <_ZL6digits+0x58>
    80006100:	00001097          	auipc	ra,0x1
    80006104:	a7c080e7          	jalr	-1412(ra) # 80006b7c <panic>
    80006108:	00001097          	auipc	ra,0x1
    8000610c:	9d0080e7          	jalr	-1584(ra) # 80006ad8 <consoleinit>
    80006110:	00001097          	auipc	ra,0x1
    80006114:	15c080e7          	jalr	348(ra) # 8000726c <printfinit>
    80006118:	00003517          	auipc	a0,0x3
    8000611c:	07050513          	addi	a0,a0,112 # 80009188 <CONSOLE_STATUS+0x178>
    80006120:	00001097          	auipc	ra,0x1
    80006124:	ab8080e7          	jalr	-1352(ra) # 80006bd8 <__printf>
    80006128:	00003517          	auipc	a0,0x3
    8000612c:	2b850513          	addi	a0,a0,696 # 800093e0 <_ZL6digits+0x28>
    80006130:	00001097          	auipc	ra,0x1
    80006134:	aa8080e7          	jalr	-1368(ra) # 80006bd8 <__printf>
    80006138:	00003517          	auipc	a0,0x3
    8000613c:	05050513          	addi	a0,a0,80 # 80009188 <CONSOLE_STATUS+0x178>
    80006140:	00001097          	auipc	ra,0x1
    80006144:	a98080e7          	jalr	-1384(ra) # 80006bd8 <__printf>
    80006148:	00001097          	auipc	ra,0x1
    8000614c:	4b0080e7          	jalr	1200(ra) # 800075f8 <kinit>
    80006150:	00000097          	auipc	ra,0x0
    80006154:	148080e7          	jalr	328(ra) # 80006298 <trapinit>
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	16c080e7          	jalr	364(ra) # 800062c4 <trapinithart>
    80006160:	00000097          	auipc	ra,0x0
    80006164:	5c0080e7          	jalr	1472(ra) # 80006720 <plicinit>
    80006168:	00000097          	auipc	ra,0x0
    8000616c:	5e0080e7          	jalr	1504(ra) # 80006748 <plicinithart>
    80006170:	00000097          	auipc	ra,0x0
    80006174:	078080e7          	jalr	120(ra) # 800061e8 <userinit>
    80006178:	0ff0000f          	fence
    8000617c:	00100793          	li	a5,1
    80006180:	00003517          	auipc	a0,0x3
    80006184:	27850513          	addi	a0,a0,632 # 800093f8 <_ZL6digits+0x40>
    80006188:	00f4a023          	sw	a5,0(s1)
    8000618c:	00001097          	auipc	ra,0x1
    80006190:	a4c080e7          	jalr	-1460(ra) # 80006bd8 <__printf>
    80006194:	0000006f          	j	80006194 <system_main+0xd4>

0000000080006198 <cpuid>:
    80006198:	ff010113          	addi	sp,sp,-16
    8000619c:	00813423          	sd	s0,8(sp)
    800061a0:	01010413          	addi	s0,sp,16
    800061a4:	00020513          	mv	a0,tp
    800061a8:	00813403          	ld	s0,8(sp)
    800061ac:	0005051b          	sext.w	a0,a0
    800061b0:	01010113          	addi	sp,sp,16
    800061b4:	00008067          	ret

00000000800061b8 <mycpu>:
    800061b8:	ff010113          	addi	sp,sp,-16
    800061bc:	00813423          	sd	s0,8(sp)
    800061c0:	01010413          	addi	s0,sp,16
    800061c4:	00020793          	mv	a5,tp
    800061c8:	00813403          	ld	s0,8(sp)
    800061cc:	0007879b          	sext.w	a5,a5
    800061d0:	00779793          	slli	a5,a5,0x7
    800061d4:	00006517          	auipc	a0,0x6
    800061d8:	7fc50513          	addi	a0,a0,2044 # 8000c9d0 <cpus>
    800061dc:	00f50533          	add	a0,a0,a5
    800061e0:	01010113          	addi	sp,sp,16
    800061e4:	00008067          	ret

00000000800061e8 <userinit>:
    800061e8:	ff010113          	addi	sp,sp,-16
    800061ec:	00813423          	sd	s0,8(sp)
    800061f0:	01010413          	addi	s0,sp,16
    800061f4:	00813403          	ld	s0,8(sp)
    800061f8:	01010113          	addi	sp,sp,16
    800061fc:	ffffd317          	auipc	t1,0xffffd
    80006200:	db030067          	jr	-592(t1) # 80002fac <main>

0000000080006204 <either_copyout>:
    80006204:	ff010113          	addi	sp,sp,-16
    80006208:	00813023          	sd	s0,0(sp)
    8000620c:	00113423          	sd	ra,8(sp)
    80006210:	01010413          	addi	s0,sp,16
    80006214:	02051663          	bnez	a0,80006240 <either_copyout+0x3c>
    80006218:	00058513          	mv	a0,a1
    8000621c:	00060593          	mv	a1,a2
    80006220:	0006861b          	sext.w	a2,a3
    80006224:	00002097          	auipc	ra,0x2
    80006228:	c60080e7          	jalr	-928(ra) # 80007e84 <__memmove>
    8000622c:	00813083          	ld	ra,8(sp)
    80006230:	00013403          	ld	s0,0(sp)
    80006234:	00000513          	li	a0,0
    80006238:	01010113          	addi	sp,sp,16
    8000623c:	00008067          	ret
    80006240:	00003517          	auipc	a0,0x3
    80006244:	1f850513          	addi	a0,a0,504 # 80009438 <_ZL6digits+0x80>
    80006248:	00001097          	auipc	ra,0x1
    8000624c:	934080e7          	jalr	-1740(ra) # 80006b7c <panic>

0000000080006250 <either_copyin>:
    80006250:	ff010113          	addi	sp,sp,-16
    80006254:	00813023          	sd	s0,0(sp)
    80006258:	00113423          	sd	ra,8(sp)
    8000625c:	01010413          	addi	s0,sp,16
    80006260:	02059463          	bnez	a1,80006288 <either_copyin+0x38>
    80006264:	00060593          	mv	a1,a2
    80006268:	0006861b          	sext.w	a2,a3
    8000626c:	00002097          	auipc	ra,0x2
    80006270:	c18080e7          	jalr	-1000(ra) # 80007e84 <__memmove>
    80006274:	00813083          	ld	ra,8(sp)
    80006278:	00013403          	ld	s0,0(sp)
    8000627c:	00000513          	li	a0,0
    80006280:	01010113          	addi	sp,sp,16
    80006284:	00008067          	ret
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	1d850513          	addi	a0,a0,472 # 80009460 <_ZL6digits+0xa8>
    80006290:	00001097          	auipc	ra,0x1
    80006294:	8ec080e7          	jalr	-1812(ra) # 80006b7c <panic>

0000000080006298 <trapinit>:
    80006298:	ff010113          	addi	sp,sp,-16
    8000629c:	00813423          	sd	s0,8(sp)
    800062a0:	01010413          	addi	s0,sp,16
    800062a4:	00813403          	ld	s0,8(sp)
    800062a8:	00003597          	auipc	a1,0x3
    800062ac:	1e058593          	addi	a1,a1,480 # 80009488 <_ZL6digits+0xd0>
    800062b0:	00006517          	auipc	a0,0x6
    800062b4:	7a050513          	addi	a0,a0,1952 # 8000ca50 <tickslock>
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00001317          	auipc	t1,0x1
    800062c0:	5cc30067          	jr	1484(t1) # 80007888 <initlock>

00000000800062c4 <trapinithart>:
    800062c4:	ff010113          	addi	sp,sp,-16
    800062c8:	00813423          	sd	s0,8(sp)
    800062cc:	01010413          	addi	s0,sp,16
    800062d0:	00000797          	auipc	a5,0x0
    800062d4:	30078793          	addi	a5,a5,768 # 800065d0 <kernelvec>
    800062d8:	10579073          	csrw	stvec,a5
    800062dc:	00813403          	ld	s0,8(sp)
    800062e0:	01010113          	addi	sp,sp,16
    800062e4:	00008067          	ret

00000000800062e8 <usertrap>:
    800062e8:	ff010113          	addi	sp,sp,-16
    800062ec:	00813423          	sd	s0,8(sp)
    800062f0:	01010413          	addi	s0,sp,16
    800062f4:	00813403          	ld	s0,8(sp)
    800062f8:	01010113          	addi	sp,sp,16
    800062fc:	00008067          	ret

0000000080006300 <usertrapret>:
    80006300:	ff010113          	addi	sp,sp,-16
    80006304:	00813423          	sd	s0,8(sp)
    80006308:	01010413          	addi	s0,sp,16
    8000630c:	00813403          	ld	s0,8(sp)
    80006310:	01010113          	addi	sp,sp,16
    80006314:	00008067          	ret

0000000080006318 <kerneltrap>:
    80006318:	fe010113          	addi	sp,sp,-32
    8000631c:	00813823          	sd	s0,16(sp)
    80006320:	00113c23          	sd	ra,24(sp)
    80006324:	00913423          	sd	s1,8(sp)
    80006328:	02010413          	addi	s0,sp,32
    8000632c:	142025f3          	csrr	a1,scause
    80006330:	100027f3          	csrr	a5,sstatus
    80006334:	0027f793          	andi	a5,a5,2
    80006338:	10079c63          	bnez	a5,80006450 <kerneltrap+0x138>
    8000633c:	142027f3          	csrr	a5,scause
    80006340:	0207ce63          	bltz	a5,8000637c <kerneltrap+0x64>
    80006344:	00003517          	auipc	a0,0x3
    80006348:	18c50513          	addi	a0,a0,396 # 800094d0 <_ZL6digits+0x118>
    8000634c:	00001097          	auipc	ra,0x1
    80006350:	88c080e7          	jalr	-1908(ra) # 80006bd8 <__printf>
    80006354:	141025f3          	csrr	a1,sepc
    80006358:	14302673          	csrr	a2,stval
    8000635c:	00003517          	auipc	a0,0x3
    80006360:	18450513          	addi	a0,a0,388 # 800094e0 <_ZL6digits+0x128>
    80006364:	00001097          	auipc	ra,0x1
    80006368:	874080e7          	jalr	-1932(ra) # 80006bd8 <__printf>
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	18c50513          	addi	a0,a0,396 # 800094f8 <_ZL6digits+0x140>
    80006374:	00001097          	auipc	ra,0x1
    80006378:	808080e7          	jalr	-2040(ra) # 80006b7c <panic>
    8000637c:	0ff7f713          	andi	a4,a5,255
    80006380:	00900693          	li	a3,9
    80006384:	04d70063          	beq	a4,a3,800063c4 <kerneltrap+0xac>
    80006388:	fff00713          	li	a4,-1
    8000638c:	03f71713          	slli	a4,a4,0x3f
    80006390:	00170713          	addi	a4,a4,1
    80006394:	fae798e3          	bne	a5,a4,80006344 <kerneltrap+0x2c>
    80006398:	00000097          	auipc	ra,0x0
    8000639c:	e00080e7          	jalr	-512(ra) # 80006198 <cpuid>
    800063a0:	06050663          	beqz	a0,8000640c <kerneltrap+0xf4>
    800063a4:	144027f3          	csrr	a5,sip
    800063a8:	ffd7f793          	andi	a5,a5,-3
    800063ac:	14479073          	csrw	sip,a5
    800063b0:	01813083          	ld	ra,24(sp)
    800063b4:	01013403          	ld	s0,16(sp)
    800063b8:	00813483          	ld	s1,8(sp)
    800063bc:	02010113          	addi	sp,sp,32
    800063c0:	00008067          	ret
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	3d0080e7          	jalr	976(ra) # 80006794 <plic_claim>
    800063cc:	00a00793          	li	a5,10
    800063d0:	00050493          	mv	s1,a0
    800063d4:	06f50863          	beq	a0,a5,80006444 <kerneltrap+0x12c>
    800063d8:	fc050ce3          	beqz	a0,800063b0 <kerneltrap+0x98>
    800063dc:	00050593          	mv	a1,a0
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	0d050513          	addi	a0,a0,208 # 800094b0 <_ZL6digits+0xf8>
    800063e8:	00000097          	auipc	ra,0x0
    800063ec:	7f0080e7          	jalr	2032(ra) # 80006bd8 <__printf>
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	01813083          	ld	ra,24(sp)
    800063f8:	00048513          	mv	a0,s1
    800063fc:	00813483          	ld	s1,8(sp)
    80006400:	02010113          	addi	sp,sp,32
    80006404:	00000317          	auipc	t1,0x0
    80006408:	3c830067          	jr	968(t1) # 800067cc <plic_complete>
    8000640c:	00006517          	auipc	a0,0x6
    80006410:	64450513          	addi	a0,a0,1604 # 8000ca50 <tickslock>
    80006414:	00001097          	auipc	ra,0x1
    80006418:	498080e7          	jalr	1176(ra) # 800078ac <acquire>
    8000641c:	00005717          	auipc	a4,0x5
    80006420:	48870713          	addi	a4,a4,1160 # 8000b8a4 <ticks>
    80006424:	00072783          	lw	a5,0(a4)
    80006428:	00006517          	auipc	a0,0x6
    8000642c:	62850513          	addi	a0,a0,1576 # 8000ca50 <tickslock>
    80006430:	0017879b          	addiw	a5,a5,1
    80006434:	00f72023          	sw	a5,0(a4)
    80006438:	00001097          	auipc	ra,0x1
    8000643c:	540080e7          	jalr	1344(ra) # 80007978 <release>
    80006440:	f65ff06f          	j	800063a4 <kerneltrap+0x8c>
    80006444:	00001097          	auipc	ra,0x1
    80006448:	09c080e7          	jalr	156(ra) # 800074e0 <uartintr>
    8000644c:	fa5ff06f          	j	800063f0 <kerneltrap+0xd8>
    80006450:	00003517          	auipc	a0,0x3
    80006454:	04050513          	addi	a0,a0,64 # 80009490 <_ZL6digits+0xd8>
    80006458:	00000097          	auipc	ra,0x0
    8000645c:	724080e7          	jalr	1828(ra) # 80006b7c <panic>

0000000080006460 <clockintr>:
    80006460:	fe010113          	addi	sp,sp,-32
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00913423          	sd	s1,8(sp)
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	02010413          	addi	s0,sp,32
    80006474:	00006497          	auipc	s1,0x6
    80006478:	5dc48493          	addi	s1,s1,1500 # 8000ca50 <tickslock>
    8000647c:	00048513          	mv	a0,s1
    80006480:	00001097          	auipc	ra,0x1
    80006484:	42c080e7          	jalr	1068(ra) # 800078ac <acquire>
    80006488:	00005717          	auipc	a4,0x5
    8000648c:	41c70713          	addi	a4,a4,1052 # 8000b8a4 <ticks>
    80006490:	00072783          	lw	a5,0(a4)
    80006494:	01013403          	ld	s0,16(sp)
    80006498:	01813083          	ld	ra,24(sp)
    8000649c:	00048513          	mv	a0,s1
    800064a0:	0017879b          	addiw	a5,a5,1
    800064a4:	00813483          	ld	s1,8(sp)
    800064a8:	00f72023          	sw	a5,0(a4)
    800064ac:	02010113          	addi	sp,sp,32
    800064b0:	00001317          	auipc	t1,0x1
    800064b4:	4c830067          	jr	1224(t1) # 80007978 <release>

00000000800064b8 <devintr>:
    800064b8:	142027f3          	csrr	a5,scause
    800064bc:	00000513          	li	a0,0
    800064c0:	0007c463          	bltz	a5,800064c8 <devintr+0x10>
    800064c4:	00008067          	ret
    800064c8:	fe010113          	addi	sp,sp,-32
    800064cc:	00813823          	sd	s0,16(sp)
    800064d0:	00113c23          	sd	ra,24(sp)
    800064d4:	00913423          	sd	s1,8(sp)
    800064d8:	02010413          	addi	s0,sp,32
    800064dc:	0ff7f713          	andi	a4,a5,255
    800064e0:	00900693          	li	a3,9
    800064e4:	04d70c63          	beq	a4,a3,8000653c <devintr+0x84>
    800064e8:	fff00713          	li	a4,-1
    800064ec:	03f71713          	slli	a4,a4,0x3f
    800064f0:	00170713          	addi	a4,a4,1
    800064f4:	00e78c63          	beq	a5,a4,8000650c <devintr+0x54>
    800064f8:	01813083          	ld	ra,24(sp)
    800064fc:	01013403          	ld	s0,16(sp)
    80006500:	00813483          	ld	s1,8(sp)
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00008067          	ret
    8000650c:	00000097          	auipc	ra,0x0
    80006510:	c8c080e7          	jalr	-884(ra) # 80006198 <cpuid>
    80006514:	06050663          	beqz	a0,80006580 <devintr+0xc8>
    80006518:	144027f3          	csrr	a5,sip
    8000651c:	ffd7f793          	andi	a5,a5,-3
    80006520:	14479073          	csrw	sip,a5
    80006524:	01813083          	ld	ra,24(sp)
    80006528:	01013403          	ld	s0,16(sp)
    8000652c:	00813483          	ld	s1,8(sp)
    80006530:	00200513          	li	a0,2
    80006534:	02010113          	addi	sp,sp,32
    80006538:	00008067          	ret
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	258080e7          	jalr	600(ra) # 80006794 <plic_claim>
    80006544:	00a00793          	li	a5,10
    80006548:	00050493          	mv	s1,a0
    8000654c:	06f50663          	beq	a0,a5,800065b8 <devintr+0x100>
    80006550:	00100513          	li	a0,1
    80006554:	fa0482e3          	beqz	s1,800064f8 <devintr+0x40>
    80006558:	00048593          	mv	a1,s1
    8000655c:	00003517          	auipc	a0,0x3
    80006560:	f5450513          	addi	a0,a0,-172 # 800094b0 <_ZL6digits+0xf8>
    80006564:	00000097          	auipc	ra,0x0
    80006568:	674080e7          	jalr	1652(ra) # 80006bd8 <__printf>
    8000656c:	00048513          	mv	a0,s1
    80006570:	00000097          	auipc	ra,0x0
    80006574:	25c080e7          	jalr	604(ra) # 800067cc <plic_complete>
    80006578:	00100513          	li	a0,1
    8000657c:	f7dff06f          	j	800064f8 <devintr+0x40>
    80006580:	00006517          	auipc	a0,0x6
    80006584:	4d050513          	addi	a0,a0,1232 # 8000ca50 <tickslock>
    80006588:	00001097          	auipc	ra,0x1
    8000658c:	324080e7          	jalr	804(ra) # 800078ac <acquire>
    80006590:	00005717          	auipc	a4,0x5
    80006594:	31470713          	addi	a4,a4,788 # 8000b8a4 <ticks>
    80006598:	00072783          	lw	a5,0(a4)
    8000659c:	00006517          	auipc	a0,0x6
    800065a0:	4b450513          	addi	a0,a0,1204 # 8000ca50 <tickslock>
    800065a4:	0017879b          	addiw	a5,a5,1
    800065a8:	00f72023          	sw	a5,0(a4)
    800065ac:	00001097          	auipc	ra,0x1
    800065b0:	3cc080e7          	jalr	972(ra) # 80007978 <release>
    800065b4:	f65ff06f          	j	80006518 <devintr+0x60>
    800065b8:	00001097          	auipc	ra,0x1
    800065bc:	f28080e7          	jalr	-216(ra) # 800074e0 <uartintr>
    800065c0:	fadff06f          	j	8000656c <devintr+0xb4>
	...

00000000800065d0 <kernelvec>:
    800065d0:	f0010113          	addi	sp,sp,-256
    800065d4:	00113023          	sd	ra,0(sp)
    800065d8:	00213423          	sd	sp,8(sp)
    800065dc:	00313823          	sd	gp,16(sp)
    800065e0:	00413c23          	sd	tp,24(sp)
    800065e4:	02513023          	sd	t0,32(sp)
    800065e8:	02613423          	sd	t1,40(sp)
    800065ec:	02713823          	sd	t2,48(sp)
    800065f0:	02813c23          	sd	s0,56(sp)
    800065f4:	04913023          	sd	s1,64(sp)
    800065f8:	04a13423          	sd	a0,72(sp)
    800065fc:	04b13823          	sd	a1,80(sp)
    80006600:	04c13c23          	sd	a2,88(sp)
    80006604:	06d13023          	sd	a3,96(sp)
    80006608:	06e13423          	sd	a4,104(sp)
    8000660c:	06f13823          	sd	a5,112(sp)
    80006610:	07013c23          	sd	a6,120(sp)
    80006614:	09113023          	sd	a7,128(sp)
    80006618:	09213423          	sd	s2,136(sp)
    8000661c:	09313823          	sd	s3,144(sp)
    80006620:	09413c23          	sd	s4,152(sp)
    80006624:	0b513023          	sd	s5,160(sp)
    80006628:	0b613423          	sd	s6,168(sp)
    8000662c:	0b713823          	sd	s7,176(sp)
    80006630:	0b813c23          	sd	s8,184(sp)
    80006634:	0d913023          	sd	s9,192(sp)
    80006638:	0da13423          	sd	s10,200(sp)
    8000663c:	0db13823          	sd	s11,208(sp)
    80006640:	0dc13c23          	sd	t3,216(sp)
    80006644:	0fd13023          	sd	t4,224(sp)
    80006648:	0fe13423          	sd	t5,232(sp)
    8000664c:	0ff13823          	sd	t6,240(sp)
    80006650:	cc9ff0ef          	jal	ra,80006318 <kerneltrap>
    80006654:	00013083          	ld	ra,0(sp)
    80006658:	00813103          	ld	sp,8(sp)
    8000665c:	01013183          	ld	gp,16(sp)
    80006660:	02013283          	ld	t0,32(sp)
    80006664:	02813303          	ld	t1,40(sp)
    80006668:	03013383          	ld	t2,48(sp)
    8000666c:	03813403          	ld	s0,56(sp)
    80006670:	04013483          	ld	s1,64(sp)
    80006674:	04813503          	ld	a0,72(sp)
    80006678:	05013583          	ld	a1,80(sp)
    8000667c:	05813603          	ld	a2,88(sp)
    80006680:	06013683          	ld	a3,96(sp)
    80006684:	06813703          	ld	a4,104(sp)
    80006688:	07013783          	ld	a5,112(sp)
    8000668c:	07813803          	ld	a6,120(sp)
    80006690:	08013883          	ld	a7,128(sp)
    80006694:	08813903          	ld	s2,136(sp)
    80006698:	09013983          	ld	s3,144(sp)
    8000669c:	09813a03          	ld	s4,152(sp)
    800066a0:	0a013a83          	ld	s5,160(sp)
    800066a4:	0a813b03          	ld	s6,168(sp)
    800066a8:	0b013b83          	ld	s7,176(sp)
    800066ac:	0b813c03          	ld	s8,184(sp)
    800066b0:	0c013c83          	ld	s9,192(sp)
    800066b4:	0c813d03          	ld	s10,200(sp)
    800066b8:	0d013d83          	ld	s11,208(sp)
    800066bc:	0d813e03          	ld	t3,216(sp)
    800066c0:	0e013e83          	ld	t4,224(sp)
    800066c4:	0e813f03          	ld	t5,232(sp)
    800066c8:	0f013f83          	ld	t6,240(sp)
    800066cc:	10010113          	addi	sp,sp,256
    800066d0:	10200073          	sret
    800066d4:	00000013          	nop
    800066d8:	00000013          	nop
    800066dc:	00000013          	nop

00000000800066e0 <timervec>:
    800066e0:	34051573          	csrrw	a0,mscratch,a0
    800066e4:	00b53023          	sd	a1,0(a0)
    800066e8:	00c53423          	sd	a2,8(a0)
    800066ec:	00d53823          	sd	a3,16(a0)
    800066f0:	01853583          	ld	a1,24(a0)
    800066f4:	02053603          	ld	a2,32(a0)
    800066f8:	0005b683          	ld	a3,0(a1)
    800066fc:	00c686b3          	add	a3,a3,a2
    80006700:	00d5b023          	sd	a3,0(a1)
    80006704:	00200593          	li	a1,2
    80006708:	14459073          	csrw	sip,a1
    8000670c:	01053683          	ld	a3,16(a0)
    80006710:	00853603          	ld	a2,8(a0)
    80006714:	00053583          	ld	a1,0(a0)
    80006718:	34051573          	csrrw	a0,mscratch,a0
    8000671c:	30200073          	mret

0000000080006720 <plicinit>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813423          	sd	s0,8(sp)
    80006728:	01010413          	addi	s0,sp,16
    8000672c:	00813403          	ld	s0,8(sp)
    80006730:	0c0007b7          	lui	a5,0xc000
    80006734:	00100713          	li	a4,1
    80006738:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000673c:	00e7a223          	sw	a4,4(a5)
    80006740:	01010113          	addi	sp,sp,16
    80006744:	00008067          	ret

0000000080006748 <plicinithart>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813023          	sd	s0,0(sp)
    80006750:	00113423          	sd	ra,8(sp)
    80006754:	01010413          	addi	s0,sp,16
    80006758:	00000097          	auipc	ra,0x0
    8000675c:	a40080e7          	jalr	-1472(ra) # 80006198 <cpuid>
    80006760:	0085171b          	slliw	a4,a0,0x8
    80006764:	0c0027b7          	lui	a5,0xc002
    80006768:	00e787b3          	add	a5,a5,a4
    8000676c:	40200713          	li	a4,1026
    80006770:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006774:	00813083          	ld	ra,8(sp)
    80006778:	00013403          	ld	s0,0(sp)
    8000677c:	00d5151b          	slliw	a0,a0,0xd
    80006780:	0c2017b7          	lui	a5,0xc201
    80006784:	00a78533          	add	a0,a5,a0
    80006788:	00052023          	sw	zero,0(a0)
    8000678c:	01010113          	addi	sp,sp,16
    80006790:	00008067          	ret

0000000080006794 <plic_claim>:
    80006794:	ff010113          	addi	sp,sp,-16
    80006798:	00813023          	sd	s0,0(sp)
    8000679c:	00113423          	sd	ra,8(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	9f4080e7          	jalr	-1548(ra) # 80006198 <cpuid>
    800067ac:	00813083          	ld	ra,8(sp)
    800067b0:	00013403          	ld	s0,0(sp)
    800067b4:	00d5151b          	slliw	a0,a0,0xd
    800067b8:	0c2017b7          	lui	a5,0xc201
    800067bc:	00a78533          	add	a0,a5,a0
    800067c0:	00452503          	lw	a0,4(a0)
    800067c4:	01010113          	addi	sp,sp,16
    800067c8:	00008067          	ret

00000000800067cc <plic_complete>:
    800067cc:	fe010113          	addi	sp,sp,-32
    800067d0:	00813823          	sd	s0,16(sp)
    800067d4:	00913423          	sd	s1,8(sp)
    800067d8:	00113c23          	sd	ra,24(sp)
    800067dc:	02010413          	addi	s0,sp,32
    800067e0:	00050493          	mv	s1,a0
    800067e4:	00000097          	auipc	ra,0x0
    800067e8:	9b4080e7          	jalr	-1612(ra) # 80006198 <cpuid>
    800067ec:	01813083          	ld	ra,24(sp)
    800067f0:	01013403          	ld	s0,16(sp)
    800067f4:	00d5179b          	slliw	a5,a0,0xd
    800067f8:	0c201737          	lui	a4,0xc201
    800067fc:	00f707b3          	add	a5,a4,a5
    80006800:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006804:	00813483          	ld	s1,8(sp)
    80006808:	02010113          	addi	sp,sp,32
    8000680c:	00008067          	ret

0000000080006810 <consolewrite>:
    80006810:	fb010113          	addi	sp,sp,-80
    80006814:	04813023          	sd	s0,64(sp)
    80006818:	04113423          	sd	ra,72(sp)
    8000681c:	02913c23          	sd	s1,56(sp)
    80006820:	03213823          	sd	s2,48(sp)
    80006824:	03313423          	sd	s3,40(sp)
    80006828:	03413023          	sd	s4,32(sp)
    8000682c:	01513c23          	sd	s5,24(sp)
    80006830:	05010413          	addi	s0,sp,80
    80006834:	06c05c63          	blez	a2,800068ac <consolewrite+0x9c>
    80006838:	00060993          	mv	s3,a2
    8000683c:	00050a13          	mv	s4,a0
    80006840:	00058493          	mv	s1,a1
    80006844:	00000913          	li	s2,0
    80006848:	fff00a93          	li	s5,-1
    8000684c:	01c0006f          	j	80006868 <consolewrite+0x58>
    80006850:	fbf44503          	lbu	a0,-65(s0)
    80006854:	0019091b          	addiw	s2,s2,1
    80006858:	00148493          	addi	s1,s1,1
    8000685c:	00001097          	auipc	ra,0x1
    80006860:	a9c080e7          	jalr	-1380(ra) # 800072f8 <uartputc>
    80006864:	03298063          	beq	s3,s2,80006884 <consolewrite+0x74>
    80006868:	00048613          	mv	a2,s1
    8000686c:	00100693          	li	a3,1
    80006870:	000a0593          	mv	a1,s4
    80006874:	fbf40513          	addi	a0,s0,-65
    80006878:	00000097          	auipc	ra,0x0
    8000687c:	9d8080e7          	jalr	-1576(ra) # 80006250 <either_copyin>
    80006880:	fd5518e3          	bne	a0,s5,80006850 <consolewrite+0x40>
    80006884:	04813083          	ld	ra,72(sp)
    80006888:	04013403          	ld	s0,64(sp)
    8000688c:	03813483          	ld	s1,56(sp)
    80006890:	02813983          	ld	s3,40(sp)
    80006894:	02013a03          	ld	s4,32(sp)
    80006898:	01813a83          	ld	s5,24(sp)
    8000689c:	00090513          	mv	a0,s2
    800068a0:	03013903          	ld	s2,48(sp)
    800068a4:	05010113          	addi	sp,sp,80
    800068a8:	00008067          	ret
    800068ac:	00000913          	li	s2,0
    800068b0:	fd5ff06f          	j	80006884 <consolewrite+0x74>

00000000800068b4 <consoleread>:
    800068b4:	f9010113          	addi	sp,sp,-112
    800068b8:	06813023          	sd	s0,96(sp)
    800068bc:	04913c23          	sd	s1,88(sp)
    800068c0:	05213823          	sd	s2,80(sp)
    800068c4:	05313423          	sd	s3,72(sp)
    800068c8:	05413023          	sd	s4,64(sp)
    800068cc:	03513c23          	sd	s5,56(sp)
    800068d0:	03613823          	sd	s6,48(sp)
    800068d4:	03713423          	sd	s7,40(sp)
    800068d8:	03813023          	sd	s8,32(sp)
    800068dc:	06113423          	sd	ra,104(sp)
    800068e0:	01913c23          	sd	s9,24(sp)
    800068e4:	07010413          	addi	s0,sp,112
    800068e8:	00060b93          	mv	s7,a2
    800068ec:	00050913          	mv	s2,a0
    800068f0:	00058c13          	mv	s8,a1
    800068f4:	00060b1b          	sext.w	s6,a2
    800068f8:	00006497          	auipc	s1,0x6
    800068fc:	18048493          	addi	s1,s1,384 # 8000ca78 <cons>
    80006900:	00400993          	li	s3,4
    80006904:	fff00a13          	li	s4,-1
    80006908:	00a00a93          	li	s5,10
    8000690c:	05705e63          	blez	s7,80006968 <consoleread+0xb4>
    80006910:	09c4a703          	lw	a4,156(s1)
    80006914:	0984a783          	lw	a5,152(s1)
    80006918:	0007071b          	sext.w	a4,a4
    8000691c:	08e78463          	beq	a5,a4,800069a4 <consoleread+0xf0>
    80006920:	07f7f713          	andi	a4,a5,127
    80006924:	00e48733          	add	a4,s1,a4
    80006928:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000692c:	0017869b          	addiw	a3,a5,1
    80006930:	08d4ac23          	sw	a3,152(s1)
    80006934:	00070c9b          	sext.w	s9,a4
    80006938:	0b370663          	beq	a4,s3,800069e4 <consoleread+0x130>
    8000693c:	00100693          	li	a3,1
    80006940:	f9f40613          	addi	a2,s0,-97
    80006944:	000c0593          	mv	a1,s8
    80006948:	00090513          	mv	a0,s2
    8000694c:	f8e40fa3          	sb	a4,-97(s0)
    80006950:	00000097          	auipc	ra,0x0
    80006954:	8b4080e7          	jalr	-1868(ra) # 80006204 <either_copyout>
    80006958:	01450863          	beq	a0,s4,80006968 <consoleread+0xb4>
    8000695c:	001c0c13          	addi	s8,s8,1
    80006960:	fffb8b9b          	addiw	s7,s7,-1
    80006964:	fb5c94e3          	bne	s9,s5,8000690c <consoleread+0x58>
    80006968:	000b851b          	sext.w	a0,s7
    8000696c:	06813083          	ld	ra,104(sp)
    80006970:	06013403          	ld	s0,96(sp)
    80006974:	05813483          	ld	s1,88(sp)
    80006978:	05013903          	ld	s2,80(sp)
    8000697c:	04813983          	ld	s3,72(sp)
    80006980:	04013a03          	ld	s4,64(sp)
    80006984:	03813a83          	ld	s5,56(sp)
    80006988:	02813b83          	ld	s7,40(sp)
    8000698c:	02013c03          	ld	s8,32(sp)
    80006990:	01813c83          	ld	s9,24(sp)
    80006994:	40ab053b          	subw	a0,s6,a0
    80006998:	03013b03          	ld	s6,48(sp)
    8000699c:	07010113          	addi	sp,sp,112
    800069a0:	00008067          	ret
    800069a4:	00001097          	auipc	ra,0x1
    800069a8:	1d8080e7          	jalr	472(ra) # 80007b7c <push_on>
    800069ac:	0984a703          	lw	a4,152(s1)
    800069b0:	09c4a783          	lw	a5,156(s1)
    800069b4:	0007879b          	sext.w	a5,a5
    800069b8:	fef70ce3          	beq	a4,a5,800069b0 <consoleread+0xfc>
    800069bc:	00001097          	auipc	ra,0x1
    800069c0:	234080e7          	jalr	564(ra) # 80007bf0 <pop_on>
    800069c4:	0984a783          	lw	a5,152(s1)
    800069c8:	07f7f713          	andi	a4,a5,127
    800069cc:	00e48733          	add	a4,s1,a4
    800069d0:	01874703          	lbu	a4,24(a4)
    800069d4:	0017869b          	addiw	a3,a5,1
    800069d8:	08d4ac23          	sw	a3,152(s1)
    800069dc:	00070c9b          	sext.w	s9,a4
    800069e0:	f5371ee3          	bne	a4,s3,8000693c <consoleread+0x88>
    800069e4:	000b851b          	sext.w	a0,s7
    800069e8:	f96bf2e3          	bgeu	s7,s6,8000696c <consoleread+0xb8>
    800069ec:	08f4ac23          	sw	a5,152(s1)
    800069f0:	f7dff06f          	j	8000696c <consoleread+0xb8>

00000000800069f4 <consputc>:
    800069f4:	10000793          	li	a5,256
    800069f8:	00f50663          	beq	a0,a5,80006a04 <consputc+0x10>
    800069fc:	00001317          	auipc	t1,0x1
    80006a00:	9f430067          	jr	-1548(t1) # 800073f0 <uartputc_sync>
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00113423          	sd	ra,8(sp)
    80006a0c:	00813023          	sd	s0,0(sp)
    80006a10:	01010413          	addi	s0,sp,16
    80006a14:	00800513          	li	a0,8
    80006a18:	00001097          	auipc	ra,0x1
    80006a1c:	9d8080e7          	jalr	-1576(ra) # 800073f0 <uartputc_sync>
    80006a20:	02000513          	li	a0,32
    80006a24:	00001097          	auipc	ra,0x1
    80006a28:	9cc080e7          	jalr	-1588(ra) # 800073f0 <uartputc_sync>
    80006a2c:	00013403          	ld	s0,0(sp)
    80006a30:	00813083          	ld	ra,8(sp)
    80006a34:	00800513          	li	a0,8
    80006a38:	01010113          	addi	sp,sp,16
    80006a3c:	00001317          	auipc	t1,0x1
    80006a40:	9b430067          	jr	-1612(t1) # 800073f0 <uartputc_sync>

0000000080006a44 <consoleintr>:
    80006a44:	fe010113          	addi	sp,sp,-32
    80006a48:	00813823          	sd	s0,16(sp)
    80006a4c:	00913423          	sd	s1,8(sp)
    80006a50:	01213023          	sd	s2,0(sp)
    80006a54:	00113c23          	sd	ra,24(sp)
    80006a58:	02010413          	addi	s0,sp,32
    80006a5c:	00006917          	auipc	s2,0x6
    80006a60:	01c90913          	addi	s2,s2,28 # 8000ca78 <cons>
    80006a64:	00050493          	mv	s1,a0
    80006a68:	00090513          	mv	a0,s2
    80006a6c:	00001097          	auipc	ra,0x1
    80006a70:	e40080e7          	jalr	-448(ra) # 800078ac <acquire>
    80006a74:	02048c63          	beqz	s1,80006aac <consoleintr+0x68>
    80006a78:	0a092783          	lw	a5,160(s2)
    80006a7c:	09892703          	lw	a4,152(s2)
    80006a80:	07f00693          	li	a3,127
    80006a84:	40e7873b          	subw	a4,a5,a4
    80006a88:	02e6e263          	bltu	a3,a4,80006aac <consoleintr+0x68>
    80006a8c:	00d00713          	li	a4,13
    80006a90:	04e48063          	beq	s1,a4,80006ad0 <consoleintr+0x8c>
    80006a94:	07f7f713          	andi	a4,a5,127
    80006a98:	00e90733          	add	a4,s2,a4
    80006a9c:	0017879b          	addiw	a5,a5,1
    80006aa0:	0af92023          	sw	a5,160(s2)
    80006aa4:	00970c23          	sb	s1,24(a4)
    80006aa8:	08f92e23          	sw	a5,156(s2)
    80006aac:	01013403          	ld	s0,16(sp)
    80006ab0:	01813083          	ld	ra,24(sp)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00013903          	ld	s2,0(sp)
    80006abc:	00006517          	auipc	a0,0x6
    80006ac0:	fbc50513          	addi	a0,a0,-68 # 8000ca78 <cons>
    80006ac4:	02010113          	addi	sp,sp,32
    80006ac8:	00001317          	auipc	t1,0x1
    80006acc:	eb030067          	jr	-336(t1) # 80007978 <release>
    80006ad0:	00a00493          	li	s1,10
    80006ad4:	fc1ff06f          	j	80006a94 <consoleintr+0x50>

0000000080006ad8 <consoleinit>:
    80006ad8:	fe010113          	addi	sp,sp,-32
    80006adc:	00113c23          	sd	ra,24(sp)
    80006ae0:	00813823          	sd	s0,16(sp)
    80006ae4:	00913423          	sd	s1,8(sp)
    80006ae8:	02010413          	addi	s0,sp,32
    80006aec:	00006497          	auipc	s1,0x6
    80006af0:	f8c48493          	addi	s1,s1,-116 # 8000ca78 <cons>
    80006af4:	00048513          	mv	a0,s1
    80006af8:	00003597          	auipc	a1,0x3
    80006afc:	a1058593          	addi	a1,a1,-1520 # 80009508 <_ZL6digits+0x150>
    80006b00:	00001097          	auipc	ra,0x1
    80006b04:	d88080e7          	jalr	-632(ra) # 80007888 <initlock>
    80006b08:	00000097          	auipc	ra,0x0
    80006b0c:	7ac080e7          	jalr	1964(ra) # 800072b4 <uartinit>
    80006b10:	01813083          	ld	ra,24(sp)
    80006b14:	01013403          	ld	s0,16(sp)
    80006b18:	00000797          	auipc	a5,0x0
    80006b1c:	d9c78793          	addi	a5,a5,-612 # 800068b4 <consoleread>
    80006b20:	0af4bc23          	sd	a5,184(s1)
    80006b24:	00000797          	auipc	a5,0x0
    80006b28:	cec78793          	addi	a5,a5,-788 # 80006810 <consolewrite>
    80006b2c:	0cf4b023          	sd	a5,192(s1)
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00008067          	ret

0000000080006b3c <console_read>:
    80006b3c:	ff010113          	addi	sp,sp,-16
    80006b40:	00813423          	sd	s0,8(sp)
    80006b44:	01010413          	addi	s0,sp,16
    80006b48:	00813403          	ld	s0,8(sp)
    80006b4c:	00006317          	auipc	t1,0x6
    80006b50:	fe433303          	ld	t1,-28(t1) # 8000cb30 <devsw+0x10>
    80006b54:	01010113          	addi	sp,sp,16
    80006b58:	00030067          	jr	t1

0000000080006b5c <console_write>:
    80006b5c:	ff010113          	addi	sp,sp,-16
    80006b60:	00813423          	sd	s0,8(sp)
    80006b64:	01010413          	addi	s0,sp,16
    80006b68:	00813403          	ld	s0,8(sp)
    80006b6c:	00006317          	auipc	t1,0x6
    80006b70:	fcc33303          	ld	t1,-52(t1) # 8000cb38 <devsw+0x18>
    80006b74:	01010113          	addi	sp,sp,16
    80006b78:	00030067          	jr	t1

0000000080006b7c <panic>:
    80006b7c:	fe010113          	addi	sp,sp,-32
    80006b80:	00113c23          	sd	ra,24(sp)
    80006b84:	00813823          	sd	s0,16(sp)
    80006b88:	00913423          	sd	s1,8(sp)
    80006b8c:	02010413          	addi	s0,sp,32
    80006b90:	00050493          	mv	s1,a0
    80006b94:	00003517          	auipc	a0,0x3
    80006b98:	97c50513          	addi	a0,a0,-1668 # 80009510 <_ZL6digits+0x158>
    80006b9c:	00006797          	auipc	a5,0x6
    80006ba0:	0207ae23          	sw	zero,60(a5) # 8000cbd8 <pr+0x18>
    80006ba4:	00000097          	auipc	ra,0x0
    80006ba8:	034080e7          	jalr	52(ra) # 80006bd8 <__printf>
    80006bac:	00048513          	mv	a0,s1
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	028080e7          	jalr	40(ra) # 80006bd8 <__printf>
    80006bb8:	00002517          	auipc	a0,0x2
    80006bbc:	5d050513          	addi	a0,a0,1488 # 80009188 <CONSOLE_STATUS+0x178>
    80006bc0:	00000097          	auipc	ra,0x0
    80006bc4:	018080e7          	jalr	24(ra) # 80006bd8 <__printf>
    80006bc8:	00100793          	li	a5,1
    80006bcc:	00005717          	auipc	a4,0x5
    80006bd0:	ccf72e23          	sw	a5,-804(a4) # 8000b8a8 <panicked>
    80006bd4:	0000006f          	j	80006bd4 <panic+0x58>

0000000080006bd8 <__printf>:
    80006bd8:	f3010113          	addi	sp,sp,-208
    80006bdc:	08813023          	sd	s0,128(sp)
    80006be0:	07313423          	sd	s3,104(sp)
    80006be4:	09010413          	addi	s0,sp,144
    80006be8:	05813023          	sd	s8,64(sp)
    80006bec:	08113423          	sd	ra,136(sp)
    80006bf0:	06913c23          	sd	s1,120(sp)
    80006bf4:	07213823          	sd	s2,112(sp)
    80006bf8:	07413023          	sd	s4,96(sp)
    80006bfc:	05513c23          	sd	s5,88(sp)
    80006c00:	05613823          	sd	s6,80(sp)
    80006c04:	05713423          	sd	s7,72(sp)
    80006c08:	03913c23          	sd	s9,56(sp)
    80006c0c:	03a13823          	sd	s10,48(sp)
    80006c10:	03b13423          	sd	s11,40(sp)
    80006c14:	00006317          	auipc	t1,0x6
    80006c18:	fac30313          	addi	t1,t1,-84 # 8000cbc0 <pr>
    80006c1c:	01832c03          	lw	s8,24(t1)
    80006c20:	00b43423          	sd	a1,8(s0)
    80006c24:	00c43823          	sd	a2,16(s0)
    80006c28:	00d43c23          	sd	a3,24(s0)
    80006c2c:	02e43023          	sd	a4,32(s0)
    80006c30:	02f43423          	sd	a5,40(s0)
    80006c34:	03043823          	sd	a6,48(s0)
    80006c38:	03143c23          	sd	a7,56(s0)
    80006c3c:	00050993          	mv	s3,a0
    80006c40:	4a0c1663          	bnez	s8,800070ec <__printf+0x514>
    80006c44:	60098c63          	beqz	s3,8000725c <__printf+0x684>
    80006c48:	0009c503          	lbu	a0,0(s3)
    80006c4c:	00840793          	addi	a5,s0,8
    80006c50:	f6f43c23          	sd	a5,-136(s0)
    80006c54:	00000493          	li	s1,0
    80006c58:	22050063          	beqz	a0,80006e78 <__printf+0x2a0>
    80006c5c:	00002a37          	lui	s4,0x2
    80006c60:	00018ab7          	lui	s5,0x18
    80006c64:	000f4b37          	lui	s6,0xf4
    80006c68:	00989bb7          	lui	s7,0x989
    80006c6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006c70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006c74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006c78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006c7c:	00148c9b          	addiw	s9,s1,1
    80006c80:	02500793          	li	a5,37
    80006c84:	01998933          	add	s2,s3,s9
    80006c88:	38f51263          	bne	a0,a5,8000700c <__printf+0x434>
    80006c8c:	00094783          	lbu	a5,0(s2)
    80006c90:	00078c9b          	sext.w	s9,a5
    80006c94:	1e078263          	beqz	a5,80006e78 <__printf+0x2a0>
    80006c98:	0024849b          	addiw	s1,s1,2
    80006c9c:	07000713          	li	a4,112
    80006ca0:	00998933          	add	s2,s3,s1
    80006ca4:	38e78a63          	beq	a5,a4,80007038 <__printf+0x460>
    80006ca8:	20f76863          	bltu	a4,a5,80006eb8 <__printf+0x2e0>
    80006cac:	42a78863          	beq	a5,a0,800070dc <__printf+0x504>
    80006cb0:	06400713          	li	a4,100
    80006cb4:	40e79663          	bne	a5,a4,800070c0 <__printf+0x4e8>
    80006cb8:	f7843783          	ld	a5,-136(s0)
    80006cbc:	0007a603          	lw	a2,0(a5)
    80006cc0:	00878793          	addi	a5,a5,8
    80006cc4:	f6f43c23          	sd	a5,-136(s0)
    80006cc8:	42064a63          	bltz	a2,800070fc <__printf+0x524>
    80006ccc:	00a00713          	li	a4,10
    80006cd0:	02e677bb          	remuw	a5,a2,a4
    80006cd4:	00003d97          	auipc	s11,0x3
    80006cd8:	864d8d93          	addi	s11,s11,-1948 # 80009538 <digits>
    80006cdc:	00900593          	li	a1,9
    80006ce0:	0006051b          	sext.w	a0,a2
    80006ce4:	00000c93          	li	s9,0
    80006ce8:	02079793          	slli	a5,a5,0x20
    80006cec:	0207d793          	srli	a5,a5,0x20
    80006cf0:	00fd87b3          	add	a5,s11,a5
    80006cf4:	0007c783          	lbu	a5,0(a5)
    80006cf8:	02e656bb          	divuw	a3,a2,a4
    80006cfc:	f8f40023          	sb	a5,-128(s0)
    80006d00:	14c5d863          	bge	a1,a2,80006e50 <__printf+0x278>
    80006d04:	06300593          	li	a1,99
    80006d08:	00100c93          	li	s9,1
    80006d0c:	02e6f7bb          	remuw	a5,a3,a4
    80006d10:	02079793          	slli	a5,a5,0x20
    80006d14:	0207d793          	srli	a5,a5,0x20
    80006d18:	00fd87b3          	add	a5,s11,a5
    80006d1c:	0007c783          	lbu	a5,0(a5)
    80006d20:	02e6d73b          	divuw	a4,a3,a4
    80006d24:	f8f400a3          	sb	a5,-127(s0)
    80006d28:	12a5f463          	bgeu	a1,a0,80006e50 <__printf+0x278>
    80006d2c:	00a00693          	li	a3,10
    80006d30:	00900593          	li	a1,9
    80006d34:	02d777bb          	remuw	a5,a4,a3
    80006d38:	02079793          	slli	a5,a5,0x20
    80006d3c:	0207d793          	srli	a5,a5,0x20
    80006d40:	00fd87b3          	add	a5,s11,a5
    80006d44:	0007c503          	lbu	a0,0(a5)
    80006d48:	02d757bb          	divuw	a5,a4,a3
    80006d4c:	f8a40123          	sb	a0,-126(s0)
    80006d50:	48e5f263          	bgeu	a1,a4,800071d4 <__printf+0x5fc>
    80006d54:	06300513          	li	a0,99
    80006d58:	02d7f5bb          	remuw	a1,a5,a3
    80006d5c:	02059593          	slli	a1,a1,0x20
    80006d60:	0205d593          	srli	a1,a1,0x20
    80006d64:	00bd85b3          	add	a1,s11,a1
    80006d68:	0005c583          	lbu	a1,0(a1)
    80006d6c:	02d7d7bb          	divuw	a5,a5,a3
    80006d70:	f8b401a3          	sb	a1,-125(s0)
    80006d74:	48e57263          	bgeu	a0,a4,800071f8 <__printf+0x620>
    80006d78:	3e700513          	li	a0,999
    80006d7c:	02d7f5bb          	remuw	a1,a5,a3
    80006d80:	02059593          	slli	a1,a1,0x20
    80006d84:	0205d593          	srli	a1,a1,0x20
    80006d88:	00bd85b3          	add	a1,s11,a1
    80006d8c:	0005c583          	lbu	a1,0(a1)
    80006d90:	02d7d7bb          	divuw	a5,a5,a3
    80006d94:	f8b40223          	sb	a1,-124(s0)
    80006d98:	46e57663          	bgeu	a0,a4,80007204 <__printf+0x62c>
    80006d9c:	02d7f5bb          	remuw	a1,a5,a3
    80006da0:	02059593          	slli	a1,a1,0x20
    80006da4:	0205d593          	srli	a1,a1,0x20
    80006da8:	00bd85b3          	add	a1,s11,a1
    80006dac:	0005c583          	lbu	a1,0(a1)
    80006db0:	02d7d7bb          	divuw	a5,a5,a3
    80006db4:	f8b402a3          	sb	a1,-123(s0)
    80006db8:	46ea7863          	bgeu	s4,a4,80007228 <__printf+0x650>
    80006dbc:	02d7f5bb          	remuw	a1,a5,a3
    80006dc0:	02059593          	slli	a1,a1,0x20
    80006dc4:	0205d593          	srli	a1,a1,0x20
    80006dc8:	00bd85b3          	add	a1,s11,a1
    80006dcc:	0005c583          	lbu	a1,0(a1)
    80006dd0:	02d7d7bb          	divuw	a5,a5,a3
    80006dd4:	f8b40323          	sb	a1,-122(s0)
    80006dd8:	3eeaf863          	bgeu	s5,a4,800071c8 <__printf+0x5f0>
    80006ddc:	02d7f5bb          	remuw	a1,a5,a3
    80006de0:	02059593          	slli	a1,a1,0x20
    80006de4:	0205d593          	srli	a1,a1,0x20
    80006de8:	00bd85b3          	add	a1,s11,a1
    80006dec:	0005c583          	lbu	a1,0(a1)
    80006df0:	02d7d7bb          	divuw	a5,a5,a3
    80006df4:	f8b403a3          	sb	a1,-121(s0)
    80006df8:	42eb7e63          	bgeu	s6,a4,80007234 <__printf+0x65c>
    80006dfc:	02d7f5bb          	remuw	a1,a5,a3
    80006e00:	02059593          	slli	a1,a1,0x20
    80006e04:	0205d593          	srli	a1,a1,0x20
    80006e08:	00bd85b3          	add	a1,s11,a1
    80006e0c:	0005c583          	lbu	a1,0(a1)
    80006e10:	02d7d7bb          	divuw	a5,a5,a3
    80006e14:	f8b40423          	sb	a1,-120(s0)
    80006e18:	42ebfc63          	bgeu	s7,a4,80007250 <__printf+0x678>
    80006e1c:	02079793          	slli	a5,a5,0x20
    80006e20:	0207d793          	srli	a5,a5,0x20
    80006e24:	00fd8db3          	add	s11,s11,a5
    80006e28:	000dc703          	lbu	a4,0(s11)
    80006e2c:	00a00793          	li	a5,10
    80006e30:	00900c93          	li	s9,9
    80006e34:	f8e404a3          	sb	a4,-119(s0)
    80006e38:	00065c63          	bgez	a2,80006e50 <__printf+0x278>
    80006e3c:	f9040713          	addi	a4,s0,-112
    80006e40:	00f70733          	add	a4,a4,a5
    80006e44:	02d00693          	li	a3,45
    80006e48:	fed70823          	sb	a3,-16(a4)
    80006e4c:	00078c93          	mv	s9,a5
    80006e50:	f8040793          	addi	a5,s0,-128
    80006e54:	01978cb3          	add	s9,a5,s9
    80006e58:	f7f40d13          	addi	s10,s0,-129
    80006e5c:	000cc503          	lbu	a0,0(s9)
    80006e60:	fffc8c93          	addi	s9,s9,-1
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	b90080e7          	jalr	-1136(ra) # 800069f4 <consputc>
    80006e6c:	ffac98e3          	bne	s9,s10,80006e5c <__printf+0x284>
    80006e70:	00094503          	lbu	a0,0(s2)
    80006e74:	e00514e3          	bnez	a0,80006c7c <__printf+0xa4>
    80006e78:	1a0c1663          	bnez	s8,80007024 <__printf+0x44c>
    80006e7c:	08813083          	ld	ra,136(sp)
    80006e80:	08013403          	ld	s0,128(sp)
    80006e84:	07813483          	ld	s1,120(sp)
    80006e88:	07013903          	ld	s2,112(sp)
    80006e8c:	06813983          	ld	s3,104(sp)
    80006e90:	06013a03          	ld	s4,96(sp)
    80006e94:	05813a83          	ld	s5,88(sp)
    80006e98:	05013b03          	ld	s6,80(sp)
    80006e9c:	04813b83          	ld	s7,72(sp)
    80006ea0:	04013c03          	ld	s8,64(sp)
    80006ea4:	03813c83          	ld	s9,56(sp)
    80006ea8:	03013d03          	ld	s10,48(sp)
    80006eac:	02813d83          	ld	s11,40(sp)
    80006eb0:	0d010113          	addi	sp,sp,208
    80006eb4:	00008067          	ret
    80006eb8:	07300713          	li	a4,115
    80006ebc:	1ce78a63          	beq	a5,a4,80007090 <__printf+0x4b8>
    80006ec0:	07800713          	li	a4,120
    80006ec4:	1ee79e63          	bne	a5,a4,800070c0 <__printf+0x4e8>
    80006ec8:	f7843783          	ld	a5,-136(s0)
    80006ecc:	0007a703          	lw	a4,0(a5)
    80006ed0:	00878793          	addi	a5,a5,8
    80006ed4:	f6f43c23          	sd	a5,-136(s0)
    80006ed8:	28074263          	bltz	a4,8000715c <__printf+0x584>
    80006edc:	00002d97          	auipc	s11,0x2
    80006ee0:	65cd8d93          	addi	s11,s11,1628 # 80009538 <digits>
    80006ee4:	00f77793          	andi	a5,a4,15
    80006ee8:	00fd87b3          	add	a5,s11,a5
    80006eec:	0007c683          	lbu	a3,0(a5)
    80006ef0:	00f00613          	li	a2,15
    80006ef4:	0007079b          	sext.w	a5,a4
    80006ef8:	f8d40023          	sb	a3,-128(s0)
    80006efc:	0047559b          	srliw	a1,a4,0x4
    80006f00:	0047569b          	srliw	a3,a4,0x4
    80006f04:	00000c93          	li	s9,0
    80006f08:	0ee65063          	bge	a2,a4,80006fe8 <__printf+0x410>
    80006f0c:	00f6f693          	andi	a3,a3,15
    80006f10:	00dd86b3          	add	a3,s11,a3
    80006f14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006f18:	0087d79b          	srliw	a5,a5,0x8
    80006f1c:	00100c93          	li	s9,1
    80006f20:	f8d400a3          	sb	a3,-127(s0)
    80006f24:	0cb67263          	bgeu	a2,a1,80006fe8 <__printf+0x410>
    80006f28:	00f7f693          	andi	a3,a5,15
    80006f2c:	00dd86b3          	add	a3,s11,a3
    80006f30:	0006c583          	lbu	a1,0(a3)
    80006f34:	00f00613          	li	a2,15
    80006f38:	0047d69b          	srliw	a3,a5,0x4
    80006f3c:	f8b40123          	sb	a1,-126(s0)
    80006f40:	0047d593          	srli	a1,a5,0x4
    80006f44:	28f67e63          	bgeu	a2,a5,800071e0 <__printf+0x608>
    80006f48:	00f6f693          	andi	a3,a3,15
    80006f4c:	00dd86b3          	add	a3,s11,a3
    80006f50:	0006c503          	lbu	a0,0(a3)
    80006f54:	0087d813          	srli	a6,a5,0x8
    80006f58:	0087d69b          	srliw	a3,a5,0x8
    80006f5c:	f8a401a3          	sb	a0,-125(s0)
    80006f60:	28b67663          	bgeu	a2,a1,800071ec <__printf+0x614>
    80006f64:	00f6f693          	andi	a3,a3,15
    80006f68:	00dd86b3          	add	a3,s11,a3
    80006f6c:	0006c583          	lbu	a1,0(a3)
    80006f70:	00c7d513          	srli	a0,a5,0xc
    80006f74:	00c7d69b          	srliw	a3,a5,0xc
    80006f78:	f8b40223          	sb	a1,-124(s0)
    80006f7c:	29067a63          	bgeu	a2,a6,80007210 <__printf+0x638>
    80006f80:	00f6f693          	andi	a3,a3,15
    80006f84:	00dd86b3          	add	a3,s11,a3
    80006f88:	0006c583          	lbu	a1,0(a3)
    80006f8c:	0107d813          	srli	a6,a5,0x10
    80006f90:	0107d69b          	srliw	a3,a5,0x10
    80006f94:	f8b402a3          	sb	a1,-123(s0)
    80006f98:	28a67263          	bgeu	a2,a0,8000721c <__printf+0x644>
    80006f9c:	00f6f693          	andi	a3,a3,15
    80006fa0:	00dd86b3          	add	a3,s11,a3
    80006fa4:	0006c683          	lbu	a3,0(a3)
    80006fa8:	0147d79b          	srliw	a5,a5,0x14
    80006fac:	f8d40323          	sb	a3,-122(s0)
    80006fb0:	21067663          	bgeu	a2,a6,800071bc <__printf+0x5e4>
    80006fb4:	02079793          	slli	a5,a5,0x20
    80006fb8:	0207d793          	srli	a5,a5,0x20
    80006fbc:	00fd8db3          	add	s11,s11,a5
    80006fc0:	000dc683          	lbu	a3,0(s11)
    80006fc4:	00800793          	li	a5,8
    80006fc8:	00700c93          	li	s9,7
    80006fcc:	f8d403a3          	sb	a3,-121(s0)
    80006fd0:	00075c63          	bgez	a4,80006fe8 <__printf+0x410>
    80006fd4:	f9040713          	addi	a4,s0,-112
    80006fd8:	00f70733          	add	a4,a4,a5
    80006fdc:	02d00693          	li	a3,45
    80006fe0:	fed70823          	sb	a3,-16(a4)
    80006fe4:	00078c93          	mv	s9,a5
    80006fe8:	f8040793          	addi	a5,s0,-128
    80006fec:	01978cb3          	add	s9,a5,s9
    80006ff0:	f7f40d13          	addi	s10,s0,-129
    80006ff4:	000cc503          	lbu	a0,0(s9)
    80006ff8:	fffc8c93          	addi	s9,s9,-1
    80006ffc:	00000097          	auipc	ra,0x0
    80007000:	9f8080e7          	jalr	-1544(ra) # 800069f4 <consputc>
    80007004:	ff9d18e3          	bne	s10,s9,80006ff4 <__printf+0x41c>
    80007008:	0100006f          	j	80007018 <__printf+0x440>
    8000700c:	00000097          	auipc	ra,0x0
    80007010:	9e8080e7          	jalr	-1560(ra) # 800069f4 <consputc>
    80007014:	000c8493          	mv	s1,s9
    80007018:	00094503          	lbu	a0,0(s2)
    8000701c:	c60510e3          	bnez	a0,80006c7c <__printf+0xa4>
    80007020:	e40c0ee3          	beqz	s8,80006e7c <__printf+0x2a4>
    80007024:	00006517          	auipc	a0,0x6
    80007028:	b9c50513          	addi	a0,a0,-1124 # 8000cbc0 <pr>
    8000702c:	00001097          	auipc	ra,0x1
    80007030:	94c080e7          	jalr	-1716(ra) # 80007978 <release>
    80007034:	e49ff06f          	j	80006e7c <__printf+0x2a4>
    80007038:	f7843783          	ld	a5,-136(s0)
    8000703c:	03000513          	li	a0,48
    80007040:	01000d13          	li	s10,16
    80007044:	00878713          	addi	a4,a5,8
    80007048:	0007bc83          	ld	s9,0(a5)
    8000704c:	f6e43c23          	sd	a4,-136(s0)
    80007050:	00000097          	auipc	ra,0x0
    80007054:	9a4080e7          	jalr	-1628(ra) # 800069f4 <consputc>
    80007058:	07800513          	li	a0,120
    8000705c:	00000097          	auipc	ra,0x0
    80007060:	998080e7          	jalr	-1640(ra) # 800069f4 <consputc>
    80007064:	00002d97          	auipc	s11,0x2
    80007068:	4d4d8d93          	addi	s11,s11,1236 # 80009538 <digits>
    8000706c:	03ccd793          	srli	a5,s9,0x3c
    80007070:	00fd87b3          	add	a5,s11,a5
    80007074:	0007c503          	lbu	a0,0(a5)
    80007078:	fffd0d1b          	addiw	s10,s10,-1
    8000707c:	004c9c93          	slli	s9,s9,0x4
    80007080:	00000097          	auipc	ra,0x0
    80007084:	974080e7          	jalr	-1676(ra) # 800069f4 <consputc>
    80007088:	fe0d12e3          	bnez	s10,8000706c <__printf+0x494>
    8000708c:	f8dff06f          	j	80007018 <__printf+0x440>
    80007090:	f7843783          	ld	a5,-136(s0)
    80007094:	0007bc83          	ld	s9,0(a5)
    80007098:	00878793          	addi	a5,a5,8
    8000709c:	f6f43c23          	sd	a5,-136(s0)
    800070a0:	000c9a63          	bnez	s9,800070b4 <__printf+0x4dc>
    800070a4:	1080006f          	j	800071ac <__printf+0x5d4>
    800070a8:	001c8c93          	addi	s9,s9,1
    800070ac:	00000097          	auipc	ra,0x0
    800070b0:	948080e7          	jalr	-1720(ra) # 800069f4 <consputc>
    800070b4:	000cc503          	lbu	a0,0(s9)
    800070b8:	fe0518e3          	bnez	a0,800070a8 <__printf+0x4d0>
    800070bc:	f5dff06f          	j	80007018 <__printf+0x440>
    800070c0:	02500513          	li	a0,37
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	930080e7          	jalr	-1744(ra) # 800069f4 <consputc>
    800070cc:	000c8513          	mv	a0,s9
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	924080e7          	jalr	-1756(ra) # 800069f4 <consputc>
    800070d8:	f41ff06f          	j	80007018 <__printf+0x440>
    800070dc:	02500513          	li	a0,37
    800070e0:	00000097          	auipc	ra,0x0
    800070e4:	914080e7          	jalr	-1772(ra) # 800069f4 <consputc>
    800070e8:	f31ff06f          	j	80007018 <__printf+0x440>
    800070ec:	00030513          	mv	a0,t1
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	7bc080e7          	jalr	1980(ra) # 800078ac <acquire>
    800070f8:	b4dff06f          	j	80006c44 <__printf+0x6c>
    800070fc:	40c0053b          	negw	a0,a2
    80007100:	00a00713          	li	a4,10
    80007104:	02e576bb          	remuw	a3,a0,a4
    80007108:	00002d97          	auipc	s11,0x2
    8000710c:	430d8d93          	addi	s11,s11,1072 # 80009538 <digits>
    80007110:	ff700593          	li	a1,-9
    80007114:	02069693          	slli	a3,a3,0x20
    80007118:	0206d693          	srli	a3,a3,0x20
    8000711c:	00dd86b3          	add	a3,s11,a3
    80007120:	0006c683          	lbu	a3,0(a3)
    80007124:	02e557bb          	divuw	a5,a0,a4
    80007128:	f8d40023          	sb	a3,-128(s0)
    8000712c:	10b65e63          	bge	a2,a1,80007248 <__printf+0x670>
    80007130:	06300593          	li	a1,99
    80007134:	02e7f6bb          	remuw	a3,a5,a4
    80007138:	02069693          	slli	a3,a3,0x20
    8000713c:	0206d693          	srli	a3,a3,0x20
    80007140:	00dd86b3          	add	a3,s11,a3
    80007144:	0006c683          	lbu	a3,0(a3)
    80007148:	02e7d73b          	divuw	a4,a5,a4
    8000714c:	00200793          	li	a5,2
    80007150:	f8d400a3          	sb	a3,-127(s0)
    80007154:	bca5ece3          	bltu	a1,a0,80006d2c <__printf+0x154>
    80007158:	ce5ff06f          	j	80006e3c <__printf+0x264>
    8000715c:	40e007bb          	negw	a5,a4
    80007160:	00002d97          	auipc	s11,0x2
    80007164:	3d8d8d93          	addi	s11,s11,984 # 80009538 <digits>
    80007168:	00f7f693          	andi	a3,a5,15
    8000716c:	00dd86b3          	add	a3,s11,a3
    80007170:	0006c583          	lbu	a1,0(a3)
    80007174:	ff100613          	li	a2,-15
    80007178:	0047d69b          	srliw	a3,a5,0x4
    8000717c:	f8b40023          	sb	a1,-128(s0)
    80007180:	0047d59b          	srliw	a1,a5,0x4
    80007184:	0ac75e63          	bge	a4,a2,80007240 <__printf+0x668>
    80007188:	00f6f693          	andi	a3,a3,15
    8000718c:	00dd86b3          	add	a3,s11,a3
    80007190:	0006c603          	lbu	a2,0(a3)
    80007194:	00f00693          	li	a3,15
    80007198:	0087d79b          	srliw	a5,a5,0x8
    8000719c:	f8c400a3          	sb	a2,-127(s0)
    800071a0:	d8b6e4e3          	bltu	a3,a1,80006f28 <__printf+0x350>
    800071a4:	00200793          	li	a5,2
    800071a8:	e2dff06f          	j	80006fd4 <__printf+0x3fc>
    800071ac:	00002c97          	auipc	s9,0x2
    800071b0:	36cc8c93          	addi	s9,s9,876 # 80009518 <_ZL6digits+0x160>
    800071b4:	02800513          	li	a0,40
    800071b8:	ef1ff06f          	j	800070a8 <__printf+0x4d0>
    800071bc:	00700793          	li	a5,7
    800071c0:	00600c93          	li	s9,6
    800071c4:	e0dff06f          	j	80006fd0 <__printf+0x3f8>
    800071c8:	00700793          	li	a5,7
    800071cc:	00600c93          	li	s9,6
    800071d0:	c69ff06f          	j	80006e38 <__printf+0x260>
    800071d4:	00300793          	li	a5,3
    800071d8:	00200c93          	li	s9,2
    800071dc:	c5dff06f          	j	80006e38 <__printf+0x260>
    800071e0:	00300793          	li	a5,3
    800071e4:	00200c93          	li	s9,2
    800071e8:	de9ff06f          	j	80006fd0 <__printf+0x3f8>
    800071ec:	00400793          	li	a5,4
    800071f0:	00300c93          	li	s9,3
    800071f4:	dddff06f          	j	80006fd0 <__printf+0x3f8>
    800071f8:	00400793          	li	a5,4
    800071fc:	00300c93          	li	s9,3
    80007200:	c39ff06f          	j	80006e38 <__printf+0x260>
    80007204:	00500793          	li	a5,5
    80007208:	00400c93          	li	s9,4
    8000720c:	c2dff06f          	j	80006e38 <__printf+0x260>
    80007210:	00500793          	li	a5,5
    80007214:	00400c93          	li	s9,4
    80007218:	db9ff06f          	j	80006fd0 <__printf+0x3f8>
    8000721c:	00600793          	li	a5,6
    80007220:	00500c93          	li	s9,5
    80007224:	dadff06f          	j	80006fd0 <__printf+0x3f8>
    80007228:	00600793          	li	a5,6
    8000722c:	00500c93          	li	s9,5
    80007230:	c09ff06f          	j	80006e38 <__printf+0x260>
    80007234:	00800793          	li	a5,8
    80007238:	00700c93          	li	s9,7
    8000723c:	bfdff06f          	j	80006e38 <__printf+0x260>
    80007240:	00100793          	li	a5,1
    80007244:	d91ff06f          	j	80006fd4 <__printf+0x3fc>
    80007248:	00100793          	li	a5,1
    8000724c:	bf1ff06f          	j	80006e3c <__printf+0x264>
    80007250:	00900793          	li	a5,9
    80007254:	00800c93          	li	s9,8
    80007258:	be1ff06f          	j	80006e38 <__printf+0x260>
    8000725c:	00002517          	auipc	a0,0x2
    80007260:	2c450513          	addi	a0,a0,708 # 80009520 <_ZL6digits+0x168>
    80007264:	00000097          	auipc	ra,0x0
    80007268:	918080e7          	jalr	-1768(ra) # 80006b7c <panic>

000000008000726c <printfinit>:
    8000726c:	fe010113          	addi	sp,sp,-32
    80007270:	00813823          	sd	s0,16(sp)
    80007274:	00913423          	sd	s1,8(sp)
    80007278:	00113c23          	sd	ra,24(sp)
    8000727c:	02010413          	addi	s0,sp,32
    80007280:	00006497          	auipc	s1,0x6
    80007284:	94048493          	addi	s1,s1,-1728 # 8000cbc0 <pr>
    80007288:	00048513          	mv	a0,s1
    8000728c:	00002597          	auipc	a1,0x2
    80007290:	2a458593          	addi	a1,a1,676 # 80009530 <_ZL6digits+0x178>
    80007294:	00000097          	auipc	ra,0x0
    80007298:	5f4080e7          	jalr	1524(ra) # 80007888 <initlock>
    8000729c:	01813083          	ld	ra,24(sp)
    800072a0:	01013403          	ld	s0,16(sp)
    800072a4:	0004ac23          	sw	zero,24(s1)
    800072a8:	00813483          	ld	s1,8(sp)
    800072ac:	02010113          	addi	sp,sp,32
    800072b0:	00008067          	ret

00000000800072b4 <uartinit>:
    800072b4:	ff010113          	addi	sp,sp,-16
    800072b8:	00813423          	sd	s0,8(sp)
    800072bc:	01010413          	addi	s0,sp,16
    800072c0:	100007b7          	lui	a5,0x10000
    800072c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800072c8:	f8000713          	li	a4,-128
    800072cc:	00e781a3          	sb	a4,3(a5)
    800072d0:	00300713          	li	a4,3
    800072d4:	00e78023          	sb	a4,0(a5)
    800072d8:	000780a3          	sb	zero,1(a5)
    800072dc:	00e781a3          	sb	a4,3(a5)
    800072e0:	00700693          	li	a3,7
    800072e4:	00d78123          	sb	a3,2(a5)
    800072e8:	00e780a3          	sb	a4,1(a5)
    800072ec:	00813403          	ld	s0,8(sp)
    800072f0:	01010113          	addi	sp,sp,16
    800072f4:	00008067          	ret

00000000800072f8 <uartputc>:
    800072f8:	00004797          	auipc	a5,0x4
    800072fc:	5b07a783          	lw	a5,1456(a5) # 8000b8a8 <panicked>
    80007300:	00078463          	beqz	a5,80007308 <uartputc+0x10>
    80007304:	0000006f          	j	80007304 <uartputc+0xc>
    80007308:	fd010113          	addi	sp,sp,-48
    8000730c:	02813023          	sd	s0,32(sp)
    80007310:	00913c23          	sd	s1,24(sp)
    80007314:	01213823          	sd	s2,16(sp)
    80007318:	01313423          	sd	s3,8(sp)
    8000731c:	02113423          	sd	ra,40(sp)
    80007320:	03010413          	addi	s0,sp,48
    80007324:	00004917          	auipc	s2,0x4
    80007328:	58c90913          	addi	s2,s2,1420 # 8000b8b0 <uart_tx_r>
    8000732c:	00093783          	ld	a5,0(s2)
    80007330:	00004497          	auipc	s1,0x4
    80007334:	58848493          	addi	s1,s1,1416 # 8000b8b8 <uart_tx_w>
    80007338:	0004b703          	ld	a4,0(s1)
    8000733c:	02078693          	addi	a3,a5,32
    80007340:	00050993          	mv	s3,a0
    80007344:	02e69c63          	bne	a3,a4,8000737c <uartputc+0x84>
    80007348:	00001097          	auipc	ra,0x1
    8000734c:	834080e7          	jalr	-1996(ra) # 80007b7c <push_on>
    80007350:	00093783          	ld	a5,0(s2)
    80007354:	0004b703          	ld	a4,0(s1)
    80007358:	02078793          	addi	a5,a5,32
    8000735c:	00e79463          	bne	a5,a4,80007364 <uartputc+0x6c>
    80007360:	0000006f          	j	80007360 <uartputc+0x68>
    80007364:	00001097          	auipc	ra,0x1
    80007368:	88c080e7          	jalr	-1908(ra) # 80007bf0 <pop_on>
    8000736c:	00093783          	ld	a5,0(s2)
    80007370:	0004b703          	ld	a4,0(s1)
    80007374:	02078693          	addi	a3,a5,32
    80007378:	fce688e3          	beq	a3,a4,80007348 <uartputc+0x50>
    8000737c:	01f77693          	andi	a3,a4,31
    80007380:	00006597          	auipc	a1,0x6
    80007384:	86058593          	addi	a1,a1,-1952 # 8000cbe0 <uart_tx_buf>
    80007388:	00d586b3          	add	a3,a1,a3
    8000738c:	00170713          	addi	a4,a4,1
    80007390:	01368023          	sb	s3,0(a3)
    80007394:	00e4b023          	sd	a4,0(s1)
    80007398:	10000637          	lui	a2,0x10000
    8000739c:	02f71063          	bne	a4,a5,800073bc <uartputc+0xc4>
    800073a0:	0340006f          	j	800073d4 <uartputc+0xdc>
    800073a4:	00074703          	lbu	a4,0(a4)
    800073a8:	00f93023          	sd	a5,0(s2)
    800073ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800073b0:	00093783          	ld	a5,0(s2)
    800073b4:	0004b703          	ld	a4,0(s1)
    800073b8:	00f70e63          	beq	a4,a5,800073d4 <uartputc+0xdc>
    800073bc:	00564683          	lbu	a3,5(a2)
    800073c0:	01f7f713          	andi	a4,a5,31
    800073c4:	00e58733          	add	a4,a1,a4
    800073c8:	0206f693          	andi	a3,a3,32
    800073cc:	00178793          	addi	a5,a5,1
    800073d0:	fc069ae3          	bnez	a3,800073a4 <uartputc+0xac>
    800073d4:	02813083          	ld	ra,40(sp)
    800073d8:	02013403          	ld	s0,32(sp)
    800073dc:	01813483          	ld	s1,24(sp)
    800073e0:	01013903          	ld	s2,16(sp)
    800073e4:	00813983          	ld	s3,8(sp)
    800073e8:	03010113          	addi	sp,sp,48
    800073ec:	00008067          	ret

00000000800073f0 <uartputc_sync>:
    800073f0:	ff010113          	addi	sp,sp,-16
    800073f4:	00813423          	sd	s0,8(sp)
    800073f8:	01010413          	addi	s0,sp,16
    800073fc:	00004717          	auipc	a4,0x4
    80007400:	4ac72703          	lw	a4,1196(a4) # 8000b8a8 <panicked>
    80007404:	02071663          	bnez	a4,80007430 <uartputc_sync+0x40>
    80007408:	00050793          	mv	a5,a0
    8000740c:	100006b7          	lui	a3,0x10000
    80007410:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007414:	02077713          	andi	a4,a4,32
    80007418:	fe070ce3          	beqz	a4,80007410 <uartputc_sync+0x20>
    8000741c:	0ff7f793          	andi	a5,a5,255
    80007420:	00f68023          	sb	a5,0(a3)
    80007424:	00813403          	ld	s0,8(sp)
    80007428:	01010113          	addi	sp,sp,16
    8000742c:	00008067          	ret
    80007430:	0000006f          	j	80007430 <uartputc_sync+0x40>

0000000080007434 <uartstart>:
    80007434:	ff010113          	addi	sp,sp,-16
    80007438:	00813423          	sd	s0,8(sp)
    8000743c:	01010413          	addi	s0,sp,16
    80007440:	00004617          	auipc	a2,0x4
    80007444:	47060613          	addi	a2,a2,1136 # 8000b8b0 <uart_tx_r>
    80007448:	00004517          	auipc	a0,0x4
    8000744c:	47050513          	addi	a0,a0,1136 # 8000b8b8 <uart_tx_w>
    80007450:	00063783          	ld	a5,0(a2)
    80007454:	00053703          	ld	a4,0(a0)
    80007458:	04f70263          	beq	a4,a5,8000749c <uartstart+0x68>
    8000745c:	100005b7          	lui	a1,0x10000
    80007460:	00005817          	auipc	a6,0x5
    80007464:	78080813          	addi	a6,a6,1920 # 8000cbe0 <uart_tx_buf>
    80007468:	01c0006f          	j	80007484 <uartstart+0x50>
    8000746c:	0006c703          	lbu	a4,0(a3)
    80007470:	00f63023          	sd	a5,0(a2)
    80007474:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007478:	00063783          	ld	a5,0(a2)
    8000747c:	00053703          	ld	a4,0(a0)
    80007480:	00f70e63          	beq	a4,a5,8000749c <uartstart+0x68>
    80007484:	01f7f713          	andi	a4,a5,31
    80007488:	00e806b3          	add	a3,a6,a4
    8000748c:	0055c703          	lbu	a4,5(a1)
    80007490:	00178793          	addi	a5,a5,1
    80007494:	02077713          	andi	a4,a4,32
    80007498:	fc071ae3          	bnez	a4,8000746c <uartstart+0x38>
    8000749c:	00813403          	ld	s0,8(sp)
    800074a0:	01010113          	addi	sp,sp,16
    800074a4:	00008067          	ret

00000000800074a8 <uartgetc>:
    800074a8:	ff010113          	addi	sp,sp,-16
    800074ac:	00813423          	sd	s0,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	10000737          	lui	a4,0x10000
    800074b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800074bc:	0017f793          	andi	a5,a5,1
    800074c0:	00078c63          	beqz	a5,800074d8 <uartgetc+0x30>
    800074c4:	00074503          	lbu	a0,0(a4)
    800074c8:	0ff57513          	andi	a0,a0,255
    800074cc:	00813403          	ld	s0,8(sp)
    800074d0:	01010113          	addi	sp,sp,16
    800074d4:	00008067          	ret
    800074d8:	fff00513          	li	a0,-1
    800074dc:	ff1ff06f          	j	800074cc <uartgetc+0x24>

00000000800074e0 <uartintr>:
    800074e0:	100007b7          	lui	a5,0x10000
    800074e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800074e8:	0017f793          	andi	a5,a5,1
    800074ec:	0a078463          	beqz	a5,80007594 <uartintr+0xb4>
    800074f0:	fe010113          	addi	sp,sp,-32
    800074f4:	00813823          	sd	s0,16(sp)
    800074f8:	00913423          	sd	s1,8(sp)
    800074fc:	00113c23          	sd	ra,24(sp)
    80007500:	02010413          	addi	s0,sp,32
    80007504:	100004b7          	lui	s1,0x10000
    80007508:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000750c:	0ff57513          	andi	a0,a0,255
    80007510:	fffff097          	auipc	ra,0xfffff
    80007514:	534080e7          	jalr	1332(ra) # 80006a44 <consoleintr>
    80007518:	0054c783          	lbu	a5,5(s1)
    8000751c:	0017f793          	andi	a5,a5,1
    80007520:	fe0794e3          	bnez	a5,80007508 <uartintr+0x28>
    80007524:	00004617          	auipc	a2,0x4
    80007528:	38c60613          	addi	a2,a2,908 # 8000b8b0 <uart_tx_r>
    8000752c:	00004517          	auipc	a0,0x4
    80007530:	38c50513          	addi	a0,a0,908 # 8000b8b8 <uart_tx_w>
    80007534:	00063783          	ld	a5,0(a2)
    80007538:	00053703          	ld	a4,0(a0)
    8000753c:	04f70263          	beq	a4,a5,80007580 <uartintr+0xa0>
    80007540:	100005b7          	lui	a1,0x10000
    80007544:	00005817          	auipc	a6,0x5
    80007548:	69c80813          	addi	a6,a6,1692 # 8000cbe0 <uart_tx_buf>
    8000754c:	01c0006f          	j	80007568 <uartintr+0x88>
    80007550:	0006c703          	lbu	a4,0(a3)
    80007554:	00f63023          	sd	a5,0(a2)
    80007558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000755c:	00063783          	ld	a5,0(a2)
    80007560:	00053703          	ld	a4,0(a0)
    80007564:	00f70e63          	beq	a4,a5,80007580 <uartintr+0xa0>
    80007568:	01f7f713          	andi	a4,a5,31
    8000756c:	00e806b3          	add	a3,a6,a4
    80007570:	0055c703          	lbu	a4,5(a1)
    80007574:	00178793          	addi	a5,a5,1
    80007578:	02077713          	andi	a4,a4,32
    8000757c:	fc071ae3          	bnez	a4,80007550 <uartintr+0x70>
    80007580:	01813083          	ld	ra,24(sp)
    80007584:	01013403          	ld	s0,16(sp)
    80007588:	00813483          	ld	s1,8(sp)
    8000758c:	02010113          	addi	sp,sp,32
    80007590:	00008067          	ret
    80007594:	00004617          	auipc	a2,0x4
    80007598:	31c60613          	addi	a2,a2,796 # 8000b8b0 <uart_tx_r>
    8000759c:	00004517          	auipc	a0,0x4
    800075a0:	31c50513          	addi	a0,a0,796 # 8000b8b8 <uart_tx_w>
    800075a4:	00063783          	ld	a5,0(a2)
    800075a8:	00053703          	ld	a4,0(a0)
    800075ac:	04f70263          	beq	a4,a5,800075f0 <uartintr+0x110>
    800075b0:	100005b7          	lui	a1,0x10000
    800075b4:	00005817          	auipc	a6,0x5
    800075b8:	62c80813          	addi	a6,a6,1580 # 8000cbe0 <uart_tx_buf>
    800075bc:	01c0006f          	j	800075d8 <uartintr+0xf8>
    800075c0:	0006c703          	lbu	a4,0(a3)
    800075c4:	00f63023          	sd	a5,0(a2)
    800075c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075cc:	00063783          	ld	a5,0(a2)
    800075d0:	00053703          	ld	a4,0(a0)
    800075d4:	02f70063          	beq	a4,a5,800075f4 <uartintr+0x114>
    800075d8:	01f7f713          	andi	a4,a5,31
    800075dc:	00e806b3          	add	a3,a6,a4
    800075e0:	0055c703          	lbu	a4,5(a1)
    800075e4:	00178793          	addi	a5,a5,1
    800075e8:	02077713          	andi	a4,a4,32
    800075ec:	fc071ae3          	bnez	a4,800075c0 <uartintr+0xe0>
    800075f0:	00008067          	ret
    800075f4:	00008067          	ret

00000000800075f8 <kinit>:
    800075f8:	fc010113          	addi	sp,sp,-64
    800075fc:	02913423          	sd	s1,40(sp)
    80007600:	fffff7b7          	lui	a5,0xfffff
    80007604:	00006497          	auipc	s1,0x6
    80007608:	5fb48493          	addi	s1,s1,1531 # 8000dbff <end+0xfff>
    8000760c:	02813823          	sd	s0,48(sp)
    80007610:	01313c23          	sd	s3,24(sp)
    80007614:	00f4f4b3          	and	s1,s1,a5
    80007618:	02113c23          	sd	ra,56(sp)
    8000761c:	03213023          	sd	s2,32(sp)
    80007620:	01413823          	sd	s4,16(sp)
    80007624:	01513423          	sd	s5,8(sp)
    80007628:	04010413          	addi	s0,sp,64
    8000762c:	000017b7          	lui	a5,0x1
    80007630:	01100993          	li	s3,17
    80007634:	00f487b3          	add	a5,s1,a5
    80007638:	01b99993          	slli	s3,s3,0x1b
    8000763c:	06f9e063          	bltu	s3,a5,8000769c <kinit+0xa4>
    80007640:	00005a97          	auipc	s5,0x5
    80007644:	5c0a8a93          	addi	s5,s5,1472 # 8000cc00 <end>
    80007648:	0754ec63          	bltu	s1,s5,800076c0 <kinit+0xc8>
    8000764c:	0734fa63          	bgeu	s1,s3,800076c0 <kinit+0xc8>
    80007650:	00088a37          	lui	s4,0x88
    80007654:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007658:	00004917          	auipc	s2,0x4
    8000765c:	26890913          	addi	s2,s2,616 # 8000b8c0 <kmem>
    80007660:	00ca1a13          	slli	s4,s4,0xc
    80007664:	0140006f          	j	80007678 <kinit+0x80>
    80007668:	000017b7          	lui	a5,0x1
    8000766c:	00f484b3          	add	s1,s1,a5
    80007670:	0554e863          	bltu	s1,s5,800076c0 <kinit+0xc8>
    80007674:	0534f663          	bgeu	s1,s3,800076c0 <kinit+0xc8>
    80007678:	00001637          	lui	a2,0x1
    8000767c:	00100593          	li	a1,1
    80007680:	00048513          	mv	a0,s1
    80007684:	00000097          	auipc	ra,0x0
    80007688:	5e4080e7          	jalr	1508(ra) # 80007c68 <__memset>
    8000768c:	00093783          	ld	a5,0(s2)
    80007690:	00f4b023          	sd	a5,0(s1)
    80007694:	00993023          	sd	s1,0(s2)
    80007698:	fd4498e3          	bne	s1,s4,80007668 <kinit+0x70>
    8000769c:	03813083          	ld	ra,56(sp)
    800076a0:	03013403          	ld	s0,48(sp)
    800076a4:	02813483          	ld	s1,40(sp)
    800076a8:	02013903          	ld	s2,32(sp)
    800076ac:	01813983          	ld	s3,24(sp)
    800076b0:	01013a03          	ld	s4,16(sp)
    800076b4:	00813a83          	ld	s5,8(sp)
    800076b8:	04010113          	addi	sp,sp,64
    800076bc:	00008067          	ret
    800076c0:	00002517          	auipc	a0,0x2
    800076c4:	e9050513          	addi	a0,a0,-368 # 80009550 <digits+0x18>
    800076c8:	fffff097          	auipc	ra,0xfffff
    800076cc:	4b4080e7          	jalr	1204(ra) # 80006b7c <panic>

00000000800076d0 <freerange>:
    800076d0:	fc010113          	addi	sp,sp,-64
    800076d4:	000017b7          	lui	a5,0x1
    800076d8:	02913423          	sd	s1,40(sp)
    800076dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800076e0:	009504b3          	add	s1,a0,s1
    800076e4:	fffff537          	lui	a0,0xfffff
    800076e8:	02813823          	sd	s0,48(sp)
    800076ec:	02113c23          	sd	ra,56(sp)
    800076f0:	03213023          	sd	s2,32(sp)
    800076f4:	01313c23          	sd	s3,24(sp)
    800076f8:	01413823          	sd	s4,16(sp)
    800076fc:	01513423          	sd	s5,8(sp)
    80007700:	01613023          	sd	s6,0(sp)
    80007704:	04010413          	addi	s0,sp,64
    80007708:	00a4f4b3          	and	s1,s1,a0
    8000770c:	00f487b3          	add	a5,s1,a5
    80007710:	06f5e463          	bltu	a1,a5,80007778 <freerange+0xa8>
    80007714:	00005a97          	auipc	s5,0x5
    80007718:	4eca8a93          	addi	s5,s5,1260 # 8000cc00 <end>
    8000771c:	0954e263          	bltu	s1,s5,800077a0 <freerange+0xd0>
    80007720:	01100993          	li	s3,17
    80007724:	01b99993          	slli	s3,s3,0x1b
    80007728:	0734fc63          	bgeu	s1,s3,800077a0 <freerange+0xd0>
    8000772c:	00058a13          	mv	s4,a1
    80007730:	00004917          	auipc	s2,0x4
    80007734:	19090913          	addi	s2,s2,400 # 8000b8c0 <kmem>
    80007738:	00002b37          	lui	s6,0x2
    8000773c:	0140006f          	j	80007750 <freerange+0x80>
    80007740:	000017b7          	lui	a5,0x1
    80007744:	00f484b3          	add	s1,s1,a5
    80007748:	0554ec63          	bltu	s1,s5,800077a0 <freerange+0xd0>
    8000774c:	0534fa63          	bgeu	s1,s3,800077a0 <freerange+0xd0>
    80007750:	00001637          	lui	a2,0x1
    80007754:	00100593          	li	a1,1
    80007758:	00048513          	mv	a0,s1
    8000775c:	00000097          	auipc	ra,0x0
    80007760:	50c080e7          	jalr	1292(ra) # 80007c68 <__memset>
    80007764:	00093703          	ld	a4,0(s2)
    80007768:	016487b3          	add	a5,s1,s6
    8000776c:	00e4b023          	sd	a4,0(s1)
    80007770:	00993023          	sd	s1,0(s2)
    80007774:	fcfa76e3          	bgeu	s4,a5,80007740 <freerange+0x70>
    80007778:	03813083          	ld	ra,56(sp)
    8000777c:	03013403          	ld	s0,48(sp)
    80007780:	02813483          	ld	s1,40(sp)
    80007784:	02013903          	ld	s2,32(sp)
    80007788:	01813983          	ld	s3,24(sp)
    8000778c:	01013a03          	ld	s4,16(sp)
    80007790:	00813a83          	ld	s5,8(sp)
    80007794:	00013b03          	ld	s6,0(sp)
    80007798:	04010113          	addi	sp,sp,64
    8000779c:	00008067          	ret
    800077a0:	00002517          	auipc	a0,0x2
    800077a4:	db050513          	addi	a0,a0,-592 # 80009550 <digits+0x18>
    800077a8:	fffff097          	auipc	ra,0xfffff
    800077ac:	3d4080e7          	jalr	980(ra) # 80006b7c <panic>

00000000800077b0 <kfree>:
    800077b0:	fe010113          	addi	sp,sp,-32
    800077b4:	00813823          	sd	s0,16(sp)
    800077b8:	00113c23          	sd	ra,24(sp)
    800077bc:	00913423          	sd	s1,8(sp)
    800077c0:	02010413          	addi	s0,sp,32
    800077c4:	03451793          	slli	a5,a0,0x34
    800077c8:	04079c63          	bnez	a5,80007820 <kfree+0x70>
    800077cc:	00005797          	auipc	a5,0x5
    800077d0:	43478793          	addi	a5,a5,1076 # 8000cc00 <end>
    800077d4:	00050493          	mv	s1,a0
    800077d8:	04f56463          	bltu	a0,a5,80007820 <kfree+0x70>
    800077dc:	01100793          	li	a5,17
    800077e0:	01b79793          	slli	a5,a5,0x1b
    800077e4:	02f57e63          	bgeu	a0,a5,80007820 <kfree+0x70>
    800077e8:	00001637          	lui	a2,0x1
    800077ec:	00100593          	li	a1,1
    800077f0:	00000097          	auipc	ra,0x0
    800077f4:	478080e7          	jalr	1144(ra) # 80007c68 <__memset>
    800077f8:	00004797          	auipc	a5,0x4
    800077fc:	0c878793          	addi	a5,a5,200 # 8000b8c0 <kmem>
    80007800:	0007b703          	ld	a4,0(a5)
    80007804:	01813083          	ld	ra,24(sp)
    80007808:	01013403          	ld	s0,16(sp)
    8000780c:	00e4b023          	sd	a4,0(s1)
    80007810:	0097b023          	sd	s1,0(a5)
    80007814:	00813483          	ld	s1,8(sp)
    80007818:	02010113          	addi	sp,sp,32
    8000781c:	00008067          	ret
    80007820:	00002517          	auipc	a0,0x2
    80007824:	d3050513          	addi	a0,a0,-720 # 80009550 <digits+0x18>
    80007828:	fffff097          	auipc	ra,0xfffff
    8000782c:	354080e7          	jalr	852(ra) # 80006b7c <panic>

0000000080007830 <kalloc>:
    80007830:	fe010113          	addi	sp,sp,-32
    80007834:	00813823          	sd	s0,16(sp)
    80007838:	00913423          	sd	s1,8(sp)
    8000783c:	00113c23          	sd	ra,24(sp)
    80007840:	02010413          	addi	s0,sp,32
    80007844:	00004797          	auipc	a5,0x4
    80007848:	07c78793          	addi	a5,a5,124 # 8000b8c0 <kmem>
    8000784c:	0007b483          	ld	s1,0(a5)
    80007850:	02048063          	beqz	s1,80007870 <kalloc+0x40>
    80007854:	0004b703          	ld	a4,0(s1)
    80007858:	00001637          	lui	a2,0x1
    8000785c:	00500593          	li	a1,5
    80007860:	00048513          	mv	a0,s1
    80007864:	00e7b023          	sd	a4,0(a5)
    80007868:	00000097          	auipc	ra,0x0
    8000786c:	400080e7          	jalr	1024(ra) # 80007c68 <__memset>
    80007870:	01813083          	ld	ra,24(sp)
    80007874:	01013403          	ld	s0,16(sp)
    80007878:	00048513          	mv	a0,s1
    8000787c:	00813483          	ld	s1,8(sp)
    80007880:	02010113          	addi	sp,sp,32
    80007884:	00008067          	ret

0000000080007888 <initlock>:
    80007888:	ff010113          	addi	sp,sp,-16
    8000788c:	00813423          	sd	s0,8(sp)
    80007890:	01010413          	addi	s0,sp,16
    80007894:	00813403          	ld	s0,8(sp)
    80007898:	00b53423          	sd	a1,8(a0)
    8000789c:	00052023          	sw	zero,0(a0)
    800078a0:	00053823          	sd	zero,16(a0)
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00008067          	ret

00000000800078ac <acquire>:
    800078ac:	fe010113          	addi	sp,sp,-32
    800078b0:	00813823          	sd	s0,16(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	00113c23          	sd	ra,24(sp)
    800078bc:	01213023          	sd	s2,0(sp)
    800078c0:	02010413          	addi	s0,sp,32
    800078c4:	00050493          	mv	s1,a0
    800078c8:	10002973          	csrr	s2,sstatus
    800078cc:	100027f3          	csrr	a5,sstatus
    800078d0:	ffd7f793          	andi	a5,a5,-3
    800078d4:	10079073          	csrw	sstatus,a5
    800078d8:	fffff097          	auipc	ra,0xfffff
    800078dc:	8e0080e7          	jalr	-1824(ra) # 800061b8 <mycpu>
    800078e0:	07852783          	lw	a5,120(a0)
    800078e4:	06078e63          	beqz	a5,80007960 <acquire+0xb4>
    800078e8:	fffff097          	auipc	ra,0xfffff
    800078ec:	8d0080e7          	jalr	-1840(ra) # 800061b8 <mycpu>
    800078f0:	07852783          	lw	a5,120(a0)
    800078f4:	0004a703          	lw	a4,0(s1)
    800078f8:	0017879b          	addiw	a5,a5,1
    800078fc:	06f52c23          	sw	a5,120(a0)
    80007900:	04071063          	bnez	a4,80007940 <acquire+0x94>
    80007904:	00100713          	li	a4,1
    80007908:	00070793          	mv	a5,a4
    8000790c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007910:	0007879b          	sext.w	a5,a5
    80007914:	fe079ae3          	bnez	a5,80007908 <acquire+0x5c>
    80007918:	0ff0000f          	fence
    8000791c:	fffff097          	auipc	ra,0xfffff
    80007920:	89c080e7          	jalr	-1892(ra) # 800061b8 <mycpu>
    80007924:	01813083          	ld	ra,24(sp)
    80007928:	01013403          	ld	s0,16(sp)
    8000792c:	00a4b823          	sd	a0,16(s1)
    80007930:	00013903          	ld	s2,0(sp)
    80007934:	00813483          	ld	s1,8(sp)
    80007938:	02010113          	addi	sp,sp,32
    8000793c:	00008067          	ret
    80007940:	0104b903          	ld	s2,16(s1)
    80007944:	fffff097          	auipc	ra,0xfffff
    80007948:	874080e7          	jalr	-1932(ra) # 800061b8 <mycpu>
    8000794c:	faa91ce3          	bne	s2,a0,80007904 <acquire+0x58>
    80007950:	00002517          	auipc	a0,0x2
    80007954:	c0850513          	addi	a0,a0,-1016 # 80009558 <digits+0x20>
    80007958:	fffff097          	auipc	ra,0xfffff
    8000795c:	224080e7          	jalr	548(ra) # 80006b7c <panic>
    80007960:	00195913          	srli	s2,s2,0x1
    80007964:	fffff097          	auipc	ra,0xfffff
    80007968:	854080e7          	jalr	-1964(ra) # 800061b8 <mycpu>
    8000796c:	00197913          	andi	s2,s2,1
    80007970:	07252e23          	sw	s2,124(a0)
    80007974:	f75ff06f          	j	800078e8 <acquire+0x3c>

0000000080007978 <release>:
    80007978:	fe010113          	addi	sp,sp,-32
    8000797c:	00813823          	sd	s0,16(sp)
    80007980:	00113c23          	sd	ra,24(sp)
    80007984:	00913423          	sd	s1,8(sp)
    80007988:	01213023          	sd	s2,0(sp)
    8000798c:	02010413          	addi	s0,sp,32
    80007990:	00052783          	lw	a5,0(a0)
    80007994:	00079a63          	bnez	a5,800079a8 <release+0x30>
    80007998:	00002517          	auipc	a0,0x2
    8000799c:	bc850513          	addi	a0,a0,-1080 # 80009560 <digits+0x28>
    800079a0:	fffff097          	auipc	ra,0xfffff
    800079a4:	1dc080e7          	jalr	476(ra) # 80006b7c <panic>
    800079a8:	01053903          	ld	s2,16(a0)
    800079ac:	00050493          	mv	s1,a0
    800079b0:	fffff097          	auipc	ra,0xfffff
    800079b4:	808080e7          	jalr	-2040(ra) # 800061b8 <mycpu>
    800079b8:	fea910e3          	bne	s2,a0,80007998 <release+0x20>
    800079bc:	0004b823          	sd	zero,16(s1)
    800079c0:	0ff0000f          	fence
    800079c4:	0f50000f          	fence	iorw,ow
    800079c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800079cc:	ffffe097          	auipc	ra,0xffffe
    800079d0:	7ec080e7          	jalr	2028(ra) # 800061b8 <mycpu>
    800079d4:	100027f3          	csrr	a5,sstatus
    800079d8:	0027f793          	andi	a5,a5,2
    800079dc:	04079a63          	bnez	a5,80007a30 <release+0xb8>
    800079e0:	07852783          	lw	a5,120(a0)
    800079e4:	02f05e63          	blez	a5,80007a20 <release+0xa8>
    800079e8:	fff7871b          	addiw	a4,a5,-1
    800079ec:	06e52c23          	sw	a4,120(a0)
    800079f0:	00071c63          	bnez	a4,80007a08 <release+0x90>
    800079f4:	07c52783          	lw	a5,124(a0)
    800079f8:	00078863          	beqz	a5,80007a08 <release+0x90>
    800079fc:	100027f3          	csrr	a5,sstatus
    80007a00:	0027e793          	ori	a5,a5,2
    80007a04:	10079073          	csrw	sstatus,a5
    80007a08:	01813083          	ld	ra,24(sp)
    80007a0c:	01013403          	ld	s0,16(sp)
    80007a10:	00813483          	ld	s1,8(sp)
    80007a14:	00013903          	ld	s2,0(sp)
    80007a18:	02010113          	addi	sp,sp,32
    80007a1c:	00008067          	ret
    80007a20:	00002517          	auipc	a0,0x2
    80007a24:	b6050513          	addi	a0,a0,-1184 # 80009580 <digits+0x48>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	154080e7          	jalr	340(ra) # 80006b7c <panic>
    80007a30:	00002517          	auipc	a0,0x2
    80007a34:	b3850513          	addi	a0,a0,-1224 # 80009568 <digits+0x30>
    80007a38:	fffff097          	auipc	ra,0xfffff
    80007a3c:	144080e7          	jalr	324(ra) # 80006b7c <panic>

0000000080007a40 <holding>:
    80007a40:	00052783          	lw	a5,0(a0)
    80007a44:	00079663          	bnez	a5,80007a50 <holding+0x10>
    80007a48:	00000513          	li	a0,0
    80007a4c:	00008067          	ret
    80007a50:	fe010113          	addi	sp,sp,-32
    80007a54:	00813823          	sd	s0,16(sp)
    80007a58:	00913423          	sd	s1,8(sp)
    80007a5c:	00113c23          	sd	ra,24(sp)
    80007a60:	02010413          	addi	s0,sp,32
    80007a64:	01053483          	ld	s1,16(a0)
    80007a68:	ffffe097          	auipc	ra,0xffffe
    80007a6c:	750080e7          	jalr	1872(ra) # 800061b8 <mycpu>
    80007a70:	01813083          	ld	ra,24(sp)
    80007a74:	01013403          	ld	s0,16(sp)
    80007a78:	40a48533          	sub	a0,s1,a0
    80007a7c:	00153513          	seqz	a0,a0
    80007a80:	00813483          	ld	s1,8(sp)
    80007a84:	02010113          	addi	sp,sp,32
    80007a88:	00008067          	ret

0000000080007a8c <push_off>:
    80007a8c:	fe010113          	addi	sp,sp,-32
    80007a90:	00813823          	sd	s0,16(sp)
    80007a94:	00113c23          	sd	ra,24(sp)
    80007a98:	00913423          	sd	s1,8(sp)
    80007a9c:	02010413          	addi	s0,sp,32
    80007aa0:	100024f3          	csrr	s1,sstatus
    80007aa4:	100027f3          	csrr	a5,sstatus
    80007aa8:	ffd7f793          	andi	a5,a5,-3
    80007aac:	10079073          	csrw	sstatus,a5
    80007ab0:	ffffe097          	auipc	ra,0xffffe
    80007ab4:	708080e7          	jalr	1800(ra) # 800061b8 <mycpu>
    80007ab8:	07852783          	lw	a5,120(a0)
    80007abc:	02078663          	beqz	a5,80007ae8 <push_off+0x5c>
    80007ac0:	ffffe097          	auipc	ra,0xffffe
    80007ac4:	6f8080e7          	jalr	1784(ra) # 800061b8 <mycpu>
    80007ac8:	07852783          	lw	a5,120(a0)
    80007acc:	01813083          	ld	ra,24(sp)
    80007ad0:	01013403          	ld	s0,16(sp)
    80007ad4:	0017879b          	addiw	a5,a5,1
    80007ad8:	06f52c23          	sw	a5,120(a0)
    80007adc:	00813483          	ld	s1,8(sp)
    80007ae0:	02010113          	addi	sp,sp,32
    80007ae4:	00008067          	ret
    80007ae8:	0014d493          	srli	s1,s1,0x1
    80007aec:	ffffe097          	auipc	ra,0xffffe
    80007af0:	6cc080e7          	jalr	1740(ra) # 800061b8 <mycpu>
    80007af4:	0014f493          	andi	s1,s1,1
    80007af8:	06952e23          	sw	s1,124(a0)
    80007afc:	fc5ff06f          	j	80007ac0 <push_off+0x34>

0000000080007b00 <pop_off>:
    80007b00:	ff010113          	addi	sp,sp,-16
    80007b04:	00813023          	sd	s0,0(sp)
    80007b08:	00113423          	sd	ra,8(sp)
    80007b0c:	01010413          	addi	s0,sp,16
    80007b10:	ffffe097          	auipc	ra,0xffffe
    80007b14:	6a8080e7          	jalr	1704(ra) # 800061b8 <mycpu>
    80007b18:	100027f3          	csrr	a5,sstatus
    80007b1c:	0027f793          	andi	a5,a5,2
    80007b20:	04079663          	bnez	a5,80007b6c <pop_off+0x6c>
    80007b24:	07852783          	lw	a5,120(a0)
    80007b28:	02f05a63          	blez	a5,80007b5c <pop_off+0x5c>
    80007b2c:	fff7871b          	addiw	a4,a5,-1
    80007b30:	06e52c23          	sw	a4,120(a0)
    80007b34:	00071c63          	bnez	a4,80007b4c <pop_off+0x4c>
    80007b38:	07c52783          	lw	a5,124(a0)
    80007b3c:	00078863          	beqz	a5,80007b4c <pop_off+0x4c>
    80007b40:	100027f3          	csrr	a5,sstatus
    80007b44:	0027e793          	ori	a5,a5,2
    80007b48:	10079073          	csrw	sstatus,a5
    80007b4c:	00813083          	ld	ra,8(sp)
    80007b50:	00013403          	ld	s0,0(sp)
    80007b54:	01010113          	addi	sp,sp,16
    80007b58:	00008067          	ret
    80007b5c:	00002517          	auipc	a0,0x2
    80007b60:	a2450513          	addi	a0,a0,-1500 # 80009580 <digits+0x48>
    80007b64:	fffff097          	auipc	ra,0xfffff
    80007b68:	018080e7          	jalr	24(ra) # 80006b7c <panic>
    80007b6c:	00002517          	auipc	a0,0x2
    80007b70:	9fc50513          	addi	a0,a0,-1540 # 80009568 <digits+0x30>
    80007b74:	fffff097          	auipc	ra,0xfffff
    80007b78:	008080e7          	jalr	8(ra) # 80006b7c <panic>

0000000080007b7c <push_on>:
    80007b7c:	fe010113          	addi	sp,sp,-32
    80007b80:	00813823          	sd	s0,16(sp)
    80007b84:	00113c23          	sd	ra,24(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	02010413          	addi	s0,sp,32
    80007b90:	100024f3          	csrr	s1,sstatus
    80007b94:	100027f3          	csrr	a5,sstatus
    80007b98:	0027e793          	ori	a5,a5,2
    80007b9c:	10079073          	csrw	sstatus,a5
    80007ba0:	ffffe097          	auipc	ra,0xffffe
    80007ba4:	618080e7          	jalr	1560(ra) # 800061b8 <mycpu>
    80007ba8:	07852783          	lw	a5,120(a0)
    80007bac:	02078663          	beqz	a5,80007bd8 <push_on+0x5c>
    80007bb0:	ffffe097          	auipc	ra,0xffffe
    80007bb4:	608080e7          	jalr	1544(ra) # 800061b8 <mycpu>
    80007bb8:	07852783          	lw	a5,120(a0)
    80007bbc:	01813083          	ld	ra,24(sp)
    80007bc0:	01013403          	ld	s0,16(sp)
    80007bc4:	0017879b          	addiw	a5,a5,1
    80007bc8:	06f52c23          	sw	a5,120(a0)
    80007bcc:	00813483          	ld	s1,8(sp)
    80007bd0:	02010113          	addi	sp,sp,32
    80007bd4:	00008067          	ret
    80007bd8:	0014d493          	srli	s1,s1,0x1
    80007bdc:	ffffe097          	auipc	ra,0xffffe
    80007be0:	5dc080e7          	jalr	1500(ra) # 800061b8 <mycpu>
    80007be4:	0014f493          	andi	s1,s1,1
    80007be8:	06952e23          	sw	s1,124(a0)
    80007bec:	fc5ff06f          	j	80007bb0 <push_on+0x34>

0000000080007bf0 <pop_on>:
    80007bf0:	ff010113          	addi	sp,sp,-16
    80007bf4:	00813023          	sd	s0,0(sp)
    80007bf8:	00113423          	sd	ra,8(sp)
    80007bfc:	01010413          	addi	s0,sp,16
    80007c00:	ffffe097          	auipc	ra,0xffffe
    80007c04:	5b8080e7          	jalr	1464(ra) # 800061b8 <mycpu>
    80007c08:	100027f3          	csrr	a5,sstatus
    80007c0c:	0027f793          	andi	a5,a5,2
    80007c10:	04078463          	beqz	a5,80007c58 <pop_on+0x68>
    80007c14:	07852783          	lw	a5,120(a0)
    80007c18:	02f05863          	blez	a5,80007c48 <pop_on+0x58>
    80007c1c:	fff7879b          	addiw	a5,a5,-1
    80007c20:	06f52c23          	sw	a5,120(a0)
    80007c24:	07853783          	ld	a5,120(a0)
    80007c28:	00079863          	bnez	a5,80007c38 <pop_on+0x48>
    80007c2c:	100027f3          	csrr	a5,sstatus
    80007c30:	ffd7f793          	andi	a5,a5,-3
    80007c34:	10079073          	csrw	sstatus,a5
    80007c38:	00813083          	ld	ra,8(sp)
    80007c3c:	00013403          	ld	s0,0(sp)
    80007c40:	01010113          	addi	sp,sp,16
    80007c44:	00008067          	ret
    80007c48:	00002517          	auipc	a0,0x2
    80007c4c:	96050513          	addi	a0,a0,-1696 # 800095a8 <digits+0x70>
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	f2c080e7          	jalr	-212(ra) # 80006b7c <panic>
    80007c58:	00002517          	auipc	a0,0x2
    80007c5c:	93050513          	addi	a0,a0,-1744 # 80009588 <digits+0x50>
    80007c60:	fffff097          	auipc	ra,0xfffff
    80007c64:	f1c080e7          	jalr	-228(ra) # 80006b7c <panic>

0000000080007c68 <__memset>:
    80007c68:	ff010113          	addi	sp,sp,-16
    80007c6c:	00813423          	sd	s0,8(sp)
    80007c70:	01010413          	addi	s0,sp,16
    80007c74:	1a060e63          	beqz	a2,80007e30 <__memset+0x1c8>
    80007c78:	40a007b3          	neg	a5,a0
    80007c7c:	0077f793          	andi	a5,a5,7
    80007c80:	00778693          	addi	a3,a5,7
    80007c84:	00b00813          	li	a6,11
    80007c88:	0ff5f593          	andi	a1,a1,255
    80007c8c:	fff6071b          	addiw	a4,a2,-1
    80007c90:	1b06e663          	bltu	a3,a6,80007e3c <__memset+0x1d4>
    80007c94:	1cd76463          	bltu	a4,a3,80007e5c <__memset+0x1f4>
    80007c98:	1a078e63          	beqz	a5,80007e54 <__memset+0x1ec>
    80007c9c:	00b50023          	sb	a1,0(a0)
    80007ca0:	00100713          	li	a4,1
    80007ca4:	1ae78463          	beq	a5,a4,80007e4c <__memset+0x1e4>
    80007ca8:	00b500a3          	sb	a1,1(a0)
    80007cac:	00200713          	li	a4,2
    80007cb0:	1ae78a63          	beq	a5,a4,80007e64 <__memset+0x1fc>
    80007cb4:	00b50123          	sb	a1,2(a0)
    80007cb8:	00300713          	li	a4,3
    80007cbc:	18e78463          	beq	a5,a4,80007e44 <__memset+0x1dc>
    80007cc0:	00b501a3          	sb	a1,3(a0)
    80007cc4:	00400713          	li	a4,4
    80007cc8:	1ae78263          	beq	a5,a4,80007e6c <__memset+0x204>
    80007ccc:	00b50223          	sb	a1,4(a0)
    80007cd0:	00500713          	li	a4,5
    80007cd4:	1ae78063          	beq	a5,a4,80007e74 <__memset+0x20c>
    80007cd8:	00b502a3          	sb	a1,5(a0)
    80007cdc:	00700713          	li	a4,7
    80007ce0:	18e79e63          	bne	a5,a4,80007e7c <__memset+0x214>
    80007ce4:	00b50323          	sb	a1,6(a0)
    80007ce8:	00700e93          	li	t4,7
    80007cec:	00859713          	slli	a4,a1,0x8
    80007cf0:	00e5e733          	or	a4,a1,a4
    80007cf4:	01059e13          	slli	t3,a1,0x10
    80007cf8:	01c76e33          	or	t3,a4,t3
    80007cfc:	01859313          	slli	t1,a1,0x18
    80007d00:	006e6333          	or	t1,t3,t1
    80007d04:	02059893          	slli	a7,a1,0x20
    80007d08:	40f60e3b          	subw	t3,a2,a5
    80007d0c:	011368b3          	or	a7,t1,a7
    80007d10:	02859813          	slli	a6,a1,0x28
    80007d14:	0108e833          	or	a6,a7,a6
    80007d18:	03059693          	slli	a3,a1,0x30
    80007d1c:	003e589b          	srliw	a7,t3,0x3
    80007d20:	00d866b3          	or	a3,a6,a3
    80007d24:	03859713          	slli	a4,a1,0x38
    80007d28:	00389813          	slli	a6,a7,0x3
    80007d2c:	00f507b3          	add	a5,a0,a5
    80007d30:	00e6e733          	or	a4,a3,a4
    80007d34:	000e089b          	sext.w	a7,t3
    80007d38:	00f806b3          	add	a3,a6,a5
    80007d3c:	00e7b023          	sd	a4,0(a5)
    80007d40:	00878793          	addi	a5,a5,8
    80007d44:	fed79ce3          	bne	a5,a3,80007d3c <__memset+0xd4>
    80007d48:	ff8e7793          	andi	a5,t3,-8
    80007d4c:	0007871b          	sext.w	a4,a5
    80007d50:	01d787bb          	addw	a5,a5,t4
    80007d54:	0ce88e63          	beq	a7,a4,80007e30 <__memset+0x1c8>
    80007d58:	00f50733          	add	a4,a0,a5
    80007d5c:	00b70023          	sb	a1,0(a4)
    80007d60:	0017871b          	addiw	a4,a5,1
    80007d64:	0cc77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007d68:	00e50733          	add	a4,a0,a4
    80007d6c:	00b70023          	sb	a1,0(a4)
    80007d70:	0027871b          	addiw	a4,a5,2
    80007d74:	0ac77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007d78:	00e50733          	add	a4,a0,a4
    80007d7c:	00b70023          	sb	a1,0(a4)
    80007d80:	0037871b          	addiw	a4,a5,3
    80007d84:	0ac77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007d88:	00e50733          	add	a4,a0,a4
    80007d8c:	00b70023          	sb	a1,0(a4)
    80007d90:	0047871b          	addiw	a4,a5,4
    80007d94:	08c77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007d98:	00e50733          	add	a4,a0,a4
    80007d9c:	00b70023          	sb	a1,0(a4)
    80007da0:	0057871b          	addiw	a4,a5,5
    80007da4:	08c77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007da8:	00e50733          	add	a4,a0,a4
    80007dac:	00b70023          	sb	a1,0(a4)
    80007db0:	0067871b          	addiw	a4,a5,6
    80007db4:	06c77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007db8:	00e50733          	add	a4,a0,a4
    80007dbc:	00b70023          	sb	a1,0(a4)
    80007dc0:	0077871b          	addiw	a4,a5,7
    80007dc4:	06c77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007dc8:	00e50733          	add	a4,a0,a4
    80007dcc:	00b70023          	sb	a1,0(a4)
    80007dd0:	0087871b          	addiw	a4,a5,8
    80007dd4:	04c77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007dd8:	00e50733          	add	a4,a0,a4
    80007ddc:	00b70023          	sb	a1,0(a4)
    80007de0:	0097871b          	addiw	a4,a5,9
    80007de4:	04c77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007de8:	00e50733          	add	a4,a0,a4
    80007dec:	00b70023          	sb	a1,0(a4)
    80007df0:	00a7871b          	addiw	a4,a5,10
    80007df4:	02c77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007df8:	00e50733          	add	a4,a0,a4
    80007dfc:	00b70023          	sb	a1,0(a4)
    80007e00:	00b7871b          	addiw	a4,a5,11
    80007e04:	02c77663          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007e08:	00e50733          	add	a4,a0,a4
    80007e0c:	00b70023          	sb	a1,0(a4)
    80007e10:	00c7871b          	addiw	a4,a5,12
    80007e14:	00c77e63          	bgeu	a4,a2,80007e30 <__memset+0x1c8>
    80007e18:	00e50733          	add	a4,a0,a4
    80007e1c:	00b70023          	sb	a1,0(a4)
    80007e20:	00d7879b          	addiw	a5,a5,13
    80007e24:	00c7f663          	bgeu	a5,a2,80007e30 <__memset+0x1c8>
    80007e28:	00f507b3          	add	a5,a0,a5
    80007e2c:	00b78023          	sb	a1,0(a5)
    80007e30:	00813403          	ld	s0,8(sp)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret
    80007e3c:	00b00693          	li	a3,11
    80007e40:	e55ff06f          	j	80007c94 <__memset+0x2c>
    80007e44:	00300e93          	li	t4,3
    80007e48:	ea5ff06f          	j	80007cec <__memset+0x84>
    80007e4c:	00100e93          	li	t4,1
    80007e50:	e9dff06f          	j	80007cec <__memset+0x84>
    80007e54:	00000e93          	li	t4,0
    80007e58:	e95ff06f          	j	80007cec <__memset+0x84>
    80007e5c:	00000793          	li	a5,0
    80007e60:	ef9ff06f          	j	80007d58 <__memset+0xf0>
    80007e64:	00200e93          	li	t4,2
    80007e68:	e85ff06f          	j	80007cec <__memset+0x84>
    80007e6c:	00400e93          	li	t4,4
    80007e70:	e7dff06f          	j	80007cec <__memset+0x84>
    80007e74:	00500e93          	li	t4,5
    80007e78:	e75ff06f          	j	80007cec <__memset+0x84>
    80007e7c:	00600e93          	li	t4,6
    80007e80:	e6dff06f          	j	80007cec <__memset+0x84>

0000000080007e84 <__memmove>:
    80007e84:	ff010113          	addi	sp,sp,-16
    80007e88:	00813423          	sd	s0,8(sp)
    80007e8c:	01010413          	addi	s0,sp,16
    80007e90:	0e060863          	beqz	a2,80007f80 <__memmove+0xfc>
    80007e94:	fff6069b          	addiw	a3,a2,-1
    80007e98:	0006881b          	sext.w	a6,a3
    80007e9c:	0ea5e863          	bltu	a1,a0,80007f8c <__memmove+0x108>
    80007ea0:	00758713          	addi	a4,a1,7
    80007ea4:	00a5e7b3          	or	a5,a1,a0
    80007ea8:	40a70733          	sub	a4,a4,a0
    80007eac:	0077f793          	andi	a5,a5,7
    80007eb0:	00f73713          	sltiu	a4,a4,15
    80007eb4:	00174713          	xori	a4,a4,1
    80007eb8:	0017b793          	seqz	a5,a5
    80007ebc:	00e7f7b3          	and	a5,a5,a4
    80007ec0:	10078863          	beqz	a5,80007fd0 <__memmove+0x14c>
    80007ec4:	00900793          	li	a5,9
    80007ec8:	1107f463          	bgeu	a5,a6,80007fd0 <__memmove+0x14c>
    80007ecc:	0036581b          	srliw	a6,a2,0x3
    80007ed0:	fff8081b          	addiw	a6,a6,-1
    80007ed4:	02081813          	slli	a6,a6,0x20
    80007ed8:	01d85893          	srli	a7,a6,0x1d
    80007edc:	00858813          	addi	a6,a1,8
    80007ee0:	00058793          	mv	a5,a1
    80007ee4:	00050713          	mv	a4,a0
    80007ee8:	01088833          	add	a6,a7,a6
    80007eec:	0007b883          	ld	a7,0(a5)
    80007ef0:	00878793          	addi	a5,a5,8
    80007ef4:	00870713          	addi	a4,a4,8
    80007ef8:	ff173c23          	sd	a7,-8(a4)
    80007efc:	ff0798e3          	bne	a5,a6,80007eec <__memmove+0x68>
    80007f00:	ff867713          	andi	a4,a2,-8
    80007f04:	02071793          	slli	a5,a4,0x20
    80007f08:	0207d793          	srli	a5,a5,0x20
    80007f0c:	00f585b3          	add	a1,a1,a5
    80007f10:	40e686bb          	subw	a3,a3,a4
    80007f14:	00f507b3          	add	a5,a0,a5
    80007f18:	06e60463          	beq	a2,a4,80007f80 <__memmove+0xfc>
    80007f1c:	0005c703          	lbu	a4,0(a1)
    80007f20:	00e78023          	sb	a4,0(a5)
    80007f24:	04068e63          	beqz	a3,80007f80 <__memmove+0xfc>
    80007f28:	0015c603          	lbu	a2,1(a1)
    80007f2c:	00100713          	li	a4,1
    80007f30:	00c780a3          	sb	a2,1(a5)
    80007f34:	04e68663          	beq	a3,a4,80007f80 <__memmove+0xfc>
    80007f38:	0025c603          	lbu	a2,2(a1)
    80007f3c:	00200713          	li	a4,2
    80007f40:	00c78123          	sb	a2,2(a5)
    80007f44:	02e68e63          	beq	a3,a4,80007f80 <__memmove+0xfc>
    80007f48:	0035c603          	lbu	a2,3(a1)
    80007f4c:	00300713          	li	a4,3
    80007f50:	00c781a3          	sb	a2,3(a5)
    80007f54:	02e68663          	beq	a3,a4,80007f80 <__memmove+0xfc>
    80007f58:	0045c603          	lbu	a2,4(a1)
    80007f5c:	00400713          	li	a4,4
    80007f60:	00c78223          	sb	a2,4(a5)
    80007f64:	00e68e63          	beq	a3,a4,80007f80 <__memmove+0xfc>
    80007f68:	0055c603          	lbu	a2,5(a1)
    80007f6c:	00500713          	li	a4,5
    80007f70:	00c782a3          	sb	a2,5(a5)
    80007f74:	00e68663          	beq	a3,a4,80007f80 <__memmove+0xfc>
    80007f78:	0065c703          	lbu	a4,6(a1)
    80007f7c:	00e78323          	sb	a4,6(a5)
    80007f80:	00813403          	ld	s0,8(sp)
    80007f84:	01010113          	addi	sp,sp,16
    80007f88:	00008067          	ret
    80007f8c:	02061713          	slli	a4,a2,0x20
    80007f90:	02075713          	srli	a4,a4,0x20
    80007f94:	00e587b3          	add	a5,a1,a4
    80007f98:	f0f574e3          	bgeu	a0,a5,80007ea0 <__memmove+0x1c>
    80007f9c:	02069613          	slli	a2,a3,0x20
    80007fa0:	02065613          	srli	a2,a2,0x20
    80007fa4:	fff64613          	not	a2,a2
    80007fa8:	00e50733          	add	a4,a0,a4
    80007fac:	00c78633          	add	a2,a5,a2
    80007fb0:	fff7c683          	lbu	a3,-1(a5)
    80007fb4:	fff78793          	addi	a5,a5,-1
    80007fb8:	fff70713          	addi	a4,a4,-1
    80007fbc:	00d70023          	sb	a3,0(a4)
    80007fc0:	fec798e3          	bne	a5,a2,80007fb0 <__memmove+0x12c>
    80007fc4:	00813403          	ld	s0,8(sp)
    80007fc8:	01010113          	addi	sp,sp,16
    80007fcc:	00008067          	ret
    80007fd0:	02069713          	slli	a4,a3,0x20
    80007fd4:	02075713          	srli	a4,a4,0x20
    80007fd8:	00170713          	addi	a4,a4,1
    80007fdc:	00e50733          	add	a4,a0,a4
    80007fe0:	00050793          	mv	a5,a0
    80007fe4:	0005c683          	lbu	a3,0(a1)
    80007fe8:	00178793          	addi	a5,a5,1
    80007fec:	00158593          	addi	a1,a1,1
    80007ff0:	fed78fa3          	sb	a3,-1(a5)
    80007ff4:	fee798e3          	bne	a5,a4,80007fe4 <__memmove+0x160>
    80007ff8:	f89ff06f          	j	80007f80 <__memmove+0xfc>

0000000080007ffc <__putc>:
    80007ffc:	fe010113          	addi	sp,sp,-32
    80008000:	00813823          	sd	s0,16(sp)
    80008004:	00113c23          	sd	ra,24(sp)
    80008008:	02010413          	addi	s0,sp,32
    8000800c:	00050793          	mv	a5,a0
    80008010:	fef40593          	addi	a1,s0,-17
    80008014:	00100613          	li	a2,1
    80008018:	00000513          	li	a0,0
    8000801c:	fef407a3          	sb	a5,-17(s0)
    80008020:	fffff097          	auipc	ra,0xfffff
    80008024:	b3c080e7          	jalr	-1220(ra) # 80006b5c <console_write>
    80008028:	01813083          	ld	ra,24(sp)
    8000802c:	01013403          	ld	s0,16(sp)
    80008030:	02010113          	addi	sp,sp,32
    80008034:	00008067          	ret

0000000080008038 <__getc>:
    80008038:	fe010113          	addi	sp,sp,-32
    8000803c:	00813823          	sd	s0,16(sp)
    80008040:	00113c23          	sd	ra,24(sp)
    80008044:	02010413          	addi	s0,sp,32
    80008048:	fe840593          	addi	a1,s0,-24
    8000804c:	00100613          	li	a2,1
    80008050:	00000513          	li	a0,0
    80008054:	fffff097          	auipc	ra,0xfffff
    80008058:	ae8080e7          	jalr	-1304(ra) # 80006b3c <console_read>
    8000805c:	fe844503          	lbu	a0,-24(s0)
    80008060:	01813083          	ld	ra,24(sp)
    80008064:	01013403          	ld	s0,16(sp)
    80008068:	02010113          	addi	sp,sp,32
    8000806c:	00008067          	ret

0000000080008070 <console_handler>:
    80008070:	fe010113          	addi	sp,sp,-32
    80008074:	00813823          	sd	s0,16(sp)
    80008078:	00113c23          	sd	ra,24(sp)
    8000807c:	00913423          	sd	s1,8(sp)
    80008080:	02010413          	addi	s0,sp,32
    80008084:	14202773          	csrr	a4,scause
    80008088:	100027f3          	csrr	a5,sstatus
    8000808c:	0027f793          	andi	a5,a5,2
    80008090:	06079e63          	bnez	a5,8000810c <console_handler+0x9c>
    80008094:	00074c63          	bltz	a4,800080ac <console_handler+0x3c>
    80008098:	01813083          	ld	ra,24(sp)
    8000809c:	01013403          	ld	s0,16(sp)
    800080a0:	00813483          	ld	s1,8(sp)
    800080a4:	02010113          	addi	sp,sp,32
    800080a8:	00008067          	ret
    800080ac:	0ff77713          	andi	a4,a4,255
    800080b0:	00900793          	li	a5,9
    800080b4:	fef712e3          	bne	a4,a5,80008098 <console_handler+0x28>
    800080b8:	ffffe097          	auipc	ra,0xffffe
    800080bc:	6dc080e7          	jalr	1756(ra) # 80006794 <plic_claim>
    800080c0:	00a00793          	li	a5,10
    800080c4:	00050493          	mv	s1,a0
    800080c8:	02f50c63          	beq	a0,a5,80008100 <console_handler+0x90>
    800080cc:	fc0506e3          	beqz	a0,80008098 <console_handler+0x28>
    800080d0:	00050593          	mv	a1,a0
    800080d4:	00001517          	auipc	a0,0x1
    800080d8:	3dc50513          	addi	a0,a0,988 # 800094b0 <_ZL6digits+0xf8>
    800080dc:	fffff097          	auipc	ra,0xfffff
    800080e0:	afc080e7          	jalr	-1284(ra) # 80006bd8 <__printf>
    800080e4:	01013403          	ld	s0,16(sp)
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	00048513          	mv	a0,s1
    800080f0:	00813483          	ld	s1,8(sp)
    800080f4:	02010113          	addi	sp,sp,32
    800080f8:	ffffe317          	auipc	t1,0xffffe
    800080fc:	6d430067          	jr	1748(t1) # 800067cc <plic_complete>
    80008100:	fffff097          	auipc	ra,0xfffff
    80008104:	3e0080e7          	jalr	992(ra) # 800074e0 <uartintr>
    80008108:	fddff06f          	j	800080e4 <console_handler+0x74>
    8000810c:	00001517          	auipc	a0,0x1
    80008110:	4a450513          	addi	a0,a0,1188 # 800095b0 <digits+0x78>
    80008114:	fffff097          	auipc	ra,0xfffff
    80008118:	a68080e7          	jalr	-1432(ra) # 80006b7c <panic>
	...
