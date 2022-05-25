
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9a013103          	ld	sp,-1632(sp) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1b8060ef          	jal	ra,800061d4 <start>

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
    800016bc:	34872703          	lw	a4,840(a4) # 8000ba00 <head>
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
    800016e0:	32448493          	addi	s1,s1,804 # 8000ba00 <head>
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
    80001708:	b98080e7          	jalr	-1128(ra) # 8000829c <__putc>
        sem_signal(spaceAvailable);
    8000170c:	0204b503          	ld	a0,32(s1)
    80001710:	00000097          	auipc	ra,0x0
    80001714:	cec080e7          	jalr	-788(ra) # 800013fc <sem_signal>
    while(head!=10){
    80001718:	0000a717          	auipc	a4,0xa
    8000171c:	2e872703          	lw	a4,744(a4) # 8000ba00 <head>
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
    80001744:	2e872703          	lw	a4,744(a4) # 8000ba28 <tail>
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
    80001768:	29c48493          	addi	s1,s1,668 # 8000ba00 <head>
    8000176c:	0204b503          	ld	a0,32(s1)
    80001770:	00000097          	auipc	ra,0x0
    80001774:	c60080e7          	jalr	-928(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001778:	0284a783          	lw	a5,40(s1)
    8000177c:	0000a717          	auipc	a4,0xa
    80001780:	0a470713          	addi	a4,a4,164 # 8000b820 <string>
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
    800017ac:	28072703          	lw	a4,640(a4) # 8000ba28 <tail>
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
    static uint64 timeSliceCounter;
    uint64 getTimeSlice() { return timeSlice;}

    void* operator new(size_t size);
    void operator delete(void *p);

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
    800018d4:	2d8080e7          	jalr	728(ra) # 8000cba8 <_Unwind_Resume>
    800018d8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	a98080e7          	jalr	-1384(ra) # 80003378 <_ZdlPv>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	0000b097          	auipc	ra,0xb
    800018f0:	2bc080e7          	jalr	700(ra) # 8000cba8 <_Unwind_Resume>

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
    800019fc:	1b0080e7          	jalr	432(ra) # 8000cba8 <_Unwind_Resume>
    80001a00:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a04:	00090513          	mv	a0,s2
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	970080e7          	jalr	-1680(ra) # 80003378 <_ZdlPv>
    80001a10:	00048513          	mv	a0,s1
    80001a14:	0000b097          	auipc	ra,0xb
    80001a18:	194080e7          	jalr	404(ra) # 8000cba8 <_Unwind_Resume>
    80001a1c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	954080e7          	jalr	-1708(ra) # 80003378 <_ZdlPv>
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	0000b097          	auipc	ra,0xb
    80001a34:	178080e7          	jalr	376(ra) # 8000cba8 <_Unwind_Resume>

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
    80001bd4:	de07b783          	ld	a5,-544(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bd8:	0007b503          	ld	a0,0(a5)
    80001bdc:	0000a797          	auipc	a5,0xa
    80001be0:	dac7b783          	ld	a5,-596(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001f3c:	93878793          	addi	a5,a5,-1736 # 8000b870 <_ZTV12TestPeriodic+0x10>
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
    80001fb4:	bf8080e7          	jalr	-1032(ra) # 8000cba8 <_Unwind_Resume>

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
    80002130:	85c7b783          	ld	a5,-1956(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002134:	0007b503          	ld	a0,0(a5)
    80002138:	0000a797          	auipc	a5,0xa
    8000213c:	8787b783          	ld	a5,-1928(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002180:	8347b783          	ld	a5,-1996(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002184:	0007b503          	ld	a0,0(a5)
    80002188:	0000a797          	auipc	a5,0xa
    8000218c:	8007b783          	ld	a5,-2048(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    800024cc:	55850513          	addi	a0,a0,1368 # 8000ba20 <spaceAvailable>
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	e9c080e7          	jalr	-356(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    800024d8:	00000593          	li	a1,0
    800024dc:	00009517          	auipc	a0,0x9
    800024e0:	52c50513          	addi	a0,a0,1324 # 8000ba08 <itemAvailable>
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
    800025c4:	28078793          	addi	a5,a5,640 # 8000b840 <_ZTV14PeriodicThread+0x10>
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
    80002600:	24478793          	addi	a5,a5,580 # 8000b840 <_ZTV14PeriodicThread+0x10>
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
    80002644:	20078793          	addi	a5,a5,512 # 8000b840 <_ZTV14PeriodicThread+0x10>
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
    80002680:	1c478793          	addi	a5,a5,452 # 8000b840 <_ZTV14PeriodicThread+0x10>
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
    800026dc:	3587b783          	ld	a5,856(a5) # 8000ba30 <_ZN3PCB7runningE>
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
    800027c4:	2704b483          	ld	s1,624(s1) # 8000ba30 <_ZN3PCB7runningE>
    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800027c8:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800027cc:	00100793          	li	a5,1
    800027d0:	04f70063          	beq	a4,a5,80002810 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	9f4080e7          	jalr	-1548(ra) # 800031c8 <_ZN9Scheduler3getEv>
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	24a7ba23          	sd	a0,596(a5) # 8000ba30 <_ZN3PCB7runningE>
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
    80002834:	754080e7          	jalr	1876(ra) # 80003f84 <_Z7kmallocm>
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
    8000285c:	788080e7          	jalr	1928(ra) # 80003fe0 <_Z5kfreePv>
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
    80002888:	75c080e7          	jalr	1884(ra) # 80003fe0 <_Z5kfreePv>
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
    800028f0:	14a7b223          	sd	a0,324(a5) # 8000ba30 <_ZN3PCB7runningE>
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
    8000292c:	280080e7          	jalr	640(ra) # 8000cba8 <_Unwind_Resume>

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
    80002978:	0bc78793          	addi	a5,a5,188 # 8000ba30 <_ZN3PCB7runningE>
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
    800029bc:	0807b023          	sd	zero,128(a5) # 8000ba38 <_ZN3PCB16timeSliceCounterE>
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
    800029f0:	04478793          	addi	a5,a5,68 # 8000ba30 <_ZN3PCB7runningE>
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
    80002a68:	fdc6b683          	ld	a3,-36(a3) # 8000ba40 <_ZN3PCB10savedRegA4E>
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
    80002ac8:	0e4080e7          	jalr	228(ra) # 8000cba8 <_Unwind_Resume>

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
    80002afc:	48c080e7          	jalr	1164(ra) # 80003f84 <_Z7kmallocm>
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
    80002b78:	46c080e7          	jalr	1132(ra) # 80003fe0 <_Z5kfreePv>
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
    80002bc4:	6c8080e7          	jalr	1736(ra) # 80004288 <_ZN10KSemaphorenwEm>
    80002bc8:	00050493          	mv	s1,a0
    80002bcc:	00000593          	li	a1,0
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	468080e7          	jalr	1128(ra) # 80004038 <_ZN10KSemaphoreC1Ei>
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	e697b823          	sd	s1,-400(a5) # 8000ba48 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002be0:	01800513          	li	a0,24
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	6a4080e7          	jalr	1700(ra) # 80004288 <_ZN10KSemaphorenwEm>
    80002bec:	00050493          	mv	s1,a0
    80002bf0:	00000593          	li	a1,0
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	444080e7          	jalr	1092(ra) # 80004038 <_ZN10KSemaphoreC1Ei>
    80002bfc:	00009797          	auipc	a5,0x9
    80002c00:	e497ba23          	sd	s1,-428(a5) # 8000ba50 <_ZN8KConsole19hasCharactersOutputE>
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
    80002c28:	6fc080e7          	jalr	1788(ra) # 80004320 <_ZN10KSemaphoredlEPv>
    80002c2c:	00090513          	mv	a0,s2
    80002c30:	0000a097          	auipc	ra,0xa
    80002c34:	f78080e7          	jalr	-136(ra) # 8000cba8 <_Unwind_Resume>
    80002c38:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	6e0080e7          	jalr	1760(ra) # 80004320 <_ZN10KSemaphoredlEPv>
    80002c48:	00090513          	mv	a0,s2
    80002c4c:	0000a097          	auipc	ra,0xa
    80002c50:	f5c080e7          	jalr	-164(ra) # 8000cba8 <_Unwind_Resume>

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
    80002c68:	df460613          	addi	a2,a2,-524 # 8000ba58 <_ZN8KConsole9tailInputE>
    80002c6c:	00009597          	auipc	a1,0x9
    80002c70:	df458593          	addi	a1,a1,-524 # 8000ba60 <_ZN8KConsole9headInputE>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	e58080e7          	jalr	-424(ra) # 80002acc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002c7c:	00009517          	auipc	a0,0x9
    80002c80:	dcc53503          	ld	a0,-564(a0) # 8000ba48 <_ZN8KConsole18hasCharactersInputE>
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	5bc080e7          	jalr	1468(ra) # 80004240 <_ZN10KSemaphore6signalEv>
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
    80002d14:	d3853503          	ld	a0,-712(a0) # 8000ba48 <_ZN8KConsole18hasCharactersInputE>
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	3c8080e7          	jalr	968(ra) # 800040e0 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002d20:	00009597          	auipc	a1,0x9
    80002d24:	d3858593          	addi	a1,a1,-712 # 8000ba58 <_ZN8KConsole9tailInputE>
    80002d28:	00009517          	auipc	a0,0x9
    80002d2c:	d3850513          	addi	a0,a0,-712 # 8000ba60 <_ZN8KConsole9headInputE>
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
    80002d5c:	d1060613          	addi	a2,a2,-752 # 8000ba68 <_ZN8KConsole10tailOutputE>
    80002d60:	00009597          	auipc	a1,0x9
    80002d64:	d1058593          	addi	a1,a1,-752 # 8000ba70 <_ZN8KConsole10headOutputE>
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	d64080e7          	jalr	-668(ra) # 80002acc <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002d70:	00009517          	auipc	a0,0x9
    80002d74:	ce053503          	ld	a0,-800(a0) # 8000ba50 <_ZN8KConsole19hasCharactersOutputE>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	4c8080e7          	jalr	1224(ra) # 80004240 <_ZN10KSemaphore6signalEv>
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
    80002da4:	cb053503          	ld	a0,-848(a0) # 8000ba50 <_ZN8KConsole19hasCharactersOutputE>
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	338080e7          	jalr	824(ra) # 800040e0 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002db0:	00009597          	auipc	a1,0x9
    80002db4:	cb858593          	addi	a1,a1,-840 # 8000ba68 <_ZN8KConsole10tailOutputE>
    80002db8:	00009517          	auipc	a0,0x9
    80002dbc:	cb850513          	addi	a0,a0,-840 # 8000ba70 <_ZN8KConsole10headOutputE>
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
    80002e40:	b6c7b783          	ld	a5,-1172(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e44:	0007b603          	ld	a2,0(a5)
    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    80002e48:	00500793          	li	a5,5
    80002e4c:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002e50:	00009797          	auipc	a5,0x9
    80002e54:	c287b783          	ld	a5,-984(a5) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002e58:	00000593          	li	a1,0
    while(curr != 0)
    80002e5c:	02078063          	beqz	a5,80002e7c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setState(State s) {state = s;}
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
    State getState() {return state;}
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
    80002ea4:	bcc7bc23          	sd	a2,-1064(a5) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002ea8:	00863783          	ld	a5,8(a2)
    80002eac:	fe0784e3          	beqz	a5,80002e94 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    void setState(State s) {state = s;}
    80002eb0:	0187b703          	ld	a4,24(a5)
    80002eb4:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002eb8:	40d70733          	sub	a4,a4,a3
    State getState() {return state;}
    80002ebc:	00e7bc23          	sd	a4,24(a5)
    80002ec0:	fd5ff06f          	j	80002e94 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002ec4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002ec4:	00009517          	auipc	a0,0x9
    80002ec8:	bb453503          	ld	a0,-1100(a0) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002ecc:	08050863          	beqz	a0,80002f5c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    void setState(State s) {state = s;}
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
    State getState() {return state;}
    80002ee0:	00f53c23          	sd	a5,24(a0)
    80002ee4:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002ee8:	06050a63          	beqz	a0,80002f5c <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002eec:	00009797          	auipc	a5,0x9
    80002ef0:	b8c7b783          	ld	a5,-1140(a5) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002ef4:	00a78663          	beq	a5,a0,80002f00 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    void setState(State s) {state = s;}
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
    80002f28:	b497ba23          	sd	s1,-1196(a5) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002f2c:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002f30:	00048c63          	beqz	s1,80002f48 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002f34:	00009797          	auipc	a5,0x9
    80002f38:	b447b783          	ld	a5,-1212(a5) # 8000ba78 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80002f88:	05c080e7          	jalr	92(ra) # 80003fe0 <_Z5kfreePv>
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
    80002fe0:	fa8080e7          	jalr	-88(ra) # 80003f84 <_Z7kmallocm>
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
    80003098:	f4c080e7          	jalr	-180(ra) # 80003fe0 <_Z5kfreePv>
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
    80003100:	e88080e7          	jalr	-376(ra) # 80003f84 <_Z7kmallocm>
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
    80003128:	ebc080e7          	jalr	-324(ra) # 80003fe0 <_Z5kfreePv>
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
    8000314c:	9387b783          	ld	a5,-1736(a5) # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    80003180:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003184:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003188:	00009797          	auipc	a5,0x9
    8000318c:	8f87b783          	ld	a5,-1800(a5) # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
    80003190:	02078263          	beqz	a5,800031b4 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003194:	00009797          	auipc	a5,0x9
    80003198:	8ec78793          	addi	a5,a5,-1812 # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031b8:	8cc78793          	addi	a5,a5,-1844 # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031d8:	8ac53503          	ld	a0,-1876(a0) # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031ec:	88f73c23          	sd	a5,-1896(a4) # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800031f0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003200:	00009797          	auipc	a5,0x9
    80003204:	88078793          	addi	a5,a5,-1920 # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    8000323c:	8484b483          	ld	s1,-1976(s1) # 8000ba80 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003280:	894080e7          	jalr	-1900(ra) # 80003b10 <_ZN5Riscv10kernelMainEv>
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
    800032a8:	60478793          	addi	a5,a5,1540 # 8000b8a8 <_ZTV6Thread+0x10>
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
    800032e0:	5f478793          	addi	a5,a5,1524 # 8000b8d0 <_ZTV9Semaphore+0x10>
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
    800034fc:	3b078793          	addi	a5,a5,944 # 8000b8a8 <_ZTV6Thread+0x10>
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
    8000352c:	38078793          	addi	a5,a5,896 # 8000b8a8 <_ZTV6Thread+0x10>
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
    800035a8:	32c78793          	addi	a5,a5,812 # 8000b8d0 <_ZTV9Semaphore+0x10>
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
    8000367c:	1c878793          	addi	a5,a5,456 # 8000b840 <_ZTV14PeriodicThread+0x10>
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
    800036e4:	750080e7          	jalr	1872(ra) # 80005e30 <_Z8userMainv>
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
    8000370c:	2887b783          	ld	a5,648(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    800037f8:	aa8080e7          	jalr	-1368(ra) # 8000829c <__putc>
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
    80003874:	a5070713          	addi	a4,a4,-1456 # 800092c0 <_ZZN5Riscv12printIntegerEmE6digits>
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
    800038b8:	9e8080e7          	jalr	-1560(ra) # 8000829c <__putc>
    800038bc:	fe5ff06f          	j	800038a0 <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    800038c0:	00a00513          	li	a0,10
    800038c4:	00005097          	auipc	ra,0x5
    800038c8:	9d8080e7          	jalr	-1576(ra) # 8000829c <__putc>
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
    80003910:	0ac7b783          	ld	a5,172(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    80003930:	0ce78063          	beq	a5,a4,800039f0 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
    80003934:	fff00713          	li	a4,-1
    80003938:	03f71713          	slli	a4,a4,0x3f
    8000393c:	00170713          	addi	a4,a4,1
    80003940:	08f76a63          	bltu	a4,a5,800039d4 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    80003944:	ff878793          	addi	a5,a5,-8
    80003948:	00100713          	li	a4,1
    8000394c:	12f76263          	bltu	a4,a5,80003a70 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
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
            if (operation == MemoryAllocator::MEM_ALLOC)
    80003978:	00100713          	li	a4,1
    8000397c:	10e78c63          	beq	a5,a4,80003a94 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            else if (operation == MemoryAllocator::MEM_FREE)
    80003980:	00200713          	li	a4,2
    80003984:	12e78663          	beq	a5,a4,80003ab0 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            else if (operation == PCB::THREAD_CREATE)
    80003988:	01100713          	li	a4,17
    8000398c:	12e78863          	beq	a5,a4,80003abc <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            else if (operation == PCB::THREAD_DISPATCH)
    80003990:	01300713          	li	a4,19
    80003994:	12e78a63          	beq	a5,a4,80003ac8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            else if (operation == PCB::THREAD_EXIT)
    80003998:	01200713          	li	a4,18
    8000399c:	12e78c63          	beq	a5,a4,80003ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
            else if (operation == PCB::TIME_SLEEP)
    800039a0:	03100713          	li	a4,49
    800039a4:	12e78e63          	beq	a5,a4,80003ae0 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
            else if (operation == KSemaphore::SEM_OPEN)
    800039a8:	02100713          	li	a4,33
    800039ac:	14e78063          	beq	a5,a4,80003aec <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            else if (operation == KSemaphore::SEM_WAIT)
    800039b0:	02300713          	li	a4,35
    800039b4:	14e78263          	beq	a5,a4,80003af8 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            else if (operation == KSemaphore::SEM_SIGNAL)
    800039b8:	02400713          	li	a4,36
    800039bc:	14e78463          	beq	a5,a4,80003b04 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
            else if (operation == KSemaphore::SEM_CLOSE)
    800039c0:	02200713          	li	a4,34
    800039c4:	0ce79c63          	bne	a5,a4,80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                KSemaphore::semCloseHandler();
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	9f0080e7          	jalr	-1552(ra) # 800043b8 <_ZN10KSemaphore15semCloseHandlerEv>
    800039d0:	0cc0006f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    switch(scause)
    800039d4:	fff00713          	li	a4,-1
    800039d8:	03f71713          	slli	a4,a4,0x3f
    800039dc:	00970713          	addi	a4,a4,9
    800039e0:	08e79863          	bne	a5,a4,80003a70 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
            console_handler();
    800039e4:	00005097          	auipc	ra,0x5
    800039e8:	92c080e7          	jalr	-1748(ra) # 80008310 <console_handler>
            break;
    800039ec:	0840006f          	j	80003a70 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800039f0:	141027f3          	csrr	a5,sepc
    800039f4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800039f8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800039fc:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a00:	100027f3          	csrr	a5,sstatus
    80003a04:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003a08:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003a0c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003a10:	00200793          	li	a5,2
    80003a14:	1447b073          	csrc	sip,a5
            total++;
    80003a18:	00008717          	auipc	a4,0x8
    80003a1c:	07870713          	addi	a4,a4,120 # 8000ba90 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003a20:	00073783          	ld	a5,0(a4)
    80003a24:	00178793          	addi	a5,a5,1
    80003a28:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003a2c:	00008497          	auipc	s1,0x8
    80003a30:	f6c4b483          	ld	s1,-148(s1) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a34:	0004b783          	ld	a5,0(s1)
    80003a38:	00178793          	addi	a5,a5,1
    80003a3c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	484080e7          	jalr	1156(ra) # 80002ec4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003a48:	00008797          	auipc	a5,0x8
    80003a4c:	f607b783          	ld	a5,-160(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a50:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003a54:	0107b783          	ld	a5,16(a5)
    80003a58:	0004b703          	ld	a4,0(s1)
    80003a5c:	02f77463          	bgeu	a4,a5,80003a84 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
            Riscv::w_sstatus(sstatus);
    80003a60:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003a64:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003a68:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003a6c:	14179073          	csrw	sepc,a5
}
    80003a70:	06813083          	ld	ra,104(sp)
    80003a74:	06013403          	ld	s0,96(sp)
    80003a78:	05813483          	ld	s1,88(sp)
    80003a7c:	07010113          	addi	sp,sp,112
    80003a80:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003a84:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	d24080e7          	jalr	-732(ra) # 800027ac <_ZN3PCB8dispatchEv>
    80003a90:	fd1ff06f          	j	80003a60 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                MemoryAllocator::memAllocHandler();
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	518080e7          	jalr	1304(ra) # 80003fac <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003a9c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003aa0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003aa4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003aa8:	14179073          	csrw	sepc,a5
}
    80003aac:	fc5ff06f          	j	80003a70 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                MemoryAllocator::memFreeHandler();
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	558080e7          	jalr	1368(ra) # 80004008 <_ZN15MemoryAllocator14memFreeHandlerEv>
    80003ab8:	fe5ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                PCB::threadCreateHandler();
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	f68080e7          	jalr	-152(ra) # 80002a24 <_ZN3PCB19threadCreateHandlerEv>
    80003ac4:	fd9ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                PCB::threadDispatchHandler();
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	ee0080e7          	jalr	-288(ra) # 800029a8 <_ZN3PCB21threadDispatchHandlerEv>
    80003ad0:	fcdff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                PCB::threadExitHandler();
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	e80080e7          	jalr	-384(ra) # 80002954 <_ZN3PCB17threadExitHandlerEv>
    80003adc:	fc1ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                PCB::threadSleepHandler();
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	ef8080e7          	jalr	-264(ra) # 800029d8 <_ZN3PCB18threadSleepHandlerEv>
    80003ae8:	fb5ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                KSemaphore::semOpenHandler();
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	7c4080e7          	jalr	1988(ra) # 800042b0 <_ZN10KSemaphore14semOpenHandlerEv>
    80003af4:	fa9ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                KSemaphore::semWaitHandler();
    80003af8:	00001097          	auipc	ra,0x1
    80003afc:	850080e7          	jalr	-1968(ra) # 80004348 <_ZN10KSemaphore14semWaitHandlerEv>
    80003b00:	f9dff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                KSemaphore::semSignalHandler();
    80003b04:	00001097          	auipc	ra,0x1
    80003b08:	87c080e7          	jalr	-1924(ra) # 80004380 <_ZN10KSemaphore16semSignalHandlerEv>
    80003b0c:	f91ff06f          	j	80003a9c <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>

0000000080003b10 <_ZN5Riscv10kernelMainEv>:
{
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00113c23          	sd	ra,24(sp)
    80003b18:	00813823          	sd	s0,16(sp)
    80003b1c:	00913423          	sd	s1,8(sp)
    80003b20:	01213023          	sd	s2,0(sp)
    80003b24:	02010413          	addi	s0,sp,32
    initSystem();
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	bd0080e7          	jalr	-1072(ra) # 800036f8 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003b30:	00001537          	lui	a0,0x1
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	450080e7          	jalr	1104(ra) # 80003f84 <_Z7kmallocm>
    80003b3c:	00050913          	mv	s2,a0
    80003b40:	05000513          	li	a0,80
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	cdc080e7          	jalr	-804(ra) # 80002820 <_ZN3PCBnwEm>
    80003b4c:	00050493          	mv	s1,a0
    80003b50:	00200713          	li	a4,2
    80003b54:	00090693          	mv	a3,s2
    80003b58:	00000613          	li	a2,0
    80003b5c:	00000597          	auipc	a1,0x0
    80003b60:	b7458593          	addi	a1,a1,-1164 # 800036d0 <_ZN5Riscv15userMainWrapperEPv>
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	ba0080e7          	jalr	-1120(ra) # 80002704 <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003b6c:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003b70:	00300793          	li	a5,3
    80003b74:	00f70863          	beq	a4,a5,80003b84 <_ZN5Riscv10kernelMainEv+0x74>
        thread_dispatch();
    80003b78:	ffffd097          	auipc	ra,0xffffd
    80003b7c:	7ac080e7          	jalr	1964(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003b80:	fedff06f          	j	80003b6c <_ZN5Riscv10kernelMainEv+0x5c>
    endSystem();
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	bf0080e7          	jalr	-1040(ra) # 80003774 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003b8c:	00005517          	auipc	a0,0x5
    80003b90:	72c50513          	addi	a0,a0,1836 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	c28080e7          	jalr	-984(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	00013903          	ld	s2,0(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret
    80003bb4:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	fffff097          	auipc	ra,0xfffff
    80003bc0:	c8c080e7          	jalr	-884(ra) # 80002848 <_ZN3PCBdlEPv>
    80003bc4:	00090513          	mv	a0,s2
    80003bc8:	00009097          	auipc	ra,0x9
    80003bcc:	fe0080e7          	jalr	-32(ra) # 8000cba8 <_Unwind_Resume>

0000000080003bd0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813423          	sd	s0,8(sp)
    80003bd8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003bdc:	00008717          	auipc	a4,0x8
    80003be0:	ebc72703          	lw	a4,-324(a4) # 8000ba98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003be4:	00100793          	li	a5,1
    80003be8:	04f70263          	beq	a4,a5,80003c2c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003bec:	00008797          	auipc	a5,0x8
    80003bf0:	eac78793          	addi	a5,a5,-340 # 8000ba98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003bf4:	00100713          	li	a4,1
    80003bf8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003bfc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c00:	00008717          	auipc	a4,0x8
    80003c04:	d8873703          	ld	a4,-632(a4) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003c08:	00073703          	ld	a4,0(a4)
    80003c0c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c10:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c14:	00008797          	auipc	a5,0x8
    80003c18:	d9c7b783          	ld	a5,-612(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c1c:	0007b783          	ld	a5,0(a5)
    80003c20:	40e787b3          	sub	a5,a5,a4
    80003c24:	ff178793          	addi	a5,a5,-15
    80003c28:	00f73023          	sd	a5,0(a4)
}
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret

0000000080003c38 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003c38:	fe010113          	addi	sp,sp,-32
    80003c3c:	00113c23          	sd	ra,24(sp)
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00913423          	sd	s1,8(sp)
    80003c48:	01213023          	sd	s2,0(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	00050493          	mv	s1,a0
    80003c54:	00058913          	mv	s2,a1
    initMemory();
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	f78080e7          	jalr	-136(ra) # 80003bd0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003c60:	00008797          	auipc	a5,0x8
    80003c64:	e407b783          	ld	a5,-448(a5) # 8000baa0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003c68:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003c6c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003c70:	00000713          	li	a4,0
    while(curr != 0)
    80003c74:	00078c63          	beqz	a5,80003c8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003c78:	00f4e863          	bltu	s1,a5,80003c88 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003c7c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003c80:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003c84:	ff1ff06f          	j	80003c74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003c88:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003c8c:	02070063          	beqz	a4,80003cac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003c90:	00973423          	sd	s1,8(a4)
}
    80003c94:	01813083          	ld	ra,24(sp)
    80003c98:	01013403          	ld	s0,16(sp)
    80003c9c:	00813483          	ld	s1,8(sp)
    80003ca0:	00013903          	ld	s2,0(sp)
    80003ca4:	02010113          	addi	sp,sp,32
    80003ca8:	00008067          	ret
        headAllocated = newAllocated;
    80003cac:	00008797          	auipc	a5,0x8
    80003cb0:	de97ba23          	sd	s1,-524(a5) # 8000baa0 <_ZN15MemoryAllocator13headAllocatedE>
    80003cb4:	fe1ff06f          	j	80003c94 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003cb8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003cb8:	fe010113          	addi	sp,sp,-32
    80003cbc:	00113c23          	sd	ra,24(sp)
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00913423          	sd	s1,8(sp)
    80003cc8:	01213023          	sd	s2,0(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	00050913          	mv	s2,a0
    initMemory();
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	efc080e7          	jalr	-260(ra) # 80003bd0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003cdc:	00008497          	auipc	s1,0x8
    80003ce0:	dcc4b483          	ld	s1,-564(s1) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003ce4:	00000713          	li	a4,0
    while(curr != 0)
    80003ce8:	0a048863          	beqz	s1,80003d98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003cec:	0004b783          	ld	a5,0(s1)
    80003cf0:	0127f863          	bgeu	a5,s2,80003d00 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003cf4:	00048713          	mv	a4,s1
        curr = curr->next;
    80003cf8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cfc:	fedff06f          	j	80003ce8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003d00:	01090693          	addi	a3,s2,16
    80003d04:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003d08:	00008617          	auipc	a2,0x8
    80003d0c:	ca863603          	ld	a2,-856(a2) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d10:	00063603          	ld	a2,0(a2)
    80003d14:	04d66c63          	bltu	a2,a3,80003d6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003d18:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003d1c:	01000613          	li	a2,16
    80003d20:	02f67663          	bgeu	a2,a5,80003d4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003d24:	0084b603          	ld	a2,8(s1)
    80003d28:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003d2c:	ff078793          	addi	a5,a5,-16
    80003d30:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003d34:	00070663          	beqz	a4,80003d40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003d38:	00d73423          	sd	a3,8(a4)
    80003d3c:	0380006f          	j	80003d74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003d40:	00008797          	auipc	a5,0x8
    80003d44:	d6d7b423          	sd	a3,-664(a5) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    80003d48:	02c0006f          	j	80003d74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003d4c:	00070863          	beqz	a4,80003d5c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003d50:	0084b783          	ld	a5,8(s1)
    80003d54:	00f73423          	sd	a5,8(a4)
    80003d58:	01c0006f          	j	80003d74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003d5c:	0084b783          	ld	a5,8(s1)
    80003d60:	00008717          	auipc	a4,0x8
    80003d64:	d4f73423          	sd	a5,-696(a4) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    80003d68:	00c0006f          	j	80003d74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003d6c:	02070063          	beqz	a4,80003d8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003d70:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003d74:	00090593          	mv	a1,s2
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	ebc080e7          	jalr	-324(ra) # 80003c38 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003d84:	01048513          	addi	a0,s1,16
            break;
    80003d88:	0140006f          	j	80003d9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	d007be23          	sd	zero,-740(a5) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    80003d94:	fe1ff06f          	j	80003d74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003d98:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	00013903          	ld	s2,0(sp)
    80003dac:	02010113          	addi	sp,sp,32
    80003db0:	00008067          	ret

0000000080003db4 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	00813023          	sd	s0,0(sp)
    80003dc0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003dc4:	00000097          	auipc	ra,0x0
    80003dc8:	ef4080e7          	jalr	-268(ra) # 80003cb8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003dcc:	00813083          	ld	ra,8(sp)
    80003dd0:	00013403          	ld	s0,0(sp)
    80003dd4:	01010113          	addi	sp,sp,16
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00113c23          	sd	ra,24(sp)
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	01213023          	sd	s2,0(sp)
    80003df0:	02010413          	addi	s0,sp,32
    80003df4:	00050493          	mv	s1,a0
    80003df8:	00058913          	mv	s2,a1
    initMemory();
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	dd4080e7          	jalr	-556(ra) # 80003bd0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003e04:	00008797          	auipc	a5,0x8
    80003e08:	ca47b783          	ld	a5,-860(a5) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003e0c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003e10:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003e14:	00000713          	li	a4,0
    while(curr != 0)
    80003e18:	00078c63          	beqz	a5,80003e30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003e1c:	00f4e863          	bltu	s1,a5,80003e2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003e20:	00078713          	mv	a4,a5
        curr = curr->next;
    80003e24:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003e28:	ff1ff06f          	j	80003e18 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003e2c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003e30:	04070663          	beqz	a4,80003e7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003e34:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003e38:	0084b783          	ld	a5,8(s1)
    80003e3c:	00078a63          	beqz	a5,80003e50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003e40:	0004b603          	ld	a2,0(s1)
    80003e44:	01060693          	addi	a3,a2,16
    80003e48:	00d486b3          	add	a3,s1,a3
    80003e4c:	02d78e63          	beq	a5,a3,80003e88 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003e50:	00070a63          	beqz	a4,80003e64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003e54:	00073683          	ld	a3,0(a4)
    80003e58:	01068793          	addi	a5,a3,16
    80003e5c:	00f707b3          	add	a5,a4,a5
    80003e60:	04978263          	beq	a5,s1,80003ea4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00813483          	ld	s1,8(sp)
    80003e70:	00013903          	ld	s2,0(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret
        headFree = newSegment;
    80003e7c:	00008797          	auipc	a5,0x8
    80003e80:	c297b623          	sd	s1,-980(a5) # 8000baa8 <_ZN15MemoryAllocator8headFreeE>
    80003e84:	fb5ff06f          	j	80003e38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003e88:	0007b683          	ld	a3,0(a5)
    80003e8c:	00d60633          	add	a2,a2,a3
    80003e90:	01060613          	addi	a2,a2,16
    80003e94:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003e98:	0087b783          	ld	a5,8(a5)
    80003e9c:	00f4b423          	sd	a5,8(s1)
    80003ea0:	fb1ff06f          	j	80003e50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003ea4:	0004b783          	ld	a5,0(s1)
    80003ea8:	00f686b3          	add	a3,a3,a5
    80003eac:	01068693          	addi	a3,a3,16
    80003eb0:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003eb4:	0084b783          	ld	a5,8(s1)
    80003eb8:	00f73423          	sd	a5,8(a4)
}
    80003ebc:	fa9ff06f          	j	80003e64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003ec0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	01213023          	sd	s2,0(sp)
    80003ed4:	02010413          	addi	s0,sp,32
    80003ed8:	00050913          	mv	s2,a0
    initMemory();
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	cf4080e7          	jalr	-780(ra) # 80003bd0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ee4:	00008497          	auipc	s1,0x8
    80003ee8:	bbc4b483          	ld	s1,-1092(s1) # 8000baa0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003eec:	00000713          	li	a4,0
    while(curr != 0)
    80003ef0:	02048a63          	beqz	s1,80003f24 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003ef4:	01048793          	addi	a5,s1,16
    80003ef8:	01278863          	beq	a5,s2,80003f08 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003efc:	00048713          	mv	a4,s1
        curr = curr->next;
    80003f00:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003f04:	fedff06f          	j	80003ef0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003f08:	02070e63          	beqz	a4,80003f44 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003f0c:	0084b783          	ld	a5,8(s1)
    80003f10:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003f14:	0004b583          	ld	a1,0(s1)
    80003f18:	00048513          	mv	a0,s1
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	ec0080e7          	jalr	-320(ra) # 80003ddc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003f24:	02048863          	beqz	s1,80003f54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003f28:	00000513          	li	a0,0
    else
        return 1;
}
    80003f2c:	01813083          	ld	ra,24(sp)
    80003f30:	01013403          	ld	s0,16(sp)
    80003f34:	00813483          	ld	s1,8(sp)
    80003f38:	00013903          	ld	s2,0(sp)
    80003f3c:	02010113          	addi	sp,sp,32
    80003f40:	00008067          	ret
                headAllocated = curr->next;
    80003f44:	0084b783          	ld	a5,8(s1)
    80003f48:	00008717          	auipc	a4,0x8
    80003f4c:	b4f73c23          	sd	a5,-1192(a4) # 8000baa0 <_ZN15MemoryAllocator13headAllocatedE>
    80003f50:	fc5ff06f          	j	80003f14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003f54:	00100513          	li	a0,1
    80003f58:	fd5ff06f          	j	80003f2c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003f5c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00113423          	sd	ra,8(sp)
    80003f64:	00813023          	sd	s0,0(sp)
    80003f68:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003f6c:	00000097          	auipc	ra,0x0
    80003f70:	f54080e7          	jalr	-172(ra) # 80003ec0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003f74:	00813083          	ld	ra,8(sp)
    80003f78:	00013403          	ld	s0,0(sp)
    80003f7c:	01010113          	addi	sp,sp,16
    80003f80:	00008067          	ret

0000000080003f84 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00113423          	sd	ra,8(sp)
    80003f8c:	00813023          	sd	s0,0(sp)
    80003f90:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	e20080e7          	jalr	-480(ra) # 80003db4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003f9c:	00813083          	ld	ra,8(sp)
    80003fa0:	00013403          	ld	s0,0(sp)
    80003fa4:	01010113          	addi	sp,sp,16
    80003fa8:	00008067          	ret

0000000080003fac <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00113423          	sd	ra,8(sp)
    80003fb4:	00813023          	sd	s0,0(sp)
    80003fb8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80003fbc:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80003fc0:	00651513          	slli	a0,a0,0x6
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	fc0080e7          	jalr	-64(ra) # 80003f84 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003fcc:	00050513          	mv	a0,a0
}
    80003fd0:	00813083          	ld	ra,8(sp)
    80003fd4:	00013403          	ld	s0,0(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret

0000000080003fe0 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	f6c080e7          	jalr	-148(ra) # 80003f5c <_ZN15MemoryAllocator8mem_freeEPv>
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00113423          	sd	ra,8(sp)
    80004010:	00813023          	sd	s0,0(sp)
    80004014:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004018:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    8000401c:	00000097          	auipc	ra,0x0
    80004020:	fc4080e7          	jalr	-60(ra) # 80003fe0 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004024:	00050513          	mv	a0,a0
}
    80004028:	00813083          	ld	ra,8(sp)
    8000402c:	00013403          	ld	s0,0(sp)
    80004030:	01010113          	addi	sp,sp,16
    80004034:	00008067          	ret

0000000080004038 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004038:	ff010113          	addi	sp,sp,-16
    8000403c:	00813423          	sd	s0,8(sp)
    80004040:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004044:	00b52a23          	sw	a1,20(a0)
    80004048:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000404c:	00053423          	sd	zero,8(a0)
    80004050:	00053023          	sd	zero,0(a0)
}
    80004054:	00813403          	ld	s0,8(sp)
    80004058:	01010113          	addi	sp,sp,16
    8000405c:	00008067          	ret

0000000080004060 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000406c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004070:	00053783          	ld	a5,0(a0)
    80004074:	00078e63          	beqz	a5,80004090 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004078:	00853783          	ld	a5,8(a0)
    8000407c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004080:	00b53423          	sd	a1,8(a0)
    }
}
    80004084:	00813403          	ld	s0,8(sp)
    80004088:	01010113          	addi	sp,sp,16
    8000408c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004090:	00b53423          	sd	a1,8(a0)
    80004094:	00b53023          	sd	a1,0(a0)
    80004098:	fedff06f          	j	80004084 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000409c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800040ac:	00008797          	auipc	a5,0x8
    800040b0:	8fc7b783          	ld	a5,-1796(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800040b4:	0007b583          	ld	a1,0(a5)
    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    800040b8:	00200793          	li	a5,2
    800040bc:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	fa0080e7          	jalr	-96(ra) # 80004060 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	6e4080e7          	jalr	1764(ra) # 800027ac <_ZN3PCB8dispatchEv>
}
    800040d0:	00813083          	ld	ra,8(sp)
    800040d4:	00013403          	ld	s0,0(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret

00000000800040e0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800040e0:	01052783          	lw	a5,16(a0)
    800040e4:	fff7879b          	addiw	a5,a5,-1
    800040e8:	00f52823          	sw	a5,16(a0)
    800040ec:	02079713          	slli	a4,a5,0x20
    800040f0:	00074663          	bltz	a4,800040fc <_ZN10KSemaphore4waitEv+0x1c>
}
    800040f4:	00000513          	li	a0,0
    800040f8:	00008067          	ret
uint64 KSemaphore::wait() {
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00113423          	sd	ra,8(sp)
    80004104:	00813023          	sd	s0,0(sp)
    80004108:	01010413          	addi	s0,sp,16
        block();
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	f90080e7          	jalr	-112(ra) # 8000409c <_ZN10KSemaphore5blockEv>
}
    80004114:	00000513          	li	a0,0
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00813423          	sd	s0,8(sp)
    80004130:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004134:	00053503          	ld	a0,0(a0)
    80004138:	00813403          	ld	s0,8(sp)
    8000413c:	01010113          	addi	sp,sp,16
    80004140:	00008067          	ret

0000000080004144 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004144:	ff010113          	addi	sp,sp,-16
    80004148:	00813423          	sd	s0,8(sp)
    8000414c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004150:	00053783          	ld	a5,0(a0)
    80004154:	00078c63          	beqz	a5,8000416c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004158:	0087b703          	ld	a4,8(a5)
    8000415c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004160:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004164:	00053783          	ld	a5,0(a0)
    80004168:	00078863          	beqz	a5,80004178 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000416c:	00813403          	ld	s0,8(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret
        tailBlocked =0;
    80004178:	00053423          	sd	zero,8(a0)
    8000417c:	ff1ff06f          	j	8000416c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004180 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00113c23          	sd	ra,24(sp)
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	01213023          	sd	s2,0(sp)
    80004194:	02010413          	addi	s0,sp,32
    80004198:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000419c:	00090513          	mv	a0,s2
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	f88080e7          	jalr	-120(ra) # 80004128 <_ZN10KSemaphore15getFirstBlockedEv>
    800041a8:	00050493          	mv	s1,a0
    800041ac:	02050063          	beqz	a0,800041cc <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800041b0:	00090513          	mv	a0,s2
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	f90080e7          	jalr	-112(ra) # 80004144 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800041bc:	00048513          	mv	a0,s1
    800041c0:	fffff097          	auipc	ra,0xfffff
    800041c4:	fb4080e7          	jalr	-76(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800041c8:	fd5ff06f          	j	8000419c <_ZN10KSemaphoreD1Ev+0x1c>
}
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	00013903          	ld	s2,0(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	00813823          	sd	s0,16(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	01213023          	sd	s2,0(sp)
    800041f8:	02010413          	addi	s0,sp,32
    800041fc:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004200:	00000097          	auipc	ra,0x0
    80004204:	f28080e7          	jalr	-216(ra) # 80004128 <_ZN10KSemaphore15getFirstBlockedEv>
    80004208:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000420c:	00090513          	mv	a0,s2
    80004210:	00000097          	auipc	ra,0x0
    80004214:	f34080e7          	jalr	-204(ra) # 80004144 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004218:	00048863          	beqz	s1,80004228 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    8000421c:	00048513          	mv	a0,s1
    80004220:	fffff097          	auipc	ra,0xfffff
    80004224:	f54080e7          	jalr	-172(ra) # 80003174 <_ZN9Scheduler3putEP3PCB>
}
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	00013903          	ld	s2,0(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004240:	01052783          	lw	a5,16(a0)
    80004244:	0017879b          	addiw	a5,a5,1
    80004248:	0007871b          	sext.w	a4,a5
    8000424c:	00f52823          	sw	a5,16(a0)
    80004250:	00e05663          	blez	a4,8000425c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004254:	00000513          	li	a0,0
    80004258:	00008067          	ret
uint64 KSemaphore::signal() {
    8000425c:	ff010113          	addi	sp,sp,-16
    80004260:	00113423          	sd	ra,8(sp)
    80004264:	00813023          	sd	s0,0(sp)
    80004268:	01010413          	addi	s0,sp,16
        unblock();
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	f78080e7          	jalr	-136(ra) # 800041e4 <_ZN10KSemaphore7unblockEv>
}
    80004274:	00000513          	li	a0,0
    80004278:	00813083          	ld	ra,8(sp)
    8000427c:	00013403          	ld	s0,0(sp)
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret

0000000080004288 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80004288:	ff010113          	addi	sp,sp,-16
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	00813023          	sd	s0,0(sp)
    80004294:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	cec080e7          	jalr	-788(ra) # 80003f84 <_Z7kmallocm>
}
    800042a0:	00813083          	ld	ra,8(sp)
    800042a4:	00013403          	ld	s0,0(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret

00000000800042b0 <_ZN10KSemaphore14semOpenHandlerEv>:
void KSemaphore::semOpenHandler() {
    800042b0:	fd010113          	addi	sp,sp,-48
    800042b4:	02113423          	sd	ra,40(sp)
    800042b8:	02813023          	sd	s0,32(sp)
    800042bc:	00913c23          	sd	s1,24(sp)
    800042c0:	01213823          	sd	s2,16(sp)
    800042c4:	01313423          	sd	s3,8(sp)
    800042c8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800042cc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800042d0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800042d4:	01800513          	li	a0,24
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	fb0080e7          	jalr	-80(ra) # 80004288 <_ZN10KSemaphorenwEm>
    800042e0:	00050493          	mv	s1,a0
    800042e4:	0009859b          	sext.w	a1,s3
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	d50080e7          	jalr	-688(ra) # 80004038 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800042f0:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800042f4:	02048263          	beqz	s1,80004318 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800042f8:	00000513          	li	a0,0
}
    800042fc:	02813083          	ld	ra,40(sp)
    80004300:	02013403          	ld	s0,32(sp)
    80004304:	01813483          	ld	s1,24(sp)
    80004308:	01013903          	ld	s2,16(sp)
    8000430c:	00813983          	ld	s3,8(sp)
    80004310:	03010113          	addi	sp,sp,48
    80004314:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004318:	fff00513          	li	a0,-1
    8000431c:	fe1ff06f          	j	800042fc <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004320 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004320:	ff010113          	addi	sp,sp,-16
    80004324:	00113423          	sd	ra,8(sp)
    80004328:	00813023          	sd	s0,0(sp)
    8000432c:	01010413          	addi	s0,sp,16
    kfree(p);
    80004330:	00000097          	auipc	ra,0x0
    80004334:	cb0080e7          	jalr	-848(ra) # 80003fe0 <_Z5kfreePv>
}
    80004338:	00813083          	ld	ra,8(sp)
    8000433c:	00013403          	ld	s0,0(sp)
    80004340:	01010113          	addi	sp,sp,16
    80004344:	00008067          	ret

0000000080004348 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004348:	fe010113          	addi	sp,sp,-32
    8000434c:	00113c23          	sd	ra,24(sp)
    80004350:	00813823          	sd	s0,16(sp)
    80004354:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004358:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	d84080e7          	jalr	-636(ra) # 800040e0 <_ZN10KSemaphore4waitEv>
    80004364:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004368:	fe843783          	ld	a5,-24(s0)
    8000436c:	00078513          	mv	a0,a5
}
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	02010113          	addi	sp,sp,32
    8000437c:	00008067          	ret

0000000080004380 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	00113c23          	sd	ra,24(sp)
    80004388:	00813823          	sd	s0,16(sp)
    8000438c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004390:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004394:	00000097          	auipc	ra,0x0
    80004398:	eac080e7          	jalr	-340(ra) # 80004240 <_ZN10KSemaphore6signalEv>
    8000439c:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043a0:	fe843783          	ld	a5,-24(s0)
    800043a4:	00078513          	mv	a0,a5
}
    800043a8:	01813083          	ld	ra,24(sp)
    800043ac:	01013403          	ld	s0,16(sp)
    800043b0:	02010113          	addi	sp,sp,32
    800043b4:	00008067          	ret

00000000800043b8 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800043b8:	fe010113          	addi	sp,sp,-32
    800043bc:	00113c23          	sd	ra,24(sp)
    800043c0:	00813823          	sd	s0,16(sp)
    800043c4:	00913423          	sd	s1,8(sp)
    800043c8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800043cc:	00058493          	mv	s1,a1
    delete kSem;
    800043d0:	00048e63          	beqz	s1,800043ec <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800043d4:	00048513          	mv	a0,s1
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	da8080e7          	jalr	-600(ra) # 80004180 <_ZN10KSemaphoreD1Ev>
    800043e0:	00048513          	mv	a0,s1
    800043e4:	00000097          	auipc	ra,0x0
    800043e8:	f3c080e7          	jalr	-196(ra) # 80004320 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800043ec:	00000513          	li	a0,0
}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004404:	fd010113          	addi	sp,sp,-48
    80004408:	02113423          	sd	ra,40(sp)
    8000440c:	02813023          	sd	s0,32(sp)
    80004410:	00913c23          	sd	s1,24(sp)
    80004414:	01213823          	sd	s2,16(sp)
    80004418:	01313423          	sd	s3,8(sp)
    8000441c:	03010413          	addi	s0,sp,48
    80004420:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    80004424:	00005517          	auipc	a0,0x5
    80004428:	eac50513          	addi	a0,a0,-340 # 800092d0 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    8000442c:	fffff097          	auipc	ra,0xfffff
    80004430:	390080e7          	jalr	912(ra) # 800037bc <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004434:	00000993          	li	s3,0
    while (!threadEnd) {
    80004438:	00007797          	auipc	a5,0x7
    8000443c:	6787a783          	lw	a5,1656(a5) # 8000bab0 <threadEnd>
    80004440:	0c079863          	bnez	a5,80004510 <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    80004444:	00092583          	lw	a1,0(s2)
    80004448:	0305859b          	addiw	a1,a1,48
    8000444c:	00893503          	ld	a0,8(s2)
    80004450:	00002097          	auipc	ra,0x2
    80004454:	c68080e7          	jalr	-920(ra) # 800060b8 <_ZN6Buffer3putEi>
        i++;
    80004458:	0019849b          	addiw	s1,s3,1
    8000445c:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    80004460:	00007717          	auipc	a4,0x7
    80004464:	65070713          	addi	a4,a4,1616 # 8000bab0 <threadEnd>
    80004468:	00472783          	lw	a5,4(a4)
    8000446c:	0017879b          	addiw	a5,a5,1
    80004470:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	e7450513          	addi	a0,a0,-396 # 800092e8 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	340080e7          	jalr	832(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    80004484:	00092503          	lw	a0,0(s2)
    80004488:	0305051b          	addiw	a0,a0,48
    8000448c:	fffff097          	auipc	ra,0xfffff
    80004490:	3a0080e7          	jalr	928(ra) # 8000382c <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    80004494:	00092703          	lw	a4,0(s2)
    80004498:	0027179b          	slliw	a5,a4,0x2
    8000449c:	00e787bb          	addw	a5,a5,a4
    800044a0:	0017979b          	slliw	a5,a5,0x1
    800044a4:	02f4e7bb          	remw	a5,s1,a5
    800044a8:	02078e63          	beqz	a5,800044e4 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    800044ac:	00007497          	auipc	s1,0x7
    800044b0:	60448493          	addi	s1,s1,1540 # 8000bab0 <threadEnd>
    800044b4:	0044a503          	lw	a0,4(s1)
    800044b8:	0005051b          	sext.w	a0,a0
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	370080e7          	jalr	880(ra) # 8000382c <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    800044c4:	0044a783          	lw	a5,4(s1)
    800044c8:	0007879b          	sext.w	a5,a5
    800044cc:	00f00713          	li	a4,15
    800044d0:	f6e794e3          	bne	a5,a4,80004438 <_Z8producerPv+0x34>
            threadEnd = 1;
    800044d4:	00100793          	li	a5,1
    800044d8:	00007717          	auipc	a4,0x7
    800044dc:	5cf72c23          	sw	a5,1496(a4) # 8000bab0 <threadEnd>
    800044e0:	f59ff06f          	j	80004438 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    800044e4:	00005517          	auipc	a0,0x5
    800044e8:	e0c50513          	addi	a0,a0,-500 # 800092f0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800044ec:	fffff097          	auipc	ra,0xfffff
    800044f0:	2d0080e7          	jalr	720(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	e30080e7          	jalr	-464(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    800044fc:	00005517          	auipc	a0,0x5
    80004500:	e0450513          	addi	a0,a0,-508 # 80009300 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	2b8080e7          	jalr	696(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    8000450c:	fa1ff06f          	j	800044ac <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	e0850513          	addi	a0,a0,-504 # 80009318 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    80004518:	fffff097          	auipc	ra,0xfffff
    8000451c:	2a4080e7          	jalr	676(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004520:	01093503          	ld	a0,16(s2)
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	ed8080e7          	jalr	-296(ra) # 800013fc <sem_signal>
}
    8000452c:	02813083          	ld	ra,40(sp)
    80004530:	02013403          	ld	s0,32(sp)
    80004534:	01813483          	ld	s1,24(sp)
    80004538:	01013903          	ld	s2,16(sp)
    8000453c:	00813983          	ld	s3,8(sp)
    80004540:	03010113          	addi	sp,sp,48
    80004544:	00008067          	ret

0000000080004548 <_Z8consumerPv>:

void consumer(void *arg) {
    80004548:	fd010113          	addi	sp,sp,-48
    8000454c:	02113423          	sd	ra,40(sp)
    80004550:	02813023          	sd	s0,32(sp)
    80004554:	00913c23          	sd	s1,24(sp)
    80004558:	01213823          	sd	s2,16(sp)
    8000455c:	01313423          	sd	s3,8(sp)
    80004560:	01413023          	sd	s4,0(sp)
    80004564:	03010413          	addi	s0,sp,48
    80004568:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	dc450513          	addi	a0,a0,-572 # 80009330 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    80004574:	fffff097          	auipc	ra,0xfffff
    80004578:	248080e7          	jalr	584(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    int i = 0;
    8000457c:	00000a13          	li	s4,0
    80004580:	0200006f          	j	800045a0 <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	da0080e7          	jalr	-608(ra) # 80001324 <thread_dispatch>
    8000458c:	0680006f          	j	800045f4 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    80004590:	00005517          	auipc	a0,0x5
    80004594:	b8050513          	addi	a0,a0,-1152 # 80009110 <CONSOLE_STATUS+0x100>
    80004598:	fffff097          	auipc	ra,0xfffff
    8000459c:	224080e7          	jalr	548(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    800045a0:	00007797          	auipc	a5,0x7
    800045a4:	5107a783          	lw	a5,1296(a5) # 8000bab0 <threadEnd>
    800045a8:	04079e63          	bnez	a5,80004604 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    800045ac:	0089b503          	ld	a0,8(s3)
    800045b0:	00002097          	auipc	ra,0x2
    800045b4:	b98080e7          	jalr	-1128(ra) # 80006148 <_ZN6Buffer3getEv>
    800045b8:	00050913          	mv	s2,a0
        i++;
    800045bc:	001a049b          	addiw	s1,s4,1
    800045c0:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    800045c4:	00005517          	auipc	a0,0x5
    800045c8:	d8450513          	addi	a0,a0,-636 # 80009348 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    800045cc:	fffff097          	auipc	ra,0xfffff
    800045d0:	1f0080e7          	jalr	496(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    800045d4:	00090513          	mv	a0,s2
    800045d8:	fffff097          	auipc	ra,0xfffff
    800045dc:	254080e7          	jalr	596(ra) # 8000382c <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    800045e0:	0009a703          	lw	a4,0(s3)
    800045e4:	0027179b          	slliw	a5,a4,0x2
    800045e8:	00e787bb          	addw	a5,a5,a4
    800045ec:	02f4e7bb          	remw	a5,s1,a5
    800045f0:	f8078ae3          	beqz	a5,80004584 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    800045f4:	05000793          	li	a5,80
    800045f8:	02f4e4bb          	remw	s1,s1,a5
    800045fc:	fa0492e3          	bnez	s1,800045a0 <_Z8consumerPv+0x58>
    80004600:	f91ff06f          	j	80004590 <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	d4c50513          	addi	a0,a0,-692 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    8000460c:	fffff097          	auipc	ra,0xfffff
    80004610:	1b0080e7          	jalr	432(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004614:	0109b503          	ld	a0,16(s3)
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	de4080e7          	jalr	-540(ra) # 800013fc <sem_signal>
}
    80004620:	02813083          	ld	ra,40(sp)
    80004624:	02013403          	ld	s0,32(sp)
    80004628:	01813483          	ld	s1,24(sp)
    8000462c:	01013903          	ld	s2,16(sp)
    80004630:	00813983          	ld	s3,8(sp)
    80004634:	00013a03          	ld	s4,0(sp)
    80004638:	03010113          	addi	sp,sp,48
    8000463c:	00008067          	ret

0000000080004640 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	01213023          	sd	s2,0(sp)
    80004654:	02010413          	addi	s0,sp,32
    80004658:	00050493          	mv	s1,a0
    int i = 0;
    8000465c:	00000913          	li	s2,0
    80004660:	00c0006f          	j	8000466c <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	cc0080e7          	jalr	-832(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    8000466c:	00004097          	auipc	ra,0x4
    80004670:	c6c080e7          	jalr	-916(ra) # 800082d8 <__getc>
    while ((key = getc()) != 0x1b) {
    80004674:	0005059b          	sext.w	a1,a0
    80004678:	01b00793          	li	a5,27
    8000467c:	02f58a63          	beq	a1,a5,800046b0 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004680:	0084b503          	ld	a0,8(s1)
    80004684:	00002097          	auipc	ra,0x2
    80004688:	a34080e7          	jalr	-1484(ra) # 800060b8 <_ZN6Buffer3putEi>
        i++;
    8000468c:	0019071b          	addiw	a4,s2,1
    80004690:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004694:	0004a683          	lw	a3,0(s1)
    80004698:	0026979b          	slliw	a5,a3,0x2
    8000469c:	00d787bb          	addw	a5,a5,a3
    800046a0:	0017979b          	slliw	a5,a5,0x1
    800046a4:	02f767bb          	remw	a5,a4,a5
    800046a8:	fc0792e3          	bnez	a5,8000466c <_Z16producerKeyboardPv+0x2c>
    800046ac:	fb9ff06f          	j	80004664 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800046b0:	00100793          	li	a5,1
    800046b4:	00007717          	auipc	a4,0x7
    800046b8:	3ef72e23          	sw	a5,1020(a4) # 8000bab0 <threadEnd>
    delete data->buffer;
    800046bc:	0084b903          	ld	s2,8(s1)
    800046c0:	00090e63          	beqz	s2,800046dc <_Z16producerKeyboardPv+0x9c>
    800046c4:	00090513          	mv	a0,s2
    800046c8:	00002097          	auipc	ra,0x2
    800046cc:	944080e7          	jalr	-1724(ra) # 8000600c <_ZN6BufferD1Ev>
    800046d0:	00090513          	mv	a0,s2
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	ca4080e7          	jalr	-860(ra) # 80003378 <_ZdlPv>
    sem_signal(data->wait);
    800046dc:	0104b503          	ld	a0,16(s1)
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	d1c080e7          	jalr	-740(ra) # 800013fc <sem_signal>
}
    800046e8:	01813083          	ld	ra,24(sp)
    800046ec:	01013403          	ld	s0,16(sp)
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	00013903          	ld	s2,0(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	00008067          	ret

0000000080004700 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004700:	f6010113          	addi	sp,sp,-160
    80004704:	08113c23          	sd	ra,152(sp)
    80004708:	08813823          	sd	s0,144(sp)
    8000470c:	08913423          	sd	s1,136(sp)
    80004710:	09213023          	sd	s2,128(sp)
    80004714:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004718:	00005517          	auipc	a0,0x5
    8000471c:	c5050513          	addi	a0,a0,-944 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    80004720:	00001097          	auipc	ra,0x1
    80004724:	13c080e7          	jalr	316(ra) # 8000585c <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004728:	00005517          	auipc	a0,0x5
    8000472c:	c6050513          	addi	a0,a0,-928 # 80009388 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004730:	00001097          	auipc	ra,0x1
    80004734:	12c080e7          	jalr	300(ra) # 8000585c <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	c7050513          	addi	a0,a0,-912 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	11c080e7          	jalr	284(ra) # 8000585c <_Z11printStringPKc>
    80004748:	00000613          	li	a2,0
    8000474c:	00a00593          	li	a1,10
    80004750:	00300513          	li	a0,3
    80004754:	00001097          	auipc	ra,0x1
    80004758:	2a0080e7          	jalr	672(ra) # 800059f4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	c6450513          	addi	a0,a0,-924 # 800093c0 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	0f8080e7          	jalr	248(ra) # 8000585c <_Z11printStringPKc>
    8000476c:	00000613          	li	a2,0
    80004770:	00a00593          	li	a1,10
    80004774:	00100513          	li	a0,1
    80004778:	00001097          	auipc	ra,0x1
    8000477c:	27c080e7          	jalr	636(ra) # 800059f4 <_Z8printIntiii>
    printString(".\n");
    80004780:	00005517          	auipc	a0,0x5
    80004784:	af850513          	addi	a0,a0,-1288 # 80009278 <CONSOLE_STATUS+0x268>
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	0d4080e7          	jalr	212(ra) # 8000585c <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004790:	03800513          	li	a0,56
    80004794:	fffff097          	auipc	ra,0xfffff
    80004798:	bbc080e7          	jalr	-1092(ra) # 80003350 <_Znwm>
    8000479c:	00050913          	mv	s2,a0
    800047a0:	00100593          	li	a1,1
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	7e0080e7          	jalr	2016(ra) # 80005f84 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800047ac:	00000593          	li	a1,0
    800047b0:	00007517          	auipc	a0,0x7
    800047b4:	30850513          	addi	a0,a0,776 # 8000bab8 <waitForAll>
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	bb4080e7          	jalr	-1100(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    800047c0:	00300793          	li	a5,3
    800047c4:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    800047c8:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    800047cc:	00007797          	auipc	a5,0x7
    800047d0:	2ec7b783          	ld	a5,748(a5) # 8000bab8 <waitForAll>
    800047d4:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    800047d8:	fa840613          	addi	a2,s0,-88
    800047dc:	00000597          	auipc	a1,0x0
    800047e0:	d6c58593          	addi	a1,a1,-660 # 80004548 <_Z8consumerPv>
    800047e4:	fc040513          	addi	a0,s0,-64
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	abc080e7          	jalr	-1348(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    800047f0:	00000493          	li	s1,0
    800047f4:	00200793          	li	a5,2
    800047f8:	0697c063          	blt	a5,s1,80004858 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    800047fc:	00149613          	slli	a2,s1,0x1
    80004800:	009607b3          	add	a5,a2,s1
    80004804:	00379793          	slli	a5,a5,0x3
    80004808:	fe040713          	addi	a4,s0,-32
    8000480c:	00f707b3          	add	a5,a4,a5
    80004810:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004814:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004818:	00007717          	auipc	a4,0x7
    8000481c:	2a073703          	ld	a4,672(a4) # 8000bab8 <waitForAll>
    80004820:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004824:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004828:	00960633          	add	a2,a2,s1
    8000482c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004830:	f6040713          	addi	a4,s0,-160
    80004834:	00c70633          	add	a2,a4,a2
    80004838:	00000597          	auipc	a1,0x0
    8000483c:	bcc58593          	addi	a1,a1,-1076 # 80004404 <_Z8producerPv>
    80004840:	fc840513          	addi	a0,s0,-56
    80004844:	00f50533          	add	a0,a0,a5
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	a5c080e7          	jalr	-1444(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004850:	0014849b          	addiw	s1,s1,1
    80004854:	fa1ff06f          	j	800047f4 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	acc080e7          	jalr	-1332(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004860:	00000493          	li	s1,0
    80004864:	0180006f          	j	8000487c <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    80004868:	00007517          	auipc	a0,0x7
    8000486c:	25053503          	ld	a0,592(a0) # 8000bab8 <waitForAll>
    80004870:	ffffd097          	auipc	ra,0xffffd
    80004874:	b60080e7          	jalr	-1184(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004878:	0014849b          	addiw	s1,s1,1
    8000487c:	00300793          	li	a5,3
    80004880:	fe97d4e3          	bge	a5,s1,80004868 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004884:	00007517          	auipc	a0,0x7
    80004888:	23453503          	ld	a0,564(a0) # 8000bab8 <waitForAll>
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	b18080e7          	jalr	-1256(ra) # 800013a4 <sem_close>
}
    80004894:	09813083          	ld	ra,152(sp)
    80004898:	09013403          	ld	s0,144(sp)
    8000489c:	08813483          	ld	s1,136(sp)
    800048a0:	08013903          	ld	s2,128(sp)
    800048a4:	0a010113          	addi	sp,sp,160
    800048a8:	00008067          	ret
    800048ac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800048b0:	00090513          	mv	a0,s2
    800048b4:	fffff097          	auipc	ra,0xfffff
    800048b8:	ac4080e7          	jalr	-1340(ra) # 80003378 <_ZdlPv>
    800048bc:	00048513          	mv	a0,s1
    800048c0:	00008097          	auipc	ra,0x8
    800048c4:	2e8080e7          	jalr	744(ra) # 8000cba8 <_Unwind_Resume>

00000000800048c8 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048c8:	fe010113          	addi	sp,sp,-32
    800048cc:	00113c23          	sd	ra,24(sp)
    800048d0:	00813823          	sd	s0,16(sp)
    800048d4:	00913423          	sd	s1,8(sp)
    800048d8:	01213023          	sd	s2,0(sp)
    800048dc:	02010413          	addi	s0,sp,32
    800048e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048e4:	00100793          	li	a5,1
    800048e8:	02a7f863          	bgeu	a5,a0,80004918 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048ec:	00a00793          	li	a5,10
    800048f0:	02f577b3          	remu	a5,a0,a5
    800048f4:	02078e63          	beqz	a5,80004930 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048f8:	fff48513          	addi	a0,s1,-1
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	fcc080e7          	jalr	-52(ra) # 800048c8 <_ZL9fibonaccim>
    80004904:	00050913          	mv	s2,a0
    80004908:	ffe48513          	addi	a0,s1,-2
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	fbc080e7          	jalr	-68(ra) # 800048c8 <_ZL9fibonaccim>
    80004914:	00a90533          	add	a0,s2,a0
}
    80004918:	01813083          	ld	ra,24(sp)
    8000491c:	01013403          	ld	s0,16(sp)
    80004920:	00813483          	ld	s1,8(sp)
    80004924:	00013903          	ld	s2,0(sp)
    80004928:	02010113          	addi	sp,sp,32
    8000492c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	9f4080e7          	jalr	-1548(ra) # 80001324 <thread_dispatch>
    80004938:	fc1ff06f          	j	800048f8 <_ZL9fibonaccim+0x30>

000000008000493c <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    8000493c:	fe010113          	addi	sp,sp,-32
    80004940:	00113c23          	sd	ra,24(sp)
    80004944:	00813823          	sd	s0,16(sp)
    80004948:	00913423          	sd	s1,8(sp)
    8000494c:	01213023          	sd	s2,0(sp)
    80004950:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004954:	00000913          	li	s2,0
    80004958:	0380006f          	j	80004990 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	9c8080e7          	jalr	-1592(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004964:	00148493          	addi	s1,s1,1
    80004968:	000027b7          	lui	a5,0x2
    8000496c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004970:	0097ee63          	bltu	a5,s1,8000498c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004974:	00000713          	li	a4,0
    80004978:	000077b7          	lui	a5,0x7
    8000497c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004980:	fce7eee3          	bltu	a5,a4,8000495c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004984:	00170713          	addi	a4,a4,1
    80004988:	ff1ff06f          	j	80004978 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000498c:	00190913          	addi	s2,s2,1
    80004990:	00900793          	li	a5,9
    80004994:	0527e063          	bltu	a5,s2,800049d4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004998:	00005517          	auipc	a0,0x5
    8000499c:	a4050513          	addi	a0,a0,-1472 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	ebc080e7          	jalr	-324(ra) # 8000585c <_Z11printStringPKc>
    800049a8:	00000613          	li	a2,0
    800049ac:	00a00593          	li	a1,10
    800049b0:	0009051b          	sext.w	a0,s2
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	040080e7          	jalr	64(ra) # 800059f4 <_Z8printIntiii>
    800049bc:	00004517          	auipc	a0,0x4
    800049c0:	75450513          	addi	a0,a0,1876 # 80009110 <CONSOLE_STATUS+0x100>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	e98080e7          	jalr	-360(ra) # 8000585c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800049cc:	00000493          	li	s1,0
    800049d0:	f99ff06f          	j	80004968 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800049d4:	00005517          	auipc	a0,0x5
    800049d8:	a0c50513          	addi	a0,a0,-1524 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	e80080e7          	jalr	-384(ra) # 8000585c <_Z11printStringPKc>
    finishedA = true;
    800049e4:	00100793          	li	a5,1
    800049e8:	00007717          	auipc	a4,0x7
    800049ec:	0cf70c23          	sb	a5,216(a4) # 8000bac0 <_ZL9finishedA>
}
    800049f0:	01813083          	ld	ra,24(sp)
    800049f4:	01013403          	ld	s0,16(sp)
    800049f8:	00813483          	ld	s1,8(sp)
    800049fc:	00013903          	ld	s2,0(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret

0000000080004a08 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	01213023          	sd	s2,0(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a20:	00000913          	li	s2,0
    80004a24:	0380006f          	j	80004a5c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	8fc080e7          	jalr	-1796(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a30:	00148493          	addi	s1,s1,1
    80004a34:	000027b7          	lui	a5,0x2
    80004a38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a3c:	0097ee63          	bltu	a5,s1,80004a58 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a40:	00000713          	li	a4,0
    80004a44:	000077b7          	lui	a5,0x7
    80004a48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a4c:	fce7eee3          	bltu	a5,a4,80004a28 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004a50:	00170713          	addi	a4,a4,1
    80004a54:	ff1ff06f          	j	80004a44 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a58:	00190913          	addi	s2,s2,1
    80004a5c:	00f00793          	li	a5,15
    80004a60:	0527e063          	bltu	a5,s2,80004aa0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	98c50513          	addi	a0,a0,-1652 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	df0080e7          	jalr	-528(ra) # 8000585c <_Z11printStringPKc>
    80004a74:	00000613          	li	a2,0
    80004a78:	00a00593          	li	a1,10
    80004a7c:	0009051b          	sext.w	a0,s2
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	f74080e7          	jalr	-140(ra) # 800059f4 <_Z8printIntiii>
    80004a88:	00004517          	auipc	a0,0x4
    80004a8c:	68850513          	addi	a0,a0,1672 # 80009110 <CONSOLE_STATUS+0x100>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	dcc080e7          	jalr	-564(ra) # 8000585c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a98:	00000493          	li	s1,0
    80004a9c:	f99ff06f          	j	80004a34 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	95850513          	addi	a0,a0,-1704 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	db4080e7          	jalr	-588(ra) # 8000585c <_Z11printStringPKc>
    finishedB = true;
    80004ab0:	00100793          	li	a5,1
    80004ab4:	00007717          	auipc	a4,0x7
    80004ab8:	00f706a3          	sb	a5,13(a4) # 8000bac1 <_ZL9finishedB>
    thread_dispatch();
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	868080e7          	jalr	-1944(ra) # 80001324 <thread_dispatch>
}
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	02010113          	addi	sp,sp,32
    80004ad8:	00008067          	ret

0000000080004adc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004adc:	fe010113          	addi	sp,sp,-32
    80004ae0:	00113c23          	sd	ra,24(sp)
    80004ae4:	00813823          	sd	s0,16(sp)
    80004ae8:	00913423          	sd	s1,8(sp)
    80004aec:	01213023          	sd	s2,0(sp)
    80004af0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004af4:	00000493          	li	s1,0
    80004af8:	0400006f          	j	80004b38 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004afc:	00005517          	auipc	a0,0x5
    80004b00:	90c50513          	addi	a0,a0,-1780 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	d58080e7          	jalr	-680(ra) # 8000585c <_Z11printStringPKc>
    80004b0c:	00000613          	li	a2,0
    80004b10:	00a00593          	li	a1,10
    80004b14:	00048513          	mv	a0,s1
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	edc080e7          	jalr	-292(ra) # 800059f4 <_Z8printIntiii>
    80004b20:	00004517          	auipc	a0,0x4
    80004b24:	5f050513          	addi	a0,a0,1520 # 80009110 <CONSOLE_STATUS+0x100>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	d34080e7          	jalr	-716(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b30:	0014849b          	addiw	s1,s1,1
    80004b34:	0ff4f493          	andi	s1,s1,255
    80004b38:	00200793          	li	a5,2
    80004b3c:	fc97f0e3          	bgeu	a5,s1,80004afc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004b40:	00005517          	auipc	a0,0x5
    80004b44:	8d050513          	addi	a0,a0,-1840 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	d14080e7          	jalr	-748(ra) # 8000585c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b50:	00700313          	li	t1,7
    thread_dispatch();
    80004b54:	ffffc097          	auipc	ra,0xffffc
    80004b58:	7d0080e7          	jalr	2000(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b5c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004b60:	00005517          	auipc	a0,0x5
    80004b64:	8c050513          	addi	a0,a0,-1856 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	cf4080e7          	jalr	-780(ra) # 8000585c <_Z11printStringPKc>
    80004b70:	00000613          	li	a2,0
    80004b74:	00a00593          	li	a1,10
    80004b78:	0009051b          	sext.w	a0,s2
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	e78080e7          	jalr	-392(ra) # 800059f4 <_Z8printIntiii>
    80004b84:	00004517          	auipc	a0,0x4
    80004b88:	58c50513          	addi	a0,a0,1420 # 80009110 <CONSOLE_STATUS+0x100>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	cd0080e7          	jalr	-816(ra) # 8000585c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004b94:	00c00513          	li	a0,12
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	d30080e7          	jalr	-720(ra) # 800048c8 <_ZL9fibonaccim>
    80004ba0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004ba4:	00005517          	auipc	a0,0x5
    80004ba8:	88450513          	addi	a0,a0,-1916 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	cb0080e7          	jalr	-848(ra) # 8000585c <_Z11printStringPKc>
    80004bb4:	00000613          	li	a2,0
    80004bb8:	00a00593          	li	a1,10
    80004bbc:	0009051b          	sext.w	a0,s2
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	e34080e7          	jalr	-460(ra) # 800059f4 <_Z8printIntiii>
    80004bc8:	00004517          	auipc	a0,0x4
    80004bcc:	54850513          	addi	a0,a0,1352 # 80009110 <CONSOLE_STATUS+0x100>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	c8c080e7          	jalr	-884(ra) # 8000585c <_Z11printStringPKc>
    80004bd8:	0400006f          	j	80004c18 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004bdc:	00005517          	auipc	a0,0x5
    80004be0:	82c50513          	addi	a0,a0,-2004 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	c78080e7          	jalr	-904(ra) # 8000585c <_Z11printStringPKc>
    80004bec:	00000613          	li	a2,0
    80004bf0:	00a00593          	li	a1,10
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	dfc080e7          	jalr	-516(ra) # 800059f4 <_Z8printIntiii>
    80004c00:	00004517          	auipc	a0,0x4
    80004c04:	51050513          	addi	a0,a0,1296 # 80009110 <CONSOLE_STATUS+0x100>
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	c54080e7          	jalr	-940(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c10:	0014849b          	addiw	s1,s1,1
    80004c14:	0ff4f493          	andi	s1,s1,255
    80004c18:	00500793          	li	a5,5
    80004c1c:	fc97f0e3          	bgeu	a5,s1,80004bdc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004c20:	00004517          	auipc	a0,0x4
    80004c24:	7c050513          	addi	a0,a0,1984 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	c34080e7          	jalr	-972(ra) # 8000585c <_Z11printStringPKc>
    finishedC = true;
    80004c30:	00100793          	li	a5,1
    80004c34:	00007717          	auipc	a4,0x7
    80004c38:	e8f70723          	sb	a5,-370(a4) # 8000bac2 <_ZL9finishedC>
    thread_dispatch();
    80004c3c:	ffffc097          	auipc	ra,0xffffc
    80004c40:	6e8080e7          	jalr	1768(ra) # 80001324 <thread_dispatch>
}
    80004c44:	01813083          	ld	ra,24(sp)
    80004c48:	01013403          	ld	s0,16(sp)
    80004c4c:	00813483          	ld	s1,8(sp)
    80004c50:	00013903          	ld	s2,0(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret

0000000080004c5c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	01213023          	sd	s2,0(sp)
    80004c70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c74:	00a00493          	li	s1,10
    80004c78:	0400006f          	j	80004cb8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	7bc50513          	addi	a0,a0,1980 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	bd8080e7          	jalr	-1064(ra) # 8000585c <_Z11printStringPKc>
    80004c8c:	00000613          	li	a2,0
    80004c90:	00a00593          	li	a1,10
    80004c94:	00048513          	mv	a0,s1
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	d5c080e7          	jalr	-676(ra) # 800059f4 <_Z8printIntiii>
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	47050513          	addi	a0,a0,1136 # 80009110 <CONSOLE_STATUS+0x100>
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	bb4080e7          	jalr	-1100(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cb0:	0014849b          	addiw	s1,s1,1
    80004cb4:	0ff4f493          	andi	s1,s1,255
    80004cb8:	00c00793          	li	a5,12
    80004cbc:	fc97f0e3          	bgeu	a5,s1,80004c7c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004cc0:	00004517          	auipc	a0,0x4
    80004cc4:	78050513          	addi	a0,a0,1920 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	b94080e7          	jalr	-1132(ra) # 8000585c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cd0:	00500313          	li	t1,5
    thread_dispatch();
    80004cd4:	ffffc097          	auipc	ra,0xffffc
    80004cd8:	650080e7          	jalr	1616(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004cdc:	01000513          	li	a0,16
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	be8080e7          	jalr	-1048(ra) # 800048c8 <_ZL9fibonaccim>
    80004ce8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	76450513          	addi	a0,a0,1892 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	b68080e7          	jalr	-1176(ra) # 8000585c <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	0009051b          	sext.w	a0,s2
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	cec080e7          	jalr	-788(ra) # 800059f4 <_Z8printIntiii>
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	40050513          	addi	a0,a0,1024 # 80009110 <CONSOLE_STATUS+0x100>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	b44080e7          	jalr	-1212(ra) # 8000585c <_Z11printStringPKc>
    80004d20:	0400006f          	j	80004d60 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	71450513          	addi	a0,a0,1812 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	b30080e7          	jalr	-1232(ra) # 8000585c <_Z11printStringPKc>
    80004d34:	00000613          	li	a2,0
    80004d38:	00a00593          	li	a1,10
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	cb4080e7          	jalr	-844(ra) # 800059f4 <_Z8printIntiii>
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	3c850513          	addi	a0,a0,968 # 80009110 <CONSOLE_STATUS+0x100>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	b0c080e7          	jalr	-1268(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d58:	0014849b          	addiw	s1,s1,1
    80004d5c:	0ff4f493          	andi	s1,s1,255
    80004d60:	00f00793          	li	a5,15
    80004d64:	fc97f0e3          	bgeu	a5,s1,80004d24 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	6f850513          	addi	a0,a0,1784 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	aec080e7          	jalr	-1300(ra) # 8000585c <_Z11printStringPKc>
    finishedD = true;
    80004d78:	00100793          	li	a5,1
    80004d7c:	00007717          	auipc	a4,0x7
    80004d80:	d4f703a3          	sb	a5,-697(a4) # 8000bac3 <_ZL9finishedD>
    thread_dispatch();
    80004d84:	ffffc097          	auipc	ra,0xffffc
    80004d88:	5a0080e7          	jalr	1440(ra) # 80001324 <thread_dispatch>
}
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	00813483          	ld	s1,8(sp)
    80004d98:	00013903          	ld	s2,0(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004da4:	fc010113          	addi	sp,sp,-64
    80004da8:	02113c23          	sd	ra,56(sp)
    80004dac:	02813823          	sd	s0,48(sp)
    80004db0:	02913423          	sd	s1,40(sp)
    80004db4:	03213023          	sd	s2,32(sp)
    80004db8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004dbc:	02000513          	li	a0,32
    80004dc0:	ffffe097          	auipc	ra,0xffffe
    80004dc4:	590080e7          	jalr	1424(ra) # 80003350 <_Znwm>
    80004dc8:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	750080e7          	jalr	1872(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004dd4:	00007797          	auipc	a5,0x7
    80004dd8:	b1c78793          	addi	a5,a5,-1252 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80004ddc:	00f4b023          	sd	a5,0(s1)
    80004de0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	68c50513          	addi	a0,a0,1676 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	a70080e7          	jalr	-1424(ra) # 8000585c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004df4:	02000513          	li	a0,32
    80004df8:	ffffe097          	auipc	ra,0xffffe
    80004dfc:	558080e7          	jalr	1368(ra) # 80003350 <_Znwm>
    80004e00:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004e04:	ffffe097          	auipc	ra,0xffffe
    80004e08:	718080e7          	jalr	1816(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004e0c:	00007797          	auipc	a5,0x7
    80004e10:	b0c78793          	addi	a5,a5,-1268 # 8000b918 <_ZTV7WorkerB+0x10>
    80004e14:	00f4b023          	sd	a5,0(s1)
    80004e18:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004e1c:	00004517          	auipc	a0,0x4
    80004e20:	66c50513          	addi	a0,a0,1644 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	a38080e7          	jalr	-1480(ra) # 8000585c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004e2c:	02000513          	li	a0,32
    80004e30:	ffffe097          	auipc	ra,0xffffe
    80004e34:	520080e7          	jalr	1312(ra) # 80003350 <_Znwm>
    80004e38:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	6e0080e7          	jalr	1760(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004e44:	00007797          	auipc	a5,0x7
    80004e48:	afc78793          	addi	a5,a5,-1284 # 8000b940 <_ZTV7WorkerC+0x10>
    80004e4c:	00f4b023          	sd	a5,0(s1)
    80004e50:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	64c50513          	addi	a0,a0,1612 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	a00080e7          	jalr	-1536(ra) # 8000585c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004e64:	02000513          	li	a0,32
    80004e68:	ffffe097          	auipc	ra,0xffffe
    80004e6c:	4e8080e7          	jalr	1256(ra) # 80003350 <_Znwm>
    80004e70:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004e74:	ffffe097          	auipc	ra,0xffffe
    80004e78:	6a8080e7          	jalr	1704(ra) # 8000351c <_ZN6ThreadC1Ev>
    80004e7c:	00007797          	auipc	a5,0x7
    80004e80:	aec78793          	addi	a5,a5,-1300 # 8000b968 <_ZTV7WorkerD+0x10>
    80004e84:	00f4b023          	sd	a5,0(s1)
    80004e88:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004e8c:	00004517          	auipc	a0,0x4
    80004e90:	62c50513          	addi	a0,a0,1580 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	9c8080e7          	jalr	-1592(ra) # 8000585c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004e9c:	00000493          	li	s1,0
    80004ea0:	00300793          	li	a5,3
    80004ea4:	0297c663          	blt	a5,s1,80004ed0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004ea8:	00349793          	slli	a5,s1,0x3
    80004eac:	fe040713          	addi	a4,s0,-32
    80004eb0:	00f707b3          	add	a5,a4,a5
    80004eb4:	fe07b503          	ld	a0,-32(a5)
    80004eb8:	ffffe097          	auipc	ra,0xffffe
    80004ebc:	568080e7          	jalr	1384(ra) # 80003420 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004ec0:	0014849b          	addiw	s1,s1,1
    80004ec4:	fddff06f          	j	80004ea0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004ec8:	ffffe097          	auipc	ra,0xffffe
    80004ecc:	59c080e7          	jalr	1436(ra) # 80003464 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ed0:	00007797          	auipc	a5,0x7
    80004ed4:	bf07c783          	lbu	a5,-1040(a5) # 8000bac0 <_ZL9finishedA>
    80004ed8:	fe0788e3          	beqz	a5,80004ec8 <_Z20Threads_CPP_API_testv+0x124>
    80004edc:	00007797          	auipc	a5,0x7
    80004ee0:	be57c783          	lbu	a5,-1051(a5) # 8000bac1 <_ZL9finishedB>
    80004ee4:	fe0782e3          	beqz	a5,80004ec8 <_Z20Threads_CPP_API_testv+0x124>
    80004ee8:	00007797          	auipc	a5,0x7
    80004eec:	bda7c783          	lbu	a5,-1062(a5) # 8000bac2 <_ZL9finishedC>
    80004ef0:	fc078ce3          	beqz	a5,80004ec8 <_Z20Threads_CPP_API_testv+0x124>
    80004ef4:	00007797          	auipc	a5,0x7
    80004ef8:	bcf7c783          	lbu	a5,-1073(a5) # 8000bac3 <_ZL9finishedD>
    80004efc:	fc0786e3          	beqz	a5,80004ec8 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004f00:	fc040493          	addi	s1,s0,-64
    80004f04:	0080006f          	j	80004f0c <_Z20Threads_CPP_API_testv+0x168>
    80004f08:	00848493          	addi	s1,s1,8
    80004f0c:	fe040793          	addi	a5,s0,-32
    80004f10:	08f48663          	beq	s1,a5,80004f9c <_Z20Threads_CPP_API_testv+0x1f8>
    80004f14:	0004b503          	ld	a0,0(s1)
    80004f18:	fe0508e3          	beqz	a0,80004f08 <_Z20Threads_CPP_API_testv+0x164>
    80004f1c:	00053783          	ld	a5,0(a0)
    80004f20:	0087b783          	ld	a5,8(a5)
    80004f24:	000780e7          	jalr	a5
    80004f28:	fe1ff06f          	j	80004f08 <_Z20Threads_CPP_API_testv+0x164>
    80004f2c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004f30:	00048513          	mv	a0,s1
    80004f34:	ffffe097          	auipc	ra,0xffffe
    80004f38:	444080e7          	jalr	1092(ra) # 80003378 <_ZdlPv>
    80004f3c:	00090513          	mv	a0,s2
    80004f40:	00008097          	auipc	ra,0x8
    80004f44:	c68080e7          	jalr	-920(ra) # 8000cba8 <_Unwind_Resume>
    80004f48:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004f4c:	00048513          	mv	a0,s1
    80004f50:	ffffe097          	auipc	ra,0xffffe
    80004f54:	428080e7          	jalr	1064(ra) # 80003378 <_ZdlPv>
    80004f58:	00090513          	mv	a0,s2
    80004f5c:	00008097          	auipc	ra,0x8
    80004f60:	c4c080e7          	jalr	-948(ra) # 8000cba8 <_Unwind_Resume>
    80004f64:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004f68:	00048513          	mv	a0,s1
    80004f6c:	ffffe097          	auipc	ra,0xffffe
    80004f70:	40c080e7          	jalr	1036(ra) # 80003378 <_ZdlPv>
    80004f74:	00090513          	mv	a0,s2
    80004f78:	00008097          	auipc	ra,0x8
    80004f7c:	c30080e7          	jalr	-976(ra) # 8000cba8 <_Unwind_Resume>
    80004f80:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004f84:	00048513          	mv	a0,s1
    80004f88:	ffffe097          	auipc	ra,0xffffe
    80004f8c:	3f0080e7          	jalr	1008(ra) # 80003378 <_ZdlPv>
    80004f90:	00090513          	mv	a0,s2
    80004f94:	00008097          	auipc	ra,0x8
    80004f98:	c14080e7          	jalr	-1004(ra) # 8000cba8 <_Unwind_Resume>
    80004f9c:	03813083          	ld	ra,56(sp)
    80004fa0:	03013403          	ld	s0,48(sp)
    80004fa4:	02813483          	ld	s1,40(sp)
    80004fa8:	02013903          	ld	s2,32(sp)
    80004fac:	04010113          	addi	sp,sp,64
    80004fb0:	00008067          	ret

0000000080004fb4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004fb4:	ff010113          	addi	sp,sp,-16
    80004fb8:	00113423          	sd	ra,8(sp)
    80004fbc:	00813023          	sd	s0,0(sp)
    80004fc0:	01010413          	addi	s0,sp,16
    80004fc4:	00007797          	auipc	a5,0x7
    80004fc8:	92c78793          	addi	a5,a5,-1748 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80004fcc:	00f53023          	sd	a5,0(a0)
    80004fd0:	ffffe097          	auipc	ra,0xffffe
    80004fd4:	2c4080e7          	jalr	708(ra) # 80003294 <_ZN6ThreadD1Ev>
    80004fd8:	00813083          	ld	ra,8(sp)
    80004fdc:	00013403          	ld	s0,0(sp)
    80004fe0:	01010113          	addi	sp,sp,16
    80004fe4:	00008067          	ret

0000000080004fe8 <_ZN7WorkerAD0Ev>:
    80004fe8:	fe010113          	addi	sp,sp,-32
    80004fec:	00113c23          	sd	ra,24(sp)
    80004ff0:	00813823          	sd	s0,16(sp)
    80004ff4:	00913423          	sd	s1,8(sp)
    80004ff8:	02010413          	addi	s0,sp,32
    80004ffc:	00050493          	mv	s1,a0
    80005000:	00007797          	auipc	a5,0x7
    80005004:	8f078793          	addi	a5,a5,-1808 # 8000b8f0 <_ZTV7WorkerA+0x10>
    80005008:	00f53023          	sd	a5,0(a0)
    8000500c:	ffffe097          	auipc	ra,0xffffe
    80005010:	288080e7          	jalr	648(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005014:	00048513          	mv	a0,s1
    80005018:	ffffe097          	auipc	ra,0xffffe
    8000501c:	360080e7          	jalr	864(ra) # 80003378 <_ZdlPv>
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	02010113          	addi	sp,sp,32
    80005030:	00008067          	ret

0000000080005034 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00113423          	sd	ra,8(sp)
    8000503c:	00813023          	sd	s0,0(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	00007797          	auipc	a5,0x7
    80005048:	8d478793          	addi	a5,a5,-1836 # 8000b918 <_ZTV7WorkerB+0x10>
    8000504c:	00f53023          	sd	a5,0(a0)
    80005050:	ffffe097          	auipc	ra,0xffffe
    80005054:	244080e7          	jalr	580(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <_ZN7WorkerBD0Ev>:
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	02010413          	addi	s0,sp,32
    8000507c:	00050493          	mv	s1,a0
    80005080:	00007797          	auipc	a5,0x7
    80005084:	89878793          	addi	a5,a5,-1896 # 8000b918 <_ZTV7WorkerB+0x10>
    80005088:	00f53023          	sd	a5,0(a0)
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	208080e7          	jalr	520(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005094:	00048513          	mv	a0,s1
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	2e0080e7          	jalr	736(ra) # 80003378 <_ZdlPv>
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800050b4:	ff010113          	addi	sp,sp,-16
    800050b8:	00113423          	sd	ra,8(sp)
    800050bc:	00813023          	sd	s0,0(sp)
    800050c0:	01010413          	addi	s0,sp,16
    800050c4:	00007797          	auipc	a5,0x7
    800050c8:	87c78793          	addi	a5,a5,-1924 # 8000b940 <_ZTV7WorkerC+0x10>
    800050cc:	00f53023          	sd	a5,0(a0)
    800050d0:	ffffe097          	auipc	ra,0xffffe
    800050d4:	1c4080e7          	jalr	452(ra) # 80003294 <_ZN6ThreadD1Ev>
    800050d8:	00813083          	ld	ra,8(sp)
    800050dc:	00013403          	ld	s0,0(sp)
    800050e0:	01010113          	addi	sp,sp,16
    800050e4:	00008067          	ret

00000000800050e8 <_ZN7WorkerCD0Ev>:
    800050e8:	fe010113          	addi	sp,sp,-32
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	00813823          	sd	s0,16(sp)
    800050f4:	00913423          	sd	s1,8(sp)
    800050f8:	02010413          	addi	s0,sp,32
    800050fc:	00050493          	mv	s1,a0
    80005100:	00007797          	auipc	a5,0x7
    80005104:	84078793          	addi	a5,a5,-1984 # 8000b940 <_ZTV7WorkerC+0x10>
    80005108:	00f53023          	sd	a5,0(a0)
    8000510c:	ffffe097          	auipc	ra,0xffffe
    80005110:	188080e7          	jalr	392(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005114:	00048513          	mv	a0,s1
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	260080e7          	jalr	608(ra) # 80003378 <_ZdlPv>
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	02010113          	addi	sp,sp,32
    80005130:	00008067          	ret

0000000080005134 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005134:	ff010113          	addi	sp,sp,-16
    80005138:	00113423          	sd	ra,8(sp)
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	01010413          	addi	s0,sp,16
    80005144:	00007797          	auipc	a5,0x7
    80005148:	82478793          	addi	a5,a5,-2012 # 8000b968 <_ZTV7WorkerD+0x10>
    8000514c:	00f53023          	sd	a5,0(a0)
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	144080e7          	jalr	324(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005158:	00813083          	ld	ra,8(sp)
    8000515c:	00013403          	ld	s0,0(sp)
    80005160:	01010113          	addi	sp,sp,16
    80005164:	00008067          	ret

0000000080005168 <_ZN7WorkerDD0Ev>:
    80005168:	fe010113          	addi	sp,sp,-32
    8000516c:	00113c23          	sd	ra,24(sp)
    80005170:	00813823          	sd	s0,16(sp)
    80005174:	00913423          	sd	s1,8(sp)
    80005178:	02010413          	addi	s0,sp,32
    8000517c:	00050493          	mv	s1,a0
    80005180:	00006797          	auipc	a5,0x6
    80005184:	7e878793          	addi	a5,a5,2024 # 8000b968 <_ZTV7WorkerD+0x10>
    80005188:	00f53023          	sd	a5,0(a0)
    8000518c:	ffffe097          	auipc	ra,0xffffe
    80005190:	108080e7          	jalr	264(ra) # 80003294 <_ZN6ThreadD1Ev>
    80005194:	00048513          	mv	a0,s1
    80005198:	ffffe097          	auipc	ra,0xffffe
    8000519c:	1e0080e7          	jalr	480(ra) # 80003378 <_ZdlPv>
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	02010113          	addi	sp,sp,32
    800051b0:	00008067          	ret

00000000800051b4 <_ZN7WorkerA3runEv>:
    void run() override {
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800051c4:	00000593          	li	a1,0
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	774080e7          	jalr	1908(ra) # 8000493c <_ZN7WorkerA11workerBodyAEPv>
    }
    800051d0:	00813083          	ld	ra,8(sp)
    800051d4:	00013403          	ld	s0,0(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_ZN7WorkerB3runEv>:
    void run() override {
    800051e0:	ff010113          	addi	sp,sp,-16
    800051e4:	00113423          	sd	ra,8(sp)
    800051e8:	00813023          	sd	s0,0(sp)
    800051ec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800051f0:	00000593          	li	a1,0
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	814080e7          	jalr	-2028(ra) # 80004a08 <_ZN7WorkerB11workerBodyBEPv>
    }
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret

000000008000520c <_ZN7WorkerC3runEv>:
    void run() override {
    8000520c:	ff010113          	addi	sp,sp,-16
    80005210:	00113423          	sd	ra,8(sp)
    80005214:	00813023          	sd	s0,0(sp)
    80005218:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000521c:	00000593          	li	a1,0
    80005220:	00000097          	auipc	ra,0x0
    80005224:	8bc080e7          	jalr	-1860(ra) # 80004adc <_ZN7WorkerC11workerBodyCEPv>
    }
    80005228:	00813083          	ld	ra,8(sp)
    8000522c:	00013403          	ld	s0,0(sp)
    80005230:	01010113          	addi	sp,sp,16
    80005234:	00008067          	ret

0000000080005238 <_ZN7WorkerD3runEv>:

    void run() override {
    80005238:	ff010113          	addi	sp,sp,-16
    8000523c:	00113423          	sd	ra,8(sp)
    80005240:	00813023          	sd	s0,0(sp)
    80005244:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005248:	00000593          	li	a1,0
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	a10080e7          	jalr	-1520(ra) # 80004c5c <_ZN7WorkerD11workerBodyDEPv>
    }
    80005254:	00813083          	ld	ra,8(sp)
    80005258:	00013403          	ld	s0,0(sp)
    8000525c:	01010113          	addi	sp,sp,16
    80005260:	00008067          	ret

0000000080005264 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005264:	fe010113          	addi	sp,sp,-32
    80005268:	00113c23          	sd	ra,24(sp)
    8000526c:	00813823          	sd	s0,16(sp)
    80005270:	00913423          	sd	s1,8(sp)
    80005274:	01213023          	sd	s2,0(sp)
    80005278:	02010413          	addi	s0,sp,32
    8000527c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005280:	00100793          	li	a5,1
    80005284:	02a7f863          	bgeu	a5,a0,800052b4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005288:	00a00793          	li	a5,10
    8000528c:	02f577b3          	remu	a5,a0,a5
    80005290:	02078e63          	beqz	a5,800052cc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005294:	fff48513          	addi	a0,s1,-1
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	fcc080e7          	jalr	-52(ra) # 80005264 <_ZL9fibonaccim>
    800052a0:	00050913          	mv	s2,a0
    800052a4:	ffe48513          	addi	a0,s1,-2
    800052a8:	00000097          	auipc	ra,0x0
    800052ac:	fbc080e7          	jalr	-68(ra) # 80005264 <_ZL9fibonaccim>
    800052b0:	00a90533          	add	a0,s2,a0
}
    800052b4:	01813083          	ld	ra,24(sp)
    800052b8:	01013403          	ld	s0,16(sp)
    800052bc:	00813483          	ld	s1,8(sp)
    800052c0:	00013903          	ld	s2,0(sp)
    800052c4:	02010113          	addi	sp,sp,32
    800052c8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052cc:	ffffc097          	auipc	ra,0xffffc
    800052d0:	058080e7          	jalr	88(ra) # 80001324 <thread_dispatch>
    800052d4:	fc1ff06f          	j	80005294 <_ZL9fibonaccim+0x30>

00000000800052d8 <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    thread_dispatch();
    finishedB = true;
}

void workerBodyC(void* arg) {
    800052d8:	fe010113          	addi	sp,sp,-32
    800052dc:	00113c23          	sd	ra,24(sp)
    800052e0:	00813823          	sd	s0,16(sp)
    800052e4:	00913423          	sd	s1,8(sp)
    800052e8:	01213023          	sd	s2,0(sp)
    800052ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052f0:	00000493          	li	s1,0
    800052f4:	0400006f          	j	80005334 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800052f8:	00004517          	auipc	a0,0x4
    800052fc:	11050513          	addi	a0,a0,272 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005300:	00000097          	auipc	ra,0x0
    80005304:	55c080e7          	jalr	1372(ra) # 8000585c <_Z11printStringPKc>
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	00048513          	mv	a0,s1
    80005314:	00000097          	auipc	ra,0x0
    80005318:	6e0080e7          	jalr	1760(ra) # 800059f4 <_Z8printIntiii>
    8000531c:	00004517          	auipc	a0,0x4
    80005320:	df450513          	addi	a0,a0,-524 # 80009110 <CONSOLE_STATUS+0x100>
    80005324:	00000097          	auipc	ra,0x0
    80005328:	538080e7          	jalr	1336(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000532c:	0014849b          	addiw	s1,s1,1
    80005330:	0ff4f493          	andi	s1,s1,255
    80005334:	00200793          	li	a5,2
    80005338:	fc97f0e3          	bgeu	a5,s1,800052f8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000533c:	00004517          	auipc	a0,0x4
    80005340:	0d450513          	addi	a0,a0,212 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80005344:	00000097          	auipc	ra,0x0
    80005348:	518080e7          	jalr	1304(ra) # 8000585c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000534c:	00700313          	li	t1,7
    thread_dispatch();
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	fd4080e7          	jalr	-44(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    80005358:	00004517          	auipc	a0,0x4
    8000535c:	17850513          	addi	a0,a0,376 # 800094d0 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80005360:	00000097          	auipc	ra,0x0
    80005364:	4fc080e7          	jalr	1276(ra) # 8000585c <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005368:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000536c:	00004517          	auipc	a0,0x4
    80005370:	0b450513          	addi	a0,a0,180 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005374:	00000097          	auipc	ra,0x0
    80005378:	4e8080e7          	jalr	1256(ra) # 8000585c <_Z11printStringPKc>
    8000537c:	00000613          	li	a2,0
    80005380:	00a00593          	li	a1,10
    80005384:	0009051b          	sext.w	a0,s2
    80005388:	00000097          	auipc	ra,0x0
    8000538c:	66c080e7          	jalr	1644(ra) # 800059f4 <_Z8printIntiii>
    80005390:	00004517          	auipc	a0,0x4
    80005394:	d8050513          	addi	a0,a0,-640 # 80009110 <CONSOLE_STATUS+0x100>
    80005398:	00000097          	auipc	ra,0x0
    8000539c:	4c4080e7          	jalr	1220(ra) # 8000585c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800053a0:	00c00513          	li	a0,12
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	ec0080e7          	jalr	-320(ra) # 80005264 <_ZL9fibonaccim>
    800053ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800053b0:	00004517          	auipc	a0,0x4
    800053b4:	07850513          	addi	a0,a0,120 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	4a4080e7          	jalr	1188(ra) # 8000585c <_Z11printStringPKc>
    800053c0:	00000613          	li	a2,0
    800053c4:	00a00593          	li	a1,10
    800053c8:	0009051b          	sext.w	a0,s2
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	628080e7          	jalr	1576(ra) # 800059f4 <_Z8printIntiii>
    800053d4:	00004517          	auipc	a0,0x4
    800053d8:	d3c50513          	addi	a0,a0,-708 # 80009110 <CONSOLE_STATUS+0x100>
    800053dc:	00000097          	auipc	ra,0x0
    800053e0:	480080e7          	jalr	1152(ra) # 8000585c <_Z11printStringPKc>
    800053e4:	0400006f          	j	80005424 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800053e8:	00004517          	auipc	a0,0x4
    800053ec:	02050513          	addi	a0,a0,32 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800053f0:	00000097          	auipc	ra,0x0
    800053f4:	46c080e7          	jalr	1132(ra) # 8000585c <_Z11printStringPKc>
    800053f8:	00000613          	li	a2,0
    800053fc:	00a00593          	li	a1,10
    80005400:	00048513          	mv	a0,s1
    80005404:	00000097          	auipc	ra,0x0
    80005408:	5f0080e7          	jalr	1520(ra) # 800059f4 <_Z8printIntiii>
    8000540c:	00004517          	auipc	a0,0x4
    80005410:	d0450513          	addi	a0,a0,-764 # 80009110 <CONSOLE_STATUS+0x100>
    80005414:	00000097          	auipc	ra,0x0
    80005418:	448080e7          	jalr	1096(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000541c:	0014849b          	addiw	s1,s1,1
    80005420:	0ff4f493          	andi	s1,s1,255
    80005424:	00500793          	li	a5,5
    80005428:	fc97f0e3          	bgeu	a5,s1,800053e8 <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    8000542c:	00004517          	auipc	a0,0x4
    80005430:	0b450513          	addi	a0,a0,180 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x220>
    80005434:	00000097          	auipc	ra,0x0
    80005438:	428080e7          	jalr	1064(ra) # 8000585c <_Z11printStringPKc>
    thread_dispatch();
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	ee8080e7          	jalr	-280(ra) # 80001324 <thread_dispatch>
    finishedC = true;
}
    80005444:	01813083          	ld	ra,24(sp)
    80005448:	01013403          	ld	s0,16(sp)
    8000544c:	00813483          	ld	s1,8(sp)
    80005450:	00013903          	ld	s2,0(sp)
    80005454:	02010113          	addi	sp,sp,32
    80005458:	00008067          	ret

000000008000545c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000545c:	fe010113          	addi	sp,sp,-32
    80005460:	00113c23          	sd	ra,24(sp)
    80005464:	00813823          	sd	s0,16(sp)
    80005468:	00913423          	sd	s1,8(sp)
    8000546c:	01213023          	sd	s2,0(sp)
    80005470:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005474:	00a00493          	li	s1,10
    80005478:	0400006f          	j	800054b8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000547c:	00004517          	auipc	a0,0x4
    80005480:	fbc50513          	addi	a0,a0,-68 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005484:	00000097          	auipc	ra,0x0
    80005488:	3d8080e7          	jalr	984(ra) # 8000585c <_Z11printStringPKc>
    8000548c:	00000613          	li	a2,0
    80005490:	00a00593          	li	a1,10
    80005494:	00048513          	mv	a0,s1
    80005498:	00000097          	auipc	ra,0x0
    8000549c:	55c080e7          	jalr	1372(ra) # 800059f4 <_Z8printIntiii>
    800054a0:	00004517          	auipc	a0,0x4
    800054a4:	c7050513          	addi	a0,a0,-912 # 80009110 <CONSOLE_STATUS+0x100>
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	3b4080e7          	jalr	948(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800054b0:	0014849b          	addiw	s1,s1,1
    800054b4:	0ff4f493          	andi	s1,s1,255
    800054b8:	00c00793          	li	a5,12
    800054bc:	fc97f0e3          	bgeu	a5,s1,8000547c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800054c0:	00004517          	auipc	a0,0x4
    800054c4:	f8050513          	addi	a0,a0,-128 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    800054c8:	00000097          	auipc	ra,0x0
    800054cc:	394080e7          	jalr	916(ra) # 8000585c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054d0:	00500313          	li	t1,5
    thread_dispatch();
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	e50080e7          	jalr	-432(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    800054dc:	00004517          	auipc	a0,0x4
    800054e0:	01450513          	addi	a0,a0,20 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x230>
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	378080e7          	jalr	888(ra) # 8000585c <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    800054ec:	01000513          	li	a0,16
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	d74080e7          	jalr	-652(ra) # 80005264 <_ZL9fibonaccim>
    800054f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800054fc:	00004517          	auipc	a0,0x4
    80005500:	f5450513          	addi	a0,a0,-172 # 80009450 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005504:	00000097          	auipc	ra,0x0
    80005508:	358080e7          	jalr	856(ra) # 8000585c <_Z11printStringPKc>
    8000550c:	00000613          	li	a2,0
    80005510:	00a00593          	li	a1,10
    80005514:	0009051b          	sext.w	a0,s2
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	4dc080e7          	jalr	1244(ra) # 800059f4 <_Z8printIntiii>
    80005520:	00004517          	auipc	a0,0x4
    80005524:	bf050513          	addi	a0,a0,-1040 # 80009110 <CONSOLE_STATUS+0x100>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	334080e7          	jalr	820(ra) # 8000585c <_Z11printStringPKc>
    80005530:	0400006f          	j	80005570 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005534:	00004517          	auipc	a0,0x4
    80005538:	f0450513          	addi	a0,a0,-252 # 80009438 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	320080e7          	jalr	800(ra) # 8000585c <_Z11printStringPKc>
    80005544:	00000613          	li	a2,0
    80005548:	00a00593          	li	a1,10
    8000554c:	00048513          	mv	a0,s1
    80005550:	00000097          	auipc	ra,0x0
    80005554:	4a4080e7          	jalr	1188(ra) # 800059f4 <_Z8printIntiii>
    80005558:	00004517          	auipc	a0,0x4
    8000555c:	bb850513          	addi	a0,a0,-1096 # 80009110 <CONSOLE_STATUS+0x100>
    80005560:	00000097          	auipc	ra,0x0
    80005564:	2fc080e7          	jalr	764(ra) # 8000585c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005568:	0014849b          	addiw	s1,s1,1
    8000556c:	0ff4f493          	andi	s1,s1,255
    80005570:	00f00793          	li	a5,15
    80005574:	fc97f0e3          	bgeu	a5,s1,80005534 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    80005578:	00004517          	auipc	a0,0x4
    8000557c:	ee850513          	addi	a0,a0,-280 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005580:	00000097          	auipc	ra,0x0
    80005584:	2dc080e7          	jalr	732(ra) # 8000585c <_Z11printStringPKc>
    thread_dispatch();
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	d9c080e7          	jalr	-612(ra) # 80001324 <thread_dispatch>
    finishedD = true;
}
    80005590:	01813083          	ld	ra,24(sp)
    80005594:	01013403          	ld	s0,16(sp)
    80005598:	00813483          	ld	s1,8(sp)
    8000559c:	00013903          	ld	s2,0(sp)
    800055a0:	02010113          	addi	sp,sp,32
    800055a4:	00008067          	ret

00000000800055a8 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	01213023          	sd	s2,0(sp)
    800055bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055c0:	00000913          	li	s2,0
    800055c4:	0380006f          	j	800055fc <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	d5c080e7          	jalr	-676(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800055d0:	00148493          	addi	s1,s1,1
    800055d4:	000027b7          	lui	a5,0x2
    800055d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055dc:	0097ee63          	bltu	a5,s1,800055f8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055e0:	00000713          	li	a4,0
    800055e4:	000077b7          	lui	a5,0x7
    800055e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055ec:	fce7eee3          	bltu	a5,a4,800055c8 <_Z11workerBodyAPv+0x20>
    800055f0:	00170713          	addi	a4,a4,1
    800055f4:	ff1ff06f          	j	800055e4 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800055f8:	00190913          	addi	s2,s2,1
    800055fc:	00900793          	li	a5,9
    80005600:	0527e063          	bltu	a5,s2,80005640 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005604:	00004517          	auipc	a0,0x4
    80005608:	dd450513          	addi	a0,a0,-556 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	250080e7          	jalr	592(ra) # 8000585c <_Z11printStringPKc>
    80005614:	00000613          	li	a2,0
    80005618:	00a00593          	li	a1,10
    8000561c:	0009051b          	sext.w	a0,s2
    80005620:	00000097          	auipc	ra,0x0
    80005624:	3d4080e7          	jalr	980(ra) # 800059f4 <_Z8printIntiii>
    80005628:	00004517          	auipc	a0,0x4
    8000562c:	ae850513          	addi	a0,a0,-1304 # 80009110 <CONSOLE_STATUS+0x100>
    80005630:	00000097          	auipc	ra,0x0
    80005634:	22c080e7          	jalr	556(ra) # 8000585c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005638:	00000493          	li	s1,0
    8000563c:	f99ff06f          	j	800055d4 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	da050513          	addi	a0,a0,-608 # 800093e0 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80005648:	ffffe097          	auipc	ra,0xffffe
    8000564c:	174080e7          	jalr	372(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
}
    80005650:	01813083          	ld	ra,24(sp)
    80005654:	01013403          	ld	s0,16(sp)
    80005658:	00813483          	ld	s1,8(sp)
    8000565c:	00013903          	ld	s2,0(sp)
    80005660:	02010113          	addi	sp,sp,32
    80005664:	00008067          	ret

0000000080005668 <_Z11workerBodyBPv>:
{
    80005668:	fe010113          	addi	sp,sp,-32
    8000566c:	00113c23          	sd	ra,24(sp)
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00913423          	sd	s1,8(sp)
    80005678:	01213023          	sd	s2,0(sp)
    8000567c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005680:	00000913          	li	s2,0
    80005684:	0380006f          	j	800056bc <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	c9c080e7          	jalr	-868(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005690:	00148493          	addi	s1,s1,1
    80005694:	000027b7          	lui	a5,0x2
    80005698:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000569c:	0097ee63          	bltu	a5,s1,800056b8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056a0:	00000713          	li	a4,0
    800056a4:	000077b7          	lui	a5,0x7
    800056a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056ac:	fce7eee3          	bltu	a5,a4,80005688 <_Z11workerBodyBPv+0x20>
    800056b0:	00170713          	addi	a4,a4,1
    800056b4:	ff1ff06f          	j	800056a4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800056b8:	00190913          	addi	s2,s2,1
    800056bc:	00f00793          	li	a5,15
    800056c0:	0527e063          	bltu	a5,s2,80005700 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800056c4:	00004517          	auipc	a0,0x4
    800056c8:	d2c50513          	addi	a0,a0,-724 # 800093f0 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	190080e7          	jalr	400(ra) # 8000585c <_Z11printStringPKc>
    800056d4:	00000613          	li	a2,0
    800056d8:	00a00593          	li	a1,10
    800056dc:	0009051b          	sext.w	a0,s2
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	314080e7          	jalr	788(ra) # 800059f4 <_Z8printIntiii>
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	a2850513          	addi	a0,a0,-1496 # 80009110 <CONSOLE_STATUS+0x100>
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	16c080e7          	jalr	364(ra) # 8000585c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056f8:	00000493          	li	s1,0
    800056fc:	f99ff06f          	j	80005694 <_Z11workerBodyBPv+0x2c>
    Riscv::printString("B finished!\n");
    80005700:	00004517          	auipc	a0,0x4
    80005704:	cf850513          	addi	a0,a0,-776 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005708:	ffffe097          	auipc	ra,0xffffe
    8000570c:	0b4080e7          	jalr	180(ra) # 800037bc <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    80005710:	ffffc097          	auipc	ra,0xffffc
    80005714:	c14080e7          	jalr	-1004(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    80005718:	00100793          	li	a5,1
    8000571c:	00006717          	auipc	a4,0x6
    80005720:	3af70423          	sb	a5,936(a4) # 8000bac4 <_ZL9finishedB>
}
    80005724:	01813083          	ld	ra,24(sp)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	00813483          	ld	s1,8(sp)
    80005730:	00013903          	ld	s2,0(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret

000000008000573c <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    8000573c:	fc010113          	addi	sp,sp,-64
    80005740:	02113c23          	sd	ra,56(sp)
    80005744:	02813823          	sd	s0,48(sp)
    80005748:	02913423          	sd	s1,40(sp)
    8000574c:	03213023          	sd	s2,32(sp)
    80005750:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005754:	00000613          	li	a2,0
    80005758:	00000597          	auipc	a1,0x0
    8000575c:	e5058593          	addi	a1,a1,-432 # 800055a8 <_Z11workerBodyAPv>
    80005760:	fc040513          	addi	a0,s0,-64
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	b40080e7          	jalr	-1216(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	d0450513          	addi	a0,a0,-764 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80005774:	00000097          	auipc	ra,0x0
    80005778:	0e8080e7          	jalr	232(ra) # 8000585c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000577c:	00000613          	li	a2,0
    80005780:	00000597          	auipc	a1,0x0
    80005784:	ee858593          	addi	a1,a1,-280 # 80005668 <_Z11workerBodyBPv>
    80005788:	fc840513          	addi	a0,s0,-56
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	b18080e7          	jalr	-1256(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005794:	00004517          	auipc	a0,0x4
    80005798:	cf450513          	addi	a0,a0,-780 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	0c0080e7          	jalr	192(ra) # 8000585c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800057a4:	00000613          	li	a2,0
    800057a8:	00000597          	auipc	a1,0x0
    800057ac:	b3058593          	addi	a1,a1,-1232 # 800052d8 <_Z11workerBodyCPv>
    800057b0:	fd040513          	addi	a0,s0,-48
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	af0080e7          	jalr	-1296(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    800057bc:	00004517          	auipc	a0,0x4
    800057c0:	ce450513          	addi	a0,a0,-796 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	098080e7          	jalr	152(ra) # 8000585c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057cc:	00000613          	li	a2,0
    800057d0:	00000597          	auipc	a1,0x0
    800057d4:	c8c58593          	addi	a1,a1,-884 # 8000545c <_Z11workerBodyDPv>
    800057d8:	fd840513          	addi	a0,s0,-40
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	ac8080e7          	jalr	-1336(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    800057e4:	00004517          	auipc	a0,0x4
    800057e8:	cd450513          	addi	a0,a0,-812 # 800094b8 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    800057ec:	00000097          	auipc	ra,0x0
    800057f0:	070080e7          	jalr	112(ra) # 8000585c <_Z11printStringPKc>

    while (!(finishedB)) {
    800057f4:	00006797          	auipc	a5,0x6
    800057f8:	2d07c783          	lbu	a5,720(a5) # 8000bac4 <_ZL9finishedB>
    800057fc:	00079863          	bnez	a5,8000580c <_Z18Threads_C_API_testv+0xd0>
        //printString("Main thread\n");
        thread_dispatch();
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	b24080e7          	jalr	-1244(ra) # 80001324 <thread_dispatch>
    80005808:	fedff06f          	j	800057f4 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) {
    8000580c:	fc040493          	addi	s1,s0,-64
    80005810:	0080006f          	j	80005818 <_Z18Threads_C_API_testv+0xdc>
    80005814:	00848493          	addi	s1,s1,8
    80005818:	fe040793          	addi	a5,s0,-32
    8000581c:	02f48463          	beq	s1,a5,80005844 <_Z18Threads_C_API_testv+0x108>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005820:	0004b903          	ld	s2,0(s1)
    80005824:	fe0908e3          	beqz	s2,80005814 <_Z18Threads_C_API_testv+0xd8>
    80005828:	00090513          	mv	a0,s2
    8000582c:	ffffd097          	auipc	ra,0xffffd
    80005830:	044080e7          	jalr	68(ra) # 80002870 <_ZN3PCBD1Ev>
    80005834:	00090513          	mv	a0,s2
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	010080e7          	jalr	16(ra) # 80002848 <_ZN3PCBdlEPv>
    80005840:	fd5ff06f          	j	80005814 <_Z18Threads_C_API_testv+0xd8>
    }
}
    80005844:	03813083          	ld	ra,56(sp)
    80005848:	03013403          	ld	s0,48(sp)
    8000584c:	02813483          	ld	s1,40(sp)
    80005850:	02013903          	ld	s2,32(sp)
    80005854:	04010113          	addi	sp,sp,64
    80005858:	00008067          	ret

000000008000585c <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    8000585c:	fe010113          	addi	sp,sp,-32
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	00813823          	sd	s0,16(sp)
    80005868:	00913423          	sd	s1,8(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	00050493          	mv	s1,a0
    LOCK();
    80005874:	00100613          	li	a2,1
    80005878:	00000593          	li	a1,0
    8000587c:	00006517          	auipc	a0,0x6
    80005880:	24c50513          	addi	a0,a0,588 # 8000bac8 <lockPrint>
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	984080e7          	jalr	-1660(ra) # 80001208 <copy_and_swap>
    8000588c:	fe0514e3          	bnez	a0,80005874 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005890:	0004c503          	lbu	a0,0(s1)
    80005894:	00050a63          	beqz	a0,800058a8 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    80005898:	00003097          	auipc	ra,0x3
    8000589c:	a04080e7          	jalr	-1532(ra) # 8000829c <__putc>
        putc(*string);
        string++;
    800058a0:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    800058a4:	fedff06f          	j	80005890 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800058a8:	00000613          	li	a2,0
    800058ac:	00100593          	li	a1,1
    800058b0:	00006517          	auipc	a0,0x6
    800058b4:	21850513          	addi	a0,a0,536 # 8000bac8 <lockPrint>
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	950080e7          	jalr	-1712(ra) # 80001208 <copy_and_swap>
    800058c0:	fe0514e3          	bnez	a0,800058a8 <_Z11printStringPKc+0x4c>
}
    800058c4:	01813083          	ld	ra,24(sp)
    800058c8:	01013403          	ld	s0,16(sp)
    800058cc:	00813483          	ld	s1,8(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret

00000000800058d8 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    800058d8:	fd010113          	addi	sp,sp,-48
    800058dc:	02113423          	sd	ra,40(sp)
    800058e0:	02813023          	sd	s0,32(sp)
    800058e4:	00913c23          	sd	s1,24(sp)
    800058e8:	01213823          	sd	s2,16(sp)
    800058ec:	01313423          	sd	s3,8(sp)
    800058f0:	01413023          	sd	s4,0(sp)
    800058f4:	03010413          	addi	s0,sp,48
    800058f8:	00050993          	mv	s3,a0
    800058fc:	00058a13          	mv	s4,a1
    LOCK();
    80005900:	00100613          	li	a2,1
    80005904:	00000593          	li	a1,0
    80005908:	00006517          	auipc	a0,0x6
    8000590c:	1c050513          	addi	a0,a0,448 # 8000bac8 <lockPrint>
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	8f8080e7          	jalr	-1800(ra) # 80001208 <copy_and_swap>
    80005918:	fe0514e3          	bnez	a0,80005900 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    8000591c:	00000913          	li	s2,0
    80005920:	00090493          	mv	s1,s2
    80005924:	0019091b          	addiw	s2,s2,1
    80005928:	03495a63          	bge	s2,s4,8000595c <_Z9getStringPci+0x84>
    return __getc();
    8000592c:	00003097          	auipc	ra,0x3
    80005930:	9ac080e7          	jalr	-1620(ra) # 800082d8 <__getc>
        cc = getc();
        if (cc < 1)
    80005934:	02050463          	beqz	a0,8000595c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005938:	009984b3          	add	s1,s3,s1
    8000593c:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005940:	00a00793          	li	a5,10
    80005944:	00f50a63          	beq	a0,a5,80005958 <_Z9getStringPci+0x80>
    80005948:	00d00793          	li	a5,13
    8000594c:	fcf51ae3          	bne	a0,a5,80005920 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005950:	00090493          	mv	s1,s2
    80005954:	0080006f          	j	8000595c <_Z9getStringPci+0x84>
    80005958:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000595c:	009984b3          	add	s1,s3,s1
    80005960:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005964:	00000613          	li	a2,0
    80005968:	00100593          	li	a1,1
    8000596c:	00006517          	auipc	a0,0x6
    80005970:	15c50513          	addi	a0,a0,348 # 8000bac8 <lockPrint>
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	894080e7          	jalr	-1900(ra) # 80001208 <copy_and_swap>
    8000597c:	fe0514e3          	bnez	a0,80005964 <_Z9getStringPci+0x8c>
    return buf;
}
    80005980:	00098513          	mv	a0,s3
    80005984:	02813083          	ld	ra,40(sp)
    80005988:	02013403          	ld	s0,32(sp)
    8000598c:	01813483          	ld	s1,24(sp)
    80005990:	01013903          	ld	s2,16(sp)
    80005994:	00813983          	ld	s3,8(sp)
    80005998:	00013a03          	ld	s4,0(sp)
    8000599c:	03010113          	addi	sp,sp,48
    800059a0:	00008067          	ret

00000000800059a4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800059a4:	ff010113          	addi	sp,sp,-16
    800059a8:	00813423          	sd	s0,8(sp)
    800059ac:	01010413          	addi	s0,sp,16
    800059b0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800059b4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800059b8:	0006c603          	lbu	a2,0(a3)
    800059bc:	fd06071b          	addiw	a4,a2,-48
    800059c0:	0ff77713          	andi	a4,a4,255
    800059c4:	00900793          	li	a5,9
    800059c8:	02e7e063          	bltu	a5,a4,800059e8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059cc:	0025179b          	slliw	a5,a0,0x2
    800059d0:	00a787bb          	addw	a5,a5,a0
    800059d4:	0017979b          	slliw	a5,a5,0x1
    800059d8:	00168693          	addi	a3,a3,1
    800059dc:	00c787bb          	addw	a5,a5,a2
    800059e0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800059e4:	fd5ff06f          	j	800059b8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800059e8:	00813403          	ld	s0,8(sp)
    800059ec:	01010113          	addi	sp,sp,16
    800059f0:	00008067          	ret

00000000800059f4 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    800059f4:	fc010113          	addi	sp,sp,-64
    800059f8:	02113c23          	sd	ra,56(sp)
    800059fc:	02813823          	sd	s0,48(sp)
    80005a00:	02913423          	sd	s1,40(sp)
    80005a04:	03213023          	sd	s2,32(sp)
    80005a08:	01313c23          	sd	s3,24(sp)
    80005a0c:	04010413          	addi	s0,sp,64
    80005a10:	00050493          	mv	s1,a0
    80005a14:	00058913          	mv	s2,a1
    80005a18:	00060993          	mv	s3,a2
    LOCK();
    80005a1c:	00100613          	li	a2,1
    80005a20:	00000593          	li	a1,0
    80005a24:	00006517          	auipc	a0,0x6
    80005a28:	0a450513          	addi	a0,a0,164 # 8000bac8 <lockPrint>
    80005a2c:	ffffb097          	auipc	ra,0xffffb
    80005a30:	7dc080e7          	jalr	2012(ra) # 80001208 <copy_and_swap>
    80005a34:	fe0514e3          	bnez	a0,80005a1c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005a38:	00098463          	beqz	s3,80005a40 <_Z8printIntiii+0x4c>
    80005a3c:	0804c463          	bltz	s1,80005ac4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a40:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a44:	00000593          	li	a1,0
    }

    i = 0;
    80005a48:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005a4c:	0009079b          	sext.w	a5,s2
    80005a50:	0325773b          	remuw	a4,a0,s2
    80005a54:	00048613          	mv	a2,s1
    80005a58:	0014849b          	addiw	s1,s1,1
    80005a5c:	02071693          	slli	a3,a4,0x20
    80005a60:	0206d693          	srli	a3,a3,0x20
    80005a64:	00004717          	auipc	a4,0x4
    80005a68:	a9c70713          	addi	a4,a4,-1380 # 80009500 <_ZL6digits>
    80005a6c:	00d70733          	add	a4,a4,a3
    80005a70:	00074683          	lbu	a3,0(a4)
    80005a74:	fd040713          	addi	a4,s0,-48
    80005a78:	00c70733          	add	a4,a4,a2
    80005a7c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005a80:	0005071b          	sext.w	a4,a0
    80005a84:	0325553b          	divuw	a0,a0,s2
    80005a88:	fcf772e3          	bgeu	a4,a5,80005a4c <_Z8printIntiii+0x58>
    if (neg)
    80005a8c:	00058c63          	beqz	a1,80005aa4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005a90:	fd040793          	addi	a5,s0,-48
    80005a94:	009784b3          	add	s1,a5,s1
    80005a98:	02d00793          	li	a5,45
    80005a9c:	fef48823          	sb	a5,-16(s1)
    80005aa0:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005aa4:	fff4849b          	addiw	s1,s1,-1
    80005aa8:	0204c463          	bltz	s1,80005ad0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005aac:	fd040793          	addi	a5,s0,-48
    80005ab0:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005ab4:	ff07c503          	lbu	a0,-16(a5)
    80005ab8:	00002097          	auipc	ra,0x2
    80005abc:	7e4080e7          	jalr	2020(ra) # 8000829c <__putc>
}
    80005ac0:	fe5ff06f          	j	80005aa4 <_Z8printIntiii+0xb0>
        x = -xx;
    80005ac4:	4090053b          	negw	a0,s1
        neg = 1;
    80005ac8:	00100593          	li	a1,1
        x = -xx;
    80005acc:	f7dff06f          	j	80005a48 <_Z8printIntiii+0x54>

    UNLOCK();
    80005ad0:	00000613          	li	a2,0
    80005ad4:	00100593          	li	a1,1
    80005ad8:	00006517          	auipc	a0,0x6
    80005adc:	ff050513          	addi	a0,a0,-16 # 8000bac8 <lockPrint>
    80005ae0:	ffffb097          	auipc	ra,0xffffb
    80005ae4:	728080e7          	jalr	1832(ra) # 80001208 <copy_and_swap>
    80005ae8:	fe0514e3          	bnez	a0,80005ad0 <_Z8printIntiii+0xdc>
}
    80005aec:	03813083          	ld	ra,56(sp)
    80005af0:	03013403          	ld	s0,48(sp)
    80005af4:	02813483          	ld	s1,40(sp)
    80005af8:	02013903          	ld	s2,32(sp)
    80005afc:	01813983          	ld	s3,24(sp)
    80005b00:	04010113          	addi	sp,sp,64
    80005b04:	00008067          	ret

0000000080005b08 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005b08:	fe010113          	addi	sp,sp,-32
    80005b0c:	00113c23          	sd	ra,24(sp)
    80005b10:	00813823          	sd	s0,16(sp)
    80005b14:	00913423          	sd	s1,8(sp)
    80005b18:	01213023          	sd	s2,0(sp)
    80005b1c:	02010413          	addi	s0,sp,32
    80005b20:	00050493          	mv	s1,a0
    80005b24:	00b52023          	sw	a1,0(a0)
    80005b28:	00052823          	sw	zero,16(a0)
    80005b2c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b30:	00259513          	slli	a0,a1,0x2
    80005b34:	ffffb097          	auipc	ra,0xffffb
    80005b38:	714080e7          	jalr	1812(ra) # 80001248 <mem_alloc>
    80005b3c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b40:	01000513          	li	a0,16
    80005b44:	ffffe097          	auipc	ra,0xffffe
    80005b48:	80c080e7          	jalr	-2036(ra) # 80003350 <_Znwm>
    80005b4c:	00050913          	mv	s2,a0
    80005b50:	00000593          	li	a1,0
    80005b54:	ffffe097          	auipc	ra,0xffffe
    80005b58:	a38080e7          	jalr	-1480(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b5c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005b60:	01000513          	li	a0,16
    80005b64:	ffffd097          	auipc	ra,0xffffd
    80005b68:	7ec080e7          	jalr	2028(ra) # 80003350 <_Znwm>
    80005b6c:	00050913          	mv	s2,a0
    80005b70:	0004a583          	lw	a1,0(s1)
    80005b74:	ffffe097          	auipc	ra,0xffffe
    80005b78:	a18080e7          	jalr	-1512(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b7c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005b80:	01000513          	li	a0,16
    80005b84:	ffffd097          	auipc	ra,0xffffd
    80005b88:	7cc080e7          	jalr	1996(ra) # 80003350 <_Znwm>
    80005b8c:	00050913          	mv	s2,a0
    80005b90:	00100593          	li	a1,1
    80005b94:	ffffe097          	auipc	ra,0xffffe
    80005b98:	9f8080e7          	jalr	-1544(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005b9c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ba0:	01000513          	li	a0,16
    80005ba4:	ffffd097          	auipc	ra,0xffffd
    80005ba8:	7ac080e7          	jalr	1964(ra) # 80003350 <_Znwm>
    80005bac:	00050913          	mv	s2,a0
    80005bb0:	00100593          	li	a1,1
    80005bb4:	ffffe097          	auipc	ra,0xffffe
    80005bb8:	9d8080e7          	jalr	-1576(ra) # 8000358c <_ZN9SemaphoreC1Ej>
    80005bbc:	0324b823          	sd	s2,48(s1)
}
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00813483          	ld	s1,8(sp)
    80005bcc:	00013903          	ld	s2,0(sp)
    80005bd0:	02010113          	addi	sp,sp,32
    80005bd4:	00008067          	ret
    80005bd8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005bdc:	00090513          	mv	a0,s2
    80005be0:	ffffd097          	auipc	ra,0xffffd
    80005be4:	798080e7          	jalr	1944(ra) # 80003378 <_ZdlPv>
    80005be8:	00048513          	mv	a0,s1
    80005bec:	00007097          	auipc	ra,0x7
    80005bf0:	fbc080e7          	jalr	-68(ra) # 8000cba8 <_Unwind_Resume>
    80005bf4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005bf8:	00090513          	mv	a0,s2
    80005bfc:	ffffd097          	auipc	ra,0xffffd
    80005c00:	77c080e7          	jalr	1916(ra) # 80003378 <_ZdlPv>
    80005c04:	00048513          	mv	a0,s1
    80005c08:	00007097          	auipc	ra,0x7
    80005c0c:	fa0080e7          	jalr	-96(ra) # 8000cba8 <_Unwind_Resume>
    80005c10:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005c14:	00090513          	mv	a0,s2
    80005c18:	ffffd097          	auipc	ra,0xffffd
    80005c1c:	760080e7          	jalr	1888(ra) # 80003378 <_ZdlPv>
    80005c20:	00048513          	mv	a0,s1
    80005c24:	00007097          	auipc	ra,0x7
    80005c28:	f84080e7          	jalr	-124(ra) # 8000cba8 <_Unwind_Resume>
    80005c2c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c30:	00090513          	mv	a0,s2
    80005c34:	ffffd097          	auipc	ra,0xffffd
    80005c38:	744080e7          	jalr	1860(ra) # 80003378 <_ZdlPv>
    80005c3c:	00048513          	mv	a0,s1
    80005c40:	00007097          	auipc	ra,0x7
    80005c44:	f68080e7          	jalr	-152(ra) # 8000cba8 <_Unwind_Resume>

0000000080005c48 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005c48:	fe010113          	addi	sp,sp,-32
    80005c4c:	00113c23          	sd	ra,24(sp)
    80005c50:	00813823          	sd	s0,16(sp)
    80005c54:	00913423          	sd	s1,8(sp)
    80005c58:	02010413          	addi	s0,sp,32
    80005c5c:	00050493          	mv	s1,a0
    __putc(c);
    80005c60:	00a00513          	li	a0,10
    80005c64:	00002097          	auipc	ra,0x2
    80005c68:	638080e7          	jalr	1592(ra) # 8000829c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005c6c:	0104a783          	lw	a5,16(s1)
    80005c70:	0144a703          	lw	a4,20(s1)
    80005c74:	00e78c63          	beq	a5,a4,80005c8c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005c78:	0017879b          	addiw	a5,a5,1
    80005c7c:	0004a703          	lw	a4,0(s1)
    80005c80:	02e7e7bb          	remw	a5,a5,a4
    80005c84:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005c88:	fe5ff06f          	j	80005c6c <_ZN9BufferCPPD1Ev+0x24>
    80005c8c:	02100513          	li	a0,33
    80005c90:	00002097          	auipc	ra,0x2
    80005c94:	60c080e7          	jalr	1548(ra) # 8000829c <__putc>
    80005c98:	00a00513          	li	a0,10
    80005c9c:	00002097          	auipc	ra,0x2
    80005ca0:	600080e7          	jalr	1536(ra) # 8000829c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005ca4:	0084b503          	ld	a0,8(s1)
    80005ca8:	ffffb097          	auipc	ra,0xffffb
    80005cac:	5d0080e7          	jalr	1488(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005cb0:	0204b503          	ld	a0,32(s1)
    80005cb4:	00050863          	beqz	a0,80005cc4 <_ZN9BufferCPPD1Ev+0x7c>
    80005cb8:	00053783          	ld	a5,0(a0)
    80005cbc:	0087b783          	ld	a5,8(a5)
    80005cc0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005cc4:	0184b503          	ld	a0,24(s1)
    80005cc8:	00050863          	beqz	a0,80005cd8 <_ZN9BufferCPPD1Ev+0x90>
    80005ccc:	00053783          	ld	a5,0(a0)
    80005cd0:	0087b783          	ld	a5,8(a5)
    80005cd4:	000780e7          	jalr	a5
    delete mutexTail;
    80005cd8:	0304b503          	ld	a0,48(s1)
    80005cdc:	00050863          	beqz	a0,80005cec <_ZN9BufferCPPD1Ev+0xa4>
    80005ce0:	00053783          	ld	a5,0(a0)
    80005ce4:	0087b783          	ld	a5,8(a5)
    80005ce8:	000780e7          	jalr	a5
    delete mutexHead;
    80005cec:	0284b503          	ld	a0,40(s1)
    80005cf0:	00050863          	beqz	a0,80005d00 <_ZN9BufferCPPD1Ev+0xb8>
    80005cf4:	00053783          	ld	a5,0(a0)
    80005cf8:	0087b783          	ld	a5,8(a5)
    80005cfc:	000780e7          	jalr	a5

}
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005d14:	fe010113          	addi	sp,sp,-32
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00813823          	sd	s0,16(sp)
    80005d20:	00913423          	sd	s1,8(sp)
    80005d24:	01213023          	sd	s2,0(sp)
    80005d28:	02010413          	addi	s0,sp,32
    80005d2c:	00050493          	mv	s1,a0
    80005d30:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d34:	01853503          	ld	a0,24(a0)
    80005d38:	ffffe097          	auipc	ra,0xffffe
    80005d3c:	81c080e7          	jalr	-2020(ra) # 80003554 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d40:	0304b503          	ld	a0,48(s1)
    80005d44:	ffffe097          	auipc	ra,0xffffe
    80005d48:	810080e7          	jalr	-2032(ra) # 80003554 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d4c:	0084b783          	ld	a5,8(s1)
    80005d50:	0144a703          	lw	a4,20(s1)
    80005d54:	00271713          	slli	a4,a4,0x2
    80005d58:	00e787b3          	add	a5,a5,a4
    80005d5c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d60:	0144a783          	lw	a5,20(s1)
    80005d64:	0017879b          	addiw	a5,a5,1
    80005d68:	0004a703          	lw	a4,0(s1)
    80005d6c:	02e7e7bb          	remw	a5,a5,a4
    80005d70:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d74:	0304b503          	ld	a0,48(s1)
    80005d78:	ffffe097          	auipc	ra,0xffffe
    80005d7c:	860080e7          	jalr	-1952(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005d80:	0204b503          	ld	a0,32(s1)
    80005d84:	ffffe097          	auipc	ra,0xffffe
    80005d88:	854080e7          	jalr	-1964(ra) # 800035d8 <_ZN9Semaphore6signalEv>

}
    80005d8c:	01813083          	ld	ra,24(sp)
    80005d90:	01013403          	ld	s0,16(sp)
    80005d94:	00813483          	ld	s1,8(sp)
    80005d98:	00013903          	ld	s2,0(sp)
    80005d9c:	02010113          	addi	sp,sp,32
    80005da0:	00008067          	ret

0000000080005da4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005da4:	fe010113          	addi	sp,sp,-32
    80005da8:	00113c23          	sd	ra,24(sp)
    80005dac:	00813823          	sd	s0,16(sp)
    80005db0:	00913423          	sd	s1,8(sp)
    80005db4:	01213023          	sd	s2,0(sp)
    80005db8:	02010413          	addi	s0,sp,32
    80005dbc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005dc0:	02053503          	ld	a0,32(a0)
    80005dc4:	ffffd097          	auipc	ra,0xffffd
    80005dc8:	790080e7          	jalr	1936(ra) # 80003554 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005dcc:	0284b503          	ld	a0,40(s1)
    80005dd0:	ffffd097          	auipc	ra,0xffffd
    80005dd4:	784080e7          	jalr	1924(ra) # 80003554 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005dd8:	0084b703          	ld	a4,8(s1)
    80005ddc:	0104a783          	lw	a5,16(s1)
    80005de0:	00279693          	slli	a3,a5,0x2
    80005de4:	00d70733          	add	a4,a4,a3
    80005de8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005dec:	0017879b          	addiw	a5,a5,1
    80005df0:	0004a703          	lw	a4,0(s1)
    80005df4:	02e7e7bb          	remw	a5,a5,a4
    80005df8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005dfc:	0284b503          	ld	a0,40(s1)
    80005e00:	ffffd097          	auipc	ra,0xffffd
    80005e04:	7d8080e7          	jalr	2008(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e08:	0184b503          	ld	a0,24(s1)
    80005e0c:	ffffd097          	auipc	ra,0xffffd
    80005e10:	7cc080e7          	jalr	1996(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e14:	00090513          	mv	a0,s2
    80005e18:	01813083          	ld	ra,24(sp)
    80005e1c:	01013403          	ld	s0,16(sp)
    80005e20:	00813483          	ld	s1,8(sp)
    80005e24:	00013903          	ld	s2,0(sp)
    80005e28:	02010113          	addi	sp,sp,32
    80005e2c:	00008067          	ret

0000000080005e30 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005e30:	ff010113          	addi	sp,sp,-16
    80005e34:	00113423          	sd	ra,8(sp)
    80005e38:	00813023          	sd	s0,0(sp)
    80005e3c:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	f64080e7          	jalr	-156(ra) # 80004da4 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005e48:	00813083          	ld	ra,8(sp)
    80005e4c:	00013403          	ld	s0,0(sp)
    80005e50:	01010113          	addi	sp,sp,16
    80005e54:	00008067          	ret

0000000080005e58 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005e58:	fe010113          	addi	sp,sp,-32
    80005e5c:	00113c23          	sd	ra,24(sp)
    80005e60:	00813823          	sd	s0,16(sp)
    80005e64:	00913423          	sd	s1,8(sp)
    80005e68:	01213023          	sd	s2,0(sp)
    80005e6c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e70:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e74:	00600493          	li	s1,6
    while (--i > 0) {
    80005e78:	fff4849b          	addiw	s1,s1,-1
    80005e7c:	04905463          	blez	s1,80005ec4 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	69850513          	addi	a0,a0,1688 # 80009518 <_ZL6digits+0x18>
    80005e88:	00000097          	auipc	ra,0x0
    80005e8c:	9d4080e7          	jalr	-1580(ra) # 8000585c <_Z11printStringPKc>
        printInt(sleep_time);
    80005e90:	00000613          	li	a2,0
    80005e94:	00a00593          	li	a1,10
    80005e98:	0009051b          	sext.w	a0,s2
    80005e9c:	00000097          	auipc	ra,0x0
    80005ea0:	b58080e7          	jalr	-1192(ra) # 800059f4 <_Z8printIntiii>
        printString(" !\n");
    80005ea4:	00003517          	auipc	a0,0x3
    80005ea8:	67c50513          	addi	a0,a0,1660 # 80009520 <_ZL6digits+0x20>
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	9b0080e7          	jalr	-1616(ra) # 8000585c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005eb4:	00090513          	mv	a0,s2
    80005eb8:	ffffb097          	auipc	ra,0xffffb
    80005ebc:	570080e7          	jalr	1392(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005ec0:	fb9ff06f          	j	80005e78 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005ec4:	00a00793          	li	a5,10
    80005ec8:	02f95933          	divu	s2,s2,a5
    80005ecc:	fff90913          	addi	s2,s2,-1
    80005ed0:	00006797          	auipc	a5,0x6
    80005ed4:	c0078793          	addi	a5,a5,-1024 # 8000bad0 <finished>
    80005ed8:	01278933          	add	s2,a5,s2
    80005edc:	00100793          	li	a5,1
    80005ee0:	00f90023          	sb	a5,0(s2)
}
    80005ee4:	01813083          	ld	ra,24(sp)
    80005ee8:	01013403          	ld	s0,16(sp)
    80005eec:	00813483          	ld	s1,8(sp)
    80005ef0:	00013903          	ld	s2,0(sp)
    80005ef4:	02010113          	addi	sp,sp,32
    80005ef8:	00008067          	ret

0000000080005efc <_Z12testSleepingv>:

void testSleeping()
{
    80005efc:	fc010113          	addi	sp,sp,-64
    80005f00:	02113c23          	sd	ra,56(sp)
    80005f04:	02813823          	sd	s0,48(sp)
    80005f08:	02913423          	sd	s1,40(sp)
    80005f0c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f10:	00a00793          	li	a5,10
    80005f14:	fcf43823          	sd	a5,-48(s0)
    80005f18:	01400793          	li	a5,20
    80005f1c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f20:	00000493          	li	s1,0
    80005f24:	02c0006f          	j	80005f50 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f28:	00349793          	slli	a5,s1,0x3
    80005f2c:	fd040613          	addi	a2,s0,-48
    80005f30:	00f60633          	add	a2,a2,a5
    80005f34:	00000597          	auipc	a1,0x0
    80005f38:	f2458593          	addi	a1,a1,-220 # 80005e58 <_Z9sleepyRunPv>
    80005f3c:	fc040513          	addi	a0,s0,-64
    80005f40:	00f50533          	add	a0,a0,a5
    80005f44:	ffffb097          	auipc	ra,0xffffb
    80005f48:	360080e7          	jalr	864(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f4c:	0014849b          	addiw	s1,s1,1
    80005f50:	00100793          	li	a5,1
    80005f54:	fc97dae3          	bge	a5,s1,80005f28 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f58:	00006797          	auipc	a5,0x6
    80005f5c:	b787c783          	lbu	a5,-1160(a5) # 8000bad0 <finished>
    80005f60:	fe078ce3          	beqz	a5,80005f58 <_Z12testSleepingv+0x5c>
    80005f64:	00006797          	auipc	a5,0x6
    80005f68:	b6d7c783          	lbu	a5,-1171(a5) # 8000bad1 <finished+0x1>
    80005f6c:	fe0786e3          	beqz	a5,80005f58 <_Z12testSleepingv+0x5c>
}
    80005f70:	03813083          	ld	ra,56(sp)
    80005f74:	03013403          	ld	s0,48(sp)
    80005f78:	02813483          	ld	s1,40(sp)
    80005f7c:	04010113          	addi	sp,sp,64
    80005f80:	00008067          	ret

0000000080005f84 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005f84:	fe010113          	addi	sp,sp,-32
    80005f88:	00113c23          	sd	ra,24(sp)
    80005f8c:	00813823          	sd	s0,16(sp)
    80005f90:	00913423          	sd	s1,8(sp)
    80005f94:	02010413          	addi	s0,sp,32
    80005f98:	00050493          	mv	s1,a0
    80005f9c:	00b52023          	sw	a1,0(a0)
    80005fa0:	00052823          	sw	zero,16(a0)
    80005fa4:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fa8:	00259513          	slli	a0,a1,0x2
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	29c080e7          	jalr	668(ra) # 80001248 <mem_alloc>
    80005fb4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fb8:	00000593          	li	a1,0
    80005fbc:	02048513          	addi	a0,s1,32
    80005fc0:	ffffb097          	auipc	ra,0xffffb
    80005fc4:	3ac080e7          	jalr	940(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005fc8:	0004a583          	lw	a1,0(s1)
    80005fcc:	01848513          	addi	a0,s1,24
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	39c080e7          	jalr	924(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005fd8:	00100593          	li	a1,1
    80005fdc:	02848513          	addi	a0,s1,40
    80005fe0:	ffffb097          	auipc	ra,0xffffb
    80005fe4:	38c080e7          	jalr	908(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005fe8:	00100593          	li	a1,1
    80005fec:	03048513          	addi	a0,s1,48
    80005ff0:	ffffb097          	auipc	ra,0xffffb
    80005ff4:	37c080e7          	jalr	892(ra) # 8000136c <sem_open>
}
    80005ff8:	01813083          	ld	ra,24(sp)
    80005ffc:	01013403          	ld	s0,16(sp)
    80006000:	00813483          	ld	s1,8(sp)
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00008067          	ret

000000008000600c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000600c:	fe010113          	addi	sp,sp,-32
    80006010:	00113c23          	sd	ra,24(sp)
    80006014:	00813823          	sd	s0,16(sp)
    80006018:	00913423          	sd	s1,8(sp)
    8000601c:	02010413          	addi	s0,sp,32
    80006020:	00050493          	mv	s1,a0
    80006024:	00a00513          	li	a0,10
    80006028:	00002097          	auipc	ra,0x2
    8000602c:	274080e7          	jalr	628(ra) # 8000829c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006030:	0104a783          	lw	a5,16(s1)
    80006034:	0144a703          	lw	a4,20(s1)
    80006038:	00e78c63          	beq	a5,a4,80006050 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    8000603c:	0017879b          	addiw	a5,a5,1
    80006040:	0004a703          	lw	a4,0(s1)
    80006044:	02e7e7bb          	remw	a5,a5,a4
    80006048:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    8000604c:	fe5ff06f          	j	80006030 <_ZN6BufferD1Ev+0x24>
    80006050:	02100513          	li	a0,33
    80006054:	00002097          	auipc	ra,0x2
    80006058:	248080e7          	jalr	584(ra) # 8000829c <__putc>
    8000605c:	00a00513          	li	a0,10
    80006060:	00002097          	auipc	ra,0x2
    80006064:	23c080e7          	jalr	572(ra) # 8000829c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80006068:	0084b503          	ld	a0,8(s1)
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	20c080e7          	jalr	524(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80006074:	0204b503          	ld	a0,32(s1)
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	32c080e7          	jalr	812(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006080:	0184b503          	ld	a0,24(s1)
    80006084:	ffffb097          	auipc	ra,0xffffb
    80006088:	320080e7          	jalr	800(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    8000608c:	0304b503          	ld	a0,48(s1)
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	314080e7          	jalr	788(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80006098:	0284b503          	ld	a0,40(s1)
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	308080e7          	jalr	776(ra) # 800013a4 <sem_close>
}
    800060a4:	01813083          	ld	ra,24(sp)
    800060a8:	01013403          	ld	s0,16(sp)
    800060ac:	00813483          	ld	s1,8(sp)
    800060b0:	02010113          	addi	sp,sp,32
    800060b4:	00008067          	ret

00000000800060b8 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800060b8:	fe010113          	addi	sp,sp,-32
    800060bc:	00113c23          	sd	ra,24(sp)
    800060c0:	00813823          	sd	s0,16(sp)
    800060c4:	00913423          	sd	s1,8(sp)
    800060c8:	01213023          	sd	s2,0(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	00050493          	mv	s1,a0
    800060d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800060d8:	01853503          	ld	a0,24(a0)
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	2f4080e7          	jalr	756(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800060e4:	0304b503          	ld	a0,48(s1)
    800060e8:	ffffb097          	auipc	ra,0xffffb
    800060ec:	2e8080e7          	jalr	744(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800060f0:	0084b783          	ld	a5,8(s1)
    800060f4:	0144a703          	lw	a4,20(s1)
    800060f8:	00271713          	slli	a4,a4,0x2
    800060fc:	00e787b3          	add	a5,a5,a4
    80006100:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006104:	0144a783          	lw	a5,20(s1)
    80006108:	0017879b          	addiw	a5,a5,1
    8000610c:	0004a703          	lw	a4,0(s1)
    80006110:	02e7e7bb          	remw	a5,a5,a4
    80006114:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006118:	0304b503          	ld	a0,48(s1)
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	2e0080e7          	jalr	736(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80006124:	0204b503          	ld	a0,32(s1)
    80006128:	ffffb097          	auipc	ra,0xffffb
    8000612c:	2d4080e7          	jalr	724(ra) # 800013fc <sem_signal>

}
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	00813483          	ld	s1,8(sp)
    8000613c:	00013903          	ld	s2,0(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret

0000000080006148 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006148:	fe010113          	addi	sp,sp,-32
    8000614c:	00113c23          	sd	ra,24(sp)
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	01213023          	sd	s2,0(sp)
    8000615c:	02010413          	addi	s0,sp,32
    80006160:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006164:	02053503          	ld	a0,32(a0)
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	268080e7          	jalr	616(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006170:	0284b503          	ld	a0,40(s1)
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	25c080e7          	jalr	604(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    8000617c:	0084b703          	ld	a4,8(s1)
    80006180:	0104a783          	lw	a5,16(s1)
    80006184:	00279693          	slli	a3,a5,0x2
    80006188:	00d70733          	add	a4,a4,a3
    8000618c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006190:	0017879b          	addiw	a5,a5,1
    80006194:	0004a703          	lw	a4,0(s1)
    80006198:	02e7e7bb          	remw	a5,a5,a4
    8000619c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800061a0:	0284b503          	ld	a0,40(s1)
    800061a4:	ffffb097          	auipc	ra,0xffffb
    800061a8:	258080e7          	jalr	600(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800061ac:	0184b503          	ld	a0,24(s1)
    800061b0:	ffffb097          	auipc	ra,0xffffb
    800061b4:	24c080e7          	jalr	588(ra) # 800013fc <sem_signal>

    return ret;
}
    800061b8:	00090513          	mv	a0,s2
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	00013903          	ld	s2,0(sp)
    800061cc:	02010113          	addi	sp,sp,32
    800061d0:	00008067          	ret

00000000800061d4 <start>:
    800061d4:	ff010113          	addi	sp,sp,-16
    800061d8:	00813423          	sd	s0,8(sp)
    800061dc:	01010413          	addi	s0,sp,16
    800061e0:	300027f3          	csrr	a5,mstatus
    800061e4:	ffffe737          	lui	a4,0xffffe
    800061e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1abf>
    800061ec:	00e7f7b3          	and	a5,a5,a4
    800061f0:	00001737          	lui	a4,0x1
    800061f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800061f8:	00e7e7b3          	or	a5,a5,a4
    800061fc:	30079073          	csrw	mstatus,a5
    80006200:	00000797          	auipc	a5,0x0
    80006204:	16078793          	addi	a5,a5,352 # 80006360 <system_main>
    80006208:	34179073          	csrw	mepc,a5
    8000620c:	00000793          	li	a5,0
    80006210:	18079073          	csrw	satp,a5
    80006214:	000107b7          	lui	a5,0x10
    80006218:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000621c:	30279073          	csrw	medeleg,a5
    80006220:	30379073          	csrw	mideleg,a5
    80006224:	104027f3          	csrr	a5,sie
    80006228:	2227e793          	ori	a5,a5,546
    8000622c:	10479073          	csrw	sie,a5
    80006230:	fff00793          	li	a5,-1
    80006234:	00a7d793          	srli	a5,a5,0xa
    80006238:	3b079073          	csrw	pmpaddr0,a5
    8000623c:	00f00793          	li	a5,15
    80006240:	3a079073          	csrw	pmpcfg0,a5
    80006244:	f14027f3          	csrr	a5,mhartid
    80006248:	0200c737          	lui	a4,0x200c
    8000624c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006250:	0007869b          	sext.w	a3,a5
    80006254:	00269713          	slli	a4,a3,0x2
    80006258:	000f4637          	lui	a2,0xf4
    8000625c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006260:	00d70733          	add	a4,a4,a3
    80006264:	0037979b          	slliw	a5,a5,0x3
    80006268:	020046b7          	lui	a3,0x2004
    8000626c:	00d787b3          	add	a5,a5,a3
    80006270:	00c585b3          	add	a1,a1,a2
    80006274:	00371693          	slli	a3,a4,0x3
    80006278:	00006717          	auipc	a4,0x6
    8000627c:	86870713          	addi	a4,a4,-1944 # 8000bae0 <timer_scratch>
    80006280:	00b7b023          	sd	a1,0(a5)
    80006284:	00d70733          	add	a4,a4,a3
    80006288:	00f73c23          	sd	a5,24(a4)
    8000628c:	02c73023          	sd	a2,32(a4)
    80006290:	34071073          	csrw	mscratch,a4
    80006294:	00000797          	auipc	a5,0x0
    80006298:	6ec78793          	addi	a5,a5,1772 # 80006980 <timervec>
    8000629c:	30579073          	csrw	mtvec,a5
    800062a0:	300027f3          	csrr	a5,mstatus
    800062a4:	0087e793          	ori	a5,a5,8
    800062a8:	30079073          	csrw	mstatus,a5
    800062ac:	304027f3          	csrr	a5,mie
    800062b0:	0807e793          	ori	a5,a5,128
    800062b4:	30479073          	csrw	mie,a5
    800062b8:	f14027f3          	csrr	a5,mhartid
    800062bc:	0007879b          	sext.w	a5,a5
    800062c0:	00078213          	mv	tp,a5
    800062c4:	30200073          	mret
    800062c8:	00813403          	ld	s0,8(sp)
    800062cc:	01010113          	addi	sp,sp,16
    800062d0:	00008067          	ret

00000000800062d4 <timerinit>:
    800062d4:	ff010113          	addi	sp,sp,-16
    800062d8:	00813423          	sd	s0,8(sp)
    800062dc:	01010413          	addi	s0,sp,16
    800062e0:	f14027f3          	csrr	a5,mhartid
    800062e4:	0200c737          	lui	a4,0x200c
    800062e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062ec:	0007869b          	sext.w	a3,a5
    800062f0:	00269713          	slli	a4,a3,0x2
    800062f4:	000f4637          	lui	a2,0xf4
    800062f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062fc:	00d70733          	add	a4,a4,a3
    80006300:	0037979b          	slliw	a5,a5,0x3
    80006304:	020046b7          	lui	a3,0x2004
    80006308:	00d787b3          	add	a5,a5,a3
    8000630c:	00c585b3          	add	a1,a1,a2
    80006310:	00371693          	slli	a3,a4,0x3
    80006314:	00005717          	auipc	a4,0x5
    80006318:	7cc70713          	addi	a4,a4,1996 # 8000bae0 <timer_scratch>
    8000631c:	00b7b023          	sd	a1,0(a5)
    80006320:	00d70733          	add	a4,a4,a3
    80006324:	00f73c23          	sd	a5,24(a4)
    80006328:	02c73023          	sd	a2,32(a4)
    8000632c:	34071073          	csrw	mscratch,a4
    80006330:	00000797          	auipc	a5,0x0
    80006334:	65078793          	addi	a5,a5,1616 # 80006980 <timervec>
    80006338:	30579073          	csrw	mtvec,a5
    8000633c:	300027f3          	csrr	a5,mstatus
    80006340:	0087e793          	ori	a5,a5,8
    80006344:	30079073          	csrw	mstatus,a5
    80006348:	304027f3          	csrr	a5,mie
    8000634c:	0807e793          	ori	a5,a5,128
    80006350:	30479073          	csrw	mie,a5
    80006354:	00813403          	ld	s0,8(sp)
    80006358:	01010113          	addi	sp,sp,16
    8000635c:	00008067          	ret

0000000080006360 <system_main>:
    80006360:	fe010113          	addi	sp,sp,-32
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	00113c23          	sd	ra,24(sp)
    80006370:	02010413          	addi	s0,sp,32
    80006374:	00000097          	auipc	ra,0x0
    80006378:	0c4080e7          	jalr	196(ra) # 80006438 <cpuid>
    8000637c:	00005497          	auipc	s1,0x5
    80006380:	65448493          	addi	s1,s1,1620 # 8000b9d0 <started>
    80006384:	02050263          	beqz	a0,800063a8 <system_main+0x48>
    80006388:	0004a783          	lw	a5,0(s1)
    8000638c:	0007879b          	sext.w	a5,a5
    80006390:	fe078ce3          	beqz	a5,80006388 <system_main+0x28>
    80006394:	0ff0000f          	fence
    80006398:	00003517          	auipc	a0,0x3
    8000639c:	1c050513          	addi	a0,a0,448 # 80009558 <_ZL6digits+0x58>
    800063a0:	00001097          	auipc	ra,0x1
    800063a4:	a7c080e7          	jalr	-1412(ra) # 80006e1c <panic>
    800063a8:	00001097          	auipc	ra,0x1
    800063ac:	9d0080e7          	jalr	-1584(ra) # 80006d78 <consoleinit>
    800063b0:	00001097          	auipc	ra,0x1
    800063b4:	15c080e7          	jalr	348(ra) # 8000750c <printfinit>
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	d5850513          	addi	a0,a0,-680 # 80009110 <CONSOLE_STATUS+0x100>
    800063c0:	00001097          	auipc	ra,0x1
    800063c4:	ab8080e7          	jalr	-1352(ra) # 80006e78 <__printf>
    800063c8:	00003517          	auipc	a0,0x3
    800063cc:	16050513          	addi	a0,a0,352 # 80009528 <_ZL6digits+0x28>
    800063d0:	00001097          	auipc	ra,0x1
    800063d4:	aa8080e7          	jalr	-1368(ra) # 80006e78 <__printf>
    800063d8:	00003517          	auipc	a0,0x3
    800063dc:	d3850513          	addi	a0,a0,-712 # 80009110 <CONSOLE_STATUS+0x100>
    800063e0:	00001097          	auipc	ra,0x1
    800063e4:	a98080e7          	jalr	-1384(ra) # 80006e78 <__printf>
    800063e8:	00001097          	auipc	ra,0x1
    800063ec:	4b0080e7          	jalr	1200(ra) # 80007898 <kinit>
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	148080e7          	jalr	328(ra) # 80006538 <trapinit>
    800063f8:	00000097          	auipc	ra,0x0
    800063fc:	16c080e7          	jalr	364(ra) # 80006564 <trapinithart>
    80006400:	00000097          	auipc	ra,0x0
    80006404:	5c0080e7          	jalr	1472(ra) # 800069c0 <plicinit>
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	5e0080e7          	jalr	1504(ra) # 800069e8 <plicinithart>
    80006410:	00000097          	auipc	ra,0x0
    80006414:	078080e7          	jalr	120(ra) # 80006488 <userinit>
    80006418:	0ff0000f          	fence
    8000641c:	00100793          	li	a5,1
    80006420:	00003517          	auipc	a0,0x3
    80006424:	12050513          	addi	a0,a0,288 # 80009540 <_ZL6digits+0x40>
    80006428:	00f4a023          	sw	a5,0(s1)
    8000642c:	00001097          	auipc	ra,0x1
    80006430:	a4c080e7          	jalr	-1460(ra) # 80006e78 <__printf>
    80006434:	0000006f          	j	80006434 <system_main+0xd4>

0000000080006438 <cpuid>:
    80006438:	ff010113          	addi	sp,sp,-16
    8000643c:	00813423          	sd	s0,8(sp)
    80006440:	01010413          	addi	s0,sp,16
    80006444:	00020513          	mv	a0,tp
    80006448:	00813403          	ld	s0,8(sp)
    8000644c:	0005051b          	sext.w	a0,a0
    80006450:	01010113          	addi	sp,sp,16
    80006454:	00008067          	ret

0000000080006458 <mycpu>:
    80006458:	ff010113          	addi	sp,sp,-16
    8000645c:	00813423          	sd	s0,8(sp)
    80006460:	01010413          	addi	s0,sp,16
    80006464:	00020793          	mv	a5,tp
    80006468:	00813403          	ld	s0,8(sp)
    8000646c:	0007879b          	sext.w	a5,a5
    80006470:	00779793          	slli	a5,a5,0x7
    80006474:	00006517          	auipc	a0,0x6
    80006478:	69c50513          	addi	a0,a0,1692 # 8000cb10 <cpus>
    8000647c:	00f50533          	add	a0,a0,a5
    80006480:	01010113          	addi	sp,sp,16
    80006484:	00008067          	ret

0000000080006488 <userinit>:
    80006488:	ff010113          	addi	sp,sp,-16
    8000648c:	00813423          	sd	s0,8(sp)
    80006490:	01010413          	addi	s0,sp,16
    80006494:	00813403          	ld	s0,8(sp)
    80006498:	01010113          	addi	sp,sp,16
    8000649c:	ffffd317          	auipc	t1,0xffffd
    800064a0:	dd030067          	jr	-560(t1) # 8000326c <main>

00000000800064a4 <either_copyout>:
    800064a4:	ff010113          	addi	sp,sp,-16
    800064a8:	00813023          	sd	s0,0(sp)
    800064ac:	00113423          	sd	ra,8(sp)
    800064b0:	01010413          	addi	s0,sp,16
    800064b4:	02051663          	bnez	a0,800064e0 <either_copyout+0x3c>
    800064b8:	00058513          	mv	a0,a1
    800064bc:	00060593          	mv	a1,a2
    800064c0:	0006861b          	sext.w	a2,a3
    800064c4:	00002097          	auipc	ra,0x2
    800064c8:	c60080e7          	jalr	-928(ra) # 80008124 <__memmove>
    800064cc:	00813083          	ld	ra,8(sp)
    800064d0:	00013403          	ld	s0,0(sp)
    800064d4:	00000513          	li	a0,0
    800064d8:	01010113          	addi	sp,sp,16
    800064dc:	00008067          	ret
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	0a050513          	addi	a0,a0,160 # 80009580 <_ZL6digits+0x80>
    800064e8:	00001097          	auipc	ra,0x1
    800064ec:	934080e7          	jalr	-1740(ra) # 80006e1c <panic>

00000000800064f0 <either_copyin>:
    800064f0:	ff010113          	addi	sp,sp,-16
    800064f4:	00813023          	sd	s0,0(sp)
    800064f8:	00113423          	sd	ra,8(sp)
    800064fc:	01010413          	addi	s0,sp,16
    80006500:	02059463          	bnez	a1,80006528 <either_copyin+0x38>
    80006504:	00060593          	mv	a1,a2
    80006508:	0006861b          	sext.w	a2,a3
    8000650c:	00002097          	auipc	ra,0x2
    80006510:	c18080e7          	jalr	-1000(ra) # 80008124 <__memmove>
    80006514:	00813083          	ld	ra,8(sp)
    80006518:	00013403          	ld	s0,0(sp)
    8000651c:	00000513          	li	a0,0
    80006520:	01010113          	addi	sp,sp,16
    80006524:	00008067          	ret
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	08050513          	addi	a0,a0,128 # 800095a8 <_ZL6digits+0xa8>
    80006530:	00001097          	auipc	ra,0x1
    80006534:	8ec080e7          	jalr	-1812(ra) # 80006e1c <panic>

0000000080006538 <trapinit>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	00003597          	auipc	a1,0x3
    8000654c:	08858593          	addi	a1,a1,136 # 800095d0 <_ZL6digits+0xd0>
    80006550:	00006517          	auipc	a0,0x6
    80006554:	64050513          	addi	a0,a0,1600 # 8000cb90 <tickslock>
    80006558:	01010113          	addi	sp,sp,16
    8000655c:	00001317          	auipc	t1,0x1
    80006560:	5cc30067          	jr	1484(t1) # 80007b28 <initlock>

0000000080006564 <trapinithart>:
    80006564:	ff010113          	addi	sp,sp,-16
    80006568:	00813423          	sd	s0,8(sp)
    8000656c:	01010413          	addi	s0,sp,16
    80006570:	00000797          	auipc	a5,0x0
    80006574:	30078793          	addi	a5,a5,768 # 80006870 <kernelvec>
    80006578:	10579073          	csrw	stvec,a5
    8000657c:	00813403          	ld	s0,8(sp)
    80006580:	01010113          	addi	sp,sp,16
    80006584:	00008067          	ret

0000000080006588 <usertrap>:
    80006588:	ff010113          	addi	sp,sp,-16
    8000658c:	00813423          	sd	s0,8(sp)
    80006590:	01010413          	addi	s0,sp,16
    80006594:	00813403          	ld	s0,8(sp)
    80006598:	01010113          	addi	sp,sp,16
    8000659c:	00008067          	ret

00000000800065a0 <usertrapret>:
    800065a0:	ff010113          	addi	sp,sp,-16
    800065a4:	00813423          	sd	s0,8(sp)
    800065a8:	01010413          	addi	s0,sp,16
    800065ac:	00813403          	ld	s0,8(sp)
    800065b0:	01010113          	addi	sp,sp,16
    800065b4:	00008067          	ret

00000000800065b8 <kerneltrap>:
    800065b8:	fe010113          	addi	sp,sp,-32
    800065bc:	00813823          	sd	s0,16(sp)
    800065c0:	00113c23          	sd	ra,24(sp)
    800065c4:	00913423          	sd	s1,8(sp)
    800065c8:	02010413          	addi	s0,sp,32
    800065cc:	142025f3          	csrr	a1,scause
    800065d0:	100027f3          	csrr	a5,sstatus
    800065d4:	0027f793          	andi	a5,a5,2
    800065d8:	10079c63          	bnez	a5,800066f0 <kerneltrap+0x138>
    800065dc:	142027f3          	csrr	a5,scause
    800065e0:	0207ce63          	bltz	a5,8000661c <kerneltrap+0x64>
    800065e4:	00003517          	auipc	a0,0x3
    800065e8:	03450513          	addi	a0,a0,52 # 80009618 <_ZL6digits+0x118>
    800065ec:	00001097          	auipc	ra,0x1
    800065f0:	88c080e7          	jalr	-1908(ra) # 80006e78 <__printf>
    800065f4:	141025f3          	csrr	a1,sepc
    800065f8:	14302673          	csrr	a2,stval
    800065fc:	00003517          	auipc	a0,0x3
    80006600:	02c50513          	addi	a0,a0,44 # 80009628 <_ZL6digits+0x128>
    80006604:	00001097          	auipc	ra,0x1
    80006608:	874080e7          	jalr	-1932(ra) # 80006e78 <__printf>
    8000660c:	00003517          	auipc	a0,0x3
    80006610:	03450513          	addi	a0,a0,52 # 80009640 <_ZL6digits+0x140>
    80006614:	00001097          	auipc	ra,0x1
    80006618:	808080e7          	jalr	-2040(ra) # 80006e1c <panic>
    8000661c:	0ff7f713          	andi	a4,a5,255
    80006620:	00900693          	li	a3,9
    80006624:	04d70063          	beq	a4,a3,80006664 <kerneltrap+0xac>
    80006628:	fff00713          	li	a4,-1
    8000662c:	03f71713          	slli	a4,a4,0x3f
    80006630:	00170713          	addi	a4,a4,1
    80006634:	fae798e3          	bne	a5,a4,800065e4 <kerneltrap+0x2c>
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	e00080e7          	jalr	-512(ra) # 80006438 <cpuid>
    80006640:	06050663          	beqz	a0,800066ac <kerneltrap+0xf4>
    80006644:	144027f3          	csrr	a5,sip
    80006648:	ffd7f793          	andi	a5,a5,-3
    8000664c:	14479073          	csrw	sip,a5
    80006650:	01813083          	ld	ra,24(sp)
    80006654:	01013403          	ld	s0,16(sp)
    80006658:	00813483          	ld	s1,8(sp)
    8000665c:	02010113          	addi	sp,sp,32
    80006660:	00008067          	ret
    80006664:	00000097          	auipc	ra,0x0
    80006668:	3d0080e7          	jalr	976(ra) # 80006a34 <plic_claim>
    8000666c:	00a00793          	li	a5,10
    80006670:	00050493          	mv	s1,a0
    80006674:	06f50863          	beq	a0,a5,800066e4 <kerneltrap+0x12c>
    80006678:	fc050ce3          	beqz	a0,80006650 <kerneltrap+0x98>
    8000667c:	00050593          	mv	a1,a0
    80006680:	00003517          	auipc	a0,0x3
    80006684:	f7850513          	addi	a0,a0,-136 # 800095f8 <_ZL6digits+0xf8>
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	7f0080e7          	jalr	2032(ra) # 80006e78 <__printf>
    80006690:	01013403          	ld	s0,16(sp)
    80006694:	01813083          	ld	ra,24(sp)
    80006698:	00048513          	mv	a0,s1
    8000669c:	00813483          	ld	s1,8(sp)
    800066a0:	02010113          	addi	sp,sp,32
    800066a4:	00000317          	auipc	t1,0x0
    800066a8:	3c830067          	jr	968(t1) # 80006a6c <plic_complete>
    800066ac:	00006517          	auipc	a0,0x6
    800066b0:	4e450513          	addi	a0,a0,1252 # 8000cb90 <tickslock>
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	498080e7          	jalr	1176(ra) # 80007b4c <acquire>
    800066bc:	00005717          	auipc	a4,0x5
    800066c0:	31870713          	addi	a4,a4,792 # 8000b9d4 <ticks>
    800066c4:	00072783          	lw	a5,0(a4)
    800066c8:	00006517          	auipc	a0,0x6
    800066cc:	4c850513          	addi	a0,a0,1224 # 8000cb90 <tickslock>
    800066d0:	0017879b          	addiw	a5,a5,1
    800066d4:	00f72023          	sw	a5,0(a4)
    800066d8:	00001097          	auipc	ra,0x1
    800066dc:	540080e7          	jalr	1344(ra) # 80007c18 <release>
    800066e0:	f65ff06f          	j	80006644 <kerneltrap+0x8c>
    800066e4:	00001097          	auipc	ra,0x1
    800066e8:	09c080e7          	jalr	156(ra) # 80007780 <uartintr>
    800066ec:	fa5ff06f          	j	80006690 <kerneltrap+0xd8>
    800066f0:	00003517          	auipc	a0,0x3
    800066f4:	ee850513          	addi	a0,a0,-280 # 800095d8 <_ZL6digits+0xd8>
    800066f8:	00000097          	auipc	ra,0x0
    800066fc:	724080e7          	jalr	1828(ra) # 80006e1c <panic>

0000000080006700 <clockintr>:
    80006700:	fe010113          	addi	sp,sp,-32
    80006704:	00813823          	sd	s0,16(sp)
    80006708:	00913423          	sd	s1,8(sp)
    8000670c:	00113c23          	sd	ra,24(sp)
    80006710:	02010413          	addi	s0,sp,32
    80006714:	00006497          	auipc	s1,0x6
    80006718:	47c48493          	addi	s1,s1,1148 # 8000cb90 <tickslock>
    8000671c:	00048513          	mv	a0,s1
    80006720:	00001097          	auipc	ra,0x1
    80006724:	42c080e7          	jalr	1068(ra) # 80007b4c <acquire>
    80006728:	00005717          	auipc	a4,0x5
    8000672c:	2ac70713          	addi	a4,a4,684 # 8000b9d4 <ticks>
    80006730:	00072783          	lw	a5,0(a4)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	01813083          	ld	ra,24(sp)
    8000673c:	00048513          	mv	a0,s1
    80006740:	0017879b          	addiw	a5,a5,1
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	00f72023          	sw	a5,0(a4)
    8000674c:	02010113          	addi	sp,sp,32
    80006750:	00001317          	auipc	t1,0x1
    80006754:	4c830067          	jr	1224(t1) # 80007c18 <release>

0000000080006758 <devintr>:
    80006758:	142027f3          	csrr	a5,scause
    8000675c:	00000513          	li	a0,0
    80006760:	0007c463          	bltz	a5,80006768 <devintr+0x10>
    80006764:	00008067          	ret
    80006768:	fe010113          	addi	sp,sp,-32
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00113c23          	sd	ra,24(sp)
    80006774:	00913423          	sd	s1,8(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	0ff7f713          	andi	a4,a5,255
    80006780:	00900693          	li	a3,9
    80006784:	04d70c63          	beq	a4,a3,800067dc <devintr+0x84>
    80006788:	fff00713          	li	a4,-1
    8000678c:	03f71713          	slli	a4,a4,0x3f
    80006790:	00170713          	addi	a4,a4,1
    80006794:	00e78c63          	beq	a5,a4,800067ac <devintr+0x54>
    80006798:	01813083          	ld	ra,24(sp)
    8000679c:	01013403          	ld	s0,16(sp)
    800067a0:	00813483          	ld	s1,8(sp)
    800067a4:	02010113          	addi	sp,sp,32
    800067a8:	00008067          	ret
    800067ac:	00000097          	auipc	ra,0x0
    800067b0:	c8c080e7          	jalr	-884(ra) # 80006438 <cpuid>
    800067b4:	06050663          	beqz	a0,80006820 <devintr+0xc8>
    800067b8:	144027f3          	csrr	a5,sip
    800067bc:	ffd7f793          	andi	a5,a5,-3
    800067c0:	14479073          	csrw	sip,a5
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	01013403          	ld	s0,16(sp)
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	00200513          	li	a0,2
    800067d4:	02010113          	addi	sp,sp,32
    800067d8:	00008067          	ret
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	258080e7          	jalr	600(ra) # 80006a34 <plic_claim>
    800067e4:	00a00793          	li	a5,10
    800067e8:	00050493          	mv	s1,a0
    800067ec:	06f50663          	beq	a0,a5,80006858 <devintr+0x100>
    800067f0:	00100513          	li	a0,1
    800067f4:	fa0482e3          	beqz	s1,80006798 <devintr+0x40>
    800067f8:	00048593          	mv	a1,s1
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	dfc50513          	addi	a0,a0,-516 # 800095f8 <_ZL6digits+0xf8>
    80006804:	00000097          	auipc	ra,0x0
    80006808:	674080e7          	jalr	1652(ra) # 80006e78 <__printf>
    8000680c:	00048513          	mv	a0,s1
    80006810:	00000097          	auipc	ra,0x0
    80006814:	25c080e7          	jalr	604(ra) # 80006a6c <plic_complete>
    80006818:	00100513          	li	a0,1
    8000681c:	f7dff06f          	j	80006798 <devintr+0x40>
    80006820:	00006517          	auipc	a0,0x6
    80006824:	37050513          	addi	a0,a0,880 # 8000cb90 <tickslock>
    80006828:	00001097          	auipc	ra,0x1
    8000682c:	324080e7          	jalr	804(ra) # 80007b4c <acquire>
    80006830:	00005717          	auipc	a4,0x5
    80006834:	1a470713          	addi	a4,a4,420 # 8000b9d4 <ticks>
    80006838:	00072783          	lw	a5,0(a4)
    8000683c:	00006517          	auipc	a0,0x6
    80006840:	35450513          	addi	a0,a0,852 # 8000cb90 <tickslock>
    80006844:	0017879b          	addiw	a5,a5,1
    80006848:	00f72023          	sw	a5,0(a4)
    8000684c:	00001097          	auipc	ra,0x1
    80006850:	3cc080e7          	jalr	972(ra) # 80007c18 <release>
    80006854:	f65ff06f          	j	800067b8 <devintr+0x60>
    80006858:	00001097          	auipc	ra,0x1
    8000685c:	f28080e7          	jalr	-216(ra) # 80007780 <uartintr>
    80006860:	fadff06f          	j	8000680c <devintr+0xb4>
	...

0000000080006870 <kernelvec>:
    80006870:	f0010113          	addi	sp,sp,-256
    80006874:	00113023          	sd	ra,0(sp)
    80006878:	00213423          	sd	sp,8(sp)
    8000687c:	00313823          	sd	gp,16(sp)
    80006880:	00413c23          	sd	tp,24(sp)
    80006884:	02513023          	sd	t0,32(sp)
    80006888:	02613423          	sd	t1,40(sp)
    8000688c:	02713823          	sd	t2,48(sp)
    80006890:	02813c23          	sd	s0,56(sp)
    80006894:	04913023          	sd	s1,64(sp)
    80006898:	04a13423          	sd	a0,72(sp)
    8000689c:	04b13823          	sd	a1,80(sp)
    800068a0:	04c13c23          	sd	a2,88(sp)
    800068a4:	06d13023          	sd	a3,96(sp)
    800068a8:	06e13423          	sd	a4,104(sp)
    800068ac:	06f13823          	sd	a5,112(sp)
    800068b0:	07013c23          	sd	a6,120(sp)
    800068b4:	09113023          	sd	a7,128(sp)
    800068b8:	09213423          	sd	s2,136(sp)
    800068bc:	09313823          	sd	s3,144(sp)
    800068c0:	09413c23          	sd	s4,152(sp)
    800068c4:	0b513023          	sd	s5,160(sp)
    800068c8:	0b613423          	sd	s6,168(sp)
    800068cc:	0b713823          	sd	s7,176(sp)
    800068d0:	0b813c23          	sd	s8,184(sp)
    800068d4:	0d913023          	sd	s9,192(sp)
    800068d8:	0da13423          	sd	s10,200(sp)
    800068dc:	0db13823          	sd	s11,208(sp)
    800068e0:	0dc13c23          	sd	t3,216(sp)
    800068e4:	0fd13023          	sd	t4,224(sp)
    800068e8:	0fe13423          	sd	t5,232(sp)
    800068ec:	0ff13823          	sd	t6,240(sp)
    800068f0:	cc9ff0ef          	jal	ra,800065b8 <kerneltrap>
    800068f4:	00013083          	ld	ra,0(sp)
    800068f8:	00813103          	ld	sp,8(sp)
    800068fc:	01013183          	ld	gp,16(sp)
    80006900:	02013283          	ld	t0,32(sp)
    80006904:	02813303          	ld	t1,40(sp)
    80006908:	03013383          	ld	t2,48(sp)
    8000690c:	03813403          	ld	s0,56(sp)
    80006910:	04013483          	ld	s1,64(sp)
    80006914:	04813503          	ld	a0,72(sp)
    80006918:	05013583          	ld	a1,80(sp)
    8000691c:	05813603          	ld	a2,88(sp)
    80006920:	06013683          	ld	a3,96(sp)
    80006924:	06813703          	ld	a4,104(sp)
    80006928:	07013783          	ld	a5,112(sp)
    8000692c:	07813803          	ld	a6,120(sp)
    80006930:	08013883          	ld	a7,128(sp)
    80006934:	08813903          	ld	s2,136(sp)
    80006938:	09013983          	ld	s3,144(sp)
    8000693c:	09813a03          	ld	s4,152(sp)
    80006940:	0a013a83          	ld	s5,160(sp)
    80006944:	0a813b03          	ld	s6,168(sp)
    80006948:	0b013b83          	ld	s7,176(sp)
    8000694c:	0b813c03          	ld	s8,184(sp)
    80006950:	0c013c83          	ld	s9,192(sp)
    80006954:	0c813d03          	ld	s10,200(sp)
    80006958:	0d013d83          	ld	s11,208(sp)
    8000695c:	0d813e03          	ld	t3,216(sp)
    80006960:	0e013e83          	ld	t4,224(sp)
    80006964:	0e813f03          	ld	t5,232(sp)
    80006968:	0f013f83          	ld	t6,240(sp)
    8000696c:	10010113          	addi	sp,sp,256
    80006970:	10200073          	sret
    80006974:	00000013          	nop
    80006978:	00000013          	nop
    8000697c:	00000013          	nop

0000000080006980 <timervec>:
    80006980:	34051573          	csrrw	a0,mscratch,a0
    80006984:	00b53023          	sd	a1,0(a0)
    80006988:	00c53423          	sd	a2,8(a0)
    8000698c:	00d53823          	sd	a3,16(a0)
    80006990:	01853583          	ld	a1,24(a0)
    80006994:	02053603          	ld	a2,32(a0)
    80006998:	0005b683          	ld	a3,0(a1)
    8000699c:	00c686b3          	add	a3,a3,a2
    800069a0:	00d5b023          	sd	a3,0(a1)
    800069a4:	00200593          	li	a1,2
    800069a8:	14459073          	csrw	sip,a1
    800069ac:	01053683          	ld	a3,16(a0)
    800069b0:	00853603          	ld	a2,8(a0)
    800069b4:	00053583          	ld	a1,0(a0)
    800069b8:	34051573          	csrrw	a0,mscratch,a0
    800069bc:	30200073          	mret

00000000800069c0 <plicinit>:
    800069c0:	ff010113          	addi	sp,sp,-16
    800069c4:	00813423          	sd	s0,8(sp)
    800069c8:	01010413          	addi	s0,sp,16
    800069cc:	00813403          	ld	s0,8(sp)
    800069d0:	0c0007b7          	lui	a5,0xc000
    800069d4:	00100713          	li	a4,1
    800069d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800069dc:	00e7a223          	sw	a4,4(a5)
    800069e0:	01010113          	addi	sp,sp,16
    800069e4:	00008067          	ret

00000000800069e8 <plicinithart>:
    800069e8:	ff010113          	addi	sp,sp,-16
    800069ec:	00813023          	sd	s0,0(sp)
    800069f0:	00113423          	sd	ra,8(sp)
    800069f4:	01010413          	addi	s0,sp,16
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	a40080e7          	jalr	-1472(ra) # 80006438 <cpuid>
    80006a00:	0085171b          	slliw	a4,a0,0x8
    80006a04:	0c0027b7          	lui	a5,0xc002
    80006a08:	00e787b3          	add	a5,a5,a4
    80006a0c:	40200713          	li	a4,1026
    80006a10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006a14:	00813083          	ld	ra,8(sp)
    80006a18:	00013403          	ld	s0,0(sp)
    80006a1c:	00d5151b          	slliw	a0,a0,0xd
    80006a20:	0c2017b7          	lui	a5,0xc201
    80006a24:	00a78533          	add	a0,a5,a0
    80006a28:	00052023          	sw	zero,0(a0)
    80006a2c:	01010113          	addi	sp,sp,16
    80006a30:	00008067          	ret

0000000080006a34 <plic_claim>:
    80006a34:	ff010113          	addi	sp,sp,-16
    80006a38:	00813023          	sd	s0,0(sp)
    80006a3c:	00113423          	sd	ra,8(sp)
    80006a40:	01010413          	addi	s0,sp,16
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	9f4080e7          	jalr	-1548(ra) # 80006438 <cpuid>
    80006a4c:	00813083          	ld	ra,8(sp)
    80006a50:	00013403          	ld	s0,0(sp)
    80006a54:	00d5151b          	slliw	a0,a0,0xd
    80006a58:	0c2017b7          	lui	a5,0xc201
    80006a5c:	00a78533          	add	a0,a5,a0
    80006a60:	00452503          	lw	a0,4(a0)
    80006a64:	01010113          	addi	sp,sp,16
    80006a68:	00008067          	ret

0000000080006a6c <plic_complete>:
    80006a6c:	fe010113          	addi	sp,sp,-32
    80006a70:	00813823          	sd	s0,16(sp)
    80006a74:	00913423          	sd	s1,8(sp)
    80006a78:	00113c23          	sd	ra,24(sp)
    80006a7c:	02010413          	addi	s0,sp,32
    80006a80:	00050493          	mv	s1,a0
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	9b4080e7          	jalr	-1612(ra) # 80006438 <cpuid>
    80006a8c:	01813083          	ld	ra,24(sp)
    80006a90:	01013403          	ld	s0,16(sp)
    80006a94:	00d5179b          	slliw	a5,a0,0xd
    80006a98:	0c201737          	lui	a4,0xc201
    80006a9c:	00f707b3          	add	a5,a4,a5
    80006aa0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006aa4:	00813483          	ld	s1,8(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret

0000000080006ab0 <consolewrite>:
    80006ab0:	fb010113          	addi	sp,sp,-80
    80006ab4:	04813023          	sd	s0,64(sp)
    80006ab8:	04113423          	sd	ra,72(sp)
    80006abc:	02913c23          	sd	s1,56(sp)
    80006ac0:	03213823          	sd	s2,48(sp)
    80006ac4:	03313423          	sd	s3,40(sp)
    80006ac8:	03413023          	sd	s4,32(sp)
    80006acc:	01513c23          	sd	s5,24(sp)
    80006ad0:	05010413          	addi	s0,sp,80
    80006ad4:	06c05c63          	blez	a2,80006b4c <consolewrite+0x9c>
    80006ad8:	00060993          	mv	s3,a2
    80006adc:	00050a13          	mv	s4,a0
    80006ae0:	00058493          	mv	s1,a1
    80006ae4:	00000913          	li	s2,0
    80006ae8:	fff00a93          	li	s5,-1
    80006aec:	01c0006f          	j	80006b08 <consolewrite+0x58>
    80006af0:	fbf44503          	lbu	a0,-65(s0)
    80006af4:	0019091b          	addiw	s2,s2,1
    80006af8:	00148493          	addi	s1,s1,1
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	a9c080e7          	jalr	-1380(ra) # 80007598 <uartputc>
    80006b04:	03298063          	beq	s3,s2,80006b24 <consolewrite+0x74>
    80006b08:	00048613          	mv	a2,s1
    80006b0c:	00100693          	li	a3,1
    80006b10:	000a0593          	mv	a1,s4
    80006b14:	fbf40513          	addi	a0,s0,-65
    80006b18:	00000097          	auipc	ra,0x0
    80006b1c:	9d8080e7          	jalr	-1576(ra) # 800064f0 <either_copyin>
    80006b20:	fd5518e3          	bne	a0,s5,80006af0 <consolewrite+0x40>
    80006b24:	04813083          	ld	ra,72(sp)
    80006b28:	04013403          	ld	s0,64(sp)
    80006b2c:	03813483          	ld	s1,56(sp)
    80006b30:	02813983          	ld	s3,40(sp)
    80006b34:	02013a03          	ld	s4,32(sp)
    80006b38:	01813a83          	ld	s5,24(sp)
    80006b3c:	00090513          	mv	a0,s2
    80006b40:	03013903          	ld	s2,48(sp)
    80006b44:	05010113          	addi	sp,sp,80
    80006b48:	00008067          	ret
    80006b4c:	00000913          	li	s2,0
    80006b50:	fd5ff06f          	j	80006b24 <consolewrite+0x74>

0000000080006b54 <consoleread>:
    80006b54:	f9010113          	addi	sp,sp,-112
    80006b58:	06813023          	sd	s0,96(sp)
    80006b5c:	04913c23          	sd	s1,88(sp)
    80006b60:	05213823          	sd	s2,80(sp)
    80006b64:	05313423          	sd	s3,72(sp)
    80006b68:	05413023          	sd	s4,64(sp)
    80006b6c:	03513c23          	sd	s5,56(sp)
    80006b70:	03613823          	sd	s6,48(sp)
    80006b74:	03713423          	sd	s7,40(sp)
    80006b78:	03813023          	sd	s8,32(sp)
    80006b7c:	06113423          	sd	ra,104(sp)
    80006b80:	01913c23          	sd	s9,24(sp)
    80006b84:	07010413          	addi	s0,sp,112
    80006b88:	00060b93          	mv	s7,a2
    80006b8c:	00050913          	mv	s2,a0
    80006b90:	00058c13          	mv	s8,a1
    80006b94:	00060b1b          	sext.w	s6,a2
    80006b98:	00006497          	auipc	s1,0x6
    80006b9c:	02048493          	addi	s1,s1,32 # 8000cbb8 <cons>
    80006ba0:	00400993          	li	s3,4
    80006ba4:	fff00a13          	li	s4,-1
    80006ba8:	00a00a93          	li	s5,10
    80006bac:	05705e63          	blez	s7,80006c08 <consoleread+0xb4>
    80006bb0:	09c4a703          	lw	a4,156(s1)
    80006bb4:	0984a783          	lw	a5,152(s1)
    80006bb8:	0007071b          	sext.w	a4,a4
    80006bbc:	08e78463          	beq	a5,a4,80006c44 <consoleread+0xf0>
    80006bc0:	07f7f713          	andi	a4,a5,127
    80006bc4:	00e48733          	add	a4,s1,a4
    80006bc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006bcc:	0017869b          	addiw	a3,a5,1
    80006bd0:	08d4ac23          	sw	a3,152(s1)
    80006bd4:	00070c9b          	sext.w	s9,a4
    80006bd8:	0b370663          	beq	a4,s3,80006c84 <consoleread+0x130>
    80006bdc:	00100693          	li	a3,1
    80006be0:	f9f40613          	addi	a2,s0,-97
    80006be4:	000c0593          	mv	a1,s8
    80006be8:	00090513          	mv	a0,s2
    80006bec:	f8e40fa3          	sb	a4,-97(s0)
    80006bf0:	00000097          	auipc	ra,0x0
    80006bf4:	8b4080e7          	jalr	-1868(ra) # 800064a4 <either_copyout>
    80006bf8:	01450863          	beq	a0,s4,80006c08 <consoleread+0xb4>
    80006bfc:	001c0c13          	addi	s8,s8,1
    80006c00:	fffb8b9b          	addiw	s7,s7,-1
    80006c04:	fb5c94e3          	bne	s9,s5,80006bac <consoleread+0x58>
    80006c08:	000b851b          	sext.w	a0,s7
    80006c0c:	06813083          	ld	ra,104(sp)
    80006c10:	06013403          	ld	s0,96(sp)
    80006c14:	05813483          	ld	s1,88(sp)
    80006c18:	05013903          	ld	s2,80(sp)
    80006c1c:	04813983          	ld	s3,72(sp)
    80006c20:	04013a03          	ld	s4,64(sp)
    80006c24:	03813a83          	ld	s5,56(sp)
    80006c28:	02813b83          	ld	s7,40(sp)
    80006c2c:	02013c03          	ld	s8,32(sp)
    80006c30:	01813c83          	ld	s9,24(sp)
    80006c34:	40ab053b          	subw	a0,s6,a0
    80006c38:	03013b03          	ld	s6,48(sp)
    80006c3c:	07010113          	addi	sp,sp,112
    80006c40:	00008067          	ret
    80006c44:	00001097          	auipc	ra,0x1
    80006c48:	1d8080e7          	jalr	472(ra) # 80007e1c <push_on>
    80006c4c:	0984a703          	lw	a4,152(s1)
    80006c50:	09c4a783          	lw	a5,156(s1)
    80006c54:	0007879b          	sext.w	a5,a5
    80006c58:	fef70ce3          	beq	a4,a5,80006c50 <consoleread+0xfc>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	234080e7          	jalr	564(ra) # 80007e90 <pop_on>
    80006c64:	0984a783          	lw	a5,152(s1)
    80006c68:	07f7f713          	andi	a4,a5,127
    80006c6c:	00e48733          	add	a4,s1,a4
    80006c70:	01874703          	lbu	a4,24(a4)
    80006c74:	0017869b          	addiw	a3,a5,1
    80006c78:	08d4ac23          	sw	a3,152(s1)
    80006c7c:	00070c9b          	sext.w	s9,a4
    80006c80:	f5371ee3          	bne	a4,s3,80006bdc <consoleread+0x88>
    80006c84:	000b851b          	sext.w	a0,s7
    80006c88:	f96bf2e3          	bgeu	s7,s6,80006c0c <consoleread+0xb8>
    80006c8c:	08f4ac23          	sw	a5,152(s1)
    80006c90:	f7dff06f          	j	80006c0c <consoleread+0xb8>

0000000080006c94 <consputc>:
    80006c94:	10000793          	li	a5,256
    80006c98:	00f50663          	beq	a0,a5,80006ca4 <consputc+0x10>
    80006c9c:	00001317          	auipc	t1,0x1
    80006ca0:	9f430067          	jr	-1548(t1) # 80007690 <uartputc_sync>
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00113423          	sd	ra,8(sp)
    80006cac:	00813023          	sd	s0,0(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00800513          	li	a0,8
    80006cb8:	00001097          	auipc	ra,0x1
    80006cbc:	9d8080e7          	jalr	-1576(ra) # 80007690 <uartputc_sync>
    80006cc0:	02000513          	li	a0,32
    80006cc4:	00001097          	auipc	ra,0x1
    80006cc8:	9cc080e7          	jalr	-1588(ra) # 80007690 <uartputc_sync>
    80006ccc:	00013403          	ld	s0,0(sp)
    80006cd0:	00813083          	ld	ra,8(sp)
    80006cd4:	00800513          	li	a0,8
    80006cd8:	01010113          	addi	sp,sp,16
    80006cdc:	00001317          	auipc	t1,0x1
    80006ce0:	9b430067          	jr	-1612(t1) # 80007690 <uartputc_sync>

0000000080006ce4 <consoleintr>:
    80006ce4:	fe010113          	addi	sp,sp,-32
    80006ce8:	00813823          	sd	s0,16(sp)
    80006cec:	00913423          	sd	s1,8(sp)
    80006cf0:	01213023          	sd	s2,0(sp)
    80006cf4:	00113c23          	sd	ra,24(sp)
    80006cf8:	02010413          	addi	s0,sp,32
    80006cfc:	00006917          	auipc	s2,0x6
    80006d00:	ebc90913          	addi	s2,s2,-324 # 8000cbb8 <cons>
    80006d04:	00050493          	mv	s1,a0
    80006d08:	00090513          	mv	a0,s2
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	e40080e7          	jalr	-448(ra) # 80007b4c <acquire>
    80006d14:	02048c63          	beqz	s1,80006d4c <consoleintr+0x68>
    80006d18:	0a092783          	lw	a5,160(s2)
    80006d1c:	09892703          	lw	a4,152(s2)
    80006d20:	07f00693          	li	a3,127
    80006d24:	40e7873b          	subw	a4,a5,a4
    80006d28:	02e6e263          	bltu	a3,a4,80006d4c <consoleintr+0x68>
    80006d2c:	00d00713          	li	a4,13
    80006d30:	04e48063          	beq	s1,a4,80006d70 <consoleintr+0x8c>
    80006d34:	07f7f713          	andi	a4,a5,127
    80006d38:	00e90733          	add	a4,s2,a4
    80006d3c:	0017879b          	addiw	a5,a5,1
    80006d40:	0af92023          	sw	a5,160(s2)
    80006d44:	00970c23          	sb	s1,24(a4)
    80006d48:	08f92e23          	sw	a5,156(s2)
    80006d4c:	01013403          	ld	s0,16(sp)
    80006d50:	01813083          	ld	ra,24(sp)
    80006d54:	00813483          	ld	s1,8(sp)
    80006d58:	00013903          	ld	s2,0(sp)
    80006d5c:	00006517          	auipc	a0,0x6
    80006d60:	e5c50513          	addi	a0,a0,-420 # 8000cbb8 <cons>
    80006d64:	02010113          	addi	sp,sp,32
    80006d68:	00001317          	auipc	t1,0x1
    80006d6c:	eb030067          	jr	-336(t1) # 80007c18 <release>
    80006d70:	00a00493          	li	s1,10
    80006d74:	fc1ff06f          	j	80006d34 <consoleintr+0x50>

0000000080006d78 <consoleinit>:
    80006d78:	fe010113          	addi	sp,sp,-32
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	00813823          	sd	s0,16(sp)
    80006d84:	00913423          	sd	s1,8(sp)
    80006d88:	02010413          	addi	s0,sp,32
    80006d8c:	00006497          	auipc	s1,0x6
    80006d90:	e2c48493          	addi	s1,s1,-468 # 8000cbb8 <cons>
    80006d94:	00048513          	mv	a0,s1
    80006d98:	00003597          	auipc	a1,0x3
    80006d9c:	8b858593          	addi	a1,a1,-1864 # 80009650 <_ZL6digits+0x150>
    80006da0:	00001097          	auipc	ra,0x1
    80006da4:	d88080e7          	jalr	-632(ra) # 80007b28 <initlock>
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	7ac080e7          	jalr	1964(ra) # 80007554 <uartinit>
    80006db0:	01813083          	ld	ra,24(sp)
    80006db4:	01013403          	ld	s0,16(sp)
    80006db8:	00000797          	auipc	a5,0x0
    80006dbc:	d9c78793          	addi	a5,a5,-612 # 80006b54 <consoleread>
    80006dc0:	0af4bc23          	sd	a5,184(s1)
    80006dc4:	00000797          	auipc	a5,0x0
    80006dc8:	cec78793          	addi	a5,a5,-788 # 80006ab0 <consolewrite>
    80006dcc:	0cf4b023          	sd	a5,192(s1)
    80006dd0:	00813483          	ld	s1,8(sp)
    80006dd4:	02010113          	addi	sp,sp,32
    80006dd8:	00008067          	ret

0000000080006ddc <console_read>:
    80006ddc:	ff010113          	addi	sp,sp,-16
    80006de0:	00813423          	sd	s0,8(sp)
    80006de4:	01010413          	addi	s0,sp,16
    80006de8:	00813403          	ld	s0,8(sp)
    80006dec:	00006317          	auipc	t1,0x6
    80006df0:	e8433303          	ld	t1,-380(t1) # 8000cc70 <devsw+0x10>
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00030067          	jr	t1

0000000080006dfc <console_write>:
    80006dfc:	ff010113          	addi	sp,sp,-16
    80006e00:	00813423          	sd	s0,8(sp)
    80006e04:	01010413          	addi	s0,sp,16
    80006e08:	00813403          	ld	s0,8(sp)
    80006e0c:	00006317          	auipc	t1,0x6
    80006e10:	e6c33303          	ld	t1,-404(t1) # 8000cc78 <devsw+0x18>
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00030067          	jr	t1

0000000080006e1c <panic>:
    80006e1c:	fe010113          	addi	sp,sp,-32
    80006e20:	00113c23          	sd	ra,24(sp)
    80006e24:	00813823          	sd	s0,16(sp)
    80006e28:	00913423          	sd	s1,8(sp)
    80006e2c:	02010413          	addi	s0,sp,32
    80006e30:	00050493          	mv	s1,a0
    80006e34:	00003517          	auipc	a0,0x3
    80006e38:	82450513          	addi	a0,a0,-2012 # 80009658 <_ZL6digits+0x158>
    80006e3c:	00006797          	auipc	a5,0x6
    80006e40:	ec07ae23          	sw	zero,-292(a5) # 8000cd18 <pr+0x18>
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	034080e7          	jalr	52(ra) # 80006e78 <__printf>
    80006e4c:	00048513          	mv	a0,s1
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	028080e7          	jalr	40(ra) # 80006e78 <__printf>
    80006e58:	00002517          	auipc	a0,0x2
    80006e5c:	2b850513          	addi	a0,a0,696 # 80009110 <CONSOLE_STATUS+0x100>
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	018080e7          	jalr	24(ra) # 80006e78 <__printf>
    80006e68:	00100793          	li	a5,1
    80006e6c:	00005717          	auipc	a4,0x5
    80006e70:	b6f72623          	sw	a5,-1172(a4) # 8000b9d8 <panicked>
    80006e74:	0000006f          	j	80006e74 <panic+0x58>

0000000080006e78 <__printf>:
    80006e78:	f3010113          	addi	sp,sp,-208
    80006e7c:	08813023          	sd	s0,128(sp)
    80006e80:	07313423          	sd	s3,104(sp)
    80006e84:	09010413          	addi	s0,sp,144
    80006e88:	05813023          	sd	s8,64(sp)
    80006e8c:	08113423          	sd	ra,136(sp)
    80006e90:	06913c23          	sd	s1,120(sp)
    80006e94:	07213823          	sd	s2,112(sp)
    80006e98:	07413023          	sd	s4,96(sp)
    80006e9c:	05513c23          	sd	s5,88(sp)
    80006ea0:	05613823          	sd	s6,80(sp)
    80006ea4:	05713423          	sd	s7,72(sp)
    80006ea8:	03913c23          	sd	s9,56(sp)
    80006eac:	03a13823          	sd	s10,48(sp)
    80006eb0:	03b13423          	sd	s11,40(sp)
    80006eb4:	00006317          	auipc	t1,0x6
    80006eb8:	e4c30313          	addi	t1,t1,-436 # 8000cd00 <pr>
    80006ebc:	01832c03          	lw	s8,24(t1)
    80006ec0:	00b43423          	sd	a1,8(s0)
    80006ec4:	00c43823          	sd	a2,16(s0)
    80006ec8:	00d43c23          	sd	a3,24(s0)
    80006ecc:	02e43023          	sd	a4,32(s0)
    80006ed0:	02f43423          	sd	a5,40(s0)
    80006ed4:	03043823          	sd	a6,48(s0)
    80006ed8:	03143c23          	sd	a7,56(s0)
    80006edc:	00050993          	mv	s3,a0
    80006ee0:	4a0c1663          	bnez	s8,8000738c <__printf+0x514>
    80006ee4:	60098c63          	beqz	s3,800074fc <__printf+0x684>
    80006ee8:	0009c503          	lbu	a0,0(s3)
    80006eec:	00840793          	addi	a5,s0,8
    80006ef0:	f6f43c23          	sd	a5,-136(s0)
    80006ef4:	00000493          	li	s1,0
    80006ef8:	22050063          	beqz	a0,80007118 <__printf+0x2a0>
    80006efc:	00002a37          	lui	s4,0x2
    80006f00:	00018ab7          	lui	s5,0x18
    80006f04:	000f4b37          	lui	s6,0xf4
    80006f08:	00989bb7          	lui	s7,0x989
    80006f0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006f10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006f14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006f18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006f1c:	00148c9b          	addiw	s9,s1,1
    80006f20:	02500793          	li	a5,37
    80006f24:	01998933          	add	s2,s3,s9
    80006f28:	38f51263          	bne	a0,a5,800072ac <__printf+0x434>
    80006f2c:	00094783          	lbu	a5,0(s2)
    80006f30:	00078c9b          	sext.w	s9,a5
    80006f34:	1e078263          	beqz	a5,80007118 <__printf+0x2a0>
    80006f38:	0024849b          	addiw	s1,s1,2
    80006f3c:	07000713          	li	a4,112
    80006f40:	00998933          	add	s2,s3,s1
    80006f44:	38e78a63          	beq	a5,a4,800072d8 <__printf+0x460>
    80006f48:	20f76863          	bltu	a4,a5,80007158 <__printf+0x2e0>
    80006f4c:	42a78863          	beq	a5,a0,8000737c <__printf+0x504>
    80006f50:	06400713          	li	a4,100
    80006f54:	40e79663          	bne	a5,a4,80007360 <__printf+0x4e8>
    80006f58:	f7843783          	ld	a5,-136(s0)
    80006f5c:	0007a603          	lw	a2,0(a5)
    80006f60:	00878793          	addi	a5,a5,8
    80006f64:	f6f43c23          	sd	a5,-136(s0)
    80006f68:	42064a63          	bltz	a2,8000739c <__printf+0x524>
    80006f6c:	00a00713          	li	a4,10
    80006f70:	02e677bb          	remuw	a5,a2,a4
    80006f74:	00002d97          	auipc	s11,0x2
    80006f78:	70cd8d93          	addi	s11,s11,1804 # 80009680 <digits>
    80006f7c:	00900593          	li	a1,9
    80006f80:	0006051b          	sext.w	a0,a2
    80006f84:	00000c93          	li	s9,0
    80006f88:	02079793          	slli	a5,a5,0x20
    80006f8c:	0207d793          	srli	a5,a5,0x20
    80006f90:	00fd87b3          	add	a5,s11,a5
    80006f94:	0007c783          	lbu	a5,0(a5)
    80006f98:	02e656bb          	divuw	a3,a2,a4
    80006f9c:	f8f40023          	sb	a5,-128(s0)
    80006fa0:	14c5d863          	bge	a1,a2,800070f0 <__printf+0x278>
    80006fa4:	06300593          	li	a1,99
    80006fa8:	00100c93          	li	s9,1
    80006fac:	02e6f7bb          	remuw	a5,a3,a4
    80006fb0:	02079793          	slli	a5,a5,0x20
    80006fb4:	0207d793          	srli	a5,a5,0x20
    80006fb8:	00fd87b3          	add	a5,s11,a5
    80006fbc:	0007c783          	lbu	a5,0(a5)
    80006fc0:	02e6d73b          	divuw	a4,a3,a4
    80006fc4:	f8f400a3          	sb	a5,-127(s0)
    80006fc8:	12a5f463          	bgeu	a1,a0,800070f0 <__printf+0x278>
    80006fcc:	00a00693          	li	a3,10
    80006fd0:	00900593          	li	a1,9
    80006fd4:	02d777bb          	remuw	a5,a4,a3
    80006fd8:	02079793          	slli	a5,a5,0x20
    80006fdc:	0207d793          	srli	a5,a5,0x20
    80006fe0:	00fd87b3          	add	a5,s11,a5
    80006fe4:	0007c503          	lbu	a0,0(a5)
    80006fe8:	02d757bb          	divuw	a5,a4,a3
    80006fec:	f8a40123          	sb	a0,-126(s0)
    80006ff0:	48e5f263          	bgeu	a1,a4,80007474 <__printf+0x5fc>
    80006ff4:	06300513          	li	a0,99
    80006ff8:	02d7f5bb          	remuw	a1,a5,a3
    80006ffc:	02059593          	slli	a1,a1,0x20
    80007000:	0205d593          	srli	a1,a1,0x20
    80007004:	00bd85b3          	add	a1,s11,a1
    80007008:	0005c583          	lbu	a1,0(a1)
    8000700c:	02d7d7bb          	divuw	a5,a5,a3
    80007010:	f8b401a3          	sb	a1,-125(s0)
    80007014:	48e57263          	bgeu	a0,a4,80007498 <__printf+0x620>
    80007018:	3e700513          	li	a0,999
    8000701c:	02d7f5bb          	remuw	a1,a5,a3
    80007020:	02059593          	slli	a1,a1,0x20
    80007024:	0205d593          	srli	a1,a1,0x20
    80007028:	00bd85b3          	add	a1,s11,a1
    8000702c:	0005c583          	lbu	a1,0(a1)
    80007030:	02d7d7bb          	divuw	a5,a5,a3
    80007034:	f8b40223          	sb	a1,-124(s0)
    80007038:	46e57663          	bgeu	a0,a4,800074a4 <__printf+0x62c>
    8000703c:	02d7f5bb          	remuw	a1,a5,a3
    80007040:	02059593          	slli	a1,a1,0x20
    80007044:	0205d593          	srli	a1,a1,0x20
    80007048:	00bd85b3          	add	a1,s11,a1
    8000704c:	0005c583          	lbu	a1,0(a1)
    80007050:	02d7d7bb          	divuw	a5,a5,a3
    80007054:	f8b402a3          	sb	a1,-123(s0)
    80007058:	46ea7863          	bgeu	s4,a4,800074c8 <__printf+0x650>
    8000705c:	02d7f5bb          	remuw	a1,a5,a3
    80007060:	02059593          	slli	a1,a1,0x20
    80007064:	0205d593          	srli	a1,a1,0x20
    80007068:	00bd85b3          	add	a1,s11,a1
    8000706c:	0005c583          	lbu	a1,0(a1)
    80007070:	02d7d7bb          	divuw	a5,a5,a3
    80007074:	f8b40323          	sb	a1,-122(s0)
    80007078:	3eeaf863          	bgeu	s5,a4,80007468 <__printf+0x5f0>
    8000707c:	02d7f5bb          	remuw	a1,a5,a3
    80007080:	02059593          	slli	a1,a1,0x20
    80007084:	0205d593          	srli	a1,a1,0x20
    80007088:	00bd85b3          	add	a1,s11,a1
    8000708c:	0005c583          	lbu	a1,0(a1)
    80007090:	02d7d7bb          	divuw	a5,a5,a3
    80007094:	f8b403a3          	sb	a1,-121(s0)
    80007098:	42eb7e63          	bgeu	s6,a4,800074d4 <__printf+0x65c>
    8000709c:	02d7f5bb          	remuw	a1,a5,a3
    800070a0:	02059593          	slli	a1,a1,0x20
    800070a4:	0205d593          	srli	a1,a1,0x20
    800070a8:	00bd85b3          	add	a1,s11,a1
    800070ac:	0005c583          	lbu	a1,0(a1)
    800070b0:	02d7d7bb          	divuw	a5,a5,a3
    800070b4:	f8b40423          	sb	a1,-120(s0)
    800070b8:	42ebfc63          	bgeu	s7,a4,800074f0 <__printf+0x678>
    800070bc:	02079793          	slli	a5,a5,0x20
    800070c0:	0207d793          	srli	a5,a5,0x20
    800070c4:	00fd8db3          	add	s11,s11,a5
    800070c8:	000dc703          	lbu	a4,0(s11)
    800070cc:	00a00793          	li	a5,10
    800070d0:	00900c93          	li	s9,9
    800070d4:	f8e404a3          	sb	a4,-119(s0)
    800070d8:	00065c63          	bgez	a2,800070f0 <__printf+0x278>
    800070dc:	f9040713          	addi	a4,s0,-112
    800070e0:	00f70733          	add	a4,a4,a5
    800070e4:	02d00693          	li	a3,45
    800070e8:	fed70823          	sb	a3,-16(a4)
    800070ec:	00078c93          	mv	s9,a5
    800070f0:	f8040793          	addi	a5,s0,-128
    800070f4:	01978cb3          	add	s9,a5,s9
    800070f8:	f7f40d13          	addi	s10,s0,-129
    800070fc:	000cc503          	lbu	a0,0(s9)
    80007100:	fffc8c93          	addi	s9,s9,-1
    80007104:	00000097          	auipc	ra,0x0
    80007108:	b90080e7          	jalr	-1136(ra) # 80006c94 <consputc>
    8000710c:	ffac98e3          	bne	s9,s10,800070fc <__printf+0x284>
    80007110:	00094503          	lbu	a0,0(s2)
    80007114:	e00514e3          	bnez	a0,80006f1c <__printf+0xa4>
    80007118:	1a0c1663          	bnez	s8,800072c4 <__printf+0x44c>
    8000711c:	08813083          	ld	ra,136(sp)
    80007120:	08013403          	ld	s0,128(sp)
    80007124:	07813483          	ld	s1,120(sp)
    80007128:	07013903          	ld	s2,112(sp)
    8000712c:	06813983          	ld	s3,104(sp)
    80007130:	06013a03          	ld	s4,96(sp)
    80007134:	05813a83          	ld	s5,88(sp)
    80007138:	05013b03          	ld	s6,80(sp)
    8000713c:	04813b83          	ld	s7,72(sp)
    80007140:	04013c03          	ld	s8,64(sp)
    80007144:	03813c83          	ld	s9,56(sp)
    80007148:	03013d03          	ld	s10,48(sp)
    8000714c:	02813d83          	ld	s11,40(sp)
    80007150:	0d010113          	addi	sp,sp,208
    80007154:	00008067          	ret
    80007158:	07300713          	li	a4,115
    8000715c:	1ce78a63          	beq	a5,a4,80007330 <__printf+0x4b8>
    80007160:	07800713          	li	a4,120
    80007164:	1ee79e63          	bne	a5,a4,80007360 <__printf+0x4e8>
    80007168:	f7843783          	ld	a5,-136(s0)
    8000716c:	0007a703          	lw	a4,0(a5)
    80007170:	00878793          	addi	a5,a5,8
    80007174:	f6f43c23          	sd	a5,-136(s0)
    80007178:	28074263          	bltz	a4,800073fc <__printf+0x584>
    8000717c:	00002d97          	auipc	s11,0x2
    80007180:	504d8d93          	addi	s11,s11,1284 # 80009680 <digits>
    80007184:	00f77793          	andi	a5,a4,15
    80007188:	00fd87b3          	add	a5,s11,a5
    8000718c:	0007c683          	lbu	a3,0(a5)
    80007190:	00f00613          	li	a2,15
    80007194:	0007079b          	sext.w	a5,a4
    80007198:	f8d40023          	sb	a3,-128(s0)
    8000719c:	0047559b          	srliw	a1,a4,0x4
    800071a0:	0047569b          	srliw	a3,a4,0x4
    800071a4:	00000c93          	li	s9,0
    800071a8:	0ee65063          	bge	a2,a4,80007288 <__printf+0x410>
    800071ac:	00f6f693          	andi	a3,a3,15
    800071b0:	00dd86b3          	add	a3,s11,a3
    800071b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800071b8:	0087d79b          	srliw	a5,a5,0x8
    800071bc:	00100c93          	li	s9,1
    800071c0:	f8d400a3          	sb	a3,-127(s0)
    800071c4:	0cb67263          	bgeu	a2,a1,80007288 <__printf+0x410>
    800071c8:	00f7f693          	andi	a3,a5,15
    800071cc:	00dd86b3          	add	a3,s11,a3
    800071d0:	0006c583          	lbu	a1,0(a3)
    800071d4:	00f00613          	li	a2,15
    800071d8:	0047d69b          	srliw	a3,a5,0x4
    800071dc:	f8b40123          	sb	a1,-126(s0)
    800071e0:	0047d593          	srli	a1,a5,0x4
    800071e4:	28f67e63          	bgeu	a2,a5,80007480 <__printf+0x608>
    800071e8:	00f6f693          	andi	a3,a3,15
    800071ec:	00dd86b3          	add	a3,s11,a3
    800071f0:	0006c503          	lbu	a0,0(a3)
    800071f4:	0087d813          	srli	a6,a5,0x8
    800071f8:	0087d69b          	srliw	a3,a5,0x8
    800071fc:	f8a401a3          	sb	a0,-125(s0)
    80007200:	28b67663          	bgeu	a2,a1,8000748c <__printf+0x614>
    80007204:	00f6f693          	andi	a3,a3,15
    80007208:	00dd86b3          	add	a3,s11,a3
    8000720c:	0006c583          	lbu	a1,0(a3)
    80007210:	00c7d513          	srli	a0,a5,0xc
    80007214:	00c7d69b          	srliw	a3,a5,0xc
    80007218:	f8b40223          	sb	a1,-124(s0)
    8000721c:	29067a63          	bgeu	a2,a6,800074b0 <__printf+0x638>
    80007220:	00f6f693          	andi	a3,a3,15
    80007224:	00dd86b3          	add	a3,s11,a3
    80007228:	0006c583          	lbu	a1,0(a3)
    8000722c:	0107d813          	srli	a6,a5,0x10
    80007230:	0107d69b          	srliw	a3,a5,0x10
    80007234:	f8b402a3          	sb	a1,-123(s0)
    80007238:	28a67263          	bgeu	a2,a0,800074bc <__printf+0x644>
    8000723c:	00f6f693          	andi	a3,a3,15
    80007240:	00dd86b3          	add	a3,s11,a3
    80007244:	0006c683          	lbu	a3,0(a3)
    80007248:	0147d79b          	srliw	a5,a5,0x14
    8000724c:	f8d40323          	sb	a3,-122(s0)
    80007250:	21067663          	bgeu	a2,a6,8000745c <__printf+0x5e4>
    80007254:	02079793          	slli	a5,a5,0x20
    80007258:	0207d793          	srli	a5,a5,0x20
    8000725c:	00fd8db3          	add	s11,s11,a5
    80007260:	000dc683          	lbu	a3,0(s11)
    80007264:	00800793          	li	a5,8
    80007268:	00700c93          	li	s9,7
    8000726c:	f8d403a3          	sb	a3,-121(s0)
    80007270:	00075c63          	bgez	a4,80007288 <__printf+0x410>
    80007274:	f9040713          	addi	a4,s0,-112
    80007278:	00f70733          	add	a4,a4,a5
    8000727c:	02d00693          	li	a3,45
    80007280:	fed70823          	sb	a3,-16(a4)
    80007284:	00078c93          	mv	s9,a5
    80007288:	f8040793          	addi	a5,s0,-128
    8000728c:	01978cb3          	add	s9,a5,s9
    80007290:	f7f40d13          	addi	s10,s0,-129
    80007294:	000cc503          	lbu	a0,0(s9)
    80007298:	fffc8c93          	addi	s9,s9,-1
    8000729c:	00000097          	auipc	ra,0x0
    800072a0:	9f8080e7          	jalr	-1544(ra) # 80006c94 <consputc>
    800072a4:	ff9d18e3          	bne	s10,s9,80007294 <__printf+0x41c>
    800072a8:	0100006f          	j	800072b8 <__printf+0x440>
    800072ac:	00000097          	auipc	ra,0x0
    800072b0:	9e8080e7          	jalr	-1560(ra) # 80006c94 <consputc>
    800072b4:	000c8493          	mv	s1,s9
    800072b8:	00094503          	lbu	a0,0(s2)
    800072bc:	c60510e3          	bnez	a0,80006f1c <__printf+0xa4>
    800072c0:	e40c0ee3          	beqz	s8,8000711c <__printf+0x2a4>
    800072c4:	00006517          	auipc	a0,0x6
    800072c8:	a3c50513          	addi	a0,a0,-1476 # 8000cd00 <pr>
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	94c080e7          	jalr	-1716(ra) # 80007c18 <release>
    800072d4:	e49ff06f          	j	8000711c <__printf+0x2a4>
    800072d8:	f7843783          	ld	a5,-136(s0)
    800072dc:	03000513          	li	a0,48
    800072e0:	01000d13          	li	s10,16
    800072e4:	00878713          	addi	a4,a5,8
    800072e8:	0007bc83          	ld	s9,0(a5)
    800072ec:	f6e43c23          	sd	a4,-136(s0)
    800072f0:	00000097          	auipc	ra,0x0
    800072f4:	9a4080e7          	jalr	-1628(ra) # 80006c94 <consputc>
    800072f8:	07800513          	li	a0,120
    800072fc:	00000097          	auipc	ra,0x0
    80007300:	998080e7          	jalr	-1640(ra) # 80006c94 <consputc>
    80007304:	00002d97          	auipc	s11,0x2
    80007308:	37cd8d93          	addi	s11,s11,892 # 80009680 <digits>
    8000730c:	03ccd793          	srli	a5,s9,0x3c
    80007310:	00fd87b3          	add	a5,s11,a5
    80007314:	0007c503          	lbu	a0,0(a5)
    80007318:	fffd0d1b          	addiw	s10,s10,-1
    8000731c:	004c9c93          	slli	s9,s9,0x4
    80007320:	00000097          	auipc	ra,0x0
    80007324:	974080e7          	jalr	-1676(ra) # 80006c94 <consputc>
    80007328:	fe0d12e3          	bnez	s10,8000730c <__printf+0x494>
    8000732c:	f8dff06f          	j	800072b8 <__printf+0x440>
    80007330:	f7843783          	ld	a5,-136(s0)
    80007334:	0007bc83          	ld	s9,0(a5)
    80007338:	00878793          	addi	a5,a5,8
    8000733c:	f6f43c23          	sd	a5,-136(s0)
    80007340:	000c9a63          	bnez	s9,80007354 <__printf+0x4dc>
    80007344:	1080006f          	j	8000744c <__printf+0x5d4>
    80007348:	001c8c93          	addi	s9,s9,1
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	948080e7          	jalr	-1720(ra) # 80006c94 <consputc>
    80007354:	000cc503          	lbu	a0,0(s9)
    80007358:	fe0518e3          	bnez	a0,80007348 <__printf+0x4d0>
    8000735c:	f5dff06f          	j	800072b8 <__printf+0x440>
    80007360:	02500513          	li	a0,37
    80007364:	00000097          	auipc	ra,0x0
    80007368:	930080e7          	jalr	-1744(ra) # 80006c94 <consputc>
    8000736c:	000c8513          	mv	a0,s9
    80007370:	00000097          	auipc	ra,0x0
    80007374:	924080e7          	jalr	-1756(ra) # 80006c94 <consputc>
    80007378:	f41ff06f          	j	800072b8 <__printf+0x440>
    8000737c:	02500513          	li	a0,37
    80007380:	00000097          	auipc	ra,0x0
    80007384:	914080e7          	jalr	-1772(ra) # 80006c94 <consputc>
    80007388:	f31ff06f          	j	800072b8 <__printf+0x440>
    8000738c:	00030513          	mv	a0,t1
    80007390:	00000097          	auipc	ra,0x0
    80007394:	7bc080e7          	jalr	1980(ra) # 80007b4c <acquire>
    80007398:	b4dff06f          	j	80006ee4 <__printf+0x6c>
    8000739c:	40c0053b          	negw	a0,a2
    800073a0:	00a00713          	li	a4,10
    800073a4:	02e576bb          	remuw	a3,a0,a4
    800073a8:	00002d97          	auipc	s11,0x2
    800073ac:	2d8d8d93          	addi	s11,s11,728 # 80009680 <digits>
    800073b0:	ff700593          	li	a1,-9
    800073b4:	02069693          	slli	a3,a3,0x20
    800073b8:	0206d693          	srli	a3,a3,0x20
    800073bc:	00dd86b3          	add	a3,s11,a3
    800073c0:	0006c683          	lbu	a3,0(a3)
    800073c4:	02e557bb          	divuw	a5,a0,a4
    800073c8:	f8d40023          	sb	a3,-128(s0)
    800073cc:	10b65e63          	bge	a2,a1,800074e8 <__printf+0x670>
    800073d0:	06300593          	li	a1,99
    800073d4:	02e7f6bb          	remuw	a3,a5,a4
    800073d8:	02069693          	slli	a3,a3,0x20
    800073dc:	0206d693          	srli	a3,a3,0x20
    800073e0:	00dd86b3          	add	a3,s11,a3
    800073e4:	0006c683          	lbu	a3,0(a3)
    800073e8:	02e7d73b          	divuw	a4,a5,a4
    800073ec:	00200793          	li	a5,2
    800073f0:	f8d400a3          	sb	a3,-127(s0)
    800073f4:	bca5ece3          	bltu	a1,a0,80006fcc <__printf+0x154>
    800073f8:	ce5ff06f          	j	800070dc <__printf+0x264>
    800073fc:	40e007bb          	negw	a5,a4
    80007400:	00002d97          	auipc	s11,0x2
    80007404:	280d8d93          	addi	s11,s11,640 # 80009680 <digits>
    80007408:	00f7f693          	andi	a3,a5,15
    8000740c:	00dd86b3          	add	a3,s11,a3
    80007410:	0006c583          	lbu	a1,0(a3)
    80007414:	ff100613          	li	a2,-15
    80007418:	0047d69b          	srliw	a3,a5,0x4
    8000741c:	f8b40023          	sb	a1,-128(s0)
    80007420:	0047d59b          	srliw	a1,a5,0x4
    80007424:	0ac75e63          	bge	a4,a2,800074e0 <__printf+0x668>
    80007428:	00f6f693          	andi	a3,a3,15
    8000742c:	00dd86b3          	add	a3,s11,a3
    80007430:	0006c603          	lbu	a2,0(a3)
    80007434:	00f00693          	li	a3,15
    80007438:	0087d79b          	srliw	a5,a5,0x8
    8000743c:	f8c400a3          	sb	a2,-127(s0)
    80007440:	d8b6e4e3          	bltu	a3,a1,800071c8 <__printf+0x350>
    80007444:	00200793          	li	a5,2
    80007448:	e2dff06f          	j	80007274 <__printf+0x3fc>
    8000744c:	00002c97          	auipc	s9,0x2
    80007450:	214c8c93          	addi	s9,s9,532 # 80009660 <_ZL6digits+0x160>
    80007454:	02800513          	li	a0,40
    80007458:	ef1ff06f          	j	80007348 <__printf+0x4d0>
    8000745c:	00700793          	li	a5,7
    80007460:	00600c93          	li	s9,6
    80007464:	e0dff06f          	j	80007270 <__printf+0x3f8>
    80007468:	00700793          	li	a5,7
    8000746c:	00600c93          	li	s9,6
    80007470:	c69ff06f          	j	800070d8 <__printf+0x260>
    80007474:	00300793          	li	a5,3
    80007478:	00200c93          	li	s9,2
    8000747c:	c5dff06f          	j	800070d8 <__printf+0x260>
    80007480:	00300793          	li	a5,3
    80007484:	00200c93          	li	s9,2
    80007488:	de9ff06f          	j	80007270 <__printf+0x3f8>
    8000748c:	00400793          	li	a5,4
    80007490:	00300c93          	li	s9,3
    80007494:	dddff06f          	j	80007270 <__printf+0x3f8>
    80007498:	00400793          	li	a5,4
    8000749c:	00300c93          	li	s9,3
    800074a0:	c39ff06f          	j	800070d8 <__printf+0x260>
    800074a4:	00500793          	li	a5,5
    800074a8:	00400c93          	li	s9,4
    800074ac:	c2dff06f          	j	800070d8 <__printf+0x260>
    800074b0:	00500793          	li	a5,5
    800074b4:	00400c93          	li	s9,4
    800074b8:	db9ff06f          	j	80007270 <__printf+0x3f8>
    800074bc:	00600793          	li	a5,6
    800074c0:	00500c93          	li	s9,5
    800074c4:	dadff06f          	j	80007270 <__printf+0x3f8>
    800074c8:	00600793          	li	a5,6
    800074cc:	00500c93          	li	s9,5
    800074d0:	c09ff06f          	j	800070d8 <__printf+0x260>
    800074d4:	00800793          	li	a5,8
    800074d8:	00700c93          	li	s9,7
    800074dc:	bfdff06f          	j	800070d8 <__printf+0x260>
    800074e0:	00100793          	li	a5,1
    800074e4:	d91ff06f          	j	80007274 <__printf+0x3fc>
    800074e8:	00100793          	li	a5,1
    800074ec:	bf1ff06f          	j	800070dc <__printf+0x264>
    800074f0:	00900793          	li	a5,9
    800074f4:	00800c93          	li	s9,8
    800074f8:	be1ff06f          	j	800070d8 <__printf+0x260>
    800074fc:	00002517          	auipc	a0,0x2
    80007500:	16c50513          	addi	a0,a0,364 # 80009668 <_ZL6digits+0x168>
    80007504:	00000097          	auipc	ra,0x0
    80007508:	918080e7          	jalr	-1768(ra) # 80006e1c <panic>

000000008000750c <printfinit>:
    8000750c:	fe010113          	addi	sp,sp,-32
    80007510:	00813823          	sd	s0,16(sp)
    80007514:	00913423          	sd	s1,8(sp)
    80007518:	00113c23          	sd	ra,24(sp)
    8000751c:	02010413          	addi	s0,sp,32
    80007520:	00005497          	auipc	s1,0x5
    80007524:	7e048493          	addi	s1,s1,2016 # 8000cd00 <pr>
    80007528:	00048513          	mv	a0,s1
    8000752c:	00002597          	auipc	a1,0x2
    80007530:	14c58593          	addi	a1,a1,332 # 80009678 <_ZL6digits+0x178>
    80007534:	00000097          	auipc	ra,0x0
    80007538:	5f4080e7          	jalr	1524(ra) # 80007b28 <initlock>
    8000753c:	01813083          	ld	ra,24(sp)
    80007540:	01013403          	ld	s0,16(sp)
    80007544:	0004ac23          	sw	zero,24(s1)
    80007548:	00813483          	ld	s1,8(sp)
    8000754c:	02010113          	addi	sp,sp,32
    80007550:	00008067          	ret

0000000080007554 <uartinit>:
    80007554:	ff010113          	addi	sp,sp,-16
    80007558:	00813423          	sd	s0,8(sp)
    8000755c:	01010413          	addi	s0,sp,16
    80007560:	100007b7          	lui	a5,0x10000
    80007564:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007568:	f8000713          	li	a4,-128
    8000756c:	00e781a3          	sb	a4,3(a5)
    80007570:	00300713          	li	a4,3
    80007574:	00e78023          	sb	a4,0(a5)
    80007578:	000780a3          	sb	zero,1(a5)
    8000757c:	00e781a3          	sb	a4,3(a5)
    80007580:	00700693          	li	a3,7
    80007584:	00d78123          	sb	a3,2(a5)
    80007588:	00e780a3          	sb	a4,1(a5)
    8000758c:	00813403          	ld	s0,8(sp)
    80007590:	01010113          	addi	sp,sp,16
    80007594:	00008067          	ret

0000000080007598 <uartputc>:
    80007598:	00004797          	auipc	a5,0x4
    8000759c:	4407a783          	lw	a5,1088(a5) # 8000b9d8 <panicked>
    800075a0:	00078463          	beqz	a5,800075a8 <uartputc+0x10>
    800075a4:	0000006f          	j	800075a4 <uartputc+0xc>
    800075a8:	fd010113          	addi	sp,sp,-48
    800075ac:	02813023          	sd	s0,32(sp)
    800075b0:	00913c23          	sd	s1,24(sp)
    800075b4:	01213823          	sd	s2,16(sp)
    800075b8:	01313423          	sd	s3,8(sp)
    800075bc:	02113423          	sd	ra,40(sp)
    800075c0:	03010413          	addi	s0,sp,48
    800075c4:	00004917          	auipc	s2,0x4
    800075c8:	41c90913          	addi	s2,s2,1052 # 8000b9e0 <uart_tx_r>
    800075cc:	00093783          	ld	a5,0(s2)
    800075d0:	00004497          	auipc	s1,0x4
    800075d4:	41848493          	addi	s1,s1,1048 # 8000b9e8 <uart_tx_w>
    800075d8:	0004b703          	ld	a4,0(s1)
    800075dc:	02078693          	addi	a3,a5,32
    800075e0:	00050993          	mv	s3,a0
    800075e4:	02e69c63          	bne	a3,a4,8000761c <uartputc+0x84>
    800075e8:	00001097          	auipc	ra,0x1
    800075ec:	834080e7          	jalr	-1996(ra) # 80007e1c <push_on>
    800075f0:	00093783          	ld	a5,0(s2)
    800075f4:	0004b703          	ld	a4,0(s1)
    800075f8:	02078793          	addi	a5,a5,32
    800075fc:	00e79463          	bne	a5,a4,80007604 <uartputc+0x6c>
    80007600:	0000006f          	j	80007600 <uartputc+0x68>
    80007604:	00001097          	auipc	ra,0x1
    80007608:	88c080e7          	jalr	-1908(ra) # 80007e90 <pop_on>
    8000760c:	00093783          	ld	a5,0(s2)
    80007610:	0004b703          	ld	a4,0(s1)
    80007614:	02078693          	addi	a3,a5,32
    80007618:	fce688e3          	beq	a3,a4,800075e8 <uartputc+0x50>
    8000761c:	01f77693          	andi	a3,a4,31
    80007620:	00005597          	auipc	a1,0x5
    80007624:	70058593          	addi	a1,a1,1792 # 8000cd20 <uart_tx_buf>
    80007628:	00d586b3          	add	a3,a1,a3
    8000762c:	00170713          	addi	a4,a4,1
    80007630:	01368023          	sb	s3,0(a3)
    80007634:	00e4b023          	sd	a4,0(s1)
    80007638:	10000637          	lui	a2,0x10000
    8000763c:	02f71063          	bne	a4,a5,8000765c <uartputc+0xc4>
    80007640:	0340006f          	j	80007674 <uartputc+0xdc>
    80007644:	00074703          	lbu	a4,0(a4)
    80007648:	00f93023          	sd	a5,0(s2)
    8000764c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007650:	00093783          	ld	a5,0(s2)
    80007654:	0004b703          	ld	a4,0(s1)
    80007658:	00f70e63          	beq	a4,a5,80007674 <uartputc+0xdc>
    8000765c:	00564683          	lbu	a3,5(a2)
    80007660:	01f7f713          	andi	a4,a5,31
    80007664:	00e58733          	add	a4,a1,a4
    80007668:	0206f693          	andi	a3,a3,32
    8000766c:	00178793          	addi	a5,a5,1
    80007670:	fc069ae3          	bnez	a3,80007644 <uartputc+0xac>
    80007674:	02813083          	ld	ra,40(sp)
    80007678:	02013403          	ld	s0,32(sp)
    8000767c:	01813483          	ld	s1,24(sp)
    80007680:	01013903          	ld	s2,16(sp)
    80007684:	00813983          	ld	s3,8(sp)
    80007688:	03010113          	addi	sp,sp,48
    8000768c:	00008067          	ret

0000000080007690 <uartputc_sync>:
    80007690:	ff010113          	addi	sp,sp,-16
    80007694:	00813423          	sd	s0,8(sp)
    80007698:	01010413          	addi	s0,sp,16
    8000769c:	00004717          	auipc	a4,0x4
    800076a0:	33c72703          	lw	a4,828(a4) # 8000b9d8 <panicked>
    800076a4:	02071663          	bnez	a4,800076d0 <uartputc_sync+0x40>
    800076a8:	00050793          	mv	a5,a0
    800076ac:	100006b7          	lui	a3,0x10000
    800076b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800076b4:	02077713          	andi	a4,a4,32
    800076b8:	fe070ce3          	beqz	a4,800076b0 <uartputc_sync+0x20>
    800076bc:	0ff7f793          	andi	a5,a5,255
    800076c0:	00f68023          	sb	a5,0(a3)
    800076c4:	00813403          	ld	s0,8(sp)
    800076c8:	01010113          	addi	sp,sp,16
    800076cc:	00008067          	ret
    800076d0:	0000006f          	j	800076d0 <uartputc_sync+0x40>

00000000800076d4 <uartstart>:
    800076d4:	ff010113          	addi	sp,sp,-16
    800076d8:	00813423          	sd	s0,8(sp)
    800076dc:	01010413          	addi	s0,sp,16
    800076e0:	00004617          	auipc	a2,0x4
    800076e4:	30060613          	addi	a2,a2,768 # 8000b9e0 <uart_tx_r>
    800076e8:	00004517          	auipc	a0,0x4
    800076ec:	30050513          	addi	a0,a0,768 # 8000b9e8 <uart_tx_w>
    800076f0:	00063783          	ld	a5,0(a2)
    800076f4:	00053703          	ld	a4,0(a0)
    800076f8:	04f70263          	beq	a4,a5,8000773c <uartstart+0x68>
    800076fc:	100005b7          	lui	a1,0x10000
    80007700:	00005817          	auipc	a6,0x5
    80007704:	62080813          	addi	a6,a6,1568 # 8000cd20 <uart_tx_buf>
    80007708:	01c0006f          	j	80007724 <uartstart+0x50>
    8000770c:	0006c703          	lbu	a4,0(a3)
    80007710:	00f63023          	sd	a5,0(a2)
    80007714:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007718:	00063783          	ld	a5,0(a2)
    8000771c:	00053703          	ld	a4,0(a0)
    80007720:	00f70e63          	beq	a4,a5,8000773c <uartstart+0x68>
    80007724:	01f7f713          	andi	a4,a5,31
    80007728:	00e806b3          	add	a3,a6,a4
    8000772c:	0055c703          	lbu	a4,5(a1)
    80007730:	00178793          	addi	a5,a5,1
    80007734:	02077713          	andi	a4,a4,32
    80007738:	fc071ae3          	bnez	a4,8000770c <uartstart+0x38>
    8000773c:	00813403          	ld	s0,8(sp)
    80007740:	01010113          	addi	sp,sp,16
    80007744:	00008067          	ret

0000000080007748 <uartgetc>:
    80007748:	ff010113          	addi	sp,sp,-16
    8000774c:	00813423          	sd	s0,8(sp)
    80007750:	01010413          	addi	s0,sp,16
    80007754:	10000737          	lui	a4,0x10000
    80007758:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000775c:	0017f793          	andi	a5,a5,1
    80007760:	00078c63          	beqz	a5,80007778 <uartgetc+0x30>
    80007764:	00074503          	lbu	a0,0(a4)
    80007768:	0ff57513          	andi	a0,a0,255
    8000776c:	00813403          	ld	s0,8(sp)
    80007770:	01010113          	addi	sp,sp,16
    80007774:	00008067          	ret
    80007778:	fff00513          	li	a0,-1
    8000777c:	ff1ff06f          	j	8000776c <uartgetc+0x24>

0000000080007780 <uartintr>:
    80007780:	100007b7          	lui	a5,0x10000
    80007784:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007788:	0017f793          	andi	a5,a5,1
    8000778c:	0a078463          	beqz	a5,80007834 <uartintr+0xb4>
    80007790:	fe010113          	addi	sp,sp,-32
    80007794:	00813823          	sd	s0,16(sp)
    80007798:	00913423          	sd	s1,8(sp)
    8000779c:	00113c23          	sd	ra,24(sp)
    800077a0:	02010413          	addi	s0,sp,32
    800077a4:	100004b7          	lui	s1,0x10000
    800077a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800077ac:	0ff57513          	andi	a0,a0,255
    800077b0:	fffff097          	auipc	ra,0xfffff
    800077b4:	534080e7          	jalr	1332(ra) # 80006ce4 <consoleintr>
    800077b8:	0054c783          	lbu	a5,5(s1)
    800077bc:	0017f793          	andi	a5,a5,1
    800077c0:	fe0794e3          	bnez	a5,800077a8 <uartintr+0x28>
    800077c4:	00004617          	auipc	a2,0x4
    800077c8:	21c60613          	addi	a2,a2,540 # 8000b9e0 <uart_tx_r>
    800077cc:	00004517          	auipc	a0,0x4
    800077d0:	21c50513          	addi	a0,a0,540 # 8000b9e8 <uart_tx_w>
    800077d4:	00063783          	ld	a5,0(a2)
    800077d8:	00053703          	ld	a4,0(a0)
    800077dc:	04f70263          	beq	a4,a5,80007820 <uartintr+0xa0>
    800077e0:	100005b7          	lui	a1,0x10000
    800077e4:	00005817          	auipc	a6,0x5
    800077e8:	53c80813          	addi	a6,a6,1340 # 8000cd20 <uart_tx_buf>
    800077ec:	01c0006f          	j	80007808 <uartintr+0x88>
    800077f0:	0006c703          	lbu	a4,0(a3)
    800077f4:	00f63023          	sd	a5,0(a2)
    800077f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077fc:	00063783          	ld	a5,0(a2)
    80007800:	00053703          	ld	a4,0(a0)
    80007804:	00f70e63          	beq	a4,a5,80007820 <uartintr+0xa0>
    80007808:	01f7f713          	andi	a4,a5,31
    8000780c:	00e806b3          	add	a3,a6,a4
    80007810:	0055c703          	lbu	a4,5(a1)
    80007814:	00178793          	addi	a5,a5,1
    80007818:	02077713          	andi	a4,a4,32
    8000781c:	fc071ae3          	bnez	a4,800077f0 <uartintr+0x70>
    80007820:	01813083          	ld	ra,24(sp)
    80007824:	01013403          	ld	s0,16(sp)
    80007828:	00813483          	ld	s1,8(sp)
    8000782c:	02010113          	addi	sp,sp,32
    80007830:	00008067          	ret
    80007834:	00004617          	auipc	a2,0x4
    80007838:	1ac60613          	addi	a2,a2,428 # 8000b9e0 <uart_tx_r>
    8000783c:	00004517          	auipc	a0,0x4
    80007840:	1ac50513          	addi	a0,a0,428 # 8000b9e8 <uart_tx_w>
    80007844:	00063783          	ld	a5,0(a2)
    80007848:	00053703          	ld	a4,0(a0)
    8000784c:	04f70263          	beq	a4,a5,80007890 <uartintr+0x110>
    80007850:	100005b7          	lui	a1,0x10000
    80007854:	00005817          	auipc	a6,0x5
    80007858:	4cc80813          	addi	a6,a6,1228 # 8000cd20 <uart_tx_buf>
    8000785c:	01c0006f          	j	80007878 <uartintr+0xf8>
    80007860:	0006c703          	lbu	a4,0(a3)
    80007864:	00f63023          	sd	a5,0(a2)
    80007868:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000786c:	00063783          	ld	a5,0(a2)
    80007870:	00053703          	ld	a4,0(a0)
    80007874:	02f70063          	beq	a4,a5,80007894 <uartintr+0x114>
    80007878:	01f7f713          	andi	a4,a5,31
    8000787c:	00e806b3          	add	a3,a6,a4
    80007880:	0055c703          	lbu	a4,5(a1)
    80007884:	00178793          	addi	a5,a5,1
    80007888:	02077713          	andi	a4,a4,32
    8000788c:	fc071ae3          	bnez	a4,80007860 <uartintr+0xe0>
    80007890:	00008067          	ret
    80007894:	00008067          	ret

0000000080007898 <kinit>:
    80007898:	fc010113          	addi	sp,sp,-64
    8000789c:	02913423          	sd	s1,40(sp)
    800078a0:	fffff7b7          	lui	a5,0xfffff
    800078a4:	00006497          	auipc	s1,0x6
    800078a8:	49b48493          	addi	s1,s1,1179 # 8000dd3f <end+0xfff>
    800078ac:	02813823          	sd	s0,48(sp)
    800078b0:	01313c23          	sd	s3,24(sp)
    800078b4:	00f4f4b3          	and	s1,s1,a5
    800078b8:	02113c23          	sd	ra,56(sp)
    800078bc:	03213023          	sd	s2,32(sp)
    800078c0:	01413823          	sd	s4,16(sp)
    800078c4:	01513423          	sd	s5,8(sp)
    800078c8:	04010413          	addi	s0,sp,64
    800078cc:	000017b7          	lui	a5,0x1
    800078d0:	01100993          	li	s3,17
    800078d4:	00f487b3          	add	a5,s1,a5
    800078d8:	01b99993          	slli	s3,s3,0x1b
    800078dc:	06f9e063          	bltu	s3,a5,8000793c <kinit+0xa4>
    800078e0:	00005a97          	auipc	s5,0x5
    800078e4:	460a8a93          	addi	s5,s5,1120 # 8000cd40 <end>
    800078e8:	0754ec63          	bltu	s1,s5,80007960 <kinit+0xc8>
    800078ec:	0734fa63          	bgeu	s1,s3,80007960 <kinit+0xc8>
    800078f0:	00088a37          	lui	s4,0x88
    800078f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800078f8:	00004917          	auipc	s2,0x4
    800078fc:	0f890913          	addi	s2,s2,248 # 8000b9f0 <kmem>
    80007900:	00ca1a13          	slli	s4,s4,0xc
    80007904:	0140006f          	j	80007918 <kinit+0x80>
    80007908:	000017b7          	lui	a5,0x1
    8000790c:	00f484b3          	add	s1,s1,a5
    80007910:	0554e863          	bltu	s1,s5,80007960 <kinit+0xc8>
    80007914:	0534f663          	bgeu	s1,s3,80007960 <kinit+0xc8>
    80007918:	00001637          	lui	a2,0x1
    8000791c:	00100593          	li	a1,1
    80007920:	00048513          	mv	a0,s1
    80007924:	00000097          	auipc	ra,0x0
    80007928:	5e4080e7          	jalr	1508(ra) # 80007f08 <__memset>
    8000792c:	00093783          	ld	a5,0(s2)
    80007930:	00f4b023          	sd	a5,0(s1)
    80007934:	00993023          	sd	s1,0(s2)
    80007938:	fd4498e3          	bne	s1,s4,80007908 <kinit+0x70>
    8000793c:	03813083          	ld	ra,56(sp)
    80007940:	03013403          	ld	s0,48(sp)
    80007944:	02813483          	ld	s1,40(sp)
    80007948:	02013903          	ld	s2,32(sp)
    8000794c:	01813983          	ld	s3,24(sp)
    80007950:	01013a03          	ld	s4,16(sp)
    80007954:	00813a83          	ld	s5,8(sp)
    80007958:	04010113          	addi	sp,sp,64
    8000795c:	00008067          	ret
    80007960:	00002517          	auipc	a0,0x2
    80007964:	d3850513          	addi	a0,a0,-712 # 80009698 <digits+0x18>
    80007968:	fffff097          	auipc	ra,0xfffff
    8000796c:	4b4080e7          	jalr	1204(ra) # 80006e1c <panic>

0000000080007970 <freerange>:
    80007970:	fc010113          	addi	sp,sp,-64
    80007974:	000017b7          	lui	a5,0x1
    80007978:	02913423          	sd	s1,40(sp)
    8000797c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007980:	009504b3          	add	s1,a0,s1
    80007984:	fffff537          	lui	a0,0xfffff
    80007988:	02813823          	sd	s0,48(sp)
    8000798c:	02113c23          	sd	ra,56(sp)
    80007990:	03213023          	sd	s2,32(sp)
    80007994:	01313c23          	sd	s3,24(sp)
    80007998:	01413823          	sd	s4,16(sp)
    8000799c:	01513423          	sd	s5,8(sp)
    800079a0:	01613023          	sd	s6,0(sp)
    800079a4:	04010413          	addi	s0,sp,64
    800079a8:	00a4f4b3          	and	s1,s1,a0
    800079ac:	00f487b3          	add	a5,s1,a5
    800079b0:	06f5e463          	bltu	a1,a5,80007a18 <freerange+0xa8>
    800079b4:	00005a97          	auipc	s5,0x5
    800079b8:	38ca8a93          	addi	s5,s5,908 # 8000cd40 <end>
    800079bc:	0954e263          	bltu	s1,s5,80007a40 <freerange+0xd0>
    800079c0:	01100993          	li	s3,17
    800079c4:	01b99993          	slli	s3,s3,0x1b
    800079c8:	0734fc63          	bgeu	s1,s3,80007a40 <freerange+0xd0>
    800079cc:	00058a13          	mv	s4,a1
    800079d0:	00004917          	auipc	s2,0x4
    800079d4:	02090913          	addi	s2,s2,32 # 8000b9f0 <kmem>
    800079d8:	00002b37          	lui	s6,0x2
    800079dc:	0140006f          	j	800079f0 <freerange+0x80>
    800079e0:	000017b7          	lui	a5,0x1
    800079e4:	00f484b3          	add	s1,s1,a5
    800079e8:	0554ec63          	bltu	s1,s5,80007a40 <freerange+0xd0>
    800079ec:	0534fa63          	bgeu	s1,s3,80007a40 <freerange+0xd0>
    800079f0:	00001637          	lui	a2,0x1
    800079f4:	00100593          	li	a1,1
    800079f8:	00048513          	mv	a0,s1
    800079fc:	00000097          	auipc	ra,0x0
    80007a00:	50c080e7          	jalr	1292(ra) # 80007f08 <__memset>
    80007a04:	00093703          	ld	a4,0(s2)
    80007a08:	016487b3          	add	a5,s1,s6
    80007a0c:	00e4b023          	sd	a4,0(s1)
    80007a10:	00993023          	sd	s1,0(s2)
    80007a14:	fcfa76e3          	bgeu	s4,a5,800079e0 <freerange+0x70>
    80007a18:	03813083          	ld	ra,56(sp)
    80007a1c:	03013403          	ld	s0,48(sp)
    80007a20:	02813483          	ld	s1,40(sp)
    80007a24:	02013903          	ld	s2,32(sp)
    80007a28:	01813983          	ld	s3,24(sp)
    80007a2c:	01013a03          	ld	s4,16(sp)
    80007a30:	00813a83          	ld	s5,8(sp)
    80007a34:	00013b03          	ld	s6,0(sp)
    80007a38:	04010113          	addi	sp,sp,64
    80007a3c:	00008067          	ret
    80007a40:	00002517          	auipc	a0,0x2
    80007a44:	c5850513          	addi	a0,a0,-936 # 80009698 <digits+0x18>
    80007a48:	fffff097          	auipc	ra,0xfffff
    80007a4c:	3d4080e7          	jalr	980(ra) # 80006e1c <panic>

0000000080007a50 <kfree>:
    80007a50:	fe010113          	addi	sp,sp,-32
    80007a54:	00813823          	sd	s0,16(sp)
    80007a58:	00113c23          	sd	ra,24(sp)
    80007a5c:	00913423          	sd	s1,8(sp)
    80007a60:	02010413          	addi	s0,sp,32
    80007a64:	03451793          	slli	a5,a0,0x34
    80007a68:	04079c63          	bnez	a5,80007ac0 <kfree+0x70>
    80007a6c:	00005797          	auipc	a5,0x5
    80007a70:	2d478793          	addi	a5,a5,724 # 8000cd40 <end>
    80007a74:	00050493          	mv	s1,a0
    80007a78:	04f56463          	bltu	a0,a5,80007ac0 <kfree+0x70>
    80007a7c:	01100793          	li	a5,17
    80007a80:	01b79793          	slli	a5,a5,0x1b
    80007a84:	02f57e63          	bgeu	a0,a5,80007ac0 <kfree+0x70>
    80007a88:	00001637          	lui	a2,0x1
    80007a8c:	00100593          	li	a1,1
    80007a90:	00000097          	auipc	ra,0x0
    80007a94:	478080e7          	jalr	1144(ra) # 80007f08 <__memset>
    80007a98:	00004797          	auipc	a5,0x4
    80007a9c:	f5878793          	addi	a5,a5,-168 # 8000b9f0 <kmem>
    80007aa0:	0007b703          	ld	a4,0(a5)
    80007aa4:	01813083          	ld	ra,24(sp)
    80007aa8:	01013403          	ld	s0,16(sp)
    80007aac:	00e4b023          	sd	a4,0(s1)
    80007ab0:	0097b023          	sd	s1,0(a5)
    80007ab4:	00813483          	ld	s1,8(sp)
    80007ab8:	02010113          	addi	sp,sp,32
    80007abc:	00008067          	ret
    80007ac0:	00002517          	auipc	a0,0x2
    80007ac4:	bd850513          	addi	a0,a0,-1064 # 80009698 <digits+0x18>
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	354080e7          	jalr	852(ra) # 80006e1c <panic>

0000000080007ad0 <kalloc>:
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00813823          	sd	s0,16(sp)
    80007ad8:	00913423          	sd	s1,8(sp)
    80007adc:	00113c23          	sd	ra,24(sp)
    80007ae0:	02010413          	addi	s0,sp,32
    80007ae4:	00004797          	auipc	a5,0x4
    80007ae8:	f0c78793          	addi	a5,a5,-244 # 8000b9f0 <kmem>
    80007aec:	0007b483          	ld	s1,0(a5)
    80007af0:	02048063          	beqz	s1,80007b10 <kalloc+0x40>
    80007af4:	0004b703          	ld	a4,0(s1)
    80007af8:	00001637          	lui	a2,0x1
    80007afc:	00500593          	li	a1,5
    80007b00:	00048513          	mv	a0,s1
    80007b04:	00e7b023          	sd	a4,0(a5)
    80007b08:	00000097          	auipc	ra,0x0
    80007b0c:	400080e7          	jalr	1024(ra) # 80007f08 <__memset>
    80007b10:	01813083          	ld	ra,24(sp)
    80007b14:	01013403          	ld	s0,16(sp)
    80007b18:	00048513          	mv	a0,s1
    80007b1c:	00813483          	ld	s1,8(sp)
    80007b20:	02010113          	addi	sp,sp,32
    80007b24:	00008067          	ret

0000000080007b28 <initlock>:
    80007b28:	ff010113          	addi	sp,sp,-16
    80007b2c:	00813423          	sd	s0,8(sp)
    80007b30:	01010413          	addi	s0,sp,16
    80007b34:	00813403          	ld	s0,8(sp)
    80007b38:	00b53423          	sd	a1,8(a0)
    80007b3c:	00052023          	sw	zero,0(a0)
    80007b40:	00053823          	sd	zero,16(a0)
    80007b44:	01010113          	addi	sp,sp,16
    80007b48:	00008067          	ret

0000000080007b4c <acquire>:
    80007b4c:	fe010113          	addi	sp,sp,-32
    80007b50:	00813823          	sd	s0,16(sp)
    80007b54:	00913423          	sd	s1,8(sp)
    80007b58:	00113c23          	sd	ra,24(sp)
    80007b5c:	01213023          	sd	s2,0(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	00050493          	mv	s1,a0
    80007b68:	10002973          	csrr	s2,sstatus
    80007b6c:	100027f3          	csrr	a5,sstatus
    80007b70:	ffd7f793          	andi	a5,a5,-3
    80007b74:	10079073          	csrw	sstatus,a5
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	8e0080e7          	jalr	-1824(ra) # 80006458 <mycpu>
    80007b80:	07852783          	lw	a5,120(a0)
    80007b84:	06078e63          	beqz	a5,80007c00 <acquire+0xb4>
    80007b88:	fffff097          	auipc	ra,0xfffff
    80007b8c:	8d0080e7          	jalr	-1840(ra) # 80006458 <mycpu>
    80007b90:	07852783          	lw	a5,120(a0)
    80007b94:	0004a703          	lw	a4,0(s1)
    80007b98:	0017879b          	addiw	a5,a5,1
    80007b9c:	06f52c23          	sw	a5,120(a0)
    80007ba0:	04071063          	bnez	a4,80007be0 <acquire+0x94>
    80007ba4:	00100713          	li	a4,1
    80007ba8:	00070793          	mv	a5,a4
    80007bac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007bb0:	0007879b          	sext.w	a5,a5
    80007bb4:	fe079ae3          	bnez	a5,80007ba8 <acquire+0x5c>
    80007bb8:	0ff0000f          	fence
    80007bbc:	fffff097          	auipc	ra,0xfffff
    80007bc0:	89c080e7          	jalr	-1892(ra) # 80006458 <mycpu>
    80007bc4:	01813083          	ld	ra,24(sp)
    80007bc8:	01013403          	ld	s0,16(sp)
    80007bcc:	00a4b823          	sd	a0,16(s1)
    80007bd0:	00013903          	ld	s2,0(sp)
    80007bd4:	00813483          	ld	s1,8(sp)
    80007bd8:	02010113          	addi	sp,sp,32
    80007bdc:	00008067          	ret
    80007be0:	0104b903          	ld	s2,16(s1)
    80007be4:	fffff097          	auipc	ra,0xfffff
    80007be8:	874080e7          	jalr	-1932(ra) # 80006458 <mycpu>
    80007bec:	faa91ce3          	bne	s2,a0,80007ba4 <acquire+0x58>
    80007bf0:	00002517          	auipc	a0,0x2
    80007bf4:	ab050513          	addi	a0,a0,-1360 # 800096a0 <digits+0x20>
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	224080e7          	jalr	548(ra) # 80006e1c <panic>
    80007c00:	00195913          	srli	s2,s2,0x1
    80007c04:	fffff097          	auipc	ra,0xfffff
    80007c08:	854080e7          	jalr	-1964(ra) # 80006458 <mycpu>
    80007c0c:	00197913          	andi	s2,s2,1
    80007c10:	07252e23          	sw	s2,124(a0)
    80007c14:	f75ff06f          	j	80007b88 <acquire+0x3c>

0000000080007c18 <release>:
    80007c18:	fe010113          	addi	sp,sp,-32
    80007c1c:	00813823          	sd	s0,16(sp)
    80007c20:	00113c23          	sd	ra,24(sp)
    80007c24:	00913423          	sd	s1,8(sp)
    80007c28:	01213023          	sd	s2,0(sp)
    80007c2c:	02010413          	addi	s0,sp,32
    80007c30:	00052783          	lw	a5,0(a0)
    80007c34:	00079a63          	bnez	a5,80007c48 <release+0x30>
    80007c38:	00002517          	auipc	a0,0x2
    80007c3c:	a7050513          	addi	a0,a0,-1424 # 800096a8 <digits+0x28>
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	1dc080e7          	jalr	476(ra) # 80006e1c <panic>
    80007c48:	01053903          	ld	s2,16(a0)
    80007c4c:	00050493          	mv	s1,a0
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	808080e7          	jalr	-2040(ra) # 80006458 <mycpu>
    80007c58:	fea910e3          	bne	s2,a0,80007c38 <release+0x20>
    80007c5c:	0004b823          	sd	zero,16(s1)
    80007c60:	0ff0000f          	fence
    80007c64:	0f50000f          	fence	iorw,ow
    80007c68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007c6c:	ffffe097          	auipc	ra,0xffffe
    80007c70:	7ec080e7          	jalr	2028(ra) # 80006458 <mycpu>
    80007c74:	100027f3          	csrr	a5,sstatus
    80007c78:	0027f793          	andi	a5,a5,2
    80007c7c:	04079a63          	bnez	a5,80007cd0 <release+0xb8>
    80007c80:	07852783          	lw	a5,120(a0)
    80007c84:	02f05e63          	blez	a5,80007cc0 <release+0xa8>
    80007c88:	fff7871b          	addiw	a4,a5,-1
    80007c8c:	06e52c23          	sw	a4,120(a0)
    80007c90:	00071c63          	bnez	a4,80007ca8 <release+0x90>
    80007c94:	07c52783          	lw	a5,124(a0)
    80007c98:	00078863          	beqz	a5,80007ca8 <release+0x90>
    80007c9c:	100027f3          	csrr	a5,sstatus
    80007ca0:	0027e793          	ori	a5,a5,2
    80007ca4:	10079073          	csrw	sstatus,a5
    80007ca8:	01813083          	ld	ra,24(sp)
    80007cac:	01013403          	ld	s0,16(sp)
    80007cb0:	00813483          	ld	s1,8(sp)
    80007cb4:	00013903          	ld	s2,0(sp)
    80007cb8:	02010113          	addi	sp,sp,32
    80007cbc:	00008067          	ret
    80007cc0:	00002517          	auipc	a0,0x2
    80007cc4:	a0850513          	addi	a0,a0,-1528 # 800096c8 <digits+0x48>
    80007cc8:	fffff097          	auipc	ra,0xfffff
    80007ccc:	154080e7          	jalr	340(ra) # 80006e1c <panic>
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	9e050513          	addi	a0,a0,-1568 # 800096b0 <digits+0x30>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	144080e7          	jalr	324(ra) # 80006e1c <panic>

0000000080007ce0 <holding>:
    80007ce0:	00052783          	lw	a5,0(a0)
    80007ce4:	00079663          	bnez	a5,80007cf0 <holding+0x10>
    80007ce8:	00000513          	li	a0,0
    80007cec:	00008067          	ret
    80007cf0:	fe010113          	addi	sp,sp,-32
    80007cf4:	00813823          	sd	s0,16(sp)
    80007cf8:	00913423          	sd	s1,8(sp)
    80007cfc:	00113c23          	sd	ra,24(sp)
    80007d00:	02010413          	addi	s0,sp,32
    80007d04:	01053483          	ld	s1,16(a0)
    80007d08:	ffffe097          	auipc	ra,0xffffe
    80007d0c:	750080e7          	jalr	1872(ra) # 80006458 <mycpu>
    80007d10:	01813083          	ld	ra,24(sp)
    80007d14:	01013403          	ld	s0,16(sp)
    80007d18:	40a48533          	sub	a0,s1,a0
    80007d1c:	00153513          	seqz	a0,a0
    80007d20:	00813483          	ld	s1,8(sp)
    80007d24:	02010113          	addi	sp,sp,32
    80007d28:	00008067          	ret

0000000080007d2c <push_off>:
    80007d2c:	fe010113          	addi	sp,sp,-32
    80007d30:	00813823          	sd	s0,16(sp)
    80007d34:	00113c23          	sd	ra,24(sp)
    80007d38:	00913423          	sd	s1,8(sp)
    80007d3c:	02010413          	addi	s0,sp,32
    80007d40:	100024f3          	csrr	s1,sstatus
    80007d44:	100027f3          	csrr	a5,sstatus
    80007d48:	ffd7f793          	andi	a5,a5,-3
    80007d4c:	10079073          	csrw	sstatus,a5
    80007d50:	ffffe097          	auipc	ra,0xffffe
    80007d54:	708080e7          	jalr	1800(ra) # 80006458 <mycpu>
    80007d58:	07852783          	lw	a5,120(a0)
    80007d5c:	02078663          	beqz	a5,80007d88 <push_off+0x5c>
    80007d60:	ffffe097          	auipc	ra,0xffffe
    80007d64:	6f8080e7          	jalr	1784(ra) # 80006458 <mycpu>
    80007d68:	07852783          	lw	a5,120(a0)
    80007d6c:	01813083          	ld	ra,24(sp)
    80007d70:	01013403          	ld	s0,16(sp)
    80007d74:	0017879b          	addiw	a5,a5,1
    80007d78:	06f52c23          	sw	a5,120(a0)
    80007d7c:	00813483          	ld	s1,8(sp)
    80007d80:	02010113          	addi	sp,sp,32
    80007d84:	00008067          	ret
    80007d88:	0014d493          	srli	s1,s1,0x1
    80007d8c:	ffffe097          	auipc	ra,0xffffe
    80007d90:	6cc080e7          	jalr	1740(ra) # 80006458 <mycpu>
    80007d94:	0014f493          	andi	s1,s1,1
    80007d98:	06952e23          	sw	s1,124(a0)
    80007d9c:	fc5ff06f          	j	80007d60 <push_off+0x34>

0000000080007da0 <pop_off>:
    80007da0:	ff010113          	addi	sp,sp,-16
    80007da4:	00813023          	sd	s0,0(sp)
    80007da8:	00113423          	sd	ra,8(sp)
    80007dac:	01010413          	addi	s0,sp,16
    80007db0:	ffffe097          	auipc	ra,0xffffe
    80007db4:	6a8080e7          	jalr	1704(ra) # 80006458 <mycpu>
    80007db8:	100027f3          	csrr	a5,sstatus
    80007dbc:	0027f793          	andi	a5,a5,2
    80007dc0:	04079663          	bnez	a5,80007e0c <pop_off+0x6c>
    80007dc4:	07852783          	lw	a5,120(a0)
    80007dc8:	02f05a63          	blez	a5,80007dfc <pop_off+0x5c>
    80007dcc:	fff7871b          	addiw	a4,a5,-1
    80007dd0:	06e52c23          	sw	a4,120(a0)
    80007dd4:	00071c63          	bnez	a4,80007dec <pop_off+0x4c>
    80007dd8:	07c52783          	lw	a5,124(a0)
    80007ddc:	00078863          	beqz	a5,80007dec <pop_off+0x4c>
    80007de0:	100027f3          	csrr	a5,sstatus
    80007de4:	0027e793          	ori	a5,a5,2
    80007de8:	10079073          	csrw	sstatus,a5
    80007dec:	00813083          	ld	ra,8(sp)
    80007df0:	00013403          	ld	s0,0(sp)
    80007df4:	01010113          	addi	sp,sp,16
    80007df8:	00008067          	ret
    80007dfc:	00002517          	auipc	a0,0x2
    80007e00:	8cc50513          	addi	a0,a0,-1844 # 800096c8 <digits+0x48>
    80007e04:	fffff097          	auipc	ra,0xfffff
    80007e08:	018080e7          	jalr	24(ra) # 80006e1c <panic>
    80007e0c:	00002517          	auipc	a0,0x2
    80007e10:	8a450513          	addi	a0,a0,-1884 # 800096b0 <digits+0x30>
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	008080e7          	jalr	8(ra) # 80006e1c <panic>

0000000080007e1c <push_on>:
    80007e1c:	fe010113          	addi	sp,sp,-32
    80007e20:	00813823          	sd	s0,16(sp)
    80007e24:	00113c23          	sd	ra,24(sp)
    80007e28:	00913423          	sd	s1,8(sp)
    80007e2c:	02010413          	addi	s0,sp,32
    80007e30:	100024f3          	csrr	s1,sstatus
    80007e34:	100027f3          	csrr	a5,sstatus
    80007e38:	0027e793          	ori	a5,a5,2
    80007e3c:	10079073          	csrw	sstatus,a5
    80007e40:	ffffe097          	auipc	ra,0xffffe
    80007e44:	618080e7          	jalr	1560(ra) # 80006458 <mycpu>
    80007e48:	07852783          	lw	a5,120(a0)
    80007e4c:	02078663          	beqz	a5,80007e78 <push_on+0x5c>
    80007e50:	ffffe097          	auipc	ra,0xffffe
    80007e54:	608080e7          	jalr	1544(ra) # 80006458 <mycpu>
    80007e58:	07852783          	lw	a5,120(a0)
    80007e5c:	01813083          	ld	ra,24(sp)
    80007e60:	01013403          	ld	s0,16(sp)
    80007e64:	0017879b          	addiw	a5,a5,1
    80007e68:	06f52c23          	sw	a5,120(a0)
    80007e6c:	00813483          	ld	s1,8(sp)
    80007e70:	02010113          	addi	sp,sp,32
    80007e74:	00008067          	ret
    80007e78:	0014d493          	srli	s1,s1,0x1
    80007e7c:	ffffe097          	auipc	ra,0xffffe
    80007e80:	5dc080e7          	jalr	1500(ra) # 80006458 <mycpu>
    80007e84:	0014f493          	andi	s1,s1,1
    80007e88:	06952e23          	sw	s1,124(a0)
    80007e8c:	fc5ff06f          	j	80007e50 <push_on+0x34>

0000000080007e90 <pop_on>:
    80007e90:	ff010113          	addi	sp,sp,-16
    80007e94:	00813023          	sd	s0,0(sp)
    80007e98:	00113423          	sd	ra,8(sp)
    80007e9c:	01010413          	addi	s0,sp,16
    80007ea0:	ffffe097          	auipc	ra,0xffffe
    80007ea4:	5b8080e7          	jalr	1464(ra) # 80006458 <mycpu>
    80007ea8:	100027f3          	csrr	a5,sstatus
    80007eac:	0027f793          	andi	a5,a5,2
    80007eb0:	04078463          	beqz	a5,80007ef8 <pop_on+0x68>
    80007eb4:	07852783          	lw	a5,120(a0)
    80007eb8:	02f05863          	blez	a5,80007ee8 <pop_on+0x58>
    80007ebc:	fff7879b          	addiw	a5,a5,-1
    80007ec0:	06f52c23          	sw	a5,120(a0)
    80007ec4:	07853783          	ld	a5,120(a0)
    80007ec8:	00079863          	bnez	a5,80007ed8 <pop_on+0x48>
    80007ecc:	100027f3          	csrr	a5,sstatus
    80007ed0:	ffd7f793          	andi	a5,a5,-3
    80007ed4:	10079073          	csrw	sstatus,a5
    80007ed8:	00813083          	ld	ra,8(sp)
    80007edc:	00013403          	ld	s0,0(sp)
    80007ee0:	01010113          	addi	sp,sp,16
    80007ee4:	00008067          	ret
    80007ee8:	00002517          	auipc	a0,0x2
    80007eec:	80850513          	addi	a0,a0,-2040 # 800096f0 <digits+0x70>
    80007ef0:	fffff097          	auipc	ra,0xfffff
    80007ef4:	f2c080e7          	jalr	-212(ra) # 80006e1c <panic>
    80007ef8:	00001517          	auipc	a0,0x1
    80007efc:	7d850513          	addi	a0,a0,2008 # 800096d0 <digits+0x50>
    80007f00:	fffff097          	auipc	ra,0xfffff
    80007f04:	f1c080e7          	jalr	-228(ra) # 80006e1c <panic>

0000000080007f08 <__memset>:
    80007f08:	ff010113          	addi	sp,sp,-16
    80007f0c:	00813423          	sd	s0,8(sp)
    80007f10:	01010413          	addi	s0,sp,16
    80007f14:	1a060e63          	beqz	a2,800080d0 <__memset+0x1c8>
    80007f18:	40a007b3          	neg	a5,a0
    80007f1c:	0077f793          	andi	a5,a5,7
    80007f20:	00778693          	addi	a3,a5,7
    80007f24:	00b00813          	li	a6,11
    80007f28:	0ff5f593          	andi	a1,a1,255
    80007f2c:	fff6071b          	addiw	a4,a2,-1
    80007f30:	1b06e663          	bltu	a3,a6,800080dc <__memset+0x1d4>
    80007f34:	1cd76463          	bltu	a4,a3,800080fc <__memset+0x1f4>
    80007f38:	1a078e63          	beqz	a5,800080f4 <__memset+0x1ec>
    80007f3c:	00b50023          	sb	a1,0(a0)
    80007f40:	00100713          	li	a4,1
    80007f44:	1ae78463          	beq	a5,a4,800080ec <__memset+0x1e4>
    80007f48:	00b500a3          	sb	a1,1(a0)
    80007f4c:	00200713          	li	a4,2
    80007f50:	1ae78a63          	beq	a5,a4,80008104 <__memset+0x1fc>
    80007f54:	00b50123          	sb	a1,2(a0)
    80007f58:	00300713          	li	a4,3
    80007f5c:	18e78463          	beq	a5,a4,800080e4 <__memset+0x1dc>
    80007f60:	00b501a3          	sb	a1,3(a0)
    80007f64:	00400713          	li	a4,4
    80007f68:	1ae78263          	beq	a5,a4,8000810c <__memset+0x204>
    80007f6c:	00b50223          	sb	a1,4(a0)
    80007f70:	00500713          	li	a4,5
    80007f74:	1ae78063          	beq	a5,a4,80008114 <__memset+0x20c>
    80007f78:	00b502a3          	sb	a1,5(a0)
    80007f7c:	00700713          	li	a4,7
    80007f80:	18e79e63          	bne	a5,a4,8000811c <__memset+0x214>
    80007f84:	00b50323          	sb	a1,6(a0)
    80007f88:	00700e93          	li	t4,7
    80007f8c:	00859713          	slli	a4,a1,0x8
    80007f90:	00e5e733          	or	a4,a1,a4
    80007f94:	01059e13          	slli	t3,a1,0x10
    80007f98:	01c76e33          	or	t3,a4,t3
    80007f9c:	01859313          	slli	t1,a1,0x18
    80007fa0:	006e6333          	or	t1,t3,t1
    80007fa4:	02059893          	slli	a7,a1,0x20
    80007fa8:	40f60e3b          	subw	t3,a2,a5
    80007fac:	011368b3          	or	a7,t1,a7
    80007fb0:	02859813          	slli	a6,a1,0x28
    80007fb4:	0108e833          	or	a6,a7,a6
    80007fb8:	03059693          	slli	a3,a1,0x30
    80007fbc:	003e589b          	srliw	a7,t3,0x3
    80007fc0:	00d866b3          	or	a3,a6,a3
    80007fc4:	03859713          	slli	a4,a1,0x38
    80007fc8:	00389813          	slli	a6,a7,0x3
    80007fcc:	00f507b3          	add	a5,a0,a5
    80007fd0:	00e6e733          	or	a4,a3,a4
    80007fd4:	000e089b          	sext.w	a7,t3
    80007fd8:	00f806b3          	add	a3,a6,a5
    80007fdc:	00e7b023          	sd	a4,0(a5)
    80007fe0:	00878793          	addi	a5,a5,8
    80007fe4:	fed79ce3          	bne	a5,a3,80007fdc <__memset+0xd4>
    80007fe8:	ff8e7793          	andi	a5,t3,-8
    80007fec:	0007871b          	sext.w	a4,a5
    80007ff0:	01d787bb          	addw	a5,a5,t4
    80007ff4:	0ce88e63          	beq	a7,a4,800080d0 <__memset+0x1c8>
    80007ff8:	00f50733          	add	a4,a0,a5
    80007ffc:	00b70023          	sb	a1,0(a4)
    80008000:	0017871b          	addiw	a4,a5,1
    80008004:	0cc77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008008:	00e50733          	add	a4,a0,a4
    8000800c:	00b70023          	sb	a1,0(a4)
    80008010:	0027871b          	addiw	a4,a5,2
    80008014:	0ac77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	0037871b          	addiw	a4,a5,3
    80008024:	0ac77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008028:	00e50733          	add	a4,a0,a4
    8000802c:	00b70023          	sb	a1,0(a4)
    80008030:	0047871b          	addiw	a4,a5,4
    80008034:	08c77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008038:	00e50733          	add	a4,a0,a4
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	0057871b          	addiw	a4,a5,5
    80008044:	08c77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	0067871b          	addiw	a4,a5,6
    80008054:	06c77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008058:	00e50733          	add	a4,a0,a4
    8000805c:	00b70023          	sb	a1,0(a4)
    80008060:	0077871b          	addiw	a4,a5,7
    80008064:	06c77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00b70023          	sb	a1,0(a4)
    80008070:	0087871b          	addiw	a4,a5,8
    80008074:	04c77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	0097871b          	addiw	a4,a5,9
    80008084:	04c77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	00a7871b          	addiw	a4,a5,10
    80008094:	02c77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	00b7871b          	addiw	a4,a5,11
    800080a4:	02c77663          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	00c7871b          	addiw	a4,a5,12
    800080b4:	00c77e63          	bgeu	a4,a2,800080d0 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	00d7879b          	addiw	a5,a5,13
    800080c4:	00c7f663          	bgeu	a5,a2,800080d0 <__memset+0x1c8>
    800080c8:	00f507b3          	add	a5,a0,a5
    800080cc:	00b78023          	sb	a1,0(a5)
    800080d0:	00813403          	ld	s0,8(sp)
    800080d4:	01010113          	addi	sp,sp,16
    800080d8:	00008067          	ret
    800080dc:	00b00693          	li	a3,11
    800080e0:	e55ff06f          	j	80007f34 <__memset+0x2c>
    800080e4:	00300e93          	li	t4,3
    800080e8:	ea5ff06f          	j	80007f8c <__memset+0x84>
    800080ec:	00100e93          	li	t4,1
    800080f0:	e9dff06f          	j	80007f8c <__memset+0x84>
    800080f4:	00000e93          	li	t4,0
    800080f8:	e95ff06f          	j	80007f8c <__memset+0x84>
    800080fc:	00000793          	li	a5,0
    80008100:	ef9ff06f          	j	80007ff8 <__memset+0xf0>
    80008104:	00200e93          	li	t4,2
    80008108:	e85ff06f          	j	80007f8c <__memset+0x84>
    8000810c:	00400e93          	li	t4,4
    80008110:	e7dff06f          	j	80007f8c <__memset+0x84>
    80008114:	00500e93          	li	t4,5
    80008118:	e75ff06f          	j	80007f8c <__memset+0x84>
    8000811c:	00600e93          	li	t4,6
    80008120:	e6dff06f          	j	80007f8c <__memset+0x84>

0000000080008124 <__memmove>:
    80008124:	ff010113          	addi	sp,sp,-16
    80008128:	00813423          	sd	s0,8(sp)
    8000812c:	01010413          	addi	s0,sp,16
    80008130:	0e060863          	beqz	a2,80008220 <__memmove+0xfc>
    80008134:	fff6069b          	addiw	a3,a2,-1
    80008138:	0006881b          	sext.w	a6,a3
    8000813c:	0ea5e863          	bltu	a1,a0,8000822c <__memmove+0x108>
    80008140:	00758713          	addi	a4,a1,7
    80008144:	00a5e7b3          	or	a5,a1,a0
    80008148:	40a70733          	sub	a4,a4,a0
    8000814c:	0077f793          	andi	a5,a5,7
    80008150:	00f73713          	sltiu	a4,a4,15
    80008154:	00174713          	xori	a4,a4,1
    80008158:	0017b793          	seqz	a5,a5
    8000815c:	00e7f7b3          	and	a5,a5,a4
    80008160:	10078863          	beqz	a5,80008270 <__memmove+0x14c>
    80008164:	00900793          	li	a5,9
    80008168:	1107f463          	bgeu	a5,a6,80008270 <__memmove+0x14c>
    8000816c:	0036581b          	srliw	a6,a2,0x3
    80008170:	fff8081b          	addiw	a6,a6,-1
    80008174:	02081813          	slli	a6,a6,0x20
    80008178:	01d85893          	srli	a7,a6,0x1d
    8000817c:	00858813          	addi	a6,a1,8
    80008180:	00058793          	mv	a5,a1
    80008184:	00050713          	mv	a4,a0
    80008188:	01088833          	add	a6,a7,a6
    8000818c:	0007b883          	ld	a7,0(a5)
    80008190:	00878793          	addi	a5,a5,8
    80008194:	00870713          	addi	a4,a4,8
    80008198:	ff173c23          	sd	a7,-8(a4)
    8000819c:	ff0798e3          	bne	a5,a6,8000818c <__memmove+0x68>
    800081a0:	ff867713          	andi	a4,a2,-8
    800081a4:	02071793          	slli	a5,a4,0x20
    800081a8:	0207d793          	srli	a5,a5,0x20
    800081ac:	00f585b3          	add	a1,a1,a5
    800081b0:	40e686bb          	subw	a3,a3,a4
    800081b4:	00f507b3          	add	a5,a0,a5
    800081b8:	06e60463          	beq	a2,a4,80008220 <__memmove+0xfc>
    800081bc:	0005c703          	lbu	a4,0(a1)
    800081c0:	00e78023          	sb	a4,0(a5)
    800081c4:	04068e63          	beqz	a3,80008220 <__memmove+0xfc>
    800081c8:	0015c603          	lbu	a2,1(a1)
    800081cc:	00100713          	li	a4,1
    800081d0:	00c780a3          	sb	a2,1(a5)
    800081d4:	04e68663          	beq	a3,a4,80008220 <__memmove+0xfc>
    800081d8:	0025c603          	lbu	a2,2(a1)
    800081dc:	00200713          	li	a4,2
    800081e0:	00c78123          	sb	a2,2(a5)
    800081e4:	02e68e63          	beq	a3,a4,80008220 <__memmove+0xfc>
    800081e8:	0035c603          	lbu	a2,3(a1)
    800081ec:	00300713          	li	a4,3
    800081f0:	00c781a3          	sb	a2,3(a5)
    800081f4:	02e68663          	beq	a3,a4,80008220 <__memmove+0xfc>
    800081f8:	0045c603          	lbu	a2,4(a1)
    800081fc:	00400713          	li	a4,4
    80008200:	00c78223          	sb	a2,4(a5)
    80008204:	00e68e63          	beq	a3,a4,80008220 <__memmove+0xfc>
    80008208:	0055c603          	lbu	a2,5(a1)
    8000820c:	00500713          	li	a4,5
    80008210:	00c782a3          	sb	a2,5(a5)
    80008214:	00e68663          	beq	a3,a4,80008220 <__memmove+0xfc>
    80008218:	0065c703          	lbu	a4,6(a1)
    8000821c:	00e78323          	sb	a4,6(a5)
    80008220:	00813403          	ld	s0,8(sp)
    80008224:	01010113          	addi	sp,sp,16
    80008228:	00008067          	ret
    8000822c:	02061713          	slli	a4,a2,0x20
    80008230:	02075713          	srli	a4,a4,0x20
    80008234:	00e587b3          	add	a5,a1,a4
    80008238:	f0f574e3          	bgeu	a0,a5,80008140 <__memmove+0x1c>
    8000823c:	02069613          	slli	a2,a3,0x20
    80008240:	02065613          	srli	a2,a2,0x20
    80008244:	fff64613          	not	a2,a2
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00c78633          	add	a2,a5,a2
    80008250:	fff7c683          	lbu	a3,-1(a5)
    80008254:	fff78793          	addi	a5,a5,-1
    80008258:	fff70713          	addi	a4,a4,-1
    8000825c:	00d70023          	sb	a3,0(a4)
    80008260:	fec798e3          	bne	a5,a2,80008250 <__memmove+0x12c>
    80008264:	00813403          	ld	s0,8(sp)
    80008268:	01010113          	addi	sp,sp,16
    8000826c:	00008067          	ret
    80008270:	02069713          	slli	a4,a3,0x20
    80008274:	02075713          	srli	a4,a4,0x20
    80008278:	00170713          	addi	a4,a4,1
    8000827c:	00e50733          	add	a4,a0,a4
    80008280:	00050793          	mv	a5,a0
    80008284:	0005c683          	lbu	a3,0(a1)
    80008288:	00178793          	addi	a5,a5,1
    8000828c:	00158593          	addi	a1,a1,1
    80008290:	fed78fa3          	sb	a3,-1(a5)
    80008294:	fee798e3          	bne	a5,a4,80008284 <__memmove+0x160>
    80008298:	f89ff06f          	j	80008220 <__memmove+0xfc>

000000008000829c <__putc>:
    8000829c:	fe010113          	addi	sp,sp,-32
    800082a0:	00813823          	sd	s0,16(sp)
    800082a4:	00113c23          	sd	ra,24(sp)
    800082a8:	02010413          	addi	s0,sp,32
    800082ac:	00050793          	mv	a5,a0
    800082b0:	fef40593          	addi	a1,s0,-17
    800082b4:	00100613          	li	a2,1
    800082b8:	00000513          	li	a0,0
    800082bc:	fef407a3          	sb	a5,-17(s0)
    800082c0:	fffff097          	auipc	ra,0xfffff
    800082c4:	b3c080e7          	jalr	-1220(ra) # 80006dfc <console_write>
    800082c8:	01813083          	ld	ra,24(sp)
    800082cc:	01013403          	ld	s0,16(sp)
    800082d0:	02010113          	addi	sp,sp,32
    800082d4:	00008067          	ret

00000000800082d8 <__getc>:
    800082d8:	fe010113          	addi	sp,sp,-32
    800082dc:	00813823          	sd	s0,16(sp)
    800082e0:	00113c23          	sd	ra,24(sp)
    800082e4:	02010413          	addi	s0,sp,32
    800082e8:	fe840593          	addi	a1,s0,-24
    800082ec:	00100613          	li	a2,1
    800082f0:	00000513          	li	a0,0
    800082f4:	fffff097          	auipc	ra,0xfffff
    800082f8:	ae8080e7          	jalr	-1304(ra) # 80006ddc <console_read>
    800082fc:	fe844503          	lbu	a0,-24(s0)
    80008300:	01813083          	ld	ra,24(sp)
    80008304:	01013403          	ld	s0,16(sp)
    80008308:	02010113          	addi	sp,sp,32
    8000830c:	00008067          	ret

0000000080008310 <console_handler>:
    80008310:	fe010113          	addi	sp,sp,-32
    80008314:	00813823          	sd	s0,16(sp)
    80008318:	00113c23          	sd	ra,24(sp)
    8000831c:	00913423          	sd	s1,8(sp)
    80008320:	02010413          	addi	s0,sp,32
    80008324:	14202773          	csrr	a4,scause
    80008328:	100027f3          	csrr	a5,sstatus
    8000832c:	0027f793          	andi	a5,a5,2
    80008330:	06079e63          	bnez	a5,800083ac <console_handler+0x9c>
    80008334:	00074c63          	bltz	a4,8000834c <console_handler+0x3c>
    80008338:	01813083          	ld	ra,24(sp)
    8000833c:	01013403          	ld	s0,16(sp)
    80008340:	00813483          	ld	s1,8(sp)
    80008344:	02010113          	addi	sp,sp,32
    80008348:	00008067          	ret
    8000834c:	0ff77713          	andi	a4,a4,255
    80008350:	00900793          	li	a5,9
    80008354:	fef712e3          	bne	a4,a5,80008338 <console_handler+0x28>
    80008358:	ffffe097          	auipc	ra,0xffffe
    8000835c:	6dc080e7          	jalr	1756(ra) # 80006a34 <plic_claim>
    80008360:	00a00793          	li	a5,10
    80008364:	00050493          	mv	s1,a0
    80008368:	02f50c63          	beq	a0,a5,800083a0 <console_handler+0x90>
    8000836c:	fc0506e3          	beqz	a0,80008338 <console_handler+0x28>
    80008370:	00050593          	mv	a1,a0
    80008374:	00001517          	auipc	a0,0x1
    80008378:	28450513          	addi	a0,a0,644 # 800095f8 <_ZL6digits+0xf8>
    8000837c:	fffff097          	auipc	ra,0xfffff
    80008380:	afc080e7          	jalr	-1284(ra) # 80006e78 <__printf>
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	01813083          	ld	ra,24(sp)
    8000838c:	00048513          	mv	a0,s1
    80008390:	00813483          	ld	s1,8(sp)
    80008394:	02010113          	addi	sp,sp,32
    80008398:	ffffe317          	auipc	t1,0xffffe
    8000839c:	6d430067          	jr	1748(t1) # 80006a6c <plic_complete>
    800083a0:	fffff097          	auipc	ra,0xfffff
    800083a4:	3e0080e7          	jalr	992(ra) # 80007780 <uartintr>
    800083a8:	fddff06f          	j	80008384 <console_handler+0x74>
    800083ac:	00001517          	auipc	a0,0x1
    800083b0:	34c50513          	addi	a0,a0,844 # 800096f8 <digits+0x78>
    800083b4:	fffff097          	auipc	ra,0xfffff
    800083b8:	a68080e7          	jalr	-1432(ra) # 80006e1c <panic>
	...
