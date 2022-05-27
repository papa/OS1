
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a4013103          	ld	sp,-1472(sp) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	268060ef          	jal	ra,80006284 <start>

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
    80001080:	145020ef          	jal	ra,800039c4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000151c:	374080e7          	jalr	884(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    8000154c:	344080e7          	jalr	836(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    8000156c:	324080e7          	jalr	804(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001570:	00048513          	mv	a0,s1
    80001574:	00002097          	auipc	ra,0x2
    80001578:	388080e7          	jalr	904(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000157c:	00008517          	auipc	a0,0x8
    80001580:	b8450513          	addi	a0,a0,-1148 # 80009100 <CONSOLE_STATUS+0xf0>
    80001584:	00002097          	auipc	ra,0x2
    80001588:	308080e7          	jalr	776(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    800015e4:	2ac080e7          	jalr	684(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001604:	28c080e7          	jalr	652(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001608:	00048513          	mv	a0,s1
    8000160c:	00002097          	auipc	ra,0x2
    80001610:	2f0080e7          	jalr	752(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001614:	00008517          	auipc	a0,0x8
    80001618:	aec50513          	addi	a0,a0,-1300 # 80009100 <CONSOLE_STATUS+0xf0>
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	270080e7          	jalr	624(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    8000168c:	204080e7          	jalr	516(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    80001690:	00048513          	mv	a0,s1
    80001694:	00002097          	auipc	ra,0x2
    80001698:	268080e7          	jalr	616(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
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
    800016d8:	1b8080e7          	jalr	440(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001704:	18c080e7          	jalr	396(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001708:	00048513          	mv	a0,s1
    8000170c:	00002097          	auipc	ra,0x2
    80001710:	1f0080e7          	jalr	496(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	9ec50513          	addi	a0,a0,-1556 # 80009100 <CONSOLE_STATUS+0xf0>
    8000171c:	00002097          	auipc	ra,0x2
    80001720:	170080e7          	jalr	368(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001768:	33c72703          	lw	a4,828(a4) # 8000baa0 <head>
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
    8000178c:	31848493          	addi	s1,s1,792 # 8000baa0 <head>
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
    800017b4:	b9c080e7          	jalr	-1124(ra) # 8000834c <__putc>
        sem_signal(spaceAvailable);
    800017b8:	0204b503          	ld	a0,32(s1)
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c40080e7          	jalr	-960(ra) # 800013fc <sem_signal>
    while(head!=10){
    800017c4:	0000a717          	auipc	a4,0xa
    800017c8:	2dc72703          	lw	a4,732(a4) # 8000baa0 <head>
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
    800017f0:	2dc72703          	lw	a4,732(a4) # 8000bac8 <tail>
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
    80001814:	29048493          	addi	s1,s1,656 # 8000baa0 <head>
    80001818:	0204b503          	ld	a0,32(s1)
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	bb4080e7          	jalr	-1100(ra) # 800013d0 <sem_wait>
        buffer[tail] = string[tail];
    80001824:	0284a783          	lw	a5,40(s1)
    80001828:	0000a717          	auipc	a4,0xa
    8000182c:	09870713          	addi	a4,a4,152 # 8000b8c0 <string>
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
    80001858:	27472703          	lw	a4,628(a4) # 8000bac8 <tail>
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
    8000189c:	b8c080e7          	jalr	-1140(ra) # 80003424 <_Znwm>
    800018a0:	00050493          	mv	s1,a0
    800018a4:	00000613          	li	a2,0
    800018a8:	00000597          	auipc	a1,0x0
    800018ac:	c8458593          	addi	a1,a1,-892 # 8000152c <_Z15thread1FunctionPv>
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	d0c080e7          	jalr	-756(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	c38080e7          	jalr	-968(ra) # 800034f4 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018c4:	01000513          	li	a0,16
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	b5c080e7          	jalr	-1188(ra) # 80003424 <_Znwm>
    800018d0:	00050493          	mv	s1,a0
    800018d4:	00000613          	li	a2,0
    800018d8:	00000597          	auipc	a1,0x0
    800018dc:	cec58593          	addi	a1,a1,-788 # 800015c4 <_Z15thread2FunctionPv>
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	cdc080e7          	jalr	-804(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	c08080e7          	jalr	-1016(ra) # 800034f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	f10080e7          	jalr	-240(ra) # 80003804 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    800018fc:	00007517          	auipc	a0,0x7
    80001900:	76c50513          	addi	a0,a0,1900 # 80009068 <CONSOLE_STATUS+0x58>
    80001904:	00002097          	auipc	ra,0x2
    80001908:	f88080e7          	jalr	-120(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    8000190c:	00002097          	auipc	ra,0x2
    80001910:	f18080e7          	jalr	-232(ra) # 80003824 <_ZN5Riscv17disableInterruptsEv>
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
    80001938:	b18080e7          	jalr	-1256(ra) # 8000344c <_ZdlPv>
    8000193c:	00090513          	mv	a0,s2
    80001940:	0000b097          	auipc	ra,0xb
    80001944:	308080e7          	jalr	776(ra) # 8000cc48 <_Unwind_Resume>
    80001948:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00002097          	auipc	ra,0x2
    80001954:	afc080e7          	jalr	-1284(ra) # 8000344c <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	2ec080e7          	jalr	748(ra) # 8000cc48 <_Unwind_Resume>

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
    80001984:	aa4080e7          	jalr	-1372(ra) # 80003424 <_Znwm>
    80001988:	00050493          	mv	s1,a0
    8000198c:	00000613          	li	a2,0
    80001990:	00000597          	auipc	a1,0x0
    80001994:	b7058593          	addi	a1,a1,-1168 # 80001500 <_Z4idlePv>
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	c24080e7          	jalr	-988(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	b50080e7          	jalr	-1200(ra) # 800034f4 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019ac:	01000513          	li	a0,16
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	a74080e7          	jalr	-1420(ra) # 80003424 <_Znwm>
    800019b8:	00050493          	mv	s1,a0
    800019bc:	00000613          	li	a2,0
    800019c0:	00000597          	auipc	a1,0x0
    800019c4:	b6c58593          	addi	a1,a1,-1172 # 8000152c <_Z15thread1FunctionPv>
    800019c8:	00002097          	auipc	ra,0x2
    800019cc:	bf4080e7          	jalr	-1036(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019d0:	00048513          	mv	a0,s1
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	b20080e7          	jalr	-1248(ra) # 800034f4 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019dc:	01000513          	li	a0,16
    800019e0:	00002097          	auipc	ra,0x2
    800019e4:	a44080e7          	jalr	-1468(ra) # 80003424 <_Znwm>
    800019e8:	00050493          	mv	s1,a0
    800019ec:	00000613          	li	a2,0
    800019f0:	00000597          	auipc	a1,0x0
    800019f4:	cc858593          	addi	a1,a1,-824 # 800016b8 <_Z20thread2FunctionTest2Pv>
    800019f8:	00002097          	auipc	ra,0x2
    800019fc:	bc4080e7          	jalr	-1084(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	af0080e7          	jalr	-1296(ra) # 800034f4 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a0c:	00002097          	auipc	ra,0x2
    80001a10:	df8080e7          	jalr	-520(ra) # 80003804 <_ZN5Riscv16enableInterruptsEv>
    Riscv::printString("End...\n");
    80001a14:	00007517          	auipc	a0,0x7
    80001a18:	65450513          	addi	a0,a0,1620 # 80009068 <CONSOLE_STATUS+0x58>
    80001a1c:	00002097          	auipc	ra,0x2
    80001a20:	e70080e7          	jalr	-400(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	e00080e7          	jalr	-512(ra) # 80003824 <_ZN5Riscv17disableInterruptsEv>
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
    80001a50:	a00080e7          	jalr	-1536(ra) # 8000344c <_ZdlPv>
    80001a54:	00090513          	mv	a0,s2
    80001a58:	0000b097          	auipc	ra,0xb
    80001a5c:	1f0080e7          	jalr	496(ra) # 8000cc48 <_Unwind_Resume>
    80001a60:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00002097          	auipc	ra,0x2
    80001a6c:	9e4080e7          	jalr	-1564(ra) # 8000344c <_ZdlPv>
    80001a70:	00090513          	mv	a0,s2
    80001a74:	0000b097          	auipc	ra,0xb
    80001a78:	1d4080e7          	jalr	468(ra) # 8000cc48 <_Unwind_Resume>
    80001a7c:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	9c8080e7          	jalr	-1592(ra) # 8000344c <_ZdlPv>
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	0000b097          	auipc	ra,0xb
    80001a94:	1b8080e7          	jalr	440(ra) # 8000cc48 <_Unwind_Resume>

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
    80001ab8:	dd8080e7          	jalr	-552(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001afc:	d94080e7          	jalr	-620(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001b50:	d40080e7          	jalr	-704(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001b98:	cf8080e7          	jalr	-776(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001bdc:	cb4080e7          	jalr	-844(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
            return;
    80001be0:	f21ff06f          	j	80001b00 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001be4:	00007517          	auipc	a0,0x7
    80001be8:	4a450513          	addi	a0,a0,1188 # 80009088 <CONSOLE_STATUS+0x78>
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	ca0080e7          	jalr	-864(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001c14:	c7c080e7          	jalr	-900(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c18:	0000a797          	auipc	a5,0xa
    80001c1c:	e387b783          	ld	a5,-456(a5) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c20:	0007b503          	ld	a0,0(a5)
    80001c24:	0000a797          	auipc	a5,0xa
    80001c28:	e047b783          	ld	a5,-508(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001c50:	c40080e7          	jalr	-960(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret
        Riscv::printString("OK\n");
    80001c64:	00007517          	auipc	a0,0x7
    80001c68:	42450513          	addi	a0,a0,1060 # 80009088 <CONSOLE_STATUS+0x78>
    80001c6c:	00002097          	auipc	ra,0x2
    80001c70:	c20080e7          	jalr	-992(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001ca0:	bf0080e7          	jalr	-1040(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001cec:	c14080e7          	jalr	-1004(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001cf0:	00007517          	auipc	a0,0x7
    80001cf4:	41050513          	addi	a0,a0,1040 # 80009100 <CONSOLE_STATUS+0xf0>
    80001cf8:	00002097          	auipc	ra,0x2
    80001cfc:	b94080e7          	jalr	-1132(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d00:	00291793          	slli	a5,s2,0x2
    80001d04:	01278933          	add	s2,a5,s2
    80001d08:	00191913          	slli	s2,s2,0x1
    80001d0c:	03390863          	beq	s2,s3,80001d3c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d10:	00007517          	auipc	a0,0x7
    80001d14:	37050513          	addi	a0,a0,880 # 80009080 <CONSOLE_STATUS+0x70>
    80001d18:	00002097          	auipc	ra,0x2
    80001d1c:	b74080e7          	jalr	-1164(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001d48:	b48080e7          	jalr	-1208(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001d6c:	b24080e7          	jalr	-1244(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001d98:	af8080e7          	jalr	-1288(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80001d9c:	00813083          	ld	ra,8(sp)
    80001da0:	00013403          	ld	s0,0(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret
        Riscv::printString("OK\n");
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	2dc50513          	addi	a0,a0,732 # 80009088 <CONSOLE_STATUS+0x78>
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	ad8080e7          	jalr	-1320(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001de4:	aac080e7          	jalr	-1364(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001e28:	a68080e7          	jalr	-1432(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001eb0:	9e0080e7          	jalr	-1568(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
                return;
    80001eb4:	f79ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001eb8:	00007517          	auipc	a0,0x7
    80001ebc:	22050513          	addi	a0,a0,544 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001ec0:	00002097          	auipc	ra,0x2
    80001ec4:	9cc080e7          	jalr	-1588(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001f28:	968080e7          	jalr	-1688(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
                return;
    80001f2c:	f01ff06f          	j	80001e2c <_Z13stressTestingv+0x6c>
                Riscv::printString("not Ok\n");
    80001f30:	00007517          	auipc	a0,0x7
    80001f34:	1a850513          	addi	a0,a0,424 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f38:	00002097          	auipc	ra,0x2
    80001f3c:	954080e7          	jalr	-1708(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001f58:	938080e7          	jalr	-1736(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80001f7c:	7b0080e7          	jalr	1968(ra) # 80003728 <_ZN14PeriodicThreadC1Em>
    80001f80:	0000a797          	auipc	a5,0xa
    80001f84:	99078793          	addi	a5,a5,-1648 # 8000b910 <_ZTV12TestPeriodic+0x10>
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
    80001fc0:	468080e7          	jalr	1128(ra) # 80003424 <_Znwm>
    80001fc4:	00050913          	mv	s2,a0
    80001fc8:	03200593          	li	a1,50
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	f94080e7          	jalr	-108(ra) # 80001f60 <_ZN12TestPeriodicC1Em>
    t->start();
    80001fd4:	00090513          	mv	a0,s2
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	51c080e7          	jalr	1308(ra) # 800034f4 <_ZN6Thread5startEv>
    while(true)
    80001fe0:	0000006f          	j	80001fe0 <_Z11threadTest3v+0x40>
    80001fe4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001fe8:	00090513          	mv	a0,s2
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	460080e7          	jalr	1120(ra) # 8000344c <_ZdlPv>
    80001ff4:	00048513          	mv	a0,s1
    80001ff8:	0000b097          	auipc	ra,0xb
    80001ffc:	c50080e7          	jalr	-944(ra) # 8000cc48 <_Unwind_Resume>

0000000080002000 <_Z11threadTestsv>:
{
    80002000:	ff010113          	addi	sp,sp,-16
    80002004:	00113423          	sd	ra,8(sp)
    80002008:	00813023          	sd	s0,0(sp)
    8000200c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f90080e7          	jalr	-112(ra) # 80001fa0 <_Z11threadTest3v>

0000000080002018 <_Z7myTestsv>:
{
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    threadTests();
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	fd8080e7          	jalr	-40(ra) # 80002000 <_Z11threadTestsv>

0000000080002030 <_Z10mallocTestv>:
{
    80002030:	fc010113          	addi	sp,sp,-64
    80002034:	02113c23          	sd	ra,56(sp)
    80002038:	02813823          	sd	s0,48(sp)
    8000203c:	02913423          	sd	s1,40(sp)
    80002040:	03213023          	sd	s2,32(sp)
    80002044:	01313c23          	sd	s3,24(sp)
    80002048:	01413823          	sd	s4,16(sp)
    8000204c:	01513423          	sd	s5,8(sp)
    80002050:	01613023          	sd	s6,0(sp)
    80002054:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    80002058:	00007517          	auipc	a0,0x7
    8000205c:	08850513          	addi	a0,a0,136 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002060:	00002097          	auipc	ra,0x2
    80002064:	82c080e7          	jalr	-2004(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    object* o = new object;
    80002068:	02c00513          	li	a0,44
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	3b8080e7          	jalr	952(ra) # 80003424 <_Znwm>
    80002074:	00050493          	mv	s1,a0
    o->a = 3;
    80002078:	00300793          	li	a5,3
    8000207c:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002080:	00a00513          	li	a0,10
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	1c4080e7          	jalr	452(ra) # 80001248 <mem_alloc>
    8000208c:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002090:	06400513          	li	a0,100
    80002094:	fffff097          	auipc	ra,0xfffff
    80002098:	1b4080e7          	jalr	436(ra) # 80001248 <mem_alloc>
    8000209c:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    800020a0:	3e800513          	li	a0,1000
    800020a4:	fffff097          	auipc	ra,0xfffff
    800020a8:	1a4080e7          	jalr	420(ra) # 80001248 <mem_alloc>
    800020ac:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    800020b0:	00002537          	lui	a0,0x2
    800020b4:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	190080e7          	jalr	400(ra) # 80001248 <mem_alloc>
    800020c0:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    800020c4:	00100513          	li	a0,1
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	180080e7          	jalr	384(ra) # 80001248 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    800020d0:	06090c63          	beqz	s2,80002148 <_Z10mallocTestv+0x118>
    800020d4:	00050b13          	mv	s6,a0
    800020d8:	06098863          	beqz	s3,80002148 <_Z10mallocTestv+0x118>
    800020dc:	060a0663          	beqz	s4,80002148 <_Z10mallocTestv+0x118>
    800020e0:	060a8463          	beqz	s5,80002148 <_Z10mallocTestv+0x118>
    800020e4:	06050263          	beqz	a0,80002148 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    800020e8:	00090513          	mv	a0,s2
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	360080e7          	jalr	864(ra) # 8000344c <_ZdlPv>
    delete (uint64*)m3;
    800020f4:	000a0513          	mv	a0,s4
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	354080e7          	jalr	852(ra) # 8000344c <_ZdlPv>
    delete (uint64*)m4;
    80002100:	000a8513          	mv	a0,s5
    80002104:	00001097          	auipc	ra,0x1
    80002108:	348080e7          	jalr	840(ra) # 8000344c <_ZdlPv>
    delete (uint64*)m2;
    8000210c:	00098513          	mv	a0,s3
    80002110:	00001097          	auipc	ra,0x1
    80002114:	33c080e7          	jalr	828(ra) # 8000344c <_ZdlPv>
    delete (uint64*)m5;
    80002118:	000b0513          	mv	a0,s6
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	330080e7          	jalr	816(ra) # 8000344c <_ZdlPv>
    delete o;
    80002124:	00048863          	beqz	s1,80002134 <_Z10mallocTestv+0x104>
    80002128:	00048513          	mv	a0,s1
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	320080e7          	jalr	800(ra) # 8000344c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80002134:	00007517          	auipc	a0,0x7
    80002138:	fd450513          	addi	a0,a0,-44 # 80009108 <CONSOLE_STATUS+0xf8>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	750080e7          	jalr	1872(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    80002144:	0140006f          	j	80002158 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    80002148:	00007517          	auipc	a0,0x7
    8000214c:	f3850513          	addi	a0,a0,-200 # 80009080 <CONSOLE_STATUS+0x70>
    80002150:	00001097          	auipc	ra,0x1
    80002154:	73c080e7          	jalr	1852(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80002158:	03813083          	ld	ra,56(sp)
    8000215c:	03013403          	ld	s0,48(sp)
    80002160:	02813483          	ld	s1,40(sp)
    80002164:	02013903          	ld	s2,32(sp)
    80002168:	01813983          	ld	s3,24(sp)
    8000216c:	01013a03          	ld	s4,16(sp)
    80002170:	00813a83          	ld	s5,8(sp)
    80002174:	00013b03          	ld	s6,0(sp)
    80002178:	04010113          	addi	sp,sp,64
    8000217c:	00008067          	ret

0000000080002180 <_Z16mallocEverythingv>:
{
    80002180:	fe010113          	addi	sp,sp,-32
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    80002194:	00007517          	auipc	a0,0x7
    80002198:	fa450513          	addi	a0,a0,-92 # 80009138 <CONSOLE_STATUS+0x128>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	6f0080e7          	jalr	1776(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    800021a4:	0000a797          	auipc	a5,0xa
    800021a8:	8847b783          	ld	a5,-1916(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021ac:	0007b503          	ld	a0,0(a5)
    800021b0:	0000a797          	auipc	a5,0xa
    800021b4:	8a07b783          	ld	a5,-1888(a5) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021b8:	0007b783          	ld	a5,0(a5)
    800021bc:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    800021c0:	ff050513          	addi	a0,a0,-16
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	084080e7          	jalr	132(ra) # 80001248 <mem_alloc>
    if(m!=nullptr){
    800021cc:	02050463          	beqz	a0,800021f4 <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    800021d0:	00007517          	auipc	a0,0x7
    800021d4:	eb050513          	addi	a0,a0,-336 # 80009080 <CONSOLE_STATUS+0x70>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	6b4080e7          	jalr	1716(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    800021e0:	01813083          	ld	ra,24(sp)
    800021e4:	01013403          	ld	s0,16(sp)
    800021e8:	00813483          	ld	s1,8(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    800021f4:	0000a797          	auipc	a5,0xa
    800021f8:	85c7b783          	ld	a5,-1956(a5) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021fc:	0007b503          	ld	a0,0(a5)
    80002200:	0000a797          	auipc	a5,0xa
    80002204:	8287b783          	ld	a5,-2008(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002208:	0007b783          	ld	a5,0(a5)
    8000220c:	40f50533          	sub	a0,a0,a5
    80002210:	ff050513          	addi	a0,a0,-16
    80002214:	00655513          	srli	a0,a0,0x6
    80002218:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    8000221c:	00651513          	slli	a0,a0,0x6
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	028080e7          	jalr	40(ra) # 80001248 <mem_alloc>
    80002228:	00050493          	mv	s1,a0
    if(m==nullptr){
    8000222c:	02050a63          	beqz	a0,80002260 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002230:	00100513          	li	a0,1
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	014080e7          	jalr	20(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    8000223c:	02050c63          	beqz	a0,80002274 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002240:	00048513          	mv	a0,s1
    80002244:	00001097          	auipc	ra,0x1
    80002248:	208080e7          	jalr	520(ra) # 8000344c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    8000224c:	00007517          	auipc	a0,0x7
    80002250:	f1c50513          	addi	a0,a0,-228 # 80009168 <CONSOLE_STATUS+0x158>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	638080e7          	jalr	1592(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    8000225c:	f85ff06f          	j	800021e0 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002260:	00007517          	auipc	a0,0x7
    80002264:	e2050513          	addi	a0,a0,-480 # 80009080 <CONSOLE_STATUS+0x70>
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	624080e7          	jalr	1572(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    80002270:	f71ff06f          	j	800021e0 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002274:	00007517          	auipc	a0,0x7
    80002278:	e0c50513          	addi	a0,a0,-500 # 80009080 <CONSOLE_STATUS+0x70>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	610080e7          	jalr	1552(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    80002284:	f5dff06f          	j	800021e0 <_Z16mallocEverythingv+0x60>

0000000080002288 <_Z17mallocGapFillTestv>:
{
    80002288:	f6010113          	addi	sp,sp,-160
    8000228c:	08113c23          	sd	ra,152(sp)
    80002290:	08813823          	sd	s0,144(sp)
    80002294:	08913423          	sd	s1,136(sp)
    80002298:	09213023          	sd	s2,128(sp)
    8000229c:	07313c23          	sd	s3,120(sp)
    800022a0:	07413823          	sd	s4,112(sp)
    800022a4:	07513423          	sd	s5,104(sp)
    800022a8:	07613023          	sd	s6,96(sp)
    800022ac:	05713c23          	sd	s7,88(sp)
    800022b0:	05813823          	sd	s8,80(sp)
    800022b4:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	ee850513          	addi	a0,a0,-280 # 800091a0 <CONSOLE_STATUS+0x190>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	5cc080e7          	jalr	1484(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    for(int i=0;i<N;i++)
    800022c8:	00000493          	li	s1,0
    800022cc:	00900793          	li	a5,9
    800022d0:	0697c863          	blt	a5,s1,80002340 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    800022d4:	0064951b          	slliw	a0,s1,0x6
    800022d8:	0015051b          	addiw	a0,a0,1
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	f6c080e7          	jalr	-148(ra) # 80001248 <mem_alloc>
    800022e4:	00349793          	slli	a5,s1,0x3
    800022e8:	fb040713          	addi	a4,s0,-80
    800022ec:	00f707b3          	add	a5,a4,a5
    800022f0:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    800022f4:	00050663          	beqz	a0,80002300 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    800022f8:	0014849b          	addiw	s1,s1,1
    800022fc:	fd1ff06f          	j	800022cc <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    80002300:	00007517          	auipc	a0,0x7
    80002304:	d8050513          	addi	a0,a0,-640 # 80009080 <CONSOLE_STATUS+0x70>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	584080e7          	jalr	1412(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80002310:	09813083          	ld	ra,152(sp)
    80002314:	09013403          	ld	s0,144(sp)
    80002318:	08813483          	ld	s1,136(sp)
    8000231c:	08013903          	ld	s2,128(sp)
    80002320:	07813983          	ld	s3,120(sp)
    80002324:	07013a03          	ld	s4,112(sp)
    80002328:	06813a83          	ld	s5,104(sp)
    8000232c:	06013b03          	ld	s6,96(sp)
    80002330:	05813b83          	ld	s7,88(sp)
    80002334:	05013c03          	ld	s8,80(sp)
    80002338:	0a010113          	addi	sp,sp,160
    8000233c:	00008067          	ret
    delete (uint64*)m[2];
    80002340:	f7043503          	ld	a0,-144(s0)
    80002344:	00050663          	beqz	a0,80002350 <_Z17mallocGapFillTestv+0xc8>
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	104080e7          	jalr	260(ra) # 8000344c <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002350:	00100513          	li	a0,1
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	ef4080e7          	jalr	-268(ra) # 80001248 <mem_alloc>
    8000235c:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002360:	00100513          	li	a0,1
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	ee4080e7          	jalr	-284(ra) # 80001248 <mem_alloc>
    8000236c:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002370:	00100513          	li	a0,1
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	ed4080e7          	jalr	-300(ra) # 80001248 <mem_alloc>
    8000237c:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002380:	08048863          	beqz	s1,80002410 <_Z17mallocGapFillTestv+0x188>
    80002384:	08090663          	beqz	s2,80002410 <_Z17mallocGapFillTestv+0x188>
    80002388:	08050463          	beqz	a0,80002410 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    8000238c:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002390:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002394:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002398:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    8000239c:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    800023a0:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    800023a4:	0897f063          	bgeu	a5,s1,80002424 <_Z17mallocGapFillTestv+0x19c>
    800023a8:	06a4fe63          	bgeu	s1,a0,80002424 <_Z17mallocGapFillTestv+0x19c>
    800023ac:	0727fc63          	bgeu	a5,s2,80002424 <_Z17mallocGapFillTestv+0x19c>
    800023b0:	06a97a63          	bgeu	s2,a0,80002424 <_Z17mallocGapFillTestv+0x19c>
    800023b4:	07367863          	bgeu	a2,s3,80002424 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800023b8:	00050663          	beqz	a0,800023c4 <_Z17mallocGapFillTestv+0x13c>
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	090080e7          	jalr	144(ra) # 8000344c <_ZdlPv>
    delete (uint64*)m[4];
    800023c4:	f8043503          	ld	a0,-128(s0)
    800023c8:	00050663          	beqz	a0,800023d4 <_Z17mallocGapFillTestv+0x14c>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	080080e7          	jalr	128(ra) # 8000344c <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    800023d4:	28000513          	li	a0,640
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	e70080e7          	jalr	-400(ra) # 80001248 <mem_alloc>
    800023e0:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    800023e4:	24000513          	li	a0,576
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	e60080e7          	jalr	-416(ra) # 80001248 <mem_alloc>
    800023f0:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    800023f4:	040c0263          	beqz	s8,80002438 <_Z17mallocGapFillTestv+0x1b0>
    800023f8:	04050063          	beqz	a0,80002438 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    800023fc:	04aa7863          	bgeu	s4,a0,8000244c <_Z17mallocGapFillTestv+0x1c4>
    80002400:	04ab7663          	bgeu	s6,a0,8000244c <_Z17mallocGapFillTestv+0x1c4>
    80002404:	055c7463          	bgeu	s8,s5,8000244c <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002408:	00000a13          	li	s4,0
    8000240c:	0580006f          	j	80002464 <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002410:	00007517          	auipc	a0,0x7
    80002414:	c7050513          	addi	a0,a0,-912 # 80009080 <CONSOLE_STATUS+0x70>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	474080e7          	jalr	1140(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    80002420:	ef1ff06f          	j	80002310 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002424:	00007517          	auipc	a0,0x7
    80002428:	c5c50513          	addi	a0,a0,-932 # 80009080 <CONSOLE_STATUS+0x70>
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	460080e7          	jalr	1120(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    80002434:	eddff06f          	j	80002310 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002438:	00007517          	auipc	a0,0x7
    8000243c:	c4850513          	addi	a0,a0,-952 # 80009080 <CONSOLE_STATUS+0x70>
    80002440:	00001097          	auipc	ra,0x1
    80002444:	44c080e7          	jalr	1100(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    80002448:	ec9ff06f          	j	80002310 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000244c:	00007517          	auipc	a0,0x7
    80002450:	c3450513          	addi	a0,a0,-972 # 80009080 <CONSOLE_STATUS+0x70>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	438080e7          	jalr	1080(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        return;
    8000245c:	eb5ff06f          	j	80002310 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002460:	001a0a1b          	addiw	s4,s4,1
    80002464:	00900793          	li	a5,9
    80002468:	0347c263          	blt	a5,s4,8000248c <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    8000246c:	003a1793          	slli	a5,s4,0x3
    80002470:	fb040713          	addi	a4,s0,-80
    80002474:	00f707b3          	add	a5,a4,a5
    80002478:	fb07b503          	ld	a0,-80(a5)
    8000247c:	fe0502e3          	beqz	a0,80002460 <_Z17mallocGapFillTestv+0x1d8>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	fcc080e7          	jalr	-52(ra) # 8000344c <_ZdlPv>
    80002488:	fd9ff06f          	j	80002460 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    8000248c:	00048513          	mv	a0,s1
    80002490:	00001097          	auipc	ra,0x1
    80002494:	fbc080e7          	jalr	-68(ra) # 8000344c <_ZdlPv>
    delete (uint64*)tmp2;
    80002498:	00090513          	mv	a0,s2
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	fb0080e7          	jalr	-80(ra) # 8000344c <_ZdlPv>
    delete (uint64*)tmp3;
    800024a4:	00098513          	mv	a0,s3
    800024a8:	00001097          	auipc	ra,0x1
    800024ac:	fa4080e7          	jalr	-92(ra) # 8000344c <_ZdlPv>
    delete (uint64*)tmp4;
    800024b0:	000c0513          	mv	a0,s8
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	f98080e7          	jalr	-104(ra) # 8000344c <_ZdlPv>
    delete (uint64*)tmp5;
    800024bc:	000b8513          	mv	a0,s7
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	f8c080e7          	jalr	-116(ra) # 8000344c <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800024c8:	00007517          	auipc	a0,0x7
    800024cc:	d2050513          	addi	a0,a0,-736 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	3bc080e7          	jalr	956(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    800024d8:	e39ff06f          	j	80002310 <_Z17mallocGapFillTestv+0x88>

00000000800024dc <_Z21memoryAllocationTestsv>:
{
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	d9c080e7          	jalr	-612(ra) # 80002288 <_Z17mallocGapFillTestv>
}
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <_Z8semTest1v>:

void semTest1()
{
    80002504:	fe010113          	addi	sp,sp,-32
    80002508:	00113c23          	sd	ra,24(sp)
    8000250c:	00813823          	sd	s0,16(sp)
    80002510:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002514:	00a00593          	li	a1,10
    80002518:	00009517          	auipc	a0,0x9
    8000251c:	5a850513          	addi	a0,a0,1448 # 8000bac0 <spaceAvailable>
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e4c080e7          	jalr	-436(ra) # 8000136c <sem_open>

    sem_open(&itemAvailable, 0);
    80002528:	00000593          	li	a1,0
    8000252c:	00009517          	auipc	a0,0x9
    80002530:	57c50513          	addi	a0,a0,1404 # 8000baa8 <itemAvailable>
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	e38080e7          	jalr	-456(ra) # 8000136c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    8000253c:	00000613          	li	a2,0
    80002540:	fffff597          	auipc	a1,0xfffff
    80002544:	2ac58593          	addi	a1,a1,684 # 800017ec <_Z9producerAPv>
    80002548:	fe840513          	addi	a0,s0,-24
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	d58080e7          	jalr	-680(ra) # 800012a4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    80002554:	00000613          	li	a2,0
    80002558:	fffff597          	auipc	a1,0xfffff
    8000255c:	20c58593          	addi	a1,a1,524 # 80001764 <_Z9consumerAPv>
    80002560:	fe040513          	addi	a0,s0,-32
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	d40080e7          	jalr	-704(ra) # 800012a4 <thread_create>
    8000256c:	00c0006f          	j	80002578 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	db4080e7          	jalr	-588(ra) # 80001324 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    80002578:	fe843503          	ld	a0,-24(s0)
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	3d0080e7          	jalr	976(ra) # 8000294c <_ZN3PCB10isFinishedEv>
    80002584:	fe0506e3          	beqz	a0,80002570 <_Z8semTest1v+0x6c>
    80002588:	fe843503          	ld	a0,-24(s0)
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	3c0080e7          	jalr	960(ra) # 8000294c <_ZN3PCB10isFinishedEv>
    80002594:	fc050ee3          	beqz	a0,80002570 <_Z8semTest1v+0x6c>

}
    80002598:	01813083          	ld	ra,24(sp)
    8000259c:	01013403          	ld	s0,16(sp)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret

00000000800025a8 <_Z14semaphoreTestsv>:
{
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    semTest1();
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	f4c080e7          	jalr	-180(ra) # 80002504 <_Z8semTest1v>
}
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00813423          	sd	s0,8(sp)
    800025d8:	01010413          	addi	s0,sp,16
    800025dc:	00813403          	ld	s0,8(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00813423          	sd	s0,8(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00009797          	auipc	a5,0x9
    80002614:	2d078793          	addi	a5,a5,720 # 8000b8e0 <_ZTV14PeriodicThread+0x10>
    80002618:	00f53023          	sd	a5,0(a0)
    8000261c:	00001097          	auipc	ra,0x1
    80002620:	d4c080e7          	jalr	-692(ra) # 80003368 <_ZN6ThreadD1Ev>
    80002624:	00813083          	ld	ra,8(sp)
    80002628:	00013403          	ld	s0,0(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_ZN14PeriodicThreadD0Ev>:
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	00813823          	sd	s0,16(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	02010413          	addi	s0,sp,32
    80002648:	00050493          	mv	s1,a0
    8000264c:	00009797          	auipc	a5,0x9
    80002650:	29478793          	addi	a5,a5,660 # 8000b8e0 <_ZTV14PeriodicThread+0x10>
    80002654:	00f53023          	sd	a5,0(a0)
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	d10080e7          	jalr	-752(ra) # 80003368 <_ZN6ThreadD1Ev>
    80002660:	00048513          	mv	a0,s1
    80002664:	00001097          	auipc	ra,0x1
    80002668:	de8080e7          	jalr	-536(ra) # 8000344c <_ZdlPv>
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret

0000000080002680 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    80002690:	00009797          	auipc	a5,0x9
    80002694:	25078793          	addi	a5,a5,592 # 8000b8e0 <_ZTV14PeriodicThread+0x10>
    80002698:	00f53023          	sd	a5,0(a0)
    8000269c:	00001097          	auipc	ra,0x1
    800026a0:	ccc080e7          	jalr	-820(ra) # 80003368 <_ZN6ThreadD1Ev>
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN12TestPeriodicD0Ev>:
    800026b4:	fe010113          	addi	sp,sp,-32
    800026b8:	00113c23          	sd	ra,24(sp)
    800026bc:	00813823          	sd	s0,16(sp)
    800026c0:	00913423          	sd	s1,8(sp)
    800026c4:	02010413          	addi	s0,sp,32
    800026c8:	00050493          	mv	s1,a0
    800026cc:	00009797          	auipc	a5,0x9
    800026d0:	21478793          	addi	a5,a5,532 # 8000b8e0 <_ZTV14PeriodicThread+0x10>
    800026d4:	00f53023          	sd	a5,0(a0)
    800026d8:	00001097          	auipc	ra,0x1
    800026dc:	c90080e7          	jalr	-880(ra) # 80003368 <_ZN6ThreadD1Ev>
    800026e0:	00048513          	mv	a0,s1
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	d68080e7          	jalr	-664(ra) # 8000344c <_ZdlPv>
    800026ec:	01813083          	ld	ra,24(sp)
    800026f0:	01013403          	ld	s0,16(sp)
    800026f4:	00813483          	ld	s1,8(sp)
    800026f8:	02010113          	addi	sp,sp,32
    800026fc:	00008067          	ret

0000000080002700 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    80002710:	00007517          	auipc	a0,0x7
    80002714:	b3050513          	addi	a0,a0,-1232 # 80009240 <CONSOLE_STATUS+0x230>
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	174080e7          	jalr	372(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002720:	00001097          	auipc	ra,0x1
    80002724:	14c080e7          	jalr	332(ra) # 8000386c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002728:	00009797          	auipc	a5,0x9
    8000272c:	3a87b783          	ld	a5,936(a5) # 8000bad0 <_ZN3PCB7runningE>
    80002730:	0207b703          	ld	a4,32(a5)
    80002734:	0287b503          	ld	a0,40(a5)
    80002738:	000700e7          	jalr	a4

    thread_exit();
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	c08080e7          	jalr	-1016(ra) # 80001344 <thread_exit>
}
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
    })
    80002760:	00050023          	sb	zero,0(a0)
    80002764:	00e53823          	sd	a4,16(a0)
    80002768:	00053c23          	sd	zero,24(a0)
    8000276c:	02b53023          	sd	a1,32(a0)
    80002770:	02c53423          	sd	a2,40(a0)
    80002774:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002778:	000017b7          	lui	a5,0x1
    8000277c:	00f686b3          	add	a3,a3,a5
    })
    80002780:	04d53023          	sd	a3,64(a0)
    80002784:	00000797          	auipc	a5,0x0
    80002788:	f7c78793          	addi	a5,a5,-132 # 80002700 <_ZN3PCB6runnerEv>
    8000278c:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    80002790:	00053423          	sd	zero,8(a0)
}
    80002794:	00813403          	ld	s0,8(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_ZN3PCB5sleepEm>:
{
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00813423          	sd	s0,8(sp)
    800027a8:	01010413          	addi	s0,sp,16
}
    800027ac:	00813403          	ld	s0,8(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN3PCB5startEv>:
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800027c8:	00001097          	auipc	ra,0x1
    800027cc:	a80080e7          	jalr	-1408(ra) # 80003248 <_ZN9Scheduler3putEP3PCB>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800027e0:	fe010113          	addi	sp,sp,-32
    800027e4:	00113c23          	sd	ra,24(sp)
    800027e8:	00813823          	sd	s0,16(sp)
    800027ec:	00913423          	sd	s1,8(sp)
    800027f0:	02010413          	addi	s0,sp,32
    //Scheduler::print();
    //Riscv::printInteger(Scheduler::getSize());
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800027f4:	00009497          	auipc	s1,0x9
    800027f8:	2dc4b483          	ld	s1,732(s1) # 8000bad0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800027fc:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    80002800:	00100793          	li	a5,1
    80002804:	04f70063          	beq	a4,a5,80002844 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002808:	00001097          	auipc	ra,0x1
    8000280c:	a94080e7          	jalr	-1388(ra) # 8000329c <_ZN9Scheduler3getEv>
    80002810:	00009797          	auipc	a5,0x9
    80002814:	2ca7b023          	sd	a0,704(a5) # 8000bad0 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002818:	00100793          	li	a5,1
    8000281c:	02f52c23          	sw	a5,56(a0)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    80002820:	04050593          	addi	a1,a0,64
    80002824:	04048513          	addi	a0,s1,64
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	a00080e7          	jalr	-1536(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret
        Scheduler::put(old);
    80002844:	00048513          	mv	a0,s1
    80002848:	00001097          	auipc	ra,0x1
    8000284c:	a00080e7          	jalr	-1536(ra) # 80003248 <_ZN9Scheduler3putEP3PCB>
    80002850:	fb9ff06f          	j	80002808 <_ZN3PCB8dispatchEv+0x28>

0000000080002854 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002864:	00001097          	auipc	ra,0x1
    80002868:	79c080e7          	jalr	1948(ra) # 80004000 <_Z7kmallocm>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    kfree(p);
    8000288c:	00001097          	auipc	ra,0x1
    80002890:	7d0080e7          	jalr	2000(ra) # 8000405c <_Z5kfreePv>
}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00113423          	sd	ra,8(sp)
    800028ac:	00813023          	sd	s0,0(sp)
    800028b0:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800028b4:	03053503          	ld	a0,48(a0)
    800028b8:	00001097          	auipc	ra,0x1
    800028bc:	7a4080e7          	jalr	1956(ra) # 8000405c <_Z5kfreePv>
}
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800028d0:	fe010113          	addi	sp,sp,-32
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800028e4:	05000513          	li	a0,80
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	f6c080e7          	jalr	-148(ra) # 80002854 <_ZN3PCBnwEm>
    800028f0:	00050493          	mv	s1,a0
    800028f4:	00000713          	li	a4,0
    800028f8:	00000693          	li	a3,0
    800028fc:	00000613          	li	a2,0
    80002900:	00000593          	li	a1,0
    80002904:	00000097          	auipc	ra,0x0
    80002908:	e50080e7          	jalr	-432(ra) # 80002754 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    8000290c:	00048513          	mv	a0,s1
    80002910:	00000097          	auipc	ra,0x0
    80002914:	ea8080e7          	jalr	-344(ra) # 800027b8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002918:	00100793          	li	a5,1
    8000291c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002920:	00001097          	auipc	ra,0x1
    80002924:	97c080e7          	jalr	-1668(ra) # 8000329c <_ZN9Scheduler3getEv>
    80002928:	00009797          	auipc	a5,0x9
    8000292c:	1aa7b423          	sd	a0,424(a5) # 8000bad0 <_ZN3PCB7runningE>
    80002930:	00100793          	li	a5,1
    80002934:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

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

0000000080002970 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00113423          	sd	ra,8(sp)
    80002978:	00813023          	sd	s0,0(sp)
    8000297c:	01010413          	addi	s0,sp,16
    Riscv::printString("Exiting thread...\n");
    80002980:	00007517          	auipc	a0,0x7
    80002984:	8d850513          	addi	a0,a0,-1832 # 80009258 <CONSOLE_STATUS+0x248>
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	f04080e7          	jalr	-252(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    PCB::timeSliceCounter = 0;
    80002990:	00009797          	auipc	a5,0x9
    80002994:	14078793          	addi	a5,a5,320 # 8000bad0 <_ZN3PCB7runningE>
    80002998:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    8000299c:	0007b783          	ld	a5,0(a5)
    800029a0:	00300713          	li	a4,3
    800029a4:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	e38080e7          	jalr	-456(ra) # 800027e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800029b0:	00000513          	li	a0,0
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00113423          	sd	ra,8(sp)
    800029cc:	00813023          	sd	s0,0(sp)
    800029d0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800029d4:	00009797          	auipc	a5,0x9
    800029d8:	1007b223          	sd	zero,260(a5) # 8000bad8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	e04080e7          	jalr	-508(ra) # 800027e0 <_ZN3PCB8dispatchEv>
}
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00113423          	sd	ra,8(sp)
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002a04:	00058713          	mv	a4,a1
    PCB::timeSliceCounter = 0;
    80002a08:	00009797          	auipc	a5,0x9
    80002a0c:	0c878793          	addi	a5,a5,200 # 8000bad0 <_ZN3PCB7runningE>
    80002a10:	0007b423          	sd	zero,8(a5)
    PCB::running->setTimeToSleep(time);
    80002a14:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002a18:	00e7bc23          	sd	a4,24(a5)
    SleepPCBList::insertSleepingPCB();
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	4e8080e7          	jalr	1256(ra) # 80002f04 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	dbc080e7          	jalr	-580(ra) # 800027e0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002a2c:	00000513          	li	a0,0
}
    80002a30:	00813083          	ld	ra,8(sp)
    80002a34:	00013403          	ld	s0,0(sp)
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002a40:	fd010113          	addi	sp,sp,-48
    80002a44:	02113423          	sd	ra,40(sp)
    80002a48:	02813023          	sd	s0,32(sp)
    80002a4c:	00913c23          	sd	s1,24(sp)
    80002a50:	01213823          	sd	s2,16(sp)
    80002a54:	01313423          	sd	s3,8(sp)
    80002a58:	01413023          	sd	s4,0(sp)
    80002a5c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a60:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a64:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a68:	00068a13          	mv	s4,a3
    //todo

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002a6c:	05000513          	li	a0,80
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	de4080e7          	jalr	-540(ra) # 80002854 <_ZN3PCBnwEm>
    80002a78:	00050493          	mv	s1,a0
    80002a7c:	00200713          	li	a4,2
    80002a80:	00009697          	auipc	a3,0x9
    80002a84:	0606b683          	ld	a3,96(a3) # 8000bae0 <_ZN3PCB10savedRegA4E>
    80002a88:	000a0613          	mv	a2,s4
    80002a8c:	00098593          	mv	a1,s3
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	cc4080e7          	jalr	-828(ra) # 80002754 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a98:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002a9c:	02048a63          	beqz	s1,80002ad0 <_ZN3PCB19threadCreateHandlerEv+0x90>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	d14080e7          	jalr	-748(ra) # 800027b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002aac:	00000513          	li	a0,0
    }
}
    80002ab0:	02813083          	ld	ra,40(sp)
    80002ab4:	02013403          	ld	s0,32(sp)
    80002ab8:	01813483          	ld	s1,24(sp)
    80002abc:	01013903          	ld	s2,16(sp)
    80002ac0:	00813983          	ld	s3,8(sp)
    80002ac4:	00013a03          	ld	s4,0(sp)
    80002ac8:	03010113          	addi	sp,sp,48
    80002acc:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002ad0:	fff00513          	li	a0,-1
    80002ad4:	fddff06f          	j	80002ab0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002ad8 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    //Riscv::printString("start handler\n");
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002ad8:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002adc:	02050863          	beqz	a0,80002b0c <_ZN3PCB18threadStartHandlerEv+0x34>
{
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00113423          	sd	ra,8(sp)
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	01010413          	addi	s0,sp,16
    {
        //Riscv::printString("started\n");
        pcb->start();
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	cc8080e7          	jalr	-824(ra) # 800027b8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002af8:	00000513          	li	a0,0
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }

}
    80002afc:	00813083          	ld	ra,8(sp)
    80002b00:	00013403          	ld	s0,0(sp)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b0c:	fff00513          	li	a0,-1
    80002b10:	00008067          	ret

0000000080002b14 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b14:	fd010113          	addi	sp,sp,-48
    80002b18:	02113423          	sd	ra,40(sp)
    80002b1c:	02813023          	sd	s0,32(sp)
    80002b20:	00913c23          	sd	s1,24(sp)
    80002b24:	01213823          	sd	s2,16(sp)
    80002b28:	01313423          	sd	s3,8(sp)
    80002b2c:	01413023          	sd	s4,0(sp)
    80002b30:	03010413          	addi	s0,sp,48
    //Riscv::printString("make pcb handler\n");
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b34:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b38:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b3c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002b40:	05000513          	li	a0,80
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	d10080e7          	jalr	-752(ra) # 80002854 <_ZN3PCBnwEm>
    80002b4c:	00050493          	mv	s1,a0
    80002b50:	00200713          	li	a4,2
    80002b54:	00009697          	auipc	a3,0x9
    80002b58:	f8c6b683          	ld	a3,-116(a3) # 8000bae0 <_ZN3PCB10savedRegA4E>
    80002b5c:	000a0613          	mv	a2,s4
    80002b60:	00098593          	mv	a1,s3
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	bf0080e7          	jalr	-1040(ra) # 80002754 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002b6c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002b70:	02048463          	beqz	s1,80002b98 <_ZN3PCB20threadMakePCBHandlerEv+0x84>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
            __asm__ volatile("li a0, 0");
    80002b74:	00000513          	li	a0,0
}
    80002b78:	02813083          	ld	ra,40(sp)
    80002b7c:	02013403          	ld	s0,32(sp)
    80002b80:	01813483          	ld	s1,24(sp)
    80002b84:	01013903          	ld	s2,16(sp)
    80002b88:	00813983          	ld	s3,8(sp)
    80002b8c:	00013a03          	ld	s4,0(sp)
    80002b90:	03010113          	addi	sp,sp,48
    80002b94:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b98:	fff00513          	li	a0,-1
    80002b9c:	fddff06f          	j	80002b78 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002ba0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002ba0:	fd010113          	addi	sp,sp,-48
    80002ba4:	02113423          	sd	ra,40(sp)
    80002ba8:	02813023          	sd	s0,32(sp)
    80002bac:	00913c23          	sd	s1,24(sp)
    80002bb0:	01213823          	sd	s2,16(sp)
    80002bb4:	01313423          	sd	s3,8(sp)
    80002bb8:	03010413          	addi	s0,sp,48
    80002bbc:	00050993          	mv	s3,a0
    80002bc0:	00058913          	mv	s2,a1
    80002bc4:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002bc8:	01000513          	li	a0,16
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	434080e7          	jalr	1076(ra) # 80004000 <_Z7kmallocm>
    newElem->next = 0;
    80002bd4:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002bd8:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002bdc:	00093783          	ld	a5,0(s2)
    80002be0:	02078663          	beqz	a5,80002c0c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002be4:	0004b783          	ld	a5,0(s1)
    80002be8:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002bec:	00a4b023          	sd	a0,0(s1)
    }
}
    80002bf0:	02813083          	ld	ra,40(sp)
    80002bf4:	02013403          	ld	s0,32(sp)
    80002bf8:	01813483          	ld	s1,24(sp)
    80002bfc:	01013903          	ld	s2,16(sp)
    80002c00:	00813983          	ld	s3,8(sp)
    80002c04:	03010113          	addi	sp,sp,48
    80002c08:	00008067          	ret
        head = tail = newElem;
    80002c0c:	00a4b023          	sd	a0,0(s1)
    80002c10:	00a93023          	sd	a0,0(s2)
    80002c14:	fddff06f          	j	80002bf0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002c18 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	02010413          	addi	s0,sp,32
    80002c2c:	00050793          	mv	a5,a0
    if(head == 0)
    80002c30:	00053503          	ld	a0,0(a0)
    80002c34:	02050e63          	beqz	a0,80002c70 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002c38:	00053703          	ld	a4,0(a0)
    80002c3c:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002c40:	02070463          	beqz	a4,80002c68 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002c44:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	414080e7          	jalr	1044(ra) # 8000405c <_Z5kfreePv>
    return c;
}
    80002c50:	00048513          	mv	a0,s1
    80002c54:	01813083          	ld	ra,24(sp)
    80002c58:	01013403          	ld	s0,16(sp)
    80002c5c:	00813483          	ld	s1,8(sp)
    80002c60:	02010113          	addi	sp,sp,32
    80002c64:	00008067          	ret
        tail = 0;
    80002c68:	0005b023          	sd	zero,0(a1)
    80002c6c:	fd9ff06f          	j	80002c44 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002c70:	00000493          	li	s1,0
    80002c74:	fddff06f          	j	80002c50 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002c78 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002c78:	fe010113          	addi	sp,sp,-32
    80002c7c:	00113c23          	sd	ra,24(sp)
    80002c80:	00813823          	sd	s0,16(sp)
    80002c84:	00913423          	sd	s1,8(sp)
    80002c88:	01213023          	sd	s2,0(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002c90:	01800513          	li	a0,24
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	670080e7          	jalr	1648(ra) # 80004304 <_ZN10KSemaphorenwEm>
    80002c9c:	00050493          	mv	s1,a0
    80002ca0:	00000593          	li	a1,0
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	410080e7          	jalr	1040(ra) # 800040b4 <_ZN10KSemaphoreC1Ei>
    80002cac:	00009797          	auipc	a5,0x9
    80002cb0:	e297be23          	sd	s1,-452(a5) # 8000bae8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002cb4:	01800513          	li	a0,24
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	64c080e7          	jalr	1612(ra) # 80004304 <_ZN10KSemaphorenwEm>
    80002cc0:	00050493          	mv	s1,a0
    80002cc4:	00000593          	li	a1,0
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	3ec080e7          	jalr	1004(ra) # 800040b4 <_ZN10KSemaphoreC1Ei>
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	e297b023          	sd	s1,-480(a5) # 8000baf0 <_ZN8KConsole19hasCharactersOutputE>
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00013903          	ld	s2,0(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret
    80002cf0:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	6a4080e7          	jalr	1700(ra) # 8000439c <_ZN10KSemaphoredlEPv>
    80002d00:	00090513          	mv	a0,s2
    80002d04:	0000a097          	auipc	ra,0xa
    80002d08:	f44080e7          	jalr	-188(ra) # 8000cc48 <_Unwind_Resume>
    80002d0c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002d10:	00048513          	mv	a0,s1
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	688080e7          	jalr	1672(ra) # 8000439c <_ZN10KSemaphoredlEPv>
    80002d1c:	00090513          	mv	a0,s2
    80002d20:	0000a097          	auipc	ra,0xa
    80002d24:	f28080e7          	jalr	-216(ra) # 8000cc48 <_Unwind_Resume>

0000000080002d28 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002d28:	ff010113          	addi	sp,sp,-16
    80002d2c:	00113423          	sd	ra,8(sp)
    80002d30:	00813023          	sd	s0,0(sp)
    80002d34:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002d38:	00009617          	auipc	a2,0x9
    80002d3c:	dc060613          	addi	a2,a2,-576 # 8000baf8 <_ZN8KConsole9tailInputE>
    80002d40:	00009597          	auipc	a1,0x9
    80002d44:	dc058593          	addi	a1,a1,-576 # 8000bb00 <_ZN8KConsole9headInputE>
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	e58080e7          	jalr	-424(ra) # 80002ba0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002d50:	00009517          	auipc	a0,0x9
    80002d54:	d9853503          	ld	a0,-616(a0) # 8000bae8 <_ZN8KConsole18hasCharactersInputE>
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	564080e7          	jalr	1380(ra) # 800042bc <_ZN10KSemaphore6signalEv>
}
    80002d60:	00813083          	ld	ra,8(sp)
    80002d64:	00013403          	ld	s0,0(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002d70:	00006517          	auipc	a0,0x6
    80002d74:	2a053503          	ld	a0,672(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002d78:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002d7c:	0017f793          	andi	a5,a5,1
    80002d80:	04078863          	beqz	a5,80002dd0 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002d84:	ff010113          	addi	sp,sp,-16
    80002d88:	00113423          	sd	ra,8(sp)
    80002d8c:	00813023          	sd	s0,0(sp)
    80002d90:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002d94:	00006517          	auipc	a0,0x6
    80002d98:	27453503          	ld	a0,628(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002d9c:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002da0:	0ff57513          	andi	a0,a0,255
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	f84080e7          	jalr	-124(ra) # 80002d28 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002dac:	00006517          	auipc	a0,0x6
    80002db0:	26453503          	ld	a0,612(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002db4:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002db8:	0017f793          	andi	a5,a5,1
    80002dbc:	fc079ce3          	bnez	a5,80002d94 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80002dc0:	00813083          	ld	ra,8(sp)
    80002dc4:	00013403          	ld	s0,0(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret
    80002dd0:	00008067          	ret

0000000080002dd4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00113423          	sd	ra,8(sp)
    80002ddc:	00813023          	sd	s0,0(sp)
    80002de0:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002de4:	00009517          	auipc	a0,0x9
    80002de8:	d0453503          	ld	a0,-764(a0) # 8000bae8 <_ZN8KConsole18hasCharactersInputE>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	370080e7          	jalr	880(ra) # 8000415c <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002df4:	00009597          	auipc	a1,0x9
    80002df8:	d0458593          	addi	a1,a1,-764 # 8000baf8 <_ZN8KConsole9tailInputE>
    80002dfc:	00009517          	auipc	a0,0x9
    80002e00:	d0450513          	addi	a0,a0,-764 # 8000bb00 <_ZN8KConsole9headInputE>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	e14080e7          	jalr	-492(ra) # 80002c18 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002e0c:	00813083          	ld	ra,8(sp)
    80002e10:	00013403          	ld	s0,0(sp)
    80002e14:	01010113          	addi	sp,sp,16
    80002e18:	00008067          	ret

0000000080002e1c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002e1c:	ff010113          	addi	sp,sp,-16
    80002e20:	00113423          	sd	ra,8(sp)
    80002e24:	00813023          	sd	s0,0(sp)
    80002e28:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002e2c:	00009617          	auipc	a2,0x9
    80002e30:	cdc60613          	addi	a2,a2,-804 # 8000bb08 <_ZN8KConsole10tailOutputE>
    80002e34:	00009597          	auipc	a1,0x9
    80002e38:	cdc58593          	addi	a1,a1,-804 # 8000bb10 <_ZN8KConsole10headOutputE>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	d64080e7          	jalr	-668(ra) # 80002ba0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002e44:	00009517          	auipc	a0,0x9
    80002e48:	cac53503          	ld	a0,-852(a0) # 8000baf0 <_ZN8KConsole19hasCharactersOutputE>
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	470080e7          	jalr	1136(ra) # 800042bc <_ZN10KSemaphore6signalEv>
}
    80002e54:	00813083          	ld	ra,8(sp)
    80002e58:	00013403          	ld	s0,0(sp)
    80002e5c:	01010113          	addi	sp,sp,16
    80002e60:	00008067          	ret

0000000080002e64 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00113423          	sd	ra,8(sp)
    80002e6c:	00813023          	sd	s0,0(sp)
    80002e70:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002e74:	00009517          	auipc	a0,0x9
    80002e78:	c7c53503          	ld	a0,-900(a0) # 8000baf0 <_ZN8KConsole19hasCharactersOutputE>
    80002e7c:	00001097          	auipc	ra,0x1
    80002e80:	2e0080e7          	jalr	736(ra) # 8000415c <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002e84:	00009597          	auipc	a1,0x9
    80002e88:	c8458593          	addi	a1,a1,-892 # 8000bb08 <_ZN8KConsole10tailOutputE>
    80002e8c:	00009517          	auipc	a0,0x9
    80002e90:	c8450513          	addi	a0,a0,-892 # 8000bb10 <_ZN8KConsole10headOutputE>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	d84080e7          	jalr	-636(ra) # 80002c18 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002e9c:	00813083          	ld	ra,8(sp)
    80002ea0:	00013403          	ld	s0,0(sp)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret

0000000080002eac <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002eac:	00006517          	auipc	a0,0x6
    80002eb0:	16453503          	ld	a0,356(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002eb4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002eb8:	0207f793          	andi	a5,a5,32
    80002ebc:	04078263          	beqz	a5,80002f00 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80002ec0:	ff010113          	addi	sp,sp,-16
    80002ec4:	00113423          	sd	ra,8(sp)
    80002ec8:	00813023          	sd	s0,0(sp)
    80002ecc:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	f94080e7          	jalr	-108(ra) # 80002e64 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80002ed8:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	13453503          	ld	a0,308(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002ee4:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80002ee8:	0207f793          	andi	a5,a5,32
    80002eec:	fe0792e3          	bnez	a5,80002ed0 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80002ef0:	00813083          	ld	ra,8(sp)
    80002ef4:	00013403          	ld	s0,0(sp)
    80002ef8:	01010113          	addi	sp,sp,16
    80002efc:	00008067          	ret
    80002f00:	00008067          	ret

0000000080002f04 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002f04:	ff010113          	addi	sp,sp,-16
    80002f08:	00813423          	sd	s0,8(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002f10:	00009797          	auipc	a5,0x9
    80002f14:	b387b783          	ld	a5,-1224(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f18:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80002f1c:	00500793          	li	a5,5
    80002f20:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002f24:	00009797          	auipc	a5,0x9
    80002f28:	bf47b783          	ld	a5,-1036(a5) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002f2c:	00000593          	li	a1,0
    while(curr != 0)
    80002f30:	02078063          	beqz	a5,80002f50 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002f34:	01863683          	ld	a3,24(a2)
    80002f38:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002f3c:	00e6e863          	bltu	a3,a4,80002f4c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002f40:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002f44:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f48:	fe9ff06f          	j	80002f30 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002f4c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002f50:	02058263          	beqz	a1,80002f74 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    80002f54:	01863783          	ld	a5,24(a2)
    80002f58:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002f5c:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002f60:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    80002f64:	00c5b423          	sd	a2,8(a1)
    }
}
    80002f68:	00813403          	ld	s0,8(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002f74:	00009797          	auipc	a5,0x9
    80002f78:	bac7b223          	sd	a2,-1116(a5) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002f7c:	00863783          	ld	a5,8(a2)
    80002f80:	fe0784e3          	beqz	a5,80002f68 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002f84:	0187b703          	ld	a4,24(a5)
    80002f88:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002f8c:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002f90:	00e7bc23          	sd	a4,24(a5)
    80002f94:	fd5ff06f          	j	80002f68 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

0000000080002f98 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002f98:	00009517          	auipc	a0,0x9
    80002f9c:	b8053503          	ld	a0,-1152(a0) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002fa0:	08050863          	beqz	a0,80003030 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002fa4:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002fa8:	00100713          	li	a4,1
    80002fac:	00e78863          	beq	a5,a4,80002fbc <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002fb0:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002fb4:	00f53c23          	sd	a5,24(a0)
    80002fb8:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002fbc:	06050a63          	beqz	a0,80003030 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80002fc0:	00009797          	auipc	a5,0x9
    80002fc4:	b587b783          	ld	a5,-1192(a5) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002fc8:	00a78663          	beq	a5,a0,80002fd4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002fcc:	01853783          	ld	a5,24(a0)
    80002fd0:	06079063          	bnez	a5,80003030 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80002fe8:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    80002fec:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	258080e7          	jalr	600(ra) # 80003248 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002ff8:	00009797          	auipc	a5,0x9
    80002ffc:	b297b023          	sd	s1,-1248(a5) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80003000:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003004:	00048c63          	beqz	s1,8000301c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003008:	00009797          	auipc	a5,0x9
    8000300c:	b107b783          	ld	a5,-1264(a5) # 8000bb18 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003010:	fc978ce3          	beq	a5,s1,80002fe8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003014:	0184b783          	ld	a5,24(s1)
    80003018:	fc0788e3          	beqz	a5,80002fe8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	00813483          	ld	s1,8(sp)
    80003028:	02010113          	addi	sp,sp,32
    8000302c:	00008067          	ret
    80003030:	00008067          	ret

0000000080003034 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	01213023          	sd	s2,0(sp)
    80003048:	02010413          	addi	s0,sp,32
    8000304c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003050:	00053503          	ld	a0,0(a0)
    80003054:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003058:	00001097          	auipc	ra,0x1
    8000305c:	004080e7          	jalr	4(ra) # 8000405c <_Z5kfreePv>
    first = newFirst;
    80003060:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003064:	00090e63          	beqz	s2,80003080 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	01013403          	ld	s0,16(sp)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	00013903          	ld	s2,0(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret
        first = last = 0;
    80003080:	0004b423          	sd	zero,8(s1)
    80003084:	0004b023          	sd	zero,0(s1)
}
    80003088:	fe1ff06f          	j	80003068 <_ZN5Queue3popEv+0x34>

000000008000308c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    8000308c:	fe010113          	addi	sp,sp,-32
    80003090:	00113c23          	sd	ra,24(sp)
    80003094:	00813823          	sd	s0,16(sp)
    80003098:	00913423          	sd	s1,8(sp)
    8000309c:	01213023          	sd	s2,0(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	00050493          	mv	s1,a0
    800030a8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800030ac:	01000513          	li	a0,16
    800030b0:	00001097          	auipc	ra,0x1
    800030b4:	f50080e7          	jalr	-176(ra) # 80004000 <_Z7kmallocm>
    newElem->data = t;
    800030b8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800030bc:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800030c0:	0004b783          	ld	a5,0(s1)
    800030c4:	02078463          	beqz	a5,800030ec <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800030c8:	0084b783          	ld	a5,8(s1)
    800030cc:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800030d0:	00a4b423          	sd	a0,8(s1)
    }
}
    800030d4:	01813083          	ld	ra,24(sp)
    800030d8:	01013403          	ld	s0,16(sp)
    800030dc:	00813483          	ld	s1,8(sp)
    800030e0:	00013903          	ld	s2,0(sp)
    800030e4:	02010113          	addi	sp,sp,32
    800030e8:	00008067          	ret
        first = newElem;
    800030ec:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800030f0:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800030f4:	00053423          	sd	zero,8(a0)
    800030f8:	0004b783          	ld	a5,0(s1)
    800030fc:	0007b423          	sd	zero,8(a5)
    80003100:	fd5ff06f          	j	800030d4 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003104 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00813423          	sd	s0,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003110:	00053503          	ld	a0,0(a0)
    80003114:	00050463          	beqz	a0,8000311c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003118:	00053503          	ld	a0,0(a0)
}
    8000311c:	00813403          	ld	s0,8(sp)
    80003120:	01010113          	addi	sp,sp,16
    80003124:	00008067          	ret

0000000080003128 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80003128:	ff010113          	addi	sp,sp,-16
    8000312c:	00813423          	sd	s0,8(sp)
    80003130:	01010413          	addi	s0,sp,16
    first = last = 0;
    80003134:	00053423          	sd	zero,8(a0)
    80003138:	00053023          	sd	zero,0(a0)
}
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80003148:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000314c:	04050063          	beqz	a0,8000318c <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    80003150:	fe010113          	addi	sp,sp,-32
    80003154:	00113c23          	sd	ra,24(sp)
    80003158:	00813823          	sd	s0,16(sp)
    8000315c:	00913423          	sd	s1,8(sp)
    80003160:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003164:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003168:	00001097          	auipc	ra,0x1
    8000316c:	ef4080e7          	jalr	-268(ra) # 8000405c <_Z5kfreePv>
        curr = curr->next;
    80003170:	00048513          	mv	a0,s1
    while(curr != 0)
    80003174:	fe0498e3          	bnez	s1,80003164 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003178:	01813083          	ld	ra,24(sp)
    8000317c:	01013403          	ld	s0,16(sp)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret
    8000318c:	00008067          	ret

0000000080003190 <_ZN5Queue4sizeEv>:

int Queue::size() {
    80003190:	ff010113          	addi	sp,sp,-16
    80003194:	00813423          	sd	s0,8(sp)
    80003198:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    8000319c:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800031a0:	00000513          	li	a0,0
    while(curr != 0)
    800031a4:	00078863          	beqz	a5,800031b4 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800031a8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800031ac:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031b0:	ff5ff06f          	j	800031a4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800031b4:	00813403          	ld	s0,8(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret

00000000800031c0 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800031d0:	00001097          	auipc	ra,0x1
    800031d4:	e30080e7          	jalr	-464(ra) # 80004000 <_Z7kmallocm>
}
    800031d8:	00813083          	ld	ra,8(sp)
    800031dc:	00013403          	ld	s0,0(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret

00000000800031e8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800031e8:	ff010113          	addi	sp,sp,-16
    800031ec:	00113423          	sd	ra,8(sp)
    800031f0:	00813023          	sd	s0,0(sp)
    800031f4:	01010413          	addi	s0,sp,16
    kfree(p);
    800031f8:	00001097          	auipc	ra,0x1
    800031fc:	e64080e7          	jalr	-412(ra) # 8000405c <_Z5kfreePv>
}
    80003200:	00813083          	ld	ra,8(sp)
    80003204:	00013403          	ld	s0,0(sp)
    80003208:	01010113          	addi	sp,sp,16
    8000320c:	00008067          	ret

0000000080003210 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003210:	ff010113          	addi	sp,sp,-16
    80003214:	00813423          	sd	s0,8(sp)
    80003218:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000321c:	00009797          	auipc	a5,0x9
    80003220:	9047b783          	ld	a5,-1788(a5) # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003224:	00000513          	li	a0,0
    while(curr != 0)
    80003228:	00078863          	beqz	a5,80003238 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000322c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003230:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003234:	ff5ff06f          	j	80003228 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003238:	0005051b          	sext.w	a0,a0
    8000323c:	00813403          	ld	s0,8(sp)
    80003240:	01010113          	addi	sp,sp,16
    80003244:	00008067          	ret

0000000080003248 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00813423          	sd	s0,8(sp)
    80003250:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003254:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003258:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000325c:	00009797          	auipc	a5,0x9
    80003260:	8c47b783          	ld	a5,-1852(a5) # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    80003264:	02078263          	beqz	a5,80003288 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003268:	00009797          	auipc	a5,0x9
    8000326c:	8b878793          	addi	a5,a5,-1864 # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    80003270:	0087b703          	ld	a4,8(a5)
    80003274:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003278:	00a7b423          	sd	a0,8(a5)
    }
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003288:	00009797          	auipc	a5,0x9
    8000328c:	89878793          	addi	a5,a5,-1896 # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    80003290:	00a7b423          	sd	a0,8(a5)
    80003294:	00a7b023          	sd	a0,0(a5)
    80003298:	fe5ff06f          	j	8000327c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000329c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800032a8:	00009517          	auipc	a0,0x9
    800032ac:	87853503          	ld	a0,-1928(a0) # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    800032b0:	00050c63          	beqz	a0,800032c8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800032b4:	00853783          	ld	a5,8(a0)
    800032b8:	00078e63          	beqz	a5,800032d4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800032bc:	00009717          	auipc	a4,0x9
    800032c0:	86f73223          	sd	a5,-1948(a4) # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800032c4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800032d4:	00009797          	auipc	a5,0x9
    800032d8:	84c78793          	addi	a5,a5,-1972 # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    800032dc:	0007b423          	sd	zero,8(a5)
    800032e0:	0007b023          	sd	zero,0(a5)
    800032e4:	fe1ff06f          	j	800032c4 <_ZN9Scheduler3getEv+0x28>

00000000800032e8 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00113c23          	sd	ra,24(sp)
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	02010413          	addi	s0,sp,32
    Riscv::printString("Scheduler print\n");
    800032fc:	00006517          	auipc	a0,0x6
    80003300:	f7450513          	addi	a0,a0,-140 # 80009270 <CONSOLE_STATUS+0x260>
    80003304:	00000097          	auipc	ra,0x0
    80003308:	588080e7          	jalr	1416(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    PCB* curr = schedulerPCBHead;
    8000330c:	00009497          	auipc	s1,0x9
    80003310:	8144b483          	ld	s1,-2028(s1) # 8000bb20 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003314:	00048c63          	beqz	s1,8000332c <_ZN9Scheduler5printEv+0x44>
    {
        Riscv::printInteger((uint64)curr);
    80003318:	00048513          	mv	a0,s1
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	5e0080e7          	jalr	1504(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
        curr = curr->nextPCB;
    80003324:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003328:	fedff06f          	j	80003314 <_ZN9Scheduler5printEv+0x2c>
    }
}
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret

0000000080003340 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00113423          	sd	ra,8(sp)
    80003348:	00813023          	sd	s0,0(sp)
    8000334c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003350:	00001097          	auipc	ra,0x1
    80003354:	87c080e7          	jalr	-1924(ra) # 80003bcc <_ZN5Riscv10kernelMainEv>
    80003358:	00813083          	ld	ra,8(sp)
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    80003378:	00008797          	auipc	a5,0x8
    8000337c:	5d078793          	addi	a5,a5,1488 # 8000b948 <_ZTV6Thread+0x10>
    80003380:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003384:	00853503          	ld	a0,8(a0)
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	ef0080e7          	jalr	-272(ra) # 80001278 <mem_free>
}
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00113423          	sd	ra,8(sp)
    800033a8:	00813023          	sd	s0,0(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	00008797          	auipc	a5,0x8
    800033b4:	5c078793          	addi	a5,a5,1472 # 8000b970 <_ZTV9Semaphore+0x10>
    800033b8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800033bc:	00853503          	ld	a0,8(a0)
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	eb8080e7          	jalr	-328(ra) # 80001278 <mem_free>
}
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <_ZN6Thread6runnerEPv>:
{
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	e9850513          	addi	a0,a0,-360 # 80009288 <CONSOLE_STATUS+0x278>
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	494080e7          	jalr	1172(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    thr->run();
    80003400:	0004b783          	ld	a5,0(s1)
    80003404:	0107b783          	ld	a5,16(a5)
    80003408:	00048513          	mv	a0,s1
    8000340c:	000780e7          	jalr	a5
}
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_Znwm>:
{
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00113423          	sd	ra,8(sp)
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	e14080e7          	jalr	-492(ra) # 80001248 <mem_alloc>
}
    8000343c:	00813083          	ld	ra,8(sp)
    80003440:	00013403          	ld	s0,0(sp)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <_ZdlPv>:
{
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000345c:	ffffe097          	auipc	ra,0xffffe
    80003460:	e1c080e7          	jalr	-484(ra) # 80001278 <mem_free>
}
    80003464:	00813083          	ld	ra,8(sp)
    80003468:	00013403          	ld	s0,0(sp)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret

0000000080003474 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003474:	fe010113          	addi	sp,sp,-32
    80003478:	00113c23          	sd	ra,24(sp)
    8000347c:	00813823          	sd	s0,16(sp)
    80003480:	00913423          	sd	s1,8(sp)
    80003484:	02010413          	addi	s0,sp,32
    80003488:	00050493          	mv	s1,a0
}
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	edc080e7          	jalr	-292(ra) # 80003368 <_ZN6ThreadD1Ev>
    80003494:	00048513          	mv	a0,s1
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	fb4080e7          	jalr	-76(ra) # 8000344c <_ZdlPv>
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret

00000000800034b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800034b4:	fe010113          	addi	sp,sp,-32
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00913423          	sd	s1,8(sp)
    800034c4:	02010413          	addi	s0,sp,32
    800034c8:	00050493          	mv	s1,a0
}
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	ed4080e7          	jalr	-300(ra) # 800033a0 <_ZN9SemaphoreD1Ev>
    800034d4:	00048513          	mv	a0,s1
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	f74080e7          	jalr	-140(ra) # 8000344c <_ZdlPv>
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret

00000000800034f4 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800034f4:	00853503          	ld	a0,8(a0)
    800034f8:	02050663          	beqz	a0,80003524 <_ZN6Thread5startEv+0x30>
{
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	f48080e7          	jalr	-184(ra) # 80001454 <thread_start>
}
    80003514:	00813083          	ld	ra,8(sp)
    80003518:	00013403          	ld	s0,0(sp)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret
        return -1;
    80003524:	fff00513          	li	a0,-1
}
    80003528:	00008067          	ret

000000008000352c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00113423          	sd	ra,8(sp)
    80003534:	00813023          	sd	s0,0(sp)
    80003538:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	de8080e7          	jalr	-536(ra) # 80001324 <thread_dispatch>
}
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	01010113          	addi	sp,sp,16
    80003550:	00008067          	ret

0000000080003554 <_ZN6Thread5sleepEm>:
{
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00113423          	sd	ra,8(sp)
    8000355c:	00813023          	sd	s0,0(sp)
    80003560:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	ec4080e7          	jalr	-316(ra) # 80001428 <time_sleep>
}
    8000356c:	00813083          	ld	ra,8(sp)
    80003570:	00013403          	ld	s0,0(sp)
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00008067          	ret

000000008000357c <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period)) {

}

void PeriodicThread::runner(void* arg)
{
    8000357c:	fe010113          	addi	sp,sp,-32
    80003580:	00113c23          	sd	ra,24(sp)
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00913423          	sd	s1,8(sp)
    8000358c:	01213023          	sd	s2,0(sp)
    80003590:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003594:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003598:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000359c:	0004b783          	ld	a5,0(s1)
    800035a0:	0187b783          	ld	a5,24(a5)
    800035a4:	00048513          	mv	a0,s1
    800035a8:	000780e7          	jalr	a5
        Thread::sleep(time);
    800035ac:	00090513          	mv	a0,s2
    800035b0:	00000097          	auipc	ra,0x0
    800035b4:	fa4080e7          	jalr	-92(ra) # 80003554 <_ZN6Thread5sleepEm>
    while(true)
    800035b8:	fe5ff06f          	j	8000359c <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800035bc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00113423          	sd	ra,8(sp)
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	01010413          	addi	s0,sp,16
    800035cc:	00008797          	auipc	a5,0x8
    800035d0:	37c78793          	addi	a5,a5,892 # 8000b948 <_ZTV6Thread+0x10>
    800035d4:	00f53023          	sd	a5,0(a0)
    thread_make_pcb((void**)&myHandle, body, args);
    800035d8:	00850513          	addi	a0,a0,8
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	ea4080e7          	jalr	-348(ra) # 80001480 <thread_make_pcb>
}
    800035e4:	00813083          	ld	ra,8(sp)
    800035e8:	00013403          	ld	s0,0(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00113423          	sd	ra,8(sp)
    800035fc:	00813023          	sd	s0,0(sp)
    80003600:	01010413          	addi	s0,sp,16
    80003604:	00008797          	auipc	a5,0x8
    80003608:	34478793          	addi	a5,a5,836 # 8000b948 <_ZTV6Thread+0x10>
    8000360c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb((void**)&myHandle, &Thread::runner, (void*)this);
    80003610:	00050613          	mv	a2,a0
    80003614:	00000597          	auipc	a1,0x0
    80003618:	dc458593          	addi	a1,a1,-572 # 800033d8 <_ZN6Thread6runnerEPv>
    8000361c:	00850513          	addi	a0,a0,8
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	e60080e7          	jalr	-416(ra) # 80001480 <thread_make_pcb>
}
    80003628:	00813083          	ld	ra,8(sp)
    8000362c:	00013403          	ld	s0,0(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret

0000000080003638 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003638:	00853503          	ld	a0,8(a0)
    8000363c:	02050663          	beqz	a0,80003668 <_ZN9Semaphore4waitEv+0x30>
{
    80003640:	ff010113          	addi	sp,sp,-16
    80003644:	00113423          	sd	ra,8(sp)
    80003648:	00813023          	sd	s0,0(sp)
    8000364c:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	d80080e7          	jalr	-640(ra) # 800013d0 <sem_wait>
}
    80003658:	00813083          	ld	ra,8(sp)
    8000365c:	00013403          	ld	s0,0(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret
        return -1;
    80003668:	fff00513          	li	a0,-1
}
    8000366c:	00008067          	ret

0000000080003670 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	00050493          	mv	s1,a0
    80003688:	00008797          	auipc	a5,0x8
    8000368c:	2e878793          	addi	a5,a5,744 # 8000b970 <_ZTV9Semaphore+0x10>
    80003690:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80003694:	00850513          	addi	a0,a0,8
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	cd4080e7          	jalr	-812(ra) # 8000136c <sem_open>
    if(retval != 0)
    800036a0:	00050463          	beqz	a0,800036a8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800036a4:	0004b423          	sd	zero,8(s1)
}
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	02010113          	addi	sp,sp,32
    800036b8:	00008067          	ret

00000000800036bc <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800036bc:	00853503          	ld	a0,8(a0)
    800036c0:	02050663          	beqz	a0,800036ec <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800036c4:	ff010113          	addi	sp,sp,-16
    800036c8:	00113423          	sd	ra,8(sp)
    800036cc:	00813023          	sd	s0,0(sp)
    800036d0:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	d28080e7          	jalr	-728(ra) # 800013fc <sem_signal>
}
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret
        return -1;
    800036ec:	fff00513          	li	a0,-1
}
    800036f0:	00008067          	ret

00000000800036f4 <_ZN7Console4getcEv>:
char Console::getc() {
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00813423          	sd	s0,8(sp)
    800036fc:	01010413          	addi	s0,sp,16
}
    80003700:	00000513          	li	a0,0
    80003704:	00813403          	ld	s0,8(sp)
    80003708:	01010113          	addi	sp,sp,16
    8000370c:	00008067          	ret

0000000080003710 <_ZN7Console4putcEc>:
void Console::putc(char) {
    80003710:	ff010113          	addi	sp,sp,-16
    80003714:	00813423          	sd	s0,8(sp)
    80003718:	01010413          	addi	s0,sp,16
}
    8000371c:	00813403          	ld	s0,8(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret

0000000080003728 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period)) {
    80003728:	fe010113          	addi	sp,sp,-32
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00913423          	sd	s1,8(sp)
    80003738:	01213023          	sd	s2,0(sp)
    8000373c:	02010413          	addi	s0,sp,32
    80003740:	00050493          	mv	s1,a0
    80003744:	00058913          	mv	s2,a1
    80003748:	01000513          	li	a0,16
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	cd8080e7          	jalr	-808(ra) # 80003424 <_Znwm>
    80003754:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003758:	00953023          	sd	s1,0(a0)
    8000375c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period)) {
    80003760:	00000597          	auipc	a1,0x0
    80003764:	e1c58593          	addi	a1,a1,-484 # 8000357c <_ZN14PeriodicThread6runnerEPv>
    80003768:	00048513          	mv	a0,s1
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	e50080e7          	jalr	-432(ra) # 800035bc <_ZN6ThreadC1EPFvPvES0_>
    80003774:	00008797          	auipc	a5,0x8
    80003778:	16c78793          	addi	a5,a5,364 # 8000b8e0 <_ZTV14PeriodicThread+0x10>
    8000377c:	00f4b023          	sd	a5,0(s1)
}
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	00813483          	ld	s1,8(sp)
    8000378c:	00013903          	ld	s2,0(sp)
    80003790:	02010113          	addi	sp,sp,32
    80003794:	00008067          	ret

0000000080003798 <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00813423          	sd	s0,8(sp)
    800037a0:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    800037a4:	00813403          	ld	s0,8(sp)
    800037a8:	01010113          	addi	sp,sp,16
    800037ac:	00008067          	ret

00000000800037b0 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    800037b0:	ff010113          	addi	sp,sp,-16
    800037b4:	00813423          	sd	s0,8(sp)
    800037b8:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    800037bc:	00813403          	ld	s0,8(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret

00000000800037c8 <_ZN5Riscv10initSystemEv>:
#include "../h/KConsole.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void Riscv::initSystem()
{
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00113423          	sd	ra,8(sp)
    800037d0:	00813023          	sd	s0,0(sp)
    800037d4:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800037d8:	00008797          	auipc	a5,0x8
    800037dc:	2587b783          	ld	a5,600(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800037e0:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	0ec080e7          	jalr	236(ra) # 800028d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800037ec:	fffff097          	auipc	ra,0xfffff
    800037f0:	48c080e7          	jalr	1164(ra) # 80002c78 <_ZN8KConsole10initializeEv>
}
    800037f4:	00813083          	ld	ra,8(sp)
    800037f8:	00013403          	ld	s0,0(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN5Riscv16enableInterruptsEv>:
    //todo
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003810:	00200793          	li	a5,2
    80003814:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003818:	00813403          	ld	s0,8(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret

0000000080003824 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00813423          	sd	s0,8(sp)
    8000382c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003830:	00200793          	li	a5,2
    80003834:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003838:	00813403          	ld	s0,8(sp)
    8000383c:	01010113          	addi	sp,sp,16
    80003840:	00008067          	ret

0000000080003844 <_ZN5Riscv9endSystemEv>:
{
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003854:	00000097          	auipc	ra,0x0
    80003858:	fd0080e7          	jalr	-48(ra) # 80003824 <_ZN5Riscv17disableInterruptsEv>
}
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    8000386c:	ff010113          	addi	sp,sp,-16
    80003870:	00813423          	sd	s0,8(sp)
    80003874:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003878:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000387c:	10200073          	sret
}
    80003880:	00813403          	ld	s0,8(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    8000388c:	fd010113          	addi	sp,sp,-48
    80003890:	02113423          	sd	ra,40(sp)
    80003894:	02813023          	sd	s0,32(sp)
    80003898:	00913c23          	sd	s1,24(sp)
    8000389c:	01213823          	sd	s2,16(sp)
    800038a0:	03010413          	addi	s0,sp,48
    800038a4:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800038a8:	100027f3          	csrr	a5,sstatus
    800038ac:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800038b0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800038b4:	00200793          	li	a5,2
    800038b8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    800038bc:	0004c503          	lbu	a0,0(s1)
    800038c0:	00050a63          	beqz	a0,800038d4 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    800038c4:	00005097          	auipc	ra,0x5
    800038c8:	a88080e7          	jalr	-1400(ra) # 8000834c <__putc>
        string++;
    800038cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800038d0:	fedff06f          	j	800038bc <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    800038d4:	0009091b          	sext.w	s2,s2
    800038d8:	00297913          	andi	s2,s2,2
    800038dc:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800038e0:	10092073          	csrs	sstatus,s2
}
    800038e4:	02813083          	ld	ra,40(sp)
    800038e8:	02013403          	ld	s0,32(sp)
    800038ec:	01813483          	ld	s1,24(sp)
    800038f0:	01013903          	ld	s2,16(sp)
    800038f4:	03010113          	addi	sp,sp,48
    800038f8:	00008067          	ret

00000000800038fc <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    800038fc:	fc010113          	addi	sp,sp,-64
    80003900:	02113c23          	sd	ra,56(sp)
    80003904:	02813823          	sd	s0,48(sp)
    80003908:	02913423          	sd	s1,40(sp)
    8000390c:	03213023          	sd	s2,32(sp)
    80003910:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003914:	100027f3          	csrr	a5,sstatus
    80003918:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000391c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003920:	00200793          	li	a5,2
    80003924:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003928:	0005051b          	sext.w	a0,a0

    i = 0;
    8000392c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80003930:	00a00613          	li	a2,10
    80003934:	02c5773b          	remuw	a4,a0,a2
    80003938:	02071693          	slli	a3,a4,0x20
    8000393c:	0206d693          	srli	a3,a3,0x20
    80003940:	00006717          	auipc	a4,0x6
    80003944:	a3070713          	addi	a4,a4,-1488 # 80009370 <_ZZN5Riscv12printIntegerEmE6digits>
    80003948:	00d70733          	add	a4,a4,a3
    8000394c:	00074703          	lbu	a4,0(a4)
    80003950:	fe040693          	addi	a3,s0,-32
    80003954:	009687b3          	add	a5,a3,s1
    80003958:	0014849b          	addiw	s1,s1,1
    8000395c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003960:	0005071b          	sext.w	a4,a0
    80003964:	02c5553b          	divuw	a0,a0,a2
    80003968:	00900793          	li	a5,9
    8000396c:	fce7e2e3          	bltu	a5,a4,80003930 <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003970:	fff4849b          	addiw	s1,s1,-1
    80003974:	0004ce63          	bltz	s1,80003990 <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003978:	fe040793          	addi	a5,s0,-32
    8000397c:	009787b3          	add	a5,a5,s1
    80003980:	ff07c503          	lbu	a0,-16(a5)
    80003984:	00005097          	auipc	ra,0x5
    80003988:	9c8080e7          	jalr	-1592(ra) # 8000834c <__putc>
    8000398c:	fe5ff06f          	j	80003970 <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80003990:	00a00513          	li	a0,10
    80003994:	00005097          	auipc	ra,0x5
    80003998:	9b8080e7          	jalr	-1608(ra) # 8000834c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    8000399c:	0009091b          	sext.w	s2,s2
    800039a0:	00297913          	andi	s2,s2,2
    800039a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800039a8:	10092073          	csrs	sstatus,s2
}
    800039ac:	03813083          	ld	ra,56(sp)
    800039b0:	03013403          	ld	s0,48(sp)
    800039b4:	02813483          	ld	s1,40(sp)
    800039b8:	02013903          	ld	s2,32(sp)
    800039bc:	04010113          	addi	sp,sp,64
    800039c0:	00008067          	ret

00000000800039c4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800039c4:	f9010113          	addi	sp,sp,-112
    800039c8:	06113423          	sd	ra,104(sp)
    800039cc:	06813023          	sd	s0,96(sp)
    800039d0:	04913c23          	sd	s1,88(sp)
    800039d4:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800039d8:	00070713          	mv	a4,a4
    800039dc:	00008797          	auipc	a5,0x8
    800039e0:	07c7b783          	ld	a5,124(a5) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x38>
    800039e4:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800039e8:	142027f3          	csrr	a5,scause
    800039ec:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800039f0:	fb843783          	ld	a5,-72(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    800039f4:	fff00713          	li	a4,-1
    800039f8:	03f71713          	slli	a4,a4,0x3f
    800039fc:	00170713          	addi	a4,a4,1
    80003a00:	08e78463          	beq	a5,a4,80003a88 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80003a04:	fff00713          	li	a4,-1
    80003a08:	03f71713          	slli	a4,a4,0x3f
    80003a0c:	00170713          	addi	a4,a4,1
    80003a10:	04f76e63          	bltu	a4,a5,80003a6c <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
    80003a14:	ff878793          	addi	a5,a5,-8
    80003a18:	00100713          	li	a4,1
    80003a1c:	0ef76663          	bltu	a4,a5,80003b08 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            break;
        }
        case ecallSystemInterupt:
        case ecallUserInterrupt: {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003a20:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a24:	14102773          	csrr	a4,sepc
    80003a28:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003a2c:	fd843703          	ld	a4,-40(s0)

            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003a30:	00470713          	addi	a4,a4,4
    80003a34:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a38:	10002773          	csrr	a4,sstatus
    80003a3c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003a40:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003a44:	fae43823          	sd	a4,-80(s0)

            switch(operation)
    80003a48:	03100713          	li	a4,49
    80003a4c:	0ef76463          	bltu	a4,a5,80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    80003a50:	00279793          	slli	a5,a5,0x2
    80003a54:	00006717          	auipc	a4,0x6
    80003a58:	85470713          	addi	a4,a4,-1964 # 800092a8 <CONSOLE_STATUS+0x298>
    80003a5c:	00e787b3          	add	a5,a5,a4
    80003a60:	0007a783          	lw	a5,0(a5)
    80003a64:	00e787b3          	add	a5,a5,a4
    80003a68:	00078067          	jr	a5
    switch(scause)
    80003a6c:	fff00713          	li	a4,-1
    80003a70:	03f71713          	slli	a4,a4,0x3f
    80003a74:	00970713          	addi	a4,a4,9
    80003a78:	08e79863          	bne	a5,a4,80003b08 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
            console_handler();
    80003a7c:	00005097          	auipc	ra,0x5
    80003a80:	944080e7          	jalr	-1724(ra) # 800083c0 <console_handler>
            break;
    80003a84:	0840006f          	j	80003b08 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a88:	141027f3          	csrr	a5,sepc
    80003a8c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003a90:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003a94:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a98:	100027f3          	csrr	a5,sstatus
    80003a9c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003aa0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003aa4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003aa8:	00200793          	li	a5,2
    80003aac:	1447b073          	csrc	sip,a5
            total++;
    80003ab0:	00008717          	auipc	a4,0x8
    80003ab4:	08070713          	addi	a4,a4,128 # 8000bb30 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003ab8:	00073783          	ld	a5,0(a4)
    80003abc:	00178793          	addi	a5,a5,1
    80003ac0:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003ac4:	00008497          	auipc	s1,0x8
    80003ac8:	f744b483          	ld	s1,-140(s1) # 8000ba38 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003acc:	0004b783          	ld	a5,0(s1)
    80003ad0:	00178793          	addi	a5,a5,1
    80003ad4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	4c0080e7          	jalr	1216(ra) # 80002f98 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ae0:	00008797          	auipc	a5,0x8
    80003ae4:	f687b783          	ld	a5,-152(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ae8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003aec:	0107b783          	ld	a5,16(a5)
    80003af0:	0004b703          	ld	a4,0(s1)
    80003af4:	02f77463          	bgeu	a4,a5,80003b1c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
            Riscv::w_sstatus(sstatus);
    80003af8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003afc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b00:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b04:	14179073          	csrw	sepc,a5
            Riscv::w_sepc(sepc);

            break;
        }
    }
}
    80003b08:	06813083          	ld	ra,104(sp)
    80003b0c:	06013403          	ld	s0,96(sp)
    80003b10:	05813483          	ld	s1,88(sp)
    80003b14:	07010113          	addi	sp,sp,112
    80003b18:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003b1c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	cc0080e7          	jalr	-832(ra) # 800027e0 <_ZN3PCB8dispatchEv>
    80003b28:	fd1ff06f          	j	80003af8 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
                    MemoryAllocator::memAllocHandler();
    80003b2c:	00000097          	auipc	ra,0x0
    80003b30:	4fc080e7          	jalr	1276(ra) # 80004028 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003b34:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b38:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b3c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b40:	14179073          	csrw	sepc,a5
}
    80003b44:	fc5ff06f          	j	80003b08 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                    MemoryAllocator::memFreeHandler();
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	53c080e7          	jalr	1340(ra) # 80004084 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003b50:	fe5ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadMakePCBHandler();
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	fc0080e7          	jalr	-64(ra) # 80002b14 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003b5c:	fd9ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadCreateHandler();
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	ee0080e7          	jalr	-288(ra) # 80002a40 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003b68:	fcdff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadStartHandler();
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	f6c080e7          	jalr	-148(ra) # 80002ad8 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003b74:	fc1ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadDispatchHandler();
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	e4c080e7          	jalr	-436(ra) # 800029c4 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003b80:	fb5ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadExitHandler();
    80003b84:	fffff097          	auipc	ra,0xfffff
    80003b88:	dec080e7          	jalr	-532(ra) # 80002970 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003b8c:	fa9ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    PCB::threadSleepHandler();
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	e64080e7          	jalr	-412(ra) # 800029f4 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003b98:	f9dff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semOpenHandler();
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	790080e7          	jalr	1936(ra) # 8000432c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003ba4:	f91ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semWaitHandler();
    80003ba8:	00001097          	auipc	ra,0x1
    80003bac:	81c080e7          	jalr	-2020(ra) # 800043c4 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003bb0:	f85ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semSignalHandler();
    80003bb4:	00001097          	auipc	ra,0x1
    80003bb8:	848080e7          	jalr	-1976(ra) # 800043fc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003bbc:	f79ff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    KSemaphore::semCloseHandler();
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	874080e7          	jalr	-1932(ra) # 80004434 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003bc8:	f6dff06f          	j	80003b34 <_ZN5Riscv20handleSupervisorTrapEv+0x170>

0000000080003bcc <_ZN5Riscv10kernelMainEv>:

void Riscv::kernelMain()
{
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00113423          	sd	ra,8(sp)
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	01010413          	addi	s0,sp,16
    initSystem();
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	bec080e7          	jalr	-1044(ra) # 800037c8 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	c20080e7          	jalr	-992(ra) # 80003804 <_ZN5Riscv16enableInterruptsEv>
    //while(userPCB->getState() != PCB::FINISHED)
    //{
    //    thread_dispatch();
    //}

    myTests();
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	42c080e7          	jalr	1068(ra) # 80002018 <_Z7myTestsv>

    disableInterrupts();
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	c30080e7          	jalr	-976(ra) # 80003824 <_ZN5Riscv17disableInterruptsEv>

    endSystem();
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	c48080e7          	jalr	-952(ra) # 80003844 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80003c04:	00005517          	auipc	a0,0x5
    80003c08:	77c50513          	addi	a0,a0,1916 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	c80080e7          	jalr	-896(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80003c14:	00813083          	ld	ra,8(sp)
    80003c18:	00013403          	ld	s0,0(sp)
    80003c1c:	01010113          	addi	sp,sp,16
    80003c20:	00008067          	ret

0000000080003c24 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003c24:	ff010113          	addi	sp,sp,-16
    80003c28:	00113423          	sd	ra,8(sp)
    80003c2c:	00813023          	sd	s0,0(sp)
    80003c30:	01010413          	addi	s0,sp,16
    userMain();
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	2ac080e7          	jalr	684(ra) # 80005ee0 <_Z8userMainv>
}
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003c4c:	ff010113          	addi	sp,sp,-16
    80003c50:	00813423          	sd	s0,8(sp)
    80003c54:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003c58:	00008717          	auipc	a4,0x8
    80003c5c:	ee072703          	lw	a4,-288(a4) # 8000bb38 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c60:	00100793          	li	a5,1
    80003c64:	04f70263          	beq	a4,a5,80003ca8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003c68:	00008797          	auipc	a5,0x8
    80003c6c:	ed078793          	addi	a5,a5,-304 # 8000bb38 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c70:	00100713          	li	a4,1
    80003c74:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003c78:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c7c:	00008717          	auipc	a4,0x8
    80003c80:	dac73703          	ld	a4,-596(a4) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003c84:	00073703          	ld	a4,0(a4)
    80003c88:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c8c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c90:	00008797          	auipc	a5,0x8
    80003c94:	dc07b783          	ld	a5,-576(a5) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003c98:	0007b783          	ld	a5,0(a5)
    80003c9c:	40e787b3          	sub	a5,a5,a4
    80003ca0:	ff178793          	addi	a5,a5,-15
    80003ca4:	00f73023          	sd	a5,0(a4)
}
    80003ca8:	00813403          	ld	s0,8(sp)
    80003cac:	01010113          	addi	sp,sp,16
    80003cb0:	00008067          	ret

0000000080003cb4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003cb4:	fe010113          	addi	sp,sp,-32
    80003cb8:	00113c23          	sd	ra,24(sp)
    80003cbc:	00813823          	sd	s0,16(sp)
    80003cc0:	00913423          	sd	s1,8(sp)
    80003cc4:	01213023          	sd	s2,0(sp)
    80003cc8:	02010413          	addi	s0,sp,32
    80003ccc:	00050493          	mv	s1,a0
    80003cd0:	00058913          	mv	s2,a1
    initMemory();
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	f78080e7          	jalr	-136(ra) # 80003c4c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003cdc:	00008797          	auipc	a5,0x8
    80003ce0:	e647b783          	ld	a5,-412(a5) # 8000bb40 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003ce4:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003ce8:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003cec:	00000713          	li	a4,0
    while(curr != 0)
    80003cf0:	00078c63          	beqz	a5,80003d08 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003cf4:	00f4e863          	bltu	s1,a5,80003d04 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003cf8:	00078713          	mv	a4,a5
        curr = curr->next;
    80003cfc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d00:	ff1ff06f          	j	80003cf0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003d04:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d08:	02070063          	beqz	a4,80003d28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003d0c:	00973423          	sd	s1,8(a4)
}
    80003d10:	01813083          	ld	ra,24(sp)
    80003d14:	01013403          	ld	s0,16(sp)
    80003d18:	00813483          	ld	s1,8(sp)
    80003d1c:	00013903          	ld	s2,0(sp)
    80003d20:	02010113          	addi	sp,sp,32
    80003d24:	00008067          	ret
        headAllocated = newAllocated;
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	e097bc23          	sd	s1,-488(a5) # 8000bb40 <_ZN15MemoryAllocator13headAllocatedE>
    80003d30:	fe1ff06f          	j	80003d10 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003d34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003d34:	fe010113          	addi	sp,sp,-32
    80003d38:	00113c23          	sd	ra,24(sp)
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00913423          	sd	s1,8(sp)
    80003d44:	01213023          	sd	s2,0(sp)
    80003d48:	02010413          	addi	s0,sp,32
    80003d4c:	00050913          	mv	s2,a0
    initMemory();
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	efc080e7          	jalr	-260(ra) # 80003c4c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003d58:	00008497          	auipc	s1,0x8
    80003d5c:	df04b483          	ld	s1,-528(s1) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003d60:	00000713          	li	a4,0
    while(curr != 0)
    80003d64:	0a048863          	beqz	s1,80003e14 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003d68:	0004b783          	ld	a5,0(s1)
    80003d6c:	0127f863          	bgeu	a5,s2,80003d7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003d70:	00048713          	mv	a4,s1
        curr = curr->next;
    80003d74:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003d78:	fedff06f          	j	80003d64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003d7c:	01090693          	addi	a3,s2,16
    80003d80:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003d84:	00008617          	auipc	a2,0x8
    80003d88:	ccc63603          	ld	a2,-820(a2) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003d8c:	00063603          	ld	a2,0(a2)
    80003d90:	04d66c63          	bltu	a2,a3,80003de8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003d94:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003d98:	01000613          	li	a2,16
    80003d9c:	02f67663          	bgeu	a2,a5,80003dc8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003da0:	0084b603          	ld	a2,8(s1)
    80003da4:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003da8:	ff078793          	addi	a5,a5,-16
    80003dac:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003db0:	00070663          	beqz	a4,80003dbc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003db4:	00d73423          	sd	a3,8(a4)
    80003db8:	0380006f          	j	80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003dbc:	00008797          	auipc	a5,0x8
    80003dc0:	d8d7b623          	sd	a3,-628(a5) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    80003dc4:	02c0006f          	j	80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003dc8:	00070863          	beqz	a4,80003dd8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003dcc:	0084b783          	ld	a5,8(s1)
    80003dd0:	00f73423          	sd	a5,8(a4)
    80003dd4:	01c0006f          	j	80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003dd8:	0084b783          	ld	a5,8(s1)
    80003ddc:	00008717          	auipc	a4,0x8
    80003de0:	d6f73623          	sd	a5,-660(a4) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    80003de4:	00c0006f          	j	80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003de8:	02070063          	beqz	a4,80003e08 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003dec:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003df0:	00090593          	mv	a1,s2
    80003df4:	00048513          	mv	a0,s1
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	ebc080e7          	jalr	-324(ra) # 80003cb4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e00:	01048513          	addi	a0,s1,16
            break;
    80003e04:	0140006f          	j	80003e18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003e08:	00008797          	auipc	a5,0x8
    80003e0c:	d407b023          	sd	zero,-704(a5) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    80003e10:	fe1ff06f          	j	80003df0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003e14:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003e18:	01813083          	ld	ra,24(sp)
    80003e1c:	01013403          	ld	s0,16(sp)
    80003e20:	00813483          	ld	s1,8(sp)
    80003e24:	00013903          	ld	s2,0(sp)
    80003e28:	02010113          	addi	sp,sp,32
    80003e2c:	00008067          	ret

0000000080003e30 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003e30:	ff010113          	addi	sp,sp,-16
    80003e34:	00113423          	sd	ra,8(sp)
    80003e38:	00813023          	sd	s0,0(sp)
    80003e3c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	ef4080e7          	jalr	-268(ra) # 80003d34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003e48:	00813083          	ld	ra,8(sp)
    80003e4c:	00013403          	ld	s0,0(sp)
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret

0000000080003e58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	00050493          	mv	s1,a0
    80003e74:	00058913          	mv	s2,a1
    initMemory();
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	dd4080e7          	jalr	-556(ra) # 80003c4c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	cc87b783          	ld	a5,-824(a5) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003e88:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003e8c:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003e90:	00000713          	li	a4,0
    while(curr != 0)
    80003e94:	00078c63          	beqz	a5,80003eac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003e98:	00f4e863          	bltu	s1,a5,80003ea8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003e9c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003ea0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003ea4:	ff1ff06f          	j	80003e94 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003ea8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003eac:	04070663          	beqz	a4,80003ef8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003eb0:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003eb4:	0084b783          	ld	a5,8(s1)
    80003eb8:	00078a63          	beqz	a5,80003ecc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003ebc:	0004b603          	ld	a2,0(s1)
    80003ec0:	01060693          	addi	a3,a2,16
    80003ec4:	00d486b3          	add	a3,s1,a3
    80003ec8:	02d78e63          	beq	a5,a3,80003f04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003ecc:	00070a63          	beqz	a4,80003ee0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003ed0:	00073683          	ld	a3,0(a4)
    80003ed4:	01068793          	addi	a5,a3,16
    80003ed8:	00f707b3          	add	a5,a4,a5
    80003edc:	04978263          	beq	a5,s1,80003f20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	00013903          	ld	s2,0(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret
        headFree = newSegment;
    80003ef8:	00008797          	auipc	a5,0x8
    80003efc:	c497b823          	sd	s1,-944(a5) # 8000bb48 <_ZN15MemoryAllocator8headFreeE>
    80003f00:	fb5ff06f          	j	80003eb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003f04:	0007b683          	ld	a3,0(a5)
    80003f08:	00d60633          	add	a2,a2,a3
    80003f0c:	01060613          	addi	a2,a2,16
    80003f10:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003f14:	0087b783          	ld	a5,8(a5)
    80003f18:	00f4b423          	sd	a5,8(s1)
    80003f1c:	fb1ff06f          	j	80003ecc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003f20:	0004b783          	ld	a5,0(s1)
    80003f24:	00f686b3          	add	a3,a3,a5
    80003f28:	01068693          	addi	a3,a3,16
    80003f2c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003f30:	0084b783          	ld	a5,8(s1)
    80003f34:	00f73423          	sd	a5,8(a4)
}
    80003f38:	fa9ff06f          	j	80003ee0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003f3c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003f3c:	fe010113          	addi	sp,sp,-32
    80003f40:	00113c23          	sd	ra,24(sp)
    80003f44:	00813823          	sd	s0,16(sp)
    80003f48:	00913423          	sd	s1,8(sp)
    80003f4c:	01213023          	sd	s2,0(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	00050913          	mv	s2,a0
    initMemory();
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	cf4080e7          	jalr	-780(ra) # 80003c4c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003f60:	00008497          	auipc	s1,0x8
    80003f64:	be04b483          	ld	s1,-1056(s1) # 8000bb40 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003f68:	00000713          	li	a4,0
    while(curr != 0)
    80003f6c:	02048a63          	beqz	s1,80003fa0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003f70:	01048793          	addi	a5,s1,16
    80003f74:	01278863          	beq	a5,s2,80003f84 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003f78:	00048713          	mv	a4,s1
        curr = curr->next;
    80003f7c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003f80:	fedff06f          	j	80003f6c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003f84:	02070e63          	beqz	a4,80003fc0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003f88:	0084b783          	ld	a5,8(s1)
    80003f8c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003f90:	0004b583          	ld	a1,0(s1)
    80003f94:	00048513          	mv	a0,s1
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	ec0080e7          	jalr	-320(ra) # 80003e58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003fa0:	02048863          	beqz	s1,80003fd0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003fa4:	00000513          	li	a0,0
    else
        return 1;
}
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	00813483          	ld	s1,8(sp)
    80003fb4:	00013903          	ld	s2,0(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	00008067          	ret
                headAllocated = curr->next;
    80003fc0:	0084b783          	ld	a5,8(s1)
    80003fc4:	00008717          	auipc	a4,0x8
    80003fc8:	b6f73e23          	sd	a5,-1156(a4) # 8000bb40 <_ZN15MemoryAllocator13headAllocatedE>
    80003fcc:	fc5ff06f          	j	80003f90 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003fd0:	00100513          	li	a0,1
    80003fd4:	fd5ff06f          	j	80003fa8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003fd8 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003fd8:	ff010113          	addi	sp,sp,-16
    80003fdc:	00113423          	sd	ra,8(sp)
    80003fe0:	00813023          	sd	s0,0(sp)
    80003fe4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003fe8:	00000097          	auipc	ra,0x0
    80003fec:	f54080e7          	jalr	-172(ra) # 80003f3c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003ff0:	00813083          	ld	ra,8(sp)
    80003ff4:	00013403          	ld	s0,0(sp)
    80003ff8:	01010113          	addi	sp,sp,16
    80003ffc:	00008067          	ret

0000000080004000 <_Z7kmallocm>:
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
}

void* kmalloc(size_t size)
{
    80004000:	ff010113          	addi	sp,sp,-16
    80004004:	00113423          	sd	ra,8(sp)
    80004008:	00813023          	sd	s0,0(sp)
    8000400c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004010:	00000097          	auipc	ra,0x0
    80004014:	e20080e7          	jalr	-480(ra) # 80003e30 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00113423          	sd	ra,8(sp)
    80004030:	00813023          	sd	s0,0(sp)
    80004034:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004038:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000403c:	00651513          	slli	a0,a0,0x6
    80004040:	00000097          	auipc	ra,0x0
    80004044:	fc0080e7          	jalr	-64(ra) # 80004000 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004048:	00050513          	mv	a0,a0
}
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00008067          	ret

000000008000405c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000405c:	ff010113          	addi	sp,sp,-16
    80004060:	00113423          	sd	ra,8(sp)
    80004064:	00813023          	sd	s0,0(sp)
    80004068:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000406c:	00000097          	auipc	ra,0x0
    80004070:	f6c080e7          	jalr	-148(ra) # 80003fd8 <_ZN15MemoryAllocator8mem_freeEPv>
    80004074:	00813083          	ld	ra,8(sp)
    80004078:	00013403          	ld	s0,0(sp)
    8000407c:	01010113          	addi	sp,sp,16
    80004080:	00008067          	ret

0000000080004084 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004094:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	fc4080e7          	jalr	-60(ra) # 8000405c <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800040a0:	00050513          	mv	a0,a0
}
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00813423          	sd	s0,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800040c0:	00b52a23          	sw	a1,20(a0)
    800040c4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800040c8:	00053423          	sd	zero,8(a0)
    800040cc:	00053023          	sd	zero,0(a0)
}
    800040d0:	00813403          	ld	s0,8(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800040dc:	ff010113          	addi	sp,sp,-16
    800040e0:	00813423          	sd	s0,8(sp)
    800040e4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800040e8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800040ec:	00053783          	ld	a5,0(a0)
    800040f0:	00078e63          	beqz	a5,8000410c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800040f4:	00853783          	ld	a5,8(a0)
    800040f8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800040fc:	00b53423          	sd	a1,8(a0)
    }
}
    80004100:	00813403          	ld	s0,8(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000410c:	00b53423          	sd	a1,8(a0)
    80004110:	00b53023          	sd	a1,0(a0)
    80004114:	fedff06f          	j	80004100 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004118 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00113423          	sd	ra,8(sp)
    80004120:	00813023          	sd	s0,0(sp)
    80004124:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004128:	00008797          	auipc	a5,0x8
    8000412c:	9207b783          	ld	a5,-1760(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004130:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004134:	00200793          	li	a5,2
    80004138:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	fa0080e7          	jalr	-96(ra) # 800040dc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	69c080e7          	jalr	1692(ra) # 800027e0 <_ZN3PCB8dispatchEv>
}
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000415c:	01052783          	lw	a5,16(a0)
    80004160:	fff7879b          	addiw	a5,a5,-1
    80004164:	00f52823          	sw	a5,16(a0)
    80004168:	02079713          	slli	a4,a5,0x20
    8000416c:	00074663          	bltz	a4,80004178 <_ZN10KSemaphore4waitEv+0x1c>
}
    80004170:	00000513          	li	a0,0
    80004174:	00008067          	ret
uint64 KSemaphore::wait() {
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00113423          	sd	ra,8(sp)
    80004180:	00813023          	sd	s0,0(sp)
    80004184:	01010413          	addi	s0,sp,16
        block();
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	f90080e7          	jalr	-112(ra) # 80004118 <_ZN10KSemaphore5blockEv>
}
    80004190:	00000513          	li	a0,0
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00813423          	sd	s0,8(sp)
    800041ac:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800041b0:	00053503          	ld	a0,0(a0)
    800041b4:	00813403          	ld	s0,8(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00813423          	sd	s0,8(sp)
    800041c8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800041cc:	00053783          	ld	a5,0(a0)
    800041d0:	00078c63          	beqz	a5,800041e8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800041d4:	0087b703          	ld	a4,8(a5)
    800041d8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800041dc:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800041e0:	00053783          	ld	a5,0(a0)
    800041e4:	00078863          	beqz	a5,800041f4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800041e8:	00813403          	ld	s0,8(sp)
    800041ec:	01010113          	addi	sp,sp,16
    800041f0:	00008067          	ret
        tailBlocked =0;
    800041f4:	00053423          	sd	zero,8(a0)
    800041f8:	ff1ff06f          	j	800041e8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800041fc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	01213023          	sd	s2,0(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004218:	00090513          	mv	a0,s2
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	f88080e7          	jalr	-120(ra) # 800041a4 <_ZN10KSemaphore15getFirstBlockedEv>
    80004224:	00050493          	mv	s1,a0
    80004228:	02050063          	beqz	a0,80004248 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000422c:	00090513          	mv	a0,s2
    80004230:	00000097          	auipc	ra,0x0
    80004234:	f90080e7          	jalr	-112(ra) # 800041c0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004238:	00048513          	mv	a0,s1
    8000423c:	fffff097          	auipc	ra,0xfffff
    80004240:	00c080e7          	jalr	12(ra) # 80003248 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004244:	fd5ff06f          	j	80004218 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	01013403          	ld	s0,16(sp)
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	00013903          	ld	s2,0(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	01213023          	sd	s2,0(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	f28080e7          	jalr	-216(ra) # 800041a4 <_ZN10KSemaphore15getFirstBlockedEv>
    80004284:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004288:	00090513          	mv	a0,s2
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	f34080e7          	jalr	-204(ra) # 800041c0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004294:	00048863          	beqz	s1,800042a4 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80004298:	00048513          	mv	a0,s1
    8000429c:	fffff097          	auipc	ra,0xfffff
    800042a0:	fac080e7          	jalr	-84(ra) # 80003248 <_ZN9Scheduler3putEP3PCB>
}
    800042a4:	01813083          	ld	ra,24(sp)
    800042a8:	01013403          	ld	s0,16(sp)
    800042ac:	00813483          	ld	s1,8(sp)
    800042b0:	00013903          	ld	s2,0(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800042bc:	01052783          	lw	a5,16(a0)
    800042c0:	0017879b          	addiw	a5,a5,1
    800042c4:	0007871b          	sext.w	a4,a5
    800042c8:	00f52823          	sw	a5,16(a0)
    800042cc:	00e05663          	blez	a4,800042d8 <_ZN10KSemaphore6signalEv+0x1c>
}
    800042d0:	00000513          	li	a0,0
    800042d4:	00008067          	ret
uint64 KSemaphore::signal() {
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	00813023          	sd	s0,0(sp)
    800042e4:	01010413          	addi	s0,sp,16
        unblock();
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	f78080e7          	jalr	-136(ra) # 80004260 <_ZN10KSemaphore7unblockEv>
}
    800042f0:	00000513          	li	a0,0
    800042f4:	00813083          	ld	ra,8(sp)
    800042f8:	00013403          	ld	s0,0(sp)
    800042fc:	01010113          	addi	sp,sp,16
    80004300:	00008067          	ret

0000000080004304 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80004304:	ff010113          	addi	sp,sp,-16
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004314:	00000097          	auipc	ra,0x0
    80004318:	cec080e7          	jalr	-788(ra) # 80004000 <_Z7kmallocm>
}
    8000431c:	00813083          	ld	ra,8(sp)
    80004320:	00013403          	ld	s0,0(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret

000000008000432c <_ZN10KSemaphore14semOpenHandlerEv>:
void KSemaphore::semOpenHandler() {
    8000432c:	fd010113          	addi	sp,sp,-48
    80004330:	02113423          	sd	ra,40(sp)
    80004334:	02813023          	sd	s0,32(sp)
    80004338:	00913c23          	sd	s1,24(sp)
    8000433c:	01213823          	sd	s2,16(sp)
    80004340:	01313423          	sd	s3,8(sp)
    80004344:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004348:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000434c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004350:	01800513          	li	a0,24
    80004354:	00000097          	auipc	ra,0x0
    80004358:	fb0080e7          	jalr	-80(ra) # 80004304 <_ZN10KSemaphorenwEm>
    8000435c:	00050493          	mv	s1,a0
    80004360:	0009859b          	sext.w	a1,s3
    80004364:	00000097          	auipc	ra,0x0
    80004368:	d50080e7          	jalr	-688(ra) # 800040b4 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000436c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004370:	02048263          	beqz	s1,80004394 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    80004374:	00000513          	li	a0,0
}
    80004378:	02813083          	ld	ra,40(sp)
    8000437c:	02013403          	ld	s0,32(sp)
    80004380:	01813483          	ld	s1,24(sp)
    80004384:	01013903          	ld	s2,16(sp)
    80004388:	00813983          	ld	s3,8(sp)
    8000438c:	03010113          	addi	sp,sp,48
    80004390:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004394:	fff00513          	li	a0,-1
    80004398:	fe1ff06f          	j	80004378 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000439c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00113423          	sd	ra,8(sp)
    800043a4:	00813023          	sd	s0,0(sp)
    800043a8:	01010413          	addi	s0,sp,16
    kfree(p);
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	cb0080e7          	jalr	-848(ra) # 8000405c <_Z5kfreePv>
}
    800043b4:	00813083          	ld	ra,8(sp)
    800043b8:	00013403          	ld	s0,0(sp)
    800043bc:	01010113          	addi	sp,sp,16
    800043c0:	00008067          	ret

00000000800043c4 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800043c4:	fe010113          	addi	sp,sp,-32
    800043c8:	00113c23          	sd	ra,24(sp)
    800043cc:	00813823          	sd	s0,16(sp)
    800043d0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800043d4:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	d84080e7          	jalr	-636(ra) # 8000415c <_ZN10KSemaphore4waitEv>
    800043e0:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800043e4:	fe843783          	ld	a5,-24(s0)
    800043e8:	00078513          	mv	a0,a5
}
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	02010113          	addi	sp,sp,32
    800043f8:	00008067          	ret

00000000800043fc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00113c23          	sd	ra,24(sp)
    80004404:	00813823          	sd	s0,16(sp)
    80004408:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000440c:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004410:	00000097          	auipc	ra,0x0
    80004414:	eac080e7          	jalr	-340(ra) # 800042bc <_ZN10KSemaphore6signalEv>
    80004418:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000441c:	fe843783          	ld	a5,-24(s0)
    80004420:	00078513          	mv	a0,a5
}
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	02010113          	addi	sp,sp,32
    80004430:	00008067          	ret

0000000080004434 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004434:	fe010113          	addi	sp,sp,-32
    80004438:	00113c23          	sd	ra,24(sp)
    8000443c:	00813823          	sd	s0,16(sp)
    80004440:	00913423          	sd	s1,8(sp)
    80004444:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004448:	00058493          	mv	s1,a1
    delete kSem;
    8000444c:	00048e63          	beqz	s1,80004468 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004450:	00048513          	mv	a0,s1
    80004454:	00000097          	auipc	ra,0x0
    80004458:	da8080e7          	jalr	-600(ra) # 800041fc <_ZN10KSemaphoreD1Ev>
    8000445c:	00048513          	mv	a0,s1
    80004460:	00000097          	auipc	ra,0x0
    80004464:	f3c080e7          	jalr	-196(ra) # 8000439c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004468:	00000513          	li	a0,0
}
    8000446c:	01813083          	ld	ra,24(sp)
    80004470:	01013403          	ld	s0,16(sp)
    80004474:	00813483          	ld	s1,8(sp)
    80004478:	02010113          	addi	sp,sp,32
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
    800044a4:	ee850513          	addi	a0,a0,-280 # 80009388 <_ZZN5Riscv12printIntegerEmE6digits+0x18>
    800044a8:	fffff097          	auipc	ra,0xfffff
    800044ac:	3e4080e7          	jalr	996(ra) # 8000388c <_ZN5Riscv11printStringEPKc>

    int i = 0;
    800044b0:	00000993          	li	s3,0
    while (!threadEnd) {
    800044b4:	00007797          	auipc	a5,0x7
    800044b8:	69c7a783          	lw	a5,1692(a5) # 8000bb50 <threadEnd>
    800044bc:	0c079863          	bnez	a5,8000458c <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    800044c0:	00092583          	lw	a1,0(s2)
    800044c4:	0305859b          	addiw	a1,a1,48
    800044c8:	00893503          	ld	a0,8(s2)
    800044cc:	00002097          	auipc	ra,0x2
    800044d0:	c9c080e7          	jalr	-868(ra) # 80006168 <_ZN6Buffer3putEi>
        i++;
    800044d4:	0019849b          	addiw	s1,s3,1
    800044d8:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    800044dc:	00007717          	auipc	a4,0x7
    800044e0:	67470713          	addi	a4,a4,1652 # 8000bb50 <threadEnd>
    800044e4:	00472783          	lw	a5,4(a4)
    800044e8:	0017879b          	addiw	a5,a5,1
    800044ec:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    800044f0:	00005517          	auipc	a0,0x5
    800044f4:	eb050513          	addi	a0,a0,-336 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	394080e7          	jalr	916(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    80004500:	00092503          	lw	a0,0(s2)
    80004504:	0305051b          	addiw	a0,a0,48
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	3f4080e7          	jalr	1012(ra) # 800038fc <_ZN5Riscv12printIntegerEm>

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
    8000452c:	62848493          	addi	s1,s1,1576 # 8000bb50 <threadEnd>
    80004530:	0044a503          	lw	a0,4(s1)
    80004534:	0005051b          	sext.w	a0,a0
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	3c4080e7          	jalr	964(ra) # 800038fc <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    80004540:	0044a783          	lw	a5,4(s1)
    80004544:	0007879b          	sext.w	a5,a5
    80004548:	00f00713          	li	a4,15
    8000454c:	f6e794e3          	bne	a5,a4,800044b4 <_Z8producerPv+0x34>
            threadEnd = 1;
    80004550:	00100793          	li	a5,1
    80004554:	00007717          	auipc	a4,0x7
    80004558:	5ef72e23          	sw	a5,1532(a4) # 8000bb50 <threadEnd>
    8000455c:	f59ff06f          	j	800044b4 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    80004560:	00005517          	auipc	a0,0x5
    80004564:	e4850513          	addi	a0,a0,-440 # 800093a8 <_ZZN5Riscv12printIntegerEmE6digits+0x38>
    80004568:	fffff097          	auipc	ra,0xfffff
    8000456c:	324080e7          	jalr	804(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	db4080e7          	jalr	-588(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	e4050513          	addi	a0,a0,-448 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0x48>
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	30c080e7          	jalr	780(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    80004588:	fa1ff06f          	j	80004528 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	e4450513          	addi	a0,a0,-444 # 800093d0 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	2f8080e7          	jalr	760(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    800045ec:	e0050513          	addi	a0,a0,-512 # 800093e8 <_ZZN5Riscv12printIntegerEmE6digits+0x78>
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	29c080e7          	jalr	668(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    80004610:	af450513          	addi	a0,a0,-1292 # 80009100 <CONSOLE_STATUS+0xf0>
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	278080e7          	jalr	632(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    8000461c:	00007797          	auipc	a5,0x7
    80004620:	5347a783          	lw	a5,1332(a5) # 8000bb50 <threadEnd>
    80004624:	04079e63          	bnez	a5,80004680 <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    80004628:	0089b503          	ld	a0,8(s3)
    8000462c:	00002097          	auipc	ra,0x2
    80004630:	bcc080e7          	jalr	-1076(ra) # 800061f8 <_ZN6Buffer3getEv>
    80004634:	00050913          	mv	s2,a0
        i++;
    80004638:	001a049b          	addiw	s1,s4,1
    8000463c:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    80004640:	00005517          	auipc	a0,0x5
    80004644:	dc050513          	addi	a0,a0,-576 # 80009400 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80004648:	fffff097          	auipc	ra,0xfffff
    8000464c:	244080e7          	jalr	580(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    80004650:	00090513          	mv	a0,s2
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	2a8080e7          	jalr	680(ra) # 800038fc <_ZN5Riscv12printIntegerEm>
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
    80004684:	d8850513          	addi	a0,a0,-632 # 80009408 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	204080e7          	jalr	516(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
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
    800046ec:	ca0080e7          	jalr	-864(ra) # 80008388 <__getc>
    while ((key = getc()) != 0x1b) {
    800046f0:	0005059b          	sext.w	a1,a0
    800046f4:	01b00793          	li	a5,27
    800046f8:	02f58a63          	beq	a1,a5,8000472c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800046fc:	0084b503          	ld	a0,8(s1)
    80004700:	00002097          	auipc	ra,0x2
    80004704:	a68080e7          	jalr	-1432(ra) # 80006168 <_ZN6Buffer3putEi>
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
    80004734:	42f72023          	sw	a5,1056(a4) # 8000bb50 <threadEnd>
    delete data->buffer;
    80004738:	0084b903          	ld	s2,8(s1)
    8000473c:	00090e63          	beqz	s2,80004758 <_Z16producerKeyboardPv+0x9c>
    80004740:	00090513          	mv	a0,s2
    80004744:	00002097          	auipc	ra,0x2
    80004748:	978080e7          	jalr	-1672(ra) # 800060bc <_ZN6BufferD1Ev>
    8000474c:	00090513          	mv	a0,s2
    80004750:	fffff097          	auipc	ra,0xfffff
    80004754:	cfc080e7          	jalr	-772(ra) # 8000344c <_ZdlPv>
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
    80004798:	c8c50513          	addi	a0,a0,-884 # 80009420 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	170080e7          	jalr	368(ra) # 8000590c <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	c9c50513          	addi	a0,a0,-868 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	160080e7          	jalr	352(ra) # 8000590c <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	cac50513          	addi	a0,a0,-852 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0xf0>
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	150080e7          	jalr	336(ra) # 8000590c <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	00300513          	li	a0,3
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	2d4080e7          	jalr	724(ra) # 80005aa4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	ca050513          	addi	a0,a0,-864 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0x108>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	12c080e7          	jalr	300(ra) # 8000590c <_Z11printStringPKc>
    800047e8:	00000613          	li	a2,0
    800047ec:	00a00593          	li	a1,10
    800047f0:	00100513          	li	a0,1
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	2b0080e7          	jalr	688(ra) # 80005aa4 <_Z8printIntiii>
    printString(".\n");
    800047fc:	00005517          	auipc	a0,0x5
    80004800:	a6c50513          	addi	a0,a0,-1428 # 80009268 <CONSOLE_STATUS+0x258>
    80004804:	00001097          	auipc	ra,0x1
    80004808:	108080e7          	jalr	264(ra) # 8000590c <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000480c:	03800513          	li	a0,56
    80004810:	fffff097          	auipc	ra,0xfffff
    80004814:	c14080e7          	jalr	-1004(ra) # 80003424 <_Znwm>
    80004818:	00050913          	mv	s2,a0
    8000481c:	00100593          	li	a1,1
    80004820:	00002097          	auipc	ra,0x2
    80004824:	814080e7          	jalr	-2028(ra) # 80006034 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004828:	00000593          	li	a1,0
    8000482c:	00007517          	auipc	a0,0x7
    80004830:	32c50513          	addi	a0,a0,812 # 8000bb58 <waitForAll>
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
    8000484c:	3107b783          	ld	a5,784(a5) # 8000bb58 <waitForAll>
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
    80004898:	2c473703          	ld	a4,708(a4) # 8000bb58 <waitForAll>
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
    800048e8:	27453503          	ld	a0,628(a0) # 8000bb58 <waitForAll>
    800048ec:	ffffd097          	auipc	ra,0xffffd
    800048f0:	ae4080e7          	jalr	-1308(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800048f4:	0014849b          	addiw	s1,s1,1
    800048f8:	00300793          	li	a5,3
    800048fc:	fe97d4e3          	bge	a5,s1,800048e4 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004900:	00007517          	auipc	a0,0x7
    80004904:	25853503          	ld	a0,600(a0) # 8000bb58 <waitForAll>
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
    80004934:	b1c080e7          	jalr	-1252(ra) # 8000344c <_ZdlPv>
    80004938:	00048513          	mv	a0,s1
    8000493c:	00008097          	auipc	ra,0x8
    80004940:	30c080e7          	jalr	780(ra) # 8000cc48 <_Unwind_Resume>

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
    80004a18:	a7c50513          	addi	a0,a0,-1412 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	ef0080e7          	jalr	-272(ra) # 8000590c <_Z11printStringPKc>
    80004a24:	00000613          	li	a2,0
    80004a28:	00a00593          	li	a1,10
    80004a2c:	0009051b          	sext.w	a0,s2
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	074080e7          	jalr	116(ra) # 80005aa4 <_Z8printIntiii>
    80004a38:	00004517          	auipc	a0,0x4
    80004a3c:	6c850513          	addi	a0,a0,1736 # 80009100 <CONSOLE_STATUS+0xf0>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	ecc080e7          	jalr	-308(ra) # 8000590c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a48:	00000493          	li	s1,0
    80004a4c:	f99ff06f          	j	800049e4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004a50:	00005517          	auipc	a0,0x5
    80004a54:	a4850513          	addi	a0,a0,-1464 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	eb4080e7          	jalr	-332(ra) # 8000590c <_Z11printStringPKc>
    finishedA = true;
    80004a60:	00100793          	li	a5,1
    80004a64:	00007717          	auipc	a4,0x7
    80004a68:	0ef70e23          	sb	a5,252(a4) # 8000bb60 <_ZL9finishedA>
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
    80004ae4:	9c850513          	addi	a0,a0,-1592 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	e24080e7          	jalr	-476(ra) # 8000590c <_Z11printStringPKc>
    80004af0:	00000613          	li	a2,0
    80004af4:	00a00593          	li	a1,10
    80004af8:	0009051b          	sext.w	a0,s2
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	fa8080e7          	jalr	-88(ra) # 80005aa4 <_Z8printIntiii>
    80004b04:	00004517          	auipc	a0,0x4
    80004b08:	5fc50513          	addi	a0,a0,1532 # 80009100 <CONSOLE_STATUS+0xf0>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	e00080e7          	jalr	-512(ra) # 8000590c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b14:	00000493          	li	s1,0
    80004b18:	f99ff06f          	j	80004ab0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004b1c:	00005517          	auipc	a0,0x5
    80004b20:	99450513          	addi	a0,a0,-1644 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	de8080e7          	jalr	-536(ra) # 8000590c <_Z11printStringPKc>
    finishedB = true;
    80004b2c:	00100793          	li	a5,1
    80004b30:	00007717          	auipc	a4,0x7
    80004b34:	02f708a3          	sb	a5,49(a4) # 8000bb61 <_ZL9finishedB>
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
    80004b7c:	94850513          	addi	a0,a0,-1720 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	d8c080e7          	jalr	-628(ra) # 8000590c <_Z11printStringPKc>
    80004b88:	00000613          	li	a2,0
    80004b8c:	00a00593          	li	a1,10
    80004b90:	00048513          	mv	a0,s1
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	f10080e7          	jalr	-240(ra) # 80005aa4 <_Z8printIntiii>
    80004b9c:	00004517          	auipc	a0,0x4
    80004ba0:	56450513          	addi	a0,a0,1380 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	d68080e7          	jalr	-664(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004bac:	0014849b          	addiw	s1,s1,1
    80004bb0:	0ff4f493          	andi	s1,s1,255
    80004bb4:	00200793          	li	a5,2
    80004bb8:	fc97f0e3          	bgeu	a5,s1,80004b78 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	90c50513          	addi	a0,a0,-1780 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	d48080e7          	jalr	-696(ra) # 8000590c <_Z11printStringPKc>
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
    80004be0:	8fc50513          	addi	a0,a0,-1796 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	d28080e7          	jalr	-728(ra) # 8000590c <_Z11printStringPKc>
    80004bec:	00000613          	li	a2,0
    80004bf0:	00a00593          	li	a1,10
    80004bf4:	0009051b          	sext.w	a0,s2
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	eac080e7          	jalr	-340(ra) # 80005aa4 <_Z8printIntiii>
    80004c00:	00004517          	auipc	a0,0x4
    80004c04:	50050513          	addi	a0,a0,1280 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	d04080e7          	jalr	-764(ra) # 8000590c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004c10:	00c00513          	li	a0,12
    80004c14:	00000097          	auipc	ra,0x0
    80004c18:	d30080e7          	jalr	-720(ra) # 80004944 <_ZL9fibonaccim>
    80004c1c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c20:	00005517          	auipc	a0,0x5
    80004c24:	8c050513          	addi	a0,a0,-1856 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	ce4080e7          	jalr	-796(ra) # 8000590c <_Z11printStringPKc>
    80004c30:	00000613          	li	a2,0
    80004c34:	00a00593          	li	a1,10
    80004c38:	0009051b          	sext.w	a0,s2
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	e68080e7          	jalr	-408(ra) # 80005aa4 <_Z8printIntiii>
    80004c44:	00004517          	auipc	a0,0x4
    80004c48:	4bc50513          	addi	a0,a0,1212 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	cc0080e7          	jalr	-832(ra) # 8000590c <_Z11printStringPKc>
    80004c54:	0400006f          	j	80004c94 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004c58:	00005517          	auipc	a0,0x5
    80004c5c:	86850513          	addi	a0,a0,-1944 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	cac080e7          	jalr	-852(ra) # 8000590c <_Z11printStringPKc>
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	00048513          	mv	a0,s1
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	e30080e7          	jalr	-464(ra) # 80005aa4 <_Z8printIntiii>
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	48450513          	addi	a0,a0,1156 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	c88080e7          	jalr	-888(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c8c:	0014849b          	addiw	s1,s1,1
    80004c90:	0ff4f493          	andi	s1,s1,255
    80004c94:	00500793          	li	a5,5
    80004c98:	fc97f0e3          	bgeu	a5,s1,80004c58 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004c9c:	00004517          	auipc	a0,0x4
    80004ca0:	7fc50513          	addi	a0,a0,2044 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	c68080e7          	jalr	-920(ra) # 8000590c <_Z11printStringPKc>
    finishedC = true;
    80004cac:	00100793          	li	a5,1
    80004cb0:	00007717          	auipc	a4,0x7
    80004cb4:	eaf70923          	sb	a5,-334(a4) # 8000bb62 <_ZL9finishedC>
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
    80004cfc:	7f850513          	addi	a0,a0,2040 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004d00:	00001097          	auipc	ra,0x1
    80004d04:	c0c080e7          	jalr	-1012(ra) # 8000590c <_Z11printStringPKc>
    80004d08:	00000613          	li	a2,0
    80004d0c:	00a00593          	li	a1,10
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00001097          	auipc	ra,0x1
    80004d18:	d90080e7          	jalr	-624(ra) # 80005aa4 <_Z8printIntiii>
    80004d1c:	00004517          	auipc	a0,0x4
    80004d20:	3e450513          	addi	a0,a0,996 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	be8080e7          	jalr	-1048(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d2c:	0014849b          	addiw	s1,s1,1
    80004d30:	0ff4f493          	andi	s1,s1,255
    80004d34:	00c00793          	li	a5,12
    80004d38:	fc97f0e3          	bgeu	a5,s1,80004cf8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	7bc50513          	addi	a0,a0,1980 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	bc8080e7          	jalr	-1080(ra) # 8000590c <_Z11printStringPKc>
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
    80004d6c:	7a050513          	addi	a0,a0,1952 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	b9c080e7          	jalr	-1124(ra) # 8000590c <_Z11printStringPKc>
    80004d78:	00000613          	li	a2,0
    80004d7c:	00a00593          	li	a1,10
    80004d80:	0009051b          	sext.w	a0,s2
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	d20080e7          	jalr	-736(ra) # 80005aa4 <_Z8printIntiii>
    80004d8c:	00004517          	auipc	a0,0x4
    80004d90:	37450513          	addi	a0,a0,884 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	b78080e7          	jalr	-1160(ra) # 8000590c <_Z11printStringPKc>
    80004d9c:	0400006f          	j	80004ddc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	75050513          	addi	a0,a0,1872 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	b64080e7          	jalr	-1180(ra) # 8000590c <_Z11printStringPKc>
    80004db0:	00000613          	li	a2,0
    80004db4:	00a00593          	li	a1,10
    80004db8:	00048513          	mv	a0,s1
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	ce8080e7          	jalr	-792(ra) # 80005aa4 <_Z8printIntiii>
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	33c50513          	addi	a0,a0,828 # 80009100 <CONSOLE_STATUS+0xf0>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	b40080e7          	jalr	-1216(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004dd4:	0014849b          	addiw	s1,s1,1
    80004dd8:	0ff4f493          	andi	s1,s1,255
    80004ddc:	00f00793          	li	a5,15
    80004de0:	fc97f0e3          	bgeu	a5,s1,80004da0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004de4:	00004517          	auipc	a0,0x4
    80004de8:	73450513          	addi	a0,a0,1844 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	b20080e7          	jalr	-1248(ra) # 8000590c <_Z11printStringPKc>
    finishedD = true;
    80004df4:	00100793          	li	a5,1
    80004df8:	00007717          	auipc	a4,0x7
    80004dfc:	d6f705a3          	sb	a5,-661(a4) # 8000bb63 <_ZL9finishedD>
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

    Riscv::printString("Got here\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	6f050513          	addi	a0,a0,1776 # 80009528 <_ZZN5Riscv12printIntegerEmE6digits+0x1b8>
    80004e40:	fffff097          	auipc	ra,0xfffff
    80004e44:	a4c080e7          	jalr	-1460(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    threads[0] = new WorkerA();
    80004e48:	01000513          	li	a0,16
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	5d8080e7          	jalr	1496(ra) # 80003424 <_Znwm>
    80004e54:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	79c080e7          	jalr	1948(ra) # 800035f4 <_ZN6ThreadC1Ev>
    80004e60:	00007797          	auipc	a5,0x7
    80004e64:	b3078793          	addi	a5,a5,-1232 # 8000b990 <_ZTV7WorkerA+0x10>
    80004e68:	00f4b023          	sd	a5,0(s1)
    80004e6c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	6c850513          	addi	a0,a0,1736 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	a94080e7          	jalr	-1388(ra) # 8000590c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004e80:	01000513          	li	a0,16
    80004e84:	ffffe097          	auipc	ra,0xffffe
    80004e88:	5a0080e7          	jalr	1440(ra) # 80003424 <_Znwm>
    80004e8c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004e90:	ffffe097          	auipc	ra,0xffffe
    80004e94:	764080e7          	jalr	1892(ra) # 800035f4 <_ZN6ThreadC1Ev>
    80004e98:	00007797          	auipc	a5,0x7
    80004e9c:	b2078793          	addi	a5,a5,-1248 # 8000b9b8 <_ZTV7WorkerB+0x10>
    80004ea0:	00f4b023          	sd	a5,0(s1)
    80004ea4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004ea8:	00004517          	auipc	a0,0x4
    80004eac:	6a850513          	addi	a0,a0,1704 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	a5c080e7          	jalr	-1444(ra) # 8000590c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004eb8:	01000513          	li	a0,16
    80004ebc:	ffffe097          	auipc	ra,0xffffe
    80004ec0:	568080e7          	jalr	1384(ra) # 80003424 <_Znwm>
    80004ec4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004ec8:	ffffe097          	auipc	ra,0xffffe
    80004ecc:	72c080e7          	jalr	1836(ra) # 800035f4 <_ZN6ThreadC1Ev>
    80004ed0:	00007797          	auipc	a5,0x7
    80004ed4:	b1078793          	addi	a5,a5,-1264 # 8000b9e0 <_ZTV7WorkerC+0x10>
    80004ed8:	00f4b023          	sd	a5,0(s1)
    80004edc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	68850513          	addi	a0,a0,1672 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	a24080e7          	jalr	-1500(ra) # 8000590c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004ef0:	01000513          	li	a0,16
    80004ef4:	ffffe097          	auipc	ra,0xffffe
    80004ef8:	530080e7          	jalr	1328(ra) # 80003424 <_Znwm>
    80004efc:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80004f00:	ffffe097          	auipc	ra,0xffffe
    80004f04:	6f4080e7          	jalr	1780(ra) # 800035f4 <_ZN6ThreadC1Ev>
    80004f08:	00007797          	auipc	a5,0x7
    80004f0c:	b0078793          	addi	a5,a5,-1280 # 8000ba08 <_ZTV7WorkerD+0x10>
    80004f10:	00f4b023          	sd	a5,0(s1)
    80004f14:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004f18:	00004517          	auipc	a0,0x4
    80004f1c:	66850513          	addi	a0,a0,1640 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	9ec080e7          	jalr	-1556(ra) # 8000590c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004f28:	00000493          	li	s1,0
    80004f2c:	00300793          	li	a5,3
    80004f30:	0297ca63          	blt	a5,s1,80004f64 <_Z20Threads_CPP_API_testv+0x144>
        Riscv::printString("Starting...\n");
    80004f34:	00004517          	auipc	a0,0x4
    80004f38:	66450513          	addi	a0,a0,1636 # 80009598 <_ZZN5Riscv12printIntegerEmE6digits+0x228>
    80004f3c:	fffff097          	auipc	ra,0xfffff
    80004f40:	950080e7          	jalr	-1712(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
        threads[i]->start();
    80004f44:	00349793          	slli	a5,s1,0x3
    80004f48:	fe040713          	addi	a4,s0,-32
    80004f4c:	00f707b3          	add	a5,a4,a5
    80004f50:	fe07b503          	ld	a0,-32(a5)
    80004f54:	ffffe097          	auipc	ra,0xffffe
    80004f58:	5a0080e7          	jalr	1440(ra) # 800034f4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004f5c:	0014849b          	addiw	s1,s1,1
    80004f60:	fcdff06f          	j	80004f2c <_Z20Threads_CPP_API_testv+0x10c>
    }

    Riscv::printString("Thread started\n");
    80004f64:	00004517          	auipc	a0,0x4
    80004f68:	64450513          	addi	a0,a0,1604 # 800095a8 <_ZZN5Riscv12printIntegerEmE6digits+0x238>
    80004f6c:	fffff097          	auipc	ra,0xfffff
    80004f70:	920080e7          	jalr	-1760(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    80004f74:	00c0006f          	j	80004f80 <_Z20Threads_CPP_API_testv+0x160>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004f78:	ffffe097          	auipc	ra,0xffffe
    80004f7c:	5b4080e7          	jalr	1460(ra) # 8000352c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f80:	00007797          	auipc	a5,0x7
    80004f84:	be07c783          	lbu	a5,-1056(a5) # 8000bb60 <_ZL9finishedA>
    80004f88:	fe0788e3          	beqz	a5,80004f78 <_Z20Threads_CPP_API_testv+0x158>
    80004f8c:	00007797          	auipc	a5,0x7
    80004f90:	bd57c783          	lbu	a5,-1067(a5) # 8000bb61 <_ZL9finishedB>
    80004f94:	fe0782e3          	beqz	a5,80004f78 <_Z20Threads_CPP_API_testv+0x158>
    80004f98:	00007797          	auipc	a5,0x7
    80004f9c:	bca7c783          	lbu	a5,-1078(a5) # 8000bb62 <_ZL9finishedC>
    80004fa0:	fc078ce3          	beqz	a5,80004f78 <_Z20Threads_CPP_API_testv+0x158>
    80004fa4:	00007797          	auipc	a5,0x7
    80004fa8:	bbf7c783          	lbu	a5,-1089(a5) # 8000bb63 <_ZL9finishedD>
    80004fac:	fc0786e3          	beqz	a5,80004f78 <_Z20Threads_CPP_API_testv+0x158>
        //Riscv::printString("main\n");
    }

    for (auto thread: threads) { delete thread; }
    80004fb0:	fc040493          	addi	s1,s0,-64
    80004fb4:	0080006f          	j	80004fbc <_Z20Threads_CPP_API_testv+0x19c>
    80004fb8:	00848493          	addi	s1,s1,8
    80004fbc:	fe040793          	addi	a5,s0,-32
    80004fc0:	08f48663          	beq	s1,a5,8000504c <_Z20Threads_CPP_API_testv+0x22c>
    80004fc4:	0004b503          	ld	a0,0(s1)
    80004fc8:	fe0508e3          	beqz	a0,80004fb8 <_Z20Threads_CPP_API_testv+0x198>
    80004fcc:	00053783          	ld	a5,0(a0)
    80004fd0:	0087b783          	ld	a5,8(a5)
    80004fd4:	000780e7          	jalr	a5
    80004fd8:	fe1ff06f          	j	80004fb8 <_Z20Threads_CPP_API_testv+0x198>
    80004fdc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	ffffe097          	auipc	ra,0xffffe
    80004fe8:	468080e7          	jalr	1128(ra) # 8000344c <_ZdlPv>
    80004fec:	00090513          	mv	a0,s2
    80004ff0:	00008097          	auipc	ra,0x8
    80004ff4:	c58080e7          	jalr	-936(ra) # 8000cc48 <_Unwind_Resume>
    80004ff8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004ffc:	00048513          	mv	a0,s1
    80005000:	ffffe097          	auipc	ra,0xffffe
    80005004:	44c080e7          	jalr	1100(ra) # 8000344c <_ZdlPv>
    80005008:	00090513          	mv	a0,s2
    8000500c:	00008097          	auipc	ra,0x8
    80005010:	c3c080e7          	jalr	-964(ra) # 8000cc48 <_Unwind_Resume>
    80005014:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005018:	00048513          	mv	a0,s1
    8000501c:	ffffe097          	auipc	ra,0xffffe
    80005020:	430080e7          	jalr	1072(ra) # 8000344c <_ZdlPv>
    80005024:	00090513          	mv	a0,s2
    80005028:	00008097          	auipc	ra,0x8
    8000502c:	c20080e7          	jalr	-992(ra) # 8000cc48 <_Unwind_Resume>
    80005030:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005034:	00048513          	mv	a0,s1
    80005038:	ffffe097          	auipc	ra,0xffffe
    8000503c:	414080e7          	jalr	1044(ra) # 8000344c <_ZdlPv>
    80005040:	00090513          	mv	a0,s2
    80005044:	00008097          	auipc	ra,0x8
    80005048:	c04080e7          	jalr	-1020(ra) # 8000cc48 <_Unwind_Resume>
    8000504c:	03813083          	ld	ra,56(sp)
    80005050:	03013403          	ld	s0,48(sp)
    80005054:	02813483          	ld	s1,40(sp)
    80005058:	02013903          	ld	s2,32(sp)
    8000505c:	04010113          	addi	sp,sp,64
    80005060:	00008067          	ret

0000000080005064 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005064:	ff010113          	addi	sp,sp,-16
    80005068:	00113423          	sd	ra,8(sp)
    8000506c:	00813023          	sd	s0,0(sp)
    80005070:	01010413          	addi	s0,sp,16
    80005074:	00007797          	auipc	a5,0x7
    80005078:	91c78793          	addi	a5,a5,-1764 # 8000b990 <_ZTV7WorkerA+0x10>
    8000507c:	00f53023          	sd	a5,0(a0)
    80005080:	ffffe097          	auipc	ra,0xffffe
    80005084:	2e8080e7          	jalr	744(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005088:	00813083          	ld	ra,8(sp)
    8000508c:	00013403          	ld	s0,0(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_ZN7WorkerAD0Ev>:
    80005098:	fe010113          	addi	sp,sp,-32
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	00813823          	sd	s0,16(sp)
    800050a4:	00913423          	sd	s1,8(sp)
    800050a8:	02010413          	addi	s0,sp,32
    800050ac:	00050493          	mv	s1,a0
    800050b0:	00007797          	auipc	a5,0x7
    800050b4:	8e078793          	addi	a5,a5,-1824 # 8000b990 <_ZTV7WorkerA+0x10>
    800050b8:	00f53023          	sd	a5,0(a0)
    800050bc:	ffffe097          	auipc	ra,0xffffe
    800050c0:	2ac080e7          	jalr	684(ra) # 80003368 <_ZN6ThreadD1Ev>
    800050c4:	00048513          	mv	a0,s1
    800050c8:	ffffe097          	auipc	ra,0xffffe
    800050cc:	384080e7          	jalr	900(ra) # 8000344c <_ZdlPv>
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	02010113          	addi	sp,sp,32
    800050e0:	00008067          	ret

00000000800050e4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800050e4:	ff010113          	addi	sp,sp,-16
    800050e8:	00113423          	sd	ra,8(sp)
    800050ec:	00813023          	sd	s0,0(sp)
    800050f0:	01010413          	addi	s0,sp,16
    800050f4:	00007797          	auipc	a5,0x7
    800050f8:	8c478793          	addi	a5,a5,-1852 # 8000b9b8 <_ZTV7WorkerB+0x10>
    800050fc:	00f53023          	sd	a5,0(a0)
    80005100:	ffffe097          	auipc	ra,0xffffe
    80005104:	268080e7          	jalr	616(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005108:	00813083          	ld	ra,8(sp)
    8000510c:	00013403          	ld	s0,0(sp)
    80005110:	01010113          	addi	sp,sp,16
    80005114:	00008067          	ret

0000000080005118 <_ZN7WorkerBD0Ev>:
    80005118:	fe010113          	addi	sp,sp,-32
    8000511c:	00113c23          	sd	ra,24(sp)
    80005120:	00813823          	sd	s0,16(sp)
    80005124:	00913423          	sd	s1,8(sp)
    80005128:	02010413          	addi	s0,sp,32
    8000512c:	00050493          	mv	s1,a0
    80005130:	00007797          	auipc	a5,0x7
    80005134:	88878793          	addi	a5,a5,-1912 # 8000b9b8 <_ZTV7WorkerB+0x10>
    80005138:	00f53023          	sd	a5,0(a0)
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	22c080e7          	jalr	556(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005144:	00048513          	mv	a0,s1
    80005148:	ffffe097          	auipc	ra,0xffffe
    8000514c:	304080e7          	jalr	772(ra) # 8000344c <_ZdlPv>
    80005150:	01813083          	ld	ra,24(sp)
    80005154:	01013403          	ld	s0,16(sp)
    80005158:	00813483          	ld	s1,8(sp)
    8000515c:	02010113          	addi	sp,sp,32
    80005160:	00008067          	ret

0000000080005164 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005164:	ff010113          	addi	sp,sp,-16
    80005168:	00113423          	sd	ra,8(sp)
    8000516c:	00813023          	sd	s0,0(sp)
    80005170:	01010413          	addi	s0,sp,16
    80005174:	00007797          	auipc	a5,0x7
    80005178:	86c78793          	addi	a5,a5,-1940 # 8000b9e0 <_ZTV7WorkerC+0x10>
    8000517c:	00f53023          	sd	a5,0(a0)
    80005180:	ffffe097          	auipc	ra,0xffffe
    80005184:	1e8080e7          	jalr	488(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005188:	00813083          	ld	ra,8(sp)
    8000518c:	00013403          	ld	s0,0(sp)
    80005190:	01010113          	addi	sp,sp,16
    80005194:	00008067          	ret

0000000080005198 <_ZN7WorkerCD0Ev>:
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	02010413          	addi	s0,sp,32
    800051ac:	00050493          	mv	s1,a0
    800051b0:	00007797          	auipc	a5,0x7
    800051b4:	83078793          	addi	a5,a5,-2000 # 8000b9e0 <_ZTV7WorkerC+0x10>
    800051b8:	00f53023          	sd	a5,0(a0)
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	1ac080e7          	jalr	428(ra) # 80003368 <_ZN6ThreadD1Ev>
    800051c4:	00048513          	mv	a0,s1
    800051c8:	ffffe097          	auipc	ra,0xffffe
    800051cc:	284080e7          	jalr	644(ra) # 8000344c <_ZdlPv>
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret

00000000800051e4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00113423          	sd	ra,8(sp)
    800051ec:	00813023          	sd	s0,0(sp)
    800051f0:	01010413          	addi	s0,sp,16
    800051f4:	00007797          	auipc	a5,0x7
    800051f8:	81478793          	addi	a5,a5,-2028 # 8000ba08 <_ZTV7WorkerD+0x10>
    800051fc:	00f53023          	sd	a5,0(a0)
    80005200:	ffffe097          	auipc	ra,0xffffe
    80005204:	168080e7          	jalr	360(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005208:	00813083          	ld	ra,8(sp)
    8000520c:	00013403          	ld	s0,0(sp)
    80005210:	01010113          	addi	sp,sp,16
    80005214:	00008067          	ret

0000000080005218 <_ZN7WorkerDD0Ev>:
    80005218:	fe010113          	addi	sp,sp,-32
    8000521c:	00113c23          	sd	ra,24(sp)
    80005220:	00813823          	sd	s0,16(sp)
    80005224:	00913423          	sd	s1,8(sp)
    80005228:	02010413          	addi	s0,sp,32
    8000522c:	00050493          	mv	s1,a0
    80005230:	00006797          	auipc	a5,0x6
    80005234:	7d878793          	addi	a5,a5,2008 # 8000ba08 <_ZTV7WorkerD+0x10>
    80005238:	00f53023          	sd	a5,0(a0)
    8000523c:	ffffe097          	auipc	ra,0xffffe
    80005240:	12c080e7          	jalr	300(ra) # 80003368 <_ZN6ThreadD1Ev>
    80005244:	00048513          	mv	a0,s1
    80005248:	ffffe097          	auipc	ra,0xffffe
    8000524c:	204080e7          	jalr	516(ra) # 8000344c <_ZdlPv>
    80005250:	01813083          	ld	ra,24(sp)
    80005254:	01013403          	ld	s0,16(sp)
    80005258:	00813483          	ld	s1,8(sp)
    8000525c:	02010113          	addi	sp,sp,32
    80005260:	00008067          	ret

0000000080005264 <_ZN7WorkerA3runEv>:
    void run() override {
    80005264:	ff010113          	addi	sp,sp,-16
    80005268:	00113423          	sd	ra,8(sp)
    8000526c:	00813023          	sd	s0,0(sp)
    80005270:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005274:	00000593          	li	a1,0
    80005278:	fffff097          	auipc	ra,0xfffff
    8000527c:	740080e7          	jalr	1856(ra) # 800049b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005280:	00813083          	ld	ra,8(sp)
    80005284:	00013403          	ld	s0,0(sp)
    80005288:	01010113          	addi	sp,sp,16
    8000528c:	00008067          	ret

0000000080005290 <_ZN7WorkerB3runEv>:
    void run() override {
    80005290:	ff010113          	addi	sp,sp,-16
    80005294:	00113423          	sd	ra,8(sp)
    80005298:	00813023          	sd	s0,0(sp)
    8000529c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800052a0:	00000593          	li	a1,0
    800052a4:	fffff097          	auipc	ra,0xfffff
    800052a8:	7e0080e7          	jalr	2016(ra) # 80004a84 <_ZN7WorkerB11workerBodyBEPv>
    }
    800052ac:	00813083          	ld	ra,8(sp)
    800052b0:	00013403          	ld	s0,0(sp)
    800052b4:	01010113          	addi	sp,sp,16
    800052b8:	00008067          	ret

00000000800052bc <_ZN7WorkerC3runEv>:
    void run() override {
    800052bc:	ff010113          	addi	sp,sp,-16
    800052c0:	00113423          	sd	ra,8(sp)
    800052c4:	00813023          	sd	s0,0(sp)
    800052c8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800052cc:	00000593          	li	a1,0
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	888080e7          	jalr	-1912(ra) # 80004b58 <_ZN7WorkerC11workerBodyCEPv>
    }
    800052d8:	00813083          	ld	ra,8(sp)
    800052dc:	00013403          	ld	s0,0(sp)
    800052e0:	01010113          	addi	sp,sp,16
    800052e4:	00008067          	ret

00000000800052e8 <_ZN7WorkerD3runEv>:

    void run() override {
    800052e8:	ff010113          	addi	sp,sp,-16
    800052ec:	00113423          	sd	ra,8(sp)
    800052f0:	00813023          	sd	s0,0(sp)
    800052f4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800052f8:	00000593          	li	a1,0
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	9dc080e7          	jalr	-1572(ra) # 80004cd8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005304:	00813083          	ld	ra,8(sp)
    80005308:	00013403          	ld	s0,0(sp)
    8000530c:	01010113          	addi	sp,sp,16
    80005310:	00008067          	ret

0000000080005314 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005314:	fe010113          	addi	sp,sp,-32
    80005318:	00113c23          	sd	ra,24(sp)
    8000531c:	00813823          	sd	s0,16(sp)
    80005320:	00913423          	sd	s1,8(sp)
    80005324:	01213023          	sd	s2,0(sp)
    80005328:	02010413          	addi	s0,sp,32
    8000532c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    80005330:	00100793          	li	a5,1
    80005334:	02a7f863          	bgeu	a5,a0,80005364 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005338:	00a00793          	li	a5,10
    8000533c:	02f577b3          	remu	a5,a0,a5
    80005340:	02078e63          	beqz	a5,8000537c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005344:	fff48513          	addi	a0,s1,-1
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	fcc080e7          	jalr	-52(ra) # 80005314 <_ZL9fibonaccim>
    80005350:	00050913          	mv	s2,a0
    80005354:	ffe48513          	addi	a0,s1,-2
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	fbc080e7          	jalr	-68(ra) # 80005314 <_ZL9fibonaccim>
    80005360:	00a90533          	add	a0,s2,a0
}
    80005364:	01813083          	ld	ra,24(sp)
    80005368:	01013403          	ld	s0,16(sp)
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	00013903          	ld	s2,0(sp)
    80005374:	02010113          	addi	sp,sp,32
    80005378:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	fa8080e7          	jalr	-88(ra) # 80001324 <thread_dispatch>
    80005384:	fc1ff06f          	j	80005344 <_ZL9fibonaccim+0x30>

0000000080005388 <_Z11workerBodyCPv>:
    Riscv::printString("B finished!\n");
    thread_dispatch();
    finishedB = true;
}

void workerBodyC(void* arg) {
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00113c23          	sd	ra,24(sp)
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	01213023          	sd	s2,0(sp)
    8000539c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800053a0:	00000493          	li	s1,0
    800053a4:	0400006f          	j	800053e4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800053a8:	00004517          	auipc	a0,0x4
    800053ac:	11850513          	addi	a0,a0,280 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	55c080e7          	jalr	1372(ra) # 8000590c <_Z11printStringPKc>
    800053b8:	00000613          	li	a2,0
    800053bc:	00a00593          	li	a1,10
    800053c0:	00048513          	mv	a0,s1
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	6e0080e7          	jalr	1760(ra) # 80005aa4 <_Z8printIntiii>
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	d3450513          	addi	a0,a0,-716 # 80009100 <CONSOLE_STATUS+0xf0>
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	538080e7          	jalr	1336(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053dc:	0014849b          	addiw	s1,s1,1
    800053e0:	0ff4f493          	andi	s1,s1,255
    800053e4:	00200793          	li	a5,2
    800053e8:	fc97f0e3          	bgeu	a5,s1,800053a8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800053ec:	00004517          	auipc	a0,0x4
    800053f0:	0dc50513          	addi	a0,a0,220 # 800094c8 <_ZZN5Riscv12printIntegerEmE6digits+0x158>
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	518080e7          	jalr	1304(ra) # 8000590c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053fc:	00700313          	li	t1,7
    thread_dispatch();
    80005400:	ffffc097          	auipc	ra,0xffffc
    80005404:	f24080e7          	jalr	-220(ra) # 80001324 <thread_dispatch>
    printString("C: returned\n");
    80005408:	00004517          	auipc	a0,0x4
    8000540c:	1b050513          	addi	a0,a0,432 # 800095b8 <_ZZN5Riscv12printIntegerEmE6digits+0x248>
    80005410:	00000097          	auipc	ra,0x0
    80005414:	4fc080e7          	jalr	1276(ra) # 8000590c <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005418:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000541c:	00004517          	auipc	a0,0x4
    80005420:	0bc50513          	addi	a0,a0,188 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80005424:	00000097          	auipc	ra,0x0
    80005428:	4e8080e7          	jalr	1256(ra) # 8000590c <_Z11printStringPKc>
    8000542c:	00000613          	li	a2,0
    80005430:	00a00593          	li	a1,10
    80005434:	0009051b          	sext.w	a0,s2
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	66c080e7          	jalr	1644(ra) # 80005aa4 <_Z8printIntiii>
    80005440:	00004517          	auipc	a0,0x4
    80005444:	cc050513          	addi	a0,a0,-832 # 80009100 <CONSOLE_STATUS+0xf0>
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	4c4080e7          	jalr	1220(ra) # 8000590c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005450:	00c00513          	li	a0,12
    80005454:	00000097          	auipc	ra,0x0
    80005458:	ec0080e7          	jalr	-320(ra) # 80005314 <_ZL9fibonaccim>
    8000545c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005460:	00004517          	auipc	a0,0x4
    80005464:	08050513          	addi	a0,a0,128 # 800094e0 <_ZZN5Riscv12printIntegerEmE6digits+0x170>
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	4a4080e7          	jalr	1188(ra) # 8000590c <_Z11printStringPKc>
    80005470:	00000613          	li	a2,0
    80005474:	00a00593          	li	a1,10
    80005478:	0009051b          	sext.w	a0,s2
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	628080e7          	jalr	1576(ra) # 80005aa4 <_Z8printIntiii>
    80005484:	00004517          	auipc	a0,0x4
    80005488:	c7c50513          	addi	a0,a0,-900 # 80009100 <CONSOLE_STATUS+0xf0>
    8000548c:	00000097          	auipc	ra,0x0
    80005490:	480080e7          	jalr	1152(ra) # 8000590c <_Z11printStringPKc>
    80005494:	0400006f          	j	800054d4 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	02850513          	addi	a0,a0,40 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	46c080e7          	jalr	1132(ra) # 8000590c <_Z11printStringPKc>
    800054a8:	00000613          	li	a2,0
    800054ac:	00a00593          	li	a1,10
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	5f0080e7          	jalr	1520(ra) # 80005aa4 <_Z8printIntiii>
    800054bc:	00004517          	auipc	a0,0x4
    800054c0:	c4450513          	addi	a0,a0,-956 # 80009100 <CONSOLE_STATUS+0xf0>
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	448080e7          	jalr	1096(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800054cc:	0014849b          	addiw	s1,s1,1
    800054d0:	0ff4f493          	andi	s1,s1,255
    800054d4:	00500793          	li	a5,5
    800054d8:	fc97f0e3          	bgeu	a5,s1,80005498 <_Z11workerBodyCPv+0x110>
    }

    printString("C finished!\n");
    800054dc:	00004517          	auipc	a0,0x4
    800054e0:	0ec50513          	addi	a0,a0,236 # 800095c8 <_ZZN5Riscv12printIntegerEmE6digits+0x258>
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	428080e7          	jalr	1064(ra) # 8000590c <_Z11printStringPKc>
    thread_dispatch();
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	e38080e7          	jalr	-456(ra) # 80001324 <thread_dispatch>
    finishedC = true;
}
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	00013903          	ld	s2,0(sp)
    80005504:	02010113          	addi	sp,sp,32
    80005508:	00008067          	ret

000000008000550c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00113c23          	sd	ra,24(sp)
    80005514:	00813823          	sd	s0,16(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	01213023          	sd	s2,0(sp)
    80005520:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005524:	00a00493          	li	s1,10
    80005528:	0400006f          	j	80005568 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000552c:	00004517          	auipc	a0,0x4
    80005530:	fc450513          	addi	a0,a0,-60 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005534:	00000097          	auipc	ra,0x0
    80005538:	3d8080e7          	jalr	984(ra) # 8000590c <_Z11printStringPKc>
    8000553c:	00000613          	li	a2,0
    80005540:	00a00593          	li	a1,10
    80005544:	00048513          	mv	a0,s1
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	55c080e7          	jalr	1372(ra) # 80005aa4 <_Z8printIntiii>
    80005550:	00004517          	auipc	a0,0x4
    80005554:	bb050513          	addi	a0,a0,-1104 # 80009100 <CONSOLE_STATUS+0xf0>
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	3b4080e7          	jalr	948(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005560:	0014849b          	addiw	s1,s1,1
    80005564:	0ff4f493          	andi	s1,s1,255
    80005568:	00c00793          	li	a5,12
    8000556c:	fc97f0e3          	bgeu	a5,s1,8000552c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005570:	00004517          	auipc	a0,0x4
    80005574:	f8850513          	addi	a0,a0,-120 # 800094f8 <_ZZN5Riscv12printIntegerEmE6digits+0x188>
    80005578:	00000097          	auipc	ra,0x0
    8000557c:	394080e7          	jalr	916(ra) # 8000590c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005580:	00500313          	li	t1,5
    thread_dispatch();
    80005584:	ffffc097          	auipc	ra,0xffffc
    80005588:	da0080e7          	jalr	-608(ra) # 80001324 <thread_dispatch>
    printString("D: returned\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	04c50513          	addi	a0,a0,76 # 800095d8 <_ZZN5Riscv12printIntegerEmE6digits+0x268>
    80005594:	00000097          	auipc	ra,0x0
    80005598:	378080e7          	jalr	888(ra) # 8000590c <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    8000559c:	01000513          	li	a0,16
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	d74080e7          	jalr	-652(ra) # 80005314 <_ZL9fibonaccim>
    800055a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055ac:	00004517          	auipc	a0,0x4
    800055b0:	f5c50513          	addi	a0,a0,-164 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x198>
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	358080e7          	jalr	856(ra) # 8000590c <_Z11printStringPKc>
    800055bc:	00000613          	li	a2,0
    800055c0:	00a00593          	li	a1,10
    800055c4:	0009051b          	sext.w	a0,s2
    800055c8:	00000097          	auipc	ra,0x0
    800055cc:	4dc080e7          	jalr	1244(ra) # 80005aa4 <_Z8printIntiii>
    800055d0:	00004517          	auipc	a0,0x4
    800055d4:	b3050513          	addi	a0,a0,-1232 # 80009100 <CONSOLE_STATUS+0xf0>
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	334080e7          	jalr	820(ra) # 8000590c <_Z11printStringPKc>
    800055e0:	0400006f          	j	80005620 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055e4:	00004517          	auipc	a0,0x4
    800055e8:	f0c50513          	addi	a0,a0,-244 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	320080e7          	jalr	800(ra) # 8000590c <_Z11printStringPKc>
    800055f4:	00000613          	li	a2,0
    800055f8:	00a00593          	li	a1,10
    800055fc:	00048513          	mv	a0,s1
    80005600:	00000097          	auipc	ra,0x0
    80005604:	4a4080e7          	jalr	1188(ra) # 80005aa4 <_Z8printIntiii>
    80005608:	00004517          	auipc	a0,0x4
    8000560c:	af850513          	addi	a0,a0,-1288 # 80009100 <CONSOLE_STATUS+0xf0>
    80005610:	00000097          	auipc	ra,0x0
    80005614:	2fc080e7          	jalr	764(ra) # 8000590c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005618:	0014849b          	addiw	s1,s1,1
    8000561c:	0ff4f493          	andi	s1,s1,255
    80005620:	00f00793          	li	a5,15
    80005624:	fc97f0e3          	bgeu	a5,s1,800055e4 <_Z11workerBodyDPv+0xd8>
    }

    printString("D finished!\n");
    80005628:	00004517          	auipc	a0,0x4
    8000562c:	ef050513          	addi	a0,a0,-272 # 80009518 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80005630:	00000097          	auipc	ra,0x0
    80005634:	2dc080e7          	jalr	732(ra) # 8000590c <_Z11printStringPKc>
    thread_dispatch();
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	cec080e7          	jalr	-788(ra) # 80001324 <thread_dispatch>
    finishedD = true;
}
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	00013903          	ld	s2,0(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    80005658:	fe010113          	addi	sp,sp,-32
    8000565c:	00113c23          	sd	ra,24(sp)
    80005660:	00813823          	sd	s0,16(sp)
    80005664:	00913423          	sd	s1,8(sp)
    80005668:	01213023          	sd	s2,0(sp)
    8000566c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005670:	00000913          	li	s2,0
    80005674:	0380006f          	j	800056ac <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80005678:	ffffc097          	auipc	ra,0xffffc
    8000567c:	cac080e7          	jalr	-852(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005680:	00148493          	addi	s1,s1,1
    80005684:	000027b7          	lui	a5,0x2
    80005688:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000568c:	0097ee63          	bltu	a5,s1,800056a8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005690:	00000713          	li	a4,0
    80005694:	000077b7          	lui	a5,0x7
    80005698:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000569c:	fce7eee3          	bltu	a5,a4,80005678 <_Z11workerBodyAPv+0x20>
    800056a0:	00170713          	addi	a4,a4,1
    800056a4:	ff1ff06f          	j	80005694 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056a8:	00190913          	addi	s2,s2,1
    800056ac:	00900793          	li	a5,9
    800056b0:	0527e063          	bltu	a5,s2,800056f0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056b4:	00004517          	auipc	a0,0x4
    800056b8:	ddc50513          	addi	a0,a0,-548 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	250080e7          	jalr	592(ra) # 8000590c <_Z11printStringPKc>
    800056c4:	00000613          	li	a2,0
    800056c8:	00a00593          	li	a1,10
    800056cc:	0009051b          	sext.w	a0,s2
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	3d4080e7          	jalr	980(ra) # 80005aa4 <_Z8printIntiii>
    800056d8:	00004517          	auipc	a0,0x4
    800056dc:	a2850513          	addi	a0,a0,-1496 # 80009100 <CONSOLE_STATUS+0xf0>
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	22c080e7          	jalr	556(ra) # 8000590c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056e8:	00000493          	li	s1,0
    800056ec:	f99ff06f          	j	80005684 <_Z11workerBodyAPv+0x2c>
    Riscv::printString("A finished!\n");
    800056f0:	00004517          	auipc	a0,0x4
    800056f4:	da850513          	addi	a0,a0,-600 # 80009498 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    800056f8:	ffffe097          	auipc	ra,0xffffe
    800056fc:	194080e7          	jalr	404(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
}
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00813483          	ld	s1,8(sp)
    8000570c:	00013903          	ld	s2,0(sp)
    80005710:	02010113          	addi	sp,sp,32
    80005714:	00008067          	ret

0000000080005718 <_Z11workerBodyBPv>:
{
    80005718:	fe010113          	addi	sp,sp,-32
    8000571c:	00113c23          	sd	ra,24(sp)
    80005720:	00813823          	sd	s0,16(sp)
    80005724:	00913423          	sd	s1,8(sp)
    80005728:	01213023          	sd	s2,0(sp)
    8000572c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005730:	00000913          	li	s2,0
    80005734:	0380006f          	j	8000576c <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80005738:	ffffc097          	auipc	ra,0xffffc
    8000573c:	bec080e7          	jalr	-1044(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005740:	00148493          	addi	s1,s1,1
    80005744:	000027b7          	lui	a5,0x2
    80005748:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000574c:	0097ee63          	bltu	a5,s1,80005768 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005750:	00000713          	li	a4,0
    80005754:	000077b7          	lui	a5,0x7
    80005758:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000575c:	fce7eee3          	bltu	a5,a4,80005738 <_Z11workerBodyBPv+0x20>
    80005760:	00170713          	addi	a4,a4,1
    80005764:	ff1ff06f          	j	80005754 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005768:	00190913          	addi	s2,s2,1
    8000576c:	00f00793          	li	a5,15
    80005770:	0527e063          	bltu	a5,s2,800057b0 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005774:	00004517          	auipc	a0,0x4
    80005778:	d3450513          	addi	a0,a0,-716 # 800094a8 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	190080e7          	jalr	400(ra) # 8000590c <_Z11printStringPKc>
    80005784:	00000613          	li	a2,0
    80005788:	00a00593          	li	a1,10
    8000578c:	0009051b          	sext.w	a0,s2
    80005790:	00000097          	auipc	ra,0x0
    80005794:	314080e7          	jalr	788(ra) # 80005aa4 <_Z8printIntiii>
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	96850513          	addi	a0,a0,-1688 # 80009100 <CONSOLE_STATUS+0xf0>
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	16c080e7          	jalr	364(ra) # 8000590c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057a8:	00000493          	li	s1,0
    800057ac:	f99ff06f          	j	80005744 <_Z11workerBodyBPv+0x2c>
    Riscv::printString("B finished!\n");
    800057b0:	00004517          	auipc	a0,0x4
    800057b4:	d0050513          	addi	a0,a0,-768 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    800057b8:	ffffe097          	auipc	ra,0xffffe
    800057bc:	0d4080e7          	jalr	212(ra) # 8000388c <_ZN5Riscv11printStringEPKc>
    thread_dispatch();
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	b64080e7          	jalr	-1180(ra) # 80001324 <thread_dispatch>
    finishedB = true;
    800057c8:	00100793          	li	a5,1
    800057cc:	00006717          	auipc	a4,0x6
    800057d0:	38f70c23          	sb	a5,920(a4) # 8000bb64 <_ZL9finishedB>
}
    800057d4:	01813083          	ld	ra,24(sp)
    800057d8:	01013403          	ld	s0,16(sp)
    800057dc:	00813483          	ld	s1,8(sp)
    800057e0:	00013903          	ld	s2,0(sp)
    800057e4:	02010113          	addi	sp,sp,32
    800057e8:	00008067          	ret

00000000800057ec <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    800057ec:	fc010113          	addi	sp,sp,-64
    800057f0:	02113c23          	sd	ra,56(sp)
    800057f4:	02813823          	sd	s0,48(sp)
    800057f8:	02913423          	sd	s1,40(sp)
    800057fc:	03213023          	sd	s2,32(sp)
    80005800:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005804:	00000613          	li	a2,0
    80005808:	00000597          	auipc	a1,0x0
    8000580c:	e5058593          	addi	a1,a1,-432 # 80005658 <_Z11workerBodyAPv>
    80005810:	fc040513          	addi	a0,s0,-64
    80005814:	ffffc097          	auipc	ra,0xffffc
    80005818:	a90080e7          	jalr	-1392(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    8000581c:	00004517          	auipc	a0,0x4
    80005820:	d1c50513          	addi	a0,a0,-740 # 80009538 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80005824:	00000097          	auipc	ra,0x0
    80005828:	0e8080e7          	jalr	232(ra) # 8000590c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000582c:	00000613          	li	a2,0
    80005830:	00000597          	auipc	a1,0x0
    80005834:	ee858593          	addi	a1,a1,-280 # 80005718 <_Z11workerBodyBPv>
    80005838:	fc840513          	addi	a0,s0,-56
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	a68080e7          	jalr	-1432(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005844:	00004517          	auipc	a0,0x4
    80005848:	d0c50513          	addi	a0,a0,-756 # 80009550 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	0c0080e7          	jalr	192(ra) # 8000590c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005854:	00000613          	li	a2,0
    80005858:	00000597          	auipc	a1,0x0
    8000585c:	b3058593          	addi	a1,a1,-1232 # 80005388 <_Z11workerBodyCPv>
    80005860:	fd040513          	addi	a0,s0,-48
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	a40080e7          	jalr	-1472(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    8000586c:	00004517          	auipc	a0,0x4
    80005870:	cfc50513          	addi	a0,a0,-772 # 80009568 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005874:	00000097          	auipc	ra,0x0
    80005878:	098080e7          	jalr	152(ra) # 8000590c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000587c:	00000613          	li	a2,0
    80005880:	00000597          	auipc	a1,0x0
    80005884:	c8c58593          	addi	a1,a1,-884 # 8000550c <_Z11workerBodyDPv>
    80005888:	fd840513          	addi	a0,s0,-40
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	a18080e7          	jalr	-1512(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005894:	00004517          	auipc	a0,0x4
    80005898:	cec50513          	addi	a0,a0,-788 # 80009580 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	070080e7          	jalr	112(ra) # 8000590c <_Z11printStringPKc>

    while (!(finishedB)) {
    800058a4:	00006797          	auipc	a5,0x6
    800058a8:	2c07c783          	lbu	a5,704(a5) # 8000bb64 <_ZL9finishedB>
    800058ac:	00079863          	bnez	a5,800058bc <_Z18Threads_C_API_testv+0xd0>
        //printString("Main thread\n");
        thread_dispatch();
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	a74080e7          	jalr	-1420(ra) # 80001324 <thread_dispatch>
    800058b8:	fedff06f          	j	800058a4 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) {
    800058bc:	fc040493          	addi	s1,s0,-64
    800058c0:	0080006f          	j	800058c8 <_Z18Threads_C_API_testv+0xdc>
    800058c4:	00848493          	addi	s1,s1,8
    800058c8:	fe040793          	addi	a5,s0,-32
    800058cc:	02f48463          	beq	s1,a5,800058f4 <_Z18Threads_C_API_testv+0x108>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800058d0:	0004b903          	ld	s2,0(s1)
    800058d4:	fe0908e3          	beqz	s2,800058c4 <_Z18Threads_C_API_testv+0xd8>
    800058d8:	00090513          	mv	a0,s2
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	fc8080e7          	jalr	-56(ra) # 800028a4 <_ZN3PCBD1Ev>
    800058e4:	00090513          	mv	a0,s2
    800058e8:	ffffd097          	auipc	ra,0xffffd
    800058ec:	f94080e7          	jalr	-108(ra) # 8000287c <_ZN3PCBdlEPv>
    800058f0:	fd5ff06f          	j	800058c4 <_Z18Threads_C_API_testv+0xd8>
    }
}
    800058f4:	03813083          	ld	ra,56(sp)
    800058f8:	03013403          	ld	s0,48(sp)
    800058fc:	02813483          	ld	s1,40(sp)
    80005900:	02013903          	ld	s2,32(sp)
    80005904:	04010113          	addi	sp,sp,64
    80005908:	00008067          	ret

000000008000590c <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    8000590c:	fe010113          	addi	sp,sp,-32
    80005910:	00113c23          	sd	ra,24(sp)
    80005914:	00813823          	sd	s0,16(sp)
    80005918:	00913423          	sd	s1,8(sp)
    8000591c:	02010413          	addi	s0,sp,32
    80005920:	00050493          	mv	s1,a0
    LOCK();
    80005924:	00100613          	li	a2,1
    80005928:	00000593          	li	a1,0
    8000592c:	00006517          	auipc	a0,0x6
    80005930:	23c50513          	addi	a0,a0,572 # 8000bb68 <lockPrint>
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	8d4080e7          	jalr	-1836(ra) # 80001208 <copy_and_swap>
    8000593c:	fe0514e3          	bnez	a0,80005924 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005940:	0004c503          	lbu	a0,0(s1)
    80005944:	00050a63          	beqz	a0,80005958 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    80005948:	00003097          	auipc	ra,0x3
    8000594c:	a04080e7          	jalr	-1532(ra) # 8000834c <__putc>
        putc(*string);
        string++;
    80005950:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005954:	fedff06f          	j	80005940 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005958:	00000613          	li	a2,0
    8000595c:	00100593          	li	a1,1
    80005960:	00006517          	auipc	a0,0x6
    80005964:	20850513          	addi	a0,a0,520 # 8000bb68 <lockPrint>
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	8a0080e7          	jalr	-1888(ra) # 80001208 <copy_and_swap>
    80005970:	fe0514e3          	bnez	a0,80005958 <_Z11printStringPKc+0x4c>
}
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005988:	fd010113          	addi	sp,sp,-48
    8000598c:	02113423          	sd	ra,40(sp)
    80005990:	02813023          	sd	s0,32(sp)
    80005994:	00913c23          	sd	s1,24(sp)
    80005998:	01213823          	sd	s2,16(sp)
    8000599c:	01313423          	sd	s3,8(sp)
    800059a0:	01413023          	sd	s4,0(sp)
    800059a4:	03010413          	addi	s0,sp,48
    800059a8:	00050993          	mv	s3,a0
    800059ac:	00058a13          	mv	s4,a1
    LOCK();
    800059b0:	00100613          	li	a2,1
    800059b4:	00000593          	li	a1,0
    800059b8:	00006517          	auipc	a0,0x6
    800059bc:	1b050513          	addi	a0,a0,432 # 8000bb68 <lockPrint>
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	848080e7          	jalr	-1976(ra) # 80001208 <copy_and_swap>
    800059c8:	fe0514e3          	bnez	a0,800059b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    800059cc:	00000913          	li	s2,0
    800059d0:	00090493          	mv	s1,s2
    800059d4:	0019091b          	addiw	s2,s2,1
    800059d8:	03495a63          	bge	s2,s4,80005a0c <_Z9getStringPci+0x84>
    return __getc();
    800059dc:	00003097          	auipc	ra,0x3
    800059e0:	9ac080e7          	jalr	-1620(ra) # 80008388 <__getc>
        cc = getc();
        if (cc < 1)
    800059e4:	02050463          	beqz	a0,80005a0c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800059e8:	009984b3          	add	s1,s3,s1
    800059ec:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800059f0:	00a00793          	li	a5,10
    800059f4:	00f50a63          	beq	a0,a5,80005a08 <_Z9getStringPci+0x80>
    800059f8:	00d00793          	li	a5,13
    800059fc:	fcf51ae3          	bne	a0,a5,800059d0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005a00:	00090493          	mv	s1,s2
    80005a04:	0080006f          	j	80005a0c <_Z9getStringPci+0x84>
    80005a08:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a0c:	009984b3          	add	s1,s3,s1
    80005a10:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a14:	00000613          	li	a2,0
    80005a18:	00100593          	li	a1,1
    80005a1c:	00006517          	auipc	a0,0x6
    80005a20:	14c50513          	addi	a0,a0,332 # 8000bb68 <lockPrint>
    80005a24:	ffffb097          	auipc	ra,0xffffb
    80005a28:	7e4080e7          	jalr	2020(ra) # 80001208 <copy_and_swap>
    80005a2c:	fe0514e3          	bnez	a0,80005a14 <_Z9getStringPci+0x8c>
    return buf;
}
    80005a30:	00098513          	mv	a0,s3
    80005a34:	02813083          	ld	ra,40(sp)
    80005a38:	02013403          	ld	s0,32(sp)
    80005a3c:	01813483          	ld	s1,24(sp)
    80005a40:	01013903          	ld	s2,16(sp)
    80005a44:	00813983          	ld	s3,8(sp)
    80005a48:	00013a03          	ld	s4,0(sp)
    80005a4c:	03010113          	addi	sp,sp,48
    80005a50:	00008067          	ret

0000000080005a54 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a54:	ff010113          	addi	sp,sp,-16
    80005a58:	00813423          	sd	s0,8(sp)
    80005a5c:	01010413          	addi	s0,sp,16
    80005a60:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a64:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a68:	0006c603          	lbu	a2,0(a3)
    80005a6c:	fd06071b          	addiw	a4,a2,-48
    80005a70:	0ff77713          	andi	a4,a4,255
    80005a74:	00900793          	li	a5,9
    80005a78:	02e7e063          	bltu	a5,a4,80005a98 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005a7c:	0025179b          	slliw	a5,a0,0x2
    80005a80:	00a787bb          	addw	a5,a5,a0
    80005a84:	0017979b          	slliw	a5,a5,0x1
    80005a88:	00168693          	addi	a3,a3,1
    80005a8c:	00c787bb          	addw	a5,a5,a2
    80005a90:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a94:	fd5ff06f          	j	80005a68 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a98:	00813403          	ld	s0,8(sp)
    80005a9c:	01010113          	addi	sp,sp,16
    80005aa0:	00008067          	ret

0000000080005aa4 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005aa4:	fc010113          	addi	sp,sp,-64
    80005aa8:	02113c23          	sd	ra,56(sp)
    80005aac:	02813823          	sd	s0,48(sp)
    80005ab0:	02913423          	sd	s1,40(sp)
    80005ab4:	03213023          	sd	s2,32(sp)
    80005ab8:	01313c23          	sd	s3,24(sp)
    80005abc:	04010413          	addi	s0,sp,64
    80005ac0:	00050493          	mv	s1,a0
    80005ac4:	00058913          	mv	s2,a1
    80005ac8:	00060993          	mv	s3,a2
    LOCK();
    80005acc:	00100613          	li	a2,1
    80005ad0:	00000593          	li	a1,0
    80005ad4:	00006517          	auipc	a0,0x6
    80005ad8:	09450513          	addi	a0,a0,148 # 8000bb68 <lockPrint>
    80005adc:	ffffb097          	auipc	ra,0xffffb
    80005ae0:	72c080e7          	jalr	1836(ra) # 80001208 <copy_and_swap>
    80005ae4:	fe0514e3          	bnez	a0,80005acc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005ae8:	00098463          	beqz	s3,80005af0 <_Z8printIntiii+0x4c>
    80005aec:	0804c463          	bltz	s1,80005b74 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005af0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005af4:	00000593          	li	a1,0
    }

    i = 0;
    80005af8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005afc:	0009079b          	sext.w	a5,s2
    80005b00:	0325773b          	remuw	a4,a0,s2
    80005b04:	00048613          	mv	a2,s1
    80005b08:	0014849b          	addiw	s1,s1,1
    80005b0c:	02071693          	slli	a3,a4,0x20
    80005b10:	0206d693          	srli	a3,a3,0x20
    80005b14:	00004717          	auipc	a4,0x4
    80005b18:	ad470713          	addi	a4,a4,-1324 # 800095e8 <_ZL6digits>
    80005b1c:	00d70733          	add	a4,a4,a3
    80005b20:	00074683          	lbu	a3,0(a4)
    80005b24:	fd040713          	addi	a4,s0,-48
    80005b28:	00c70733          	add	a4,a4,a2
    80005b2c:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005b30:	0005071b          	sext.w	a4,a0
    80005b34:	0325553b          	divuw	a0,a0,s2
    80005b38:	fcf772e3          	bgeu	a4,a5,80005afc <_Z8printIntiii+0x58>
    if (neg)
    80005b3c:	00058c63          	beqz	a1,80005b54 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005b40:	fd040793          	addi	a5,s0,-48
    80005b44:	009784b3          	add	s1,a5,s1
    80005b48:	02d00793          	li	a5,45
    80005b4c:	fef48823          	sb	a5,-16(s1)
    80005b50:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005b54:	fff4849b          	addiw	s1,s1,-1
    80005b58:	0204c463          	bltz	s1,80005b80 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005b5c:	fd040793          	addi	a5,s0,-48
    80005b60:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005b64:	ff07c503          	lbu	a0,-16(a5)
    80005b68:	00002097          	auipc	ra,0x2
    80005b6c:	7e4080e7          	jalr	2020(ra) # 8000834c <__putc>
}
    80005b70:	fe5ff06f          	j	80005b54 <_Z8printIntiii+0xb0>
        x = -xx;
    80005b74:	4090053b          	negw	a0,s1
        neg = 1;
    80005b78:	00100593          	li	a1,1
        x = -xx;
    80005b7c:	f7dff06f          	j	80005af8 <_Z8printIntiii+0x54>

    UNLOCK();
    80005b80:	00000613          	li	a2,0
    80005b84:	00100593          	li	a1,1
    80005b88:	00006517          	auipc	a0,0x6
    80005b8c:	fe050513          	addi	a0,a0,-32 # 8000bb68 <lockPrint>
    80005b90:	ffffb097          	auipc	ra,0xffffb
    80005b94:	678080e7          	jalr	1656(ra) # 80001208 <copy_and_swap>
    80005b98:	fe0514e3          	bnez	a0,80005b80 <_Z8printIntiii+0xdc>
}
    80005b9c:	03813083          	ld	ra,56(sp)
    80005ba0:	03013403          	ld	s0,48(sp)
    80005ba4:	02813483          	ld	s1,40(sp)
    80005ba8:	02013903          	ld	s2,32(sp)
    80005bac:	01813983          	ld	s3,24(sp)
    80005bb0:	04010113          	addi	sp,sp,64
    80005bb4:	00008067          	ret

0000000080005bb8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005bb8:	fe010113          	addi	sp,sp,-32
    80005bbc:	00113c23          	sd	ra,24(sp)
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00913423          	sd	s1,8(sp)
    80005bc8:	01213023          	sd	s2,0(sp)
    80005bcc:	02010413          	addi	s0,sp,32
    80005bd0:	00050493          	mv	s1,a0
    80005bd4:	00b52023          	sw	a1,0(a0)
    80005bd8:	00052823          	sw	zero,16(a0)
    80005bdc:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005be0:	00259513          	slli	a0,a1,0x2
    80005be4:	ffffb097          	auipc	ra,0xffffb
    80005be8:	664080e7          	jalr	1636(ra) # 80001248 <mem_alloc>
    80005bec:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005bf0:	01000513          	li	a0,16
    80005bf4:	ffffe097          	auipc	ra,0xffffe
    80005bf8:	830080e7          	jalr	-2000(ra) # 80003424 <_Znwm>
    80005bfc:	00050913          	mv	s2,a0
    80005c00:	00000593          	li	a1,0
    80005c04:	ffffe097          	auipc	ra,0xffffe
    80005c08:	a6c080e7          	jalr	-1428(ra) # 80003670 <_ZN9SemaphoreC1Ej>
    80005c0c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005c10:	01000513          	li	a0,16
    80005c14:	ffffe097          	auipc	ra,0xffffe
    80005c18:	810080e7          	jalr	-2032(ra) # 80003424 <_Znwm>
    80005c1c:	00050913          	mv	s2,a0
    80005c20:	0004a583          	lw	a1,0(s1)
    80005c24:	ffffe097          	auipc	ra,0xffffe
    80005c28:	a4c080e7          	jalr	-1460(ra) # 80003670 <_ZN9SemaphoreC1Ej>
    80005c2c:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005c30:	01000513          	li	a0,16
    80005c34:	ffffd097          	auipc	ra,0xffffd
    80005c38:	7f0080e7          	jalr	2032(ra) # 80003424 <_Znwm>
    80005c3c:	00050913          	mv	s2,a0
    80005c40:	00100593          	li	a1,1
    80005c44:	ffffe097          	auipc	ra,0xffffe
    80005c48:	a2c080e7          	jalr	-1492(ra) # 80003670 <_ZN9SemaphoreC1Ej>
    80005c4c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c50:	01000513          	li	a0,16
    80005c54:	ffffd097          	auipc	ra,0xffffd
    80005c58:	7d0080e7          	jalr	2000(ra) # 80003424 <_Znwm>
    80005c5c:	00050913          	mv	s2,a0
    80005c60:	00100593          	li	a1,1
    80005c64:	ffffe097          	auipc	ra,0xffffe
    80005c68:	a0c080e7          	jalr	-1524(ra) # 80003670 <_ZN9SemaphoreC1Ej>
    80005c6c:	0324b823          	sd	s2,48(s1)
}
    80005c70:	01813083          	ld	ra,24(sp)
    80005c74:	01013403          	ld	s0,16(sp)
    80005c78:	00813483          	ld	s1,8(sp)
    80005c7c:	00013903          	ld	s2,0(sp)
    80005c80:	02010113          	addi	sp,sp,32
    80005c84:	00008067          	ret
    80005c88:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c8c:	00090513          	mv	a0,s2
    80005c90:	ffffd097          	auipc	ra,0xffffd
    80005c94:	7bc080e7          	jalr	1980(ra) # 8000344c <_ZdlPv>
    80005c98:	00048513          	mv	a0,s1
    80005c9c:	00007097          	auipc	ra,0x7
    80005ca0:	fac080e7          	jalr	-84(ra) # 8000cc48 <_Unwind_Resume>
    80005ca4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	ffffd097          	auipc	ra,0xffffd
    80005cb0:	7a0080e7          	jalr	1952(ra) # 8000344c <_ZdlPv>
    80005cb4:	00048513          	mv	a0,s1
    80005cb8:	00007097          	auipc	ra,0x7
    80005cbc:	f90080e7          	jalr	-112(ra) # 8000cc48 <_Unwind_Resume>
    80005cc0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005cc4:	00090513          	mv	a0,s2
    80005cc8:	ffffd097          	auipc	ra,0xffffd
    80005ccc:	784080e7          	jalr	1924(ra) # 8000344c <_ZdlPv>
    80005cd0:	00048513          	mv	a0,s1
    80005cd4:	00007097          	auipc	ra,0x7
    80005cd8:	f74080e7          	jalr	-140(ra) # 8000cc48 <_Unwind_Resume>
    80005cdc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005ce0:	00090513          	mv	a0,s2
    80005ce4:	ffffd097          	auipc	ra,0xffffd
    80005ce8:	768080e7          	jalr	1896(ra) # 8000344c <_ZdlPv>
    80005cec:	00048513          	mv	a0,s1
    80005cf0:	00007097          	auipc	ra,0x7
    80005cf4:	f58080e7          	jalr	-168(ra) # 8000cc48 <_Unwind_Resume>

0000000080005cf8 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005cf8:	fe010113          	addi	sp,sp,-32
    80005cfc:	00113c23          	sd	ra,24(sp)
    80005d00:	00813823          	sd	s0,16(sp)
    80005d04:	00913423          	sd	s1,8(sp)
    80005d08:	02010413          	addi	s0,sp,32
    80005d0c:	00050493          	mv	s1,a0
    __putc(c);
    80005d10:	00a00513          	li	a0,10
    80005d14:	00002097          	auipc	ra,0x2
    80005d18:	638080e7          	jalr	1592(ra) # 8000834c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005d1c:	0104a783          	lw	a5,16(s1)
    80005d20:	0144a703          	lw	a4,20(s1)
    80005d24:	00e78c63          	beq	a5,a4,80005d3c <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005d28:	0017879b          	addiw	a5,a5,1
    80005d2c:	0004a703          	lw	a4,0(s1)
    80005d30:	02e7e7bb          	remw	a5,a5,a4
    80005d34:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005d38:	fe5ff06f          	j	80005d1c <_ZN9BufferCPPD1Ev+0x24>
    80005d3c:	02100513          	li	a0,33
    80005d40:	00002097          	auipc	ra,0x2
    80005d44:	60c080e7          	jalr	1548(ra) # 8000834c <__putc>
    80005d48:	00a00513          	li	a0,10
    80005d4c:	00002097          	auipc	ra,0x2
    80005d50:	600080e7          	jalr	1536(ra) # 8000834c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005d54:	0084b503          	ld	a0,8(s1)
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	520080e7          	jalr	1312(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005d60:	0204b503          	ld	a0,32(s1)
    80005d64:	00050863          	beqz	a0,80005d74 <_ZN9BufferCPPD1Ev+0x7c>
    80005d68:	00053783          	ld	a5,0(a0)
    80005d6c:	0087b783          	ld	a5,8(a5)
    80005d70:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d74:	0184b503          	ld	a0,24(s1)
    80005d78:	00050863          	beqz	a0,80005d88 <_ZN9BufferCPPD1Ev+0x90>
    80005d7c:	00053783          	ld	a5,0(a0)
    80005d80:	0087b783          	ld	a5,8(a5)
    80005d84:	000780e7          	jalr	a5
    delete mutexTail;
    80005d88:	0304b503          	ld	a0,48(s1)
    80005d8c:	00050863          	beqz	a0,80005d9c <_ZN9BufferCPPD1Ev+0xa4>
    80005d90:	00053783          	ld	a5,0(a0)
    80005d94:	0087b783          	ld	a5,8(a5)
    80005d98:	000780e7          	jalr	a5
    delete mutexHead;
    80005d9c:	0284b503          	ld	a0,40(s1)
    80005da0:	00050863          	beqz	a0,80005db0 <_ZN9BufferCPPD1Ev+0xb8>
    80005da4:	00053783          	ld	a5,0(a0)
    80005da8:	0087b783          	ld	a5,8(a5)
    80005dac:	000780e7          	jalr	a5

}
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	02010113          	addi	sp,sp,32
    80005dc0:	00008067          	ret

0000000080005dc4 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005dc4:	fe010113          	addi	sp,sp,-32
    80005dc8:	00113c23          	sd	ra,24(sp)
    80005dcc:	00813823          	sd	s0,16(sp)
    80005dd0:	00913423          	sd	s1,8(sp)
    80005dd4:	01213023          	sd	s2,0(sp)
    80005dd8:	02010413          	addi	s0,sp,32
    80005ddc:	00050493          	mv	s1,a0
    80005de0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005de4:	01853503          	ld	a0,24(a0)
    80005de8:	ffffe097          	auipc	ra,0xffffe
    80005dec:	850080e7          	jalr	-1968(ra) # 80003638 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005df0:	0304b503          	ld	a0,48(s1)
    80005df4:	ffffe097          	auipc	ra,0xffffe
    80005df8:	844080e7          	jalr	-1980(ra) # 80003638 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005dfc:	0084b783          	ld	a5,8(s1)
    80005e00:	0144a703          	lw	a4,20(s1)
    80005e04:	00271713          	slli	a4,a4,0x2
    80005e08:	00e787b3          	add	a5,a5,a4
    80005e0c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e10:	0144a783          	lw	a5,20(s1)
    80005e14:	0017879b          	addiw	a5,a5,1
    80005e18:	0004a703          	lw	a4,0(s1)
    80005e1c:	02e7e7bb          	remw	a5,a5,a4
    80005e20:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e24:	0304b503          	ld	a0,48(s1)
    80005e28:	ffffe097          	auipc	ra,0xffffe
    80005e2c:	894080e7          	jalr	-1900(ra) # 800036bc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e30:	0204b503          	ld	a0,32(s1)
    80005e34:	ffffe097          	auipc	ra,0xffffe
    80005e38:	888080e7          	jalr	-1912(ra) # 800036bc <_ZN9Semaphore6signalEv>

}
    80005e3c:	01813083          	ld	ra,24(sp)
    80005e40:	01013403          	ld	s0,16(sp)
    80005e44:	00813483          	ld	s1,8(sp)
    80005e48:	00013903          	ld	s2,0(sp)
    80005e4c:	02010113          	addi	sp,sp,32
    80005e50:	00008067          	ret

0000000080005e54 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e54:	fe010113          	addi	sp,sp,-32
    80005e58:	00113c23          	sd	ra,24(sp)
    80005e5c:	00813823          	sd	s0,16(sp)
    80005e60:	00913423          	sd	s1,8(sp)
    80005e64:	01213023          	sd	s2,0(sp)
    80005e68:	02010413          	addi	s0,sp,32
    80005e6c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e70:	02053503          	ld	a0,32(a0)
    80005e74:	ffffd097          	auipc	ra,0xffffd
    80005e78:	7c4080e7          	jalr	1988(ra) # 80003638 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e7c:	0284b503          	ld	a0,40(s1)
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	7b8080e7          	jalr	1976(ra) # 80003638 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e88:	0084b703          	ld	a4,8(s1)
    80005e8c:	0104a783          	lw	a5,16(s1)
    80005e90:	00279693          	slli	a3,a5,0x2
    80005e94:	00d70733          	add	a4,a4,a3
    80005e98:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e9c:	0017879b          	addiw	a5,a5,1
    80005ea0:	0004a703          	lw	a4,0(s1)
    80005ea4:	02e7e7bb          	remw	a5,a5,a4
    80005ea8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005eac:	0284b503          	ld	a0,40(s1)
    80005eb0:	ffffe097          	auipc	ra,0xffffe
    80005eb4:	80c080e7          	jalr	-2036(ra) # 800036bc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005eb8:	0184b503          	ld	a0,24(s1)
    80005ebc:	ffffe097          	auipc	ra,0xffffe
    80005ec0:	800080e7          	jalr	-2048(ra) # 800036bc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ec4:	00090513          	mv	a0,s2
    80005ec8:	01813083          	ld	ra,24(sp)
    80005ecc:	01013403          	ld	s0,16(sp)
    80005ed0:	00813483          	ld	s1,8(sp)
    80005ed4:	00013903          	ld	s2,0(sp)
    80005ed8:	02010113          	addi	sp,sp,32
    80005edc:	00008067          	ret

0000000080005ee0 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80005ee0:	ff010113          	addi	sp,sp,-16
    80005ee4:	00113423          	sd	ra,8(sp)
    80005ee8:	00813023          	sd	s0,0(sp)
    80005eec:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80005ef0:	00000097          	auipc	ra,0x0
    80005ef4:	0bc080e7          	jalr	188(ra) # 80005fac <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80005ef8:	00813083          	ld	ra,8(sp)
    80005efc:	00013403          	ld	s0,0(sp)
    80005f00:	01010113          	addi	sp,sp,16
    80005f04:	00008067          	ret

0000000080005f08 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00113c23          	sd	ra,24(sp)
    80005f10:	00813823          	sd	s0,16(sp)
    80005f14:	00913423          	sd	s1,8(sp)
    80005f18:	01213023          	sd	s2,0(sp)
    80005f1c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f20:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f24:	00600493          	li	s1,6
    while (--i > 0) {
    80005f28:	fff4849b          	addiw	s1,s1,-1
    80005f2c:	04905463          	blez	s1,80005f74 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	6d050513          	addi	a0,a0,1744 # 80009600 <_ZL6digits+0x18>
    80005f38:	00000097          	auipc	ra,0x0
    80005f3c:	9d4080e7          	jalr	-1580(ra) # 8000590c <_Z11printStringPKc>
        printInt(sleep_time);
    80005f40:	00000613          	li	a2,0
    80005f44:	00a00593          	li	a1,10
    80005f48:	0009051b          	sext.w	a0,s2
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	b58080e7          	jalr	-1192(ra) # 80005aa4 <_Z8printIntiii>
        printString(" !\n");
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	6b450513          	addi	a0,a0,1716 # 80009608 <_ZL6digits+0x20>
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	9b0080e7          	jalr	-1616(ra) # 8000590c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f64:	00090513          	mv	a0,s2
    80005f68:	ffffb097          	auipc	ra,0xffffb
    80005f6c:	4c0080e7          	jalr	1216(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    80005f70:	fb9ff06f          	j	80005f28 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f74:	00a00793          	li	a5,10
    80005f78:	02f95933          	divu	s2,s2,a5
    80005f7c:	fff90913          	addi	s2,s2,-1
    80005f80:	00006797          	auipc	a5,0x6
    80005f84:	bf078793          	addi	a5,a5,-1040 # 8000bb70 <finished>
    80005f88:	01278933          	add	s2,a5,s2
    80005f8c:	00100793          	li	a5,1
    80005f90:	00f90023          	sb	a5,0(s2)
}
    80005f94:	01813083          	ld	ra,24(sp)
    80005f98:	01013403          	ld	s0,16(sp)
    80005f9c:	00813483          	ld	s1,8(sp)
    80005fa0:	00013903          	ld	s2,0(sp)
    80005fa4:	02010113          	addi	sp,sp,32
    80005fa8:	00008067          	ret

0000000080005fac <_Z12testSleepingv>:

void testSleeping()
{
    80005fac:	fc010113          	addi	sp,sp,-64
    80005fb0:	02113c23          	sd	ra,56(sp)
    80005fb4:	02813823          	sd	s0,48(sp)
    80005fb8:	02913423          	sd	s1,40(sp)
    80005fbc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005fc0:	00a00793          	li	a5,10
    80005fc4:	fcf43823          	sd	a5,-48(s0)
    80005fc8:	01400793          	li	a5,20
    80005fcc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fd0:	00000493          	li	s1,0
    80005fd4:	02c0006f          	j	80006000 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005fd8:	00349793          	slli	a5,s1,0x3
    80005fdc:	fd040613          	addi	a2,s0,-48
    80005fe0:	00f60633          	add	a2,a2,a5
    80005fe4:	00000597          	auipc	a1,0x0
    80005fe8:	f2458593          	addi	a1,a1,-220 # 80005f08 <_Z9sleepyRunPv>
    80005fec:	fc040513          	addi	a0,s0,-64
    80005ff0:	00f50533          	add	a0,a0,a5
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	2b0080e7          	jalr	688(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ffc:	0014849b          	addiw	s1,s1,1
    80006000:	00100793          	li	a5,1
    80006004:	fc97dae3          	bge	a5,s1,80005fd8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006008:	00006797          	auipc	a5,0x6
    8000600c:	b687c783          	lbu	a5,-1176(a5) # 8000bb70 <finished>
    80006010:	fe078ce3          	beqz	a5,80006008 <_Z12testSleepingv+0x5c>
    80006014:	00006797          	auipc	a5,0x6
    80006018:	b5d7c783          	lbu	a5,-1187(a5) # 8000bb71 <finished+0x1>
    8000601c:	fe0786e3          	beqz	a5,80006008 <_Z12testSleepingv+0x5c>
}
    80006020:	03813083          	ld	ra,56(sp)
    80006024:	03013403          	ld	s0,48(sp)
    80006028:	02813483          	ld	s1,40(sp)
    8000602c:	04010113          	addi	sp,sp,64
    80006030:	00008067          	ret

0000000080006034 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80006034:	fe010113          	addi	sp,sp,-32
    80006038:	00113c23          	sd	ra,24(sp)
    8000603c:	00813823          	sd	s0,16(sp)
    80006040:	00913423          	sd	s1,8(sp)
    80006044:	02010413          	addi	s0,sp,32
    80006048:	00050493          	mv	s1,a0
    8000604c:	00b52023          	sw	a1,0(a0)
    80006050:	00052823          	sw	zero,16(a0)
    80006054:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006058:	00259513          	slli	a0,a1,0x2
    8000605c:	ffffb097          	auipc	ra,0xffffb
    80006060:	1ec080e7          	jalr	492(ra) # 80001248 <mem_alloc>
    80006064:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006068:	00000593          	li	a1,0
    8000606c:	02048513          	addi	a0,s1,32
    80006070:	ffffb097          	auipc	ra,0xffffb
    80006074:	2fc080e7          	jalr	764(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80006078:	0004a583          	lw	a1,0(s1)
    8000607c:	01848513          	addi	a0,s1,24
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	2ec080e7          	jalr	748(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80006088:	00100593          	li	a1,1
    8000608c:	02848513          	addi	a0,s1,40
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	2dc080e7          	jalr	732(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80006098:	00100593          	li	a1,1
    8000609c:	03048513          	addi	a0,s1,48
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	2cc080e7          	jalr	716(ra) # 8000136c <sem_open>
}
    800060a8:	01813083          	ld	ra,24(sp)
    800060ac:	01013403          	ld	s0,16(sp)
    800060b0:	00813483          	ld	s1,8(sp)
    800060b4:	02010113          	addi	sp,sp,32
    800060b8:	00008067          	ret

00000000800060bc <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800060bc:	fe010113          	addi	sp,sp,-32
    800060c0:	00113c23          	sd	ra,24(sp)
    800060c4:	00813823          	sd	s0,16(sp)
    800060c8:	00913423          	sd	s1,8(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	00050493          	mv	s1,a0
    800060d4:	00a00513          	li	a0,10
    800060d8:	00002097          	auipc	ra,0x2
    800060dc:	274080e7          	jalr	628(ra) # 8000834c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800060e0:	0104a783          	lw	a5,16(s1)
    800060e4:	0144a703          	lw	a4,20(s1)
    800060e8:	00e78c63          	beq	a5,a4,80006100 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800060ec:	0017879b          	addiw	a5,a5,1
    800060f0:	0004a703          	lw	a4,0(s1)
    800060f4:	02e7e7bb          	remw	a5,a5,a4
    800060f8:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800060fc:	fe5ff06f          	j	800060e0 <_ZN6BufferD1Ev+0x24>
    80006100:	02100513          	li	a0,33
    80006104:	00002097          	auipc	ra,0x2
    80006108:	248080e7          	jalr	584(ra) # 8000834c <__putc>
    8000610c:	00a00513          	li	a0,10
    80006110:	00002097          	auipc	ra,0x2
    80006114:	23c080e7          	jalr	572(ra) # 8000834c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80006118:	0084b503          	ld	a0,8(s1)
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	15c080e7          	jalr	348(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80006124:	0204b503          	ld	a0,32(s1)
    80006128:	ffffb097          	auipc	ra,0xffffb
    8000612c:	27c080e7          	jalr	636(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006130:	0184b503          	ld	a0,24(s1)
    80006134:	ffffb097          	auipc	ra,0xffffb
    80006138:	270080e7          	jalr	624(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    8000613c:	0304b503          	ld	a0,48(s1)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	264080e7          	jalr	612(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80006148:	0284b503          	ld	a0,40(s1)
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	258080e7          	jalr	600(ra) # 800013a4 <sem_close>
}
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	01013403          	ld	s0,16(sp)
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	02010113          	addi	sp,sp,32
    80006164:	00008067          	ret

0000000080006168 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80006168:	fe010113          	addi	sp,sp,-32
    8000616c:	00113c23          	sd	ra,24(sp)
    80006170:	00813823          	sd	s0,16(sp)
    80006174:	00913423          	sd	s1,8(sp)
    80006178:	01213023          	sd	s2,0(sp)
    8000617c:	02010413          	addi	s0,sp,32
    80006180:	00050493          	mv	s1,a0
    80006184:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006188:	01853503          	ld	a0,24(a0)
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	244080e7          	jalr	580(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80006194:	0304b503          	ld	a0,48(s1)
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	238080e7          	jalr	568(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    800061a0:	0084b783          	ld	a5,8(s1)
    800061a4:	0144a703          	lw	a4,20(s1)
    800061a8:	00271713          	slli	a4,a4,0x2
    800061ac:	00e787b3          	add	a5,a5,a4
    800061b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061b4:	0144a783          	lw	a5,20(s1)
    800061b8:	0017879b          	addiw	a5,a5,1
    800061bc:	0004a703          	lw	a4,0(s1)
    800061c0:	02e7e7bb          	remw	a5,a5,a4
    800061c4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800061c8:	0304b503          	ld	a0,48(s1)
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	230080e7          	jalr	560(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    800061d4:	0204b503          	ld	a0,32(s1)
    800061d8:	ffffb097          	auipc	ra,0xffffb
    800061dc:	224080e7          	jalr	548(ra) # 800013fc <sem_signal>

}
    800061e0:	01813083          	ld	ra,24(sp)
    800061e4:	01013403          	ld	s0,16(sp)
    800061e8:	00813483          	ld	s1,8(sp)
    800061ec:	00013903          	ld	s2,0(sp)
    800061f0:	02010113          	addi	sp,sp,32
    800061f4:	00008067          	ret

00000000800061f8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800061f8:	fe010113          	addi	sp,sp,-32
    800061fc:	00113c23          	sd	ra,24(sp)
    80006200:	00813823          	sd	s0,16(sp)
    80006204:	00913423          	sd	s1,8(sp)
    80006208:	01213023          	sd	s2,0(sp)
    8000620c:	02010413          	addi	s0,sp,32
    80006210:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006214:	02053503          	ld	a0,32(a0)
    80006218:	ffffb097          	auipc	ra,0xffffb
    8000621c:	1b8080e7          	jalr	440(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006220:	0284b503          	ld	a0,40(s1)
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	1ac080e7          	jalr	428(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    8000622c:	0084b703          	ld	a4,8(s1)
    80006230:	0104a783          	lw	a5,16(s1)
    80006234:	00279693          	slli	a3,a5,0x2
    80006238:	00d70733          	add	a4,a4,a3
    8000623c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006240:	0017879b          	addiw	a5,a5,1
    80006244:	0004a703          	lw	a4,0(s1)
    80006248:	02e7e7bb          	remw	a5,a5,a4
    8000624c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006250:	0284b503          	ld	a0,40(s1)
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	1a8080e7          	jalr	424(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    8000625c:	0184b503          	ld	a0,24(s1)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	19c080e7          	jalr	412(ra) # 800013fc <sem_signal>

    return ret;
}
    80006268:	00090513          	mv	a0,s2
    8000626c:	01813083          	ld	ra,24(sp)
    80006270:	01013403          	ld	s0,16(sp)
    80006274:	00813483          	ld	s1,8(sp)
    80006278:	00013903          	ld	s2,0(sp)
    8000627c:	02010113          	addi	sp,sp,32
    80006280:	00008067          	ret

0000000080006284 <start>:
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00813423          	sd	s0,8(sp)
    8000628c:	01010413          	addi	s0,sp,16
    80006290:	300027f3          	csrr	a5,mstatus
    80006294:	ffffe737          	lui	a4,0xffffe
    80006298:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a1f>
    8000629c:	00e7f7b3          	and	a5,a5,a4
    800062a0:	00001737          	lui	a4,0x1
    800062a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062a8:	00e7e7b3          	or	a5,a5,a4
    800062ac:	30079073          	csrw	mstatus,a5
    800062b0:	00000797          	auipc	a5,0x0
    800062b4:	16078793          	addi	a5,a5,352 # 80006410 <system_main>
    800062b8:	34179073          	csrw	mepc,a5
    800062bc:	00000793          	li	a5,0
    800062c0:	18079073          	csrw	satp,a5
    800062c4:	000107b7          	lui	a5,0x10
    800062c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062cc:	30279073          	csrw	medeleg,a5
    800062d0:	30379073          	csrw	mideleg,a5
    800062d4:	104027f3          	csrr	a5,sie
    800062d8:	2227e793          	ori	a5,a5,546
    800062dc:	10479073          	csrw	sie,a5
    800062e0:	fff00793          	li	a5,-1
    800062e4:	00a7d793          	srli	a5,a5,0xa
    800062e8:	3b079073          	csrw	pmpaddr0,a5
    800062ec:	00f00793          	li	a5,15
    800062f0:	3a079073          	csrw	pmpcfg0,a5
    800062f4:	f14027f3          	csrr	a5,mhartid
    800062f8:	0200c737          	lui	a4,0x200c
    800062fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006300:	0007869b          	sext.w	a3,a5
    80006304:	00269713          	slli	a4,a3,0x2
    80006308:	000f4637          	lui	a2,0xf4
    8000630c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006310:	00d70733          	add	a4,a4,a3
    80006314:	0037979b          	slliw	a5,a5,0x3
    80006318:	020046b7          	lui	a3,0x2004
    8000631c:	00d787b3          	add	a5,a5,a3
    80006320:	00c585b3          	add	a1,a1,a2
    80006324:	00371693          	slli	a3,a4,0x3
    80006328:	00006717          	auipc	a4,0x6
    8000632c:	85870713          	addi	a4,a4,-1960 # 8000bb80 <timer_scratch>
    80006330:	00b7b023          	sd	a1,0(a5)
    80006334:	00d70733          	add	a4,a4,a3
    80006338:	00f73c23          	sd	a5,24(a4)
    8000633c:	02c73023          	sd	a2,32(a4)
    80006340:	34071073          	csrw	mscratch,a4
    80006344:	00000797          	auipc	a5,0x0
    80006348:	6ec78793          	addi	a5,a5,1772 # 80006a30 <timervec>
    8000634c:	30579073          	csrw	mtvec,a5
    80006350:	300027f3          	csrr	a5,mstatus
    80006354:	0087e793          	ori	a5,a5,8
    80006358:	30079073          	csrw	mstatus,a5
    8000635c:	304027f3          	csrr	a5,mie
    80006360:	0807e793          	ori	a5,a5,128
    80006364:	30479073          	csrw	mie,a5
    80006368:	f14027f3          	csrr	a5,mhartid
    8000636c:	0007879b          	sext.w	a5,a5
    80006370:	00078213          	mv	tp,a5
    80006374:	30200073          	mret
    80006378:	00813403          	ld	s0,8(sp)
    8000637c:	01010113          	addi	sp,sp,16
    80006380:	00008067          	ret

0000000080006384 <timerinit>:
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00813423          	sd	s0,8(sp)
    8000638c:	01010413          	addi	s0,sp,16
    80006390:	f14027f3          	csrr	a5,mhartid
    80006394:	0200c737          	lui	a4,0x200c
    80006398:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000639c:	0007869b          	sext.w	a3,a5
    800063a0:	00269713          	slli	a4,a3,0x2
    800063a4:	000f4637          	lui	a2,0xf4
    800063a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063ac:	00d70733          	add	a4,a4,a3
    800063b0:	0037979b          	slliw	a5,a5,0x3
    800063b4:	020046b7          	lui	a3,0x2004
    800063b8:	00d787b3          	add	a5,a5,a3
    800063bc:	00c585b3          	add	a1,a1,a2
    800063c0:	00371693          	slli	a3,a4,0x3
    800063c4:	00005717          	auipc	a4,0x5
    800063c8:	7bc70713          	addi	a4,a4,1980 # 8000bb80 <timer_scratch>
    800063cc:	00b7b023          	sd	a1,0(a5)
    800063d0:	00d70733          	add	a4,a4,a3
    800063d4:	00f73c23          	sd	a5,24(a4)
    800063d8:	02c73023          	sd	a2,32(a4)
    800063dc:	34071073          	csrw	mscratch,a4
    800063e0:	00000797          	auipc	a5,0x0
    800063e4:	65078793          	addi	a5,a5,1616 # 80006a30 <timervec>
    800063e8:	30579073          	csrw	mtvec,a5
    800063ec:	300027f3          	csrr	a5,mstatus
    800063f0:	0087e793          	ori	a5,a5,8
    800063f4:	30079073          	csrw	mstatus,a5
    800063f8:	304027f3          	csrr	a5,mie
    800063fc:	0807e793          	ori	a5,a5,128
    80006400:	30479073          	csrw	mie,a5
    80006404:	00813403          	ld	s0,8(sp)
    80006408:	01010113          	addi	sp,sp,16
    8000640c:	00008067          	ret

0000000080006410 <system_main>:
    80006410:	fe010113          	addi	sp,sp,-32
    80006414:	00813823          	sd	s0,16(sp)
    80006418:	00913423          	sd	s1,8(sp)
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	02010413          	addi	s0,sp,32
    80006424:	00000097          	auipc	ra,0x0
    80006428:	0c4080e7          	jalr	196(ra) # 800064e8 <cpuid>
    8000642c:	00005497          	auipc	s1,0x5
    80006430:	64448493          	addi	s1,s1,1604 # 8000ba70 <started>
    80006434:	02050263          	beqz	a0,80006458 <system_main+0x48>
    80006438:	0004a783          	lw	a5,0(s1)
    8000643c:	0007879b          	sext.w	a5,a5
    80006440:	fe078ce3          	beqz	a5,80006438 <system_main+0x28>
    80006444:	0ff0000f          	fence
    80006448:	00003517          	auipc	a0,0x3
    8000644c:	1f850513          	addi	a0,a0,504 # 80009640 <_ZL6digits+0x58>
    80006450:	00001097          	auipc	ra,0x1
    80006454:	a7c080e7          	jalr	-1412(ra) # 80006ecc <panic>
    80006458:	00001097          	auipc	ra,0x1
    8000645c:	9d0080e7          	jalr	-1584(ra) # 80006e28 <consoleinit>
    80006460:	00001097          	auipc	ra,0x1
    80006464:	15c080e7          	jalr	348(ra) # 800075bc <printfinit>
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	c9850513          	addi	a0,a0,-872 # 80009100 <CONSOLE_STATUS+0xf0>
    80006470:	00001097          	auipc	ra,0x1
    80006474:	ab8080e7          	jalr	-1352(ra) # 80006f28 <__printf>
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	19850513          	addi	a0,a0,408 # 80009610 <_ZL6digits+0x28>
    80006480:	00001097          	auipc	ra,0x1
    80006484:	aa8080e7          	jalr	-1368(ra) # 80006f28 <__printf>
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	c7850513          	addi	a0,a0,-904 # 80009100 <CONSOLE_STATUS+0xf0>
    80006490:	00001097          	auipc	ra,0x1
    80006494:	a98080e7          	jalr	-1384(ra) # 80006f28 <__printf>
    80006498:	00001097          	auipc	ra,0x1
    8000649c:	4b0080e7          	jalr	1200(ra) # 80007948 <kinit>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	148080e7          	jalr	328(ra) # 800065e8 <trapinit>
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	16c080e7          	jalr	364(ra) # 80006614 <trapinithart>
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	5c0080e7          	jalr	1472(ra) # 80006a70 <plicinit>
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	5e0080e7          	jalr	1504(ra) # 80006a98 <plicinithart>
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	078080e7          	jalr	120(ra) # 80006538 <userinit>
    800064c8:	0ff0000f          	fence
    800064cc:	00100793          	li	a5,1
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	15850513          	addi	a0,a0,344 # 80009628 <_ZL6digits+0x40>
    800064d8:	00f4a023          	sw	a5,0(s1)
    800064dc:	00001097          	auipc	ra,0x1
    800064e0:	a4c080e7          	jalr	-1460(ra) # 80006f28 <__printf>
    800064e4:	0000006f          	j	800064e4 <system_main+0xd4>

00000000800064e8 <cpuid>:
    800064e8:	ff010113          	addi	sp,sp,-16
    800064ec:	00813423          	sd	s0,8(sp)
    800064f0:	01010413          	addi	s0,sp,16
    800064f4:	00020513          	mv	a0,tp
    800064f8:	00813403          	ld	s0,8(sp)
    800064fc:	0005051b          	sext.w	a0,a0
    80006500:	01010113          	addi	sp,sp,16
    80006504:	00008067          	ret

0000000080006508 <mycpu>:
    80006508:	ff010113          	addi	sp,sp,-16
    8000650c:	00813423          	sd	s0,8(sp)
    80006510:	01010413          	addi	s0,sp,16
    80006514:	00020793          	mv	a5,tp
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	0007879b          	sext.w	a5,a5
    80006520:	00779793          	slli	a5,a5,0x7
    80006524:	00006517          	auipc	a0,0x6
    80006528:	68c50513          	addi	a0,a0,1676 # 8000cbb0 <cpus>
    8000652c:	00f50533          	add	a0,a0,a5
    80006530:	01010113          	addi	sp,sp,16
    80006534:	00008067          	ret

0000000080006538 <userinit>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	ffffd317          	auipc	t1,0xffffd
    80006550:	df430067          	jr	-524(t1) # 80003340 <main>

0000000080006554 <either_copyout>:
    80006554:	ff010113          	addi	sp,sp,-16
    80006558:	00813023          	sd	s0,0(sp)
    8000655c:	00113423          	sd	ra,8(sp)
    80006560:	01010413          	addi	s0,sp,16
    80006564:	02051663          	bnez	a0,80006590 <either_copyout+0x3c>
    80006568:	00058513          	mv	a0,a1
    8000656c:	00060593          	mv	a1,a2
    80006570:	0006861b          	sext.w	a2,a3
    80006574:	00002097          	auipc	ra,0x2
    80006578:	c60080e7          	jalr	-928(ra) # 800081d4 <__memmove>
    8000657c:	00813083          	ld	ra,8(sp)
    80006580:	00013403          	ld	s0,0(sp)
    80006584:	00000513          	li	a0,0
    80006588:	01010113          	addi	sp,sp,16
    8000658c:	00008067          	ret
    80006590:	00003517          	auipc	a0,0x3
    80006594:	0d850513          	addi	a0,a0,216 # 80009668 <_ZL6digits+0x80>
    80006598:	00001097          	auipc	ra,0x1
    8000659c:	934080e7          	jalr	-1740(ra) # 80006ecc <panic>

00000000800065a0 <either_copyin>:
    800065a0:	ff010113          	addi	sp,sp,-16
    800065a4:	00813023          	sd	s0,0(sp)
    800065a8:	00113423          	sd	ra,8(sp)
    800065ac:	01010413          	addi	s0,sp,16
    800065b0:	02059463          	bnez	a1,800065d8 <either_copyin+0x38>
    800065b4:	00060593          	mv	a1,a2
    800065b8:	0006861b          	sext.w	a2,a3
    800065bc:	00002097          	auipc	ra,0x2
    800065c0:	c18080e7          	jalr	-1000(ra) # 800081d4 <__memmove>
    800065c4:	00813083          	ld	ra,8(sp)
    800065c8:	00013403          	ld	s0,0(sp)
    800065cc:	00000513          	li	a0,0
    800065d0:	01010113          	addi	sp,sp,16
    800065d4:	00008067          	ret
    800065d8:	00003517          	auipc	a0,0x3
    800065dc:	0b850513          	addi	a0,a0,184 # 80009690 <_ZL6digits+0xa8>
    800065e0:	00001097          	auipc	ra,0x1
    800065e4:	8ec080e7          	jalr	-1812(ra) # 80006ecc <panic>

00000000800065e8 <trapinit>:
    800065e8:	ff010113          	addi	sp,sp,-16
    800065ec:	00813423          	sd	s0,8(sp)
    800065f0:	01010413          	addi	s0,sp,16
    800065f4:	00813403          	ld	s0,8(sp)
    800065f8:	00003597          	auipc	a1,0x3
    800065fc:	0c058593          	addi	a1,a1,192 # 800096b8 <_ZL6digits+0xd0>
    80006600:	00006517          	auipc	a0,0x6
    80006604:	63050513          	addi	a0,a0,1584 # 8000cc30 <tickslock>
    80006608:	01010113          	addi	sp,sp,16
    8000660c:	00001317          	auipc	t1,0x1
    80006610:	5cc30067          	jr	1484(t1) # 80007bd8 <initlock>

0000000080006614 <trapinithart>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813423          	sd	s0,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	00000797          	auipc	a5,0x0
    80006624:	30078793          	addi	a5,a5,768 # 80006920 <kernelvec>
    80006628:	10579073          	csrw	stvec,a5
    8000662c:	00813403          	ld	s0,8(sp)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <usertrap>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813423          	sd	s0,8(sp)
    80006640:	01010413          	addi	s0,sp,16
    80006644:	00813403          	ld	s0,8(sp)
    80006648:	01010113          	addi	sp,sp,16
    8000664c:	00008067          	ret

0000000080006650 <usertrapret>:
    80006650:	ff010113          	addi	sp,sp,-16
    80006654:	00813423          	sd	s0,8(sp)
    80006658:	01010413          	addi	s0,sp,16
    8000665c:	00813403          	ld	s0,8(sp)
    80006660:	01010113          	addi	sp,sp,16
    80006664:	00008067          	ret

0000000080006668 <kerneltrap>:
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00113c23          	sd	ra,24(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	02010413          	addi	s0,sp,32
    8000667c:	142025f3          	csrr	a1,scause
    80006680:	100027f3          	csrr	a5,sstatus
    80006684:	0027f793          	andi	a5,a5,2
    80006688:	10079c63          	bnez	a5,800067a0 <kerneltrap+0x138>
    8000668c:	142027f3          	csrr	a5,scause
    80006690:	0207ce63          	bltz	a5,800066cc <kerneltrap+0x64>
    80006694:	00003517          	auipc	a0,0x3
    80006698:	06c50513          	addi	a0,a0,108 # 80009700 <_ZL6digits+0x118>
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	88c080e7          	jalr	-1908(ra) # 80006f28 <__printf>
    800066a4:	141025f3          	csrr	a1,sepc
    800066a8:	14302673          	csrr	a2,stval
    800066ac:	00003517          	auipc	a0,0x3
    800066b0:	06450513          	addi	a0,a0,100 # 80009710 <_ZL6digits+0x128>
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	874080e7          	jalr	-1932(ra) # 80006f28 <__printf>
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	06c50513          	addi	a0,a0,108 # 80009728 <_ZL6digits+0x140>
    800066c4:	00001097          	auipc	ra,0x1
    800066c8:	808080e7          	jalr	-2040(ra) # 80006ecc <panic>
    800066cc:	0ff7f713          	andi	a4,a5,255
    800066d0:	00900693          	li	a3,9
    800066d4:	04d70063          	beq	a4,a3,80006714 <kerneltrap+0xac>
    800066d8:	fff00713          	li	a4,-1
    800066dc:	03f71713          	slli	a4,a4,0x3f
    800066e0:	00170713          	addi	a4,a4,1
    800066e4:	fae798e3          	bne	a5,a4,80006694 <kerneltrap+0x2c>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	e00080e7          	jalr	-512(ra) # 800064e8 <cpuid>
    800066f0:	06050663          	beqz	a0,8000675c <kerneltrap+0xf4>
    800066f4:	144027f3          	csrr	a5,sip
    800066f8:	ffd7f793          	andi	a5,a5,-3
    800066fc:	14479073          	csrw	sip,a5
    80006700:	01813083          	ld	ra,24(sp)
    80006704:	01013403          	ld	s0,16(sp)
    80006708:	00813483          	ld	s1,8(sp)
    8000670c:	02010113          	addi	sp,sp,32
    80006710:	00008067          	ret
    80006714:	00000097          	auipc	ra,0x0
    80006718:	3d0080e7          	jalr	976(ra) # 80006ae4 <plic_claim>
    8000671c:	00a00793          	li	a5,10
    80006720:	00050493          	mv	s1,a0
    80006724:	06f50863          	beq	a0,a5,80006794 <kerneltrap+0x12c>
    80006728:	fc050ce3          	beqz	a0,80006700 <kerneltrap+0x98>
    8000672c:	00050593          	mv	a1,a0
    80006730:	00003517          	auipc	a0,0x3
    80006734:	fb050513          	addi	a0,a0,-80 # 800096e0 <_ZL6digits+0xf8>
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	7f0080e7          	jalr	2032(ra) # 80006f28 <__printf>
    80006740:	01013403          	ld	s0,16(sp)
    80006744:	01813083          	ld	ra,24(sp)
    80006748:	00048513          	mv	a0,s1
    8000674c:	00813483          	ld	s1,8(sp)
    80006750:	02010113          	addi	sp,sp,32
    80006754:	00000317          	auipc	t1,0x0
    80006758:	3c830067          	jr	968(t1) # 80006b1c <plic_complete>
    8000675c:	00006517          	auipc	a0,0x6
    80006760:	4d450513          	addi	a0,a0,1236 # 8000cc30 <tickslock>
    80006764:	00001097          	auipc	ra,0x1
    80006768:	498080e7          	jalr	1176(ra) # 80007bfc <acquire>
    8000676c:	00005717          	auipc	a4,0x5
    80006770:	30870713          	addi	a4,a4,776 # 8000ba74 <ticks>
    80006774:	00072783          	lw	a5,0(a4)
    80006778:	00006517          	auipc	a0,0x6
    8000677c:	4b850513          	addi	a0,a0,1208 # 8000cc30 <tickslock>
    80006780:	0017879b          	addiw	a5,a5,1
    80006784:	00f72023          	sw	a5,0(a4)
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	540080e7          	jalr	1344(ra) # 80007cc8 <release>
    80006790:	f65ff06f          	j	800066f4 <kerneltrap+0x8c>
    80006794:	00001097          	auipc	ra,0x1
    80006798:	09c080e7          	jalr	156(ra) # 80007830 <uartintr>
    8000679c:	fa5ff06f          	j	80006740 <kerneltrap+0xd8>
    800067a0:	00003517          	auipc	a0,0x3
    800067a4:	f2050513          	addi	a0,a0,-224 # 800096c0 <_ZL6digits+0xd8>
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	724080e7          	jalr	1828(ra) # 80006ecc <panic>

00000000800067b0 <clockintr>:
    800067b0:	fe010113          	addi	sp,sp,-32
    800067b4:	00813823          	sd	s0,16(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	00113c23          	sd	ra,24(sp)
    800067c0:	02010413          	addi	s0,sp,32
    800067c4:	00006497          	auipc	s1,0x6
    800067c8:	46c48493          	addi	s1,s1,1132 # 8000cc30 <tickslock>
    800067cc:	00048513          	mv	a0,s1
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	42c080e7          	jalr	1068(ra) # 80007bfc <acquire>
    800067d8:	00005717          	auipc	a4,0x5
    800067dc:	29c70713          	addi	a4,a4,668 # 8000ba74 <ticks>
    800067e0:	00072783          	lw	a5,0(a4)
    800067e4:	01013403          	ld	s0,16(sp)
    800067e8:	01813083          	ld	ra,24(sp)
    800067ec:	00048513          	mv	a0,s1
    800067f0:	0017879b          	addiw	a5,a5,1
    800067f4:	00813483          	ld	s1,8(sp)
    800067f8:	00f72023          	sw	a5,0(a4)
    800067fc:	02010113          	addi	sp,sp,32
    80006800:	00001317          	auipc	t1,0x1
    80006804:	4c830067          	jr	1224(t1) # 80007cc8 <release>

0000000080006808 <devintr>:
    80006808:	142027f3          	csrr	a5,scause
    8000680c:	00000513          	li	a0,0
    80006810:	0007c463          	bltz	a5,80006818 <devintr+0x10>
    80006814:	00008067          	ret
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00813823          	sd	s0,16(sp)
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	02010413          	addi	s0,sp,32
    8000682c:	0ff7f713          	andi	a4,a5,255
    80006830:	00900693          	li	a3,9
    80006834:	04d70c63          	beq	a4,a3,8000688c <devintr+0x84>
    80006838:	fff00713          	li	a4,-1
    8000683c:	03f71713          	slli	a4,a4,0x3f
    80006840:	00170713          	addi	a4,a4,1
    80006844:	00e78c63          	beq	a5,a4,8000685c <devintr+0x54>
    80006848:	01813083          	ld	ra,24(sp)
    8000684c:	01013403          	ld	s0,16(sp)
    80006850:	00813483          	ld	s1,8(sp)
    80006854:	02010113          	addi	sp,sp,32
    80006858:	00008067          	ret
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	c8c080e7          	jalr	-884(ra) # 800064e8 <cpuid>
    80006864:	06050663          	beqz	a0,800068d0 <devintr+0xc8>
    80006868:	144027f3          	csrr	a5,sip
    8000686c:	ffd7f793          	andi	a5,a5,-3
    80006870:	14479073          	csrw	sip,a5
    80006874:	01813083          	ld	ra,24(sp)
    80006878:	01013403          	ld	s0,16(sp)
    8000687c:	00813483          	ld	s1,8(sp)
    80006880:	00200513          	li	a0,2
    80006884:	02010113          	addi	sp,sp,32
    80006888:	00008067          	ret
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	258080e7          	jalr	600(ra) # 80006ae4 <plic_claim>
    80006894:	00a00793          	li	a5,10
    80006898:	00050493          	mv	s1,a0
    8000689c:	06f50663          	beq	a0,a5,80006908 <devintr+0x100>
    800068a0:	00100513          	li	a0,1
    800068a4:	fa0482e3          	beqz	s1,80006848 <devintr+0x40>
    800068a8:	00048593          	mv	a1,s1
    800068ac:	00003517          	auipc	a0,0x3
    800068b0:	e3450513          	addi	a0,a0,-460 # 800096e0 <_ZL6digits+0xf8>
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	674080e7          	jalr	1652(ra) # 80006f28 <__printf>
    800068bc:	00048513          	mv	a0,s1
    800068c0:	00000097          	auipc	ra,0x0
    800068c4:	25c080e7          	jalr	604(ra) # 80006b1c <plic_complete>
    800068c8:	00100513          	li	a0,1
    800068cc:	f7dff06f          	j	80006848 <devintr+0x40>
    800068d0:	00006517          	auipc	a0,0x6
    800068d4:	36050513          	addi	a0,a0,864 # 8000cc30 <tickslock>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	324080e7          	jalr	804(ra) # 80007bfc <acquire>
    800068e0:	00005717          	auipc	a4,0x5
    800068e4:	19470713          	addi	a4,a4,404 # 8000ba74 <ticks>
    800068e8:	00072783          	lw	a5,0(a4)
    800068ec:	00006517          	auipc	a0,0x6
    800068f0:	34450513          	addi	a0,a0,836 # 8000cc30 <tickslock>
    800068f4:	0017879b          	addiw	a5,a5,1
    800068f8:	00f72023          	sw	a5,0(a4)
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	3cc080e7          	jalr	972(ra) # 80007cc8 <release>
    80006904:	f65ff06f          	j	80006868 <devintr+0x60>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	f28080e7          	jalr	-216(ra) # 80007830 <uartintr>
    80006910:	fadff06f          	j	800068bc <devintr+0xb4>
	...

0000000080006920 <kernelvec>:
    80006920:	f0010113          	addi	sp,sp,-256
    80006924:	00113023          	sd	ra,0(sp)
    80006928:	00213423          	sd	sp,8(sp)
    8000692c:	00313823          	sd	gp,16(sp)
    80006930:	00413c23          	sd	tp,24(sp)
    80006934:	02513023          	sd	t0,32(sp)
    80006938:	02613423          	sd	t1,40(sp)
    8000693c:	02713823          	sd	t2,48(sp)
    80006940:	02813c23          	sd	s0,56(sp)
    80006944:	04913023          	sd	s1,64(sp)
    80006948:	04a13423          	sd	a0,72(sp)
    8000694c:	04b13823          	sd	a1,80(sp)
    80006950:	04c13c23          	sd	a2,88(sp)
    80006954:	06d13023          	sd	a3,96(sp)
    80006958:	06e13423          	sd	a4,104(sp)
    8000695c:	06f13823          	sd	a5,112(sp)
    80006960:	07013c23          	sd	a6,120(sp)
    80006964:	09113023          	sd	a7,128(sp)
    80006968:	09213423          	sd	s2,136(sp)
    8000696c:	09313823          	sd	s3,144(sp)
    80006970:	09413c23          	sd	s4,152(sp)
    80006974:	0b513023          	sd	s5,160(sp)
    80006978:	0b613423          	sd	s6,168(sp)
    8000697c:	0b713823          	sd	s7,176(sp)
    80006980:	0b813c23          	sd	s8,184(sp)
    80006984:	0d913023          	sd	s9,192(sp)
    80006988:	0da13423          	sd	s10,200(sp)
    8000698c:	0db13823          	sd	s11,208(sp)
    80006990:	0dc13c23          	sd	t3,216(sp)
    80006994:	0fd13023          	sd	t4,224(sp)
    80006998:	0fe13423          	sd	t5,232(sp)
    8000699c:	0ff13823          	sd	t6,240(sp)
    800069a0:	cc9ff0ef          	jal	ra,80006668 <kerneltrap>
    800069a4:	00013083          	ld	ra,0(sp)
    800069a8:	00813103          	ld	sp,8(sp)
    800069ac:	01013183          	ld	gp,16(sp)
    800069b0:	02013283          	ld	t0,32(sp)
    800069b4:	02813303          	ld	t1,40(sp)
    800069b8:	03013383          	ld	t2,48(sp)
    800069bc:	03813403          	ld	s0,56(sp)
    800069c0:	04013483          	ld	s1,64(sp)
    800069c4:	04813503          	ld	a0,72(sp)
    800069c8:	05013583          	ld	a1,80(sp)
    800069cc:	05813603          	ld	a2,88(sp)
    800069d0:	06013683          	ld	a3,96(sp)
    800069d4:	06813703          	ld	a4,104(sp)
    800069d8:	07013783          	ld	a5,112(sp)
    800069dc:	07813803          	ld	a6,120(sp)
    800069e0:	08013883          	ld	a7,128(sp)
    800069e4:	08813903          	ld	s2,136(sp)
    800069e8:	09013983          	ld	s3,144(sp)
    800069ec:	09813a03          	ld	s4,152(sp)
    800069f0:	0a013a83          	ld	s5,160(sp)
    800069f4:	0a813b03          	ld	s6,168(sp)
    800069f8:	0b013b83          	ld	s7,176(sp)
    800069fc:	0b813c03          	ld	s8,184(sp)
    80006a00:	0c013c83          	ld	s9,192(sp)
    80006a04:	0c813d03          	ld	s10,200(sp)
    80006a08:	0d013d83          	ld	s11,208(sp)
    80006a0c:	0d813e03          	ld	t3,216(sp)
    80006a10:	0e013e83          	ld	t4,224(sp)
    80006a14:	0e813f03          	ld	t5,232(sp)
    80006a18:	0f013f83          	ld	t6,240(sp)
    80006a1c:	10010113          	addi	sp,sp,256
    80006a20:	10200073          	sret
    80006a24:	00000013          	nop
    80006a28:	00000013          	nop
    80006a2c:	00000013          	nop

0000000080006a30 <timervec>:
    80006a30:	34051573          	csrrw	a0,mscratch,a0
    80006a34:	00b53023          	sd	a1,0(a0)
    80006a38:	00c53423          	sd	a2,8(a0)
    80006a3c:	00d53823          	sd	a3,16(a0)
    80006a40:	01853583          	ld	a1,24(a0)
    80006a44:	02053603          	ld	a2,32(a0)
    80006a48:	0005b683          	ld	a3,0(a1)
    80006a4c:	00c686b3          	add	a3,a3,a2
    80006a50:	00d5b023          	sd	a3,0(a1)
    80006a54:	00200593          	li	a1,2
    80006a58:	14459073          	csrw	sip,a1
    80006a5c:	01053683          	ld	a3,16(a0)
    80006a60:	00853603          	ld	a2,8(a0)
    80006a64:	00053583          	ld	a1,0(a0)
    80006a68:	34051573          	csrrw	a0,mscratch,a0
    80006a6c:	30200073          	mret

0000000080006a70 <plicinit>:
    80006a70:	ff010113          	addi	sp,sp,-16
    80006a74:	00813423          	sd	s0,8(sp)
    80006a78:	01010413          	addi	s0,sp,16
    80006a7c:	00813403          	ld	s0,8(sp)
    80006a80:	0c0007b7          	lui	a5,0xc000
    80006a84:	00100713          	li	a4,1
    80006a88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a8c:	00e7a223          	sw	a4,4(a5)
    80006a90:	01010113          	addi	sp,sp,16
    80006a94:	00008067          	ret

0000000080006a98 <plicinithart>:
    80006a98:	ff010113          	addi	sp,sp,-16
    80006a9c:	00813023          	sd	s0,0(sp)
    80006aa0:	00113423          	sd	ra,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	a40080e7          	jalr	-1472(ra) # 800064e8 <cpuid>
    80006ab0:	0085171b          	slliw	a4,a0,0x8
    80006ab4:	0c0027b7          	lui	a5,0xc002
    80006ab8:	00e787b3          	add	a5,a5,a4
    80006abc:	40200713          	li	a4,1026
    80006ac0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ac4:	00813083          	ld	ra,8(sp)
    80006ac8:	00013403          	ld	s0,0(sp)
    80006acc:	00d5151b          	slliw	a0,a0,0xd
    80006ad0:	0c2017b7          	lui	a5,0xc201
    80006ad4:	00a78533          	add	a0,a5,a0
    80006ad8:	00052023          	sw	zero,0(a0)
    80006adc:	01010113          	addi	sp,sp,16
    80006ae0:	00008067          	ret

0000000080006ae4 <plic_claim>:
    80006ae4:	ff010113          	addi	sp,sp,-16
    80006ae8:	00813023          	sd	s0,0(sp)
    80006aec:	00113423          	sd	ra,8(sp)
    80006af0:	01010413          	addi	s0,sp,16
    80006af4:	00000097          	auipc	ra,0x0
    80006af8:	9f4080e7          	jalr	-1548(ra) # 800064e8 <cpuid>
    80006afc:	00813083          	ld	ra,8(sp)
    80006b00:	00013403          	ld	s0,0(sp)
    80006b04:	00d5151b          	slliw	a0,a0,0xd
    80006b08:	0c2017b7          	lui	a5,0xc201
    80006b0c:	00a78533          	add	a0,a5,a0
    80006b10:	00452503          	lw	a0,4(a0)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <plic_complete>:
    80006b1c:	fe010113          	addi	sp,sp,-32
    80006b20:	00813823          	sd	s0,16(sp)
    80006b24:	00913423          	sd	s1,8(sp)
    80006b28:	00113c23          	sd	ra,24(sp)
    80006b2c:	02010413          	addi	s0,sp,32
    80006b30:	00050493          	mv	s1,a0
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	9b4080e7          	jalr	-1612(ra) # 800064e8 <cpuid>
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00d5179b          	slliw	a5,a0,0xd
    80006b48:	0c201737          	lui	a4,0xc201
    80006b4c:	00f707b3          	add	a5,a4,a5
    80006b50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b54:	00813483          	ld	s1,8(sp)
    80006b58:	02010113          	addi	sp,sp,32
    80006b5c:	00008067          	ret

0000000080006b60 <consolewrite>:
    80006b60:	fb010113          	addi	sp,sp,-80
    80006b64:	04813023          	sd	s0,64(sp)
    80006b68:	04113423          	sd	ra,72(sp)
    80006b6c:	02913c23          	sd	s1,56(sp)
    80006b70:	03213823          	sd	s2,48(sp)
    80006b74:	03313423          	sd	s3,40(sp)
    80006b78:	03413023          	sd	s4,32(sp)
    80006b7c:	01513c23          	sd	s5,24(sp)
    80006b80:	05010413          	addi	s0,sp,80
    80006b84:	06c05c63          	blez	a2,80006bfc <consolewrite+0x9c>
    80006b88:	00060993          	mv	s3,a2
    80006b8c:	00050a13          	mv	s4,a0
    80006b90:	00058493          	mv	s1,a1
    80006b94:	00000913          	li	s2,0
    80006b98:	fff00a93          	li	s5,-1
    80006b9c:	01c0006f          	j	80006bb8 <consolewrite+0x58>
    80006ba0:	fbf44503          	lbu	a0,-65(s0)
    80006ba4:	0019091b          	addiw	s2,s2,1
    80006ba8:	00148493          	addi	s1,s1,1
    80006bac:	00001097          	auipc	ra,0x1
    80006bb0:	a9c080e7          	jalr	-1380(ra) # 80007648 <uartputc>
    80006bb4:	03298063          	beq	s3,s2,80006bd4 <consolewrite+0x74>
    80006bb8:	00048613          	mv	a2,s1
    80006bbc:	00100693          	li	a3,1
    80006bc0:	000a0593          	mv	a1,s4
    80006bc4:	fbf40513          	addi	a0,s0,-65
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	9d8080e7          	jalr	-1576(ra) # 800065a0 <either_copyin>
    80006bd0:	fd5518e3          	bne	a0,s5,80006ba0 <consolewrite+0x40>
    80006bd4:	04813083          	ld	ra,72(sp)
    80006bd8:	04013403          	ld	s0,64(sp)
    80006bdc:	03813483          	ld	s1,56(sp)
    80006be0:	02813983          	ld	s3,40(sp)
    80006be4:	02013a03          	ld	s4,32(sp)
    80006be8:	01813a83          	ld	s5,24(sp)
    80006bec:	00090513          	mv	a0,s2
    80006bf0:	03013903          	ld	s2,48(sp)
    80006bf4:	05010113          	addi	sp,sp,80
    80006bf8:	00008067          	ret
    80006bfc:	00000913          	li	s2,0
    80006c00:	fd5ff06f          	j	80006bd4 <consolewrite+0x74>

0000000080006c04 <consoleread>:
    80006c04:	f9010113          	addi	sp,sp,-112
    80006c08:	06813023          	sd	s0,96(sp)
    80006c0c:	04913c23          	sd	s1,88(sp)
    80006c10:	05213823          	sd	s2,80(sp)
    80006c14:	05313423          	sd	s3,72(sp)
    80006c18:	05413023          	sd	s4,64(sp)
    80006c1c:	03513c23          	sd	s5,56(sp)
    80006c20:	03613823          	sd	s6,48(sp)
    80006c24:	03713423          	sd	s7,40(sp)
    80006c28:	03813023          	sd	s8,32(sp)
    80006c2c:	06113423          	sd	ra,104(sp)
    80006c30:	01913c23          	sd	s9,24(sp)
    80006c34:	07010413          	addi	s0,sp,112
    80006c38:	00060b93          	mv	s7,a2
    80006c3c:	00050913          	mv	s2,a0
    80006c40:	00058c13          	mv	s8,a1
    80006c44:	00060b1b          	sext.w	s6,a2
    80006c48:	00006497          	auipc	s1,0x6
    80006c4c:	01048493          	addi	s1,s1,16 # 8000cc58 <cons>
    80006c50:	00400993          	li	s3,4
    80006c54:	fff00a13          	li	s4,-1
    80006c58:	00a00a93          	li	s5,10
    80006c5c:	05705e63          	blez	s7,80006cb8 <consoleread+0xb4>
    80006c60:	09c4a703          	lw	a4,156(s1)
    80006c64:	0984a783          	lw	a5,152(s1)
    80006c68:	0007071b          	sext.w	a4,a4
    80006c6c:	08e78463          	beq	a5,a4,80006cf4 <consoleread+0xf0>
    80006c70:	07f7f713          	andi	a4,a5,127
    80006c74:	00e48733          	add	a4,s1,a4
    80006c78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c7c:	0017869b          	addiw	a3,a5,1
    80006c80:	08d4ac23          	sw	a3,152(s1)
    80006c84:	00070c9b          	sext.w	s9,a4
    80006c88:	0b370663          	beq	a4,s3,80006d34 <consoleread+0x130>
    80006c8c:	00100693          	li	a3,1
    80006c90:	f9f40613          	addi	a2,s0,-97
    80006c94:	000c0593          	mv	a1,s8
    80006c98:	00090513          	mv	a0,s2
    80006c9c:	f8e40fa3          	sb	a4,-97(s0)
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	8b4080e7          	jalr	-1868(ra) # 80006554 <either_copyout>
    80006ca8:	01450863          	beq	a0,s4,80006cb8 <consoleread+0xb4>
    80006cac:	001c0c13          	addi	s8,s8,1
    80006cb0:	fffb8b9b          	addiw	s7,s7,-1
    80006cb4:	fb5c94e3          	bne	s9,s5,80006c5c <consoleread+0x58>
    80006cb8:	000b851b          	sext.w	a0,s7
    80006cbc:	06813083          	ld	ra,104(sp)
    80006cc0:	06013403          	ld	s0,96(sp)
    80006cc4:	05813483          	ld	s1,88(sp)
    80006cc8:	05013903          	ld	s2,80(sp)
    80006ccc:	04813983          	ld	s3,72(sp)
    80006cd0:	04013a03          	ld	s4,64(sp)
    80006cd4:	03813a83          	ld	s5,56(sp)
    80006cd8:	02813b83          	ld	s7,40(sp)
    80006cdc:	02013c03          	ld	s8,32(sp)
    80006ce0:	01813c83          	ld	s9,24(sp)
    80006ce4:	40ab053b          	subw	a0,s6,a0
    80006ce8:	03013b03          	ld	s6,48(sp)
    80006cec:	07010113          	addi	sp,sp,112
    80006cf0:	00008067          	ret
    80006cf4:	00001097          	auipc	ra,0x1
    80006cf8:	1d8080e7          	jalr	472(ra) # 80007ecc <push_on>
    80006cfc:	0984a703          	lw	a4,152(s1)
    80006d00:	09c4a783          	lw	a5,156(s1)
    80006d04:	0007879b          	sext.w	a5,a5
    80006d08:	fef70ce3          	beq	a4,a5,80006d00 <consoleread+0xfc>
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	234080e7          	jalr	564(ra) # 80007f40 <pop_on>
    80006d14:	0984a783          	lw	a5,152(s1)
    80006d18:	07f7f713          	andi	a4,a5,127
    80006d1c:	00e48733          	add	a4,s1,a4
    80006d20:	01874703          	lbu	a4,24(a4)
    80006d24:	0017869b          	addiw	a3,a5,1
    80006d28:	08d4ac23          	sw	a3,152(s1)
    80006d2c:	00070c9b          	sext.w	s9,a4
    80006d30:	f5371ee3          	bne	a4,s3,80006c8c <consoleread+0x88>
    80006d34:	000b851b          	sext.w	a0,s7
    80006d38:	f96bf2e3          	bgeu	s7,s6,80006cbc <consoleread+0xb8>
    80006d3c:	08f4ac23          	sw	a5,152(s1)
    80006d40:	f7dff06f          	j	80006cbc <consoleread+0xb8>

0000000080006d44 <consputc>:
    80006d44:	10000793          	li	a5,256
    80006d48:	00f50663          	beq	a0,a5,80006d54 <consputc+0x10>
    80006d4c:	00001317          	auipc	t1,0x1
    80006d50:	9f430067          	jr	-1548(t1) # 80007740 <uartputc_sync>
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00113423          	sd	ra,8(sp)
    80006d5c:	00813023          	sd	s0,0(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00800513          	li	a0,8
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	9d8080e7          	jalr	-1576(ra) # 80007740 <uartputc_sync>
    80006d70:	02000513          	li	a0,32
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	9cc080e7          	jalr	-1588(ra) # 80007740 <uartputc_sync>
    80006d7c:	00013403          	ld	s0,0(sp)
    80006d80:	00813083          	ld	ra,8(sp)
    80006d84:	00800513          	li	a0,8
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00001317          	auipc	t1,0x1
    80006d90:	9b430067          	jr	-1612(t1) # 80007740 <uartputc_sync>

0000000080006d94 <consoleintr>:
    80006d94:	fe010113          	addi	sp,sp,-32
    80006d98:	00813823          	sd	s0,16(sp)
    80006d9c:	00913423          	sd	s1,8(sp)
    80006da0:	01213023          	sd	s2,0(sp)
    80006da4:	00113c23          	sd	ra,24(sp)
    80006da8:	02010413          	addi	s0,sp,32
    80006dac:	00006917          	auipc	s2,0x6
    80006db0:	eac90913          	addi	s2,s2,-340 # 8000cc58 <cons>
    80006db4:	00050493          	mv	s1,a0
    80006db8:	00090513          	mv	a0,s2
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	e40080e7          	jalr	-448(ra) # 80007bfc <acquire>
    80006dc4:	02048c63          	beqz	s1,80006dfc <consoleintr+0x68>
    80006dc8:	0a092783          	lw	a5,160(s2)
    80006dcc:	09892703          	lw	a4,152(s2)
    80006dd0:	07f00693          	li	a3,127
    80006dd4:	40e7873b          	subw	a4,a5,a4
    80006dd8:	02e6e263          	bltu	a3,a4,80006dfc <consoleintr+0x68>
    80006ddc:	00d00713          	li	a4,13
    80006de0:	04e48063          	beq	s1,a4,80006e20 <consoleintr+0x8c>
    80006de4:	07f7f713          	andi	a4,a5,127
    80006de8:	00e90733          	add	a4,s2,a4
    80006dec:	0017879b          	addiw	a5,a5,1
    80006df0:	0af92023          	sw	a5,160(s2)
    80006df4:	00970c23          	sb	s1,24(a4)
    80006df8:	08f92e23          	sw	a5,156(s2)
    80006dfc:	01013403          	ld	s0,16(sp)
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	00813483          	ld	s1,8(sp)
    80006e08:	00013903          	ld	s2,0(sp)
    80006e0c:	00006517          	auipc	a0,0x6
    80006e10:	e4c50513          	addi	a0,a0,-436 # 8000cc58 <cons>
    80006e14:	02010113          	addi	sp,sp,32
    80006e18:	00001317          	auipc	t1,0x1
    80006e1c:	eb030067          	jr	-336(t1) # 80007cc8 <release>
    80006e20:	00a00493          	li	s1,10
    80006e24:	fc1ff06f          	j	80006de4 <consoleintr+0x50>

0000000080006e28 <consoleinit>:
    80006e28:	fe010113          	addi	sp,sp,-32
    80006e2c:	00113c23          	sd	ra,24(sp)
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00913423          	sd	s1,8(sp)
    80006e38:	02010413          	addi	s0,sp,32
    80006e3c:	00006497          	auipc	s1,0x6
    80006e40:	e1c48493          	addi	s1,s1,-484 # 8000cc58 <cons>
    80006e44:	00048513          	mv	a0,s1
    80006e48:	00003597          	auipc	a1,0x3
    80006e4c:	8f058593          	addi	a1,a1,-1808 # 80009738 <_ZL6digits+0x150>
    80006e50:	00001097          	auipc	ra,0x1
    80006e54:	d88080e7          	jalr	-632(ra) # 80007bd8 <initlock>
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	7ac080e7          	jalr	1964(ra) # 80007604 <uartinit>
    80006e60:	01813083          	ld	ra,24(sp)
    80006e64:	01013403          	ld	s0,16(sp)
    80006e68:	00000797          	auipc	a5,0x0
    80006e6c:	d9c78793          	addi	a5,a5,-612 # 80006c04 <consoleread>
    80006e70:	0af4bc23          	sd	a5,184(s1)
    80006e74:	00000797          	auipc	a5,0x0
    80006e78:	cec78793          	addi	a5,a5,-788 # 80006b60 <consolewrite>
    80006e7c:	0cf4b023          	sd	a5,192(s1)
    80006e80:	00813483          	ld	s1,8(sp)
    80006e84:	02010113          	addi	sp,sp,32
    80006e88:	00008067          	ret

0000000080006e8c <console_read>:
    80006e8c:	ff010113          	addi	sp,sp,-16
    80006e90:	00813423          	sd	s0,8(sp)
    80006e94:	01010413          	addi	s0,sp,16
    80006e98:	00813403          	ld	s0,8(sp)
    80006e9c:	00006317          	auipc	t1,0x6
    80006ea0:	e7433303          	ld	t1,-396(t1) # 8000cd10 <devsw+0x10>
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00030067          	jr	t1

0000000080006eac <console_write>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813423          	sd	s0,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	00813403          	ld	s0,8(sp)
    80006ebc:	00006317          	auipc	t1,0x6
    80006ec0:	e5c33303          	ld	t1,-420(t1) # 8000cd18 <devsw+0x18>
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00030067          	jr	t1

0000000080006ecc <panic>:
    80006ecc:	fe010113          	addi	sp,sp,-32
    80006ed0:	00113c23          	sd	ra,24(sp)
    80006ed4:	00813823          	sd	s0,16(sp)
    80006ed8:	00913423          	sd	s1,8(sp)
    80006edc:	02010413          	addi	s0,sp,32
    80006ee0:	00050493          	mv	s1,a0
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	85c50513          	addi	a0,a0,-1956 # 80009740 <_ZL6digits+0x158>
    80006eec:	00006797          	auipc	a5,0x6
    80006ef0:	ec07a623          	sw	zero,-308(a5) # 8000cdb8 <pr+0x18>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	034080e7          	jalr	52(ra) # 80006f28 <__printf>
    80006efc:	00048513          	mv	a0,s1
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	028080e7          	jalr	40(ra) # 80006f28 <__printf>
    80006f08:	00002517          	auipc	a0,0x2
    80006f0c:	1f850513          	addi	a0,a0,504 # 80009100 <CONSOLE_STATUS+0xf0>
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	018080e7          	jalr	24(ra) # 80006f28 <__printf>
    80006f18:	00100793          	li	a5,1
    80006f1c:	00005717          	auipc	a4,0x5
    80006f20:	b4f72e23          	sw	a5,-1188(a4) # 8000ba78 <panicked>
    80006f24:	0000006f          	j	80006f24 <panic+0x58>

0000000080006f28 <__printf>:
    80006f28:	f3010113          	addi	sp,sp,-208
    80006f2c:	08813023          	sd	s0,128(sp)
    80006f30:	07313423          	sd	s3,104(sp)
    80006f34:	09010413          	addi	s0,sp,144
    80006f38:	05813023          	sd	s8,64(sp)
    80006f3c:	08113423          	sd	ra,136(sp)
    80006f40:	06913c23          	sd	s1,120(sp)
    80006f44:	07213823          	sd	s2,112(sp)
    80006f48:	07413023          	sd	s4,96(sp)
    80006f4c:	05513c23          	sd	s5,88(sp)
    80006f50:	05613823          	sd	s6,80(sp)
    80006f54:	05713423          	sd	s7,72(sp)
    80006f58:	03913c23          	sd	s9,56(sp)
    80006f5c:	03a13823          	sd	s10,48(sp)
    80006f60:	03b13423          	sd	s11,40(sp)
    80006f64:	00006317          	auipc	t1,0x6
    80006f68:	e3c30313          	addi	t1,t1,-452 # 8000cda0 <pr>
    80006f6c:	01832c03          	lw	s8,24(t1)
    80006f70:	00b43423          	sd	a1,8(s0)
    80006f74:	00c43823          	sd	a2,16(s0)
    80006f78:	00d43c23          	sd	a3,24(s0)
    80006f7c:	02e43023          	sd	a4,32(s0)
    80006f80:	02f43423          	sd	a5,40(s0)
    80006f84:	03043823          	sd	a6,48(s0)
    80006f88:	03143c23          	sd	a7,56(s0)
    80006f8c:	00050993          	mv	s3,a0
    80006f90:	4a0c1663          	bnez	s8,8000743c <__printf+0x514>
    80006f94:	60098c63          	beqz	s3,800075ac <__printf+0x684>
    80006f98:	0009c503          	lbu	a0,0(s3)
    80006f9c:	00840793          	addi	a5,s0,8
    80006fa0:	f6f43c23          	sd	a5,-136(s0)
    80006fa4:	00000493          	li	s1,0
    80006fa8:	22050063          	beqz	a0,800071c8 <__printf+0x2a0>
    80006fac:	00002a37          	lui	s4,0x2
    80006fb0:	00018ab7          	lui	s5,0x18
    80006fb4:	000f4b37          	lui	s6,0xf4
    80006fb8:	00989bb7          	lui	s7,0x989
    80006fbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fcc:	00148c9b          	addiw	s9,s1,1
    80006fd0:	02500793          	li	a5,37
    80006fd4:	01998933          	add	s2,s3,s9
    80006fd8:	38f51263          	bne	a0,a5,8000735c <__printf+0x434>
    80006fdc:	00094783          	lbu	a5,0(s2)
    80006fe0:	00078c9b          	sext.w	s9,a5
    80006fe4:	1e078263          	beqz	a5,800071c8 <__printf+0x2a0>
    80006fe8:	0024849b          	addiw	s1,s1,2
    80006fec:	07000713          	li	a4,112
    80006ff0:	00998933          	add	s2,s3,s1
    80006ff4:	38e78a63          	beq	a5,a4,80007388 <__printf+0x460>
    80006ff8:	20f76863          	bltu	a4,a5,80007208 <__printf+0x2e0>
    80006ffc:	42a78863          	beq	a5,a0,8000742c <__printf+0x504>
    80007000:	06400713          	li	a4,100
    80007004:	40e79663          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007008:	f7843783          	ld	a5,-136(s0)
    8000700c:	0007a603          	lw	a2,0(a5)
    80007010:	00878793          	addi	a5,a5,8
    80007014:	f6f43c23          	sd	a5,-136(s0)
    80007018:	42064a63          	bltz	a2,8000744c <__printf+0x524>
    8000701c:	00a00713          	li	a4,10
    80007020:	02e677bb          	remuw	a5,a2,a4
    80007024:	00002d97          	auipc	s11,0x2
    80007028:	744d8d93          	addi	s11,s11,1860 # 80009768 <digits>
    8000702c:	00900593          	li	a1,9
    80007030:	0006051b          	sext.w	a0,a2
    80007034:	00000c93          	li	s9,0
    80007038:	02079793          	slli	a5,a5,0x20
    8000703c:	0207d793          	srli	a5,a5,0x20
    80007040:	00fd87b3          	add	a5,s11,a5
    80007044:	0007c783          	lbu	a5,0(a5)
    80007048:	02e656bb          	divuw	a3,a2,a4
    8000704c:	f8f40023          	sb	a5,-128(s0)
    80007050:	14c5d863          	bge	a1,a2,800071a0 <__printf+0x278>
    80007054:	06300593          	li	a1,99
    80007058:	00100c93          	li	s9,1
    8000705c:	02e6f7bb          	remuw	a5,a3,a4
    80007060:	02079793          	slli	a5,a5,0x20
    80007064:	0207d793          	srli	a5,a5,0x20
    80007068:	00fd87b3          	add	a5,s11,a5
    8000706c:	0007c783          	lbu	a5,0(a5)
    80007070:	02e6d73b          	divuw	a4,a3,a4
    80007074:	f8f400a3          	sb	a5,-127(s0)
    80007078:	12a5f463          	bgeu	a1,a0,800071a0 <__printf+0x278>
    8000707c:	00a00693          	li	a3,10
    80007080:	00900593          	li	a1,9
    80007084:	02d777bb          	remuw	a5,a4,a3
    80007088:	02079793          	slli	a5,a5,0x20
    8000708c:	0207d793          	srli	a5,a5,0x20
    80007090:	00fd87b3          	add	a5,s11,a5
    80007094:	0007c503          	lbu	a0,0(a5)
    80007098:	02d757bb          	divuw	a5,a4,a3
    8000709c:	f8a40123          	sb	a0,-126(s0)
    800070a0:	48e5f263          	bgeu	a1,a4,80007524 <__printf+0x5fc>
    800070a4:	06300513          	li	a0,99
    800070a8:	02d7f5bb          	remuw	a1,a5,a3
    800070ac:	02059593          	slli	a1,a1,0x20
    800070b0:	0205d593          	srli	a1,a1,0x20
    800070b4:	00bd85b3          	add	a1,s11,a1
    800070b8:	0005c583          	lbu	a1,0(a1)
    800070bc:	02d7d7bb          	divuw	a5,a5,a3
    800070c0:	f8b401a3          	sb	a1,-125(s0)
    800070c4:	48e57263          	bgeu	a0,a4,80007548 <__printf+0x620>
    800070c8:	3e700513          	li	a0,999
    800070cc:	02d7f5bb          	remuw	a1,a5,a3
    800070d0:	02059593          	slli	a1,a1,0x20
    800070d4:	0205d593          	srli	a1,a1,0x20
    800070d8:	00bd85b3          	add	a1,s11,a1
    800070dc:	0005c583          	lbu	a1,0(a1)
    800070e0:	02d7d7bb          	divuw	a5,a5,a3
    800070e4:	f8b40223          	sb	a1,-124(s0)
    800070e8:	46e57663          	bgeu	a0,a4,80007554 <__printf+0x62c>
    800070ec:	02d7f5bb          	remuw	a1,a5,a3
    800070f0:	02059593          	slli	a1,a1,0x20
    800070f4:	0205d593          	srli	a1,a1,0x20
    800070f8:	00bd85b3          	add	a1,s11,a1
    800070fc:	0005c583          	lbu	a1,0(a1)
    80007100:	02d7d7bb          	divuw	a5,a5,a3
    80007104:	f8b402a3          	sb	a1,-123(s0)
    80007108:	46ea7863          	bgeu	s4,a4,80007578 <__printf+0x650>
    8000710c:	02d7f5bb          	remuw	a1,a5,a3
    80007110:	02059593          	slli	a1,a1,0x20
    80007114:	0205d593          	srli	a1,a1,0x20
    80007118:	00bd85b3          	add	a1,s11,a1
    8000711c:	0005c583          	lbu	a1,0(a1)
    80007120:	02d7d7bb          	divuw	a5,a5,a3
    80007124:	f8b40323          	sb	a1,-122(s0)
    80007128:	3eeaf863          	bgeu	s5,a4,80007518 <__printf+0x5f0>
    8000712c:	02d7f5bb          	remuw	a1,a5,a3
    80007130:	02059593          	slli	a1,a1,0x20
    80007134:	0205d593          	srli	a1,a1,0x20
    80007138:	00bd85b3          	add	a1,s11,a1
    8000713c:	0005c583          	lbu	a1,0(a1)
    80007140:	02d7d7bb          	divuw	a5,a5,a3
    80007144:	f8b403a3          	sb	a1,-121(s0)
    80007148:	42eb7e63          	bgeu	s6,a4,80007584 <__printf+0x65c>
    8000714c:	02d7f5bb          	remuw	a1,a5,a3
    80007150:	02059593          	slli	a1,a1,0x20
    80007154:	0205d593          	srli	a1,a1,0x20
    80007158:	00bd85b3          	add	a1,s11,a1
    8000715c:	0005c583          	lbu	a1,0(a1)
    80007160:	02d7d7bb          	divuw	a5,a5,a3
    80007164:	f8b40423          	sb	a1,-120(s0)
    80007168:	42ebfc63          	bgeu	s7,a4,800075a0 <__printf+0x678>
    8000716c:	02079793          	slli	a5,a5,0x20
    80007170:	0207d793          	srli	a5,a5,0x20
    80007174:	00fd8db3          	add	s11,s11,a5
    80007178:	000dc703          	lbu	a4,0(s11)
    8000717c:	00a00793          	li	a5,10
    80007180:	00900c93          	li	s9,9
    80007184:	f8e404a3          	sb	a4,-119(s0)
    80007188:	00065c63          	bgez	a2,800071a0 <__printf+0x278>
    8000718c:	f9040713          	addi	a4,s0,-112
    80007190:	00f70733          	add	a4,a4,a5
    80007194:	02d00693          	li	a3,45
    80007198:	fed70823          	sb	a3,-16(a4)
    8000719c:	00078c93          	mv	s9,a5
    800071a0:	f8040793          	addi	a5,s0,-128
    800071a4:	01978cb3          	add	s9,a5,s9
    800071a8:	f7f40d13          	addi	s10,s0,-129
    800071ac:	000cc503          	lbu	a0,0(s9)
    800071b0:	fffc8c93          	addi	s9,s9,-1
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	b90080e7          	jalr	-1136(ra) # 80006d44 <consputc>
    800071bc:	ffac98e3          	bne	s9,s10,800071ac <__printf+0x284>
    800071c0:	00094503          	lbu	a0,0(s2)
    800071c4:	e00514e3          	bnez	a0,80006fcc <__printf+0xa4>
    800071c8:	1a0c1663          	bnez	s8,80007374 <__printf+0x44c>
    800071cc:	08813083          	ld	ra,136(sp)
    800071d0:	08013403          	ld	s0,128(sp)
    800071d4:	07813483          	ld	s1,120(sp)
    800071d8:	07013903          	ld	s2,112(sp)
    800071dc:	06813983          	ld	s3,104(sp)
    800071e0:	06013a03          	ld	s4,96(sp)
    800071e4:	05813a83          	ld	s5,88(sp)
    800071e8:	05013b03          	ld	s6,80(sp)
    800071ec:	04813b83          	ld	s7,72(sp)
    800071f0:	04013c03          	ld	s8,64(sp)
    800071f4:	03813c83          	ld	s9,56(sp)
    800071f8:	03013d03          	ld	s10,48(sp)
    800071fc:	02813d83          	ld	s11,40(sp)
    80007200:	0d010113          	addi	sp,sp,208
    80007204:	00008067          	ret
    80007208:	07300713          	li	a4,115
    8000720c:	1ce78a63          	beq	a5,a4,800073e0 <__printf+0x4b8>
    80007210:	07800713          	li	a4,120
    80007214:	1ee79e63          	bne	a5,a4,80007410 <__printf+0x4e8>
    80007218:	f7843783          	ld	a5,-136(s0)
    8000721c:	0007a703          	lw	a4,0(a5)
    80007220:	00878793          	addi	a5,a5,8
    80007224:	f6f43c23          	sd	a5,-136(s0)
    80007228:	28074263          	bltz	a4,800074ac <__printf+0x584>
    8000722c:	00002d97          	auipc	s11,0x2
    80007230:	53cd8d93          	addi	s11,s11,1340 # 80009768 <digits>
    80007234:	00f77793          	andi	a5,a4,15
    80007238:	00fd87b3          	add	a5,s11,a5
    8000723c:	0007c683          	lbu	a3,0(a5)
    80007240:	00f00613          	li	a2,15
    80007244:	0007079b          	sext.w	a5,a4
    80007248:	f8d40023          	sb	a3,-128(s0)
    8000724c:	0047559b          	srliw	a1,a4,0x4
    80007250:	0047569b          	srliw	a3,a4,0x4
    80007254:	00000c93          	li	s9,0
    80007258:	0ee65063          	bge	a2,a4,80007338 <__printf+0x410>
    8000725c:	00f6f693          	andi	a3,a3,15
    80007260:	00dd86b3          	add	a3,s11,a3
    80007264:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007268:	0087d79b          	srliw	a5,a5,0x8
    8000726c:	00100c93          	li	s9,1
    80007270:	f8d400a3          	sb	a3,-127(s0)
    80007274:	0cb67263          	bgeu	a2,a1,80007338 <__printf+0x410>
    80007278:	00f7f693          	andi	a3,a5,15
    8000727c:	00dd86b3          	add	a3,s11,a3
    80007280:	0006c583          	lbu	a1,0(a3)
    80007284:	00f00613          	li	a2,15
    80007288:	0047d69b          	srliw	a3,a5,0x4
    8000728c:	f8b40123          	sb	a1,-126(s0)
    80007290:	0047d593          	srli	a1,a5,0x4
    80007294:	28f67e63          	bgeu	a2,a5,80007530 <__printf+0x608>
    80007298:	00f6f693          	andi	a3,a3,15
    8000729c:	00dd86b3          	add	a3,s11,a3
    800072a0:	0006c503          	lbu	a0,0(a3)
    800072a4:	0087d813          	srli	a6,a5,0x8
    800072a8:	0087d69b          	srliw	a3,a5,0x8
    800072ac:	f8a401a3          	sb	a0,-125(s0)
    800072b0:	28b67663          	bgeu	a2,a1,8000753c <__printf+0x614>
    800072b4:	00f6f693          	andi	a3,a3,15
    800072b8:	00dd86b3          	add	a3,s11,a3
    800072bc:	0006c583          	lbu	a1,0(a3)
    800072c0:	00c7d513          	srli	a0,a5,0xc
    800072c4:	00c7d69b          	srliw	a3,a5,0xc
    800072c8:	f8b40223          	sb	a1,-124(s0)
    800072cc:	29067a63          	bgeu	a2,a6,80007560 <__printf+0x638>
    800072d0:	00f6f693          	andi	a3,a3,15
    800072d4:	00dd86b3          	add	a3,s11,a3
    800072d8:	0006c583          	lbu	a1,0(a3)
    800072dc:	0107d813          	srli	a6,a5,0x10
    800072e0:	0107d69b          	srliw	a3,a5,0x10
    800072e4:	f8b402a3          	sb	a1,-123(s0)
    800072e8:	28a67263          	bgeu	a2,a0,8000756c <__printf+0x644>
    800072ec:	00f6f693          	andi	a3,a3,15
    800072f0:	00dd86b3          	add	a3,s11,a3
    800072f4:	0006c683          	lbu	a3,0(a3)
    800072f8:	0147d79b          	srliw	a5,a5,0x14
    800072fc:	f8d40323          	sb	a3,-122(s0)
    80007300:	21067663          	bgeu	a2,a6,8000750c <__printf+0x5e4>
    80007304:	02079793          	slli	a5,a5,0x20
    80007308:	0207d793          	srli	a5,a5,0x20
    8000730c:	00fd8db3          	add	s11,s11,a5
    80007310:	000dc683          	lbu	a3,0(s11)
    80007314:	00800793          	li	a5,8
    80007318:	00700c93          	li	s9,7
    8000731c:	f8d403a3          	sb	a3,-121(s0)
    80007320:	00075c63          	bgez	a4,80007338 <__printf+0x410>
    80007324:	f9040713          	addi	a4,s0,-112
    80007328:	00f70733          	add	a4,a4,a5
    8000732c:	02d00693          	li	a3,45
    80007330:	fed70823          	sb	a3,-16(a4)
    80007334:	00078c93          	mv	s9,a5
    80007338:	f8040793          	addi	a5,s0,-128
    8000733c:	01978cb3          	add	s9,a5,s9
    80007340:	f7f40d13          	addi	s10,s0,-129
    80007344:	000cc503          	lbu	a0,0(s9)
    80007348:	fffc8c93          	addi	s9,s9,-1
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	9f8080e7          	jalr	-1544(ra) # 80006d44 <consputc>
    80007354:	ff9d18e3          	bne	s10,s9,80007344 <__printf+0x41c>
    80007358:	0100006f          	j	80007368 <__printf+0x440>
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	9e8080e7          	jalr	-1560(ra) # 80006d44 <consputc>
    80007364:	000c8493          	mv	s1,s9
    80007368:	00094503          	lbu	a0,0(s2)
    8000736c:	c60510e3          	bnez	a0,80006fcc <__printf+0xa4>
    80007370:	e40c0ee3          	beqz	s8,800071cc <__printf+0x2a4>
    80007374:	00006517          	auipc	a0,0x6
    80007378:	a2c50513          	addi	a0,a0,-1492 # 8000cda0 <pr>
    8000737c:	00001097          	auipc	ra,0x1
    80007380:	94c080e7          	jalr	-1716(ra) # 80007cc8 <release>
    80007384:	e49ff06f          	j	800071cc <__printf+0x2a4>
    80007388:	f7843783          	ld	a5,-136(s0)
    8000738c:	03000513          	li	a0,48
    80007390:	01000d13          	li	s10,16
    80007394:	00878713          	addi	a4,a5,8
    80007398:	0007bc83          	ld	s9,0(a5)
    8000739c:	f6e43c23          	sd	a4,-136(s0)
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	9a4080e7          	jalr	-1628(ra) # 80006d44 <consputc>
    800073a8:	07800513          	li	a0,120
    800073ac:	00000097          	auipc	ra,0x0
    800073b0:	998080e7          	jalr	-1640(ra) # 80006d44 <consputc>
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	3b4d8d93          	addi	s11,s11,948 # 80009768 <digits>
    800073bc:	03ccd793          	srli	a5,s9,0x3c
    800073c0:	00fd87b3          	add	a5,s11,a5
    800073c4:	0007c503          	lbu	a0,0(a5)
    800073c8:	fffd0d1b          	addiw	s10,s10,-1
    800073cc:	004c9c93          	slli	s9,s9,0x4
    800073d0:	00000097          	auipc	ra,0x0
    800073d4:	974080e7          	jalr	-1676(ra) # 80006d44 <consputc>
    800073d8:	fe0d12e3          	bnez	s10,800073bc <__printf+0x494>
    800073dc:	f8dff06f          	j	80007368 <__printf+0x440>
    800073e0:	f7843783          	ld	a5,-136(s0)
    800073e4:	0007bc83          	ld	s9,0(a5)
    800073e8:	00878793          	addi	a5,a5,8
    800073ec:	f6f43c23          	sd	a5,-136(s0)
    800073f0:	000c9a63          	bnez	s9,80007404 <__printf+0x4dc>
    800073f4:	1080006f          	j	800074fc <__printf+0x5d4>
    800073f8:	001c8c93          	addi	s9,s9,1
    800073fc:	00000097          	auipc	ra,0x0
    80007400:	948080e7          	jalr	-1720(ra) # 80006d44 <consputc>
    80007404:	000cc503          	lbu	a0,0(s9)
    80007408:	fe0518e3          	bnez	a0,800073f8 <__printf+0x4d0>
    8000740c:	f5dff06f          	j	80007368 <__printf+0x440>
    80007410:	02500513          	li	a0,37
    80007414:	00000097          	auipc	ra,0x0
    80007418:	930080e7          	jalr	-1744(ra) # 80006d44 <consputc>
    8000741c:	000c8513          	mv	a0,s9
    80007420:	00000097          	auipc	ra,0x0
    80007424:	924080e7          	jalr	-1756(ra) # 80006d44 <consputc>
    80007428:	f41ff06f          	j	80007368 <__printf+0x440>
    8000742c:	02500513          	li	a0,37
    80007430:	00000097          	auipc	ra,0x0
    80007434:	914080e7          	jalr	-1772(ra) # 80006d44 <consputc>
    80007438:	f31ff06f          	j	80007368 <__printf+0x440>
    8000743c:	00030513          	mv	a0,t1
    80007440:	00000097          	auipc	ra,0x0
    80007444:	7bc080e7          	jalr	1980(ra) # 80007bfc <acquire>
    80007448:	b4dff06f          	j	80006f94 <__printf+0x6c>
    8000744c:	40c0053b          	negw	a0,a2
    80007450:	00a00713          	li	a4,10
    80007454:	02e576bb          	remuw	a3,a0,a4
    80007458:	00002d97          	auipc	s11,0x2
    8000745c:	310d8d93          	addi	s11,s11,784 # 80009768 <digits>
    80007460:	ff700593          	li	a1,-9
    80007464:	02069693          	slli	a3,a3,0x20
    80007468:	0206d693          	srli	a3,a3,0x20
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c683          	lbu	a3,0(a3)
    80007474:	02e557bb          	divuw	a5,a0,a4
    80007478:	f8d40023          	sb	a3,-128(s0)
    8000747c:	10b65e63          	bge	a2,a1,80007598 <__printf+0x670>
    80007480:	06300593          	li	a1,99
    80007484:	02e7f6bb          	remuw	a3,a5,a4
    80007488:	02069693          	slli	a3,a3,0x20
    8000748c:	0206d693          	srli	a3,a3,0x20
    80007490:	00dd86b3          	add	a3,s11,a3
    80007494:	0006c683          	lbu	a3,0(a3)
    80007498:	02e7d73b          	divuw	a4,a5,a4
    8000749c:	00200793          	li	a5,2
    800074a0:	f8d400a3          	sb	a3,-127(s0)
    800074a4:	bca5ece3          	bltu	a1,a0,8000707c <__printf+0x154>
    800074a8:	ce5ff06f          	j	8000718c <__printf+0x264>
    800074ac:	40e007bb          	negw	a5,a4
    800074b0:	00002d97          	auipc	s11,0x2
    800074b4:	2b8d8d93          	addi	s11,s11,696 # 80009768 <digits>
    800074b8:	00f7f693          	andi	a3,a5,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c583          	lbu	a1,0(a3)
    800074c4:	ff100613          	li	a2,-15
    800074c8:	0047d69b          	srliw	a3,a5,0x4
    800074cc:	f8b40023          	sb	a1,-128(s0)
    800074d0:	0047d59b          	srliw	a1,a5,0x4
    800074d4:	0ac75e63          	bge	a4,a2,80007590 <__printf+0x668>
    800074d8:	00f6f693          	andi	a3,a3,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c603          	lbu	a2,0(a3)
    800074e4:	00f00693          	li	a3,15
    800074e8:	0087d79b          	srliw	a5,a5,0x8
    800074ec:	f8c400a3          	sb	a2,-127(s0)
    800074f0:	d8b6e4e3          	bltu	a3,a1,80007278 <__printf+0x350>
    800074f4:	00200793          	li	a5,2
    800074f8:	e2dff06f          	j	80007324 <__printf+0x3fc>
    800074fc:	00002c97          	auipc	s9,0x2
    80007500:	24cc8c93          	addi	s9,s9,588 # 80009748 <_ZL6digits+0x160>
    80007504:	02800513          	li	a0,40
    80007508:	ef1ff06f          	j	800073f8 <__printf+0x4d0>
    8000750c:	00700793          	li	a5,7
    80007510:	00600c93          	li	s9,6
    80007514:	e0dff06f          	j	80007320 <__printf+0x3f8>
    80007518:	00700793          	li	a5,7
    8000751c:	00600c93          	li	s9,6
    80007520:	c69ff06f          	j	80007188 <__printf+0x260>
    80007524:	00300793          	li	a5,3
    80007528:	00200c93          	li	s9,2
    8000752c:	c5dff06f          	j	80007188 <__printf+0x260>
    80007530:	00300793          	li	a5,3
    80007534:	00200c93          	li	s9,2
    80007538:	de9ff06f          	j	80007320 <__printf+0x3f8>
    8000753c:	00400793          	li	a5,4
    80007540:	00300c93          	li	s9,3
    80007544:	dddff06f          	j	80007320 <__printf+0x3f8>
    80007548:	00400793          	li	a5,4
    8000754c:	00300c93          	li	s9,3
    80007550:	c39ff06f          	j	80007188 <__printf+0x260>
    80007554:	00500793          	li	a5,5
    80007558:	00400c93          	li	s9,4
    8000755c:	c2dff06f          	j	80007188 <__printf+0x260>
    80007560:	00500793          	li	a5,5
    80007564:	00400c93          	li	s9,4
    80007568:	db9ff06f          	j	80007320 <__printf+0x3f8>
    8000756c:	00600793          	li	a5,6
    80007570:	00500c93          	li	s9,5
    80007574:	dadff06f          	j	80007320 <__printf+0x3f8>
    80007578:	00600793          	li	a5,6
    8000757c:	00500c93          	li	s9,5
    80007580:	c09ff06f          	j	80007188 <__printf+0x260>
    80007584:	00800793          	li	a5,8
    80007588:	00700c93          	li	s9,7
    8000758c:	bfdff06f          	j	80007188 <__printf+0x260>
    80007590:	00100793          	li	a5,1
    80007594:	d91ff06f          	j	80007324 <__printf+0x3fc>
    80007598:	00100793          	li	a5,1
    8000759c:	bf1ff06f          	j	8000718c <__printf+0x264>
    800075a0:	00900793          	li	a5,9
    800075a4:	00800c93          	li	s9,8
    800075a8:	be1ff06f          	j	80007188 <__printf+0x260>
    800075ac:	00002517          	auipc	a0,0x2
    800075b0:	1a450513          	addi	a0,a0,420 # 80009750 <_ZL6digits+0x168>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	918080e7          	jalr	-1768(ra) # 80006ecc <panic>

00000000800075bc <printfinit>:
    800075bc:	fe010113          	addi	sp,sp,-32
    800075c0:	00813823          	sd	s0,16(sp)
    800075c4:	00913423          	sd	s1,8(sp)
    800075c8:	00113c23          	sd	ra,24(sp)
    800075cc:	02010413          	addi	s0,sp,32
    800075d0:	00005497          	auipc	s1,0x5
    800075d4:	7d048493          	addi	s1,s1,2000 # 8000cda0 <pr>
    800075d8:	00048513          	mv	a0,s1
    800075dc:	00002597          	auipc	a1,0x2
    800075e0:	18458593          	addi	a1,a1,388 # 80009760 <_ZL6digits+0x178>
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	5f4080e7          	jalr	1524(ra) # 80007bd8 <initlock>
    800075ec:	01813083          	ld	ra,24(sp)
    800075f0:	01013403          	ld	s0,16(sp)
    800075f4:	0004ac23          	sw	zero,24(s1)
    800075f8:	00813483          	ld	s1,8(sp)
    800075fc:	02010113          	addi	sp,sp,32
    80007600:	00008067          	ret

0000000080007604 <uartinit>:
    80007604:	ff010113          	addi	sp,sp,-16
    80007608:	00813423          	sd	s0,8(sp)
    8000760c:	01010413          	addi	s0,sp,16
    80007610:	100007b7          	lui	a5,0x10000
    80007614:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007618:	f8000713          	li	a4,-128
    8000761c:	00e781a3          	sb	a4,3(a5)
    80007620:	00300713          	li	a4,3
    80007624:	00e78023          	sb	a4,0(a5)
    80007628:	000780a3          	sb	zero,1(a5)
    8000762c:	00e781a3          	sb	a4,3(a5)
    80007630:	00700693          	li	a3,7
    80007634:	00d78123          	sb	a3,2(a5)
    80007638:	00e780a3          	sb	a4,1(a5)
    8000763c:	00813403          	ld	s0,8(sp)
    80007640:	01010113          	addi	sp,sp,16
    80007644:	00008067          	ret

0000000080007648 <uartputc>:
    80007648:	00004797          	auipc	a5,0x4
    8000764c:	4307a783          	lw	a5,1072(a5) # 8000ba78 <panicked>
    80007650:	00078463          	beqz	a5,80007658 <uartputc+0x10>
    80007654:	0000006f          	j	80007654 <uartputc+0xc>
    80007658:	fd010113          	addi	sp,sp,-48
    8000765c:	02813023          	sd	s0,32(sp)
    80007660:	00913c23          	sd	s1,24(sp)
    80007664:	01213823          	sd	s2,16(sp)
    80007668:	01313423          	sd	s3,8(sp)
    8000766c:	02113423          	sd	ra,40(sp)
    80007670:	03010413          	addi	s0,sp,48
    80007674:	00004917          	auipc	s2,0x4
    80007678:	40c90913          	addi	s2,s2,1036 # 8000ba80 <uart_tx_r>
    8000767c:	00093783          	ld	a5,0(s2)
    80007680:	00004497          	auipc	s1,0x4
    80007684:	40848493          	addi	s1,s1,1032 # 8000ba88 <uart_tx_w>
    80007688:	0004b703          	ld	a4,0(s1)
    8000768c:	02078693          	addi	a3,a5,32
    80007690:	00050993          	mv	s3,a0
    80007694:	02e69c63          	bne	a3,a4,800076cc <uartputc+0x84>
    80007698:	00001097          	auipc	ra,0x1
    8000769c:	834080e7          	jalr	-1996(ra) # 80007ecc <push_on>
    800076a0:	00093783          	ld	a5,0(s2)
    800076a4:	0004b703          	ld	a4,0(s1)
    800076a8:	02078793          	addi	a5,a5,32
    800076ac:	00e79463          	bne	a5,a4,800076b4 <uartputc+0x6c>
    800076b0:	0000006f          	j	800076b0 <uartputc+0x68>
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	88c080e7          	jalr	-1908(ra) # 80007f40 <pop_on>
    800076bc:	00093783          	ld	a5,0(s2)
    800076c0:	0004b703          	ld	a4,0(s1)
    800076c4:	02078693          	addi	a3,a5,32
    800076c8:	fce688e3          	beq	a3,a4,80007698 <uartputc+0x50>
    800076cc:	01f77693          	andi	a3,a4,31
    800076d0:	00005597          	auipc	a1,0x5
    800076d4:	6f058593          	addi	a1,a1,1776 # 8000cdc0 <uart_tx_buf>
    800076d8:	00d586b3          	add	a3,a1,a3
    800076dc:	00170713          	addi	a4,a4,1
    800076e0:	01368023          	sb	s3,0(a3)
    800076e4:	00e4b023          	sd	a4,0(s1)
    800076e8:	10000637          	lui	a2,0x10000
    800076ec:	02f71063          	bne	a4,a5,8000770c <uartputc+0xc4>
    800076f0:	0340006f          	j	80007724 <uartputc+0xdc>
    800076f4:	00074703          	lbu	a4,0(a4)
    800076f8:	00f93023          	sd	a5,0(s2)
    800076fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007700:	00093783          	ld	a5,0(s2)
    80007704:	0004b703          	ld	a4,0(s1)
    80007708:	00f70e63          	beq	a4,a5,80007724 <uartputc+0xdc>
    8000770c:	00564683          	lbu	a3,5(a2)
    80007710:	01f7f713          	andi	a4,a5,31
    80007714:	00e58733          	add	a4,a1,a4
    80007718:	0206f693          	andi	a3,a3,32
    8000771c:	00178793          	addi	a5,a5,1
    80007720:	fc069ae3          	bnez	a3,800076f4 <uartputc+0xac>
    80007724:	02813083          	ld	ra,40(sp)
    80007728:	02013403          	ld	s0,32(sp)
    8000772c:	01813483          	ld	s1,24(sp)
    80007730:	01013903          	ld	s2,16(sp)
    80007734:	00813983          	ld	s3,8(sp)
    80007738:	03010113          	addi	sp,sp,48
    8000773c:	00008067          	ret

0000000080007740 <uartputc_sync>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00004717          	auipc	a4,0x4
    80007750:	32c72703          	lw	a4,812(a4) # 8000ba78 <panicked>
    80007754:	02071663          	bnez	a4,80007780 <uartputc_sync+0x40>
    80007758:	00050793          	mv	a5,a0
    8000775c:	100006b7          	lui	a3,0x10000
    80007760:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007764:	02077713          	andi	a4,a4,32
    80007768:	fe070ce3          	beqz	a4,80007760 <uartputc_sync+0x20>
    8000776c:	0ff7f793          	andi	a5,a5,255
    80007770:	00f68023          	sb	a5,0(a3)
    80007774:	00813403          	ld	s0,8(sp)
    80007778:	01010113          	addi	sp,sp,16
    8000777c:	00008067          	ret
    80007780:	0000006f          	j	80007780 <uartputc_sync+0x40>

0000000080007784 <uartstart>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813423          	sd	s0,8(sp)
    8000778c:	01010413          	addi	s0,sp,16
    80007790:	00004617          	auipc	a2,0x4
    80007794:	2f060613          	addi	a2,a2,752 # 8000ba80 <uart_tx_r>
    80007798:	00004517          	auipc	a0,0x4
    8000779c:	2f050513          	addi	a0,a0,752 # 8000ba88 <uart_tx_w>
    800077a0:	00063783          	ld	a5,0(a2)
    800077a4:	00053703          	ld	a4,0(a0)
    800077a8:	04f70263          	beq	a4,a5,800077ec <uartstart+0x68>
    800077ac:	100005b7          	lui	a1,0x10000
    800077b0:	00005817          	auipc	a6,0x5
    800077b4:	61080813          	addi	a6,a6,1552 # 8000cdc0 <uart_tx_buf>
    800077b8:	01c0006f          	j	800077d4 <uartstart+0x50>
    800077bc:	0006c703          	lbu	a4,0(a3)
    800077c0:	00f63023          	sd	a5,0(a2)
    800077c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077c8:	00063783          	ld	a5,0(a2)
    800077cc:	00053703          	ld	a4,0(a0)
    800077d0:	00f70e63          	beq	a4,a5,800077ec <uartstart+0x68>
    800077d4:	01f7f713          	andi	a4,a5,31
    800077d8:	00e806b3          	add	a3,a6,a4
    800077dc:	0055c703          	lbu	a4,5(a1)
    800077e0:	00178793          	addi	a5,a5,1
    800077e4:	02077713          	andi	a4,a4,32
    800077e8:	fc071ae3          	bnez	a4,800077bc <uartstart+0x38>
    800077ec:	00813403          	ld	s0,8(sp)
    800077f0:	01010113          	addi	sp,sp,16
    800077f4:	00008067          	ret

00000000800077f8 <uartgetc>:
    800077f8:	ff010113          	addi	sp,sp,-16
    800077fc:	00813423          	sd	s0,8(sp)
    80007800:	01010413          	addi	s0,sp,16
    80007804:	10000737          	lui	a4,0x10000
    80007808:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000780c:	0017f793          	andi	a5,a5,1
    80007810:	00078c63          	beqz	a5,80007828 <uartgetc+0x30>
    80007814:	00074503          	lbu	a0,0(a4)
    80007818:	0ff57513          	andi	a0,a0,255
    8000781c:	00813403          	ld	s0,8(sp)
    80007820:	01010113          	addi	sp,sp,16
    80007824:	00008067          	ret
    80007828:	fff00513          	li	a0,-1
    8000782c:	ff1ff06f          	j	8000781c <uartgetc+0x24>

0000000080007830 <uartintr>:
    80007830:	100007b7          	lui	a5,0x10000
    80007834:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007838:	0017f793          	andi	a5,a5,1
    8000783c:	0a078463          	beqz	a5,800078e4 <uartintr+0xb4>
    80007840:	fe010113          	addi	sp,sp,-32
    80007844:	00813823          	sd	s0,16(sp)
    80007848:	00913423          	sd	s1,8(sp)
    8000784c:	00113c23          	sd	ra,24(sp)
    80007850:	02010413          	addi	s0,sp,32
    80007854:	100004b7          	lui	s1,0x10000
    80007858:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000785c:	0ff57513          	andi	a0,a0,255
    80007860:	fffff097          	auipc	ra,0xfffff
    80007864:	534080e7          	jalr	1332(ra) # 80006d94 <consoleintr>
    80007868:	0054c783          	lbu	a5,5(s1)
    8000786c:	0017f793          	andi	a5,a5,1
    80007870:	fe0794e3          	bnez	a5,80007858 <uartintr+0x28>
    80007874:	00004617          	auipc	a2,0x4
    80007878:	20c60613          	addi	a2,a2,524 # 8000ba80 <uart_tx_r>
    8000787c:	00004517          	auipc	a0,0x4
    80007880:	20c50513          	addi	a0,a0,524 # 8000ba88 <uart_tx_w>
    80007884:	00063783          	ld	a5,0(a2)
    80007888:	00053703          	ld	a4,0(a0)
    8000788c:	04f70263          	beq	a4,a5,800078d0 <uartintr+0xa0>
    80007890:	100005b7          	lui	a1,0x10000
    80007894:	00005817          	auipc	a6,0x5
    80007898:	52c80813          	addi	a6,a6,1324 # 8000cdc0 <uart_tx_buf>
    8000789c:	01c0006f          	j	800078b8 <uartintr+0x88>
    800078a0:	0006c703          	lbu	a4,0(a3)
    800078a4:	00f63023          	sd	a5,0(a2)
    800078a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078ac:	00063783          	ld	a5,0(a2)
    800078b0:	00053703          	ld	a4,0(a0)
    800078b4:	00f70e63          	beq	a4,a5,800078d0 <uartintr+0xa0>
    800078b8:	01f7f713          	andi	a4,a5,31
    800078bc:	00e806b3          	add	a3,a6,a4
    800078c0:	0055c703          	lbu	a4,5(a1)
    800078c4:	00178793          	addi	a5,a5,1
    800078c8:	02077713          	andi	a4,a4,32
    800078cc:	fc071ae3          	bnez	a4,800078a0 <uartintr+0x70>
    800078d0:	01813083          	ld	ra,24(sp)
    800078d4:	01013403          	ld	s0,16(sp)
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	02010113          	addi	sp,sp,32
    800078e0:	00008067          	ret
    800078e4:	00004617          	auipc	a2,0x4
    800078e8:	19c60613          	addi	a2,a2,412 # 8000ba80 <uart_tx_r>
    800078ec:	00004517          	auipc	a0,0x4
    800078f0:	19c50513          	addi	a0,a0,412 # 8000ba88 <uart_tx_w>
    800078f4:	00063783          	ld	a5,0(a2)
    800078f8:	00053703          	ld	a4,0(a0)
    800078fc:	04f70263          	beq	a4,a5,80007940 <uartintr+0x110>
    80007900:	100005b7          	lui	a1,0x10000
    80007904:	00005817          	auipc	a6,0x5
    80007908:	4bc80813          	addi	a6,a6,1212 # 8000cdc0 <uart_tx_buf>
    8000790c:	01c0006f          	j	80007928 <uartintr+0xf8>
    80007910:	0006c703          	lbu	a4,0(a3)
    80007914:	00f63023          	sd	a5,0(a2)
    80007918:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000791c:	00063783          	ld	a5,0(a2)
    80007920:	00053703          	ld	a4,0(a0)
    80007924:	02f70063          	beq	a4,a5,80007944 <uartintr+0x114>
    80007928:	01f7f713          	andi	a4,a5,31
    8000792c:	00e806b3          	add	a3,a6,a4
    80007930:	0055c703          	lbu	a4,5(a1)
    80007934:	00178793          	addi	a5,a5,1
    80007938:	02077713          	andi	a4,a4,32
    8000793c:	fc071ae3          	bnez	a4,80007910 <uartintr+0xe0>
    80007940:	00008067          	ret
    80007944:	00008067          	ret

0000000080007948 <kinit>:
    80007948:	fc010113          	addi	sp,sp,-64
    8000794c:	02913423          	sd	s1,40(sp)
    80007950:	fffff7b7          	lui	a5,0xfffff
    80007954:	00006497          	auipc	s1,0x6
    80007958:	48b48493          	addi	s1,s1,1163 # 8000dddf <end+0xfff>
    8000795c:	02813823          	sd	s0,48(sp)
    80007960:	01313c23          	sd	s3,24(sp)
    80007964:	00f4f4b3          	and	s1,s1,a5
    80007968:	02113c23          	sd	ra,56(sp)
    8000796c:	03213023          	sd	s2,32(sp)
    80007970:	01413823          	sd	s4,16(sp)
    80007974:	01513423          	sd	s5,8(sp)
    80007978:	04010413          	addi	s0,sp,64
    8000797c:	000017b7          	lui	a5,0x1
    80007980:	01100993          	li	s3,17
    80007984:	00f487b3          	add	a5,s1,a5
    80007988:	01b99993          	slli	s3,s3,0x1b
    8000798c:	06f9e063          	bltu	s3,a5,800079ec <kinit+0xa4>
    80007990:	00005a97          	auipc	s5,0x5
    80007994:	450a8a93          	addi	s5,s5,1104 # 8000cde0 <end>
    80007998:	0754ec63          	bltu	s1,s5,80007a10 <kinit+0xc8>
    8000799c:	0734fa63          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079a0:	00088a37          	lui	s4,0x88
    800079a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800079a8:	00004917          	auipc	s2,0x4
    800079ac:	0e890913          	addi	s2,s2,232 # 8000ba90 <kmem>
    800079b0:	00ca1a13          	slli	s4,s4,0xc
    800079b4:	0140006f          	j	800079c8 <kinit+0x80>
    800079b8:	000017b7          	lui	a5,0x1
    800079bc:	00f484b3          	add	s1,s1,a5
    800079c0:	0554e863          	bltu	s1,s5,80007a10 <kinit+0xc8>
    800079c4:	0534f663          	bgeu	s1,s3,80007a10 <kinit+0xc8>
    800079c8:	00001637          	lui	a2,0x1
    800079cc:	00100593          	li	a1,1
    800079d0:	00048513          	mv	a0,s1
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	5e4080e7          	jalr	1508(ra) # 80007fb8 <__memset>
    800079dc:	00093783          	ld	a5,0(s2)
    800079e0:	00f4b023          	sd	a5,0(s1)
    800079e4:	00993023          	sd	s1,0(s2)
    800079e8:	fd4498e3          	bne	s1,s4,800079b8 <kinit+0x70>
    800079ec:	03813083          	ld	ra,56(sp)
    800079f0:	03013403          	ld	s0,48(sp)
    800079f4:	02813483          	ld	s1,40(sp)
    800079f8:	02013903          	ld	s2,32(sp)
    800079fc:	01813983          	ld	s3,24(sp)
    80007a00:	01013a03          	ld	s4,16(sp)
    80007a04:	00813a83          	ld	s5,8(sp)
    80007a08:	04010113          	addi	sp,sp,64
    80007a0c:	00008067          	ret
    80007a10:	00002517          	auipc	a0,0x2
    80007a14:	d7050513          	addi	a0,a0,-656 # 80009780 <digits+0x18>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	4b4080e7          	jalr	1204(ra) # 80006ecc <panic>

0000000080007a20 <freerange>:
    80007a20:	fc010113          	addi	sp,sp,-64
    80007a24:	000017b7          	lui	a5,0x1
    80007a28:	02913423          	sd	s1,40(sp)
    80007a2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a30:	009504b3          	add	s1,a0,s1
    80007a34:	fffff537          	lui	a0,0xfffff
    80007a38:	02813823          	sd	s0,48(sp)
    80007a3c:	02113c23          	sd	ra,56(sp)
    80007a40:	03213023          	sd	s2,32(sp)
    80007a44:	01313c23          	sd	s3,24(sp)
    80007a48:	01413823          	sd	s4,16(sp)
    80007a4c:	01513423          	sd	s5,8(sp)
    80007a50:	01613023          	sd	s6,0(sp)
    80007a54:	04010413          	addi	s0,sp,64
    80007a58:	00a4f4b3          	and	s1,s1,a0
    80007a5c:	00f487b3          	add	a5,s1,a5
    80007a60:	06f5e463          	bltu	a1,a5,80007ac8 <freerange+0xa8>
    80007a64:	00005a97          	auipc	s5,0x5
    80007a68:	37ca8a93          	addi	s5,s5,892 # 8000cde0 <end>
    80007a6c:	0954e263          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a70:	01100993          	li	s3,17
    80007a74:	01b99993          	slli	s3,s3,0x1b
    80007a78:	0734fc63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007a7c:	00058a13          	mv	s4,a1
    80007a80:	00004917          	auipc	s2,0x4
    80007a84:	01090913          	addi	s2,s2,16 # 8000ba90 <kmem>
    80007a88:	00002b37          	lui	s6,0x2
    80007a8c:	0140006f          	j	80007aa0 <freerange+0x80>
    80007a90:	000017b7          	lui	a5,0x1
    80007a94:	00f484b3          	add	s1,s1,a5
    80007a98:	0554ec63          	bltu	s1,s5,80007af0 <freerange+0xd0>
    80007a9c:	0534fa63          	bgeu	s1,s3,80007af0 <freerange+0xd0>
    80007aa0:	00001637          	lui	a2,0x1
    80007aa4:	00100593          	li	a1,1
    80007aa8:	00048513          	mv	a0,s1
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	50c080e7          	jalr	1292(ra) # 80007fb8 <__memset>
    80007ab4:	00093703          	ld	a4,0(s2)
    80007ab8:	016487b3          	add	a5,s1,s6
    80007abc:	00e4b023          	sd	a4,0(s1)
    80007ac0:	00993023          	sd	s1,0(s2)
    80007ac4:	fcfa76e3          	bgeu	s4,a5,80007a90 <freerange+0x70>
    80007ac8:	03813083          	ld	ra,56(sp)
    80007acc:	03013403          	ld	s0,48(sp)
    80007ad0:	02813483          	ld	s1,40(sp)
    80007ad4:	02013903          	ld	s2,32(sp)
    80007ad8:	01813983          	ld	s3,24(sp)
    80007adc:	01013a03          	ld	s4,16(sp)
    80007ae0:	00813a83          	ld	s5,8(sp)
    80007ae4:	00013b03          	ld	s6,0(sp)
    80007ae8:	04010113          	addi	sp,sp,64
    80007aec:	00008067          	ret
    80007af0:	00002517          	auipc	a0,0x2
    80007af4:	c9050513          	addi	a0,a0,-880 # 80009780 <digits+0x18>
    80007af8:	fffff097          	auipc	ra,0xfffff
    80007afc:	3d4080e7          	jalr	980(ra) # 80006ecc <panic>

0000000080007b00 <kfree>:
    80007b00:	fe010113          	addi	sp,sp,-32
    80007b04:	00813823          	sd	s0,16(sp)
    80007b08:	00113c23          	sd	ra,24(sp)
    80007b0c:	00913423          	sd	s1,8(sp)
    80007b10:	02010413          	addi	s0,sp,32
    80007b14:	03451793          	slli	a5,a0,0x34
    80007b18:	04079c63          	bnez	a5,80007b70 <kfree+0x70>
    80007b1c:	00005797          	auipc	a5,0x5
    80007b20:	2c478793          	addi	a5,a5,708 # 8000cde0 <end>
    80007b24:	00050493          	mv	s1,a0
    80007b28:	04f56463          	bltu	a0,a5,80007b70 <kfree+0x70>
    80007b2c:	01100793          	li	a5,17
    80007b30:	01b79793          	slli	a5,a5,0x1b
    80007b34:	02f57e63          	bgeu	a0,a5,80007b70 <kfree+0x70>
    80007b38:	00001637          	lui	a2,0x1
    80007b3c:	00100593          	li	a1,1
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	478080e7          	jalr	1144(ra) # 80007fb8 <__memset>
    80007b48:	00004797          	auipc	a5,0x4
    80007b4c:	f4878793          	addi	a5,a5,-184 # 8000ba90 <kmem>
    80007b50:	0007b703          	ld	a4,0(a5)
    80007b54:	01813083          	ld	ra,24(sp)
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	00e4b023          	sd	a4,0(s1)
    80007b60:	0097b023          	sd	s1,0(a5)
    80007b64:	00813483          	ld	s1,8(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	c1050513          	addi	a0,a0,-1008 # 80009780 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	354080e7          	jalr	852(ra) # 80006ecc <panic>

0000000080007b80 <kalloc>:
    80007b80:	fe010113          	addi	sp,sp,-32
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	00113c23          	sd	ra,24(sp)
    80007b90:	02010413          	addi	s0,sp,32
    80007b94:	00004797          	auipc	a5,0x4
    80007b98:	efc78793          	addi	a5,a5,-260 # 8000ba90 <kmem>
    80007b9c:	0007b483          	ld	s1,0(a5)
    80007ba0:	02048063          	beqz	s1,80007bc0 <kalloc+0x40>
    80007ba4:	0004b703          	ld	a4,0(s1)
    80007ba8:	00001637          	lui	a2,0x1
    80007bac:	00500593          	li	a1,5
    80007bb0:	00048513          	mv	a0,s1
    80007bb4:	00e7b023          	sd	a4,0(a5)
    80007bb8:	00000097          	auipc	ra,0x0
    80007bbc:	400080e7          	jalr	1024(ra) # 80007fb8 <__memset>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	00048513          	mv	a0,s1
    80007bcc:	00813483          	ld	s1,8(sp)
    80007bd0:	02010113          	addi	sp,sp,32
    80007bd4:	00008067          	ret

0000000080007bd8 <initlock>:
    80007bd8:	ff010113          	addi	sp,sp,-16
    80007bdc:	00813423          	sd	s0,8(sp)
    80007be0:	01010413          	addi	s0,sp,16
    80007be4:	00813403          	ld	s0,8(sp)
    80007be8:	00b53423          	sd	a1,8(a0)
    80007bec:	00052023          	sw	zero,0(a0)
    80007bf0:	00053823          	sd	zero,16(a0)
    80007bf4:	01010113          	addi	sp,sp,16
    80007bf8:	00008067          	ret

0000000080007bfc <acquire>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	00113c23          	sd	ra,24(sp)
    80007c0c:	01213023          	sd	s2,0(sp)
    80007c10:	02010413          	addi	s0,sp,32
    80007c14:	00050493          	mv	s1,a0
    80007c18:	10002973          	csrr	s2,sstatus
    80007c1c:	100027f3          	csrr	a5,sstatus
    80007c20:	ffd7f793          	andi	a5,a5,-3
    80007c24:	10079073          	csrw	sstatus,a5
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	8e0080e7          	jalr	-1824(ra) # 80006508 <mycpu>
    80007c30:	07852783          	lw	a5,120(a0)
    80007c34:	06078e63          	beqz	a5,80007cb0 <acquire+0xb4>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	8d0080e7          	jalr	-1840(ra) # 80006508 <mycpu>
    80007c40:	07852783          	lw	a5,120(a0)
    80007c44:	0004a703          	lw	a4,0(s1)
    80007c48:	0017879b          	addiw	a5,a5,1
    80007c4c:	06f52c23          	sw	a5,120(a0)
    80007c50:	04071063          	bnez	a4,80007c90 <acquire+0x94>
    80007c54:	00100713          	li	a4,1
    80007c58:	00070793          	mv	a5,a4
    80007c5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c60:	0007879b          	sext.w	a5,a5
    80007c64:	fe079ae3          	bnez	a5,80007c58 <acquire+0x5c>
    80007c68:	0ff0000f          	fence
    80007c6c:	fffff097          	auipc	ra,0xfffff
    80007c70:	89c080e7          	jalr	-1892(ra) # 80006508 <mycpu>
    80007c74:	01813083          	ld	ra,24(sp)
    80007c78:	01013403          	ld	s0,16(sp)
    80007c7c:	00a4b823          	sd	a0,16(s1)
    80007c80:	00013903          	ld	s2,0(sp)
    80007c84:	00813483          	ld	s1,8(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret
    80007c90:	0104b903          	ld	s2,16(s1)
    80007c94:	fffff097          	auipc	ra,0xfffff
    80007c98:	874080e7          	jalr	-1932(ra) # 80006508 <mycpu>
    80007c9c:	faa91ce3          	bne	s2,a0,80007c54 <acquire+0x58>
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	ae850513          	addi	a0,a0,-1304 # 80009788 <digits+0x20>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	224080e7          	jalr	548(ra) # 80006ecc <panic>
    80007cb0:	00195913          	srli	s2,s2,0x1
    80007cb4:	fffff097          	auipc	ra,0xfffff
    80007cb8:	854080e7          	jalr	-1964(ra) # 80006508 <mycpu>
    80007cbc:	00197913          	andi	s2,s2,1
    80007cc0:	07252e23          	sw	s2,124(a0)
    80007cc4:	f75ff06f          	j	80007c38 <acquire+0x3c>

0000000080007cc8 <release>:
    80007cc8:	fe010113          	addi	sp,sp,-32
    80007ccc:	00813823          	sd	s0,16(sp)
    80007cd0:	00113c23          	sd	ra,24(sp)
    80007cd4:	00913423          	sd	s1,8(sp)
    80007cd8:	01213023          	sd	s2,0(sp)
    80007cdc:	02010413          	addi	s0,sp,32
    80007ce0:	00052783          	lw	a5,0(a0)
    80007ce4:	00079a63          	bnez	a5,80007cf8 <release+0x30>
    80007ce8:	00002517          	auipc	a0,0x2
    80007cec:	aa850513          	addi	a0,a0,-1368 # 80009790 <digits+0x28>
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	1dc080e7          	jalr	476(ra) # 80006ecc <panic>
    80007cf8:	01053903          	ld	s2,16(a0)
    80007cfc:	00050493          	mv	s1,a0
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	808080e7          	jalr	-2040(ra) # 80006508 <mycpu>
    80007d08:	fea910e3          	bne	s2,a0,80007ce8 <release+0x20>
    80007d0c:	0004b823          	sd	zero,16(s1)
    80007d10:	0ff0000f          	fence
    80007d14:	0f50000f          	fence	iorw,ow
    80007d18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d1c:	ffffe097          	auipc	ra,0xffffe
    80007d20:	7ec080e7          	jalr	2028(ra) # 80006508 <mycpu>
    80007d24:	100027f3          	csrr	a5,sstatus
    80007d28:	0027f793          	andi	a5,a5,2
    80007d2c:	04079a63          	bnez	a5,80007d80 <release+0xb8>
    80007d30:	07852783          	lw	a5,120(a0)
    80007d34:	02f05e63          	blez	a5,80007d70 <release+0xa8>
    80007d38:	fff7871b          	addiw	a4,a5,-1
    80007d3c:	06e52c23          	sw	a4,120(a0)
    80007d40:	00071c63          	bnez	a4,80007d58 <release+0x90>
    80007d44:	07c52783          	lw	a5,124(a0)
    80007d48:	00078863          	beqz	a5,80007d58 <release+0x90>
    80007d4c:	100027f3          	csrr	a5,sstatus
    80007d50:	0027e793          	ori	a5,a5,2
    80007d54:	10079073          	csrw	sstatus,a5
    80007d58:	01813083          	ld	ra,24(sp)
    80007d5c:	01013403          	ld	s0,16(sp)
    80007d60:	00813483          	ld	s1,8(sp)
    80007d64:	00013903          	ld	s2,0(sp)
    80007d68:	02010113          	addi	sp,sp,32
    80007d6c:	00008067          	ret
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	a4050513          	addi	a0,a0,-1472 # 800097b0 <digits+0x48>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	154080e7          	jalr	340(ra) # 80006ecc <panic>
    80007d80:	00002517          	auipc	a0,0x2
    80007d84:	a1850513          	addi	a0,a0,-1512 # 80009798 <digits+0x30>
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	144080e7          	jalr	324(ra) # 80006ecc <panic>

0000000080007d90 <holding>:
    80007d90:	00052783          	lw	a5,0(a0)
    80007d94:	00079663          	bnez	a5,80007da0 <holding+0x10>
    80007d98:	00000513          	li	a0,0
    80007d9c:	00008067          	ret
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	01053483          	ld	s1,16(a0)
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	750080e7          	jalr	1872(ra) # 80006508 <mycpu>
    80007dc0:	01813083          	ld	ra,24(sp)
    80007dc4:	01013403          	ld	s0,16(sp)
    80007dc8:	40a48533          	sub	a0,s1,a0
    80007dcc:	00153513          	seqz	a0,a0
    80007dd0:	00813483          	ld	s1,8(sp)
    80007dd4:	02010113          	addi	sp,sp,32
    80007dd8:	00008067          	ret

0000000080007ddc <push_off>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00113c23          	sd	ra,24(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	02010413          	addi	s0,sp,32
    80007df0:	100024f3          	csrr	s1,sstatus
    80007df4:	100027f3          	csrr	a5,sstatus
    80007df8:	ffd7f793          	andi	a5,a5,-3
    80007dfc:	10079073          	csrw	sstatus,a5
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	708080e7          	jalr	1800(ra) # 80006508 <mycpu>
    80007e08:	07852783          	lw	a5,120(a0)
    80007e0c:	02078663          	beqz	a5,80007e38 <push_off+0x5c>
    80007e10:	ffffe097          	auipc	ra,0xffffe
    80007e14:	6f8080e7          	jalr	1784(ra) # 80006508 <mycpu>
    80007e18:	07852783          	lw	a5,120(a0)
    80007e1c:	01813083          	ld	ra,24(sp)
    80007e20:	01013403          	ld	s0,16(sp)
    80007e24:	0017879b          	addiw	a5,a5,1
    80007e28:	06f52c23          	sw	a5,120(a0)
    80007e2c:	00813483          	ld	s1,8(sp)
    80007e30:	02010113          	addi	sp,sp,32
    80007e34:	00008067          	ret
    80007e38:	0014d493          	srli	s1,s1,0x1
    80007e3c:	ffffe097          	auipc	ra,0xffffe
    80007e40:	6cc080e7          	jalr	1740(ra) # 80006508 <mycpu>
    80007e44:	0014f493          	andi	s1,s1,1
    80007e48:	06952e23          	sw	s1,124(a0)
    80007e4c:	fc5ff06f          	j	80007e10 <push_off+0x34>

0000000080007e50 <pop_off>:
    80007e50:	ff010113          	addi	sp,sp,-16
    80007e54:	00813023          	sd	s0,0(sp)
    80007e58:	00113423          	sd	ra,8(sp)
    80007e5c:	01010413          	addi	s0,sp,16
    80007e60:	ffffe097          	auipc	ra,0xffffe
    80007e64:	6a8080e7          	jalr	1704(ra) # 80006508 <mycpu>
    80007e68:	100027f3          	csrr	a5,sstatus
    80007e6c:	0027f793          	andi	a5,a5,2
    80007e70:	04079663          	bnez	a5,80007ebc <pop_off+0x6c>
    80007e74:	07852783          	lw	a5,120(a0)
    80007e78:	02f05a63          	blez	a5,80007eac <pop_off+0x5c>
    80007e7c:	fff7871b          	addiw	a4,a5,-1
    80007e80:	06e52c23          	sw	a4,120(a0)
    80007e84:	00071c63          	bnez	a4,80007e9c <pop_off+0x4c>
    80007e88:	07c52783          	lw	a5,124(a0)
    80007e8c:	00078863          	beqz	a5,80007e9c <pop_off+0x4c>
    80007e90:	100027f3          	csrr	a5,sstatus
    80007e94:	0027e793          	ori	a5,a5,2
    80007e98:	10079073          	csrw	sstatus,a5
    80007e9c:	00813083          	ld	ra,8(sp)
    80007ea0:	00013403          	ld	s0,0(sp)
    80007ea4:	01010113          	addi	sp,sp,16
    80007ea8:	00008067          	ret
    80007eac:	00002517          	auipc	a0,0x2
    80007eb0:	90450513          	addi	a0,a0,-1788 # 800097b0 <digits+0x48>
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	018080e7          	jalr	24(ra) # 80006ecc <panic>
    80007ebc:	00002517          	auipc	a0,0x2
    80007ec0:	8dc50513          	addi	a0,a0,-1828 # 80009798 <digits+0x30>
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	008080e7          	jalr	8(ra) # 80006ecc <panic>

0000000080007ecc <push_on>:
    80007ecc:	fe010113          	addi	sp,sp,-32
    80007ed0:	00813823          	sd	s0,16(sp)
    80007ed4:	00113c23          	sd	ra,24(sp)
    80007ed8:	00913423          	sd	s1,8(sp)
    80007edc:	02010413          	addi	s0,sp,32
    80007ee0:	100024f3          	csrr	s1,sstatus
    80007ee4:	100027f3          	csrr	a5,sstatus
    80007ee8:	0027e793          	ori	a5,a5,2
    80007eec:	10079073          	csrw	sstatus,a5
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	618080e7          	jalr	1560(ra) # 80006508 <mycpu>
    80007ef8:	07852783          	lw	a5,120(a0)
    80007efc:	02078663          	beqz	a5,80007f28 <push_on+0x5c>
    80007f00:	ffffe097          	auipc	ra,0xffffe
    80007f04:	608080e7          	jalr	1544(ra) # 80006508 <mycpu>
    80007f08:	07852783          	lw	a5,120(a0)
    80007f0c:	01813083          	ld	ra,24(sp)
    80007f10:	01013403          	ld	s0,16(sp)
    80007f14:	0017879b          	addiw	a5,a5,1
    80007f18:	06f52c23          	sw	a5,120(a0)
    80007f1c:	00813483          	ld	s1,8(sp)
    80007f20:	02010113          	addi	sp,sp,32
    80007f24:	00008067          	ret
    80007f28:	0014d493          	srli	s1,s1,0x1
    80007f2c:	ffffe097          	auipc	ra,0xffffe
    80007f30:	5dc080e7          	jalr	1500(ra) # 80006508 <mycpu>
    80007f34:	0014f493          	andi	s1,s1,1
    80007f38:	06952e23          	sw	s1,124(a0)
    80007f3c:	fc5ff06f          	j	80007f00 <push_on+0x34>

0000000080007f40 <pop_on>:
    80007f40:	ff010113          	addi	sp,sp,-16
    80007f44:	00813023          	sd	s0,0(sp)
    80007f48:	00113423          	sd	ra,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	ffffe097          	auipc	ra,0xffffe
    80007f54:	5b8080e7          	jalr	1464(ra) # 80006508 <mycpu>
    80007f58:	100027f3          	csrr	a5,sstatus
    80007f5c:	0027f793          	andi	a5,a5,2
    80007f60:	04078463          	beqz	a5,80007fa8 <pop_on+0x68>
    80007f64:	07852783          	lw	a5,120(a0)
    80007f68:	02f05863          	blez	a5,80007f98 <pop_on+0x58>
    80007f6c:	fff7879b          	addiw	a5,a5,-1
    80007f70:	06f52c23          	sw	a5,120(a0)
    80007f74:	07853783          	ld	a5,120(a0)
    80007f78:	00079863          	bnez	a5,80007f88 <pop_on+0x48>
    80007f7c:	100027f3          	csrr	a5,sstatus
    80007f80:	ffd7f793          	andi	a5,a5,-3
    80007f84:	10079073          	csrw	sstatus,a5
    80007f88:	00813083          	ld	ra,8(sp)
    80007f8c:	00013403          	ld	s0,0(sp)
    80007f90:	01010113          	addi	sp,sp,16
    80007f94:	00008067          	ret
    80007f98:	00002517          	auipc	a0,0x2
    80007f9c:	84050513          	addi	a0,a0,-1984 # 800097d8 <digits+0x70>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	f2c080e7          	jalr	-212(ra) # 80006ecc <panic>
    80007fa8:	00002517          	auipc	a0,0x2
    80007fac:	81050513          	addi	a0,a0,-2032 # 800097b8 <digits+0x50>
    80007fb0:	fffff097          	auipc	ra,0xfffff
    80007fb4:	f1c080e7          	jalr	-228(ra) # 80006ecc <panic>

0000000080007fb8 <__memset>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	1a060e63          	beqz	a2,80008180 <__memset+0x1c8>
    80007fc8:	40a007b3          	neg	a5,a0
    80007fcc:	0077f793          	andi	a5,a5,7
    80007fd0:	00778693          	addi	a3,a5,7
    80007fd4:	00b00813          	li	a6,11
    80007fd8:	0ff5f593          	andi	a1,a1,255
    80007fdc:	fff6071b          	addiw	a4,a2,-1
    80007fe0:	1b06e663          	bltu	a3,a6,8000818c <__memset+0x1d4>
    80007fe4:	1cd76463          	bltu	a4,a3,800081ac <__memset+0x1f4>
    80007fe8:	1a078e63          	beqz	a5,800081a4 <__memset+0x1ec>
    80007fec:	00b50023          	sb	a1,0(a0)
    80007ff0:	00100713          	li	a4,1
    80007ff4:	1ae78463          	beq	a5,a4,8000819c <__memset+0x1e4>
    80007ff8:	00b500a3          	sb	a1,1(a0)
    80007ffc:	00200713          	li	a4,2
    80008000:	1ae78a63          	beq	a5,a4,800081b4 <__memset+0x1fc>
    80008004:	00b50123          	sb	a1,2(a0)
    80008008:	00300713          	li	a4,3
    8000800c:	18e78463          	beq	a5,a4,80008194 <__memset+0x1dc>
    80008010:	00b501a3          	sb	a1,3(a0)
    80008014:	00400713          	li	a4,4
    80008018:	1ae78263          	beq	a5,a4,800081bc <__memset+0x204>
    8000801c:	00b50223          	sb	a1,4(a0)
    80008020:	00500713          	li	a4,5
    80008024:	1ae78063          	beq	a5,a4,800081c4 <__memset+0x20c>
    80008028:	00b502a3          	sb	a1,5(a0)
    8000802c:	00700713          	li	a4,7
    80008030:	18e79e63          	bne	a5,a4,800081cc <__memset+0x214>
    80008034:	00b50323          	sb	a1,6(a0)
    80008038:	00700e93          	li	t4,7
    8000803c:	00859713          	slli	a4,a1,0x8
    80008040:	00e5e733          	or	a4,a1,a4
    80008044:	01059e13          	slli	t3,a1,0x10
    80008048:	01c76e33          	or	t3,a4,t3
    8000804c:	01859313          	slli	t1,a1,0x18
    80008050:	006e6333          	or	t1,t3,t1
    80008054:	02059893          	slli	a7,a1,0x20
    80008058:	40f60e3b          	subw	t3,a2,a5
    8000805c:	011368b3          	or	a7,t1,a7
    80008060:	02859813          	slli	a6,a1,0x28
    80008064:	0108e833          	or	a6,a7,a6
    80008068:	03059693          	slli	a3,a1,0x30
    8000806c:	003e589b          	srliw	a7,t3,0x3
    80008070:	00d866b3          	or	a3,a6,a3
    80008074:	03859713          	slli	a4,a1,0x38
    80008078:	00389813          	slli	a6,a7,0x3
    8000807c:	00f507b3          	add	a5,a0,a5
    80008080:	00e6e733          	or	a4,a3,a4
    80008084:	000e089b          	sext.w	a7,t3
    80008088:	00f806b3          	add	a3,a6,a5
    8000808c:	00e7b023          	sd	a4,0(a5)
    80008090:	00878793          	addi	a5,a5,8
    80008094:	fed79ce3          	bne	a5,a3,8000808c <__memset+0xd4>
    80008098:	ff8e7793          	andi	a5,t3,-8
    8000809c:	0007871b          	sext.w	a4,a5
    800080a0:	01d787bb          	addw	a5,a5,t4
    800080a4:	0ce88e63          	beq	a7,a4,80008180 <__memset+0x1c8>
    800080a8:	00f50733          	add	a4,a0,a5
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0017871b          	addiw	a4,a5,1
    800080b4:	0cc77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0027871b          	addiw	a4,a5,2
    800080c4:	0ac77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0037871b          	addiw	a4,a5,3
    800080d4:	0ac77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0047871b          	addiw	a4,a5,4
    800080e4:	08c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0057871b          	addiw	a4,a5,5
    800080f4:	08c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0067871b          	addiw	a4,a5,6
    80008104:	06c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0077871b          	addiw	a4,a5,7
    80008114:	06c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0087871b          	addiw	a4,a5,8
    80008124:	04c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0097871b          	addiw	a4,a5,9
    80008134:	04c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00a7871b          	addiw	a4,a5,10
    80008144:	02c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00b7871b          	addiw	a4,a5,11
    80008154:	02c77663          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	00c7871b          	addiw	a4,a5,12
    80008164:	00c77e63          	bgeu	a4,a2,80008180 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	00d7879b          	addiw	a5,a5,13
    80008174:	00c7f663          	bgeu	a5,a2,80008180 <__memset+0x1c8>
    80008178:	00f507b3          	add	a5,a0,a5
    8000817c:	00b78023          	sb	a1,0(a5)
    80008180:	00813403          	ld	s0,8(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	00b00693          	li	a3,11
    80008190:	e55ff06f          	j	80007fe4 <__memset+0x2c>
    80008194:	00300e93          	li	t4,3
    80008198:	ea5ff06f          	j	8000803c <__memset+0x84>
    8000819c:	00100e93          	li	t4,1
    800081a0:	e9dff06f          	j	8000803c <__memset+0x84>
    800081a4:	00000e93          	li	t4,0
    800081a8:	e95ff06f          	j	8000803c <__memset+0x84>
    800081ac:	00000793          	li	a5,0
    800081b0:	ef9ff06f          	j	800080a8 <__memset+0xf0>
    800081b4:	00200e93          	li	t4,2
    800081b8:	e85ff06f          	j	8000803c <__memset+0x84>
    800081bc:	00400e93          	li	t4,4
    800081c0:	e7dff06f          	j	8000803c <__memset+0x84>
    800081c4:	00500e93          	li	t4,5
    800081c8:	e75ff06f          	j	8000803c <__memset+0x84>
    800081cc:	00600e93          	li	t4,6
    800081d0:	e6dff06f          	j	8000803c <__memset+0x84>

00000000800081d4 <__memmove>:
    800081d4:	ff010113          	addi	sp,sp,-16
    800081d8:	00813423          	sd	s0,8(sp)
    800081dc:	01010413          	addi	s0,sp,16
    800081e0:	0e060863          	beqz	a2,800082d0 <__memmove+0xfc>
    800081e4:	fff6069b          	addiw	a3,a2,-1
    800081e8:	0006881b          	sext.w	a6,a3
    800081ec:	0ea5e863          	bltu	a1,a0,800082dc <__memmove+0x108>
    800081f0:	00758713          	addi	a4,a1,7
    800081f4:	00a5e7b3          	or	a5,a1,a0
    800081f8:	40a70733          	sub	a4,a4,a0
    800081fc:	0077f793          	andi	a5,a5,7
    80008200:	00f73713          	sltiu	a4,a4,15
    80008204:	00174713          	xori	a4,a4,1
    80008208:	0017b793          	seqz	a5,a5
    8000820c:	00e7f7b3          	and	a5,a5,a4
    80008210:	10078863          	beqz	a5,80008320 <__memmove+0x14c>
    80008214:	00900793          	li	a5,9
    80008218:	1107f463          	bgeu	a5,a6,80008320 <__memmove+0x14c>
    8000821c:	0036581b          	srliw	a6,a2,0x3
    80008220:	fff8081b          	addiw	a6,a6,-1
    80008224:	02081813          	slli	a6,a6,0x20
    80008228:	01d85893          	srli	a7,a6,0x1d
    8000822c:	00858813          	addi	a6,a1,8
    80008230:	00058793          	mv	a5,a1
    80008234:	00050713          	mv	a4,a0
    80008238:	01088833          	add	a6,a7,a6
    8000823c:	0007b883          	ld	a7,0(a5)
    80008240:	00878793          	addi	a5,a5,8
    80008244:	00870713          	addi	a4,a4,8
    80008248:	ff173c23          	sd	a7,-8(a4)
    8000824c:	ff0798e3          	bne	a5,a6,8000823c <__memmove+0x68>
    80008250:	ff867713          	andi	a4,a2,-8
    80008254:	02071793          	slli	a5,a4,0x20
    80008258:	0207d793          	srli	a5,a5,0x20
    8000825c:	00f585b3          	add	a1,a1,a5
    80008260:	40e686bb          	subw	a3,a3,a4
    80008264:	00f507b3          	add	a5,a0,a5
    80008268:	06e60463          	beq	a2,a4,800082d0 <__memmove+0xfc>
    8000826c:	0005c703          	lbu	a4,0(a1)
    80008270:	00e78023          	sb	a4,0(a5)
    80008274:	04068e63          	beqz	a3,800082d0 <__memmove+0xfc>
    80008278:	0015c603          	lbu	a2,1(a1)
    8000827c:	00100713          	li	a4,1
    80008280:	00c780a3          	sb	a2,1(a5)
    80008284:	04e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008288:	0025c603          	lbu	a2,2(a1)
    8000828c:	00200713          	li	a4,2
    80008290:	00c78123          	sb	a2,2(a5)
    80008294:	02e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    80008298:	0035c603          	lbu	a2,3(a1)
    8000829c:	00300713          	li	a4,3
    800082a0:	00c781a3          	sb	a2,3(a5)
    800082a4:	02e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082a8:	0045c603          	lbu	a2,4(a1)
    800082ac:	00400713          	li	a4,4
    800082b0:	00c78223          	sb	a2,4(a5)
    800082b4:	00e68e63          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082b8:	0055c603          	lbu	a2,5(a1)
    800082bc:	00500713          	li	a4,5
    800082c0:	00c782a3          	sb	a2,5(a5)
    800082c4:	00e68663          	beq	a3,a4,800082d0 <__memmove+0xfc>
    800082c8:	0065c703          	lbu	a4,6(a1)
    800082cc:	00e78323          	sb	a4,6(a5)
    800082d0:	00813403          	ld	s0,8(sp)
    800082d4:	01010113          	addi	sp,sp,16
    800082d8:	00008067          	ret
    800082dc:	02061713          	slli	a4,a2,0x20
    800082e0:	02075713          	srli	a4,a4,0x20
    800082e4:	00e587b3          	add	a5,a1,a4
    800082e8:	f0f574e3          	bgeu	a0,a5,800081f0 <__memmove+0x1c>
    800082ec:	02069613          	slli	a2,a3,0x20
    800082f0:	02065613          	srli	a2,a2,0x20
    800082f4:	fff64613          	not	a2,a2
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00c78633          	add	a2,a5,a2
    80008300:	fff7c683          	lbu	a3,-1(a5)
    80008304:	fff78793          	addi	a5,a5,-1
    80008308:	fff70713          	addi	a4,a4,-1
    8000830c:	00d70023          	sb	a3,0(a4)
    80008310:	fec798e3          	bne	a5,a2,80008300 <__memmove+0x12c>
    80008314:	00813403          	ld	s0,8(sp)
    80008318:	01010113          	addi	sp,sp,16
    8000831c:	00008067          	ret
    80008320:	02069713          	slli	a4,a3,0x20
    80008324:	02075713          	srli	a4,a4,0x20
    80008328:	00170713          	addi	a4,a4,1
    8000832c:	00e50733          	add	a4,a0,a4
    80008330:	00050793          	mv	a5,a0
    80008334:	0005c683          	lbu	a3,0(a1)
    80008338:	00178793          	addi	a5,a5,1
    8000833c:	00158593          	addi	a1,a1,1
    80008340:	fed78fa3          	sb	a3,-1(a5)
    80008344:	fee798e3          	bne	a5,a4,80008334 <__memmove+0x160>
    80008348:	f89ff06f          	j	800082d0 <__memmove+0xfc>

000000008000834c <__putc>:
    8000834c:	fe010113          	addi	sp,sp,-32
    80008350:	00813823          	sd	s0,16(sp)
    80008354:	00113c23          	sd	ra,24(sp)
    80008358:	02010413          	addi	s0,sp,32
    8000835c:	00050793          	mv	a5,a0
    80008360:	fef40593          	addi	a1,s0,-17
    80008364:	00100613          	li	a2,1
    80008368:	00000513          	li	a0,0
    8000836c:	fef407a3          	sb	a5,-17(s0)
    80008370:	fffff097          	auipc	ra,0xfffff
    80008374:	b3c080e7          	jalr	-1220(ra) # 80006eac <console_write>
    80008378:	01813083          	ld	ra,24(sp)
    8000837c:	01013403          	ld	s0,16(sp)
    80008380:	02010113          	addi	sp,sp,32
    80008384:	00008067          	ret

0000000080008388 <__getc>:
    80008388:	fe010113          	addi	sp,sp,-32
    8000838c:	00813823          	sd	s0,16(sp)
    80008390:	00113c23          	sd	ra,24(sp)
    80008394:	02010413          	addi	s0,sp,32
    80008398:	fe840593          	addi	a1,s0,-24
    8000839c:	00100613          	li	a2,1
    800083a0:	00000513          	li	a0,0
    800083a4:	fffff097          	auipc	ra,0xfffff
    800083a8:	ae8080e7          	jalr	-1304(ra) # 80006e8c <console_read>
    800083ac:	fe844503          	lbu	a0,-24(s0)
    800083b0:	01813083          	ld	ra,24(sp)
    800083b4:	01013403          	ld	s0,16(sp)
    800083b8:	02010113          	addi	sp,sp,32
    800083bc:	00008067          	ret

00000000800083c0 <console_handler>:
    800083c0:	fe010113          	addi	sp,sp,-32
    800083c4:	00813823          	sd	s0,16(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	00913423          	sd	s1,8(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	14202773          	csrr	a4,scause
    800083d8:	100027f3          	csrr	a5,sstatus
    800083dc:	0027f793          	andi	a5,a5,2
    800083e0:	06079e63          	bnez	a5,8000845c <console_handler+0x9c>
    800083e4:	00074c63          	bltz	a4,800083fc <console_handler+0x3c>
    800083e8:	01813083          	ld	ra,24(sp)
    800083ec:	01013403          	ld	s0,16(sp)
    800083f0:	00813483          	ld	s1,8(sp)
    800083f4:	02010113          	addi	sp,sp,32
    800083f8:	00008067          	ret
    800083fc:	0ff77713          	andi	a4,a4,255
    80008400:	00900793          	li	a5,9
    80008404:	fef712e3          	bne	a4,a5,800083e8 <console_handler+0x28>
    80008408:	ffffe097          	auipc	ra,0xffffe
    8000840c:	6dc080e7          	jalr	1756(ra) # 80006ae4 <plic_claim>
    80008410:	00a00793          	li	a5,10
    80008414:	00050493          	mv	s1,a0
    80008418:	02f50c63          	beq	a0,a5,80008450 <console_handler+0x90>
    8000841c:	fc0506e3          	beqz	a0,800083e8 <console_handler+0x28>
    80008420:	00050593          	mv	a1,a0
    80008424:	00001517          	auipc	a0,0x1
    80008428:	2bc50513          	addi	a0,a0,700 # 800096e0 <_ZL6digits+0xf8>
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	afc080e7          	jalr	-1284(ra) # 80006f28 <__printf>
    80008434:	01013403          	ld	s0,16(sp)
    80008438:	01813083          	ld	ra,24(sp)
    8000843c:	00048513          	mv	a0,s1
    80008440:	00813483          	ld	s1,8(sp)
    80008444:	02010113          	addi	sp,sp,32
    80008448:	ffffe317          	auipc	t1,0xffffe
    8000844c:	6d430067          	jr	1748(t1) # 80006b1c <plic_complete>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	3e0080e7          	jalr	992(ra) # 80007830 <uartintr>
    80008458:	fddff06f          	j	80008434 <console_handler+0x74>
    8000845c:	00001517          	auipc	a0,0x1
    80008460:	38450513          	addi	a0,a0,900 # 800097e0 <digits+0x78>
    80008464:	fffff097          	auipc	ra,0xfffff
    80008468:	a68080e7          	jalr	-1432(ra) # 80006ecc <panic>
	...
