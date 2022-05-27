
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a0013103          	ld	sp,-1536(sp) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	238060ef          	jal	ra,80006254 <start>

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
    80001080:	125020ef          	jal	ra,800039a4 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001500 <_Z4idlePv>:

#include "../h/Tests.hpp"
#include "../lib/console.h"

void idle(void* args)
{
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00113423          	sd	ra,8(sp)
    80001508:	00813023          	sd	s0,0(sp)
    8000150c:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001510:	00008517          	auipc	a0,0x8
    80001514:	b1050513          	addi	a0,a0,-1264 # 80009020 <CONSOLE_STATUS+0x10>
    80001518:	00002097          	auipc	ra,0x2
    8000151c:	354080e7          	jalr	852(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001520:	00000097          	auipc	ra,0x0
    80001524:	e04080e7          	jalr	-508(ra) # 80001324 <thread_dispatch>
    while(true)
    80001528:	fe9ff06f          	j	80001510 <_Z4idlePv+0x10>

000000008000152c <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00113c23          	sd	ra,24(sp)
    80001534:	00813823          	sd	s0,16(sp)
    80001538:	00913423          	sd	s1,8(sp)
    8000153c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 1 started...\n");
    80001540:	00008517          	auipc	a0,0x8
    80001544:	ae850513          	addi	a0,a0,-1304 # 80009028 <CONSOLE_STATUS+0x18>
    80001548:	00002097          	auipc	ra,0x2
    8000154c:	324080e7          	jalr	804(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    80001550:	00000493          	li	s1,0
    80001554:	03c0006f          	j	80001590 <_Z15thread1FunctionPv+0x64>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	dcc080e7          	jalr	-564(ra) # 80001324 <thread_dispatch>
        Riscv::printString("i : ");
    80001560:	00008517          	auipc	a0,0x8
    80001564:	ae050513          	addi	a0,a0,-1312 # 80009040 <CONSOLE_STATUS+0x30>
    80001568:	00002097          	auipc	ra,0x2
    8000156c:	304080e7          	jalr	772(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001570:	00048513          	mv	a0,s1
    80001574:	00002097          	auipc	ra,0x2
    80001578:	368080e7          	jalr	872(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000157c:	00008517          	auipc	a0,0x8
    80001580:	b8450513          	addi	a0,a0,-1148 # 80009100 <CONSOLE_STATUS+0xf0>
    80001584:	00002097          	auipc	ra,0x2
    80001588:	2e8080e7          	jalr	744(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    8000158c:	00148493          	addi	s1,s1,1
    80001590:	000027b7          	lui	a5,0x2
    80001594:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001598:	0097ec63          	bltu	a5,s1,800015b0 <_Z15thread1FunctionPv+0x84>
        if(i % 150 == 0 && i > 0)
    8000159c:	09600793          	li	a5,150
    800015a0:	02f4f7b3          	remu	a5,s1,a5
    800015a4:	fa079ee3          	bnez	a5,80001560 <_Z15thread1FunctionPv+0x34>
    800015a8:	fa048ce3          	beqz	s1,80001560 <_Z15thread1FunctionPv+0x34>
    800015ac:	fadff06f          	j	80001558 <_Z15thread1FunctionPv+0x2c>
    }
}
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	00913423          	sd	s1,8(sp)
    800015d4:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800015d8:	00008517          	auipc	a0,0x8
    800015dc:	a7050513          	addi	a0,a0,-1424 # 80009048 <CONSOLE_STATUS+0x38>
    800015e0:	00002097          	auipc	ra,0x2
    800015e4:	28c080e7          	jalr	652(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    800015e8:	00000493          	li	s1,0
    800015ec:	03c0006f          	j	80001628 <_Z15thread2FunctionPv+0x64>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	d34080e7          	jalr	-716(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    800015f8:	00008517          	auipc	a0,0x8
    800015fc:	a6850513          	addi	a0,a0,-1432 # 80009060 <CONSOLE_STATUS+0x50>
    80001600:	00002097          	auipc	ra,0x2
    80001604:	26c080e7          	jalr	620(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001608:	00048513          	mv	a0,s1
    8000160c:	00002097          	auipc	ra,0x2
    80001610:	2d0080e7          	jalr	720(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001614:	00008517          	auipc	a0,0x8
    80001618:	aec50513          	addi	a0,a0,-1300 # 80009100 <CONSOLE_STATUS+0xf0>
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	250080e7          	jalr	592(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001624:	00148493          	addi	s1,s1,1
    80001628:	000027b7          	lui	a5,0x2
    8000162c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001630:	0097ec63          	bltu	a5,s1,80001648 <_Z15thread2FunctionPv+0x84>
        if(j % 50 == 0 && j > 0)
    80001634:	03200793          	li	a5,50
    80001638:	02f4f7b3          	remu	a5,s1,a5
    8000163c:	fa079ee3          	bnez	a5,800015f8 <_Z15thread2FunctionPv+0x34>
    80001640:	fa048ce3          	beqz	s1,800015f8 <_Z15thread2FunctionPv+0x34>
    80001644:	fadff06f          	j	800015f0 <_Z15thread2FunctionPv+0x2c>
    }
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    80001670:	00000493          	li	s1,0
    80001674:	000027b7          	lui	a5,0x2
    80001678:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000167c:	0297c463          	blt	a5,s1,800016a4 <_ZN12TestPeriodic18periodicActivationEv+0x48>
    {
        Riscv::printString("i : ");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	9c050513          	addi	a0,a0,-1600 # 80009040 <CONSOLE_STATUS+0x30>
    80001688:	00002097          	auipc	ra,0x2
    8000168c:	1e4080e7          	jalr	484(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001690:	00048513          	mv	a0,s1
    80001694:	00002097          	auipc	ra,0x2
    80001698:	248080e7          	jalr	584(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
    for(int i = 0 ; i < 10000;i++)
    8000169c:	0014849b          	addiw	s1,s1,1
    800016a0:	fd5ff06f          	j	80001674 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_Z20thread2FunctionTest2Pv>:
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    800016cc:	00008517          	auipc	a0,0x8
    800016d0:	97c50513          	addi	a0,a0,-1668 # 80009048 <CONSOLE_STATUS+0x38>
    800016d4:	00002097          	auipc	ra,0x2
    800016d8:	198080e7          	jalr	408(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    800016dc:	00000493          	li	s1,0
    800016e0:	0480006f          	j	80001728 <_Z20thread2FunctionTest2Pv+0x70>
            thread_exit();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	c60080e7          	jalr	-928(ra) # 80001344 <thread_exit>
    800016ec:	0500006f          	j	8000173c <_Z20thread2FunctionTest2Pv+0x84>
            thread_dispatch();
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	c34080e7          	jalr	-972(ra) # 80001324 <thread_dispatch>
        Riscv::printString("j : ");
    800016f8:	00008517          	auipc	a0,0x8
    800016fc:	96850513          	addi	a0,a0,-1688 # 80009060 <CONSOLE_STATUS+0x50>
    80001700:	00002097          	auipc	ra,0x2
    80001704:	16c080e7          	jalr	364(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001708:	00048513          	mv	a0,s1
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	1d0080e7          	jalr	464(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	9ec50513          	addi	a0,a0,-1556 # 80009100 <CONSOLE_STATUS+0xf0>
    8000171c:	00002097          	auipc	ra,0x2
    80001720:	150080e7          	jalr	336(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    80001724:	00148493          	addi	s1,s1,1
    80001728:	000027b7          	lui	a5,0x2
    8000172c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001730:	0297e063          	bltu	a5,s1,80001750 <_Z20thread2FunctionTest2Pv+0x98>
        if(j == 200)
    80001734:	0c800793          	li	a5,200
    80001738:	faf486e3          	beq	s1,a5,800016e4 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    8000173c:	03200793          	li	a5,50
    80001740:	02f4f7b3          	remu	a5,s1,a5
    80001744:	fa079ae3          	bnez	a5,800016f8 <_Z20thread2FunctionTest2Pv+0x40>
    80001748:	fa0488e3          	beqz	s1,800016f8 <_Z20thread2FunctionTest2Pv+0x40>
    8000174c:	fa5ff06f          	j	800016f0 <_Z20thread2FunctionTest2Pv+0x38>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	02010113          	addi	sp,sp,32
    80001760:	00008067          	ret

0000000080001764 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10){
    80001764:	0000a717          	auipc	a4,0xa
    80001768:	2fc72703          	lw	a4,764(a4) # 8000ba60 <head>
    8000176c:	00a00793          	li	a5,10
    80001770:	06f70c63          	beq	a4,a5,800017e8 <_Z9consumerAPv+0x84>
{
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	02010413          	addi	s0,sp,32
        sem_wait(itemAvailable);
    80001788:	0000a497          	auipc	s1,0xa
    8000178c:	2d848493          	addi	s1,s1,728 # 8000ba60 <head>
    80001790:	0084b503          	ld	a0,8(s1)
    80001794:	00000097          	auipc	ra,0x0
    80001798:	c3c080e7          	jalr	-964(ra) # 800013d0 <sem_wait>
        __putc(buffer[head++]);
    8000179c:	0004a783          	lw	a5,0(s1)
    800017a0:	0017871b          	addiw	a4,a5,1
    800017a4:	00e4a023          	sw	a4,0(s1)
    800017a8:	00f487b3          	add	a5,s1,a5
    800017ac:	0107c503          	lbu	a0,16(a5)
    800017b0:	00007097          	auipc	ra,0x7
    800017b4:	b6c080e7          	jalr	-1172(ra) # 8000831c <__putc>
        sem_signal(spaceAvailable);
    800017b8:	0204b503          	ld	a0,32(s1)
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c40080e7          	jalr	-960(ra) # 800013fc <sem_signal>
    while(head!=10){
    800017c4:	0000a717          	auipc	a4,0xa
    800017c8:	29c72703          	lw	a4,668(a4) # 8000ba60 <head>
    800017cc:	00a00793          	li	a5,10
    800017d0:	faf71ce3          	bne	a4,a5,80001788 <_Z9consumerAPv+0x24>
    }
}
    800017d4:	01813083          	ld	ra,24(sp)
    800017d8:	01013403          	ld	s0,16(sp)
    800017dc:	00813483          	ld	s1,8(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret
    800017e8:	00008067          	ret

00000000800017ec <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    800017ec:	0000a717          	auipc	a4,0xa
    800017f0:	29c72703          	lw	a4,668(a4) # 8000ba88 <tail>
    800017f4:	00a00793          	li	a5,10
    800017f8:	08f70063          	beq	a4,a5,80001878 <_Z9producerAPv+0x8c>
{
    800017fc:	fe010113          	addi	sp,sp,-32
    80001800:	00113c23          	sd	ra,24(sp)
    80001804:	00813823          	sd	s0,16(sp)
    80001808:	00913423          	sd	s1,8(sp)
    8000180c:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    80001810:	0000a497          	auipc	s1,0xa
    80001814:	25048493          	addi	s1,s1,592 # 8000ba60 <head>
    80001818:	0204b503          	ld	a0,32(s1)
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	bb4080e7          	jalr	-1100(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001824:	0284a783          	lw	a5,40(s1)
    80001828:	0000a717          	auipc	a4,0xa
    8000182c:	05870713          	addi	a4,a4,88 # 8000b880 <string>
    80001830:	00f70733          	add	a4,a4,a5
    80001834:	00074683          	lbu	a3,0(a4)
    80001838:	00f48733          	add	a4,s1,a5
    8000183c:	00d70823          	sb	a3,16(a4)
        tail++;
    80001840:	0017879b          	addiw	a5,a5,1
    80001844:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    80001848:	0084b503          	ld	a0,8(s1)
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	bb0080e7          	jalr	-1104(ra) # 800013fc <sem_signal>
    while(tail!=10)
    80001854:	0000a717          	auipc	a4,0xa
    80001858:	23472703          	lw	a4,564(a4) # 8000ba88 <tail>
    8000185c:	00a00793          	li	a5,10
    80001860:	faf718e3          	bne	a4,a5,80001810 <_Z9producerAPv+0x24>
    }
}
    80001864:	01813083          	ld	ra,24(sp)
    80001868:	01013403          	ld	s0,16(sp)
    8000186c:	00813483          	ld	s1,8(sp)
    80001870:	02010113          	addi	sp,sp,32
    80001874:	00008067          	ret
    80001878:	00008067          	ret

000000008000187c <_Z11threadTest1v>:
{
    8000187c:	fe010113          	addi	sp,sp,-32
    80001880:	00113c23          	sd	ra,24(sp)
    80001884:	00813823          	sd	s0,16(sp)
    80001888:	00913423          	sd	s1,8(sp)
    8000188c:	01213023          	sd	s2,0(sp)
    80001890:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001894:	01000513          	li	a0,16
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	b9c080e7          	jalr	-1124(ra) # 80003434 <_Znwm>
    800018a0:	00050493          	mv	s1,a0
    800018a4:	00000613          	li	a2,0
    800018a8:	00000597          	auipc	a1,0x0
    800018ac:	c8458593          	addi	a1,a1,-892 # 8000152c <_Z15thread1FunctionPv>
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	d1c080e7          	jalr	-740(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	c48080e7          	jalr	-952(ra) # 80003504 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018c4:	01000513          	li	a0,16
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	b6c080e7          	jalr	-1172(ra) # 80003434 <_Znwm>
    800018d0:	00050493          	mv	s1,a0
    800018d4:	00000613          	li	a2,0
    800018d8:	00000597          	auipc	a1,0x0
    800018dc:	cec58593          	addi	a1,a1,-788 # 800015c4 <_Z15thread2FunctionPv>
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	cec080e7          	jalr	-788(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	c18080e7          	jalr	-1000(ra) # 80003504 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	ef0080e7          	jalr	-272(ra) # 800037e4 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    800018fc:	00007517          	auipc	a0,0x7
    80001900:	76c50513          	addi	a0,a0,1900 # 80009068 <CONSOLE_STATUS+0x58>
    80001904:	00002097          	auipc	ra,0x2
    80001908:	f68080e7          	jalr	-152(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	ef8080e7          	jalr	-264(ra) # 80003804 <_ZN5Riscv17disableInterruptsEv>
}
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	00013903          	ld	s2,0(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret
    8000192c:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001930:	00048513          	mv	a0,s1
    80001934:	00002097          	auipc	ra,0x2
    80001938:	b28080e7          	jalr	-1240(ra) # 8000345c <_ZdlPv>
    8000193c:	00090513          	mv	a0,s2
    80001940:	0000b097          	auipc	ra,0xb
    80001944:	2c8080e7          	jalr	712(ra) # 8000cc08 <_Unwind_Resume>
    80001948:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00002097          	auipc	ra,0x2
    80001954:	b0c080e7          	jalr	-1268(ra) # 8000345c <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	2ac080e7          	jalr	684(ra) # 8000cc08 <_Unwind_Resume>

0000000080001964 <_Z11threadTest2v>:
{
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	01213023          	sd	s2,0(sp)
    80001978:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    8000197c:	01000513          	li	a0,16
    80001980:	00002097          	auipc	ra,0x2
    80001984:	ab4080e7          	jalr	-1356(ra) # 80003434 <_Znwm>
    80001988:	00050493          	mv	s1,a0
    8000198c:	00000613          	li	a2,0
    80001990:	00000597          	auipc	a1,0x0
    80001994:	b7058593          	addi	a1,a1,-1168 # 80001500 <_Z4idlePv>
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	c34080e7          	jalr	-972(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	b60080e7          	jalr	-1184(ra) # 80003504 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019ac:	01000513          	li	a0,16
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	a84080e7          	jalr	-1404(ra) # 80003434 <_Znwm>
    800019b8:	00050493          	mv	s1,a0
    800019bc:	00000613          	li	a2,0
    800019c0:	00000597          	auipc	a1,0x0
    800019c4:	b6c58593          	addi	a1,a1,-1172 # 8000152c <_Z15thread1FunctionPv>
    800019c8:	00002097          	auipc	ra,0x2
    800019cc:	c04080e7          	jalr	-1020(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019d0:	00048513          	mv	a0,s1
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	b30080e7          	jalr	-1232(ra) # 80003504 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019dc:	01000513          	li	a0,16
    800019e0:	00002097          	auipc	ra,0x2
    800019e4:	a54080e7          	jalr	-1452(ra) # 80003434 <_Znwm>
    800019e8:	00050493          	mv	s1,a0
    800019ec:	00000613          	li	a2,0
    800019f0:	00000597          	auipc	a1,0x0
    800019f4:	cc858593          	addi	a1,a1,-824 # 800016b8 <_Z20thread2FunctionTest2Pv>
    800019f8:	00002097          	auipc	ra,0x2
    800019fc:	bd4080e7          	jalr	-1068(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	b00080e7          	jalr	-1280(ra) # 80003504 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a0c:	00002097          	auipc	ra,0x2
    80001a10:	dd8080e7          	jalr	-552(ra) # 800037e4 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a14:	00007517          	auipc	a0,0x7
    80001a18:	65450513          	addi	a0,a0,1620 # 80009068 <CONSOLE_STATUS+0x58>
    80001a1c:	00002097          	auipc	ra,0x2
    80001a20:	e50080e7          	jalr	-432(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	de0080e7          	jalr	-544(ra) # 80003804 <_ZN5Riscv17disableInterruptsEv>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	00013903          	ld	s2,0(sp)
    80001a3c:	02010113          	addi	sp,sp,32
    80001a40:	00008067          	ret
    80001a44:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00002097          	auipc	ra,0x2
    80001a50:	a10080e7          	jalr	-1520(ra) # 8000345c <_ZdlPv>
    80001a54:	00090513          	mv	a0,s2
    80001a58:	0000b097          	auipc	ra,0xb
    80001a5c:	1b0080e7          	jalr	432(ra) # 8000cc08 <_Unwind_Resume>
    80001a60:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	9f4080e7          	jalr	-1548(ra) # 8000345c <_ZdlPv>
    80001a70:	00090513          	mv	a0,s2
    80001a74:	0000b097          	auipc	ra,0xb
    80001a78:	194080e7          	jalr	404(ra) # 8000cc08 <_Unwind_Resume>
    80001a7c:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	9d8080e7          	jalr	-1576(ra) # 8000345c <_ZdlPv>
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	0000b097          	auipc	ra,0xb
    80001a94:	178080e7          	jalr	376(ra) # 8000cc08 <_Unwind_Resume>

0000000080001a98 <_Z10mallocFreev>:
{
    80001a98:	cc010113          	addi	sp,sp,-832
    80001a9c:	32113c23          	sd	ra,824(sp)
    80001aa0:	32813823          	sd	s0,816(sp)
    80001aa4:	32913423          	sd	s1,808(sp)
    80001aa8:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001aac:	00007517          	auipc	a0,0x7
    80001ab0:	5c450513          	addi	a0,a0,1476 # 80009070 <CONSOLE_STATUS+0x60>
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	db8080e7          	jalr	-584(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001abc:	00000493          	li	s1,0
    80001ac0:	0080006f          	j	80001ac8 <_Z10mallocFreev+0x30>
    80001ac4:	0014849b          	addiw	s1,s1,1
    80001ac8:	06300793          	li	a5,99
    80001acc:	0497c463          	blt	a5,s1,80001b14 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001ad0:	06400513          	li	a0,100
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	774080e7          	jalr	1908(ra) # 80001248 <mem_alloc>
    80001adc:	00349793          	slli	a5,s1,0x3
    80001ae0:	fe040713          	addi	a4,s0,-32
    80001ae4:	00f707b3          	add	a5,a4,a5
    80001ae8:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001aec:	fc051ce3          	bnez	a0,80001ac4 <_Z10mallocFreev+0x2c>
            Riscv::printString("not OK\n");
    80001af0:	00007517          	auipc	a0,0x7
    80001af4:	59050513          	addi	a0,a0,1424 # 80009080 <CONSOLE_STATUS+0x70>
    80001af8:	00002097          	auipc	ra,0x2
    80001afc:	d74080e7          	jalr	-652(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001b00:	33813083          	ld	ra,824(sp)
    80001b04:	33013403          	ld	s0,816(sp)
    80001b08:	32813483          	ld	s1,808(sp)
    80001b0c:	34010113          	addi	sp,sp,832
    80001b10:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b14:	00000493          	li	s1,0
    80001b18:	06300793          	li	a5,99
    80001b1c:	0297ce63          	blt	a5,s1,80001b58 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b20:	00349793          	slli	a5,s1,0x3
    80001b24:	fe040713          	addi	a4,s0,-32
    80001b28:	00f707b3          	add	a5,a4,a5
    80001b2c:	ce07b503          	ld	a0,-800(a5)
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	748080e7          	jalr	1864(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001b38:	00051663          	bnez	a0,80001b44 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001b3c:	0024849b          	addiw	s1,s1,2
    80001b40:	fd9ff06f          	j	80001b18 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001b44:	00007517          	auipc	a0,0x7
    80001b48:	53c50513          	addi	a0,a0,1340 # 80009080 <CONSOLE_STATUS+0x70>
    80001b4c:	00002097          	auipc	ra,0x2
    80001b50:	d20080e7          	jalr	-736(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
            return;
    80001b54:	fadff06f          	j	80001b00 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001b58:	00000493          	li	s1,0
    80001b5c:	0080006f          	j	80001b64 <_Z10mallocFreev+0xcc>
    80001b60:	0024849b          	addiw	s1,s1,2
    80001b64:	06300793          	li	a5,99
    80001b68:	0297cc63          	blt	a5,s1,80001ba0 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001b6c:	01400513          	li	a0,20
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	6d8080e7          	jalr	1752(ra) # 80001248 <mem_alloc>
    80001b78:	00349793          	slli	a5,s1,0x3
    80001b7c:	fe040713          	addi	a4,s0,-32
    80001b80:	00f707b3          	add	a5,a4,a5
    80001b84:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b88:	fc051ce3          	bnez	a0,80001b60 <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001b8c:	00007517          	auipc	a0,0x7
    80001b90:	4f450513          	addi	a0,a0,1268 # 80009080 <CONSOLE_STATUS+0x70>
    80001b94:	00002097          	auipc	ra,0x2
    80001b98:	cd8080e7          	jalr	-808(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
            return;
    80001b9c:	f65ff06f          	j	80001b00 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001ba0:	00000493          	li	s1,0
    80001ba4:	06300793          	li	a5,99
    80001ba8:	0297ce63          	blt	a5,s1,80001be4 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001bac:	00349793          	slli	a5,s1,0x3
    80001bb0:	fe040713          	addi	a4,s0,-32
    80001bb4:	00f707b3          	add	a5,a4,a5
    80001bb8:	ce07b503          	ld	a0,-800(a5)
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	6bc080e7          	jalr	1724(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001bc4:	00051663          	bnez	a0,80001bd0 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001bc8:	0014849b          	addiw	s1,s1,1
    80001bcc:	fd9ff06f          	j	80001ba4 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    80001bd0:	00007517          	auipc	a0,0x7
    80001bd4:	4b050513          	addi	a0,a0,1200 # 80009080 <CONSOLE_STATUS+0x70>
    80001bd8:	00002097          	auipc	ra,0x2
    80001bdc:	c94080e7          	jalr	-876(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
            return;
    80001be0:	f21ff06f          	j	80001b00 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001be4:	00007517          	auipc	a0,0x7
    80001be8:	4a450513          	addi	a0,a0,1188 # 80009088 <CONSOLE_STATUS+0x78>
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	c80080e7          	jalr	-896(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80001bf4:	f0dff06f          	j	80001b00 <_Z10mallocFreev+0x68>

0000000080001bf8 <_Z9bigMallocv>:
{
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00113423          	sd	ra,8(sp)
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001c08:	00007517          	auipc	a0,0x7
    80001c0c:	48850513          	addi	a0,a0,1160 # 80009090 <CONSOLE_STATUS+0x80>
    80001c10:	00002097          	auipc	ra,0x2
    80001c14:	c5c080e7          	jalr	-932(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c18:	0000a797          	auipc	a5,0xa
    80001c1c:	df87b783          	ld	a5,-520(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c20:	0007b503          	ld	a0,0(a5)
    80001c24:	0000a797          	auipc	a5,0xa
    80001c28:	dc47b783          	ld	a5,-572(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c2c:	0007b783          	ld	a5,0(a5)
    80001c30:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001c34:	06450513          	addi	a0,a0,100
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	610080e7          	jalr	1552(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001c40:	02050263          	beqz	a0,80001c64 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001c44:	00007517          	auipc	a0,0x7
    80001c48:	43c50513          	addi	a0,a0,1084 # 80009080 <CONSOLE_STATUS+0x70>
    80001c4c:	00002097          	auipc	ra,0x2
    80001c50:	c20080e7          	jalr	-992(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret
        Riscv::printString("OK\n");
    80001c64:	00007517          	auipc	a0,0x7
    80001c68:	42450513          	addi	a0,a0,1060 # 80009088 <CONSOLE_STATUS+0x78>
    80001c6c:	00002097          	auipc	ra,0x2
    80001c70:	c00080e7          	jalr	-1024(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80001c74:	fe1ff06f          	j	80001c54 <_Z9bigMallocv+0x5c>

0000000080001c78 <_Z17lotOfSmallMallocsv>:
{
    80001c78:	fd010113          	addi	sp,sp,-48
    80001c7c:	02113423          	sd	ra,40(sp)
    80001c80:	02813023          	sd	s0,32(sp)
    80001c84:	00913c23          	sd	s1,24(sp)
    80001c88:	01213823          	sd	s2,16(sp)
    80001c8c:	01313423          	sd	s3,8(sp)
    80001c90:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001c94:	00007517          	auipc	a0,0x7
    80001c98:	40c50513          	addi	a0,a0,1036 # 800090a0 <CONSOLE_STATUS+0x90>
    80001c9c:	00002097          	auipc	ra,0x2
    80001ca0:	bd0080e7          	jalr	-1072(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < N;i++)
    80001ca4:	00000493          	li	s1,0
    uint64 sum = 0;
    80001ca8:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001cac:	00000913          	li	s2,0
    80001cb0:	0180006f          	j	80001cc8 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001cb4:	00a00793          	li	a5,10
    80001cb8:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001cbc:	00a98993          	addi	s3,s3,10
        cnt++;
    80001cc0:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001cc4:	00148493          	addi	s1,s1,1
    80001cc8:	000027b7          	lui	a5,0x2
    80001ccc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001cd0:	0097ea63          	bltu	a5,s1,80001ce4 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001cd4:	00800513          	li	a0,8
    80001cd8:	fffff097          	auipc	ra,0xfffff
    80001cdc:	570080e7          	jalr	1392(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001ce0:	fc051ae3          	bnez	a0,80001cb4 <_Z17lotOfSmallMallocsv+0x3c>
    Riscv::printInteger(cnt);
    80001ce4:	00090513          	mv	a0,s2
    80001ce8:	00002097          	auipc	ra,0x2
    80001cec:	bf4080e7          	jalr	-1036(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001cf0:	00007517          	auipc	a0,0x7
    80001cf4:	41050513          	addi	a0,a0,1040 # 80009100 <CONSOLE_STATUS+0xf0>
    80001cf8:	00002097          	auipc	ra,0x2
    80001cfc:	b74080e7          	jalr	-1164(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d00:	00291793          	slli	a5,s2,0x2
    80001d04:	01278933          	add	s2,a5,s2
    80001d08:	00191913          	slli	s2,s2,0x1
    80001d0c:	03390863          	beq	s2,s3,80001d3c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d10:	00007517          	auipc	a0,0x7
    80001d14:	37050513          	addi	a0,a0,880 # 80009080 <CONSOLE_STATUS+0x70>
    80001d18:	00002097          	auipc	ra,0x2
    80001d1c:	b54080e7          	jalr	-1196(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001d20:	02813083          	ld	ra,40(sp)
    80001d24:	02013403          	ld	s0,32(sp)
    80001d28:	01813483          	ld	s1,24(sp)
    80001d2c:	01013903          	ld	s2,16(sp)
    80001d30:	00813983          	ld	s3,8(sp)
    80001d34:	03010113          	addi	sp,sp,48
    80001d38:	00008067          	ret
        Riscv::printString("OK\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	34c50513          	addi	a0,a0,844 # 80009088 <CONSOLE_STATUS+0x78>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	b28080e7          	jalr	-1240(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80001d4c:	fd5ff06f          	j	80001d20 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001d50 <_Z7badFreev>:
{
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001d60:	00007517          	auipc	a0,0x7
    80001d64:	35850513          	addi	a0,a0,856 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001d68:	00002097          	auipc	ra,0x2
    80001d6c:	b04080e7          	jalr	-1276(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d70:	00800513          	li	a0,8
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	4d4080e7          	jalr	1236(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001d7c:	00250513          	addi	a0,a0,2
    80001d80:	fffff097          	auipc	ra,0xfffff
    80001d84:	4f8080e7          	jalr	1272(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001d88:	02051263          	bnez	a0,80001dac <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	2f450513          	addi	a0,a0,756 # 80009080 <CONSOLE_STATUS+0x70>
    80001d94:	00002097          	auipc	ra,0x2
    80001d98:	ad8080e7          	jalr	-1320(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001d9c:	00813083          	ld	ra,8(sp)
    80001da0:	00013403          	ld	s0,0(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret
        Riscv::printString("OK\n");
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	2dc50513          	addi	a0,a0,732 # 80009088 <CONSOLE_STATUS+0x78>
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	ab8080e7          	jalr	-1352(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001dbc:	fe1ff06f          	j	80001d9c <_Z7badFreev+0x4c>

0000000080001dc0 <_Z13stressTestingv>:
{
    80001dc0:	cc010113          	addi	sp,sp,-832
    80001dc4:	32113c23          	sd	ra,824(sp)
    80001dc8:	32813823          	sd	s0,816(sp)
    80001dcc:	32913423          	sd	s1,808(sp)
    80001dd0:	33213023          	sd	s2,800(sp)
    80001dd4:	34010413          	addi	s0,sp,832
    Riscv::printString("stressTesting\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2f050513          	addi	a0,a0,752 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001de0:	00002097          	auipc	ra,0x2
    80001de4:	a8c080e7          	jalr	-1396(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(int i = 0; i < num;i++)
    80001de8:	00000493          	li	s1,0
    80001dec:	0080006f          	j	80001df4 <_Z13stressTestingv+0x34>
    80001df0:	0014849b          	addiw	s1,s1,1
    80001df4:	06300793          	li	a5,99
    80001df8:	0497c663          	blt	a5,s1,80001e44 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001dfc:	00100513          	li	a0,1
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	448080e7          	jalr	1096(ra) # 80001248 <mem_alloc>
    80001e08:	00349793          	slli	a5,s1,0x3
    80001e0c:	fe040713          	addi	a4,s0,-32
    80001e10:	00f707b3          	add	a5,a4,a5
    80001e14:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e18:	fc051ce3          	bnez	a0,80001df0 <_Z13stressTestingv+0x30>
            Riscv::printString("not OK\n");
    80001e1c:	00007517          	auipc	a0,0x7
    80001e20:	26450513          	addi	a0,a0,612 # 80009080 <CONSOLE_STATUS+0x70>
    80001e24:	00002097          	auipc	ra,0x2
    80001e28:	a48080e7          	jalr	-1464(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80001e2c:	33813083          	ld	ra,824(sp)
    80001e30:	33013403          	ld	s0,816(sp)
    80001e34:	32813483          	ld	s1,808(sp)
    80001e38:	32013903          	ld	s2,800(sp)
    80001e3c:	34010113          	addi	sp,sp,832
    80001e40:	00008067          	ret
    int sz = 300;
    80001e44:	12c00913          	li	s2,300
    while(sz > 0)
    80001e48:	11205263          	blez	s2,80001f4c <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001e4c:	00000493          	li	s1,0
    80001e50:	06300793          	li	a5,99
    80001e54:	0697cc63          	blt	a5,s1,80001ecc <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001e58:	00349793          	slli	a5,s1,0x3
    80001e5c:	fe040713          	addi	a4,s0,-32
    80001e60:	00f707b3          	add	a5,a4,a5
    80001e64:	ce07b503          	ld	a0,-800(a5)
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	410080e7          	jalr	1040(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001e70:	02051a63          	bnez	a0,80001ea4 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001e74:	01f9551b          	srliw	a0,s2,0x1f
    80001e78:	0125053b          	addw	a0,a0,s2
    80001e7c:	4015551b          	sraiw	a0,a0,0x1
    80001e80:	fffff097          	auipc	ra,0xfffff
    80001e84:	3c8080e7          	jalr	968(ra) # 80001248 <mem_alloc>
    80001e88:	00349793          	slli	a5,s1,0x3
    80001e8c:	fe040713          	addi	a4,s0,-32
    80001e90:	00f707b3          	add	a5,a4,a5
    80001e94:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001e98:	02050063          	beqz	a0,80001eb8 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001e9c:	0024849b          	addiw	s1,s1,2
    80001ea0:	fb1ff06f          	j	80001e50 <_Z13stressTestingv+0x90>
                Riscv::printString("not OK\n");
    80001ea4:	00007517          	auipc	a0,0x7
    80001ea8:	1dc50513          	addi	a0,a0,476 # 80009080 <CONSOLE_STATUS+0x70>
    80001eac:	00002097          	auipc	ra,0x2
    80001eb0:	9c0080e7          	jalr	-1600(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
                return;
    80001eb4:	f79ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001eb8:	00007517          	auipc	a0,0x7
    80001ebc:	22050513          	addi	a0,a0,544 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001ec0:	00002097          	auipc	ra,0x2
    80001ec4:	9ac080e7          	jalr	-1620(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
                return;
    80001ec8:	f65ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001ecc:	00100493          	li	s1,1
    80001ed0:	06300793          	li	a5,99
    80001ed4:	0697c863          	blt	a5,s1,80001f44 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001ed8:	00349793          	slli	a5,s1,0x3
    80001edc:	fe040713          	addi	a4,s0,-32
    80001ee0:	00f707b3          	add	a5,a4,a5
    80001ee4:	ce07b503          	ld	a0,-800(a5)
    80001ee8:	fffff097          	auipc	ra,0xfffff
    80001eec:	390080e7          	jalr	912(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001ef0:	02051663          	bnez	a0,80001f1c <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001ef4:	00090513          	mv	a0,s2
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	350080e7          	jalr	848(ra) # 80001248 <mem_alloc>
    80001f00:	00349793          	slli	a5,s1,0x3
    80001f04:	fe040713          	addi	a4,s0,-32
    80001f08:	00f707b3          	add	a5,a4,a5
    80001f0c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f10:	02050063          	beqz	a0,80001f30 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f14:	0024849b          	addiw	s1,s1,2
    80001f18:	fb9ff06f          	j	80001ed0 <_Z13stressTestingv+0x110>
                Riscv::printString("not OK\n");
    80001f1c:	00007517          	auipc	a0,0x7
    80001f20:	16450513          	addi	a0,a0,356 # 80009080 <CONSOLE_STATUS+0x70>
    80001f24:	00002097          	auipc	ra,0x2
    80001f28:	948080e7          	jalr	-1720(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
                return;
    80001f2c:	f01ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f30:	00007517          	auipc	a0,0x7
    80001f34:	1a850513          	addi	a0,a0,424 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f38:	00002097          	auipc	ra,0x2
    80001f3c:	934080e7          	jalr	-1740(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
                return;
    80001f40:	eedff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
        sz-=10;
    80001f44:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001f48:	f01ff06f          	j	80001e48 <_Z13stressTestingv+0x88>
    Riscv::printString("OK\n");
    80001f4c:	00007517          	auipc	a0,0x7
    80001f50:	13c50513          	addi	a0,a0,316 # 80009088 <CONSOLE_STATUS+0x78>
    80001f54:	00002097          	auipc	ra,0x2
    80001f58:	918080e7          	jalr	-1768(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80001f5c:	ed1ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>

0000000080001f60 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001f60:	fe010113          	addi	sp,sp,-32
    80001f64:	00113c23          	sd	ra,24(sp)
    80001f68:	00813823          	sd	s0,16(sp)
    80001f6c:	00913423          	sd	s1,8(sp)
    80001f70:	02010413          	addi	s0,sp,32
    80001f74:	00050493          	mv	s1,a0
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	7c0080e7          	jalr	1984(ra) # 80003738 <_ZN14PeriodicThreadC1Em>
    80001f80:	0000a797          	auipc	a5,0xa
    80001f84:	95078793          	addi	a5,a5,-1712 # 8000b8d0 <_ZTV12TestPeriodic+0x10>
    80001f88:	00f4b023          	sd	a5,0(s1)
}
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <_Z11threadTest3v>:
{
    80001fa0:	fe010113          	addi	sp,sp,-32
    80001fa4:	00113c23          	sd	ra,24(sp)
    80001fa8:	00813823          	sd	s0,16(sp)
    80001fac:	00913423          	sd	s1,8(sp)
    80001fb0:	01213023          	sd	s2,0(sp)
    80001fb4:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001fb8:	01000513          	li	a0,16
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	478080e7          	jalr	1144(ra) # 80003434 <_Znwm>
    80001fc4:	00050913          	mv	s2,a0
    80001fc8:	03200593          	li	a1,50
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	f94080e7          	jalr	-108(ra) # 80001f60 <_ZN12TestPeriodicC1Em>
    t->start();
    80001fd4:	00090513          	mv	a0,s2
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	52c080e7          	jalr	1324(ra) # 80003504 <_ZN6Thread5startEv>
    while(true)
    80001fe0:	0000006f          	j	80001fe0 <_Z11threadTest3v+0x40>
    80001fe4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001fe8:	00090513          	mv	a0,s2
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	470080e7          	jalr	1136(ra) # 8000345c <_ZdlPv>
    80001ff4:	00048513          	mv	a0,s1
    80001ff8:	0000b097          	auipc	ra,0xb
    80001ffc:	c10080e7          	jalr	-1008(ra) # 8000cc08 <_Unwind_Resume>

0000000080002000 <_Z11threadTestsv>:
{
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f90080e7          	jalr	-112(ra) # 80001fa0 <_Z11threadTest3v>

0000000080002018 <_Z10mallocTestv>:
{
    80002018:	fc010113          	addi	sp,sp,-64
    8000201c:	02113c23          	sd	ra,56(sp)
    80002020:	02813823          	sd	s0,48(sp)
    80002024:	02913423          	sd	s1,40(sp)
    80002028:	03213023          	sd	s2,32(sp)
    8000202c:	01313c23          	sd	s3,24(sp)
    80002030:	01413823          	sd	s4,16(sp)
    80002034:	01513423          	sd	s5,8(sp)
    80002038:	01613023          	sd	s6,0(sp)
    8000203c:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    80002040:	00007517          	auipc	a0,0x7
    80002044:	0a050513          	addi	a0,a0,160 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002048:	00002097          	auipc	ra,0x2
    8000204c:	824080e7          	jalr	-2012(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    80002050:	02c00513          	li	a0,44
    80002054:	00001097          	auipc	ra,0x1
    80002058:	3e0080e7          	jalr	992(ra) # 80003434 <_Znwm>
    8000205c:	00050493          	mv	s1,a0
    o->a = 3;
    80002060:	00300793          	li	a5,3
    80002064:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002068:	00a00513          	li	a0,10
    8000206c:	fffff097          	auipc	ra,0xfffff
    80002070:	1dc080e7          	jalr	476(ra) # 80001248 <mem_alloc>
    80002074:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002078:	06400513          	li	a0,100
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	1cc080e7          	jalr	460(ra) # 80001248 <mem_alloc>
    80002084:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002088:	3e800513          	li	a0,1000
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	1bc080e7          	jalr	444(ra) # 80001248 <mem_alloc>
    80002094:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80002098:	00002537          	lui	a0,0x2
    8000209c:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	1a8080e7          	jalr	424(ra) # 80001248 <mem_alloc>
    800020a8:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    800020ac:	00100513          	li	a0,1
    800020b0:	fffff097          	auipc	ra,0xfffff
    800020b4:	198080e7          	jalr	408(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    800020b8:	06090c63          	beqz	s2,80002130 <_Z10mallocTestv+0x118>
    800020bc:	00050b13          	mv	s6,a0
    800020c0:	06098863          	beqz	s3,80002130 <_Z10mallocTestv+0x118>
    800020c4:	060a0663          	beqz	s4,80002130 <_Z10mallocTestv+0x118>
    800020c8:	060a8463          	beqz	s5,80002130 <_Z10mallocTestv+0x118>
    800020cc:	06050263          	beqz	a0,80002130 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    800020d0:	00090513          	mv	a0,s2
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	388080e7          	jalr	904(ra) # 8000345c <_ZdlPv>
    delete (uint64*)m3;
    800020dc:	000a0513          	mv	a0,s4
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	37c080e7          	jalr	892(ra) # 8000345c <_ZdlPv>
    delete (uint64*)m4;
    800020e8:	000a8513          	mv	a0,s5
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	370080e7          	jalr	880(ra) # 8000345c <_ZdlPv>
    delete (uint64*)m2;
    800020f4:	00098513          	mv	a0,s3
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	364080e7          	jalr	868(ra) # 8000345c <_ZdlPv>
    delete (uint64*)m5;
    80002100:	000b0513          	mv	a0,s6
    80002104:	00001097          	auipc	ra,0x1
    80002108:	358080e7          	jalr	856(ra) # 8000345c <_ZdlPv>
    delete o;
    8000210c:	00048863          	beqz	s1,8000211c <_Z10mallocTestv+0x104>
    80002110:	00048513          	mv	a0,s1
    80002114:	00001097          	auipc	ra,0x1
    80002118:	348080e7          	jalr	840(ra) # 8000345c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    8000211c:	00007517          	auipc	a0,0x7
    80002120:	fec50513          	addi	a0,a0,-20 # 80009108 <CONSOLE_STATUS+0xf8>
    80002124:	00001097          	auipc	ra,0x1
    80002128:	748080e7          	jalr	1864(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    8000212c:	0140006f          	j	80002140 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    80002130:	00007517          	auipc	a0,0x7
    80002134:	f5050513          	addi	a0,a0,-176 # 80009080 <CONSOLE_STATUS+0x70>
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	734080e7          	jalr	1844(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80002140:	03813083          	ld	ra,56(sp)
    80002144:	03013403          	ld	s0,48(sp)
    80002148:	02813483          	ld	s1,40(sp)
    8000214c:	02013903          	ld	s2,32(sp)
    80002150:	01813983          	ld	s3,24(sp)
    80002154:	01013a03          	ld	s4,16(sp)
    80002158:	00813a83          	ld	s5,8(sp)
    8000215c:	00013b03          	ld	s6,0(sp)
    80002160:	04010113          	addi	sp,sp,64
    80002164:	00008067          	ret

0000000080002168 <_Z16mallocEverythingv>:
{
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    8000217c:	00007517          	auipc	a0,0x7
    80002180:	fbc50513          	addi	a0,a0,-68 # 80009138 <CONSOLE_STATUS+0x128>
    80002184:	00001097          	auipc	ra,0x1
    80002188:	6e8080e7          	jalr	1768(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    8000218c:	0000a797          	auipc	a5,0xa
    80002190:	85c7b783          	ld	a5,-1956(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002194:	0007b503          	ld	a0,0(a5)
    80002198:	0000a797          	auipc	a5,0xa
    8000219c:	8787b783          	ld	a5,-1928(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021a0:	0007b783          	ld	a5,0(a5)
    800021a4:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    800021a8:	ff050513          	addi	a0,a0,-16
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	09c080e7          	jalr	156(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    800021b4:	02050463          	beqz	a0,800021dc <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    800021b8:	00007517          	auipc	a0,0x7
    800021bc:	ec850513          	addi	a0,a0,-312 # 80009080 <CONSOLE_STATUS+0x70>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	6ac080e7          	jalr	1708(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	01013403          	ld	s0,16(sp)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    800021dc:	0000a797          	auipc	a5,0xa
    800021e0:	8347b783          	ld	a5,-1996(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021e4:	0007b503          	ld	a0,0(a5)
    800021e8:	0000a797          	auipc	a5,0xa
    800021ec:	8007b783          	ld	a5,-2048(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021f0:	0007b783          	ld	a5,0(a5)
    800021f4:	40f50533          	sub	a0,a0,a5
    800021f8:	ff050513          	addi	a0,a0,-16
    800021fc:	00655513          	srli	a0,a0,0x6
    80002200:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002204:	00651513          	slli	a0,a0,0x6
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	040080e7          	jalr	64(ra) # 80001248 <mem_alloc>
    80002210:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002214:	02050a63          	beqz	a0,80002248 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002218:	00100513          	li	a0,1
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	02c080e7          	jalr	44(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    80002224:	02050c63          	beqz	a0,8000225c <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002228:	00048513          	mv	a0,s1
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	230080e7          	jalr	560(ra) # 8000345c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002234:	00007517          	auipc	a0,0x7
    80002238:	f3450513          	addi	a0,a0,-204 # 80009168 <CONSOLE_STATUS+0x158>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	630080e7          	jalr	1584(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80002244:	f85ff06f          	j	800021c8 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002248:	00007517          	auipc	a0,0x7
    8000224c:	e3850513          	addi	a0,a0,-456 # 80009080 <CONSOLE_STATUS+0x70>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	61c080e7          	jalr	1564(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    80002258:	f71ff06f          	j	800021c8 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    8000225c:	00007517          	auipc	a0,0x7
    80002260:	e2450513          	addi	a0,a0,-476 # 80009080 <CONSOLE_STATUS+0x70>
    80002264:	00001097          	auipc	ra,0x1
    80002268:	608080e7          	jalr	1544(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    8000226c:	f5dff06f          	j	800021c8 <_Z16mallocEverythingv+0x60>

0000000080002270 <_Z17mallocGapFillTestv>:
{
    80002270:	f6010113          	addi	sp,sp,-160
    80002274:	08113c23          	sd	ra,152(sp)
    80002278:	08813823          	sd	s0,144(sp)
    8000227c:	08913423          	sd	s1,136(sp)
    80002280:	09213023          	sd	s2,128(sp)
    80002284:	07313c23          	sd	s3,120(sp)
    80002288:	07413823          	sd	s4,112(sp)
    8000228c:	07513423          	sd	s5,104(sp)
    80002290:	07613023          	sd	s6,96(sp)
    80002294:	05713c23          	sd	s7,88(sp)
    80002298:	05813823          	sd	s8,80(sp)
    8000229c:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800022a0:	00007517          	auipc	a0,0x7
    800022a4:	f0050513          	addi	a0,a0,-256 # 800091a0 <CONSOLE_STATUS+0x190>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	5c4080e7          	jalr	1476(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    800022b0:	00000493          	li	s1,0
    800022b4:	00900793          	li	a5,9
    800022b8:	0697c863          	blt	a5,s1,80002328 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    800022bc:	0064951b          	slliw	a0,s1,0x6
    800022c0:	0015051b          	addiw	a0,a0,1
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	f84080e7          	jalr	-124(ra) # 80001248 <mem_alloc>
    800022cc:	00349793          	slli	a5,s1,0x3
    800022d0:	fb040713          	addi	a4,s0,-80
    800022d4:	00f707b3          	add	a5,a4,a5
    800022d8:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    800022dc:	00050663          	beqz	a0,800022e8 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    800022e0:	0014849b          	addiw	s1,s1,1
    800022e4:	fd1ff06f          	j	800022b4 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    800022e8:	00007517          	auipc	a0,0x7
    800022ec:	d9850513          	addi	a0,a0,-616 # 80009080 <CONSOLE_STATUS+0x70>
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	57c080e7          	jalr	1404(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    800022f8:	09813083          	ld	ra,152(sp)
    800022fc:	09013403          	ld	s0,144(sp)
    80002300:	08813483          	ld	s1,136(sp)
    80002304:	08013903          	ld	s2,128(sp)
    80002308:	07813983          	ld	s3,120(sp)
    8000230c:	07013a03          	ld	s4,112(sp)
    80002310:	06813a83          	ld	s5,104(sp)
    80002314:	06013b03          	ld	s6,96(sp)
    80002318:	05813b83          	ld	s7,88(sp)
    8000231c:	05013c03          	ld	s8,80(sp)
    80002320:	0a010113          	addi	sp,sp,160
    80002324:	00008067          	ret
    delete (uint64*)m[2];
    80002328:	f7043503          	ld	a0,-144(s0)
    8000232c:	00050663          	beqz	a0,80002338 <_Z17mallocGapFillTestv+0xc8>
    80002330:	00001097          	auipc	ra,0x1
    80002334:	12c080e7          	jalr	300(ra) # 8000345c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002338:	00100513          	li	a0,1
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	f0c080e7          	jalr	-244(ra) # 80001248 <mem_alloc>
    80002344:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002348:	00100513          	li	a0,1
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	efc080e7          	jalr	-260(ra) # 80001248 <mem_alloc>
    80002354:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002358:	00100513          	li	a0,1
    8000235c:	fffff097          	auipc	ra,0xfffff
    80002360:	eec080e7          	jalr	-276(ra) # 80001248 <mem_alloc>
    80002364:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002368:	08048863          	beqz	s1,800023f8 <_Z17mallocGapFillTestv+0x188>
    8000236c:	08090663          	beqz	s2,800023f8 <_Z17mallocGapFillTestv+0x188>
    80002370:	08050463          	beqz	a0,800023f8 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002374:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002378:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000237c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002380:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002384:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002388:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000238c:	0897f063          	bgeu	a5,s1,8000240c <_Z17mallocGapFillTestv+0x19c>
    80002390:	06a4fe63          	bgeu	s1,a0,8000240c <_Z17mallocGapFillTestv+0x19c>
    80002394:	0727fc63          	bgeu	a5,s2,8000240c <_Z17mallocGapFillTestv+0x19c>
    80002398:	06a97a63          	bgeu	s2,a0,8000240c <_Z17mallocGapFillTestv+0x19c>
    8000239c:	07367863          	bgeu	a2,s3,8000240c <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800023a0:	00050663          	beqz	a0,800023ac <_Z17mallocGapFillTestv+0x13c>
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	0b8080e7          	jalr	184(ra) # 8000345c <_ZdlPv>
    delete (uint64*)m[4];
    800023ac:	f8043503          	ld	a0,-128(s0)
    800023b0:	00050663          	beqz	a0,800023bc <_Z17mallocGapFillTestv+0x14c>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	0a8080e7          	jalr	168(ra) # 8000345c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    800023bc:	28000513          	li	a0,640
    800023c0:	fffff097          	auipc	ra,0xfffff
    800023c4:	e88080e7          	jalr	-376(ra) # 80001248 <mem_alloc>
    800023c8:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    800023cc:	24000513          	li	a0,576
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	e78080e7          	jalr	-392(ra) # 80001248 <mem_alloc>
    800023d8:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    800023dc:	040c0263          	beqz	s8,80002420 <_Z17mallocGapFillTestv+0x1b0>
    800023e0:	04050063          	beqz	a0,80002420 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    800023e4:	04aa7863          	bgeu	s4,a0,80002434 <_Z17mallocGapFillTestv+0x1c4>
    800023e8:	04ab7663          	bgeu	s6,a0,80002434 <_Z17mallocGapFillTestv+0x1c4>
    800023ec:	055c7463          	bgeu	s8,s5,80002434 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    800023f0:	00000a13          	li	s4,0
    800023f4:	0580006f          	j	8000244c <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    800023f8:	00007517          	auipc	a0,0x7
    800023fc:	c8850513          	addi	a0,a0,-888 # 80009080 <CONSOLE_STATUS+0x70>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	46c080e7          	jalr	1132(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    80002408:	ef1ff06f          	j	800022f8 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000240c:	00007517          	auipc	a0,0x7
    80002410:	c7450513          	addi	a0,a0,-908 # 80009080 <CONSOLE_STATUS+0x70>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	458080e7          	jalr	1112(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    8000241c:	eddff06f          	j	800022f8 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002420:	00007517          	auipc	a0,0x7
    80002424:	c6050513          	addi	a0,a0,-928 # 80009080 <CONSOLE_STATUS+0x70>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	444080e7          	jalr	1092(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    80002430:	ec9ff06f          	j	800022f8 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002434:	00007517          	auipc	a0,0x7
    80002438:	c4c50513          	addi	a0,a0,-948 # 80009080 <CONSOLE_STATUS+0x70>
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	430080e7          	jalr	1072(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        return;
    80002444:	eb5ff06f          	j	800022f8 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002448:	001a0a1b          	addiw	s4,s4,1
    8000244c:	00900793          	li	a5,9
    80002450:	0347c263          	blt	a5,s4,80002474 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002454:	003a1793          	slli	a5,s4,0x3
    80002458:	fb040713          	addi	a4,s0,-80
    8000245c:	00f707b3          	add	a5,a4,a5
    80002460:	fb07b503          	ld	a0,-80(a5)
    80002464:	fe0502e3          	beqz	a0,80002448 <_Z17mallocGapFillTestv+0x1d8>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	ff4080e7          	jalr	-12(ra) # 8000345c <_ZdlPv>
    80002470:	fd9ff06f          	j	80002448 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002474:	00048513          	mv	a0,s1
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	fe4080e7          	jalr	-28(ra) # 8000345c <_ZdlPv>
    delete (uint64*)tmp2;
    80002480:	00090513          	mv	a0,s2
    80002484:	00001097          	auipc	ra,0x1
    80002488:	fd8080e7          	jalr	-40(ra) # 8000345c <_ZdlPv>
    delete (uint64*)tmp3;
    8000248c:	00098513          	mv	a0,s3
    80002490:	00001097          	auipc	ra,0x1
    80002494:	fcc080e7          	jalr	-52(ra) # 8000345c <_ZdlPv>
    delete (uint64*)tmp4;
    80002498:	000c0513          	mv	a0,s8
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	fc0080e7          	jalr	-64(ra) # 8000345c <_ZdlPv>
    delete (uint64*)tmp5;
    800024a4:	000b8513          	mv	a0,s7
    800024a8:	00001097          	auipc	ra,0x1
    800024ac:	fb4080e7          	jalr	-76(ra) # 8000345c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800024b0:	00007517          	auipc	a0,0x7
    800024b4:	d3850513          	addi	a0,a0,-712 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	3b4080e7          	jalr	948(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    800024c0:	e39ff06f          	j	800022f8 <_Z17mallocGapFillTestv+0x88>

00000000800024c4 <_Z21memoryAllocationTestsv>:
{
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00113423          	sd	ra,8(sp)
    800024cc:	00813023          	sd	s0,0(sp)
    800024d0:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	d9c080e7          	jalr	-612(ra) # 80002270 <_Z17mallocGapFillTestv>
}
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_Z8semTest1v>:

void semTest1()
{
    800024ec:	fe010113          	addi	sp,sp,-32
    800024f0:	00113c23          	sd	ra,24(sp)
    800024f4:	00813823          	sd	s0,16(sp)
    800024f8:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    800024fc:	00a00593          	li	a1,10
    80002500:	00009517          	auipc	a0,0x9
    80002504:	58050513          	addi	a0,a0,1408 # 8000ba80 <spaceAvailable>
    80002508:	fffff097          	auipc	ra,0xfffff
    8000250c:	e64080e7          	jalr	-412(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    80002510:	00000593          	li	a1,0
    80002514:	00009517          	auipc	a0,0x9
    80002518:	55450513          	addi	a0,a0,1364 # 8000ba68 <itemAvailable>
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	e50080e7          	jalr	-432(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    80002524:	00000613          	li	a2,0
    80002528:	fffff597          	auipc	a1,0xfffff
    8000252c:	2c458593          	addi	a1,a1,708 # 800017ec <_Z9producerAPv>
    80002530:	fe840513          	addi	a0,s0,-24
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	d70080e7          	jalr	-656(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    8000253c:	00000613          	li	a2,0
    80002540:	fffff597          	auipc	a1,0xfffff
    80002544:	22458593          	addi	a1,a1,548 # 80001764 <_Z9consumerAPv>
    80002548:	fe040513          	addi	a0,s0,-32
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	d58080e7          	jalr	-680(ra) # 800012a4 <thread_create>
    80002554:	00c0006f          	j	80002560 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	dcc080e7          	jalr	-564(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    80002560:	fe843503          	ld	a0,-24(s0)
    80002564:	00000097          	auipc	ra,0x0
    80002568:	3f8080e7          	jalr	1016(ra) # 8000295c <_ZN3PCB10isFinishedEv>
    8000256c:	fe0506e3          	beqz	a0,80002558 <_Z8semTest1v+0x6c>
    80002570:	fe843503          	ld	a0,-24(s0)
    80002574:	00000097          	auipc	ra,0x0
    80002578:	3e8080e7          	jalr	1000(ra) # 8000295c <_ZN3PCB10isFinishedEv>
    8000257c:	fc050ee3          	beqz	a0,80002558 <_Z8semTest1v+0x6c>

}
    80002580:	01813083          	ld	ra,24(sp)
    80002584:	01013403          	ld	s0,16(sp)
    80002588:	02010113          	addi	sp,sp,32
    8000258c:	00008067          	ret

0000000080002590 <_Z14semaphoreTestsv>:
{
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00113423          	sd	ra,8(sp)
    80002598:	00813023          	sd	s0,0(sp)
    8000259c:	01010413          	addi	s0,sp,16
    semTest1();
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	f4c080e7          	jalr	-180(ra) # 800024ec <_Z8semTest1v>
}
    800025a8:	00813083          	ld	ra,8(sp)
    800025ac:	00013403          	ld	s0,0(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_Z7myTestsv>:
{
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00113423          	sd	ra,8(sp)
    800025c0:	00813023          	sd	s0,0(sp)
    800025c4:	01010413          	addi	s0,sp,16
    semaphoreTests();
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	fc8080e7          	jalr	-56(ra) # 80002590 <_Z14semaphoreTestsv>
}
    800025d0:	00813083          	ld	ra,8(sp)
    800025d4:	00013403          	ld	s0,0(sp)
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	00008067          	ret

00000000800025e0 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00813423          	sd	s0,8(sp)
    800025e8:	01010413          	addi	s0,sp,16
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00813403          	ld	s0,8(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret

0000000080002610 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00113423          	sd	ra,8(sp)
    80002618:	00813023          	sd	s0,0(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	00009797          	auipc	a5,0x9
    80002624:	28078793          	addi	a5,a5,640 # 8000b8a0 <_ZTV14PeriodicThread+0x10>
    80002628:	00f53023          	sd	a5,0(a0)
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	d4c080e7          	jalr	-692(ra) # 80003378 <_ZN6ThreadD1Ev>
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_ZN14PeriodicThreadD0Ev>:
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    80002658:	00050493          	mv	s1,a0
    8000265c:	00009797          	auipc	a5,0x9
    80002660:	24478793          	addi	a5,a5,580 # 8000b8a0 <_ZTV14PeriodicThread+0x10>
    80002664:	00f53023          	sd	a5,0(a0)
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	d10080e7          	jalr	-752(ra) # 80003378 <_ZN6ThreadD1Ev>
    80002670:	00048513          	mv	a0,s1
    80002674:	00001097          	auipc	ra,0x1
    80002678:	de8080e7          	jalr	-536(ra) # 8000345c <_ZdlPv>
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	02010113          	addi	sp,sp,32
    8000268c:	00008067          	ret

0000000080002690 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	01010413          	addi	s0,sp,16
    800026a0:	00009797          	auipc	a5,0x9
    800026a4:	20078793          	addi	a5,a5,512 # 8000b8a0 <_ZTV14PeriodicThread+0x10>
    800026a8:	00f53023          	sd	a5,0(a0)
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	ccc080e7          	jalr	-820(ra) # 80003378 <_ZN6ThreadD1Ev>
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN12TestPeriodicD0Ev>:
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	02010413          	addi	s0,sp,32
    800026d8:	00050493          	mv	s1,a0
    800026dc:	00009797          	auipc	a5,0x9
    800026e0:	1c478793          	addi	a5,a5,452 # 8000b8a0 <_ZTV14PeriodicThread+0x10>
    800026e4:	00f53023          	sd	a5,0(a0)
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	c90080e7          	jalr	-880(ra) # 80003378 <_ZN6ThreadD1Ev>
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	d68080e7          	jalr	-664(ra) # 8000345c <_ZdlPv>
    800026fc:	01813083          	ld	ra,24(sp)
    80002700:	01013403          	ld	s0,16(sp)
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	02010113          	addi	sp,sp,32
    8000270c:	00008067          	ret

0000000080002710 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    80002720:	00007517          	auipc	a0,0x7
    80002724:	b2050513          	addi	a0,a0,-1248 # 80009240 <CONSOLE_STATUS+0x230>
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	144080e7          	jalr	324(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002730:	00001097          	auipc	ra,0x1
    80002734:	11c080e7          	jalr	284(ra) # 8000384c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002738:	00009797          	auipc	a5,0x9
    8000273c:	3587b783          	ld	a5,856(a5) # 8000ba90 <_ZN3PCB7runningE>
    80002740:	0207b703          	ld	a4,32(a5)
    80002744:	0287b503          	ld	a0,40(a5)
    80002748:	000700e7          	jalr	a4

    thread_exit();
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	bf8080e7          	jalr	-1032(ra) # 80001344 <thread_exit>
}
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00813423          	sd	s0,8(sp)
    8000276c:	01010413          	addi	s0,sp,16
    })
    80002770:	00050023          	sb	zero,0(a0)
    80002774:	00e53823          	sd	a4,16(a0)
    80002778:	00053c23          	sd	zero,24(a0)
    8000277c:	02b53023          	sd	a1,32(a0)
    80002780:	02c53423          	sd	a2,40(a0)
    80002784:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002788:	000017b7          	lui	a5,0x1
    8000278c:	00f686b3          	add	a3,a3,a5
    })
    80002790:	04d53023          	sd	a3,64(a0)
    80002794:	00000797          	auipc	a5,0x0
    80002798:	f7c78793          	addi	a5,a5,-132 # 80002710 <_ZN3PCB6runnerEv>
    8000279c:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    800027a0:	00053423          	sd	zero,8(a0)
}
    800027a4:	00813403          	ld	s0,8(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_ZN3PCB5sleepEm>:
{
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
}
    800027bc:	00813403          	ld	s0,8(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_ZN3PCB5startEv>:
{
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	a80080e7          	jalr	-1408(ra) # 80003258 <_ZN9Scheduler3putEP3PCB>
}
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret

00000000800027f0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
    //Scheduler::print();
    //Riscv::printInteger(Scheduler::getSize());
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002804:	00009497          	auipc	s1,0x9
    80002808:	28c4b483          	ld	s1,652(s1) # 8000ba90 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    8000280c:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    80002810:	00100793          	li	a5,1
    80002814:	04f70063          	beq	a4,a5,80002854 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	a94080e7          	jalr	-1388(ra) # 800032ac <_ZN9Scheduler3getEv>
    80002820:	00009797          	auipc	a5,0x9
    80002824:	26a7b823          	sd	a0,624(a5) # 8000ba90 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002828:	00100793          	li	a5,1
    8000282c:	02f52c23          	sw	a5,56(a0)
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
    80002830:	04050593          	addi	a1,a0,64
    80002834:	04048513          	addi	a0,s1,64
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	9f0080e7          	jalr	-1552(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002840:	01813083          	ld	ra,24(sp)
    80002844:	01013403          	ld	s0,16(sp)
    80002848:	00813483          	ld	s1,8(sp)
    8000284c:	02010113          	addi	sp,sp,32
    80002850:	00008067          	ret
        Scheduler::put(old);
    80002854:	00048513          	mv	a0,s1
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	a00080e7          	jalr	-1536(ra) # 80003258 <_ZN9Scheduler3putEP3PCB>
    80002860:	fb9ff06f          	j	80002818 <_ZN3PCB8dispatchEv+0x28>

0000000080002864 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002874:	00001097          	auipc	ra,0x1
    80002878:	75c080e7          	jalr	1884(ra) # 80003fd0 <_Z7kmallocm>
}
    8000287c:	00813083          	ld	ra,8(sp)
    80002880:	00013403          	ld	s0,0(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	00813023          	sd	s0,0(sp)
    80002898:	01010413          	addi	s0,sp,16
    kfree(p);
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	790080e7          	jalr	1936(ra) # 8000402c <_Z5kfreePv>
}
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800028c4:	03053503          	ld	a0,48(a0)
    800028c8:	00001097          	auipc	ra,0x1
    800028cc:	764080e7          	jalr	1892(ra) # 8000402c <_Z5kfreePv>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028e0:	fe010113          	addi	sp,sp,-32
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028f4:	05000513          	li	a0,80
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	f6c080e7          	jalr	-148(ra) # 80002864 <_ZN3PCBnwEm>
    80002900:	00050493          	mv	s1,a0
    80002904:	00000713          	li	a4,0
    80002908:	00000693          	li	a3,0
    8000290c:	00000613          	li	a2,0
    80002910:	00000593          	li	a1,0
    80002914:	00000097          	auipc	ra,0x0
    80002918:	e50080e7          	jalr	-432(ra) # 80002764 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    8000291c:	00048513          	mv	a0,s1
    80002920:	00000097          	auipc	ra,0x0
    80002924:	ea8080e7          	jalr	-344(ra) # 800027c8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002928:	00100793          	li	a5,1
    8000292c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002930:	00001097          	auipc	ra,0x1
    80002934:	97c080e7          	jalr	-1668(ra) # 800032ac <_ZN9Scheduler3getEv>
    80002938:	00009797          	auipc	a5,0x9
    8000293c:	14a7bc23          	sd	a0,344(a5) # 8000ba90 <_ZN3PCB7runningE>
    80002940:	00100793          	li	a5,1
    80002944:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret

000000008000295c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002968:	03852503          	lw	a0,56(a0)
    8000296c:	ffd50513          	addi	a0,a0,-3
}
    80002970:	00153513          	seqz	a0,a0
    80002974:	00813403          	ld	s0,8(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret

0000000080002980 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00113423          	sd	ra,8(sp)
    80002988:	00813023          	sd	s0,0(sp)
    8000298c:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002990:	00007517          	auipc	a0,0x7
    80002994:	8c850513          	addi	a0,a0,-1848 # 80009258 <CONSOLE_STATUS+0x248>
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	ed4080e7          	jalr	-300(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    800029a0:	00009797          	auipc	a5,0x9
    800029a4:	0f078793          	addi	a5,a5,240 # 8000ba90 <_ZN3PCB7runningE>
    800029a8:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    800029ac:	0007b783          	ld	a5,0(a5)
    800029b0:	00300713          	li	a4,3
    800029b4:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	e38080e7          	jalr	-456(ra) # 800027f0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029c0:	00000513          	li	a0,0
}
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	0a07ba23          	sd	zero,180(a5) # 8000ba98 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	e04080e7          	jalr	-508(ra) # 800027f0 <_ZN3PCB8dispatchEv>
}
    800029f4:	00813083          	ld	ra,8(sp)
    800029f8:	00013403          	ld	s0,0(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret

0000000080002a04 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a14:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    80002a18:	00009797          	auipc	a5,0x9
    80002a1c:	07878793          	addi	a5,a5,120 # 8000ba90 <_ZN3PCB7runningE>
    80002a20:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002a24:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a28:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	4e8080e7          	jalr	1256(ra) # 80002f14 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	dbc080e7          	jalr	-580(ra) # 800027f0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a3c:	00000513          	li	a0,0
}
    80002a40:	00813083          	ld	ra,8(sp)
    80002a44:	00013403          	ld	s0,0(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret

0000000080002a50 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002a50:	fd010113          	addi	sp,sp,-48
    80002a54:	02113423          	sd	ra,40(sp)
    80002a58:	02813023          	sd	s0,32(sp)
    80002a5c:	00913c23          	sd	s1,24(sp)
    80002a60:	01213823          	sd	s2,16(sp)
    80002a64:	01313423          	sd	s3,8(sp)
    80002a68:	01413023          	sd	s4,0(sp)
    80002a6c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a70:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a74:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a78:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002a7c:	05000513          	li	a0,80
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	de4080e7          	jalr	-540(ra) # 80002864 <_ZN3PCBnwEm>
    80002a88:	00050493          	mv	s1,a0
    80002a8c:	00200713          	li	a4,2
    80002a90:	00009697          	auipc	a3,0x9
    80002a94:	0106b683          	ld	a3,16(a3) # 8000baa0 <_ZN3PCB10savedRegA4E>
    80002a98:	000a0613          	mv	a2,s4
    80002a9c:	00098593          	mv	a1,s3
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	cc4080e7          	jalr	-828(ra) # 80002764 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002aa8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002aac:	02048a63          	beqz	s1,80002ae0 <_ZN3PCB19threadCreateHandlerEv+0x90>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002ab0:	00048513          	mv	a0,s1
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	d14080e7          	jalr	-748(ra) # 800027c8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002abc:	00000513          	li	a0,0
    }
}
    80002ac0:	02813083          	ld	ra,40(sp)
    80002ac4:	02013403          	ld	s0,32(sp)
    80002ac8:	01813483          	ld	s1,24(sp)
    80002acc:	01013903          	ld	s2,16(sp)
    80002ad0:	00813983          	ld	s3,8(sp)
    80002ad4:	00013a03          	ld	s4,0(sp)
    80002ad8:	03010113          	addi	sp,sp,48
    80002adc:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ae0:	fff00513          	li	a0,-1
    80002ae4:	fddff06f          	j	80002ac0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002ae8 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002ae8:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002aec:	02050863          	beqz	a0,80002b1c <_ZN3PCB18threadStartHandlerEv+0x34>
{
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    {
        pcb->start();
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	cc8080e7          	jalr	-824(ra) # 800027c8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002b08:	00000513          	li	a0,0
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }

}
    80002b0c:	00813083          	ld	ra,8(sp)
    80002b10:	00013403          	ld	s0,0(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b1c:	fff00513          	li	a0,-1
    80002b20:	00008067          	ret

0000000080002b24 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b24:	fd010113          	addi	sp,sp,-48
    80002b28:	02113423          	sd	ra,40(sp)
    80002b2c:	02813023          	sd	s0,32(sp)
    80002b30:	00913c23          	sd	s1,24(sp)
    80002b34:	01213823          	sd	s2,16(sp)
    80002b38:	01313423          	sd	s3,8(sp)
    80002b3c:	01413023          	sd	s4,0(sp)
    80002b40:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b44:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b48:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b4c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002b50:	05000513          	li	a0,80
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	d10080e7          	jalr	-752(ra) # 80002864 <_ZN3PCBnwEm>
    80002b5c:	00050493          	mv	s1,a0
    80002b60:	00200713          	li	a4,2
    80002b64:	00009697          	auipc	a3,0x9
    80002b68:	f3c6b683          	ld	a3,-196(a3) # 8000baa0 <_ZN3PCB10savedRegA4E>
    80002b6c:	000a0613          	mv	a2,s4
    80002b70:	00098593          	mv	a1,s3
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	bf0080e7          	jalr	-1040(ra) # 80002764 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002b7c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002b80:	02048463          	beqz	s1,80002ba8 <_ZN3PCB20threadMakePCBHandlerEv+0x84>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002b84:	00000513          	li	a0,0
}
    80002b88:	02813083          	ld	ra,40(sp)
    80002b8c:	02013403          	ld	s0,32(sp)
    80002b90:	01813483          	ld	s1,24(sp)
    80002b94:	01013903          	ld	s2,16(sp)
    80002b98:	00813983          	ld	s3,8(sp)
    80002b9c:	00013a03          	ld	s4,0(sp)
    80002ba0:	03010113          	addi	sp,sp,48
    80002ba4:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ba8:	fff00513          	li	a0,-1
    80002bac:	fddff06f          	j	80002b88 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002bb0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002bb0:	fd010113          	addi	sp,sp,-48
    80002bb4:	02113423          	sd	ra,40(sp)
    80002bb8:	02813023          	sd	s0,32(sp)
    80002bbc:	00913c23          	sd	s1,24(sp)
    80002bc0:	01213823          	sd	s2,16(sp)
    80002bc4:	01313423          	sd	s3,8(sp)
    80002bc8:	03010413          	addi	s0,sp,48
    80002bcc:	00050993          	mv	s3,a0
    80002bd0:	00058913          	mv	s2,a1
    80002bd4:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002bd8:	01000513          	li	a0,16
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	3f4080e7          	jalr	1012(ra) # 80003fd0 <_Z7kmallocm>
    newElem->next = 0;
    80002be4:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002be8:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002bec:	00093783          	ld	a5,0(s2)
    80002bf0:	02078663          	beqz	a5,80002c1c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002bf4:	0004b783          	ld	a5,0(s1)
    80002bf8:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002bfc:	00a4b023          	sd	a0,0(s1)
    }
}
    80002c00:	02813083          	ld	ra,40(sp)
    80002c04:	02013403          	ld	s0,32(sp)
    80002c08:	01813483          	ld	s1,24(sp)
    80002c0c:	01013903          	ld	s2,16(sp)
    80002c10:	00813983          	ld	s3,8(sp)
    80002c14:	03010113          	addi	sp,sp,48
    80002c18:	00008067          	ret
        head = tail = newElem;
    80002c1c:	00a4b023          	sd	a0,0(s1)
    80002c20:	00a93023          	sd	a0,0(s2)
    80002c24:	fddff06f          	j	80002c00 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002c28 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002c28:	fe010113          	addi	sp,sp,-32
    80002c2c:	00113c23          	sd	ra,24(sp)
    80002c30:	00813823          	sd	s0,16(sp)
    80002c34:	00913423          	sd	s1,8(sp)
    80002c38:	02010413          	addi	s0,sp,32
    80002c3c:	00050793          	mv	a5,a0
    if(head == 0)
    80002c40:	00053503          	ld	a0,0(a0)
    80002c44:	02050e63          	beqz	a0,80002c80 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002c48:	00053703          	ld	a4,0(a0)
    80002c4c:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002c50:	02070463          	beqz	a4,80002c78 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002c54:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	3d4080e7          	jalr	980(ra) # 8000402c <_Z5kfreePv>
    return c;
}
    80002c60:	00048513          	mv	a0,s1
    80002c64:	01813083          	ld	ra,24(sp)
    80002c68:	01013403          	ld	s0,16(sp)
    80002c6c:	00813483          	ld	s1,8(sp)
    80002c70:	02010113          	addi	sp,sp,32
    80002c74:	00008067          	ret
        tail = 0;
    80002c78:	0005b023          	sd	zero,0(a1)
    80002c7c:	fd9ff06f          	j	80002c54 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002c80:	00000493          	li	s1,0
    80002c84:	fddff06f          	j	80002c60 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002c88 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	01213023          	sd	s2,0(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002ca0:	01800513          	li	a0,24
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	630080e7          	jalr	1584(ra) # 800042d4 <_ZN10KSemaphorenwEm>
    80002cac:	00050493          	mv	s1,a0
    80002cb0:	00000593          	li	a1,0
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	3d0080e7          	jalr	976(ra) # 80004084 <_ZN10KSemaphoreC1Ei>
    80002cbc:	00009797          	auipc	a5,0x9
    80002cc0:	de97b623          	sd	s1,-532(a5) # 8000baa8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002cc4:	01800513          	li	a0,24
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	60c080e7          	jalr	1548(ra) # 800042d4 <_ZN10KSemaphorenwEm>
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00000593          	li	a1,0
    80002cd8:	00001097          	auipc	ra,0x1
    80002cdc:	3ac080e7          	jalr	940(ra) # 80004084 <_ZN10KSemaphoreC1Ei>
    80002ce0:	00009797          	auipc	a5,0x9
    80002ce4:	dc97b823          	sd	s1,-560(a5) # 8000bab0 <_ZN8KConsole19hasCharactersOutputE>
}
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	00013903          	ld	s2,0(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret
    80002d00:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002d04:	00048513          	mv	a0,s1
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	664080e7          	jalr	1636(ra) # 8000436c <_ZN10KSemaphoredlEPv>
    80002d10:	00090513          	mv	a0,s2
    80002d14:	0000a097          	auipc	ra,0xa
    80002d18:	ef4080e7          	jalr	-268(ra) # 8000cc08 <_Unwind_Resume>
    80002d1c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002d20:	00048513          	mv	a0,s1
    80002d24:	00001097          	auipc	ra,0x1
    80002d28:	648080e7          	jalr	1608(ra) # 8000436c <_ZN10KSemaphoredlEPv>
    80002d2c:	00090513          	mv	a0,s2
    80002d30:	0000a097          	auipc	ra,0xa
    80002d34:	ed8080e7          	jalr	-296(ra) # 8000cc08 <_Unwind_Resume>

0000000080002d38 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002d38:	ff010113          	addi	sp,sp,-16
    80002d3c:	00113423          	sd	ra,8(sp)
    80002d40:	00813023          	sd	s0,0(sp)
    80002d44:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002d48:	00009617          	auipc	a2,0x9
    80002d4c:	d7060613          	addi	a2,a2,-656 # 8000bab8 <_ZN8KConsole9tailInputE>
    80002d50:	00009597          	auipc	a1,0x9
    80002d54:	d7058593          	addi	a1,a1,-656 # 8000bac0 <_ZN8KConsole9headInputE>
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	e58080e7          	jalr	-424(ra) # 80002bb0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002d60:	00009517          	auipc	a0,0x9
    80002d64:	d4853503          	ld	a0,-696(a0) # 8000baa8 <_ZN8KConsole18hasCharactersInputE>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	524080e7          	jalr	1316(ra) # 8000428c <_ZN10KSemaphore6signalEv>
}
    80002d70:	00813083          	ld	ra,8(sp)
    80002d74:	00013403          	ld	s0,0(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002d80:	00006517          	auipc	a0,0x6
    80002d84:	29053503          	ld	a0,656(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002d88:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002d8c:	0017f793          	andi	a5,a5,1
    80002d90:	04078863          	beqz	a5,80002de0 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002d94:	ff010113          	addi	sp,sp,-16
    80002d98:	00113423          	sd	ra,8(sp)
    80002d9c:	00813023          	sd	s0,0(sp)
    80002da0:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002da4:	00006517          	auipc	a0,0x6
    80002da8:	26453503          	ld	a0,612(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002dac:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002db0:	0ff57513          	andi	a0,a0,255
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	f84080e7          	jalr	-124(ra) # 80002d38 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002dbc:	00006517          	auipc	a0,0x6
    80002dc0:	25453503          	ld	a0,596(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002dc4:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002dc8:	0017f793          	andi	a5,a5,1
    80002dcc:	fc079ce3          	bnez	a5,80002da4 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00013403          	ld	s0,0(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret
    80002de0:	00008067          	ret

0000000080002de4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00113423          	sd	ra,8(sp)
    80002dec:	00813023          	sd	s0,0(sp)
    80002df0:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002df4:	00009517          	auipc	a0,0x9
    80002df8:	cb453503          	ld	a0,-844(a0) # 8000baa8 <_ZN8KConsole18hasCharactersInputE>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	330080e7          	jalr	816(ra) # 8000412c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002e04:	00009597          	auipc	a1,0x9
    80002e08:	cb458593          	addi	a1,a1,-844 # 8000bab8 <_ZN8KConsole9tailInputE>
    80002e0c:	00009517          	auipc	a0,0x9
    80002e10:	cb450513          	addi	a0,a0,-844 # 8000bac0 <_ZN8KConsole9headInputE>
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	e14080e7          	jalr	-492(ra) # 80002c28 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002e1c:	00813083          	ld	ra,8(sp)
    80002e20:	00013403          	ld	s0,0(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00113423          	sd	ra,8(sp)
    80002e34:	00813023          	sd	s0,0(sp)
    80002e38:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002e3c:	00009617          	auipc	a2,0x9
    80002e40:	c8c60613          	addi	a2,a2,-884 # 8000bac8 <_ZN8KConsole10tailOutputE>
    80002e44:	00009597          	auipc	a1,0x9
    80002e48:	c8c58593          	addi	a1,a1,-884 # 8000bad0 <_ZN8KConsole10headOutputE>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	d64080e7          	jalr	-668(ra) # 80002bb0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002e54:	00009517          	auipc	a0,0x9
    80002e58:	c5c53503          	ld	a0,-932(a0) # 8000bab0 <_ZN8KConsole19hasCharactersOutputE>
    80002e5c:	00001097          	auipc	ra,0x1
    80002e60:	430080e7          	jalr	1072(ra) # 8000428c <_ZN10KSemaphore6signalEv>
}
    80002e64:	00813083          	ld	ra,8(sp)
    80002e68:	00013403          	ld	s0,0(sp)
    80002e6c:	01010113          	addi	sp,sp,16
    80002e70:	00008067          	ret

0000000080002e74 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002e74:	ff010113          	addi	sp,sp,-16
    80002e78:	00113423          	sd	ra,8(sp)
    80002e7c:	00813023          	sd	s0,0(sp)
    80002e80:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002e84:	00009517          	auipc	a0,0x9
    80002e88:	c2c53503          	ld	a0,-980(a0) # 8000bab0 <_ZN8KConsole19hasCharactersOutputE>
    80002e8c:	00001097          	auipc	ra,0x1
    80002e90:	2a0080e7          	jalr	672(ra) # 8000412c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002e94:	00009597          	auipc	a1,0x9
    80002e98:	c3458593          	addi	a1,a1,-972 # 8000bac8 <_ZN8KConsole10tailOutputE>
    80002e9c:	00009517          	auipc	a0,0x9
    80002ea0:	c3450513          	addi	a0,a0,-972 # 8000bad0 <_ZN8KConsole10headOutputE>
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	d84080e7          	jalr	-636(ra) # 80002c28 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002ebc:	00006517          	auipc	a0,0x6
    80002ec0:	15453503          	ld	a0,340(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ec4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002ec8:	0207f793          	andi	a5,a5,32
    80002ecc:	04078263          	beqz	a5,80002f10 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002ed0:	ff010113          	addi	sp,sp,-16
    80002ed4:	00113423          	sd	ra,8(sp)
    80002ed8:	00813023          	sd	s0,0(sp)
    80002edc:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	f94080e7          	jalr	-108(ra) # 80002e74 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002ee8:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002eec:	00006517          	auipc	a0,0x6
    80002ef0:	12453503          	ld	a0,292(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ef4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002ef8:	0207f793          	andi	a5,a5,32
    80002efc:	fe0792e3          	bnez	a5,80002ee0 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002f00:	00813083          	ld	ra,8(sp)
    80002f04:	00013403          	ld	s0,0(sp)
    80002f08:	01010113          	addi	sp,sp,16
    80002f0c:	00008067          	ret
    80002f10:	00008067          	ret

0000000080002f14 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002f14:	ff010113          	addi	sp,sp,-16
    80002f18:	00813423          	sd	s0,8(sp)
    80002f1c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002f20:	00009797          	auipc	a5,0x9
    80002f24:	ae87b783          	ld	a5,-1304(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f28:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80002f2c:	00500793          	li	a5,5
    80002f30:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002f34:	00009797          	auipc	a5,0x9
    80002f38:	ba47b783          	ld	a5,-1116(a5) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002f3c:	00000593          	li	a1,0
    while(curr != 0)
    80002f40:	02078063          	beqz	a5,80002f60 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002f44:	01863683          	ld	a3,24(a2)
    80002f48:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002f4c:	00e6e863          	bltu	a3,a4,80002f5c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002f50:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002f54:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f58:	fe9ff06f          	j	80002f40 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002f5c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002f60:	02058263          	beqz	a1,80002f84 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002f64:	01863783          	ld	a5,24(a2)
    80002f68:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002f6c:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002f70:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002f74:	00c5b423          	sd	a2,8(a1)
    }
}
    80002f78:	00813403          	ld	s0,8(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002f84:	00009797          	auipc	a5,0x9
    80002f88:	b4c7ba23          	sd	a2,-1196(a5) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002f8c:	00863783          	ld	a5,8(a2)
    80002f90:	fe0784e3          	beqz	a5,80002f78 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002f94:	0187b703          	ld	a4,24(a5)
    80002f98:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002f9c:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002fa0:	00e7bc23          	sd	a4,24(a5)
    80002fa4:	fd5ff06f          	j	80002f78 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002fa8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002fa8:	00009517          	auipc	a0,0x9
    80002fac:	b3053503          	ld	a0,-1232(a0) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002fb0:	08050863          	beqz	a0,80003040 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002fb4:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002fb8:	00100713          	li	a4,1
    80002fbc:	00e78863          	beq	a5,a4,80002fcc <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002fc0:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002fc4:	00f53c23          	sd	a5,24(a0)
    80002fc8:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002fcc:	06050a63          	beqz	a0,80003040 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002fd0:	00009797          	auipc	a5,0x9
    80002fd4:	b087b783          	ld	a5,-1272(a5) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002fd8:	00a78663          	beq	a5,a0,80002fe4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002fdc:	01853783          	ld	a5,24(a0)
    80002fe0:	06079063          	bnez	a5,80003040 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002fe4:	fe010113          	addi	sp,sp,-32
    80002fe8:	00113c23          	sd	ra,24(sp)
    80002fec:	00813823          	sd	s0,16(sp)
    80002ff0:	00913423          	sd	s1,8(sp)
    80002ff4:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002ff8:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002ffc:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80003000:	00000097          	auipc	ra,0x0
    80003004:	258080e7          	jalr	600(ra) # 80003258 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80003008:	00009797          	auipc	a5,0x9
    8000300c:	ac97b823          	sd	s1,-1328(a5) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80003010:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003014:	00048c63          	beqz	s1,8000302c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003018:	00009797          	auipc	a5,0x9
    8000301c:	ac07b783          	ld	a5,-1344(a5) # 8000bad8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003020:	fc978ce3          	beq	a5,s1,80002ff8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003024:	0184b783          	ld	a5,24(s1)
    80003028:	fc0788e3          	beqz	a5,80002ff8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    8000302c:	01813083          	ld	ra,24(sp)
    80003030:	01013403          	ld	s0,16(sp)
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret
    80003040:	00008067          	ret

0000000080003044 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	00913423          	sd	s1,8(sp)
    80003054:	01213023          	sd	s2,0(sp)
    80003058:	02010413          	addi	s0,sp,32
    8000305c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003060:	00053503          	ld	a0,0(a0)
    80003064:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	fc4080e7          	jalr	-60(ra) # 8000402c <_Z5kfreePv>
    first = newFirst;
    80003070:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003074:	00090e63          	beqz	s2,80003090 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003078:	01813083          	ld	ra,24(sp)
    8000307c:	01013403          	ld	s0,16(sp)
    80003080:	00813483          	ld	s1,8(sp)
    80003084:	00013903          	ld	s2,0(sp)
    80003088:	02010113          	addi	sp,sp,32
    8000308c:	00008067          	ret
        first = last = 0;
    80003090:	0004b423          	sd	zero,8(s1)
    80003094:	0004b023          	sd	zero,0(s1)
}
    80003098:	fe1ff06f          	j	80003078 <_ZN5Queue3popEv+0x34>

000000008000309c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    8000309c:	fe010113          	addi	sp,sp,-32
    800030a0:	00113c23          	sd	ra,24(sp)
    800030a4:	00813823          	sd	s0,16(sp)
    800030a8:	00913423          	sd	s1,8(sp)
    800030ac:	01213023          	sd	s2,0(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	00050493          	mv	s1,a0
    800030b8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800030bc:	01000513          	li	a0,16
    800030c0:	00001097          	auipc	ra,0x1
    800030c4:	f10080e7          	jalr	-240(ra) # 80003fd0 <_Z7kmallocm>
    newElem->data = t;
    800030c8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800030cc:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800030d0:	0004b783          	ld	a5,0(s1)
    800030d4:	02078463          	beqz	a5,800030fc <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800030d8:	0084b783          	ld	a5,8(s1)
    800030dc:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800030e0:	00a4b423          	sd	a0,8(s1)
    }
}
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	00013903          	ld	s2,0(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret
        first = newElem;
    800030fc:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003100:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003104:	00053423          	sd	zero,8(a0)
    80003108:	0004b783          	ld	a5,0(s1)
    8000310c:	0007b423          	sd	zero,8(a5)
    80003110:	fd5ff06f          	j	800030e4 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003114 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00813423          	sd	s0,8(sp)
    8000311c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003120:	00053503          	ld	a0,0(a0)
    80003124:	00050463          	beqz	a0,8000312c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003128:	00053503          	ld	a0,0(a0)
}
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003144:	00053423          	sd	zero,8(a0)
    80003148:	00053023          	sd	zero,0(a0)
}
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003158:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000315c:	04050063          	beqz	a0,8000319c <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	00913423          	sd	s1,8(sp)
    80003170:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003174:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003178:	00001097          	auipc	ra,0x1
    8000317c:	eb4080e7          	jalr	-332(ra) # 8000402c <_Z5kfreePv>
        curr = curr->next;
    80003180:	00048513          	mv	a0,s1
    while(curr != 0)
    80003184:	fe0498e3          	bnez	s1,80003174 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003188:	01813083          	ld	ra,24(sp)
    8000318c:	01013403          	ld	s0,16(sp)
    80003190:	00813483          	ld	s1,8(sp)
    80003194:	02010113          	addi	sp,sp,32
    80003198:	00008067          	ret
    8000319c:	00008067          	ret

00000000800031a0 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00813423          	sd	s0,8(sp)
    800031a8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800031ac:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800031b0:	00000513          	li	a0,0
    while(curr != 0)
    800031b4:	00078863          	beqz	a5,800031c4 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800031b8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800031bc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031c0:	ff5ff06f          	j	800031b4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800031c4:	00813403          	ld	s0,8(sp)
    800031c8:	01010113          	addi	sp,sp,16
    800031cc:	00008067          	ret

00000000800031d0 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00113423          	sd	ra,8(sp)
    800031d8:	00813023          	sd	s0,0(sp)
    800031dc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800031e0:	00001097          	auipc	ra,0x1
    800031e4:	df0080e7          	jalr	-528(ra) # 80003fd0 <_Z7kmallocm>
}
    800031e8:	00813083          	ld	ra,8(sp)
    800031ec:	00013403          	ld	s0,0(sp)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800031f8:	ff010113          	addi	sp,sp,-16
    800031fc:	00113423          	sd	ra,8(sp)
    80003200:	00813023          	sd	s0,0(sp)
    80003204:	01010413          	addi	s0,sp,16
    kfree(p);
    80003208:	00001097          	auipc	ra,0x1
    8000320c:	e24080e7          	jalr	-476(ra) # 8000402c <_Z5kfreePv>
}
    80003210:	00813083          	ld	ra,8(sp)
    80003214:	00013403          	ld	s0,0(sp)
    80003218:	01010113          	addi	sp,sp,16
    8000321c:	00008067          	ret

0000000080003220 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00813423          	sd	s0,8(sp)
    80003228:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000322c:	00009797          	auipc	a5,0x9
    80003230:	8b47b783          	ld	a5,-1868(a5) # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003234:	00000513          	li	a0,0
    while(curr != 0)
    80003238:	00078863          	beqz	a5,80003248 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000323c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003240:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003244:	ff5ff06f          	j	80003238 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003248:	0005051b          	sext.w	a0,a0
    8000324c:	00813403          	ld	s0,8(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret

0000000080003258 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003258:	ff010113          	addi	sp,sp,-16
    8000325c:	00813423          	sd	s0,8(sp)
    80003260:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003264:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003268:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000326c:	00009797          	auipc	a5,0x9
    80003270:	8747b783          	ld	a5,-1932(a5) # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    80003274:	02078263          	beqz	a5,80003298 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003278:	00009797          	auipc	a5,0x9
    8000327c:	86878793          	addi	a5,a5,-1944 # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    80003280:	0087b703          	ld	a4,8(a5)
    80003284:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003288:	00a7b423          	sd	a0,8(a5)
    }
}
    8000328c:	00813403          	ld	s0,8(sp)
    80003290:	01010113          	addi	sp,sp,16
    80003294:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003298:	00009797          	auipc	a5,0x9
    8000329c:	84878793          	addi	a5,a5,-1976 # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    800032a0:	00a7b423          	sd	a0,8(a5)
    800032a4:	00a7b023          	sd	a0,0(a5)
    800032a8:	fe5ff06f          	j	8000328c <_ZN9Scheduler3putEP3PCB+0x34>

00000000800032ac <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00813423          	sd	s0,8(sp)
    800032b4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800032b8:	00009517          	auipc	a0,0x9
    800032bc:	82853503          	ld	a0,-2008(a0) # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    800032c0:	00050c63          	beqz	a0,800032d8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800032c4:	00853783          	ld	a5,8(a0)
    800032c8:	00078e63          	beqz	a5,800032e4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800032cc:	00009717          	auipc	a4,0x9
    800032d0:	80f73a23          	sd	a5,-2028(a4) # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800032d4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800032d8:	00813403          	ld	s0,8(sp)
    800032dc:	01010113          	addi	sp,sp,16
    800032e0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800032e4:	00008797          	auipc	a5,0x8
    800032e8:	7fc78793          	addi	a5,a5,2044 # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    800032ec:	0007b423          	sd	zero,8(a5)
    800032f0:	0007b023          	sd	zero,0(a5)
    800032f4:	fe1ff06f          	j	800032d4 <_ZN9Scheduler3getEv+0x28>

00000000800032f8 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800032f8:	fe010113          	addi	sp,sp,-32
    800032fc:	00113c23          	sd	ra,24(sp)
    80003300:	00813823          	sd	s0,16(sp)
    80003304:	00913423          	sd	s1,8(sp)
    80003308:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    8000330c:	00006517          	auipc	a0,0x6
    80003310:	f6450513          	addi	a0,a0,-156 # 80009270 <CONSOLE_STATUS+0x260>
    80003314:	00000097          	auipc	ra,0x0
    80003318:	558080e7          	jalr	1368(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    8000331c:	00008497          	auipc	s1,0x8
    80003320:	7c44b483          	ld	s1,1988(s1) # 8000bae0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003324:	00048c63          	beqz	s1,8000333c <_ZN9Scheduler5printEv+0x44>
    {
        Riscv::printInteger((uint64)curr);
    80003328:	00048513          	mv	a0,s1
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	5b0080e7          	jalr	1456(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
        curr = curr->nextPCB;
    80003334:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003338:	fedff06f          	j	80003324 <_ZN9Scheduler5printEv+0x2c>
    }
}
    8000333c:	01813083          	ld	ra,24(sp)
    80003340:	01013403          	ld	s0,16(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	02010113          	addi	sp,sp,32
    8000334c:	00008067          	ret

0000000080003350 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003360:	00001097          	auipc	ra,0x1
    80003364:	84c080e7          	jalr	-1972(ra) # 80003bac <_ZN5Riscv10kernelMainEv>
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    80003388:	00008797          	auipc	a5,0x8
    8000338c:	58078793          	addi	a5,a5,1408 # 8000b908 <_ZTV6Thread+0x10>
    80003390:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    80003394:	00853503          	ld	a0,8(a0)
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	ee0080e7          	jalr	-288(ra) # 80001278 <mem_free>
}
    800033a0:	00813083          	ld	ra,8(sp)
    800033a4:	00013403          	ld	s0,0(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	00008797          	auipc	a5,0x8
    800033c4:	57078793          	addi	a5,a5,1392 # 8000b930 <_ZTV9Semaphore+0x10>
    800033c8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800033cc:	00853503          	ld	a0,8(a0)
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	ea8080e7          	jalr	-344(ra) # 80001278 <mem_free>
}
    800033d8:	00813083          	ld	ra,8(sp)
    800033dc:	00013403          	ld	s0,0(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN6Thread6runnerEPv>:
{
    800033e8:	fe010113          	addi	sp,sp,-32
    800033ec:	00113c23          	sd	ra,24(sp)
    800033f0:	00813823          	sd	s0,16(sp)
    800033f4:	00913423          	sd	s1,8(sp)
    800033f8:	02010413          	addi	s0,sp,32
    800033fc:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80003400:	00006517          	auipc	a0,0x6
    80003404:	e8850513          	addi	a0,a0,-376 # 80009288 <CONSOLE_STATUS+0x278>
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	464080e7          	jalr	1124(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003410:	0004b783          	ld	a5,0(s1)
    80003414:	0107b783          	ld	a5,16(a5)
    80003418:	00048513          	mv	a0,s1
    8000341c:	000780e7          	jalr	a5
}
    80003420:	01813083          	ld	ra,24(sp)
    80003424:	01013403          	ld	s0,16(sp)
    80003428:	00813483          	ld	s1,8(sp)
    8000342c:	02010113          	addi	sp,sp,32
    80003430:	00008067          	ret

0000000080003434 <_Znwm>:
{
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00113423          	sd	ra,8(sp)
    8000343c:	00813023          	sd	s0,0(sp)
    80003440:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	e04080e7          	jalr	-508(ra) # 80001248 <mem_alloc>
}
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret

000000008000345c <_ZdlPv>:
{
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00113423          	sd	ra,8(sp)
    80003464:	00813023          	sd	s0,0(sp)
    80003468:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	e0c080e7          	jalr	-500(ra) # 80001278 <mem_free>
}
    80003474:	00813083          	ld	ra,8(sp)
    80003478:	00013403          	ld	s0,0(sp)
    8000347c:	01010113          	addi	sp,sp,16
    80003480:	00008067          	ret

0000000080003484 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003484:	fe010113          	addi	sp,sp,-32
    80003488:	00113c23          	sd	ra,24(sp)
    8000348c:	00813823          	sd	s0,16(sp)
    80003490:	00913423          	sd	s1,8(sp)
    80003494:	02010413          	addi	s0,sp,32
    80003498:	00050493          	mv	s1,a0
}
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	edc080e7          	jalr	-292(ra) # 80003378 <_ZN6ThreadD1Ev>
    800034a4:	00048513          	mv	a0,s1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	fb4080e7          	jalr	-76(ra) # 8000345c <_ZdlPv>
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800034c4:	fe010113          	addi	sp,sp,-32
    800034c8:	00113c23          	sd	ra,24(sp)
    800034cc:	00813823          	sd	s0,16(sp)
    800034d0:	00913423          	sd	s1,8(sp)
    800034d4:	02010413          	addi	s0,sp,32
    800034d8:	00050493          	mv	s1,a0
}
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	ed4080e7          	jalr	-300(ra) # 800033b0 <_ZN9SemaphoreD1Ev>
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	f74080e7          	jalr	-140(ra) # 8000345c <_ZdlPv>
    800034f0:	01813083          	ld	ra,24(sp)
    800034f4:	01013403          	ld	s0,16(sp)
    800034f8:	00813483          	ld	s1,8(sp)
    800034fc:	02010113          	addi	sp,sp,32
    80003500:	00008067          	ret

0000000080003504 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003504:	00853503          	ld	a0,8(a0)
    80003508:	02050663          	beqz	a0,80003534 <_ZN6Thread5startEv+0x30>
{
    8000350c:	ff010113          	addi	sp,sp,-16
    80003510:	00113423          	sd	ra,8(sp)
    80003514:	00813023          	sd	s0,0(sp)
    80003518:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	f38080e7          	jalr	-200(ra) # 80001454 <thread_start>
}
    80003524:	00813083          	ld	ra,8(sp)
    80003528:	00013403          	ld	s0,0(sp)
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret
        return -1;
    80003534:	fff00513          	li	a0,-1
}
    80003538:	00008067          	ret

000000008000353c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00113423          	sd	ra,8(sp)
    80003544:	00813023          	sd	s0,0(sp)
    80003548:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	dd8080e7          	jalr	-552(ra) # 80001324 <thread_dispatch>
}
    80003554:	00813083          	ld	ra,8(sp)
    80003558:	00013403          	ld	s0,0(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN6Thread5sleepEm>:
{
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00113423          	sd	ra,8(sp)
    8000356c:	00813023          	sd	s0,0(sp)
    80003570:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	eb4080e7          	jalr	-332(ra) # 80001428 <time_sleep>
}
    8000357c:	00813083          	ld	ra,8(sp)
    80003580:	00013403          	ld	s0,0(sp)
    80003584:	01010113          	addi	sp,sp,16
    80003588:	00008067          	ret

000000008000358c <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	01213023          	sd	s2,0(sp)
    800035a0:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800035a4:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800035a8:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800035ac:	0004b783          	ld	a5,0(s1)
    800035b0:	0187b783          	ld	a5,24(a5)
    800035b4:	00048513          	mv	a0,s1
    800035b8:	000780e7          	jalr	a5
        Thread::sleep(time);
    800035bc:	00090513          	mv	a0,s2
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	fa4080e7          	jalr	-92(ra) # 80003564 <_ZN6Thread5sleepEm>
    while(true)
    800035c8:	fe5ff06f          	j	800035ac <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800035cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
    800035dc:	00008797          	auipc	a5,0x8
    800035e0:	32c78793          	addi	a5,a5,812 # 8000b908 <_ZTV6Thread+0x10>
    800035e4:	00f53023          	sd	a5,0(a0)
    thread_make_pcb((void**)&myHandle, body, args);
    800035e8:	00850513          	addi	a0,a0,8
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	e94080e7          	jalr	-364(ra) # 80001480 <thread_make_pcb>
}
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret

0000000080003604 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00008797          	auipc	a5,0x8
    80003618:	2f478793          	addi	a5,a5,756 # 8000b908 <_ZTV6Thread+0x10>
    8000361c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb((void**)&myHandle, &Thread::runner, (void*)this);
    80003620:	00050613          	mv	a2,a0
    80003624:	00000597          	auipc	a1,0x0
    80003628:	dc458593          	addi	a1,a1,-572 # 800033e8 <_ZN6Thread6runnerEPv>
    8000362c:	00850513          	addi	a0,a0,8
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	e50080e7          	jalr	-432(ra) # 80001480 <thread_make_pcb>
}
    80003638:	00813083          	ld	ra,8(sp)
    8000363c:	00013403          	ld	s0,0(sp)
    80003640:	01010113          	addi	sp,sp,16
    80003644:	00008067          	ret

0000000080003648 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003648:	00853503          	ld	a0,8(a0)
    8000364c:	02050663          	beqz	a0,80003678 <_ZN9Semaphore4waitEv+0x30>
{
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00113423          	sd	ra,8(sp)
    80003658:	00813023          	sd	s0,0(sp)
    8000365c:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	d70080e7          	jalr	-656(ra) # 800013d0 <sem_wait>
}
    80003668:	00813083          	ld	ra,8(sp)
    8000366c:	00013403          	ld	s0,0(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret
        return -1;
    80003678:	fff00513          	li	a0,-1
}
    8000367c:	00008067          	ret

0000000080003680 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00113c23          	sd	ra,24(sp)
    80003688:	00813823          	sd	s0,16(sp)
    8000368c:	00913423          	sd	s1,8(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	00050493          	mv	s1,a0
    80003698:	00008797          	auipc	a5,0x8
    8000369c:	29878793          	addi	a5,a5,664 # 8000b930 <_ZTV9Semaphore+0x10>
    800036a0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    800036a4:	00850513          	addi	a0,a0,8
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	cc4080e7          	jalr	-828(ra) # 8000136c <sem_open>
    if(retval != 0)
    800036b0:	00050463          	beqz	a0,800036b8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800036b4:	0004b423          	sd	zero,8(s1)
}
    800036b8:	01813083          	ld	ra,24(sp)
    800036bc:	01013403          	ld	s0,16(sp)
    800036c0:	00813483          	ld	s1,8(sp)
    800036c4:	02010113          	addi	sp,sp,32
    800036c8:	00008067          	ret

00000000800036cc <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800036cc:	00853503          	ld	a0,8(a0)
    800036d0:	02050663          	beqz	a0,800036fc <_ZN9Semaphore6signalEv+0x30>
{
    800036d4:	ff010113          	addi	sp,sp,-16
    800036d8:	00113423          	sd	ra,8(sp)
    800036dc:	00813023          	sd	s0,0(sp)
    800036e0:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	d18080e7          	jalr	-744(ra) # 800013fc <sem_signal>
}
    800036ec:	00813083          	ld	ra,8(sp)
    800036f0:	00013403          	ld	s0,0(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret
        return -1;
    800036fc:	fff00513          	li	a0,-1
}
    80003700:	00008067          	ret

0000000080003704 <_ZN7Console4getcEv>:
{
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00813423          	sd	s0,8(sp)
    8000370c:	01010413          	addi	s0,sp,16
}
    80003710:	00000513          	li	a0,0
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <_ZN7Console4putcEc>:
{
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00813423          	sd	s0,8(sp)
    80003728:	01010413          	addi	s0,sp,16
}
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003738:	fe010113          	addi	sp,sp,-32
    8000373c:	00113c23          	sd	ra,24(sp)
    80003740:	00813823          	sd	s0,16(sp)
    80003744:	00913423          	sd	s1,8(sp)
    80003748:	01213023          	sd	s2,0(sp)
    8000374c:	02010413          	addi	s0,sp,32
    80003750:	00050493          	mv	s1,a0
    80003754:	00058913          	mv	s2,a1
    80003758:	01000513          	li	a0,16
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	cd8080e7          	jalr	-808(ra) # 80003434 <_Znwm>
    80003764:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003768:	00953023          	sd	s1,0(a0)
    8000376c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003770:	00000597          	auipc	a1,0x0
    80003774:	e1c58593          	addi	a1,a1,-484 # 8000358c <_ZN14PeriodicThread6runnerEPv>
    80003778:	00048513          	mv	a0,s1
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	e50080e7          	jalr	-432(ra) # 800035cc <_ZN6ThreadC1EPFvPvES0_>
    80003784:	00008797          	auipc	a5,0x8
    80003788:	11c78793          	addi	a5,a5,284 # 8000b8a0 <_ZTV14PeriodicThread+0x10>
    8000378c:	00f4b023          	sd	a5,0(s1)
}
    80003790:	01813083          	ld	ra,24(sp)
    80003794:	01013403          	ld	s0,16(sp)
    80003798:	00813483          	ld	s1,8(sp)
    8000379c:	00013903          	ld	s2,0(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <_ZN5Riscv10initSystemEv>:
#include "../h/KConsole.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void Riscv::initSystem()
{
    800037a8:	ff010113          	addi	sp,sp,-16
    800037ac:	00113423          	sd	ra,8(sp)
    800037b0:	00813023          	sd	s0,0(sp)
    800037b4:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800037b8:	00008797          	auipc	a5,0x8
    800037bc:	2387b783          	ld	a5,568(a5) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800037c0:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	11c080e7          	jalr	284(ra) # 800028e0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	4bc080e7          	jalr	1212(ra) # 80002c88 <_ZN8KConsole10initializeEv>
}
    800037d4:	00813083          	ld	ra,8(sp)
    800037d8:	00013403          	ld	s0,0(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret

00000000800037e4 <_ZN5Riscv16enableInterruptsEv>:
    //todo
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00813423          	sd	s0,8(sp)
    800037ec:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800037f0:	00200793          	li	a5,2
    800037f4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003810:	00200793          	li	a5,2
    80003814:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003818:	00813403          	ld	s0,8(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret

0000000080003824 <_ZN5Riscv9endSystemEv>:
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00113423          	sd	ra,8(sp)
    8000382c:	00813023          	sd	s0,0(sp)
    80003830:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003834:	00000097          	auipc	ra,0x0
    80003838:	fd0080e7          	jalr	-48(ra) # 80003804 <_ZN5Riscv17disableInterruptsEv>
}
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    8000384c:	ff010113          	addi	sp,sp,-16
    80003850:	00813423          	sd	s0,8(sp)
    80003854:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003858:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000385c:	10200073          	sret
}
    80003860:	00813403          	ld	s0,8(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    8000386c:	fd010113          	addi	sp,sp,-48
    80003870:	02113423          	sd	ra,40(sp)
    80003874:	02813023          	sd	s0,32(sp)
    80003878:	00913c23          	sd	s1,24(sp)
    8000387c:	01213823          	sd	s2,16(sp)
    80003880:	03010413          	addi	s0,sp,48
    80003884:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003888:	100027f3          	csrr	a5,sstatus
    8000388c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003890:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003894:	00200793          	li	a5,2
    80003898:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    8000389c:	0004c503          	lbu	a0,0(s1)
    800038a0:	00050a63          	beqz	a0,800038b4 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800038a4:	00005097          	auipc	ra,0x5
    800038a8:	a78080e7          	jalr	-1416(ra) # 8000831c <__putc>
        string++;
    800038ac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800038b0:	fedff06f          	j	8000389c <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800038b4:	0009091b          	sext.w	s2,s2
    800038b8:	00297913          	andi	s2,s2,2
    800038bc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800038c0:	10092073          	csrs	sstatus,s2
}
    800038c4:	02813083          	ld	ra,40(sp)
    800038c8:	02013403          	ld	s0,32(sp)
    800038cc:	01813483          	ld	s1,24(sp)
    800038d0:	01013903          	ld	s2,16(sp)
    800038d4:	03010113          	addi	sp,sp,48
    800038d8:	00008067          	ret

00000000800038dc <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800038dc:	fc010113          	addi	sp,sp,-64
    800038e0:	02113c23          	sd	ra,56(sp)
    800038e4:	02813823          	sd	s0,48(sp)
    800038e8:	02913423          	sd	s1,40(sp)
    800038ec:	03213023          	sd	s2,32(sp)
    800038f0:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800038f4:	100027f3          	csrr	a5,sstatus
    800038f8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800038fc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003900:	00200793          	li	a5,2
    80003904:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003908:	0005051b          	sext.w	a0,a0

    i = 0;
    8000390c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80003910:	00a00613          	li	a2,10
    80003914:	02c5773b          	remuw	a4,a0,a2
    80003918:	02071693          	slli	a3,a4,0x20
    8000391c:	0206d693          	srli	a3,a3,0x20
    80003920:	00006717          	auipc	a4,0x6
    80003924:	a5070713          	addi	a4,a4,-1456 # 80009370 <_ZZN5Riscv12printIntegerEmE6digits>
    80003928:	00d70733          	add	a4,a4,a3
    8000392c:	00074703          	lbu	a4,0(a4)
    80003930:	fe040693          	addi	a3,s0,-32
    80003934:	009687b3          	add	a5,a3,s1
    80003938:	0014849b          	addiw	s1,s1,1
    8000393c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003940:	0005071b          	sext.w	a4,a0
    80003944:	02c5553b          	divuw	a0,a0,a2
    80003948:	00900793          	li	a5,9
    8000394c:	fce7e2e3          	bltu	a5,a4,80003910 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003950:	fff4849b          	addiw	s1,s1,-1
    80003954:	0004ce63          	bltz	s1,80003970 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003958:	fe040793          	addi	a5,s0,-32
    8000395c:	009787b3          	add	a5,a5,s1
    80003960:	ff07c503          	lbu	a0,-16(a5)
    80003964:	00005097          	auipc	ra,0x5
    80003968:	9b8080e7          	jalr	-1608(ra) # 8000831c <__putc>
    8000396c:	fe5ff06f          	j	80003950 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80003970:	00a00513          	li	a0,10
    80003974:	00005097          	auipc	ra,0x5
    80003978:	9a8080e7          	jalr	-1624(ra) # 8000831c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000397c:	0009091b          	sext.w	s2,s2
    80003980:	00297913          	andi	s2,s2,2
    80003984:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003988:	10092073          	csrs	sstatus,s2
}
    8000398c:	03813083          	ld	ra,56(sp)
    80003990:	03013403          	ld	s0,48(sp)
    80003994:	02813483          	ld	s1,40(sp)
    80003998:	02013903          	ld	s2,32(sp)
    8000399c:	04010113          	addi	sp,sp,64
    800039a0:	00008067          	ret

00000000800039a4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800039a4:	f9010113          	addi	sp,sp,-112
    800039a8:	06113423          	sd	ra,104(sp)
    800039ac:	06813023          	sd	s0,96(sp)
    800039b0:	04913c23          	sd	s1,88(sp)
    800039b4:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800039b8:	00070713          	mv	a4,a4
    800039bc:	00008797          	auipc	a5,0x8
    800039c0:	05c7b783          	ld	a5,92(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x38>
    800039c4:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800039c8:	142027f3          	csrr	a5,scause
    800039cc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800039d0:	fb843783          	ld	a5,-72(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    800039d4:	fff00713          	li	a4,-1
    800039d8:	03f71713          	slli	a4,a4,0x3f
    800039dc:	00170713          	addi	a4,a4,1
    800039e0:	08e78463          	beq	a5,a4,80003a68 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    800039e4:	fff00713          	li	a4,-1
    800039e8:	03f71713          	slli	a4,a4,0x3f
    800039ec:	00170713          	addi	a4,a4,1
    800039f0:	04f76e63          	bltu	a4,a5,80003a4c <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    800039f4:	ff878793          	addi	a5,a5,-8
    800039f8:	00100713          	li	a4,1
    800039fc:	0ef76663          	bltu	a4,a5,80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
        }
        case ecallSystemInterupt:
        case ecallUserInterrupt:
        {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003a00:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a04:	14102773          	csrr	a4,sepc
    80003a08:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003a0c:	fd843703          	ld	a4,-40(s0)

            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003a10:	00470713          	addi	a4,a4,4
    80003a14:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a18:	10002773          	csrr	a4,sstatus
    80003a1c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003a20:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003a24:	fae43823          	sd	a4,-80(s0)

            switch(operation)
    80003a28:	03100713          	li	a4,49
    80003a2c:	0ef76463          	bltu	a4,a5,80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    80003a30:	00279793          	slli	a5,a5,0x2
    80003a34:	00006717          	auipc	a4,0x6
    80003a38:	87470713          	addi	a4,a4,-1932 # 800092a8 <CONSOLE_STATUS+0x298>
    80003a3c:	00e787b3          	add	a5,a5,a4
    80003a40:	0007a783          	lw	a5,0(a5)
    80003a44:	00e787b3          	add	a5,a5,a4
    80003a48:	00078067          	jr	a5
    switch(scause)
    80003a4c:	fff00713          	li	a4,-1
    80003a50:	03f71713          	slli	a4,a4,0x3f
    80003a54:	00970713          	addi	a4,a4,9
    80003a58:	08e79863          	bne	a5,a4,80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            console_handler();
    80003a5c:	00005097          	auipc	ra,0x5
    80003a60:	934080e7          	jalr	-1740(ra) # 80008390 <console_handler>
            break;
    80003a64:	0840006f          	j	80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a68:	141027f3          	csrr	a5,sepc
    80003a6c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003a70:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003a74:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a78:	100027f3          	csrr	a5,sstatus
    80003a7c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003a80:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003a84:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003a88:	00200793          	li	a5,2
    80003a8c:	1447b073          	csrc	sip,a5
            total++;
    80003a90:	00008717          	auipc	a4,0x8
    80003a94:	06070713          	addi	a4,a4,96 # 8000baf0 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003a98:	00073783          	ld	a5,0(a4)
    80003a9c:	00178793          	addi	a5,a5,1
    80003aa0:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003aa4:	00008497          	auipc	s1,0x8
    80003aa8:	f544b483          	ld	s1,-172(s1) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003aac:	0004b783          	ld	a5,0(s1)
    80003ab0:	00178793          	addi	a5,a5,1
    80003ab4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	4f0080e7          	jalr	1264(ra) # 80002fa8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ac0:	00008797          	auipc	a5,0x8
    80003ac4:	f487b783          	ld	a5,-184(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ac8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003acc:	0107b783          	ld	a5,16(a5)
    80003ad0:	0004b703          	ld	a4,0(s1)
    80003ad4:	02f77463          	bgeu	a4,a5,80003afc <_ZN5Riscv20handleSupervisorTrapEv+0x158>
            Riscv::w_sstatus(sstatus);
    80003ad8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003adc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003ae0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003ae4:	14179073          	csrw	sepc,a5
            Riscv::w_sepc(sepc);

            break;
        }
    }
}
    80003ae8:	06813083          	ld	ra,104(sp)
    80003aec:	06013403          	ld	s0,96(sp)
    80003af0:	05813483          	ld	s1,88(sp)
    80003af4:	07010113          	addi	sp,sp,112
    80003af8:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003afc:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	cf0080e7          	jalr	-784(ra) # 800027f0 <_ZN3PCB8dispatchEv>
    80003b08:	fd1ff06f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
                    MemoryAllocator::memAllocHandler();
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	4ec080e7          	jalr	1260(ra) # 80003ff8 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003b14:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b18:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b1c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b20:	14179073          	csrw	sepc,a5
}
    80003b24:	fc5ff06f          	j	80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                    MemoryAllocator::memFreeHandler();
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	52c080e7          	jalr	1324(ra) # 80004054 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003b30:	fe5ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadMakePCBHandler();
    80003b34:	fffff097          	auipc	ra,0xfffff
    80003b38:	ff0080e7          	jalr	-16(ra) # 80002b24 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003b3c:	fd9ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadCreateHandler();
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	f10080e7          	jalr	-240(ra) # 80002a50 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003b48:	fcdff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadStartHandler();
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	f9c080e7          	jalr	-100(ra) # 80002ae8 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003b54:	fc1ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadDispatchHandler();
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	e7c080e7          	jalr	-388(ra) # 800029d4 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003b60:	fb5ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadExitHandler();
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	e1c080e7          	jalr	-484(ra) # 80002980 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003b6c:	fa9ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadSleepHandler();
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	e94080e7          	jalr	-364(ra) # 80002a04 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003b78:	f9dff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semOpenHandler();
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	780080e7          	jalr	1920(ra) # 800042fc <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003b84:	f91ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semWaitHandler();
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	80c080e7          	jalr	-2036(ra) # 80004394 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003b90:	f85ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semSignalHandler();
    80003b94:	00001097          	auipc	ra,0x1
    80003b98:	838080e7          	jalr	-1992(ra) # 800043cc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003b9c:	f79ff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semCloseHandler();
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	864080e7          	jalr	-1948(ra) # 80004404 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003ba8:	f6dff06f          	j	80003b14 <_ZN5Riscv20handleSupervisorTrapEv+0x170>

0000000080003bac <_ZN5Riscv10kernelMainEv>:

void Riscv::kernelMain()
{
    80003bac:	ff010113          	addi	sp,sp,-16
    80003bb0:	00113423          	sd	ra,8(sp)
    80003bb4:	00813023          	sd	s0,0(sp)
    80003bb8:	01010413          	addi	s0,sp,16
    initSystem();
    80003bbc:	00000097          	auipc	ra,0x0
    80003bc0:	bec080e7          	jalr	-1044(ra) # 800037a8 <_ZN5Riscv10initSystemEv>
    //while(userPCB->getState() != PCB::FINISHED)
    //{
    //    thread_dispatch();
    //}

    myTests();
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	9f4080e7          	jalr	-1548(ra) # 800025b8 <_Z7myTestsv>

    //disableInterrupts();

    endSystem();
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	c58080e7          	jalr	-936(ra) # 80003824 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	7ac50513          	addi	a0,a0,1964 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	c90080e7          	jalr	-880(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    80003be4:	00813083          	ld	ra,8(sp)
    80003be8:	00013403          	ld	s0,0(sp)
    80003bec:	01010113          	addi	sp,sp,16
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	00813023          	sd	s0,0(sp)
    80003c00:	01010413          	addi	s0,sp,16
    userMain();
    80003c04:	00002097          	auipc	ra,0x2
    80003c08:	2ac080e7          	jalr	684(ra) # 80005eb0 <_Z8userMainv>
}
    80003c0c:	00813083          	ld	ra,8(sp)
    80003c10:	00013403          	ld	s0,0(sp)
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00008067          	ret

0000000080003c1c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003c1c:	ff010113          	addi	sp,sp,-16
    80003c20:	00813423          	sd	s0,8(sp)
    80003c24:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003c28:	00008717          	auipc	a4,0x8
    80003c2c:	ed072703          	lw	a4,-304(a4) # 8000baf8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c30:	00100793          	li	a5,1
    80003c34:	04f70263          	beq	a4,a5,80003c78 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003c38:	00008797          	auipc	a5,0x8
    80003c3c:	ec078793          	addi	a5,a5,-320 # 8000baf8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c40:	00100713          	li	a4,1
    80003c44:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003c48:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c4c:	00008717          	auipc	a4,0x8
    80003c50:	d9c73703          	ld	a4,-612(a4) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003c54:	00073703          	ld	a4,0(a4)
    80003c58:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c5c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c60:	00008797          	auipc	a5,0x8
    80003c64:	db07b783          	ld	a5,-592(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c68:	0007b783          	ld	a5,0(a5)
    80003c6c:	40e787b3          	sub	a5,a5,a4
    80003c70:	ff178793          	addi	a5,a5,-15
    80003c74:	00f73023          	sd	a5,0(a4)
}
    80003c78:	00813403          	ld	s0,8(sp)
    80003c7c:	01010113          	addi	sp,sp,16
    80003c80:	00008067          	ret

0000000080003c84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003c84:	fe010113          	addi	sp,sp,-32
    80003c88:	00113c23          	sd	ra,24(sp)
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00913423          	sd	s1,8(sp)
    80003c94:	01213023          	sd	s2,0(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00050493          	mv	s1,a0
    80003ca0:	00058913          	mv	s2,a1
    initMemory();
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	f78080e7          	jalr	-136(ra) # 80003c1c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003cac:	00008797          	auipc	a5,0x8
    80003cb0:	e547b783          	ld	a5,-428(a5) # 8000bb00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003cb4:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003cb8:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003cbc:	00000713          	li	a4,0
    while(curr != 0)
    80003cc0:	00078c63          	beqz	a5,80003cd8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003cc4:	00f4e863          	bltu	s1,a5,80003cd4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003cc8:	00078713          	mv	a4,a5
        curr = curr->next;
    80003ccc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003cd0:	ff1ff06f          	j	80003cc0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003cd4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003cd8:	02070063          	beqz	a4,80003cf8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003cdc:	00973423          	sd	s1,8(a4)
}
    80003ce0:	01813083          	ld	ra,24(sp)
    80003ce4:	01013403          	ld	s0,16(sp)
    80003ce8:	00813483          	ld	s1,8(sp)
    80003cec:	00013903          	ld	s2,0(sp)
    80003cf0:	02010113          	addi	sp,sp,32
    80003cf4:	00008067          	ret
        headAllocated = newAllocated;
    80003cf8:	00008797          	auipc	a5,0x8
    80003cfc:	e097b423          	sd	s1,-504(a5) # 8000bb00 <_ZN15MemoryAllocator13headAllocatedE>
    80003d00:	fe1ff06f          	j	80003ce0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003d04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003d04:	fe010113          	addi	sp,sp,-32
    80003d08:	00113c23          	sd	ra,24(sp)
    80003d0c:	00813823          	sd	s0,16(sp)
    80003d10:	00913423          	sd	s1,8(sp)
    80003d14:	01213023          	sd	s2,0(sp)
    80003d18:	02010413          	addi	s0,sp,32
    80003d1c:	00050913          	mv	s2,a0
    initMemory();
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	efc080e7          	jalr	-260(ra) # 80003c1c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003d28:	00008497          	auipc	s1,0x8
    80003d2c:	de04b483          	ld	s1,-544(s1) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003d30:	00000713          	li	a4,0
    while(curr != 0)
    80003d34:	0a048863          	beqz	s1,80003de4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003d38:	0004b783          	ld	a5,0(s1)
    80003d3c:	0127f863          	bgeu	a5,s2,80003d4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003d40:	00048713          	mv	a4,s1
        curr = curr->next;
    80003d44:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003d48:	fedff06f          	j	80003d34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003d4c:	01090693          	addi	a3,s2,16
    80003d50:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003d54:	00008617          	auipc	a2,0x8
    80003d58:	cbc63603          	ld	a2,-836(a2) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d5c:	00063603          	ld	a2,0(a2)
    80003d60:	04d66c63          	bltu	a2,a3,80003db8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003d64:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003d68:	01000613          	li	a2,16
    80003d6c:	02f67663          	bgeu	a2,a5,80003d98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003d70:	0084b603          	ld	a2,8(s1)
    80003d74:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003d78:	ff078793          	addi	a5,a5,-16
    80003d7c:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003d80:	00070663          	beqz	a4,80003d8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003d84:	00d73423          	sd	a3,8(a4)
    80003d88:	0380006f          	j	80003dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	d6d7be23          	sd	a3,-644(a5) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    80003d94:	02c0006f          	j	80003dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003d98:	00070863          	beqz	a4,80003da8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003d9c:	0084b783          	ld	a5,8(s1)
    80003da0:	00f73423          	sd	a5,8(a4)
    80003da4:	01c0006f          	j	80003dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003da8:	0084b783          	ld	a5,8(s1)
    80003dac:	00008717          	auipc	a4,0x8
    80003db0:	d4f73e23          	sd	a5,-676(a4) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    80003db4:	00c0006f          	j	80003dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003db8:	02070063          	beqz	a4,80003dd8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003dbc:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003dc0:	00090593          	mv	a1,s2
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	ebc080e7          	jalr	-324(ra) # 80003c84 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003dd0:	01048513          	addi	a0,s1,16
            break;
    80003dd4:	0140006f          	j	80003de8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003dd8:	00008797          	auipc	a5,0x8
    80003ddc:	d207b823          	sd	zero,-720(a5) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    80003de0:	fe1ff06f          	j	80003dc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003de4:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	00013903          	ld	s2,0(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00113423          	sd	ra,8(sp)
    80003e08:	00813023          	sd	s0,0(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	ef4080e7          	jalr	-268(ra) # 80003d04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003e18:	00813083          	ld	ra,8(sp)
    80003e1c:	00013403          	ld	s0,0(sp)
    80003e20:	01010113          	addi	sp,sp,16
    80003e24:	00008067          	ret

0000000080003e28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	01213023          	sd	s2,0(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	00050493          	mv	s1,a0
    80003e44:	00058913          	mv	s2,a1
    initMemory();
    80003e48:	00000097          	auipc	ra,0x0
    80003e4c:	dd4080e7          	jalr	-556(ra) # 80003c1c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003e50:	00008797          	auipc	a5,0x8
    80003e54:	cb87b783          	ld	a5,-840(a5) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003e58:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003e5c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003e60:	00000713          	li	a4,0
    while(curr != 0)
    80003e64:	00078c63          	beqz	a5,80003e7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003e68:	00f4e863          	bltu	s1,a5,80003e78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003e6c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003e70:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003e74:	ff1ff06f          	j	80003e64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003e78:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003e7c:	04070663          	beqz	a4,80003ec8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003e80:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003e84:	0084b783          	ld	a5,8(s1)
    80003e88:	00078a63          	beqz	a5,80003e9c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003e8c:	0004b603          	ld	a2,0(s1)
    80003e90:	01060693          	addi	a3,a2,16
    80003e94:	00d486b3          	add	a3,s1,a3
    80003e98:	02d78e63          	beq	a5,a3,80003ed4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003e9c:	00070a63          	beqz	a4,80003eb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003ea0:	00073683          	ld	a3,0(a4)
    80003ea4:	01068793          	addi	a5,a3,16
    80003ea8:	00f707b3          	add	a5,a4,a5
    80003eac:	04978263          	beq	a5,s1,80003ef0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00813483          	ld	s1,8(sp)
    80003ebc:	00013903          	ld	s2,0(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret
        headFree = newSegment;
    80003ec8:	00008797          	auipc	a5,0x8
    80003ecc:	c497b023          	sd	s1,-960(a5) # 8000bb08 <_ZN15MemoryAllocator8headFreeE>
    80003ed0:	fb5ff06f          	j	80003e84 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003ed4:	0007b683          	ld	a3,0(a5)
    80003ed8:	00d60633          	add	a2,a2,a3
    80003edc:	01060613          	addi	a2,a2,16
    80003ee0:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003ee4:	0087b783          	ld	a5,8(a5)
    80003ee8:	00f4b423          	sd	a5,8(s1)
    80003eec:	fb1ff06f          	j	80003e9c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003ef0:	0004b783          	ld	a5,0(s1)
    80003ef4:	00f686b3          	add	a3,a3,a5
    80003ef8:	01068693          	addi	a3,a3,16
    80003efc:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003f00:	0084b783          	ld	a5,8(s1)
    80003f04:	00f73423          	sd	a5,8(a4)
}
    80003f08:	fa9ff06f          	j	80003eb0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003f0c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003f0c:	fe010113          	addi	sp,sp,-32
    80003f10:	00113c23          	sd	ra,24(sp)
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	01213023          	sd	s2,0(sp)
    80003f20:	02010413          	addi	s0,sp,32
    80003f24:	00050913          	mv	s2,a0
    initMemory();
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	cf4080e7          	jalr	-780(ra) # 80003c1c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003f30:	00008497          	auipc	s1,0x8
    80003f34:	bd04b483          	ld	s1,-1072(s1) # 8000bb00 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003f38:	00000713          	li	a4,0
    while(curr != 0)
    80003f3c:	02048a63          	beqz	s1,80003f70 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003f40:	01048793          	addi	a5,s1,16
    80003f44:	01278863          	beq	a5,s2,80003f54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003f48:	00048713          	mv	a4,s1
        curr = curr->next;
    80003f4c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003f50:	fedff06f          	j	80003f3c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003f54:	02070e63          	beqz	a4,80003f90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003f58:	0084b783          	ld	a5,8(s1)
    80003f5c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003f60:	0004b583          	ld	a1,0(s1)
    80003f64:	00048513          	mv	a0,s1
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	ec0080e7          	jalr	-320(ra) # 80003e28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003f70:	02048863          	beqz	s1,80003fa0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003f74:	00000513          	li	a0,0
    else
        return 1;
}
    80003f78:	01813083          	ld	ra,24(sp)
    80003f7c:	01013403          	ld	s0,16(sp)
    80003f80:	00813483          	ld	s1,8(sp)
    80003f84:	00013903          	ld	s2,0(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret
                headAllocated = curr->next;
    80003f90:	0084b783          	ld	a5,8(s1)
    80003f94:	00008717          	auipc	a4,0x8
    80003f98:	b6f73623          	sd	a5,-1172(a4) # 8000bb00 <_ZN15MemoryAllocator13headAllocatedE>
    80003f9c:	fc5ff06f          	j	80003f60 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003fa0:	00100513          	li	a0,1
    80003fa4:	fd5ff06f          	j	80003f78 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003fa8 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003fa8:	ff010113          	addi	sp,sp,-16
    80003fac:	00113423          	sd	ra,8(sp)
    80003fb0:	00813023          	sd	s0,0(sp)
    80003fb4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	f54080e7          	jalr	-172(ra) # 80003f0c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003fc0:	00813083          	ld	ra,8(sp)
    80003fc4:	00013403          	ld	s0,0(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret

0000000080003fd0 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    80003fd0:	ff010113          	addi	sp,sp,-16
    80003fd4:	00113423          	sd	ra,8(sp)
    80003fd8:	00813023          	sd	s0,0(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	e20080e7          	jalr	-480(ra) # 80003e00 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004008:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000400c:	00651513          	slli	a0,a0,0x6
    80004010:	00000097          	auipc	ra,0x0
    80004014:	fc0080e7          	jalr	-64(ra) # 80003fd0 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004018:	00050513          	mv	a0,a0
}
    8000401c:	00813083          	ld	ra,8(sp)
    80004020:	00013403          	ld	s0,0(sp)
    80004024:	01010113          	addi	sp,sp,16
    80004028:	00008067          	ret

000000008000402c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000402c:	ff010113          	addi	sp,sp,-16
    80004030:	00113423          	sd	ra,8(sp)
    80004034:	00813023          	sd	s0,0(sp)
    80004038:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	f6c080e7          	jalr	-148(ra) # 80003fa8 <_ZN15MemoryAllocator8mem_freeEPv>
    80004044:	00813083          	ld	ra,8(sp)
    80004048:	00013403          	ld	s0,0(sp)
    8000404c:	01010113          	addi	sp,sp,16
    80004050:	00008067          	ret

0000000080004054 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004054:	ff010113          	addi	sp,sp,-16
    80004058:	00113423          	sd	ra,8(sp)
    8000405c:	00813023          	sd	s0,0(sp)
    80004060:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004064:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	fc4080e7          	jalr	-60(ra) # 8000402c <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004070:	00050513          	mv	a0,a0
}
    80004074:	00813083          	ld	ra,8(sp)
    80004078:	00013403          	ld	s0,0(sp)
    8000407c:	01010113          	addi	sp,sp,16
    80004080:	00008067          	ret

0000000080004084 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00813423          	sd	s0,8(sp)
    8000408c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004090:	00b52a23          	sw	a1,20(a0)
    80004094:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004098:	00053423          	sd	zero,8(a0)
    8000409c:	00053023          	sd	zero,0(a0)
}
    800040a0:	00813403          	ld	s0,8(sp)
    800040a4:	01010113          	addi	sp,sp,16
    800040a8:	00008067          	ret

00000000800040ac <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800040ac:	ff010113          	addi	sp,sp,-16
    800040b0:	00813423          	sd	s0,8(sp)
    800040b4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800040b8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800040bc:	00053783          	ld	a5,0(a0)
    800040c0:	00078e63          	beqz	a5,800040dc <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800040c4:	00853783          	ld	a5,8(a0)
    800040c8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800040cc:	00b53423          	sd	a1,8(a0)
    }
}
    800040d0:	00813403          	ld	s0,8(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800040dc:	00b53423          	sd	a1,8(a0)
    800040e0:	00b53023          	sd	a1,0(a0)
    800040e4:	fedff06f          	j	800040d0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800040e8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	00813023          	sd	s0,0(sp)
    800040f4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800040f8:	00008797          	auipc	a5,0x8
    800040fc:	9107b783          	ld	a5,-1776(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004100:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004104:	00200793          	li	a5,2
    80004108:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	fa0080e7          	jalr	-96(ra) # 800040ac <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	6dc080e7          	jalr	1756(ra) # 800027f0 <_ZN3PCB8dispatchEv>
}
    8000411c:	00813083          	ld	ra,8(sp)
    80004120:	00013403          	ld	s0,0(sp)
    80004124:	01010113          	addi	sp,sp,16
    80004128:	00008067          	ret

000000008000412c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000412c:	01052783          	lw	a5,16(a0)
    80004130:	fff7879b          	addiw	a5,a5,-1
    80004134:	00f52823          	sw	a5,16(a0)
    80004138:	02079713          	slli	a4,a5,0x20
    8000413c:	00074663          	bltz	a4,80004148 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004140:	00000513          	li	a0,0
    80004144:	00008067          	ret
uint64 KSemaphore::wait() {
    80004148:	ff010113          	addi	sp,sp,-16
    8000414c:	00113423          	sd	ra,8(sp)
    80004150:	00813023          	sd	s0,0(sp)
    80004154:	01010413          	addi	s0,sp,16
        block();
    80004158:	00000097          	auipc	ra,0x0
    8000415c:	f90080e7          	jalr	-112(ra) # 800040e8 <_ZN10KSemaphore5blockEv>
}
    80004160:	00000513          	li	a0,0
    80004164:	00813083          	ld	ra,8(sp)
    80004168:	00013403          	ld	s0,0(sp)
    8000416c:	01010113          	addi	sp,sp,16
    80004170:	00008067          	ret

0000000080004174 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00813423          	sd	s0,8(sp)
    8000417c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004180:	00053503          	ld	a0,0(a0)
    80004184:	00813403          	ld	s0,8(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret

0000000080004190 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004190:	ff010113          	addi	sp,sp,-16
    80004194:	00813423          	sd	s0,8(sp)
    80004198:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000419c:	00053783          	ld	a5,0(a0)
    800041a0:	00078c63          	beqz	a5,800041b8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800041a4:	0087b703          	ld	a4,8(a5)
    800041a8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800041ac:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800041b0:	00053783          	ld	a5,0(a0)
    800041b4:	00078863          	beqz	a5,800041c4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800041b8:	00813403          	ld	s0,8(sp)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret
        tailBlocked =0;
    800041c4:	00053423          	sd	zero,8(a0)
    800041c8:	ff1ff06f          	j	800041b8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800041cc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00113c23          	sd	ra,24(sp)
    800041d4:	00813823          	sd	s0,16(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	01213023          	sd	s2,0(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800041e8:	00090513          	mv	a0,s2
    800041ec:	00000097          	auipc	ra,0x0
    800041f0:	f88080e7          	jalr	-120(ra) # 80004174 <_ZN10KSemaphore15getFirstBlockedEv>
    800041f4:	00050493          	mv	s1,a0
    800041f8:	02050063          	beqz	a0,80004218 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800041fc:	00090513          	mv	a0,s2
    80004200:	00000097          	auipc	ra,0x0
    80004204:	f90080e7          	jalr	-112(ra) # 80004190 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004208:	00048513          	mv	a0,s1
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	04c080e7          	jalr	76(ra) # 80003258 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004214:	fd5ff06f          	j	800041e8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004218:	01813083          	ld	ra,24(sp)
    8000421c:	01013403          	ld	s0,16(sp)
    80004220:	00813483          	ld	s1,8(sp)
    80004224:	00013903          	ld	s2,0(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00813823          	sd	s0,16(sp)
    8000423c:	00913423          	sd	s1,8(sp)
    80004240:	01213023          	sd	s2,0(sp)
    80004244:	02010413          	addi	s0,sp,32
    80004248:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	f28080e7          	jalr	-216(ra) # 80004174 <_ZN10KSemaphore15getFirstBlockedEv>
    80004254:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004258:	00090513          	mv	a0,s2
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	f34080e7          	jalr	-204(ra) # 80004190 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004264:	00048863          	beqz	s1,80004274 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80004268:	00048513          	mv	a0,s1
    8000426c:	fffff097          	auipc	ra,0xfffff
    80004270:	fec080e7          	jalr	-20(ra) # 80003258 <_ZN9Scheduler3putEP3PCB>
}
    80004274:	01813083          	ld	ra,24(sp)
    80004278:	01013403          	ld	s0,16(sp)
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	00013903          	ld	s2,0(sp)
    80004284:	02010113          	addi	sp,sp,32
    80004288:	00008067          	ret

000000008000428c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000428c:	01052783          	lw	a5,16(a0)
    80004290:	0017879b          	addiw	a5,a5,1
    80004294:	0007871b          	sext.w	a4,a5
    80004298:	00f52823          	sw	a5,16(a0)
    8000429c:	00e05663          	blez	a4,800042a8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800042a0:	00000513          	li	a0,0
    800042a4:	00008067          	ret
uint64 KSemaphore::signal() {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
        unblock();
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	f78080e7          	jalr	-136(ra) # 80004230 <_ZN10KSemaphore7unblockEv>
}
    800042c0:	00000513          	li	a0,0
    800042c4:	00813083          	ld	ra,8(sp)
    800042c8:	00013403          	ld	s0,0(sp)
    800042cc:	01010113          	addi	sp,sp,16
    800042d0:	00008067          	ret

00000000800042d4 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    800042d4:	ff010113          	addi	sp,sp,-16
    800042d8:	00113423          	sd	ra,8(sp)
    800042dc:	00813023          	sd	s0,0(sp)
    800042e0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800042e4:	00000097          	auipc	ra,0x0
    800042e8:	cec080e7          	jalr	-788(ra) # 80003fd0 <_Z7kmallocm>
}
    800042ec:	00813083          	ld	ra,8(sp)
    800042f0:	00013403          	ld	s0,0(sp)
    800042f4:	01010113          	addi	sp,sp,16
    800042f8:	00008067          	ret

00000000800042fc <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800042fc:	fd010113          	addi	sp,sp,-48
    80004300:	02113423          	sd	ra,40(sp)
    80004304:	02813023          	sd	s0,32(sp)
    80004308:	00913c23          	sd	s1,24(sp)
    8000430c:	01213823          	sd	s2,16(sp)
    80004310:	01313423          	sd	s3,8(sp)
    80004314:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004318:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000431c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004320:	01800513          	li	a0,24
    80004324:	00000097          	auipc	ra,0x0
    80004328:	fb0080e7          	jalr	-80(ra) # 800042d4 <_ZN10KSemaphorenwEm>
    8000432c:	00050493          	mv	s1,a0
    80004330:	0009859b          	sext.w	a1,s3
    80004334:	00000097          	auipc	ra,0x0
    80004338:	d50080e7          	jalr	-688(ra) # 80004084 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000433c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004340:	02048263          	beqz	s1,80004364 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004344:	00000513          	li	a0,0
}
    80004348:	02813083          	ld	ra,40(sp)
    8000434c:	02013403          	ld	s0,32(sp)
    80004350:	01813483          	ld	s1,24(sp)
    80004354:	01013903          	ld	s2,16(sp)
    80004358:	00813983          	ld	s3,8(sp)
    8000435c:	03010113          	addi	sp,sp,48
    80004360:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004364:	fff00513          	li	a0,-1
    80004368:	fe1ff06f          	j	80004348 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000436c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00113423          	sd	ra,8(sp)
    80004374:	00813023          	sd	s0,0(sp)
    80004378:	01010413          	addi	s0,sp,16
    kfree(p);
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	cb0080e7          	jalr	-848(ra) # 8000402c <_Z5kfreePv>
}
    80004384:	00813083          	ld	ra,8(sp)
    80004388:	00013403          	ld	s0,0(sp)
    8000438c:	01010113          	addi	sp,sp,16
    80004390:	00008067          	ret

0000000080004394 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	00813823          	sd	s0,16(sp)
    800043a0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800043a4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	d84080e7          	jalr	-636(ra) # 8000412c <_ZN10KSemaphore4waitEv>
    800043b0:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043b4:	fe843783          	ld	a5,-24(s0)
    800043b8:	00078513          	mv	a0,a5
}
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	02010113          	addi	sp,sp,32
    800043c8:	00008067          	ret

00000000800043cc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800043cc:	fe010113          	addi	sp,sp,-32
    800043d0:	00113c23          	sd	ra,24(sp)
    800043d4:	00813823          	sd	s0,16(sp)
    800043d8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800043dc:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	eac080e7          	jalr	-340(ra) # 8000428c <_ZN10KSemaphore6signalEv>
    800043e8:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043ec:	fe843783          	ld	a5,-24(s0)
    800043f0:	00078513          	mv	a0,a5
}
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004418:	00058493          	mv	s1,a1
    delete kSem;
    8000441c:	00048e63          	beqz	s1,80004438 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004420:	00048513          	mv	a0,s1
    80004424:	00000097          	auipc	ra,0x0
    80004428:	da8080e7          	jalr	-600(ra) # 800041cc <_ZN10KSemaphoreD1Ev>
    8000442c:	00048513          	mv	a0,s1
    80004430:	00000097          	auipc	ra,0x0
    80004434:	f3c080e7          	jalr	-196(ra) # 8000436c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004438:	00000513          	li	a0,0
}
    8000443c:	01813083          	ld	ra,24(sp)
    80004440:	01013403          	ld	s0,16(sp)
    80004444:	00813483          	ld	s1,8(sp)
    80004448:	02010113          	addi	sp,sp,32
    8000444c:	00008067          	ret

0000000080004450 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80004450:	fd010113          	addi	sp,sp,-48
    80004454:	02113423          	sd	ra,40(sp)
    80004458:	02813023          	sd	s0,32(sp)
    8000445c:	00913c23          	sd	s1,24(sp)
    80004460:	01213823          	sd	s2,16(sp)
    80004464:	01313423          	sd	s3,8(sp)
    80004468:	03010413          	addi	s0,sp,48
    8000446c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    80004470:	00005517          	auipc	a0,0x5
    80004474:	f1850513          	addi	a0,a0,-232 # 80009388 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	3f4080e7          	jalr	1012(ra) # 8000386c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80004480:	00000993          	li	s3,0
    while (!threadEnd) {
    80004484:	00007797          	auipc	a5,0x7
    80004488:	68c7a783          	lw	a5,1676(a5) # 8000bb10 <threadEnd>
    8000448c:	0c079863          	bnez	a5,8000455c <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    80004490:	00092583          	lw	a1,0(s2)
    80004494:	0305859b          	addiw	a1,a1,48
    80004498:	00893503          	ld	a0,8(s2)
    8000449c:	00002097          	auipc	ra,0x2
    800044a0:	c9c080e7          	jalr	-868(ra) # 80006138 <_ZN6Buffer3putEi>
        i++;
    800044a4:	0019849b          	addiw	s1,s3,1
    800044a8:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    800044ac:	00007717          	auipc	a4,0x7
    800044b0:	66470713          	addi	a4,a4,1636 # 8000bb10 <threadEnd>
    800044b4:	00472783          	lw	a5,4(a4)
    800044b8:	0017879b          	addiw	a5,a5,1
    800044bc:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	ee050513          	addi	a0,a0,-288 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	3a4080e7          	jalr	932(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    800044d0:	00092503          	lw	a0,0(s2)
    800044d4:	0305051b          	addiw	a0,a0,48
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	404080e7          	jalr	1028(ra) # 800038dc <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    800044e0:	00092703          	lw	a4,0(s2)
    800044e4:	0027179b          	slliw	a5,a4,0x2
    800044e8:	00e787bb          	addw	a5,a5,a4
    800044ec:	0017979b          	slliw	a5,a5,0x1
    800044f0:	02f4e7bb          	remw	a5,s1,a5
    800044f4:	02078e63          	beqz	a5,80004530 <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    800044f8:	00007497          	auipc	s1,0x7
    800044fc:	61848493          	addi	s1,s1,1560 # 8000bb10 <threadEnd>
    80004500:	0044a503          	lw	a0,4(s1)
    80004504:	0005051b          	sext.w	a0,a0
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	3d4080e7          	jalr	980(ra) # 800038dc <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004510:	0044a783          	lw	a5,4(s1)
    80004514:	0007879b          	sext.w	a5,a5
    80004518:	00f00713          	li	a4,15
    8000451c:	f6e794e3          	bne	a5,a4,80004484 <_Z8producerPv+0x34>
            threadEnd = 1;
    80004520:	00100793          	li	a5,1
    80004524:	00007717          	auipc	a4,0x7
    80004528:	5ef72623          	sw	a5,1516(a4) # 8000bb10 <threadEnd>
    8000452c:	f59ff06f          	j	80004484 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    80004530:	00005517          	auipc	a0,0x5
    80004534:	e7850513          	addi	a0,a0,-392 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	334080e7          	jalr	820(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	de4080e7          	jalr	-540(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	e7050513          	addi	a0,a0,-400 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004550:	fffff097          	auipc	ra,0xfffff
    80004554:	31c080e7          	jalr	796(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80004558:	fa1ff06f          	j	800044f8 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    8000455c:	00005517          	auipc	a0,0x5
    80004560:	e7450513          	addi	a0,a0,-396 # 800093d0 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80004564:	fffff097          	auipc	ra,0xfffff
    80004568:	308080e7          	jalr	776(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    8000456c:	01093503          	ld	a0,16(s2)
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	e8c080e7          	jalr	-372(ra) # 800013fc <sem_signal>
}
    80004578:	02813083          	ld	ra,40(sp)
    8000457c:	02013403          	ld	s0,32(sp)
    80004580:	01813483          	ld	s1,24(sp)
    80004584:	01013903          	ld	s2,16(sp)
    80004588:	00813983          	ld	s3,8(sp)
    8000458c:	03010113          	addi	sp,sp,48
    80004590:	00008067          	ret

0000000080004594 <_Z8consumerPv>:

void consumer(void *arg) {
    80004594:	fd010113          	addi	sp,sp,-48
    80004598:	02113423          	sd	ra,40(sp)
    8000459c:	02813023          	sd	s0,32(sp)
    800045a0:	00913c23          	sd	s1,24(sp)
    800045a4:	01213823          	sd	s2,16(sp)
    800045a8:	01313423          	sd	s3,8(sp)
    800045ac:	01413023          	sd	s4,0(sp)
    800045b0:	03010413          	addi	s0,sp,48
    800045b4:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	e3050513          	addi	a0,a0,-464 # 800093e8 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	2ac080e7          	jalr	684(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    int i = 0;
    800045c8:	00000a13          	li	s4,0
    800045cc:	0200006f          	j	800045ec <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	d54080e7          	jalr	-684(ra) # 80001324 <thread_dispatch>
    800045d8:	0680006f          	j	80004640 <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    800045dc:	00005517          	auipc	a0,0x5
    800045e0:	b2450513          	addi	a0,a0,-1244 # 80009100 <CONSOLE_STATUS+0xf0>
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	288080e7          	jalr	648(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    800045ec:	00007797          	auipc	a5,0x7
    800045f0:	5247a783          	lw	a5,1316(a5) # 8000bb10 <threadEnd>
    800045f4:	04079e63          	bnez	a5,80004650 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    800045f8:	0089b503          	ld	a0,8(s3)
    800045fc:	00002097          	auipc	ra,0x2
    80004600:	bcc080e7          	jalr	-1076(ra) # 800061c8 <_ZN6Buffer3getEv>
    80004604:	00050913          	mv	s2,a0
        i++;
    80004608:	001a049b          	addiw	s1,s4,1
    8000460c:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004610:	00005517          	auipc	a0,0x5
    80004614:	df050513          	addi	a0,a0,-528 # 80009400 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	254080e7          	jalr	596(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004620:	00090513          	mv	a0,s2
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	2b8080e7          	jalr	696(ra) # 800038dc <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    8000462c:	0009a703          	lw	a4,0(s3)
    80004630:	0027179b          	slliw	a5,a4,0x2
    80004634:	00e787bb          	addw	a5,a5,a4
    80004638:	02f4e7bb          	remw	a5,s1,a5
    8000463c:	f8078ae3          	beqz	a5,800045d0 <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    80004640:	05000793          	li	a5,80
    80004644:	02f4e4bb          	remw	s1,s1,a5
    80004648:	fa0492e3          	bnez	s1,800045ec <_Z8consumerPv+0x58>
    8000464c:	f91ff06f          	j	800045dc <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    80004650:	00005517          	auipc	a0,0x5
    80004654:	db850513          	addi	a0,a0,-584 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	214080e7          	jalr	532(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    80004660:	0109b503          	ld	a0,16(s3)
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	d98080e7          	jalr	-616(ra) # 800013fc <sem_signal>
}
    8000466c:	02813083          	ld	ra,40(sp)
    80004670:	02013403          	ld	s0,32(sp)
    80004674:	01813483          	ld	s1,24(sp)
    80004678:	01013903          	ld	s2,16(sp)
    8000467c:	00813983          	ld	s3,8(sp)
    80004680:	00013a03          	ld	s4,0(sp)
    80004684:	03010113          	addi	sp,sp,48
    80004688:	00008067          	ret

000000008000468c <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00113c23          	sd	ra,24(sp)
    80004694:	00813823          	sd	s0,16(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	01213023          	sd	s2,0(sp)
    800046a0:	02010413          	addi	s0,sp,32
    800046a4:	00050493          	mv	s1,a0
    int i = 0;
    800046a8:	00000913          	li	s2,0
    800046ac:	00c0006f          	j	800046b8 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    800046b0:	ffffd097          	auipc	ra,0xffffd
    800046b4:	c74080e7          	jalr	-908(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    800046b8:	00004097          	auipc	ra,0x4
    800046bc:	ca0080e7          	jalr	-864(ra) # 80008358 <__getc>
    while ((key = getc()) != 0x1b) {
    800046c0:	0005059b          	sext.w	a1,a0
    800046c4:	01b00793          	li	a5,27
    800046c8:	02f58a63          	beq	a1,a5,800046fc <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800046cc:	0084b503          	ld	a0,8(s1)
    800046d0:	00002097          	auipc	ra,0x2
    800046d4:	a68080e7          	jalr	-1432(ra) # 80006138 <_ZN6Buffer3putEi>
        i++;
    800046d8:	0019071b          	addiw	a4,s2,1
    800046dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800046e0:	0004a683          	lw	a3,0(s1)
    800046e4:	0026979b          	slliw	a5,a3,0x2
    800046e8:	00d787bb          	addw	a5,a5,a3
    800046ec:	0017979b          	slliw	a5,a5,0x1
    800046f0:	02f767bb          	remw	a5,a4,a5
    800046f4:	fc0792e3          	bnez	a5,800046b8 <_Z16producerKeyboardPv+0x2c>
    800046f8:	fb9ff06f          	j	800046b0 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    800046fc:	00100793          	li	a5,1
    80004700:	00007717          	auipc	a4,0x7
    80004704:	40f72823          	sw	a5,1040(a4) # 8000bb10 <threadEnd>
    delete data->buffer;
    80004708:	0084b903          	ld	s2,8(s1)
    8000470c:	00090e63          	beqz	s2,80004728 <_Z16producerKeyboardPv+0x9c>
    80004710:	00090513          	mv	a0,s2
    80004714:	00002097          	auipc	ra,0x2
    80004718:	978080e7          	jalr	-1672(ra) # 8000608c <_ZN6BufferD1Ev>
    8000471c:	00090513          	mv	a0,s2
    80004720:	fffff097          	auipc	ra,0xfffff
    80004724:	d3c080e7          	jalr	-708(ra) # 8000345c <_ZdlPv>
    sem_signal(data->wait);
    80004728:	0104b503          	ld	a0,16(s1)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	cd0080e7          	jalr	-816(ra) # 800013fc <sem_signal>
}
    80004734:	01813083          	ld	ra,24(sp)
    80004738:	01013403          	ld	s0,16(sp)
    8000473c:	00813483          	ld	s1,8(sp)
    80004740:	00013903          	ld	s2,0(sp)
    80004744:	02010113          	addi	sp,sp,32
    80004748:	00008067          	ret

000000008000474c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000474c:	f6010113          	addi	sp,sp,-160
    80004750:	08113c23          	sd	ra,152(sp)
    80004754:	08813823          	sd	s0,144(sp)
    80004758:	08913423          	sd	s1,136(sp)
    8000475c:	09213023          	sd	s2,128(sp)
    80004760:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004764:	00005517          	auipc	a0,0x5
    80004768:	cbc50513          	addi	a0,a0,-836 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	170080e7          	jalr	368(ra) # 800058dc <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004774:	00005517          	auipc	a0,0x5
    80004778:	ccc50513          	addi	a0,a0,-820 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	160080e7          	jalr	352(ra) # 800058dc <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004784:	00005517          	auipc	a0,0x5
    80004788:	cdc50513          	addi	a0,a0,-804 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	150080e7          	jalr	336(ra) # 800058dc <_Z11printStringPKc>
    80004794:	00000613          	li	a2,0
    80004798:	00a00593          	li	a1,10
    8000479c:	00300513          	li	a0,3
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	2d4080e7          	jalr	724(ra) # 80005a74 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047a8:	00005517          	auipc	a0,0x5
    800047ac:	cd050513          	addi	a0,a0,-816 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0x108>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	12c080e7          	jalr	300(ra) # 800058dc <_Z11printStringPKc>
    800047b8:	00000613          	li	a2,0
    800047bc:	00a00593          	li	a1,10
    800047c0:	00100513          	li	a0,1
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	2b0080e7          	jalr	688(ra) # 80005a74 <_Z8printIntiii>
    printString(".\n");
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	a9c50513          	addi	a0,a0,-1380 # 80009268 <CONSOLE_STATUS+0x258>
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	108080e7          	jalr	264(ra) # 800058dc <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800047dc:	03800513          	li	a0,56
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	c54080e7          	jalr	-940(ra) # 80003434 <_Znwm>
    800047e8:	00050913          	mv	s2,a0
    800047ec:	00100593          	li	a1,1
    800047f0:	00002097          	auipc	ra,0x2
    800047f4:	814080e7          	jalr	-2028(ra) # 80006004 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800047f8:	00000593          	li	a1,0
    800047fc:	00007517          	auipc	a0,0x7
    80004800:	31c50513          	addi	a0,a0,796 # 8000bb18 <waitForAll>
    80004804:	ffffd097          	auipc	ra,0xffffd
    80004808:	b68080e7          	jalr	-1176(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    8000480c:	00300793          	li	a5,3
    80004810:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    80004814:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    80004818:	00007797          	auipc	a5,0x7
    8000481c:	3007b783          	ld	a5,768(a5) # 8000bb18 <waitForAll>
    80004820:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004824:	fa840613          	addi	a2,s0,-88
    80004828:	00000597          	auipc	a1,0x0
    8000482c:	d6c58593          	addi	a1,a1,-660 # 80004594 <_Z8consumerPv>
    80004830:	fc040513          	addi	a0,s0,-64
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	a70080e7          	jalr	-1424(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    8000483c:	00000493          	li	s1,0
    80004840:	00200793          	li	a5,2
    80004844:	0697c063          	blt	a5,s1,800048a4 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004848:	00149613          	slli	a2,s1,0x1
    8000484c:	009607b3          	add	a5,a2,s1
    80004850:	00379793          	slli	a5,a5,0x3
    80004854:	fe040713          	addi	a4,s0,-32
    80004858:	00f707b3          	add	a5,a4,a5
    8000485c:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004860:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004864:	00007717          	auipc	a4,0x7
    80004868:	2b473703          	ld	a4,692(a4) # 8000bb18 <waitForAll>
    8000486c:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004870:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004874:	00960633          	add	a2,a2,s1
    80004878:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000487c:	f6040713          	addi	a4,s0,-160
    80004880:	00c70633          	add	a2,a4,a2
    80004884:	00000597          	auipc	a1,0x0
    80004888:	bcc58593          	addi	a1,a1,-1076 # 80004450 <_Z8producerPv>
    8000488c:	fc840513          	addi	a0,s0,-56
    80004890:	00f50533          	add	a0,a0,a5
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	a10080e7          	jalr	-1520(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000489c:	0014849b          	addiw	s1,s1,1
    800048a0:	fa1ff06f          	j	80004840 <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	a80080e7          	jalr	-1408(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800048ac:	00000493          	li	s1,0
    800048b0:	0180006f          	j	800048c8 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    800048b4:	00007517          	auipc	a0,0x7
    800048b8:	26453503          	ld	a0,612(a0) # 8000bb18 <waitForAll>
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	b14080e7          	jalr	-1260(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800048c4:	0014849b          	addiw	s1,s1,1
    800048c8:	00300793          	li	a5,3
    800048cc:	fe97d4e3          	bge	a5,s1,800048b4 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    800048d0:	00007517          	auipc	a0,0x7
    800048d4:	24853503          	ld	a0,584(a0) # 8000bb18 <waitForAll>
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	acc080e7          	jalr	-1332(ra) # 800013a4 <sem_close>
}
    800048e0:	09813083          	ld	ra,152(sp)
    800048e4:	09013403          	ld	s0,144(sp)
    800048e8:	08813483          	ld	s1,136(sp)
    800048ec:	08013903          	ld	s2,128(sp)
    800048f0:	0a010113          	addi	sp,sp,160
    800048f4:	00008067          	ret
    800048f8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800048fc:	00090513          	mv	a0,s2
    80004900:	fffff097          	auipc	ra,0xfffff
    80004904:	b5c080e7          	jalr	-1188(ra) # 8000345c <_ZdlPv>
    80004908:	00048513          	mv	a0,s1
    8000490c:	00008097          	auipc	ra,0x8
    80004910:	2fc080e7          	jalr	764(ra) # 8000cc08 <_Unwind_Resume>

0000000080004914 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004914:	fe010113          	addi	sp,sp,-32
    80004918:	00113c23          	sd	ra,24(sp)
    8000491c:	00813823          	sd	s0,16(sp)
    80004920:	00913423          	sd	s1,8(sp)
    80004924:	01213023          	sd	s2,0(sp)
    80004928:	02010413          	addi	s0,sp,32
    8000492c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004930:	00100793          	li	a5,1
    80004934:	02a7f863          	bgeu	a5,a0,80004964 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004938:	00a00793          	li	a5,10
    8000493c:	02f577b3          	remu	a5,a0,a5
    80004940:	02078e63          	beqz	a5,8000497c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004944:	fff48513          	addi	a0,s1,-1
    80004948:	00000097          	auipc	ra,0x0
    8000494c:	fcc080e7          	jalr	-52(ra) # 80004914 <_ZL9fibonaccim>
    80004950:	00050913          	mv	s2,a0
    80004954:	ffe48513          	addi	a0,s1,-2
    80004958:	00000097          	auipc	ra,0x0
    8000495c:	fbc080e7          	jalr	-68(ra) # 80004914 <_ZL9fibonaccim>
    80004960:	00a90533          	add	a0,s2,a0
}
    80004964:	01813083          	ld	ra,24(sp)
    80004968:	01013403          	ld	s0,16(sp)
    8000496c:	00813483          	ld	s1,8(sp)
    80004970:	00013903          	ld	s2,0(sp)
    80004974:	02010113          	addi	sp,sp,32
    80004978:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	9a8080e7          	jalr	-1624(ra) # 80001324 <thread_dispatch>
    80004984:	fc1ff06f          	j	80004944 <_ZL9fibonaccim+0x30>

0000000080004988 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004988:	fe010113          	addi	sp,sp,-32
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	00813823          	sd	s0,16(sp)
    80004994:	00913423          	sd	s1,8(sp)
    80004998:	01213023          	sd	s2,0(sp)
    8000499c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800049a0:	00000913          	li	s2,0
    800049a4:	0380006f          	j	800049dc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	97c080e7          	jalr	-1668(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800049b0:	00148493          	addi	s1,s1,1
    800049b4:	000027b7          	lui	a5,0x2
    800049b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049bc:	0097ee63          	bltu	a5,s1,800049d8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049c0:	00000713          	li	a4,0
    800049c4:	000077b7          	lui	a5,0x7
    800049c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800049cc:	fce7eee3          	bltu	a5,a4,800049a8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800049d0:	00170713          	addi	a4,a4,1
    800049d4:	ff1ff06f          	j	800049c4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800049d8:	00190913          	addi	s2,s2,1
    800049dc:	00900793          	li	a5,9
    800049e0:	0527e063          	bltu	a5,s2,80004a20 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800049e4:	00005517          	auipc	a0,0x5
    800049e8:	aac50513          	addi	a0,a0,-1364 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	ef0080e7          	jalr	-272(ra) # 800058dc <_Z11printStringPKc>
    800049f4:	00000613          	li	a2,0
    800049f8:	00a00593          	li	a1,10
    800049fc:	0009051b          	sext.w	a0,s2
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	074080e7          	jalr	116(ra) # 80005a74 <_Z8printIntiii>
    80004a08:	00004517          	auipc	a0,0x4
    80004a0c:	6f850513          	addi	a0,a0,1784 # 80009100 <CONSOLE_STATUS+0xf0>
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	ecc080e7          	jalr	-308(ra) # 800058dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a18:	00000493          	li	s1,0
    80004a1c:	f99ff06f          	j	800049b4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004a20:	00005517          	auipc	a0,0x5
    80004a24:	a7850513          	addi	a0,a0,-1416 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	eb4080e7          	jalr	-332(ra) # 800058dc <_Z11printStringPKc>
    finishedA = true;
    80004a30:	00100793          	li	a5,1
    80004a34:	00007717          	auipc	a4,0x7
    80004a38:	0ef70623          	sb	a5,236(a4) # 8000bb20 <_ZL9finishedA>
}
    80004a3c:	01813083          	ld	ra,24(sp)
    80004a40:	01013403          	ld	s0,16(sp)
    80004a44:	00813483          	ld	s1,8(sp)
    80004a48:	00013903          	ld	s2,0(sp)
    80004a4c:	02010113          	addi	sp,sp,32
    80004a50:	00008067          	ret

0000000080004a54 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	01213023          	sd	s2,0(sp)
    80004a68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a6c:	00000913          	li	s2,0
    80004a70:	0380006f          	j	80004aa8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	8b0080e7          	jalr	-1872(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004a7c:	00148493          	addi	s1,s1,1
    80004a80:	000027b7          	lui	a5,0x2
    80004a84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a88:	0097ee63          	bltu	a5,s1,80004aa4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a8c:	00000713          	li	a4,0
    80004a90:	000077b7          	lui	a5,0x7
    80004a94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a98:	fce7eee3          	bltu	a5,a4,80004a74 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004a9c:	00170713          	addi	a4,a4,1
    80004aa0:	ff1ff06f          	j	80004a90 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004aa4:	00190913          	addi	s2,s2,1
    80004aa8:	00f00793          	li	a5,15
    80004aac:	0527e063          	bltu	a5,s2,80004aec <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ab0:	00005517          	auipc	a0,0x5
    80004ab4:	9f850513          	addi	a0,a0,-1544 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	e24080e7          	jalr	-476(ra) # 800058dc <_Z11printStringPKc>
    80004ac0:	00000613          	li	a2,0
    80004ac4:	00a00593          	li	a1,10
    80004ac8:	0009051b          	sext.w	a0,s2
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	fa8080e7          	jalr	-88(ra) # 80005a74 <_Z8printIntiii>
    80004ad4:	00004517          	auipc	a0,0x4
    80004ad8:	62c50513          	addi	a0,a0,1580 # 80009100 <CONSOLE_STATUS+0xf0>
    80004adc:	00001097          	auipc	ra,0x1
    80004ae0:	e00080e7          	jalr	-512(ra) # 800058dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ae4:	00000493          	li	s1,0
    80004ae8:	f99ff06f          	j	80004a80 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004aec:	00005517          	auipc	a0,0x5
    80004af0:	9c450513          	addi	a0,a0,-1596 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	de8080e7          	jalr	-536(ra) # 800058dc <_Z11printStringPKc>
    finishedB = true;
    80004afc:	00100793          	li	a5,1
    80004b00:	00007717          	auipc	a4,0x7
    80004b04:	02f700a3          	sb	a5,33(a4) # 8000bb21 <_ZL9finishedB>
    thread_dispatch();
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	81c080e7          	jalr	-2020(ra) # 80001324 <thread_dispatch>
}
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	00813483          	ld	s1,8(sp)
    80004b1c:	00013903          	ld	s2,0(sp)
    80004b20:	02010113          	addi	sp,sp,32
    80004b24:	00008067          	ret

0000000080004b28 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004b28:	fe010113          	addi	sp,sp,-32
    80004b2c:	00113c23          	sd	ra,24(sp)
    80004b30:	00813823          	sd	s0,16(sp)
    80004b34:	00913423          	sd	s1,8(sp)
    80004b38:	01213023          	sd	s2,0(sp)
    80004b3c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b40:	00000493          	li	s1,0
    80004b44:	0400006f          	j	80004b84 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004b48:	00005517          	auipc	a0,0x5
    80004b4c:	97850513          	addi	a0,a0,-1672 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	d8c080e7          	jalr	-628(ra) # 800058dc <_Z11printStringPKc>
    80004b58:	00000613          	li	a2,0
    80004b5c:	00a00593          	li	a1,10
    80004b60:	00048513          	mv	a0,s1
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	f10080e7          	jalr	-240(ra) # 80005a74 <_Z8printIntiii>
    80004b6c:	00004517          	auipc	a0,0x4
    80004b70:	59450513          	addi	a0,a0,1428 # 80009100 <CONSOLE_STATUS+0xf0>
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	d68080e7          	jalr	-664(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b7c:	0014849b          	addiw	s1,s1,1
    80004b80:	0ff4f493          	andi	s1,s1,255
    80004b84:	00200793          	li	a5,2
    80004b88:	fc97f0e3          	bgeu	a5,s1,80004b48 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004b8c:	00005517          	auipc	a0,0x5
    80004b90:	93c50513          	addi	a0,a0,-1732 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	d48080e7          	jalr	-696(ra) # 800058dc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b9c:	00700313          	li	t1,7
    thread_dispatch();
    80004ba0:	ffffc097          	auipc	ra,0xffffc
    80004ba4:	784080e7          	jalr	1924(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ba8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004bac:	00005517          	auipc	a0,0x5
    80004bb0:	92c50513          	addi	a0,a0,-1748 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	d28080e7          	jalr	-728(ra) # 800058dc <_Z11printStringPKc>
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00a00593          	li	a1,10
    80004bc4:	0009051b          	sext.w	a0,s2
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	eac080e7          	jalr	-340(ra) # 80005a74 <_Z8printIntiii>
    80004bd0:	00004517          	auipc	a0,0x4
    80004bd4:	53050513          	addi	a0,a0,1328 # 80009100 <CONSOLE_STATUS+0xf0>
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	d04080e7          	jalr	-764(ra) # 800058dc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004be0:	00c00513          	li	a0,12
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	d30080e7          	jalr	-720(ra) # 80004914 <_ZL9fibonaccim>
    80004bec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004bf0:	00005517          	auipc	a0,0x5
    80004bf4:	8f050513          	addi	a0,a0,-1808 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	ce4080e7          	jalr	-796(ra) # 800058dc <_Z11printStringPKc>
    80004c00:	00000613          	li	a2,0
    80004c04:	00a00593          	li	a1,10
    80004c08:	0009051b          	sext.w	a0,s2
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	e68080e7          	jalr	-408(ra) # 80005a74 <_Z8printIntiii>
    80004c14:	00004517          	auipc	a0,0x4
    80004c18:	4ec50513          	addi	a0,a0,1260 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	cc0080e7          	jalr	-832(ra) # 800058dc <_Z11printStringPKc>
    80004c24:	0400006f          	j	80004c64 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c28:	00005517          	auipc	a0,0x5
    80004c2c:	89850513          	addi	a0,a0,-1896 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	cac080e7          	jalr	-852(ra) # 800058dc <_Z11printStringPKc>
    80004c38:	00000613          	li	a2,0
    80004c3c:	00a00593          	li	a1,10
    80004c40:	00048513          	mv	a0,s1
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	e30080e7          	jalr	-464(ra) # 80005a74 <_Z8printIntiii>
    80004c4c:	00004517          	auipc	a0,0x4
    80004c50:	4b450513          	addi	a0,a0,1204 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	c88080e7          	jalr	-888(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c5c:	0014849b          	addiw	s1,s1,1
    80004c60:	0ff4f493          	andi	s1,s1,255
    80004c64:	00500793          	li	a5,5
    80004c68:	fc97f0e3          	bgeu	a5,s1,80004c28 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004c6c:	00005517          	auipc	a0,0x5
    80004c70:	82c50513          	addi	a0,a0,-2004 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	c68080e7          	jalr	-920(ra) # 800058dc <_Z11printStringPKc>
    finishedC = true;
    80004c7c:	00100793          	li	a5,1
    80004c80:	00007717          	auipc	a4,0x7
    80004c84:	eaf70123          	sb	a5,-350(a4) # 8000bb22 <_ZL9finishedC>
    thread_dispatch();
    80004c88:	ffffc097          	auipc	ra,0xffffc
    80004c8c:	69c080e7          	jalr	1692(ra) # 80001324 <thread_dispatch>
}
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00813483          	ld	s1,8(sp)
    80004c9c:	00013903          	ld	s2,0(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004cc0:	00a00493          	li	s1,10
    80004cc4:	0400006f          	j	80004d04 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004cc8:	00005517          	auipc	a0,0x5
    80004ccc:	82850513          	addi	a0,a0,-2008 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004cd0:	00001097          	auipc	ra,0x1
    80004cd4:	c0c080e7          	jalr	-1012(ra) # 800058dc <_Z11printStringPKc>
    80004cd8:	00000613          	li	a2,0
    80004cdc:	00a00593          	li	a1,10
    80004ce0:	00048513          	mv	a0,s1
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	d90080e7          	jalr	-624(ra) # 80005a74 <_Z8printIntiii>
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	41450513          	addi	a0,a0,1044 # 80009100 <CONSOLE_STATUS+0xf0>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	be8080e7          	jalr	-1048(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cfc:	0014849b          	addiw	s1,s1,1
    80004d00:	0ff4f493          	andi	s1,s1,255
    80004d04:	00c00793          	li	a5,12
    80004d08:	fc97f0e3          	bgeu	a5,s1,80004cc8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004d0c:	00004517          	auipc	a0,0x4
    80004d10:	7ec50513          	addi	a0,a0,2028 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	bc8080e7          	jalr	-1080(ra) # 800058dc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004d1c:	00500313          	li	t1,5
    thread_dispatch();
    80004d20:	ffffc097          	auipc	ra,0xffffc
    80004d24:	604080e7          	jalr	1540(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004d28:	01000513          	li	a0,16
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	be8080e7          	jalr	-1048(ra) # 80004914 <_ZL9fibonaccim>
    80004d34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	7d050513          	addi	a0,a0,2000 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	b9c080e7          	jalr	-1124(ra) # 800058dc <_Z11printStringPKc>
    80004d48:	00000613          	li	a2,0
    80004d4c:	00a00593          	li	a1,10
    80004d50:	0009051b          	sext.w	a0,s2
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	d20080e7          	jalr	-736(ra) # 80005a74 <_Z8printIntiii>
    80004d5c:	00004517          	auipc	a0,0x4
    80004d60:	3a450513          	addi	a0,a0,932 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d64:	00001097          	auipc	ra,0x1
    80004d68:	b78080e7          	jalr	-1160(ra) # 800058dc <_Z11printStringPKc>
    80004d6c:	0400006f          	j	80004dac <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d70:	00004517          	auipc	a0,0x4
    80004d74:	78050513          	addi	a0,a0,1920 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	b64080e7          	jalr	-1180(ra) # 800058dc <_Z11printStringPKc>
    80004d80:	00000613          	li	a2,0
    80004d84:	00a00593          	li	a1,10
    80004d88:	00048513          	mv	a0,s1
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	ce8080e7          	jalr	-792(ra) # 80005a74 <_Z8printIntiii>
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	36c50513          	addi	a0,a0,876 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	b40080e7          	jalr	-1216(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004da4:	0014849b          	addiw	s1,s1,1
    80004da8:	0ff4f493          	andi	s1,s1,255
    80004dac:	00f00793          	li	a5,15
    80004db0:	fc97f0e3          	bgeu	a5,s1,80004d70 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004db4:	00004517          	auipc	a0,0x4
    80004db8:	76450513          	addi	a0,a0,1892 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	b20080e7          	jalr	-1248(ra) # 800058dc <_Z11printStringPKc>
    finishedD = true;
    80004dc4:	00100793          	li	a5,1
    80004dc8:	00007717          	auipc	a4,0x7
    80004dcc:	d4f70da3          	sb	a5,-677(a4) # 8000bb23 <_ZL9finishedD>
    thread_dispatch();
    80004dd0:	ffffc097          	auipc	ra,0xffffc
    80004dd4:	554080e7          	jalr	1364(ra) # 80001324 <thread_dispatch>
}
    80004dd8:	01813083          	ld	ra,24(sp)
    80004ddc:	01013403          	ld	s0,16(sp)
    80004de0:	00813483          	ld	s1,8(sp)
    80004de4:	00013903          	ld	s2,0(sp)
    80004de8:	02010113          	addi	sp,sp,32
    80004dec:	00008067          	ret

0000000080004df0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004df0:	fc010113          	addi	sp,sp,-64
    80004df4:	02113c23          	sd	ra,56(sp)
    80004df8:	02813823          	sd	s0,48(sp)
    80004dfc:	02913423          	sd	s1,40(sp)
    80004e00:	03213023          	sd	s2,32(sp)
    80004e04:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    Riscv::printString("Got here\n");
    80004e08:	00004517          	auipc	a0,0x4
    80004e0c:	72050513          	addi	a0,a0,1824 # 80009528 <_ZZN5Riscv12printIntegerEmE6digits+0x1b8>
    80004e10:	fffff097          	auipc	ra,0xfffff
    80004e14:	a5c080e7          	jalr	-1444(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    threads[0] = new WorkerA();
    80004e18:	01000513          	li	a0,16
    80004e1c:	ffffe097          	auipc	ra,0xffffe
    80004e20:	618080e7          	jalr	1560(ra) # 80003434 <_Znwm>
    80004e24:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004e28:	ffffe097          	auipc	ra,0xffffe
    80004e2c:	7dc080e7          	jalr	2012(ra) # 80003604 <_ZN6ThreadC1Ev>
    80004e30:	00007797          	auipc	a5,0x7
    80004e34:	b2078793          	addi	a5,a5,-1248 # 8000b950 <_ZTV7WorkerA+0x10>
    80004e38:	00f4b023          	sd	a5,0(s1)
    80004e3c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004e40:	00004517          	auipc	a0,0x4
    80004e44:	6f850513          	addi	a0,a0,1784 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	a94080e7          	jalr	-1388(ra) # 800058dc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004e50:	01000513          	li	a0,16
    80004e54:	ffffe097          	auipc	ra,0xffffe
    80004e58:	5e0080e7          	jalr	1504(ra) # 80003434 <_Znwm>
    80004e5c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004e60:	ffffe097          	auipc	ra,0xffffe
    80004e64:	7a4080e7          	jalr	1956(ra) # 80003604 <_ZN6ThreadC1Ev>
    80004e68:	00007797          	auipc	a5,0x7
    80004e6c:	b1078793          	addi	a5,a5,-1264 # 8000b978 <_ZTV7WorkerB+0x10>
    80004e70:	00f4b023          	sd	a5,0(s1)
    80004e74:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004e78:	00004517          	auipc	a0,0x4
    80004e7c:	6d850513          	addi	a0,a0,1752 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	a5c080e7          	jalr	-1444(ra) # 800058dc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004e88:	01000513          	li	a0,16
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	5a8080e7          	jalr	1448(ra) # 80003434 <_Znwm>
    80004e94:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004e98:	ffffe097          	auipc	ra,0xffffe
    80004e9c:	76c080e7          	jalr	1900(ra) # 80003604 <_ZN6ThreadC1Ev>
    80004ea0:	00007797          	auipc	a5,0x7
    80004ea4:	b0078793          	addi	a5,a5,-1280 # 8000b9a0 <_ZTV7WorkerC+0x10>
    80004ea8:	00f4b023          	sd	a5,0(s1)
    80004eac:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	6b850513          	addi	a0,a0,1720 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	a24080e7          	jalr	-1500(ra) # 800058dc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004ec0:	01000513          	li	a0,16
    80004ec4:	ffffe097          	auipc	ra,0xffffe
    80004ec8:	570080e7          	jalr	1392(ra) # 80003434 <_Znwm>
    80004ecc:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004ed0:	ffffe097          	auipc	ra,0xffffe
    80004ed4:	734080e7          	jalr	1844(ra) # 80003604 <_ZN6ThreadC1Ev>
    80004ed8:	00007797          	auipc	a5,0x7
    80004edc:	af078793          	addi	a5,a5,-1296 # 8000b9c8 <_ZTV7WorkerD+0x10>
    80004ee0:	00f4b023          	sd	a5,0(s1)
    80004ee4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	69850513          	addi	a0,a0,1688 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	9ec080e7          	jalr	-1556(ra) # 800058dc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004ef8:	00000493          	li	s1,0
    80004efc:	00300793          	li	a5,3
    80004f00:	0297ca63          	blt	a5,s1,80004f34 <_Z20Threads_CPP_API_testv+0x144>
        Riscv::printString("Starting...\n");
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	69450513          	addi	a0,a0,1684 # 80009598 <_ZZN5Riscv12printIntegerEmE6digits+0x228>
    80004f0c:	fffff097          	auipc	ra,0xfffff
    80004f10:	960080e7          	jalr	-1696(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
        threads[i]->start();
    80004f14:	00349793          	slli	a5,s1,0x3
    80004f18:	fe040713          	addi	a4,s0,-32
    80004f1c:	00f707b3          	add	a5,a4,a5
    80004f20:	fe07b503          	ld	a0,-32(a5)
    80004f24:	ffffe097          	auipc	ra,0xffffe
    80004f28:	5e0080e7          	jalr	1504(ra) # 80003504 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004f2c:	0014849b          	addiw	s1,s1,1
    80004f30:	fcdff06f          	j	80004efc <_Z20Threads_CPP_API_testv+0x10c>
    }

    Riscv::printString("Thread started\n");
    80004f34:	00004517          	auipc	a0,0x4
    80004f38:	67450513          	addi	a0,a0,1652 # 800095a8 <_ZZN5Riscv12printIntegerEmE6digits+0x238>
    80004f3c:	fffff097          	auipc	ra,0xfffff
    80004f40:	930080e7          	jalr	-1744(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    80004f44:	00c0006f          	j	80004f50 <_Z20Threads_CPP_API_testv+0x160>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004f48:	ffffe097          	auipc	ra,0xffffe
    80004f4c:	5f4080e7          	jalr	1524(ra) # 8000353c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f50:	00007797          	auipc	a5,0x7
    80004f54:	bd07c783          	lbu	a5,-1072(a5) # 8000bb20 <_ZL9finishedA>
    80004f58:	fe0788e3          	beqz	a5,80004f48 <_Z20Threads_CPP_API_testv+0x158>
    80004f5c:	00007797          	auipc	a5,0x7
    80004f60:	bc57c783          	lbu	a5,-1083(a5) # 8000bb21 <_ZL9finishedB>
    80004f64:	fe0782e3          	beqz	a5,80004f48 <_Z20Threads_CPP_API_testv+0x158>
    80004f68:	00007797          	auipc	a5,0x7
    80004f6c:	bba7c783          	lbu	a5,-1094(a5) # 8000bb22 <_ZL9finishedC>
    80004f70:	fc078ce3          	beqz	a5,80004f48 <_Z20Threads_CPP_API_testv+0x158>
    80004f74:	00007797          	auipc	a5,0x7
    80004f78:	baf7c783          	lbu	a5,-1105(a5) # 8000bb23 <_ZL9finishedD>
    80004f7c:	fc0786e3          	beqz	a5,80004f48 <_Z20Threads_CPP_API_testv+0x158>
        //Riscv::printString("main\n");
    }

    for (auto thread: threads) { delete thread; }
    80004f80:	fc040493          	addi	s1,s0,-64
    80004f84:	0080006f          	j	80004f8c <_Z20Threads_CPP_API_testv+0x19c>
    80004f88:	00848493          	addi	s1,s1,8
    80004f8c:	fe040793          	addi	a5,s0,-32
    80004f90:	08f48663          	beq	s1,a5,8000501c <_Z20Threads_CPP_API_testv+0x22c>
    80004f94:	0004b503          	ld	a0,0(s1)
    80004f98:	fe0508e3          	beqz	a0,80004f88 <_Z20Threads_CPP_API_testv+0x198>
    80004f9c:	00053783          	ld	a5,0(a0)
    80004fa0:	0087b783          	ld	a5,8(a5)
    80004fa4:	000780e7          	jalr	a5
    80004fa8:	fe1ff06f          	j	80004f88 <_Z20Threads_CPP_API_testv+0x198>
    80004fac:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004fb0:	00048513          	mv	a0,s1
    80004fb4:	ffffe097          	auipc	ra,0xffffe
    80004fb8:	4a8080e7          	jalr	1192(ra) # 8000345c <_ZdlPv>
    80004fbc:	00090513          	mv	a0,s2
    80004fc0:	00008097          	auipc	ra,0x8
    80004fc4:	c48080e7          	jalr	-952(ra) # 8000cc08 <_Unwind_Resume>
    80004fc8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004fcc:	00048513          	mv	a0,s1
    80004fd0:	ffffe097          	auipc	ra,0xffffe
    80004fd4:	48c080e7          	jalr	1164(ra) # 8000345c <_ZdlPv>
    80004fd8:	00090513          	mv	a0,s2
    80004fdc:	00008097          	auipc	ra,0x8
    80004fe0:	c2c080e7          	jalr	-980(ra) # 8000cc08 <_Unwind_Resume>
    80004fe4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004fe8:	00048513          	mv	a0,s1
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	470080e7          	jalr	1136(ra) # 8000345c <_ZdlPv>
    80004ff4:	00090513          	mv	a0,s2
    80004ff8:	00008097          	auipc	ra,0x8
    80004ffc:	c10080e7          	jalr	-1008(ra) # 8000cc08 <_Unwind_Resume>
    80005000:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005004:	00048513          	mv	a0,s1
    80005008:	ffffe097          	auipc	ra,0xffffe
    8000500c:	454080e7          	jalr	1108(ra) # 8000345c <_ZdlPv>
    80005010:	00090513          	mv	a0,s2
    80005014:	00008097          	auipc	ra,0x8
    80005018:	bf4080e7          	jalr	-1036(ra) # 8000cc08 <_Unwind_Resume>
    8000501c:	03813083          	ld	ra,56(sp)
    80005020:	03013403          	ld	s0,48(sp)
    80005024:	02813483          	ld	s1,40(sp)
    80005028:	02013903          	ld	s2,32(sp)
    8000502c:	04010113          	addi	sp,sp,64
    80005030:	00008067          	ret

0000000080005034 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00113423          	sd	ra,8(sp)
    8000503c:	00813023          	sd	s0,0(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	00007797          	auipc	a5,0x7
    80005048:	90c78793          	addi	a5,a5,-1780 # 8000b950 <_ZTV7WorkerA+0x10>
    8000504c:	00f53023          	sd	a5,0(a0)
    80005050:	ffffe097          	auipc	ra,0xffffe
    80005054:	328080e7          	jalr	808(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <_ZN7WorkerAD0Ev>:
    80005068:	fe010113          	addi	sp,sp,-32
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00913423          	sd	s1,8(sp)
    80005078:	02010413          	addi	s0,sp,32
    8000507c:	00050493          	mv	s1,a0
    80005080:	00007797          	auipc	a5,0x7
    80005084:	8d078793          	addi	a5,a5,-1840 # 8000b950 <_ZTV7WorkerA+0x10>
    80005088:	00f53023          	sd	a5,0(a0)
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	2ec080e7          	jalr	748(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005094:	00048513          	mv	a0,s1
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	3c4080e7          	jalr	964(ra) # 8000345c <_ZdlPv>
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800050b4:	ff010113          	addi	sp,sp,-16
    800050b8:	00113423          	sd	ra,8(sp)
    800050bc:	00813023          	sd	s0,0(sp)
    800050c0:	01010413          	addi	s0,sp,16
    800050c4:	00007797          	auipc	a5,0x7
    800050c8:	8b478793          	addi	a5,a5,-1868 # 8000b978 <_ZTV7WorkerB+0x10>
    800050cc:	00f53023          	sd	a5,0(a0)
    800050d0:	ffffe097          	auipc	ra,0xffffe
    800050d4:	2a8080e7          	jalr	680(ra) # 80003378 <_ZN6ThreadD1Ev>
    800050d8:	00813083          	ld	ra,8(sp)
    800050dc:	00013403          	ld	s0,0(sp)
    800050e0:	01010113          	addi	sp,sp,16
    800050e4:	00008067          	ret

00000000800050e8 <_ZN7WorkerBD0Ev>:
    800050e8:	fe010113          	addi	sp,sp,-32
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	00813823          	sd	s0,16(sp)
    800050f4:	00913423          	sd	s1,8(sp)
    800050f8:	02010413          	addi	s0,sp,32
    800050fc:	00050493          	mv	s1,a0
    80005100:	00007797          	auipc	a5,0x7
    80005104:	87878793          	addi	a5,a5,-1928 # 8000b978 <_ZTV7WorkerB+0x10>
    80005108:	00f53023          	sd	a5,0(a0)
    8000510c:	ffffe097          	auipc	ra,0xffffe
    80005110:	26c080e7          	jalr	620(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005114:	00048513          	mv	a0,s1
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	344080e7          	jalr	836(ra) # 8000345c <_ZdlPv>
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	02010113          	addi	sp,sp,32
    80005130:	00008067          	ret

0000000080005134 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005134:	ff010113          	addi	sp,sp,-16
    80005138:	00113423          	sd	ra,8(sp)
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	01010413          	addi	s0,sp,16
    80005144:	00007797          	auipc	a5,0x7
    80005148:	85c78793          	addi	a5,a5,-1956 # 8000b9a0 <_ZTV7WorkerC+0x10>
    8000514c:	00f53023          	sd	a5,0(a0)
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	228080e7          	jalr	552(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005158:	00813083          	ld	ra,8(sp)
    8000515c:	00013403          	ld	s0,0(sp)
    80005160:	01010113          	addi	sp,sp,16
    80005164:	00008067          	ret

0000000080005168 <_ZN7WorkerCD0Ev>:
    80005168:	fe010113          	addi	sp,sp,-32
    8000516c:	00113c23          	sd	ra,24(sp)
    80005170:	00813823          	sd	s0,16(sp)
    80005174:	00913423          	sd	s1,8(sp)
    80005178:	02010413          	addi	s0,sp,32
    8000517c:	00050493          	mv	s1,a0
    80005180:	00007797          	auipc	a5,0x7
    80005184:	82078793          	addi	a5,a5,-2016 # 8000b9a0 <_ZTV7WorkerC+0x10>
    80005188:	00f53023          	sd	a5,0(a0)
    8000518c:	ffffe097          	auipc	ra,0xffffe
    80005190:	1ec080e7          	jalr	492(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005194:	00048513          	mv	a0,s1
    80005198:	ffffe097          	auipc	ra,0xffffe
    8000519c:	2c4080e7          	jalr	708(ra) # 8000345c <_ZdlPv>
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	02010113          	addi	sp,sp,32
    800051b0:	00008067          	ret

00000000800051b4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
    800051c4:	00007797          	auipc	a5,0x7
    800051c8:	80478793          	addi	a5,a5,-2044 # 8000b9c8 <_ZTV7WorkerD+0x10>
    800051cc:	00f53023          	sd	a5,0(a0)
    800051d0:	ffffe097          	auipc	ra,0xffffe
    800051d4:	1a8080e7          	jalr	424(ra) # 80003378 <_ZN6ThreadD1Ev>
    800051d8:	00813083          	ld	ra,8(sp)
    800051dc:	00013403          	ld	s0,0(sp)
    800051e0:	01010113          	addi	sp,sp,16
    800051e4:	00008067          	ret

00000000800051e8 <_ZN7WorkerDD0Ev>:
    800051e8:	fe010113          	addi	sp,sp,-32
    800051ec:	00113c23          	sd	ra,24(sp)
    800051f0:	00813823          	sd	s0,16(sp)
    800051f4:	00913423          	sd	s1,8(sp)
    800051f8:	02010413          	addi	s0,sp,32
    800051fc:	00050493          	mv	s1,a0
    80005200:	00006797          	auipc	a5,0x6
    80005204:	7c878793          	addi	a5,a5,1992 # 8000b9c8 <_ZTV7WorkerD+0x10>
    80005208:	00f53023          	sd	a5,0(a0)
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	16c080e7          	jalr	364(ra) # 80003378 <_ZN6ThreadD1Ev>
    80005214:	00048513          	mv	a0,s1
    80005218:	ffffe097          	auipc	ra,0xffffe
    8000521c:	244080e7          	jalr	580(ra) # 8000345c <_ZdlPv>
    80005220:	01813083          	ld	ra,24(sp)
    80005224:	01013403          	ld	s0,16(sp)
    80005228:	00813483          	ld	s1,8(sp)
    8000522c:	02010113          	addi	sp,sp,32
    80005230:	00008067          	ret

0000000080005234 <_ZN7WorkerA3runEv>:
    void run() override {
    80005234:	ff010113          	addi	sp,sp,-16
    80005238:	00113423          	sd	ra,8(sp)
    8000523c:	00813023          	sd	s0,0(sp)
    80005240:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005244:	00000593          	li	a1,0
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	740080e7          	jalr	1856(ra) # 80004988 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005250:	00813083          	ld	ra,8(sp)
    80005254:	00013403          	ld	s0,0(sp)
    80005258:	01010113          	addi	sp,sp,16
    8000525c:	00008067          	ret

0000000080005260 <_ZN7WorkerB3runEv>:
    void run() override {
    80005260:	ff010113          	addi	sp,sp,-16
    80005264:	00113423          	sd	ra,8(sp)
    80005268:	00813023          	sd	s0,0(sp)
    8000526c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005270:	00000593          	li	a1,0
    80005274:	fffff097          	auipc	ra,0xfffff
    80005278:	7e0080e7          	jalr	2016(ra) # 80004a54 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000527c:	00813083          	ld	ra,8(sp)
    80005280:	00013403          	ld	s0,0(sp)
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00008067          	ret

000000008000528c <_ZN7WorkerC3runEv>:
    void run() override {
    8000528c:	ff010113          	addi	sp,sp,-16
    80005290:	00113423          	sd	ra,8(sp)
    80005294:	00813023          	sd	s0,0(sp)
    80005298:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000529c:	00000593          	li	a1,0
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	888080e7          	jalr	-1912(ra) # 80004b28 <_ZN7WorkerC11workerBodyCEPv>
    }
    800052a8:	00813083          	ld	ra,8(sp)
    800052ac:	00013403          	ld	s0,0(sp)
    800052b0:	01010113          	addi	sp,sp,16
    800052b4:	00008067          	ret

00000000800052b8 <_ZN7WorkerD3runEv>:

    void run() override {
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00113423          	sd	ra,8(sp)
    800052c0:	00813023          	sd	s0,0(sp)
    800052c4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800052c8:	00000593          	li	a1,0
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	9dc080e7          	jalr	-1572(ra) # 80004ca8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800052d4:	00813083          	ld	ra,8(sp)
    800052d8:	00013403          	ld	s0,0(sp)
    800052dc:	01010113          	addi	sp,sp,16
    800052e0:	00008067          	ret

00000000800052e4 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	01213023          	sd	s2,0(sp)
    800052f8:	02010413          	addi	s0,sp,32
    800052fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005300:	00100793          	li	a5,1
    80005304:	02a7f863          	bgeu	a5,a0,80005334 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005308:	00a00793          	li	a5,10
    8000530c:	02f577b3          	remu	a5,a0,a5
    80005310:	02078e63          	beqz	a5,8000534c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005314:	fff48513          	addi	a0,s1,-1
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	fcc080e7          	jalr	-52(ra) # 800052e4 <_ZL9fibonaccim>
    80005320:	00050913          	mv	s2,a0
    80005324:	ffe48513          	addi	a0,s1,-2
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	fbc080e7          	jalr	-68(ra) # 800052e4 <_ZL9fibonaccim>
    80005330:	00a90533          	add	a0,s2,a0
}
    80005334:	01813083          	ld	ra,24(sp)
    80005338:	01013403          	ld	s0,16(sp)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	00013903          	ld	s2,0(sp)
    80005344:	02010113          	addi	sp,sp,32
    80005348:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000534c:	ffffc097          	auipc	ra,0xffffc
    80005350:	fd8080e7          	jalr	-40(ra) # 80001324 <thread_dispatch>
    80005354:	fc1ff06f          	j	80005314 <_ZL9fibonaccim+0x30>

0000000080005358 <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    thread_dispatch();
    finishedB = true;
}

void workerBodyC(void* arg) {
    80005358:	fe010113          	addi	sp,sp,-32
    8000535c:	00113c23          	sd	ra,24(sp)
    80005360:	00813823          	sd	s0,16(sp)
    80005364:	00913423          	sd	s1,8(sp)
    80005368:	01213023          	sd	s2,0(sp)
    8000536c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005370:	00000493          	li	s1,0
    80005374:	0400006f          	j	800053b4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005378:	00004517          	auipc	a0,0x4
    8000537c:	14850513          	addi	a0,a0,328 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80005380:	00000097          	auipc	ra,0x0
    80005384:	55c080e7          	jalr	1372(ra) # 800058dc <_Z11printStringPKc>
    80005388:	00000613          	li	a2,0
    8000538c:	00a00593          	li	a1,10
    80005390:	00048513          	mv	a0,s1
    80005394:	00000097          	auipc	ra,0x0
    80005398:	6e0080e7          	jalr	1760(ra) # 80005a74 <_Z8printIntiii>
    8000539c:	00004517          	auipc	a0,0x4
    800053a0:	d6450513          	addi	a0,a0,-668 # 80009100 <CONSOLE_STATUS+0xf0>
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	538080e7          	jalr	1336(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053ac:	0014849b          	addiw	s1,s1,1
    800053b0:	0ff4f493          	andi	s1,s1,255
    800053b4:	00200793          	li	a5,2
    800053b8:	fc97f0e3          	bgeu	a5,s1,80005378 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800053bc:	00004517          	auipc	a0,0x4
    800053c0:	10c50513          	addi	a0,a0,268 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	518080e7          	jalr	1304(ra) # 800058dc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053cc:	00700313          	li	t1,7
    thread_dispatch();
    800053d0:	ffffc097          	auipc	ra,0xffffc
    800053d4:	f54080e7          	jalr	-172(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    800053d8:	00004517          	auipc	a0,0x4
    800053dc:	1e050513          	addi	a0,a0,480 # 800095b8 <_ZZN5Riscv12printIntegerEmE6digits+0x248>
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	4fc080e7          	jalr	1276(ra) # 800058dc <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800053e8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800053ec:	00004517          	auipc	a0,0x4
    800053f0:	0ec50513          	addi	a0,a0,236 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	4e8080e7          	jalr	1256(ra) # 800058dc <_Z11printStringPKc>
    800053fc:	00000613          	li	a2,0
    80005400:	00a00593          	li	a1,10
    80005404:	0009051b          	sext.w	a0,s2
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	66c080e7          	jalr	1644(ra) # 80005a74 <_Z8printIntiii>
    80005410:	00004517          	auipc	a0,0x4
    80005414:	cf050513          	addi	a0,a0,-784 # 80009100 <CONSOLE_STATUS+0xf0>
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	4c4080e7          	jalr	1220(ra) # 800058dc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005420:	00c00513          	li	a0,12
    80005424:	00000097          	auipc	ra,0x0
    80005428:	ec0080e7          	jalr	-320(ra) # 800052e4 <_ZL9fibonaccim>
    8000542c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005430:	00004517          	auipc	a0,0x4
    80005434:	0b050513          	addi	a0,a0,176 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	4a4080e7          	jalr	1188(ra) # 800058dc <_Z11printStringPKc>
    80005440:	00000613          	li	a2,0
    80005444:	00a00593          	li	a1,10
    80005448:	0009051b          	sext.w	a0,s2
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	628080e7          	jalr	1576(ra) # 80005a74 <_Z8printIntiii>
    80005454:	00004517          	auipc	a0,0x4
    80005458:	cac50513          	addi	a0,a0,-852 # 80009100 <CONSOLE_STATUS+0xf0>
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	480080e7          	jalr	1152(ra) # 800058dc <_Z11printStringPKc>
    80005464:	0400006f          	j	800054a4 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005468:	00004517          	auipc	a0,0x4
    8000546c:	05850513          	addi	a0,a0,88 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80005470:	00000097          	auipc	ra,0x0
    80005474:	46c080e7          	jalr	1132(ra) # 800058dc <_Z11printStringPKc>
    80005478:	00000613          	li	a2,0
    8000547c:	00a00593          	li	a1,10
    80005480:	00048513          	mv	a0,s1
    80005484:	00000097          	auipc	ra,0x0
    80005488:	5f0080e7          	jalr	1520(ra) # 80005a74 <_Z8printIntiii>
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	c7450513          	addi	a0,a0,-908 # 80009100 <CONSOLE_STATUS+0xf0>
    80005494:	00000097          	auipc	ra,0x0
    80005498:	448080e7          	jalr	1096(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000549c:	0014849b          	addiw	s1,s1,1
    800054a0:	0ff4f493          	andi	s1,s1,255
    800054a4:	00500793          	li	a5,5
    800054a8:	fc97f0e3          	bgeu	a5,s1,80005468 <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    800054ac:	00004517          	auipc	a0,0x4
    800054b0:	11c50513          	addi	a0,a0,284 # 800095c8 <_ZZN5Riscv12printIntegerEmE6digits+0x258>
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	428080e7          	jalr	1064(ra) # 800058dc <_Z11printStringPKc>
    thread_dispatch();
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	e68080e7          	jalr	-408(ra) # 80001324 <thread_dispatch>
    finishedC = true;
}
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	00013903          	ld	s2,0(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	01213023          	sd	s2,0(sp)
    800054f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800054f4:	00a00493          	li	s1,10
    800054f8:	0400006f          	j	80005538 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054fc:	00004517          	auipc	a0,0x4
    80005500:	ff450513          	addi	a0,a0,-12 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005504:	00000097          	auipc	ra,0x0
    80005508:	3d8080e7          	jalr	984(ra) # 800058dc <_Z11printStringPKc>
    8000550c:	00000613          	li	a2,0
    80005510:	00a00593          	li	a1,10
    80005514:	00048513          	mv	a0,s1
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	55c080e7          	jalr	1372(ra) # 80005a74 <_Z8printIntiii>
    80005520:	00004517          	auipc	a0,0x4
    80005524:	be050513          	addi	a0,a0,-1056 # 80009100 <CONSOLE_STATUS+0xf0>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	3b4080e7          	jalr	948(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005530:	0014849b          	addiw	s1,s1,1
    80005534:	0ff4f493          	andi	s1,s1,255
    80005538:	00c00793          	li	a5,12
    8000553c:	fc97f0e3          	bgeu	a5,s1,800054fc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005540:	00004517          	auipc	a0,0x4
    80005544:	fb850513          	addi	a0,a0,-72 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	394080e7          	jalr	916(ra) # 800058dc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005550:	00500313          	li	t1,5
    thread_dispatch();
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	dd0080e7          	jalr	-560(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	07c50513          	addi	a0,a0,124 # 800095d8 <_ZZN5Riscv12printIntegerEmE6digits+0x268>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	378080e7          	jalr	888(ra) # 800058dc <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    8000556c:	01000513          	li	a0,16
    80005570:	00000097          	auipc	ra,0x0
    80005574:	d74080e7          	jalr	-652(ra) # 800052e4 <_ZL9fibonaccim>
    80005578:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000557c:	00004517          	auipc	a0,0x4
    80005580:	f8c50513          	addi	a0,a0,-116 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80005584:	00000097          	auipc	ra,0x0
    80005588:	358080e7          	jalr	856(ra) # 800058dc <_Z11printStringPKc>
    8000558c:	00000613          	li	a2,0
    80005590:	00a00593          	li	a1,10
    80005594:	0009051b          	sext.w	a0,s2
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	4dc080e7          	jalr	1244(ra) # 80005a74 <_Z8printIntiii>
    800055a0:	00004517          	auipc	a0,0x4
    800055a4:	b6050513          	addi	a0,a0,-1184 # 80009100 <CONSOLE_STATUS+0xf0>
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	334080e7          	jalr	820(ra) # 800058dc <_Z11printStringPKc>
    800055b0:	0400006f          	j	800055f0 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055b4:	00004517          	auipc	a0,0x4
    800055b8:	f3c50513          	addi	a0,a0,-196 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	320080e7          	jalr	800(ra) # 800058dc <_Z11printStringPKc>
    800055c4:	00000613          	li	a2,0
    800055c8:	00a00593          	li	a1,10
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	4a4080e7          	jalr	1188(ra) # 80005a74 <_Z8printIntiii>
    800055d8:	00004517          	auipc	a0,0x4
    800055dc:	b2850513          	addi	a0,a0,-1240 # 80009100 <CONSOLE_STATUS+0xf0>
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	2fc080e7          	jalr	764(ra) # 800058dc <_Z11printStringPKc>
    for (; i < 16; i++) {
    800055e8:	0014849b          	addiw	s1,s1,1
    800055ec:	0ff4f493          	andi	s1,s1,255
    800055f0:	00f00793          	li	a5,15
    800055f4:	fc97f0e3          	bgeu	a5,s1,800055b4 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    800055f8:	00004517          	auipc	a0,0x4
    800055fc:	f2050513          	addi	a0,a0,-224 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80005600:	00000097          	auipc	ra,0x0
    80005604:	2dc080e7          	jalr	732(ra) # 800058dc <_Z11printStringPKc>
    thread_dispatch();
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	d1c080e7          	jalr	-740(ra) # 80001324 <thread_dispatch>
    finishedD = true;
}
    80005610:	01813083          	ld	ra,24(sp)
    80005614:	01013403          	ld	s0,16(sp)
    80005618:	00813483          	ld	s1,8(sp)
    8000561c:	00013903          	ld	s2,0(sp)
    80005620:	02010113          	addi	sp,sp,32
    80005624:	00008067          	ret

0000000080005628 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    80005628:	fe010113          	addi	sp,sp,-32
    8000562c:	00113c23          	sd	ra,24(sp)
    80005630:	00813823          	sd	s0,16(sp)
    80005634:	00913423          	sd	s1,8(sp)
    80005638:	01213023          	sd	s2,0(sp)
    8000563c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005640:	00000913          	li	s2,0
    80005644:	0380006f          	j	8000567c <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	cdc080e7          	jalr	-804(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005650:	00148493          	addi	s1,s1,1
    80005654:	000027b7          	lui	a5,0x2
    80005658:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000565c:	0097ee63          	bltu	a5,s1,80005678 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005660:	00000713          	li	a4,0
    80005664:	000077b7          	lui	a5,0x7
    80005668:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000566c:	fce7eee3          	bltu	a5,a4,80005648 <_Z11workerBodyAPv+0x20>
    80005670:	00170713          	addi	a4,a4,1
    80005674:	ff1ff06f          	j	80005664 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005678:	00190913          	addi	s2,s2,1
    8000567c:	00900793          	li	a5,9
    80005680:	0527e063          	bltu	a5,s2,800056c0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005684:	00004517          	auipc	a0,0x4
    80005688:	e0c50513          	addi	a0,a0,-500 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	250080e7          	jalr	592(ra) # 800058dc <_Z11printStringPKc>
    80005694:	00000613          	li	a2,0
    80005698:	00a00593          	li	a1,10
    8000569c:	0009051b          	sext.w	a0,s2
    800056a0:	00000097          	auipc	ra,0x0
    800056a4:	3d4080e7          	jalr	980(ra) # 80005a74 <_Z8printIntiii>
    800056a8:	00004517          	auipc	a0,0x4
    800056ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	22c080e7          	jalr	556(ra) # 800058dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056b8:	00000493          	li	s1,0
    800056bc:	f99ff06f          	j	80005654 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    800056c0:	00004517          	auipc	a0,0x4
    800056c4:	dd850513          	addi	a0,a0,-552 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800056c8:	ffffe097          	auipc	ra,0xffffe
    800056cc:	1a4080e7          	jalr	420(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
}
    800056d0:	01813083          	ld	ra,24(sp)
    800056d4:	01013403          	ld	s0,16(sp)
    800056d8:	00813483          	ld	s1,8(sp)
    800056dc:	00013903          	ld	s2,0(sp)
    800056e0:	02010113          	addi	sp,sp,32
    800056e4:	00008067          	ret

00000000800056e8 <_Z11workerBodyBPv>:
{
    800056e8:	fe010113          	addi	sp,sp,-32
    800056ec:	00113c23          	sd	ra,24(sp)
    800056f0:	00813823          	sd	s0,16(sp)
    800056f4:	00913423          	sd	s1,8(sp)
    800056f8:	01213023          	sd	s2,0(sp)
    800056fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005700:	00000913          	li	s2,0
    80005704:	0380006f          	j	8000573c <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80005708:	ffffc097          	auipc	ra,0xffffc
    8000570c:	c1c080e7          	jalr	-996(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005710:	00148493          	addi	s1,s1,1
    80005714:	000027b7          	lui	a5,0x2
    80005718:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000571c:	0097ee63          	bltu	a5,s1,80005738 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005720:	00000713          	li	a4,0
    80005724:	000077b7          	lui	a5,0x7
    80005728:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000572c:	fce7eee3          	bltu	a5,a4,80005708 <_Z11workerBodyBPv+0x20>
    80005730:	00170713          	addi	a4,a4,1
    80005734:	ff1ff06f          	j	80005724 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005738:	00190913          	addi	s2,s2,1
    8000573c:	00f00793          	li	a5,15
    80005740:	0527e063          	bltu	a5,s2,80005780 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005744:	00004517          	auipc	a0,0x4
    80005748:	d6450513          	addi	a0,a0,-668 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    8000574c:	00000097          	auipc	ra,0x0
    80005750:	190080e7          	jalr	400(ra) # 800058dc <_Z11printStringPKc>
    80005754:	00000613          	li	a2,0
    80005758:	00a00593          	li	a1,10
    8000575c:	0009051b          	sext.w	a0,s2
    80005760:	00000097          	auipc	ra,0x0
    80005764:	314080e7          	jalr	788(ra) # 80005a74 <_Z8printIntiii>
    80005768:	00004517          	auipc	a0,0x4
    8000576c:	99850513          	addi	a0,a0,-1640 # 80009100 <CONSOLE_STATUS+0xf0>
    80005770:	00000097          	auipc	ra,0x0
    80005774:	16c080e7          	jalr	364(ra) # 800058dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005778:	00000493          	li	s1,0
    8000577c:	f99ff06f          	j	80005714 <_Z11workerBodyBPv+0x2c>
    Riscv::printString("B finished!\n");
    80005780:	00004517          	auipc	a0,0x4
    80005784:	d3050513          	addi	a0,a0,-720 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80005788:	ffffe097          	auipc	ra,0xffffe
    8000578c:	0e4080e7          	jalr	228(ra) # 8000386c <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	b94080e7          	jalr	-1132(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    80005798:	00100793          	li	a5,1
    8000579c:	00006717          	auipc	a4,0x6
    800057a0:	38f70423          	sb	a5,904(a4) # 8000bb24 <_ZL9finishedB>
}
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	00013903          	ld	s2,0(sp)
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00008067          	ret

00000000800057bc <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    800057bc:	fc010113          	addi	sp,sp,-64
    800057c0:	02113c23          	sd	ra,56(sp)
    800057c4:	02813823          	sd	s0,48(sp)
    800057c8:	02913423          	sd	s1,40(sp)
    800057cc:	03213023          	sd	s2,32(sp)
    800057d0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800057d4:	00000613          	li	a2,0
    800057d8:	00000597          	auipc	a1,0x0
    800057dc:	e5058593          	addi	a1,a1,-432 # 80005628 <_Z11workerBodyAPv>
    800057e0:	fc040513          	addi	a0,s0,-64
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	ac0080e7          	jalr	-1344(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	d4c50513          	addi	a0,a0,-692 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	0e8080e7          	jalr	232(ra) # 800058dc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800057fc:	00000613          	li	a2,0
    80005800:	00000597          	auipc	a1,0x0
    80005804:	ee858593          	addi	a1,a1,-280 # 800056e8 <_Z11workerBodyBPv>
    80005808:	fc840513          	addi	a0,s0,-56
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	a98080e7          	jalr	-1384(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005814:	00004517          	auipc	a0,0x4
    80005818:	d3c50513          	addi	a0,a0,-708 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	0c0080e7          	jalr	192(ra) # 800058dc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005824:	00000613          	li	a2,0
    80005828:	00000597          	auipc	a1,0x0
    8000582c:	b3058593          	addi	a1,a1,-1232 # 80005358 <_Z11workerBodyCPv>
    80005830:	fd040513          	addi	a0,s0,-48
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	a70080e7          	jalr	-1424(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    8000583c:	00004517          	auipc	a0,0x4
    80005840:	d2c50513          	addi	a0,a0,-724 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005844:	00000097          	auipc	ra,0x0
    80005848:	098080e7          	jalr	152(ra) # 800058dc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000584c:	00000613          	li	a2,0
    80005850:	00000597          	auipc	a1,0x0
    80005854:	c8c58593          	addi	a1,a1,-884 # 800054dc <_Z11workerBodyDPv>
    80005858:	fd840513          	addi	a0,s0,-40
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	a48080e7          	jalr	-1464(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005864:	00004517          	auipc	a0,0x4
    80005868:	d1c50513          	addi	a0,a0,-740 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	070080e7          	jalr	112(ra) # 800058dc <_Z11printStringPKc>

    while (!(finishedB)) {
    80005874:	00006797          	auipc	a5,0x6
    80005878:	2b07c783          	lbu	a5,688(a5) # 8000bb24 <_ZL9finishedB>
    8000587c:	00079863          	bnez	a5,8000588c <_Z18Threads_C_API_testv+0xd0>
        //printString("Main thread\n");
        thread_dispatch();
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	aa4080e7          	jalr	-1372(ra) # 80001324 <thread_dispatch>
    80005888:	fedff06f          	j	80005874 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) {
    8000588c:	fc040493          	addi	s1,s0,-64
    80005890:	0080006f          	j	80005898 <_Z18Threads_C_API_testv+0xdc>
    80005894:	00848493          	addi	s1,s1,8
    80005898:	fe040793          	addi	a5,s0,-32
    8000589c:	02f48463          	beq	s1,a5,800058c4 <_Z18Threads_C_API_testv+0x108>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800058a0:	0004b903          	ld	s2,0(s1)
    800058a4:	fe0908e3          	beqz	s2,80005894 <_Z18Threads_C_API_testv+0xd8>
    800058a8:	00090513          	mv	a0,s2
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	008080e7          	jalr	8(ra) # 800028b4 <_ZN3PCBD1Ev>
    800058b4:	00090513          	mv	a0,s2
    800058b8:	ffffd097          	auipc	ra,0xffffd
    800058bc:	fd4080e7          	jalr	-44(ra) # 8000288c <_ZN3PCBdlEPv>
    800058c0:	fd5ff06f          	j	80005894 <_Z18Threads_C_API_testv+0xd8>
    }
}
    800058c4:	03813083          	ld	ra,56(sp)
    800058c8:	03013403          	ld	s0,48(sp)
    800058cc:	02813483          	ld	s1,40(sp)
    800058d0:	02013903          	ld	s2,32(sp)
    800058d4:	04010113          	addi	sp,sp,64
    800058d8:	00008067          	ret

00000000800058dc <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800058dc:	fe010113          	addi	sp,sp,-32
    800058e0:	00113c23          	sd	ra,24(sp)
    800058e4:	00813823          	sd	s0,16(sp)
    800058e8:	00913423          	sd	s1,8(sp)
    800058ec:	02010413          	addi	s0,sp,32
    800058f0:	00050493          	mv	s1,a0
    LOCK();
    800058f4:	00100613          	li	a2,1
    800058f8:	00000593          	li	a1,0
    800058fc:	00006517          	auipc	a0,0x6
    80005900:	22c50513          	addi	a0,a0,556 # 8000bb28 <lockPrint>
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	904080e7          	jalr	-1788(ra) # 80001208 <copy_and_swap>
    8000590c:	fe0514e3          	bnez	a0,800058f4 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005910:	0004c503          	lbu	a0,0(s1)
    80005914:	00050a63          	beqz	a0,80005928 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    80005918:	00003097          	auipc	ra,0x3
    8000591c:	a04080e7          	jalr	-1532(ra) # 8000831c <__putc>
        putc(*string);
        string++;
    80005920:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005924:	fedff06f          	j	80005910 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005928:	00000613          	li	a2,0
    8000592c:	00100593          	li	a1,1
    80005930:	00006517          	auipc	a0,0x6
    80005934:	1f850513          	addi	a0,a0,504 # 8000bb28 <lockPrint>
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	8d0080e7          	jalr	-1840(ra) # 80001208 <copy_and_swap>
    80005940:	fe0514e3          	bnez	a0,80005928 <_Z11printStringPKc+0x4c>
}
    80005944:	01813083          	ld	ra,24(sp)
    80005948:	01013403          	ld	s0,16(sp)
    8000594c:	00813483          	ld	s1,8(sp)
    80005950:	02010113          	addi	sp,sp,32
    80005954:	00008067          	ret

0000000080005958 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005958:	fd010113          	addi	sp,sp,-48
    8000595c:	02113423          	sd	ra,40(sp)
    80005960:	02813023          	sd	s0,32(sp)
    80005964:	00913c23          	sd	s1,24(sp)
    80005968:	01213823          	sd	s2,16(sp)
    8000596c:	01313423          	sd	s3,8(sp)
    80005970:	01413023          	sd	s4,0(sp)
    80005974:	03010413          	addi	s0,sp,48
    80005978:	00050993          	mv	s3,a0
    8000597c:	00058a13          	mv	s4,a1
    LOCK();
    80005980:	00100613          	li	a2,1
    80005984:	00000593          	li	a1,0
    80005988:	00006517          	auipc	a0,0x6
    8000598c:	1a050513          	addi	a0,a0,416 # 8000bb28 <lockPrint>
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	878080e7          	jalr	-1928(ra) # 80001208 <copy_and_swap>
    80005998:	fe0514e3          	bnez	a0,80005980 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    8000599c:	00000913          	li	s2,0
    800059a0:	00090493          	mv	s1,s2
    800059a4:	0019091b          	addiw	s2,s2,1
    800059a8:	03495a63          	bge	s2,s4,800059dc <_Z9getStringPci+0x84>
    return __getc();
    800059ac:	00003097          	auipc	ra,0x3
    800059b0:	9ac080e7          	jalr	-1620(ra) # 80008358 <__getc>
        cc = getc();
        if (cc < 1)
    800059b4:	02050463          	beqz	a0,800059dc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800059b8:	009984b3          	add	s1,s3,s1
    800059bc:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800059c0:	00a00793          	li	a5,10
    800059c4:	00f50a63          	beq	a0,a5,800059d8 <_Z9getStringPci+0x80>
    800059c8:	00d00793          	li	a5,13
    800059cc:	fcf51ae3          	bne	a0,a5,800059a0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800059d0:	00090493          	mv	s1,s2
    800059d4:	0080006f          	j	800059dc <_Z9getStringPci+0x84>
    800059d8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800059dc:	009984b3          	add	s1,s3,s1
    800059e0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800059e4:	00000613          	li	a2,0
    800059e8:	00100593          	li	a1,1
    800059ec:	00006517          	auipc	a0,0x6
    800059f0:	13c50513          	addi	a0,a0,316 # 8000bb28 <lockPrint>
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	814080e7          	jalr	-2028(ra) # 80001208 <copy_and_swap>
    800059fc:	fe0514e3          	bnez	a0,800059e4 <_Z9getStringPci+0x8c>
    return buf;
}
    80005a00:	00098513          	mv	a0,s3
    80005a04:	02813083          	ld	ra,40(sp)
    80005a08:	02013403          	ld	s0,32(sp)
    80005a0c:	01813483          	ld	s1,24(sp)
    80005a10:	01013903          	ld	s2,16(sp)
    80005a14:	00813983          	ld	s3,8(sp)
    80005a18:	00013a03          	ld	s4,0(sp)
    80005a1c:	03010113          	addi	sp,sp,48
    80005a20:	00008067          	ret

0000000080005a24 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a24:	ff010113          	addi	sp,sp,-16
    80005a28:	00813423          	sd	s0,8(sp)
    80005a2c:	01010413          	addi	s0,sp,16
    80005a30:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a34:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a38:	0006c603          	lbu	a2,0(a3)
    80005a3c:	fd06071b          	addiw	a4,a2,-48
    80005a40:	0ff77713          	andi	a4,a4,255
    80005a44:	00900793          	li	a5,9
    80005a48:	02e7e063          	bltu	a5,a4,80005a68 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005a4c:	0025179b          	slliw	a5,a0,0x2
    80005a50:	00a787bb          	addw	a5,a5,a0
    80005a54:	0017979b          	slliw	a5,a5,0x1
    80005a58:	00168693          	addi	a3,a3,1
    80005a5c:	00c787bb          	addw	a5,a5,a2
    80005a60:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a64:	fd5ff06f          	j	80005a38 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a68:	00813403          	ld	s0,8(sp)
    80005a6c:	01010113          	addi	sp,sp,16
    80005a70:	00008067          	ret

0000000080005a74 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005a74:	fc010113          	addi	sp,sp,-64
    80005a78:	02113c23          	sd	ra,56(sp)
    80005a7c:	02813823          	sd	s0,48(sp)
    80005a80:	02913423          	sd	s1,40(sp)
    80005a84:	03213023          	sd	s2,32(sp)
    80005a88:	01313c23          	sd	s3,24(sp)
    80005a8c:	04010413          	addi	s0,sp,64
    80005a90:	00050493          	mv	s1,a0
    80005a94:	00058913          	mv	s2,a1
    80005a98:	00060993          	mv	s3,a2
    LOCK();
    80005a9c:	00100613          	li	a2,1
    80005aa0:	00000593          	li	a1,0
    80005aa4:	00006517          	auipc	a0,0x6
    80005aa8:	08450513          	addi	a0,a0,132 # 8000bb28 <lockPrint>
    80005aac:	ffffb097          	auipc	ra,0xffffb
    80005ab0:	75c080e7          	jalr	1884(ra) # 80001208 <copy_and_swap>
    80005ab4:	fe0514e3          	bnez	a0,80005a9c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005ab8:	00098463          	beqz	s3,80005ac0 <_Z8printIntiii+0x4c>
    80005abc:	0804c463          	bltz	s1,80005b44 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ac0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005ac4:	00000593          	li	a1,0
    }

    i = 0;
    80005ac8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005acc:	0009079b          	sext.w	a5,s2
    80005ad0:	0325773b          	remuw	a4,a0,s2
    80005ad4:	00048613          	mv	a2,s1
    80005ad8:	0014849b          	addiw	s1,s1,1
    80005adc:	02071693          	slli	a3,a4,0x20
    80005ae0:	0206d693          	srli	a3,a3,0x20
    80005ae4:	00004717          	auipc	a4,0x4
    80005ae8:	b0470713          	addi	a4,a4,-1276 # 800095e8 <_ZL6digits>
    80005aec:	00d70733          	add	a4,a4,a3
    80005af0:	00074683          	lbu	a3,0(a4)
    80005af4:	fd040713          	addi	a4,s0,-48
    80005af8:	00c70733          	add	a4,a4,a2
    80005afc:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005b00:	0005071b          	sext.w	a4,a0
    80005b04:	0325553b          	divuw	a0,a0,s2
    80005b08:	fcf772e3          	bgeu	a4,a5,80005acc <_Z8printIntiii+0x58>
    if (neg)
    80005b0c:	00058c63          	beqz	a1,80005b24 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005b10:	fd040793          	addi	a5,s0,-48
    80005b14:	009784b3          	add	s1,a5,s1
    80005b18:	02d00793          	li	a5,45
    80005b1c:	fef48823          	sb	a5,-16(s1)
    80005b20:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005b24:	fff4849b          	addiw	s1,s1,-1
    80005b28:	0204c463          	bltz	s1,80005b50 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005b2c:	fd040793          	addi	a5,s0,-48
    80005b30:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005b34:	ff07c503          	lbu	a0,-16(a5)
    80005b38:	00002097          	auipc	ra,0x2
    80005b3c:	7e4080e7          	jalr	2020(ra) # 8000831c <__putc>
}
    80005b40:	fe5ff06f          	j	80005b24 <_Z8printIntiii+0xb0>
        x = -xx;
    80005b44:	4090053b          	negw	a0,s1
        neg = 1;
    80005b48:	00100593          	li	a1,1
        x = -xx;
    80005b4c:	f7dff06f          	j	80005ac8 <_Z8printIntiii+0x54>

    UNLOCK();
    80005b50:	00000613          	li	a2,0
    80005b54:	00100593          	li	a1,1
    80005b58:	00006517          	auipc	a0,0x6
    80005b5c:	fd050513          	addi	a0,a0,-48 # 8000bb28 <lockPrint>
    80005b60:	ffffb097          	auipc	ra,0xffffb
    80005b64:	6a8080e7          	jalr	1704(ra) # 80001208 <copy_and_swap>
    80005b68:	fe0514e3          	bnez	a0,80005b50 <_Z8printIntiii+0xdc>
}
    80005b6c:	03813083          	ld	ra,56(sp)
    80005b70:	03013403          	ld	s0,48(sp)
    80005b74:	02813483          	ld	s1,40(sp)
    80005b78:	02013903          	ld	s2,32(sp)
    80005b7c:	01813983          	ld	s3,24(sp)
    80005b80:	04010113          	addi	sp,sp,64
    80005b84:	00008067          	ret

0000000080005b88 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005b88:	fe010113          	addi	sp,sp,-32
    80005b8c:	00113c23          	sd	ra,24(sp)
    80005b90:	00813823          	sd	s0,16(sp)
    80005b94:	00913423          	sd	s1,8(sp)
    80005b98:	01213023          	sd	s2,0(sp)
    80005b9c:	02010413          	addi	s0,sp,32
    80005ba0:	00050493          	mv	s1,a0
    80005ba4:	00b52023          	sw	a1,0(a0)
    80005ba8:	00052823          	sw	zero,16(a0)
    80005bac:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005bb0:	00259513          	slli	a0,a1,0x2
    80005bb4:	ffffb097          	auipc	ra,0xffffb
    80005bb8:	694080e7          	jalr	1684(ra) # 80001248 <mem_alloc>
    80005bbc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005bc0:	01000513          	li	a0,16
    80005bc4:	ffffe097          	auipc	ra,0xffffe
    80005bc8:	870080e7          	jalr	-1936(ra) # 80003434 <_Znwm>
    80005bcc:	00050913          	mv	s2,a0
    80005bd0:	00000593          	li	a1,0
    80005bd4:	ffffe097          	auipc	ra,0xffffe
    80005bd8:	aac080e7          	jalr	-1364(ra) # 80003680 <_ZN9SemaphoreC1Ej>
    80005bdc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005be0:	01000513          	li	a0,16
    80005be4:	ffffe097          	auipc	ra,0xffffe
    80005be8:	850080e7          	jalr	-1968(ra) # 80003434 <_Znwm>
    80005bec:	00050913          	mv	s2,a0
    80005bf0:	0004a583          	lw	a1,0(s1)
    80005bf4:	ffffe097          	auipc	ra,0xffffe
    80005bf8:	a8c080e7          	jalr	-1396(ra) # 80003680 <_ZN9SemaphoreC1Ej>
    80005bfc:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005c00:	01000513          	li	a0,16
    80005c04:	ffffe097          	auipc	ra,0xffffe
    80005c08:	830080e7          	jalr	-2000(ra) # 80003434 <_Znwm>
    80005c0c:	00050913          	mv	s2,a0
    80005c10:	00100593          	li	a1,1
    80005c14:	ffffe097          	auipc	ra,0xffffe
    80005c18:	a6c080e7          	jalr	-1428(ra) # 80003680 <_ZN9SemaphoreC1Ej>
    80005c1c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c20:	01000513          	li	a0,16
    80005c24:	ffffe097          	auipc	ra,0xffffe
    80005c28:	810080e7          	jalr	-2032(ra) # 80003434 <_Znwm>
    80005c2c:	00050913          	mv	s2,a0
    80005c30:	00100593          	li	a1,1
    80005c34:	ffffe097          	auipc	ra,0xffffe
    80005c38:	a4c080e7          	jalr	-1460(ra) # 80003680 <_ZN9SemaphoreC1Ej>
    80005c3c:	0324b823          	sd	s2,48(s1)
}
    80005c40:	01813083          	ld	ra,24(sp)
    80005c44:	01013403          	ld	s0,16(sp)
    80005c48:	00813483          	ld	s1,8(sp)
    80005c4c:	00013903          	ld	s2,0(sp)
    80005c50:	02010113          	addi	sp,sp,32
    80005c54:	00008067          	ret
    80005c58:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c5c:	00090513          	mv	a0,s2
    80005c60:	ffffd097          	auipc	ra,0xffffd
    80005c64:	7fc080e7          	jalr	2044(ra) # 8000345c <_ZdlPv>
    80005c68:	00048513          	mv	a0,s1
    80005c6c:	00007097          	auipc	ra,0x7
    80005c70:	f9c080e7          	jalr	-100(ra) # 8000cc08 <_Unwind_Resume>
    80005c74:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005c78:	00090513          	mv	a0,s2
    80005c7c:	ffffd097          	auipc	ra,0xffffd
    80005c80:	7e0080e7          	jalr	2016(ra) # 8000345c <_ZdlPv>
    80005c84:	00048513          	mv	a0,s1
    80005c88:	00007097          	auipc	ra,0x7
    80005c8c:	f80080e7          	jalr	-128(ra) # 8000cc08 <_Unwind_Resume>
    80005c90:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005c94:	00090513          	mv	a0,s2
    80005c98:	ffffd097          	auipc	ra,0xffffd
    80005c9c:	7c4080e7          	jalr	1988(ra) # 8000345c <_ZdlPv>
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	00007097          	auipc	ra,0x7
    80005ca8:	f64080e7          	jalr	-156(ra) # 8000cc08 <_Unwind_Resume>
    80005cac:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005cb0:	00090513          	mv	a0,s2
    80005cb4:	ffffd097          	auipc	ra,0xffffd
    80005cb8:	7a8080e7          	jalr	1960(ra) # 8000345c <_ZdlPv>
    80005cbc:	00048513          	mv	a0,s1
    80005cc0:	00007097          	auipc	ra,0x7
    80005cc4:	f48080e7          	jalr	-184(ra) # 8000cc08 <_Unwind_Resume>

0000000080005cc8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005cc8:	fe010113          	addi	sp,sp,-32
    80005ccc:	00113c23          	sd	ra,24(sp)
    80005cd0:	00813823          	sd	s0,16(sp)
    80005cd4:	00913423          	sd	s1,8(sp)
    80005cd8:	02010413          	addi	s0,sp,32
    80005cdc:	00050493          	mv	s1,a0
    __putc(c);
    80005ce0:	00a00513          	li	a0,10
    80005ce4:	00002097          	auipc	ra,0x2
    80005ce8:	638080e7          	jalr	1592(ra) # 8000831c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005cec:	0104a783          	lw	a5,16(s1)
    80005cf0:	0144a703          	lw	a4,20(s1)
    80005cf4:	00e78c63          	beq	a5,a4,80005d0c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005cf8:	0017879b          	addiw	a5,a5,1
    80005cfc:	0004a703          	lw	a4,0(s1)
    80005d00:	02e7e7bb          	remw	a5,a5,a4
    80005d04:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005d08:	fe5ff06f          	j	80005cec <_ZN9BufferCPPD1Ev+0x24>
    80005d0c:	02100513          	li	a0,33
    80005d10:	00002097          	auipc	ra,0x2
    80005d14:	60c080e7          	jalr	1548(ra) # 8000831c <__putc>
    80005d18:	00a00513          	li	a0,10
    80005d1c:	00002097          	auipc	ra,0x2
    80005d20:	600080e7          	jalr	1536(ra) # 8000831c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005d24:	0084b503          	ld	a0,8(s1)
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	550080e7          	jalr	1360(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005d30:	0204b503          	ld	a0,32(s1)
    80005d34:	00050863          	beqz	a0,80005d44 <_ZN9BufferCPPD1Ev+0x7c>
    80005d38:	00053783          	ld	a5,0(a0)
    80005d3c:	0087b783          	ld	a5,8(a5)
    80005d40:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d44:	0184b503          	ld	a0,24(s1)
    80005d48:	00050863          	beqz	a0,80005d58 <_ZN9BufferCPPD1Ev+0x90>
    80005d4c:	00053783          	ld	a5,0(a0)
    80005d50:	0087b783          	ld	a5,8(a5)
    80005d54:	000780e7          	jalr	a5
    delete mutexTail;
    80005d58:	0304b503          	ld	a0,48(s1)
    80005d5c:	00050863          	beqz	a0,80005d6c <_ZN9BufferCPPD1Ev+0xa4>
    80005d60:	00053783          	ld	a5,0(a0)
    80005d64:	0087b783          	ld	a5,8(a5)
    80005d68:	000780e7          	jalr	a5
    delete mutexHead;
    80005d6c:	0284b503          	ld	a0,40(s1)
    80005d70:	00050863          	beqz	a0,80005d80 <_ZN9BufferCPPD1Ev+0xb8>
    80005d74:	00053783          	ld	a5,0(a0)
    80005d78:	0087b783          	ld	a5,8(a5)
    80005d7c:	000780e7          	jalr	a5

}
    80005d80:	01813083          	ld	ra,24(sp)
    80005d84:	01013403          	ld	s0,16(sp)
    80005d88:	00813483          	ld	s1,8(sp)
    80005d8c:	02010113          	addi	sp,sp,32
    80005d90:	00008067          	ret

0000000080005d94 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005d94:	fe010113          	addi	sp,sp,-32
    80005d98:	00113c23          	sd	ra,24(sp)
    80005d9c:	00813823          	sd	s0,16(sp)
    80005da0:	00913423          	sd	s1,8(sp)
    80005da4:	01213023          	sd	s2,0(sp)
    80005da8:	02010413          	addi	s0,sp,32
    80005dac:	00050493          	mv	s1,a0
    80005db0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005db4:	01853503          	ld	a0,24(a0)
    80005db8:	ffffe097          	auipc	ra,0xffffe
    80005dbc:	890080e7          	jalr	-1904(ra) # 80003648 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005dc0:	0304b503          	ld	a0,48(s1)
    80005dc4:	ffffe097          	auipc	ra,0xffffe
    80005dc8:	884080e7          	jalr	-1916(ra) # 80003648 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005dcc:	0084b783          	ld	a5,8(s1)
    80005dd0:	0144a703          	lw	a4,20(s1)
    80005dd4:	00271713          	slli	a4,a4,0x2
    80005dd8:	00e787b3          	add	a5,a5,a4
    80005ddc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005de0:	0144a783          	lw	a5,20(s1)
    80005de4:	0017879b          	addiw	a5,a5,1
    80005de8:	0004a703          	lw	a4,0(s1)
    80005dec:	02e7e7bb          	remw	a5,a5,a4
    80005df0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005df4:	0304b503          	ld	a0,48(s1)
    80005df8:	ffffe097          	auipc	ra,0xffffe
    80005dfc:	8d4080e7          	jalr	-1836(ra) # 800036cc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e00:	0204b503          	ld	a0,32(s1)
    80005e04:	ffffe097          	auipc	ra,0xffffe
    80005e08:	8c8080e7          	jalr	-1848(ra) # 800036cc <_ZN9Semaphore6signalEv>

}
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e24:	fe010113          	addi	sp,sp,-32
    80005e28:	00113c23          	sd	ra,24(sp)
    80005e2c:	00813823          	sd	s0,16(sp)
    80005e30:	00913423          	sd	s1,8(sp)
    80005e34:	01213023          	sd	s2,0(sp)
    80005e38:	02010413          	addi	s0,sp,32
    80005e3c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e40:	02053503          	ld	a0,32(a0)
    80005e44:	ffffe097          	auipc	ra,0xffffe
    80005e48:	804080e7          	jalr	-2044(ra) # 80003648 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e4c:	0284b503          	ld	a0,40(s1)
    80005e50:	ffffd097          	auipc	ra,0xffffd
    80005e54:	7f8080e7          	jalr	2040(ra) # 80003648 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e58:	0084b703          	ld	a4,8(s1)
    80005e5c:	0104a783          	lw	a5,16(s1)
    80005e60:	00279693          	slli	a3,a5,0x2
    80005e64:	00d70733          	add	a4,a4,a3
    80005e68:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e6c:	0017879b          	addiw	a5,a5,1
    80005e70:	0004a703          	lw	a4,0(s1)
    80005e74:	02e7e7bb          	remw	a5,a5,a4
    80005e78:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e7c:	0284b503          	ld	a0,40(s1)
    80005e80:	ffffe097          	auipc	ra,0xffffe
    80005e84:	84c080e7          	jalr	-1972(ra) # 800036cc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e88:	0184b503          	ld	a0,24(s1)
    80005e8c:	ffffe097          	auipc	ra,0xffffe
    80005e90:	840080e7          	jalr	-1984(ra) # 800036cc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e94:	00090513          	mv	a0,s2
    80005e98:	01813083          	ld	ra,24(sp)
    80005e9c:	01013403          	ld	s0,16(sp)
    80005ea0:	00813483          	ld	s1,8(sp)
    80005ea4:	00013903          	ld	s2,0(sp)
    80005ea8:	02010113          	addi	sp,sp,32
    80005eac:	00008067          	ret

0000000080005eb0 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005eb0:	ff010113          	addi	sp,sp,-16
    80005eb4:	00113423          	sd	ra,8(sp)
    80005eb8:	00813023          	sd	s0,0(sp)
    80005ebc:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	0bc080e7          	jalr	188(ra) # 80005f7c <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005ec8:	00813083          	ld	ra,8(sp)
    80005ecc:	00013403          	ld	s0,0(sp)
    80005ed0:	01010113          	addi	sp,sp,16
    80005ed4:	00008067          	ret

0000000080005ed8 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005ed8:	fe010113          	addi	sp,sp,-32
    80005edc:	00113c23          	sd	ra,24(sp)
    80005ee0:	00813823          	sd	s0,16(sp)
    80005ee4:	00913423          	sd	s1,8(sp)
    80005ee8:	01213023          	sd	s2,0(sp)
    80005eec:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005ef0:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005ef4:	00600493          	li	s1,6
    while (--i > 0) {
    80005ef8:	fff4849b          	addiw	s1,s1,-1
    80005efc:	04905463          	blez	s1,80005f44 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	70050513          	addi	a0,a0,1792 # 80009600 <_ZL6digits+0x18>
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	9d4080e7          	jalr	-1580(ra) # 800058dc <_Z11printStringPKc>
        printInt(sleep_time);
    80005f10:	00000613          	li	a2,0
    80005f14:	00a00593          	li	a1,10
    80005f18:	0009051b          	sext.w	a0,s2
    80005f1c:	00000097          	auipc	ra,0x0
    80005f20:	b58080e7          	jalr	-1192(ra) # 80005a74 <_Z8printIntiii>
        printString(" !\n");
    80005f24:	00003517          	auipc	a0,0x3
    80005f28:	6e450513          	addi	a0,a0,1764 # 80009608 <_ZL6digits+0x20>
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	9b0080e7          	jalr	-1616(ra) # 800058dc <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f34:	00090513          	mv	a0,s2
    80005f38:	ffffb097          	auipc	ra,0xffffb
    80005f3c:	4f0080e7          	jalr	1264(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005f40:	fb9ff06f          	j	80005ef8 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f44:	00a00793          	li	a5,10
    80005f48:	02f95933          	divu	s2,s2,a5
    80005f4c:	fff90913          	addi	s2,s2,-1
    80005f50:	00006797          	auipc	a5,0x6
    80005f54:	be078793          	addi	a5,a5,-1056 # 8000bb30 <finished>
    80005f58:	01278933          	add	s2,a5,s2
    80005f5c:	00100793          	li	a5,1
    80005f60:	00f90023          	sb	a5,0(s2)
}
    80005f64:	01813083          	ld	ra,24(sp)
    80005f68:	01013403          	ld	s0,16(sp)
    80005f6c:	00813483          	ld	s1,8(sp)
    80005f70:	00013903          	ld	s2,0(sp)
    80005f74:	02010113          	addi	sp,sp,32
    80005f78:	00008067          	ret

0000000080005f7c <_Z12testSleepingv>:

void testSleeping()
{
    80005f7c:	fc010113          	addi	sp,sp,-64
    80005f80:	02113c23          	sd	ra,56(sp)
    80005f84:	02813823          	sd	s0,48(sp)
    80005f88:	02913423          	sd	s1,40(sp)
    80005f8c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f90:	00a00793          	li	a5,10
    80005f94:	fcf43823          	sd	a5,-48(s0)
    80005f98:	01400793          	li	a5,20
    80005f9c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fa0:	00000493          	li	s1,0
    80005fa4:	02c0006f          	j	80005fd0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005fa8:	00349793          	slli	a5,s1,0x3
    80005fac:	fd040613          	addi	a2,s0,-48
    80005fb0:	00f60633          	add	a2,a2,a5
    80005fb4:	00000597          	auipc	a1,0x0
    80005fb8:	f2458593          	addi	a1,a1,-220 # 80005ed8 <_Z9sleepyRunPv>
    80005fbc:	fc040513          	addi	a0,s0,-64
    80005fc0:	00f50533          	add	a0,a0,a5
    80005fc4:	ffffb097          	auipc	ra,0xffffb
    80005fc8:	2e0080e7          	jalr	736(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fcc:	0014849b          	addiw	s1,s1,1
    80005fd0:	00100793          	li	a5,1
    80005fd4:	fc97dae3          	bge	a5,s1,80005fa8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005fd8:	00006797          	auipc	a5,0x6
    80005fdc:	b587c783          	lbu	a5,-1192(a5) # 8000bb30 <finished>
    80005fe0:	fe078ce3          	beqz	a5,80005fd8 <_Z12testSleepingv+0x5c>
    80005fe4:	00006797          	auipc	a5,0x6
    80005fe8:	b4d7c783          	lbu	a5,-1203(a5) # 8000bb31 <finished+0x1>
    80005fec:	fe0786e3          	beqz	a5,80005fd8 <_Z12testSleepingv+0x5c>
}
    80005ff0:	03813083          	ld	ra,56(sp)
    80005ff4:	03013403          	ld	s0,48(sp)
    80005ff8:	02813483          	ld	s1,40(sp)
    80005ffc:	04010113          	addi	sp,sp,64
    80006000:	00008067          	ret

0000000080006004 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	00813823          	sd	s0,16(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	00050493          	mv	s1,a0
    8000601c:	00b52023          	sw	a1,0(a0)
    80006020:	00052823          	sw	zero,16(a0)
    80006024:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006028:	00259513          	slli	a0,a1,0x2
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	21c080e7          	jalr	540(ra) # 80001248 <mem_alloc>
    80006034:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006038:	00000593          	li	a1,0
    8000603c:	02048513          	addi	a0,s1,32
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	32c080e7          	jalr	812(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006048:	0004a583          	lw	a1,0(s1)
    8000604c:	01848513          	addi	a0,s1,24
    80006050:	ffffb097          	auipc	ra,0xffffb
    80006054:	31c080e7          	jalr	796(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80006058:	00100593          	li	a1,1
    8000605c:	02848513          	addi	a0,s1,40
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	30c080e7          	jalr	780(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80006068:	00100593          	li	a1,1
    8000606c:	03048513          	addi	a0,s1,48
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	2fc080e7          	jalr	764(ra) # 8000136c <sem_open>
}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	02010413          	addi	s0,sp,32
    800060a0:	00050493          	mv	s1,a0
    800060a4:	00a00513          	li	a0,10
    800060a8:	00002097          	auipc	ra,0x2
    800060ac:	274080e7          	jalr	628(ra) # 8000831c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800060b0:	0104a783          	lw	a5,16(s1)
    800060b4:	0144a703          	lw	a4,20(s1)
    800060b8:	00e78c63          	beq	a5,a4,800060d0 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800060bc:	0017879b          	addiw	a5,a5,1
    800060c0:	0004a703          	lw	a4,0(s1)
    800060c4:	02e7e7bb          	remw	a5,a5,a4
    800060c8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800060cc:	fe5ff06f          	j	800060b0 <_ZN6BufferD1Ev+0x24>
    800060d0:	02100513          	li	a0,33
    800060d4:	00002097          	auipc	ra,0x2
    800060d8:	248080e7          	jalr	584(ra) # 8000831c <__putc>
    800060dc:	00a00513          	li	a0,10
    800060e0:	00002097          	auipc	ra,0x2
    800060e4:	23c080e7          	jalr	572(ra) # 8000831c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    800060e8:	0084b503          	ld	a0,8(s1)
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	18c080e7          	jalr	396(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    800060f4:	0204b503          	ld	a0,32(s1)
    800060f8:	ffffb097          	auipc	ra,0xffffb
    800060fc:	2ac080e7          	jalr	684(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006100:	0184b503          	ld	a0,24(s1)
    80006104:	ffffb097          	auipc	ra,0xffffb
    80006108:	2a0080e7          	jalr	672(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    8000610c:	0304b503          	ld	a0,48(s1)
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	294080e7          	jalr	660(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80006118:	0284b503          	ld	a0,40(s1)
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	288080e7          	jalr	648(ra) # 800013a4 <sem_close>
}
    80006124:	01813083          	ld	ra,24(sp)
    80006128:	01013403          	ld	s0,16(sp)
    8000612c:	00813483          	ld	s1,8(sp)
    80006130:	02010113          	addi	sp,sp,32
    80006134:	00008067          	ret

0000000080006138 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006138:	fe010113          	addi	sp,sp,-32
    8000613c:	00113c23          	sd	ra,24(sp)
    80006140:	00813823          	sd	s0,16(sp)
    80006144:	00913423          	sd	s1,8(sp)
    80006148:	01213023          	sd	s2,0(sp)
    8000614c:	02010413          	addi	s0,sp,32
    80006150:	00050493          	mv	s1,a0
    80006154:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006158:	01853503          	ld	a0,24(a0)
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	274080e7          	jalr	628(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80006164:	0304b503          	ld	a0,48(s1)
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	268080e7          	jalr	616(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80006170:	0084b783          	ld	a5,8(s1)
    80006174:	0144a703          	lw	a4,20(s1)
    80006178:	00271713          	slli	a4,a4,0x2
    8000617c:	00e787b3          	add	a5,a5,a4
    80006180:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006184:	0144a783          	lw	a5,20(s1)
    80006188:	0017879b          	addiw	a5,a5,1
    8000618c:	0004a703          	lw	a4,0(s1)
    80006190:	02e7e7bb          	remw	a5,a5,a4
    80006194:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006198:	0304b503          	ld	a0,48(s1)
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	260080e7          	jalr	608(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    800061a4:	0204b503          	ld	a0,32(s1)
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	254080e7          	jalr	596(ra) # 800013fc <sem_signal>

}
    800061b0:	01813083          	ld	ra,24(sp)
    800061b4:	01013403          	ld	s0,16(sp)
    800061b8:	00813483          	ld	s1,8(sp)
    800061bc:	00013903          	ld	s2,0(sp)
    800061c0:	02010113          	addi	sp,sp,32
    800061c4:	00008067          	ret

00000000800061c8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800061c8:	fe010113          	addi	sp,sp,-32
    800061cc:	00113c23          	sd	ra,24(sp)
    800061d0:	00813823          	sd	s0,16(sp)
    800061d4:	00913423          	sd	s1,8(sp)
    800061d8:	01213023          	sd	s2,0(sp)
    800061dc:	02010413          	addi	s0,sp,32
    800061e0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800061e4:	02053503          	ld	a0,32(a0)
    800061e8:	ffffb097          	auipc	ra,0xffffb
    800061ec:	1e8080e7          	jalr	488(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    800061f0:	0284b503          	ld	a0,40(s1)
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	1dc080e7          	jalr	476(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    800061fc:	0084b703          	ld	a4,8(s1)
    80006200:	0104a783          	lw	a5,16(s1)
    80006204:	00279693          	slli	a3,a5,0x2
    80006208:	00d70733          	add	a4,a4,a3
    8000620c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006210:	0017879b          	addiw	a5,a5,1
    80006214:	0004a703          	lw	a4,0(s1)
    80006218:	02e7e7bb          	remw	a5,a5,a4
    8000621c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006220:	0284b503          	ld	a0,40(s1)
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	1d8080e7          	jalr	472(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    8000622c:	0184b503          	ld	a0,24(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	1cc080e7          	jalr	460(ra) # 800013fc <sem_signal>

    return ret;
}
    80006238:	00090513          	mv	a0,s2
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	00013903          	ld	s2,0(sp)
    8000624c:	02010113          	addi	sp,sp,32
    80006250:	00008067          	ret

0000000080006254 <start>:
    80006254:	ff010113          	addi	sp,sp,-16
    80006258:	00813423          	sd	s0,8(sp)
    8000625c:	01010413          	addi	s0,sp,16
    80006260:	300027f3          	csrr	a5,mstatus
    80006264:	ffffe737          	lui	a4,0xffffe
    80006268:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a5f>
    8000626c:	00e7f7b3          	and	a5,a5,a4
    80006270:	00001737          	lui	a4,0x1
    80006274:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006278:	00e7e7b3          	or	a5,a5,a4
    8000627c:	30079073          	csrw	mstatus,a5
    80006280:	00000797          	auipc	a5,0x0
    80006284:	16078793          	addi	a5,a5,352 # 800063e0 <system_main>
    80006288:	34179073          	csrw	mepc,a5
    8000628c:	00000793          	li	a5,0
    80006290:	18079073          	csrw	satp,a5
    80006294:	000107b7          	lui	a5,0x10
    80006298:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000629c:	30279073          	csrw	medeleg,a5
    800062a0:	30379073          	csrw	mideleg,a5
    800062a4:	104027f3          	csrr	a5,sie
    800062a8:	2227e793          	ori	a5,a5,546
    800062ac:	10479073          	csrw	sie,a5
    800062b0:	fff00793          	li	a5,-1
    800062b4:	00a7d793          	srli	a5,a5,0xa
    800062b8:	3b079073          	csrw	pmpaddr0,a5
    800062bc:	00f00793          	li	a5,15
    800062c0:	3a079073          	csrw	pmpcfg0,a5
    800062c4:	f14027f3          	csrr	a5,mhartid
    800062c8:	0200c737          	lui	a4,0x200c
    800062cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062d0:	0007869b          	sext.w	a3,a5
    800062d4:	00269713          	slli	a4,a3,0x2
    800062d8:	000f4637          	lui	a2,0xf4
    800062dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062e0:	00d70733          	add	a4,a4,a3
    800062e4:	0037979b          	slliw	a5,a5,0x3
    800062e8:	020046b7          	lui	a3,0x2004
    800062ec:	00d787b3          	add	a5,a5,a3
    800062f0:	00c585b3          	add	a1,a1,a2
    800062f4:	00371693          	slli	a3,a4,0x3
    800062f8:	00006717          	auipc	a4,0x6
    800062fc:	84870713          	addi	a4,a4,-1976 # 8000bb40 <timer_scratch>
    80006300:	00b7b023          	sd	a1,0(a5)
    80006304:	00d70733          	add	a4,a4,a3
    80006308:	00f73c23          	sd	a5,24(a4)
    8000630c:	02c73023          	sd	a2,32(a4)
    80006310:	34071073          	csrw	mscratch,a4
    80006314:	00000797          	auipc	a5,0x0
    80006318:	6ec78793          	addi	a5,a5,1772 # 80006a00 <timervec>
    8000631c:	30579073          	csrw	mtvec,a5
    80006320:	300027f3          	csrr	a5,mstatus
    80006324:	0087e793          	ori	a5,a5,8
    80006328:	30079073          	csrw	mstatus,a5
    8000632c:	304027f3          	csrr	a5,mie
    80006330:	0807e793          	ori	a5,a5,128
    80006334:	30479073          	csrw	mie,a5
    80006338:	f14027f3          	csrr	a5,mhartid
    8000633c:	0007879b          	sext.w	a5,a5
    80006340:	00078213          	mv	tp,a5
    80006344:	30200073          	mret
    80006348:	00813403          	ld	s0,8(sp)
    8000634c:	01010113          	addi	sp,sp,16
    80006350:	00008067          	ret

0000000080006354 <timerinit>:
    80006354:	ff010113          	addi	sp,sp,-16
    80006358:	00813423          	sd	s0,8(sp)
    8000635c:	01010413          	addi	s0,sp,16
    80006360:	f14027f3          	csrr	a5,mhartid
    80006364:	0200c737          	lui	a4,0x200c
    80006368:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000636c:	0007869b          	sext.w	a3,a5
    80006370:	00269713          	slli	a4,a3,0x2
    80006374:	000f4637          	lui	a2,0xf4
    80006378:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000637c:	00d70733          	add	a4,a4,a3
    80006380:	0037979b          	slliw	a5,a5,0x3
    80006384:	020046b7          	lui	a3,0x2004
    80006388:	00d787b3          	add	a5,a5,a3
    8000638c:	00c585b3          	add	a1,a1,a2
    80006390:	00371693          	slli	a3,a4,0x3
    80006394:	00005717          	auipc	a4,0x5
    80006398:	7ac70713          	addi	a4,a4,1964 # 8000bb40 <timer_scratch>
    8000639c:	00b7b023          	sd	a1,0(a5)
    800063a0:	00d70733          	add	a4,a4,a3
    800063a4:	00f73c23          	sd	a5,24(a4)
    800063a8:	02c73023          	sd	a2,32(a4)
    800063ac:	34071073          	csrw	mscratch,a4
    800063b0:	00000797          	auipc	a5,0x0
    800063b4:	65078793          	addi	a5,a5,1616 # 80006a00 <timervec>
    800063b8:	30579073          	csrw	mtvec,a5
    800063bc:	300027f3          	csrr	a5,mstatus
    800063c0:	0087e793          	ori	a5,a5,8
    800063c4:	30079073          	csrw	mstatus,a5
    800063c8:	304027f3          	csrr	a5,mie
    800063cc:	0807e793          	ori	a5,a5,128
    800063d0:	30479073          	csrw	mie,a5
    800063d4:	00813403          	ld	s0,8(sp)
    800063d8:	01010113          	addi	sp,sp,16
    800063dc:	00008067          	ret

00000000800063e0 <system_main>:
    800063e0:	fe010113          	addi	sp,sp,-32
    800063e4:	00813823          	sd	s0,16(sp)
    800063e8:	00913423          	sd	s1,8(sp)
    800063ec:	00113c23          	sd	ra,24(sp)
    800063f0:	02010413          	addi	s0,sp,32
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	0c4080e7          	jalr	196(ra) # 800064b8 <cpuid>
    800063fc:	00005497          	auipc	s1,0x5
    80006400:	63448493          	addi	s1,s1,1588 # 8000ba30 <started>
    80006404:	02050263          	beqz	a0,80006428 <system_main+0x48>
    80006408:	0004a783          	lw	a5,0(s1)
    8000640c:	0007879b          	sext.w	a5,a5
    80006410:	fe078ce3          	beqz	a5,80006408 <system_main+0x28>
    80006414:	0ff0000f          	fence
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	22850513          	addi	a0,a0,552 # 80009640 <_ZL6digits+0x58>
    80006420:	00001097          	auipc	ra,0x1
    80006424:	a7c080e7          	jalr	-1412(ra) # 80006e9c <panic>
    80006428:	00001097          	auipc	ra,0x1
    8000642c:	9d0080e7          	jalr	-1584(ra) # 80006df8 <consoleinit>
    80006430:	00001097          	auipc	ra,0x1
    80006434:	15c080e7          	jalr	348(ra) # 8000758c <printfinit>
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	cc850513          	addi	a0,a0,-824 # 80009100 <CONSOLE_STATUS+0xf0>
    80006440:	00001097          	auipc	ra,0x1
    80006444:	ab8080e7          	jalr	-1352(ra) # 80006ef8 <__printf>
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	1c850513          	addi	a0,a0,456 # 80009610 <_ZL6digits+0x28>
    80006450:	00001097          	auipc	ra,0x1
    80006454:	aa8080e7          	jalr	-1368(ra) # 80006ef8 <__printf>
    80006458:	00003517          	auipc	a0,0x3
    8000645c:	ca850513          	addi	a0,a0,-856 # 80009100 <CONSOLE_STATUS+0xf0>
    80006460:	00001097          	auipc	ra,0x1
    80006464:	a98080e7          	jalr	-1384(ra) # 80006ef8 <__printf>
    80006468:	00001097          	auipc	ra,0x1
    8000646c:	4b0080e7          	jalr	1200(ra) # 80007918 <kinit>
    80006470:	00000097          	auipc	ra,0x0
    80006474:	148080e7          	jalr	328(ra) # 800065b8 <trapinit>
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	16c080e7          	jalr	364(ra) # 800065e4 <trapinithart>
    80006480:	00000097          	auipc	ra,0x0
    80006484:	5c0080e7          	jalr	1472(ra) # 80006a40 <plicinit>
    80006488:	00000097          	auipc	ra,0x0
    8000648c:	5e0080e7          	jalr	1504(ra) # 80006a68 <plicinithart>
    80006490:	00000097          	auipc	ra,0x0
    80006494:	078080e7          	jalr	120(ra) # 80006508 <userinit>
    80006498:	0ff0000f          	fence
    8000649c:	00100793          	li	a5,1
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	18850513          	addi	a0,a0,392 # 80009628 <_ZL6digits+0x40>
    800064a8:	00f4a023          	sw	a5,0(s1)
    800064ac:	00001097          	auipc	ra,0x1
    800064b0:	a4c080e7          	jalr	-1460(ra) # 80006ef8 <__printf>
    800064b4:	0000006f          	j	800064b4 <system_main+0xd4>

00000000800064b8 <cpuid>:
    800064b8:	ff010113          	addi	sp,sp,-16
    800064bc:	00813423          	sd	s0,8(sp)
    800064c0:	01010413          	addi	s0,sp,16
    800064c4:	00020513          	mv	a0,tp
    800064c8:	00813403          	ld	s0,8(sp)
    800064cc:	0005051b          	sext.w	a0,a0
    800064d0:	01010113          	addi	sp,sp,16
    800064d4:	00008067          	ret

00000000800064d8 <mycpu>:
    800064d8:	ff010113          	addi	sp,sp,-16
    800064dc:	00813423          	sd	s0,8(sp)
    800064e0:	01010413          	addi	s0,sp,16
    800064e4:	00020793          	mv	a5,tp
    800064e8:	00813403          	ld	s0,8(sp)
    800064ec:	0007879b          	sext.w	a5,a5
    800064f0:	00779793          	slli	a5,a5,0x7
    800064f4:	00006517          	auipc	a0,0x6
    800064f8:	67c50513          	addi	a0,a0,1660 # 8000cb70 <cpus>
    800064fc:	00f50533          	add	a0,a0,a5
    80006500:	01010113          	addi	sp,sp,16
    80006504:	00008067          	ret

0000000080006508 <userinit>:
    80006508:	ff010113          	addi	sp,sp,-16
    8000650c:	00813423          	sd	s0,8(sp)
    80006510:	01010413          	addi	s0,sp,16
    80006514:	00813403          	ld	s0,8(sp)
    80006518:	01010113          	addi	sp,sp,16
    8000651c:	ffffd317          	auipc	t1,0xffffd
    80006520:	e3430067          	jr	-460(t1) # 80003350 <main>

0000000080006524 <either_copyout>:
    80006524:	ff010113          	addi	sp,sp,-16
    80006528:	00813023          	sd	s0,0(sp)
    8000652c:	00113423          	sd	ra,8(sp)
    80006530:	01010413          	addi	s0,sp,16
    80006534:	02051663          	bnez	a0,80006560 <either_copyout+0x3c>
    80006538:	00058513          	mv	a0,a1
    8000653c:	00060593          	mv	a1,a2
    80006540:	0006861b          	sext.w	a2,a3
    80006544:	00002097          	auipc	ra,0x2
    80006548:	c60080e7          	jalr	-928(ra) # 800081a4 <__memmove>
    8000654c:	00813083          	ld	ra,8(sp)
    80006550:	00013403          	ld	s0,0(sp)
    80006554:	00000513          	li	a0,0
    80006558:	01010113          	addi	sp,sp,16
    8000655c:	00008067          	ret
    80006560:	00003517          	auipc	a0,0x3
    80006564:	10850513          	addi	a0,a0,264 # 80009668 <_ZL6digits+0x80>
    80006568:	00001097          	auipc	ra,0x1
    8000656c:	934080e7          	jalr	-1740(ra) # 80006e9c <panic>

0000000080006570 <either_copyin>:
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00813023          	sd	s0,0(sp)
    80006578:	00113423          	sd	ra,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	02059463          	bnez	a1,800065a8 <either_copyin+0x38>
    80006584:	00060593          	mv	a1,a2
    80006588:	0006861b          	sext.w	a2,a3
    8000658c:	00002097          	auipc	ra,0x2
    80006590:	c18080e7          	jalr	-1000(ra) # 800081a4 <__memmove>
    80006594:	00813083          	ld	ra,8(sp)
    80006598:	00013403          	ld	s0,0(sp)
    8000659c:	00000513          	li	a0,0
    800065a0:	01010113          	addi	sp,sp,16
    800065a4:	00008067          	ret
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	0e850513          	addi	a0,a0,232 # 80009690 <_ZL6digits+0xa8>
    800065b0:	00001097          	auipc	ra,0x1
    800065b4:	8ec080e7          	jalr	-1812(ra) # 80006e9c <panic>

00000000800065b8 <trapinit>:
    800065b8:	ff010113          	addi	sp,sp,-16
    800065bc:	00813423          	sd	s0,8(sp)
    800065c0:	01010413          	addi	s0,sp,16
    800065c4:	00813403          	ld	s0,8(sp)
    800065c8:	00003597          	auipc	a1,0x3
    800065cc:	0f058593          	addi	a1,a1,240 # 800096b8 <_ZL6digits+0xd0>
    800065d0:	00006517          	auipc	a0,0x6
    800065d4:	62050513          	addi	a0,a0,1568 # 8000cbf0 <tickslock>
    800065d8:	01010113          	addi	sp,sp,16
    800065dc:	00001317          	auipc	t1,0x1
    800065e0:	5cc30067          	jr	1484(t1) # 80007ba8 <initlock>

00000000800065e4 <trapinithart>:
    800065e4:	ff010113          	addi	sp,sp,-16
    800065e8:	00813423          	sd	s0,8(sp)
    800065ec:	01010413          	addi	s0,sp,16
    800065f0:	00000797          	auipc	a5,0x0
    800065f4:	30078793          	addi	a5,a5,768 # 800068f0 <kernelvec>
    800065f8:	10579073          	csrw	stvec,a5
    800065fc:	00813403          	ld	s0,8(sp)
    80006600:	01010113          	addi	sp,sp,16
    80006604:	00008067          	ret

0000000080006608 <usertrap>:
    80006608:	ff010113          	addi	sp,sp,-16
    8000660c:	00813423          	sd	s0,8(sp)
    80006610:	01010413          	addi	s0,sp,16
    80006614:	00813403          	ld	s0,8(sp)
    80006618:	01010113          	addi	sp,sp,16
    8000661c:	00008067          	ret

0000000080006620 <usertrapret>:
    80006620:	ff010113          	addi	sp,sp,-16
    80006624:	00813423          	sd	s0,8(sp)
    80006628:	01010413          	addi	s0,sp,16
    8000662c:	00813403          	ld	s0,8(sp)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <kerneltrap>:
    80006638:	fe010113          	addi	sp,sp,-32
    8000663c:	00813823          	sd	s0,16(sp)
    80006640:	00113c23          	sd	ra,24(sp)
    80006644:	00913423          	sd	s1,8(sp)
    80006648:	02010413          	addi	s0,sp,32
    8000664c:	142025f3          	csrr	a1,scause
    80006650:	100027f3          	csrr	a5,sstatus
    80006654:	0027f793          	andi	a5,a5,2
    80006658:	10079c63          	bnez	a5,80006770 <kerneltrap+0x138>
    8000665c:	142027f3          	csrr	a5,scause
    80006660:	0207ce63          	bltz	a5,8000669c <kerneltrap+0x64>
    80006664:	00003517          	auipc	a0,0x3
    80006668:	09c50513          	addi	a0,a0,156 # 80009700 <_ZL6digits+0x118>
    8000666c:	00001097          	auipc	ra,0x1
    80006670:	88c080e7          	jalr	-1908(ra) # 80006ef8 <__printf>
    80006674:	141025f3          	csrr	a1,sepc
    80006678:	14302673          	csrr	a2,stval
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	09450513          	addi	a0,a0,148 # 80009710 <_ZL6digits+0x128>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	874080e7          	jalr	-1932(ra) # 80006ef8 <__printf>
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	09c50513          	addi	a0,a0,156 # 80009728 <_ZL6digits+0x140>
    80006694:	00001097          	auipc	ra,0x1
    80006698:	808080e7          	jalr	-2040(ra) # 80006e9c <panic>
    8000669c:	0ff7f713          	andi	a4,a5,255
    800066a0:	00900693          	li	a3,9
    800066a4:	04d70063          	beq	a4,a3,800066e4 <kerneltrap+0xac>
    800066a8:	fff00713          	li	a4,-1
    800066ac:	03f71713          	slli	a4,a4,0x3f
    800066b0:	00170713          	addi	a4,a4,1
    800066b4:	fae798e3          	bne	a5,a4,80006664 <kerneltrap+0x2c>
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	e00080e7          	jalr	-512(ra) # 800064b8 <cpuid>
    800066c0:	06050663          	beqz	a0,8000672c <kerneltrap+0xf4>
    800066c4:	144027f3          	csrr	a5,sip
    800066c8:	ffd7f793          	andi	a5,a5,-3
    800066cc:	14479073          	csrw	sip,a5
    800066d0:	01813083          	ld	ra,24(sp)
    800066d4:	01013403          	ld	s0,16(sp)
    800066d8:	00813483          	ld	s1,8(sp)
    800066dc:	02010113          	addi	sp,sp,32
    800066e0:	00008067          	ret
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	3d0080e7          	jalr	976(ra) # 80006ab4 <plic_claim>
    800066ec:	00a00793          	li	a5,10
    800066f0:	00050493          	mv	s1,a0
    800066f4:	06f50863          	beq	a0,a5,80006764 <kerneltrap+0x12c>
    800066f8:	fc050ce3          	beqz	a0,800066d0 <kerneltrap+0x98>
    800066fc:	00050593          	mv	a1,a0
    80006700:	00003517          	auipc	a0,0x3
    80006704:	fe050513          	addi	a0,a0,-32 # 800096e0 <_ZL6digits+0xf8>
    80006708:	00000097          	auipc	ra,0x0
    8000670c:	7f0080e7          	jalr	2032(ra) # 80006ef8 <__printf>
    80006710:	01013403          	ld	s0,16(sp)
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	00048513          	mv	a0,s1
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	02010113          	addi	sp,sp,32
    80006724:	00000317          	auipc	t1,0x0
    80006728:	3c830067          	jr	968(t1) # 80006aec <plic_complete>
    8000672c:	00006517          	auipc	a0,0x6
    80006730:	4c450513          	addi	a0,a0,1220 # 8000cbf0 <tickslock>
    80006734:	00001097          	auipc	ra,0x1
    80006738:	498080e7          	jalr	1176(ra) # 80007bcc <acquire>
    8000673c:	00005717          	auipc	a4,0x5
    80006740:	2f870713          	addi	a4,a4,760 # 8000ba34 <ticks>
    80006744:	00072783          	lw	a5,0(a4)
    80006748:	00006517          	auipc	a0,0x6
    8000674c:	4a850513          	addi	a0,a0,1192 # 8000cbf0 <tickslock>
    80006750:	0017879b          	addiw	a5,a5,1
    80006754:	00f72023          	sw	a5,0(a4)
    80006758:	00001097          	auipc	ra,0x1
    8000675c:	540080e7          	jalr	1344(ra) # 80007c98 <release>
    80006760:	f65ff06f          	j	800066c4 <kerneltrap+0x8c>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	09c080e7          	jalr	156(ra) # 80007800 <uartintr>
    8000676c:	fa5ff06f          	j	80006710 <kerneltrap+0xd8>
    80006770:	00003517          	auipc	a0,0x3
    80006774:	f5050513          	addi	a0,a0,-176 # 800096c0 <_ZL6digits+0xd8>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	724080e7          	jalr	1828(ra) # 80006e9c <panic>

0000000080006780 <clockintr>:
    80006780:	fe010113          	addi	sp,sp,-32
    80006784:	00813823          	sd	s0,16(sp)
    80006788:	00913423          	sd	s1,8(sp)
    8000678c:	00113c23          	sd	ra,24(sp)
    80006790:	02010413          	addi	s0,sp,32
    80006794:	00006497          	auipc	s1,0x6
    80006798:	45c48493          	addi	s1,s1,1116 # 8000cbf0 <tickslock>
    8000679c:	00048513          	mv	a0,s1
    800067a0:	00001097          	auipc	ra,0x1
    800067a4:	42c080e7          	jalr	1068(ra) # 80007bcc <acquire>
    800067a8:	00005717          	auipc	a4,0x5
    800067ac:	28c70713          	addi	a4,a4,652 # 8000ba34 <ticks>
    800067b0:	00072783          	lw	a5,0(a4)
    800067b4:	01013403          	ld	s0,16(sp)
    800067b8:	01813083          	ld	ra,24(sp)
    800067bc:	00048513          	mv	a0,s1
    800067c0:	0017879b          	addiw	a5,a5,1
    800067c4:	00813483          	ld	s1,8(sp)
    800067c8:	00f72023          	sw	a5,0(a4)
    800067cc:	02010113          	addi	sp,sp,32
    800067d0:	00001317          	auipc	t1,0x1
    800067d4:	4c830067          	jr	1224(t1) # 80007c98 <release>

00000000800067d8 <devintr>:
    800067d8:	142027f3          	csrr	a5,scause
    800067dc:	00000513          	li	a0,0
    800067e0:	0007c463          	bltz	a5,800067e8 <devintr+0x10>
    800067e4:	00008067          	ret
    800067e8:	fe010113          	addi	sp,sp,-32
    800067ec:	00813823          	sd	s0,16(sp)
    800067f0:	00113c23          	sd	ra,24(sp)
    800067f4:	00913423          	sd	s1,8(sp)
    800067f8:	02010413          	addi	s0,sp,32
    800067fc:	0ff7f713          	andi	a4,a5,255
    80006800:	00900693          	li	a3,9
    80006804:	04d70c63          	beq	a4,a3,8000685c <devintr+0x84>
    80006808:	fff00713          	li	a4,-1
    8000680c:	03f71713          	slli	a4,a4,0x3f
    80006810:	00170713          	addi	a4,a4,1
    80006814:	00e78c63          	beq	a5,a4,8000682c <devintr+0x54>
    80006818:	01813083          	ld	ra,24(sp)
    8000681c:	01013403          	ld	s0,16(sp)
    80006820:	00813483          	ld	s1,8(sp)
    80006824:	02010113          	addi	sp,sp,32
    80006828:	00008067          	ret
    8000682c:	00000097          	auipc	ra,0x0
    80006830:	c8c080e7          	jalr	-884(ra) # 800064b8 <cpuid>
    80006834:	06050663          	beqz	a0,800068a0 <devintr+0xc8>
    80006838:	144027f3          	csrr	a5,sip
    8000683c:	ffd7f793          	andi	a5,a5,-3
    80006840:	14479073          	csrw	sip,a5
    80006844:	01813083          	ld	ra,24(sp)
    80006848:	01013403          	ld	s0,16(sp)
    8000684c:	00813483          	ld	s1,8(sp)
    80006850:	00200513          	li	a0,2
    80006854:	02010113          	addi	sp,sp,32
    80006858:	00008067          	ret
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	258080e7          	jalr	600(ra) # 80006ab4 <plic_claim>
    80006864:	00a00793          	li	a5,10
    80006868:	00050493          	mv	s1,a0
    8000686c:	06f50663          	beq	a0,a5,800068d8 <devintr+0x100>
    80006870:	00100513          	li	a0,1
    80006874:	fa0482e3          	beqz	s1,80006818 <devintr+0x40>
    80006878:	00048593          	mv	a1,s1
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	e6450513          	addi	a0,a0,-412 # 800096e0 <_ZL6digits+0xf8>
    80006884:	00000097          	auipc	ra,0x0
    80006888:	674080e7          	jalr	1652(ra) # 80006ef8 <__printf>
    8000688c:	00048513          	mv	a0,s1
    80006890:	00000097          	auipc	ra,0x0
    80006894:	25c080e7          	jalr	604(ra) # 80006aec <plic_complete>
    80006898:	00100513          	li	a0,1
    8000689c:	f7dff06f          	j	80006818 <devintr+0x40>
    800068a0:	00006517          	auipc	a0,0x6
    800068a4:	35050513          	addi	a0,a0,848 # 8000cbf0 <tickslock>
    800068a8:	00001097          	auipc	ra,0x1
    800068ac:	324080e7          	jalr	804(ra) # 80007bcc <acquire>
    800068b0:	00005717          	auipc	a4,0x5
    800068b4:	18470713          	addi	a4,a4,388 # 8000ba34 <ticks>
    800068b8:	00072783          	lw	a5,0(a4)
    800068bc:	00006517          	auipc	a0,0x6
    800068c0:	33450513          	addi	a0,a0,820 # 8000cbf0 <tickslock>
    800068c4:	0017879b          	addiw	a5,a5,1
    800068c8:	00f72023          	sw	a5,0(a4)
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	3cc080e7          	jalr	972(ra) # 80007c98 <release>
    800068d4:	f65ff06f          	j	80006838 <devintr+0x60>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	f28080e7          	jalr	-216(ra) # 80007800 <uartintr>
    800068e0:	fadff06f          	j	8000688c <devintr+0xb4>
	...

00000000800068f0 <kernelvec>:
    800068f0:	f0010113          	addi	sp,sp,-256
    800068f4:	00113023          	sd	ra,0(sp)
    800068f8:	00213423          	sd	sp,8(sp)
    800068fc:	00313823          	sd	gp,16(sp)
    80006900:	00413c23          	sd	tp,24(sp)
    80006904:	02513023          	sd	t0,32(sp)
    80006908:	02613423          	sd	t1,40(sp)
    8000690c:	02713823          	sd	t2,48(sp)
    80006910:	02813c23          	sd	s0,56(sp)
    80006914:	04913023          	sd	s1,64(sp)
    80006918:	04a13423          	sd	a0,72(sp)
    8000691c:	04b13823          	sd	a1,80(sp)
    80006920:	04c13c23          	sd	a2,88(sp)
    80006924:	06d13023          	sd	a3,96(sp)
    80006928:	06e13423          	sd	a4,104(sp)
    8000692c:	06f13823          	sd	a5,112(sp)
    80006930:	07013c23          	sd	a6,120(sp)
    80006934:	09113023          	sd	a7,128(sp)
    80006938:	09213423          	sd	s2,136(sp)
    8000693c:	09313823          	sd	s3,144(sp)
    80006940:	09413c23          	sd	s4,152(sp)
    80006944:	0b513023          	sd	s5,160(sp)
    80006948:	0b613423          	sd	s6,168(sp)
    8000694c:	0b713823          	sd	s7,176(sp)
    80006950:	0b813c23          	sd	s8,184(sp)
    80006954:	0d913023          	sd	s9,192(sp)
    80006958:	0da13423          	sd	s10,200(sp)
    8000695c:	0db13823          	sd	s11,208(sp)
    80006960:	0dc13c23          	sd	t3,216(sp)
    80006964:	0fd13023          	sd	t4,224(sp)
    80006968:	0fe13423          	sd	t5,232(sp)
    8000696c:	0ff13823          	sd	t6,240(sp)
    80006970:	cc9ff0ef          	jal	ra,80006638 <kerneltrap>
    80006974:	00013083          	ld	ra,0(sp)
    80006978:	00813103          	ld	sp,8(sp)
    8000697c:	01013183          	ld	gp,16(sp)
    80006980:	02013283          	ld	t0,32(sp)
    80006984:	02813303          	ld	t1,40(sp)
    80006988:	03013383          	ld	t2,48(sp)
    8000698c:	03813403          	ld	s0,56(sp)
    80006990:	04013483          	ld	s1,64(sp)
    80006994:	04813503          	ld	a0,72(sp)
    80006998:	05013583          	ld	a1,80(sp)
    8000699c:	05813603          	ld	a2,88(sp)
    800069a0:	06013683          	ld	a3,96(sp)
    800069a4:	06813703          	ld	a4,104(sp)
    800069a8:	07013783          	ld	a5,112(sp)
    800069ac:	07813803          	ld	a6,120(sp)
    800069b0:	08013883          	ld	a7,128(sp)
    800069b4:	08813903          	ld	s2,136(sp)
    800069b8:	09013983          	ld	s3,144(sp)
    800069bc:	09813a03          	ld	s4,152(sp)
    800069c0:	0a013a83          	ld	s5,160(sp)
    800069c4:	0a813b03          	ld	s6,168(sp)
    800069c8:	0b013b83          	ld	s7,176(sp)
    800069cc:	0b813c03          	ld	s8,184(sp)
    800069d0:	0c013c83          	ld	s9,192(sp)
    800069d4:	0c813d03          	ld	s10,200(sp)
    800069d8:	0d013d83          	ld	s11,208(sp)
    800069dc:	0d813e03          	ld	t3,216(sp)
    800069e0:	0e013e83          	ld	t4,224(sp)
    800069e4:	0e813f03          	ld	t5,232(sp)
    800069e8:	0f013f83          	ld	t6,240(sp)
    800069ec:	10010113          	addi	sp,sp,256
    800069f0:	10200073          	sret
    800069f4:	00000013          	nop
    800069f8:	00000013          	nop
    800069fc:	00000013          	nop

0000000080006a00 <timervec>:
    80006a00:	34051573          	csrrw	a0,mscratch,a0
    80006a04:	00b53023          	sd	a1,0(a0)
    80006a08:	00c53423          	sd	a2,8(a0)
    80006a0c:	00d53823          	sd	a3,16(a0)
    80006a10:	01853583          	ld	a1,24(a0)
    80006a14:	02053603          	ld	a2,32(a0)
    80006a18:	0005b683          	ld	a3,0(a1)
    80006a1c:	00c686b3          	add	a3,a3,a2
    80006a20:	00d5b023          	sd	a3,0(a1)
    80006a24:	00200593          	li	a1,2
    80006a28:	14459073          	csrw	sip,a1
    80006a2c:	01053683          	ld	a3,16(a0)
    80006a30:	00853603          	ld	a2,8(a0)
    80006a34:	00053583          	ld	a1,0(a0)
    80006a38:	34051573          	csrrw	a0,mscratch,a0
    80006a3c:	30200073          	mret

0000000080006a40 <plicinit>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	00813403          	ld	s0,8(sp)
    80006a50:	0c0007b7          	lui	a5,0xc000
    80006a54:	00100713          	li	a4,1
    80006a58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a5c:	00e7a223          	sw	a4,4(a5)
    80006a60:	01010113          	addi	sp,sp,16
    80006a64:	00008067          	ret

0000000080006a68 <plicinithart>:
    80006a68:	ff010113          	addi	sp,sp,-16
    80006a6c:	00813023          	sd	s0,0(sp)
    80006a70:	00113423          	sd	ra,8(sp)
    80006a74:	01010413          	addi	s0,sp,16
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	a40080e7          	jalr	-1472(ra) # 800064b8 <cpuid>
    80006a80:	0085171b          	slliw	a4,a0,0x8
    80006a84:	0c0027b7          	lui	a5,0xc002
    80006a88:	00e787b3          	add	a5,a5,a4
    80006a8c:	40200713          	li	a4,1026
    80006a90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006a94:	00813083          	ld	ra,8(sp)
    80006a98:	00013403          	ld	s0,0(sp)
    80006a9c:	00d5151b          	slliw	a0,a0,0xd
    80006aa0:	0c2017b7          	lui	a5,0xc201
    80006aa4:	00a78533          	add	a0,a5,a0
    80006aa8:	00052023          	sw	zero,0(a0)
    80006aac:	01010113          	addi	sp,sp,16
    80006ab0:	00008067          	ret

0000000080006ab4 <plic_claim>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813023          	sd	s0,0(sp)
    80006abc:	00113423          	sd	ra,8(sp)
    80006ac0:	01010413          	addi	s0,sp,16
    80006ac4:	00000097          	auipc	ra,0x0
    80006ac8:	9f4080e7          	jalr	-1548(ra) # 800064b8 <cpuid>
    80006acc:	00813083          	ld	ra,8(sp)
    80006ad0:	00013403          	ld	s0,0(sp)
    80006ad4:	00d5151b          	slliw	a0,a0,0xd
    80006ad8:	0c2017b7          	lui	a5,0xc201
    80006adc:	00a78533          	add	a0,a5,a0
    80006ae0:	00452503          	lw	a0,4(a0)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <plic_complete>:
    80006aec:	fe010113          	addi	sp,sp,-32
    80006af0:	00813823          	sd	s0,16(sp)
    80006af4:	00913423          	sd	s1,8(sp)
    80006af8:	00113c23          	sd	ra,24(sp)
    80006afc:	02010413          	addi	s0,sp,32
    80006b00:	00050493          	mv	s1,a0
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	9b4080e7          	jalr	-1612(ra) # 800064b8 <cpuid>
    80006b0c:	01813083          	ld	ra,24(sp)
    80006b10:	01013403          	ld	s0,16(sp)
    80006b14:	00d5179b          	slliw	a5,a0,0xd
    80006b18:	0c201737          	lui	a4,0xc201
    80006b1c:	00f707b3          	add	a5,a4,a5
    80006b20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	02010113          	addi	sp,sp,32
    80006b2c:	00008067          	ret

0000000080006b30 <consolewrite>:
    80006b30:	fb010113          	addi	sp,sp,-80
    80006b34:	04813023          	sd	s0,64(sp)
    80006b38:	04113423          	sd	ra,72(sp)
    80006b3c:	02913c23          	sd	s1,56(sp)
    80006b40:	03213823          	sd	s2,48(sp)
    80006b44:	03313423          	sd	s3,40(sp)
    80006b48:	03413023          	sd	s4,32(sp)
    80006b4c:	01513c23          	sd	s5,24(sp)
    80006b50:	05010413          	addi	s0,sp,80
    80006b54:	06c05c63          	blez	a2,80006bcc <consolewrite+0x9c>
    80006b58:	00060993          	mv	s3,a2
    80006b5c:	00050a13          	mv	s4,a0
    80006b60:	00058493          	mv	s1,a1
    80006b64:	00000913          	li	s2,0
    80006b68:	fff00a93          	li	s5,-1
    80006b6c:	01c0006f          	j	80006b88 <consolewrite+0x58>
    80006b70:	fbf44503          	lbu	a0,-65(s0)
    80006b74:	0019091b          	addiw	s2,s2,1
    80006b78:	00148493          	addi	s1,s1,1
    80006b7c:	00001097          	auipc	ra,0x1
    80006b80:	a9c080e7          	jalr	-1380(ra) # 80007618 <uartputc>
    80006b84:	03298063          	beq	s3,s2,80006ba4 <consolewrite+0x74>
    80006b88:	00048613          	mv	a2,s1
    80006b8c:	00100693          	li	a3,1
    80006b90:	000a0593          	mv	a1,s4
    80006b94:	fbf40513          	addi	a0,s0,-65
    80006b98:	00000097          	auipc	ra,0x0
    80006b9c:	9d8080e7          	jalr	-1576(ra) # 80006570 <either_copyin>
    80006ba0:	fd5518e3          	bne	a0,s5,80006b70 <consolewrite+0x40>
    80006ba4:	04813083          	ld	ra,72(sp)
    80006ba8:	04013403          	ld	s0,64(sp)
    80006bac:	03813483          	ld	s1,56(sp)
    80006bb0:	02813983          	ld	s3,40(sp)
    80006bb4:	02013a03          	ld	s4,32(sp)
    80006bb8:	01813a83          	ld	s5,24(sp)
    80006bbc:	00090513          	mv	a0,s2
    80006bc0:	03013903          	ld	s2,48(sp)
    80006bc4:	05010113          	addi	sp,sp,80
    80006bc8:	00008067          	ret
    80006bcc:	00000913          	li	s2,0
    80006bd0:	fd5ff06f          	j	80006ba4 <consolewrite+0x74>

0000000080006bd4 <consoleread>:
    80006bd4:	f9010113          	addi	sp,sp,-112
    80006bd8:	06813023          	sd	s0,96(sp)
    80006bdc:	04913c23          	sd	s1,88(sp)
    80006be0:	05213823          	sd	s2,80(sp)
    80006be4:	05313423          	sd	s3,72(sp)
    80006be8:	05413023          	sd	s4,64(sp)
    80006bec:	03513c23          	sd	s5,56(sp)
    80006bf0:	03613823          	sd	s6,48(sp)
    80006bf4:	03713423          	sd	s7,40(sp)
    80006bf8:	03813023          	sd	s8,32(sp)
    80006bfc:	06113423          	sd	ra,104(sp)
    80006c00:	01913c23          	sd	s9,24(sp)
    80006c04:	07010413          	addi	s0,sp,112
    80006c08:	00060b93          	mv	s7,a2
    80006c0c:	00050913          	mv	s2,a0
    80006c10:	00058c13          	mv	s8,a1
    80006c14:	00060b1b          	sext.w	s6,a2
    80006c18:	00006497          	auipc	s1,0x6
    80006c1c:	00048493          	mv	s1,s1
    80006c20:	00400993          	li	s3,4
    80006c24:	fff00a13          	li	s4,-1
    80006c28:	00a00a93          	li	s5,10
    80006c2c:	05705e63          	blez	s7,80006c88 <consoleread+0xb4>
    80006c30:	09c4a703          	lw	a4,156(s1) # 8000ccb4 <cons+0x9c>
    80006c34:	0984a783          	lw	a5,152(s1)
    80006c38:	0007071b          	sext.w	a4,a4
    80006c3c:	08e78463          	beq	a5,a4,80006cc4 <consoleread+0xf0>
    80006c40:	07f7f713          	andi	a4,a5,127
    80006c44:	00e48733          	add	a4,s1,a4
    80006c48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c4c:	0017869b          	addiw	a3,a5,1
    80006c50:	08d4ac23          	sw	a3,152(s1)
    80006c54:	00070c9b          	sext.w	s9,a4
    80006c58:	0b370663          	beq	a4,s3,80006d04 <consoleread+0x130>
    80006c5c:	00100693          	li	a3,1
    80006c60:	f9f40613          	addi	a2,s0,-97
    80006c64:	000c0593          	mv	a1,s8
    80006c68:	00090513          	mv	a0,s2
    80006c6c:	f8e40fa3          	sb	a4,-97(s0)
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	8b4080e7          	jalr	-1868(ra) # 80006524 <either_copyout>
    80006c78:	01450863          	beq	a0,s4,80006c88 <consoleread+0xb4>
    80006c7c:	001c0c13          	addi	s8,s8,1
    80006c80:	fffb8b9b          	addiw	s7,s7,-1
    80006c84:	fb5c94e3          	bne	s9,s5,80006c2c <consoleread+0x58>
    80006c88:	000b851b          	sext.w	a0,s7
    80006c8c:	06813083          	ld	ra,104(sp)
    80006c90:	06013403          	ld	s0,96(sp)
    80006c94:	05813483          	ld	s1,88(sp)
    80006c98:	05013903          	ld	s2,80(sp)
    80006c9c:	04813983          	ld	s3,72(sp)
    80006ca0:	04013a03          	ld	s4,64(sp)
    80006ca4:	03813a83          	ld	s5,56(sp)
    80006ca8:	02813b83          	ld	s7,40(sp)
    80006cac:	02013c03          	ld	s8,32(sp)
    80006cb0:	01813c83          	ld	s9,24(sp)
    80006cb4:	40ab053b          	subw	a0,s6,a0
    80006cb8:	03013b03          	ld	s6,48(sp)
    80006cbc:	07010113          	addi	sp,sp,112
    80006cc0:	00008067          	ret
    80006cc4:	00001097          	auipc	ra,0x1
    80006cc8:	1d8080e7          	jalr	472(ra) # 80007e9c <push_on>
    80006ccc:	0984a703          	lw	a4,152(s1)
    80006cd0:	09c4a783          	lw	a5,156(s1)
    80006cd4:	0007879b          	sext.w	a5,a5
    80006cd8:	fef70ce3          	beq	a4,a5,80006cd0 <consoleread+0xfc>
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	234080e7          	jalr	564(ra) # 80007f10 <pop_on>
    80006ce4:	0984a783          	lw	a5,152(s1)
    80006ce8:	07f7f713          	andi	a4,a5,127
    80006cec:	00e48733          	add	a4,s1,a4
    80006cf0:	01874703          	lbu	a4,24(a4)
    80006cf4:	0017869b          	addiw	a3,a5,1
    80006cf8:	08d4ac23          	sw	a3,152(s1)
    80006cfc:	00070c9b          	sext.w	s9,a4
    80006d00:	f5371ee3          	bne	a4,s3,80006c5c <consoleread+0x88>
    80006d04:	000b851b          	sext.w	a0,s7
    80006d08:	f96bf2e3          	bgeu	s7,s6,80006c8c <consoleread+0xb8>
    80006d0c:	08f4ac23          	sw	a5,152(s1)
    80006d10:	f7dff06f          	j	80006c8c <consoleread+0xb8>

0000000080006d14 <consputc>:
    80006d14:	10000793          	li	a5,256
    80006d18:	00f50663          	beq	a0,a5,80006d24 <consputc+0x10>
    80006d1c:	00001317          	auipc	t1,0x1
    80006d20:	9f430067          	jr	-1548(t1) # 80007710 <uartputc_sync>
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00113423          	sd	ra,8(sp)
    80006d2c:	00813023          	sd	s0,0(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00800513          	li	a0,8
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	9d8080e7          	jalr	-1576(ra) # 80007710 <uartputc_sync>
    80006d40:	02000513          	li	a0,32
    80006d44:	00001097          	auipc	ra,0x1
    80006d48:	9cc080e7          	jalr	-1588(ra) # 80007710 <uartputc_sync>
    80006d4c:	00013403          	ld	s0,0(sp)
    80006d50:	00813083          	ld	ra,8(sp)
    80006d54:	00800513          	li	a0,8
    80006d58:	01010113          	addi	sp,sp,16
    80006d5c:	00001317          	auipc	t1,0x1
    80006d60:	9b430067          	jr	-1612(t1) # 80007710 <uartputc_sync>

0000000080006d64 <consoleintr>:
    80006d64:	fe010113          	addi	sp,sp,-32
    80006d68:	00813823          	sd	s0,16(sp)
    80006d6c:	00913423          	sd	s1,8(sp)
    80006d70:	01213023          	sd	s2,0(sp)
    80006d74:	00113c23          	sd	ra,24(sp)
    80006d78:	02010413          	addi	s0,sp,32
    80006d7c:	00006917          	auipc	s2,0x6
    80006d80:	e9c90913          	addi	s2,s2,-356 # 8000cc18 <cons>
    80006d84:	00050493          	mv	s1,a0
    80006d88:	00090513          	mv	a0,s2
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	e40080e7          	jalr	-448(ra) # 80007bcc <acquire>
    80006d94:	02048c63          	beqz	s1,80006dcc <consoleintr+0x68>
    80006d98:	0a092783          	lw	a5,160(s2)
    80006d9c:	09892703          	lw	a4,152(s2)
    80006da0:	07f00693          	li	a3,127
    80006da4:	40e7873b          	subw	a4,a5,a4
    80006da8:	02e6e263          	bltu	a3,a4,80006dcc <consoleintr+0x68>
    80006dac:	00d00713          	li	a4,13
    80006db0:	04e48063          	beq	s1,a4,80006df0 <consoleintr+0x8c>
    80006db4:	07f7f713          	andi	a4,a5,127
    80006db8:	00e90733          	add	a4,s2,a4
    80006dbc:	0017879b          	addiw	a5,a5,1
    80006dc0:	0af92023          	sw	a5,160(s2)
    80006dc4:	00970c23          	sb	s1,24(a4)
    80006dc8:	08f92e23          	sw	a5,156(s2)
    80006dcc:	01013403          	ld	s0,16(sp)
    80006dd0:	01813083          	ld	ra,24(sp)
    80006dd4:	00813483          	ld	s1,8(sp)
    80006dd8:	00013903          	ld	s2,0(sp)
    80006ddc:	00006517          	auipc	a0,0x6
    80006de0:	e3c50513          	addi	a0,a0,-452 # 8000cc18 <cons>
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	00001317          	auipc	t1,0x1
    80006dec:	eb030067          	jr	-336(t1) # 80007c98 <release>
    80006df0:	00a00493          	li	s1,10
    80006df4:	fc1ff06f          	j	80006db4 <consoleintr+0x50>

0000000080006df8 <consoleinit>:
    80006df8:	fe010113          	addi	sp,sp,-32
    80006dfc:	00113c23          	sd	ra,24(sp)
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00913423          	sd	s1,8(sp)
    80006e08:	02010413          	addi	s0,sp,32
    80006e0c:	00006497          	auipc	s1,0x6
    80006e10:	e0c48493          	addi	s1,s1,-500 # 8000cc18 <cons>
    80006e14:	00048513          	mv	a0,s1
    80006e18:	00003597          	auipc	a1,0x3
    80006e1c:	92058593          	addi	a1,a1,-1760 # 80009738 <_ZL6digits+0x150>
    80006e20:	00001097          	auipc	ra,0x1
    80006e24:	d88080e7          	jalr	-632(ra) # 80007ba8 <initlock>
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	7ac080e7          	jalr	1964(ra) # 800075d4 <uartinit>
    80006e30:	01813083          	ld	ra,24(sp)
    80006e34:	01013403          	ld	s0,16(sp)
    80006e38:	00000797          	auipc	a5,0x0
    80006e3c:	d9c78793          	addi	a5,a5,-612 # 80006bd4 <consoleread>
    80006e40:	0af4bc23          	sd	a5,184(s1)
    80006e44:	00000797          	auipc	a5,0x0
    80006e48:	cec78793          	addi	a5,a5,-788 # 80006b30 <consolewrite>
    80006e4c:	0cf4b023          	sd	a5,192(s1)
    80006e50:	00813483          	ld	s1,8(sp)
    80006e54:	02010113          	addi	sp,sp,32
    80006e58:	00008067          	ret

0000000080006e5c <console_read>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813423          	sd	s0,8(sp)
    80006e64:	01010413          	addi	s0,sp,16
    80006e68:	00813403          	ld	s0,8(sp)
    80006e6c:	00006317          	auipc	t1,0x6
    80006e70:	e6433303          	ld	t1,-412(t1) # 8000ccd0 <devsw+0x10>
    80006e74:	01010113          	addi	sp,sp,16
    80006e78:	00030067          	jr	t1

0000000080006e7c <console_write>:
    80006e7c:	ff010113          	addi	sp,sp,-16
    80006e80:	00813423          	sd	s0,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	00813403          	ld	s0,8(sp)
    80006e8c:	00006317          	auipc	t1,0x6
    80006e90:	e4c33303          	ld	t1,-436(t1) # 8000ccd8 <devsw+0x18>
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00030067          	jr	t1

0000000080006e9c <panic>:
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	00813823          	sd	s0,16(sp)
    80006ea8:	00913423          	sd	s1,8(sp)
    80006eac:	02010413          	addi	s0,sp,32
    80006eb0:	00050493          	mv	s1,a0
    80006eb4:	00003517          	auipc	a0,0x3
    80006eb8:	88c50513          	addi	a0,a0,-1908 # 80009740 <_ZL6digits+0x158>
    80006ebc:	00006797          	auipc	a5,0x6
    80006ec0:	ea07ae23          	sw	zero,-324(a5) # 8000cd78 <pr+0x18>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	034080e7          	jalr	52(ra) # 80006ef8 <__printf>
    80006ecc:	00048513          	mv	a0,s1
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	028080e7          	jalr	40(ra) # 80006ef8 <__printf>
    80006ed8:	00002517          	auipc	a0,0x2
    80006edc:	22850513          	addi	a0,a0,552 # 80009100 <CONSOLE_STATUS+0xf0>
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	018080e7          	jalr	24(ra) # 80006ef8 <__printf>
    80006ee8:	00100793          	li	a5,1
    80006eec:	00005717          	auipc	a4,0x5
    80006ef0:	b4f72623          	sw	a5,-1204(a4) # 8000ba38 <panicked>
    80006ef4:	0000006f          	j	80006ef4 <panic+0x58>

0000000080006ef8 <__printf>:
    80006ef8:	f3010113          	addi	sp,sp,-208
    80006efc:	08813023          	sd	s0,128(sp)
    80006f00:	07313423          	sd	s3,104(sp)
    80006f04:	09010413          	addi	s0,sp,144
    80006f08:	05813023          	sd	s8,64(sp)
    80006f0c:	08113423          	sd	ra,136(sp)
    80006f10:	06913c23          	sd	s1,120(sp)
    80006f14:	07213823          	sd	s2,112(sp)
    80006f18:	07413023          	sd	s4,96(sp)
    80006f1c:	05513c23          	sd	s5,88(sp)
    80006f20:	05613823          	sd	s6,80(sp)
    80006f24:	05713423          	sd	s7,72(sp)
    80006f28:	03913c23          	sd	s9,56(sp)
    80006f2c:	03a13823          	sd	s10,48(sp)
    80006f30:	03b13423          	sd	s11,40(sp)
    80006f34:	00006317          	auipc	t1,0x6
    80006f38:	e2c30313          	addi	t1,t1,-468 # 8000cd60 <pr>
    80006f3c:	01832c03          	lw	s8,24(t1)
    80006f40:	00b43423          	sd	a1,8(s0)
    80006f44:	00c43823          	sd	a2,16(s0)
    80006f48:	00d43c23          	sd	a3,24(s0)
    80006f4c:	02e43023          	sd	a4,32(s0)
    80006f50:	02f43423          	sd	a5,40(s0)
    80006f54:	03043823          	sd	a6,48(s0)
    80006f58:	03143c23          	sd	a7,56(s0)
    80006f5c:	00050993          	mv	s3,a0
    80006f60:	4a0c1663          	bnez	s8,8000740c <__printf+0x514>
    80006f64:	60098c63          	beqz	s3,8000757c <__printf+0x684>
    80006f68:	0009c503          	lbu	a0,0(s3)
    80006f6c:	00840793          	addi	a5,s0,8
    80006f70:	f6f43c23          	sd	a5,-136(s0)
    80006f74:	00000493          	li	s1,0
    80006f78:	22050063          	beqz	a0,80007198 <__printf+0x2a0>
    80006f7c:	00002a37          	lui	s4,0x2
    80006f80:	00018ab7          	lui	s5,0x18
    80006f84:	000f4b37          	lui	s6,0xf4
    80006f88:	00989bb7          	lui	s7,0x989
    80006f8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006f90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006f94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006f98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006f9c:	00148c9b          	addiw	s9,s1,1
    80006fa0:	02500793          	li	a5,37
    80006fa4:	01998933          	add	s2,s3,s9
    80006fa8:	38f51263          	bne	a0,a5,8000732c <__printf+0x434>
    80006fac:	00094783          	lbu	a5,0(s2)
    80006fb0:	00078c9b          	sext.w	s9,a5
    80006fb4:	1e078263          	beqz	a5,80007198 <__printf+0x2a0>
    80006fb8:	0024849b          	addiw	s1,s1,2
    80006fbc:	07000713          	li	a4,112
    80006fc0:	00998933          	add	s2,s3,s1
    80006fc4:	38e78a63          	beq	a5,a4,80007358 <__printf+0x460>
    80006fc8:	20f76863          	bltu	a4,a5,800071d8 <__printf+0x2e0>
    80006fcc:	42a78863          	beq	a5,a0,800073fc <__printf+0x504>
    80006fd0:	06400713          	li	a4,100
    80006fd4:	40e79663          	bne	a5,a4,800073e0 <__printf+0x4e8>
    80006fd8:	f7843783          	ld	a5,-136(s0)
    80006fdc:	0007a603          	lw	a2,0(a5)
    80006fe0:	00878793          	addi	a5,a5,8
    80006fe4:	f6f43c23          	sd	a5,-136(s0)
    80006fe8:	42064a63          	bltz	a2,8000741c <__printf+0x524>
    80006fec:	00a00713          	li	a4,10
    80006ff0:	02e677bb          	remuw	a5,a2,a4
    80006ff4:	00002d97          	auipc	s11,0x2
    80006ff8:	774d8d93          	addi	s11,s11,1908 # 80009768 <digits>
    80006ffc:	00900593          	li	a1,9
    80007000:	0006051b          	sext.w	a0,a2
    80007004:	00000c93          	li	s9,0
    80007008:	02079793          	slli	a5,a5,0x20
    8000700c:	0207d793          	srli	a5,a5,0x20
    80007010:	00fd87b3          	add	a5,s11,a5
    80007014:	0007c783          	lbu	a5,0(a5)
    80007018:	02e656bb          	divuw	a3,a2,a4
    8000701c:	f8f40023          	sb	a5,-128(s0)
    80007020:	14c5d863          	bge	a1,a2,80007170 <__printf+0x278>
    80007024:	06300593          	li	a1,99
    80007028:	00100c93          	li	s9,1
    8000702c:	02e6f7bb          	remuw	a5,a3,a4
    80007030:	02079793          	slli	a5,a5,0x20
    80007034:	0207d793          	srli	a5,a5,0x20
    80007038:	00fd87b3          	add	a5,s11,a5
    8000703c:	0007c783          	lbu	a5,0(a5)
    80007040:	02e6d73b          	divuw	a4,a3,a4
    80007044:	f8f400a3          	sb	a5,-127(s0)
    80007048:	12a5f463          	bgeu	a1,a0,80007170 <__printf+0x278>
    8000704c:	00a00693          	li	a3,10
    80007050:	00900593          	li	a1,9
    80007054:	02d777bb          	remuw	a5,a4,a3
    80007058:	02079793          	slli	a5,a5,0x20
    8000705c:	0207d793          	srli	a5,a5,0x20
    80007060:	00fd87b3          	add	a5,s11,a5
    80007064:	0007c503          	lbu	a0,0(a5)
    80007068:	02d757bb          	divuw	a5,a4,a3
    8000706c:	f8a40123          	sb	a0,-126(s0)
    80007070:	48e5f263          	bgeu	a1,a4,800074f4 <__printf+0x5fc>
    80007074:	06300513          	li	a0,99
    80007078:	02d7f5bb          	remuw	a1,a5,a3
    8000707c:	02059593          	slli	a1,a1,0x20
    80007080:	0205d593          	srli	a1,a1,0x20
    80007084:	00bd85b3          	add	a1,s11,a1
    80007088:	0005c583          	lbu	a1,0(a1)
    8000708c:	02d7d7bb          	divuw	a5,a5,a3
    80007090:	f8b401a3          	sb	a1,-125(s0)
    80007094:	48e57263          	bgeu	a0,a4,80007518 <__printf+0x620>
    80007098:	3e700513          	li	a0,999
    8000709c:	02d7f5bb          	remuw	a1,a5,a3
    800070a0:	02059593          	slli	a1,a1,0x20
    800070a4:	0205d593          	srli	a1,a1,0x20
    800070a8:	00bd85b3          	add	a1,s11,a1
    800070ac:	0005c583          	lbu	a1,0(a1)
    800070b0:	02d7d7bb          	divuw	a5,a5,a3
    800070b4:	f8b40223          	sb	a1,-124(s0)
    800070b8:	46e57663          	bgeu	a0,a4,80007524 <__printf+0x62c>
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b402a3          	sb	a1,-123(s0)
    800070d8:	46ea7863          	bgeu	s4,a4,80007548 <__printf+0x650>
    800070dc:	02d7f5bb          	remuw	a1,a5,a3
    800070e0:	02059593          	slli	a1,a1,0x20
    800070e4:	0205d593          	srli	a1,a1,0x20
    800070e8:	00bd85b3          	add	a1,s11,a1
    800070ec:	0005c583          	lbu	a1,0(a1)
    800070f0:	02d7d7bb          	divuw	a5,a5,a3
    800070f4:	f8b40323          	sb	a1,-122(s0)
    800070f8:	3eeaf863          	bgeu	s5,a4,800074e8 <__printf+0x5f0>
    800070fc:	02d7f5bb          	remuw	a1,a5,a3
    80007100:	02059593          	slli	a1,a1,0x20
    80007104:	0205d593          	srli	a1,a1,0x20
    80007108:	00bd85b3          	add	a1,s11,a1
    8000710c:	0005c583          	lbu	a1,0(a1)
    80007110:	02d7d7bb          	divuw	a5,a5,a3
    80007114:	f8b403a3          	sb	a1,-121(s0)
    80007118:	42eb7e63          	bgeu	s6,a4,80007554 <__printf+0x65c>
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b40423          	sb	a1,-120(s0)
    80007138:	42ebfc63          	bgeu	s7,a4,80007570 <__printf+0x678>
    8000713c:	02079793          	slli	a5,a5,0x20
    80007140:	0207d793          	srli	a5,a5,0x20
    80007144:	00fd8db3          	add	s11,s11,a5
    80007148:	000dc703          	lbu	a4,0(s11)
    8000714c:	00a00793          	li	a5,10
    80007150:	00900c93          	li	s9,9
    80007154:	f8e404a3          	sb	a4,-119(s0)
    80007158:	00065c63          	bgez	a2,80007170 <__printf+0x278>
    8000715c:	f9040713          	addi	a4,s0,-112
    80007160:	00f70733          	add	a4,a4,a5
    80007164:	02d00693          	li	a3,45
    80007168:	fed70823          	sb	a3,-16(a4)
    8000716c:	00078c93          	mv	s9,a5
    80007170:	f8040793          	addi	a5,s0,-128
    80007174:	01978cb3          	add	s9,a5,s9
    80007178:	f7f40d13          	addi	s10,s0,-129
    8000717c:	000cc503          	lbu	a0,0(s9)
    80007180:	fffc8c93          	addi	s9,s9,-1
    80007184:	00000097          	auipc	ra,0x0
    80007188:	b90080e7          	jalr	-1136(ra) # 80006d14 <consputc>
    8000718c:	ffac98e3          	bne	s9,s10,8000717c <__printf+0x284>
    80007190:	00094503          	lbu	a0,0(s2)
    80007194:	e00514e3          	bnez	a0,80006f9c <__printf+0xa4>
    80007198:	1a0c1663          	bnez	s8,80007344 <__printf+0x44c>
    8000719c:	08813083          	ld	ra,136(sp)
    800071a0:	08013403          	ld	s0,128(sp)
    800071a4:	07813483          	ld	s1,120(sp)
    800071a8:	07013903          	ld	s2,112(sp)
    800071ac:	06813983          	ld	s3,104(sp)
    800071b0:	06013a03          	ld	s4,96(sp)
    800071b4:	05813a83          	ld	s5,88(sp)
    800071b8:	05013b03          	ld	s6,80(sp)
    800071bc:	04813b83          	ld	s7,72(sp)
    800071c0:	04013c03          	ld	s8,64(sp)
    800071c4:	03813c83          	ld	s9,56(sp)
    800071c8:	03013d03          	ld	s10,48(sp)
    800071cc:	02813d83          	ld	s11,40(sp)
    800071d0:	0d010113          	addi	sp,sp,208
    800071d4:	00008067          	ret
    800071d8:	07300713          	li	a4,115
    800071dc:	1ce78a63          	beq	a5,a4,800073b0 <__printf+0x4b8>
    800071e0:	07800713          	li	a4,120
    800071e4:	1ee79e63          	bne	a5,a4,800073e0 <__printf+0x4e8>
    800071e8:	f7843783          	ld	a5,-136(s0)
    800071ec:	0007a703          	lw	a4,0(a5)
    800071f0:	00878793          	addi	a5,a5,8
    800071f4:	f6f43c23          	sd	a5,-136(s0)
    800071f8:	28074263          	bltz	a4,8000747c <__printf+0x584>
    800071fc:	00002d97          	auipc	s11,0x2
    80007200:	56cd8d93          	addi	s11,s11,1388 # 80009768 <digits>
    80007204:	00f77793          	andi	a5,a4,15
    80007208:	00fd87b3          	add	a5,s11,a5
    8000720c:	0007c683          	lbu	a3,0(a5)
    80007210:	00f00613          	li	a2,15
    80007214:	0007079b          	sext.w	a5,a4
    80007218:	f8d40023          	sb	a3,-128(s0)
    8000721c:	0047559b          	srliw	a1,a4,0x4
    80007220:	0047569b          	srliw	a3,a4,0x4
    80007224:	00000c93          	li	s9,0
    80007228:	0ee65063          	bge	a2,a4,80007308 <__printf+0x410>
    8000722c:	00f6f693          	andi	a3,a3,15
    80007230:	00dd86b3          	add	a3,s11,a3
    80007234:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007238:	0087d79b          	srliw	a5,a5,0x8
    8000723c:	00100c93          	li	s9,1
    80007240:	f8d400a3          	sb	a3,-127(s0)
    80007244:	0cb67263          	bgeu	a2,a1,80007308 <__printf+0x410>
    80007248:	00f7f693          	andi	a3,a5,15
    8000724c:	00dd86b3          	add	a3,s11,a3
    80007250:	0006c583          	lbu	a1,0(a3)
    80007254:	00f00613          	li	a2,15
    80007258:	0047d69b          	srliw	a3,a5,0x4
    8000725c:	f8b40123          	sb	a1,-126(s0)
    80007260:	0047d593          	srli	a1,a5,0x4
    80007264:	28f67e63          	bgeu	a2,a5,80007500 <__printf+0x608>
    80007268:	00f6f693          	andi	a3,a3,15
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c503          	lbu	a0,0(a3)
    80007274:	0087d813          	srli	a6,a5,0x8
    80007278:	0087d69b          	srliw	a3,a5,0x8
    8000727c:	f8a401a3          	sb	a0,-125(s0)
    80007280:	28b67663          	bgeu	a2,a1,8000750c <__printf+0x614>
    80007284:	00f6f693          	andi	a3,a3,15
    80007288:	00dd86b3          	add	a3,s11,a3
    8000728c:	0006c583          	lbu	a1,0(a3)
    80007290:	00c7d513          	srli	a0,a5,0xc
    80007294:	00c7d69b          	srliw	a3,a5,0xc
    80007298:	f8b40223          	sb	a1,-124(s0)
    8000729c:	29067a63          	bgeu	a2,a6,80007530 <__printf+0x638>
    800072a0:	00f6f693          	andi	a3,a3,15
    800072a4:	00dd86b3          	add	a3,s11,a3
    800072a8:	0006c583          	lbu	a1,0(a3)
    800072ac:	0107d813          	srli	a6,a5,0x10
    800072b0:	0107d69b          	srliw	a3,a5,0x10
    800072b4:	f8b402a3          	sb	a1,-123(s0)
    800072b8:	28a67263          	bgeu	a2,a0,8000753c <__printf+0x644>
    800072bc:	00f6f693          	andi	a3,a3,15
    800072c0:	00dd86b3          	add	a3,s11,a3
    800072c4:	0006c683          	lbu	a3,0(a3)
    800072c8:	0147d79b          	srliw	a5,a5,0x14
    800072cc:	f8d40323          	sb	a3,-122(s0)
    800072d0:	21067663          	bgeu	a2,a6,800074dc <__printf+0x5e4>
    800072d4:	02079793          	slli	a5,a5,0x20
    800072d8:	0207d793          	srli	a5,a5,0x20
    800072dc:	00fd8db3          	add	s11,s11,a5
    800072e0:	000dc683          	lbu	a3,0(s11)
    800072e4:	00800793          	li	a5,8
    800072e8:	00700c93          	li	s9,7
    800072ec:	f8d403a3          	sb	a3,-121(s0)
    800072f0:	00075c63          	bgez	a4,80007308 <__printf+0x410>
    800072f4:	f9040713          	addi	a4,s0,-112
    800072f8:	00f70733          	add	a4,a4,a5
    800072fc:	02d00693          	li	a3,45
    80007300:	fed70823          	sb	a3,-16(a4)
    80007304:	00078c93          	mv	s9,a5
    80007308:	f8040793          	addi	a5,s0,-128
    8000730c:	01978cb3          	add	s9,a5,s9
    80007310:	f7f40d13          	addi	s10,s0,-129
    80007314:	000cc503          	lbu	a0,0(s9)
    80007318:	fffc8c93          	addi	s9,s9,-1
    8000731c:	00000097          	auipc	ra,0x0
    80007320:	9f8080e7          	jalr	-1544(ra) # 80006d14 <consputc>
    80007324:	ff9d18e3          	bne	s10,s9,80007314 <__printf+0x41c>
    80007328:	0100006f          	j	80007338 <__printf+0x440>
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	9e8080e7          	jalr	-1560(ra) # 80006d14 <consputc>
    80007334:	000c8493          	mv	s1,s9
    80007338:	00094503          	lbu	a0,0(s2)
    8000733c:	c60510e3          	bnez	a0,80006f9c <__printf+0xa4>
    80007340:	e40c0ee3          	beqz	s8,8000719c <__printf+0x2a4>
    80007344:	00006517          	auipc	a0,0x6
    80007348:	a1c50513          	addi	a0,a0,-1508 # 8000cd60 <pr>
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	94c080e7          	jalr	-1716(ra) # 80007c98 <release>
    80007354:	e49ff06f          	j	8000719c <__printf+0x2a4>
    80007358:	f7843783          	ld	a5,-136(s0)
    8000735c:	03000513          	li	a0,48
    80007360:	01000d13          	li	s10,16
    80007364:	00878713          	addi	a4,a5,8
    80007368:	0007bc83          	ld	s9,0(a5)
    8000736c:	f6e43c23          	sd	a4,-136(s0)
    80007370:	00000097          	auipc	ra,0x0
    80007374:	9a4080e7          	jalr	-1628(ra) # 80006d14 <consputc>
    80007378:	07800513          	li	a0,120
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	998080e7          	jalr	-1640(ra) # 80006d14 <consputc>
    80007384:	00002d97          	auipc	s11,0x2
    80007388:	3e4d8d93          	addi	s11,s11,996 # 80009768 <digits>
    8000738c:	03ccd793          	srli	a5,s9,0x3c
    80007390:	00fd87b3          	add	a5,s11,a5
    80007394:	0007c503          	lbu	a0,0(a5)
    80007398:	fffd0d1b          	addiw	s10,s10,-1
    8000739c:	004c9c93          	slli	s9,s9,0x4
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	974080e7          	jalr	-1676(ra) # 80006d14 <consputc>
    800073a8:	fe0d12e3          	bnez	s10,8000738c <__printf+0x494>
    800073ac:	f8dff06f          	j	80007338 <__printf+0x440>
    800073b0:	f7843783          	ld	a5,-136(s0)
    800073b4:	0007bc83          	ld	s9,0(a5)
    800073b8:	00878793          	addi	a5,a5,8
    800073bc:	f6f43c23          	sd	a5,-136(s0)
    800073c0:	000c9a63          	bnez	s9,800073d4 <__printf+0x4dc>
    800073c4:	1080006f          	j	800074cc <__printf+0x5d4>
    800073c8:	001c8c93          	addi	s9,s9,1
    800073cc:	00000097          	auipc	ra,0x0
    800073d0:	948080e7          	jalr	-1720(ra) # 80006d14 <consputc>
    800073d4:	000cc503          	lbu	a0,0(s9)
    800073d8:	fe0518e3          	bnez	a0,800073c8 <__printf+0x4d0>
    800073dc:	f5dff06f          	j	80007338 <__printf+0x440>
    800073e0:	02500513          	li	a0,37
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	930080e7          	jalr	-1744(ra) # 80006d14 <consputc>
    800073ec:	000c8513          	mv	a0,s9
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	924080e7          	jalr	-1756(ra) # 80006d14 <consputc>
    800073f8:	f41ff06f          	j	80007338 <__printf+0x440>
    800073fc:	02500513          	li	a0,37
    80007400:	00000097          	auipc	ra,0x0
    80007404:	914080e7          	jalr	-1772(ra) # 80006d14 <consputc>
    80007408:	f31ff06f          	j	80007338 <__printf+0x440>
    8000740c:	00030513          	mv	a0,t1
    80007410:	00000097          	auipc	ra,0x0
    80007414:	7bc080e7          	jalr	1980(ra) # 80007bcc <acquire>
    80007418:	b4dff06f          	j	80006f64 <__printf+0x6c>
    8000741c:	40c0053b          	negw	a0,a2
    80007420:	00a00713          	li	a4,10
    80007424:	02e576bb          	remuw	a3,a0,a4
    80007428:	00002d97          	auipc	s11,0x2
    8000742c:	340d8d93          	addi	s11,s11,832 # 80009768 <digits>
    80007430:	ff700593          	li	a1,-9
    80007434:	02069693          	slli	a3,a3,0x20
    80007438:	0206d693          	srli	a3,a3,0x20
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c683          	lbu	a3,0(a3)
    80007444:	02e557bb          	divuw	a5,a0,a4
    80007448:	f8d40023          	sb	a3,-128(s0)
    8000744c:	10b65e63          	bge	a2,a1,80007568 <__printf+0x670>
    80007450:	06300593          	li	a1,99
    80007454:	02e7f6bb          	remuw	a3,a5,a4
    80007458:	02069693          	slli	a3,a3,0x20
    8000745c:	0206d693          	srli	a3,a3,0x20
    80007460:	00dd86b3          	add	a3,s11,a3
    80007464:	0006c683          	lbu	a3,0(a3)
    80007468:	02e7d73b          	divuw	a4,a5,a4
    8000746c:	00200793          	li	a5,2
    80007470:	f8d400a3          	sb	a3,-127(s0)
    80007474:	bca5ece3          	bltu	a1,a0,8000704c <__printf+0x154>
    80007478:	ce5ff06f          	j	8000715c <__printf+0x264>
    8000747c:	40e007bb          	negw	a5,a4
    80007480:	00002d97          	auipc	s11,0x2
    80007484:	2e8d8d93          	addi	s11,s11,744 # 80009768 <digits>
    80007488:	00f7f693          	andi	a3,a5,15
    8000748c:	00dd86b3          	add	a3,s11,a3
    80007490:	0006c583          	lbu	a1,0(a3)
    80007494:	ff100613          	li	a2,-15
    80007498:	0047d69b          	srliw	a3,a5,0x4
    8000749c:	f8b40023          	sb	a1,-128(s0)
    800074a0:	0047d59b          	srliw	a1,a5,0x4
    800074a4:	0ac75e63          	bge	a4,a2,80007560 <__printf+0x668>
    800074a8:	00f6f693          	andi	a3,a3,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c603          	lbu	a2,0(a3)
    800074b4:	00f00693          	li	a3,15
    800074b8:	0087d79b          	srliw	a5,a5,0x8
    800074bc:	f8c400a3          	sb	a2,-127(s0)
    800074c0:	d8b6e4e3          	bltu	a3,a1,80007248 <__printf+0x350>
    800074c4:	00200793          	li	a5,2
    800074c8:	e2dff06f          	j	800072f4 <__printf+0x3fc>
    800074cc:	00002c97          	auipc	s9,0x2
    800074d0:	27cc8c93          	addi	s9,s9,636 # 80009748 <_ZL6digits+0x160>
    800074d4:	02800513          	li	a0,40
    800074d8:	ef1ff06f          	j	800073c8 <__printf+0x4d0>
    800074dc:	00700793          	li	a5,7
    800074e0:	00600c93          	li	s9,6
    800074e4:	e0dff06f          	j	800072f0 <__printf+0x3f8>
    800074e8:	00700793          	li	a5,7
    800074ec:	00600c93          	li	s9,6
    800074f0:	c69ff06f          	j	80007158 <__printf+0x260>
    800074f4:	00300793          	li	a5,3
    800074f8:	00200c93          	li	s9,2
    800074fc:	c5dff06f          	j	80007158 <__printf+0x260>
    80007500:	00300793          	li	a5,3
    80007504:	00200c93          	li	s9,2
    80007508:	de9ff06f          	j	800072f0 <__printf+0x3f8>
    8000750c:	00400793          	li	a5,4
    80007510:	00300c93          	li	s9,3
    80007514:	dddff06f          	j	800072f0 <__printf+0x3f8>
    80007518:	00400793          	li	a5,4
    8000751c:	00300c93          	li	s9,3
    80007520:	c39ff06f          	j	80007158 <__printf+0x260>
    80007524:	00500793          	li	a5,5
    80007528:	00400c93          	li	s9,4
    8000752c:	c2dff06f          	j	80007158 <__printf+0x260>
    80007530:	00500793          	li	a5,5
    80007534:	00400c93          	li	s9,4
    80007538:	db9ff06f          	j	800072f0 <__printf+0x3f8>
    8000753c:	00600793          	li	a5,6
    80007540:	00500c93          	li	s9,5
    80007544:	dadff06f          	j	800072f0 <__printf+0x3f8>
    80007548:	00600793          	li	a5,6
    8000754c:	00500c93          	li	s9,5
    80007550:	c09ff06f          	j	80007158 <__printf+0x260>
    80007554:	00800793          	li	a5,8
    80007558:	00700c93          	li	s9,7
    8000755c:	bfdff06f          	j	80007158 <__printf+0x260>
    80007560:	00100793          	li	a5,1
    80007564:	d91ff06f          	j	800072f4 <__printf+0x3fc>
    80007568:	00100793          	li	a5,1
    8000756c:	bf1ff06f          	j	8000715c <__printf+0x264>
    80007570:	00900793          	li	a5,9
    80007574:	00800c93          	li	s9,8
    80007578:	be1ff06f          	j	80007158 <__printf+0x260>
    8000757c:	00002517          	auipc	a0,0x2
    80007580:	1d450513          	addi	a0,a0,468 # 80009750 <_ZL6digits+0x168>
    80007584:	00000097          	auipc	ra,0x0
    80007588:	918080e7          	jalr	-1768(ra) # 80006e9c <panic>

000000008000758c <printfinit>:
    8000758c:	fe010113          	addi	sp,sp,-32
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	00113c23          	sd	ra,24(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00005497          	auipc	s1,0x5
    800075a4:	7c048493          	addi	s1,s1,1984 # 8000cd60 <pr>
    800075a8:	00048513          	mv	a0,s1
    800075ac:	00002597          	auipc	a1,0x2
    800075b0:	1b458593          	addi	a1,a1,436 # 80009760 <_ZL6digits+0x178>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	5f4080e7          	jalr	1524(ra) # 80007ba8 <initlock>
    800075bc:	01813083          	ld	ra,24(sp)
    800075c0:	01013403          	ld	s0,16(sp)
    800075c4:	0004ac23          	sw	zero,24(s1)
    800075c8:	00813483          	ld	s1,8(sp)
    800075cc:	02010113          	addi	sp,sp,32
    800075d0:	00008067          	ret

00000000800075d4 <uartinit>:
    800075d4:	ff010113          	addi	sp,sp,-16
    800075d8:	00813423          	sd	s0,8(sp)
    800075dc:	01010413          	addi	s0,sp,16
    800075e0:	100007b7          	lui	a5,0x10000
    800075e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800075e8:	f8000713          	li	a4,-128
    800075ec:	00e781a3          	sb	a4,3(a5)
    800075f0:	00300713          	li	a4,3
    800075f4:	00e78023          	sb	a4,0(a5)
    800075f8:	000780a3          	sb	zero,1(a5)
    800075fc:	00e781a3          	sb	a4,3(a5)
    80007600:	00700693          	li	a3,7
    80007604:	00d78123          	sb	a3,2(a5)
    80007608:	00e780a3          	sb	a4,1(a5)
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret

0000000080007618 <uartputc>:
    80007618:	00004797          	auipc	a5,0x4
    8000761c:	4207a783          	lw	a5,1056(a5) # 8000ba38 <panicked>
    80007620:	00078463          	beqz	a5,80007628 <uartputc+0x10>
    80007624:	0000006f          	j	80007624 <uartputc+0xc>
    80007628:	fd010113          	addi	sp,sp,-48
    8000762c:	02813023          	sd	s0,32(sp)
    80007630:	00913c23          	sd	s1,24(sp)
    80007634:	01213823          	sd	s2,16(sp)
    80007638:	01313423          	sd	s3,8(sp)
    8000763c:	02113423          	sd	ra,40(sp)
    80007640:	03010413          	addi	s0,sp,48
    80007644:	00004917          	auipc	s2,0x4
    80007648:	3fc90913          	addi	s2,s2,1020 # 8000ba40 <uart_tx_r>
    8000764c:	00093783          	ld	a5,0(s2)
    80007650:	00004497          	auipc	s1,0x4
    80007654:	3f848493          	addi	s1,s1,1016 # 8000ba48 <uart_tx_w>
    80007658:	0004b703          	ld	a4,0(s1)
    8000765c:	02078693          	addi	a3,a5,32
    80007660:	00050993          	mv	s3,a0
    80007664:	02e69c63          	bne	a3,a4,8000769c <uartputc+0x84>
    80007668:	00001097          	auipc	ra,0x1
    8000766c:	834080e7          	jalr	-1996(ra) # 80007e9c <push_on>
    80007670:	00093783          	ld	a5,0(s2)
    80007674:	0004b703          	ld	a4,0(s1)
    80007678:	02078793          	addi	a5,a5,32
    8000767c:	00e79463          	bne	a5,a4,80007684 <uartputc+0x6c>
    80007680:	0000006f          	j	80007680 <uartputc+0x68>
    80007684:	00001097          	auipc	ra,0x1
    80007688:	88c080e7          	jalr	-1908(ra) # 80007f10 <pop_on>
    8000768c:	00093783          	ld	a5,0(s2)
    80007690:	0004b703          	ld	a4,0(s1)
    80007694:	02078693          	addi	a3,a5,32
    80007698:	fce688e3          	beq	a3,a4,80007668 <uartputc+0x50>
    8000769c:	01f77693          	andi	a3,a4,31
    800076a0:	00005597          	auipc	a1,0x5
    800076a4:	6e058593          	addi	a1,a1,1760 # 8000cd80 <uart_tx_buf>
    800076a8:	00d586b3          	add	a3,a1,a3
    800076ac:	00170713          	addi	a4,a4,1
    800076b0:	01368023          	sb	s3,0(a3)
    800076b4:	00e4b023          	sd	a4,0(s1)
    800076b8:	10000637          	lui	a2,0x10000
    800076bc:	02f71063          	bne	a4,a5,800076dc <uartputc+0xc4>
    800076c0:	0340006f          	j	800076f4 <uartputc+0xdc>
    800076c4:	00074703          	lbu	a4,0(a4)
    800076c8:	00f93023          	sd	a5,0(s2)
    800076cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800076d0:	00093783          	ld	a5,0(s2)
    800076d4:	0004b703          	ld	a4,0(s1)
    800076d8:	00f70e63          	beq	a4,a5,800076f4 <uartputc+0xdc>
    800076dc:	00564683          	lbu	a3,5(a2)
    800076e0:	01f7f713          	andi	a4,a5,31
    800076e4:	00e58733          	add	a4,a1,a4
    800076e8:	0206f693          	andi	a3,a3,32
    800076ec:	00178793          	addi	a5,a5,1
    800076f0:	fc069ae3          	bnez	a3,800076c4 <uartputc+0xac>
    800076f4:	02813083          	ld	ra,40(sp)
    800076f8:	02013403          	ld	s0,32(sp)
    800076fc:	01813483          	ld	s1,24(sp)
    80007700:	01013903          	ld	s2,16(sp)
    80007704:	00813983          	ld	s3,8(sp)
    80007708:	03010113          	addi	sp,sp,48
    8000770c:	00008067          	ret

0000000080007710 <uartputc_sync>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813423          	sd	s0,8(sp)
    80007718:	01010413          	addi	s0,sp,16
    8000771c:	00004717          	auipc	a4,0x4
    80007720:	31c72703          	lw	a4,796(a4) # 8000ba38 <panicked>
    80007724:	02071663          	bnez	a4,80007750 <uartputc_sync+0x40>
    80007728:	00050793          	mv	a5,a0
    8000772c:	100006b7          	lui	a3,0x10000
    80007730:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007734:	02077713          	andi	a4,a4,32
    80007738:	fe070ce3          	beqz	a4,80007730 <uartputc_sync+0x20>
    8000773c:	0ff7f793          	andi	a5,a5,255
    80007740:	00f68023          	sb	a5,0(a3)
    80007744:	00813403          	ld	s0,8(sp)
    80007748:	01010113          	addi	sp,sp,16
    8000774c:	00008067          	ret
    80007750:	0000006f          	j	80007750 <uartputc_sync+0x40>

0000000080007754 <uartstart>:
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00813423          	sd	s0,8(sp)
    8000775c:	01010413          	addi	s0,sp,16
    80007760:	00004617          	auipc	a2,0x4
    80007764:	2e060613          	addi	a2,a2,736 # 8000ba40 <uart_tx_r>
    80007768:	00004517          	auipc	a0,0x4
    8000776c:	2e050513          	addi	a0,a0,736 # 8000ba48 <uart_tx_w>
    80007770:	00063783          	ld	a5,0(a2)
    80007774:	00053703          	ld	a4,0(a0)
    80007778:	04f70263          	beq	a4,a5,800077bc <uartstart+0x68>
    8000777c:	100005b7          	lui	a1,0x10000
    80007780:	00005817          	auipc	a6,0x5
    80007784:	60080813          	addi	a6,a6,1536 # 8000cd80 <uart_tx_buf>
    80007788:	01c0006f          	j	800077a4 <uartstart+0x50>
    8000778c:	0006c703          	lbu	a4,0(a3)
    80007790:	00f63023          	sd	a5,0(a2)
    80007794:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007798:	00063783          	ld	a5,0(a2)
    8000779c:	00053703          	ld	a4,0(a0)
    800077a0:	00f70e63          	beq	a4,a5,800077bc <uartstart+0x68>
    800077a4:	01f7f713          	andi	a4,a5,31
    800077a8:	00e806b3          	add	a3,a6,a4
    800077ac:	0055c703          	lbu	a4,5(a1)
    800077b0:	00178793          	addi	a5,a5,1
    800077b4:	02077713          	andi	a4,a4,32
    800077b8:	fc071ae3          	bnez	a4,8000778c <uartstart+0x38>
    800077bc:	00813403          	ld	s0,8(sp)
    800077c0:	01010113          	addi	sp,sp,16
    800077c4:	00008067          	ret

00000000800077c8 <uartgetc>:
    800077c8:	ff010113          	addi	sp,sp,-16
    800077cc:	00813423          	sd	s0,8(sp)
    800077d0:	01010413          	addi	s0,sp,16
    800077d4:	10000737          	lui	a4,0x10000
    800077d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800077dc:	0017f793          	andi	a5,a5,1
    800077e0:	00078c63          	beqz	a5,800077f8 <uartgetc+0x30>
    800077e4:	00074503          	lbu	a0,0(a4)
    800077e8:	0ff57513          	andi	a0,a0,255
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret
    800077f8:	fff00513          	li	a0,-1
    800077fc:	ff1ff06f          	j	800077ec <uartgetc+0x24>

0000000080007800 <uartintr>:
    80007800:	100007b7          	lui	a5,0x10000
    80007804:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007808:	0017f793          	andi	a5,a5,1
    8000780c:	0a078463          	beqz	a5,800078b4 <uartintr+0xb4>
    80007810:	fe010113          	addi	sp,sp,-32
    80007814:	00813823          	sd	s0,16(sp)
    80007818:	00913423          	sd	s1,8(sp)
    8000781c:	00113c23          	sd	ra,24(sp)
    80007820:	02010413          	addi	s0,sp,32
    80007824:	100004b7          	lui	s1,0x10000
    80007828:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000782c:	0ff57513          	andi	a0,a0,255
    80007830:	fffff097          	auipc	ra,0xfffff
    80007834:	534080e7          	jalr	1332(ra) # 80006d64 <consoleintr>
    80007838:	0054c783          	lbu	a5,5(s1)
    8000783c:	0017f793          	andi	a5,a5,1
    80007840:	fe0794e3          	bnez	a5,80007828 <uartintr+0x28>
    80007844:	00004617          	auipc	a2,0x4
    80007848:	1fc60613          	addi	a2,a2,508 # 8000ba40 <uart_tx_r>
    8000784c:	00004517          	auipc	a0,0x4
    80007850:	1fc50513          	addi	a0,a0,508 # 8000ba48 <uart_tx_w>
    80007854:	00063783          	ld	a5,0(a2)
    80007858:	00053703          	ld	a4,0(a0)
    8000785c:	04f70263          	beq	a4,a5,800078a0 <uartintr+0xa0>
    80007860:	100005b7          	lui	a1,0x10000
    80007864:	00005817          	auipc	a6,0x5
    80007868:	51c80813          	addi	a6,a6,1308 # 8000cd80 <uart_tx_buf>
    8000786c:	01c0006f          	j	80007888 <uartintr+0x88>
    80007870:	0006c703          	lbu	a4,0(a3)
    80007874:	00f63023          	sd	a5,0(a2)
    80007878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000787c:	00063783          	ld	a5,0(a2)
    80007880:	00053703          	ld	a4,0(a0)
    80007884:	00f70e63          	beq	a4,a5,800078a0 <uartintr+0xa0>
    80007888:	01f7f713          	andi	a4,a5,31
    8000788c:	00e806b3          	add	a3,a6,a4
    80007890:	0055c703          	lbu	a4,5(a1)
    80007894:	00178793          	addi	a5,a5,1
    80007898:	02077713          	andi	a4,a4,32
    8000789c:	fc071ae3          	bnez	a4,80007870 <uartintr+0x70>
    800078a0:	01813083          	ld	ra,24(sp)
    800078a4:	01013403          	ld	s0,16(sp)
    800078a8:	00813483          	ld	s1,8(sp)
    800078ac:	02010113          	addi	sp,sp,32
    800078b0:	00008067          	ret
    800078b4:	00004617          	auipc	a2,0x4
    800078b8:	18c60613          	addi	a2,a2,396 # 8000ba40 <uart_tx_r>
    800078bc:	00004517          	auipc	a0,0x4
    800078c0:	18c50513          	addi	a0,a0,396 # 8000ba48 <uart_tx_w>
    800078c4:	00063783          	ld	a5,0(a2)
    800078c8:	00053703          	ld	a4,0(a0)
    800078cc:	04f70263          	beq	a4,a5,80007910 <uartintr+0x110>
    800078d0:	100005b7          	lui	a1,0x10000
    800078d4:	00005817          	auipc	a6,0x5
    800078d8:	4ac80813          	addi	a6,a6,1196 # 8000cd80 <uart_tx_buf>
    800078dc:	01c0006f          	j	800078f8 <uartintr+0xf8>
    800078e0:	0006c703          	lbu	a4,0(a3)
    800078e4:	00f63023          	sd	a5,0(a2)
    800078e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ec:	00063783          	ld	a5,0(a2)
    800078f0:	00053703          	ld	a4,0(a0)
    800078f4:	02f70063          	beq	a4,a5,80007914 <uartintr+0x114>
    800078f8:	01f7f713          	andi	a4,a5,31
    800078fc:	00e806b3          	add	a3,a6,a4
    80007900:	0055c703          	lbu	a4,5(a1)
    80007904:	00178793          	addi	a5,a5,1
    80007908:	02077713          	andi	a4,a4,32
    8000790c:	fc071ae3          	bnez	a4,800078e0 <uartintr+0xe0>
    80007910:	00008067          	ret
    80007914:	00008067          	ret

0000000080007918 <kinit>:
    80007918:	fc010113          	addi	sp,sp,-64
    8000791c:	02913423          	sd	s1,40(sp)
    80007920:	fffff7b7          	lui	a5,0xfffff
    80007924:	00006497          	auipc	s1,0x6
    80007928:	47b48493          	addi	s1,s1,1147 # 8000dd9f <end+0xfff>
    8000792c:	02813823          	sd	s0,48(sp)
    80007930:	01313c23          	sd	s3,24(sp)
    80007934:	00f4f4b3          	and	s1,s1,a5
    80007938:	02113c23          	sd	ra,56(sp)
    8000793c:	03213023          	sd	s2,32(sp)
    80007940:	01413823          	sd	s4,16(sp)
    80007944:	01513423          	sd	s5,8(sp)
    80007948:	04010413          	addi	s0,sp,64
    8000794c:	000017b7          	lui	a5,0x1
    80007950:	01100993          	li	s3,17
    80007954:	00f487b3          	add	a5,s1,a5
    80007958:	01b99993          	slli	s3,s3,0x1b
    8000795c:	06f9e063          	bltu	s3,a5,800079bc <kinit+0xa4>
    80007960:	00005a97          	auipc	s5,0x5
    80007964:	440a8a93          	addi	s5,s5,1088 # 8000cda0 <end>
    80007968:	0754ec63          	bltu	s1,s5,800079e0 <kinit+0xc8>
    8000796c:	0734fa63          	bgeu	s1,s3,800079e0 <kinit+0xc8>
    80007970:	00088a37          	lui	s4,0x88
    80007974:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007978:	00004917          	auipc	s2,0x4
    8000797c:	0d890913          	addi	s2,s2,216 # 8000ba50 <kmem>
    80007980:	00ca1a13          	slli	s4,s4,0xc
    80007984:	0140006f          	j	80007998 <kinit+0x80>
    80007988:	000017b7          	lui	a5,0x1
    8000798c:	00f484b3          	add	s1,s1,a5
    80007990:	0554e863          	bltu	s1,s5,800079e0 <kinit+0xc8>
    80007994:	0534f663          	bgeu	s1,s3,800079e0 <kinit+0xc8>
    80007998:	00001637          	lui	a2,0x1
    8000799c:	00100593          	li	a1,1
    800079a0:	00048513          	mv	a0,s1
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	5e4080e7          	jalr	1508(ra) # 80007f88 <__memset>
    800079ac:	00093783          	ld	a5,0(s2)
    800079b0:	00f4b023          	sd	a5,0(s1)
    800079b4:	00993023          	sd	s1,0(s2)
    800079b8:	fd4498e3          	bne	s1,s4,80007988 <kinit+0x70>
    800079bc:	03813083          	ld	ra,56(sp)
    800079c0:	03013403          	ld	s0,48(sp)
    800079c4:	02813483          	ld	s1,40(sp)
    800079c8:	02013903          	ld	s2,32(sp)
    800079cc:	01813983          	ld	s3,24(sp)
    800079d0:	01013a03          	ld	s4,16(sp)
    800079d4:	00813a83          	ld	s5,8(sp)
    800079d8:	04010113          	addi	sp,sp,64
    800079dc:	00008067          	ret
    800079e0:	00002517          	auipc	a0,0x2
    800079e4:	da050513          	addi	a0,a0,-608 # 80009780 <digits+0x18>
    800079e8:	fffff097          	auipc	ra,0xfffff
    800079ec:	4b4080e7          	jalr	1204(ra) # 80006e9c <panic>

00000000800079f0 <freerange>:
    800079f0:	fc010113          	addi	sp,sp,-64
    800079f4:	000017b7          	lui	a5,0x1
    800079f8:	02913423          	sd	s1,40(sp)
    800079fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a00:	009504b3          	add	s1,a0,s1
    80007a04:	fffff537          	lui	a0,0xfffff
    80007a08:	02813823          	sd	s0,48(sp)
    80007a0c:	02113c23          	sd	ra,56(sp)
    80007a10:	03213023          	sd	s2,32(sp)
    80007a14:	01313c23          	sd	s3,24(sp)
    80007a18:	01413823          	sd	s4,16(sp)
    80007a1c:	01513423          	sd	s5,8(sp)
    80007a20:	01613023          	sd	s6,0(sp)
    80007a24:	04010413          	addi	s0,sp,64
    80007a28:	00a4f4b3          	and	s1,s1,a0
    80007a2c:	00f487b3          	add	a5,s1,a5
    80007a30:	06f5e463          	bltu	a1,a5,80007a98 <freerange+0xa8>
    80007a34:	00005a97          	auipc	s5,0x5
    80007a38:	36ca8a93          	addi	s5,s5,876 # 8000cda0 <end>
    80007a3c:	0954e263          	bltu	s1,s5,80007ac0 <freerange+0xd0>
    80007a40:	01100993          	li	s3,17
    80007a44:	01b99993          	slli	s3,s3,0x1b
    80007a48:	0734fc63          	bgeu	s1,s3,80007ac0 <freerange+0xd0>
    80007a4c:	00058a13          	mv	s4,a1
    80007a50:	00004917          	auipc	s2,0x4
    80007a54:	00090913          	mv	s2,s2
    80007a58:	00002b37          	lui	s6,0x2
    80007a5c:	0140006f          	j	80007a70 <freerange+0x80>
    80007a60:	000017b7          	lui	a5,0x1
    80007a64:	00f484b3          	add	s1,s1,a5
    80007a68:	0554ec63          	bltu	s1,s5,80007ac0 <freerange+0xd0>
    80007a6c:	0534fa63          	bgeu	s1,s3,80007ac0 <freerange+0xd0>
    80007a70:	00001637          	lui	a2,0x1
    80007a74:	00100593          	li	a1,1
    80007a78:	00048513          	mv	a0,s1
    80007a7c:	00000097          	auipc	ra,0x0
    80007a80:	50c080e7          	jalr	1292(ra) # 80007f88 <__memset>
    80007a84:	00093703          	ld	a4,0(s2) # 8000ba50 <kmem>
    80007a88:	016487b3          	add	a5,s1,s6
    80007a8c:	00e4b023          	sd	a4,0(s1)
    80007a90:	00993023          	sd	s1,0(s2)
    80007a94:	fcfa76e3          	bgeu	s4,a5,80007a60 <freerange+0x70>
    80007a98:	03813083          	ld	ra,56(sp)
    80007a9c:	03013403          	ld	s0,48(sp)
    80007aa0:	02813483          	ld	s1,40(sp)
    80007aa4:	02013903          	ld	s2,32(sp)
    80007aa8:	01813983          	ld	s3,24(sp)
    80007aac:	01013a03          	ld	s4,16(sp)
    80007ab0:	00813a83          	ld	s5,8(sp)
    80007ab4:	00013b03          	ld	s6,0(sp)
    80007ab8:	04010113          	addi	sp,sp,64
    80007abc:	00008067          	ret
    80007ac0:	00002517          	auipc	a0,0x2
    80007ac4:	cc050513          	addi	a0,a0,-832 # 80009780 <digits+0x18>
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	3d4080e7          	jalr	980(ra) # 80006e9c <panic>

0000000080007ad0 <kfree>:
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00813823          	sd	s0,16(sp)
    80007ad8:	00113c23          	sd	ra,24(sp)
    80007adc:	00913423          	sd	s1,8(sp)
    80007ae0:	02010413          	addi	s0,sp,32
    80007ae4:	03451793          	slli	a5,a0,0x34
    80007ae8:	04079c63          	bnez	a5,80007b40 <kfree+0x70>
    80007aec:	00005797          	auipc	a5,0x5
    80007af0:	2b478793          	addi	a5,a5,692 # 8000cda0 <end>
    80007af4:	00050493          	mv	s1,a0
    80007af8:	04f56463          	bltu	a0,a5,80007b40 <kfree+0x70>
    80007afc:	01100793          	li	a5,17
    80007b00:	01b79793          	slli	a5,a5,0x1b
    80007b04:	02f57e63          	bgeu	a0,a5,80007b40 <kfree+0x70>
    80007b08:	00001637          	lui	a2,0x1
    80007b0c:	00100593          	li	a1,1
    80007b10:	00000097          	auipc	ra,0x0
    80007b14:	478080e7          	jalr	1144(ra) # 80007f88 <__memset>
    80007b18:	00004797          	auipc	a5,0x4
    80007b1c:	f3878793          	addi	a5,a5,-200 # 8000ba50 <kmem>
    80007b20:	0007b703          	ld	a4,0(a5)
    80007b24:	01813083          	ld	ra,24(sp)
    80007b28:	01013403          	ld	s0,16(sp)
    80007b2c:	00e4b023          	sd	a4,0(s1)
    80007b30:	0097b023          	sd	s1,0(a5)
    80007b34:	00813483          	ld	s1,8(sp)
    80007b38:	02010113          	addi	sp,sp,32
    80007b3c:	00008067          	ret
    80007b40:	00002517          	auipc	a0,0x2
    80007b44:	c4050513          	addi	a0,a0,-960 # 80009780 <digits+0x18>
    80007b48:	fffff097          	auipc	ra,0xfffff
    80007b4c:	354080e7          	jalr	852(ra) # 80006e9c <panic>

0000000080007b50 <kalloc>:
    80007b50:	fe010113          	addi	sp,sp,-32
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	00004797          	auipc	a5,0x4
    80007b68:	eec78793          	addi	a5,a5,-276 # 8000ba50 <kmem>
    80007b6c:	0007b483          	ld	s1,0(a5)
    80007b70:	02048063          	beqz	s1,80007b90 <kalloc+0x40>
    80007b74:	0004b703          	ld	a4,0(s1)
    80007b78:	00001637          	lui	a2,0x1
    80007b7c:	00500593          	li	a1,5
    80007b80:	00048513          	mv	a0,s1
    80007b84:	00e7b023          	sd	a4,0(a5)
    80007b88:	00000097          	auipc	ra,0x0
    80007b8c:	400080e7          	jalr	1024(ra) # 80007f88 <__memset>
    80007b90:	01813083          	ld	ra,24(sp)
    80007b94:	01013403          	ld	s0,16(sp)
    80007b98:	00048513          	mv	a0,s1
    80007b9c:	00813483          	ld	s1,8(sp)
    80007ba0:	02010113          	addi	sp,sp,32
    80007ba4:	00008067          	ret

0000000080007ba8 <initlock>:
    80007ba8:	ff010113          	addi	sp,sp,-16
    80007bac:	00813423          	sd	s0,8(sp)
    80007bb0:	01010413          	addi	s0,sp,16
    80007bb4:	00813403          	ld	s0,8(sp)
    80007bb8:	00b53423          	sd	a1,8(a0)
    80007bbc:	00052023          	sw	zero,0(a0)
    80007bc0:	00053823          	sd	zero,16(a0)
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00008067          	ret

0000000080007bcc <acquire>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00813823          	sd	s0,16(sp)
    80007bd4:	00913423          	sd	s1,8(sp)
    80007bd8:	00113c23          	sd	ra,24(sp)
    80007bdc:	01213023          	sd	s2,0(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	00050493          	mv	s1,a0
    80007be8:	10002973          	csrr	s2,sstatus
    80007bec:	100027f3          	csrr	a5,sstatus
    80007bf0:	ffd7f793          	andi	a5,a5,-3
    80007bf4:	10079073          	csrw	sstatus,a5
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	8e0080e7          	jalr	-1824(ra) # 800064d8 <mycpu>
    80007c00:	07852783          	lw	a5,120(a0)
    80007c04:	06078e63          	beqz	a5,80007c80 <acquire+0xb4>
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	8d0080e7          	jalr	-1840(ra) # 800064d8 <mycpu>
    80007c10:	07852783          	lw	a5,120(a0)
    80007c14:	0004a703          	lw	a4,0(s1)
    80007c18:	0017879b          	addiw	a5,a5,1
    80007c1c:	06f52c23          	sw	a5,120(a0)
    80007c20:	04071063          	bnez	a4,80007c60 <acquire+0x94>
    80007c24:	00100713          	li	a4,1
    80007c28:	00070793          	mv	a5,a4
    80007c2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c30:	0007879b          	sext.w	a5,a5
    80007c34:	fe079ae3          	bnez	a5,80007c28 <acquire+0x5c>
    80007c38:	0ff0000f          	fence
    80007c3c:	fffff097          	auipc	ra,0xfffff
    80007c40:	89c080e7          	jalr	-1892(ra) # 800064d8 <mycpu>
    80007c44:	01813083          	ld	ra,24(sp)
    80007c48:	01013403          	ld	s0,16(sp)
    80007c4c:	00a4b823          	sd	a0,16(s1)
    80007c50:	00013903          	ld	s2,0(sp)
    80007c54:	00813483          	ld	s1,8(sp)
    80007c58:	02010113          	addi	sp,sp,32
    80007c5c:	00008067          	ret
    80007c60:	0104b903          	ld	s2,16(s1)
    80007c64:	fffff097          	auipc	ra,0xfffff
    80007c68:	874080e7          	jalr	-1932(ra) # 800064d8 <mycpu>
    80007c6c:	faa91ce3          	bne	s2,a0,80007c24 <acquire+0x58>
    80007c70:	00002517          	auipc	a0,0x2
    80007c74:	b1850513          	addi	a0,a0,-1256 # 80009788 <digits+0x20>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	224080e7          	jalr	548(ra) # 80006e9c <panic>
    80007c80:	00195913          	srli	s2,s2,0x1
    80007c84:	fffff097          	auipc	ra,0xfffff
    80007c88:	854080e7          	jalr	-1964(ra) # 800064d8 <mycpu>
    80007c8c:	00197913          	andi	s2,s2,1
    80007c90:	07252e23          	sw	s2,124(a0)
    80007c94:	f75ff06f          	j	80007c08 <acquire+0x3c>

0000000080007c98 <release>:
    80007c98:	fe010113          	addi	sp,sp,-32
    80007c9c:	00813823          	sd	s0,16(sp)
    80007ca0:	00113c23          	sd	ra,24(sp)
    80007ca4:	00913423          	sd	s1,8(sp)
    80007ca8:	01213023          	sd	s2,0(sp)
    80007cac:	02010413          	addi	s0,sp,32
    80007cb0:	00052783          	lw	a5,0(a0)
    80007cb4:	00079a63          	bnez	a5,80007cc8 <release+0x30>
    80007cb8:	00002517          	auipc	a0,0x2
    80007cbc:	ad850513          	addi	a0,a0,-1320 # 80009790 <digits+0x28>
    80007cc0:	fffff097          	auipc	ra,0xfffff
    80007cc4:	1dc080e7          	jalr	476(ra) # 80006e9c <panic>
    80007cc8:	01053903          	ld	s2,16(a0)
    80007ccc:	00050493          	mv	s1,a0
    80007cd0:	fffff097          	auipc	ra,0xfffff
    80007cd4:	808080e7          	jalr	-2040(ra) # 800064d8 <mycpu>
    80007cd8:	fea910e3          	bne	s2,a0,80007cb8 <release+0x20>
    80007cdc:	0004b823          	sd	zero,16(s1)
    80007ce0:	0ff0000f          	fence
    80007ce4:	0f50000f          	fence	iorw,ow
    80007ce8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007cec:	ffffe097          	auipc	ra,0xffffe
    80007cf0:	7ec080e7          	jalr	2028(ra) # 800064d8 <mycpu>
    80007cf4:	100027f3          	csrr	a5,sstatus
    80007cf8:	0027f793          	andi	a5,a5,2
    80007cfc:	04079a63          	bnez	a5,80007d50 <release+0xb8>
    80007d00:	07852783          	lw	a5,120(a0)
    80007d04:	02f05e63          	blez	a5,80007d40 <release+0xa8>
    80007d08:	fff7871b          	addiw	a4,a5,-1
    80007d0c:	06e52c23          	sw	a4,120(a0)
    80007d10:	00071c63          	bnez	a4,80007d28 <release+0x90>
    80007d14:	07c52783          	lw	a5,124(a0)
    80007d18:	00078863          	beqz	a5,80007d28 <release+0x90>
    80007d1c:	100027f3          	csrr	a5,sstatus
    80007d20:	0027e793          	ori	a5,a5,2
    80007d24:	10079073          	csrw	sstatus,a5
    80007d28:	01813083          	ld	ra,24(sp)
    80007d2c:	01013403          	ld	s0,16(sp)
    80007d30:	00813483          	ld	s1,8(sp)
    80007d34:	00013903          	ld	s2,0(sp)
    80007d38:	02010113          	addi	sp,sp,32
    80007d3c:	00008067          	ret
    80007d40:	00002517          	auipc	a0,0x2
    80007d44:	a7050513          	addi	a0,a0,-1424 # 800097b0 <digits+0x48>
    80007d48:	fffff097          	auipc	ra,0xfffff
    80007d4c:	154080e7          	jalr	340(ra) # 80006e9c <panic>
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	a4850513          	addi	a0,a0,-1464 # 80009798 <digits+0x30>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	144080e7          	jalr	324(ra) # 80006e9c <panic>

0000000080007d60 <holding>:
    80007d60:	00052783          	lw	a5,0(a0)
    80007d64:	00079663          	bnez	a5,80007d70 <holding+0x10>
    80007d68:	00000513          	li	a0,0
    80007d6c:	00008067          	ret
    80007d70:	fe010113          	addi	sp,sp,-32
    80007d74:	00813823          	sd	s0,16(sp)
    80007d78:	00913423          	sd	s1,8(sp)
    80007d7c:	00113c23          	sd	ra,24(sp)
    80007d80:	02010413          	addi	s0,sp,32
    80007d84:	01053483          	ld	s1,16(a0)
    80007d88:	ffffe097          	auipc	ra,0xffffe
    80007d8c:	750080e7          	jalr	1872(ra) # 800064d8 <mycpu>
    80007d90:	01813083          	ld	ra,24(sp)
    80007d94:	01013403          	ld	s0,16(sp)
    80007d98:	40a48533          	sub	a0,s1,a0
    80007d9c:	00153513          	seqz	a0,a0
    80007da0:	00813483          	ld	s1,8(sp)
    80007da4:	02010113          	addi	sp,sp,32
    80007da8:	00008067          	ret

0000000080007dac <push_off>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00113c23          	sd	ra,24(sp)
    80007db8:	00913423          	sd	s1,8(sp)
    80007dbc:	02010413          	addi	s0,sp,32
    80007dc0:	100024f3          	csrr	s1,sstatus
    80007dc4:	100027f3          	csrr	a5,sstatus
    80007dc8:	ffd7f793          	andi	a5,a5,-3
    80007dcc:	10079073          	csrw	sstatus,a5
    80007dd0:	ffffe097          	auipc	ra,0xffffe
    80007dd4:	708080e7          	jalr	1800(ra) # 800064d8 <mycpu>
    80007dd8:	07852783          	lw	a5,120(a0)
    80007ddc:	02078663          	beqz	a5,80007e08 <push_off+0x5c>
    80007de0:	ffffe097          	auipc	ra,0xffffe
    80007de4:	6f8080e7          	jalr	1784(ra) # 800064d8 <mycpu>
    80007de8:	07852783          	lw	a5,120(a0)
    80007dec:	01813083          	ld	ra,24(sp)
    80007df0:	01013403          	ld	s0,16(sp)
    80007df4:	0017879b          	addiw	a5,a5,1
    80007df8:	06f52c23          	sw	a5,120(a0)
    80007dfc:	00813483          	ld	s1,8(sp)
    80007e00:	02010113          	addi	sp,sp,32
    80007e04:	00008067          	ret
    80007e08:	0014d493          	srli	s1,s1,0x1
    80007e0c:	ffffe097          	auipc	ra,0xffffe
    80007e10:	6cc080e7          	jalr	1740(ra) # 800064d8 <mycpu>
    80007e14:	0014f493          	andi	s1,s1,1
    80007e18:	06952e23          	sw	s1,124(a0)
    80007e1c:	fc5ff06f          	j	80007de0 <push_off+0x34>

0000000080007e20 <pop_off>:
    80007e20:	ff010113          	addi	sp,sp,-16
    80007e24:	00813023          	sd	s0,0(sp)
    80007e28:	00113423          	sd	ra,8(sp)
    80007e2c:	01010413          	addi	s0,sp,16
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	6a8080e7          	jalr	1704(ra) # 800064d8 <mycpu>
    80007e38:	100027f3          	csrr	a5,sstatus
    80007e3c:	0027f793          	andi	a5,a5,2
    80007e40:	04079663          	bnez	a5,80007e8c <pop_off+0x6c>
    80007e44:	07852783          	lw	a5,120(a0)
    80007e48:	02f05a63          	blez	a5,80007e7c <pop_off+0x5c>
    80007e4c:	fff7871b          	addiw	a4,a5,-1
    80007e50:	06e52c23          	sw	a4,120(a0)
    80007e54:	00071c63          	bnez	a4,80007e6c <pop_off+0x4c>
    80007e58:	07c52783          	lw	a5,124(a0)
    80007e5c:	00078863          	beqz	a5,80007e6c <pop_off+0x4c>
    80007e60:	100027f3          	csrr	a5,sstatus
    80007e64:	0027e793          	ori	a5,a5,2
    80007e68:	10079073          	csrw	sstatus,a5
    80007e6c:	00813083          	ld	ra,8(sp)
    80007e70:	00013403          	ld	s0,0(sp)
    80007e74:	01010113          	addi	sp,sp,16
    80007e78:	00008067          	ret
    80007e7c:	00002517          	auipc	a0,0x2
    80007e80:	93450513          	addi	a0,a0,-1740 # 800097b0 <digits+0x48>
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	018080e7          	jalr	24(ra) # 80006e9c <panic>
    80007e8c:	00002517          	auipc	a0,0x2
    80007e90:	90c50513          	addi	a0,a0,-1780 # 80009798 <digits+0x30>
    80007e94:	fffff097          	auipc	ra,0xfffff
    80007e98:	008080e7          	jalr	8(ra) # 80006e9c <panic>

0000000080007e9c <push_on>:
    80007e9c:	fe010113          	addi	sp,sp,-32
    80007ea0:	00813823          	sd	s0,16(sp)
    80007ea4:	00113c23          	sd	ra,24(sp)
    80007ea8:	00913423          	sd	s1,8(sp)
    80007eac:	02010413          	addi	s0,sp,32
    80007eb0:	100024f3          	csrr	s1,sstatus
    80007eb4:	100027f3          	csrr	a5,sstatus
    80007eb8:	0027e793          	ori	a5,a5,2
    80007ebc:	10079073          	csrw	sstatus,a5
    80007ec0:	ffffe097          	auipc	ra,0xffffe
    80007ec4:	618080e7          	jalr	1560(ra) # 800064d8 <mycpu>
    80007ec8:	07852783          	lw	a5,120(a0)
    80007ecc:	02078663          	beqz	a5,80007ef8 <push_on+0x5c>
    80007ed0:	ffffe097          	auipc	ra,0xffffe
    80007ed4:	608080e7          	jalr	1544(ra) # 800064d8 <mycpu>
    80007ed8:	07852783          	lw	a5,120(a0)
    80007edc:	01813083          	ld	ra,24(sp)
    80007ee0:	01013403          	ld	s0,16(sp)
    80007ee4:	0017879b          	addiw	a5,a5,1
    80007ee8:	06f52c23          	sw	a5,120(a0)
    80007eec:	00813483          	ld	s1,8(sp)
    80007ef0:	02010113          	addi	sp,sp,32
    80007ef4:	00008067          	ret
    80007ef8:	0014d493          	srli	s1,s1,0x1
    80007efc:	ffffe097          	auipc	ra,0xffffe
    80007f00:	5dc080e7          	jalr	1500(ra) # 800064d8 <mycpu>
    80007f04:	0014f493          	andi	s1,s1,1
    80007f08:	06952e23          	sw	s1,124(a0)
    80007f0c:	fc5ff06f          	j	80007ed0 <push_on+0x34>

0000000080007f10 <pop_on>:
    80007f10:	ff010113          	addi	sp,sp,-16
    80007f14:	00813023          	sd	s0,0(sp)
    80007f18:	00113423          	sd	ra,8(sp)
    80007f1c:	01010413          	addi	s0,sp,16
    80007f20:	ffffe097          	auipc	ra,0xffffe
    80007f24:	5b8080e7          	jalr	1464(ra) # 800064d8 <mycpu>
    80007f28:	100027f3          	csrr	a5,sstatus
    80007f2c:	0027f793          	andi	a5,a5,2
    80007f30:	04078463          	beqz	a5,80007f78 <pop_on+0x68>
    80007f34:	07852783          	lw	a5,120(a0)
    80007f38:	02f05863          	blez	a5,80007f68 <pop_on+0x58>
    80007f3c:	fff7879b          	addiw	a5,a5,-1
    80007f40:	06f52c23          	sw	a5,120(a0)
    80007f44:	07853783          	ld	a5,120(a0)
    80007f48:	00079863          	bnez	a5,80007f58 <pop_on+0x48>
    80007f4c:	100027f3          	csrr	a5,sstatus
    80007f50:	ffd7f793          	andi	a5,a5,-3
    80007f54:	10079073          	csrw	sstatus,a5
    80007f58:	00813083          	ld	ra,8(sp)
    80007f5c:	00013403          	ld	s0,0(sp)
    80007f60:	01010113          	addi	sp,sp,16
    80007f64:	00008067          	ret
    80007f68:	00002517          	auipc	a0,0x2
    80007f6c:	87050513          	addi	a0,a0,-1936 # 800097d8 <digits+0x70>
    80007f70:	fffff097          	auipc	ra,0xfffff
    80007f74:	f2c080e7          	jalr	-212(ra) # 80006e9c <panic>
    80007f78:	00002517          	auipc	a0,0x2
    80007f7c:	84050513          	addi	a0,a0,-1984 # 800097b8 <digits+0x50>
    80007f80:	fffff097          	auipc	ra,0xfffff
    80007f84:	f1c080e7          	jalr	-228(ra) # 80006e9c <panic>

0000000080007f88 <__memset>:
    80007f88:	ff010113          	addi	sp,sp,-16
    80007f8c:	00813423          	sd	s0,8(sp)
    80007f90:	01010413          	addi	s0,sp,16
    80007f94:	1a060e63          	beqz	a2,80008150 <__memset+0x1c8>
    80007f98:	40a007b3          	neg	a5,a0
    80007f9c:	0077f793          	andi	a5,a5,7
    80007fa0:	00778693          	addi	a3,a5,7
    80007fa4:	00b00813          	li	a6,11
    80007fa8:	0ff5f593          	andi	a1,a1,255
    80007fac:	fff6071b          	addiw	a4,a2,-1
    80007fb0:	1b06e663          	bltu	a3,a6,8000815c <__memset+0x1d4>
    80007fb4:	1cd76463          	bltu	a4,a3,8000817c <__memset+0x1f4>
    80007fb8:	1a078e63          	beqz	a5,80008174 <__memset+0x1ec>
    80007fbc:	00b50023          	sb	a1,0(a0)
    80007fc0:	00100713          	li	a4,1
    80007fc4:	1ae78463          	beq	a5,a4,8000816c <__memset+0x1e4>
    80007fc8:	00b500a3          	sb	a1,1(a0)
    80007fcc:	00200713          	li	a4,2
    80007fd0:	1ae78a63          	beq	a5,a4,80008184 <__memset+0x1fc>
    80007fd4:	00b50123          	sb	a1,2(a0)
    80007fd8:	00300713          	li	a4,3
    80007fdc:	18e78463          	beq	a5,a4,80008164 <__memset+0x1dc>
    80007fe0:	00b501a3          	sb	a1,3(a0)
    80007fe4:	00400713          	li	a4,4
    80007fe8:	1ae78263          	beq	a5,a4,8000818c <__memset+0x204>
    80007fec:	00b50223          	sb	a1,4(a0)
    80007ff0:	00500713          	li	a4,5
    80007ff4:	1ae78063          	beq	a5,a4,80008194 <__memset+0x20c>
    80007ff8:	00b502a3          	sb	a1,5(a0)
    80007ffc:	00700713          	li	a4,7
    80008000:	18e79e63          	bne	a5,a4,8000819c <__memset+0x214>
    80008004:	00b50323          	sb	a1,6(a0)
    80008008:	00700e93          	li	t4,7
    8000800c:	00859713          	slli	a4,a1,0x8
    80008010:	00e5e733          	or	a4,a1,a4
    80008014:	01059e13          	slli	t3,a1,0x10
    80008018:	01c76e33          	or	t3,a4,t3
    8000801c:	01859313          	slli	t1,a1,0x18
    80008020:	006e6333          	or	t1,t3,t1
    80008024:	02059893          	slli	a7,a1,0x20
    80008028:	40f60e3b          	subw	t3,a2,a5
    8000802c:	011368b3          	or	a7,t1,a7
    80008030:	02859813          	slli	a6,a1,0x28
    80008034:	0108e833          	or	a6,a7,a6
    80008038:	03059693          	slli	a3,a1,0x30
    8000803c:	003e589b          	srliw	a7,t3,0x3
    80008040:	00d866b3          	or	a3,a6,a3
    80008044:	03859713          	slli	a4,a1,0x38
    80008048:	00389813          	slli	a6,a7,0x3
    8000804c:	00f507b3          	add	a5,a0,a5
    80008050:	00e6e733          	or	a4,a3,a4
    80008054:	000e089b          	sext.w	a7,t3
    80008058:	00f806b3          	add	a3,a6,a5
    8000805c:	00e7b023          	sd	a4,0(a5)
    80008060:	00878793          	addi	a5,a5,8
    80008064:	fed79ce3          	bne	a5,a3,8000805c <__memset+0xd4>
    80008068:	ff8e7793          	andi	a5,t3,-8
    8000806c:	0007871b          	sext.w	a4,a5
    80008070:	01d787bb          	addw	a5,a5,t4
    80008074:	0ce88e63          	beq	a7,a4,80008150 <__memset+0x1c8>
    80008078:	00f50733          	add	a4,a0,a5
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	0017871b          	addiw	a4,a5,1
    80008084:	0cc77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	0027871b          	addiw	a4,a5,2
    80008094:	0ac77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0037871b          	addiw	a4,a5,3
    800080a4:	0ac77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0047871b          	addiw	a4,a5,4
    800080b4:	08c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0057871b          	addiw	a4,a5,5
    800080c4:	08c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0067871b          	addiw	a4,a5,6
    800080d4:	06c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0077871b          	addiw	a4,a5,7
    800080e4:	06c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0087871b          	addiw	a4,a5,8
    800080f4:	04c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0097871b          	addiw	a4,a5,9
    80008104:	04c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	00a7871b          	addiw	a4,a5,10
    80008114:	02c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	00b7871b          	addiw	a4,a5,11
    80008124:	02c77663          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	00c7871b          	addiw	a4,a5,12
    80008134:	00c77e63          	bgeu	a4,a2,80008150 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00d7879b          	addiw	a5,a5,13
    80008144:	00c7f663          	bgeu	a5,a2,80008150 <__memset+0x1c8>
    80008148:	00f507b3          	add	a5,a0,a5
    8000814c:	00b78023          	sb	a1,0(a5)
    80008150:	00813403          	ld	s0,8(sp)
    80008154:	01010113          	addi	sp,sp,16
    80008158:	00008067          	ret
    8000815c:	00b00693          	li	a3,11
    80008160:	e55ff06f          	j	80007fb4 <__memset+0x2c>
    80008164:	00300e93          	li	t4,3
    80008168:	ea5ff06f          	j	8000800c <__memset+0x84>
    8000816c:	00100e93          	li	t4,1
    80008170:	e9dff06f          	j	8000800c <__memset+0x84>
    80008174:	00000e93          	li	t4,0
    80008178:	e95ff06f          	j	8000800c <__memset+0x84>
    8000817c:	00000793          	li	a5,0
    80008180:	ef9ff06f          	j	80008078 <__memset+0xf0>
    80008184:	00200e93          	li	t4,2
    80008188:	e85ff06f          	j	8000800c <__memset+0x84>
    8000818c:	00400e93          	li	t4,4
    80008190:	e7dff06f          	j	8000800c <__memset+0x84>
    80008194:	00500e93          	li	t4,5
    80008198:	e75ff06f          	j	8000800c <__memset+0x84>
    8000819c:	00600e93          	li	t4,6
    800081a0:	e6dff06f          	j	8000800c <__memset+0x84>

00000000800081a4 <__memmove>:
    800081a4:	ff010113          	addi	sp,sp,-16
    800081a8:	00813423          	sd	s0,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	0e060863          	beqz	a2,800082a0 <__memmove+0xfc>
    800081b4:	fff6069b          	addiw	a3,a2,-1
    800081b8:	0006881b          	sext.w	a6,a3
    800081bc:	0ea5e863          	bltu	a1,a0,800082ac <__memmove+0x108>
    800081c0:	00758713          	addi	a4,a1,7
    800081c4:	00a5e7b3          	or	a5,a1,a0
    800081c8:	40a70733          	sub	a4,a4,a0
    800081cc:	0077f793          	andi	a5,a5,7
    800081d0:	00f73713          	sltiu	a4,a4,15
    800081d4:	00174713          	xori	a4,a4,1
    800081d8:	0017b793          	seqz	a5,a5
    800081dc:	00e7f7b3          	and	a5,a5,a4
    800081e0:	10078863          	beqz	a5,800082f0 <__memmove+0x14c>
    800081e4:	00900793          	li	a5,9
    800081e8:	1107f463          	bgeu	a5,a6,800082f0 <__memmove+0x14c>
    800081ec:	0036581b          	srliw	a6,a2,0x3
    800081f0:	fff8081b          	addiw	a6,a6,-1
    800081f4:	02081813          	slli	a6,a6,0x20
    800081f8:	01d85893          	srli	a7,a6,0x1d
    800081fc:	00858813          	addi	a6,a1,8
    80008200:	00058793          	mv	a5,a1
    80008204:	00050713          	mv	a4,a0
    80008208:	01088833          	add	a6,a7,a6
    8000820c:	0007b883          	ld	a7,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	00870713          	addi	a4,a4,8
    80008218:	ff173c23          	sd	a7,-8(a4)
    8000821c:	ff0798e3          	bne	a5,a6,8000820c <__memmove+0x68>
    80008220:	ff867713          	andi	a4,a2,-8
    80008224:	02071793          	slli	a5,a4,0x20
    80008228:	0207d793          	srli	a5,a5,0x20
    8000822c:	00f585b3          	add	a1,a1,a5
    80008230:	40e686bb          	subw	a3,a3,a4
    80008234:	00f507b3          	add	a5,a0,a5
    80008238:	06e60463          	beq	a2,a4,800082a0 <__memmove+0xfc>
    8000823c:	0005c703          	lbu	a4,0(a1)
    80008240:	00e78023          	sb	a4,0(a5)
    80008244:	04068e63          	beqz	a3,800082a0 <__memmove+0xfc>
    80008248:	0015c603          	lbu	a2,1(a1)
    8000824c:	00100713          	li	a4,1
    80008250:	00c780a3          	sb	a2,1(a5)
    80008254:	04e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008258:	0025c603          	lbu	a2,2(a1)
    8000825c:	00200713          	li	a4,2
    80008260:	00c78123          	sb	a2,2(a5)
    80008264:	02e68e63          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008268:	0035c603          	lbu	a2,3(a1)
    8000826c:	00300713          	li	a4,3
    80008270:	00c781a3          	sb	a2,3(a5)
    80008274:	02e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008278:	0045c603          	lbu	a2,4(a1)
    8000827c:	00400713          	li	a4,4
    80008280:	00c78223          	sb	a2,4(a5)
    80008284:	00e68e63          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008288:	0055c603          	lbu	a2,5(a1)
    8000828c:	00500713          	li	a4,5
    80008290:	00c782a3          	sb	a2,5(a5)
    80008294:	00e68663          	beq	a3,a4,800082a0 <__memmove+0xfc>
    80008298:	0065c703          	lbu	a4,6(a1)
    8000829c:	00e78323          	sb	a4,6(a5)
    800082a0:	00813403          	ld	s0,8(sp)
    800082a4:	01010113          	addi	sp,sp,16
    800082a8:	00008067          	ret
    800082ac:	02061713          	slli	a4,a2,0x20
    800082b0:	02075713          	srli	a4,a4,0x20
    800082b4:	00e587b3          	add	a5,a1,a4
    800082b8:	f0f574e3          	bgeu	a0,a5,800081c0 <__memmove+0x1c>
    800082bc:	02069613          	slli	a2,a3,0x20
    800082c0:	02065613          	srli	a2,a2,0x20
    800082c4:	fff64613          	not	a2,a2
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00c78633          	add	a2,a5,a2
    800082d0:	fff7c683          	lbu	a3,-1(a5)
    800082d4:	fff78793          	addi	a5,a5,-1
    800082d8:	fff70713          	addi	a4,a4,-1
    800082dc:	00d70023          	sb	a3,0(a4)
    800082e0:	fec798e3          	bne	a5,a2,800082d0 <__memmove+0x12c>
    800082e4:	00813403          	ld	s0,8(sp)
    800082e8:	01010113          	addi	sp,sp,16
    800082ec:	00008067          	ret
    800082f0:	02069713          	slli	a4,a3,0x20
    800082f4:	02075713          	srli	a4,a4,0x20
    800082f8:	00170713          	addi	a4,a4,1
    800082fc:	00e50733          	add	a4,a0,a4
    80008300:	00050793          	mv	a5,a0
    80008304:	0005c683          	lbu	a3,0(a1)
    80008308:	00178793          	addi	a5,a5,1
    8000830c:	00158593          	addi	a1,a1,1
    80008310:	fed78fa3          	sb	a3,-1(a5)
    80008314:	fee798e3          	bne	a5,a4,80008304 <__memmove+0x160>
    80008318:	f89ff06f          	j	800082a0 <__memmove+0xfc>

000000008000831c <__putc>:
    8000831c:	fe010113          	addi	sp,sp,-32
    80008320:	00813823          	sd	s0,16(sp)
    80008324:	00113c23          	sd	ra,24(sp)
    80008328:	02010413          	addi	s0,sp,32
    8000832c:	00050793          	mv	a5,a0
    80008330:	fef40593          	addi	a1,s0,-17
    80008334:	00100613          	li	a2,1
    80008338:	00000513          	li	a0,0
    8000833c:	fef407a3          	sb	a5,-17(s0)
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	b3c080e7          	jalr	-1220(ra) # 80006e7c <console_write>
    80008348:	01813083          	ld	ra,24(sp)
    8000834c:	01013403          	ld	s0,16(sp)
    80008350:	02010113          	addi	sp,sp,32
    80008354:	00008067          	ret

0000000080008358 <__getc>:
    80008358:	fe010113          	addi	sp,sp,-32
    8000835c:	00813823          	sd	s0,16(sp)
    80008360:	00113c23          	sd	ra,24(sp)
    80008364:	02010413          	addi	s0,sp,32
    80008368:	fe840593          	addi	a1,s0,-24
    8000836c:	00100613          	li	a2,1
    80008370:	00000513          	li	a0,0
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	ae8080e7          	jalr	-1304(ra) # 80006e5c <console_read>
    8000837c:	fe844503          	lbu	a0,-24(s0)
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	02010113          	addi	sp,sp,32
    8000838c:	00008067          	ret

0000000080008390 <console_handler>:
    80008390:	fe010113          	addi	sp,sp,-32
    80008394:	00813823          	sd	s0,16(sp)
    80008398:	00113c23          	sd	ra,24(sp)
    8000839c:	00913423          	sd	s1,8(sp)
    800083a0:	02010413          	addi	s0,sp,32
    800083a4:	14202773          	csrr	a4,scause
    800083a8:	100027f3          	csrr	a5,sstatus
    800083ac:	0027f793          	andi	a5,a5,2
    800083b0:	06079e63          	bnez	a5,8000842c <console_handler+0x9c>
    800083b4:	00074c63          	bltz	a4,800083cc <console_handler+0x3c>
    800083b8:	01813083          	ld	ra,24(sp)
    800083bc:	01013403          	ld	s0,16(sp)
    800083c0:	00813483          	ld	s1,8(sp)
    800083c4:	02010113          	addi	sp,sp,32
    800083c8:	00008067          	ret
    800083cc:	0ff77713          	andi	a4,a4,255
    800083d0:	00900793          	li	a5,9
    800083d4:	fef712e3          	bne	a4,a5,800083b8 <console_handler+0x28>
    800083d8:	ffffe097          	auipc	ra,0xffffe
    800083dc:	6dc080e7          	jalr	1756(ra) # 80006ab4 <plic_claim>
    800083e0:	00a00793          	li	a5,10
    800083e4:	00050493          	mv	s1,a0
    800083e8:	02f50c63          	beq	a0,a5,80008420 <console_handler+0x90>
    800083ec:	fc0506e3          	beqz	a0,800083b8 <console_handler+0x28>
    800083f0:	00050593          	mv	a1,a0
    800083f4:	00001517          	auipc	a0,0x1
    800083f8:	2ec50513          	addi	a0,a0,748 # 800096e0 <_ZL6digits+0xf8>
    800083fc:	fffff097          	auipc	ra,0xfffff
    80008400:	afc080e7          	jalr	-1284(ra) # 80006ef8 <__printf>
    80008404:	01013403          	ld	s0,16(sp)
    80008408:	01813083          	ld	ra,24(sp)
    8000840c:	00048513          	mv	a0,s1
    80008410:	00813483          	ld	s1,8(sp)
    80008414:	02010113          	addi	sp,sp,32
    80008418:	ffffe317          	auipc	t1,0xffffe
    8000841c:	6d430067          	jr	1748(t1) # 80006aec <plic_complete>
    80008420:	fffff097          	auipc	ra,0xfffff
    80008424:	3e0080e7          	jalr	992(ra) # 80007800 <uartintr>
    80008428:	fddff06f          	j	80008404 <console_handler+0x74>
    8000842c:	00001517          	auipc	a0,0x1
    80008430:	3b450513          	addi	a0,a0,948 # 800097e0 <digits+0x78>
    80008434:	fffff097          	auipc	ra,0xfffff
    80008438:	a68080e7          	jalr	-1432(ra) # 80006e9c <panic>
	...
