
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a7013103          	ld	sp,-1424(sp) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	18c060ef          	jal	ra,800061a8 <start>

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
    80001080:	075020ef          	jal	ra,800038f4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	350080e7          	jalr	848(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800014a0:	320080e7          	jalr	800(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800014c0:	300080e7          	jalr	768(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	364080e7          	jalr	868(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	c4050513          	addi	a0,a0,-960 # 80009110 <CONSOLE_STATUS+0x100>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	2e4080e7          	jalr	740(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001538:	288080e7          	jalr	648(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001558:	268080e7          	jalr	616(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	2cc080e7          	jalr	716(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	ba850513          	addi	a0,a0,-1112 # 80009110 <CONSOLE_STATUS+0x100>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	24c080e7          	jalr	588(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800015e0:	1e0080e7          	jalr	480(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	244080e7          	jalr	580(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
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
    8000162c:	194080e7          	jalr	404(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001658:	168080e7          	jalr	360(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	1cc080e7          	jalr	460(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	aa850513          	addi	a0,a0,-1368 # 80009110 <CONSOLE_STATUS+0x100>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	14c080e7          	jalr	332(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800016bc:	41872703          	lw	a4,1048(a4) # 8000bad0 <head>
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
    800016e0:	3f448493          	addi	s1,s1,1012 # 8000bad0 <head>
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
    80001708:	b68080e7          	jalr	-1176(ra) # 8000826c <__putc>
        sem_signal(spaceAvailable);
    8000170c:	0204b503          	ld	a0,32(s1)
    80001710:	00000097          	auipc	ra,0x0
    80001714:	cec080e7          	jalr	-788(ra) # 800013fc <sem_signal>
    while(head!=10){
    80001718:	0000a717          	auipc	a4,0xa
    8000171c:	3b872703          	lw	a4,952(a4) # 8000bad0 <head>
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
    80001744:	3b872703          	lw	a4,952(a4) # 8000baf8 <tail>
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
    80001768:	36c48493          	addi	s1,s1,876 # 8000bad0 <head>
    8000176c:	0204b503          	ld	a0,32(s1)
    80001770:	00000097          	auipc	ra,0x0
    80001774:	c60080e7          	jalr	-928(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001778:	0284a783          	lw	a5,40(s1)
    8000177c:	0000a717          	auipc	a4,0xa
    80001780:	17470713          	addi	a4,a4,372 # 8000b8f0 <string>
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
    800017ac:	35072703          	lw	a4,848(a4) # 8000baf8 <tail>
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
    800017f0:	b64080e7          	jalr	-1180(ra) # 80003350 <_Znwm>
    800017f4:	00050493          	mv	s1,a0
    800017f8:	00000613          	li	a2,0
    800017fc:	00000597          	auipc	a1,0x0
    80001800:	c8458593          	addi	a1,a1,-892 # 80001480 <_Z15thread1FunctionPv>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	ce8080e7          	jalr	-792(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000180c:	00048513          	mv	a0,s1
    80001810:	00002097          	auipc	ra,0x2
    80001814:	c10080e7          	jalr	-1008(ra) # 80003420 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001818:	02000513          	li	a0,32
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	b34080e7          	jalr	-1228(ra) # 80003350 <_Znwm>
    80001824:	00050913          	mv	s2,a0
    80001828:	00000613          	li	a2,0
    8000182c:	00000597          	auipc	a1,0x0
    80001830:	cec58593          	addi	a1,a1,-788 # 80001518 <_Z15thread2FunctionPv>
    80001834:	00002097          	auipc	ra,0x2
    80001838:	cb8080e7          	jalr	-840(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000183c:	00090513          	mv	a0,s2
    80001840:	00002097          	auipc	ra,0x2
    80001844:	be0080e7          	jalr	-1056(ra) # 80003420 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001848:	00002097          	auipc	ra,0x2
    8000184c:	eec080e7          	jalr	-276(ra) # 80003734 <_ZN5Riscv16enableInterruptsEv>
    80001850:	01c0006f          	j	8000186c <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001854:	00008517          	auipc	a0,0x8
    80001858:	81450513          	addi	a0,a0,-2028 # 80009068 <CONSOLE_STATUS+0x58>
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	f60080e7          	jalr	-160(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001898:	f28080e7          	jalr	-216(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	eb8080e7          	jalr	-328(ra) # 80003754 <_ZN5Riscv17disableInterruptsEv>
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
    800018c8:	ab4080e7          	jalr	-1356(ra) # 80003378 <_ZdlPv>
    800018cc:	00090513          	mv	a0,s2
    800018d0:	0000b097          	auipc	ra,0xb
    800018d4:	3a8080e7          	jalr	936(ra) # 8000cc78 <_Unwind_Resume>
    800018d8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	a98080e7          	jalr	-1384(ra) # 80003378 <_ZdlPv>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	0000b097          	auipc	ra,0xb
    800018f0:	38c080e7          	jalr	908(ra) # 8000cc78 <_Unwind_Resume>

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
    80001914:	a40080e7          	jalr	-1472(ra) # 80003350 <_Znwm>
    80001918:	00050493          	mv	s1,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	b3458593          	addi	a1,a1,-1228 # 80001454 <_Z4idlePv>
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	bc4080e7          	jalr	-1084(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001930:	00048513          	mv	a0,s1
    80001934:	00002097          	auipc	ra,0x2
    80001938:	aec080e7          	jalr	-1300(ra) # 80003420 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    8000193c:	02000513          	li	a0,32
    80001940:	00002097          	auipc	ra,0x2
    80001944:	a10080e7          	jalr	-1520(ra) # 80003350 <_Znwm>
    80001948:	00050913          	mv	s2,a0
    8000194c:	00000613          	li	a2,0
    80001950:	00000597          	auipc	a1,0x0
    80001954:	b3058593          	addi	a1,a1,-1232 # 80001480 <_Z15thread1FunctionPv>
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	b94080e7          	jalr	-1132(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001960:	00090513          	mv	a0,s2
    80001964:	00002097          	auipc	ra,0x2
    80001968:	abc080e7          	jalr	-1348(ra) # 80003420 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    8000196c:	02000513          	li	a0,32
    80001970:	00002097          	auipc	ra,0x2
    80001974:	9e0080e7          	jalr	-1568(ra) # 80003350 <_Znwm>
    80001978:	00050913          	mv	s2,a0
    8000197c:	00000613          	li	a2,0
    80001980:	00000597          	auipc	a1,0x0
    80001984:	c8c58593          	addi	a1,a1,-884 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	b64080e7          	jalr	-1180(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001990:	00090513          	mv	a0,s2
    80001994:	00002097          	auipc	ra,0x2
    80001998:	a8c080e7          	jalr	-1396(ra) # 80003420 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	d98080e7          	jalr	-616(ra) # 80003734 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    800019a4:	0084b783          	ld	a5,8(s1)
    800019a8:	0387a703          	lw	a4,56(a5)
    800019ac:	00300793          	li	a5,3
    800019b0:	fef71ae3          	bne	a4,a5,800019a4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    800019b4:	00007517          	auipc	a0,0x7
    800019b8:	6c450513          	addi	a0,a0,1732 # 80009078 <CONSOLE_STATUS+0x68>
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	e00080e7          	jalr	-512(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019c4:	00002097          	auipc	ra,0x2
    800019c8:	d90080e7          	jalr	-624(ra) # 80003754 <_ZN5Riscv17disableInterruptsEv>
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
    800019f0:	98c080e7          	jalr	-1652(ra) # 80003378 <_ZdlPv>
    800019f4:	00090513          	mv	a0,s2
    800019f8:	0000b097          	auipc	ra,0xb
    800019fc:	280080e7          	jalr	640(ra) # 8000cc78 <_Unwind_Resume>
    80001a00:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a04:	00090513          	mv	a0,s2
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	970080e7          	jalr	-1680(ra) # 80003378 <_ZdlPv>
    80001a10:	00048513          	mv	a0,s1
    80001a14:	0000b097          	auipc	ra,0xb
    80001a18:	264080e7          	jalr	612(ra) # 8000cc78 <_Unwind_Resume>
    80001a1c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	954080e7          	jalr	-1708(ra) # 80003378 <_ZdlPv>
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	0000b097          	auipc	ra,0xb
    80001a34:	248080e7          	jalr	584(ra) # 8000cc78 <_Unwind_Resume>

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
    80001a70:	d50080e7          	jalr	-688(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001ab4:	d0c080e7          	jalr	-756(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001b08:	cb8080e7          	jalr	-840(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001b50:	c70080e7          	jalr	-912(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001b94:	c2c080e7          	jalr	-980(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
            return;
    80001b98:	f21ff06f          	j	80001ab8 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001b9c:	00007517          	auipc	a0,0x7
    80001ba0:	4fc50513          	addi	a0,a0,1276 # 80009098 <CONSOLE_STATUS+0x88>
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	c18080e7          	jalr	-1000(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001bcc:	bf4080e7          	jalr	-1036(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001bd0:	0000a797          	auipc	a5,0xa
    80001bd4:	eb07b783          	ld	a5,-336(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bd8:	0007b503          	ld	a0,0(a5)
    80001bdc:	0000a797          	auipc	a5,0xa
    80001be0:	e7c7b783          	ld	a5,-388(a5) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001c08:	bb8080e7          	jalr	-1096(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80001c0c:	00813083          	ld	ra,8(sp)
    80001c10:	00013403          	ld	s0,0(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret
        Riscv::printString("OK\n");
    80001c1c:	00007517          	auipc	a0,0x7
    80001c20:	47c50513          	addi	a0,a0,1148 # 80009098 <CONSOLE_STATUS+0x88>
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	b98080e7          	jalr	-1128(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001c58:	b68080e7          	jalr	-1176(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001ca4:	b8c080e7          	jalr	-1140(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001ca8:	00007517          	auipc	a0,0x7
    80001cac:	46850513          	addi	a0,a0,1128 # 80009110 <CONSOLE_STATUS+0x100>
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	b0c080e7          	jalr	-1268(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001cb8:	00291793          	slli	a5,s2,0x2
    80001cbc:	01278933          	add	s2,a5,s2
    80001cc0:	00191913          	slli	s2,s2,0x1
    80001cc4:	03390863          	beq	s2,s3,80001cf4 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001cc8:	00007517          	auipc	a0,0x7
    80001ccc:	3c850513          	addi	a0,a0,968 # 80009090 <CONSOLE_STATUS+0x80>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	aec080e7          	jalr	-1300(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001d00:	ac0080e7          	jalr	-1344(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001d24:	a9c080e7          	jalr	-1380(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001d50:	a70080e7          	jalr	-1424(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret
        Riscv::printString("OK\n");
    80001d64:	00007517          	auipc	a0,0x7
    80001d68:	33450513          	addi	a0,a0,820 # 80009098 <CONSOLE_STATUS+0x88>
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	a50080e7          	jalr	-1456(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001d9c:	a24080e7          	jalr	-1500(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001de0:	9e0080e7          	jalr	-1568(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001e68:	958080e7          	jalr	-1704(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
                return;
    80001e6c:	f79ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001e70:	00007517          	auipc	a0,0x7
    80001e74:	27850513          	addi	a0,a0,632 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e78:	00002097          	auipc	ra,0x2
    80001e7c:	944080e7          	jalr	-1724(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001ee0:	8e0080e7          	jalr	-1824(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
                return;
    80001ee4:	f01ff06f          	j	80001de4 <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	20050513          	addi	a0,a0,512 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001ef0:	00002097          	auipc	ra,0x2
    80001ef4:	8cc080e7          	jalr	-1844(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001f10:	8b0080e7          	jalr	-1872(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80001f34:	714080e7          	jalr	1812(ra) # 80003644 <_ZN14PeriodicThreadC1Em>
    80001f38:	0000a797          	auipc	a5,0xa
    80001f3c:	a0878793          	addi	a5,a5,-1528 # 8000b940 <_ZTV12TestPeriodic+0x10>
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
    80001f78:	3dc080e7          	jalr	988(ra) # 80003350 <_Znwm>
    80001f7c:	00050913          	mv	s2,a0
    80001f80:	03200593          	li	a1,50
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	f94080e7          	jalr	-108(ra) # 80001f18 <_ZN12TestPeriodicC1Em>
    t->start();
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	490080e7          	jalr	1168(ra) # 80003420 <_ZN6Thread5startEv>
    while(true)
    80001f98:	0000006f          	j	80001f98 <_Z11threadTest3v+0x40>
    80001f9c:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001fa0:	00090513          	mv	a0,s2
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	3d4080e7          	jalr	980(ra) # 80003378 <_ZdlPv>
    80001fac:	00048513          	mv	a0,s1
    80001fb0:	0000b097          	auipc	ra,0xb
    80001fb4:	cc8080e7          	jalr	-824(ra) # 8000cc78 <_Unwind_Resume>

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
    80001fec:	7d4080e7          	jalr	2004(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    80001ff0:	02c00513          	li	a0,44
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	35c080e7          	jalr	860(ra) # 80003350 <_Znwm>
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
    80002078:	304080e7          	jalr	772(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m3;
    8000207c:	000a0513          	mv	a0,s4
    80002080:	00001097          	auipc	ra,0x1
    80002084:	2f8080e7          	jalr	760(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m4;
    80002088:	000a8513          	mv	a0,s5
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	2ec080e7          	jalr	748(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m2;
    80002094:	00098513          	mv	a0,s3
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	2e0080e7          	jalr	736(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m5;
    800020a0:	000b0513          	mv	a0,s6
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	2d4080e7          	jalr	724(ra) # 80003378 <_ZdlPv>
    delete o;
    800020ac:	00048863          	beqz	s1,800020bc <_Z10mallocTestv+0x104>
    800020b0:	00048513          	mv	a0,s1
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	2c4080e7          	jalr	708(ra) # 80003378 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800020bc:	00007517          	auipc	a0,0x7
    800020c0:	05c50513          	addi	a0,a0,92 # 80009118 <CONSOLE_STATUS+0x108>
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	6f8080e7          	jalr	1784(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    800020cc:	0140006f          	j	800020e0 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    800020d0:	00007517          	auipc	a0,0x7
    800020d4:	fc050513          	addi	a0,a0,-64 # 80009090 <CONSOLE_STATUS+0x80>
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	6e4080e7          	jalr	1764(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80002128:	698080e7          	jalr	1688(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    8000212c:	0000a797          	auipc	a5,0xa
    80002130:	92c7b783          	ld	a5,-1748(a5) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002134:	0007b503          	ld	a0,0(a5)
    80002138:	0000a797          	auipc	a5,0xa
    8000213c:	9487b783          	ld	a5,-1720(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002164:	65c080e7          	jalr	1628(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    8000217c:	0000a797          	auipc	a5,0xa
    80002180:	9047b783          	ld	a5,-1788(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002184:	0007b503          	ld	a0,0(a5)
    80002188:	0000a797          	auipc	a5,0xa
    8000218c:	8d07b783          	ld	a5,-1840(a5) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    800021d0:	1ac080e7          	jalr	428(ra) # 80003378 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800021d4:	00007517          	auipc	a0,0x7
    800021d8:	fa450513          	addi	a0,a0,-92 # 80009178 <CONSOLE_STATUS+0x168>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	5e0080e7          	jalr	1504(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    800021e4:	f85ff06f          	j	80002168 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800021e8:	00007517          	auipc	a0,0x7
    800021ec:	ea850513          	addi	a0,a0,-344 # 80009090 <CONSOLE_STATUS+0x80>
    800021f0:	00001097          	auipc	ra,0x1
    800021f4:	5cc080e7          	jalr	1484(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        return;
    800021f8:	f71ff06f          	j	80002168 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    800021fc:	00007517          	auipc	a0,0x7
    80002200:	e9450513          	addi	a0,a0,-364 # 80009090 <CONSOLE_STATUS+0x80>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	5b8080e7          	jalr	1464(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    8000224c:	574080e7          	jalr	1396(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    80002294:	52c080e7          	jalr	1324(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800022d4:	0a8080e7          	jalr	168(ra) # 80003378 <_ZdlPv>
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
    80002348:	034080e7          	jalr	52(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m[4];
    8000234c:	f8043503          	ld	a0,-128(s0)
    80002350:	00050663          	beqz	a0,8000235c <_Z17mallocGapFillTestv+0x14c>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	024080e7          	jalr	36(ra) # 80003378 <_ZdlPv>
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
    800023a4:	41c080e7          	jalr	1052(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        return;
    800023a8:	ef1ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023ac:	00007517          	auipc	a0,0x7
    800023b0:	ce450513          	addi	a0,a0,-796 # 80009090 <CONSOLE_STATUS+0x80>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	408080e7          	jalr	1032(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        return;
    800023bc:	eddff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023c0:	00007517          	auipc	a0,0x7
    800023c4:	cd050513          	addi	a0,a0,-816 # 80009090 <CONSOLE_STATUS+0x80>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	3f4080e7          	jalr	1012(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        return;
    800023d0:	ec9ff06f          	j	80002298 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    800023d4:	00007517          	auipc	a0,0x7
    800023d8:	cbc50513          	addi	a0,a0,-836 # 80009090 <CONSOLE_STATUS+0x80>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	3e0080e7          	jalr	992(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    8000240c:	f70080e7          	jalr	-144(ra) # 80003378 <_ZdlPv>
    80002410:	fd9ff06f          	j	800023e8 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002414:	00048513          	mv	a0,s1
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	f60080e7          	jalr	-160(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp2;
    80002420:	00090513          	mv	a0,s2
    80002424:	00001097          	auipc	ra,0x1
    80002428:	f54080e7          	jalr	-172(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp3;
    8000242c:	00098513          	mv	a0,s3
    80002430:	00001097          	auipc	ra,0x1
    80002434:	f48080e7          	jalr	-184(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp4;
    80002438:	000c0513          	mv	a0,s8
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	f3c080e7          	jalr	-196(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp5;
    80002444:	000b8513          	mv	a0,s7
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	f30080e7          	jalr	-208(ra) # 80003378 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002450:	00007517          	auipc	a0,0x7
    80002454:	da850513          	addi	a0,a0,-600 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	364080e7          	jalr	868(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
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
    800024cc:	62850513          	addi	a0,a0,1576 # 8000baf0 <spaceAvailable>
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	e9c080e7          	jalr	-356(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    800024d8:	00000593          	li	a1,0
    800024dc:	00009517          	auipc	a0,0x9
    800024e0:	5fc50513          	addi	a0,a0,1532 # 8000bad8 <itemAvailable>
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
    80002530:	404080e7          	jalr	1028(ra) # 80002930 <_ZN3PCB10isFinishedEv>
    80002534:	fe0506e3          	beqz	a0,80002520 <_Z8semTest1v+0x6c>
    80002538:	fe843503          	ld	a0,-24(s0)
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	3f4080e7          	jalr	1012(ra) # 80002930 <_ZN3PCB10isFinishedEv>
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
    800025c4:	35078793          	addi	a5,a5,848 # 8000b910 <_ZTV14PeriodicThread+0x10>
    800025c8:	00f53023          	sd	a5,0(a0)
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	cc8080e7          	jalr	-824(ra) # 80003294 <_ZN6ThreadD1Ev>
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
    80002600:	31478793          	addi	a5,a5,788 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002604:	00f53023          	sd	a5,0(a0)
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	c8c080e7          	jalr	-884(ra) # 80003294 <_ZN6ThreadD1Ev>
    80002610:	00048513          	mv	a0,s1
    80002614:	00001097          	auipc	ra,0x1
    80002618:	d64080e7          	jalr	-668(ra) # 80003378 <_ZdlPv>
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
    80002644:	2d078793          	addi	a5,a5,720 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002648:	00f53023          	sd	a5,0(a0)
    8000264c:	00001097          	auipc	ra,0x1
    80002650:	c48080e7          	jalr	-952(ra) # 80003294 <_ZN6ThreadD1Ev>
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
    80002680:	29478793          	addi	a5,a5,660 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002684:	00f53023          	sd	a5,0(a0)
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	c0c080e7          	jalr	-1012(ra) # 80003294 <_ZN6ThreadD1Ev>
    80002690:	00048513          	mv	a0,s1
    80002694:	00001097          	auipc	ra,0x1
    80002698:	ce4080e7          	jalr	-796(ra) # 80003378 <_ZdlPv>
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
    800026cc:	0f4080e7          	jalr	244(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	0cc080e7          	jalr	204(ra) # 8000379c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800026d8:	00009797          	auipc	a5,0x9
    800026dc:	4287b783          	ld	a5,1064(a5) # 8000bb00 <_ZN3PCB7runningE>
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
    80002750:	a28080e7          	jalr	-1496(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
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
    80002798:	9e0080e7          	jalr	-1568(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
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
    800027c4:	3404b483          	ld	s1,832(s1) # 8000bb00 <_ZN3PCB7runningE>
    800027c8:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800027cc:	00100793          	li	a5,1
    800027d0:	04f70063          	beq	a4,a5,80002810 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	9f4080e7          	jalr	-1548(ra) # 800031c8 <_ZN9Scheduler3getEv>
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	32a7b223          	sd	a0,804(a5) # 8000bb00 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    800027e4:	00100793          	li	a5,1
    800027e8:	02f52c23          	sw	a5,56(a0)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    800027ec:	04050593          	addi	a1,a0,64
    800027f0:	04048513          	addi	a0,s1,64
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	a34080e7          	jalr	-1484(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret
        Scheduler::put(old);
    80002810:	00048513          	mv	a0,s1
    80002814:	00001097          	auipc	ra,0x1
    80002818:	960080e7          	jalr	-1696(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
    8000281c:	fb9ff06f          	j	800027d4 <_ZN3PCB8dispatchEv+0x28>

0000000080002820 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002830:	00001097          	auipc	ra,0x1
    80002834:	728080e7          	jalr	1832(ra) # 80003f58 <_Z7kmallocm>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00113423          	sd	ra,8(sp)
    80002850:	00813023          	sd	s0,0(sp)
    80002854:	01010413          	addi	s0,sp,16
    kfree(p);
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	75c080e7          	jalr	1884(ra) # 80003fb4 <_Z5kfreePv>
}
    80002860:	00813083          	ld	ra,8(sp)
    80002864:	00013403          	ld	s0,0(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002880:	03053503          	ld	a0,48(a0)
    80002884:	00001097          	auipc	ra,0x1
    80002888:	730080e7          	jalr	1840(ra) # 80003fb4 <_Z5kfreePv>
}
    8000288c:	00813083          	ld	ra,8(sp)
    80002890:	00013403          	ld	s0,0(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000289c:	fe010113          	addi	sp,sp,-32
    800028a0:	00113c23          	sd	ra,24(sp)
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00913423          	sd	s1,8(sp)
    800028ac:	01213023          	sd	s2,0(sp)
    800028b0:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028b4:	05000513          	li	a0,80
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	f68080e7          	jalr	-152(ra) # 80002820 <_ZN3PCBnwEm>
    800028c0:	00050493          	mv	s1,a0
    800028c4:	00000713          	li	a4,0
    800028c8:	00000693          	li	a3,0
    800028cc:	00000613          	li	a2,0
    800028d0:	00000593          	li	a1,0
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	e30080e7          	jalr	-464(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800028dc:	00100793          	li	a5,1
    800028e0:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	8e4080e7          	jalr	-1820(ra) # 800031c8 <_ZN9Scheduler3getEv>
    800028ec:	00009797          	auipc	a5,0x9
    800028f0:	20a7ba23          	sd	a0,532(a5) # 8000bb00 <_ZN3PCB7runningE>
    800028f4:	00100793          	li	a5,1
    800028f8:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00813483          	ld	s1,8(sp)
    80002908:	00013903          	ld	s2,0(sp)
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret
    80002914:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002918:	00048513          	mv	a0,s1
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	f2c080e7          	jalr	-212(ra) # 80002848 <_ZN3PCBdlEPv>
    80002924:	00090513          	mv	a0,s2
    80002928:	0000a097          	auipc	ra,0xa
    8000292c:	350080e7          	jalr	848(ra) # 8000cc78 <_Unwind_Resume>

0000000080002930 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002930:	ff010113          	addi	sp,sp,-16
    80002934:	00813423          	sd	s0,8(sp)
    80002938:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    8000293c:	03852503          	lw	a0,56(a0)
    80002940:	ffd50513          	addi	a0,a0,-3
}
    80002944:	00153513          	seqz	a0,a0
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002964:	00007517          	auipc	a0,0x7
    80002968:	90450513          	addi	a0,a0,-1788 # 80009268 <CONSOLE_STATUS+0x258>
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	e50080e7          	jalr	-432(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002974:	00009797          	auipc	a5,0x9
    80002978:	18c78793          	addi	a5,a5,396 # 8000bb00 <_ZN3PCB7runningE>
    8000297c:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    80002980:	0007b783          	ld	a5,0(a5)
    80002984:	00300713          	li	a4,3
    80002988:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	e20080e7          	jalr	-480(ra) # 800027ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002994:	00000513          	li	a0,0
}
    80002998:	00813083          	ld	ra,8(sp)
    8000299c:	00013403          	ld	s0,0(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret

00000000800029a8 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029b8:	00009797          	auipc	a5,0x9
    800029bc:	1407b823          	sd	zero,336(a5) # 8000bb08 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	dec080e7          	jalr	-532(ra) # 800027ac <_ZN3PCB8dispatchEv>
}
    800029c8:	00813083          	ld	ra,8(sp)
    800029cc:	00013403          	ld	s0,0(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00113423          	sd	ra,8(sp)
    800029e0:	00813023          	sd	s0,0(sp)
    800029e4:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    800029e8:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    800029ec:	00009797          	auipc	a5,0x9
    800029f0:	11478793          	addi	a5,a5,276 # 8000bb00 <_ZN3PCB7runningE>
    800029f4:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    800029f8:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800029fc:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	430080e7          	jalr	1072(ra) # 80002e30 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	da4080e7          	jalr	-604(ra) # 800027ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a10:	00000513          	li	a0,0
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002a24:	fd010113          	addi	sp,sp,-48
    80002a28:	02113423          	sd	ra,40(sp)
    80002a2c:	02813023          	sd	s0,32(sp)
    80002a30:	00913c23          	sd	s1,24(sp)
    80002a34:	01213823          	sd	s2,16(sp)
    80002a38:	01313423          	sd	s3,8(sp)
    80002a3c:	01413023          	sd	s4,0(sp)
    80002a40:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a44:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a48:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a4c:	00068a13          	mv	s4,a3
    //todo

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002a50:	05000513          	li	a0,80
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	dcc080e7          	jalr	-564(ra) # 80002820 <_ZN3PCBnwEm>
    80002a5c:	00050493          	mv	s1,a0
    80002a60:	00200713          	li	a4,2
    80002a64:	00009697          	auipc	a3,0x9
    80002a68:	0ac6b683          	ld	a3,172(a3) # 8000bb10 <_ZN3PCB10savedRegA4E>
    80002a6c:	000a0613          	mv	a2,s4
    80002a70:	00098593          	mv	a1,s3
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	c90080e7          	jalr	-880(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a7c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002a80:	02048463          	beqz	s1,80002aa8 <_ZN3PCB19threadCreateHandlerEv+0x84>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
            __asm__ volatile("li a0, 0");
    80002a84:	00000513          	li	a0,0
}
    80002a88:	02813083          	ld	ra,40(sp)
    80002a8c:	02013403          	ld	s0,32(sp)
    80002a90:	01813483          	ld	s1,24(sp)
    80002a94:	01013903          	ld	s2,16(sp)
    80002a98:	00813983          	ld	s3,8(sp)
    80002a9c:	00013a03          	ld	s4,0(sp)
    80002aa0:	03010113          	addi	sp,sp,48
    80002aa4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002aa8:	fff00513          	li	a0,-1
    80002aac:	fddff06f          	j	80002a88 <_ZN3PCB19threadCreateHandlerEv+0x64>
    80002ab0:	00050913          	mv	s2,a0
    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	d90080e7          	jalr	-624(ra) # 80002848 <_ZN3PCBdlEPv>
    80002ac0:	00090513          	mv	a0,s2
    80002ac4:	0000a097          	auipc	ra,0xa
    80002ac8:	1b4080e7          	jalr	436(ra) # 8000cc78 <_Unwind_Resume>

0000000080002acc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002acc:	fd010113          	addi	sp,sp,-48
    80002ad0:	02113423          	sd	ra,40(sp)
    80002ad4:	02813023          	sd	s0,32(sp)
    80002ad8:	00913c23          	sd	s1,24(sp)
    80002adc:	01213823          	sd	s2,16(sp)
    80002ae0:	01313423          	sd	s3,8(sp)
    80002ae4:	03010413          	addi	s0,sp,48
    80002ae8:	00050993          	mv	s3,a0
    80002aec:	00058913          	mv	s2,a1
    80002af0:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002af4:	01000513          	li	a0,16
    80002af8:	00001097          	auipc	ra,0x1
    80002afc:	460080e7          	jalr	1120(ra) # 80003f58 <_Z7kmallocm>
    newElem->next = 0;
    80002b00:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002b04:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002b08:	00093783          	ld	a5,0(s2)
    80002b0c:	02078663          	beqz	a5,80002b38 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002b10:	0004b783          	ld	a5,0(s1)
    80002b14:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002b18:	00a4b023          	sd	a0,0(s1)
    }
}
    80002b1c:	02813083          	ld	ra,40(sp)
    80002b20:	02013403          	ld	s0,32(sp)
    80002b24:	01813483          	ld	s1,24(sp)
    80002b28:	01013903          	ld	s2,16(sp)
    80002b2c:	00813983          	ld	s3,8(sp)
    80002b30:	03010113          	addi	sp,sp,48
    80002b34:	00008067          	ret
        head = tail = newElem;
    80002b38:	00a4b023          	sd	a0,0(s1)
    80002b3c:	00a93023          	sd	a0,0(s2)
    80002b40:	fddff06f          	j	80002b1c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002b44 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002b44:	fe010113          	addi	sp,sp,-32
    80002b48:	00113c23          	sd	ra,24(sp)
    80002b4c:	00813823          	sd	s0,16(sp)
    80002b50:	00913423          	sd	s1,8(sp)
    80002b54:	02010413          	addi	s0,sp,32
    80002b58:	00050793          	mv	a5,a0
    if(head == 0)
    80002b5c:	00053503          	ld	a0,0(a0)
    80002b60:	02050e63          	beqz	a0,80002b9c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002b64:	00053703          	ld	a4,0(a0)
    80002b68:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002b6c:	02070463          	beqz	a4,80002b94 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002b70:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	440080e7          	jalr	1088(ra) # 80003fb4 <_Z5kfreePv>
    return c;
}
    80002b7c:	00048513          	mv	a0,s1
    80002b80:	01813083          	ld	ra,24(sp)
    80002b84:	01013403          	ld	s0,16(sp)
    80002b88:	00813483          	ld	s1,8(sp)
    80002b8c:	02010113          	addi	sp,sp,32
    80002b90:	00008067          	ret
        tail = 0;
    80002b94:	0005b023          	sd	zero,0(a1)
    80002b98:	fd9ff06f          	j	80002b70 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002b9c:	00000493          	li	s1,0
    80002ba0:	fddff06f          	j	80002b7c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002ba4 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002ba4:	fe010113          	addi	sp,sp,-32
    80002ba8:	00113c23          	sd	ra,24(sp)
    80002bac:	00813823          	sd	s0,16(sp)
    80002bb0:	00913423          	sd	s1,8(sp)
    80002bb4:	01213023          	sd	s2,0(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002bbc:	01800513          	li	a0,24
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	69c080e7          	jalr	1692(ra) # 8000425c <_ZN10KSemaphorenwEm>
    80002bc8:	00050493          	mv	s1,a0
    80002bcc:	00000593          	li	a1,0
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	43c080e7          	jalr	1084(ra) # 8000400c <_ZN10KSemaphoreC1Ei>
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	f497b023          	sd	s1,-192(a5) # 8000bb18 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002be0:	01800513          	li	a0,24
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	678080e7          	jalr	1656(ra) # 8000425c <_ZN10KSemaphorenwEm>
    80002bec:	00050493          	mv	s1,a0
    80002bf0:	00000593          	li	a1,0
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	418080e7          	jalr	1048(ra) # 8000400c <_ZN10KSemaphoreC1Ei>
    80002bfc:	00009797          	auipc	a5,0x9
    80002c00:	f297b223          	sd	s1,-220(a5) # 8000bb20 <_ZN8KConsole19hasCharactersOutputE>
}
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret
    80002c1c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002c20:	00048513          	mv	a0,s1
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	6d0080e7          	jalr	1744(ra) # 800042f4 <_ZN10KSemaphoredlEPv>
    80002c2c:	00090513          	mv	a0,s2
    80002c30:	0000a097          	auipc	ra,0xa
    80002c34:	048080e7          	jalr	72(ra) # 8000cc78 <_Unwind_Resume>
    80002c38:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	6b4080e7          	jalr	1716(ra) # 800042f4 <_ZN10KSemaphoredlEPv>
    80002c48:	00090513          	mv	a0,s2
    80002c4c:	0000a097          	auipc	ra,0xa
    80002c50:	02c080e7          	jalr	44(ra) # 8000cc78 <_Unwind_Resume>

0000000080002c54 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00113423          	sd	ra,8(sp)
    80002c5c:	00813023          	sd	s0,0(sp)
    80002c60:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002c64:	00009617          	auipc	a2,0x9
    80002c68:	ec460613          	addi	a2,a2,-316 # 8000bb28 <_ZN8KConsole9tailInputE>
    80002c6c:	00009597          	auipc	a1,0x9
    80002c70:	ec458593          	addi	a1,a1,-316 # 8000bb30 <_ZN8KConsole9headInputE>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	e58080e7          	jalr	-424(ra) # 80002acc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002c7c:	00009517          	auipc	a0,0x9
    80002c80:	e9c53503          	ld	a0,-356(a0) # 8000bb18 <_ZN8KConsole18hasCharactersInputE>
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	590080e7          	jalr	1424(ra) # 80004214 <_ZN10KSemaphore6signalEv>
}
    80002c8c:	00813083          	ld	ra,8(sp)
    80002c90:	00013403          	ld	s0,0(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002c9c:	00006517          	auipc	a0,0x6
    80002ca0:	37453503          	ld	a0,884(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ca4:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002ca8:	0017f793          	andi	a5,a5,1
    80002cac:	04078863          	beqz	a5,80002cfc <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002cb0:	ff010113          	addi	sp,sp,-16
    80002cb4:	00113423          	sd	ra,8(sp)
    80002cb8:	00813023          	sd	s0,0(sp)
    80002cbc:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002cc0:	00006517          	auipc	a0,0x6
    80002cc4:	34853503          	ld	a0,840(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002cc8:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002ccc:	0ff57513          	andi	a0,a0,255
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	f84080e7          	jalr	-124(ra) # 80002c54 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002cd8:	00006517          	auipc	a0,0x6
    80002cdc:	33853503          	ld	a0,824(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ce0:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002ce4:	0017f793          	andi	a5,a5,1
    80002ce8:	fc079ce3          	bnez	a5,80002cc0 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002cec:	00813083          	ld	ra,8(sp)
    80002cf0:	00013403          	ld	s0,0(sp)
    80002cf4:	01010113          	addi	sp,sp,16
    80002cf8:	00008067          	ret
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00113423          	sd	ra,8(sp)
    80002d08:	00813023          	sd	s0,0(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002d10:	00009517          	auipc	a0,0x9
    80002d14:	e0853503          	ld	a0,-504(a0) # 8000bb18 <_ZN8KConsole18hasCharactersInputE>
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	39c080e7          	jalr	924(ra) # 800040b4 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002d20:	00009597          	auipc	a1,0x9
    80002d24:	e0858593          	addi	a1,a1,-504 # 8000bb28 <_ZN8KConsole9tailInputE>
    80002d28:	00009517          	auipc	a0,0x9
    80002d2c:	e0850513          	addi	a0,a0,-504 # 8000bb30 <_ZN8KConsole9headInputE>
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	e14080e7          	jalr	-492(ra) # 80002b44 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002d38:	00813083          	ld	ra,8(sp)
    80002d3c:	00013403          	ld	s0,0(sp)
    80002d40:	01010113          	addi	sp,sp,16
    80002d44:	00008067          	ret

0000000080002d48 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002d48:	ff010113          	addi	sp,sp,-16
    80002d4c:	00113423          	sd	ra,8(sp)
    80002d50:	00813023          	sd	s0,0(sp)
    80002d54:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002d58:	00009617          	auipc	a2,0x9
    80002d5c:	de060613          	addi	a2,a2,-544 # 8000bb38 <_ZN8KConsole10tailOutputE>
    80002d60:	00009597          	auipc	a1,0x9
    80002d64:	de058593          	addi	a1,a1,-544 # 8000bb40 <_ZN8KConsole10headOutputE>
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	d64080e7          	jalr	-668(ra) # 80002acc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002d70:	00009517          	auipc	a0,0x9
    80002d74:	db053503          	ld	a0,-592(a0) # 8000bb20 <_ZN8KConsole19hasCharactersOutputE>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	49c080e7          	jalr	1180(ra) # 80004214 <_ZN10KSemaphore6signalEv>
}
    80002d80:	00813083          	ld	ra,8(sp)
    80002d84:	00013403          	ld	s0,0(sp)
    80002d88:	01010113          	addi	sp,sp,16
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00113423          	sd	ra,8(sp)
    80002d98:	00813023          	sd	s0,0(sp)
    80002d9c:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002da0:	00009517          	auipc	a0,0x9
    80002da4:	d8053503          	ld	a0,-640(a0) # 8000bb20 <_ZN8KConsole19hasCharactersOutputE>
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	30c080e7          	jalr	780(ra) # 800040b4 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002db0:	00009597          	auipc	a1,0x9
    80002db4:	d8858593          	addi	a1,a1,-632 # 8000bb38 <_ZN8KConsole10tailOutputE>
    80002db8:	00009517          	auipc	a0,0x9
    80002dbc:	d8850513          	addi	a0,a0,-632 # 8000bb40 <_ZN8KConsole10headOutputE>
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	d84080e7          	jalr	-636(ra) # 80002b44 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002dc8:	00813083          	ld	ra,8(sp)
    80002dcc:	00013403          	ld	s0,0(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002dd8:	00006517          	auipc	a0,0x6
    80002ddc:	23853503          	ld	a0,568(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002de0:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002de4:	0207f793          	andi	a5,a5,32
    80002de8:	04078263          	beqz	a5,80002e2c <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00113423          	sd	ra,8(sp)
    80002df4:	00813023          	sd	s0,0(sp)
    80002df8:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	f94080e7          	jalr	-108(ra) # 80002d90 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002e04:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002e08:	00006517          	auipc	a0,0x6
    80002e0c:	20853503          	ld	a0,520(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002e10:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002e14:	0207f793          	andi	a5,a5,32
    80002e18:	fe0792e3          	bnez	a5,80002dfc <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002e1c:	00813083          	ld	ra,8(sp)
    80002e20:	00013403          	ld	s0,0(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002e30:	ff010113          	addi	sp,sp,-16
    80002e34:	00813423          	sd	s0,8(sp)
    80002e38:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002e3c:	00009797          	auipc	a5,0x9
    80002e40:	c3c7b783          	ld	a5,-964(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e44:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80002e48:	00500793          	li	a5,5
    80002e4c:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002e50:	00009797          	auipc	a5,0x9
    80002e54:	cf87b783          	ld	a5,-776(a5) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002e58:	00000593          	li	a1,0
    while(curr != 0)
    80002e5c:	02078063          	beqz	a5,80002e7c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002e60:	01863683          	ld	a3,24(a2)
    80002e64:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002e68:	00e6e863          	bltu	a3,a4,80002e78 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002e6c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002e70:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002e74:	fe9ff06f          	j	80002e5c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002e78:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002e7c:	02058263          	beqz	a1,80002ea0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002e80:	01863783          	ld	a5,24(a2)
    80002e84:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002e88:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e8c:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002e90:	00c5b423          	sd	a2,8(a1)
    }
}
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002ea0:	00009797          	auipc	a5,0x9
    80002ea4:	cac7b423          	sd	a2,-856(a5) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002ea8:	00863783          	ld	a5,8(a2)
    80002eac:	fe0784e3          	beqz	a5,80002e94 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002eb0:	0187b703          	ld	a4,24(a5)
    80002eb4:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002eb8:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002ebc:	00e7bc23          	sd	a4,24(a5)
    80002ec0:	fd5ff06f          	j	80002e94 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002ec4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002ec4:	00009517          	auipc	a0,0x9
    80002ec8:	c8453503          	ld	a0,-892(a0) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002ecc:	08050863          	beqz	a0,80002f5c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002ed0:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002ed4:	00100713          	li	a4,1
    80002ed8:	00e78863          	beq	a5,a4,80002ee8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002edc:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002ee0:	00f53c23          	sd	a5,24(a0)
    80002ee4:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002ee8:	06050a63          	beqz	a0,80002f5c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002eec:	00009797          	auipc	a5,0x9
    80002ef0:	c5c7b783          	ld	a5,-932(a5) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002ef4:	00a78663          	beq	a5,a0,80002f00 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002ef8:	01853783          	ld	a5,24(a0)
    80002efc:	06079063          	bnez	a5,80002f5c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00113c23          	sd	ra,24(sp)
    80002f08:	00813823          	sd	s0,16(sp)
    80002f0c:	00913423          	sd	s1,8(sp)
    80002f10:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002f14:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002f18:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	258080e7          	jalr	600(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	c297b223          	sd	s1,-988(a5) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002f2c:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002f30:	00048c63          	beqz	s1,80002f48 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002f34:	00009797          	auipc	a5,0x9
    80002f38:	c147b783          	ld	a5,-1004(a5) # 8000bb48 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002f3c:	fc978ce3          	beq	a5,s1,80002f14 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002f40:	0184b783          	ld	a5,24(s1)
    80002f44:	fc0788e3          	beqz	a5,80002f14 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    80002f48:	01813083          	ld	ra,24(sp)
    80002f4c:	01013403          	ld	s0,16(sp)
    80002f50:	00813483          	ld	s1,8(sp)
    80002f54:	02010113          	addi	sp,sp,32
    80002f58:	00008067          	ret
    80002f5c:	00008067          	ret

0000000080002f60 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00113c23          	sd	ra,24(sp)
    80002f68:	00813823          	sd	s0,16(sp)
    80002f6c:	00913423          	sd	s1,8(sp)
    80002f70:	01213023          	sd	s2,0(sp)
    80002f74:	02010413          	addi	s0,sp,32
    80002f78:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80002f7c:	00053503          	ld	a0,0(a0)
    80002f80:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002f84:	00001097          	auipc	ra,0x1
    80002f88:	030080e7          	jalr	48(ra) # 80003fb4 <_Z5kfreePv>
    first = newFirst;
    80002f8c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002f90:	00090e63          	beqz	s2,80002fac <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	00013903          	ld	s2,0(sp)
    80002fa4:	02010113          	addi	sp,sp,32
    80002fa8:	00008067          	ret
        first = last = 0;
    80002fac:	0004b423          	sd	zero,8(s1)
    80002fb0:	0004b023          	sd	zero,0(s1)
}
    80002fb4:	fe1ff06f          	j	80002f94 <_ZN5Queue3popEv+0x34>

0000000080002fb8 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	01213023          	sd	s2,0(sp)
    80002fcc:	02010413          	addi	s0,sp,32
    80002fd0:	00050493          	mv	s1,a0
    80002fd4:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002fd8:	01000513          	li	a0,16
    80002fdc:	00001097          	auipc	ra,0x1
    80002fe0:	f7c080e7          	jalr	-132(ra) # 80003f58 <_Z7kmallocm>
    newElem->data = t;
    80002fe4:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002fe8:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002fec:	0004b783          	ld	a5,0(s1)
    80002ff0:	02078463          	beqz	a5,80003018 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80002ff4:	0084b783          	ld	a5,8(s1)
    80002ff8:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002ffc:	00a4b423          	sd	a0,8(s1)
    }
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	00013903          	ld	s2,0(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret
        first = newElem;
    80003018:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    8000301c:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003020:	00053423          	sd	zero,8(a0)
    80003024:	0004b783          	ld	a5,0(s1)
    80003028:	0007b423          	sd	zero,8(a5)
    8000302c:	fd5ff06f          	j	80003000 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003030 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00813423          	sd	s0,8(sp)
    80003038:	01010413          	addi	s0,sp,16
    if(first == 0)
    8000303c:	00053503          	ld	a0,0(a0)
    80003040:	00050463          	beqz	a0,80003048 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003044:	00053503          	ld	a0,0(a0)
}
    80003048:	00813403          	ld	s0,8(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret

0000000080003054 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00813423          	sd	s0,8(sp)
    8000305c:	01010413          	addi	s0,sp,16
    first = last = 0;
    80003060:	00053423          	sd	zero,8(a0)
    80003064:	00053023          	sd	zero,0(a0)
}
    80003068:	00813403          	ld	s0,8(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80003074:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80003078:	04050063          	beqz	a0,800030b8 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00113c23          	sd	ra,24(sp)
    80003084:	00813823          	sd	s0,16(sp)
    80003088:	00913423          	sd	s1,8(sp)
    8000308c:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003090:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003094:	00001097          	auipc	ra,0x1
    80003098:	f20080e7          	jalr	-224(ra) # 80003fb4 <_Z5kfreePv>
        curr = curr->next;
    8000309c:	00048513          	mv	a0,s1
    while(curr != 0)
    800030a0:	fe0498e3          	bnez	s1,80003090 <_ZN5QueueD1Ev+0x1c>
    }
}
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	01013403          	ld	s0,16(sp)
    800030ac:	00813483          	ld	s1,8(sp)
    800030b0:	02010113          	addi	sp,sp,32
    800030b4:	00008067          	ret
    800030b8:	00008067          	ret

00000000800030bc <_ZN5Queue4sizeEv>:

int Queue::size() {
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00813423          	sd	s0,8(sp)
    800030c4:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800030c8:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800030cc:	00000513          	li	a0,0
    while(curr != 0)
    800030d0:	00078863          	beqz	a5,800030e0 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800030d4:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800030d8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800030dc:	ff5ff06f          	j	800030d0 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800030e0:	00813403          	ld	s0,8(sp)
    800030e4:	01010113          	addi	sp,sp,16
    800030e8:	00008067          	ret

00000000800030ec <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00113423          	sd	ra,8(sp)
    800030f4:	00813023          	sd	s0,0(sp)
    800030f8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800030fc:	00001097          	auipc	ra,0x1
    80003100:	e5c080e7          	jalr	-420(ra) # 80003f58 <_Z7kmallocm>
}
    80003104:	00813083          	ld	ra,8(sp)
    80003108:	00013403          	ld	s0,0(sp)
    8000310c:	01010113          	addi	sp,sp,16
    80003110:	00008067          	ret

0000000080003114 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00113423          	sd	ra,8(sp)
    8000311c:	00813023          	sd	s0,0(sp)
    80003120:	01010413          	addi	s0,sp,16
    kfree(p);
    80003124:	00001097          	auipc	ra,0x1
    80003128:	e90080e7          	jalr	-368(ra) # 80003fb4 <_Z5kfreePv>
}
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813423          	sd	s0,8(sp)
    80003144:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003148:	00009797          	auipc	a5,0x9
    8000314c:	a087b783          	ld	a5,-1528(a5) # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003150:	00000513          	li	a0,0
    while(curr != 0)
    80003154:	00078863          	beqz	a5,80003164 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003158:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000315c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003160:	ff5ff06f          	j	80003154 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003164:	0005051b          	sext.w	a0,a0
    80003168:	00813403          	ld	s0,8(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003180:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003184:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003188:	00009797          	auipc	a5,0x9
    8000318c:	9c87b783          	ld	a5,-1592(a5) # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    80003190:	02078263          	beqz	a5,800031b4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003194:	00009797          	auipc	a5,0x9
    80003198:	9bc78793          	addi	a5,a5,-1604 # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    8000319c:	0087b703          	ld	a4,8(a5)
    800031a0:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800031a4:	00a7b423          	sd	a0,8(a5)
    }
}
    800031a8:	00813403          	ld	s0,8(sp)
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800031b4:	00009797          	auipc	a5,0x9
    800031b8:	99c78793          	addi	a5,a5,-1636 # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    800031bc:	00a7b423          	sd	a0,8(a5)
    800031c0:	00a7b023          	sd	a0,0(a5)
    800031c4:	fe5ff06f          	j	800031a8 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800031c8 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00813423          	sd	s0,8(sp)
    800031d0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800031d4:	00009517          	auipc	a0,0x9
    800031d8:	97c53503          	ld	a0,-1668(a0) # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    800031dc:	00050c63          	beqz	a0,800031f4 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800031e0:	00853783          	ld	a5,8(a0)
    800031e4:	00078e63          	beqz	a5,80003200 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800031e8:	00009717          	auipc	a4,0x9
    800031ec:	96f73423          	sd	a5,-1688(a4) # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800031f0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003200:	00009797          	auipc	a5,0x9
    80003204:	95078793          	addi	a5,a5,-1712 # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    80003208:	0007b423          	sd	zero,8(a5)
    8000320c:	0007b023          	sd	zero,0(a5)
    80003210:	fe1ff06f          	j	800031f0 <_ZN9Scheduler3getEv+0x28>

0000000080003214 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00113c23          	sd	ra,24(sp)
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00913423          	sd	s1,8(sp)
    80003224:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    80003228:	00006517          	auipc	a0,0x6
    8000322c:	05850513          	addi	a0,a0,88 # 80009280 <CONSOLE_STATUS+0x270>
    80003230:	00000097          	auipc	ra,0x0
    80003234:	58c080e7          	jalr	1420(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    80003238:	00009497          	auipc	s1,0x9
    8000323c:	9184b483          	ld	s1,-1768(s1) # 8000bb50 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003240:	00048c63          	beqz	s1,80003258 <_ZN9Scheduler5printEv+0x44>
    {
        Riscv::printInteger((uint64)curr);
    80003244:	00048513          	mv	a0,s1
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	5e4080e7          	jalr	1508(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        curr = curr->nextPCB;
    80003250:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003254:	fedff06f          	j	80003240 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003258:	01813083          	ld	ra,24(sp)
    8000325c:	01013403          	ld	s0,16(sp)
    80003260:	00813483          	ld	s1,8(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	00008067          	ret

000000008000326c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00113423          	sd	ra,8(sp)
    80003274:	00813023          	sd	s0,0(sp)
    80003278:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000327c:	00001097          	auipc	ra,0x1
    80003280:	868080e7          	jalr	-1944(ra) # 80003ae4 <_ZN5Riscv10kernelMainEv>
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	00813023          	sd	s0,0(sp)
    800032a0:	01010413          	addi	s0,sp,16
    800032a4:	00008797          	auipc	a5,0x8
    800032a8:	6d478793          	addi	a5,a5,1748 # 8000b978 <_ZTV6Thread+0x10>
    800032ac:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800032b0:	00853503          	ld	a0,8(a0)
    800032b4:	ffffe097          	auipc	ra,0xffffe
    800032b8:	fc4080e7          	jalr	-60(ra) # 80001278 <mem_free>
}
    800032bc:	00813083          	ld	ra,8(sp)
    800032c0:	00013403          	ld	s0,0(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret

00000000800032cc <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00113423          	sd	ra,8(sp)
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	01010413          	addi	s0,sp,16
    800032dc:	00008797          	auipc	a5,0x8
    800032e0:	6c478793          	addi	a5,a5,1732 # 8000b9a0 <_ZTV9Semaphore+0x10>
    800032e4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800032e8:	00853503          	ld	a0,8(a0)
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	f8c080e7          	jalr	-116(ra) # 80001278 <mem_free>
}
    800032f4:	00813083          	ld	ra,8(sp)
    800032f8:	00013403          	ld	s0,0(sp)
    800032fc:	01010113          	addi	sp,sp,16
    80003300:	00008067          	ret

0000000080003304 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    80003304:	fe010113          	addi	sp,sp,-32
    80003308:	00113c23          	sd	ra,24(sp)
    8000330c:	00813823          	sd	s0,16(sp)
    80003310:	00913423          	sd	s1,8(sp)
    80003314:	02010413          	addi	s0,sp,32
    80003318:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	f7c50513          	addi	a0,a0,-132 # 80009298 <CONSOLE_STATUS+0x288>
    80003324:	00000097          	auipc	ra,0x0
    80003328:	498080e7          	jalr	1176(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    thr->run();
    8000332c:	0004b783          	ld	a5,0(s1)
    80003330:	0107b783          	ld	a5,16(a5)
    80003334:	00048513          	mv	a0,s1
    80003338:	000780e7          	jalr	a5
}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	02010113          	addi	sp,sp,32
    8000334c:	00008067          	ret

0000000080003350 <_Znwm>:
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	ee8080e7          	jalr	-280(ra) # 80001248 <mem_alloc>
}
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZdlPv>:
{
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	ef0080e7          	jalr	-272(ra) # 80001278 <mem_free>
}
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0
}
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	edc080e7          	jalr	-292(ra) # 80003294 <_ZN6ThreadD1Ev>
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	fb4080e7          	jalr	-76(ra) # 80003378 <_ZdlPv>
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	00813483          	ld	s1,8(sp)
    800033d8:	02010113          	addi	sp,sp,32
    800033dc:	00008067          	ret

00000000800033e0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800033e0:	fe010113          	addi	sp,sp,-32
    800033e4:	00113c23          	sd	ra,24(sp)
    800033e8:	00813823          	sd	s0,16(sp)
    800033ec:	00913423          	sd	s1,8(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	00050493          	mv	s1,a0
}
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	ed4080e7          	jalr	-300(ra) # 800032cc <_ZN9SemaphoreD1Ev>
    80003400:	00048513          	mv	a0,s1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	f74080e7          	jalr	-140(ra) # 80003378 <_ZdlPv>
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	02010113          	addi	sp,sp,32
    8000341c:	00008067          	ret

0000000080003420 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80003420:	00853783          	ld	a5,8(a0)
    80003424:	02079c63          	bnez	a5,8000345c <_ZN6Thread5startEv+0x3c>
{
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00113423          	sd	ra,8(sp)
    80003430:	00813023          	sd	s0,0(sp)
    80003434:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003438:	01853603          	ld	a2,24(a0)
    8000343c:	01053583          	ld	a1,16(a0)
    80003440:	00850513          	addi	a0,a0,8
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	e60080e7          	jalr	-416(ra) # 800012a4 <thread_create>
}
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret
        return -1;
    8000345c:	fff00513          	li	a0,-1
}
    80003460:	00008067          	ret

0000000080003464 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00113423          	sd	ra,8(sp)
    8000346c:	00813023          	sd	s0,0(sp)
    80003470:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003474:	ffffe097          	auipc	ra,0xffffe
    80003478:	eb0080e7          	jalr	-336(ra) # 80001324 <thread_dispatch>
}
    8000347c:	00813083          	ld	ra,8(sp)
    80003480:	00013403          	ld	s0,0(sp)
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00008067          	ret

000000008000348c <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00113423          	sd	ra,8(sp)
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	f8c080e7          	jalr	-116(ra) # 80001428 <time_sleep>
}
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret

00000000800034b4 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    800034b4:	fe010113          	addi	sp,sp,-32
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00913423          	sd	s1,8(sp)
    800034c4:	02010413          	addi	s0,sp,32
    800034c8:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    800034cc:	0004b783          	ld	a5,0(s1)
    800034d0:	0187b783          	ld	a5,24(a5)
    800034d4:	00048513          	mv	a0,s1
    800034d8:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    800034dc:	0204b503          	ld	a0,32(s1)
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	fac080e7          	jalr	-84(ra) # 8000348c <_ZN6Thread5sleepEm>
    while(true)
    800034e8:	fe5ff06f          	j	800034cc <_ZN14PeriodicThread6runnerEPv+0x18>

00000000800034ec <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    800034ec:	ff010113          	addi	sp,sp,-16
    800034f0:	00813423          	sd	s0,8(sp)
    800034f4:	01010413          	addi	s0,sp,16
    800034f8:	00008797          	auipc	a5,0x8
    800034fc:	48078793          	addi	a5,a5,1152 # 8000b978 <_ZTV6Thread+0x10>
    80003500:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003504:	00053423          	sd	zero,8(a0)
    f = body;
    80003508:	00b53823          	sd	a1,16(a0)
    this->args = args;
    8000350c:	00c53c23          	sd	a2,24(a0)
}
    80003510:	00813403          	ld	s0,8(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00813423          	sd	s0,8(sp)
    80003524:	01010413          	addi	s0,sp,16
    80003528:	00008797          	auipc	a5,0x8
    8000352c:	45078793          	addi	a5,a5,1104 # 8000b978 <_ZTV6Thread+0x10>
    80003530:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003534:	00000797          	auipc	a5,0x0
    80003538:	dd078793          	addi	a5,a5,-560 # 80003304 <_ZN6Thread6runnerEPv>
    8000353c:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80003540:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003544:	00a53c23          	sd	a0,24(a0)
}
    80003548:	00813403          	ld	s0,8(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret

0000000080003554 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003554:	00853503          	ld	a0,8(a0)
    80003558:	02050663          	beqz	a0,80003584 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00113423          	sd	ra,8(sp)
    80003564:	00813023          	sd	s0,0(sp)
    80003568:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	e64080e7          	jalr	-412(ra) # 800013d0 <sem_wait>
}
    80003574:	00813083          	ld	ra,8(sp)
    80003578:	00013403          	ld	s0,0(sp)
    8000357c:	01010113          	addi	sp,sp,16
    80003580:	00008067          	ret
        return -1;
    80003584:	fff00513          	li	a0,-1
}
    80003588:	00008067          	ret

000000008000358c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
    800035a4:	00008797          	auipc	a5,0x8
    800035a8:	3fc78793          	addi	a5,a5,1020 # 8000b9a0 <_ZTV9Semaphore+0x10>
    800035ac:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800035b0:	00850513          	addi	a0,a0,8
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	db8080e7          	jalr	-584(ra) # 8000136c <sem_open>
    if(retval != 0)
    800035bc:	00050463          	beqz	a0,800035c4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800035c0:	0004b423          	sd	zero,8(s1)
}
    800035c4:	01813083          	ld	ra,24(sp)
    800035c8:	01013403          	ld	s0,16(sp)
    800035cc:	00813483          	ld	s1,8(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret

00000000800035d8 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800035d8:	00853503          	ld	a0,8(a0)
    800035dc:	02050663          	beqz	a0,80003608 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00113423          	sd	ra,8(sp)
    800035e8:	00813023          	sd	s0,0(sp)
    800035ec:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	e0c080e7          	jalr	-500(ra) # 800013fc <sem_signal>
}
    800035f8:	00813083          	ld	ra,8(sp)
    800035fc:	00013403          	ld	s0,0(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret
        return -1;
    80003608:	fff00513          	li	a0,-1
}
    8000360c:	00008067          	ret

0000000080003610 <_ZN7Console4getcEv>:
char Console::getc() {
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00813423          	sd	s0,8(sp)
    80003618:	01010413          	addi	s0,sp,16
}
    8000361c:	00000513          	li	a0,0
    80003620:	00813403          	ld	s0,8(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <_ZN7Console4putcEc>:
void Console::putc(char) {
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00813423          	sd	s0,8(sp)
    80003634:	01010413          	addi	s0,sp,16
}
    80003638:	00813403          	ld	s0,8(sp)
    8000363c:	01010113          	addi	sp,sp,16
    80003640:	00008067          	ret

0000000080003644 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003644:	fe010113          	addi	sp,sp,-32
    80003648:	00113c23          	sd	ra,24(sp)
    8000364c:	00813823          	sd	s0,16(sp)
    80003650:	00913423          	sd	s1,8(sp)
    80003654:	01213023          	sd	s2,0(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00050493          	mv	s1,a0
    80003660:	00058913          	mv	s2,a1
    80003664:	00050613          	mv	a2,a0
    80003668:	00000597          	auipc	a1,0x0
    8000366c:	e4c58593          	addi	a1,a1,-436 # 800034b4 <_ZN14PeriodicThread6runnerEPv>
    80003670:	00000097          	auipc	ra,0x0
    80003674:	e7c080e7          	jalr	-388(ra) # 800034ec <_ZN6ThreadC1EPFvPvES0_>
    80003678:	00008797          	auipc	a5,0x8
    8000367c:	29878793          	addi	a5,a5,664 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80003680:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003684:	0324b023          	sd	s2,32(s1)
}
    80003688:	01813083          	ld	ra,24(sp)
    8000368c:	01013403          	ld	s0,16(sp)
    80003690:	00813483          	ld	s1,8(sp)
    80003694:	00013903          	ld	s2,0(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret

00000000800036a0 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813423          	sd	s0,8(sp)
    800036a8:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00813423          	sd	s0,8(sp)
    800036c0:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    800036c4:	00813403          	ld	s0,8(sp)
    800036c8:	01010113          	addi	sp,sp,16
    800036cc:	00008067          	ret

00000000800036d0 <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00113423          	sd	ra,8(sp)
    800036d8:	00813023          	sd	s0,0(sp)
    800036dc:	01010413          	addi	s0,sp,16
    userMain();
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	724080e7          	jalr	1828(ra) # 80005e04 <_Z8userMainv>
}
    800036e8:	00813083          	ld	ra,8(sp)
    800036ec:	00013403          	ld	s0,0(sp)
    800036f0:	01010113          	addi	sp,sp,16
    800036f4:	00008067          	ret

00000000800036f8 <_ZN5Riscv10initSystemEv>:
{
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00113423          	sd	ra,8(sp)
    80003700:	00813023          	sd	s0,0(sp)
    80003704:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003708:	00008797          	auipc	a5,0x8
    8000370c:	3587b783          	ld	a5,856(a5) # 8000ba60 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003710:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	188080e7          	jalr	392(ra) # 8000289c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	488080e7          	jalr	1160(ra) # 80002ba4 <_ZN8KConsole10initializeEv>
}
    80003724:	00813083          	ld	ra,8(sp)
    80003728:	00013403          	ld	s0,0(sp)
    8000372c:	01010113          	addi	sp,sp,16
    80003730:	00008067          	ret

0000000080003734 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00813423          	sd	s0,8(sp)
    8000373c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003740:	00200793          	li	a5,2
    80003744:	1007a073          	csrs	sstatus,a5
}
    80003748:	00813403          	ld	s0,8(sp)
    8000374c:	01010113          	addi	sp,sp,16
    80003750:	00008067          	ret

0000000080003754 <_ZN5Riscv17disableInterruptsEv>:
{
    80003754:	ff010113          	addi	sp,sp,-16
    80003758:	00813423          	sd	s0,8(sp)
    8000375c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003760:	00200793          	li	a5,2
    80003764:	1007b073          	csrc	sstatus,a5
}
    80003768:	00813403          	ld	s0,8(sp)
    8000376c:	01010113          	addi	sp,sp,16
    80003770:	00008067          	ret

0000000080003774 <_ZN5Riscv9endSystemEv>:
{
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003784:	00000097          	auipc	ra,0x0
    80003788:	fd0080e7          	jalr	-48(ra) # 80003754 <_ZN5Riscv17disableInterruptsEv>
}
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN5Riscv10popSppSpieEv>:
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800037a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800037ac:	10200073          	sret
}
    800037b0:	00813403          	ld	s0,8(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret

00000000800037bc <_ZN5Riscv11printStringEPKc>:
{
    800037bc:	fd010113          	addi	sp,sp,-48
    800037c0:	02113423          	sd	ra,40(sp)
    800037c4:	02813023          	sd	s0,32(sp)
    800037c8:	00913c23          	sd	s1,24(sp)
    800037cc:	01213823          	sd	s2,16(sp)
    800037d0:	03010413          	addi	s0,sp,48
    800037d4:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800037d8:	100027f3          	csrr	a5,sstatus
    800037dc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800037e0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800037e4:	00200793          	li	a5,2
    800037e8:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    800037ec:	0004c503          	lbu	a0,0(s1)
    800037f0:	00050a63          	beqz	a0,80003804 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    800037f4:	00005097          	auipc	ra,0x5
    800037f8:	a78080e7          	jalr	-1416(ra) # 8000826c <__putc>
        string++;
    800037fc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003800:	fedff06f          	j	800037ec <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003804:	0009091b          	sext.w	s2,s2
    80003808:	00297913          	andi	s2,s2,2
    8000380c:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003810:	10092073          	csrs	sstatus,s2
}
    80003814:	02813083          	ld	ra,40(sp)
    80003818:	02013403          	ld	s0,32(sp)
    8000381c:	01813483          	ld	s1,24(sp)
    80003820:	01013903          	ld	s2,16(sp)
    80003824:	03010113          	addi	sp,sp,48
    80003828:	00008067          	ret

000000008000382c <_ZN5Riscv12printIntegerEm>:
{
    8000382c:	fc010113          	addi	sp,sp,-64
    80003830:	02113c23          	sd	ra,56(sp)
    80003834:	02813823          	sd	s0,48(sp)
    80003838:	02913423          	sd	s1,40(sp)
    8000383c:	03213023          	sd	s2,32(sp)
    80003840:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003844:	100027f3          	csrr	a5,sstatus
    80003848:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000384c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003850:	00200793          	li	a5,2
    80003854:	1007b073          	csrc	sstatus,a5
        x = num;
    80003858:	0005051b          	sext.w	a0,a0
    i = 0;
    8000385c:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003860:	00a00613          	li	a2,10
    80003864:	02c5773b          	remuw	a4,a0,a2
    80003868:	02071693          	slli	a3,a4,0x20
    8000386c:	0206d693          	srli	a3,a3,0x20
    80003870:	00006717          	auipc	a4,0x6
    80003874:	b1070713          	addi	a4,a4,-1264 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits>
    80003878:	00d70733          	add	a4,a4,a3
    8000387c:	00074703          	lbu	a4,0(a4)
    80003880:	fe040693          	addi	a3,s0,-32
    80003884:	009687b3          	add	a5,a3,s1
    80003888:	0014849b          	addiw	s1,s1,1
    8000388c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003890:	0005071b          	sext.w	a4,a0
    80003894:	02c5553b          	divuw	a0,a0,a2
    80003898:	00900793          	li	a5,9
    8000389c:	fce7e2e3          	bltu	a5,a4,80003860 <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    800038a0:	fff4849b          	addiw	s1,s1,-1
    800038a4:	0004ce63          	bltz	s1,800038c0 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800038a8:	fe040793          	addi	a5,s0,-32
    800038ac:	009787b3          	add	a5,a5,s1
    800038b0:	ff07c503          	lbu	a0,-16(a5)
    800038b4:	00005097          	auipc	ra,0x5
    800038b8:	9b8080e7          	jalr	-1608(ra) # 8000826c <__putc>
    800038bc:	fe5ff06f          	j	800038a0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    800038c0:	00a00513          	li	a0,10
    800038c4:	00005097          	auipc	ra,0x5
    800038c8:	9a8080e7          	jalr	-1624(ra) # 8000826c <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800038cc:	0009091b          	sext.w	s2,s2
    800038d0:	00297913          	andi	s2,s2,2
    800038d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800038d8:	10092073          	csrs	sstatus,s2
}
    800038dc:	03813083          	ld	ra,56(sp)
    800038e0:	03013403          	ld	s0,48(sp)
    800038e4:	02813483          	ld	s1,40(sp)
    800038e8:	02013903          	ld	s2,32(sp)
    800038ec:	04010113          	addi	sp,sp,64
    800038f0:	00008067          	ret

00000000800038f4 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800038f4:	f9010113          	addi	sp,sp,-112
    800038f8:	06113423          	sd	ra,104(sp)
    800038fc:	06813023          	sd	s0,96(sp)
    80003900:	04913c23          	sd	s1,88(sp)
    80003904:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003908:	00070713          	mv	a4,a4
    8000390c:	00008797          	auipc	a5,0x8
    80003910:	17c7b783          	ld	a5,380(a5) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003914:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003918:	142027f3          	csrr	a5,scause
    8000391c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003920:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003924:	fff00713          	li	a4,-1
    80003928:	03f71713          	slli	a4,a4,0x3f
    8000392c:	00170713          	addi	a4,a4,1
    80003930:	08e78463          	beq	a5,a4,800039b8 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80003934:	fff00713          	li	a4,-1
    80003938:	03f71713          	slli	a4,a4,0x3f
    8000393c:	00170713          	addi	a4,a4,1
    80003940:	04f76e63          	bltu	a4,a5,8000399c <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003944:	ff878793          	addi	a5,a5,-8
    80003948:	00100713          	li	a4,1
    8000394c:	0ef76663          	bltu	a4,a5,80003a38 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003950:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003954:	14102773          	csrr	a4,sepc
    80003958:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000395c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003960:	00470713          	addi	a4,a4,4
    80003964:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003968:	10002773          	csrr	a4,sstatus
    8000396c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003970:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003974:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003978:	03100713          	li	a4,49
    8000397c:	0ef76463          	bltu	a4,a5,80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    80003980:	00279793          	slli	a5,a5,0x2
    80003984:	00006717          	auipc	a4,0x6
    80003988:	93470713          	addi	a4,a4,-1740 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000398c:	00e787b3          	add	a5,a5,a4
    80003990:	0007a783          	lw	a5,0(a5)
    80003994:	00e787b3          	add	a5,a5,a4
    80003998:	00078067          	jr	a5
    switch(scause)
    8000399c:	fff00713          	li	a4,-1
    800039a0:	03f71713          	slli	a4,a4,0x3f
    800039a4:	00970713          	addi	a4,a4,9
    800039a8:	08e79863          	bne	a5,a4,80003a38 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            console_handler();
    800039ac:	00005097          	auipc	ra,0x5
    800039b0:	934080e7          	jalr	-1740(ra) # 800082e0 <console_handler>
            break;
    800039b4:	0840006f          	j	80003a38 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800039b8:	141027f3          	csrr	a5,sepc
    800039bc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800039c0:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800039c4:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800039c8:	100027f3          	csrr	a5,sstatus
    800039cc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800039d0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800039d4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800039d8:	00200793          	li	a5,2
    800039dc:	1447b073          	csrc	sip,a5
            total++;
    800039e0:	00008717          	auipc	a4,0x8
    800039e4:	18070713          	addi	a4,a4,384 # 8000bb60 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    800039e8:	00073783          	ld	a5,0(a4)
    800039ec:	00178793          	addi	a5,a5,1
    800039f0:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    800039f4:	00008497          	auipc	s1,0x8
    800039f8:	0744b483          	ld	s1,116(s1) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039fc:	0004b783          	ld	a5,0(s1)
    80003a00:	00178793          	addi	a5,a5,1
    80003a04:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	4bc080e7          	jalr	1212(ra) # 80002ec4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003a10:	00008797          	auipc	a5,0x8
    80003a14:	0687b783          	ld	a5,104(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a18:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003a1c:	0107b783          	ld	a5,16(a5)
    80003a20:	0004b703          	ld	a4,0(s1)
    80003a24:	02f77463          	bgeu	a4,a5,80003a4c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
            Riscv::w_sstatus(sstatus);
    80003a28:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a2c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003a30:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003a34:	14179073          	csrw	sepc,a5
}
    80003a38:	06813083          	ld	ra,104(sp)
    80003a3c:	06013403          	ld	s0,96(sp)
    80003a40:	05813483          	ld	s1,88(sp)
    80003a44:	07010113          	addi	sp,sp,112
    80003a48:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003a4c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	d5c080e7          	jalr	-676(ra) # 800027ac <_ZN3PCB8dispatchEv>
    80003a58:	fd1ff06f          	j	80003a28 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
                    MemoryAllocator::memAllocHandler();
    80003a5c:	00000097          	auipc	ra,0x0
    80003a60:	524080e7          	jalr	1316(ra) # 80003f80 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003a64:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a68:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003a6c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003a70:	14179073          	csrw	sepc,a5
}
    80003a74:	fc5ff06f          	j	80003a38 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                    MemoryAllocator::memFreeHandler();
    80003a78:	00000097          	auipc	ra,0x0
    80003a7c:	564080e7          	jalr	1380(ra) # 80003fdc <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003a80:	fe5ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadCreateHandler();
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	fa0080e7          	jalr	-96(ra) # 80002a24 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003a8c:	fd9ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadDispatchHandler();
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	f18080e7          	jalr	-232(ra) # 800029a8 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003a98:	fcdff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadExitHandler();
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	eb8080e7          	jalr	-328(ra) # 80002954 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003aa4:	fc1ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadSleepHandler();
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	f30080e7          	jalr	-208(ra) # 800029d8 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003ab0:	fb5ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semOpenHandler();
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	7d0080e7          	jalr	2000(ra) # 80004284 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003abc:	fa9ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semWaitHandler();
    80003ac0:	00001097          	auipc	ra,0x1
    80003ac4:	85c080e7          	jalr	-1956(ra) # 8000431c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003ac8:	f9dff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semSignalHandler();
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	888080e7          	jalr	-1912(ra) # 80004354 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003ad4:	f91ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semCloseHandler();
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	8b4080e7          	jalr	-1868(ra) # 8000438c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003ae0:	f85ff06f          	j	80003a64 <_ZN5Riscv20handleSupervisorTrapEv+0x170>

0000000080003ae4 <_ZN5Riscv10kernelMainEv>:
{
    80003ae4:	fe010113          	addi	sp,sp,-32
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00913423          	sd	s1,8(sp)
    80003af4:	01213023          	sd	s2,0(sp)
    80003af8:	02010413          	addi	s0,sp,32
    initSystem();
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	bfc080e7          	jalr	-1028(ra) # 800036f8 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003b04:	00001537          	lui	a0,0x1
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	450080e7          	jalr	1104(ra) # 80003f58 <_Z7kmallocm>
    80003b10:	00050913          	mv	s2,a0
    80003b14:	05000513          	li	a0,80
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	d08080e7          	jalr	-760(ra) # 80002820 <_ZN3PCBnwEm>
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00200713          	li	a4,2
    80003b28:	00090693          	mv	a3,s2
    80003b2c:	00000613          	li	a2,0
    80003b30:	00000597          	auipc	a1,0x0
    80003b34:	ba058593          	addi	a1,a1,-1120 # 800036d0 <_ZN5Riscv15userMainWrapperEPv>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	bcc080e7          	jalr	-1076(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003b40:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003b44:	00300793          	li	a5,3
    80003b48:	00f70863          	beq	a4,a5,80003b58 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    80003b4c:	ffffd097          	auipc	ra,0xffffd
    80003b50:	7d8080e7          	jalr	2008(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003b54:	fedff06f          	j	80003b40 <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	c1c080e7          	jalr	-996(ra) # 80003774 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003b60:	00006517          	auipc	a0,0x6
    80003b64:	83050513          	addi	a0,a0,-2000 # 80009390 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	c54080e7          	jalr	-940(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	00013903          	ld	s2,0(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret
    80003b88:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003b8c:	00048513          	mv	a0,s1
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	cb8080e7          	jalr	-840(ra) # 80002848 <_ZN3PCBdlEPv>
    80003b98:	00090513          	mv	a0,s2
    80003b9c:	00009097          	auipc	ra,0x9
    80003ba0:	0dc080e7          	jalr	220(ra) # 8000cc78 <_Unwind_Resume>

0000000080003ba4 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00813423          	sd	s0,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003bb0:	00008717          	auipc	a4,0x8
    80003bb4:	fb872703          	lw	a4,-72(a4) # 8000bb68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003bb8:	00100793          	li	a5,1
    80003bbc:	04f70263          	beq	a4,a5,80003c00 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003bc0:	00008797          	auipc	a5,0x8
    80003bc4:	fa878793          	addi	a5,a5,-88 # 8000bb68 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003bc8:	00100713          	li	a4,1
    80003bcc:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003bd0:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003bd4:	00008717          	auipc	a4,0x8
    80003bd8:	e8473703          	ld	a4,-380(a4) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003bdc:	00073703          	ld	a4,0(a4)
    80003be0:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003be4:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003be8:	00008797          	auipc	a5,0x8
    80003bec:	e987b783          	ld	a5,-360(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003bf0:	0007b783          	ld	a5,0(a5)
    80003bf4:	40e787b3          	sub	a5,a5,a4
    80003bf8:	ff178793          	addi	a5,a5,-15
    80003bfc:	00f73023          	sd	a5,0(a4)
}
    80003c00:	00813403          	ld	s0,8(sp)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret

0000000080003c0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003c0c:	fe010113          	addi	sp,sp,-32
    80003c10:	00113c23          	sd	ra,24(sp)
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00913423          	sd	s1,8(sp)
    80003c1c:	01213023          	sd	s2,0(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	00050493          	mv	s1,a0
    80003c28:	00058913          	mv	s2,a1
    initMemory();
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	f78080e7          	jalr	-136(ra) # 80003ba4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003c34:	00008797          	auipc	a5,0x8
    80003c38:	f3c7b783          	ld	a5,-196(a5) # 8000bb70 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003c3c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003c40:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003c44:	00000713          	li	a4,0
    while(curr != 0)
    80003c48:	00078c63          	beqz	a5,80003c60 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003c4c:	00f4e863          	bltu	s1,a5,80003c5c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003c50:	00078713          	mv	a4,a5
        curr = curr->next;
    80003c54:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003c58:	ff1ff06f          	j	80003c48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003c5c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003c60:	02070063          	beqz	a4,80003c80 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003c64:	00973423          	sd	s1,8(a4)
}
    80003c68:	01813083          	ld	ra,24(sp)
    80003c6c:	01013403          	ld	s0,16(sp)
    80003c70:	00813483          	ld	s1,8(sp)
    80003c74:	00013903          	ld	s2,0(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret
        headAllocated = newAllocated;
    80003c80:	00008797          	auipc	a5,0x8
    80003c84:	ee97b823          	sd	s1,-272(a5) # 8000bb70 <_ZN15MemoryAllocator13headAllocatedE>
    80003c88:	fe1ff06f          	j	80003c68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003c8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	01213023          	sd	s2,0(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	00050913          	mv	s2,a0
    initMemory();
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	efc080e7          	jalr	-260(ra) # 80003ba4 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003cb0:	00008497          	auipc	s1,0x8
    80003cb4:	ec84b483          	ld	s1,-312(s1) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003cb8:	00000713          	li	a4,0
    while(curr != 0)
    80003cbc:	0a048863          	beqz	s1,80003d6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003cc0:	0004b783          	ld	a5,0(s1)
    80003cc4:	0127f863          	bgeu	a5,s2,80003cd4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003cc8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ccc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cd0:	fedff06f          	j	80003cbc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003cd4:	01090693          	addi	a3,s2,16
    80003cd8:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003cdc:	00008617          	auipc	a2,0x8
    80003ce0:	da463603          	ld	a2,-604(a2) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003ce4:	00063603          	ld	a2,0(a2)
    80003ce8:	04d66c63          	bltu	a2,a3,80003d40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003cec:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003cf0:	01000613          	li	a2,16
    80003cf4:	02f67663          	bgeu	a2,a5,80003d20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003cf8:	0084b603          	ld	a2,8(s1)
    80003cfc:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003d00:	ff078793          	addi	a5,a5,-16
    80003d04:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003d08:	00070663          	beqz	a4,80003d14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003d0c:	00d73423          	sd	a3,8(a4)
    80003d10:	0380006f          	j	80003d48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003d14:	00008797          	auipc	a5,0x8
    80003d18:	e6d7b223          	sd	a3,-412(a5) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    80003d1c:	02c0006f          	j	80003d48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003d20:	00070863          	beqz	a4,80003d30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003d24:	0084b783          	ld	a5,8(s1)
    80003d28:	00f73423          	sd	a5,8(a4)
    80003d2c:	01c0006f          	j	80003d48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003d30:	0084b783          	ld	a5,8(s1)
    80003d34:	00008717          	auipc	a4,0x8
    80003d38:	e4f73223          	sd	a5,-444(a4) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    80003d3c:	00c0006f          	j	80003d48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003d40:	02070063          	beqz	a4,80003d60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003d44:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003d48:	00090593          	mv	a1,s2
    80003d4c:	00048513          	mv	a0,s1
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	ebc080e7          	jalr	-324(ra) # 80003c0c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003d58:	01048513          	addi	a0,s1,16
            break;
    80003d5c:	0140006f          	j	80003d70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003d60:	00008797          	auipc	a5,0x8
    80003d64:	e007bc23          	sd	zero,-488(a5) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    80003d68:	fe1ff06f          	j	80003d48 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003d6c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00813483          	ld	s1,8(sp)
    80003d7c:	00013903          	ld	s2,0(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret

0000000080003d88 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00113423          	sd	ra,8(sp)
    80003d90:	00813023          	sd	s0,0(sp)
    80003d94:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	ef4080e7          	jalr	-268(ra) # 80003c8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003da0:	00813083          	ld	ra,8(sp)
    80003da4:	00013403          	ld	s0,0(sp)
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00008067          	ret

0000000080003db0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	01213023          	sd	s2,0(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    80003dc8:	00050493          	mv	s1,a0
    80003dcc:	00058913          	mv	s2,a1
    initMemory();
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	dd4080e7          	jalr	-556(ra) # 80003ba4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003dd8:	00008797          	auipc	a5,0x8
    80003ddc:	da07b783          	ld	a5,-608(a5) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003de0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003de4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003de8:	00000713          	li	a4,0
    while(curr != 0)
    80003dec:	00078c63          	beqz	a5,80003e04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003df0:	00f4e863          	bltu	s1,a5,80003e00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003df4:	00078713          	mv	a4,a5
        curr = curr->next;
    80003df8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003dfc:	ff1ff06f          	j	80003dec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003e00:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003e04:	04070663          	beqz	a4,80003e50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003e08:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003e0c:	0084b783          	ld	a5,8(s1)
    80003e10:	00078a63          	beqz	a5,80003e24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003e14:	0004b603          	ld	a2,0(s1)
    80003e18:	01060693          	addi	a3,a2,16
    80003e1c:	00d486b3          	add	a3,s1,a3
    80003e20:	02d78e63          	beq	a5,a3,80003e5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003e24:	00070a63          	beqz	a4,80003e38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003e28:	00073683          	ld	a3,0(a4)
    80003e2c:	01068793          	addi	a5,a3,16
    80003e30:	00f707b3          	add	a5,a4,a5
    80003e34:	04978263          	beq	a5,s1,80003e78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	00013903          	ld	s2,0(sp)
    80003e48:	02010113          	addi	sp,sp,32
    80003e4c:	00008067          	ret
        headFree = newSegment;
    80003e50:	00008797          	auipc	a5,0x8
    80003e54:	d297b423          	sd	s1,-728(a5) # 8000bb78 <_ZN15MemoryAllocator8headFreeE>
    80003e58:	fb5ff06f          	j	80003e0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003e5c:	0007b683          	ld	a3,0(a5)
    80003e60:	00d60633          	add	a2,a2,a3
    80003e64:	01060613          	addi	a2,a2,16
    80003e68:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003e6c:	0087b783          	ld	a5,8(a5)
    80003e70:	00f4b423          	sd	a5,8(s1)
    80003e74:	fb1ff06f          	j	80003e24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003e78:	0004b783          	ld	a5,0(s1)
    80003e7c:	00f686b3          	add	a3,a3,a5
    80003e80:	01068693          	addi	a3,a3,16
    80003e84:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003e88:	0084b783          	ld	a5,8(s1)
    80003e8c:	00f73423          	sd	a5,8(a4)
}
    80003e90:	fa9ff06f          	j	80003e38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003e94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00113c23          	sd	ra,24(sp)
    80003e9c:	00813823          	sd	s0,16(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	01213023          	sd	s2,0(sp)
    80003ea8:	02010413          	addi	s0,sp,32
    80003eac:	00050913          	mv	s2,a0
    initMemory();
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	cf4080e7          	jalr	-780(ra) # 80003ba4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003eb8:	00008497          	auipc	s1,0x8
    80003ebc:	cb84b483          	ld	s1,-840(s1) # 8000bb70 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003ec0:	00000713          	li	a4,0
    while(curr != 0)
    80003ec4:	02048a63          	beqz	s1,80003ef8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003ec8:	01048793          	addi	a5,s1,16
    80003ecc:	01278863          	beq	a5,s2,80003edc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003ed0:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ed4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ed8:	fedff06f          	j	80003ec4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003edc:	02070e63          	beqz	a4,80003f18 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003ee0:	0084b783          	ld	a5,8(s1)
    80003ee4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003ee8:	0004b583          	ld	a1,0(s1)
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	ec0080e7          	jalr	-320(ra) # 80003db0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003ef8:	02048863          	beqz	s1,80003f28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003efc:	00000513          	li	a0,0
    else
        return 1;
}
    80003f00:	01813083          	ld	ra,24(sp)
    80003f04:	01013403          	ld	s0,16(sp)
    80003f08:	00813483          	ld	s1,8(sp)
    80003f0c:	00013903          	ld	s2,0(sp)
    80003f10:	02010113          	addi	sp,sp,32
    80003f14:	00008067          	ret
                headAllocated = curr->next;
    80003f18:	0084b783          	ld	a5,8(s1)
    80003f1c:	00008717          	auipc	a4,0x8
    80003f20:	c4f73a23          	sd	a5,-940(a4) # 8000bb70 <_ZN15MemoryAllocator13headAllocatedE>
    80003f24:	fc5ff06f          	j	80003ee8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003f28:	00100513          	li	a0,1
    80003f2c:	fd5ff06f          	j	80003f00 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003f30 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003f30:	ff010113          	addi	sp,sp,-16
    80003f34:	00113423          	sd	ra,8(sp)
    80003f38:	00813023          	sd	s0,0(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	f54080e7          	jalr	-172(ra) # 80003e94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003f48:	00813083          	ld	ra,8(sp)
    80003f4c:	00013403          	ld	s0,0(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    80003f58:	ff010113          	addi	sp,sp,-16
    80003f5c:	00113423          	sd	ra,8(sp)
    80003f60:	00813023          	sd	s0,0(sp)
    80003f64:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	e20080e7          	jalr	-480(ra) # 80003d88 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003f70:	00813083          	ld	ra,8(sp)
    80003f74:	00013403          	ld	s0,0(sp)
    80003f78:	01010113          	addi	sp,sp,16
    80003f7c:	00008067          	ret

0000000080003f80 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00113423          	sd	ra,8(sp)
    80003f88:	00813023          	sd	s0,0(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80003f90:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80003f94:	00651513          	slli	a0,a0,0x6
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	fc0080e7          	jalr	-64(ra) # 80003f58 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003fa0:	00050513          	mv	a0,a0
}
    80003fa4:	00813083          	ld	ra,8(sp)
    80003fa8:	00013403          	ld	s0,0(sp)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret

0000000080003fb4 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00113423          	sd	ra,8(sp)
    80003fbc:	00813023          	sd	s0,0(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	f6c080e7          	jalr	-148(ra) # 80003f30 <_ZN15MemoryAllocator8mem_freeEPv>
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	01010113          	addi	sp,sp,16
    80003fd8:	00008067          	ret

0000000080003fdc <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80003fdc:	ff010113          	addi	sp,sp,-16
    80003fe0:	00113423          	sd	ra,8(sp)
    80003fe4:	00813023          	sd	s0,0(sp)
    80003fe8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003fec:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	fc4080e7          	jalr	-60(ra) # 80003fb4 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003ff8:	00050513          	mv	a0,a0
}
    80003ffc:	00813083          	ld	ra,8(sp)
    80004000:	00013403          	ld	s0,0(sp)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret

000000008000400c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00813423          	sd	s0,8(sp)
    80004014:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004018:	00b52a23          	sw	a1,20(a0)
    8000401c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004020:	00053423          	sd	zero,8(a0)
    80004024:	00053023          	sd	zero,0(a0)
}
    80004028:	00813403          	ld	s0,8(sp)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813423          	sd	s0,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004040:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004044:	00053783          	ld	a5,0(a0)
    80004048:	00078e63          	beqz	a5,80004064 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000404c:	00853783          	ld	a5,8(a0)
    80004050:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004054:	00b53423          	sd	a1,8(a0)
    }
}
    80004058:	00813403          	ld	s0,8(sp)
    8000405c:	01010113          	addi	sp,sp,16
    80004060:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004064:	00b53423          	sd	a1,8(a0)
    80004068:	00b53023          	sd	a1,0(a0)
    8000406c:	fedff06f          	j	80004058 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004070 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00113423          	sd	ra,8(sp)
    80004078:	00813023          	sd	s0,0(sp)
    8000407c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004080:	00008797          	auipc	a5,0x8
    80004084:	9f87b783          	ld	a5,-1544(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004088:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000408c:	00200793          	li	a5,2
    80004090:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    80004094:	00000097          	auipc	ra,0x0
    80004098:	fa0080e7          	jalr	-96(ra) # 80004034 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	710080e7          	jalr	1808(ra) # 800027ac <_ZN3PCB8dispatchEv>
}
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800040b4:	01052783          	lw	a5,16(a0)
    800040b8:	fff7879b          	addiw	a5,a5,-1
    800040bc:	00f52823          	sw	a5,16(a0)
    800040c0:	02079713          	slli	a4,a5,0x20
    800040c4:	00074663          	bltz	a4,800040d0 <_ZN10KSemaphore4waitEv+0x1c>
}
    800040c8:	00000513          	li	a0,0
    800040cc:	00008067          	ret
uint64 KSemaphore::wait() {
    800040d0:	ff010113          	addi	sp,sp,-16
    800040d4:	00113423          	sd	ra,8(sp)
    800040d8:	00813023          	sd	s0,0(sp)
    800040dc:	01010413          	addi	s0,sp,16
        block();
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	f90080e7          	jalr	-112(ra) # 80004070 <_ZN10KSemaphore5blockEv>
}
    800040e8:	00000513          	li	a0,0
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00813423          	sd	s0,8(sp)
    80004104:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004108:	00053503          	ld	a0,0(a0)
    8000410c:	00813403          	ld	s0,8(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004124:	00053783          	ld	a5,0(a0)
    80004128:	00078c63          	beqz	a5,80004140 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000412c:	0087b703          	ld	a4,8(a5)
    80004130:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004134:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004138:	00053783          	ld	a5,0(a0)
    8000413c:	00078863          	beqz	a5,8000414c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004140:	00813403          	ld	s0,8(sp)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret
        tailBlocked =0;
    8000414c:	00053423          	sd	zero,8(a0)
    80004150:	ff1ff06f          	j	80004140 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004154 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004154:	fe010113          	addi	sp,sp,-32
    80004158:	00113c23          	sd	ra,24(sp)
    8000415c:	00813823          	sd	s0,16(sp)
    80004160:	00913423          	sd	s1,8(sp)
    80004164:	01213023          	sd	s2,0(sp)
    80004168:	02010413          	addi	s0,sp,32
    8000416c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004170:	00090513          	mv	a0,s2
    80004174:	00000097          	auipc	ra,0x0
    80004178:	f88080e7          	jalr	-120(ra) # 800040fc <_ZN10KSemaphore15getFirstBlockedEv>
    8000417c:	00050493          	mv	s1,a0
    80004180:	02050063          	beqz	a0,800041a0 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80004184:	00090513          	mv	a0,s2
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	f90080e7          	jalr	-112(ra) # 80004118 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004190:	00048513          	mv	a0,s1
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	fe0080e7          	jalr	-32(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000419c:	fd5ff06f          	j	80004170 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	00813483          	ld	s1,8(sp)
    800041ac:	00013903          	ld	s2,0(sp)
    800041b0:	02010113          	addi	sp,sp,32
    800041b4:	00008067          	ret

00000000800041b8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800041b8:	fe010113          	addi	sp,sp,-32
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00913423          	sd	s1,8(sp)
    800041c8:	01213023          	sd	s2,0(sp)
    800041cc:	02010413          	addi	s0,sp,32
    800041d0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	f28080e7          	jalr	-216(ra) # 800040fc <_ZN10KSemaphore15getFirstBlockedEv>
    800041dc:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800041e0:	00090513          	mv	a0,s2
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	f34080e7          	jalr	-204(ra) # 80004118 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800041ec:	00048863          	beqz	s1,800041fc <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    800041f0:	00048513          	mv	a0,s1
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	f80080e7          	jalr	-128(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
}
    800041fc:	01813083          	ld	ra,24(sp)
    80004200:	01013403          	ld	s0,16(sp)
    80004204:	00813483          	ld	s1,8(sp)
    80004208:	00013903          	ld	s2,0(sp)
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret

0000000080004214 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004214:	01052783          	lw	a5,16(a0)
    80004218:	0017879b          	addiw	a5,a5,1
    8000421c:	0007871b          	sext.w	a4,a5
    80004220:	00f52823          	sw	a5,16(a0)
    80004224:	00e05663          	blez	a4,80004230 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004228:	00000513          	li	a0,0
    8000422c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
        unblock();
    80004240:	00000097          	auipc	ra,0x0
    80004244:	f78080e7          	jalr	-136(ra) # 800041b8 <_ZN10KSemaphore7unblockEv>
}
    80004248:	00000513          	li	a0,0
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    8000425c:	ff010113          	addi	sp,sp,-16
    80004260:	00113423          	sd	ra,8(sp)
    80004264:	00813023          	sd	s0,0(sp)
    80004268:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	cec080e7          	jalr	-788(ra) # 80003f58 <_Z7kmallocm>
}
    80004274:	00813083          	ld	ra,8(sp)
    80004278:	00013403          	ld	s0,0(sp)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <_ZN10KSemaphore14semOpenHandlerEv>:
void KSemaphore::semOpenHandler() {
    80004284:	fd010113          	addi	sp,sp,-48
    80004288:	02113423          	sd	ra,40(sp)
    8000428c:	02813023          	sd	s0,32(sp)
    80004290:	00913c23          	sd	s1,24(sp)
    80004294:	01213823          	sd	s2,16(sp)
    80004298:	01313423          	sd	s3,8(sp)
    8000429c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800042a0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800042a4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800042a8:	01800513          	li	a0,24
    800042ac:	00000097          	auipc	ra,0x0
    800042b0:	fb0080e7          	jalr	-80(ra) # 8000425c <_ZN10KSemaphorenwEm>
    800042b4:	00050493          	mv	s1,a0
    800042b8:	0009859b          	sext.w	a1,s3
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	d50080e7          	jalr	-688(ra) # 8000400c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800042c4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800042c8:	02048263          	beqz	s1,800042ec <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800042cc:	00000513          	li	a0,0
}
    800042d0:	02813083          	ld	ra,40(sp)
    800042d4:	02013403          	ld	s0,32(sp)
    800042d8:	01813483          	ld	s1,24(sp)
    800042dc:	01013903          	ld	s2,16(sp)
    800042e0:	00813983          	ld	s3,8(sp)
    800042e4:	03010113          	addi	sp,sp,48
    800042e8:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800042ec:	fff00513          	li	a0,-1
    800042f0:	fe1ff06f          	j	800042d0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800042f4 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800042f4:	ff010113          	addi	sp,sp,-16
    800042f8:	00113423          	sd	ra,8(sp)
    800042fc:	00813023          	sd	s0,0(sp)
    80004300:	01010413          	addi	s0,sp,16
    kfree(p);
    80004304:	00000097          	auipc	ra,0x0
    80004308:	cb0080e7          	jalr	-848(ra) # 80003fb4 <_Z5kfreePv>
}
    8000430c:	00813083          	ld	ra,8(sp)
    80004310:	00013403          	ld	s0,0(sp)
    80004314:	01010113          	addi	sp,sp,16
    80004318:	00008067          	ret

000000008000431c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000432c:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004330:	00000097          	auipc	ra,0x0
    80004334:	d84080e7          	jalr	-636(ra) # 800040b4 <_ZN10KSemaphore4waitEv>
    80004338:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000433c:	fe843783          	ld	a5,-24(s0)
    80004340:	00078513          	mv	a0,a5
}
    80004344:	01813083          	ld	ra,24(sp)
    80004348:	01013403          	ld	s0,16(sp)
    8000434c:	02010113          	addi	sp,sp,32
    80004350:	00008067          	ret

0000000080004354 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004354:	fe010113          	addi	sp,sp,-32
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00813823          	sd	s0,16(sp)
    80004360:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004364:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	eac080e7          	jalr	-340(ra) # 80004214 <_ZN10KSemaphore6signalEv>
    80004370:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004374:	fe843783          	ld	a5,-24(s0)
    80004378:	00078513          	mv	a0,a5
}
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00008067          	ret

000000008000438c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00113c23          	sd	ra,24(sp)
    80004394:	00813823          	sd	s0,16(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800043a0:	00058493          	mv	s1,a1
    delete kSem;
    800043a4:	00048e63          	beqz	s1,800043c0 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	da8080e7          	jalr	-600(ra) # 80004154 <_ZN10KSemaphoreD1Ev>
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	f3c080e7          	jalr	-196(ra) # 800042f4 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800043c0:	00000513          	li	a0,0
}
    800043c4:	01813083          	ld	ra,24(sp)
    800043c8:	01013403          	ld	s0,16(sp)
    800043cc:	00813483          	ld	s1,8(sp)
    800043d0:	02010113          	addi	sp,sp,32
    800043d4:	00008067          	ret

00000000800043d8 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    800043d8:	fd010113          	addi	sp,sp,-48
    800043dc:	02113423          	sd	ra,40(sp)
    800043e0:	02813023          	sd	s0,32(sp)
    800043e4:	00913c23          	sd	s1,24(sp)
    800043e8:	01213823          	sd	s2,16(sp)
    800043ec:	01313423          	sd	s3,8(sp)
    800043f0:	03010413          	addi	s0,sp,48
    800043f4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    800043f8:	00005517          	auipc	a0,0x5
    800043fc:	fa050513          	addi	a0,a0,-96 # 80009398 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004400:	fffff097          	auipc	ra,0xfffff
    80004404:	3bc080e7          	jalr	956(ra) # 800037bc <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004408:	00000993          	li	s3,0
    while (!threadEnd) {
    8000440c:	00007797          	auipc	a5,0x7
    80004410:	7747a783          	lw	a5,1908(a5) # 8000bb80 <threadEnd>
    80004414:	0c079863          	bnez	a5,800044e4 <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    80004418:	00092583          	lw	a1,0(s2)
    8000441c:	0305859b          	addiw	a1,a1,48
    80004420:	00893503          	ld	a0,8(s2)
    80004424:	00002097          	auipc	ra,0x2
    80004428:	c68080e7          	jalr	-920(ra) # 8000608c <_ZN6Buffer3putEi>
        i++;
    8000442c:	0019849b          	addiw	s1,s3,1
    80004430:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    80004434:	00007717          	auipc	a4,0x7
    80004438:	74c70713          	addi	a4,a4,1868 # 8000bb80 <threadEnd>
    8000443c:	00472783          	lw	a5,4(a4)
    80004440:	0017879b          	addiw	a5,a5,1
    80004444:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    80004448:	00005517          	auipc	a0,0x5
    8000444c:	f6850513          	addi	a0,a0,-152 # 800093b0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    80004450:	fffff097          	auipc	ra,0xfffff
    80004454:	36c080e7          	jalr	876(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    80004458:	00092503          	lw	a0,0(s2)
    8000445c:	0305051b          	addiw	a0,a0,48
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	3cc080e7          	jalr	972(ra) # 8000382c <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    80004468:	00092703          	lw	a4,0(s2)
    8000446c:	0027179b          	slliw	a5,a4,0x2
    80004470:	00e787bb          	addw	a5,a5,a4
    80004474:	0017979b          	slliw	a5,a5,0x1
    80004478:	02f4e7bb          	remw	a5,s1,a5
    8000447c:	02078e63          	beqz	a5,800044b8 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    80004480:	00007497          	auipc	s1,0x7
    80004484:	70048493          	addi	s1,s1,1792 # 8000bb80 <threadEnd>
    80004488:	0044a503          	lw	a0,4(s1)
    8000448c:	0005051b          	sext.w	a0,a0
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	39c080e7          	jalr	924(ra) # 8000382c <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004498:	0044a783          	lw	a5,4(s1)
    8000449c:	0007879b          	sext.w	a5,a5
    800044a0:	00f00713          	li	a4,15
    800044a4:	f6e794e3          	bne	a5,a4,8000440c <_Z8producerPv+0x34>
            threadEnd = 1;
    800044a8:	00100793          	li	a5,1
    800044ac:	00007717          	auipc	a4,0x7
    800044b0:	6cf72a23          	sw	a5,1748(a4) # 8000bb80 <threadEnd>
    800044b4:	f59ff06f          	j	8000440c <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    800044b8:	00005517          	auipc	a0,0x5
    800044bc:	f0050513          	addi	a0,a0,-256 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	2fc080e7          	jalr	764(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    800044c8:	ffffd097          	auipc	ra,0xffffd
    800044cc:	e5c080e7          	jalr	-420(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	ef850513          	addi	a0,a0,-264 # 800093c8 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	2e4080e7          	jalr	740(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    800044e0:	fa1ff06f          	j	80004480 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    800044e4:	00005517          	auipc	a0,0x5
    800044e8:	efc50513          	addi	a0,a0,-260 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    800044ec:	fffff097          	auipc	ra,0xfffff
    800044f0:	2d0080e7          	jalr	720(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800044f4:	01093503          	ld	a0,16(s2)
    800044f8:	ffffd097          	auipc	ra,0xffffd
    800044fc:	f04080e7          	jalr	-252(ra) # 800013fc <sem_signal>
}
    80004500:	02813083          	ld	ra,40(sp)
    80004504:	02013403          	ld	s0,32(sp)
    80004508:	01813483          	ld	s1,24(sp)
    8000450c:	01013903          	ld	s2,16(sp)
    80004510:	00813983          	ld	s3,8(sp)
    80004514:	03010113          	addi	sp,sp,48
    80004518:	00008067          	ret

000000008000451c <_Z8consumerPv>:

void consumer(void *arg) {
    8000451c:	fd010113          	addi	sp,sp,-48
    80004520:	02113423          	sd	ra,40(sp)
    80004524:	02813023          	sd	s0,32(sp)
    80004528:	00913c23          	sd	s1,24(sp)
    8000452c:	01213823          	sd	s2,16(sp)
    80004530:	01313423          	sd	s3,8(sp)
    80004534:	01413023          	sd	s4,0(sp)
    80004538:	03010413          	addi	s0,sp,48
    8000453c:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    80004540:	00005517          	auipc	a0,0x5
    80004544:	eb850513          	addi	a0,a0,-328 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	274080e7          	jalr	628(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    int i = 0;
    80004550:	00000a13          	li	s4,0
    80004554:	0200006f          	j	80004574 <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004558:	ffffd097          	auipc	ra,0xffffd
    8000455c:	dcc080e7          	jalr	-564(ra) # 80001324 <thread_dispatch>
    80004560:	0680006f          	j	800045c8 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	bac50513          	addi	a0,a0,-1108 # 80009110 <CONSOLE_STATUS+0x100>
    8000456c:	fffff097          	auipc	ra,0xfffff
    80004570:	250080e7          	jalr	592(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    80004574:	00007797          	auipc	a5,0x7
    80004578:	60c7a783          	lw	a5,1548(a5) # 8000bb80 <threadEnd>
    8000457c:	04079e63          	bnez	a5,800045d8 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    80004580:	0089b503          	ld	a0,8(s3)
    80004584:	00002097          	auipc	ra,0x2
    80004588:	b98080e7          	jalr	-1128(ra) # 8000611c <_ZN6Buffer3getEv>
    8000458c:	00050913          	mv	s2,a0
        i++;
    80004590:	001a049b          	addiw	s1,s4,1
    80004594:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004598:	00005517          	auipc	a0,0x5
    8000459c:	e7850513          	addi	a0,a0,-392 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800045a0:	fffff097          	auipc	ra,0xfffff
    800045a4:	21c080e7          	jalr	540(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    800045a8:	00090513          	mv	a0,s2
    800045ac:	fffff097          	auipc	ra,0xfffff
    800045b0:	280080e7          	jalr	640(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    800045b4:	0009a703          	lw	a4,0(s3)
    800045b8:	0027179b          	slliw	a5,a4,0x2
    800045bc:	00e787bb          	addw	a5,a5,a4
    800045c0:	02f4e7bb          	remw	a5,s1,a5
    800045c4:	f8078ae3          	beqz	a5,80004558 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    800045c8:	05000793          	li	a5,80
    800045cc:	02f4e4bb          	remw	s1,s1,a5
    800045d0:	fa0492e3          	bnez	s1,80004574 <_Z8consumerPv+0x58>
    800045d4:	f91ff06f          	j	80004564 <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    800045d8:	00005517          	auipc	a0,0x5
    800045dc:	e4050513          	addi	a0,a0,-448 # 80009418 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    800045e0:	fffff097          	auipc	ra,0xfffff
    800045e4:	1dc080e7          	jalr	476(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800045e8:	0109b503          	ld	a0,16(s3)
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	e10080e7          	jalr	-496(ra) # 800013fc <sem_signal>
}
    800045f4:	02813083          	ld	ra,40(sp)
    800045f8:	02013403          	ld	s0,32(sp)
    800045fc:	01813483          	ld	s1,24(sp)
    80004600:	01013903          	ld	s2,16(sp)
    80004604:	00813983          	ld	s3,8(sp)
    80004608:	00013a03          	ld	s4,0(sp)
    8000460c:	03010113          	addi	sp,sp,48
    80004610:	00008067          	ret

0000000080004614 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80004614:	fe010113          	addi	sp,sp,-32
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00813823          	sd	s0,16(sp)
    80004620:	00913423          	sd	s1,8(sp)
    80004624:	01213023          	sd	s2,0(sp)
    80004628:	02010413          	addi	s0,sp,32
    8000462c:	00050493          	mv	s1,a0
    int i = 0;
    80004630:	00000913          	li	s2,0
    80004634:	00c0006f          	j	80004640 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80004638:	ffffd097          	auipc	ra,0xffffd
    8000463c:	cec080e7          	jalr	-788(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    80004640:	00004097          	auipc	ra,0x4
    80004644:	c68080e7          	jalr	-920(ra) # 800082a8 <__getc>
    while ((key = getc()) != 0x1b) {
    80004648:	0005059b          	sext.w	a1,a0
    8000464c:	01b00793          	li	a5,27
    80004650:	02f58a63          	beq	a1,a5,80004684 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004654:	0084b503          	ld	a0,8(s1)
    80004658:	00002097          	auipc	ra,0x2
    8000465c:	a34080e7          	jalr	-1484(ra) # 8000608c <_ZN6Buffer3putEi>
        i++;
    80004660:	0019071b          	addiw	a4,s2,1
    80004664:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004668:	0004a683          	lw	a3,0(s1)
    8000466c:	0026979b          	slliw	a5,a3,0x2
    80004670:	00d787bb          	addw	a5,a5,a3
    80004674:	0017979b          	slliw	a5,a5,0x1
    80004678:	02f767bb          	remw	a5,a4,a5
    8000467c:	fc0792e3          	bnez	a5,80004640 <_Z16producerKeyboardPv+0x2c>
    80004680:	fb9ff06f          	j	80004638 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80004684:	00100793          	li	a5,1
    80004688:	00007717          	auipc	a4,0x7
    8000468c:	4ef72c23          	sw	a5,1272(a4) # 8000bb80 <threadEnd>
    delete data->buffer;
    80004690:	0084b903          	ld	s2,8(s1)
    80004694:	00090e63          	beqz	s2,800046b0 <_Z16producerKeyboardPv+0x9c>
    80004698:	00090513          	mv	a0,s2
    8000469c:	00002097          	auipc	ra,0x2
    800046a0:	944080e7          	jalr	-1724(ra) # 80005fe0 <_ZN6BufferD1Ev>
    800046a4:	00090513          	mv	a0,s2
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	cd0080e7          	jalr	-816(ra) # 80003378 <_ZdlPv>
    sem_signal(data->wait);
    800046b0:	0104b503          	ld	a0,16(s1)
    800046b4:	ffffd097          	auipc	ra,0xffffd
    800046b8:	d48080e7          	jalr	-696(ra) # 800013fc <sem_signal>
}
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	00013903          	ld	s2,0(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800046d4:	f6010113          	addi	sp,sp,-160
    800046d8:	08113c23          	sd	ra,152(sp)
    800046dc:	08813823          	sd	s0,144(sp)
    800046e0:	08913423          	sd	s1,136(sp)
    800046e4:	09213023          	sd	s2,128(sp)
    800046e8:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800046ec:	00005517          	auipc	a0,0x5
    800046f0:	d4450513          	addi	a0,a0,-700 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	13c080e7          	jalr	316(ra) # 80005830 <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	d5450513          	addi	a0,a0,-684 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004704:	00001097          	auipc	ra,0x1
    80004708:	12c080e7          	jalr	300(ra) # 80005830 <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    8000470c:	00005517          	auipc	a0,0x5
    80004710:	d6450513          	addi	a0,a0,-668 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	11c080e7          	jalr	284(ra) # 80005830 <_Z11printStringPKc>
    8000471c:	00000613          	li	a2,0
    80004720:	00a00593          	li	a1,10
    80004724:	00300513          	li	a0,3
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	2a0080e7          	jalr	672(ra) # 800059c8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004730:	00005517          	auipc	a0,0x5
    80004734:	d5850513          	addi	a0,a0,-680 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x108>
    80004738:	00001097          	auipc	ra,0x1
    8000473c:	0f8080e7          	jalr	248(ra) # 80005830 <_Z11printStringPKc>
    80004740:	00000613          	li	a2,0
    80004744:	00a00593          	li	a1,10
    80004748:	00100513          	li	a0,1
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	27c080e7          	jalr	636(ra) # 800059c8 <_Z8printIntiii>
    printString(".\n");
    80004754:	00005517          	auipc	a0,0x5
    80004758:	b2450513          	addi	a0,a0,-1244 # 80009278 <CONSOLE_STATUS+0x268>
    8000475c:	00001097          	auipc	ra,0x1
    80004760:	0d4080e7          	jalr	212(ra) # 80005830 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004764:	03800513          	li	a0,56
    80004768:	fffff097          	auipc	ra,0xfffff
    8000476c:	be8080e7          	jalr	-1048(ra) # 80003350 <_Znwm>
    80004770:	00050913          	mv	s2,a0
    80004774:	00100593          	li	a1,1
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	7e0080e7          	jalr	2016(ra) # 80005f58 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004780:	00000593          	li	a1,0
    80004784:	00007517          	auipc	a0,0x7
    80004788:	40450513          	addi	a0,a0,1028 # 8000bb88 <waitForAll>
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	be0080e7          	jalr	-1056(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004794:	00300793          	li	a5,3
    80004798:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    8000479c:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    800047a0:	00007797          	auipc	a5,0x7
    800047a4:	3e87b783          	ld	a5,1000(a5) # 8000bb88 <waitForAll>
    800047a8:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    800047ac:	fa840613          	addi	a2,s0,-88
    800047b0:	00000597          	auipc	a1,0x0
    800047b4:	d6c58593          	addi	a1,a1,-660 # 8000451c <_Z8consumerPv>
    800047b8:	fc040513          	addi	a0,s0,-64
    800047bc:	ffffd097          	auipc	ra,0xffffd
    800047c0:	ae8080e7          	jalr	-1304(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800047c4:	00000493          	li	s1,0
    800047c8:	00200793          	li	a5,2
    800047cc:	0697c063          	blt	a5,s1,8000482c <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    800047d0:	00149613          	slli	a2,s1,0x1
    800047d4:	009607b3          	add	a5,a2,s1
    800047d8:	00379793          	slli	a5,a5,0x3
    800047dc:	fe040713          	addi	a4,s0,-32
    800047e0:	00f707b3          	add	a5,a4,a5
    800047e4:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    800047e8:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    800047ec:	00007717          	auipc	a4,0x7
    800047f0:	39c73703          	ld	a4,924(a4) # 8000bb88 <waitForAll>
    800047f4:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    800047f8:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    800047fc:	00960633          	add	a2,a2,s1
    80004800:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004804:	f6040713          	addi	a4,s0,-160
    80004808:	00c70633          	add	a2,a4,a2
    8000480c:	00000597          	auipc	a1,0x0
    80004810:	bcc58593          	addi	a1,a1,-1076 # 800043d8 <_Z8producerPv>
    80004814:	fc840513          	addi	a0,s0,-56
    80004818:	00f50533          	add	a0,a0,a5
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	a88080e7          	jalr	-1400(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004824:	0014849b          	addiw	s1,s1,1
    80004828:	fa1ff06f          	j	800047c8 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	af8080e7          	jalr	-1288(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004834:	00000493          	li	s1,0
    80004838:	0180006f          	j	80004850 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    8000483c:	00007517          	auipc	a0,0x7
    80004840:	34c53503          	ld	a0,844(a0) # 8000bb88 <waitForAll>
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	b8c080e7          	jalr	-1140(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000484c:	0014849b          	addiw	s1,s1,1
    80004850:	00300793          	li	a5,3
    80004854:	fe97d4e3          	bge	a5,s1,8000483c <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004858:	00007517          	auipc	a0,0x7
    8000485c:	33053503          	ld	a0,816(a0) # 8000bb88 <waitForAll>
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	b44080e7          	jalr	-1212(ra) # 800013a4 <sem_close>
}
    80004868:	09813083          	ld	ra,152(sp)
    8000486c:	09013403          	ld	s0,144(sp)
    80004870:	08813483          	ld	s1,136(sp)
    80004874:	08013903          	ld	s2,128(sp)
    80004878:	0a010113          	addi	sp,sp,160
    8000487c:	00008067          	ret
    80004880:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004884:	00090513          	mv	a0,s2
    80004888:	fffff097          	auipc	ra,0xfffff
    8000488c:	af0080e7          	jalr	-1296(ra) # 80003378 <_ZdlPv>
    80004890:	00048513          	mv	a0,s1
    80004894:	00008097          	auipc	ra,0x8
    80004898:	3e4080e7          	jalr	996(ra) # 8000cc78 <_Unwind_Resume>

000000008000489c <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000489c:	fe010113          	addi	sp,sp,-32
    800048a0:	00113c23          	sd	ra,24(sp)
    800048a4:	00813823          	sd	s0,16(sp)
    800048a8:	00913423          	sd	s1,8(sp)
    800048ac:	01213023          	sd	s2,0(sp)
    800048b0:	02010413          	addi	s0,sp,32
    800048b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048b8:	00100793          	li	a5,1
    800048bc:	02a7f863          	bgeu	a5,a0,800048ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048c0:	00a00793          	li	a5,10
    800048c4:	02f577b3          	remu	a5,a0,a5
    800048c8:	02078e63          	beqz	a5,80004904 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048cc:	fff48513          	addi	a0,s1,-1
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	fcc080e7          	jalr	-52(ra) # 8000489c <_ZL9fibonaccim>
    800048d8:	00050913          	mv	s2,a0
    800048dc:	ffe48513          	addi	a0,s1,-2
    800048e0:	00000097          	auipc	ra,0x0
    800048e4:	fbc080e7          	jalr	-68(ra) # 8000489c <_ZL9fibonaccim>
    800048e8:	00a90533          	add	a0,s2,a0
}
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	00013903          	ld	s2,0(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	a20080e7          	jalr	-1504(ra) # 80001324 <thread_dispatch>
    8000490c:	fc1ff06f          	j	800048cc <_ZL9fibonaccim+0x30>

0000000080004910 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004910:	fe010113          	addi	sp,sp,-32
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00813823          	sd	s0,16(sp)
    8000491c:	00913423          	sd	s1,8(sp)
    80004920:	01213023          	sd	s2,0(sp)
    80004924:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004928:	00000913          	li	s2,0
    8000492c:	0380006f          	j	80004964 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	9f4080e7          	jalr	-1548(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004938:	00148493          	addi	s1,s1,1
    8000493c:	000027b7          	lui	a5,0x2
    80004940:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004944:	0097ee63          	bltu	a5,s1,80004960 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004948:	00000713          	li	a4,0
    8000494c:	000077b7          	lui	a5,0x7
    80004950:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004954:	fce7eee3          	bltu	a5,a4,80004930 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004958:	00170713          	addi	a4,a4,1
    8000495c:	ff1ff06f          	j	8000494c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004960:	00190913          	addi	s2,s2,1
    80004964:	00900793          	li	a5,9
    80004968:	0527e063          	bltu	a5,s2,800049a8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000496c:	00005517          	auipc	a0,0x5
    80004970:	b3450513          	addi	a0,a0,-1228 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004974:	00001097          	auipc	ra,0x1
    80004978:	ebc080e7          	jalr	-324(ra) # 80005830 <_Z11printStringPKc>
    8000497c:	00000613          	li	a2,0
    80004980:	00a00593          	li	a1,10
    80004984:	0009051b          	sext.w	a0,s2
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	040080e7          	jalr	64(ra) # 800059c8 <_Z8printIntiii>
    80004990:	00004517          	auipc	a0,0x4
    80004994:	78050513          	addi	a0,a0,1920 # 80009110 <CONSOLE_STATUS+0x100>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	e98080e7          	jalr	-360(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049a0:	00000493          	li	s1,0
    800049a4:	f99ff06f          	j	8000493c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	b0050513          	addi	a0,a0,-1280 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	e80080e7          	jalr	-384(ra) # 80005830 <_Z11printStringPKc>
    finishedA = true;
    800049b8:	00100793          	li	a5,1
    800049bc:	00007717          	auipc	a4,0x7
    800049c0:	1cf70a23          	sb	a5,468(a4) # 8000bb90 <_ZL9finishedA>
}
    800049c4:	01813083          	ld	ra,24(sp)
    800049c8:	01013403          	ld	s0,16(sp)
    800049cc:	00813483          	ld	s1,8(sp)
    800049d0:	00013903          	ld	s2,0(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00113c23          	sd	ra,24(sp)
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00913423          	sd	s1,8(sp)
    800049ec:	01213023          	sd	s2,0(sp)
    800049f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800049f4:	00000913          	li	s2,0
    800049f8:	0380006f          	j	80004a30 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	928080e7          	jalr	-1752(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a04:	00148493          	addi	s1,s1,1
    80004a08:	000027b7          	lui	a5,0x2
    80004a0c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a10:	0097ee63          	bltu	a5,s1,80004a2c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a14:	00000713          	li	a4,0
    80004a18:	000077b7          	lui	a5,0x7
    80004a1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a20:	fce7eee3          	bltu	a5,a4,800049fc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004a24:	00170713          	addi	a4,a4,1
    80004a28:	ff1ff06f          	j	80004a18 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a2c:	00190913          	addi	s2,s2,1
    80004a30:	00f00793          	li	a5,15
    80004a34:	0527e063          	bltu	a5,s2,80004a74 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a38:	00005517          	auipc	a0,0x5
    80004a3c:	a8050513          	addi	a0,a0,-1408 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	df0080e7          	jalr	-528(ra) # 80005830 <_Z11printStringPKc>
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	0009051b          	sext.w	a0,s2
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	f74080e7          	jalr	-140(ra) # 800059c8 <_Z8printIntiii>
    80004a5c:	00004517          	auipc	a0,0x4
    80004a60:	6b450513          	addi	a0,a0,1716 # 80009110 <CONSOLE_STATUS+0x100>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	dcc080e7          	jalr	-564(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a6c:	00000493          	li	s1,0
    80004a70:	f99ff06f          	j	80004a08 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004a74:	00005517          	auipc	a0,0x5
    80004a78:	a4c50513          	addi	a0,a0,-1460 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	db4080e7          	jalr	-588(ra) # 80005830 <_Z11printStringPKc>
    finishedB = true;
    80004a84:	00100793          	li	a5,1
    80004a88:	00007717          	auipc	a4,0x7
    80004a8c:	10f704a3          	sb	a5,265(a4) # 8000bb91 <_ZL9finishedB>
    thread_dispatch();
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	894080e7          	jalr	-1900(ra) # 80001324 <thread_dispatch>
}
    80004a98:	01813083          	ld	ra,24(sp)
    80004a9c:	01013403          	ld	s0,16(sp)
    80004aa0:	00813483          	ld	s1,8(sp)
    80004aa4:	00013903          	ld	s2,0(sp)
    80004aa8:	02010113          	addi	sp,sp,32
    80004aac:	00008067          	ret

0000000080004ab0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004ab0:	fe010113          	addi	sp,sp,-32
    80004ab4:	00113c23          	sd	ra,24(sp)
    80004ab8:	00813823          	sd	s0,16(sp)
    80004abc:	00913423          	sd	s1,8(sp)
    80004ac0:	01213023          	sd	s2,0(sp)
    80004ac4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ac8:	00000493          	li	s1,0
    80004acc:	0400006f          	j	80004b0c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ad0:	00005517          	auipc	a0,0x5
    80004ad4:	a0050513          	addi	a0,a0,-1536 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	d58080e7          	jalr	-680(ra) # 80005830 <_Z11printStringPKc>
    80004ae0:	00000613          	li	a2,0
    80004ae4:	00a00593          	li	a1,10
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	edc080e7          	jalr	-292(ra) # 800059c8 <_Z8printIntiii>
    80004af4:	00004517          	auipc	a0,0x4
    80004af8:	61c50513          	addi	a0,a0,1564 # 80009110 <CONSOLE_STATUS+0x100>
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	d34080e7          	jalr	-716(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b04:	0014849b          	addiw	s1,s1,1
    80004b08:	0ff4f493          	andi	s1,s1,255
    80004b0c:	00200793          	li	a5,2
    80004b10:	fc97f0e3          	bgeu	a5,s1,80004ad0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004b14:	00005517          	auipc	a0,0x5
    80004b18:	9c450513          	addi	a0,a0,-1596 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	d14080e7          	jalr	-748(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b24:	00700313          	li	t1,7
    thread_dispatch();
    80004b28:	ffffc097          	auipc	ra,0xffffc
    80004b2c:	7fc080e7          	jalr	2044(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b30:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004b34:	00005517          	auipc	a0,0x5
    80004b38:	9b450513          	addi	a0,a0,-1612 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	cf4080e7          	jalr	-780(ra) # 80005830 <_Z11printStringPKc>
    80004b44:	00000613          	li	a2,0
    80004b48:	00a00593          	li	a1,10
    80004b4c:	0009051b          	sext.w	a0,s2
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	e78080e7          	jalr	-392(ra) # 800059c8 <_Z8printIntiii>
    80004b58:	00004517          	auipc	a0,0x4
    80004b5c:	5b850513          	addi	a0,a0,1464 # 80009110 <CONSOLE_STATUS+0x100>
    80004b60:	00001097          	auipc	ra,0x1
    80004b64:	cd0080e7          	jalr	-816(ra) # 80005830 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004b68:	00c00513          	li	a0,12
    80004b6c:	00000097          	auipc	ra,0x0
    80004b70:	d30080e7          	jalr	-720(ra) # 8000489c <_ZL9fibonaccim>
    80004b74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b78:	00005517          	auipc	a0,0x5
    80004b7c:	97850513          	addi	a0,a0,-1672 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	cb0080e7          	jalr	-848(ra) # 80005830 <_Z11printStringPKc>
    80004b88:	00000613          	li	a2,0
    80004b8c:	00a00593          	li	a1,10
    80004b90:	0009051b          	sext.w	a0,s2
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	e34080e7          	jalr	-460(ra) # 800059c8 <_Z8printIntiii>
    80004b9c:	00004517          	auipc	a0,0x4
    80004ba0:	57450513          	addi	a0,a0,1396 # 80009110 <CONSOLE_STATUS+0x100>
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	c8c080e7          	jalr	-884(ra) # 80005830 <_Z11printStringPKc>
    80004bac:	0400006f          	j	80004bec <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004bb0:	00005517          	auipc	a0,0x5
    80004bb4:	92050513          	addi	a0,a0,-1760 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004bb8:	00001097          	auipc	ra,0x1
    80004bbc:	c78080e7          	jalr	-904(ra) # 80005830 <_Z11printStringPKc>
    80004bc0:	00000613          	li	a2,0
    80004bc4:	00a00593          	li	a1,10
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	dfc080e7          	jalr	-516(ra) # 800059c8 <_Z8printIntiii>
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	53c50513          	addi	a0,a0,1340 # 80009110 <CONSOLE_STATUS+0x100>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	c54080e7          	jalr	-940(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004be4:	0014849b          	addiw	s1,s1,1
    80004be8:	0ff4f493          	andi	s1,s1,255
    80004bec:	00500793          	li	a5,5
    80004bf0:	fc97f0e3          	bgeu	a5,s1,80004bb0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004bf4:	00005517          	auipc	a0,0x5
    80004bf8:	8b450513          	addi	a0,a0,-1868 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	c34080e7          	jalr	-972(ra) # 80005830 <_Z11printStringPKc>
    finishedC = true;
    80004c04:	00100793          	li	a5,1
    80004c08:	00007717          	auipc	a4,0x7
    80004c0c:	f8f70523          	sb	a5,-118(a4) # 8000bb92 <_ZL9finishedC>
    thread_dispatch();
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	714080e7          	jalr	1812(ra) # 80001324 <thread_dispatch>
}
    80004c18:	01813083          	ld	ra,24(sp)
    80004c1c:	01013403          	ld	s0,16(sp)
    80004c20:	00813483          	ld	s1,8(sp)
    80004c24:	00013903          	ld	s2,0(sp)
    80004c28:	02010113          	addi	sp,sp,32
    80004c2c:	00008067          	ret

0000000080004c30 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004c30:	fe010113          	addi	sp,sp,-32
    80004c34:	00113c23          	sd	ra,24(sp)
    80004c38:	00813823          	sd	s0,16(sp)
    80004c3c:	00913423          	sd	s1,8(sp)
    80004c40:	01213023          	sd	s2,0(sp)
    80004c44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c48:	00a00493          	li	s1,10
    80004c4c:	0400006f          	j	80004c8c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c50:	00005517          	auipc	a0,0x5
    80004c54:	8b050513          	addi	a0,a0,-1872 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	bd8080e7          	jalr	-1064(ra) # 80005830 <_Z11printStringPKc>
    80004c60:	00000613          	li	a2,0
    80004c64:	00a00593          	li	a1,10
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	d5c080e7          	jalr	-676(ra) # 800059c8 <_Z8printIntiii>
    80004c74:	00004517          	auipc	a0,0x4
    80004c78:	49c50513          	addi	a0,a0,1180 # 80009110 <CONSOLE_STATUS+0x100>
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	bb4080e7          	jalr	-1100(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004c84:	0014849b          	addiw	s1,s1,1
    80004c88:	0ff4f493          	andi	s1,s1,255
    80004c8c:	00c00793          	li	a5,12
    80004c90:	fc97f0e3          	bgeu	a5,s1,80004c50 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004c94:	00005517          	auipc	a0,0x5
    80004c98:	87450513          	addi	a0,a0,-1932 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	b94080e7          	jalr	-1132(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004ca4:	00500313          	li	t1,5
    thread_dispatch();
    80004ca8:	ffffc097          	auipc	ra,0xffffc
    80004cac:	67c080e7          	jalr	1660(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004cb0:	01000513          	li	a0,16
    80004cb4:	00000097          	auipc	ra,0x0
    80004cb8:	be8080e7          	jalr	-1048(ra) # 8000489c <_ZL9fibonaccim>
    80004cbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004cc0:	00005517          	auipc	a0,0x5
    80004cc4:	85850513          	addi	a0,a0,-1960 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	b68080e7          	jalr	-1176(ra) # 80005830 <_Z11printStringPKc>
    80004cd0:	00000613          	li	a2,0
    80004cd4:	00a00593          	li	a1,10
    80004cd8:	0009051b          	sext.w	a0,s2
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	cec080e7          	jalr	-788(ra) # 800059c8 <_Z8printIntiii>
    80004ce4:	00004517          	auipc	a0,0x4
    80004ce8:	42c50513          	addi	a0,a0,1068 # 80009110 <CONSOLE_STATUS+0x100>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	b44080e7          	jalr	-1212(ra) # 80005830 <_Z11printStringPKc>
    80004cf4:	0400006f          	j	80004d34 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004cf8:	00005517          	auipc	a0,0x5
    80004cfc:	80850513          	addi	a0,a0,-2040 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004d00:	00001097          	auipc	ra,0x1
    80004d04:	b30080e7          	jalr	-1232(ra) # 80005830 <_Z11printStringPKc>
    80004d08:	00000613          	li	a2,0
    80004d0c:	00a00593          	li	a1,10
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	cb4080e7          	jalr	-844(ra) # 800059c8 <_Z8printIntiii>
    80004d1c:	00004517          	auipc	a0,0x4
    80004d20:	3f450513          	addi	a0,a0,1012 # 80009110 <CONSOLE_STATUS+0x100>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	b0c080e7          	jalr	-1268(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d2c:	0014849b          	addiw	s1,s1,1
    80004d30:	0ff4f493          	andi	s1,s1,255
    80004d34:	00f00793          	li	a5,15
    80004d38:	fc97f0e3          	bgeu	a5,s1,80004cf8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	7ec50513          	addi	a0,a0,2028 # 80009528 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	aec080e7          	jalr	-1300(ra) # 80005830 <_Z11printStringPKc>
    finishedD = true;
    80004d4c:	00100793          	li	a5,1
    80004d50:	00007717          	auipc	a4,0x7
    80004d54:	e4f701a3          	sb	a5,-445(a4) # 8000bb93 <_ZL9finishedD>
    thread_dispatch();
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	5cc080e7          	jalr	1484(ra) # 80001324 <thread_dispatch>
}
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	00013903          	ld	s2,0(sp)
    80004d70:	02010113          	addi	sp,sp,32
    80004d74:	00008067          	ret

0000000080004d78 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004d78:	fc010113          	addi	sp,sp,-64
    80004d7c:	02113c23          	sd	ra,56(sp)
    80004d80:	02813823          	sd	s0,48(sp)
    80004d84:	02913423          	sd	s1,40(sp)
    80004d88:	03213023          	sd	s2,32(sp)
    80004d8c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004d90:	02000513          	li	a0,32
    80004d94:	ffffe097          	auipc	ra,0xffffe
    80004d98:	5bc080e7          	jalr	1468(ra) # 80003350 <_Znwm>
    80004d9c:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004da0:	ffffe097          	auipc	ra,0xffffe
    80004da4:	77c080e7          	jalr	1916(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004da8:	00007797          	auipc	a5,0x7
    80004dac:	c1878793          	addi	a5,a5,-1000 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80004db0:	00f4b023          	sd	a5,0(s1)
    80004db4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	78050513          	addi	a0,a0,1920 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1b8>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	a70080e7          	jalr	-1424(ra) # 80005830 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004dc8:	02000513          	li	a0,32
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	584080e7          	jalr	1412(ra) # 80003350 <_Znwm>
    80004dd4:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	744080e7          	jalr	1860(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004de0:	00007797          	auipc	a5,0x7
    80004de4:	c0878793          	addi	a5,a5,-1016 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80004de8:	00f4b023          	sd	a5,0(s1)
    80004dec:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004df0:	00004517          	auipc	a0,0x4
    80004df4:	76050513          	addi	a0,a0,1888 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1d0>
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	a38080e7          	jalr	-1480(ra) # 80005830 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004e00:	02000513          	li	a0,32
    80004e04:	ffffe097          	auipc	ra,0xffffe
    80004e08:	54c080e7          	jalr	1356(ra) # 80003350 <_Znwm>
    80004e0c:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004e10:	ffffe097          	auipc	ra,0xffffe
    80004e14:	70c080e7          	jalr	1804(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004e18:	00007797          	auipc	a5,0x7
    80004e1c:	bf878793          	addi	a5,a5,-1032 # 8000ba10 <_ZTV7WorkerC+0x10>
    80004e20:	00f4b023          	sd	a5,0(s1)
    80004e24:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004e28:	00004517          	auipc	a0,0x4
    80004e2c:	74050513          	addi	a0,a0,1856 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1e8>
    80004e30:	00001097          	auipc	ra,0x1
    80004e34:	a00080e7          	jalr	-1536(ra) # 80005830 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004e38:	02000513          	li	a0,32
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	514080e7          	jalr	1300(ra) # 80003350 <_Znwm>
    80004e44:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004e48:	ffffe097          	auipc	ra,0xffffe
    80004e4c:	6d4080e7          	jalr	1748(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004e50:	00007797          	auipc	a5,0x7
    80004e54:	be878793          	addi	a5,a5,-1048 # 8000ba38 <_ZTV7WorkerD+0x10>
    80004e58:	00f4b023          	sd	a5,0(s1)
    80004e5c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	72050513          	addi	a0,a0,1824 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x200>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	9c8080e7          	jalr	-1592(ra) # 80005830 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004e70:	00000493          	li	s1,0
    80004e74:	00300793          	li	a5,3
    80004e78:	0297c663          	blt	a5,s1,80004ea4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004e7c:	00349793          	slli	a5,s1,0x3
    80004e80:	fe040713          	addi	a4,s0,-32
    80004e84:	00f707b3          	add	a5,a4,a5
    80004e88:	fe07b503          	ld	a0,-32(a5)
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	594080e7          	jalr	1428(ra) # 80003420 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004e94:	0014849b          	addiw	s1,s1,1
    80004e98:	fddff06f          	j	80004e74 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004e9c:	ffffe097          	auipc	ra,0xffffe
    80004ea0:	5c8080e7          	jalr	1480(ra) # 80003464 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ea4:	00007797          	auipc	a5,0x7
    80004ea8:	cec7c783          	lbu	a5,-788(a5) # 8000bb90 <_ZL9finishedA>
    80004eac:	fe0788e3          	beqz	a5,80004e9c <_Z20Threads_CPP_API_testv+0x124>
    80004eb0:	00007797          	auipc	a5,0x7
    80004eb4:	ce17c783          	lbu	a5,-799(a5) # 8000bb91 <_ZL9finishedB>
    80004eb8:	fe0782e3          	beqz	a5,80004e9c <_Z20Threads_CPP_API_testv+0x124>
    80004ebc:	00007797          	auipc	a5,0x7
    80004ec0:	cd67c783          	lbu	a5,-810(a5) # 8000bb92 <_ZL9finishedC>
    80004ec4:	fc078ce3          	beqz	a5,80004e9c <_Z20Threads_CPP_API_testv+0x124>
    80004ec8:	00007797          	auipc	a5,0x7
    80004ecc:	ccb7c783          	lbu	a5,-821(a5) # 8000bb93 <_ZL9finishedD>
    80004ed0:	fc0786e3          	beqz	a5,80004e9c <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004ed4:	fc040493          	addi	s1,s0,-64
    80004ed8:	0080006f          	j	80004ee0 <_Z20Threads_CPP_API_testv+0x168>
    80004edc:	00848493          	addi	s1,s1,8
    80004ee0:	fe040793          	addi	a5,s0,-32
    80004ee4:	08f48663          	beq	s1,a5,80004f70 <_Z20Threads_CPP_API_testv+0x1f8>
    80004ee8:	0004b503          	ld	a0,0(s1)
    80004eec:	fe0508e3          	beqz	a0,80004edc <_Z20Threads_CPP_API_testv+0x164>
    80004ef0:	00053783          	ld	a5,0(a0)
    80004ef4:	0087b783          	ld	a5,8(a5)
    80004ef8:	000780e7          	jalr	a5
    80004efc:	fe1ff06f          	j	80004edc <_Z20Threads_CPP_API_testv+0x164>
    80004f00:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004f04:	00048513          	mv	a0,s1
    80004f08:	ffffe097          	auipc	ra,0xffffe
    80004f0c:	470080e7          	jalr	1136(ra) # 80003378 <_ZdlPv>
    80004f10:	00090513          	mv	a0,s2
    80004f14:	00008097          	auipc	ra,0x8
    80004f18:	d64080e7          	jalr	-668(ra) # 8000cc78 <_Unwind_Resume>
    80004f1c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004f20:	00048513          	mv	a0,s1
    80004f24:	ffffe097          	auipc	ra,0xffffe
    80004f28:	454080e7          	jalr	1108(ra) # 80003378 <_ZdlPv>
    80004f2c:	00090513          	mv	a0,s2
    80004f30:	00008097          	auipc	ra,0x8
    80004f34:	d48080e7          	jalr	-696(ra) # 8000cc78 <_Unwind_Resume>
    80004f38:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004f3c:	00048513          	mv	a0,s1
    80004f40:	ffffe097          	auipc	ra,0xffffe
    80004f44:	438080e7          	jalr	1080(ra) # 80003378 <_ZdlPv>
    80004f48:	00090513          	mv	a0,s2
    80004f4c:	00008097          	auipc	ra,0x8
    80004f50:	d2c080e7          	jalr	-724(ra) # 8000cc78 <_Unwind_Resume>
    80004f54:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004f58:	00048513          	mv	a0,s1
    80004f5c:	ffffe097          	auipc	ra,0xffffe
    80004f60:	41c080e7          	jalr	1052(ra) # 80003378 <_ZdlPv>
    80004f64:	00090513          	mv	a0,s2
    80004f68:	00008097          	auipc	ra,0x8
    80004f6c:	d10080e7          	jalr	-752(ra) # 8000cc78 <_Unwind_Resume>
    80004f70:	03813083          	ld	ra,56(sp)
    80004f74:	03013403          	ld	s0,48(sp)
    80004f78:	02813483          	ld	s1,40(sp)
    80004f7c:	02013903          	ld	s2,32(sp)
    80004f80:	04010113          	addi	sp,sp,64
    80004f84:	00008067          	ret

0000000080004f88 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004f88:	ff010113          	addi	sp,sp,-16
    80004f8c:	00113423          	sd	ra,8(sp)
    80004f90:	00813023          	sd	s0,0(sp)
    80004f94:	01010413          	addi	s0,sp,16
    80004f98:	00007797          	auipc	a5,0x7
    80004f9c:	a2878793          	addi	a5,a5,-1496 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80004fa0:	00f53023          	sd	a5,0(a0)
    80004fa4:	ffffe097          	auipc	ra,0xffffe
    80004fa8:	2f0080e7          	jalr	752(ra) # 80003294 <_ZN6ThreadD1Ev>
    80004fac:	00813083          	ld	ra,8(sp)
    80004fb0:	00013403          	ld	s0,0(sp)
    80004fb4:	01010113          	addi	sp,sp,16
    80004fb8:	00008067          	ret

0000000080004fbc <_ZN7WorkerAD0Ev>:
    80004fbc:	fe010113          	addi	sp,sp,-32
    80004fc0:	00113c23          	sd	ra,24(sp)
    80004fc4:	00813823          	sd	s0,16(sp)
    80004fc8:	00913423          	sd	s1,8(sp)
    80004fcc:	02010413          	addi	s0,sp,32
    80004fd0:	00050493          	mv	s1,a0
    80004fd4:	00007797          	auipc	a5,0x7
    80004fd8:	9ec78793          	addi	a5,a5,-1556 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80004fdc:	00f53023          	sd	a5,0(a0)
    80004fe0:	ffffe097          	auipc	ra,0xffffe
    80004fe4:	2b4080e7          	jalr	692(ra) # 80003294 <_ZN6ThreadD1Ev>
    80004fe8:	00048513          	mv	a0,s1
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	38c080e7          	jalr	908(ra) # 80003378 <_ZdlPv>
    80004ff4:	01813083          	ld	ra,24(sp)
    80004ff8:	01013403          	ld	s0,16(sp)
    80004ffc:	00813483          	ld	s1,8(sp)
    80005000:	02010113          	addi	sp,sp,32
    80005004:	00008067          	ret

0000000080005008 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005008:	ff010113          	addi	sp,sp,-16
    8000500c:	00113423          	sd	ra,8(sp)
    80005010:	00813023          	sd	s0,0(sp)
    80005014:	01010413          	addi	s0,sp,16
    80005018:	00007797          	auipc	a5,0x7
    8000501c:	9d078793          	addi	a5,a5,-1584 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80005020:	00f53023          	sd	a5,0(a0)
    80005024:	ffffe097          	auipc	ra,0xffffe
    80005028:	270080e7          	jalr	624(ra) # 80003294 <_ZN6ThreadD1Ev>
    8000502c:	00813083          	ld	ra,8(sp)
    80005030:	00013403          	ld	s0,0(sp)
    80005034:	01010113          	addi	sp,sp,16
    80005038:	00008067          	ret

000000008000503c <_ZN7WorkerBD0Ev>:
    8000503c:	fe010113          	addi	sp,sp,-32
    80005040:	00113c23          	sd	ra,24(sp)
    80005044:	00813823          	sd	s0,16(sp)
    80005048:	00913423          	sd	s1,8(sp)
    8000504c:	02010413          	addi	s0,sp,32
    80005050:	00050493          	mv	s1,a0
    80005054:	00007797          	auipc	a5,0x7
    80005058:	99478793          	addi	a5,a5,-1644 # 8000b9e8 <_ZTV7WorkerB+0x10>
    8000505c:	00f53023          	sd	a5,0(a0)
    80005060:	ffffe097          	auipc	ra,0xffffe
    80005064:	234080e7          	jalr	564(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005068:	00048513          	mv	a0,s1
    8000506c:	ffffe097          	auipc	ra,0xffffe
    80005070:	30c080e7          	jalr	780(ra) # 80003378 <_ZdlPv>
    80005074:	01813083          	ld	ra,24(sp)
    80005078:	01013403          	ld	s0,16(sp)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret

0000000080005088 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005088:	ff010113          	addi	sp,sp,-16
    8000508c:	00113423          	sd	ra,8(sp)
    80005090:	00813023          	sd	s0,0(sp)
    80005094:	01010413          	addi	s0,sp,16
    80005098:	00007797          	auipc	a5,0x7
    8000509c:	97878793          	addi	a5,a5,-1672 # 8000ba10 <_ZTV7WorkerC+0x10>
    800050a0:	00f53023          	sd	a5,0(a0)
    800050a4:	ffffe097          	auipc	ra,0xffffe
    800050a8:	1f0080e7          	jalr	496(ra) # 80003294 <_ZN6ThreadD1Ev>
    800050ac:	00813083          	ld	ra,8(sp)
    800050b0:	00013403          	ld	s0,0(sp)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret

00000000800050bc <_ZN7WorkerCD0Ev>:
    800050bc:	fe010113          	addi	sp,sp,-32
    800050c0:	00113c23          	sd	ra,24(sp)
    800050c4:	00813823          	sd	s0,16(sp)
    800050c8:	00913423          	sd	s1,8(sp)
    800050cc:	02010413          	addi	s0,sp,32
    800050d0:	00050493          	mv	s1,a0
    800050d4:	00007797          	auipc	a5,0x7
    800050d8:	93c78793          	addi	a5,a5,-1732 # 8000ba10 <_ZTV7WorkerC+0x10>
    800050dc:	00f53023          	sd	a5,0(a0)
    800050e0:	ffffe097          	auipc	ra,0xffffe
    800050e4:	1b4080e7          	jalr	436(ra) # 80003294 <_ZN6ThreadD1Ev>
    800050e8:	00048513          	mv	a0,s1
    800050ec:	ffffe097          	auipc	ra,0xffffe
    800050f0:	28c080e7          	jalr	652(ra) # 80003378 <_ZdlPv>
    800050f4:	01813083          	ld	ra,24(sp)
    800050f8:	01013403          	ld	s0,16(sp)
    800050fc:	00813483          	ld	s1,8(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret

0000000080005108 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005108:	ff010113          	addi	sp,sp,-16
    8000510c:	00113423          	sd	ra,8(sp)
    80005110:	00813023          	sd	s0,0(sp)
    80005114:	01010413          	addi	s0,sp,16
    80005118:	00007797          	auipc	a5,0x7
    8000511c:	92078793          	addi	a5,a5,-1760 # 8000ba38 <_ZTV7WorkerD+0x10>
    80005120:	00f53023          	sd	a5,0(a0)
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	170080e7          	jalr	368(ra) # 80003294 <_ZN6ThreadD1Ev>
    8000512c:	00813083          	ld	ra,8(sp)
    80005130:	00013403          	ld	s0,0(sp)
    80005134:	01010113          	addi	sp,sp,16
    80005138:	00008067          	ret

000000008000513c <_ZN7WorkerDD0Ev>:
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	00050493          	mv	s1,a0
    80005154:	00007797          	auipc	a5,0x7
    80005158:	8e478793          	addi	a5,a5,-1820 # 8000ba38 <_ZTV7WorkerD+0x10>
    8000515c:	00f53023          	sd	a5,0(a0)
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	134080e7          	jalr	308(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005168:	00048513          	mv	a0,s1
    8000516c:	ffffe097          	auipc	ra,0xffffe
    80005170:	20c080e7          	jalr	524(ra) # 80003378 <_ZdlPv>
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <_ZN7WorkerA3runEv>:
    void run() override {
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	00813023          	sd	s0,0(sp)
    80005194:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005198:	00000593          	li	a1,0
    8000519c:	fffff097          	auipc	ra,0xfffff
    800051a0:	774080e7          	jalr	1908(ra) # 80004910 <_ZN7WorkerA11workerBodyAEPv>
    }
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_ZN7WorkerB3runEv>:
    void run() override {
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800051c4:	00000593          	li	a1,0
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	814080e7          	jalr	-2028(ra) # 800049dc <_ZN7WorkerB11workerBodyBEPv>
    }
    800051d0:	00813083          	ld	ra,8(sp)
    800051d4:	00013403          	ld	s0,0(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_ZN7WorkerC3runEv>:
    void run() override {
    800051e0:	ff010113          	addi	sp,sp,-16
    800051e4:	00113423          	sd	ra,8(sp)
    800051e8:	00813023          	sd	s0,0(sp)
    800051ec:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800051f0:	00000593          	li	a1,0
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	8bc080e7          	jalr	-1860(ra) # 80004ab0 <_ZN7WorkerC11workerBodyCEPv>
    }
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret

000000008000520c <_ZN7WorkerD3runEv>:

    void run() override {
    8000520c:	ff010113          	addi	sp,sp,-16
    80005210:	00113423          	sd	ra,8(sp)
    80005214:	00813023          	sd	s0,0(sp)
    80005218:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000521c:	00000593          	li	a1,0
    80005220:	00000097          	auipc	ra,0x0
    80005224:	a10080e7          	jalr	-1520(ra) # 80004c30 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005228:	00813083          	ld	ra,8(sp)
    8000522c:	00013403          	ld	s0,0(sp)
    80005230:	01010113          	addi	sp,sp,16
    80005234:	00008067          	ret

0000000080005238 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	01213023          	sd	s2,0(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005254:	00100793          	li	a5,1
    80005258:	02a7f863          	bgeu	a5,a0,80005288 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000525c:	00a00793          	li	a5,10
    80005260:	02f577b3          	remu	a5,a0,a5
    80005264:	02078e63          	beqz	a5,800052a0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005268:	fff48513          	addi	a0,s1,-1
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	fcc080e7          	jalr	-52(ra) # 80005238 <_ZL9fibonaccim>
    80005274:	00050913          	mv	s2,a0
    80005278:	ffe48513          	addi	a0,s1,-2
    8000527c:	00000097          	auipc	ra,0x0
    80005280:	fbc080e7          	jalr	-68(ra) # 80005238 <_ZL9fibonaccim>
    80005284:	00a90533          	add	a0,s2,a0
}
    80005288:	01813083          	ld	ra,24(sp)
    8000528c:	01013403          	ld	s0,16(sp)
    80005290:	00813483          	ld	s1,8(sp)
    80005294:	00013903          	ld	s2,0(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	084080e7          	jalr	132(ra) # 80001324 <thread_dispatch>
    800052a8:	fc1ff06f          	j	80005268 <_ZL9fibonaccim+0x30>

00000000800052ac <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    thread_dispatch();
    finishedB = true;
}

void workerBodyC(void* arg) {
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	01213023          	sd	s2,0(sp)
    800052c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052c4:	00000493          	li	s1,0
    800052c8:	0400006f          	j	80005308 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800052cc:	00004517          	auipc	a0,0x4
    800052d0:	20450513          	addi	a0,a0,516 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800052d4:	00000097          	auipc	ra,0x0
    800052d8:	55c080e7          	jalr	1372(ra) # 80005830 <_Z11printStringPKc>
    800052dc:	00000613          	li	a2,0
    800052e0:	00a00593          	li	a1,10
    800052e4:	00048513          	mv	a0,s1
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	6e0080e7          	jalr	1760(ra) # 800059c8 <_Z8printIntiii>
    800052f0:	00004517          	auipc	a0,0x4
    800052f4:	e2050513          	addi	a0,a0,-480 # 80009110 <CONSOLE_STATUS+0x100>
    800052f8:	00000097          	auipc	ra,0x0
    800052fc:	538080e7          	jalr	1336(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005300:	0014849b          	addiw	s1,s1,1
    80005304:	0ff4f493          	andi	s1,s1,255
    80005308:	00200793          	li	a5,2
    8000530c:	fc97f0e3          	bgeu	a5,s1,800052cc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005310:	00004517          	auipc	a0,0x4
    80005314:	1c850513          	addi	a0,a0,456 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	518080e7          	jalr	1304(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005320:	00700313          	li	t1,7
    thread_dispatch();
    80005324:	ffffc097          	auipc	ra,0xffffc
    80005328:	000080e7          	jalr	ra # 80001324 <thread_dispatch>
    printString("C: returned\n");
    8000532c:	00004517          	auipc	a0,0x4
    80005330:	26c50513          	addi	a0,a0,620 # 80009598 <_ZZN5Riscv12printIntegerEmE6digits+0x218>
    80005334:	00000097          	auipc	ra,0x0
    80005338:	4fc080e7          	jalr	1276(ra) # 80005830 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000533c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005340:	00004517          	auipc	a0,0x4
    80005344:	1a850513          	addi	a0,a0,424 # 800094e8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	4e8080e7          	jalr	1256(ra) # 80005830 <_Z11printStringPKc>
    80005350:	00000613          	li	a2,0
    80005354:	00a00593          	li	a1,10
    80005358:	0009051b          	sext.w	a0,s2
    8000535c:	00000097          	auipc	ra,0x0
    80005360:	66c080e7          	jalr	1644(ra) # 800059c8 <_Z8printIntiii>
    80005364:	00004517          	auipc	a0,0x4
    80005368:	dac50513          	addi	a0,a0,-596 # 80009110 <CONSOLE_STATUS+0x100>
    8000536c:	00000097          	auipc	ra,0x0
    80005370:	4c4080e7          	jalr	1220(ra) # 80005830 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005374:	00c00513          	li	a0,12
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	ec0080e7          	jalr	-320(ra) # 80005238 <_ZL9fibonaccim>
    80005380:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005384:	00004517          	auipc	a0,0x4
    80005388:	16c50513          	addi	a0,a0,364 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	4a4080e7          	jalr	1188(ra) # 80005830 <_Z11printStringPKc>
    80005394:	00000613          	li	a2,0
    80005398:	00a00593          	li	a1,10
    8000539c:	0009051b          	sext.w	a0,s2
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	628080e7          	jalr	1576(ra) # 800059c8 <_Z8printIntiii>
    800053a8:	00004517          	auipc	a0,0x4
    800053ac:	d6850513          	addi	a0,a0,-664 # 80009110 <CONSOLE_STATUS+0x100>
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	480080e7          	jalr	1152(ra) # 80005830 <_Z11printStringPKc>
    800053b8:	0400006f          	j	800053f8 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800053bc:	00004517          	auipc	a0,0x4
    800053c0:	11450513          	addi	a0,a0,276 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	46c080e7          	jalr	1132(ra) # 80005830 <_Z11printStringPKc>
    800053cc:	00000613          	li	a2,0
    800053d0:	00a00593          	li	a1,10
    800053d4:	00048513          	mv	a0,s1
    800053d8:	00000097          	auipc	ra,0x0
    800053dc:	5f0080e7          	jalr	1520(ra) # 800059c8 <_Z8printIntiii>
    800053e0:	00004517          	auipc	a0,0x4
    800053e4:	d3050513          	addi	a0,a0,-720 # 80009110 <CONSOLE_STATUS+0x100>
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	448080e7          	jalr	1096(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053f0:	0014849b          	addiw	s1,s1,1
    800053f4:	0ff4f493          	andi	s1,s1,255
    800053f8:	00500793          	li	a5,5
    800053fc:	fc97f0e3          	bgeu	a5,s1,800053bc <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    80005400:	00004517          	auipc	a0,0x4
    80005404:	1a850513          	addi	a0,a0,424 # 800095a8 <_ZZN5Riscv12printIntegerEmE6digits+0x228>
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	428080e7          	jalr	1064(ra) # 80005830 <_Z11printStringPKc>
    thread_dispatch();
    80005410:	ffffc097          	auipc	ra,0xffffc
    80005414:	f14080e7          	jalr	-236(ra) # 80001324 <thread_dispatch>
    finishedC = true;
}
    80005418:	01813083          	ld	ra,24(sp)
    8000541c:	01013403          	ld	s0,16(sp)
    80005420:	00813483          	ld	s1,8(sp)
    80005424:	00013903          	ld	s2,0(sp)
    80005428:	02010113          	addi	sp,sp,32
    8000542c:	00008067          	ret

0000000080005430 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005430:	fe010113          	addi	sp,sp,-32
    80005434:	00113c23          	sd	ra,24(sp)
    80005438:	00813823          	sd	s0,16(sp)
    8000543c:	00913423          	sd	s1,8(sp)
    80005440:	01213023          	sd	s2,0(sp)
    80005444:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005448:	00a00493          	li	s1,10
    8000544c:	0400006f          	j	8000548c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005450:	00004517          	auipc	a0,0x4
    80005454:	0b050513          	addi	a0,a0,176 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005458:	00000097          	auipc	ra,0x0
    8000545c:	3d8080e7          	jalr	984(ra) # 80005830 <_Z11printStringPKc>
    80005460:	00000613          	li	a2,0
    80005464:	00a00593          	li	a1,10
    80005468:	00048513          	mv	a0,s1
    8000546c:	00000097          	auipc	ra,0x0
    80005470:	55c080e7          	jalr	1372(ra) # 800059c8 <_Z8printIntiii>
    80005474:	00004517          	auipc	a0,0x4
    80005478:	c9c50513          	addi	a0,a0,-868 # 80009110 <CONSOLE_STATUS+0x100>
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	3b4080e7          	jalr	948(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005484:	0014849b          	addiw	s1,s1,1
    80005488:	0ff4f493          	andi	s1,s1,255
    8000548c:	00c00793          	li	a5,12
    80005490:	fc97f0e3          	bgeu	a5,s1,80005450 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005494:	00004517          	auipc	a0,0x4
    80005498:	07450513          	addi	a0,a0,116 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    8000549c:	00000097          	auipc	ra,0x0
    800054a0:	394080e7          	jalr	916(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054a4:	00500313          	li	t1,5
    thread_dispatch();
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	e7c080e7          	jalr	-388(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    800054b0:	00004517          	auipc	a0,0x4
    800054b4:	10850513          	addi	a0,a0,264 # 800095b8 <_ZZN5Riscv12printIntegerEmE6digits+0x238>
    800054b8:	00000097          	auipc	ra,0x0
    800054bc:	378080e7          	jalr	888(ra) # 80005830 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800054c0:	01000513          	li	a0,16
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	d74080e7          	jalr	-652(ra) # 80005238 <_ZL9fibonaccim>
    800054cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054d0:	00004517          	auipc	a0,0x4
    800054d4:	04850513          	addi	a0,a0,72 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    800054d8:	00000097          	auipc	ra,0x0
    800054dc:	358080e7          	jalr	856(ra) # 80005830 <_Z11printStringPKc>
    800054e0:	00000613          	li	a2,0
    800054e4:	00a00593          	li	a1,10
    800054e8:	0009051b          	sext.w	a0,s2
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	4dc080e7          	jalr	1244(ra) # 800059c8 <_Z8printIntiii>
    800054f4:	00004517          	auipc	a0,0x4
    800054f8:	c1c50513          	addi	a0,a0,-996 # 80009110 <CONSOLE_STATUS+0x100>
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	334080e7          	jalr	820(ra) # 80005830 <_Z11printStringPKc>
    80005504:	0400006f          	j	80005544 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005508:	00004517          	auipc	a0,0x4
    8000550c:	ff850513          	addi	a0,a0,-8 # 80009500 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005510:	00000097          	auipc	ra,0x0
    80005514:	320080e7          	jalr	800(ra) # 80005830 <_Z11printStringPKc>
    80005518:	00000613          	li	a2,0
    8000551c:	00a00593          	li	a1,10
    80005520:	00048513          	mv	a0,s1
    80005524:	00000097          	auipc	ra,0x0
    80005528:	4a4080e7          	jalr	1188(ra) # 800059c8 <_Z8printIntiii>
    8000552c:	00004517          	auipc	a0,0x4
    80005530:	be450513          	addi	a0,a0,-1052 # 80009110 <CONSOLE_STATUS+0x100>
    80005534:	00000097          	auipc	ra,0x0
    80005538:	2fc080e7          	jalr	764(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000553c:	0014849b          	addiw	s1,s1,1
    80005540:	0ff4f493          	andi	s1,s1,255
    80005544:	00f00793          	li	a5,15
    80005548:	fc97f0e3          	bgeu	a5,s1,80005508 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    8000554c:	00004517          	auipc	a0,0x4
    80005550:	fdc50513          	addi	a0,a0,-36 # 80009528 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80005554:	00000097          	auipc	ra,0x0
    80005558:	2dc080e7          	jalr	732(ra) # 80005830 <_Z11printStringPKc>
    thread_dispatch();
    8000555c:	ffffc097          	auipc	ra,0xffffc
    80005560:	dc8080e7          	jalr	-568(ra) # 80001324 <thread_dispatch>
    finishedD = true;
}
    80005564:	01813083          	ld	ra,24(sp)
    80005568:	01013403          	ld	s0,16(sp)
    8000556c:	00813483          	ld	s1,8(sp)
    80005570:	00013903          	ld	s2,0(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret

000000008000557c <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00113c23          	sd	ra,24(sp)
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	01213023          	sd	s2,0(sp)
    80005590:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005594:	00000913          	li	s2,0
    80005598:	0380006f          	j	800055d0 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	d88080e7          	jalr	-632(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800055a4:	00148493          	addi	s1,s1,1
    800055a8:	000027b7          	lui	a5,0x2
    800055ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055b0:	0097ee63          	bltu	a5,s1,800055cc <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055b4:	00000713          	li	a4,0
    800055b8:	000077b7          	lui	a5,0x7
    800055bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055c0:	fce7eee3          	bltu	a5,a4,8000559c <_Z11workerBodyAPv+0x20>
    800055c4:	00170713          	addi	a4,a4,1
    800055c8:	ff1ff06f          	j	800055b8 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800055cc:	00190913          	addi	s2,s2,1
    800055d0:	00900793          	li	a5,9
    800055d4:	0527e063          	bltu	a5,s2,80005614 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800055d8:	00004517          	auipc	a0,0x4
    800055dc:	ec850513          	addi	a0,a0,-312 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	250080e7          	jalr	592(ra) # 80005830 <_Z11printStringPKc>
    800055e8:	00000613          	li	a2,0
    800055ec:	00a00593          	li	a1,10
    800055f0:	0009051b          	sext.w	a0,s2
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	3d4080e7          	jalr	980(ra) # 800059c8 <_Z8printIntiii>
    800055fc:	00004517          	auipc	a0,0x4
    80005600:	b1450513          	addi	a0,a0,-1260 # 80009110 <CONSOLE_STATUS+0x100>
    80005604:	00000097          	auipc	ra,0x0
    80005608:	22c080e7          	jalr	556(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000560c:	00000493          	li	s1,0
    80005610:	f99ff06f          	j	800055a8 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    80005614:	00004517          	auipc	a0,0x4
    80005618:	e9450513          	addi	a0,a0,-364 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    8000561c:	ffffe097          	auipc	ra,0xffffe
    80005620:	1a0080e7          	jalr	416(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80005624:	01813083          	ld	ra,24(sp)
    80005628:	01013403          	ld	s0,16(sp)
    8000562c:	00813483          	ld	s1,8(sp)
    80005630:	00013903          	ld	s2,0(sp)
    80005634:	02010113          	addi	sp,sp,32
    80005638:	00008067          	ret

000000008000563c <_Z11workerBodyBPv>:
{
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00113c23          	sd	ra,24(sp)
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	01213023          	sd	s2,0(sp)
    80005650:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005654:	00000913          	li	s2,0
    80005658:	0380006f          	j	80005690 <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    8000565c:	ffffc097          	auipc	ra,0xffffc
    80005660:	cc8080e7          	jalr	-824(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005664:	00148493          	addi	s1,s1,1
    80005668:	000027b7          	lui	a5,0x2
    8000566c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005670:	0097ee63          	bltu	a5,s1,8000568c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005674:	00000713          	li	a4,0
    80005678:	000077b7          	lui	a5,0x7
    8000567c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005680:	fce7eee3          	bltu	a5,a4,8000565c <_Z11workerBodyBPv+0x20>
    80005684:	00170713          	addi	a4,a4,1
    80005688:	ff1ff06f          	j	80005678 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000568c:	00190913          	addi	s2,s2,1
    80005690:	00f00793          	li	a5,15
    80005694:	0527e063          	bltu	a5,s2,800056d4 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005698:	00004517          	auipc	a0,0x4
    8000569c:	e2050513          	addi	a0,a0,-480 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	190080e7          	jalr	400(ra) # 80005830 <_Z11printStringPKc>
    800056a8:	00000613          	li	a2,0
    800056ac:	00a00593          	li	a1,10
    800056b0:	0009051b          	sext.w	a0,s2
    800056b4:	00000097          	auipc	ra,0x0
    800056b8:	314080e7          	jalr	788(ra) # 800059c8 <_Z8printIntiii>
    800056bc:	00004517          	auipc	a0,0x4
    800056c0:	a5450513          	addi	a0,a0,-1452 # 80009110 <CONSOLE_STATUS+0x100>
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	16c080e7          	jalr	364(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056cc:	00000493          	li	s1,0
    800056d0:	f99ff06f          	j	80005668 <_Z11workerBodyBPv+0x2c>
    Riscv::printString("B finished!\n");
    800056d4:	00004517          	auipc	a0,0x4
    800056d8:	dec50513          	addi	a0,a0,-532 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800056dc:	ffffe097          	auipc	ra,0xffffe
    800056e0:	0e0080e7          	jalr	224(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	c40080e7          	jalr	-960(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    800056ec:	00100793          	li	a5,1
    800056f0:	00006717          	auipc	a4,0x6
    800056f4:	4af70223          	sb	a5,1188(a4) # 8000bb94 <_ZL9finishedB>
}
    800056f8:	01813083          	ld	ra,24(sp)
    800056fc:	01013403          	ld	s0,16(sp)
    80005700:	00813483          	ld	s1,8(sp)
    80005704:	00013903          	ld	s2,0(sp)
    80005708:	02010113          	addi	sp,sp,32
    8000570c:	00008067          	ret

0000000080005710 <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005710:	fc010113          	addi	sp,sp,-64
    80005714:	02113c23          	sd	ra,56(sp)
    80005718:	02813823          	sd	s0,48(sp)
    8000571c:	02913423          	sd	s1,40(sp)
    80005720:	03213023          	sd	s2,32(sp)
    80005724:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005728:	00000613          	li	a2,0
    8000572c:	00000597          	auipc	a1,0x0
    80005730:	e5058593          	addi	a1,a1,-432 # 8000557c <_Z11workerBodyAPv>
    80005734:	fc040513          	addi	a0,s0,-64
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	b6c080e7          	jalr	-1172(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005740:	00004517          	auipc	a0,0x4
    80005744:	df850513          	addi	a0,a0,-520 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1b8>
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	0e8080e7          	jalr	232(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005750:	00000613          	li	a2,0
    80005754:	00000597          	auipc	a1,0x0
    80005758:	ee858593          	addi	a1,a1,-280 # 8000563c <_Z11workerBodyBPv>
    8000575c:	fc840513          	addi	a0,s0,-56
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	b44080e7          	jalr	-1212(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005768:	00004517          	auipc	a0,0x4
    8000576c:	de850513          	addi	a0,a0,-536 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1d0>
    80005770:	00000097          	auipc	ra,0x0
    80005774:	0c0080e7          	jalr	192(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005778:	00000613          	li	a2,0
    8000577c:	00000597          	auipc	a1,0x0
    80005780:	b3058593          	addi	a1,a1,-1232 # 800052ac <_Z11workerBodyCPv>
    80005784:	fd040513          	addi	a0,s0,-48
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	b1c080e7          	jalr	-1252(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005790:	00004517          	auipc	a0,0x4
    80005794:	dd850513          	addi	a0,a0,-552 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1e8>
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	098080e7          	jalr	152(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057a0:	00000613          	li	a2,0
    800057a4:	00000597          	auipc	a1,0x0
    800057a8:	c8c58593          	addi	a1,a1,-884 # 80005430 <_Z11workerBodyDPv>
    800057ac:	fd840513          	addi	a0,s0,-40
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	af4080e7          	jalr	-1292(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    800057b8:	00004517          	auipc	a0,0x4
    800057bc:	dc850513          	addi	a0,a0,-568 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x200>
    800057c0:	00000097          	auipc	ra,0x0
    800057c4:	070080e7          	jalr	112(ra) # 80005830 <_Z11printStringPKc>

    while (!(finishedB)) {
    800057c8:	00006797          	auipc	a5,0x6
    800057cc:	3cc7c783          	lbu	a5,972(a5) # 8000bb94 <_ZL9finishedB>
    800057d0:	00079863          	bnez	a5,800057e0 <_Z18Threads_C_API_testv+0xd0>
        //printString("Main thread\n");
        thread_dispatch();
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	b50080e7          	jalr	-1200(ra) # 80001324 <thread_dispatch>
    800057dc:	fedff06f          	j	800057c8 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) {
    800057e0:	fc040493          	addi	s1,s0,-64
    800057e4:	0080006f          	j	800057ec <_Z18Threads_C_API_testv+0xdc>
    800057e8:	00848493          	addi	s1,s1,8
    800057ec:	fe040793          	addi	a5,s0,-32
    800057f0:	02f48463          	beq	s1,a5,80005818 <_Z18Threads_C_API_testv+0x108>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800057f4:	0004b903          	ld	s2,0(s1)
    800057f8:	fe0908e3          	beqz	s2,800057e8 <_Z18Threads_C_API_testv+0xd8>
    800057fc:	00090513          	mv	a0,s2
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	070080e7          	jalr	112(ra) # 80002870 <_ZN3PCBD1Ev>
    80005808:	00090513          	mv	a0,s2
    8000580c:	ffffd097          	auipc	ra,0xffffd
    80005810:	03c080e7          	jalr	60(ra) # 80002848 <_ZN3PCBdlEPv>
    80005814:	fd5ff06f          	j	800057e8 <_Z18Threads_C_API_testv+0xd8>
    }
}
    80005818:	03813083          	ld	ra,56(sp)
    8000581c:	03013403          	ld	s0,48(sp)
    80005820:	02813483          	ld	s1,40(sp)
    80005824:	02013903          	ld	s2,32(sp)
    80005828:	04010113          	addi	sp,sp,64
    8000582c:	00008067          	ret

0000000080005830 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005830:	fe010113          	addi	sp,sp,-32
    80005834:	00113c23          	sd	ra,24(sp)
    80005838:	00813823          	sd	s0,16(sp)
    8000583c:	00913423          	sd	s1,8(sp)
    80005840:	02010413          	addi	s0,sp,32
    80005844:	00050493          	mv	s1,a0
    LOCK();
    80005848:	00100613          	li	a2,1
    8000584c:	00000593          	li	a1,0
    80005850:	00006517          	auipc	a0,0x6
    80005854:	34850513          	addi	a0,a0,840 # 8000bb98 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	9b0080e7          	jalr	-1616(ra) # 80001208 <copy_and_swap>
    80005860:	fe0514e3          	bnez	a0,80005848 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005864:	0004c503          	lbu	a0,0(s1)
    80005868:	00050a63          	beqz	a0,8000587c <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    8000586c:	00003097          	auipc	ra,0x3
    80005870:	a00080e7          	jalr	-1536(ra) # 8000826c <__putc>
        putc(*string);
        string++;
    80005874:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005878:	fedff06f          	j	80005864 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000587c:	00000613          	li	a2,0
    80005880:	00100593          	li	a1,1
    80005884:	00006517          	auipc	a0,0x6
    80005888:	31450513          	addi	a0,a0,788 # 8000bb98 <lockPrint>
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	97c080e7          	jalr	-1668(ra) # 80001208 <copy_and_swap>
    80005894:	fe0514e3          	bnez	a0,8000587c <_Z11printStringPKc+0x4c>
}
    80005898:	01813083          	ld	ra,24(sp)
    8000589c:	01013403          	ld	s0,16(sp)
    800058a0:	00813483          	ld	s1,8(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_Z9getStringPci>:

char *getString(char *buf, int max) {
    800058ac:	fd010113          	addi	sp,sp,-48
    800058b0:	02113423          	sd	ra,40(sp)
    800058b4:	02813023          	sd	s0,32(sp)
    800058b8:	00913c23          	sd	s1,24(sp)
    800058bc:	01213823          	sd	s2,16(sp)
    800058c0:	01313423          	sd	s3,8(sp)
    800058c4:	01413023          	sd	s4,0(sp)
    800058c8:	03010413          	addi	s0,sp,48
    800058cc:	00050993          	mv	s3,a0
    800058d0:	00058a13          	mv	s4,a1
    LOCK();
    800058d4:	00100613          	li	a2,1
    800058d8:	00000593          	li	a1,0
    800058dc:	00006517          	auipc	a0,0x6
    800058e0:	2bc50513          	addi	a0,a0,700 # 8000bb98 <lockPrint>
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	924080e7          	jalr	-1756(ra) # 80001208 <copy_and_swap>
    800058ec:	fe0514e3          	bnez	a0,800058d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    800058f0:	00000913          	li	s2,0
    800058f4:	00090493          	mv	s1,s2
    800058f8:	0019091b          	addiw	s2,s2,1
    800058fc:	03495a63          	bge	s2,s4,80005930 <_Z9getStringPci+0x84>
    return __getc();
    80005900:	00003097          	auipc	ra,0x3
    80005904:	9a8080e7          	jalr	-1624(ra) # 800082a8 <__getc>
        cc = getc();
        if (cc < 1)
    80005908:	02050463          	beqz	a0,80005930 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000590c:	009984b3          	add	s1,s3,s1
    80005910:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005914:	00a00793          	li	a5,10
    80005918:	00f50a63          	beq	a0,a5,8000592c <_Z9getStringPci+0x80>
    8000591c:	00d00793          	li	a5,13
    80005920:	fcf51ae3          	bne	a0,a5,800058f4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005924:	00090493          	mv	s1,s2
    80005928:	0080006f          	j	80005930 <_Z9getStringPci+0x84>
    8000592c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005930:	009984b3          	add	s1,s3,s1
    80005934:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005938:	00000613          	li	a2,0
    8000593c:	00100593          	li	a1,1
    80005940:	00006517          	auipc	a0,0x6
    80005944:	25850513          	addi	a0,a0,600 # 8000bb98 <lockPrint>
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	8c0080e7          	jalr	-1856(ra) # 80001208 <copy_and_swap>
    80005950:	fe0514e3          	bnez	a0,80005938 <_Z9getStringPci+0x8c>
    return buf;
}
    80005954:	00098513          	mv	a0,s3
    80005958:	02813083          	ld	ra,40(sp)
    8000595c:	02013403          	ld	s0,32(sp)
    80005960:	01813483          	ld	s1,24(sp)
    80005964:	01013903          	ld	s2,16(sp)
    80005968:	00813983          	ld	s3,8(sp)
    8000596c:	00013a03          	ld	s4,0(sp)
    80005970:	03010113          	addi	sp,sp,48
    80005974:	00008067          	ret

0000000080005978 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005978:	ff010113          	addi	sp,sp,-16
    8000597c:	00813423          	sd	s0,8(sp)
    80005980:	01010413          	addi	s0,sp,16
    80005984:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005988:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000598c:	0006c603          	lbu	a2,0(a3)
    80005990:	fd06071b          	addiw	a4,a2,-48
    80005994:	0ff77713          	andi	a4,a4,255
    80005998:	00900793          	li	a5,9
    8000599c:	02e7e063          	bltu	a5,a4,800059bc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059a0:	0025179b          	slliw	a5,a0,0x2
    800059a4:	00a787bb          	addw	a5,a5,a0
    800059a8:	0017979b          	slliw	a5,a5,0x1
    800059ac:	00168693          	addi	a3,a3,1
    800059b0:	00c787bb          	addw	a5,a5,a2
    800059b4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800059b8:	fd5ff06f          	j	8000598c <_Z11stringToIntPKc+0x14>
    return n;
}
    800059bc:	00813403          	ld	s0,8(sp)
    800059c0:	01010113          	addi	sp,sp,16
    800059c4:	00008067          	ret

00000000800059c8 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    800059c8:	fc010113          	addi	sp,sp,-64
    800059cc:	02113c23          	sd	ra,56(sp)
    800059d0:	02813823          	sd	s0,48(sp)
    800059d4:	02913423          	sd	s1,40(sp)
    800059d8:	03213023          	sd	s2,32(sp)
    800059dc:	01313c23          	sd	s3,24(sp)
    800059e0:	04010413          	addi	s0,sp,64
    800059e4:	00050493          	mv	s1,a0
    800059e8:	00058913          	mv	s2,a1
    800059ec:	00060993          	mv	s3,a2
    LOCK();
    800059f0:	00100613          	li	a2,1
    800059f4:	00000593          	li	a1,0
    800059f8:	00006517          	auipc	a0,0x6
    800059fc:	1a050513          	addi	a0,a0,416 # 8000bb98 <lockPrint>
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	808080e7          	jalr	-2040(ra) # 80001208 <copy_and_swap>
    80005a08:	fe0514e3          	bnez	a0,800059f0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005a0c:	00098463          	beqz	s3,80005a14 <_Z8printIntiii+0x4c>
    80005a10:	0804c463          	bltz	s1,80005a98 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a18:	00000593          	li	a1,0
    }

    i = 0;
    80005a1c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005a20:	0009079b          	sext.w	a5,s2
    80005a24:	0325773b          	remuw	a4,a0,s2
    80005a28:	00048613          	mv	a2,s1
    80005a2c:	0014849b          	addiw	s1,s1,1
    80005a30:	02071693          	slli	a3,a4,0x20
    80005a34:	0206d693          	srli	a3,a3,0x20
    80005a38:	00004717          	auipc	a4,0x4
    80005a3c:	b9070713          	addi	a4,a4,-1136 # 800095c8 <_ZL6digits>
    80005a40:	00d70733          	add	a4,a4,a3
    80005a44:	00074683          	lbu	a3,0(a4)
    80005a48:	fd040713          	addi	a4,s0,-48
    80005a4c:	00c70733          	add	a4,a4,a2
    80005a50:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005a54:	0005071b          	sext.w	a4,a0
    80005a58:	0325553b          	divuw	a0,a0,s2
    80005a5c:	fcf772e3          	bgeu	a4,a5,80005a20 <_Z8printIntiii+0x58>
    if (neg)
    80005a60:	00058c63          	beqz	a1,80005a78 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005a64:	fd040793          	addi	a5,s0,-48
    80005a68:	009784b3          	add	s1,a5,s1
    80005a6c:	02d00793          	li	a5,45
    80005a70:	fef48823          	sb	a5,-16(s1)
    80005a74:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005a78:	fff4849b          	addiw	s1,s1,-1
    80005a7c:	0204c463          	bltz	s1,80005aa4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005a80:	fd040793          	addi	a5,s0,-48
    80005a84:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005a88:	ff07c503          	lbu	a0,-16(a5)
    80005a8c:	00002097          	auipc	ra,0x2
    80005a90:	7e0080e7          	jalr	2016(ra) # 8000826c <__putc>
}
    80005a94:	fe5ff06f          	j	80005a78 <_Z8printIntiii+0xb0>
        x = -xx;
    80005a98:	4090053b          	negw	a0,s1
        neg = 1;
    80005a9c:	00100593          	li	a1,1
        x = -xx;
    80005aa0:	f7dff06f          	j	80005a1c <_Z8printIntiii+0x54>

    UNLOCK();
    80005aa4:	00000613          	li	a2,0
    80005aa8:	00100593          	li	a1,1
    80005aac:	00006517          	auipc	a0,0x6
    80005ab0:	0ec50513          	addi	a0,a0,236 # 8000bb98 <lockPrint>
    80005ab4:	ffffb097          	auipc	ra,0xffffb
    80005ab8:	754080e7          	jalr	1876(ra) # 80001208 <copy_and_swap>
    80005abc:	fe0514e3          	bnez	a0,80005aa4 <_Z8printIntiii+0xdc>
}
    80005ac0:	03813083          	ld	ra,56(sp)
    80005ac4:	03013403          	ld	s0,48(sp)
    80005ac8:	02813483          	ld	s1,40(sp)
    80005acc:	02013903          	ld	s2,32(sp)
    80005ad0:	01813983          	ld	s3,24(sp)
    80005ad4:	04010113          	addi	sp,sp,64
    80005ad8:	00008067          	ret

0000000080005adc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005adc:	fe010113          	addi	sp,sp,-32
    80005ae0:	00113c23          	sd	ra,24(sp)
    80005ae4:	00813823          	sd	s0,16(sp)
    80005ae8:	00913423          	sd	s1,8(sp)
    80005aec:	01213023          	sd	s2,0(sp)
    80005af0:	02010413          	addi	s0,sp,32
    80005af4:	00050493          	mv	s1,a0
    80005af8:	00b52023          	sw	a1,0(a0)
    80005afc:	00052823          	sw	zero,16(a0)
    80005b00:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b04:	00259513          	slli	a0,a1,0x2
    80005b08:	ffffb097          	auipc	ra,0xffffb
    80005b0c:	740080e7          	jalr	1856(ra) # 80001248 <mem_alloc>
    80005b10:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b14:	01000513          	li	a0,16
    80005b18:	ffffe097          	auipc	ra,0xffffe
    80005b1c:	838080e7          	jalr	-1992(ra) # 80003350 <_Znwm>
    80005b20:	00050913          	mv	s2,a0
    80005b24:	00000593          	li	a1,0
    80005b28:	ffffe097          	auipc	ra,0xffffe
    80005b2c:	a64080e7          	jalr	-1436(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b30:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005b34:	01000513          	li	a0,16
    80005b38:	ffffe097          	auipc	ra,0xffffe
    80005b3c:	818080e7          	jalr	-2024(ra) # 80003350 <_Znwm>
    80005b40:	00050913          	mv	s2,a0
    80005b44:	0004a583          	lw	a1,0(s1)
    80005b48:	ffffe097          	auipc	ra,0xffffe
    80005b4c:	a44080e7          	jalr	-1468(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b50:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005b54:	01000513          	li	a0,16
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	7f8080e7          	jalr	2040(ra) # 80003350 <_Znwm>
    80005b60:	00050913          	mv	s2,a0
    80005b64:	00100593          	li	a1,1
    80005b68:	ffffe097          	auipc	ra,0xffffe
    80005b6c:	a24080e7          	jalr	-1500(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b70:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b74:	01000513          	li	a0,16
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	7d8080e7          	jalr	2008(ra) # 80003350 <_Znwm>
    80005b80:	00050913          	mv	s2,a0
    80005b84:	00100593          	li	a1,1
    80005b88:	ffffe097          	auipc	ra,0xffffe
    80005b8c:	a04080e7          	jalr	-1532(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b90:	0324b823          	sd	s2,48(s1)
}
    80005b94:	01813083          	ld	ra,24(sp)
    80005b98:	01013403          	ld	s0,16(sp)
    80005b9c:	00813483          	ld	s1,8(sp)
    80005ba0:	00013903          	ld	s2,0(sp)
    80005ba4:	02010113          	addi	sp,sp,32
    80005ba8:	00008067          	ret
    80005bac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005bb0:	00090513          	mv	a0,s2
    80005bb4:	ffffd097          	auipc	ra,0xffffd
    80005bb8:	7c4080e7          	jalr	1988(ra) # 80003378 <_ZdlPv>
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00007097          	auipc	ra,0x7
    80005bc4:	0b8080e7          	jalr	184(ra) # 8000cc78 <_Unwind_Resume>
    80005bc8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005bcc:	00090513          	mv	a0,s2
    80005bd0:	ffffd097          	auipc	ra,0xffffd
    80005bd4:	7a8080e7          	jalr	1960(ra) # 80003378 <_ZdlPv>
    80005bd8:	00048513          	mv	a0,s1
    80005bdc:	00007097          	auipc	ra,0x7
    80005be0:	09c080e7          	jalr	156(ra) # 8000cc78 <_Unwind_Resume>
    80005be4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005be8:	00090513          	mv	a0,s2
    80005bec:	ffffd097          	auipc	ra,0xffffd
    80005bf0:	78c080e7          	jalr	1932(ra) # 80003378 <_ZdlPv>
    80005bf4:	00048513          	mv	a0,s1
    80005bf8:	00007097          	auipc	ra,0x7
    80005bfc:	080080e7          	jalr	128(ra) # 8000cc78 <_Unwind_Resume>
    80005c00:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c04:	00090513          	mv	a0,s2
    80005c08:	ffffd097          	auipc	ra,0xffffd
    80005c0c:	770080e7          	jalr	1904(ra) # 80003378 <_ZdlPv>
    80005c10:	00048513          	mv	a0,s1
    80005c14:	00007097          	auipc	ra,0x7
    80005c18:	064080e7          	jalr	100(ra) # 8000cc78 <_Unwind_Resume>

0000000080005c1c <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005c1c:	fe010113          	addi	sp,sp,-32
    80005c20:	00113c23          	sd	ra,24(sp)
    80005c24:	00813823          	sd	s0,16(sp)
    80005c28:	00913423          	sd	s1,8(sp)
    80005c2c:	02010413          	addi	s0,sp,32
    80005c30:	00050493          	mv	s1,a0
    __putc(c);
    80005c34:	00a00513          	li	a0,10
    80005c38:	00002097          	auipc	ra,0x2
    80005c3c:	634080e7          	jalr	1588(ra) # 8000826c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005c40:	0104a783          	lw	a5,16(s1)
    80005c44:	0144a703          	lw	a4,20(s1)
    80005c48:	00e78c63          	beq	a5,a4,80005c60 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005c4c:	0017879b          	addiw	a5,a5,1
    80005c50:	0004a703          	lw	a4,0(s1)
    80005c54:	02e7e7bb          	remw	a5,a5,a4
    80005c58:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005c5c:	fe5ff06f          	j	80005c40 <_ZN9BufferCPPD1Ev+0x24>
    80005c60:	02100513          	li	a0,33
    80005c64:	00002097          	auipc	ra,0x2
    80005c68:	608080e7          	jalr	1544(ra) # 8000826c <__putc>
    80005c6c:	00a00513          	li	a0,10
    80005c70:	00002097          	auipc	ra,0x2
    80005c74:	5fc080e7          	jalr	1532(ra) # 8000826c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005c78:	0084b503          	ld	a0,8(s1)
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	5fc080e7          	jalr	1532(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005c84:	0204b503          	ld	a0,32(s1)
    80005c88:	00050863          	beqz	a0,80005c98 <_ZN9BufferCPPD1Ev+0x7c>
    80005c8c:	00053783          	ld	a5,0(a0)
    80005c90:	0087b783          	ld	a5,8(a5)
    80005c94:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005c98:	0184b503          	ld	a0,24(s1)
    80005c9c:	00050863          	beqz	a0,80005cac <_ZN9BufferCPPD1Ev+0x90>
    80005ca0:	00053783          	ld	a5,0(a0)
    80005ca4:	0087b783          	ld	a5,8(a5)
    80005ca8:	000780e7          	jalr	a5
    delete mutexTail;
    80005cac:	0304b503          	ld	a0,48(s1)
    80005cb0:	00050863          	beqz	a0,80005cc0 <_ZN9BufferCPPD1Ev+0xa4>
    80005cb4:	00053783          	ld	a5,0(a0)
    80005cb8:	0087b783          	ld	a5,8(a5)
    80005cbc:	000780e7          	jalr	a5
    delete mutexHead;
    80005cc0:	0284b503          	ld	a0,40(s1)
    80005cc4:	00050863          	beqz	a0,80005cd4 <_ZN9BufferCPPD1Ev+0xb8>
    80005cc8:	00053783          	ld	a5,0(a0)
    80005ccc:	0087b783          	ld	a5,8(a5)
    80005cd0:	000780e7          	jalr	a5

}
    80005cd4:	01813083          	ld	ra,24(sp)
    80005cd8:	01013403          	ld	s0,16(sp)
    80005cdc:	00813483          	ld	s1,8(sp)
    80005ce0:	02010113          	addi	sp,sp,32
    80005ce4:	00008067          	ret

0000000080005ce8 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005ce8:	fe010113          	addi	sp,sp,-32
    80005cec:	00113c23          	sd	ra,24(sp)
    80005cf0:	00813823          	sd	s0,16(sp)
    80005cf4:	00913423          	sd	s1,8(sp)
    80005cf8:	01213023          	sd	s2,0(sp)
    80005cfc:	02010413          	addi	s0,sp,32
    80005d00:	00050493          	mv	s1,a0
    80005d04:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d08:	01853503          	ld	a0,24(a0)
    80005d0c:	ffffe097          	auipc	ra,0xffffe
    80005d10:	848080e7          	jalr	-1976(ra) # 80003554 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d14:	0304b503          	ld	a0,48(s1)
    80005d18:	ffffe097          	auipc	ra,0xffffe
    80005d1c:	83c080e7          	jalr	-1988(ra) # 80003554 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d20:	0084b783          	ld	a5,8(s1)
    80005d24:	0144a703          	lw	a4,20(s1)
    80005d28:	00271713          	slli	a4,a4,0x2
    80005d2c:	00e787b3          	add	a5,a5,a4
    80005d30:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d34:	0144a783          	lw	a5,20(s1)
    80005d38:	0017879b          	addiw	a5,a5,1
    80005d3c:	0004a703          	lw	a4,0(s1)
    80005d40:	02e7e7bb          	remw	a5,a5,a4
    80005d44:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d48:	0304b503          	ld	a0,48(s1)
    80005d4c:	ffffe097          	auipc	ra,0xffffe
    80005d50:	88c080e7          	jalr	-1908(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005d54:	0204b503          	ld	a0,32(s1)
    80005d58:	ffffe097          	auipc	ra,0xffffe
    80005d5c:	880080e7          	jalr	-1920(ra) # 800035d8 <_ZN9Semaphore6signalEv>

}
    80005d60:	01813083          	ld	ra,24(sp)
    80005d64:	01013403          	ld	s0,16(sp)
    80005d68:	00813483          	ld	s1,8(sp)
    80005d6c:	00013903          	ld	s2,0(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00008067          	ret

0000000080005d78 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005d94:	02053503          	ld	a0,32(a0)
    80005d98:	ffffd097          	auipc	ra,0xffffd
    80005d9c:	7bc080e7          	jalr	1980(ra) # 80003554 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005da0:	0284b503          	ld	a0,40(s1)
    80005da4:	ffffd097          	auipc	ra,0xffffd
    80005da8:	7b0080e7          	jalr	1968(ra) # 80003554 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005dac:	0084b703          	ld	a4,8(s1)
    80005db0:	0104a783          	lw	a5,16(s1)
    80005db4:	00279693          	slli	a3,a5,0x2
    80005db8:	00d70733          	add	a4,a4,a3
    80005dbc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005dc0:	0017879b          	addiw	a5,a5,1
    80005dc4:	0004a703          	lw	a4,0(s1)
    80005dc8:	02e7e7bb          	remw	a5,a5,a4
    80005dcc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005dd0:	0284b503          	ld	a0,40(s1)
    80005dd4:	ffffe097          	auipc	ra,0xffffe
    80005dd8:	804080e7          	jalr	-2044(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ddc:	0184b503          	ld	a0,24(s1)
    80005de0:	ffffd097          	auipc	ra,0xffffd
    80005de4:	7f8080e7          	jalr	2040(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005de8:	00090513          	mv	a0,s2
    80005dec:	01813083          	ld	ra,24(sp)
    80005df0:	01013403          	ld	s0,16(sp)
    80005df4:	00813483          	ld	s1,8(sp)
    80005df8:	00013903          	ld	s2,0(sp)
    80005dfc:	02010113          	addi	sp,sp,32
    80005e00:	00008067          	ret

0000000080005e04 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005e04:	ff010113          	addi	sp,sp,-16
    80005e08:	00113423          	sd	ra,8(sp)
    80005e0c:	00813023          	sd	s0,0(sp)
    80005e10:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	f64080e7          	jalr	-156(ra) # 80004d78 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005e1c:	00813083          	ld	ra,8(sp)
    80005e20:	00013403          	ld	s0,0(sp)
    80005e24:	01010113          	addi	sp,sp,16
    80005e28:	00008067          	ret

0000000080005e2c <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00113c23          	sd	ra,24(sp)
    80005e34:	00813823          	sd	s0,16(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	01213023          	sd	s2,0(sp)
    80005e40:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e44:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e48:	00600493          	li	s1,6
    while (--i > 0) {
    80005e4c:	fff4849b          	addiw	s1,s1,-1
    80005e50:	04905463          	blez	s1,80005e98 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	78c50513          	addi	a0,a0,1932 # 800095e0 <_ZL6digits+0x18>
    80005e5c:	00000097          	auipc	ra,0x0
    80005e60:	9d4080e7          	jalr	-1580(ra) # 80005830 <_Z11printStringPKc>
        printInt(sleep_time);
    80005e64:	00000613          	li	a2,0
    80005e68:	00a00593          	li	a1,10
    80005e6c:	0009051b          	sext.w	a0,s2
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	b58080e7          	jalr	-1192(ra) # 800059c8 <_Z8printIntiii>
        printString(" !\n");
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	77050513          	addi	a0,a0,1904 # 800095e8 <_ZL6digits+0x20>
    80005e80:	00000097          	auipc	ra,0x0
    80005e84:	9b0080e7          	jalr	-1616(ra) # 80005830 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005e88:	00090513          	mv	a0,s2
    80005e8c:	ffffb097          	auipc	ra,0xffffb
    80005e90:	59c080e7          	jalr	1436(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005e94:	fb9ff06f          	j	80005e4c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005e98:	00a00793          	li	a5,10
    80005e9c:	02f95933          	divu	s2,s2,a5
    80005ea0:	fff90913          	addi	s2,s2,-1
    80005ea4:	00006797          	auipc	a5,0x6
    80005ea8:	cfc78793          	addi	a5,a5,-772 # 8000bba0 <finished>
    80005eac:	01278933          	add	s2,a5,s2
    80005eb0:	00100793          	li	a5,1
    80005eb4:	00f90023          	sb	a5,0(s2)
}
    80005eb8:	01813083          	ld	ra,24(sp)
    80005ebc:	01013403          	ld	s0,16(sp)
    80005ec0:	00813483          	ld	s1,8(sp)
    80005ec4:	00013903          	ld	s2,0(sp)
    80005ec8:	02010113          	addi	sp,sp,32
    80005ecc:	00008067          	ret

0000000080005ed0 <_Z12testSleepingv>:

void testSleeping()
{
    80005ed0:	fc010113          	addi	sp,sp,-64
    80005ed4:	02113c23          	sd	ra,56(sp)
    80005ed8:	02813823          	sd	s0,48(sp)
    80005edc:	02913423          	sd	s1,40(sp)
    80005ee0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ee4:	00a00793          	li	a5,10
    80005ee8:	fcf43823          	sd	a5,-48(s0)
    80005eec:	01400793          	li	a5,20
    80005ef0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ef4:	00000493          	li	s1,0
    80005ef8:	02c0006f          	j	80005f24 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005efc:	00349793          	slli	a5,s1,0x3
    80005f00:	fd040613          	addi	a2,s0,-48
    80005f04:	00f60633          	add	a2,a2,a5
    80005f08:	00000597          	auipc	a1,0x0
    80005f0c:	f2458593          	addi	a1,a1,-220 # 80005e2c <_Z9sleepyRunPv>
    80005f10:	fc040513          	addi	a0,s0,-64
    80005f14:	00f50533          	add	a0,a0,a5
    80005f18:	ffffb097          	auipc	ra,0xffffb
    80005f1c:	38c080e7          	jalr	908(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f20:	0014849b          	addiw	s1,s1,1
    80005f24:	00100793          	li	a5,1
    80005f28:	fc97dae3          	bge	a5,s1,80005efc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f2c:	00006797          	auipc	a5,0x6
    80005f30:	c747c783          	lbu	a5,-908(a5) # 8000bba0 <finished>
    80005f34:	fe078ce3          	beqz	a5,80005f2c <_Z12testSleepingv+0x5c>
    80005f38:	00006797          	auipc	a5,0x6
    80005f3c:	c697c783          	lbu	a5,-919(a5) # 8000bba1 <finished+0x1>
    80005f40:	fe0786e3          	beqz	a5,80005f2c <_Z12testSleepingv+0x5c>
}
    80005f44:	03813083          	ld	ra,56(sp)
    80005f48:	03013403          	ld	s0,48(sp)
    80005f4c:	02813483          	ld	s1,40(sp)
    80005f50:	04010113          	addi	sp,sp,64
    80005f54:	00008067          	ret

0000000080005f58 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	02010413          	addi	s0,sp,32
    80005f6c:	00050493          	mv	s1,a0
    80005f70:	00b52023          	sw	a1,0(a0)
    80005f74:	00052823          	sw	zero,16(a0)
    80005f78:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f7c:	00259513          	slli	a0,a1,0x2
    80005f80:	ffffb097          	auipc	ra,0xffffb
    80005f84:	2c8080e7          	jalr	712(ra) # 80001248 <mem_alloc>
    80005f88:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005f8c:	00000593          	li	a1,0
    80005f90:	02048513          	addi	a0,s1,32
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	3d8080e7          	jalr	984(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005f9c:	0004a583          	lw	a1,0(s1)
    80005fa0:	01848513          	addi	a0,s1,24
    80005fa4:	ffffb097          	auipc	ra,0xffffb
    80005fa8:	3c8080e7          	jalr	968(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005fac:	00100593          	li	a1,1
    80005fb0:	02848513          	addi	a0,s1,40
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	3b8080e7          	jalr	952(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005fbc:	00100593          	li	a1,1
    80005fc0:	03048513          	addi	a0,s1,48
    80005fc4:	ffffb097          	auipc	ra,0xffffb
    80005fc8:	3a8080e7          	jalr	936(ra) # 8000136c <sem_open>
}
    80005fcc:	01813083          	ld	ra,24(sp)
    80005fd0:	01013403          	ld	s0,16(sp)
    80005fd4:	00813483          	ld	s1,8(sp)
    80005fd8:	02010113          	addi	sp,sp,32
    80005fdc:	00008067          	ret

0000000080005fe0 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80005fe0:	fe010113          	addi	sp,sp,-32
    80005fe4:	00113c23          	sd	ra,24(sp)
    80005fe8:	00813823          	sd	s0,16(sp)
    80005fec:	00913423          	sd	s1,8(sp)
    80005ff0:	02010413          	addi	s0,sp,32
    80005ff4:	00050493          	mv	s1,a0
    80005ff8:	00a00513          	li	a0,10
    80005ffc:	00002097          	auipc	ra,0x2
    80006000:	270080e7          	jalr	624(ra) # 8000826c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006004:	0104a783          	lw	a5,16(s1)
    80006008:	0144a703          	lw	a4,20(s1)
    8000600c:	00e78c63          	beq	a5,a4,80006024 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006010:	0017879b          	addiw	a5,a5,1
    80006014:	0004a703          	lw	a4,0(s1)
    80006018:	02e7e7bb          	remw	a5,a5,a4
    8000601c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006020:	fe5ff06f          	j	80006004 <_ZN6BufferD1Ev+0x24>
    80006024:	02100513          	li	a0,33
    80006028:	00002097          	auipc	ra,0x2
    8000602c:	244080e7          	jalr	580(ra) # 8000826c <__putc>
    80006030:	00a00513          	li	a0,10
    80006034:	00002097          	auipc	ra,0x2
    80006038:	238080e7          	jalr	568(ra) # 8000826c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    8000603c:	0084b503          	ld	a0,8(s1)
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	238080e7          	jalr	568(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80006048:	0204b503          	ld	a0,32(s1)
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	358080e7          	jalr	856(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006054:	0184b503          	ld	a0,24(s1)
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	34c080e7          	jalr	844(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80006060:	0304b503          	ld	a0,48(s1)
    80006064:	ffffb097          	auipc	ra,0xffffb
    80006068:	340080e7          	jalr	832(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    8000606c:	0284b503          	ld	a0,40(s1)
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	334080e7          	jalr	820(ra) # 800013a4 <sem_close>
}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	01213023          	sd	s2,0(sp)
    800060a0:	02010413          	addi	s0,sp,32
    800060a4:	00050493          	mv	s1,a0
    800060a8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800060ac:	01853503          	ld	a0,24(a0)
    800060b0:	ffffb097          	auipc	ra,0xffffb
    800060b4:	320080e7          	jalr	800(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800060b8:	0304b503          	ld	a0,48(s1)
    800060bc:	ffffb097          	auipc	ra,0xffffb
    800060c0:	314080e7          	jalr	788(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800060c4:	0084b783          	ld	a5,8(s1)
    800060c8:	0144a703          	lw	a4,20(s1)
    800060cc:	00271713          	slli	a4,a4,0x2
    800060d0:	00e787b3          	add	a5,a5,a4
    800060d4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800060d8:	0144a783          	lw	a5,20(s1)
    800060dc:	0017879b          	addiw	a5,a5,1
    800060e0:	0004a703          	lw	a4,0(s1)
    800060e4:	02e7e7bb          	remw	a5,a5,a4
    800060e8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800060ec:	0304b503          	ld	a0,48(s1)
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	30c080e7          	jalr	780(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    800060f8:	0204b503          	ld	a0,32(s1)
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	300080e7          	jalr	768(ra) # 800013fc <sem_signal>

}
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000611c:	fe010113          	addi	sp,sp,-32
    80006120:	00113c23          	sd	ra,24(sp)
    80006124:	00813823          	sd	s0,16(sp)
    80006128:	00913423          	sd	s1,8(sp)
    8000612c:	01213023          	sd	s2,0(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006138:	02053503          	ld	a0,32(a0)
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	294080e7          	jalr	660(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006144:	0284b503          	ld	a0,40(s1)
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	288080e7          	jalr	648(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80006150:	0084b703          	ld	a4,8(s1)
    80006154:	0104a783          	lw	a5,16(s1)
    80006158:	00279693          	slli	a3,a5,0x2
    8000615c:	00d70733          	add	a4,a4,a3
    80006160:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006164:	0017879b          	addiw	a5,a5,1
    80006168:	0004a703          	lw	a4,0(s1)
    8000616c:	02e7e7bb          	remw	a5,a5,a4
    80006170:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006174:	0284b503          	ld	a0,40(s1)
    80006178:	ffffb097          	auipc	ra,0xffffb
    8000617c:	284080e7          	jalr	644(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80006180:	0184b503          	ld	a0,24(s1)
    80006184:	ffffb097          	auipc	ra,0xffffb
    80006188:	278080e7          	jalr	632(ra) # 800013fc <sem_signal>

    return ret;
}
    8000618c:	00090513          	mv	a0,s2
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	00013903          	ld	s2,0(sp)
    800061a0:	02010113          	addi	sp,sp,32
    800061a4:	00008067          	ret

00000000800061a8 <start>:
    800061a8:	ff010113          	addi	sp,sp,-16
    800061ac:	00813423          	sd	s0,8(sp)
    800061b0:	01010413          	addi	s0,sp,16
    800061b4:	300027f3          	csrr	a5,mstatus
    800061b8:	ffffe737          	lui	a4,0xffffe
    800061bc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19ef>
    800061c0:	00e7f7b3          	and	a5,a5,a4
    800061c4:	00001737          	lui	a4,0x1
    800061c8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800061cc:	00e7e7b3          	or	a5,a5,a4
    800061d0:	30079073          	csrw	mstatus,a5
    800061d4:	00000797          	auipc	a5,0x0
    800061d8:	16078793          	addi	a5,a5,352 # 80006334 <system_main>
    800061dc:	34179073          	csrw	mepc,a5
    800061e0:	00000793          	li	a5,0
    800061e4:	18079073          	csrw	satp,a5
    800061e8:	000107b7          	lui	a5,0x10
    800061ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800061f0:	30279073          	csrw	medeleg,a5
    800061f4:	30379073          	csrw	mideleg,a5
    800061f8:	104027f3          	csrr	a5,sie
    800061fc:	2227e793          	ori	a5,a5,546
    80006200:	10479073          	csrw	sie,a5
    80006204:	fff00793          	li	a5,-1
    80006208:	00a7d793          	srli	a5,a5,0xa
    8000620c:	3b079073          	csrw	pmpaddr0,a5
    80006210:	00f00793          	li	a5,15
    80006214:	3a079073          	csrw	pmpcfg0,a5
    80006218:	f14027f3          	csrr	a5,mhartid
    8000621c:	0200c737          	lui	a4,0x200c
    80006220:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006224:	0007869b          	sext.w	a3,a5
    80006228:	00269713          	slli	a4,a3,0x2
    8000622c:	000f4637          	lui	a2,0xf4
    80006230:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006234:	00d70733          	add	a4,a4,a3
    80006238:	0037979b          	slliw	a5,a5,0x3
    8000623c:	020046b7          	lui	a3,0x2004
    80006240:	00d787b3          	add	a5,a5,a3
    80006244:	00c585b3          	add	a1,a1,a2
    80006248:	00371693          	slli	a3,a4,0x3
    8000624c:	00006717          	auipc	a4,0x6
    80006250:	96470713          	addi	a4,a4,-1692 # 8000bbb0 <timer_scratch>
    80006254:	00b7b023          	sd	a1,0(a5)
    80006258:	00d70733          	add	a4,a4,a3
    8000625c:	00f73c23          	sd	a5,24(a4)
    80006260:	02c73023          	sd	a2,32(a4)
    80006264:	34071073          	csrw	mscratch,a4
    80006268:	00000797          	auipc	a5,0x0
    8000626c:	6e878793          	addi	a5,a5,1768 # 80006950 <timervec>
    80006270:	30579073          	csrw	mtvec,a5
    80006274:	300027f3          	csrr	a5,mstatus
    80006278:	0087e793          	ori	a5,a5,8
    8000627c:	30079073          	csrw	mstatus,a5
    80006280:	304027f3          	csrr	a5,mie
    80006284:	0807e793          	ori	a5,a5,128
    80006288:	30479073          	csrw	mie,a5
    8000628c:	f14027f3          	csrr	a5,mhartid
    80006290:	0007879b          	sext.w	a5,a5
    80006294:	00078213          	mv	tp,a5
    80006298:	30200073          	mret
    8000629c:	00813403          	ld	s0,8(sp)
    800062a0:	01010113          	addi	sp,sp,16
    800062a4:	00008067          	ret

00000000800062a8 <timerinit>:
    800062a8:	ff010113          	addi	sp,sp,-16
    800062ac:	00813423          	sd	s0,8(sp)
    800062b0:	01010413          	addi	s0,sp,16
    800062b4:	f14027f3          	csrr	a5,mhartid
    800062b8:	0200c737          	lui	a4,0x200c
    800062bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062c0:	0007869b          	sext.w	a3,a5
    800062c4:	00269713          	slli	a4,a3,0x2
    800062c8:	000f4637          	lui	a2,0xf4
    800062cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062d0:	00d70733          	add	a4,a4,a3
    800062d4:	0037979b          	slliw	a5,a5,0x3
    800062d8:	020046b7          	lui	a3,0x2004
    800062dc:	00d787b3          	add	a5,a5,a3
    800062e0:	00c585b3          	add	a1,a1,a2
    800062e4:	00371693          	slli	a3,a4,0x3
    800062e8:	00006717          	auipc	a4,0x6
    800062ec:	8c870713          	addi	a4,a4,-1848 # 8000bbb0 <timer_scratch>
    800062f0:	00b7b023          	sd	a1,0(a5)
    800062f4:	00d70733          	add	a4,a4,a3
    800062f8:	00f73c23          	sd	a5,24(a4)
    800062fc:	02c73023          	sd	a2,32(a4)
    80006300:	34071073          	csrw	mscratch,a4
    80006304:	00000797          	auipc	a5,0x0
    80006308:	64c78793          	addi	a5,a5,1612 # 80006950 <timervec>
    8000630c:	30579073          	csrw	mtvec,a5
    80006310:	300027f3          	csrr	a5,mstatus
    80006314:	0087e793          	ori	a5,a5,8
    80006318:	30079073          	csrw	mstatus,a5
    8000631c:	304027f3          	csrr	a5,mie
    80006320:	0807e793          	ori	a5,a5,128
    80006324:	30479073          	csrw	mie,a5
    80006328:	00813403          	ld	s0,8(sp)
    8000632c:	01010113          	addi	sp,sp,16
    80006330:	00008067          	ret

0000000080006334 <system_main>:
    80006334:	fe010113          	addi	sp,sp,-32
    80006338:	00813823          	sd	s0,16(sp)
    8000633c:	00913423          	sd	s1,8(sp)
    80006340:	00113c23          	sd	ra,24(sp)
    80006344:	02010413          	addi	s0,sp,32
    80006348:	00000097          	auipc	ra,0x0
    8000634c:	0c4080e7          	jalr	196(ra) # 8000640c <cpuid>
    80006350:	00005497          	auipc	s1,0x5
    80006354:	75048493          	addi	s1,s1,1872 # 8000baa0 <started>
    80006358:	02050263          	beqz	a0,8000637c <system_main+0x48>
    8000635c:	0004a783          	lw	a5,0(s1)
    80006360:	0007879b          	sext.w	a5,a5
    80006364:	fe078ce3          	beqz	a5,8000635c <system_main+0x28>
    80006368:	0ff0000f          	fence
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	2b450513          	addi	a0,a0,692 # 80009620 <_ZL6digits+0x58>
    80006374:	00001097          	auipc	ra,0x1
    80006378:	a78080e7          	jalr	-1416(ra) # 80006dec <panic>
    8000637c:	00001097          	auipc	ra,0x1
    80006380:	9cc080e7          	jalr	-1588(ra) # 80006d48 <consoleinit>
    80006384:	00001097          	auipc	ra,0x1
    80006388:	158080e7          	jalr	344(ra) # 800074dc <printfinit>
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	d8450513          	addi	a0,a0,-636 # 80009110 <CONSOLE_STATUS+0x100>
    80006394:	00001097          	auipc	ra,0x1
    80006398:	ab4080e7          	jalr	-1356(ra) # 80006e48 <__printf>
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	25450513          	addi	a0,a0,596 # 800095f0 <_ZL6digits+0x28>
    800063a4:	00001097          	auipc	ra,0x1
    800063a8:	aa4080e7          	jalr	-1372(ra) # 80006e48 <__printf>
    800063ac:	00003517          	auipc	a0,0x3
    800063b0:	d6450513          	addi	a0,a0,-668 # 80009110 <CONSOLE_STATUS+0x100>
    800063b4:	00001097          	auipc	ra,0x1
    800063b8:	a94080e7          	jalr	-1388(ra) # 80006e48 <__printf>
    800063bc:	00001097          	auipc	ra,0x1
    800063c0:	4ac080e7          	jalr	1196(ra) # 80007868 <kinit>
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	148080e7          	jalr	328(ra) # 8000650c <trapinit>
    800063cc:	00000097          	auipc	ra,0x0
    800063d0:	16c080e7          	jalr	364(ra) # 80006538 <trapinithart>
    800063d4:	00000097          	auipc	ra,0x0
    800063d8:	5bc080e7          	jalr	1468(ra) # 80006990 <plicinit>
    800063dc:	00000097          	auipc	ra,0x0
    800063e0:	5dc080e7          	jalr	1500(ra) # 800069b8 <plicinithart>
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	078080e7          	jalr	120(ra) # 8000645c <userinit>
    800063ec:	0ff0000f          	fence
    800063f0:	00100793          	li	a5,1
    800063f4:	00003517          	auipc	a0,0x3
    800063f8:	21450513          	addi	a0,a0,532 # 80009608 <_ZL6digits+0x40>
    800063fc:	00f4a023          	sw	a5,0(s1)
    80006400:	00001097          	auipc	ra,0x1
    80006404:	a48080e7          	jalr	-1464(ra) # 80006e48 <__printf>
    80006408:	0000006f          	j	80006408 <system_main+0xd4>

000000008000640c <cpuid>:
    8000640c:	ff010113          	addi	sp,sp,-16
    80006410:	00813423          	sd	s0,8(sp)
    80006414:	01010413          	addi	s0,sp,16
    80006418:	00020513          	mv	a0,tp
    8000641c:	00813403          	ld	s0,8(sp)
    80006420:	0005051b          	sext.w	a0,a0
    80006424:	01010113          	addi	sp,sp,16
    80006428:	00008067          	ret

000000008000642c <mycpu>:
    8000642c:	ff010113          	addi	sp,sp,-16
    80006430:	00813423          	sd	s0,8(sp)
    80006434:	01010413          	addi	s0,sp,16
    80006438:	00020793          	mv	a5,tp
    8000643c:	00813403          	ld	s0,8(sp)
    80006440:	0007879b          	sext.w	a5,a5
    80006444:	00779793          	slli	a5,a5,0x7
    80006448:	00006517          	auipc	a0,0x6
    8000644c:	79850513          	addi	a0,a0,1944 # 8000cbe0 <cpus>
    80006450:	00f50533          	add	a0,a0,a5
    80006454:	01010113          	addi	sp,sp,16
    80006458:	00008067          	ret

000000008000645c <userinit>:
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00813423          	sd	s0,8(sp)
    80006464:	01010413          	addi	s0,sp,16
    80006468:	00813403          	ld	s0,8(sp)
    8000646c:	01010113          	addi	sp,sp,16
    80006470:	ffffd317          	auipc	t1,0xffffd
    80006474:	dfc30067          	jr	-516(t1) # 8000326c <main>

0000000080006478 <either_copyout>:
    80006478:	ff010113          	addi	sp,sp,-16
    8000647c:	00813023          	sd	s0,0(sp)
    80006480:	00113423          	sd	ra,8(sp)
    80006484:	01010413          	addi	s0,sp,16
    80006488:	02051663          	bnez	a0,800064b4 <either_copyout+0x3c>
    8000648c:	00058513          	mv	a0,a1
    80006490:	00060593          	mv	a1,a2
    80006494:	0006861b          	sext.w	a2,a3
    80006498:	00002097          	auipc	ra,0x2
    8000649c:	c5c080e7          	jalr	-932(ra) # 800080f4 <__memmove>
    800064a0:	00813083          	ld	ra,8(sp)
    800064a4:	00013403          	ld	s0,0(sp)
    800064a8:	00000513          	li	a0,0
    800064ac:	01010113          	addi	sp,sp,16
    800064b0:	00008067          	ret
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	19450513          	addi	a0,a0,404 # 80009648 <_ZL6digits+0x80>
    800064bc:	00001097          	auipc	ra,0x1
    800064c0:	930080e7          	jalr	-1744(ra) # 80006dec <panic>

00000000800064c4 <either_copyin>:
    800064c4:	ff010113          	addi	sp,sp,-16
    800064c8:	00813023          	sd	s0,0(sp)
    800064cc:	00113423          	sd	ra,8(sp)
    800064d0:	01010413          	addi	s0,sp,16
    800064d4:	02059463          	bnez	a1,800064fc <either_copyin+0x38>
    800064d8:	00060593          	mv	a1,a2
    800064dc:	0006861b          	sext.w	a2,a3
    800064e0:	00002097          	auipc	ra,0x2
    800064e4:	c14080e7          	jalr	-1004(ra) # 800080f4 <__memmove>
    800064e8:	00813083          	ld	ra,8(sp)
    800064ec:	00013403          	ld	s0,0(sp)
    800064f0:	00000513          	li	a0,0
    800064f4:	01010113          	addi	sp,sp,16
    800064f8:	00008067          	ret
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	17450513          	addi	a0,a0,372 # 80009670 <_ZL6digits+0xa8>
    80006504:	00001097          	auipc	ra,0x1
    80006508:	8e8080e7          	jalr	-1816(ra) # 80006dec <panic>

000000008000650c <trapinit>:
    8000650c:	ff010113          	addi	sp,sp,-16
    80006510:	00813423          	sd	s0,8(sp)
    80006514:	01010413          	addi	s0,sp,16
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	00003597          	auipc	a1,0x3
    80006520:	17c58593          	addi	a1,a1,380 # 80009698 <_ZL6digits+0xd0>
    80006524:	00006517          	auipc	a0,0x6
    80006528:	73c50513          	addi	a0,a0,1852 # 8000cc60 <tickslock>
    8000652c:	01010113          	addi	sp,sp,16
    80006530:	00001317          	auipc	t1,0x1
    80006534:	5c830067          	jr	1480(t1) # 80007af8 <initlock>

0000000080006538 <trapinithart>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00000797          	auipc	a5,0x0
    80006548:	2fc78793          	addi	a5,a5,764 # 80006840 <kernelvec>
    8000654c:	10579073          	csrw	stvec,a5
    80006550:	00813403          	ld	s0,8(sp)
    80006554:	01010113          	addi	sp,sp,16
    80006558:	00008067          	ret

000000008000655c <usertrap>:
    8000655c:	ff010113          	addi	sp,sp,-16
    80006560:	00813423          	sd	s0,8(sp)
    80006564:	01010413          	addi	s0,sp,16
    80006568:	00813403          	ld	s0,8(sp)
    8000656c:	01010113          	addi	sp,sp,16
    80006570:	00008067          	ret

0000000080006574 <usertrapret>:
    80006574:	ff010113          	addi	sp,sp,-16
    80006578:	00813423          	sd	s0,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	00813403          	ld	s0,8(sp)
    80006584:	01010113          	addi	sp,sp,16
    80006588:	00008067          	ret

000000008000658c <kerneltrap>:
    8000658c:	fe010113          	addi	sp,sp,-32
    80006590:	00813823          	sd	s0,16(sp)
    80006594:	00113c23          	sd	ra,24(sp)
    80006598:	00913423          	sd	s1,8(sp)
    8000659c:	02010413          	addi	s0,sp,32
    800065a0:	142025f3          	csrr	a1,scause
    800065a4:	100027f3          	csrr	a5,sstatus
    800065a8:	0027f793          	andi	a5,a5,2
    800065ac:	10079c63          	bnez	a5,800066c4 <kerneltrap+0x138>
    800065b0:	142027f3          	csrr	a5,scause
    800065b4:	0207ce63          	bltz	a5,800065f0 <kerneltrap+0x64>
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	12850513          	addi	a0,a0,296 # 800096e0 <_ZL6digits+0x118>
    800065c0:	00001097          	auipc	ra,0x1
    800065c4:	888080e7          	jalr	-1912(ra) # 80006e48 <__printf>
    800065c8:	141025f3          	csrr	a1,sepc
    800065cc:	14302673          	csrr	a2,stval
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	12050513          	addi	a0,a0,288 # 800096f0 <_ZL6digits+0x128>
    800065d8:	00001097          	auipc	ra,0x1
    800065dc:	870080e7          	jalr	-1936(ra) # 80006e48 <__printf>
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	12850513          	addi	a0,a0,296 # 80009708 <_ZL6digits+0x140>
    800065e8:	00001097          	auipc	ra,0x1
    800065ec:	804080e7          	jalr	-2044(ra) # 80006dec <panic>
    800065f0:	0ff7f713          	andi	a4,a5,255
    800065f4:	00900693          	li	a3,9
    800065f8:	04d70063          	beq	a4,a3,80006638 <kerneltrap+0xac>
    800065fc:	fff00713          	li	a4,-1
    80006600:	03f71713          	slli	a4,a4,0x3f
    80006604:	00170713          	addi	a4,a4,1
    80006608:	fae798e3          	bne	a5,a4,800065b8 <kerneltrap+0x2c>
    8000660c:	00000097          	auipc	ra,0x0
    80006610:	e00080e7          	jalr	-512(ra) # 8000640c <cpuid>
    80006614:	06050663          	beqz	a0,80006680 <kerneltrap+0xf4>
    80006618:	144027f3          	csrr	a5,sip
    8000661c:	ffd7f793          	andi	a5,a5,-3
    80006620:	14479073          	csrw	sip,a5
    80006624:	01813083          	ld	ra,24(sp)
    80006628:	01013403          	ld	s0,16(sp)
    8000662c:	00813483          	ld	s1,8(sp)
    80006630:	02010113          	addi	sp,sp,32
    80006634:	00008067          	ret
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	3cc080e7          	jalr	972(ra) # 80006a04 <plic_claim>
    80006640:	00a00793          	li	a5,10
    80006644:	00050493          	mv	s1,a0
    80006648:	06f50863          	beq	a0,a5,800066b8 <kerneltrap+0x12c>
    8000664c:	fc050ce3          	beqz	a0,80006624 <kerneltrap+0x98>
    80006650:	00050593          	mv	a1,a0
    80006654:	00003517          	auipc	a0,0x3
    80006658:	06c50513          	addi	a0,a0,108 # 800096c0 <_ZL6digits+0xf8>
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	7ec080e7          	jalr	2028(ra) # 80006e48 <__printf>
    80006664:	01013403          	ld	s0,16(sp)
    80006668:	01813083          	ld	ra,24(sp)
    8000666c:	00048513          	mv	a0,s1
    80006670:	00813483          	ld	s1,8(sp)
    80006674:	02010113          	addi	sp,sp,32
    80006678:	00000317          	auipc	t1,0x0
    8000667c:	3c430067          	jr	964(t1) # 80006a3c <plic_complete>
    80006680:	00006517          	auipc	a0,0x6
    80006684:	5e050513          	addi	a0,a0,1504 # 8000cc60 <tickslock>
    80006688:	00001097          	auipc	ra,0x1
    8000668c:	494080e7          	jalr	1172(ra) # 80007b1c <acquire>
    80006690:	00005717          	auipc	a4,0x5
    80006694:	41470713          	addi	a4,a4,1044 # 8000baa4 <ticks>
    80006698:	00072783          	lw	a5,0(a4)
    8000669c:	00006517          	auipc	a0,0x6
    800066a0:	5c450513          	addi	a0,a0,1476 # 8000cc60 <tickslock>
    800066a4:	0017879b          	addiw	a5,a5,1
    800066a8:	00f72023          	sw	a5,0(a4)
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	53c080e7          	jalr	1340(ra) # 80007be8 <release>
    800066b4:	f65ff06f          	j	80006618 <kerneltrap+0x8c>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	098080e7          	jalr	152(ra) # 80007750 <uartintr>
    800066c0:	fa5ff06f          	j	80006664 <kerneltrap+0xd8>
    800066c4:	00003517          	auipc	a0,0x3
    800066c8:	fdc50513          	addi	a0,a0,-36 # 800096a0 <_ZL6digits+0xd8>
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	720080e7          	jalr	1824(ra) # 80006dec <panic>

00000000800066d4 <clockintr>:
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00813823          	sd	s0,16(sp)
    800066dc:	00913423          	sd	s1,8(sp)
    800066e0:	00113c23          	sd	ra,24(sp)
    800066e4:	02010413          	addi	s0,sp,32
    800066e8:	00006497          	auipc	s1,0x6
    800066ec:	57848493          	addi	s1,s1,1400 # 8000cc60 <tickslock>
    800066f0:	00048513          	mv	a0,s1
    800066f4:	00001097          	auipc	ra,0x1
    800066f8:	428080e7          	jalr	1064(ra) # 80007b1c <acquire>
    800066fc:	00005717          	auipc	a4,0x5
    80006700:	3a870713          	addi	a4,a4,936 # 8000baa4 <ticks>
    80006704:	00072783          	lw	a5,0(a4)
    80006708:	01013403          	ld	s0,16(sp)
    8000670c:	01813083          	ld	ra,24(sp)
    80006710:	00048513          	mv	a0,s1
    80006714:	0017879b          	addiw	a5,a5,1
    80006718:	00813483          	ld	s1,8(sp)
    8000671c:	00f72023          	sw	a5,0(a4)
    80006720:	02010113          	addi	sp,sp,32
    80006724:	00001317          	auipc	t1,0x1
    80006728:	4c430067          	jr	1220(t1) # 80007be8 <release>

000000008000672c <devintr>:
    8000672c:	142027f3          	csrr	a5,scause
    80006730:	00000513          	li	a0,0
    80006734:	0007c463          	bltz	a5,8000673c <devintr+0x10>
    80006738:	00008067          	ret
    8000673c:	fe010113          	addi	sp,sp,-32
    80006740:	00813823          	sd	s0,16(sp)
    80006744:	00113c23          	sd	ra,24(sp)
    80006748:	00913423          	sd	s1,8(sp)
    8000674c:	02010413          	addi	s0,sp,32
    80006750:	0ff7f713          	andi	a4,a5,255
    80006754:	00900693          	li	a3,9
    80006758:	04d70c63          	beq	a4,a3,800067b0 <devintr+0x84>
    8000675c:	fff00713          	li	a4,-1
    80006760:	03f71713          	slli	a4,a4,0x3f
    80006764:	00170713          	addi	a4,a4,1
    80006768:	00e78c63          	beq	a5,a4,80006780 <devintr+0x54>
    8000676c:	01813083          	ld	ra,24(sp)
    80006770:	01013403          	ld	s0,16(sp)
    80006774:	00813483          	ld	s1,8(sp)
    80006778:	02010113          	addi	sp,sp,32
    8000677c:	00008067          	ret
    80006780:	00000097          	auipc	ra,0x0
    80006784:	c8c080e7          	jalr	-884(ra) # 8000640c <cpuid>
    80006788:	06050663          	beqz	a0,800067f4 <devintr+0xc8>
    8000678c:	144027f3          	csrr	a5,sip
    80006790:	ffd7f793          	andi	a5,a5,-3
    80006794:	14479073          	csrw	sip,a5
    80006798:	01813083          	ld	ra,24(sp)
    8000679c:	01013403          	ld	s0,16(sp)
    800067a0:	00813483          	ld	s1,8(sp)
    800067a4:	00200513          	li	a0,2
    800067a8:	02010113          	addi	sp,sp,32
    800067ac:	00008067          	ret
    800067b0:	00000097          	auipc	ra,0x0
    800067b4:	254080e7          	jalr	596(ra) # 80006a04 <plic_claim>
    800067b8:	00a00793          	li	a5,10
    800067bc:	00050493          	mv	s1,a0
    800067c0:	06f50663          	beq	a0,a5,8000682c <devintr+0x100>
    800067c4:	00100513          	li	a0,1
    800067c8:	fa0482e3          	beqz	s1,8000676c <devintr+0x40>
    800067cc:	00048593          	mv	a1,s1
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	ef050513          	addi	a0,a0,-272 # 800096c0 <_ZL6digits+0xf8>
    800067d8:	00000097          	auipc	ra,0x0
    800067dc:	670080e7          	jalr	1648(ra) # 80006e48 <__printf>
    800067e0:	00048513          	mv	a0,s1
    800067e4:	00000097          	auipc	ra,0x0
    800067e8:	258080e7          	jalr	600(ra) # 80006a3c <plic_complete>
    800067ec:	00100513          	li	a0,1
    800067f0:	f7dff06f          	j	8000676c <devintr+0x40>
    800067f4:	00006517          	auipc	a0,0x6
    800067f8:	46c50513          	addi	a0,a0,1132 # 8000cc60 <tickslock>
    800067fc:	00001097          	auipc	ra,0x1
    80006800:	320080e7          	jalr	800(ra) # 80007b1c <acquire>
    80006804:	00005717          	auipc	a4,0x5
    80006808:	2a070713          	addi	a4,a4,672 # 8000baa4 <ticks>
    8000680c:	00072783          	lw	a5,0(a4)
    80006810:	00006517          	auipc	a0,0x6
    80006814:	45050513          	addi	a0,a0,1104 # 8000cc60 <tickslock>
    80006818:	0017879b          	addiw	a5,a5,1
    8000681c:	00f72023          	sw	a5,0(a4)
    80006820:	00001097          	auipc	ra,0x1
    80006824:	3c8080e7          	jalr	968(ra) # 80007be8 <release>
    80006828:	f65ff06f          	j	8000678c <devintr+0x60>
    8000682c:	00001097          	auipc	ra,0x1
    80006830:	f24080e7          	jalr	-220(ra) # 80007750 <uartintr>
    80006834:	fadff06f          	j	800067e0 <devintr+0xb4>
	...

0000000080006840 <kernelvec>:
    80006840:	f0010113          	addi	sp,sp,-256
    80006844:	00113023          	sd	ra,0(sp)
    80006848:	00213423          	sd	sp,8(sp)
    8000684c:	00313823          	sd	gp,16(sp)
    80006850:	00413c23          	sd	tp,24(sp)
    80006854:	02513023          	sd	t0,32(sp)
    80006858:	02613423          	sd	t1,40(sp)
    8000685c:	02713823          	sd	t2,48(sp)
    80006860:	02813c23          	sd	s0,56(sp)
    80006864:	04913023          	sd	s1,64(sp)
    80006868:	04a13423          	sd	a0,72(sp)
    8000686c:	04b13823          	sd	a1,80(sp)
    80006870:	04c13c23          	sd	a2,88(sp)
    80006874:	06d13023          	sd	a3,96(sp)
    80006878:	06e13423          	sd	a4,104(sp)
    8000687c:	06f13823          	sd	a5,112(sp)
    80006880:	07013c23          	sd	a6,120(sp)
    80006884:	09113023          	sd	a7,128(sp)
    80006888:	09213423          	sd	s2,136(sp)
    8000688c:	09313823          	sd	s3,144(sp)
    80006890:	09413c23          	sd	s4,152(sp)
    80006894:	0b513023          	sd	s5,160(sp)
    80006898:	0b613423          	sd	s6,168(sp)
    8000689c:	0b713823          	sd	s7,176(sp)
    800068a0:	0b813c23          	sd	s8,184(sp)
    800068a4:	0d913023          	sd	s9,192(sp)
    800068a8:	0da13423          	sd	s10,200(sp)
    800068ac:	0db13823          	sd	s11,208(sp)
    800068b0:	0dc13c23          	sd	t3,216(sp)
    800068b4:	0fd13023          	sd	t4,224(sp)
    800068b8:	0fe13423          	sd	t5,232(sp)
    800068bc:	0ff13823          	sd	t6,240(sp)
    800068c0:	ccdff0ef          	jal	ra,8000658c <kerneltrap>
    800068c4:	00013083          	ld	ra,0(sp)
    800068c8:	00813103          	ld	sp,8(sp)
    800068cc:	01013183          	ld	gp,16(sp)
    800068d0:	02013283          	ld	t0,32(sp)
    800068d4:	02813303          	ld	t1,40(sp)
    800068d8:	03013383          	ld	t2,48(sp)
    800068dc:	03813403          	ld	s0,56(sp)
    800068e0:	04013483          	ld	s1,64(sp)
    800068e4:	04813503          	ld	a0,72(sp)
    800068e8:	05013583          	ld	a1,80(sp)
    800068ec:	05813603          	ld	a2,88(sp)
    800068f0:	06013683          	ld	a3,96(sp)
    800068f4:	06813703          	ld	a4,104(sp)
    800068f8:	07013783          	ld	a5,112(sp)
    800068fc:	07813803          	ld	a6,120(sp)
    80006900:	08013883          	ld	a7,128(sp)
    80006904:	08813903          	ld	s2,136(sp)
    80006908:	09013983          	ld	s3,144(sp)
    8000690c:	09813a03          	ld	s4,152(sp)
    80006910:	0a013a83          	ld	s5,160(sp)
    80006914:	0a813b03          	ld	s6,168(sp)
    80006918:	0b013b83          	ld	s7,176(sp)
    8000691c:	0b813c03          	ld	s8,184(sp)
    80006920:	0c013c83          	ld	s9,192(sp)
    80006924:	0c813d03          	ld	s10,200(sp)
    80006928:	0d013d83          	ld	s11,208(sp)
    8000692c:	0d813e03          	ld	t3,216(sp)
    80006930:	0e013e83          	ld	t4,224(sp)
    80006934:	0e813f03          	ld	t5,232(sp)
    80006938:	0f013f83          	ld	t6,240(sp)
    8000693c:	10010113          	addi	sp,sp,256
    80006940:	10200073          	sret
    80006944:	00000013          	nop
    80006948:	00000013          	nop
    8000694c:	00000013          	nop

0000000080006950 <timervec>:
    80006950:	34051573          	csrrw	a0,mscratch,a0
    80006954:	00b53023          	sd	a1,0(a0)
    80006958:	00c53423          	sd	a2,8(a0)
    8000695c:	00d53823          	sd	a3,16(a0)
    80006960:	01853583          	ld	a1,24(a0)
    80006964:	02053603          	ld	a2,32(a0)
    80006968:	0005b683          	ld	a3,0(a1)
    8000696c:	00c686b3          	add	a3,a3,a2
    80006970:	00d5b023          	sd	a3,0(a1)
    80006974:	00200593          	li	a1,2
    80006978:	14459073          	csrw	sip,a1
    8000697c:	01053683          	ld	a3,16(a0)
    80006980:	00853603          	ld	a2,8(a0)
    80006984:	00053583          	ld	a1,0(a0)
    80006988:	34051573          	csrrw	a0,mscratch,a0
    8000698c:	30200073          	mret

0000000080006990 <plicinit>:
    80006990:	ff010113          	addi	sp,sp,-16
    80006994:	00813423          	sd	s0,8(sp)
    80006998:	01010413          	addi	s0,sp,16
    8000699c:	00813403          	ld	s0,8(sp)
    800069a0:	0c0007b7          	lui	a5,0xc000
    800069a4:	00100713          	li	a4,1
    800069a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800069ac:	00e7a223          	sw	a4,4(a5)
    800069b0:	01010113          	addi	sp,sp,16
    800069b4:	00008067          	ret

00000000800069b8 <plicinithart>:
    800069b8:	ff010113          	addi	sp,sp,-16
    800069bc:	00813023          	sd	s0,0(sp)
    800069c0:	00113423          	sd	ra,8(sp)
    800069c4:	01010413          	addi	s0,sp,16
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	a44080e7          	jalr	-1468(ra) # 8000640c <cpuid>
    800069d0:	0085171b          	slliw	a4,a0,0x8
    800069d4:	0c0027b7          	lui	a5,0xc002
    800069d8:	00e787b3          	add	a5,a5,a4
    800069dc:	40200713          	li	a4,1026
    800069e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800069e4:	00813083          	ld	ra,8(sp)
    800069e8:	00013403          	ld	s0,0(sp)
    800069ec:	00d5151b          	slliw	a0,a0,0xd
    800069f0:	0c2017b7          	lui	a5,0xc201
    800069f4:	00a78533          	add	a0,a5,a0
    800069f8:	00052023          	sw	zero,0(a0)
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	00008067          	ret

0000000080006a04 <plic_claim>:
    80006a04:	ff010113          	addi	sp,sp,-16
    80006a08:	00813023          	sd	s0,0(sp)
    80006a0c:	00113423          	sd	ra,8(sp)
    80006a10:	01010413          	addi	s0,sp,16
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	9f8080e7          	jalr	-1544(ra) # 8000640c <cpuid>
    80006a1c:	00813083          	ld	ra,8(sp)
    80006a20:	00013403          	ld	s0,0(sp)
    80006a24:	00d5151b          	slliw	a0,a0,0xd
    80006a28:	0c2017b7          	lui	a5,0xc201
    80006a2c:	00a78533          	add	a0,a5,a0
    80006a30:	00452503          	lw	a0,4(a0)
    80006a34:	01010113          	addi	sp,sp,16
    80006a38:	00008067          	ret

0000000080006a3c <plic_complete>:
    80006a3c:	fe010113          	addi	sp,sp,-32
    80006a40:	00813823          	sd	s0,16(sp)
    80006a44:	00913423          	sd	s1,8(sp)
    80006a48:	00113c23          	sd	ra,24(sp)
    80006a4c:	02010413          	addi	s0,sp,32
    80006a50:	00050493          	mv	s1,a0
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	9b8080e7          	jalr	-1608(ra) # 8000640c <cpuid>
    80006a5c:	01813083          	ld	ra,24(sp)
    80006a60:	01013403          	ld	s0,16(sp)
    80006a64:	00d5179b          	slliw	a5,a0,0xd
    80006a68:	0c201737          	lui	a4,0xc201
    80006a6c:	00f707b3          	add	a5,a4,a5
    80006a70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006a74:	00813483          	ld	s1,8(sp)
    80006a78:	02010113          	addi	sp,sp,32
    80006a7c:	00008067          	ret

0000000080006a80 <consolewrite>:
    80006a80:	fb010113          	addi	sp,sp,-80
    80006a84:	04813023          	sd	s0,64(sp)
    80006a88:	04113423          	sd	ra,72(sp)
    80006a8c:	02913c23          	sd	s1,56(sp)
    80006a90:	03213823          	sd	s2,48(sp)
    80006a94:	03313423          	sd	s3,40(sp)
    80006a98:	03413023          	sd	s4,32(sp)
    80006a9c:	01513c23          	sd	s5,24(sp)
    80006aa0:	05010413          	addi	s0,sp,80
    80006aa4:	06c05c63          	blez	a2,80006b1c <consolewrite+0x9c>
    80006aa8:	00060993          	mv	s3,a2
    80006aac:	00050a13          	mv	s4,a0
    80006ab0:	00058493          	mv	s1,a1
    80006ab4:	00000913          	li	s2,0
    80006ab8:	fff00a93          	li	s5,-1
    80006abc:	01c0006f          	j	80006ad8 <consolewrite+0x58>
    80006ac0:	fbf44503          	lbu	a0,-65(s0)
    80006ac4:	0019091b          	addiw	s2,s2,1
    80006ac8:	00148493          	addi	s1,s1,1
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	a9c080e7          	jalr	-1380(ra) # 80007568 <uartputc>
    80006ad4:	03298063          	beq	s3,s2,80006af4 <consolewrite+0x74>
    80006ad8:	00048613          	mv	a2,s1
    80006adc:	00100693          	li	a3,1
    80006ae0:	000a0593          	mv	a1,s4
    80006ae4:	fbf40513          	addi	a0,s0,-65
    80006ae8:	00000097          	auipc	ra,0x0
    80006aec:	9dc080e7          	jalr	-1572(ra) # 800064c4 <either_copyin>
    80006af0:	fd5518e3          	bne	a0,s5,80006ac0 <consolewrite+0x40>
    80006af4:	04813083          	ld	ra,72(sp)
    80006af8:	04013403          	ld	s0,64(sp)
    80006afc:	03813483          	ld	s1,56(sp)
    80006b00:	02813983          	ld	s3,40(sp)
    80006b04:	02013a03          	ld	s4,32(sp)
    80006b08:	01813a83          	ld	s5,24(sp)
    80006b0c:	00090513          	mv	a0,s2
    80006b10:	03013903          	ld	s2,48(sp)
    80006b14:	05010113          	addi	sp,sp,80
    80006b18:	00008067          	ret
    80006b1c:	00000913          	li	s2,0
    80006b20:	fd5ff06f          	j	80006af4 <consolewrite+0x74>

0000000080006b24 <consoleread>:
    80006b24:	f9010113          	addi	sp,sp,-112
    80006b28:	06813023          	sd	s0,96(sp)
    80006b2c:	04913c23          	sd	s1,88(sp)
    80006b30:	05213823          	sd	s2,80(sp)
    80006b34:	05313423          	sd	s3,72(sp)
    80006b38:	05413023          	sd	s4,64(sp)
    80006b3c:	03513c23          	sd	s5,56(sp)
    80006b40:	03613823          	sd	s6,48(sp)
    80006b44:	03713423          	sd	s7,40(sp)
    80006b48:	03813023          	sd	s8,32(sp)
    80006b4c:	06113423          	sd	ra,104(sp)
    80006b50:	01913c23          	sd	s9,24(sp)
    80006b54:	07010413          	addi	s0,sp,112
    80006b58:	00060b93          	mv	s7,a2
    80006b5c:	00050913          	mv	s2,a0
    80006b60:	00058c13          	mv	s8,a1
    80006b64:	00060b1b          	sext.w	s6,a2
    80006b68:	00006497          	auipc	s1,0x6
    80006b6c:	12048493          	addi	s1,s1,288 # 8000cc88 <cons>
    80006b70:	00400993          	li	s3,4
    80006b74:	fff00a13          	li	s4,-1
    80006b78:	00a00a93          	li	s5,10
    80006b7c:	05705e63          	blez	s7,80006bd8 <consoleread+0xb4>
    80006b80:	09c4a703          	lw	a4,156(s1)
    80006b84:	0984a783          	lw	a5,152(s1)
    80006b88:	0007071b          	sext.w	a4,a4
    80006b8c:	08e78463          	beq	a5,a4,80006c14 <consoleread+0xf0>
    80006b90:	07f7f713          	andi	a4,a5,127
    80006b94:	00e48733          	add	a4,s1,a4
    80006b98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006b9c:	0017869b          	addiw	a3,a5,1
    80006ba0:	08d4ac23          	sw	a3,152(s1)
    80006ba4:	00070c9b          	sext.w	s9,a4
    80006ba8:	0b370663          	beq	a4,s3,80006c54 <consoleread+0x130>
    80006bac:	00100693          	li	a3,1
    80006bb0:	f9f40613          	addi	a2,s0,-97
    80006bb4:	000c0593          	mv	a1,s8
    80006bb8:	00090513          	mv	a0,s2
    80006bbc:	f8e40fa3          	sb	a4,-97(s0)
    80006bc0:	00000097          	auipc	ra,0x0
    80006bc4:	8b8080e7          	jalr	-1864(ra) # 80006478 <either_copyout>
    80006bc8:	01450863          	beq	a0,s4,80006bd8 <consoleread+0xb4>
    80006bcc:	001c0c13          	addi	s8,s8,1
    80006bd0:	fffb8b9b          	addiw	s7,s7,-1
    80006bd4:	fb5c94e3          	bne	s9,s5,80006b7c <consoleread+0x58>
    80006bd8:	000b851b          	sext.w	a0,s7
    80006bdc:	06813083          	ld	ra,104(sp)
    80006be0:	06013403          	ld	s0,96(sp)
    80006be4:	05813483          	ld	s1,88(sp)
    80006be8:	05013903          	ld	s2,80(sp)
    80006bec:	04813983          	ld	s3,72(sp)
    80006bf0:	04013a03          	ld	s4,64(sp)
    80006bf4:	03813a83          	ld	s5,56(sp)
    80006bf8:	02813b83          	ld	s7,40(sp)
    80006bfc:	02013c03          	ld	s8,32(sp)
    80006c00:	01813c83          	ld	s9,24(sp)
    80006c04:	40ab053b          	subw	a0,s6,a0
    80006c08:	03013b03          	ld	s6,48(sp)
    80006c0c:	07010113          	addi	sp,sp,112
    80006c10:	00008067          	ret
    80006c14:	00001097          	auipc	ra,0x1
    80006c18:	1d8080e7          	jalr	472(ra) # 80007dec <push_on>
    80006c1c:	0984a703          	lw	a4,152(s1)
    80006c20:	09c4a783          	lw	a5,156(s1)
    80006c24:	0007879b          	sext.w	a5,a5
    80006c28:	fef70ce3          	beq	a4,a5,80006c20 <consoleread+0xfc>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	234080e7          	jalr	564(ra) # 80007e60 <pop_on>
    80006c34:	0984a783          	lw	a5,152(s1)
    80006c38:	07f7f713          	andi	a4,a5,127
    80006c3c:	00e48733          	add	a4,s1,a4
    80006c40:	01874703          	lbu	a4,24(a4)
    80006c44:	0017869b          	addiw	a3,a5,1
    80006c48:	08d4ac23          	sw	a3,152(s1)
    80006c4c:	00070c9b          	sext.w	s9,a4
    80006c50:	f5371ee3          	bne	a4,s3,80006bac <consoleread+0x88>
    80006c54:	000b851b          	sext.w	a0,s7
    80006c58:	f96bf2e3          	bgeu	s7,s6,80006bdc <consoleread+0xb8>
    80006c5c:	08f4ac23          	sw	a5,152(s1)
    80006c60:	f7dff06f          	j	80006bdc <consoleread+0xb8>

0000000080006c64 <consputc>:
    80006c64:	10000793          	li	a5,256
    80006c68:	00f50663          	beq	a0,a5,80006c74 <consputc+0x10>
    80006c6c:	00001317          	auipc	t1,0x1
    80006c70:	9f430067          	jr	-1548(t1) # 80007660 <uartputc_sync>
    80006c74:	ff010113          	addi	sp,sp,-16
    80006c78:	00113423          	sd	ra,8(sp)
    80006c7c:	00813023          	sd	s0,0(sp)
    80006c80:	01010413          	addi	s0,sp,16
    80006c84:	00800513          	li	a0,8
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	9d8080e7          	jalr	-1576(ra) # 80007660 <uartputc_sync>
    80006c90:	02000513          	li	a0,32
    80006c94:	00001097          	auipc	ra,0x1
    80006c98:	9cc080e7          	jalr	-1588(ra) # 80007660 <uartputc_sync>
    80006c9c:	00013403          	ld	s0,0(sp)
    80006ca0:	00813083          	ld	ra,8(sp)
    80006ca4:	00800513          	li	a0,8
    80006ca8:	01010113          	addi	sp,sp,16
    80006cac:	00001317          	auipc	t1,0x1
    80006cb0:	9b430067          	jr	-1612(t1) # 80007660 <uartputc_sync>

0000000080006cb4 <consoleintr>:
    80006cb4:	fe010113          	addi	sp,sp,-32
    80006cb8:	00813823          	sd	s0,16(sp)
    80006cbc:	00913423          	sd	s1,8(sp)
    80006cc0:	01213023          	sd	s2,0(sp)
    80006cc4:	00113c23          	sd	ra,24(sp)
    80006cc8:	02010413          	addi	s0,sp,32
    80006ccc:	00006917          	auipc	s2,0x6
    80006cd0:	fbc90913          	addi	s2,s2,-68 # 8000cc88 <cons>
    80006cd4:	00050493          	mv	s1,a0
    80006cd8:	00090513          	mv	a0,s2
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	e40080e7          	jalr	-448(ra) # 80007b1c <acquire>
    80006ce4:	02048c63          	beqz	s1,80006d1c <consoleintr+0x68>
    80006ce8:	0a092783          	lw	a5,160(s2)
    80006cec:	09892703          	lw	a4,152(s2)
    80006cf0:	07f00693          	li	a3,127
    80006cf4:	40e7873b          	subw	a4,a5,a4
    80006cf8:	02e6e263          	bltu	a3,a4,80006d1c <consoleintr+0x68>
    80006cfc:	00d00713          	li	a4,13
    80006d00:	04e48063          	beq	s1,a4,80006d40 <consoleintr+0x8c>
    80006d04:	07f7f713          	andi	a4,a5,127
    80006d08:	00e90733          	add	a4,s2,a4
    80006d0c:	0017879b          	addiw	a5,a5,1
    80006d10:	0af92023          	sw	a5,160(s2)
    80006d14:	00970c23          	sb	s1,24(a4)
    80006d18:	08f92e23          	sw	a5,156(s2)
    80006d1c:	01013403          	ld	s0,16(sp)
    80006d20:	01813083          	ld	ra,24(sp)
    80006d24:	00813483          	ld	s1,8(sp)
    80006d28:	00013903          	ld	s2,0(sp)
    80006d2c:	00006517          	auipc	a0,0x6
    80006d30:	f5c50513          	addi	a0,a0,-164 # 8000cc88 <cons>
    80006d34:	02010113          	addi	sp,sp,32
    80006d38:	00001317          	auipc	t1,0x1
    80006d3c:	eb030067          	jr	-336(t1) # 80007be8 <release>
    80006d40:	00a00493          	li	s1,10
    80006d44:	fc1ff06f          	j	80006d04 <consoleintr+0x50>

0000000080006d48 <consoleinit>:
    80006d48:	fe010113          	addi	sp,sp,-32
    80006d4c:	00113c23          	sd	ra,24(sp)
    80006d50:	00813823          	sd	s0,16(sp)
    80006d54:	00913423          	sd	s1,8(sp)
    80006d58:	02010413          	addi	s0,sp,32
    80006d5c:	00006497          	auipc	s1,0x6
    80006d60:	f2c48493          	addi	s1,s1,-212 # 8000cc88 <cons>
    80006d64:	00048513          	mv	a0,s1
    80006d68:	00003597          	auipc	a1,0x3
    80006d6c:	9b058593          	addi	a1,a1,-1616 # 80009718 <_ZL6digits+0x150>
    80006d70:	00001097          	auipc	ra,0x1
    80006d74:	d88080e7          	jalr	-632(ra) # 80007af8 <initlock>
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	7ac080e7          	jalr	1964(ra) # 80007524 <uartinit>
    80006d80:	01813083          	ld	ra,24(sp)
    80006d84:	01013403          	ld	s0,16(sp)
    80006d88:	00000797          	auipc	a5,0x0
    80006d8c:	d9c78793          	addi	a5,a5,-612 # 80006b24 <consoleread>
    80006d90:	0af4bc23          	sd	a5,184(s1)
    80006d94:	00000797          	auipc	a5,0x0
    80006d98:	cec78793          	addi	a5,a5,-788 # 80006a80 <consolewrite>
    80006d9c:	0cf4b023          	sd	a5,192(s1)
    80006da0:	00813483          	ld	s1,8(sp)
    80006da4:	02010113          	addi	sp,sp,32
    80006da8:	00008067          	ret

0000000080006dac <console_read>:
    80006dac:	ff010113          	addi	sp,sp,-16
    80006db0:	00813423          	sd	s0,8(sp)
    80006db4:	01010413          	addi	s0,sp,16
    80006db8:	00813403          	ld	s0,8(sp)
    80006dbc:	00006317          	auipc	t1,0x6
    80006dc0:	f8433303          	ld	t1,-124(t1) # 8000cd40 <devsw+0x10>
    80006dc4:	01010113          	addi	sp,sp,16
    80006dc8:	00030067          	jr	t1

0000000080006dcc <console_write>:
    80006dcc:	ff010113          	addi	sp,sp,-16
    80006dd0:	00813423          	sd	s0,8(sp)
    80006dd4:	01010413          	addi	s0,sp,16
    80006dd8:	00813403          	ld	s0,8(sp)
    80006ddc:	00006317          	auipc	t1,0x6
    80006de0:	f6c33303          	ld	t1,-148(t1) # 8000cd48 <devsw+0x18>
    80006de4:	01010113          	addi	sp,sp,16
    80006de8:	00030067          	jr	t1

0000000080006dec <panic>:
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00113c23          	sd	ra,24(sp)
    80006df4:	00813823          	sd	s0,16(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	00050493          	mv	s1,a0
    80006e04:	00003517          	auipc	a0,0x3
    80006e08:	91c50513          	addi	a0,a0,-1764 # 80009720 <_ZL6digits+0x158>
    80006e0c:	00006797          	auipc	a5,0x6
    80006e10:	fc07ae23          	sw	zero,-36(a5) # 8000cde8 <pr+0x18>
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	034080e7          	jalr	52(ra) # 80006e48 <__printf>
    80006e1c:	00048513          	mv	a0,s1
    80006e20:	00000097          	auipc	ra,0x0
    80006e24:	028080e7          	jalr	40(ra) # 80006e48 <__printf>
    80006e28:	00002517          	auipc	a0,0x2
    80006e2c:	2e850513          	addi	a0,a0,744 # 80009110 <CONSOLE_STATUS+0x100>
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	018080e7          	jalr	24(ra) # 80006e48 <__printf>
    80006e38:	00100793          	li	a5,1
    80006e3c:	00005717          	auipc	a4,0x5
    80006e40:	c6f72623          	sw	a5,-916(a4) # 8000baa8 <panicked>
    80006e44:	0000006f          	j	80006e44 <panic+0x58>

0000000080006e48 <__printf>:
    80006e48:	f3010113          	addi	sp,sp,-208
    80006e4c:	08813023          	sd	s0,128(sp)
    80006e50:	07313423          	sd	s3,104(sp)
    80006e54:	09010413          	addi	s0,sp,144
    80006e58:	05813023          	sd	s8,64(sp)
    80006e5c:	08113423          	sd	ra,136(sp)
    80006e60:	06913c23          	sd	s1,120(sp)
    80006e64:	07213823          	sd	s2,112(sp)
    80006e68:	07413023          	sd	s4,96(sp)
    80006e6c:	05513c23          	sd	s5,88(sp)
    80006e70:	05613823          	sd	s6,80(sp)
    80006e74:	05713423          	sd	s7,72(sp)
    80006e78:	03913c23          	sd	s9,56(sp)
    80006e7c:	03a13823          	sd	s10,48(sp)
    80006e80:	03b13423          	sd	s11,40(sp)
    80006e84:	00006317          	auipc	t1,0x6
    80006e88:	f4c30313          	addi	t1,t1,-180 # 8000cdd0 <pr>
    80006e8c:	01832c03          	lw	s8,24(t1)
    80006e90:	00b43423          	sd	a1,8(s0)
    80006e94:	00c43823          	sd	a2,16(s0)
    80006e98:	00d43c23          	sd	a3,24(s0)
    80006e9c:	02e43023          	sd	a4,32(s0)
    80006ea0:	02f43423          	sd	a5,40(s0)
    80006ea4:	03043823          	sd	a6,48(s0)
    80006ea8:	03143c23          	sd	a7,56(s0)
    80006eac:	00050993          	mv	s3,a0
    80006eb0:	4a0c1663          	bnez	s8,8000735c <__printf+0x514>
    80006eb4:	60098c63          	beqz	s3,800074cc <__printf+0x684>
    80006eb8:	0009c503          	lbu	a0,0(s3)
    80006ebc:	00840793          	addi	a5,s0,8
    80006ec0:	f6f43c23          	sd	a5,-136(s0)
    80006ec4:	00000493          	li	s1,0
    80006ec8:	22050063          	beqz	a0,800070e8 <__printf+0x2a0>
    80006ecc:	00002a37          	lui	s4,0x2
    80006ed0:	00018ab7          	lui	s5,0x18
    80006ed4:	000f4b37          	lui	s6,0xf4
    80006ed8:	00989bb7          	lui	s7,0x989
    80006edc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ee0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ee4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ee8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006eec:	00148c9b          	addiw	s9,s1,1
    80006ef0:	02500793          	li	a5,37
    80006ef4:	01998933          	add	s2,s3,s9
    80006ef8:	38f51263          	bne	a0,a5,8000727c <__printf+0x434>
    80006efc:	00094783          	lbu	a5,0(s2)
    80006f00:	00078c9b          	sext.w	s9,a5
    80006f04:	1e078263          	beqz	a5,800070e8 <__printf+0x2a0>
    80006f08:	0024849b          	addiw	s1,s1,2
    80006f0c:	07000713          	li	a4,112
    80006f10:	00998933          	add	s2,s3,s1
    80006f14:	38e78a63          	beq	a5,a4,800072a8 <__printf+0x460>
    80006f18:	20f76863          	bltu	a4,a5,80007128 <__printf+0x2e0>
    80006f1c:	42a78863          	beq	a5,a0,8000734c <__printf+0x504>
    80006f20:	06400713          	li	a4,100
    80006f24:	40e79663          	bne	a5,a4,80007330 <__printf+0x4e8>
    80006f28:	f7843783          	ld	a5,-136(s0)
    80006f2c:	0007a603          	lw	a2,0(a5)
    80006f30:	00878793          	addi	a5,a5,8
    80006f34:	f6f43c23          	sd	a5,-136(s0)
    80006f38:	42064a63          	bltz	a2,8000736c <__printf+0x524>
    80006f3c:	00a00713          	li	a4,10
    80006f40:	02e677bb          	remuw	a5,a2,a4
    80006f44:	00003d97          	auipc	s11,0x3
    80006f48:	804d8d93          	addi	s11,s11,-2044 # 80009748 <digits>
    80006f4c:	00900593          	li	a1,9
    80006f50:	0006051b          	sext.w	a0,a2
    80006f54:	00000c93          	li	s9,0
    80006f58:	02079793          	slli	a5,a5,0x20
    80006f5c:	0207d793          	srli	a5,a5,0x20
    80006f60:	00fd87b3          	add	a5,s11,a5
    80006f64:	0007c783          	lbu	a5,0(a5)
    80006f68:	02e656bb          	divuw	a3,a2,a4
    80006f6c:	f8f40023          	sb	a5,-128(s0)
    80006f70:	14c5d863          	bge	a1,a2,800070c0 <__printf+0x278>
    80006f74:	06300593          	li	a1,99
    80006f78:	00100c93          	li	s9,1
    80006f7c:	02e6f7bb          	remuw	a5,a3,a4
    80006f80:	02079793          	slli	a5,a5,0x20
    80006f84:	0207d793          	srli	a5,a5,0x20
    80006f88:	00fd87b3          	add	a5,s11,a5
    80006f8c:	0007c783          	lbu	a5,0(a5)
    80006f90:	02e6d73b          	divuw	a4,a3,a4
    80006f94:	f8f400a3          	sb	a5,-127(s0)
    80006f98:	12a5f463          	bgeu	a1,a0,800070c0 <__printf+0x278>
    80006f9c:	00a00693          	li	a3,10
    80006fa0:	00900593          	li	a1,9
    80006fa4:	02d777bb          	remuw	a5,a4,a3
    80006fa8:	02079793          	slli	a5,a5,0x20
    80006fac:	0207d793          	srli	a5,a5,0x20
    80006fb0:	00fd87b3          	add	a5,s11,a5
    80006fb4:	0007c503          	lbu	a0,0(a5)
    80006fb8:	02d757bb          	divuw	a5,a4,a3
    80006fbc:	f8a40123          	sb	a0,-126(s0)
    80006fc0:	48e5f263          	bgeu	a1,a4,80007444 <__printf+0x5fc>
    80006fc4:	06300513          	li	a0,99
    80006fc8:	02d7f5bb          	remuw	a1,a5,a3
    80006fcc:	02059593          	slli	a1,a1,0x20
    80006fd0:	0205d593          	srli	a1,a1,0x20
    80006fd4:	00bd85b3          	add	a1,s11,a1
    80006fd8:	0005c583          	lbu	a1,0(a1)
    80006fdc:	02d7d7bb          	divuw	a5,a5,a3
    80006fe0:	f8b401a3          	sb	a1,-125(s0)
    80006fe4:	48e57263          	bgeu	a0,a4,80007468 <__printf+0x620>
    80006fe8:	3e700513          	li	a0,999
    80006fec:	02d7f5bb          	remuw	a1,a5,a3
    80006ff0:	02059593          	slli	a1,a1,0x20
    80006ff4:	0205d593          	srli	a1,a1,0x20
    80006ff8:	00bd85b3          	add	a1,s11,a1
    80006ffc:	0005c583          	lbu	a1,0(a1)
    80007000:	02d7d7bb          	divuw	a5,a5,a3
    80007004:	f8b40223          	sb	a1,-124(s0)
    80007008:	46e57663          	bgeu	a0,a4,80007474 <__printf+0x62c>
    8000700c:	02d7f5bb          	remuw	a1,a5,a3
    80007010:	02059593          	slli	a1,a1,0x20
    80007014:	0205d593          	srli	a1,a1,0x20
    80007018:	00bd85b3          	add	a1,s11,a1
    8000701c:	0005c583          	lbu	a1,0(a1)
    80007020:	02d7d7bb          	divuw	a5,a5,a3
    80007024:	f8b402a3          	sb	a1,-123(s0)
    80007028:	46ea7863          	bgeu	s4,a4,80007498 <__printf+0x650>
    8000702c:	02d7f5bb          	remuw	a1,a5,a3
    80007030:	02059593          	slli	a1,a1,0x20
    80007034:	0205d593          	srli	a1,a1,0x20
    80007038:	00bd85b3          	add	a1,s11,a1
    8000703c:	0005c583          	lbu	a1,0(a1)
    80007040:	02d7d7bb          	divuw	a5,a5,a3
    80007044:	f8b40323          	sb	a1,-122(s0)
    80007048:	3eeaf863          	bgeu	s5,a4,80007438 <__printf+0x5f0>
    8000704c:	02d7f5bb          	remuw	a1,a5,a3
    80007050:	02059593          	slli	a1,a1,0x20
    80007054:	0205d593          	srli	a1,a1,0x20
    80007058:	00bd85b3          	add	a1,s11,a1
    8000705c:	0005c583          	lbu	a1,0(a1)
    80007060:	02d7d7bb          	divuw	a5,a5,a3
    80007064:	f8b403a3          	sb	a1,-121(s0)
    80007068:	42eb7e63          	bgeu	s6,a4,800074a4 <__printf+0x65c>
    8000706c:	02d7f5bb          	remuw	a1,a5,a3
    80007070:	02059593          	slli	a1,a1,0x20
    80007074:	0205d593          	srli	a1,a1,0x20
    80007078:	00bd85b3          	add	a1,s11,a1
    8000707c:	0005c583          	lbu	a1,0(a1)
    80007080:	02d7d7bb          	divuw	a5,a5,a3
    80007084:	f8b40423          	sb	a1,-120(s0)
    80007088:	42ebfc63          	bgeu	s7,a4,800074c0 <__printf+0x678>
    8000708c:	02079793          	slli	a5,a5,0x20
    80007090:	0207d793          	srli	a5,a5,0x20
    80007094:	00fd8db3          	add	s11,s11,a5
    80007098:	000dc703          	lbu	a4,0(s11)
    8000709c:	00a00793          	li	a5,10
    800070a0:	00900c93          	li	s9,9
    800070a4:	f8e404a3          	sb	a4,-119(s0)
    800070a8:	00065c63          	bgez	a2,800070c0 <__printf+0x278>
    800070ac:	f9040713          	addi	a4,s0,-112
    800070b0:	00f70733          	add	a4,a4,a5
    800070b4:	02d00693          	li	a3,45
    800070b8:	fed70823          	sb	a3,-16(a4)
    800070bc:	00078c93          	mv	s9,a5
    800070c0:	f8040793          	addi	a5,s0,-128
    800070c4:	01978cb3          	add	s9,a5,s9
    800070c8:	f7f40d13          	addi	s10,s0,-129
    800070cc:	000cc503          	lbu	a0,0(s9)
    800070d0:	fffc8c93          	addi	s9,s9,-1
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	b90080e7          	jalr	-1136(ra) # 80006c64 <consputc>
    800070dc:	ffac98e3          	bne	s9,s10,800070cc <__printf+0x284>
    800070e0:	00094503          	lbu	a0,0(s2)
    800070e4:	e00514e3          	bnez	a0,80006eec <__printf+0xa4>
    800070e8:	1a0c1663          	bnez	s8,80007294 <__printf+0x44c>
    800070ec:	08813083          	ld	ra,136(sp)
    800070f0:	08013403          	ld	s0,128(sp)
    800070f4:	07813483          	ld	s1,120(sp)
    800070f8:	07013903          	ld	s2,112(sp)
    800070fc:	06813983          	ld	s3,104(sp)
    80007100:	06013a03          	ld	s4,96(sp)
    80007104:	05813a83          	ld	s5,88(sp)
    80007108:	05013b03          	ld	s6,80(sp)
    8000710c:	04813b83          	ld	s7,72(sp)
    80007110:	04013c03          	ld	s8,64(sp)
    80007114:	03813c83          	ld	s9,56(sp)
    80007118:	03013d03          	ld	s10,48(sp)
    8000711c:	02813d83          	ld	s11,40(sp)
    80007120:	0d010113          	addi	sp,sp,208
    80007124:	00008067          	ret
    80007128:	07300713          	li	a4,115
    8000712c:	1ce78a63          	beq	a5,a4,80007300 <__printf+0x4b8>
    80007130:	07800713          	li	a4,120
    80007134:	1ee79e63          	bne	a5,a4,80007330 <__printf+0x4e8>
    80007138:	f7843783          	ld	a5,-136(s0)
    8000713c:	0007a703          	lw	a4,0(a5)
    80007140:	00878793          	addi	a5,a5,8
    80007144:	f6f43c23          	sd	a5,-136(s0)
    80007148:	28074263          	bltz	a4,800073cc <__printf+0x584>
    8000714c:	00002d97          	auipc	s11,0x2
    80007150:	5fcd8d93          	addi	s11,s11,1532 # 80009748 <digits>
    80007154:	00f77793          	andi	a5,a4,15
    80007158:	00fd87b3          	add	a5,s11,a5
    8000715c:	0007c683          	lbu	a3,0(a5)
    80007160:	00f00613          	li	a2,15
    80007164:	0007079b          	sext.w	a5,a4
    80007168:	f8d40023          	sb	a3,-128(s0)
    8000716c:	0047559b          	srliw	a1,a4,0x4
    80007170:	0047569b          	srliw	a3,a4,0x4
    80007174:	00000c93          	li	s9,0
    80007178:	0ee65063          	bge	a2,a4,80007258 <__printf+0x410>
    8000717c:	00f6f693          	andi	a3,a3,15
    80007180:	00dd86b3          	add	a3,s11,a3
    80007184:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007188:	0087d79b          	srliw	a5,a5,0x8
    8000718c:	00100c93          	li	s9,1
    80007190:	f8d400a3          	sb	a3,-127(s0)
    80007194:	0cb67263          	bgeu	a2,a1,80007258 <__printf+0x410>
    80007198:	00f7f693          	andi	a3,a5,15
    8000719c:	00dd86b3          	add	a3,s11,a3
    800071a0:	0006c583          	lbu	a1,0(a3)
    800071a4:	00f00613          	li	a2,15
    800071a8:	0047d69b          	srliw	a3,a5,0x4
    800071ac:	f8b40123          	sb	a1,-126(s0)
    800071b0:	0047d593          	srli	a1,a5,0x4
    800071b4:	28f67e63          	bgeu	a2,a5,80007450 <__printf+0x608>
    800071b8:	00f6f693          	andi	a3,a3,15
    800071bc:	00dd86b3          	add	a3,s11,a3
    800071c0:	0006c503          	lbu	a0,0(a3)
    800071c4:	0087d813          	srli	a6,a5,0x8
    800071c8:	0087d69b          	srliw	a3,a5,0x8
    800071cc:	f8a401a3          	sb	a0,-125(s0)
    800071d0:	28b67663          	bgeu	a2,a1,8000745c <__printf+0x614>
    800071d4:	00f6f693          	andi	a3,a3,15
    800071d8:	00dd86b3          	add	a3,s11,a3
    800071dc:	0006c583          	lbu	a1,0(a3)
    800071e0:	00c7d513          	srli	a0,a5,0xc
    800071e4:	00c7d69b          	srliw	a3,a5,0xc
    800071e8:	f8b40223          	sb	a1,-124(s0)
    800071ec:	29067a63          	bgeu	a2,a6,80007480 <__printf+0x638>
    800071f0:	00f6f693          	andi	a3,a3,15
    800071f4:	00dd86b3          	add	a3,s11,a3
    800071f8:	0006c583          	lbu	a1,0(a3)
    800071fc:	0107d813          	srli	a6,a5,0x10
    80007200:	0107d69b          	srliw	a3,a5,0x10
    80007204:	f8b402a3          	sb	a1,-123(s0)
    80007208:	28a67263          	bgeu	a2,a0,8000748c <__printf+0x644>
    8000720c:	00f6f693          	andi	a3,a3,15
    80007210:	00dd86b3          	add	a3,s11,a3
    80007214:	0006c683          	lbu	a3,0(a3)
    80007218:	0147d79b          	srliw	a5,a5,0x14
    8000721c:	f8d40323          	sb	a3,-122(s0)
    80007220:	21067663          	bgeu	a2,a6,8000742c <__printf+0x5e4>
    80007224:	02079793          	slli	a5,a5,0x20
    80007228:	0207d793          	srli	a5,a5,0x20
    8000722c:	00fd8db3          	add	s11,s11,a5
    80007230:	000dc683          	lbu	a3,0(s11)
    80007234:	00800793          	li	a5,8
    80007238:	00700c93          	li	s9,7
    8000723c:	f8d403a3          	sb	a3,-121(s0)
    80007240:	00075c63          	bgez	a4,80007258 <__printf+0x410>
    80007244:	f9040713          	addi	a4,s0,-112
    80007248:	00f70733          	add	a4,a4,a5
    8000724c:	02d00693          	li	a3,45
    80007250:	fed70823          	sb	a3,-16(a4)
    80007254:	00078c93          	mv	s9,a5
    80007258:	f8040793          	addi	a5,s0,-128
    8000725c:	01978cb3          	add	s9,a5,s9
    80007260:	f7f40d13          	addi	s10,s0,-129
    80007264:	000cc503          	lbu	a0,0(s9)
    80007268:	fffc8c93          	addi	s9,s9,-1
    8000726c:	00000097          	auipc	ra,0x0
    80007270:	9f8080e7          	jalr	-1544(ra) # 80006c64 <consputc>
    80007274:	ff9d18e3          	bne	s10,s9,80007264 <__printf+0x41c>
    80007278:	0100006f          	j	80007288 <__printf+0x440>
    8000727c:	00000097          	auipc	ra,0x0
    80007280:	9e8080e7          	jalr	-1560(ra) # 80006c64 <consputc>
    80007284:	000c8493          	mv	s1,s9
    80007288:	00094503          	lbu	a0,0(s2)
    8000728c:	c60510e3          	bnez	a0,80006eec <__printf+0xa4>
    80007290:	e40c0ee3          	beqz	s8,800070ec <__printf+0x2a4>
    80007294:	00006517          	auipc	a0,0x6
    80007298:	b3c50513          	addi	a0,a0,-1220 # 8000cdd0 <pr>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	94c080e7          	jalr	-1716(ra) # 80007be8 <release>
    800072a4:	e49ff06f          	j	800070ec <__printf+0x2a4>
    800072a8:	f7843783          	ld	a5,-136(s0)
    800072ac:	03000513          	li	a0,48
    800072b0:	01000d13          	li	s10,16
    800072b4:	00878713          	addi	a4,a5,8
    800072b8:	0007bc83          	ld	s9,0(a5)
    800072bc:	f6e43c23          	sd	a4,-136(s0)
    800072c0:	00000097          	auipc	ra,0x0
    800072c4:	9a4080e7          	jalr	-1628(ra) # 80006c64 <consputc>
    800072c8:	07800513          	li	a0,120
    800072cc:	00000097          	auipc	ra,0x0
    800072d0:	998080e7          	jalr	-1640(ra) # 80006c64 <consputc>
    800072d4:	00002d97          	auipc	s11,0x2
    800072d8:	474d8d93          	addi	s11,s11,1140 # 80009748 <digits>
    800072dc:	03ccd793          	srli	a5,s9,0x3c
    800072e0:	00fd87b3          	add	a5,s11,a5
    800072e4:	0007c503          	lbu	a0,0(a5)
    800072e8:	fffd0d1b          	addiw	s10,s10,-1
    800072ec:	004c9c93          	slli	s9,s9,0x4
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	974080e7          	jalr	-1676(ra) # 80006c64 <consputc>
    800072f8:	fe0d12e3          	bnez	s10,800072dc <__printf+0x494>
    800072fc:	f8dff06f          	j	80007288 <__printf+0x440>
    80007300:	f7843783          	ld	a5,-136(s0)
    80007304:	0007bc83          	ld	s9,0(a5)
    80007308:	00878793          	addi	a5,a5,8
    8000730c:	f6f43c23          	sd	a5,-136(s0)
    80007310:	000c9a63          	bnez	s9,80007324 <__printf+0x4dc>
    80007314:	1080006f          	j	8000741c <__printf+0x5d4>
    80007318:	001c8c93          	addi	s9,s9,1
    8000731c:	00000097          	auipc	ra,0x0
    80007320:	948080e7          	jalr	-1720(ra) # 80006c64 <consputc>
    80007324:	000cc503          	lbu	a0,0(s9)
    80007328:	fe0518e3          	bnez	a0,80007318 <__printf+0x4d0>
    8000732c:	f5dff06f          	j	80007288 <__printf+0x440>
    80007330:	02500513          	li	a0,37
    80007334:	00000097          	auipc	ra,0x0
    80007338:	930080e7          	jalr	-1744(ra) # 80006c64 <consputc>
    8000733c:	000c8513          	mv	a0,s9
    80007340:	00000097          	auipc	ra,0x0
    80007344:	924080e7          	jalr	-1756(ra) # 80006c64 <consputc>
    80007348:	f41ff06f          	j	80007288 <__printf+0x440>
    8000734c:	02500513          	li	a0,37
    80007350:	00000097          	auipc	ra,0x0
    80007354:	914080e7          	jalr	-1772(ra) # 80006c64 <consputc>
    80007358:	f31ff06f          	j	80007288 <__printf+0x440>
    8000735c:	00030513          	mv	a0,t1
    80007360:	00000097          	auipc	ra,0x0
    80007364:	7bc080e7          	jalr	1980(ra) # 80007b1c <acquire>
    80007368:	b4dff06f          	j	80006eb4 <__printf+0x6c>
    8000736c:	40c0053b          	negw	a0,a2
    80007370:	00a00713          	li	a4,10
    80007374:	02e576bb          	remuw	a3,a0,a4
    80007378:	00002d97          	auipc	s11,0x2
    8000737c:	3d0d8d93          	addi	s11,s11,976 # 80009748 <digits>
    80007380:	ff700593          	li	a1,-9
    80007384:	02069693          	slli	a3,a3,0x20
    80007388:	0206d693          	srli	a3,a3,0x20
    8000738c:	00dd86b3          	add	a3,s11,a3
    80007390:	0006c683          	lbu	a3,0(a3)
    80007394:	02e557bb          	divuw	a5,a0,a4
    80007398:	f8d40023          	sb	a3,-128(s0)
    8000739c:	10b65e63          	bge	a2,a1,800074b8 <__printf+0x670>
    800073a0:	06300593          	li	a1,99
    800073a4:	02e7f6bb          	remuw	a3,a5,a4
    800073a8:	02069693          	slli	a3,a3,0x20
    800073ac:	0206d693          	srli	a3,a3,0x20
    800073b0:	00dd86b3          	add	a3,s11,a3
    800073b4:	0006c683          	lbu	a3,0(a3)
    800073b8:	02e7d73b          	divuw	a4,a5,a4
    800073bc:	00200793          	li	a5,2
    800073c0:	f8d400a3          	sb	a3,-127(s0)
    800073c4:	bca5ece3          	bltu	a1,a0,80006f9c <__printf+0x154>
    800073c8:	ce5ff06f          	j	800070ac <__printf+0x264>
    800073cc:	40e007bb          	negw	a5,a4
    800073d0:	00002d97          	auipc	s11,0x2
    800073d4:	378d8d93          	addi	s11,s11,888 # 80009748 <digits>
    800073d8:	00f7f693          	andi	a3,a5,15
    800073dc:	00dd86b3          	add	a3,s11,a3
    800073e0:	0006c583          	lbu	a1,0(a3)
    800073e4:	ff100613          	li	a2,-15
    800073e8:	0047d69b          	srliw	a3,a5,0x4
    800073ec:	f8b40023          	sb	a1,-128(s0)
    800073f0:	0047d59b          	srliw	a1,a5,0x4
    800073f4:	0ac75e63          	bge	a4,a2,800074b0 <__printf+0x668>
    800073f8:	00f6f693          	andi	a3,a3,15
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c603          	lbu	a2,0(a3)
    80007404:	00f00693          	li	a3,15
    80007408:	0087d79b          	srliw	a5,a5,0x8
    8000740c:	f8c400a3          	sb	a2,-127(s0)
    80007410:	d8b6e4e3          	bltu	a3,a1,80007198 <__printf+0x350>
    80007414:	00200793          	li	a5,2
    80007418:	e2dff06f          	j	80007244 <__printf+0x3fc>
    8000741c:	00002c97          	auipc	s9,0x2
    80007420:	30cc8c93          	addi	s9,s9,780 # 80009728 <_ZL6digits+0x160>
    80007424:	02800513          	li	a0,40
    80007428:	ef1ff06f          	j	80007318 <__printf+0x4d0>
    8000742c:	00700793          	li	a5,7
    80007430:	00600c93          	li	s9,6
    80007434:	e0dff06f          	j	80007240 <__printf+0x3f8>
    80007438:	00700793          	li	a5,7
    8000743c:	00600c93          	li	s9,6
    80007440:	c69ff06f          	j	800070a8 <__printf+0x260>
    80007444:	00300793          	li	a5,3
    80007448:	00200c93          	li	s9,2
    8000744c:	c5dff06f          	j	800070a8 <__printf+0x260>
    80007450:	00300793          	li	a5,3
    80007454:	00200c93          	li	s9,2
    80007458:	de9ff06f          	j	80007240 <__printf+0x3f8>
    8000745c:	00400793          	li	a5,4
    80007460:	00300c93          	li	s9,3
    80007464:	dddff06f          	j	80007240 <__printf+0x3f8>
    80007468:	00400793          	li	a5,4
    8000746c:	00300c93          	li	s9,3
    80007470:	c39ff06f          	j	800070a8 <__printf+0x260>
    80007474:	00500793          	li	a5,5
    80007478:	00400c93          	li	s9,4
    8000747c:	c2dff06f          	j	800070a8 <__printf+0x260>
    80007480:	00500793          	li	a5,5
    80007484:	00400c93          	li	s9,4
    80007488:	db9ff06f          	j	80007240 <__printf+0x3f8>
    8000748c:	00600793          	li	a5,6
    80007490:	00500c93          	li	s9,5
    80007494:	dadff06f          	j	80007240 <__printf+0x3f8>
    80007498:	00600793          	li	a5,6
    8000749c:	00500c93          	li	s9,5
    800074a0:	c09ff06f          	j	800070a8 <__printf+0x260>
    800074a4:	00800793          	li	a5,8
    800074a8:	00700c93          	li	s9,7
    800074ac:	bfdff06f          	j	800070a8 <__printf+0x260>
    800074b0:	00100793          	li	a5,1
    800074b4:	d91ff06f          	j	80007244 <__printf+0x3fc>
    800074b8:	00100793          	li	a5,1
    800074bc:	bf1ff06f          	j	800070ac <__printf+0x264>
    800074c0:	00900793          	li	a5,9
    800074c4:	00800c93          	li	s9,8
    800074c8:	be1ff06f          	j	800070a8 <__printf+0x260>
    800074cc:	00002517          	auipc	a0,0x2
    800074d0:	26450513          	addi	a0,a0,612 # 80009730 <_ZL6digits+0x168>
    800074d4:	00000097          	auipc	ra,0x0
    800074d8:	918080e7          	jalr	-1768(ra) # 80006dec <panic>

00000000800074dc <printfinit>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00913423          	sd	s1,8(sp)
    800074e8:	00113c23          	sd	ra,24(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00006497          	auipc	s1,0x6
    800074f4:	8e048493          	addi	s1,s1,-1824 # 8000cdd0 <pr>
    800074f8:	00048513          	mv	a0,s1
    800074fc:	00002597          	auipc	a1,0x2
    80007500:	24458593          	addi	a1,a1,580 # 80009740 <_ZL6digits+0x178>
    80007504:	00000097          	auipc	ra,0x0
    80007508:	5f4080e7          	jalr	1524(ra) # 80007af8 <initlock>
    8000750c:	01813083          	ld	ra,24(sp)
    80007510:	01013403          	ld	s0,16(sp)
    80007514:	0004ac23          	sw	zero,24(s1)
    80007518:	00813483          	ld	s1,8(sp)
    8000751c:	02010113          	addi	sp,sp,32
    80007520:	00008067          	ret

0000000080007524 <uartinit>:
    80007524:	ff010113          	addi	sp,sp,-16
    80007528:	00813423          	sd	s0,8(sp)
    8000752c:	01010413          	addi	s0,sp,16
    80007530:	100007b7          	lui	a5,0x10000
    80007534:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007538:	f8000713          	li	a4,-128
    8000753c:	00e781a3          	sb	a4,3(a5)
    80007540:	00300713          	li	a4,3
    80007544:	00e78023          	sb	a4,0(a5)
    80007548:	000780a3          	sb	zero,1(a5)
    8000754c:	00e781a3          	sb	a4,3(a5)
    80007550:	00700693          	li	a3,7
    80007554:	00d78123          	sb	a3,2(a5)
    80007558:	00e780a3          	sb	a4,1(a5)
    8000755c:	00813403          	ld	s0,8(sp)
    80007560:	01010113          	addi	sp,sp,16
    80007564:	00008067          	ret

0000000080007568 <uartputc>:
    80007568:	00004797          	auipc	a5,0x4
    8000756c:	5407a783          	lw	a5,1344(a5) # 8000baa8 <panicked>
    80007570:	00078463          	beqz	a5,80007578 <uartputc+0x10>
    80007574:	0000006f          	j	80007574 <uartputc+0xc>
    80007578:	fd010113          	addi	sp,sp,-48
    8000757c:	02813023          	sd	s0,32(sp)
    80007580:	00913c23          	sd	s1,24(sp)
    80007584:	01213823          	sd	s2,16(sp)
    80007588:	01313423          	sd	s3,8(sp)
    8000758c:	02113423          	sd	ra,40(sp)
    80007590:	03010413          	addi	s0,sp,48
    80007594:	00004917          	auipc	s2,0x4
    80007598:	51c90913          	addi	s2,s2,1308 # 8000bab0 <uart_tx_r>
    8000759c:	00093783          	ld	a5,0(s2)
    800075a0:	00004497          	auipc	s1,0x4
    800075a4:	51848493          	addi	s1,s1,1304 # 8000bab8 <uart_tx_w>
    800075a8:	0004b703          	ld	a4,0(s1)
    800075ac:	02078693          	addi	a3,a5,32
    800075b0:	00050993          	mv	s3,a0
    800075b4:	02e69c63          	bne	a3,a4,800075ec <uartputc+0x84>
    800075b8:	00001097          	auipc	ra,0x1
    800075bc:	834080e7          	jalr	-1996(ra) # 80007dec <push_on>
    800075c0:	00093783          	ld	a5,0(s2)
    800075c4:	0004b703          	ld	a4,0(s1)
    800075c8:	02078793          	addi	a5,a5,32
    800075cc:	00e79463          	bne	a5,a4,800075d4 <uartputc+0x6c>
    800075d0:	0000006f          	j	800075d0 <uartputc+0x68>
    800075d4:	00001097          	auipc	ra,0x1
    800075d8:	88c080e7          	jalr	-1908(ra) # 80007e60 <pop_on>
    800075dc:	00093783          	ld	a5,0(s2)
    800075e0:	0004b703          	ld	a4,0(s1)
    800075e4:	02078693          	addi	a3,a5,32
    800075e8:	fce688e3          	beq	a3,a4,800075b8 <uartputc+0x50>
    800075ec:	01f77693          	andi	a3,a4,31
    800075f0:	00006597          	auipc	a1,0x6
    800075f4:	80058593          	addi	a1,a1,-2048 # 8000cdf0 <uart_tx_buf>
    800075f8:	00d586b3          	add	a3,a1,a3
    800075fc:	00170713          	addi	a4,a4,1
    80007600:	01368023          	sb	s3,0(a3)
    80007604:	00e4b023          	sd	a4,0(s1)
    80007608:	10000637          	lui	a2,0x10000
    8000760c:	02f71063          	bne	a4,a5,8000762c <uartputc+0xc4>
    80007610:	0340006f          	j	80007644 <uartputc+0xdc>
    80007614:	00074703          	lbu	a4,0(a4)
    80007618:	00f93023          	sd	a5,0(s2)
    8000761c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007620:	00093783          	ld	a5,0(s2)
    80007624:	0004b703          	ld	a4,0(s1)
    80007628:	00f70e63          	beq	a4,a5,80007644 <uartputc+0xdc>
    8000762c:	00564683          	lbu	a3,5(a2)
    80007630:	01f7f713          	andi	a4,a5,31
    80007634:	00e58733          	add	a4,a1,a4
    80007638:	0206f693          	andi	a3,a3,32
    8000763c:	00178793          	addi	a5,a5,1
    80007640:	fc069ae3          	bnez	a3,80007614 <uartputc+0xac>
    80007644:	02813083          	ld	ra,40(sp)
    80007648:	02013403          	ld	s0,32(sp)
    8000764c:	01813483          	ld	s1,24(sp)
    80007650:	01013903          	ld	s2,16(sp)
    80007654:	00813983          	ld	s3,8(sp)
    80007658:	03010113          	addi	sp,sp,48
    8000765c:	00008067          	ret

0000000080007660 <uartputc_sync>:
    80007660:	ff010113          	addi	sp,sp,-16
    80007664:	00813423          	sd	s0,8(sp)
    80007668:	01010413          	addi	s0,sp,16
    8000766c:	00004717          	auipc	a4,0x4
    80007670:	43c72703          	lw	a4,1084(a4) # 8000baa8 <panicked>
    80007674:	02071663          	bnez	a4,800076a0 <uartputc_sync+0x40>
    80007678:	00050793          	mv	a5,a0
    8000767c:	100006b7          	lui	a3,0x10000
    80007680:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007684:	02077713          	andi	a4,a4,32
    80007688:	fe070ce3          	beqz	a4,80007680 <uartputc_sync+0x20>
    8000768c:	0ff7f793          	andi	a5,a5,255
    80007690:	00f68023          	sb	a5,0(a3)
    80007694:	00813403          	ld	s0,8(sp)
    80007698:	01010113          	addi	sp,sp,16
    8000769c:	00008067          	ret
    800076a0:	0000006f          	j	800076a0 <uartputc_sync+0x40>

00000000800076a4 <uartstart>:
    800076a4:	ff010113          	addi	sp,sp,-16
    800076a8:	00813423          	sd	s0,8(sp)
    800076ac:	01010413          	addi	s0,sp,16
    800076b0:	00004617          	auipc	a2,0x4
    800076b4:	40060613          	addi	a2,a2,1024 # 8000bab0 <uart_tx_r>
    800076b8:	00004517          	auipc	a0,0x4
    800076bc:	40050513          	addi	a0,a0,1024 # 8000bab8 <uart_tx_w>
    800076c0:	00063783          	ld	a5,0(a2)
    800076c4:	00053703          	ld	a4,0(a0)
    800076c8:	04f70263          	beq	a4,a5,8000770c <uartstart+0x68>
    800076cc:	100005b7          	lui	a1,0x10000
    800076d0:	00005817          	auipc	a6,0x5
    800076d4:	72080813          	addi	a6,a6,1824 # 8000cdf0 <uart_tx_buf>
    800076d8:	01c0006f          	j	800076f4 <uartstart+0x50>
    800076dc:	0006c703          	lbu	a4,0(a3)
    800076e0:	00f63023          	sd	a5,0(a2)
    800076e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076e8:	00063783          	ld	a5,0(a2)
    800076ec:	00053703          	ld	a4,0(a0)
    800076f0:	00f70e63          	beq	a4,a5,8000770c <uartstart+0x68>
    800076f4:	01f7f713          	andi	a4,a5,31
    800076f8:	00e806b3          	add	a3,a6,a4
    800076fc:	0055c703          	lbu	a4,5(a1)
    80007700:	00178793          	addi	a5,a5,1
    80007704:	02077713          	andi	a4,a4,32
    80007708:	fc071ae3          	bnez	a4,800076dc <uartstart+0x38>
    8000770c:	00813403          	ld	s0,8(sp)
    80007710:	01010113          	addi	sp,sp,16
    80007714:	00008067          	ret

0000000080007718 <uartgetc>:
    80007718:	ff010113          	addi	sp,sp,-16
    8000771c:	00813423          	sd	s0,8(sp)
    80007720:	01010413          	addi	s0,sp,16
    80007724:	10000737          	lui	a4,0x10000
    80007728:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000772c:	0017f793          	andi	a5,a5,1
    80007730:	00078c63          	beqz	a5,80007748 <uartgetc+0x30>
    80007734:	00074503          	lbu	a0,0(a4)
    80007738:	0ff57513          	andi	a0,a0,255
    8000773c:	00813403          	ld	s0,8(sp)
    80007740:	01010113          	addi	sp,sp,16
    80007744:	00008067          	ret
    80007748:	fff00513          	li	a0,-1
    8000774c:	ff1ff06f          	j	8000773c <uartgetc+0x24>

0000000080007750 <uartintr>:
    80007750:	100007b7          	lui	a5,0x10000
    80007754:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007758:	0017f793          	andi	a5,a5,1
    8000775c:	0a078463          	beqz	a5,80007804 <uartintr+0xb4>
    80007760:	fe010113          	addi	sp,sp,-32
    80007764:	00813823          	sd	s0,16(sp)
    80007768:	00913423          	sd	s1,8(sp)
    8000776c:	00113c23          	sd	ra,24(sp)
    80007770:	02010413          	addi	s0,sp,32
    80007774:	100004b7          	lui	s1,0x10000
    80007778:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000777c:	0ff57513          	andi	a0,a0,255
    80007780:	fffff097          	auipc	ra,0xfffff
    80007784:	534080e7          	jalr	1332(ra) # 80006cb4 <consoleintr>
    80007788:	0054c783          	lbu	a5,5(s1)
    8000778c:	0017f793          	andi	a5,a5,1
    80007790:	fe0794e3          	bnez	a5,80007778 <uartintr+0x28>
    80007794:	00004617          	auipc	a2,0x4
    80007798:	31c60613          	addi	a2,a2,796 # 8000bab0 <uart_tx_r>
    8000779c:	00004517          	auipc	a0,0x4
    800077a0:	31c50513          	addi	a0,a0,796 # 8000bab8 <uart_tx_w>
    800077a4:	00063783          	ld	a5,0(a2)
    800077a8:	00053703          	ld	a4,0(a0)
    800077ac:	04f70263          	beq	a4,a5,800077f0 <uartintr+0xa0>
    800077b0:	100005b7          	lui	a1,0x10000
    800077b4:	00005817          	auipc	a6,0x5
    800077b8:	63c80813          	addi	a6,a6,1596 # 8000cdf0 <uart_tx_buf>
    800077bc:	01c0006f          	j	800077d8 <uartintr+0x88>
    800077c0:	0006c703          	lbu	a4,0(a3)
    800077c4:	00f63023          	sd	a5,0(a2)
    800077c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077cc:	00063783          	ld	a5,0(a2)
    800077d0:	00053703          	ld	a4,0(a0)
    800077d4:	00f70e63          	beq	a4,a5,800077f0 <uartintr+0xa0>
    800077d8:	01f7f713          	andi	a4,a5,31
    800077dc:	00e806b3          	add	a3,a6,a4
    800077e0:	0055c703          	lbu	a4,5(a1)
    800077e4:	00178793          	addi	a5,a5,1
    800077e8:	02077713          	andi	a4,a4,32
    800077ec:	fc071ae3          	bnez	a4,800077c0 <uartintr+0x70>
    800077f0:	01813083          	ld	ra,24(sp)
    800077f4:	01013403          	ld	s0,16(sp)
    800077f8:	00813483          	ld	s1,8(sp)
    800077fc:	02010113          	addi	sp,sp,32
    80007800:	00008067          	ret
    80007804:	00004617          	auipc	a2,0x4
    80007808:	2ac60613          	addi	a2,a2,684 # 8000bab0 <uart_tx_r>
    8000780c:	00004517          	auipc	a0,0x4
    80007810:	2ac50513          	addi	a0,a0,684 # 8000bab8 <uart_tx_w>
    80007814:	00063783          	ld	a5,0(a2)
    80007818:	00053703          	ld	a4,0(a0)
    8000781c:	04f70263          	beq	a4,a5,80007860 <uartintr+0x110>
    80007820:	100005b7          	lui	a1,0x10000
    80007824:	00005817          	auipc	a6,0x5
    80007828:	5cc80813          	addi	a6,a6,1484 # 8000cdf0 <uart_tx_buf>
    8000782c:	01c0006f          	j	80007848 <uartintr+0xf8>
    80007830:	0006c703          	lbu	a4,0(a3)
    80007834:	00f63023          	sd	a5,0(a2)
    80007838:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000783c:	00063783          	ld	a5,0(a2)
    80007840:	00053703          	ld	a4,0(a0)
    80007844:	02f70063          	beq	a4,a5,80007864 <uartintr+0x114>
    80007848:	01f7f713          	andi	a4,a5,31
    8000784c:	00e806b3          	add	a3,a6,a4
    80007850:	0055c703          	lbu	a4,5(a1)
    80007854:	00178793          	addi	a5,a5,1
    80007858:	02077713          	andi	a4,a4,32
    8000785c:	fc071ae3          	bnez	a4,80007830 <uartintr+0xe0>
    80007860:	00008067          	ret
    80007864:	00008067          	ret

0000000080007868 <kinit>:
    80007868:	fc010113          	addi	sp,sp,-64
    8000786c:	02913423          	sd	s1,40(sp)
    80007870:	fffff7b7          	lui	a5,0xfffff
    80007874:	00006497          	auipc	s1,0x6
    80007878:	59b48493          	addi	s1,s1,1435 # 8000de0f <end+0xfff>
    8000787c:	02813823          	sd	s0,48(sp)
    80007880:	01313c23          	sd	s3,24(sp)
    80007884:	00f4f4b3          	and	s1,s1,a5
    80007888:	02113c23          	sd	ra,56(sp)
    8000788c:	03213023          	sd	s2,32(sp)
    80007890:	01413823          	sd	s4,16(sp)
    80007894:	01513423          	sd	s5,8(sp)
    80007898:	04010413          	addi	s0,sp,64
    8000789c:	000017b7          	lui	a5,0x1
    800078a0:	01100993          	li	s3,17
    800078a4:	00f487b3          	add	a5,s1,a5
    800078a8:	01b99993          	slli	s3,s3,0x1b
    800078ac:	06f9e063          	bltu	s3,a5,8000790c <kinit+0xa4>
    800078b0:	00005a97          	auipc	s5,0x5
    800078b4:	560a8a93          	addi	s5,s5,1376 # 8000ce10 <end>
    800078b8:	0754ec63          	bltu	s1,s5,80007930 <kinit+0xc8>
    800078bc:	0734fa63          	bgeu	s1,s3,80007930 <kinit+0xc8>
    800078c0:	00088a37          	lui	s4,0x88
    800078c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800078c8:	00004917          	auipc	s2,0x4
    800078cc:	1f890913          	addi	s2,s2,504 # 8000bac0 <kmem>
    800078d0:	00ca1a13          	slli	s4,s4,0xc
    800078d4:	0140006f          	j	800078e8 <kinit+0x80>
    800078d8:	000017b7          	lui	a5,0x1
    800078dc:	00f484b3          	add	s1,s1,a5
    800078e0:	0554e863          	bltu	s1,s5,80007930 <kinit+0xc8>
    800078e4:	0534f663          	bgeu	s1,s3,80007930 <kinit+0xc8>
    800078e8:	00001637          	lui	a2,0x1
    800078ec:	00100593          	li	a1,1
    800078f0:	00048513          	mv	a0,s1
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	5e4080e7          	jalr	1508(ra) # 80007ed8 <__memset>
    800078fc:	00093783          	ld	a5,0(s2)
    80007900:	00f4b023          	sd	a5,0(s1)
    80007904:	00993023          	sd	s1,0(s2)
    80007908:	fd4498e3          	bne	s1,s4,800078d8 <kinit+0x70>
    8000790c:	03813083          	ld	ra,56(sp)
    80007910:	03013403          	ld	s0,48(sp)
    80007914:	02813483          	ld	s1,40(sp)
    80007918:	02013903          	ld	s2,32(sp)
    8000791c:	01813983          	ld	s3,24(sp)
    80007920:	01013a03          	ld	s4,16(sp)
    80007924:	00813a83          	ld	s5,8(sp)
    80007928:	04010113          	addi	sp,sp,64
    8000792c:	00008067          	ret
    80007930:	00002517          	auipc	a0,0x2
    80007934:	e3050513          	addi	a0,a0,-464 # 80009760 <digits+0x18>
    80007938:	fffff097          	auipc	ra,0xfffff
    8000793c:	4b4080e7          	jalr	1204(ra) # 80006dec <panic>

0000000080007940 <freerange>:
    80007940:	fc010113          	addi	sp,sp,-64
    80007944:	000017b7          	lui	a5,0x1
    80007948:	02913423          	sd	s1,40(sp)
    8000794c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007950:	009504b3          	add	s1,a0,s1
    80007954:	fffff537          	lui	a0,0xfffff
    80007958:	02813823          	sd	s0,48(sp)
    8000795c:	02113c23          	sd	ra,56(sp)
    80007960:	03213023          	sd	s2,32(sp)
    80007964:	01313c23          	sd	s3,24(sp)
    80007968:	01413823          	sd	s4,16(sp)
    8000796c:	01513423          	sd	s5,8(sp)
    80007970:	01613023          	sd	s6,0(sp)
    80007974:	04010413          	addi	s0,sp,64
    80007978:	00a4f4b3          	and	s1,s1,a0
    8000797c:	00f487b3          	add	a5,s1,a5
    80007980:	06f5e463          	bltu	a1,a5,800079e8 <freerange+0xa8>
    80007984:	00005a97          	auipc	s5,0x5
    80007988:	48ca8a93          	addi	s5,s5,1164 # 8000ce10 <end>
    8000798c:	0954e263          	bltu	s1,s5,80007a10 <freerange+0xd0>
    80007990:	01100993          	li	s3,17
    80007994:	01b99993          	slli	s3,s3,0x1b
    80007998:	0734fc63          	bgeu	s1,s3,80007a10 <freerange+0xd0>
    8000799c:	00058a13          	mv	s4,a1
    800079a0:	00004917          	auipc	s2,0x4
    800079a4:	12090913          	addi	s2,s2,288 # 8000bac0 <kmem>
    800079a8:	00002b37          	lui	s6,0x2
    800079ac:	0140006f          	j	800079c0 <freerange+0x80>
    800079b0:	000017b7          	lui	a5,0x1
    800079b4:	00f484b3          	add	s1,s1,a5
    800079b8:	0554ec63          	bltu	s1,s5,80007a10 <freerange+0xd0>
    800079bc:	0534fa63          	bgeu	s1,s3,80007a10 <freerange+0xd0>
    800079c0:	00001637          	lui	a2,0x1
    800079c4:	00100593          	li	a1,1
    800079c8:	00048513          	mv	a0,s1
    800079cc:	00000097          	auipc	ra,0x0
    800079d0:	50c080e7          	jalr	1292(ra) # 80007ed8 <__memset>
    800079d4:	00093703          	ld	a4,0(s2)
    800079d8:	016487b3          	add	a5,s1,s6
    800079dc:	00e4b023          	sd	a4,0(s1)
    800079e0:	00993023          	sd	s1,0(s2)
    800079e4:	fcfa76e3          	bgeu	s4,a5,800079b0 <freerange+0x70>
    800079e8:	03813083          	ld	ra,56(sp)
    800079ec:	03013403          	ld	s0,48(sp)
    800079f0:	02813483          	ld	s1,40(sp)
    800079f4:	02013903          	ld	s2,32(sp)
    800079f8:	01813983          	ld	s3,24(sp)
    800079fc:	01013a03          	ld	s4,16(sp)
    80007a00:	00813a83          	ld	s5,8(sp)
    80007a04:	00013b03          	ld	s6,0(sp)
    80007a08:	04010113          	addi	sp,sp,64
    80007a0c:	00008067          	ret
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	d5050513          	addi	a0,a0,-688 # 80009760 <digits+0x18>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	3d4080e7          	jalr	980(ra) # 80006dec <panic>

0000000080007a20 <kfree>:
    80007a20:	fe010113          	addi	sp,sp,-32
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00113c23          	sd	ra,24(sp)
    80007a2c:	00913423          	sd	s1,8(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	03451793          	slli	a5,a0,0x34
    80007a38:	04079c63          	bnez	a5,80007a90 <kfree+0x70>
    80007a3c:	00005797          	auipc	a5,0x5
    80007a40:	3d478793          	addi	a5,a5,980 # 8000ce10 <end>
    80007a44:	00050493          	mv	s1,a0
    80007a48:	04f56463          	bltu	a0,a5,80007a90 <kfree+0x70>
    80007a4c:	01100793          	li	a5,17
    80007a50:	01b79793          	slli	a5,a5,0x1b
    80007a54:	02f57e63          	bgeu	a0,a5,80007a90 <kfree+0x70>
    80007a58:	00001637          	lui	a2,0x1
    80007a5c:	00100593          	li	a1,1
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	478080e7          	jalr	1144(ra) # 80007ed8 <__memset>
    80007a68:	00004797          	auipc	a5,0x4
    80007a6c:	05878793          	addi	a5,a5,88 # 8000bac0 <kmem>
    80007a70:	0007b703          	ld	a4,0(a5)
    80007a74:	01813083          	ld	ra,24(sp)
    80007a78:	01013403          	ld	s0,16(sp)
    80007a7c:	00e4b023          	sd	a4,0(s1)
    80007a80:	0097b023          	sd	s1,0(a5)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	02010113          	addi	sp,sp,32
    80007a8c:	00008067          	ret
    80007a90:	00002517          	auipc	a0,0x2
    80007a94:	cd050513          	addi	a0,a0,-816 # 80009760 <digits+0x18>
    80007a98:	fffff097          	auipc	ra,0xfffff
    80007a9c:	354080e7          	jalr	852(ra) # 80006dec <panic>

0000000080007aa0 <kalloc>:
    80007aa0:	fe010113          	addi	sp,sp,-32
    80007aa4:	00813823          	sd	s0,16(sp)
    80007aa8:	00913423          	sd	s1,8(sp)
    80007aac:	00113c23          	sd	ra,24(sp)
    80007ab0:	02010413          	addi	s0,sp,32
    80007ab4:	00004797          	auipc	a5,0x4
    80007ab8:	00c78793          	addi	a5,a5,12 # 8000bac0 <kmem>
    80007abc:	0007b483          	ld	s1,0(a5)
    80007ac0:	02048063          	beqz	s1,80007ae0 <kalloc+0x40>
    80007ac4:	0004b703          	ld	a4,0(s1)
    80007ac8:	00001637          	lui	a2,0x1
    80007acc:	00500593          	li	a1,5
    80007ad0:	00048513          	mv	a0,s1
    80007ad4:	00e7b023          	sd	a4,0(a5)
    80007ad8:	00000097          	auipc	ra,0x0
    80007adc:	400080e7          	jalr	1024(ra) # 80007ed8 <__memset>
    80007ae0:	01813083          	ld	ra,24(sp)
    80007ae4:	01013403          	ld	s0,16(sp)
    80007ae8:	00048513          	mv	a0,s1
    80007aec:	00813483          	ld	s1,8(sp)
    80007af0:	02010113          	addi	sp,sp,32
    80007af4:	00008067          	ret

0000000080007af8 <initlock>:
    80007af8:	ff010113          	addi	sp,sp,-16
    80007afc:	00813423          	sd	s0,8(sp)
    80007b00:	01010413          	addi	s0,sp,16
    80007b04:	00813403          	ld	s0,8(sp)
    80007b08:	00b53423          	sd	a1,8(a0)
    80007b0c:	00052023          	sw	zero,0(a0)
    80007b10:	00053823          	sd	zero,16(a0)
    80007b14:	01010113          	addi	sp,sp,16
    80007b18:	00008067          	ret

0000000080007b1c <acquire>:
    80007b1c:	fe010113          	addi	sp,sp,-32
    80007b20:	00813823          	sd	s0,16(sp)
    80007b24:	00913423          	sd	s1,8(sp)
    80007b28:	00113c23          	sd	ra,24(sp)
    80007b2c:	01213023          	sd	s2,0(sp)
    80007b30:	02010413          	addi	s0,sp,32
    80007b34:	00050493          	mv	s1,a0
    80007b38:	10002973          	csrr	s2,sstatus
    80007b3c:	100027f3          	csrr	a5,sstatus
    80007b40:	ffd7f793          	andi	a5,a5,-3
    80007b44:	10079073          	csrw	sstatus,a5
    80007b48:	fffff097          	auipc	ra,0xfffff
    80007b4c:	8e4080e7          	jalr	-1820(ra) # 8000642c <mycpu>
    80007b50:	07852783          	lw	a5,120(a0)
    80007b54:	06078e63          	beqz	a5,80007bd0 <acquire+0xb4>
    80007b58:	fffff097          	auipc	ra,0xfffff
    80007b5c:	8d4080e7          	jalr	-1836(ra) # 8000642c <mycpu>
    80007b60:	07852783          	lw	a5,120(a0)
    80007b64:	0004a703          	lw	a4,0(s1)
    80007b68:	0017879b          	addiw	a5,a5,1
    80007b6c:	06f52c23          	sw	a5,120(a0)
    80007b70:	04071063          	bnez	a4,80007bb0 <acquire+0x94>
    80007b74:	00100713          	li	a4,1
    80007b78:	00070793          	mv	a5,a4
    80007b7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007b80:	0007879b          	sext.w	a5,a5
    80007b84:	fe079ae3          	bnez	a5,80007b78 <acquire+0x5c>
    80007b88:	0ff0000f          	fence
    80007b8c:	fffff097          	auipc	ra,0xfffff
    80007b90:	8a0080e7          	jalr	-1888(ra) # 8000642c <mycpu>
    80007b94:	01813083          	ld	ra,24(sp)
    80007b98:	01013403          	ld	s0,16(sp)
    80007b9c:	00a4b823          	sd	a0,16(s1)
    80007ba0:	00013903          	ld	s2,0(sp)
    80007ba4:	00813483          	ld	s1,8(sp)
    80007ba8:	02010113          	addi	sp,sp,32
    80007bac:	00008067          	ret
    80007bb0:	0104b903          	ld	s2,16(s1)
    80007bb4:	fffff097          	auipc	ra,0xfffff
    80007bb8:	878080e7          	jalr	-1928(ra) # 8000642c <mycpu>
    80007bbc:	faa91ce3          	bne	s2,a0,80007b74 <acquire+0x58>
    80007bc0:	00002517          	auipc	a0,0x2
    80007bc4:	ba850513          	addi	a0,a0,-1112 # 80009768 <digits+0x20>
    80007bc8:	fffff097          	auipc	ra,0xfffff
    80007bcc:	224080e7          	jalr	548(ra) # 80006dec <panic>
    80007bd0:	00195913          	srli	s2,s2,0x1
    80007bd4:	fffff097          	auipc	ra,0xfffff
    80007bd8:	858080e7          	jalr	-1960(ra) # 8000642c <mycpu>
    80007bdc:	00197913          	andi	s2,s2,1
    80007be0:	07252e23          	sw	s2,124(a0)
    80007be4:	f75ff06f          	j	80007b58 <acquire+0x3c>

0000000080007be8 <release>:
    80007be8:	fe010113          	addi	sp,sp,-32
    80007bec:	00813823          	sd	s0,16(sp)
    80007bf0:	00113c23          	sd	ra,24(sp)
    80007bf4:	00913423          	sd	s1,8(sp)
    80007bf8:	01213023          	sd	s2,0(sp)
    80007bfc:	02010413          	addi	s0,sp,32
    80007c00:	00052783          	lw	a5,0(a0)
    80007c04:	00079a63          	bnez	a5,80007c18 <release+0x30>
    80007c08:	00002517          	auipc	a0,0x2
    80007c0c:	b6850513          	addi	a0,a0,-1176 # 80009770 <digits+0x28>
    80007c10:	fffff097          	auipc	ra,0xfffff
    80007c14:	1dc080e7          	jalr	476(ra) # 80006dec <panic>
    80007c18:	01053903          	ld	s2,16(a0)
    80007c1c:	00050493          	mv	s1,a0
    80007c20:	fffff097          	auipc	ra,0xfffff
    80007c24:	80c080e7          	jalr	-2036(ra) # 8000642c <mycpu>
    80007c28:	fea910e3          	bne	s2,a0,80007c08 <release+0x20>
    80007c2c:	0004b823          	sd	zero,16(s1)
    80007c30:	0ff0000f          	fence
    80007c34:	0f50000f          	fence	iorw,ow
    80007c38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007c3c:	ffffe097          	auipc	ra,0xffffe
    80007c40:	7f0080e7          	jalr	2032(ra) # 8000642c <mycpu>
    80007c44:	100027f3          	csrr	a5,sstatus
    80007c48:	0027f793          	andi	a5,a5,2
    80007c4c:	04079a63          	bnez	a5,80007ca0 <release+0xb8>
    80007c50:	07852783          	lw	a5,120(a0)
    80007c54:	02f05e63          	blez	a5,80007c90 <release+0xa8>
    80007c58:	fff7871b          	addiw	a4,a5,-1
    80007c5c:	06e52c23          	sw	a4,120(a0)
    80007c60:	00071c63          	bnez	a4,80007c78 <release+0x90>
    80007c64:	07c52783          	lw	a5,124(a0)
    80007c68:	00078863          	beqz	a5,80007c78 <release+0x90>
    80007c6c:	100027f3          	csrr	a5,sstatus
    80007c70:	0027e793          	ori	a5,a5,2
    80007c74:	10079073          	csrw	sstatus,a5
    80007c78:	01813083          	ld	ra,24(sp)
    80007c7c:	01013403          	ld	s0,16(sp)
    80007c80:	00813483          	ld	s1,8(sp)
    80007c84:	00013903          	ld	s2,0(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret
    80007c90:	00002517          	auipc	a0,0x2
    80007c94:	b0050513          	addi	a0,a0,-1280 # 80009790 <digits+0x48>
    80007c98:	fffff097          	auipc	ra,0xfffff
    80007c9c:	154080e7          	jalr	340(ra) # 80006dec <panic>
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	ad850513          	addi	a0,a0,-1320 # 80009778 <digits+0x30>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	144080e7          	jalr	324(ra) # 80006dec <panic>

0000000080007cb0 <holding>:
    80007cb0:	00052783          	lw	a5,0(a0)
    80007cb4:	00079663          	bnez	a5,80007cc0 <holding+0x10>
    80007cb8:	00000513          	li	a0,0
    80007cbc:	00008067          	ret
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00813823          	sd	s0,16(sp)
    80007cc8:	00913423          	sd	s1,8(sp)
    80007ccc:	00113c23          	sd	ra,24(sp)
    80007cd0:	02010413          	addi	s0,sp,32
    80007cd4:	01053483          	ld	s1,16(a0)
    80007cd8:	ffffe097          	auipc	ra,0xffffe
    80007cdc:	754080e7          	jalr	1876(ra) # 8000642c <mycpu>
    80007ce0:	01813083          	ld	ra,24(sp)
    80007ce4:	01013403          	ld	s0,16(sp)
    80007ce8:	40a48533          	sub	a0,s1,a0
    80007cec:	00153513          	seqz	a0,a0
    80007cf0:	00813483          	ld	s1,8(sp)
    80007cf4:	02010113          	addi	sp,sp,32
    80007cf8:	00008067          	ret

0000000080007cfc <push_off>:
    80007cfc:	fe010113          	addi	sp,sp,-32
    80007d00:	00813823          	sd	s0,16(sp)
    80007d04:	00113c23          	sd	ra,24(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	02010413          	addi	s0,sp,32
    80007d10:	100024f3          	csrr	s1,sstatus
    80007d14:	100027f3          	csrr	a5,sstatus
    80007d18:	ffd7f793          	andi	a5,a5,-3
    80007d1c:	10079073          	csrw	sstatus,a5
    80007d20:	ffffe097          	auipc	ra,0xffffe
    80007d24:	70c080e7          	jalr	1804(ra) # 8000642c <mycpu>
    80007d28:	07852783          	lw	a5,120(a0)
    80007d2c:	02078663          	beqz	a5,80007d58 <push_off+0x5c>
    80007d30:	ffffe097          	auipc	ra,0xffffe
    80007d34:	6fc080e7          	jalr	1788(ra) # 8000642c <mycpu>
    80007d38:	07852783          	lw	a5,120(a0)
    80007d3c:	01813083          	ld	ra,24(sp)
    80007d40:	01013403          	ld	s0,16(sp)
    80007d44:	0017879b          	addiw	a5,a5,1
    80007d48:	06f52c23          	sw	a5,120(a0)
    80007d4c:	00813483          	ld	s1,8(sp)
    80007d50:	02010113          	addi	sp,sp,32
    80007d54:	00008067          	ret
    80007d58:	0014d493          	srli	s1,s1,0x1
    80007d5c:	ffffe097          	auipc	ra,0xffffe
    80007d60:	6d0080e7          	jalr	1744(ra) # 8000642c <mycpu>
    80007d64:	0014f493          	andi	s1,s1,1
    80007d68:	06952e23          	sw	s1,124(a0)
    80007d6c:	fc5ff06f          	j	80007d30 <push_off+0x34>

0000000080007d70 <pop_off>:
    80007d70:	ff010113          	addi	sp,sp,-16
    80007d74:	00813023          	sd	s0,0(sp)
    80007d78:	00113423          	sd	ra,8(sp)
    80007d7c:	01010413          	addi	s0,sp,16
    80007d80:	ffffe097          	auipc	ra,0xffffe
    80007d84:	6ac080e7          	jalr	1708(ra) # 8000642c <mycpu>
    80007d88:	100027f3          	csrr	a5,sstatus
    80007d8c:	0027f793          	andi	a5,a5,2
    80007d90:	04079663          	bnez	a5,80007ddc <pop_off+0x6c>
    80007d94:	07852783          	lw	a5,120(a0)
    80007d98:	02f05a63          	blez	a5,80007dcc <pop_off+0x5c>
    80007d9c:	fff7871b          	addiw	a4,a5,-1
    80007da0:	06e52c23          	sw	a4,120(a0)
    80007da4:	00071c63          	bnez	a4,80007dbc <pop_off+0x4c>
    80007da8:	07c52783          	lw	a5,124(a0)
    80007dac:	00078863          	beqz	a5,80007dbc <pop_off+0x4c>
    80007db0:	100027f3          	csrr	a5,sstatus
    80007db4:	0027e793          	ori	a5,a5,2
    80007db8:	10079073          	csrw	sstatus,a5
    80007dbc:	00813083          	ld	ra,8(sp)
    80007dc0:	00013403          	ld	s0,0(sp)
    80007dc4:	01010113          	addi	sp,sp,16
    80007dc8:	00008067          	ret
    80007dcc:	00002517          	auipc	a0,0x2
    80007dd0:	9c450513          	addi	a0,a0,-1596 # 80009790 <digits+0x48>
    80007dd4:	fffff097          	auipc	ra,0xfffff
    80007dd8:	018080e7          	jalr	24(ra) # 80006dec <panic>
    80007ddc:	00002517          	auipc	a0,0x2
    80007de0:	99c50513          	addi	a0,a0,-1636 # 80009778 <digits+0x30>
    80007de4:	fffff097          	auipc	ra,0xfffff
    80007de8:	008080e7          	jalr	8(ra) # 80006dec <panic>

0000000080007dec <push_on>:
    80007dec:	fe010113          	addi	sp,sp,-32
    80007df0:	00813823          	sd	s0,16(sp)
    80007df4:	00113c23          	sd	ra,24(sp)
    80007df8:	00913423          	sd	s1,8(sp)
    80007dfc:	02010413          	addi	s0,sp,32
    80007e00:	100024f3          	csrr	s1,sstatus
    80007e04:	100027f3          	csrr	a5,sstatus
    80007e08:	0027e793          	ori	a5,a5,2
    80007e0c:	10079073          	csrw	sstatus,a5
    80007e10:	ffffe097          	auipc	ra,0xffffe
    80007e14:	61c080e7          	jalr	1564(ra) # 8000642c <mycpu>
    80007e18:	07852783          	lw	a5,120(a0)
    80007e1c:	02078663          	beqz	a5,80007e48 <push_on+0x5c>
    80007e20:	ffffe097          	auipc	ra,0xffffe
    80007e24:	60c080e7          	jalr	1548(ra) # 8000642c <mycpu>
    80007e28:	07852783          	lw	a5,120(a0)
    80007e2c:	01813083          	ld	ra,24(sp)
    80007e30:	01013403          	ld	s0,16(sp)
    80007e34:	0017879b          	addiw	a5,a5,1
    80007e38:	06f52c23          	sw	a5,120(a0)
    80007e3c:	00813483          	ld	s1,8(sp)
    80007e40:	02010113          	addi	sp,sp,32
    80007e44:	00008067          	ret
    80007e48:	0014d493          	srli	s1,s1,0x1
    80007e4c:	ffffe097          	auipc	ra,0xffffe
    80007e50:	5e0080e7          	jalr	1504(ra) # 8000642c <mycpu>
    80007e54:	0014f493          	andi	s1,s1,1
    80007e58:	06952e23          	sw	s1,124(a0)
    80007e5c:	fc5ff06f          	j	80007e20 <push_on+0x34>

0000000080007e60 <pop_on>:
    80007e60:	ff010113          	addi	sp,sp,-16
    80007e64:	00813023          	sd	s0,0(sp)
    80007e68:	00113423          	sd	ra,8(sp)
    80007e6c:	01010413          	addi	s0,sp,16
    80007e70:	ffffe097          	auipc	ra,0xffffe
    80007e74:	5bc080e7          	jalr	1468(ra) # 8000642c <mycpu>
    80007e78:	100027f3          	csrr	a5,sstatus
    80007e7c:	0027f793          	andi	a5,a5,2
    80007e80:	04078463          	beqz	a5,80007ec8 <pop_on+0x68>
    80007e84:	07852783          	lw	a5,120(a0)
    80007e88:	02f05863          	blez	a5,80007eb8 <pop_on+0x58>
    80007e8c:	fff7879b          	addiw	a5,a5,-1
    80007e90:	06f52c23          	sw	a5,120(a0)
    80007e94:	07853783          	ld	a5,120(a0)
    80007e98:	00079863          	bnez	a5,80007ea8 <pop_on+0x48>
    80007e9c:	100027f3          	csrr	a5,sstatus
    80007ea0:	ffd7f793          	andi	a5,a5,-3
    80007ea4:	10079073          	csrw	sstatus,a5
    80007ea8:	00813083          	ld	ra,8(sp)
    80007eac:	00013403          	ld	s0,0(sp)
    80007eb0:	01010113          	addi	sp,sp,16
    80007eb4:	00008067          	ret
    80007eb8:	00002517          	auipc	a0,0x2
    80007ebc:	90050513          	addi	a0,a0,-1792 # 800097b8 <digits+0x70>
    80007ec0:	fffff097          	auipc	ra,0xfffff
    80007ec4:	f2c080e7          	jalr	-212(ra) # 80006dec <panic>
    80007ec8:	00002517          	auipc	a0,0x2
    80007ecc:	8d050513          	addi	a0,a0,-1840 # 80009798 <digits+0x50>
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	f1c080e7          	jalr	-228(ra) # 80006dec <panic>

0000000080007ed8 <__memset>:
    80007ed8:	ff010113          	addi	sp,sp,-16
    80007edc:	00813423          	sd	s0,8(sp)
    80007ee0:	01010413          	addi	s0,sp,16
    80007ee4:	1a060e63          	beqz	a2,800080a0 <__memset+0x1c8>
    80007ee8:	40a007b3          	neg	a5,a0
    80007eec:	0077f793          	andi	a5,a5,7
    80007ef0:	00778693          	addi	a3,a5,7
    80007ef4:	00b00813          	li	a6,11
    80007ef8:	0ff5f593          	andi	a1,a1,255
    80007efc:	fff6071b          	addiw	a4,a2,-1
    80007f00:	1b06e663          	bltu	a3,a6,800080ac <__memset+0x1d4>
    80007f04:	1cd76463          	bltu	a4,a3,800080cc <__memset+0x1f4>
    80007f08:	1a078e63          	beqz	a5,800080c4 <__memset+0x1ec>
    80007f0c:	00b50023          	sb	a1,0(a0)
    80007f10:	00100713          	li	a4,1
    80007f14:	1ae78463          	beq	a5,a4,800080bc <__memset+0x1e4>
    80007f18:	00b500a3          	sb	a1,1(a0)
    80007f1c:	00200713          	li	a4,2
    80007f20:	1ae78a63          	beq	a5,a4,800080d4 <__memset+0x1fc>
    80007f24:	00b50123          	sb	a1,2(a0)
    80007f28:	00300713          	li	a4,3
    80007f2c:	18e78463          	beq	a5,a4,800080b4 <__memset+0x1dc>
    80007f30:	00b501a3          	sb	a1,3(a0)
    80007f34:	00400713          	li	a4,4
    80007f38:	1ae78263          	beq	a5,a4,800080dc <__memset+0x204>
    80007f3c:	00b50223          	sb	a1,4(a0)
    80007f40:	00500713          	li	a4,5
    80007f44:	1ae78063          	beq	a5,a4,800080e4 <__memset+0x20c>
    80007f48:	00b502a3          	sb	a1,5(a0)
    80007f4c:	00700713          	li	a4,7
    80007f50:	18e79e63          	bne	a5,a4,800080ec <__memset+0x214>
    80007f54:	00b50323          	sb	a1,6(a0)
    80007f58:	00700e93          	li	t4,7
    80007f5c:	00859713          	slli	a4,a1,0x8
    80007f60:	00e5e733          	or	a4,a1,a4
    80007f64:	01059e13          	slli	t3,a1,0x10
    80007f68:	01c76e33          	or	t3,a4,t3
    80007f6c:	01859313          	slli	t1,a1,0x18
    80007f70:	006e6333          	or	t1,t3,t1
    80007f74:	02059893          	slli	a7,a1,0x20
    80007f78:	40f60e3b          	subw	t3,a2,a5
    80007f7c:	011368b3          	or	a7,t1,a7
    80007f80:	02859813          	slli	a6,a1,0x28
    80007f84:	0108e833          	or	a6,a7,a6
    80007f88:	03059693          	slli	a3,a1,0x30
    80007f8c:	003e589b          	srliw	a7,t3,0x3
    80007f90:	00d866b3          	or	a3,a6,a3
    80007f94:	03859713          	slli	a4,a1,0x38
    80007f98:	00389813          	slli	a6,a7,0x3
    80007f9c:	00f507b3          	add	a5,a0,a5
    80007fa0:	00e6e733          	or	a4,a3,a4
    80007fa4:	000e089b          	sext.w	a7,t3
    80007fa8:	00f806b3          	add	a3,a6,a5
    80007fac:	00e7b023          	sd	a4,0(a5)
    80007fb0:	00878793          	addi	a5,a5,8
    80007fb4:	fed79ce3          	bne	a5,a3,80007fac <__memset+0xd4>
    80007fb8:	ff8e7793          	andi	a5,t3,-8
    80007fbc:	0007871b          	sext.w	a4,a5
    80007fc0:	01d787bb          	addw	a5,a5,t4
    80007fc4:	0ce88e63          	beq	a7,a4,800080a0 <__memset+0x1c8>
    80007fc8:	00f50733          	add	a4,a0,a5
    80007fcc:	00b70023          	sb	a1,0(a4)
    80007fd0:	0017871b          	addiw	a4,a5,1
    80007fd4:	0cc77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80007fd8:	00e50733          	add	a4,a0,a4
    80007fdc:	00b70023          	sb	a1,0(a4)
    80007fe0:	0027871b          	addiw	a4,a5,2
    80007fe4:	0ac77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80007fe8:	00e50733          	add	a4,a0,a4
    80007fec:	00b70023          	sb	a1,0(a4)
    80007ff0:	0037871b          	addiw	a4,a5,3
    80007ff4:	0ac77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80007ff8:	00e50733          	add	a4,a0,a4
    80007ffc:	00b70023          	sb	a1,0(a4)
    80008000:	0047871b          	addiw	a4,a5,4
    80008004:	08c77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008008:	00e50733          	add	a4,a0,a4
    8000800c:	00b70023          	sb	a1,0(a4)
    80008010:	0057871b          	addiw	a4,a5,5
    80008014:	08c77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	0067871b          	addiw	a4,a5,6
    80008024:	06c77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008028:	00e50733          	add	a4,a0,a4
    8000802c:	00b70023          	sb	a1,0(a4)
    80008030:	0077871b          	addiw	a4,a5,7
    80008034:	06c77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008038:	00e50733          	add	a4,a0,a4
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	0087871b          	addiw	a4,a5,8
    80008044:	04c77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	0097871b          	addiw	a4,a5,9
    80008054:	04c77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008058:	00e50733          	add	a4,a0,a4
    8000805c:	00b70023          	sb	a1,0(a4)
    80008060:	00a7871b          	addiw	a4,a5,10
    80008064:	02c77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00b70023          	sb	a1,0(a4)
    80008070:	00b7871b          	addiw	a4,a5,11
    80008074:	02c77663          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	00c7871b          	addiw	a4,a5,12
    80008084:	00c77e63          	bgeu	a4,a2,800080a0 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	00d7879b          	addiw	a5,a5,13
    80008094:	00c7f663          	bgeu	a5,a2,800080a0 <__memset+0x1c8>
    80008098:	00f507b3          	add	a5,a0,a5
    8000809c:	00b78023          	sb	a1,0(a5)
    800080a0:	00813403          	ld	s0,8(sp)
    800080a4:	01010113          	addi	sp,sp,16
    800080a8:	00008067          	ret
    800080ac:	00b00693          	li	a3,11
    800080b0:	e55ff06f          	j	80007f04 <__memset+0x2c>
    800080b4:	00300e93          	li	t4,3
    800080b8:	ea5ff06f          	j	80007f5c <__memset+0x84>
    800080bc:	00100e93          	li	t4,1
    800080c0:	e9dff06f          	j	80007f5c <__memset+0x84>
    800080c4:	00000e93          	li	t4,0
    800080c8:	e95ff06f          	j	80007f5c <__memset+0x84>
    800080cc:	00000793          	li	a5,0
    800080d0:	ef9ff06f          	j	80007fc8 <__memset+0xf0>
    800080d4:	00200e93          	li	t4,2
    800080d8:	e85ff06f          	j	80007f5c <__memset+0x84>
    800080dc:	00400e93          	li	t4,4
    800080e0:	e7dff06f          	j	80007f5c <__memset+0x84>
    800080e4:	00500e93          	li	t4,5
    800080e8:	e75ff06f          	j	80007f5c <__memset+0x84>
    800080ec:	00600e93          	li	t4,6
    800080f0:	e6dff06f          	j	80007f5c <__memset+0x84>

00000000800080f4 <__memmove>:
    800080f4:	ff010113          	addi	sp,sp,-16
    800080f8:	00813423          	sd	s0,8(sp)
    800080fc:	01010413          	addi	s0,sp,16
    80008100:	0e060863          	beqz	a2,800081f0 <__memmove+0xfc>
    80008104:	fff6069b          	addiw	a3,a2,-1
    80008108:	0006881b          	sext.w	a6,a3
    8000810c:	0ea5e863          	bltu	a1,a0,800081fc <__memmove+0x108>
    80008110:	00758713          	addi	a4,a1,7
    80008114:	00a5e7b3          	or	a5,a1,a0
    80008118:	40a70733          	sub	a4,a4,a0
    8000811c:	0077f793          	andi	a5,a5,7
    80008120:	00f73713          	sltiu	a4,a4,15
    80008124:	00174713          	xori	a4,a4,1
    80008128:	0017b793          	seqz	a5,a5
    8000812c:	00e7f7b3          	and	a5,a5,a4
    80008130:	10078863          	beqz	a5,80008240 <__memmove+0x14c>
    80008134:	00900793          	li	a5,9
    80008138:	1107f463          	bgeu	a5,a6,80008240 <__memmove+0x14c>
    8000813c:	0036581b          	srliw	a6,a2,0x3
    80008140:	fff8081b          	addiw	a6,a6,-1
    80008144:	02081813          	slli	a6,a6,0x20
    80008148:	01d85893          	srli	a7,a6,0x1d
    8000814c:	00858813          	addi	a6,a1,8
    80008150:	00058793          	mv	a5,a1
    80008154:	00050713          	mv	a4,a0
    80008158:	01088833          	add	a6,a7,a6
    8000815c:	0007b883          	ld	a7,0(a5)
    80008160:	00878793          	addi	a5,a5,8
    80008164:	00870713          	addi	a4,a4,8
    80008168:	ff173c23          	sd	a7,-8(a4)
    8000816c:	ff0798e3          	bne	a5,a6,8000815c <__memmove+0x68>
    80008170:	ff867713          	andi	a4,a2,-8
    80008174:	02071793          	slli	a5,a4,0x20
    80008178:	0207d793          	srli	a5,a5,0x20
    8000817c:	00f585b3          	add	a1,a1,a5
    80008180:	40e686bb          	subw	a3,a3,a4
    80008184:	00f507b3          	add	a5,a0,a5
    80008188:	06e60463          	beq	a2,a4,800081f0 <__memmove+0xfc>
    8000818c:	0005c703          	lbu	a4,0(a1)
    80008190:	00e78023          	sb	a4,0(a5)
    80008194:	04068e63          	beqz	a3,800081f0 <__memmove+0xfc>
    80008198:	0015c603          	lbu	a2,1(a1)
    8000819c:	00100713          	li	a4,1
    800081a0:	00c780a3          	sb	a2,1(a5)
    800081a4:	04e68663          	beq	a3,a4,800081f0 <__memmove+0xfc>
    800081a8:	0025c603          	lbu	a2,2(a1)
    800081ac:	00200713          	li	a4,2
    800081b0:	00c78123          	sb	a2,2(a5)
    800081b4:	02e68e63          	beq	a3,a4,800081f0 <__memmove+0xfc>
    800081b8:	0035c603          	lbu	a2,3(a1)
    800081bc:	00300713          	li	a4,3
    800081c0:	00c781a3          	sb	a2,3(a5)
    800081c4:	02e68663          	beq	a3,a4,800081f0 <__memmove+0xfc>
    800081c8:	0045c603          	lbu	a2,4(a1)
    800081cc:	00400713          	li	a4,4
    800081d0:	00c78223          	sb	a2,4(a5)
    800081d4:	00e68e63          	beq	a3,a4,800081f0 <__memmove+0xfc>
    800081d8:	0055c603          	lbu	a2,5(a1)
    800081dc:	00500713          	li	a4,5
    800081e0:	00c782a3          	sb	a2,5(a5)
    800081e4:	00e68663          	beq	a3,a4,800081f0 <__memmove+0xfc>
    800081e8:	0065c703          	lbu	a4,6(a1)
    800081ec:	00e78323          	sb	a4,6(a5)
    800081f0:	00813403          	ld	s0,8(sp)
    800081f4:	01010113          	addi	sp,sp,16
    800081f8:	00008067          	ret
    800081fc:	02061713          	slli	a4,a2,0x20
    80008200:	02075713          	srli	a4,a4,0x20
    80008204:	00e587b3          	add	a5,a1,a4
    80008208:	f0f574e3          	bgeu	a0,a5,80008110 <__memmove+0x1c>
    8000820c:	02069613          	slli	a2,a3,0x20
    80008210:	02065613          	srli	a2,a2,0x20
    80008214:	fff64613          	not	a2,a2
    80008218:	00e50733          	add	a4,a0,a4
    8000821c:	00c78633          	add	a2,a5,a2
    80008220:	fff7c683          	lbu	a3,-1(a5)
    80008224:	fff78793          	addi	a5,a5,-1
    80008228:	fff70713          	addi	a4,a4,-1
    8000822c:	00d70023          	sb	a3,0(a4)
    80008230:	fec798e3          	bne	a5,a2,80008220 <__memmove+0x12c>
    80008234:	00813403          	ld	s0,8(sp)
    80008238:	01010113          	addi	sp,sp,16
    8000823c:	00008067          	ret
    80008240:	02069713          	slli	a4,a3,0x20
    80008244:	02075713          	srli	a4,a4,0x20
    80008248:	00170713          	addi	a4,a4,1
    8000824c:	00e50733          	add	a4,a0,a4
    80008250:	00050793          	mv	a5,a0
    80008254:	0005c683          	lbu	a3,0(a1)
    80008258:	00178793          	addi	a5,a5,1
    8000825c:	00158593          	addi	a1,a1,1
    80008260:	fed78fa3          	sb	a3,-1(a5)
    80008264:	fee798e3          	bne	a5,a4,80008254 <__memmove+0x160>
    80008268:	f89ff06f          	j	800081f0 <__memmove+0xfc>

000000008000826c <__putc>:
    8000826c:	fe010113          	addi	sp,sp,-32
    80008270:	00813823          	sd	s0,16(sp)
    80008274:	00113c23          	sd	ra,24(sp)
    80008278:	02010413          	addi	s0,sp,32
    8000827c:	00050793          	mv	a5,a0
    80008280:	fef40593          	addi	a1,s0,-17
    80008284:	00100613          	li	a2,1
    80008288:	00000513          	li	a0,0
    8000828c:	fef407a3          	sb	a5,-17(s0)
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	b3c080e7          	jalr	-1220(ra) # 80006dcc <console_write>
    80008298:	01813083          	ld	ra,24(sp)
    8000829c:	01013403          	ld	s0,16(sp)
    800082a0:	02010113          	addi	sp,sp,32
    800082a4:	00008067          	ret

00000000800082a8 <__getc>:
    800082a8:	fe010113          	addi	sp,sp,-32
    800082ac:	00813823          	sd	s0,16(sp)
    800082b0:	00113c23          	sd	ra,24(sp)
    800082b4:	02010413          	addi	s0,sp,32
    800082b8:	fe840593          	addi	a1,s0,-24
    800082bc:	00100613          	li	a2,1
    800082c0:	00000513          	li	a0,0
    800082c4:	fffff097          	auipc	ra,0xfffff
    800082c8:	ae8080e7          	jalr	-1304(ra) # 80006dac <console_read>
    800082cc:	fe844503          	lbu	a0,-24(s0)
    800082d0:	01813083          	ld	ra,24(sp)
    800082d4:	01013403          	ld	s0,16(sp)
    800082d8:	02010113          	addi	sp,sp,32
    800082dc:	00008067          	ret

00000000800082e0 <console_handler>:
    800082e0:	fe010113          	addi	sp,sp,-32
    800082e4:	00813823          	sd	s0,16(sp)
    800082e8:	00113c23          	sd	ra,24(sp)
    800082ec:	00913423          	sd	s1,8(sp)
    800082f0:	02010413          	addi	s0,sp,32
    800082f4:	14202773          	csrr	a4,scause
    800082f8:	100027f3          	csrr	a5,sstatus
    800082fc:	0027f793          	andi	a5,a5,2
    80008300:	06079e63          	bnez	a5,8000837c <console_handler+0x9c>
    80008304:	00074c63          	bltz	a4,8000831c <console_handler+0x3c>
    80008308:	01813083          	ld	ra,24(sp)
    8000830c:	01013403          	ld	s0,16(sp)
    80008310:	00813483          	ld	s1,8(sp)
    80008314:	02010113          	addi	sp,sp,32
    80008318:	00008067          	ret
    8000831c:	0ff77713          	andi	a4,a4,255
    80008320:	00900793          	li	a5,9
    80008324:	fef712e3          	bne	a4,a5,80008308 <console_handler+0x28>
    80008328:	ffffe097          	auipc	ra,0xffffe
    8000832c:	6dc080e7          	jalr	1756(ra) # 80006a04 <plic_claim>
    80008330:	00a00793          	li	a5,10
    80008334:	00050493          	mv	s1,a0
    80008338:	02f50c63          	beq	a0,a5,80008370 <console_handler+0x90>
    8000833c:	fc0506e3          	beqz	a0,80008308 <console_handler+0x28>
    80008340:	00050593          	mv	a1,a0
    80008344:	00001517          	auipc	a0,0x1
    80008348:	37c50513          	addi	a0,a0,892 # 800096c0 <_ZL6digits+0xf8>
    8000834c:	fffff097          	auipc	ra,0xfffff
    80008350:	afc080e7          	jalr	-1284(ra) # 80006e48 <__printf>
    80008354:	01013403          	ld	s0,16(sp)
    80008358:	01813083          	ld	ra,24(sp)
    8000835c:	00048513          	mv	a0,s1
    80008360:	00813483          	ld	s1,8(sp)
    80008364:	02010113          	addi	sp,sp,32
    80008368:	ffffe317          	auipc	t1,0xffffe
    8000836c:	6d430067          	jr	1748(t1) # 80006a3c <plic_complete>
    80008370:	fffff097          	auipc	ra,0xfffff
    80008374:	3e0080e7          	jalr	992(ra) # 80007750 <uartintr>
    80008378:	fddff06f          	j	80008354 <console_handler+0x74>
    8000837c:	00001517          	auipc	a0,0x1
    80008380:	44450513          	addi	a0,a0,1092 # 800097c0 <digits+0x78>
    80008384:	fffff097          	auipc	ra,0xfffff
    80008388:	a68080e7          	jalr	-1432(ra) # 80006dec <panic>
	...
