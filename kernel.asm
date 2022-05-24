
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ae013103          	ld	sp,-1312(sp) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4a0060ef          	jal	ra,800064bc <start>

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
    80001080:	341020ef          	jal	ra,80003bc0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	61c080e7          	jalr	1564(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	5ec080e7          	jalr	1516(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    800014c0:	5cc080e7          	jalr	1484(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	630080e7          	jalr	1584(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	ca850513          	addi	a0,a0,-856 # 80009178 <CONSOLE_STATUS+0x168>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	5b0080e7          	jalr	1456(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001538:	554080e7          	jalr	1364(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001558:	534080e7          	jalr	1332(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	598080e7          	jalr	1432(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	c1050513          	addi	a0,a0,-1008 # 80009178 <CONSOLE_STATUS+0x168>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	518080e7          	jalr	1304(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    800015e0:	4ac080e7          	jalr	1196(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	510080e7          	jalr	1296(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
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
    8000162c:	460080e7          	jalr	1120(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001658:	434080e7          	jalr	1076(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	498080e7          	jalr	1176(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	b1050513          	addi	a0,a0,-1264 # 80009178 <CONSOLE_STATUS+0x168>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	418080e7          	jalr	1048(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    800016dc:	3b0080e7          	jalr	944(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    800016f8:	44c90913          	addi	s2,s2,1100 # 8000bb40 <_ZL2s1>
    800016fc:	00093503          	ld	a0,0(s2)
    80001700:	00002097          	auipc	ra,0x2
    80001704:	120080e7          	jalr	288(ra) # 80003820 <_ZN9Semaphore4waitEv>
        __putc('1');
    80001708:	03100513          	li	a0,49
    8000170c:	00007097          	auipc	ra,0x7
    80001710:	e70080e7          	jalr	-400(ra) # 8000857c <__putc>
        __putc('\n');
    80001714:	00a00513          	li	a0,10
    80001718:	00007097          	auipc	ra,0x7
    8000171c:	e64080e7          	jalr	-412(ra) # 8000857c <__putc>
        s2->signal();
    80001720:	00893503          	ld	a0,8(s2)
    80001724:	00002097          	auipc	ra,0x2
    80001728:	180080e7          	jalr	384(ra) # 800038a4 <_ZN9Semaphore6signalEv>
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
    80001768:	324080e7          	jalr	804(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001784:	3c090913          	addi	s2,s2,960 # 8000bb40 <_ZL2s1>
    80001788:	00893503          	ld	a0,8(s2)
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	094080e7          	jalr	148(ra) # 80003820 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001794:	03200513          	li	a0,50
    80001798:	00007097          	auipc	ra,0x7
    8000179c:	de4080e7          	jalr	-540(ra) # 8000857c <__putc>
        __putc('\n');
    800017a0:	00a00513          	li	a0,10
    800017a4:	00007097          	auipc	ra,0x7
    800017a8:	dd8080e7          	jalr	-552(ra) # 8000857c <__putc>
        s3->signal();
    800017ac:	01093503          	ld	a0,16(s2)
    800017b0:	00002097          	auipc	ra,0x2
    800017b4:	0f4080e7          	jalr	244(ra) # 800038a4 <_ZN9Semaphore6signalEv>
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
    800017f4:	298080e7          	jalr	664(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001810:	33490913          	addi	s2,s2,820 # 8000bb40 <_ZL2s1>
    80001814:	01093503          	ld	a0,16(s2)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	008080e7          	jalr	8(ra) # 80003820 <_ZN9Semaphore4waitEv>
        __putc('3');
    80001820:	03300513          	li	a0,51
    80001824:	00007097          	auipc	ra,0x7
    80001828:	d58080e7          	jalr	-680(ra) # 8000857c <__putc>
        __putc('\n');
    8000182c:	00a00513          	li	a0,10
    80001830:	00007097          	auipc	ra,0x7
    80001834:	d4c080e7          	jalr	-692(ra) # 8000857c <__putc>
        s1->signal();
    80001838:	00093503          	ld	a0,0(s2)
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	068080e7          	jalr	104(ra) # 800038a4 <_ZN9Semaphore6signalEv>
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
    8000187c:	da4080e7          	jalr	-604(ra) # 8000361c <_Znwm>
    80001880:	00050493          	mv	s1,a0
    80001884:	00000613          	li	a2,0
    80001888:	00000597          	auipc	a1,0x0
    8000188c:	bf858593          	addi	a1,a1,-1032 # 80001480 <_Z15thread1FunctionPv>
    80001890:	00002097          	auipc	ra,0x2
    80001894:	f28080e7          	jalr	-216(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001898:	00048513          	mv	a0,s1
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	e50080e7          	jalr	-432(ra) # 800036ec <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    800018a4:	02000513          	li	a0,32
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	d74080e7          	jalr	-652(ra) # 8000361c <_Znwm>
    800018b0:	00050913          	mv	s2,a0
    800018b4:	00000613          	li	a2,0
    800018b8:	00000597          	auipc	a1,0x0
    800018bc:	c6058593          	addi	a1,a1,-928 # 80001518 <_Z15thread2FunctionPv>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	ef8080e7          	jalr	-264(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00002097          	auipc	ra,0x2
    800018d0:	e20080e7          	jalr	-480(ra) # 800036ec <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	12c080e7          	jalr	300(ra) # 80003a00 <_ZN5Riscv16enableInterruptsEv>
    800018dc:	01c0006f          	j	800018f8 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800018e0:	00007517          	auipc	a0,0x7
    800018e4:	7b850513          	addi	a0,a0,1976 # 80009098 <CONSOLE_STATUS+0x88>
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	1a0080e7          	jalr	416(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001924:	168080e7          	jalr	360(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001928:	00002097          	auipc	ra,0x2
    8000192c:	0f8080e7          	jalr	248(ra) # 80003a20 <_ZN5Riscv17disableInterruptsEv>
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
    80001954:	cf4080e7          	jalr	-780(ra) # 80003644 <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	0000b097          	auipc	ra,0xb
    80001960:	37c080e7          	jalr	892(ra) # 8000ccd8 <_Unwind_Resume>
    80001964:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	00090513          	mv	a0,s2
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	cd8080e7          	jalr	-808(ra) # 80003644 <_ZdlPv>
    80001974:	00048513          	mv	a0,s1
    80001978:	0000b097          	auipc	ra,0xb
    8000197c:	360080e7          	jalr	864(ra) # 8000ccd8 <_Unwind_Resume>

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
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	c80080e7          	jalr	-896(ra) # 8000361c <_Znwm>
    800019a4:	00050493          	mv	s1,a0
    800019a8:	00000613          	li	a2,0
    800019ac:	00000597          	auipc	a1,0x0
    800019b0:	aa858593          	addi	a1,a1,-1368 # 80001454 <_Z4idlePv>
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	e04080e7          	jalr	-508(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00002097          	auipc	ra,0x2
    800019c4:	d2c080e7          	jalr	-724(ra) # 800036ec <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    800019c8:	02000513          	li	a0,32
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	c50080e7          	jalr	-944(ra) # 8000361c <_Znwm>
    800019d4:	00050913          	mv	s2,a0
    800019d8:	00000613          	li	a2,0
    800019dc:	00000597          	auipc	a1,0x0
    800019e0:	aa458593          	addi	a1,a1,-1372 # 80001480 <_Z15thread1FunctionPv>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	dd4080e7          	jalr	-556(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    800019ec:	00090513          	mv	a0,s2
    800019f0:	00002097          	auipc	ra,0x2
    800019f4:	cfc080e7          	jalr	-772(ra) # 800036ec <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    800019f8:	02000513          	li	a0,32
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	c20080e7          	jalr	-992(ra) # 8000361c <_Znwm>
    80001a04:	00050913          	mv	s2,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	c0058593          	addi	a1,a1,-1024 # 8000160c <_Z20thread2FunctionTest2Pv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	da4080e7          	jalr	-604(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	ccc080e7          	jalr	-820(ra) # 800036ec <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	fd8080e7          	jalr	-40(ra) # 80003a00 <_ZN5Riscv16enableInterruptsEv>
    while(((PCB*)idleThread->myHandle)->getState() != PCB::FINISHED);
    80001a30:	0084b783          	ld	a5,8(s1)
    80001a34:	0387a703          	lw	a4,56(a5)
    80001a38:	00300793          	li	a5,3
    80001a3c:	fef71ae3          	bne	a4,a5,80001a30 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	66850513          	addi	a0,a0,1640 # 800090a8 <CONSOLE_STATUS+0x98>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	040080e7          	jalr	64(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	fd0080e7          	jalr	-48(ra) # 80003a20 <_ZN5Riscv17disableInterruptsEv>
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
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	bcc080e7          	jalr	-1076(ra) # 80003644 <_ZdlPv>
    80001a80:	00090513          	mv	a0,s2
    80001a84:	0000b097          	auipc	ra,0xb
    80001a88:	254080e7          	jalr	596(ra) # 8000ccd8 <_Unwind_Resume>
    80001a8c:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00002097          	auipc	ra,0x2
    80001a98:	bb0080e7          	jalr	-1104(ra) # 80003644 <_ZdlPv>
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	0000b097          	auipc	ra,0xb
    80001aa4:	238080e7          	jalr	568(ra) # 8000ccd8 <_Unwind_Resume>
    80001aa8:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001aac:	00090513          	mv	a0,s2
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	b94080e7          	jalr	-1132(ra) # 80003644 <_ZdlPv>
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	0000b097          	auipc	ra,0xb
    80001ac0:	21c080e7          	jalr	540(ra) # 8000ccd8 <_Unwind_Resume>

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
    80001ae4:	fa8080e7          	jalr	-88(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001b28:	f64080e7          	jalr	-156(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001b7c:	f10080e7          	jalr	-240(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001bc4:	ec8080e7          	jalr	-312(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001c08:	e84080e7          	jalr	-380(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
            return;
    80001c0c:	f21ff06f          	j	80001b2c <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	4b850513          	addi	a0,a0,1208 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	e70080e7          	jalr	-400(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001c40:	e4c080e7          	jalr	-436(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c44:	0000a797          	auipc	a5,0xa
    80001c48:	eac7b783          	ld	a5,-340(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c4c:	0007b503          	ld	a0,0(a5)
    80001c50:	0000a797          	auipc	a5,0xa
    80001c54:	e787b783          	ld	a5,-392(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001c7c:	e10080e7          	jalr	-496(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret
        Riscv::printString("OK\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	43850513          	addi	a0,a0,1080 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c98:	00002097          	auipc	ra,0x2
    80001c9c:	df0080e7          	jalr	-528(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001ccc:	dc0080e7          	jalr	-576(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001d18:	de4080e7          	jalr	-540(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001d1c:	00007517          	auipc	a0,0x7
    80001d20:	45c50513          	addi	a0,a0,1116 # 80009178 <CONSOLE_STATUS+0x168>
    80001d24:	00002097          	auipc	ra,0x2
    80001d28:	d64080e7          	jalr	-668(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001d2c:	00291793          	slli	a5,s2,0x2
    80001d30:	01278933          	add	s2,a5,s2
    80001d34:	00191913          	slli	s2,s2,0x1
    80001d38:	03390863          	beq	s2,s3,80001d68 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001d3c:	00007517          	auipc	a0,0x7
    80001d40:	38450513          	addi	a0,a0,900 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	d44080e7          	jalr	-700(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001d74:	d18080e7          	jalr	-744(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001d98:	cf4080e7          	jalr	-780(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001dc4:	cc8080e7          	jalr	-824(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        Riscv::printString("OK\n");
    80001dd8:	00007517          	auipc	a0,0x7
    80001ddc:	2f050513          	addi	a0,a0,752 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001de0:	00002097          	auipc	ra,0x2
    80001de4:	ca8080e7          	jalr	-856(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001e0c:	00002097          	auipc	ra,0x2
    80001e10:	c7c080e7          	jalr	-900(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
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
    80001f20:	00002097          	auipc	ra,0x2
    80001f24:	b68080e7          	jalr	-1176(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    80001f28:	f21ff06f          	j	80001e48 <_Z13stressTestingv+0x5c>

0000000080001f2c <_Z3foov>:
{
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00913423          	sd	s1,8(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    s11->wait();
    80001f40:	0000a497          	auipc	s1,0xa
    80001f44:	c0048493          	addi	s1,s1,-1024 # 8000bb40 <_ZL2s1>
    80001f48:	0184b503          	ld	a0,24(s1)
    80001f4c:	00002097          	auipc	ra,0x2
    80001f50:	8d4080e7          	jalr	-1836(ra) # 80003820 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo exec\n");
    80001f54:	00007517          	auipc	a0,0x7
    80001f58:	1c450513          	addi	a0,a0,452 # 80009118 <CONSOLE_STATUS+0x108>
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	b2c080e7          	jalr	-1236(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    s22->signal();
    80001f64:	0204b503          	ld	a0,32(s1)
    80001f68:	00002097          	auipc	ra,0x2
    80001f6c:	93c080e7          	jalr	-1732(ra) # 800038a4 <_ZN9Semaphore6signalEv>
}
    80001f70:	01813083          	ld	ra,24(sp)
    80001f74:	01013403          	ld	s0,16(sp)
    80001f78:	00813483          	ld	s1,8(sp)
    80001f7c:	02010113          	addi	sp,sp,32
    80001f80:	00008067          	ret

0000000080001f84 <_Z2f1Pv>:
{
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	01213023          	sd	s2,0(sp)
    80001f98:	02010413          	addi	s0,sp,32
    Riscv::printString("f1 started\n");
    80001f9c:	00007517          	auipc	a0,0x7
    80001fa0:	18c50513          	addi	a0,a0,396 # 80009128 <CONSOLE_STATUS+0x118>
    80001fa4:	00002097          	auipc	ra,0x2
    80001fa8:	ae4080e7          	jalr	-1308(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 10;br++)
    80001fac:	00000913          	li	s2,0
    80001fb0:	0100006f          	j	80001fc0 <_Z2f1Pv+0x3c>
        if(br == 5)
    80001fb4:	00500793          	li	a5,5
    80001fb8:	02f90663          	beq	s2,a5,80001fe4 <_Z2f1Pv+0x60>
    for(int br = 0;br < 10;br++)
    80001fbc:	0019091b          	addiw	s2,s2,1
    80001fc0:	00900793          	li	a5,9
    80001fc4:	0327c663          	blt	a5,s2,80001ff0 <_Z2f1Pv+0x6c>
        for (int i = 0; i < 5; i++)
    80001fc8:	00000493          	li	s1,0
    80001fcc:	00400793          	li	a5,4
    80001fd0:	fe97c2e3          	blt	a5,s1,80001fb4 <_Z2f1Pv+0x30>
            foo();
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	f58080e7          	jalr	-168(ra) # 80001f2c <_Z3foov>
        for (int i = 0; i < 5; i++)
    80001fdc:	0014849b          	addiw	s1,s1,1
    80001fe0:	fedff06f          	j	80001fcc <_Z2f1Pv+0x48>
            thread_dispatch();
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	340080e7          	jalr	832(ra) # 80001324 <thread_dispatch>
    80001fec:	fd1ff06f          	j	80001fbc <_Z2f1Pv+0x38>
}
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	00813483          	ld	s1,8(sp)
    80001ffc:	00013903          	ld	s2,0(sp)
    80002000:	02010113          	addi	sp,sp,32
    80002004:	00008067          	ret

0000000080002008 <_Z4foo2v>:
{
    80002008:	fe010113          	addi	sp,sp,-32
    8000200c:	00113c23          	sd	ra,24(sp)
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	02010413          	addi	s0,sp,32
    s22->wait();
    8000201c:	0000a497          	auipc	s1,0xa
    80002020:	b2448493          	addi	s1,s1,-1244 # 8000bb40 <_ZL2s1>
    80002024:	0204b503          	ld	a0,32(s1)
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	7f8080e7          	jalr	2040(ra) # 80003820 <_ZN9Semaphore4waitEv>
    Riscv::printString("foo2 exec\n");
    80002030:	00007517          	auipc	a0,0x7
    80002034:	10850513          	addi	a0,a0,264 # 80009138 <CONSOLE_STATUS+0x128>
    80002038:	00002097          	auipc	ra,0x2
    8000203c:	a50080e7          	jalr	-1456(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    s11->signal();
    80002040:	0184b503          	ld	a0,24(s1)
    80002044:	00002097          	auipc	ra,0x2
    80002048:	860080e7          	jalr	-1952(ra) # 800038a4 <_ZN9Semaphore6signalEv>
}
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	02010113          	addi	sp,sp,32
    8000205c:	00008067          	ret

0000000080002060 <_Z2f2Pv>:
{
    80002060:	fe010113          	addi	sp,sp,-32
    80002064:	00113c23          	sd	ra,24(sp)
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00913423          	sd	s1,8(sp)
    80002070:	01213023          	sd	s2,0(sp)
    80002074:	02010413          	addi	s0,sp,32
    Riscv::printString("f2 started\n");
    80002078:	00007517          	auipc	a0,0x7
    8000207c:	0d050513          	addi	a0,a0,208 # 80009148 <CONSOLE_STATUS+0x138>
    80002080:	00002097          	auipc	ra,0x2
    80002084:	a08080e7          	jalr	-1528(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    for(int br = 0;br < 1;br++)
    80002088:	00000913          	li	s2,0
    8000208c:	03204e63          	bgtz	s2,800020c8 <_Z2f2Pv+0x68>
        for(int j = 0; j < 10;j++)
    80002090:	00000493          	li	s1,0
    80002094:	00900793          	li	a5,9
    80002098:	0097ca63          	blt	a5,s1,800020ac <_Z2f2Pv+0x4c>
            foo2();
    8000209c:	00000097          	auipc	ra,0x0
    800020a0:	f6c080e7          	jalr	-148(ra) # 80002008 <_Z4foo2v>
        for(int j = 0; j < 10;j++)
    800020a4:	0014849b          	addiw	s1,s1,1
    800020a8:	fedff06f          	j	80002094 <_Z2f2Pv+0x34>
        if(br == 6)
    800020ac:	00600793          	li	a5,6
    800020b0:	00f90663          	beq	s2,a5,800020bc <_Z2f2Pv+0x5c>
    for(int br = 0;br < 1;br++)
    800020b4:	0019091b          	addiw	s2,s2,1
    800020b8:	fd5ff06f          	j	8000208c <_Z2f2Pv+0x2c>
            thread_dispatch();
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	268080e7          	jalr	616(ra) # 80001324 <thread_dispatch>
    800020c4:	ff1ff06f          	j	800020b4 <_Z2f2Pv+0x54>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	00013903          	ld	s2,0(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret

00000000800020e0 <_Z8semTest1v>:
{
    800020e0:	fd010113          	addi	sp,sp,-48
    800020e4:	02113423          	sd	ra,40(sp)
    800020e8:	02813023          	sd	s0,32(sp)
    800020ec:	00913c23          	sd	s1,24(sp)
    800020f0:	01213823          	sd	s2,16(sp)
    800020f4:	01313423          	sd	s3,8(sp)
    800020f8:	03010413          	addi	s0,sp,48
    mutex = new Semaphore(1);
    800020fc:	01000513          	li	a0,16
    80002100:	00001097          	auipc	ra,0x1
    80002104:	51c080e7          	jalr	1308(ra) # 8000361c <_Znwm>
    80002108:	00050913          	mv	s2,a0
    8000210c:	00100593          	li	a1,1
    80002110:	00001097          	auipc	ra,0x1
    80002114:	748080e7          	jalr	1864(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    s11 = new Semaphore(1);
    80002118:	01000513          	li	a0,16
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	500080e7          	jalr	1280(ra) # 8000361c <_Znwm>
    80002124:	00050493          	mv	s1,a0
    80002128:	00100593          	li	a1,1
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	72c080e7          	jalr	1836(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80002134:	0000a797          	auipc	a5,0xa
    80002138:	a297b223          	sd	s1,-1500(a5) # 8000bb58 <_ZL3s11>
    s22 = new Semaphore(0);
    8000213c:	01000513          	li	a0,16
    80002140:	00001097          	auipc	ra,0x1
    80002144:	4dc080e7          	jalr	1244(ra) # 8000361c <_Znwm>
    80002148:	00050493          	mv	s1,a0
    8000214c:	00000593          	li	a1,0
    80002150:	00001097          	auipc	ra,0x1
    80002154:	708080e7          	jalr	1800(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80002158:	0000a797          	auipc	a5,0xa
    8000215c:	a097b423          	sd	s1,-1528(a5) # 8000bb60 <_ZL3s22>
    Thread* t1 = new Thread(&f1, 0);
    80002160:	02000513          	li	a0,32
    80002164:	00001097          	auipc	ra,0x1
    80002168:	4b8080e7          	jalr	1208(ra) # 8000361c <_Znwm>
    8000216c:	00050993          	mv	s3,a0
    80002170:	00000613          	li	a2,0
    80002174:	00000597          	auipc	a1,0x0
    80002178:	e1058593          	addi	a1,a1,-496 # 80001f84 <_Z2f1Pv>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	63c080e7          	jalr	1596(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002184:	02000513          	li	a0,32
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	494080e7          	jalr	1172(ra) # 8000361c <_Znwm>
    80002190:	00050913          	mv	s2,a0
    80002194:	00000613          	li	a2,0
    80002198:	00000597          	auipc	a1,0x0
    8000219c:	ec858593          	addi	a1,a1,-312 # 80002060 <_Z2f2Pv>
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	618080e7          	jalr	1560(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800021a8:	00090513          	mv	a0,s2
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	540080e7          	jalr	1344(ra) # 800036ec <_ZN6Thread5startEv>
    t1->start();
    800021b4:	00098513          	mv	a0,s3
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	534080e7          	jalr	1332(ra) # 800036ec <_ZN6Thread5startEv>
    thread_dispatch();
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	164080e7          	jalr	356(ra) # 80001324 <thread_dispatch>
        thread_dispatch();
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	15c080e7          	jalr	348(ra) # 80001324 <thread_dispatch>
    while(true)
    800021d0:	ff9ff06f          	j	800021c8 <_Z8semTest1v+0xe8>
    800021d4:	00050493          	mv	s1,a0
    mutex = new Semaphore(1);
    800021d8:	00090513          	mv	a0,s2
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	468080e7          	jalr	1128(ra) # 80003644 <_ZdlPv>
    800021e4:	00048513          	mv	a0,s1
    800021e8:	0000b097          	auipc	ra,0xb
    800021ec:	af0080e7          	jalr	-1296(ra) # 8000ccd8 <_Unwind_Resume>
    800021f0:	00050913          	mv	s2,a0
    s11 = new Semaphore(1);
    800021f4:	00048513          	mv	a0,s1
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	44c080e7          	jalr	1100(ra) # 80003644 <_ZdlPv>
    80002200:	00090513          	mv	a0,s2
    80002204:	0000b097          	auipc	ra,0xb
    80002208:	ad4080e7          	jalr	-1324(ra) # 8000ccd8 <_Unwind_Resume>
    8000220c:	00050913          	mv	s2,a0
    s22 = new Semaphore(0);
    80002210:	00048513          	mv	a0,s1
    80002214:	00001097          	auipc	ra,0x1
    80002218:	430080e7          	jalr	1072(ra) # 80003644 <_ZdlPv>
    8000221c:	00090513          	mv	a0,s2
    80002220:	0000b097          	auipc	ra,0xb
    80002224:	ab8080e7          	jalr	-1352(ra) # 8000ccd8 <_Unwind_Resume>
    80002228:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    8000222c:	00098513          	mv	a0,s3
    80002230:	00001097          	auipc	ra,0x1
    80002234:	414080e7          	jalr	1044(ra) # 80003644 <_ZdlPv>
    80002238:	00048513          	mv	a0,s1
    8000223c:	0000b097          	auipc	ra,0xb
    80002240:	a9c080e7          	jalr	-1380(ra) # 8000ccd8 <_Unwind_Resume>
    80002244:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2, 0);
    80002248:	00090513          	mv	a0,s2
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	3f8080e7          	jalr	1016(ra) # 80003644 <_ZdlPv>
    80002254:	00048513          	mv	a0,s1
    80002258:	0000b097          	auipc	ra,0xb
    8000225c:	a80080e7          	jalr	-1408(ra) # 8000ccd8 <_Unwind_Resume>

0000000080002260 <_Z8semTest2v>:
{
    80002260:	fd010113          	addi	sp,sp,-48
    80002264:	02113423          	sd	ra,40(sp)
    80002268:	02813023          	sd	s0,32(sp)
    8000226c:	00913c23          	sd	s1,24(sp)
    80002270:	01213823          	sd	s2,16(sp)
    80002274:	01313423          	sd	s3,8(sp)
    80002278:	03010413          	addi	s0,sp,48
    s1 = new Semaphore(1);
    8000227c:	01000513          	li	a0,16
    80002280:	00001097          	auipc	ra,0x1
    80002284:	39c080e7          	jalr	924(ra) # 8000361c <_Znwm>
    80002288:	00050493          	mv	s1,a0
    8000228c:	00100593          	li	a1,1
    80002290:	00001097          	auipc	ra,0x1
    80002294:	5c8080e7          	jalr	1480(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80002298:	0000a797          	auipc	a5,0xa
    8000229c:	8a97b423          	sd	s1,-1880(a5) # 8000bb40 <_ZL2s1>
    s2 = new Semaphore(0);
    800022a0:	01000513          	li	a0,16
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	378080e7          	jalr	888(ra) # 8000361c <_Znwm>
    800022ac:	00050493          	mv	s1,a0
    800022b0:	00000593          	li	a1,0
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	5a4080e7          	jalr	1444(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    800022bc:	0000a797          	auipc	a5,0xa
    800022c0:	8897b623          	sd	s1,-1908(a5) # 8000bb48 <_ZL2s2>
    s3 = new Semaphore(0);
    800022c4:	01000513          	li	a0,16
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	354080e7          	jalr	852(ra) # 8000361c <_Znwm>
    800022d0:	00050493          	mv	s1,a0
    800022d4:	00000593          	li	a1,0
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	580080e7          	jalr	1408(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    800022e0:	0000a797          	auipc	a5,0xa
    800022e4:	8697b823          	sd	s1,-1936(a5) # 8000bb50 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    800022e8:	02000513          	li	a0,32
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	330080e7          	jalr	816(ra) # 8000361c <_Znwm>
    800022f4:	00050993          	mv	s3,a0
    800022f8:	00000613          	li	a2,0
    800022fc:	fffff597          	auipc	a1,0xfffff
    80002300:	3bc58593          	addi	a1,a1,956 # 800016b8 <_Z4f1_2Pv>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	4b4080e7          	jalr	1204(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    8000230c:	02000513          	li	a0,32
    80002310:	00001097          	auipc	ra,0x1
    80002314:	30c080e7          	jalr	780(ra) # 8000361c <_Znwm>
    80002318:	00050913          	mv	s2,a0
    8000231c:	00000613          	li	a2,0
    80002320:	fffff597          	auipc	a1,0xfffff
    80002324:	42458593          	addi	a1,a1,1060 # 80001744 <_Z4f2_2Pv>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	490080e7          	jalr	1168(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    80002330:	02000513          	li	a0,32
    80002334:	00001097          	auipc	ra,0x1
    80002338:	2e8080e7          	jalr	744(ra) # 8000361c <_Znwm>
    8000233c:	00050493          	mv	s1,a0
    80002340:	00000613          	li	a2,0
    80002344:	fffff597          	auipc	a1,0xfffff
    80002348:	48c58593          	addi	a1,a1,1164 # 800017d0 <_Z4f3_2Pv>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	46c080e7          	jalr	1132(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    80002354:	00048513          	mv	a0,s1
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	394080e7          	jalr	916(ra) # 800036ec <_ZN6Thread5startEv>
    t2->start();
    80002360:	00090513          	mv	a0,s2
    80002364:	00001097          	auipc	ra,0x1
    80002368:	388080e7          	jalr	904(ra) # 800036ec <_ZN6Thread5startEv>
    t1->start();
    8000236c:	00098513          	mv	a0,s3
    80002370:	00001097          	auipc	ra,0x1
    80002374:	37c080e7          	jalr	892(ra) # 800036ec <_ZN6Thread5startEv>
    int y = 0;
    80002378:	00000493          	li	s1,0
        y++;
    8000237c:	0014849b          	addiw	s1,s1,1
        thread_dispatch();
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	fa4080e7          	jalr	-92(ra) # 80001324 <thread_dispatch>
        if(y == 200000)
    80002388:	000317b7          	lui	a5,0x31
    8000238c:	d4078793          	addi	a5,a5,-704 # 30d40 <_entry-0x7ffcf2c0>
    80002390:	fef496e3          	bne	s1,a5,8000237c <_Z8semTest2v+0x11c>
}
    80002394:	02813083          	ld	ra,40(sp)
    80002398:	02013403          	ld	s0,32(sp)
    8000239c:	01813483          	ld	s1,24(sp)
    800023a0:	01013903          	ld	s2,16(sp)
    800023a4:	00813983          	ld	s3,8(sp)
    800023a8:	03010113          	addi	sp,sp,48
    800023ac:	00008067          	ret
    800023b0:	00050913          	mv	s2,a0
    s1 = new Semaphore(1);
    800023b4:	00048513          	mv	a0,s1
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	28c080e7          	jalr	652(ra) # 80003644 <_ZdlPv>
    800023c0:	00090513          	mv	a0,s2
    800023c4:	0000b097          	auipc	ra,0xb
    800023c8:	914080e7          	jalr	-1772(ra) # 8000ccd8 <_Unwind_Resume>
    800023cc:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    800023d0:	00048513          	mv	a0,s1
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	270080e7          	jalr	624(ra) # 80003644 <_ZdlPv>
    800023dc:	00090513          	mv	a0,s2
    800023e0:	0000b097          	auipc	ra,0xb
    800023e4:	8f8080e7          	jalr	-1800(ra) # 8000ccd8 <_Unwind_Resume>
    800023e8:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    800023ec:	00048513          	mv	a0,s1
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	254080e7          	jalr	596(ra) # 80003644 <_ZdlPv>
    800023f8:	00090513          	mv	a0,s2
    800023fc:	0000b097          	auipc	ra,0xb
    80002400:	8dc080e7          	jalr	-1828(ra) # 8000ccd8 <_Unwind_Resume>
    80002404:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    80002408:	00098513          	mv	a0,s3
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	238080e7          	jalr	568(ra) # 80003644 <_ZdlPv>
    80002414:	00048513          	mv	a0,s1
    80002418:	0000b097          	auipc	ra,0xb
    8000241c:	8c0080e7          	jalr	-1856(ra) # 8000ccd8 <_Unwind_Resume>
    80002420:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    80002424:	00090513          	mv	a0,s2
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	21c080e7          	jalr	540(ra) # 80003644 <_ZdlPv>
    80002430:	00048513          	mv	a0,s1
    80002434:	0000b097          	auipc	ra,0xb
    80002438:	8a4080e7          	jalr	-1884(ra) # 8000ccd8 <_Unwind_Resume>
    8000243c:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    80002440:	00048513          	mv	a0,s1
    80002444:	00001097          	auipc	ra,0x1
    80002448:	200080e7          	jalr	512(ra) # 80003644 <_ZdlPv>
    8000244c:	00090513          	mv	a0,s2
    80002450:	0000b097          	auipc	ra,0xb
    80002454:	888080e7          	jalr	-1912(ra) # 8000ccd8 <_Unwind_Resume>

0000000080002458 <_Z14semaphoreTestsv>:
{
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    semTest1();
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	c78080e7          	jalr	-904(ra) # 800020e0 <_Z8semTest1v>

0000000080002470 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80002470:	fe010113          	addi	sp,sp,-32
    80002474:	00113c23          	sd	ra,24(sp)
    80002478:	00813823          	sd	s0,16(sp)
    8000247c:	00913423          	sd	s1,8(sp)
    80002480:	02010413          	addi	s0,sp,32
    80002484:	00050493          	mv	s1,a0
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	488080e7          	jalr	1160(ra) # 80003910 <_ZN14PeriodicThreadC1Em>
    80002490:	00009797          	auipc	a5,0x9
    80002494:	52078793          	addi	a5,a5,1312 # 8000b9b0 <_ZTV12TestPeriodic+0x10>
    80002498:	00f4b023          	sd	a5,0(s1)
}
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	02010113          	addi	sp,sp,32
    800024ac:	00008067          	ret

00000000800024b0 <_Z11threadTest3v>:
{
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00113c23          	sd	ra,24(sp)
    800024b8:	00813823          	sd	s0,16(sp)
    800024bc:	00913423          	sd	s1,8(sp)
    800024c0:	01213023          	sd	s2,0(sp)
    800024c4:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    800024c8:	02800513          	li	a0,40
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	150080e7          	jalr	336(ra) # 8000361c <_Znwm>
    800024d4:	00050913          	mv	s2,a0
    800024d8:	03200593          	li	a1,50
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	f94080e7          	jalr	-108(ra) # 80002470 <_ZN12TestPeriodicC1Em>
    t->start();
    800024e4:	00090513          	mv	a0,s2
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	204080e7          	jalr	516(ra) # 800036ec <_ZN6Thread5startEv>
    while(true)
    800024f0:	0000006f          	j	800024f0 <_Z11threadTest3v+0x40>
    800024f4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    800024f8:	00090513          	mv	a0,s2
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	148080e7          	jalr	328(ra) # 80003644 <_ZdlPv>
    80002504:	00048513          	mv	a0,s1
    80002508:	0000a097          	auipc	ra,0xa
    8000250c:	7d0080e7          	jalr	2000(ra) # 8000ccd8 <_Unwind_Resume>

0000000080002510 <_Z11threadTestsv>:
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    threadTest3();
    80002520:	00000097          	auipc	ra,0x0
    80002524:	f90080e7          	jalr	-112(ra) # 800024b0 <_Z11threadTest3v>

0000000080002528 <_Z10mallocTestv>:

void mallocTest(){
    80002528:	fc010113          	addi	sp,sp,-64
    8000252c:	02113c23          	sd	ra,56(sp)
    80002530:	02813823          	sd	s0,48(sp)
    80002534:	02913423          	sd	s1,40(sp)
    80002538:	03213023          	sd	s2,32(sp)
    8000253c:	01313c23          	sd	s3,24(sp)
    80002540:	01413823          	sd	s4,16(sp)
    80002544:	01513423          	sd	s5,8(sp)
    80002548:	01613023          	sd	s6,0(sp)
    8000254c:	04010413          	addi	s0,sp,64
    Riscv::printString("Testing a few mallocs and frees\n\n");
    80002550:	00007517          	auipc	a0,0x7
    80002554:	c0850513          	addi	a0,a0,-1016 # 80009158 <CONSOLE_STATUS+0x148>
    80002558:	00001097          	auipc	ra,0x1
    8000255c:	530080e7          	jalr	1328(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>

    object* o = new object;
    80002560:	02c00513          	li	a0,44
    80002564:	00001097          	auipc	ra,0x1
    80002568:	0b8080e7          	jalr	184(ra) # 8000361c <_Znwm>
    8000256c:	00050493          	mv	s1,a0
    o->a = 3;
    80002570:	00300793          	li	a5,3
    80002574:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002578:	00a00513          	li	a0,10
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	ccc080e7          	jalr	-820(ra) # 80001248 <mem_alloc>
    80002584:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002588:	06400513          	li	a0,100
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	cbc080e7          	jalr	-836(ra) # 80001248 <mem_alloc>
    80002594:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002598:	3e800513          	li	a0,1000
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	cac080e7          	jalr	-852(ra) # 80001248 <mem_alloc>
    800025a4:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    800025a8:	00002537          	lui	a0,0x2
    800025ac:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	c98080e7          	jalr	-872(ra) # 80001248 <mem_alloc>
    800025b8:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    800025bc:	00100513          	li	a0,1
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	c88080e7          	jalr	-888(ra) # 80001248 <mem_alloc>

    if(!m1 || !m2 || !m3 || !m4 || !m5){
    800025c8:	06090c63          	beqz	s2,80002640 <_Z10mallocTestv+0x118>
    800025cc:	00050b13          	mv	s6,a0
    800025d0:	06098863          	beqz	s3,80002640 <_Z10mallocTestv+0x118>
    800025d4:	060a0663          	beqz	s4,80002640 <_Z10mallocTestv+0x118>
    800025d8:	060a8463          	beqz	s5,80002640 <_Z10mallocTestv+0x118>
    800025dc:	06050263          	beqz	a0,80002640 <_Z10mallocTestv+0x118>
        Riscv::printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    800025e0:	00090513          	mv	a0,s2
    800025e4:	00001097          	auipc	ra,0x1
    800025e8:	060080e7          	jalr	96(ra) # 80003644 <_ZdlPv>
    delete (uint64*)m3;
    800025ec:	000a0513          	mv	a0,s4
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	054080e7          	jalr	84(ra) # 80003644 <_ZdlPv>
    delete (uint64*)m4;
    800025f8:	000a8513          	mv	a0,s5
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	048080e7          	jalr	72(ra) # 80003644 <_ZdlPv>
    delete (uint64*)m2;
    80002604:	00098513          	mv	a0,s3
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	03c080e7          	jalr	60(ra) # 80003644 <_ZdlPv>
    delete (uint64*)m5;
    80002610:	000b0513          	mv	a0,s6
    80002614:	00001097          	auipc	ra,0x1
    80002618:	030080e7          	jalr	48(ra) # 80003644 <_ZdlPv>
    delete o;
    8000261c:	00048863          	beqz	s1,8000262c <_Z10mallocTestv+0x104>
    80002620:	00048513          	mv	a0,s1
    80002624:	00001097          	auipc	ra,0x1
    80002628:	020080e7          	jalr	32(ra) # 80003644 <_ZdlPv>

    Riscv::printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    8000262c:	00007517          	auipc	a0,0x7
    80002630:	b5450513          	addi	a0,a0,-1196 # 80009180 <CONSOLE_STATUS+0x170>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	454080e7          	jalr	1108(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    8000263c:	0140006f          	j	80002650 <_Z10mallocTestv+0x128>
        Riscv::printString("not OK\n");
    80002640:	00007517          	auipc	a0,0x7
    80002644:	a8050513          	addi	a0,a0,-1408 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	440080e7          	jalr	1088(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
}
    80002650:	03813083          	ld	ra,56(sp)
    80002654:	03013403          	ld	s0,48(sp)
    80002658:	02813483          	ld	s1,40(sp)
    8000265c:	02013903          	ld	s2,32(sp)
    80002660:	01813983          	ld	s3,24(sp)
    80002664:	01013a03          	ld	s4,16(sp)
    80002668:	00813a83          	ld	s5,8(sp)
    8000266c:	00013b03          	ld	s6,0(sp)
    80002670:	04010113          	addi	sp,sp,64
    80002674:	00008067          	ret

0000000080002678 <_Z16mallocEverythingv>:

void mallocEverything()
{
    80002678:	fe010113          	addi	sp,sp,-32
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	02010413          	addi	s0,sp,32
    Riscv::printString("Testing allocating whole address space\n\n");
    8000268c:	00007517          	auipc	a0,0x7
    80002690:	b2450513          	addi	a0,a0,-1244 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002694:	00001097          	auipc	ra,0x1
    80002698:	3f4080e7          	jalr	1012(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>

    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    8000269c:	00009797          	auipc	a5,0x9
    800026a0:	42c7b783          	ld	a5,1068(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026a4:	0007b503          	ld	a0,0(a5)
    800026a8:	00009797          	auipc	a5,0x9
    800026ac:	4487b783          	ld	a5,1096(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026b0:	0007b783          	ld	a5,0(a5)
    800026b4:	40f50533          	sub	a0,a0,a5

    void* m = mem_alloc(neg_size);
    800026b8:	ff050513          	addi	a0,a0,-16
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	b8c080e7          	jalr	-1140(ra) # 80001248 <mem_alloc>

    if(m!=nullptr){
    800026c4:	02050463          	beqz	a0,800026ec <_Z16mallocEverythingv+0x74>
        Riscv::printString("not OK\n");
    800026c8:	00007517          	auipc	a0,0x7
    800026cc:	9f850513          	addi	a0,a0,-1544 # 800090c0 <CONSOLE_STATUS+0xb0>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	3b8080e7          	jalr	952(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
}
    800026d8:	01813083          	ld	ra,24(sp)
    800026dc:	01013403          	ld	s0,16(sp)
    800026e0:	00813483          	ld	s1,8(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    800026ec:	00009797          	auipc	a5,0x9
    800026f0:	4047b783          	ld	a5,1028(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026f4:	0007b503          	ld	a0,0(a5)
    800026f8:	00009797          	auipc	a5,0x9
    800026fc:	3d07b783          	ld	a5,976(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002700:	0007b783          	ld	a5,0(a5)
    80002704:	40f50533          	sub	a0,a0,a5
    80002708:	ff050513          	addi	a0,a0,-16
    8000270c:	00655513          	srli	a0,a0,0x6
    80002710:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002714:	00651513          	slli	a0,a0,0x6
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	b30080e7          	jalr	-1232(ra) # 80001248 <mem_alloc>
    80002720:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002724:	02050a63          	beqz	a0,80002758 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    80002728:	00100513          	li	a0,1
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	b1c080e7          	jalr	-1252(ra) # 80001248 <mem_alloc>
    if(small_chunk == nullptr){
    80002734:	02050c63          	beqz	a0,8000276c <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    80002738:	00048513          	mv	a0,s1
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	f08080e7          	jalr	-248(ra) # 80003644 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    80002744:	00007517          	auipc	a0,0x7
    80002748:	a9c50513          	addi	a0,a0,-1380 # 800091e0 <CONSOLE_STATUS+0x1d0>
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	33c080e7          	jalr	828(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    80002754:	f85ff06f          	j	800026d8 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    80002758:	00007517          	auipc	a0,0x7
    8000275c:	96850513          	addi	a0,a0,-1688 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002760:	00001097          	auipc	ra,0x1
    80002764:	328080e7          	jalr	808(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    80002768:	f71ff06f          	j	800026d8 <_Z16mallocEverythingv+0x60>
        Riscv::printString("not OK\n");
    8000276c:	00007517          	auipc	a0,0x7
    80002770:	95450513          	addi	a0,a0,-1708 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002774:	00001097          	auipc	ra,0x1
    80002778:	314080e7          	jalr	788(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    8000277c:	f5dff06f          	j	800026d8 <_Z16mallocEverythingv+0x60>

0000000080002780 <_Z17mallocGapFillTestv>:

void mallocGapFillTest()
{
    80002780:	f6010113          	addi	sp,sp,-160
    80002784:	08113c23          	sd	ra,152(sp)
    80002788:	08813823          	sd	s0,144(sp)
    8000278c:	08913423          	sd	s1,136(sp)
    80002790:	09213023          	sd	s2,128(sp)
    80002794:	07313c23          	sd	s3,120(sp)
    80002798:	07413823          	sd	s4,112(sp)
    8000279c:	07513423          	sd	s5,104(sp)
    800027a0:	07613023          	sd	s6,96(sp)
    800027a4:	05713c23          	sd	s7,88(sp)
    800027a8:	05813823          	sd	s8,80(sp)
    800027ac:	0a010413          	addi	s0,sp,160
    Riscv::printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800027b0:	00007517          	auipc	a0,0x7
    800027b4:	a6850513          	addi	a0,a0,-1432 # 80009218 <CONSOLE_STATUS+0x208>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	2d0080e7          	jalr	720(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    800027c0:	00000493          	li	s1,0
    800027c4:	00900793          	li	a5,9
    800027c8:	0697c863          	blt	a5,s1,80002838 <_Z17mallocGapFillTestv+0xb8>
    {
        m[i] = mem_alloc((i<<6)+1);
    800027cc:	0064951b          	slliw	a0,s1,0x6
    800027d0:	0015051b          	addiw	a0,a0,1
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	a74080e7          	jalr	-1420(ra) # 80001248 <mem_alloc>
    800027dc:	00349793          	slli	a5,s1,0x3
    800027e0:	fb040713          	addi	a4,s0,-80
    800027e4:	00f707b3          	add	a5,a4,a5
    800027e8:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    800027ec:	00050663          	beqz	a0,800027f8 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    800027f0:	0014849b          	addiw	s1,s1,1
    800027f4:	fd1ff06f          	j	800027c4 <_Z17mallocGapFillTestv+0x44>
            Riscv::printString("not OK\n");
    800027f8:	00007517          	auipc	a0,0x7
    800027fc:	8c850513          	addi	a0,a0,-1848 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	288080e7          	jalr	648(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002808:	09813083          	ld	ra,152(sp)
    8000280c:	09013403          	ld	s0,144(sp)
    80002810:	08813483          	ld	s1,136(sp)
    80002814:	08013903          	ld	s2,128(sp)
    80002818:	07813983          	ld	s3,120(sp)
    8000281c:	07013a03          	ld	s4,112(sp)
    80002820:	06813a83          	ld	s5,104(sp)
    80002824:	06013b03          	ld	s6,96(sp)
    80002828:	05813b83          	ld	s7,88(sp)
    8000282c:	05013c03          	ld	s8,80(sp)
    80002830:	0a010113          	addi	sp,sp,160
    80002834:	00008067          	ret
    delete (uint64*)m[2];
    80002838:	f7043503          	ld	a0,-144(s0)
    8000283c:	00050663          	beqz	a0,80002848 <_Z17mallocGapFillTestv+0xc8>
    80002840:	00001097          	auipc	ra,0x1
    80002844:	e04080e7          	jalr	-508(ra) # 80003644 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002848:	00100513          	li	a0,1
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	9fc080e7          	jalr	-1540(ra) # 80001248 <mem_alloc>
    80002854:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002858:	00100513          	li	a0,1
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	9ec080e7          	jalr	-1556(ra) # 80001248 <mem_alloc>
    80002864:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002868:	00100513          	li	a0,1
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	9dc080e7          	jalr	-1572(ra) # 80001248 <mem_alloc>
    80002874:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002878:	08048863          	beqz	s1,80002908 <_Z17mallocGapFillTestv+0x188>
    8000287c:	08090663          	beqz	s2,80002908 <_Z17mallocGapFillTestv+0x188>
    80002880:	08050463          	beqz	a0,80002908 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002884:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002888:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000288c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002890:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002894:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002898:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000289c:	0897f063          	bgeu	a5,s1,8000291c <_Z17mallocGapFillTestv+0x19c>
    800028a0:	06a4fe63          	bgeu	s1,a0,8000291c <_Z17mallocGapFillTestv+0x19c>
    800028a4:	0727fc63          	bgeu	a5,s2,8000291c <_Z17mallocGapFillTestv+0x19c>
    800028a8:	06a97a63          	bgeu	s2,a0,8000291c <_Z17mallocGapFillTestv+0x19c>
    800028ac:	07367863          	bgeu	a2,s3,8000291c <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    800028b0:	00050663          	beqz	a0,800028bc <_Z17mallocGapFillTestv+0x13c>
    800028b4:	00001097          	auipc	ra,0x1
    800028b8:	d90080e7          	jalr	-624(ra) # 80003644 <_ZdlPv>
    delete (uint64*)m[4];
    800028bc:	f8043503          	ld	a0,-128(s0)
    800028c0:	00050663          	beqz	a0,800028cc <_Z17mallocGapFillTestv+0x14c>
    800028c4:	00001097          	auipc	ra,0x1
    800028c8:	d80080e7          	jalr	-640(ra) # 80003644 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    800028cc:	28000513          	li	a0,640
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	978080e7          	jalr	-1672(ra) # 80001248 <mem_alloc>
    800028d8:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    800028dc:	24000513          	li	a0,576
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	968080e7          	jalr	-1688(ra) # 80001248 <mem_alloc>
    800028e8:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    800028ec:	040c0263          	beqz	s8,80002930 <_Z17mallocGapFillTestv+0x1b0>
    800028f0:	04050063          	beqz	a0,80002930 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    800028f4:	04aa7863          	bgeu	s4,a0,80002944 <_Z17mallocGapFillTestv+0x1c4>
    800028f8:	04ab7663          	bgeu	s6,a0,80002944 <_Z17mallocGapFillTestv+0x1c4>
    800028fc:	055c7463          	bgeu	s8,s5,80002944 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002900:	00000a13          	li	s4,0
    80002904:	0580006f          	j	8000295c <_Z17mallocGapFillTestv+0x1dc>
        Riscv::printString("not OK\n");
    80002908:	00006517          	auipc	a0,0x6
    8000290c:	7b850513          	addi	a0,a0,1976 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	178080e7          	jalr	376(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    80002918:	ef1ff06f          	j	80002808 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    8000291c:	00006517          	auipc	a0,0x6
    80002920:	7a450513          	addi	a0,a0,1956 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002924:	00001097          	auipc	ra,0x1
    80002928:	164080e7          	jalr	356(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    8000292c:	eddff06f          	j	80002808 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002930:	00006517          	auipc	a0,0x6
    80002934:	79050513          	addi	a0,a0,1936 # 800090c0 <CONSOLE_STATUS+0xb0>
    80002938:	00001097          	auipc	ra,0x1
    8000293c:	150080e7          	jalr	336(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    80002940:	ec9ff06f          	j	80002808 <_Z17mallocGapFillTestv+0x88>
        Riscv::printString("not OK\n");
    80002944:	00006517          	auipc	a0,0x6
    80002948:	77c50513          	addi	a0,a0,1916 # 800090c0 <CONSOLE_STATUS+0xb0>
    8000294c:	00001097          	auipc	ra,0x1
    80002950:	13c080e7          	jalr	316(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        return;
    80002954:	eb5ff06f          	j	80002808 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002958:	001a0a1b          	addiw	s4,s4,1
    8000295c:	00900793          	li	a5,9
    80002960:	0347c263          	blt	a5,s4,80002984 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002964:	003a1793          	slli	a5,s4,0x3
    80002968:	fb040713          	addi	a4,s0,-80
    8000296c:	00f707b3          	add	a5,a4,a5
    80002970:	fb07b503          	ld	a0,-80(a5)
    80002974:	fe0502e3          	beqz	a0,80002958 <_Z17mallocGapFillTestv+0x1d8>
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	ccc080e7          	jalr	-820(ra) # 80003644 <_ZdlPv>
    80002980:	fd9ff06f          	j	80002958 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002984:	00048513          	mv	a0,s1
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	cbc080e7          	jalr	-836(ra) # 80003644 <_ZdlPv>
    delete (uint64*)tmp2;
    80002990:	00090513          	mv	a0,s2
    80002994:	00001097          	auipc	ra,0x1
    80002998:	cb0080e7          	jalr	-848(ra) # 80003644 <_ZdlPv>
    delete (uint64*)tmp3;
    8000299c:	00098513          	mv	a0,s3
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	ca4080e7          	jalr	-860(ra) # 80003644 <_ZdlPv>
    delete (uint64*)tmp4;
    800029a8:	000c0513          	mv	a0,s8
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	c98080e7          	jalr	-872(ra) # 80003644 <_ZdlPv>
    delete (uint64*)tmp5;
    800029b4:	000b8513          	mv	a0,s7
    800029b8:	00001097          	auipc	ra,0x1
    800029bc:	c8c080e7          	jalr	-884(ra) # 80003644 <_ZdlPv>
    Riscv::printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    800029c0:	00007517          	auipc	a0,0x7
    800029c4:	8a050513          	addi	a0,a0,-1888 # 80009260 <CONSOLE_STATUS+0x250>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	0c0080e7          	jalr	192(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    800029d0:	e39ff06f          	j	80002808 <_Z17mallocGapFillTestv+0x88>

00000000800029d4 <_Z21memoryAllocationTestsv>:
{
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	d9c080e7          	jalr	-612(ra) # 80002780 <_Z17mallocGapFillTestv>
}
    800029ec:	00813083          	ld	ra,8(sp)
    800029f0:	00013403          	ld	s0,0(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_Z7myTestsv>:
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    memoryAllocationTests();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	fc8080e7          	jalr	-56(ra) # 800029d4 <_Z21memoryAllocationTestsv>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN6Thread3runEv>:
    //ovde je samo za potrebe testiranja
    thread_t myHandle;
protected:
    Thread();

    virtual void run() {}
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00813423          	sd	s0,8(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    80002a30:	00813403          	ld	s0,8(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret

0000000080002a54 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00113423          	sd	ra,8(sp)
    80002a5c:	00813023          	sd	s0,0(sp)
    80002a60:	01010413          	addi	s0,sp,16
    80002a64:	00009797          	auipc	a5,0x9
    80002a68:	f1c78793          	addi	a5,a5,-228 # 8000b980 <_ZTV14PeriodicThread+0x10>
    80002a6c:	00f53023          	sd	a5,0(a0)
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	af0080e7          	jalr	-1296(ra) # 80003560 <_ZN6ThreadD1Ev>
    80002a78:	00813083          	ld	ra,8(sp)
    80002a7c:	00013403          	ld	s0,0(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <_ZN14PeriodicThreadD0Ev>:
    80002a88:	fe010113          	addi	sp,sp,-32
    80002a8c:	00113c23          	sd	ra,24(sp)
    80002a90:	00813823          	sd	s0,16(sp)
    80002a94:	00913423          	sd	s1,8(sp)
    80002a98:	02010413          	addi	s0,sp,32
    80002a9c:	00050493          	mv	s1,a0
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	ee078793          	addi	a5,a5,-288 # 8000b980 <_ZTV14PeriodicThread+0x10>
    80002aa8:	00f53023          	sd	a5,0(a0)
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	ab4080e7          	jalr	-1356(ra) # 80003560 <_ZN6ThreadD1Ev>
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	b8c080e7          	jalr	-1140(ra) # 80003644 <_ZdlPv>
    80002ac0:	01813083          	ld	ra,24(sp)
    80002ac4:	01013403          	ld	s0,16(sp)
    80002ac8:	00813483          	ld	s1,8(sp)
    80002acc:	02010113          	addi	sp,sp,32
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00113423          	sd	ra,8(sp)
    80002adc:	00813023          	sd	s0,0(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00009797          	auipc	a5,0x9
    80002ae8:	e9c78793          	addi	a5,a5,-356 # 8000b980 <_ZTV14PeriodicThread+0x10>
    80002aec:	00f53023          	sd	a5,0(a0)
    80002af0:	00001097          	auipc	ra,0x1
    80002af4:	a70080e7          	jalr	-1424(ra) # 80003560 <_ZN6ThreadD1Ev>
    80002af8:	00813083          	ld	ra,8(sp)
    80002afc:	00013403          	ld	s0,0(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <_ZN12TestPeriodicD0Ev>:
    80002b08:	fe010113          	addi	sp,sp,-32
    80002b0c:	00113c23          	sd	ra,24(sp)
    80002b10:	00813823          	sd	s0,16(sp)
    80002b14:	00913423          	sd	s1,8(sp)
    80002b18:	02010413          	addi	s0,sp,32
    80002b1c:	00050493          	mv	s1,a0
    80002b20:	00009797          	auipc	a5,0x9
    80002b24:	e6078793          	addi	a5,a5,-416 # 8000b980 <_ZTV14PeriodicThread+0x10>
    80002b28:	00f53023          	sd	a5,0(a0)
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	a34080e7          	jalr	-1484(ra) # 80003560 <_ZN6ThreadD1Ev>
    80002b34:	00048513          	mv	a0,s1
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	b0c080e7          	jalr	-1268(ra) # 80003644 <_ZdlPv>
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret

0000000080002b54 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    80002b64:	00006517          	auipc	a0,0x6
    80002b68:	75450513          	addi	a0,a0,1876 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	f1c080e7          	jalr	-228(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	ef4080e7          	jalr	-268(ra) # 80003a68 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002b7c:	00009797          	auipc	a5,0x9
    80002b80:	fec7b783          	ld	a5,-20(a5) # 8000bb68 <_ZN3PCB7runningE>
    80002b84:	0207b703          	ld	a4,32(a5)
    80002b88:	0287b503          	ld	a0,40(a5)
    80002b8c:	000700e7          	jalr	a4

    thread_exit();
    80002b90:	ffffe097          	auipc	ra,0xffffe
    80002b94:	7b4080e7          	jalr	1972(ra) # 80001344 <thread_exit>
}
    80002b98:	00813083          	ld	ra,8(sp)
    80002b9c:	00013403          	ld	s0,0(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    80002bbc:	00050493          	mv	s1,a0
    })
    80002bc0:	00050023          	sb	zero,0(a0)
    80002bc4:	00e53823          	sd	a4,16(a0)
    80002bc8:	00053c23          	sd	zero,24(a0)
    80002bcc:	02b53023          	sd	a1,32(a0)
    80002bd0:	02c53423          	sd	a2,40(a0)
    80002bd4:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002bd8:	000017b7          	lui	a5,0x1
    80002bdc:	00f686b3          	add	a3,a3,a5
    })
    80002be0:	04d53023          	sd	a3,64(a0)
    80002be4:	00000797          	auipc	a5,0x0
    80002be8:	f7078793          	addi	a5,a5,-144 # 80002b54 <_ZN3PCB6runnerEv>
    80002bec:	04f53423          	sd	a5,72(a0)
    Scheduler::put(this);
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	8a8080e7          	jalr	-1880(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002bf8:	0004b423          	sd	zero,8(s1)
}
    80002bfc:	01813083          	ld	ra,24(sp)
    80002c00:	01013403          	ld	s0,16(sp)
    80002c04:	00813483          	ld	s1,8(sp)
    80002c08:	02010113          	addi	sp,sp,32
    80002c0c:	00008067          	ret

0000000080002c10 <_ZN3PCB5sleepEm>:
{
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
}
    80002c1c:	00813403          	ld	s0,8(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN3PCB5startEv>:
{
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	00813023          	sd	s0,0(sp)
    80002c34:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	860080e7          	jalr	-1952(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
}
    80002c40:	00813083          	ld	ra,8(sp)
    80002c44:	00013403          	ld	s0,0(sp)
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret

0000000080002c50 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002c50:	fe010113          	addi	sp,sp,-32
    80002c54:	00113c23          	sd	ra,24(sp)
    80002c58:	00813823          	sd	s0,16(sp)
    80002c5c:	00913423          	sd	s1,8(sp)
    80002c60:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    80002c64:	00009497          	auipc	s1,0x9
    80002c68:	f044b483          	ld	s1,-252(s1) # 8000bb68 <_ZN3PCB7runningE>
    80002c6c:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    80002c70:	00100793          	li	a5,1
    80002c74:	04f70863          	beq	a4,a5,80002cc4 <_ZN3PCB8dispatchEv+0x74>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002c78:	00001097          	auipc	ra,0x1
    80002c7c:	874080e7          	jalr	-1932(ra) # 800034ec <_ZN9Scheduler3getEv>
    80002c80:	00009797          	auipc	a5,0x9
    80002c84:	eea7b423          	sd	a0,-280(a5) # 8000bb68 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002c88:	00100793          	li	a5,1
    80002c8c:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    if(PCB::running->systemThread)
    80002c90:	00054783          	lbu	a5,0(a0)
    80002c94:	04078063          	beqz	a5,80002cd4 <_ZN3PCB8dispatchEv+0x84>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002c98:	10000793          	li	a5,256
    80002c9c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);


    PCB::contextSwitch(&old->context, &running->context);
    80002ca0:	04050593          	addi	a1,a0,64
    80002ca4:	04048513          	addi	a0,s1,64
    80002ca8:	ffffe097          	auipc	ra,0xffffe
    80002cac:	580080e7          	jalr	1408(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00008067          	ret
        Scheduler::put(old);
    80002cc4:	00048513          	mv	a0,s1
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	7d0080e7          	jalr	2000(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
    80002cd0:	fa9ff06f          	j	80002c78 <_ZN3PCB8dispatchEv+0x28>
    80002cd4:	10000793          	li	a5,256
    80002cd8:	1007a073          	csrs	sstatus,a5
}
    80002cdc:	fc5ff06f          	j	80002ca0 <_ZN3PCB8dispatchEv+0x50>

0000000080002ce0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002ce0:	ff010113          	addi	sp,sp,-16
    80002ce4:	00113423          	sd	ra,8(sp)
    80002ce8:	00813023          	sd	s0,0(sp)
    80002cec:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002cf0:	00001097          	auipc	ra,0x1
    80002cf4:	6fc080e7          	jalr	1788(ra) # 800043ec <_Z7kmallocm>
}
    80002cf8:	00813083          	ld	ra,8(sp)
    80002cfc:	00013403          	ld	s0,0(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002d08:	ff010113          	addi	sp,sp,-16
    80002d0c:	00113423          	sd	ra,8(sp)
    80002d10:	00813023          	sd	s0,0(sp)
    80002d14:	01010413          	addi	s0,sp,16
    kfree(p);
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	6fc080e7          	jalr	1788(ra) # 80004414 <_Z5kfreePv>
}
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00013403          	ld	s0,0(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret

0000000080002d30 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80002d30:	ff010113          	addi	sp,sp,-16
    80002d34:	00113423          	sd	ra,8(sp)
    80002d38:	00813023          	sd	s0,0(sp)
    80002d3c:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80002d40:	03053503          	ld	a0,48(a0)
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	6d0080e7          	jalr	1744(ra) # 80004414 <_Z5kfreePv>
}
    80002d4c:	00813083          	ld	ra,8(sp)
    80002d50:	00013403          	ld	s0,0(sp)
    80002d54:	01010113          	addi	sp,sp,16
    80002d58:	00008067          	ret

0000000080002d5c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	01213023          	sd	s2,0(sp)
    80002d70:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002d74:	05000513          	li	a0,80
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	f68080e7          	jalr	-152(ra) # 80002ce0 <_ZN3PCBnwEm>
    80002d80:	00050493          	mv	s1,a0
    80002d84:	00000713          	li	a4,0
    80002d88:	00000693          	li	a3,0
    80002d8c:	00000613          	li	a2,0
    80002d90:	00000593          	li	a1,0
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	e14080e7          	jalr	-492(ra) # 80002ba8 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002d9c:	00100793          	li	a5,1
    80002da0:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	748080e7          	jalr	1864(ra) # 800034ec <_ZN9Scheduler3getEv>
    80002dac:	00009797          	auipc	a5,0x9
    80002db0:	daa7be23          	sd	a0,-580(a5) # 8000bb68 <_ZN3PCB7runningE>
    80002db4:	00100793          	li	a5,1
    80002db8:	02f52c23          	sw	a5,56(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002dbc:	01813083          	ld	ra,24(sp)
    80002dc0:	01013403          	ld	s0,16(sp)
    80002dc4:	00813483          	ld	s1,8(sp)
    80002dc8:	00013903          	ld	s2,0(sp)
    80002dcc:	02010113          	addi	sp,sp,32
    80002dd0:	00008067          	ret
    80002dd4:	00050913          	mv	s2,a0
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002dd8:	00048513          	mv	a0,s1
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	f2c080e7          	jalr	-212(ra) # 80002d08 <_ZN3PCBdlEPv>
    80002de4:	00090513          	mv	a0,s2
    80002de8:	0000a097          	auipc	ra,0xa
    80002dec:	ef0080e7          	jalr	-272(ra) # 8000ccd8 <_Unwind_Resume>

0000000080002df0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KConsole::Elem* KConsole::tailOutput = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002df0:	fd010113          	addi	sp,sp,-48
    80002df4:	02113423          	sd	ra,40(sp)
    80002df8:	02813023          	sd	s0,32(sp)
    80002dfc:	00913c23          	sd	s1,24(sp)
    80002e00:	01213823          	sd	s2,16(sp)
    80002e04:	01313423          	sd	s3,8(sp)
    80002e08:	03010413          	addi	s0,sp,48
    80002e0c:	00050993          	mv	s3,a0
    80002e10:	00058913          	mv	s2,a1
    80002e14:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002e18:	01000513          	li	a0,16
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	5d0080e7          	jalr	1488(ra) # 800043ec <_Z7kmallocm>
    newElem->next = 0;
    80002e24:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002e28:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002e2c:	00093783          	ld	a5,0(s2)
    80002e30:	02078663          	beqz	a5,80002e5c <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002e34:	0004b783          	ld	a5,0(s1)
    80002e38:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002e3c:	00a4b023          	sd	a0,0(s1)
    }
}
    80002e40:	02813083          	ld	ra,40(sp)
    80002e44:	02013403          	ld	s0,32(sp)
    80002e48:	01813483          	ld	s1,24(sp)
    80002e4c:	01013903          	ld	s2,16(sp)
    80002e50:	00813983          	ld	s3,8(sp)
    80002e54:	03010113          	addi	sp,sp,48
    80002e58:	00008067          	ret
        head = tail = newElem;
    80002e5c:	00a4b023          	sd	a0,0(s1)
    80002e60:	00a93023          	sd	a0,0(s2)
    80002e64:	fddff06f          	j	80002e40 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002e68 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002e68:	fe010113          	addi	sp,sp,-32
    80002e6c:	00113c23          	sd	ra,24(sp)
    80002e70:	00813823          	sd	s0,16(sp)
    80002e74:	00913423          	sd	s1,8(sp)
    80002e78:	02010413          	addi	s0,sp,32
    80002e7c:	00050793          	mv	a5,a0
    if(head == 0)
    80002e80:	00053503          	ld	a0,0(a0)
    80002e84:	02050e63          	beqz	a0,80002ec0 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002e88:	00053703          	ld	a4,0(a0)
    80002e8c:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002e90:	02070463          	beqz	a4,80002eb8 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002e94:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	57c080e7          	jalr	1404(ra) # 80004414 <_Z5kfreePv>
    return c;
}
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	01813083          	ld	ra,24(sp)
    80002ea8:	01013403          	ld	s0,16(sp)
    80002eac:	00813483          	ld	s1,8(sp)
    80002eb0:	02010113          	addi	sp,sp,32
    80002eb4:	00008067          	ret
        tail = 0;
    80002eb8:	0005b023          	sd	zero,0(a1)
    80002ebc:	fd9ff06f          	j	80002e94 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002ec0:	00000493          	li	s1,0
    80002ec4:	fddff06f          	j	80002ea0 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002ec8 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002ec8:	fe010113          	addi	sp,sp,-32
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	00813823          	sd	s0,16(sp)
    80002ed4:	00913423          	sd	s1,8(sp)
    80002ed8:	01213023          	sd	s2,0(sp)
    80002edc:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002ee0:	01800513          	li	a0,24
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	7a8080e7          	jalr	1960(ra) # 8000468c <_ZN10KSemaphorenwEm>
    80002eec:	00050493          	mv	s1,a0
    80002ef0:	00000593          	li	a1,0
    80002ef4:	00001097          	auipc	ra,0x1
    80002ef8:	548080e7          	jalr	1352(ra) # 8000443c <_ZN10KSemaphoreC1Ei>
    80002efc:	00009797          	auipc	a5,0x9
    80002f00:	c697be23          	sd	s1,-900(a5) # 8000bb78 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002f04:	01800513          	li	a0,24
    80002f08:	00001097          	auipc	ra,0x1
    80002f0c:	784080e7          	jalr	1924(ra) # 8000468c <_ZN10KSemaphorenwEm>
    80002f10:	00050493          	mv	s1,a0
    80002f14:	00000593          	li	a1,0
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	524080e7          	jalr	1316(ra) # 8000443c <_ZN10KSemaphoreC1Ei>
    80002f20:	00009797          	auipc	a5,0x9
    80002f24:	c697b023          	sd	s1,-928(a5) # 8000bb80 <_ZN8KConsole19hasCharactersOutputE>
}
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	00013903          	ld	s2,0(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret
    80002f40:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002f44:	00048513          	mv	a0,s1
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	76c080e7          	jalr	1900(ra) # 800046b4 <_ZN10KSemaphoredlEPv>
    80002f50:	00090513          	mv	a0,s2
    80002f54:	0000a097          	auipc	ra,0xa
    80002f58:	d84080e7          	jalr	-636(ra) # 8000ccd8 <_Unwind_Resume>
    80002f5c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002f60:	00048513          	mv	a0,s1
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	750080e7          	jalr	1872(ra) # 800046b4 <_ZN10KSemaphoredlEPv>
    80002f6c:	00090513          	mv	a0,s2
    80002f70:	0000a097          	auipc	ra,0xa
    80002f74:	d68080e7          	jalr	-664(ra) # 8000ccd8 <_Unwind_Resume>

0000000080002f78 <_ZN8KConsole17putCharacterInputEc>:
            break;
    }
}

void KConsole::putCharacterInput(char c)
{
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00113423          	sd	ra,8(sp)
    80002f80:	00813023          	sd	s0,0(sp)
    80002f84:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002f88:	00009617          	auipc	a2,0x9
    80002f8c:	c0060613          	addi	a2,a2,-1024 # 8000bb88 <_ZN8KConsole9tailInputE>
    80002f90:	00009597          	auipc	a1,0x9
    80002f94:	c0058593          	addi	a1,a1,-1024 # 8000bb90 <_ZN8KConsole9headInputE>
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	e58080e7          	jalr	-424(ra) # 80002df0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002fa0:	00009517          	auipc	a0,0x9
    80002fa4:	bd853503          	ld	a0,-1064(a0) # 8000bb78 <_ZN8KConsole18hasCharactersInputE>
    80002fa8:	00001097          	auipc	ra,0x1
    80002fac:	69c080e7          	jalr	1692(ra) # 80004644 <_ZN10KSemaphore6signalEv>
}
    80002fb0:	00813083          	ld	ra,8(sp)
    80002fb4:	00013403          	ld	s0,0(sp)
    80002fb8:	01010113          	addi	sp,sp,16
    80002fbc:	00008067          	ret

0000000080002fc0 <_ZN8KConsole24getCharactersFromConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002fc0:	00006517          	auipc	a0,0x6
    80002fc4:	05053503          	ld	a0,80(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002fc8:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80002fcc:	0017f793          	andi	a5,a5,1
    80002fd0:	04078863          	beqz	a5,80003020 <_ZN8KConsole24getCharactersFromConsoleEv+0x60>
{
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	01010413          	addi	s0,sp,16
            __asm__ volatile("ld a0, CONSOLE_TX_DATA");
    80002fe4:	00006517          	auipc	a0,0x6
    80002fe8:	02453503          	ld	a0,36(a0) # 80009008 <CONSOLE_TX_DATA>
            __asm__ volatile("mv %0, a0" :  "=r"(data));
    80002fec:	00050513          	mv	a0,a0
            putCharacterInput((char)data);
    80002ff0:	0ff57513          	andi	a0,a0,255
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	f84080e7          	jalr	-124(ra) # 80002f78 <_ZN8KConsole17putCharacterInputEc>
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    80002ffc:	00006517          	auipc	a0,0x6
    80003000:	01453503          	ld	a0,20(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003004:	00050793          	mv	a5,a0
        if(operation & STATUS_READ_MASK)
    80003008:	0017f793          	andi	a5,a5,1
    8000300c:	fc079ce3          	bnez	a5,80002fe4 <_ZN8KConsole24getCharactersFromConsoleEv+0x24>
}
    80003010:	00813083          	ld	ra,8(sp)
    80003014:	00013403          	ld	s0,0(sp)
    80003018:	01010113          	addi	sp,sp,16
    8000301c:	00008067          	ret
    80003020:	00008067          	ret

0000000080003024 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00113423          	sd	ra,8(sp)
    8000302c:	00813023          	sd	s0,0(sp)
    80003030:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80003034:	00009517          	auipc	a0,0x9
    80003038:	b4453503          	ld	a0,-1212(a0) # 8000bb78 <_ZN8KConsole18hasCharactersInputE>
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	4a8080e7          	jalr	1192(ra) # 800044e4 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80003044:	00009597          	auipc	a1,0x9
    80003048:	b4458593          	addi	a1,a1,-1212 # 8000bb88 <_ZN8KConsole9tailInputE>
    8000304c:	00009517          	auipc	a0,0x9
    80003050:	b4450513          	addi	a0,a0,-1212 # 8000bb90 <_ZN8KConsole9headInputE>
    80003054:	00000097          	auipc	ra,0x0
    80003058:	e14080e7          	jalr	-492(ra) # 80002e68 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    8000306c:	ff010113          	addi	sp,sp,-16
    80003070:	00113423          	sd	ra,8(sp)
    80003074:	00813023          	sd	s0,0(sp)
    80003078:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    8000307c:	00009617          	auipc	a2,0x9
    80003080:	b1c60613          	addi	a2,a2,-1252 # 8000bb98 <_ZN8KConsole10tailOutputE>
    80003084:	00009597          	auipc	a1,0x9
    80003088:	b1c58593          	addi	a1,a1,-1252 # 8000bba0 <_ZN8KConsole10headOutputE>
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	d64080e7          	jalr	-668(ra) # 80002df0 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80003094:	00009517          	auipc	a0,0x9
    80003098:	aec53503          	ld	a0,-1300(a0) # 8000bb80 <_ZN8KConsole19hasCharactersOutputE>
    8000309c:	00001097          	auipc	ra,0x1
    800030a0:	5a8080e7          	jalr	1448(ra) # 80004644 <_ZN10KSemaphore6signalEv>
}
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    800030c4:	00009517          	auipc	a0,0x9
    800030c8:	abc53503          	ld	a0,-1348(a0) # 8000bb80 <_ZN8KConsole19hasCharactersOutputE>
    800030cc:	00001097          	auipc	ra,0x1
    800030d0:	418080e7          	jalr	1048(ra) # 800044e4 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    800030d4:	00009597          	auipc	a1,0x9
    800030d8:	ac458593          	addi	a1,a1,-1340 # 8000bb98 <_ZN8KConsole10tailOutputE>
    800030dc:	00009517          	auipc	a0,0x9
    800030e0:	ac450513          	addi	a0,a0,-1340 # 8000bba0 <_ZN8KConsole10headOutputE>
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	d84080e7          	jalr	-636(ra) # 80002e68 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    800030ec:	00813083          	ld	ra,8(sp)
    800030f0:	00013403          	ld	s0,0(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN8KConsole23sendCharactersToConsoleEv>:
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    800030fc:	00006517          	auipc	a0,0x6
    80003100:	f1453503          	ld	a0,-236(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003104:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80003108:	0207f793          	andi	a5,a5,32
    8000310c:	04078263          	beqz	a5,80003150 <_ZN8KConsole23sendCharactersToConsoleEv+0x54>
{
    80003110:	ff010113          	addi	sp,sp,-16
    80003114:	00113423          	sd	ra,8(sp)
    80003118:	00813023          	sd	s0,0(sp)
    8000311c:	01010413          	addi	s0,sp,16
            char c = getCharacterOutput();
    80003120:	00000097          	auipc	ra,0x0
    80003124:	f94080e7          	jalr	-108(ra) # 800030b4 <_ZN8KConsole18getCharacterOutputEv>
            __asm__ volatile("mv a0, %0" :  :"r"((uint64)c));
    80003128:	00050513          	mv	a0,a0
        __asm__ volatile("ld a0, CONSOLE_STATUS");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	ee453503          	ld	a0,-284(a0) # 80009010 <CONSOLE_STATUS>
        __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003134:	00050793          	mv	a5,a0
        if(operation & STATUS_WRITE_MASK)
    80003138:	0207f793          	andi	a5,a5,32
    8000313c:	fe0792e3          	bnez	a5,80003120 <_ZN8KConsole23sendCharactersToConsoleEv+0x24>
}
    80003140:	00813083          	ld	ra,8(sp)
    80003144:	00013403          	ld	s0,0(sp)
    80003148:	01010113          	addi	sp,sp,16
    8000314c:	00008067          	ret
    80003150:	00008067          	ret

0000000080003154 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003154:	ff010113          	addi	sp,sp,-16
    80003158:	00813423          	sd	s0,8(sp)
    8000315c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003160:	00009797          	auipc	a5,0x9
    80003164:	9887b783          	ld	a5,-1656(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003168:	0007b603          	ld	a2,0(a5)
    8000316c:	00500793          	li	a5,5
    80003170:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003174:	00009797          	auipc	a5,0x9
    80003178:	a347b783          	ld	a5,-1484(a5) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000317c:	00000593          	li	a1,0
    while(curr != 0)
    80003180:	02078063          	beqz	a5,800031a0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80003184:	01863683          	ld	a3,24(a2)
    80003188:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000318c:	00e6e863          	bltu	a3,a4,8000319c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003190:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003194:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003198:	fe9ff06f          	j	80003180 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000319c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800031a0:	02058263          	beqz	a1,800031c4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    800031a4:	01863783          	ld	a5,24(a2)
    800031a8:	0185b703          	ld	a4,24(a1)
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    800031ac:	40e787b3          	sub	a5,a5,a4
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031b0:	00f63c23          	sd	a5,24(a2)
        prev->nextPCB = PCB::running;
    800031b4:	00c5b423          	sd	a2,8(a1)
    }
}
    800031b8:	00813403          	ld	s0,8(sp)
    800031bc:	01010113          	addi	sp,sp,16
    800031c0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031c4:	00009797          	auipc	a5,0x9
    800031c8:	9ec7b223          	sd	a2,-1564(a5) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800031cc:	00863783          	ld	a5,8(a2)
    800031d0:	fe0784e3          	beqz	a5,800031b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031d4:	0187b703          	ld	a4,24(a5)
    800031d8:	01863683          	ld	a3,24(a2)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800031dc:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031e0:	00e7bc23          	sd	a4,24(a5)
    800031e4:	fd5ff06f          	j	800031b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x64>

00000000800031e8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031e8:	00009517          	auipc	a0,0x9
    800031ec:	9c053503          	ld	a0,-1600(a0) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031f0:	08050863          	beqz	a0,80003280 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    uint64 getTimeToSleep() {return timeToSleep;}
    800031f4:	01853783          	ld	a5,24(a0)
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    800031f8:	00100713          	li	a4,1
    800031fc:	00e78863          	beq	a5,a4,8000320c <_ZN12SleepPCBList13tryToWakePCBsEv+0x24>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80003200:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003204:	00f53c23          	sd	a5,24(a0)
    80003208:	00008067          	ret
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    8000320c:	06050a63          	beqz	a0,80003280 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
    80003210:	00009797          	auipc	a5,0x9
    80003214:	9987b783          	ld	a5,-1640(a5) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003218:	00a78663          	beq	a5,a0,80003224 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000321c:	01853783          	ld	a5,24(a0)
    80003220:	06079063          	bnez	a5,80003280 <_ZN12SleepPCBList13tryToWakePCBsEv+0x98>
{
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00113c23          	sd	ra,24(sp)
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00913423          	sd	s1,8(sp)
    80003234:	02010413          	addi	s0,sp,32
            curr = curr->nextPCB;
    80003238:	00853483          	ld	s1,8(a0)
            old->nextPCB = 0;
    8000323c:	00053423          	sd	zero,8(a0)
            Scheduler::put(old);
    80003240:	00000097          	auipc	ra,0x0
    80003244:	258080e7          	jalr	600(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80003248:	00009797          	auipc	a5,0x9
    8000324c:	9697b023          	sd	s1,-1696(a5) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80003250:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80003254:	00048c63          	beqz	s1,8000326c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003258:	00009797          	auipc	a5,0x9
    8000325c:	9507b783          	ld	a5,-1712(a5) # 8000bba8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003260:	fc978ce3          	beq	a5,s1,80003238 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003264:	0184b783          	ld	a5,24(s1)
    80003268:	fc0788e3          	beqz	a5,80003238 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    }
}
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	02010113          	addi	sp,sp,32
    8000327c:	00008067          	ret
    80003280:	00008067          	ret

0000000080003284 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800032a0:	00053503          	ld	a0,0(a0)
    800032a4:	00853903          	ld	s2,8(a0)
    kfree(first);
    800032a8:	00001097          	auipc	ra,0x1
    800032ac:	16c080e7          	jalr	364(ra) # 80004414 <_Z5kfreePv>
    first = newFirst;
    800032b0:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800032b4:	00090e63          	beqz	s2,800032d0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800032b8:	01813083          	ld	ra,24(sp)
    800032bc:	01013403          	ld	s0,16(sp)
    800032c0:	00813483          	ld	s1,8(sp)
    800032c4:	00013903          	ld	s2,0(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret
        first = last = 0;
    800032d0:	0004b423          	sd	zero,8(s1)
    800032d4:	0004b023          	sd	zero,0(s1)
}
    800032d8:	fe1ff06f          	j	800032b8 <_ZN5Queue3popEv+0x34>

00000000800032dc <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00113c23          	sd	ra,24(sp)
    800032e4:	00813823          	sd	s0,16(sp)
    800032e8:	00913423          	sd	s1,8(sp)
    800032ec:	01213023          	sd	s2,0(sp)
    800032f0:	02010413          	addi	s0,sp,32
    800032f4:	00050493          	mv	s1,a0
    800032f8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800032fc:	01000513          	li	a0,16
    80003300:	00001097          	auipc	ra,0x1
    80003304:	0ec080e7          	jalr	236(ra) # 800043ec <_Z7kmallocm>
    newElem->data = t;
    80003308:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    8000330c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003310:	0004b783          	ld	a5,0(s1)
    80003314:	02078463          	beqz	a5,8000333c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80003318:	0084b783          	ld	a5,8(s1)
    8000331c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003320:	00a4b423          	sd	a0,8(s1)
    }
}
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	00013903          	ld	s2,0(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret
        first = newElem;
    8000333c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003340:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003344:	00053423          	sd	zero,8(a0)
    80003348:	0004b783          	ld	a5,0(s1)
    8000334c:	0007b423          	sd	zero,8(a5)
    80003350:	fd5ff06f          	j	80003324 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003354 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80003354:	ff010113          	addi	sp,sp,-16
    80003358:	00813423          	sd	s0,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003360:	00053503          	ld	a0,0(a0)
    80003364:	00050463          	beqz	a0,8000336c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003368:	00053503          	ld	a0,0(a0)
}
    8000336c:	00813403          	ld	s0,8(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00813423          	sd	s0,8(sp)
    80003380:	01010413          	addi	s0,sp,16
    first = last = 0;
    80003384:	00053423          	sd	zero,8(a0)
    80003388:	00053023          	sd	zero,0(a0)
}
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80003398:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000339c:	04050063          	beqz	a0,800033dc <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800033b4:	00853483          	ld	s1,8(a0)
        kfree(old);
    800033b8:	00001097          	auipc	ra,0x1
    800033bc:	05c080e7          	jalr	92(ra) # 80004414 <_Z5kfreePv>
        curr = curr->next;
    800033c0:	00048513          	mv	a0,s1
    while(curr != 0)
    800033c4:	fe0498e3          	bnez	s1,800033b4 <_ZN5QueueD1Ev+0x1c>
    }
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret
    800033dc:	00008067          	ret

00000000800033e0 <_ZN5Queue4sizeEv>:

int Queue::size() {
    800033e0:	ff010113          	addi	sp,sp,-16
    800033e4:	00813423          	sd	s0,8(sp)
    800033e8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800033ec:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800033f0:	00000513          	li	a0,0
    while(curr != 0)
    800033f4:	00078863          	beqz	a5,80003404 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800033f8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800033fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003400:	ff5ff06f          	j	800033f4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003404:	00813403          	ld	s0,8(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret

0000000080003410 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80003410:	ff010113          	addi	sp,sp,-16
    80003414:	00113423          	sd	ra,8(sp)
    80003418:	00813023          	sd	s0,0(sp)
    8000341c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003420:	00001097          	auipc	ra,0x1
    80003424:	fcc080e7          	jalr	-52(ra) # 800043ec <_Z7kmallocm>
}
    80003428:	00813083          	ld	ra,8(sp)
    8000342c:	00013403          	ld	s0,0(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    kfree(p);
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	fcc080e7          	jalr	-52(ra) # 80004414 <_Z5kfreePv>
}
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00813423          	sd	s0,8(sp)
    80003468:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000346c:	00008797          	auipc	a5,0x8
    80003470:	7447b783          	ld	a5,1860(a5) # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003474:	00000513          	li	a0,0
    while(curr != 0)
    80003478:	00078863          	beqz	a5,80003488 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000347c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003480:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003484:	ff5ff06f          	j	80003478 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003488:	0005051b          	sext.w	a0,a0
    8000348c:	00813403          	ld	s0,8(sp)
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00008067          	ret

0000000080003498 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003498:	ff010113          	addi	sp,sp,-16
    8000349c:	00813423          	sd	s0,8(sp)
    800034a0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800034a4:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800034a8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800034ac:	00008797          	auipc	a5,0x8
    800034b0:	7047b783          	ld	a5,1796(a5) # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    800034b4:	02078263          	beqz	a5,800034d8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800034b8:	00008797          	auipc	a5,0x8
    800034bc:	6f878793          	addi	a5,a5,1784 # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    800034c0:	0087b703          	ld	a4,8(a5)
    800034c4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800034c8:	00a7b423          	sd	a0,8(a5)
    }
}
    800034cc:	00813403          	ld	s0,8(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800034d8:	00008797          	auipc	a5,0x8
    800034dc:	6d878793          	addi	a5,a5,1752 # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    800034e0:	00a7b423          	sd	a0,8(a5)
    800034e4:	00a7b023          	sd	a0,0(a5)
    800034e8:	fe5ff06f          	j	800034cc <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034ec <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034ec:	ff010113          	addi	sp,sp,-16
    800034f0:	00813423          	sd	s0,8(sp)
    800034f4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034f8:	00008517          	auipc	a0,0x8
    800034fc:	6b853503          	ld	a0,1720(a0) # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    80003500:	00050c63          	beqz	a0,80003518 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003504:	00853783          	ld	a5,8(a0)
    80003508:	00078e63          	beqz	a5,80003524 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000350c:	00008717          	auipc	a4,0x8
    80003510:	6af73223          	sd	a5,1700(a4) # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003514:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003518:	00813403          	ld	s0,8(sp)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003524:	00008797          	auipc	a5,0x8
    80003528:	68c78793          	addi	a5,a5,1676 # 8000bbb0 <_ZN9Scheduler16schedulerPCBHeadE>
    8000352c:	0007b423          	sd	zero,8(a5)
    80003530:	0007b023          	sd	zero,0(a5)
    80003534:	fe1ff06f          	j	80003514 <_ZN9Scheduler3getEv+0x28>

0000000080003538 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003548:	00001097          	auipc	ra,0x1
    8000354c:	a20080e7          	jalr	-1504(ra) # 80003f68 <_ZN5Riscv10kernelMainEv>
    80003550:	00813083          	ld	ra,8(sp)
    80003554:	00013403          	ld	s0,0(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret

0000000080003560 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00113423          	sd	ra,8(sp)
    80003568:	00813023          	sd	s0,0(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	00008797          	auipc	a5,0x8
    80003574:	47878793          	addi	a5,a5,1144 # 8000b9e8 <_ZTV6Thread+0x10>
    80003578:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000357c:	00853503          	ld	a0,8(a0)
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	cf8080e7          	jalr	-776(ra) # 80001278 <mem_free>
}
    80003588:	00813083          	ld	ra,8(sp)
    8000358c:	00013403          	ld	s0,0(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal((void*)myHandle);
}

Semaphore::~Semaphore() {
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00113423          	sd	ra,8(sp)
    800035a0:	00813023          	sd	s0,0(sp)
    800035a4:	01010413          	addi	s0,sp,16
    800035a8:	00008797          	auipc	a5,0x8
    800035ac:	46878793          	addi	a5,a5,1128 # 8000ba10 <_ZTV9Semaphore+0x10>
    800035b0:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800035b4:	00853503          	ld	a0,8(a0)
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	cc0080e7          	jalr	-832(ra) # 80001278 <mem_free>
}
    800035c0:	00813083          	ld	ra,8(sp)
    800035c4:	00013403          	ld	s0,0(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00813823          	sd	s0,16(sp)
    800035dc:	00913423          	sd	s1,8(sp)
    800035e0:	02010413          	addi	s0,sp,32
    800035e4:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    800035e8:	00006517          	auipc	a0,0x6
    800035ec:	ce850513          	addi	a0,a0,-792 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	498080e7          	jalr	1176(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    thr->run();
    800035f8:	0004b783          	ld	a5,0(s1)
    800035fc:	0107b783          	ld	a5,16(a5)
    80003600:	00048513          	mv	a0,s1
    80003604:	000780e7          	jalr	a5
}
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	02010113          	addi	sp,sp,32
    80003618:	00008067          	ret

000000008000361c <_Znwm>:
{
    8000361c:	ff010113          	addi	sp,sp,-16
    80003620:	00113423          	sd	ra,8(sp)
    80003624:	00813023          	sd	s0,0(sp)
    80003628:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	c1c080e7          	jalr	-996(ra) # 80001248 <mem_alloc>
}
    80003634:	00813083          	ld	ra,8(sp)
    80003638:	00013403          	ld	s0,0(sp)
    8000363c:	01010113          	addi	sp,sp,16
    80003640:	00008067          	ret

0000000080003644 <_ZdlPv>:
{
    80003644:	ff010113          	addi	sp,sp,-16
    80003648:	00113423          	sd	ra,8(sp)
    8000364c:	00813023          	sd	s0,0(sp)
    80003650:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	c24080e7          	jalr	-988(ra) # 80001278 <mem_free>
}
    8000365c:	00813083          	ld	ra,8(sp)
    80003660:	00013403          	ld	s0,0(sp)
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret

000000008000366c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000366c:	fe010113          	addi	sp,sp,-32
    80003670:	00113c23          	sd	ra,24(sp)
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	02010413          	addi	s0,sp,32
    80003680:	00050493          	mv	s1,a0
}
    80003684:	00000097          	auipc	ra,0x0
    80003688:	edc080e7          	jalr	-292(ra) # 80003560 <_ZN6ThreadD1Ev>
    8000368c:	00048513          	mv	a0,s1
    80003690:	00000097          	auipc	ra,0x0
    80003694:	fb4080e7          	jalr	-76(ra) # 80003644 <_ZdlPv>
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	02010113          	addi	sp,sp,32
    800036a8:	00008067          	ret

00000000800036ac <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00113c23          	sd	ra,24(sp)
    800036b4:	00813823          	sd	s0,16(sp)
    800036b8:	00913423          	sd	s1,8(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00050493          	mv	s1,a0
}
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	ed4080e7          	jalr	-300(ra) # 80003598 <_ZN9SemaphoreD1Ev>
    800036cc:	00048513          	mv	a0,s1
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	f74080e7          	jalr	-140(ra) # 80003644 <_ZdlPv>
    800036d8:	01813083          	ld	ra,24(sp)
    800036dc:	01013403          	ld	s0,16(sp)
    800036e0:	00813483          	ld	s1,8(sp)
    800036e4:	02010113          	addi	sp,sp,32
    800036e8:	00008067          	ret

00000000800036ec <_ZN6Thread5startEv>:
    if(myHandle == 0)
    800036ec:	00853783          	ld	a5,8(a0)
    800036f0:	02079c63          	bnez	a5,80003728 <_ZN6Thread5startEv+0x3c>
{
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00113423          	sd	ra,8(sp)
    800036fc:	00813023          	sd	s0,0(sp)
    80003700:	01010413          	addi	s0,sp,16
        return thread_create((void**)&myHandle, f, args);
    80003704:	01853603          	ld	a2,24(a0)
    80003708:	01053583          	ld	a1,16(a0)
    8000370c:	00850513          	addi	a0,a0,8
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	b94080e7          	jalr	-1132(ra) # 800012a4 <thread_create>
}
    80003718:	00813083          	ld	ra,8(sp)
    8000371c:	00013403          	ld	s0,0(sp)
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret
        return -1;
    80003728:	fff00513          	li	a0,-1
}
    8000372c:	00008067          	ret

0000000080003730 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00113423          	sd	ra,8(sp)
    80003738:	00813023          	sd	s0,0(sp)
    8000373c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	be4080e7          	jalr	-1052(ra) # 80001324 <thread_dispatch>
}
    80003748:	00813083          	ld	ra,8(sp)
    8000374c:	00013403          	ld	s0,0(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	00813023          	sd	s0,0(sp)
    80003764:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	cc0080e7          	jalr	-832(ra) # 80001428 <time_sleep>
}
    80003770:	00813083          	ld	ra,8(sp)
    80003774:	00013403          	ld	s0,0(sp)
    80003778:	01010113          	addi	sp,sp,16
    8000377c:	00008067          	ret

0000000080003780 <_ZN14PeriodicThread6runnerEPv>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    this->time = period;
}

void PeriodicThread::runner(void* pt)
{
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	00813823          	sd	s0,16(sp)
    8000378c:	00913423          	sd	s1,8(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	00050493          	mv	s1,a0
    PeriodicThread* pThread = (PeriodicThread*)pt;
    while(true)
    {
        pThread->periodicActivation();
    80003798:	0004b783          	ld	a5,0(s1)
    8000379c:	0187b783          	ld	a5,24(a5)
    800037a0:	00048513          	mv	a0,s1
    800037a4:	000780e7          	jalr	a5
        Thread::sleep(pThread->time);
    800037a8:	0204b503          	ld	a0,32(s1)
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	fac080e7          	jalr	-84(ra) # 80003758 <_ZN6Thread5sleepEm>
    while(true)
    800037b4:	fe5ff06f          	j	80003798 <_ZN14PeriodicThread6runnerEPv+0x18>

00000000800037b8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00813423          	sd	s0,8(sp)
    800037c0:	01010413          	addi	s0,sp,16
    800037c4:	00008797          	auipc	a5,0x8
    800037c8:	22478793          	addi	a5,a5,548 # 8000b9e8 <_ZTV6Thread+0x10>
    800037cc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800037d0:	00053423          	sd	zero,8(a0)
    f = body;
    800037d4:	00b53823          	sd	a1,16(a0)
    this->args = args;
    800037d8:	00c53c23          	sd	a2,24(a0)
}
    800037dc:	00813403          	ld	s0,8(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00813423          	sd	s0,8(sp)
    800037f0:	01010413          	addi	s0,sp,16
    800037f4:	00008797          	auipc	a5,0x8
    800037f8:	1f478793          	addi	a5,a5,500 # 8000b9e8 <_ZTV6Thread+0x10>
    800037fc:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80003800:	00000797          	auipc	a5,0x0
    80003804:	dd078793          	addi	a5,a5,-560 # 800035d0 <_ZN6Thread6runnerEPv>
    80003808:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    8000380c:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80003810:	00a53c23          	sd	a0,24(a0)
}
    80003814:	00813403          	ld	s0,8(sp)
    80003818:	01010113          	addi	sp,sp,16
    8000381c:	00008067          	ret

0000000080003820 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003820:	00853503          	ld	a0,8(a0)
    80003824:	02050663          	beqz	a0,80003850 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80003828:	ff010113          	addi	sp,sp,-16
    8000382c:	00113423          	sd	ra,8(sp)
    80003830:	00813023          	sd	s0,0(sp)
    80003834:	01010413          	addi	s0,sp,16
    return sem_wait((void *) myHandle);
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	b98080e7          	jalr	-1128(ra) # 800013d0 <sem_wait>
}
    80003840:	00813083          	ld	ra,8(sp)
    80003844:	00013403          	ld	s0,0(sp)
    80003848:	01010113          	addi	sp,sp,16
    8000384c:	00008067          	ret
        return -1;
    80003850:	fff00513          	li	a0,-1
}
    80003854:	00008067          	ret

0000000080003858 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00913423          	sd	s1,8(sp)
    80003868:	02010413          	addi	s0,sp,32
    8000386c:	00050493          	mv	s1,a0
    80003870:	00008797          	auipc	a5,0x8
    80003874:	1a078793          	addi	a5,a5,416 # 8000ba10 <_ZTV9Semaphore+0x10>
    80003878:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    8000387c:	00850513          	addi	a0,a0,8
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	aec080e7          	jalr	-1300(ra) # 8000136c <sem_open>
    if(retval != 0)
    80003888:	00050463          	beqz	a0,80003890 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    8000388c:	0004b423          	sd	zero,8(s1)
}
    80003890:	01813083          	ld	ra,24(sp)
    80003894:	01013403          	ld	s0,16(sp)
    80003898:	00813483          	ld	s1,8(sp)
    8000389c:	02010113          	addi	sp,sp,32
    800038a0:	00008067          	ret

00000000800038a4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800038a4:	00853503          	ld	a0,8(a0)
    800038a8:	02050663          	beqz	a0,800038d4 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800038ac:	ff010113          	addi	sp,sp,-16
    800038b0:	00113423          	sd	ra,8(sp)
    800038b4:	00813023          	sd	s0,0(sp)
    800038b8:	01010413          	addi	s0,sp,16
    return sem_signal((void*)myHandle);
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	b40080e7          	jalr	-1216(ra) # 800013fc <sem_signal>
}
    800038c4:	00813083          	ld	ra,8(sp)
    800038c8:	00013403          	ld	s0,0(sp)
    800038cc:	01010113          	addi	sp,sp,16
    800038d0:	00008067          	ret
        return -1;
    800038d4:	fff00513          	li	a0,-1
}
    800038d8:	00008067          	ret

00000000800038dc <_ZN7Console4getcEv>:
char Console::getc() {
    800038dc:	ff010113          	addi	sp,sp,-16
    800038e0:	00813423          	sd	s0,8(sp)
    800038e4:	01010413          	addi	s0,sp,16
}
    800038e8:	00000513          	li	a0,0
    800038ec:	00813403          	ld	s0,8(sp)
    800038f0:	01010113          	addi	sp,sp,16
    800038f4:	00008067          	ret

00000000800038f8 <_ZN7Console4putcEc>:
void Console::putc(char) {
    800038f8:	ff010113          	addi	sp,sp,-16
    800038fc:	00813423          	sd	s0,8(sp)
    80003900:	01010413          	addi	s0,sp,16
}
    80003904:	00813403          	ld	s0,8(sp)
    80003908:	01010113          	addi	sp,sp,16
    8000390c:	00008067          	ret

0000000080003910 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, (void*)this) {
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00113c23          	sd	ra,24(sp)
    80003918:	00813823          	sd	s0,16(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	01213023          	sd	s2,0(sp)
    80003924:	02010413          	addi	s0,sp,32
    80003928:	00050493          	mv	s1,a0
    8000392c:	00058913          	mv	s2,a1
    80003930:	00050613          	mv	a2,a0
    80003934:	00000597          	auipc	a1,0x0
    80003938:	e4c58593          	addi	a1,a1,-436 # 80003780 <_ZN14PeriodicThread6runnerEPv>
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	e7c080e7          	jalr	-388(ra) # 800037b8 <_ZN6ThreadC1EPFvPvES0_>
    80003944:	00008797          	auipc	a5,0x8
    80003948:	03c78793          	addi	a5,a5,60 # 8000b980 <_ZTV14PeriodicThread+0x10>
    8000394c:	00f4b023          	sd	a5,0(s1)
    this->time = period;
    80003950:	0324b023          	sd	s2,32(s1)
}
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	00013903          	ld	s2,0(sp)
    80003964:	02010113          	addi	sp,sp,32
    80003968:	00008067          	ret

000000008000396c <_Z14periodicRunnerPv>:

#include "../h/threadWrapperFunctions.hpp"
#include "../h/syscall_cpp.hpp"

void periodicRunner(void* t)
{
    8000396c:	ff010113          	addi	sp,sp,-16
    80003970:	00813423          	sd	s0,8(sp)
    80003974:	01010413          	addi	s0,sp,16
    while(true)
    {
        pthr->periodicActivation();
        Thread::sleep()
    }*/
}
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <_Z13regularRunnerPv>:

void regularRunner(void* t)
{
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00813423          	sd	s0,8(sp)
    8000398c:	01010413          	addi	s0,sp,16
    //Thread* thr = (Thread*)t;
    //thr->run();
}
    80003990:	00813403          	ld	s0,8(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_ZN5Riscv15userMainWrapperEPv>:
    endSystem();

    Riscv::printString("End...");
}

void Riscv::userMainWrapper(void* ) {
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00113423          	sd	ra,8(sp)
    800039a4:	00813023          	sd	s0,0(sp)
    800039a8:	01010413          	addi	s0,sp,16
    userMain();
    800039ac:	00002097          	auipc	ra,0x2
    800039b0:	76c080e7          	jalr	1900(ra) # 80006118 <_Z8userMainv>
}
    800039b4:	00813083          	ld	ra,8(sp)
    800039b8:	00013403          	ld	s0,0(sp)
    800039bc:	01010113          	addi	sp,sp,16
    800039c0:	00008067          	ret

00000000800039c4 <_ZN5Riscv10initSystemEv>:
{
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	00813023          	sd	s0,0(sp)
    800039d0:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800039d4:	00008797          	auipc	a5,0x8
    800039d8:	0fc7b783          	ld	a5,252(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800039dc:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	37c080e7          	jalr	892(ra) # 80002d5c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	4e0080e7          	jalr	1248(ra) # 80002ec8 <_ZN8KConsole10initializeEv>
}
    800039f0:	00813083          	ld	ra,8(sp)
    800039f4:	00013403          	ld	s0,0(sp)
    800039f8:	01010113          	addi	sp,sp,16
    800039fc:	00008067          	ret

0000000080003a00 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813423          	sd	s0,8(sp)
    80003a08:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a0c:	00200793          	li	a5,2
    80003a10:	1007a073          	csrs	sstatus,a5
}
    80003a14:	00813403          	ld	s0,8(sp)
    80003a18:	01010113          	addi	sp,sp,16
    80003a1c:	00008067          	ret

0000000080003a20 <_ZN5Riscv17disableInterruptsEv>:
{
    80003a20:	ff010113          	addi	sp,sp,-16
    80003a24:	00813423          	sd	s0,8(sp)
    80003a28:	01010413          	addi	s0,sp,16

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a2c:	00200793          	li	a5,2
    80003a30:	1007b073          	csrc	sstatus,a5
}
    80003a34:	00813403          	ld	s0,8(sp)
    80003a38:	01010113          	addi	sp,sp,16
    80003a3c:	00008067          	ret

0000000080003a40 <_ZN5Riscv9endSystemEv>:
{
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00113423          	sd	ra,8(sp)
    80003a48:	00813023          	sd	s0,0(sp)
    80003a4c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	fd0080e7          	jalr	-48(ra) # 80003a20 <_ZN5Riscv17disableInterruptsEv>
}
    80003a58:	00813083          	ld	ra,8(sp)
    80003a5c:	00013403          	ld	s0,0(sp)
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret

0000000080003a68 <_ZN5Riscv10popSppSpieEv>:
{
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00813423          	sd	s0,8(sp)
    80003a70:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003a74:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003a78:	10200073          	sret
}
    80003a7c:	00813403          	ld	s0,8(sp)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret

0000000080003a88 <_ZN5Riscv11printStringEPKc>:
{
    80003a88:	fd010113          	addi	sp,sp,-48
    80003a8c:	02113423          	sd	ra,40(sp)
    80003a90:	02813023          	sd	s0,32(sp)
    80003a94:	00913c23          	sd	s1,24(sp)
    80003a98:	01213823          	sd	s2,16(sp)
    80003a9c:	03010413          	addi	s0,sp,48
    80003aa0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003aa4:	100027f3          	csrr	a5,sstatus
    80003aa8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003aac:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ab0:	00200793          	li	a5,2
    80003ab4:	1007b073          	csrc	sstatus,a5
    while (*string != '\0')
    80003ab8:	0004c503          	lbu	a0,0(s1)
    80003abc:	00050a63          	beqz	a0,80003ad0 <_ZN5Riscv11printStringEPKc+0x48>
        __putc(*string);
    80003ac0:	00005097          	auipc	ra,0x5
    80003ac4:	abc080e7          	jalr	-1348(ra) # 8000857c <__putc>
        string++;
    80003ac8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003acc:	fedff06f          	j	80003ab8 <_ZN5Riscv11printStringEPKc+0x30>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003ad0:	0009091b          	sext.w	s2,s2
    80003ad4:	00297913          	andi	s2,s2,2
    80003ad8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003adc:	10092073          	csrs	sstatus,s2
}
    80003ae0:	02813083          	ld	ra,40(sp)
    80003ae4:	02013403          	ld	s0,32(sp)
    80003ae8:	01813483          	ld	s1,24(sp)
    80003aec:	01013903          	ld	s2,16(sp)
    80003af0:	03010113          	addi	sp,sp,48
    80003af4:	00008067          	ret

0000000080003af8 <_ZN5Riscv12printIntegerEm>:
{
    80003af8:	fc010113          	addi	sp,sp,-64
    80003afc:	02113c23          	sd	ra,56(sp)
    80003b00:	02813823          	sd	s0,48(sp)
    80003b04:	02913423          	sd	s1,40(sp)
    80003b08:	03213023          	sd	s2,32(sp)
    80003b0c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b10:	100027f3          	csrr	a5,sstatus
    80003b14:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003b18:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b1c:	00200793          	li	a5,2
    80003b20:	1007b073          	csrc	sstatus,a5
        x = num;
    80003b24:	0005051b          	sext.w	a0,a0
    i = 0;
    80003b28:	00000493          	li	s1,0
        buf[i++] = digits[x%10];
    80003b2c:	00a00613          	li	a2,10
    80003b30:	02c5773b          	remuw	a4,a0,a2
    80003b34:	02071693          	slli	a3,a4,0x20
    80003b38:	0206d693          	srli	a3,a3,0x20
    80003b3c:	00005717          	auipc	a4,0x5
    80003b40:	7d470713          	addi	a4,a4,2004 # 80009310 <_ZZN5Riscv12printIntegerEmE6digits>
    80003b44:	00d70733          	add	a4,a4,a3
    80003b48:	00074703          	lbu	a4,0(a4)
    80003b4c:	fe040693          	addi	a3,s0,-32
    80003b50:	009687b3          	add	a5,a3,s1
    80003b54:	0014849b          	addiw	s1,s1,1
    80003b58:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80003b5c:	0005071b          	sext.w	a4,a0
    80003b60:	02c5553b          	divuw	a0,a0,a2
    80003b64:	00900793          	li	a5,9
    80003b68:	fce7e2e3          	bltu	a5,a4,80003b2c <_ZN5Riscv12printIntegerEm+0x34>
    while(--i >= 0)
    80003b6c:	fff4849b          	addiw	s1,s1,-1
    80003b70:	0004ce63          	bltz	s1,80003b8c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80003b74:	fe040793          	addi	a5,s0,-32
    80003b78:	009787b3          	add	a5,a5,s1
    80003b7c:	ff07c503          	lbu	a0,-16(a5)
    80003b80:	00005097          	auipc	ra,0x5
    80003b84:	9fc080e7          	jalr	-1540(ra) # 8000857c <__putc>
    80003b88:	fe5ff06f          	j	80003b6c <_ZN5Riscv12printIntegerEm+0x74>
    __putc('\n');
    80003b8c:	00a00513          	li	a0,10
    80003b90:	00005097          	auipc	ra,0x5
    80003b94:	9ec080e7          	jalr	-1556(ra) # 8000857c <__putc>
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003b98:	0009091b          	sext.w	s2,s2
    80003b9c:	00297913          	andi	s2,s2,2
    80003ba0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ba4:	10092073          	csrs	sstatus,s2
}
    80003ba8:	03813083          	ld	ra,56(sp)
    80003bac:	03013403          	ld	s0,48(sp)
    80003bb0:	02813483          	ld	s1,40(sp)
    80003bb4:	02013903          	ld	s2,32(sp)
    80003bb8:	04010113          	addi	sp,sp,64
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003bc0:	f8010113          	addi	sp,sp,-128
    80003bc4:	06113c23          	sd	ra,120(sp)
    80003bc8:	06813823          	sd	s0,112(sp)
    80003bcc:	06913423          	sd	s1,104(sp)
    80003bd0:	07213023          	sd	s2,96(sp)
    80003bd4:	05313c23          	sd	s3,88(sp)
    80003bd8:	05413823          	sd	s4,80(sp)
    80003bdc:	05513423          	sd	s5,72(sp)
    80003be0:	05613023          	sd	s6,64(sp)
    80003be4:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003be8:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003bec:	142027f3          	csrr	a5,scause
    80003bf0:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80003bf4:	f8043783          	ld	a5,-128(s0)
    switch(scause)
    80003bf8:	fff00713          	li	a4,-1
    80003bfc:	03f71713          	slli	a4,a4,0x3f
    80003c00:	00170713          	addi	a4,a4,1
    80003c04:	0ee78663          	beq	a5,a4,80003cf0 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    80003c08:	fff00713          	li	a4,-1
    80003c0c:	03f71713          	slli	a4,a4,0x3f
    80003c10:	00170713          	addi	a4,a4,1
    80003c14:	08f76e63          	bltu	a4,a5,80003cb0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80003c18:	ff878793          	addi	a5,a5,-8
    80003c1c:	00100713          	li	a4,1
    80003c20:	0af76463          	bltu	a4,a5,80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003c24:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c28:	14102773          	csrr	a4,sepc
    80003c2c:	f8e43c23          	sd	a4,-104(s0)
    return sepc;
    80003c30:	f9843903          	ld	s2,-104(s0)
            sepc+=4;
    80003c34:	00490913          	addi	s2,s2,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80003c38:	00100713          	li	a4,1
    80003c3c:	14e78263          	beq	a5,a4,80003d80 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003c40:	00200713          	li	a4,2
    80003c44:	14e78c63          	beq	a5,a4,80003d9c <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
            else if(operation == PCB::THREAD_CREATE)
    80003c48:	01100713          	li	a4,17
    80003c4c:	16e78263          	beq	a5,a4,80003db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            else if(operation == PCB::THREAD_DISPATCH)
    80003c50:	01300713          	li	a4,19
    80003c54:	1ae78463          	beq	a5,a4,80003dfc <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
            else if(operation == PCB::THREAD_EXIT)
    80003c58:	01200713          	li	a4,18
    80003c5c:	1ce78463          	beq	a5,a4,80003e24 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
            else if(operation == PCB::TIME_SLEEP)
    80003c60:	03100713          	li	a4,49
    80003c64:	20e78863          	beq	a5,a4,80003e74 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
            else if(operation == KSemaphore::SEM_OPEN)
    80003c68:	02100713          	li	a4,33
    80003c6c:	24e78863          	beq	a5,a4,80003ebc <_ZN5Riscv20handleSupervisorTrapEv+0x2fc>
            else if(operation == KSemaphore::SEM_WAIT)
    80003c70:	02300713          	li	a4,35
    80003c74:	28e78263          	beq	a5,a4,80003ef8 <_ZN5Riscv20handleSupervisorTrapEv+0x338>
            else if(operation == KSemaphore::SEM_SIGNAL)
    80003c78:	02400713          	li	a4,36
    80003c7c:	2ae78063          	beq	a5,a4,80003f1c <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
            else if(operation == KSemaphore::SEM_CLOSE)
    80003c80:	02200713          	li	a4,34
    80003c84:	10e79863          	bne	a5,a4,80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003c88:	00058493          	mv	s1,a1
                delete kSem;
    80003c8c:	00048e63          	beqz	s1,80003ca8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	8f0080e7          	jalr	-1808(ra) # 80004584 <_ZN10KSemaphoreD1Ev>
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	a14080e7          	jalr	-1516(ra) # 800046b4 <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    80003ca8:	00000513          	li	a0,0
    80003cac:	0e80006f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    switch(scause)
    80003cb0:	fff00713          	li	a4,-1
    80003cb4:	03f71713          	slli	a4,a4,0x3f
    80003cb8:	00970713          	addi	a4,a4,9
    80003cbc:	00e79663          	bne	a5,a4,80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            console_handler();
    80003cc0:	00005097          	auipc	ra,0x5
    80003cc4:	930080e7          	jalr	-1744(ra) # 800085f0 <console_handler>
}
    80003cc8:	07813083          	ld	ra,120(sp)
    80003ccc:	07013403          	ld	s0,112(sp)
    80003cd0:	06813483          	ld	s1,104(sp)
    80003cd4:	06013903          	ld	s2,96(sp)
    80003cd8:	05813983          	ld	s3,88(sp)
    80003cdc:	05013a03          	ld	s4,80(sp)
    80003ce0:	04813a83          	ld	s5,72(sp)
    80003ce4:	04013b03          	ld	s6,64(sp)
    80003ce8:	08010113          	addi	sp,sp,128
    80003cec:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003cf0:	00200793          	li	a5,2
    80003cf4:	1447b073          	csrc	sip,a5
            total++;
    80003cf8:	00008797          	auipc	a5,0x8
    80003cfc:	ec878793          	addi	a5,a5,-312 # 8000bbc0 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003d00:	0007b503          	ld	a0,0(a5)
    80003d04:	00150513          	addi	a0,a0,1
    80003d08:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	dec080e7          	jalr	-532(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
            PCB::timeSliceCounter++;
    80003d14:	00008497          	auipc	s1,0x8
    80003d18:	dc44b483          	ld	s1,-572(s1) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003d1c:	0004b783          	ld	a5,0(s1)
    80003d20:	00178793          	addi	a5,a5,1
    80003d24:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	4c0080e7          	jalr	1216(ra) # 800031e8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003d30:	00008797          	auipc	a5,0x8
    80003d34:	db87b783          	ld	a5,-584(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003d38:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003d3c:	0107b783          	ld	a5,16(a5)
    80003d40:	0004b703          	ld	a4,0(s1)
    80003d44:	f8f762e3          	bltu	a4,a5,80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003d48:	141027f3          	csrr	a5,sepc
    80003d4c:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80003d50:	f9043483          	ld	s1,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003d54:	100027f3          	csrr	a5,sstatus
    80003d58:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    80003d5c:	f8843903          	ld	s2,-120(s0)
                PCB::timeSliceCounter = 0;
    80003d60:	00008797          	auipc	a5,0x8
    80003d64:	d787b783          	ld	a5,-648(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003d68:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	ee4080e7          	jalr	-284(ra) # 80002c50 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d74:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d78:	14149073          	csrw	sepc,s1
}
    80003d7c:	f4dff06f          	j	80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80003d80:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80003d84:	00651513          	slli	a0,a0,0x6
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	664080e7          	jalr	1636(ra) # 800043ec <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003d90:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d94:	14191073          	csrw	sepc,s2
}
    80003d98:	f31ff06f          	j	80003cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003d9c:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	674080e7          	jalr	1652(ra) # 80004414 <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003da8:	00050513          	mv	a0,a0
    80003dac:	fe9ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003db0:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80003db4:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80003db8:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003dbc:	05000513          	li	a0,80
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	f20080e7          	jalr	-224(ra) # 80002ce0 <_ZN3PCBnwEm>
    80003dc8:	00050993          	mv	s3,a0
    80003dcc:	00200713          	li	a4,2
    80003dd0:	00048693          	mv	a3,s1
    80003dd4:	000b0613          	mv	a2,s6
    80003dd8:	000a8593          	mv	a1,s5
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	dcc080e7          	jalr	-564(ra) # 80002ba8 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003de4:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80003de8:	00098663          	beqz	s3,80003df4 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                    __asm__ volatile("li a0, 0");
    80003dec:	00000513          	li	a0,0
    80003df0:	fa5ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003df4:	fff00513          	li	a0,-1
    80003df8:	f9dff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003dfc:	100027f3          	csrr	a5,sstatus
    80003e00:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80003e04:	fa043483          	ld	s1,-96(s0)
                PCB::timeSliceCounter = 0;
    80003e08:	00008797          	auipc	a5,0x8
    80003e0c:	cd07b783          	ld	a5,-816(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e10:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	e3c080e7          	jalr	-452(ra) # 80002c50 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003e1c:	10049073          	csrw	sstatus,s1
}
    80003e20:	f75ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                Riscv::printString("Exiting thread...\n");
    80003e24:	00005517          	auipc	a0,0x5
    80003e28:	4cc50513          	addi	a0,a0,1228 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	c5c080e7          	jalr	-932(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003e34:	100027f3          	csrr	a5,sstatus
    80003e38:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003e3c:	fa843483          	ld	s1,-88(s0)
                PCB::timeSliceCounter = 0;
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	c987b783          	ld	a5,-872(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e48:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003e4c:	00008797          	auipc	a5,0x8
    80003e50:	c9c7b783          	ld	a5,-868(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e54:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    80003e58:	00300713          	li	a4,3
    80003e5c:	02e7ac23          	sw	a4,56(a5)
                PCB::dispatch();
    80003e60:	fffff097          	auipc	ra,0xfffff
    80003e64:	df0080e7          	jalr	-528(ra) # 80002c50 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003e68:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0");
    80003e6c:	00000513          	li	a0,0
    80003e70:	f25ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80003e74:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003e78:	100027f3          	csrr	a5,sstatus
    80003e7c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003e80:	fb043483          	ld	s1,-80(s0)
                PCB::timeSliceCounter = 0;
    80003e84:	00008797          	auipc	a5,0x8
    80003e88:	c547b783          	ld	a5,-940(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e8c:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    80003e90:	00008797          	auipc	a5,0x8
    80003e94:	c587b783          	ld	a5,-936(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e98:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80003e9c:	00e7bc23          	sd	a4,24(a5)
                SleepPCBList::insertSleepingPCB();
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	2b4080e7          	jalr	692(ra) # 80003154 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	da8080e7          	jalr	-600(ra) # 80002c50 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003eb0:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0x0");
    80003eb4:	00000513          	li	a0,0
    80003eb8:	eddff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003ebc:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003ec0:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    80003ec4:	01800513          	li	a0,24
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	7c4080e7          	jalr	1988(ra) # 8000468c <_ZN10KSemaphorenwEm>
    80003ed0:	00050493          	mv	s1,a0
    80003ed4:	000a059b          	sext.w	a1,s4
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	564080e7          	jalr	1380(ra) # 8000443c <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003ee0:	0099b023          	sd	s1,0(s3)
                if(newSem == 0)
    80003ee4:	00048663          	beqz	s1,80003ef0 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
                        __asm__ volatile("li a0, 0");
    80003ee8:	00000513          	li	a0,0
    80003eec:	ea9ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003ef0:	fff00513          	li	a0,-1
    80003ef4:	ea1ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ef8:	100027f3          	csrr	a5,sstatus
    80003efc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80003f00:	fb843483          	ld	s1,-72(s0)
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003f04:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	5dc080e7          	jalr	1500(ra) # 800044e4 <_ZN10KSemaphore4waitEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003f10:	10049073          	csrw	sstatus,s1
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003f14:	00050513          	mv	a0,a0
    80003f18:	e7dff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003f1c:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	724080e7          	jalr	1828(ra) # 80004644 <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003f28:	00050513          	mv	a0,a0
    80003f2c:	e69ff06f          	j	80003d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    80003f30:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003f34:	00098513          	mv	a0,s3
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	dd0080e7          	jalr	-560(ra) # 80002d08 <_ZN3PCBdlEPv>
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00009097          	auipc	ra,0x9
    80003f48:	d94080e7          	jalr	-620(ra) # 8000ccd8 <_Unwind_Resume>
    80003f4c:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003f50:	00048513          	mv	a0,s1
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	760080e7          	jalr	1888(ra) # 800046b4 <_ZN10KSemaphoredlEPv>
    80003f5c:	00090513          	mv	a0,s2
    80003f60:	00009097          	auipc	ra,0x9
    80003f64:	d78080e7          	jalr	-648(ra) # 8000ccd8 <_Unwind_Resume>

0000000080003f68 <_ZN5Riscv10kernelMainEv>:
{
    80003f68:	fe010113          	addi	sp,sp,-32
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00913423          	sd	s1,8(sp)
    80003f78:	01213023          	sd	s2,0(sp)
    80003f7c:	02010413          	addi	s0,sp,32
    initSystem();
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	a44080e7          	jalr	-1468(ra) # 800039c4 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003f88:	00000097          	auipc	ra,0x0
    80003f8c:	a78080e7          	jalr	-1416(ra) # 80003a00 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003f90:	00001537          	lui	a0,0x1
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	458080e7          	jalr	1112(ra) # 800043ec <_Z7kmallocm>
    80003f9c:	00050913          	mv	s2,a0
    80003fa0:	05000513          	li	a0,80
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	d3c080e7          	jalr	-708(ra) # 80002ce0 <_ZN3PCBnwEm>
    80003fac:	00050493          	mv	s1,a0
    80003fb0:	00200713          	li	a4,2
    80003fb4:	00090693          	mv	a3,s2
    80003fb8:	00000613          	li	a2,0
    80003fbc:	00000597          	auipc	a1,0x0
    80003fc0:	9e058593          	addi	a1,a1,-1568 # 8000399c <_ZN5Riscv15userMainWrapperEPv>
    80003fc4:	fffff097          	auipc	ra,0xfffff
    80003fc8:	be4080e7          	jalr	-1052(ra) # 80002ba8 <_ZN3PCBC1EPFvPvES0_S0_m>
    State getState() {return state;}
    80003fcc:	0384a703          	lw	a4,56(s1)
    while(userPCB->getState() != PCB::FINISHED)
    80003fd0:	00300793          	li	a5,3
    80003fd4:	00f70863          	beq	a4,a5,80003fe4 <_ZN5Riscv10kernelMainEv+0x7c>
        thread_dispatch();
    80003fd8:	ffffd097          	auipc	ra,0xffffd
    80003fdc:	34c080e7          	jalr	844(ra) # 80001324 <thread_dispatch>
    while(userPCB->getState() != PCB::FINISHED)
    80003fe0:	fedff06f          	j	80003fcc <_ZN5Riscv10kernelMainEv+0x64>
    disableInterrupts();
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	a3c080e7          	jalr	-1476(ra) # 80003a20 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	a54080e7          	jalr	-1452(ra) # 80003a40 <_ZN5Riscv9endSystemEv>
    Riscv::printString("End...");
    80003ff4:	00005517          	auipc	a0,0x5
    80003ff8:	31450513          	addi	a0,a0,788 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003ffc:	00000097          	auipc	ra,0x0
    80004000:	a8c080e7          	jalr	-1396(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
}
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	00013903          	ld	s2,0(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret
    8000401c:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80004020:	00048513          	mv	a0,s1
    80004024:	fffff097          	auipc	ra,0xfffff
    80004028:	ce4080e7          	jalr	-796(ra) # 80002d08 <_ZN3PCBdlEPv>
    8000402c:	00090513          	mv	a0,s2
    80004030:	00009097          	auipc	ra,0x9
    80004034:	ca8080e7          	jalr	-856(ra) # 8000ccd8 <_Unwind_Resume>

0000000080004038 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80004038:	ff010113          	addi	sp,sp,-16
    8000403c:	00813423          	sd	s0,8(sp)
    80004040:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004044:	00008717          	auipc	a4,0x8
    80004048:	b8472703          	lw	a4,-1148(a4) # 8000bbc8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000404c:	00100793          	li	a5,1
    80004050:	04f70263          	beq	a4,a5,80004094 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80004054:	00008797          	auipc	a5,0x8
    80004058:	b7478793          	addi	a5,a5,-1164 # 8000bbc8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000405c:	00100713          	li	a4,1
    80004060:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004064:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80004068:	00008717          	auipc	a4,0x8
    8000406c:	a6073703          	ld	a4,-1440(a4) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004070:	00073703          	ld	a4,0(a4)
    80004074:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80004078:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    8000407c:	00008797          	auipc	a5,0x8
    80004080:	a747b783          	ld	a5,-1420(a5) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004084:	0007b783          	ld	a5,0(a5)
    80004088:	40e787b3          	sub	a5,a5,a4
    8000408c:	ff178793          	addi	a5,a5,-15
    80004090:	00f73023          	sd	a5,0(a4)
}
    80004094:	00813403          	ld	s0,8(sp)
    80004098:	01010113          	addi	sp,sp,16
    8000409c:	00008067          	ret

00000000800040a0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800040a0:	fe010113          	addi	sp,sp,-32
    800040a4:	00113c23          	sd	ra,24(sp)
    800040a8:	00813823          	sd	s0,16(sp)
    800040ac:	00913423          	sd	s1,8(sp)
    800040b0:	01213023          	sd	s2,0(sp)
    800040b4:	02010413          	addi	s0,sp,32
    800040b8:	00050493          	mv	s1,a0
    800040bc:	00058913          	mv	s2,a1
    initMemory();
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	f78080e7          	jalr	-136(ra) # 80004038 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800040c8:	00008797          	auipc	a5,0x8
    800040cc:	b087b783          	ld	a5,-1272(a5) # 8000bbd0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800040d0:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800040d4:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800040d8:	00000713          	li	a4,0
    while(curr != 0)
    800040dc:	00078c63          	beqz	a5,800040f4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040e0:	00f4e863          	bltu	s1,a5,800040f0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800040e4:	00078713          	mv	a4,a5
        curr = curr->next;
    800040e8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040ec:	ff1ff06f          	j	800040dc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800040f0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040f4:	02070063          	beqz	a4,80004114 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800040f8:	00973423          	sd	s1,8(a4)
}
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	00013903          	ld	s2,0(sp)
    8000410c:	02010113          	addi	sp,sp,32
    80004110:	00008067          	ret
        headAllocated = newAllocated;
    80004114:	00008797          	auipc	a5,0x8
    80004118:	aa97be23          	sd	s1,-1348(a5) # 8000bbd0 <_ZN15MemoryAllocator13headAllocatedE>
    8000411c:	fe1ff06f          	j	800040fc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004120 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004120:	fe010113          	addi	sp,sp,-32
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	00813823          	sd	s0,16(sp)
    8000412c:	00913423          	sd	s1,8(sp)
    80004130:	01213023          	sd	s2,0(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	00050913          	mv	s2,a0
    initMemory();
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	efc080e7          	jalr	-260(ra) # 80004038 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004144:	00008497          	auipc	s1,0x8
    80004148:	a944b483          	ld	s1,-1388(s1) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000414c:	00000713          	li	a4,0
    while(curr != 0)
    80004150:	0a048863          	beqz	s1,80004200 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80004154:	0004b783          	ld	a5,0(s1)
    80004158:	0127f863          	bgeu	a5,s2,80004168 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    8000415c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004160:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004164:	fedff06f          	j	80004150 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004168:	01090693          	addi	a3,s2,16
    8000416c:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80004170:	00008617          	auipc	a2,0x8
    80004174:	98063603          	ld	a2,-1664(a2) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004178:	00063603          	ld	a2,0(a2)
    8000417c:	04d66c63          	bltu	a2,a3,800041d4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80004180:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80004184:	01000613          	li	a2,16
    80004188:	02f67663          	bgeu	a2,a5,800041b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    8000418c:	0084b603          	ld	a2,8(s1)
    80004190:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004194:	ff078793          	addi	a5,a5,-16
    80004198:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    8000419c:	00070663          	beqz	a4,800041a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800041a0:	00d73423          	sd	a3,8(a4)
    800041a4:	0380006f          	j	800041dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    800041a8:	00008797          	auipc	a5,0x8
    800041ac:	a2d7b823          	sd	a3,-1488(a5) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    800041b0:	02c0006f          	j	800041dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    800041b4:	00070863          	beqz	a4,800041c4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    800041b8:	0084b783          	ld	a5,8(s1)
    800041bc:	00f73423          	sd	a5,8(a4)
    800041c0:	01c0006f          	j	800041dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    800041c4:	0084b783          	ld	a5,8(s1)
    800041c8:	00008717          	auipc	a4,0x8
    800041cc:	a0f73823          	sd	a5,-1520(a4) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    800041d0:	00c0006f          	j	800041dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    800041d4:	02070063          	beqz	a4,800041f4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    800041d8:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    800041dc:	00090593          	mv	a1,s2
    800041e0:	00048513          	mv	a0,s1
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	ebc080e7          	jalr	-324(ra) # 800040a0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800041ec:	01048513          	addi	a0,s1,16
            break;
    800041f0:	0140006f          	j	80004204 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    800041f4:	00008797          	auipc	a5,0x8
    800041f8:	9e07b223          	sd	zero,-1564(a5) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    800041fc:	fe1ff06f          	j	800041dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004200:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004204:	01813083          	ld	ra,24(sp)
    80004208:	01013403          	ld	s0,16(sp)
    8000420c:	00813483          	ld	s1,8(sp)
    80004210:	00013903          	ld	s2,0(sp)
    80004214:	02010113          	addi	sp,sp,32
    80004218:	00008067          	ret

000000008000421c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000421c:	ff010113          	addi	sp,sp,-16
    80004220:	00113423          	sd	ra,8(sp)
    80004224:	00813023          	sd	s0,0(sp)
    80004228:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000422c:	00000097          	auipc	ra,0x0
    80004230:	ef4080e7          	jalr	-268(ra) # 80004120 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004234:	00813083          	ld	ra,8(sp)
    80004238:	00013403          	ld	s0,0(sp)
    8000423c:	01010113          	addi	sp,sp,16
    80004240:	00008067          	ret

0000000080004244 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	01213023          	sd	s2,0(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    80004260:	00058913          	mv	s2,a1
    initMemory();
    80004264:	00000097          	auipc	ra,0x0
    80004268:	dd4080e7          	jalr	-556(ra) # 80004038 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000426c:	00008797          	auipc	a5,0x8
    80004270:	96c7b783          	ld	a5,-1684(a5) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004274:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80004278:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    8000427c:	00000713          	li	a4,0
    while(curr != 0)
    80004280:	00078c63          	beqz	a5,80004298 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004284:	00f4e863          	bltu	s1,a5,80004294 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004288:	00078713          	mv	a4,a5
        curr = curr->next;
    8000428c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004290:	ff1ff06f          	j	80004280 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004294:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004298:	04070663          	beqz	a4,800042e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000429c:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800042a0:	0084b783          	ld	a5,8(s1)
    800042a4:	00078a63          	beqz	a5,800042b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800042a8:	0004b603          	ld	a2,0(s1)
    800042ac:	01060693          	addi	a3,a2,16
    800042b0:	00d486b3          	add	a3,s1,a3
    800042b4:	02d78e63          	beq	a5,a3,800042f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
        //Riscv::printString("Merged front\n");
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800042b8:	00070a63          	beqz	a4,800042cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800042bc:	00073683          	ld	a3,0(a4)
    800042c0:	01068793          	addi	a5,a3,16
    800042c4:	00f707b3          	add	a5,a4,a5
    800042c8:	04978263          	beq	a5,s1,8000430c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        //Riscv::printString("Merged back\n");
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	00013903          	ld	s2,0(sp)
    800042dc:	02010113          	addi	sp,sp,32
    800042e0:	00008067          	ret
        headFree = newSegment;
    800042e4:	00008797          	auipc	a5,0x8
    800042e8:	8e97ba23          	sd	s1,-1804(a5) # 8000bbd8 <_ZN15MemoryAllocator8headFreeE>
    800042ec:	fb5ff06f          	j	800042a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800042f0:	0007b683          	ld	a3,0(a5)
    800042f4:	00d60633          	add	a2,a2,a3
    800042f8:	01060613          	addi	a2,a2,16
    800042fc:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004300:	0087b783          	ld	a5,8(a5)
    80004304:	00f4b423          	sd	a5,8(s1)
    80004308:	fb1ff06f          	j	800042b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000430c:	0004b783          	ld	a5,0(s1)
    80004310:	00f686b3          	add	a3,a3,a5
    80004314:	01068693          	addi	a3,a3,16
    80004318:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000431c:	0084b783          	ld	a5,8(s1)
    80004320:	00f73423          	sd	a5,8(a4)
}
    80004324:	fa9ff06f          	j	800042cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004328 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004328:	fe010113          	addi	sp,sp,-32
    8000432c:	00113c23          	sd	ra,24(sp)
    80004330:	00813823          	sd	s0,16(sp)
    80004334:	00913423          	sd	s1,8(sp)
    80004338:	01213023          	sd	s2,0(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	00050913          	mv	s2,a0
    initMemory();
    80004344:	00000097          	auipc	ra,0x0
    80004348:	cf4080e7          	jalr	-780(ra) # 80004038 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000434c:	00008497          	auipc	s1,0x8
    80004350:	8844b483          	ld	s1,-1916(s1) # 8000bbd0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004354:	00000713          	li	a4,0
    while(curr != 0)
    80004358:	02048a63          	beqz	s1,8000438c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    8000435c:	01048793          	addi	a5,s1,16
    80004360:	01278863          	beq	a5,s2,80004370 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004364:	00048713          	mv	a4,s1
        curr = curr->next;
    80004368:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000436c:	fedff06f          	j	80004358 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004370:	02070e63          	beqz	a4,800043ac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004374:	0084b783          	ld	a5,8(s1)
    80004378:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    8000437c:	0004b583          	ld	a1,0(s1)
    80004380:	00048513          	mv	a0,s1
    80004384:	00000097          	auipc	ra,0x0
    80004388:	ec0080e7          	jalr	-320(ra) # 80004244 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    8000438c:	02048863          	beqz	s1,800043bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004390:	00000513          	li	a0,0
    else
        return 1;
}
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	00013903          	ld	s2,0(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	00008067          	ret
                headAllocated = curr->next;
    800043ac:	0084b783          	ld	a5,8(s1)
    800043b0:	00008717          	auipc	a4,0x8
    800043b4:	82f73023          	sd	a5,-2016(a4) # 8000bbd0 <_ZN15MemoryAllocator13headAllocatedE>
    800043b8:	fc5ff06f          	j	8000437c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800043bc:	00100513          	li	a0,1
    800043c0:	fd5ff06f          	j	80004394 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800043c4 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00113423          	sd	ra,8(sp)
    800043cc:	00813023          	sd	s0,0(sp)
    800043d0:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	f54080e7          	jalr	-172(ra) # 80004328 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800043dc:	00813083          	ld	ra,8(sp)
    800043e0:	00013403          	ld	s0,0(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret

00000000800043ec <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    800043ec:	ff010113          	addi	sp,sp,-16
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	00813023          	sd	s0,0(sp)
    800043f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	e20080e7          	jalr	-480(ra) # 8000421c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004404:	00813083          	ld	ra,8(sp)
    80004408:	00013403          	ld	s0,0(sp)
    8000440c:	01010113          	addi	sp,sp,16
    80004410:	00008067          	ret

0000000080004414 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80004414:	ff010113          	addi	sp,sp,-16
    80004418:	00113423          	sd	ra,8(sp)
    8000441c:	00813023          	sd	s0,0(sp)
    80004420:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004424:	00000097          	auipc	ra,0x0
    80004428:	fa0080e7          	jalr	-96(ra) # 800043c4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00813423          	sd	s0,8(sp)
    80004444:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004448:	00b52a23          	sw	a1,20(a0)
    8000444c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004450:	00053423          	sd	zero,8(a0)
    80004454:	00053023          	sd	zero,0(a0)
}
    80004458:	00813403          	ld	s0,8(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00813423          	sd	s0,8(sp)
    8000446c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004470:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004474:	00053783          	ld	a5,0(a0)
    80004478:	00078e63          	beqz	a5,80004494 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000447c:	00853783          	ld	a5,8(a0)
    80004480:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004484:	00b53423          	sd	a1,8(a0)
    }
}
    80004488:	00813403          	ld	s0,8(sp)
    8000448c:	01010113          	addi	sp,sp,16
    80004490:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004494:	00b53423          	sd	a1,8(a0)
    80004498:	00b53023          	sd	a1,0(a0)
    8000449c:	fedff06f          	j	80004488 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800044a0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    800044a0:	ff010113          	addi	sp,sp,-16
    800044a4:	00113423          	sd	ra,8(sp)
    800044a8:	00813023          	sd	s0,0(sp)
    800044ac:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800044b0:	00007797          	auipc	a5,0x7
    800044b4:	6387b783          	ld	a5,1592(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800044b8:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800044bc:	00200793          	li	a5,2
    800044c0:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    800044c4:	00000097          	auipc	ra,0x0
    800044c8:	fa0080e7          	jalr	-96(ra) # 80004464 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	784080e7          	jalr	1924(ra) # 80002c50 <_ZN3PCB8dispatchEv>
}
    800044d4:	00813083          	ld	ra,8(sp)
    800044d8:	00013403          	ld	s0,0(sp)
    800044dc:	01010113          	addi	sp,sp,16
    800044e0:	00008067          	ret

00000000800044e4 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800044e4:	01052783          	lw	a5,16(a0)
    800044e8:	fff7879b          	addiw	a5,a5,-1
    800044ec:	00f52823          	sw	a5,16(a0)
    800044f0:	02079713          	slli	a4,a5,0x20
    800044f4:	00074663          	bltz	a4,80004500 <_ZN10KSemaphore4waitEv+0x1c>
}
    800044f8:	00000513          	li	a0,0
    800044fc:	00008067          	ret
uint64 KSemaphore::wait() {
    80004500:	ff010113          	addi	sp,sp,-16
    80004504:	00113423          	sd	ra,8(sp)
    80004508:	00813023          	sd	s0,0(sp)
    8000450c:	01010413          	addi	s0,sp,16
        block();
    80004510:	00000097          	auipc	ra,0x0
    80004514:	f90080e7          	jalr	-112(ra) # 800044a0 <_ZN10KSemaphore5blockEv>
}
    80004518:	00000513          	li	a0,0
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000452c:	ff010113          	addi	sp,sp,-16
    80004530:	00813423          	sd	s0,8(sp)
    80004534:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004538:	00053503          	ld	a0,0(a0)
    8000453c:	00813403          	ld	s0,8(sp)
    80004540:	01010113          	addi	sp,sp,16
    80004544:	00008067          	ret

0000000080004548 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004548:	ff010113          	addi	sp,sp,-16
    8000454c:	00813423          	sd	s0,8(sp)
    80004550:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004554:	00053783          	ld	a5,0(a0)
    80004558:	00078c63          	beqz	a5,80004570 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000455c:	0087b703          	ld	a4,8(a5)
    80004560:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004564:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004568:	00053783          	ld	a5,0(a0)
    8000456c:	00078863          	beqz	a5,8000457c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004570:	00813403          	ld	s0,8(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret
        tailBlocked =0;
    8000457c:	00053423          	sd	zero,8(a0)
    80004580:	ff1ff06f          	j	80004570 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004584 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004584:	fe010113          	addi	sp,sp,-32
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	00813823          	sd	s0,16(sp)
    80004590:	00913423          	sd	s1,8(sp)
    80004594:	01213023          	sd	s2,0(sp)
    80004598:	02010413          	addi	s0,sp,32
    8000459c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800045a0:	00090513          	mv	a0,s2
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	f88080e7          	jalr	-120(ra) # 8000452c <_ZN10KSemaphore15getFirstBlockedEv>
    800045ac:	00050493          	mv	s1,a0
    800045b0:	02050063          	beqz	a0,800045d0 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800045b4:	00090513          	mv	a0,s2
    800045b8:	00000097          	auipc	ra,0x0
    800045bc:	f90080e7          	jalr	-112(ra) # 80004548 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800045c0:	00048513          	mv	a0,s1
    800045c4:	fffff097          	auipc	ra,0xfffff
    800045c8:	ed4080e7          	jalr	-300(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800045cc:	fd5ff06f          	j	800045a0 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800045d0:	01813083          	ld	ra,24(sp)
    800045d4:	01013403          	ld	s0,16(sp)
    800045d8:	00813483          	ld	s1,8(sp)
    800045dc:	00013903          	ld	s2,0(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret

00000000800045e8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	01213023          	sd	s2,0(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004604:	00000097          	auipc	ra,0x0
    80004608:	f28080e7          	jalr	-216(ra) # 8000452c <_ZN10KSemaphore15getFirstBlockedEv>
    8000460c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004610:	00090513          	mv	a0,s2
    80004614:	00000097          	auipc	ra,0x0
    80004618:	f34080e7          	jalr	-204(ra) # 80004548 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000461c:	00048863          	beqz	s1,8000462c <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80004620:	00048513          	mv	a0,s1
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	e74080e7          	jalr	-396(ra) # 80003498 <_ZN9Scheduler3putEP3PCB>
}
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	00013903          	ld	s2,0(sp)
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret

0000000080004644 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004644:	01052783          	lw	a5,16(a0)
    80004648:	0017879b          	addiw	a5,a5,1
    8000464c:	0007871b          	sext.w	a4,a5
    80004650:	00f52823          	sw	a5,16(a0)
    80004654:	00e05663          	blez	a4,80004660 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004658:	00000513          	li	a0,0
    8000465c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004660:	ff010113          	addi	sp,sp,-16
    80004664:	00113423          	sd	ra,8(sp)
    80004668:	00813023          	sd	s0,0(sp)
    8000466c:	01010413          	addi	s0,sp,16
        unblock();
    80004670:	00000097          	auipc	ra,0x0
    80004674:	f78080e7          	jalr	-136(ra) # 800045e8 <_ZN10KSemaphore7unblockEv>
}
    80004678:	00000513          	li	a0,0
    8000467c:	00813083          	ld	ra,8(sp)
    80004680:	00013403          	ld	s0,0(sp)
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00008067          	ret

000000008000468c <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    8000468c:	ff010113          	addi	sp,sp,-16
    80004690:	00113423          	sd	ra,8(sp)
    80004694:	00813023          	sd	s0,0(sp)
    80004698:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	d50080e7          	jalr	-688(ra) # 800043ec <_Z7kmallocm>
}
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    800046b4:	ff010113          	addi	sp,sp,-16
    800046b8:	00113423          	sd	ra,8(sp)
    800046bc:	00813023          	sd	s0,0(sp)
    800046c0:	01010413          	addi	s0,sp,16
    kfree(p);
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	d50080e7          	jalr	-688(ra) # 80004414 <_Z5kfreePv>
}
    800046cc:	00813083          	ld	ra,8(sp)
    800046d0:	00013403          	ld	s0,0(sp)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    800046dc:	fd010113          	addi	sp,sp,-48
    800046e0:	02113423          	sd	ra,40(sp)
    800046e4:	02813023          	sd	s0,32(sp)
    800046e8:	00913c23          	sd	s1,24(sp)
    800046ec:	01213823          	sd	s2,16(sp)
    800046f0:	01313423          	sd	s3,8(sp)
    800046f4:	03010413          	addi	s0,sp,48
    800046f8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("producer started\n");
    800046fc:	00005517          	auipc	a0,0x5
    80004700:	c2450513          	addi	a0,a0,-988 # 80009320 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80004704:	fffff097          	auipc	ra,0xfffff
    80004708:	384080e7          	jalr	900(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    8000470c:	00000993          	li	s3,0
    while (!threadEnd) {
    80004710:	00007797          	auipc	a5,0x7
    80004714:	4d07a783          	lw	a5,1232(a5) # 8000bbe0 <threadEnd>
    80004718:	0c079863          	bnez	a5,800047e8 <_Z8producerPv+0x10c>

        data->buffer->put(data->id + '0');
    8000471c:	00092583          	lw	a1,0(s2)
    80004720:	0305859b          	addiw	a1,a1,48
    80004724:	00893503          	ld	a0,8(s2)
    80004728:	00002097          	auipc	ra,0x2
    8000472c:	c78080e7          	jalr	-904(ra) # 800063a0 <_ZN6Buffer3putEi>
        i++;
    80004730:	0019849b          	addiw	s1,s3,1
    80004734:	0004899b          	sext.w	s3,s1
        cntGlobal++;
    80004738:	00007717          	auipc	a4,0x7
    8000473c:	4a870713          	addi	a4,a4,1192 # 8000bbe0 <threadEnd>
    80004740:	00472783          	lw	a5,4(a4)
    80004744:	0017879b          	addiw	a5,a5,1
    80004748:	00f72223          	sw	a5,4(a4)

        Riscv::printString("put ");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	bec50513          	addi	a0,a0,-1044 # 80009338 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80004754:	fffff097          	auipc	ra,0xfffff
    80004758:	334080e7          	jalr	820(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(data->id + '0');
    8000475c:	00092503          	lw	a0,0(s2)
    80004760:	0305051b          	addiw	a0,a0,48
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	394080e7          	jalr	916(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>

        if (i % (10 * data->id) == 0) {
    8000476c:	00092703          	lw	a4,0(s2)
    80004770:	0027179b          	slliw	a5,a4,0x2
    80004774:	00e787bb          	addw	a5,a5,a4
    80004778:	0017979b          	slliw	a5,a5,0x1
    8000477c:	02f4e7bb          	remw	a5,s1,a5
    80004780:	02078e63          	beqz	a5,800047bc <_Z8producerPv+0xe0>
            Riscv::printString("dispatched\n");
            thread_dispatch();
            Riscv::printString("returned from dispatch\n");
        }
        Riscv::printInteger(cntGlobal);
    80004784:	00007497          	auipc	s1,0x7
    80004788:	45c48493          	addi	s1,s1,1116 # 8000bbe0 <threadEnd>
    8000478c:	0044a503          	lw	a0,4(s1)
    80004790:	0005051b          	sext.w	a0,a0
    80004794:	fffff097          	auipc	ra,0xfffff
    80004798:	364080e7          	jalr	868(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>

        if(cntGlobal == 15)
    8000479c:	0044a783          	lw	a5,4(s1)
    800047a0:	0007879b          	sext.w	a5,a5
    800047a4:	00f00713          	li	a4,15
    800047a8:	f6e794e3          	bne	a5,a4,80004710 <_Z8producerPv+0x34>
            threadEnd = 1;
    800047ac:	00100793          	li	a5,1
    800047b0:	00007717          	auipc	a4,0x7
    800047b4:	42f72823          	sw	a5,1072(a4) # 8000bbe0 <threadEnd>
    800047b8:	f59ff06f          	j	80004710 <_Z8producerPv+0x34>
            Riscv::printString("dispatched\n");
    800047bc:	00005517          	auipc	a0,0x5
    800047c0:	b8450513          	addi	a0,a0,-1148 # 80009340 <_ZZN5Riscv12printIntegerEmE6digits+0x30>
    800047c4:	fffff097          	auipc	ra,0xfffff
    800047c8:	2c4080e7          	jalr	708(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
            thread_dispatch();
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	b58080e7          	jalr	-1192(ra) # 80001324 <thread_dispatch>
            Riscv::printString("returned from dispatch\n");
    800047d4:	00005517          	auipc	a0,0x5
    800047d8:	b7c50513          	addi	a0,a0,-1156 # 80009350 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	2ac080e7          	jalr	684(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    800047e4:	fa1ff06f          	j	80004784 <_Z8producerPv+0xa8>
    }
    Riscv::printString("producer finished\n");
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	b8050513          	addi	a0,a0,-1152 # 80009368 <_ZZN5Riscv12printIntegerEmE6digits+0x58>
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	298080e7          	jalr	664(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800047f8:	01093503          	ld	a0,16(s2)
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	c00080e7          	jalr	-1024(ra) # 800013fc <sem_signal>
}
    80004804:	02813083          	ld	ra,40(sp)
    80004808:	02013403          	ld	s0,32(sp)
    8000480c:	01813483          	ld	s1,24(sp)
    80004810:	01013903          	ld	s2,16(sp)
    80004814:	00813983          	ld	s3,8(sp)
    80004818:	03010113          	addi	sp,sp,48
    8000481c:	00008067          	ret

0000000080004820 <_Z8consumerPv>:

void consumer(void *arg) {
    80004820:	fd010113          	addi	sp,sp,-48
    80004824:	02113423          	sd	ra,40(sp)
    80004828:	02813023          	sd	s0,32(sp)
    8000482c:	00913c23          	sd	s1,24(sp)
    80004830:	01213823          	sd	s2,16(sp)
    80004834:	01313423          	sd	s3,8(sp)
    80004838:	01413023          	sd	s4,0(sp)
    8000483c:	03010413          	addi	s0,sp,48
    80004840:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;
    Riscv::printString("consumer started\n");
    80004844:	00005517          	auipc	a0,0x5
    80004848:	b3c50513          	addi	a0,a0,-1220 # 80009380 <_ZZN5Riscv12printIntegerEmE6digits+0x70>
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	23c080e7          	jalr	572(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    int i = 0;
    80004854:	00000a13          	li	s4,0
    80004858:	0200006f          	j	80004878 <_Z8consumerPv+0x58>
        //putc(key);
        Riscv::printString("get ");
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	ac8080e7          	jalr	-1336(ra) # 80001324 <thread_dispatch>
    80004864:	0680006f          	j	800048cc <_Z8consumerPv+0xac>
        }

        if (i % 80 == 0) {
            //putc('\n');
            Riscv::printString("\n");
    80004868:	00005517          	auipc	a0,0x5
    8000486c:	91050513          	addi	a0,a0,-1776 # 80009178 <CONSOLE_STATUS+0x168>
    80004870:	fffff097          	auipc	ra,0xfffff
    80004874:	218080e7          	jalr	536(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    while (!threadEnd) {
    80004878:	00007797          	auipc	a5,0x7
    8000487c:	3687a783          	lw	a5,872(a5) # 8000bbe0 <threadEnd>
    80004880:	04079e63          	bnez	a5,800048dc <_Z8consumerPv+0xbc>
        int key = data->buffer->get();
    80004884:	0089b503          	ld	a0,8(s3)
    80004888:	00002097          	auipc	ra,0x2
    8000488c:	ba8080e7          	jalr	-1112(ra) # 80006430 <_ZN6Buffer3getEv>
    80004890:	00050913          	mv	s2,a0
        i++;
    80004894:	001a049b          	addiw	s1,s4,1
    80004898:	00048a1b          	sext.w	s4,s1
        Riscv::printString("get ");
    8000489c:	00005517          	auipc	a0,0x5
    800048a0:	afc50513          	addi	a0,a0,-1284 # 80009398 <_ZZN5Riscv12printIntegerEmE6digits+0x88>
    800048a4:	fffff097          	auipc	ra,0xfffff
    800048a8:	1e4080e7          	jalr	484(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(key);
    800048ac:	00090513          	mv	a0,s2
    800048b0:	fffff097          	auipc	ra,0xfffff
    800048b4:	248080e7          	jalr	584(ra) # 80003af8 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    800048b8:	0009a703          	lw	a4,0(s3)
    800048bc:	0027179b          	slliw	a5,a4,0x2
    800048c0:	00e787bb          	addw	a5,a5,a4
    800048c4:	02f4e7bb          	remw	a5,s1,a5
    800048c8:	f8078ae3          	beqz	a5,8000485c <_Z8consumerPv+0x3c>
        if (i % 80 == 0) {
    800048cc:	05000793          	li	a5,80
    800048d0:	02f4e4bb          	remw	s1,s1,a5
    800048d4:	fa0492e3          	bnez	s1,80004878 <_Z8consumerPv+0x58>
    800048d8:	f91ff06f          	j	80004868 <_Z8consumerPv+0x48>
        }
    }
    Riscv::printString("consumer finished\n");
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	ac450513          	addi	a0,a0,-1340 # 800093a0 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	1a4080e7          	jalr	420(ra) # 80003a88 <_ZN5Riscv11printStringEPKc>
    sem_signal(data->wait);
    800048ec:	0109b503          	ld	a0,16(s3)
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	b0c080e7          	jalr	-1268(ra) # 800013fc <sem_signal>
}
    800048f8:	02813083          	ld	ra,40(sp)
    800048fc:	02013403          	ld	s0,32(sp)
    80004900:	01813483          	ld	s1,24(sp)
    80004904:	01013903          	ld	s2,16(sp)
    80004908:	00813983          	ld	s3,8(sp)
    8000490c:	00013a03          	ld	s4,0(sp)
    80004910:	03010113          	addi	sp,sp,48
    80004914:	00008067          	ret

0000000080004918 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80004918:	fe010113          	addi	sp,sp,-32
    8000491c:	00113c23          	sd	ra,24(sp)
    80004920:	00813823          	sd	s0,16(sp)
    80004924:	00913423          	sd	s1,8(sp)
    80004928:	01213023          	sd	s2,0(sp)
    8000492c:	02010413          	addi	s0,sp,32
    80004930:	00050493          	mv	s1,a0
    int i = 0;
    80004934:	00000913          	li	s2,0
    80004938:	00c0006f          	j	80004944 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	9e8080e7          	jalr	-1560(ra) # 80001324 <thread_dispatch>
#define PROJECT_BASE_V1_0_STD_HPP

#include "../lib/console.h"

inline char getc() {
    return __getc();
    80004944:	00004097          	auipc	ra,0x4
    80004948:	c74080e7          	jalr	-908(ra) # 800085b8 <__getc>
    while ((key = getc()) != 0x1b) {
    8000494c:	0005059b          	sext.w	a1,a0
    80004950:	01b00793          	li	a5,27
    80004954:	02f58a63          	beq	a1,a5,80004988 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004958:	0084b503          	ld	a0,8(s1)
    8000495c:	00002097          	auipc	ra,0x2
    80004960:	a44080e7          	jalr	-1468(ra) # 800063a0 <_ZN6Buffer3putEi>
        i++;
    80004964:	0019071b          	addiw	a4,s2,1
    80004968:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000496c:	0004a683          	lw	a3,0(s1)
    80004970:	0026979b          	slliw	a5,a3,0x2
    80004974:	00d787bb          	addw	a5,a5,a3
    80004978:	0017979b          	slliw	a5,a5,0x1
    8000497c:	02f767bb          	remw	a5,a4,a5
    80004980:	fc0792e3          	bnez	a5,80004944 <_Z16producerKeyboardPv+0x2c>
    80004984:	fb9ff06f          	j	8000493c <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80004988:	00100793          	li	a5,1
    8000498c:	00007717          	auipc	a4,0x7
    80004990:	24f72a23          	sw	a5,596(a4) # 8000bbe0 <threadEnd>
    delete data->buffer;
    80004994:	0084b903          	ld	s2,8(s1)
    80004998:	00090e63          	beqz	s2,800049b4 <_Z16producerKeyboardPv+0x9c>
    8000499c:	00090513          	mv	a0,s2
    800049a0:	00002097          	auipc	ra,0x2
    800049a4:	954080e7          	jalr	-1708(ra) # 800062f4 <_ZN6BufferD1Ev>
    800049a8:	00090513          	mv	a0,s2
    800049ac:	fffff097          	auipc	ra,0xfffff
    800049b0:	c98080e7          	jalr	-872(ra) # 80003644 <_ZdlPv>
    sem_signal(data->wait);
    800049b4:	0104b503          	ld	a0,16(s1)
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	a44080e7          	jalr	-1468(ra) # 800013fc <sem_signal>
}
    800049c0:	01813083          	ld	ra,24(sp)
    800049c4:	01013403          	ld	s0,16(sp)
    800049c8:	00813483          	ld	s1,8(sp)
    800049cc:	00013903          	ld	s2,0(sp)
    800049d0:	02010113          	addi	sp,sp,32
    800049d4:	00008067          	ret

00000000800049d8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800049d8:	f6010113          	addi	sp,sp,-160
    800049dc:	08113c23          	sd	ra,152(sp)
    800049e0:	08813823          	sd	s0,144(sp)
    800049e4:	08913423          	sd	s1,136(sp)
    800049e8:	09213023          	sd	s2,128(sp)
    800049ec:	0a010413          	addi	s0,sp,160
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800049f0:	00005517          	auipc	a0,0x5
    800049f4:	9c850513          	addi	a0,a0,-1592 # 800093b8 <_ZZN5Riscv12printIntegerEmE6digits+0xa8>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	14c080e7          	jalr	332(ra) # 80005b44 <_Z11printStringPKc>
    //getString(input, 30);
    //threadNum = stringToInt(input);
    threadNum = 3;

    printString("Unesite velicinu bafera?\n");
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	9d850513          	addi	a0,a0,-1576 # 800093d8 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	13c080e7          	jalr	316(ra) # 80005b44 <_Z11printStringPKc>
    //getString(input, 30);
    //n = stringToInt(input);

    n = 1;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	9e850513          	addi	a0,a0,-1560 # 800093f8 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	12c080e7          	jalr	300(ra) # 80005b44 <_Z11printStringPKc>
    80004a20:	00000613          	li	a2,0
    80004a24:	00a00593          	li	a1,10
    80004a28:	00300513          	li	a0,3
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	2b0080e7          	jalr	688(ra) # 80005cdc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004a34:	00005517          	auipc	a0,0x5
    80004a38:	9dc50513          	addi	a0,a0,-1572 # 80009410 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	108080e7          	jalr	264(ra) # 80005b44 <_Z11printStringPKc>
    80004a44:	00000613          	li	a2,0
    80004a48:	00a00593          	li	a1,10
    80004a4c:	00100513          	li	a0,1
    80004a50:	00001097          	auipc	ra,0x1
    80004a54:	28c080e7          	jalr	652(ra) # 80005cdc <_Z8printIntiii>
    printString(".\n");
    80004a58:	00005517          	auipc	a0,0x5
    80004a5c:	8a850513          	addi	a0,a0,-1880 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	0e4080e7          	jalr	228(ra) # 80005b44 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004a68:	03800513          	li	a0,56
    80004a6c:	fffff097          	auipc	ra,0xfffff
    80004a70:	bb0080e7          	jalr	-1104(ra) # 8000361c <_Znwm>
    80004a74:	00050913          	mv	s2,a0
    80004a78:	00100593          	li	a1,1
    80004a7c:	00001097          	auipc	ra,0x1
    80004a80:	7f0080e7          	jalr	2032(ra) # 8000626c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004a84:	00000593          	li	a1,0
    80004a88:	00007517          	auipc	a0,0x7
    80004a8c:	16050513          	addi	a0,a0,352 # 8000bbe8 <waitForAll>
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	8dc080e7          	jalr	-1828(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80004a98:	00300793          	li	a5,3
    80004a9c:	faf42423          	sw	a5,-88(s0)
    data[threadNum].buffer = buffer;
    80004aa0:	fb243823          	sd	s2,-80(s0)
    data[threadNum].wait = waitForAll;
    80004aa4:	00007797          	auipc	a5,0x7
    80004aa8:	1447b783          	ld	a5,324(a5) # 8000bbe8 <waitForAll>
    80004aac:	faf43c23          	sd	a5,-72(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004ab0:	fa840613          	addi	a2,s0,-88
    80004ab4:	00000597          	auipc	a1,0x0
    80004ab8:	d6c58593          	addi	a1,a1,-660 # 80004820 <_Z8consumerPv>
    80004abc:	fc040513          	addi	a0,s0,-64
    80004ac0:	ffffc097          	auipc	ra,0xffffc
    80004ac4:	7e4080e7          	jalr	2020(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004ac8:	00000493          	li	s1,0
    80004acc:	00200793          	li	a5,2
    80004ad0:	0697c063          	blt	a5,s1,80004b30 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004ad4:	00149613          	slli	a2,s1,0x1
    80004ad8:	009607b3          	add	a5,a2,s1
    80004adc:	00379793          	slli	a5,a5,0x3
    80004ae0:	fe040713          	addi	a4,s0,-32
    80004ae4:	00f707b3          	add	a5,a4,a5
    80004ae8:	f897a023          	sw	s1,-128(a5)
        data[i].buffer = buffer;
    80004aec:	f927b423          	sd	s2,-120(a5)
        data[i].wait = waitForAll;
    80004af0:	00007717          	auipc	a4,0x7
    80004af4:	0f873703          	ld	a4,248(a4) # 8000bbe8 <waitForAll>
    80004af8:	f8e7b823          	sd	a4,-112(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i,
    80004afc:	00349793          	slli	a5,s1,0x3
                      producer ,
                      data + i);
    80004b00:	00960633          	add	a2,a2,s1
    80004b04:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004b08:	f6040713          	addi	a4,s0,-160
    80004b0c:	00c70633          	add	a2,a4,a2
    80004b10:	00000597          	auipc	a1,0x0
    80004b14:	bcc58593          	addi	a1,a1,-1076 # 800046dc <_Z8producerPv>
    80004b18:	fc840513          	addi	a0,s0,-56
    80004b1c:	00f50533          	add	a0,a0,a5
    80004b20:	ffffc097          	auipc	ra,0xffffc
    80004b24:	784080e7          	jalr	1924(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004b28:	0014849b          	addiw	s1,s1,1
    80004b2c:	fa1ff06f          	j	80004acc <_Z22producerConsumer_C_APIv+0xf4>
    }

    thread_dispatch();
    80004b30:	ffffc097          	auipc	ra,0xffffc
    80004b34:	7f4080e7          	jalr	2036(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004b38:	00000493          	li	s1,0
    80004b3c:	0180006f          	j	80004b54 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    80004b40:	00007517          	auipc	a0,0x7
    80004b44:	0a853503          	ld	a0,168(a0) # 8000bbe8 <waitForAll>
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	888080e7          	jalr	-1912(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004b50:	0014849b          	addiw	s1,s1,1
    80004b54:	00300793          	li	a5,3
    80004b58:	fe97d4e3          	bge	a5,s1,80004b40 <_Z22producerConsumer_C_APIv+0x168>
    }

    sem_close(waitForAll);
    80004b5c:	00007517          	auipc	a0,0x7
    80004b60:	08c53503          	ld	a0,140(a0) # 8000bbe8 <waitForAll>
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	840080e7          	jalr	-1984(ra) # 800013a4 <sem_close>
}
    80004b6c:	09813083          	ld	ra,152(sp)
    80004b70:	09013403          	ld	s0,144(sp)
    80004b74:	08813483          	ld	s1,136(sp)
    80004b78:	08013903          	ld	s2,128(sp)
    80004b7c:	0a010113          	addi	sp,sp,160
    80004b80:	00008067          	ret
    80004b84:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004b88:	00090513          	mv	a0,s2
    80004b8c:	fffff097          	auipc	ra,0xfffff
    80004b90:	ab8080e7          	jalr	-1352(ra) # 80003644 <_ZdlPv>
    80004b94:	00048513          	mv	a0,s1
    80004b98:	00008097          	auipc	ra,0x8
    80004b9c:	140080e7          	jalr	320(ra) # 8000ccd8 <_Unwind_Resume>

0000000080004ba0 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00113c23          	sd	ra,24(sp)
    80004ba8:	00813823          	sd	s0,16(sp)
    80004bac:	00913423          	sd	s1,8(sp)
    80004bb0:	01213023          	sd	s2,0(sp)
    80004bb4:	02010413          	addi	s0,sp,32
    80004bb8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004bbc:	00100793          	li	a5,1
    80004bc0:	02a7f863          	bgeu	a5,a0,80004bf0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004bc4:	00a00793          	li	a5,10
    80004bc8:	02f577b3          	remu	a5,a0,a5
    80004bcc:	02078e63          	beqz	a5,80004c08 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004bd0:	fff48513          	addi	a0,s1,-1
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	fcc080e7          	jalr	-52(ra) # 80004ba0 <_ZL9fibonaccim>
    80004bdc:	00050913          	mv	s2,a0
    80004be0:	ffe48513          	addi	a0,s1,-2
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	fbc080e7          	jalr	-68(ra) # 80004ba0 <_ZL9fibonaccim>
    80004bec:	00a90533          	add	a0,s2,a0
}
    80004bf0:	01813083          	ld	ra,24(sp)
    80004bf4:	01013403          	ld	s0,16(sp)
    80004bf8:	00813483          	ld	s1,8(sp)
    80004bfc:	00013903          	ld	s2,0(sp)
    80004c00:	02010113          	addi	sp,sp,32
    80004c04:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c08:	ffffc097          	auipc	ra,0xffffc
    80004c0c:	71c080e7          	jalr	1820(ra) # 80001324 <thread_dispatch>
    80004c10:	fc1ff06f          	j	80004bd0 <_ZL9fibonaccim+0x30>

0000000080004c14 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004c14:	fe010113          	addi	sp,sp,-32
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00813823          	sd	s0,16(sp)
    80004c20:	00913423          	sd	s1,8(sp)
    80004c24:	01213023          	sd	s2,0(sp)
    80004c28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c2c:	00000913          	li	s2,0
    80004c30:	0380006f          	j	80004c68 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004c34:	ffffc097          	auipc	ra,0xffffc
    80004c38:	6f0080e7          	jalr	1776(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004c3c:	00148493          	addi	s1,s1,1
    80004c40:	000027b7          	lui	a5,0x2
    80004c44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c48:	0097ee63          	bltu	a5,s1,80004c64 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c4c:	00000713          	li	a4,0
    80004c50:	000077b7          	lui	a5,0x7
    80004c54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c58:	fce7eee3          	bltu	a5,a4,80004c34 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004c5c:	00170713          	addi	a4,a4,1
    80004c60:	ff1ff06f          	j	80004c50 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c64:	00190913          	addi	s2,s2,1
    80004c68:	00900793          	li	a5,9
    80004c6c:	0527e063          	bltu	a5,s2,80004cac <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004c70:	00004517          	auipc	a0,0x4
    80004c74:	7b850513          	addi	a0,a0,1976 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	ecc080e7          	jalr	-308(ra) # 80005b44 <_Z11printStringPKc>
    80004c80:	00000613          	li	a2,0
    80004c84:	00a00593          	li	a1,10
    80004c88:	0009051b          	sext.w	a0,s2
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	050080e7          	jalr	80(ra) # 80005cdc <_Z8printIntiii>
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	4e450513          	addi	a0,a0,1252 # 80009178 <CONSOLE_STATUS+0x168>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	ea8080e7          	jalr	-344(ra) # 80005b44 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ca4:	00000493          	li	s1,0
    80004ca8:	f99ff06f          	j	80004c40 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004cac:	00004517          	auipc	a0,0x4
    80004cb0:	78450513          	addi	a0,a0,1924 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	e90080e7          	jalr	-368(ra) # 80005b44 <_Z11printStringPKc>
    finishedA = true;
    80004cbc:	00100793          	li	a5,1
    80004cc0:	00007717          	auipc	a4,0x7
    80004cc4:	f2f70823          	sb	a5,-208(a4) # 8000bbf0 <_ZL9finishedA>
}
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	00813483          	ld	s1,8(sp)
    80004cd4:	00013903          	ld	s2,0(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00113c23          	sd	ra,24(sp)
    80004ce8:	00813823          	sd	s0,16(sp)
    80004cec:	00913423          	sd	s1,8(sp)
    80004cf0:	01213023          	sd	s2,0(sp)
    80004cf4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cf8:	00000913          	li	s2,0
    80004cfc:	0380006f          	j	80004d34 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	624080e7          	jalr	1572(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004d08:	00148493          	addi	s1,s1,1
    80004d0c:	000027b7          	lui	a5,0x2
    80004d10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d14:	0097ee63          	bltu	a5,s1,80004d30 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d18:	00000713          	li	a4,0
    80004d1c:	000077b7          	lui	a5,0x7
    80004d20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d24:	fce7eee3          	bltu	a5,a4,80004d00 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004d28:	00170713          	addi	a4,a4,1
    80004d2c:	ff1ff06f          	j	80004d1c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d30:	00190913          	addi	s2,s2,1
    80004d34:	00f00793          	li	a5,15
    80004d38:	0527e063          	bltu	a5,s2,80004d78 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d3c:	00004517          	auipc	a0,0x4
    80004d40:	70450513          	addi	a0,a0,1796 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	e00080e7          	jalr	-512(ra) # 80005b44 <_Z11printStringPKc>
    80004d4c:	00000613          	li	a2,0
    80004d50:	00a00593          	li	a1,10
    80004d54:	0009051b          	sext.w	a0,s2
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	f84080e7          	jalr	-124(ra) # 80005cdc <_Z8printIntiii>
    80004d60:	00004517          	auipc	a0,0x4
    80004d64:	41850513          	addi	a0,a0,1048 # 80009178 <CONSOLE_STATUS+0x168>
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	ddc080e7          	jalr	-548(ra) # 80005b44 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d70:	00000493          	li	s1,0
    80004d74:	f99ff06f          	j	80004d0c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004d78:	00004517          	auipc	a0,0x4
    80004d7c:	6d050513          	addi	a0,a0,1744 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	dc4080e7          	jalr	-572(ra) # 80005b44 <_Z11printStringPKc>
    finishedB = true;
    80004d88:	00100793          	li	a5,1
    80004d8c:	00007717          	auipc	a4,0x7
    80004d90:	e6f702a3          	sb	a5,-411(a4) # 8000bbf1 <_ZL9finishedB>
    thread_dispatch();
    80004d94:	ffffc097          	auipc	ra,0xffffc
    80004d98:	590080e7          	jalr	1424(ra) # 80001324 <thread_dispatch>
}
    80004d9c:	01813083          	ld	ra,24(sp)
    80004da0:	01013403          	ld	s0,16(sp)
    80004da4:	00813483          	ld	s1,8(sp)
    80004da8:	00013903          	ld	s2,0(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret

0000000080004db4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004db4:	fe010113          	addi	sp,sp,-32
    80004db8:	00113c23          	sd	ra,24(sp)
    80004dbc:	00813823          	sd	s0,16(sp)
    80004dc0:	00913423          	sd	s1,8(sp)
    80004dc4:	01213023          	sd	s2,0(sp)
    80004dc8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004dcc:	00000493          	li	s1,0
    80004dd0:	0400006f          	j	80004e10 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004dd4:	00004517          	auipc	a0,0x4
    80004dd8:	68450513          	addi	a0,a0,1668 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	d68080e7          	jalr	-664(ra) # 80005b44 <_Z11printStringPKc>
    80004de4:	00000613          	li	a2,0
    80004de8:	00a00593          	li	a1,10
    80004dec:	00048513          	mv	a0,s1
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	eec080e7          	jalr	-276(ra) # 80005cdc <_Z8printIntiii>
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	38050513          	addi	a0,a0,896 # 80009178 <CONSOLE_STATUS+0x168>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	d44080e7          	jalr	-700(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e08:	0014849b          	addiw	s1,s1,1
    80004e0c:	0ff4f493          	andi	s1,s1,255
    80004e10:	00200793          	li	a5,2
    80004e14:	fc97f0e3          	bgeu	a5,s1,80004dd4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004e18:	00004517          	auipc	a0,0x4
    80004e1c:	64850513          	addi	a0,a0,1608 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	d24080e7          	jalr	-732(ra) # 80005b44 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e28:	00700313          	li	t1,7
    thread_dispatch();
    80004e2c:	ffffc097          	auipc	ra,0xffffc
    80004e30:	4f8080e7          	jalr	1272(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e34:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	63850513          	addi	a0,a0,1592 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	d04080e7          	jalr	-764(ra) # 80005b44 <_Z11printStringPKc>
    80004e48:	00000613          	li	a2,0
    80004e4c:	00a00593          	li	a1,10
    80004e50:	0009051b          	sext.w	a0,s2
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	e88080e7          	jalr	-376(ra) # 80005cdc <_Z8printIntiii>
    80004e5c:	00004517          	auipc	a0,0x4
    80004e60:	31c50513          	addi	a0,a0,796 # 80009178 <CONSOLE_STATUS+0x168>
    80004e64:	00001097          	auipc	ra,0x1
    80004e68:	ce0080e7          	jalr	-800(ra) # 80005b44 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004e6c:	00c00513          	li	a0,12
    80004e70:	00000097          	auipc	ra,0x0
    80004e74:	d30080e7          	jalr	-720(ra) # 80004ba0 <_ZL9fibonaccim>
    80004e78:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e7c:	00004517          	auipc	a0,0x4
    80004e80:	5fc50513          	addi	a0,a0,1532 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	cc0080e7          	jalr	-832(ra) # 80005b44 <_Z11printStringPKc>
    80004e8c:	00000613          	li	a2,0
    80004e90:	00a00593          	li	a1,10
    80004e94:	0009051b          	sext.w	a0,s2
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	e44080e7          	jalr	-444(ra) # 80005cdc <_Z8printIntiii>
    80004ea0:	00004517          	auipc	a0,0x4
    80004ea4:	2d850513          	addi	a0,a0,728 # 80009178 <CONSOLE_STATUS+0x168>
    80004ea8:	00001097          	auipc	ra,0x1
    80004eac:	c9c080e7          	jalr	-868(ra) # 80005b44 <_Z11printStringPKc>
    80004eb0:	0400006f          	j	80004ef0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004eb4:	00004517          	auipc	a0,0x4
    80004eb8:	5a450513          	addi	a0,a0,1444 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	c88080e7          	jalr	-888(ra) # 80005b44 <_Z11printStringPKc>
    80004ec4:	00000613          	li	a2,0
    80004ec8:	00a00593          	li	a1,10
    80004ecc:	00048513          	mv	a0,s1
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	e0c080e7          	jalr	-500(ra) # 80005cdc <_Z8printIntiii>
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	2a050513          	addi	a0,a0,672 # 80009178 <CONSOLE_STATUS+0x168>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	c64080e7          	jalr	-924(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ee8:	0014849b          	addiw	s1,s1,1
    80004eec:	0ff4f493          	andi	s1,s1,255
    80004ef0:	00500793          	li	a5,5
    80004ef4:	fc97f0e3          	bgeu	a5,s1,80004eb4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004ef8:	00004517          	auipc	a0,0x4
    80004efc:	53850513          	addi	a0,a0,1336 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	c44080e7          	jalr	-956(ra) # 80005b44 <_Z11printStringPKc>
    finishedC = true;
    80004f08:	00100793          	li	a5,1
    80004f0c:	00007717          	auipc	a4,0x7
    80004f10:	cef70323          	sb	a5,-794(a4) # 8000bbf2 <_ZL9finishedC>
    thread_dispatch();
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	410080e7          	jalr	1040(ra) # 80001324 <thread_dispatch>
}
    80004f1c:	01813083          	ld	ra,24(sp)
    80004f20:	01013403          	ld	s0,16(sp)
    80004f24:	00813483          	ld	s1,8(sp)
    80004f28:	00013903          	ld	s2,0(sp)
    80004f2c:	02010113          	addi	sp,sp,32
    80004f30:	00008067          	ret

0000000080004f34 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004f34:	fe010113          	addi	sp,sp,-32
    80004f38:	00113c23          	sd	ra,24(sp)
    80004f3c:	00813823          	sd	s0,16(sp)
    80004f40:	00913423          	sd	s1,8(sp)
    80004f44:	01213023          	sd	s2,0(sp)
    80004f48:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f4c:	00a00493          	li	s1,10
    80004f50:	0400006f          	j	80004f90 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f54:	00004517          	auipc	a0,0x4
    80004f58:	53450513          	addi	a0,a0,1332 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	be8080e7          	jalr	-1048(ra) # 80005b44 <_Z11printStringPKc>
    80004f64:	00000613          	li	a2,0
    80004f68:	00a00593          	li	a1,10
    80004f6c:	00048513          	mv	a0,s1
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	d6c080e7          	jalr	-660(ra) # 80005cdc <_Z8printIntiii>
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	20050513          	addi	a0,a0,512 # 80009178 <CONSOLE_STATUS+0x168>
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	bc4080e7          	jalr	-1084(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f88:	0014849b          	addiw	s1,s1,1
    80004f8c:	0ff4f493          	andi	s1,s1,255
    80004f90:	00c00793          	li	a5,12
    80004f94:	fc97f0e3          	bgeu	a5,s1,80004f54 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	4f850513          	addi	a0,a0,1272 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	ba4080e7          	jalr	-1116(ra) # 80005b44 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004fa8:	00500313          	li	t1,5
    thread_dispatch();
    80004fac:	ffffc097          	auipc	ra,0xffffc
    80004fb0:	378080e7          	jalr	888(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004fb4:	01000513          	li	a0,16
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	be8080e7          	jalr	-1048(ra) # 80004ba0 <_ZL9fibonaccim>
    80004fc0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	4dc50513          	addi	a0,a0,1244 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	b78080e7          	jalr	-1160(ra) # 80005b44 <_Z11printStringPKc>
    80004fd4:	00000613          	li	a2,0
    80004fd8:	00a00593          	li	a1,10
    80004fdc:	0009051b          	sext.w	a0,s2
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	cfc080e7          	jalr	-772(ra) # 80005cdc <_Z8printIntiii>
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	19050513          	addi	a0,a0,400 # 80009178 <CONSOLE_STATUS+0x168>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	b54080e7          	jalr	-1196(ra) # 80005b44 <_Z11printStringPKc>
    80004ff8:	0400006f          	j	80005038 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	48c50513          	addi	a0,a0,1164 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	b40080e7          	jalr	-1216(ra) # 80005b44 <_Z11printStringPKc>
    8000500c:	00000613          	li	a2,0
    80005010:	00a00593          	li	a1,10
    80005014:	00048513          	mv	a0,s1
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	cc4080e7          	jalr	-828(ra) # 80005cdc <_Z8printIntiii>
    80005020:	00004517          	auipc	a0,0x4
    80005024:	15850513          	addi	a0,a0,344 # 80009178 <CONSOLE_STATUS+0x168>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	b1c080e7          	jalr	-1252(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005030:	0014849b          	addiw	s1,s1,1
    80005034:	0ff4f493          	andi	s1,s1,255
    80005038:	00f00793          	li	a5,15
    8000503c:	fc97f0e3          	bgeu	a5,s1,80004ffc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005040:	00004517          	auipc	a0,0x4
    80005044:	47050513          	addi	a0,a0,1136 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    80005048:	00001097          	auipc	ra,0x1
    8000504c:	afc080e7          	jalr	-1284(ra) # 80005b44 <_Z11printStringPKc>
    finishedD = true;
    80005050:	00100793          	li	a5,1
    80005054:	00007717          	auipc	a4,0x7
    80005058:	b8f70fa3          	sb	a5,-1121(a4) # 8000bbf3 <_ZL9finishedD>
    thread_dispatch();
    8000505c:	ffffc097          	auipc	ra,0xffffc
    80005060:	2c8080e7          	jalr	712(ra) # 80001324 <thread_dispatch>
}
    80005064:	01813083          	ld	ra,24(sp)
    80005068:	01013403          	ld	s0,16(sp)
    8000506c:	00813483          	ld	s1,8(sp)
    80005070:	00013903          	ld	s2,0(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret

000000008000507c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000507c:	fc010113          	addi	sp,sp,-64
    80005080:	02113c23          	sd	ra,56(sp)
    80005084:	02813823          	sd	s0,48(sp)
    80005088:	02913423          	sd	s1,40(sp)
    8000508c:	03213023          	sd	s2,32(sp)
    80005090:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80005094:	02000513          	li	a0,32
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	584080e7          	jalr	1412(ra) # 8000361c <_Znwm>
    800050a0:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    800050a4:	ffffe097          	auipc	ra,0xffffe
    800050a8:	744080e7          	jalr	1860(ra) # 800037e8 <_ZN6ThreadC1Ev>
    800050ac:	00007797          	auipc	a5,0x7
    800050b0:	98478793          	addi	a5,a5,-1660 # 8000ba30 <_ZTV7WorkerA+0x10>
    800050b4:	00f4b023          	sd	a5,0(s1)
    800050b8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	40450513          	addi	a0,a0,1028 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	a80080e7          	jalr	-1408(ra) # 80005b44 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800050cc:	02000513          	li	a0,32
    800050d0:	ffffe097          	auipc	ra,0xffffe
    800050d4:	54c080e7          	jalr	1356(ra) # 8000361c <_Znwm>
    800050d8:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800050dc:	ffffe097          	auipc	ra,0xffffe
    800050e0:	70c080e7          	jalr	1804(ra) # 800037e8 <_ZN6ThreadC1Ev>
    800050e4:	00007797          	auipc	a5,0x7
    800050e8:	97478793          	addi	a5,a5,-1676 # 8000ba58 <_ZTV7WorkerB+0x10>
    800050ec:	00f4b023          	sd	a5,0(s1)
    800050f0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	3e450513          	addi	a0,a0,996 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	a48080e7          	jalr	-1464(ra) # 80005b44 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005104:	02000513          	li	a0,32
    80005108:	ffffe097          	auipc	ra,0xffffe
    8000510c:	514080e7          	jalr	1300(ra) # 8000361c <_Znwm>
    80005110:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80005114:	ffffe097          	auipc	ra,0xffffe
    80005118:	6d4080e7          	jalr	1748(ra) # 800037e8 <_ZN6ThreadC1Ev>
    8000511c:	00007797          	auipc	a5,0x7
    80005120:	96478793          	addi	a5,a5,-1692 # 8000ba80 <_ZTV7WorkerC+0x10>
    80005124:	00f4b023          	sd	a5,0(s1)
    80005128:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000512c:	00004517          	auipc	a0,0x4
    80005130:	3c450513          	addi	a0,a0,964 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80005134:	00001097          	auipc	ra,0x1
    80005138:	a10080e7          	jalr	-1520(ra) # 80005b44 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000513c:	02000513          	li	a0,32
    80005140:	ffffe097          	auipc	ra,0xffffe
    80005144:	4dc080e7          	jalr	1244(ra) # 8000361c <_Znwm>
    80005148:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000514c:	ffffe097          	auipc	ra,0xffffe
    80005150:	69c080e7          	jalr	1692(ra) # 800037e8 <_ZN6ThreadC1Ev>
    80005154:	00007797          	auipc	a5,0x7
    80005158:	95478793          	addi	a5,a5,-1708 # 8000baa8 <_ZTV7WorkerD+0x10>
    8000515c:	00f4b023          	sd	a5,0(s1)
    80005160:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005164:	00004517          	auipc	a0,0x4
    80005168:	3a450513          	addi	a0,a0,932 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    8000516c:	00001097          	auipc	ra,0x1
    80005170:	9d8080e7          	jalr	-1576(ra) # 80005b44 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005174:	00000493          	li	s1,0
    80005178:	00300793          	li	a5,3
    8000517c:	0297c663          	blt	a5,s1,800051a8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80005180:	00349793          	slli	a5,s1,0x3
    80005184:	fe040713          	addi	a4,s0,-32
    80005188:	00f707b3          	add	a5,a4,a5
    8000518c:	fe07b503          	ld	a0,-32(a5)
    80005190:	ffffe097          	auipc	ra,0xffffe
    80005194:	55c080e7          	jalr	1372(ra) # 800036ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005198:	0014849b          	addiw	s1,s1,1
    8000519c:	fddff06f          	j	80005178 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	590080e7          	jalr	1424(ra) # 80003730 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800051a8:	00007797          	auipc	a5,0x7
    800051ac:	a487c783          	lbu	a5,-1464(a5) # 8000bbf0 <_ZL9finishedA>
    800051b0:	fe0788e3          	beqz	a5,800051a0 <_Z20Threads_CPP_API_testv+0x124>
    800051b4:	00007797          	auipc	a5,0x7
    800051b8:	a3d7c783          	lbu	a5,-1475(a5) # 8000bbf1 <_ZL9finishedB>
    800051bc:	fe0782e3          	beqz	a5,800051a0 <_Z20Threads_CPP_API_testv+0x124>
    800051c0:	00007797          	auipc	a5,0x7
    800051c4:	a327c783          	lbu	a5,-1486(a5) # 8000bbf2 <_ZL9finishedC>
    800051c8:	fc078ce3          	beqz	a5,800051a0 <_Z20Threads_CPP_API_testv+0x124>
    800051cc:	00007797          	auipc	a5,0x7
    800051d0:	a277c783          	lbu	a5,-1497(a5) # 8000bbf3 <_ZL9finishedD>
    800051d4:	fc0786e3          	beqz	a5,800051a0 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    800051d8:	fc040493          	addi	s1,s0,-64
    800051dc:	0080006f          	j	800051e4 <_Z20Threads_CPP_API_testv+0x168>
    800051e0:	00848493          	addi	s1,s1,8
    800051e4:	fe040793          	addi	a5,s0,-32
    800051e8:	08f48663          	beq	s1,a5,80005274 <_Z20Threads_CPP_API_testv+0x1f8>
    800051ec:	0004b503          	ld	a0,0(s1)
    800051f0:	fe0508e3          	beqz	a0,800051e0 <_Z20Threads_CPP_API_testv+0x164>
    800051f4:	00053783          	ld	a5,0(a0)
    800051f8:	0087b783          	ld	a5,8(a5)
    800051fc:	000780e7          	jalr	a5
    80005200:	fe1ff06f          	j	800051e0 <_Z20Threads_CPP_API_testv+0x164>
    80005204:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005208:	00048513          	mv	a0,s1
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	438080e7          	jalr	1080(ra) # 80003644 <_ZdlPv>
    80005214:	00090513          	mv	a0,s2
    80005218:	00008097          	auipc	ra,0x8
    8000521c:	ac0080e7          	jalr	-1344(ra) # 8000ccd8 <_Unwind_Resume>
    80005220:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005224:	00048513          	mv	a0,s1
    80005228:	ffffe097          	auipc	ra,0xffffe
    8000522c:	41c080e7          	jalr	1052(ra) # 80003644 <_ZdlPv>
    80005230:	00090513          	mv	a0,s2
    80005234:	00008097          	auipc	ra,0x8
    80005238:	aa4080e7          	jalr	-1372(ra) # 8000ccd8 <_Unwind_Resume>
    8000523c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005240:	00048513          	mv	a0,s1
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	400080e7          	jalr	1024(ra) # 80003644 <_ZdlPv>
    8000524c:	00090513          	mv	a0,s2
    80005250:	00008097          	auipc	ra,0x8
    80005254:	a88080e7          	jalr	-1400(ra) # 8000ccd8 <_Unwind_Resume>
    80005258:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000525c:	00048513          	mv	a0,s1
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	3e4080e7          	jalr	996(ra) # 80003644 <_ZdlPv>
    80005268:	00090513          	mv	a0,s2
    8000526c:	00008097          	auipc	ra,0x8
    80005270:	a6c080e7          	jalr	-1428(ra) # 8000ccd8 <_Unwind_Resume>
    80005274:	03813083          	ld	ra,56(sp)
    80005278:	03013403          	ld	s0,48(sp)
    8000527c:	02813483          	ld	s1,40(sp)
    80005280:	02013903          	ld	s2,32(sp)
    80005284:	04010113          	addi	sp,sp,64
    80005288:	00008067          	ret

000000008000528c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000528c:	ff010113          	addi	sp,sp,-16
    80005290:	00113423          	sd	ra,8(sp)
    80005294:	00813023          	sd	s0,0(sp)
    80005298:	01010413          	addi	s0,sp,16
    8000529c:	00006797          	auipc	a5,0x6
    800052a0:	79478793          	addi	a5,a5,1940 # 8000ba30 <_ZTV7WorkerA+0x10>
    800052a4:	00f53023          	sd	a5,0(a0)
    800052a8:	ffffe097          	auipc	ra,0xffffe
    800052ac:	2b8080e7          	jalr	696(ra) # 80003560 <_ZN6ThreadD1Ev>
    800052b0:	00813083          	ld	ra,8(sp)
    800052b4:	00013403          	ld	s0,0(sp)
    800052b8:	01010113          	addi	sp,sp,16
    800052bc:	00008067          	ret

00000000800052c0 <_ZN7WorkerAD0Ev>:
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00813823          	sd	s0,16(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	00050493          	mv	s1,a0
    800052d8:	00006797          	auipc	a5,0x6
    800052dc:	75878793          	addi	a5,a5,1880 # 8000ba30 <_ZTV7WorkerA+0x10>
    800052e0:	00f53023          	sd	a5,0(a0)
    800052e4:	ffffe097          	auipc	ra,0xffffe
    800052e8:	27c080e7          	jalr	636(ra) # 80003560 <_ZN6ThreadD1Ev>
    800052ec:	00048513          	mv	a0,s1
    800052f0:	ffffe097          	auipc	ra,0xffffe
    800052f4:	354080e7          	jalr	852(ra) # 80003644 <_ZdlPv>
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	02010113          	addi	sp,sp,32
    80005308:	00008067          	ret

000000008000530c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000530c:	ff010113          	addi	sp,sp,-16
    80005310:	00113423          	sd	ra,8(sp)
    80005314:	00813023          	sd	s0,0(sp)
    80005318:	01010413          	addi	s0,sp,16
    8000531c:	00006797          	auipc	a5,0x6
    80005320:	73c78793          	addi	a5,a5,1852 # 8000ba58 <_ZTV7WorkerB+0x10>
    80005324:	00f53023          	sd	a5,0(a0)
    80005328:	ffffe097          	auipc	ra,0xffffe
    8000532c:	238080e7          	jalr	568(ra) # 80003560 <_ZN6ThreadD1Ev>
    80005330:	00813083          	ld	ra,8(sp)
    80005334:	00013403          	ld	s0,0(sp)
    80005338:	01010113          	addi	sp,sp,16
    8000533c:	00008067          	ret

0000000080005340 <_ZN7WorkerBD0Ev>:
    80005340:	fe010113          	addi	sp,sp,-32
    80005344:	00113c23          	sd	ra,24(sp)
    80005348:	00813823          	sd	s0,16(sp)
    8000534c:	00913423          	sd	s1,8(sp)
    80005350:	02010413          	addi	s0,sp,32
    80005354:	00050493          	mv	s1,a0
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	70078793          	addi	a5,a5,1792 # 8000ba58 <_ZTV7WorkerB+0x10>
    80005360:	00f53023          	sd	a5,0(a0)
    80005364:	ffffe097          	auipc	ra,0xffffe
    80005368:	1fc080e7          	jalr	508(ra) # 80003560 <_ZN6ThreadD1Ev>
    8000536c:	00048513          	mv	a0,s1
    80005370:	ffffe097          	auipc	ra,0xffffe
    80005374:	2d4080e7          	jalr	724(ra) # 80003644 <_ZdlPv>
    80005378:	01813083          	ld	ra,24(sp)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	00813483          	ld	s1,8(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000538c:	ff010113          	addi	sp,sp,-16
    80005390:	00113423          	sd	ra,8(sp)
    80005394:	00813023          	sd	s0,0(sp)
    80005398:	01010413          	addi	s0,sp,16
    8000539c:	00006797          	auipc	a5,0x6
    800053a0:	6e478793          	addi	a5,a5,1764 # 8000ba80 <_ZTV7WorkerC+0x10>
    800053a4:	00f53023          	sd	a5,0(a0)
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	1b8080e7          	jalr	440(ra) # 80003560 <_ZN6ThreadD1Ev>
    800053b0:	00813083          	ld	ra,8(sp)
    800053b4:	00013403          	ld	s0,0(sp)
    800053b8:	01010113          	addi	sp,sp,16
    800053bc:	00008067          	ret

00000000800053c0 <_ZN7WorkerCD0Ev>:
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00113c23          	sd	ra,24(sp)
    800053c8:	00813823          	sd	s0,16(sp)
    800053cc:	00913423          	sd	s1,8(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	00050493          	mv	s1,a0
    800053d8:	00006797          	auipc	a5,0x6
    800053dc:	6a878793          	addi	a5,a5,1704 # 8000ba80 <_ZTV7WorkerC+0x10>
    800053e0:	00f53023          	sd	a5,0(a0)
    800053e4:	ffffe097          	auipc	ra,0xffffe
    800053e8:	17c080e7          	jalr	380(ra) # 80003560 <_ZN6ThreadD1Ev>
    800053ec:	00048513          	mv	a0,s1
    800053f0:	ffffe097          	auipc	ra,0xffffe
    800053f4:	254080e7          	jalr	596(ra) # 80003644 <_ZdlPv>
    800053f8:	01813083          	ld	ra,24(sp)
    800053fc:	01013403          	ld	s0,16(sp)
    80005400:	00813483          	ld	s1,8(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000540c:	ff010113          	addi	sp,sp,-16
    80005410:	00113423          	sd	ra,8(sp)
    80005414:	00813023          	sd	s0,0(sp)
    80005418:	01010413          	addi	s0,sp,16
    8000541c:	00006797          	auipc	a5,0x6
    80005420:	68c78793          	addi	a5,a5,1676 # 8000baa8 <_ZTV7WorkerD+0x10>
    80005424:	00f53023          	sd	a5,0(a0)
    80005428:	ffffe097          	auipc	ra,0xffffe
    8000542c:	138080e7          	jalr	312(ra) # 80003560 <_ZN6ThreadD1Ev>
    80005430:	00813083          	ld	ra,8(sp)
    80005434:	00013403          	ld	s0,0(sp)
    80005438:	01010113          	addi	sp,sp,16
    8000543c:	00008067          	ret

0000000080005440 <_ZN7WorkerDD0Ev>:
    80005440:	fe010113          	addi	sp,sp,-32
    80005444:	00113c23          	sd	ra,24(sp)
    80005448:	00813823          	sd	s0,16(sp)
    8000544c:	00913423          	sd	s1,8(sp)
    80005450:	02010413          	addi	s0,sp,32
    80005454:	00050493          	mv	s1,a0
    80005458:	00006797          	auipc	a5,0x6
    8000545c:	65078793          	addi	a5,a5,1616 # 8000baa8 <_ZTV7WorkerD+0x10>
    80005460:	00f53023          	sd	a5,0(a0)
    80005464:	ffffe097          	auipc	ra,0xffffe
    80005468:	0fc080e7          	jalr	252(ra) # 80003560 <_ZN6ThreadD1Ev>
    8000546c:	00048513          	mv	a0,s1
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	1d4080e7          	jalr	468(ra) # 80003644 <_ZdlPv>
    80005478:	01813083          	ld	ra,24(sp)
    8000547c:	01013403          	ld	s0,16(sp)
    80005480:	00813483          	ld	s1,8(sp)
    80005484:	02010113          	addi	sp,sp,32
    80005488:	00008067          	ret

000000008000548c <_ZN7WorkerA3runEv>:
    void run() override {
    8000548c:	ff010113          	addi	sp,sp,-16
    80005490:	00113423          	sd	ra,8(sp)
    80005494:	00813023          	sd	s0,0(sp)
    80005498:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000549c:	00000593          	li	a1,0
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	774080e7          	jalr	1908(ra) # 80004c14 <_ZN7WorkerA11workerBodyAEPv>
    }
    800054a8:	00813083          	ld	ra,8(sp)
    800054ac:	00013403          	ld	s0,0(sp)
    800054b0:	01010113          	addi	sp,sp,16
    800054b4:	00008067          	ret

00000000800054b8 <_ZN7WorkerB3runEv>:
    void run() override {
    800054b8:	ff010113          	addi	sp,sp,-16
    800054bc:	00113423          	sd	ra,8(sp)
    800054c0:	00813023          	sd	s0,0(sp)
    800054c4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800054c8:	00000593          	li	a1,0
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	814080e7          	jalr	-2028(ra) # 80004ce0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800054d4:	00813083          	ld	ra,8(sp)
    800054d8:	00013403          	ld	s0,0(sp)
    800054dc:	01010113          	addi	sp,sp,16
    800054e0:	00008067          	ret

00000000800054e4 <_ZN7WorkerC3runEv>:
    void run() override {
    800054e4:	ff010113          	addi	sp,sp,-16
    800054e8:	00113423          	sd	ra,8(sp)
    800054ec:	00813023          	sd	s0,0(sp)
    800054f0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800054f4:	00000593          	li	a1,0
    800054f8:	00000097          	auipc	ra,0x0
    800054fc:	8bc080e7          	jalr	-1860(ra) # 80004db4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005500:	00813083          	ld	ra,8(sp)
    80005504:	00013403          	ld	s0,0(sp)
    80005508:	01010113          	addi	sp,sp,16
    8000550c:	00008067          	ret

0000000080005510 <_ZN7WorkerD3runEv>:

    void run() override {
    80005510:	ff010113          	addi	sp,sp,-16
    80005514:	00113423          	sd	ra,8(sp)
    80005518:	00813023          	sd	s0,0(sp)
    8000551c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005520:	00000593          	li	a1,0
    80005524:	00000097          	auipc	ra,0x0
    80005528:	a10080e7          	jalr	-1520(ra) # 80004f34 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000552c:	00813083          	ld	ra,8(sp)
    80005530:	00013403          	ld	s0,0(sp)
    80005534:	01010113          	addi	sp,sp,16
    80005538:	00008067          	ret

000000008000553c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    8000553c:	fe010113          	addi	sp,sp,-32
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005550:	00000493          	li	s1,0
    80005554:	02c0006f          	j	80005580 <_Z11workerBodyAPv+0x44>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 1000; j++) {
    80005558:	00168693          	addi	a3,a3,1
    8000555c:	3e700793          	li	a5,999
    80005560:	00d7ee63          	bltu	a5,a3,8000557c <_Z11workerBodyAPv+0x40>
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005564:	00000713          	li	a4,0
    80005568:	000077b7          	lui	a5,0x7
    8000556c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005570:	fee7e4e3          	bltu	a5,a4,80005558 <_Z11workerBodyAPv+0x1c>
    80005574:	00170713          	addi	a4,a4,1
    80005578:	ff1ff06f          	j	80005568 <_Z11workerBodyAPv+0x2c>
    for (uint64 i = 0; i < 10; i++) {
    8000557c:	00148493          	addi	s1,s1,1
    80005580:	00900793          	li	a5,9
    80005584:	0497e063          	bltu	a5,s1,800055c4 <_Z11workerBodyAPv+0x88>
        printString("A: i="); printInt(i); printString("\n");
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	ea050513          	addi	a0,a0,-352 # 80009428 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80005590:	00000097          	auipc	ra,0x0
    80005594:	5b4080e7          	jalr	1460(ra) # 80005b44 <_Z11printStringPKc>
    80005598:	00000613          	li	a2,0
    8000559c:	00a00593          	li	a1,10
    800055a0:	0004851b          	sext.w	a0,s1
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	738080e7          	jalr	1848(ra) # 80005cdc <_Z8printIntiii>
    800055ac:	00004517          	auipc	a0,0x4
    800055b0:	bcc50513          	addi	a0,a0,-1076 # 80009178 <CONSOLE_STATUS+0x168>
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	590080e7          	jalr	1424(ra) # 80005b44 <_Z11printStringPKc>
        for (uint64 j = 0; j < 1000; j++) {
    800055bc:	00000693          	li	a3,0
    800055c0:	f9dff06f          	j	8000555c <_Z11workerBodyAPv+0x20>
            //thread_dispatch();
        }
    }
    printString("A finished!\n");
    800055c4:	00004517          	auipc	a0,0x4
    800055c8:	e6c50513          	addi	a0,a0,-404 # 80009430 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	578080e7          	jalr	1400(ra) # 80005b44 <_Z11printStringPKc>
    finishedA = true;
    800055d4:	00100793          	li	a5,1
    800055d8:	00006717          	auipc	a4,0x6
    800055dc:	60f70e23          	sb	a5,1564(a4) # 8000bbf4 <_ZL9finishedA>
}
    800055e0:	01813083          	ld	ra,24(sp)
    800055e4:	01013403          	ld	s0,16(sp)
    800055e8:	00813483          	ld	s1,8(sp)
    800055ec:	02010113          	addi	sp,sp,32
    800055f0:	00008067          	ret

00000000800055f4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800055f4:	fe010113          	addi	sp,sp,-32
    800055f8:	00113c23          	sd	ra,24(sp)
    800055fc:	00813823          	sd	s0,16(sp)
    80005600:	00913423          	sd	s1,8(sp)
    80005604:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005608:	00000493          	li	s1,0
    8000560c:	02c0006f          	j	80005638 <_Z11workerBodyBPv+0x44>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 1000; j++) {
    80005610:	00168693          	addi	a3,a3,1
    80005614:	3e700793          	li	a5,999
    80005618:	00d7ee63          	bltu	a5,a3,80005634 <_Z11workerBodyBPv+0x40>
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000561c:	00000713          	li	a4,0
    80005620:	000077b7          	lui	a5,0x7
    80005624:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005628:	fee7e4e3          	bltu	a5,a4,80005610 <_Z11workerBodyBPv+0x1c>
    8000562c:	00170713          	addi	a4,a4,1
    80005630:	ff1ff06f          	j	80005620 <_Z11workerBodyBPv+0x2c>
    for (uint64 i = 0; i < 16; i++) {
    80005634:	00148493          	addi	s1,s1,1
    80005638:	00f00793          	li	a5,15
    8000563c:	0497e063          	bltu	a5,s1,8000567c <_Z11workerBodyBPv+0x88>
        printString("B: i="); printInt(i); printString("\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	e0050513          	addi	a0,a0,-512 # 80009440 <_ZZN5Riscv12printIntegerEmE6digits+0x130>
    80005648:	00000097          	auipc	ra,0x0
    8000564c:	4fc080e7          	jalr	1276(ra) # 80005b44 <_Z11printStringPKc>
    80005650:	00000613          	li	a2,0
    80005654:	00a00593          	li	a1,10
    80005658:	0004851b          	sext.w	a0,s1
    8000565c:	00000097          	auipc	ra,0x0
    80005660:	680080e7          	jalr	1664(ra) # 80005cdc <_Z8printIntiii>
    80005664:	00004517          	auipc	a0,0x4
    80005668:	b1450513          	addi	a0,a0,-1260 # 80009178 <CONSOLE_STATUS+0x168>
    8000566c:	00000097          	auipc	ra,0x0
    80005670:	4d8080e7          	jalr	1240(ra) # 80005b44 <_Z11printStringPKc>
        for (uint64 j = 0; j < 1000; j++) {
    80005674:	00000693          	li	a3,0
    80005678:	f9dff06f          	j	80005614 <_Z11workerBodyBPv+0x20>
            //thread_dispatch();
        }
    }
    printString("B finished!\n");
    8000567c:	00004517          	auipc	a0,0x4
    80005680:	dcc50513          	addi	a0,a0,-564 # 80009448 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005684:	00000097          	auipc	ra,0x0
    80005688:	4c0080e7          	jalr	1216(ra) # 80005b44 <_Z11printStringPKc>
    finishedB = true;
    8000568c:	00100793          	li	a5,1
    80005690:	00006717          	auipc	a4,0x6
    80005694:	56f702a3          	sb	a5,1381(a4) # 8000bbf5 <_ZL9finishedB>
    thread_dispatch();
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	c8c080e7          	jalr	-884(ra) # 80001324 <thread_dispatch>
}
    800056a0:	01813083          	ld	ra,24(sp)
    800056a4:	01013403          	ld	s0,16(sp)
    800056a8:	00813483          	ld	s1,8(sp)
    800056ac:	02010113          	addi	sp,sp,32
    800056b0:	00008067          	ret

00000000800056b4 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    800056b4:	fe010113          	addi	sp,sp,-32
    800056b8:	00113c23          	sd	ra,24(sp)
    800056bc:	00813823          	sd	s0,16(sp)
    800056c0:	00913423          	sd	s1,8(sp)
    800056c4:	01213023          	sd	s2,0(sp)
    800056c8:	02010413          	addi	s0,sp,32
    800056cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800056d0:	00100793          	li	a5,1
    800056d4:	02a7f863          	bgeu	a5,a0,80005704 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056d8:	00a00793          	li	a5,10
    800056dc:	02f577b3          	remu	a5,a0,a5
    800056e0:	02078e63          	beqz	a5,8000571c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056e4:	fff48513          	addi	a0,s1,-1
    800056e8:	00000097          	auipc	ra,0x0
    800056ec:	fcc080e7          	jalr	-52(ra) # 800056b4 <_ZL9fibonaccim>
    800056f0:	00050913          	mv	s2,a0
    800056f4:	ffe48513          	addi	a0,s1,-2
    800056f8:	00000097          	auipc	ra,0x0
    800056fc:	fbc080e7          	jalr	-68(ra) # 800056b4 <_ZL9fibonaccim>
    80005700:	00a90533          	add	a0,s2,a0
}
    80005704:	01813083          	ld	ra,24(sp)
    80005708:	01013403          	ld	s0,16(sp)
    8000570c:	00813483          	ld	s1,8(sp)
    80005710:	00013903          	ld	s2,0(sp)
    80005714:	02010113          	addi	sp,sp,32
    80005718:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	c08080e7          	jalr	-1016(ra) # 80001324 <thread_dispatch>
    80005724:	fc1ff06f          	j	800056e4 <_ZL9fibonaccim+0x30>

0000000080005728 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005728:	fe010113          	addi	sp,sp,-32
    8000572c:	00113c23          	sd	ra,24(sp)
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00913423          	sd	s1,8(sp)
    80005738:	01213023          	sd	s2,0(sp)
    8000573c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005740:	00000493          	li	s1,0
    80005744:	0400006f          	j	80005784 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	d1050513          	addi	a0,a0,-752 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005750:	00000097          	auipc	ra,0x0
    80005754:	3f4080e7          	jalr	1012(ra) # 80005b44 <_Z11printStringPKc>
    80005758:	00000613          	li	a2,0
    8000575c:	00a00593          	li	a1,10
    80005760:	00048513          	mv	a0,s1
    80005764:	00000097          	auipc	ra,0x0
    80005768:	578080e7          	jalr	1400(ra) # 80005cdc <_Z8printIntiii>
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	a0c50513          	addi	a0,a0,-1524 # 80009178 <CONSOLE_STATUS+0x168>
    80005774:	00000097          	auipc	ra,0x0
    80005778:	3d0080e7          	jalr	976(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000577c:	0014849b          	addiw	s1,s1,1
    80005780:	0ff4f493          	andi	s1,s1,255
    80005784:	00200793          	li	a5,2
    80005788:	fc97f0e3          	bgeu	a5,s1,80005748 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	cd450513          	addi	a0,a0,-812 # 80009460 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80005794:	00000097          	auipc	ra,0x0
    80005798:	3b0080e7          	jalr	944(ra) # 80005b44 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000579c:	00700313          	li	t1,7
    thread_dispatch();
    800057a0:	ffffc097          	auipc	ra,0xffffc
    800057a4:	b84080e7          	jalr	-1148(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800057a8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	cc450513          	addi	a0,a0,-828 # 80009470 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	390080e7          	jalr	912(ra) # 80005b44 <_Z11printStringPKc>
    800057bc:	00000613          	li	a2,0
    800057c0:	00a00593          	li	a1,10
    800057c4:	0009051b          	sext.w	a0,s2
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	514080e7          	jalr	1300(ra) # 80005cdc <_Z8printIntiii>
    800057d0:	00004517          	auipc	a0,0x4
    800057d4:	9a850513          	addi	a0,a0,-1624 # 80009178 <CONSOLE_STATUS+0x168>
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	36c080e7          	jalr	876(ra) # 80005b44 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800057e0:	00c00513          	li	a0,12
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	ed0080e7          	jalr	-304(ra) # 800056b4 <_ZL9fibonaccim>
    800057ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057f0:	00004517          	auipc	a0,0x4
    800057f4:	c8850513          	addi	a0,a0,-888 # 80009478 <_ZZN5Riscv12printIntegerEmE6digits+0x168>
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	34c080e7          	jalr	844(ra) # 80005b44 <_Z11printStringPKc>
    80005800:	00000613          	li	a2,0
    80005804:	00a00593          	li	a1,10
    80005808:	0009051b          	sext.w	a0,s2
    8000580c:	00000097          	auipc	ra,0x0
    80005810:	4d0080e7          	jalr	1232(ra) # 80005cdc <_Z8printIntiii>
    80005814:	00004517          	auipc	a0,0x4
    80005818:	96450513          	addi	a0,a0,-1692 # 80009178 <CONSOLE_STATUS+0x168>
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	328080e7          	jalr	808(ra) # 80005b44 <_Z11printStringPKc>
    80005824:	0400006f          	j	80005864 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005828:	00004517          	auipc	a0,0x4
    8000582c:	c3050513          	addi	a0,a0,-976 # 80009458 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80005830:	00000097          	auipc	ra,0x0
    80005834:	314080e7          	jalr	788(ra) # 80005b44 <_Z11printStringPKc>
    80005838:	00000613          	li	a2,0
    8000583c:	00a00593          	li	a1,10
    80005840:	00048513          	mv	a0,s1
    80005844:	00000097          	auipc	ra,0x0
    80005848:	498080e7          	jalr	1176(ra) # 80005cdc <_Z8printIntiii>
    8000584c:	00004517          	auipc	a0,0x4
    80005850:	92c50513          	addi	a0,a0,-1748 # 80009178 <CONSOLE_STATUS+0x168>
    80005854:	00000097          	auipc	ra,0x0
    80005858:	2f0080e7          	jalr	752(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000585c:	0014849b          	addiw	s1,s1,1
    80005860:	0ff4f493          	andi	s1,s1,255
    80005864:	00500793          	li	a5,5
    80005868:	fc97f0e3          	bgeu	a5,s1,80005828 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    8000586c:	00004517          	auipc	a0,0x4
    80005870:	cb450513          	addi	a0,a0,-844 # 80009520 <_ZZN5Riscv12printIntegerEmE6digits+0x210>
    80005874:	00000097          	auipc	ra,0x0
    80005878:	2d0080e7          	jalr	720(ra) # 80005b44 <_Z11printStringPKc>
    finishedC = true;
    8000587c:	00100793          	li	a5,1
    80005880:	00006717          	auipc	a4,0x6
    80005884:	36f70b23          	sb	a5,886(a4) # 8000bbf6 <_ZL9finishedC>
    thread_dispatch();
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	a9c080e7          	jalr	-1380(ra) # 80001324 <thread_dispatch>
}
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	01013403          	ld	s0,16(sp)
    80005898:	00813483          	ld	s1,8(sp)
    8000589c:	00013903          	ld	s2,0(sp)
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret

00000000800058a8 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800058a8:	fe010113          	addi	sp,sp,-32
    800058ac:	00113c23          	sd	ra,24(sp)
    800058b0:	00813823          	sd	s0,16(sp)
    800058b4:	00913423          	sd	s1,8(sp)
    800058b8:	01213023          	sd	s2,0(sp)
    800058bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800058c0:	00a00493          	li	s1,10
    800058c4:	0400006f          	j	80005904 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800058c8:	00004517          	auipc	a0,0x4
    800058cc:	bc050513          	addi	a0,a0,-1088 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	274080e7          	jalr	628(ra) # 80005b44 <_Z11printStringPKc>
    800058d8:	00000613          	li	a2,0
    800058dc:	00a00593          	li	a1,10
    800058e0:	00048513          	mv	a0,s1
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	3f8080e7          	jalr	1016(ra) # 80005cdc <_Z8printIntiii>
    800058ec:	00004517          	auipc	a0,0x4
    800058f0:	88c50513          	addi	a0,a0,-1908 # 80009178 <CONSOLE_STATUS+0x168>
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	250080e7          	jalr	592(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800058fc:	0014849b          	addiw	s1,s1,1
    80005900:	0ff4f493          	andi	s1,s1,255
    80005904:	00c00793          	li	a5,12
    80005908:	fc97f0e3          	bgeu	a5,s1,800058c8 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	b8450513          	addi	a0,a0,-1148 # 80009490 <_ZZN5Riscv12printIntegerEmE6digits+0x180>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	230080e7          	jalr	560(ra) # 80005b44 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000591c:	00500313          	li	t1,5
    thread_dispatch();
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	a04080e7          	jalr	-1532(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005928:	01000513          	li	a0,16
    8000592c:	00000097          	auipc	ra,0x0
    80005930:	d88080e7          	jalr	-632(ra) # 800056b4 <_ZL9fibonaccim>
    80005934:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005938:	00004517          	auipc	a0,0x4
    8000593c:	b6850513          	addi	a0,a0,-1176 # 800094a0 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005940:	00000097          	auipc	ra,0x0
    80005944:	204080e7          	jalr	516(ra) # 80005b44 <_Z11printStringPKc>
    80005948:	00000613          	li	a2,0
    8000594c:	00a00593          	li	a1,10
    80005950:	0009051b          	sext.w	a0,s2
    80005954:	00000097          	auipc	ra,0x0
    80005958:	388080e7          	jalr	904(ra) # 80005cdc <_Z8printIntiii>
    8000595c:	00004517          	auipc	a0,0x4
    80005960:	81c50513          	addi	a0,a0,-2020 # 80009178 <CONSOLE_STATUS+0x168>
    80005964:	00000097          	auipc	ra,0x0
    80005968:	1e0080e7          	jalr	480(ra) # 80005b44 <_Z11printStringPKc>
    8000596c:	0400006f          	j	800059ac <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005970:	00004517          	auipc	a0,0x4
    80005974:	b1850513          	addi	a0,a0,-1256 # 80009488 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80005978:	00000097          	auipc	ra,0x0
    8000597c:	1cc080e7          	jalr	460(ra) # 80005b44 <_Z11printStringPKc>
    80005980:	00000613          	li	a2,0
    80005984:	00a00593          	li	a1,10
    80005988:	00048513          	mv	a0,s1
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	350080e7          	jalr	848(ra) # 80005cdc <_Z8printIntiii>
    80005994:	00003517          	auipc	a0,0x3
    80005998:	7e450513          	addi	a0,a0,2020 # 80009178 <CONSOLE_STATUS+0x168>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	1a8080e7          	jalr	424(ra) # 80005b44 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800059a4:	0014849b          	addiw	s1,s1,1
    800059a8:	0ff4f493          	andi	s1,s1,255
    800059ac:	00f00793          	li	a5,15
    800059b0:	fc97f0e3          	bgeu	a5,s1,80005970 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800059b4:	00004517          	auipc	a0,0x4
    800059b8:	afc50513          	addi	a0,a0,-1284 # 800094b0 <_ZZN5Riscv12printIntegerEmE6digits+0x1a0>
    800059bc:	00000097          	auipc	ra,0x0
    800059c0:	188080e7          	jalr	392(ra) # 80005b44 <_Z11printStringPKc>
    finishedD = true;
    800059c4:	00100793          	li	a5,1
    800059c8:	00006717          	auipc	a4,0x6
    800059cc:	22f707a3          	sb	a5,559(a4) # 8000bbf7 <_ZL9finishedD>
    thread_dispatch();
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	954080e7          	jalr	-1708(ra) # 80001324 <thread_dispatch>
}
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	00013903          	ld	s2,0(sp)
    800059e8:	02010113          	addi	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800059f0:	fc010113          	addi	sp,sp,-64
    800059f4:	02113c23          	sd	ra,56(sp)
    800059f8:	02813823          	sd	s0,48(sp)
    800059fc:	02913423          	sd	s1,40(sp)
    80005a00:	03213023          	sd	s2,32(sp)
    80005a04:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a08:	00000613          	li	a2,0
    80005a0c:	00000597          	auipc	a1,0x0
    80005a10:	b3058593          	addi	a1,a1,-1232 # 8000553c <_Z11workerBodyAPv>
    80005a14:	fc040513          	addi	a0,s0,-64
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	88c080e7          	jalr	-1908(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80005a20:	00004517          	auipc	a0,0x4
    80005a24:	aa050513          	addi	a0,a0,-1376 # 800094c0 <_ZZN5Riscv12printIntegerEmE6digits+0x1b0>
    80005a28:	00000097          	auipc	ra,0x0
    80005a2c:	11c080e7          	jalr	284(ra) # 80005b44 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a30:	00000613          	li	a2,0
    80005a34:	00000597          	auipc	a1,0x0
    80005a38:	bc058593          	addi	a1,a1,-1088 # 800055f4 <_Z11workerBodyBPv>
    80005a3c:	fc840513          	addi	a0,s0,-56
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	864080e7          	jalr	-1948(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80005a48:	00004517          	auipc	a0,0x4
    80005a4c:	a9050513          	addi	a0,a0,-1392 # 800094d8 <_ZZN5Riscv12printIntegerEmE6digits+0x1c8>
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	0f4080e7          	jalr	244(ra) # 80005b44 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a58:	00000613          	li	a2,0
    80005a5c:	00000597          	auipc	a1,0x0
    80005a60:	ccc58593          	addi	a1,a1,-820 # 80005728 <_Z11workerBodyCPv>
    80005a64:	fd040513          	addi	a0,s0,-48
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	83c080e7          	jalr	-1988(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005a70:	00004517          	auipc	a0,0x4
    80005a74:	a8050513          	addi	a0,a0,-1408 # 800094f0 <_ZZN5Riscv12printIntegerEmE6digits+0x1e0>
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	0cc080e7          	jalr	204(ra) # 80005b44 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a80:	00000613          	li	a2,0
    80005a84:	00000597          	auipc	a1,0x0
    80005a88:	e2458593          	addi	a1,a1,-476 # 800058a8 <_Z11workerBodyDPv>
    80005a8c:	fd840513          	addi	a0,s0,-40
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	814080e7          	jalr	-2028(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80005a98:	00004517          	auipc	a0,0x4
    80005a9c:	a7050513          	addi	a0,a0,-1424 # 80009508 <_ZZN5Riscv12printIntegerEmE6digits+0x1f8>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	0a4080e7          	jalr	164(ra) # 80005b44 <_Z11printStringPKc>
    80005aa8:	01c0006f          	j	80005ac4 <_Z18Threads_C_API_testv+0xd4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        printString("Main thread\n");
    80005aac:	00003517          	auipc	a0,0x3
    80005ab0:	5ec50513          	addi	a0,a0,1516 # 80009098 <CONSOLE_STATUS+0x88>
    80005ab4:	00000097          	auipc	ra,0x0
    80005ab8:	090080e7          	jalr	144(ra) # 80005b44 <_Z11printStringPKc>
        thread_dispatch();
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	868080e7          	jalr	-1944(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005ac4:	00006797          	auipc	a5,0x6
    80005ac8:	1307c783          	lbu	a5,304(a5) # 8000bbf4 <_ZL9finishedA>
    80005acc:	fe0780e3          	beqz	a5,80005aac <_Z18Threads_C_API_testv+0xbc>
    80005ad0:	00006797          	auipc	a5,0x6
    80005ad4:	1257c783          	lbu	a5,293(a5) # 8000bbf5 <_ZL9finishedB>
    80005ad8:	fc078ae3          	beqz	a5,80005aac <_Z18Threads_C_API_testv+0xbc>
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	11a7c783          	lbu	a5,282(a5) # 8000bbf6 <_ZL9finishedC>
    80005ae4:	fc0784e3          	beqz	a5,80005aac <_Z18Threads_C_API_testv+0xbc>
    80005ae8:	00006797          	auipc	a5,0x6
    80005aec:	10f7c783          	lbu	a5,271(a5) # 8000bbf7 <_ZL9finishedD>
    80005af0:	fa078ee3          	beqz	a5,80005aac <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80005af4:	fc040493          	addi	s1,s0,-64
    80005af8:	0080006f          	j	80005b00 <_Z18Threads_C_API_testv+0x110>
    80005afc:	00848493          	addi	s1,s1,8
    80005b00:	fe040793          	addi	a5,s0,-32
    80005b04:	02f48463          	beq	s1,a5,80005b2c <_Z18Threads_C_API_testv+0x13c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80005b08:	0004b903          	ld	s2,0(s1)
    80005b0c:	fe0908e3          	beqz	s2,80005afc <_Z18Threads_C_API_testv+0x10c>
    80005b10:	00090513          	mv	a0,s2
    80005b14:	ffffd097          	auipc	ra,0xffffd
    80005b18:	21c080e7          	jalr	540(ra) # 80002d30 <_ZN3PCBD1Ev>
    80005b1c:	00090513          	mv	a0,s2
    80005b20:	ffffd097          	auipc	ra,0xffffd
    80005b24:	1e8080e7          	jalr	488(ra) # 80002d08 <_ZN3PCBdlEPv>
    80005b28:	fd5ff06f          	j	80005afc <_Z18Threads_C_API_testv+0x10c>
    }
}
    80005b2c:	03813083          	ld	ra,56(sp)
    80005b30:	03013403          	ld	s0,48(sp)
    80005b34:	02813483          	ld	s1,40(sp)
    80005b38:	02013903          	ld	s2,32(sp)
    80005b3c:	04010113          	addi	sp,sp,64
    80005b40:	00008067          	ret

0000000080005b44 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005b44:	fe010113          	addi	sp,sp,-32
    80005b48:	00113c23          	sd	ra,24(sp)
    80005b4c:	00813823          	sd	s0,16(sp)
    80005b50:	00913423          	sd	s1,8(sp)
    80005b54:	02010413          	addi	s0,sp,32
    80005b58:	00050493          	mv	s1,a0
    LOCK();
    80005b5c:	00100613          	li	a2,1
    80005b60:	00000593          	li	a1,0
    80005b64:	00006517          	auipc	a0,0x6
    80005b68:	09450513          	addi	a0,a0,148 # 8000bbf8 <lockPrint>
    80005b6c:	ffffb097          	auipc	ra,0xffffb
    80005b70:	69c080e7          	jalr	1692(ra) # 80001208 <copy_and_swap>
    80005b74:	fe0514e3          	bnez	a0,80005b5c <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005b78:	0004c503          	lbu	a0,0(s1)
    80005b7c:	00050a63          	beqz	a0,80005b90 <_Z11printStringPKc+0x4c>
}

inline void putc(char c) {
    __putc(c);
    80005b80:	00003097          	auipc	ra,0x3
    80005b84:	9fc080e7          	jalr	-1540(ra) # 8000857c <__putc>
        putc(*string);
        string++;
    80005b88:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005b8c:	fedff06f          	j	80005b78 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005b90:	00000613          	li	a2,0
    80005b94:	00100593          	li	a1,1
    80005b98:	00006517          	auipc	a0,0x6
    80005b9c:	06050513          	addi	a0,a0,96 # 8000bbf8 <lockPrint>
    80005ba0:	ffffb097          	auipc	ra,0xffffb
    80005ba4:	668080e7          	jalr	1640(ra) # 80001208 <copy_and_swap>
    80005ba8:	fe0514e3          	bnez	a0,80005b90 <_Z11printStringPKc+0x4c>
}
    80005bac:	01813083          	ld	ra,24(sp)
    80005bb0:	01013403          	ld	s0,16(sp)
    80005bb4:	00813483          	ld	s1,8(sp)
    80005bb8:	02010113          	addi	sp,sp,32
    80005bbc:	00008067          	ret

0000000080005bc0 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005bc0:	fd010113          	addi	sp,sp,-48
    80005bc4:	02113423          	sd	ra,40(sp)
    80005bc8:	02813023          	sd	s0,32(sp)
    80005bcc:	00913c23          	sd	s1,24(sp)
    80005bd0:	01213823          	sd	s2,16(sp)
    80005bd4:	01313423          	sd	s3,8(sp)
    80005bd8:	01413023          	sd	s4,0(sp)
    80005bdc:	03010413          	addi	s0,sp,48
    80005be0:	00050993          	mv	s3,a0
    80005be4:	00058a13          	mv	s4,a1
    LOCK();
    80005be8:	00100613          	li	a2,1
    80005bec:	00000593          	li	a1,0
    80005bf0:	00006517          	auipc	a0,0x6
    80005bf4:	00850513          	addi	a0,a0,8 # 8000bbf8 <lockPrint>
    80005bf8:	ffffb097          	auipc	ra,0xffffb
    80005bfc:	610080e7          	jalr	1552(ra) # 80001208 <copy_and_swap>
    80005c00:	fe0514e3          	bnez	a0,80005be8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005c04:	00000913          	li	s2,0
    80005c08:	00090493          	mv	s1,s2
    80005c0c:	0019091b          	addiw	s2,s2,1
    80005c10:	03495a63          	bge	s2,s4,80005c44 <_Z9getStringPci+0x84>
    return __getc();
    80005c14:	00003097          	auipc	ra,0x3
    80005c18:	9a4080e7          	jalr	-1628(ra) # 800085b8 <__getc>
        cc = getc();
        if (cc < 1)
    80005c1c:	02050463          	beqz	a0,80005c44 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005c20:	009984b3          	add	s1,s3,s1
    80005c24:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005c28:	00a00793          	li	a5,10
    80005c2c:	00f50a63          	beq	a0,a5,80005c40 <_Z9getStringPci+0x80>
    80005c30:	00d00793          	li	a5,13
    80005c34:	fcf51ae3          	bne	a0,a5,80005c08 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005c38:	00090493          	mv	s1,s2
    80005c3c:	0080006f          	j	80005c44 <_Z9getStringPci+0x84>
    80005c40:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c44:	009984b3          	add	s1,s3,s1
    80005c48:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c4c:	00000613          	li	a2,0
    80005c50:	00100593          	li	a1,1
    80005c54:	00006517          	auipc	a0,0x6
    80005c58:	fa450513          	addi	a0,a0,-92 # 8000bbf8 <lockPrint>
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	5ac080e7          	jalr	1452(ra) # 80001208 <copy_and_swap>
    80005c64:	fe0514e3          	bnez	a0,80005c4c <_Z9getStringPci+0x8c>
    return buf;
}
    80005c68:	00098513          	mv	a0,s3
    80005c6c:	02813083          	ld	ra,40(sp)
    80005c70:	02013403          	ld	s0,32(sp)
    80005c74:	01813483          	ld	s1,24(sp)
    80005c78:	01013903          	ld	s2,16(sp)
    80005c7c:	00813983          	ld	s3,8(sp)
    80005c80:	00013a03          	ld	s4,0(sp)
    80005c84:	03010113          	addi	sp,sp,48
    80005c88:	00008067          	ret

0000000080005c8c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c8c:	ff010113          	addi	sp,sp,-16
    80005c90:	00813423          	sd	s0,8(sp)
    80005c94:	01010413          	addi	s0,sp,16
    80005c98:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005c9c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005ca0:	0006c603          	lbu	a2,0(a3)
    80005ca4:	fd06071b          	addiw	a4,a2,-48
    80005ca8:	0ff77713          	andi	a4,a4,255
    80005cac:	00900793          	li	a5,9
    80005cb0:	02e7e063          	bltu	a5,a4,80005cd0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cb4:	0025179b          	slliw	a5,a0,0x2
    80005cb8:	00a787bb          	addw	a5,a5,a0
    80005cbc:	0017979b          	slliw	a5,a5,0x1
    80005cc0:	00168693          	addi	a3,a3,1
    80005cc4:	00c787bb          	addw	a5,a5,a2
    80005cc8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ccc:	fd5ff06f          	j	80005ca0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005cd0:	00813403          	ld	s0,8(sp)
    80005cd4:	01010113          	addi	sp,sp,16
    80005cd8:	00008067          	ret

0000000080005cdc <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005cdc:	fc010113          	addi	sp,sp,-64
    80005ce0:	02113c23          	sd	ra,56(sp)
    80005ce4:	02813823          	sd	s0,48(sp)
    80005ce8:	02913423          	sd	s1,40(sp)
    80005cec:	03213023          	sd	s2,32(sp)
    80005cf0:	01313c23          	sd	s3,24(sp)
    80005cf4:	04010413          	addi	s0,sp,64
    80005cf8:	00050493          	mv	s1,a0
    80005cfc:	00058913          	mv	s2,a1
    80005d00:	00060993          	mv	s3,a2
    LOCK();
    80005d04:	00100613          	li	a2,1
    80005d08:	00000593          	li	a1,0
    80005d0c:	00006517          	auipc	a0,0x6
    80005d10:	eec50513          	addi	a0,a0,-276 # 8000bbf8 <lockPrint>
    80005d14:	ffffb097          	auipc	ra,0xffffb
    80005d18:	4f4080e7          	jalr	1268(ra) # 80001208 <copy_and_swap>
    80005d1c:	fe0514e3          	bnez	a0,80005d04 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005d20:	00098463          	beqz	s3,80005d28 <_Z8printIntiii+0x4c>
    80005d24:	0804c463          	bltz	s1,80005dac <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d28:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d2c:	00000593          	li	a1,0
    }

    i = 0;
    80005d30:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005d34:	0009079b          	sext.w	a5,s2
    80005d38:	0325773b          	remuw	a4,a0,s2
    80005d3c:	00048613          	mv	a2,s1
    80005d40:	0014849b          	addiw	s1,s1,1
    80005d44:	02071693          	slli	a3,a4,0x20
    80005d48:	0206d693          	srli	a3,a3,0x20
    80005d4c:	00003717          	auipc	a4,0x3
    80005d50:	7e470713          	addi	a4,a4,2020 # 80009530 <_ZL6digits>
    80005d54:	00d70733          	add	a4,a4,a3
    80005d58:	00074683          	lbu	a3,0(a4)
    80005d5c:	fd040713          	addi	a4,s0,-48
    80005d60:	00c70733          	add	a4,a4,a2
    80005d64:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005d68:	0005071b          	sext.w	a4,a0
    80005d6c:	0325553b          	divuw	a0,a0,s2
    80005d70:	fcf772e3          	bgeu	a4,a5,80005d34 <_Z8printIntiii+0x58>
    if (neg)
    80005d74:	00058c63          	beqz	a1,80005d8c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005d78:	fd040793          	addi	a5,s0,-48
    80005d7c:	009784b3          	add	s1,a5,s1
    80005d80:	02d00793          	li	a5,45
    80005d84:	fef48823          	sb	a5,-16(s1)
    80005d88:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005d8c:	fff4849b          	addiw	s1,s1,-1
    80005d90:	0204c463          	bltz	s1,80005db8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005d94:	fd040793          	addi	a5,s0,-48
    80005d98:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005d9c:	ff07c503          	lbu	a0,-16(a5)
    80005da0:	00002097          	auipc	ra,0x2
    80005da4:	7dc080e7          	jalr	2012(ra) # 8000857c <__putc>
}
    80005da8:	fe5ff06f          	j	80005d8c <_Z8printIntiii+0xb0>
        x = -xx;
    80005dac:	4090053b          	negw	a0,s1
        neg = 1;
    80005db0:	00100593          	li	a1,1
        x = -xx;
    80005db4:	f7dff06f          	j	80005d30 <_Z8printIntiii+0x54>

    UNLOCK();
    80005db8:	00000613          	li	a2,0
    80005dbc:	00100593          	li	a1,1
    80005dc0:	00006517          	auipc	a0,0x6
    80005dc4:	e3850513          	addi	a0,a0,-456 # 8000bbf8 <lockPrint>
    80005dc8:	ffffb097          	auipc	ra,0xffffb
    80005dcc:	440080e7          	jalr	1088(ra) # 80001208 <copy_and_swap>
    80005dd0:	fe0514e3          	bnez	a0,80005db8 <_Z8printIntiii+0xdc>
}
    80005dd4:	03813083          	ld	ra,56(sp)
    80005dd8:	03013403          	ld	s0,48(sp)
    80005ddc:	02813483          	ld	s1,40(sp)
    80005de0:	02013903          	ld	s2,32(sp)
    80005de4:	01813983          	ld	s3,24(sp)
    80005de8:	04010113          	addi	sp,sp,64
    80005dec:	00008067          	ret

0000000080005df0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005df0:	fe010113          	addi	sp,sp,-32
    80005df4:	00113c23          	sd	ra,24(sp)
    80005df8:	00813823          	sd	s0,16(sp)
    80005dfc:	00913423          	sd	s1,8(sp)
    80005e00:	01213023          	sd	s2,0(sp)
    80005e04:	02010413          	addi	s0,sp,32
    80005e08:	00050493          	mv	s1,a0
    80005e0c:	00b52023          	sw	a1,0(a0)
    80005e10:	00052823          	sw	zero,16(a0)
    80005e14:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e18:	00259513          	slli	a0,a1,0x2
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	42c080e7          	jalr	1068(ra) # 80001248 <mem_alloc>
    80005e24:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e28:	01000513          	li	a0,16
    80005e2c:	ffffd097          	auipc	ra,0xffffd
    80005e30:	7f0080e7          	jalr	2032(ra) # 8000361c <_Znwm>
    80005e34:	00050913          	mv	s2,a0
    80005e38:	00000593          	li	a1,0
    80005e3c:	ffffe097          	auipc	ra,0xffffe
    80005e40:	a1c080e7          	jalr	-1508(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80005e44:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005e48:	01000513          	li	a0,16
    80005e4c:	ffffd097          	auipc	ra,0xffffd
    80005e50:	7d0080e7          	jalr	2000(ra) # 8000361c <_Znwm>
    80005e54:	00050913          	mv	s2,a0
    80005e58:	0004a583          	lw	a1,0(s1)
    80005e5c:	ffffe097          	auipc	ra,0xffffe
    80005e60:	9fc080e7          	jalr	-1540(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80005e64:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005e68:	01000513          	li	a0,16
    80005e6c:	ffffd097          	auipc	ra,0xffffd
    80005e70:	7b0080e7          	jalr	1968(ra) # 8000361c <_Znwm>
    80005e74:	00050913          	mv	s2,a0
    80005e78:	00100593          	li	a1,1
    80005e7c:	ffffe097          	auipc	ra,0xffffe
    80005e80:	9dc080e7          	jalr	-1572(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80005e84:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005e88:	01000513          	li	a0,16
    80005e8c:	ffffd097          	auipc	ra,0xffffd
    80005e90:	790080e7          	jalr	1936(ra) # 8000361c <_Znwm>
    80005e94:	00050913          	mv	s2,a0
    80005e98:	00100593          	li	a1,1
    80005e9c:	ffffe097          	auipc	ra,0xffffe
    80005ea0:	9bc080e7          	jalr	-1604(ra) # 80003858 <_ZN9SemaphoreC1Ej>
    80005ea4:	0324b823          	sd	s2,48(s1)
}
    80005ea8:	01813083          	ld	ra,24(sp)
    80005eac:	01013403          	ld	s0,16(sp)
    80005eb0:	00813483          	ld	s1,8(sp)
    80005eb4:	00013903          	ld	s2,0(sp)
    80005eb8:	02010113          	addi	sp,sp,32
    80005ebc:	00008067          	ret
    80005ec0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ec4:	00090513          	mv	a0,s2
    80005ec8:	ffffd097          	auipc	ra,0xffffd
    80005ecc:	77c080e7          	jalr	1916(ra) # 80003644 <_ZdlPv>
    80005ed0:	00048513          	mv	a0,s1
    80005ed4:	00007097          	auipc	ra,0x7
    80005ed8:	e04080e7          	jalr	-508(ra) # 8000ccd8 <_Unwind_Resume>
    80005edc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005ee0:	00090513          	mv	a0,s2
    80005ee4:	ffffd097          	auipc	ra,0xffffd
    80005ee8:	760080e7          	jalr	1888(ra) # 80003644 <_ZdlPv>
    80005eec:	00048513          	mv	a0,s1
    80005ef0:	00007097          	auipc	ra,0x7
    80005ef4:	de8080e7          	jalr	-536(ra) # 8000ccd8 <_Unwind_Resume>
    80005ef8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005efc:	00090513          	mv	a0,s2
    80005f00:	ffffd097          	auipc	ra,0xffffd
    80005f04:	744080e7          	jalr	1860(ra) # 80003644 <_ZdlPv>
    80005f08:	00048513          	mv	a0,s1
    80005f0c:	00007097          	auipc	ra,0x7
    80005f10:	dcc080e7          	jalr	-564(ra) # 8000ccd8 <_Unwind_Resume>
    80005f14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f18:	00090513          	mv	a0,s2
    80005f1c:	ffffd097          	auipc	ra,0xffffd
    80005f20:	728080e7          	jalr	1832(ra) # 80003644 <_ZdlPv>
    80005f24:	00048513          	mv	a0,s1
    80005f28:	00007097          	auipc	ra,0x7
    80005f2c:	db0080e7          	jalr	-592(ra) # 8000ccd8 <_Unwind_Resume>

0000000080005f30 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005f30:	fe010113          	addi	sp,sp,-32
    80005f34:	00113c23          	sd	ra,24(sp)
    80005f38:	00813823          	sd	s0,16(sp)
    80005f3c:	00913423          	sd	s1,8(sp)
    80005f40:	02010413          	addi	s0,sp,32
    80005f44:	00050493          	mv	s1,a0
    __putc(c);
    80005f48:	00a00513          	li	a0,10
    80005f4c:	00002097          	auipc	ra,0x2
    80005f50:	630080e7          	jalr	1584(ra) # 8000857c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005f54:	0104a783          	lw	a5,16(s1)
    80005f58:	0144a703          	lw	a4,20(s1)
    80005f5c:	00e78c63          	beq	a5,a4,80005f74 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005f60:	0017879b          	addiw	a5,a5,1
    80005f64:	0004a703          	lw	a4,0(s1)
    80005f68:	02e7e7bb          	remw	a5,a5,a4
    80005f6c:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005f70:	fe5ff06f          	j	80005f54 <_ZN9BufferCPPD1Ev+0x24>
    80005f74:	02100513          	li	a0,33
    80005f78:	00002097          	auipc	ra,0x2
    80005f7c:	604080e7          	jalr	1540(ra) # 8000857c <__putc>
    80005f80:	00a00513          	li	a0,10
    80005f84:	00002097          	auipc	ra,0x2
    80005f88:	5f8080e7          	jalr	1528(ra) # 8000857c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005f8c:	0084b503          	ld	a0,8(s1)
    80005f90:	ffffb097          	auipc	ra,0xffffb
    80005f94:	2e8080e7          	jalr	744(ra) # 80001278 <mem_free>
    delete itemAvailable;
    80005f98:	0204b503          	ld	a0,32(s1)
    80005f9c:	00050863          	beqz	a0,80005fac <_ZN9BufferCPPD1Ev+0x7c>
    80005fa0:	00053783          	ld	a5,0(a0)
    80005fa4:	0087b783          	ld	a5,8(a5)
    80005fa8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fac:	0184b503          	ld	a0,24(s1)
    80005fb0:	00050863          	beqz	a0,80005fc0 <_ZN9BufferCPPD1Ev+0x90>
    80005fb4:	00053783          	ld	a5,0(a0)
    80005fb8:	0087b783          	ld	a5,8(a5)
    80005fbc:	000780e7          	jalr	a5
    delete mutexTail;
    80005fc0:	0304b503          	ld	a0,48(s1)
    80005fc4:	00050863          	beqz	a0,80005fd4 <_ZN9BufferCPPD1Ev+0xa4>
    80005fc8:	00053783          	ld	a5,0(a0)
    80005fcc:	0087b783          	ld	a5,8(a5)
    80005fd0:	000780e7          	jalr	a5
    delete mutexHead;
    80005fd4:	0284b503          	ld	a0,40(s1)
    80005fd8:	00050863          	beqz	a0,80005fe8 <_ZN9BufferCPPD1Ev+0xb8>
    80005fdc:	00053783          	ld	a5,0(a0)
    80005fe0:	0087b783          	ld	a5,8(a5)
    80005fe4:	000780e7          	jalr	a5

}
    80005fe8:	01813083          	ld	ra,24(sp)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	00813483          	ld	s1,8(sp)
    80005ff4:	02010113          	addi	sp,sp,32
    80005ff8:	00008067          	ret

0000000080005ffc <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80005ffc:	fe010113          	addi	sp,sp,-32
    80006000:	00113c23          	sd	ra,24(sp)
    80006004:	00813823          	sd	s0,16(sp)
    80006008:	00913423          	sd	s1,8(sp)
    8000600c:	01213023          	sd	s2,0(sp)
    80006010:	02010413          	addi	s0,sp,32
    80006014:	00050493          	mv	s1,a0
    80006018:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000601c:	01853503          	ld	a0,24(a0)
    80006020:	ffffe097          	auipc	ra,0xffffe
    80006024:	800080e7          	jalr	-2048(ra) # 80003820 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006028:	0304b503          	ld	a0,48(s1)
    8000602c:	ffffd097          	auipc	ra,0xffffd
    80006030:	7f4080e7          	jalr	2036(ra) # 80003820 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006034:	0084b783          	ld	a5,8(s1)
    80006038:	0144a703          	lw	a4,20(s1)
    8000603c:	00271713          	slli	a4,a4,0x2
    80006040:	00e787b3          	add	a5,a5,a4
    80006044:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006048:	0144a783          	lw	a5,20(s1)
    8000604c:	0017879b          	addiw	a5,a5,1
    80006050:	0004a703          	lw	a4,0(s1)
    80006054:	02e7e7bb          	remw	a5,a5,a4
    80006058:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000605c:	0304b503          	ld	a0,48(s1)
    80006060:	ffffe097          	auipc	ra,0xffffe
    80006064:	844080e7          	jalr	-1980(ra) # 800038a4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006068:	0204b503          	ld	a0,32(s1)
    8000606c:	ffffe097          	auipc	ra,0xffffe
    80006070:	838080e7          	jalr	-1992(ra) # 800038a4 <_ZN9Semaphore6signalEv>

}
    80006074:	01813083          	ld	ra,24(sp)
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	00813483          	ld	s1,8(sp)
    80006080:	00013903          	ld	s2,0(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	01213023          	sd	s2,0(sp)
    800060a0:	02010413          	addi	s0,sp,32
    800060a4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800060a8:	02053503          	ld	a0,32(a0)
    800060ac:	ffffd097          	auipc	ra,0xffffd
    800060b0:	774080e7          	jalr	1908(ra) # 80003820 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800060b4:	0284b503          	ld	a0,40(s1)
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	768080e7          	jalr	1896(ra) # 80003820 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800060c0:	0084b703          	ld	a4,8(s1)
    800060c4:	0104a783          	lw	a5,16(s1)
    800060c8:	00279693          	slli	a3,a5,0x2
    800060cc:	00d70733          	add	a4,a4,a3
    800060d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060d4:	0017879b          	addiw	a5,a5,1
    800060d8:	0004a703          	lw	a4,0(s1)
    800060dc:	02e7e7bb          	remw	a5,a5,a4
    800060e0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060e4:	0284b503          	ld	a0,40(s1)
    800060e8:	ffffd097          	auipc	ra,0xffffd
    800060ec:	7bc080e7          	jalr	1980(ra) # 800038a4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060f0:	0184b503          	ld	a0,24(s1)
    800060f4:	ffffd097          	auipc	ra,0xffffd
    800060f8:	7b0080e7          	jalr	1968(ra) # 800038a4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060fc:	00090513          	mv	a0,s2
    80006100:	01813083          	ld	ra,24(sp)
    80006104:	01013403          	ld	s0,16(sp)
    80006108:	00813483          	ld	s1,8(sp)
    8000610c:	00013903          	ld	s2,0(sp)
    80006110:	02010113          	addi	sp,sp,32
    80006114:	00008067          	ret

0000000080006118 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006118:	ff010113          	addi	sp,sp,-16
    8000611c:	00113423          	sd	ra,8(sp)
    80006120:	00813023          	sd	s0,0(sp)
    80006124:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80006128:	00000097          	auipc	ra,0x0
    8000612c:	8c8080e7          	jalr	-1848(ra) # 800059f0 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80006130:	00813083          	ld	ra,8(sp)
    80006134:	00013403          	ld	s0,0(sp)
    80006138:	01010113          	addi	sp,sp,16
    8000613c:	00008067          	ret

0000000080006140 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006140:	fe010113          	addi	sp,sp,-32
    80006144:	00113c23          	sd	ra,24(sp)
    80006148:	00813823          	sd	s0,16(sp)
    8000614c:	00913423          	sd	s1,8(sp)
    80006150:	01213023          	sd	s2,0(sp)
    80006154:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006158:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000615c:	00600493          	li	s1,6
    while (--i > 0) {
    80006160:	fff4849b          	addiw	s1,s1,-1
    80006164:	04905463          	blez	s1,800061ac <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80006168:	00003517          	auipc	a0,0x3
    8000616c:	3e050513          	addi	a0,a0,992 # 80009548 <_ZL6digits+0x18>
    80006170:	00000097          	auipc	ra,0x0
    80006174:	9d4080e7          	jalr	-1580(ra) # 80005b44 <_Z11printStringPKc>
        printInt(sleep_time);
    80006178:	00000613          	li	a2,0
    8000617c:	00a00593          	li	a1,10
    80006180:	0009051b          	sext.w	a0,s2
    80006184:	00000097          	auipc	ra,0x0
    80006188:	b58080e7          	jalr	-1192(ra) # 80005cdc <_Z8printIntiii>
        printString(" !\n");
    8000618c:	00003517          	auipc	a0,0x3
    80006190:	3c450513          	addi	a0,a0,964 # 80009550 <_ZL6digits+0x20>
    80006194:	00000097          	auipc	ra,0x0
    80006198:	9b0080e7          	jalr	-1616(ra) # 80005b44 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000619c:	00090513          	mv	a0,s2
    800061a0:	ffffb097          	auipc	ra,0xffffb
    800061a4:	288080e7          	jalr	648(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    800061a8:	fb9ff06f          	j	80006160 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800061ac:	00a00793          	li	a5,10
    800061b0:	02f95933          	divu	s2,s2,a5
    800061b4:	fff90913          	addi	s2,s2,-1
    800061b8:	00006797          	auipc	a5,0x6
    800061bc:	a4878793          	addi	a5,a5,-1464 # 8000bc00 <finished>
    800061c0:	01278933          	add	s2,a5,s2
    800061c4:	00100793          	li	a5,1
    800061c8:	00f90023          	sb	a5,0(s2)
}
    800061cc:	01813083          	ld	ra,24(sp)
    800061d0:	01013403          	ld	s0,16(sp)
    800061d4:	00813483          	ld	s1,8(sp)
    800061d8:	00013903          	ld	s2,0(sp)
    800061dc:	02010113          	addi	sp,sp,32
    800061e0:	00008067          	ret

00000000800061e4 <_Z12testSleepingv>:

void testSleeping()
{
    800061e4:	fc010113          	addi	sp,sp,-64
    800061e8:	02113c23          	sd	ra,56(sp)
    800061ec:	02813823          	sd	s0,48(sp)
    800061f0:	02913423          	sd	s1,40(sp)
    800061f4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800061f8:	00a00793          	li	a5,10
    800061fc:	fcf43823          	sd	a5,-48(s0)
    80006200:	01400793          	li	a5,20
    80006204:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006208:	00000493          	li	s1,0
    8000620c:	02c0006f          	j	80006238 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006210:	00349793          	slli	a5,s1,0x3
    80006214:	fd040613          	addi	a2,s0,-48
    80006218:	00f60633          	add	a2,a2,a5
    8000621c:	00000597          	auipc	a1,0x0
    80006220:	f2458593          	addi	a1,a1,-220 # 80006140 <_Z9sleepyRunPv>
    80006224:	fc040513          	addi	a0,s0,-64
    80006228:	00f50533          	add	a0,a0,a5
    8000622c:	ffffb097          	auipc	ra,0xffffb
    80006230:	078080e7          	jalr	120(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006234:	0014849b          	addiw	s1,s1,1
    80006238:	00100793          	li	a5,1
    8000623c:	fc97dae3          	bge	a5,s1,80006210 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006240:	00006797          	auipc	a5,0x6
    80006244:	9c07c783          	lbu	a5,-1600(a5) # 8000bc00 <finished>
    80006248:	fe078ce3          	beqz	a5,80006240 <_Z12testSleepingv+0x5c>
    8000624c:	00006797          	auipc	a5,0x6
    80006250:	9b57c783          	lbu	a5,-1611(a5) # 8000bc01 <finished+0x1>
    80006254:	fe0786e3          	beqz	a5,80006240 <_Z12testSleepingv+0x5c>
}
    80006258:	03813083          	ld	ra,56(sp)
    8000625c:	03013403          	ld	s0,48(sp)
    80006260:	02813483          	ld	s1,40(sp)
    80006264:	04010113          	addi	sp,sp,64
    80006268:	00008067          	ret

000000008000626c <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    8000626c:	fe010113          	addi	sp,sp,-32
    80006270:	00113c23          	sd	ra,24(sp)
    80006274:	00813823          	sd	s0,16(sp)
    80006278:	00913423          	sd	s1,8(sp)
    8000627c:	02010413          	addi	s0,sp,32
    80006280:	00050493          	mv	s1,a0
    80006284:	00b52023          	sw	a1,0(a0)
    80006288:	00052823          	sw	zero,16(a0)
    8000628c:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006290:	00259513          	slli	a0,a1,0x2
    80006294:	ffffb097          	auipc	ra,0xffffb
    80006298:	fb4080e7          	jalr	-76(ra) # 80001248 <mem_alloc>
    8000629c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800062a0:	00000593          	li	a1,0
    800062a4:	02048513          	addi	a0,s1,32
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	0c4080e7          	jalr	196(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    800062b0:	0004a583          	lw	a1,0(s1)
    800062b4:	01848513          	addi	a0,s1,24
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	0b4080e7          	jalr	180(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    800062c0:	00100593          	li	a1,1
    800062c4:	02848513          	addi	a0,s1,40
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	0a4080e7          	jalr	164(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    800062d0:	00100593          	li	a1,1
    800062d4:	03048513          	addi	a0,s1,48
    800062d8:	ffffb097          	auipc	ra,0xffffb
    800062dc:	094080e7          	jalr	148(ra) # 8000136c <sem_open>
}
    800062e0:	01813083          	ld	ra,24(sp)
    800062e4:	01013403          	ld	s0,16(sp)
    800062e8:	00813483          	ld	s1,8(sp)
    800062ec:	02010113          	addi	sp,sp,32
    800062f0:	00008067          	ret

00000000800062f4 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	02010413          	addi	s0,sp,32
    80006308:	00050493          	mv	s1,a0
    8000630c:	00a00513          	li	a0,10
    80006310:	00002097          	auipc	ra,0x2
    80006314:	26c080e7          	jalr	620(ra) # 8000857c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80006318:	0104a783          	lw	a5,16(s1)
    8000631c:	0144a703          	lw	a4,20(s1)
    80006320:	00e78c63          	beq	a5,a4,80006338 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006324:	0017879b          	addiw	a5,a5,1
    80006328:	0004a703          	lw	a4,0(s1)
    8000632c:	02e7e7bb          	remw	a5,a5,a4
    80006330:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006334:	fe5ff06f          	j	80006318 <_ZN6BufferD1Ev+0x24>
    80006338:	02100513          	li	a0,33
    8000633c:	00002097          	auipc	ra,0x2
    80006340:	240080e7          	jalr	576(ra) # 8000857c <__putc>
    80006344:	00a00513          	li	a0,10
    80006348:	00002097          	auipc	ra,0x2
    8000634c:	234080e7          	jalr	564(ra) # 8000857c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80006350:	0084b503          	ld	a0,8(s1)
    80006354:	ffffb097          	auipc	ra,0xffffb
    80006358:	f24080e7          	jalr	-220(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    8000635c:	0204b503          	ld	a0,32(s1)
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	044080e7          	jalr	68(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80006368:	0184b503          	ld	a0,24(s1)
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	038080e7          	jalr	56(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80006374:	0304b503          	ld	a0,48(s1)
    80006378:	ffffb097          	auipc	ra,0xffffb
    8000637c:	02c080e7          	jalr	44(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80006380:	0284b503          	ld	a0,40(s1)
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	020080e7          	jalr	32(ra) # 800013a4 <sem_close>
}
    8000638c:	01813083          	ld	ra,24(sp)
    80006390:	01013403          	ld	s0,16(sp)
    80006394:	00813483          	ld	s1,8(sp)
    80006398:	02010113          	addi	sp,sp,32
    8000639c:	00008067          	ret

00000000800063a0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800063a0:	fe010113          	addi	sp,sp,-32
    800063a4:	00113c23          	sd	ra,24(sp)
    800063a8:	00813823          	sd	s0,16(sp)
    800063ac:	00913423          	sd	s1,8(sp)
    800063b0:	01213023          	sd	s2,0(sp)
    800063b4:	02010413          	addi	s0,sp,32
    800063b8:	00050493          	mv	s1,a0
    800063bc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800063c0:	01853503          	ld	a0,24(a0)
    800063c4:	ffffb097          	auipc	ra,0xffffb
    800063c8:	00c080e7          	jalr	12(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    800063cc:	0304b503          	ld	a0,48(s1)
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	000080e7          	jalr	ra # 800013d0 <sem_wait>
    buffer[tail] = val;
    800063d8:	0084b783          	ld	a5,8(s1)
    800063dc:	0144a703          	lw	a4,20(s1)
    800063e0:	00271713          	slli	a4,a4,0x2
    800063e4:	00e787b3          	add	a5,a5,a4
    800063e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063ec:	0144a783          	lw	a5,20(s1)
    800063f0:	0017879b          	addiw	a5,a5,1
    800063f4:	0004a703          	lw	a4,0(s1)
    800063f8:	02e7e7bb          	remw	a5,a5,a4
    800063fc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006400:	0304b503          	ld	a0,48(s1)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	ff8080e7          	jalr	-8(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    8000640c:	0204b503          	ld	a0,32(s1)
    80006410:	ffffb097          	auipc	ra,0xffffb
    80006414:	fec080e7          	jalr	-20(ra) # 800013fc <sem_signal>

}
    80006418:	01813083          	ld	ra,24(sp)
    8000641c:	01013403          	ld	s0,16(sp)
    80006420:	00813483          	ld	s1,8(sp)
    80006424:	00013903          	ld	s2,0(sp)
    80006428:	02010113          	addi	sp,sp,32
    8000642c:	00008067          	ret

0000000080006430 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006430:	fe010113          	addi	sp,sp,-32
    80006434:	00113c23          	sd	ra,24(sp)
    80006438:	00813823          	sd	s0,16(sp)
    8000643c:	00913423          	sd	s1,8(sp)
    80006440:	01213023          	sd	s2,0(sp)
    80006444:	02010413          	addi	s0,sp,32
    80006448:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000644c:	02053503          	ld	a0,32(a0)
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	f80080e7          	jalr	-128(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80006458:	0284b503          	ld	a0,40(s1)
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	f74080e7          	jalr	-140(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80006464:	0084b703          	ld	a4,8(s1)
    80006468:	0104a783          	lw	a5,16(s1)
    8000646c:	00279693          	slli	a3,a5,0x2
    80006470:	00d70733          	add	a4,a4,a3
    80006474:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006478:	0017879b          	addiw	a5,a5,1
    8000647c:	0004a703          	lw	a4,0(s1)
    80006480:	02e7e7bb          	remw	a5,a5,a4
    80006484:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006488:	0284b503          	ld	a0,40(s1)
    8000648c:	ffffb097          	auipc	ra,0xffffb
    80006490:	f70080e7          	jalr	-144(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80006494:	0184b503          	ld	a0,24(s1)
    80006498:	ffffb097          	auipc	ra,0xffffb
    8000649c:	f64080e7          	jalr	-156(ra) # 800013fc <sem_signal>

    return ret;
}
    800064a0:	00090513          	mv	a0,s2
    800064a4:	01813083          	ld	ra,24(sp)
    800064a8:	01013403          	ld	s0,16(sp)
    800064ac:	00813483          	ld	s1,8(sp)
    800064b0:	00013903          	ld	s2,0(sp)
    800064b4:	02010113          	addi	sp,sp,32
    800064b8:	00008067          	ret

00000000800064bc <start>:
    800064bc:	ff010113          	addi	sp,sp,-16
    800064c0:	00813423          	sd	s0,8(sp)
    800064c4:	01010413          	addi	s0,sp,16
    800064c8:	300027f3          	csrr	a5,mstatus
    800064cc:	ffffe737          	lui	a4,0xffffe
    800064d0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff198f>
    800064d4:	00e7f7b3          	and	a5,a5,a4
    800064d8:	00001737          	lui	a4,0x1
    800064dc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064e0:	00e7e7b3          	or	a5,a5,a4
    800064e4:	30079073          	csrw	mstatus,a5
    800064e8:	00000797          	auipc	a5,0x0
    800064ec:	16078793          	addi	a5,a5,352 # 80006648 <system_main>
    800064f0:	34179073          	csrw	mepc,a5
    800064f4:	00000793          	li	a5,0
    800064f8:	18079073          	csrw	satp,a5
    800064fc:	000107b7          	lui	a5,0x10
    80006500:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006504:	30279073          	csrw	medeleg,a5
    80006508:	30379073          	csrw	mideleg,a5
    8000650c:	104027f3          	csrr	a5,sie
    80006510:	2227e793          	ori	a5,a5,546
    80006514:	10479073          	csrw	sie,a5
    80006518:	fff00793          	li	a5,-1
    8000651c:	00a7d793          	srli	a5,a5,0xa
    80006520:	3b079073          	csrw	pmpaddr0,a5
    80006524:	00f00793          	li	a5,15
    80006528:	3a079073          	csrw	pmpcfg0,a5
    8000652c:	f14027f3          	csrr	a5,mhartid
    80006530:	0200c737          	lui	a4,0x200c
    80006534:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006538:	0007869b          	sext.w	a3,a5
    8000653c:	00269713          	slli	a4,a3,0x2
    80006540:	000f4637          	lui	a2,0xf4
    80006544:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006548:	00d70733          	add	a4,a4,a3
    8000654c:	0037979b          	slliw	a5,a5,0x3
    80006550:	020046b7          	lui	a3,0x2004
    80006554:	00d787b3          	add	a5,a5,a3
    80006558:	00c585b3          	add	a1,a1,a2
    8000655c:	00371693          	slli	a3,a4,0x3
    80006560:	00005717          	auipc	a4,0x5
    80006564:	6b070713          	addi	a4,a4,1712 # 8000bc10 <timer_scratch>
    80006568:	00b7b023          	sd	a1,0(a5)
    8000656c:	00d70733          	add	a4,a4,a3
    80006570:	00f73c23          	sd	a5,24(a4)
    80006574:	02c73023          	sd	a2,32(a4)
    80006578:	34071073          	csrw	mscratch,a4
    8000657c:	00000797          	auipc	a5,0x0
    80006580:	6e478793          	addi	a5,a5,1764 # 80006c60 <timervec>
    80006584:	30579073          	csrw	mtvec,a5
    80006588:	300027f3          	csrr	a5,mstatus
    8000658c:	0087e793          	ori	a5,a5,8
    80006590:	30079073          	csrw	mstatus,a5
    80006594:	304027f3          	csrr	a5,mie
    80006598:	0807e793          	ori	a5,a5,128
    8000659c:	30479073          	csrw	mie,a5
    800065a0:	f14027f3          	csrr	a5,mhartid
    800065a4:	0007879b          	sext.w	a5,a5
    800065a8:	00078213          	mv	tp,a5
    800065ac:	30200073          	mret
    800065b0:	00813403          	ld	s0,8(sp)
    800065b4:	01010113          	addi	sp,sp,16
    800065b8:	00008067          	ret

00000000800065bc <timerinit>:
    800065bc:	ff010113          	addi	sp,sp,-16
    800065c0:	00813423          	sd	s0,8(sp)
    800065c4:	01010413          	addi	s0,sp,16
    800065c8:	f14027f3          	csrr	a5,mhartid
    800065cc:	0200c737          	lui	a4,0x200c
    800065d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065d4:	0007869b          	sext.w	a3,a5
    800065d8:	00269713          	slli	a4,a3,0x2
    800065dc:	000f4637          	lui	a2,0xf4
    800065e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065e4:	00d70733          	add	a4,a4,a3
    800065e8:	0037979b          	slliw	a5,a5,0x3
    800065ec:	020046b7          	lui	a3,0x2004
    800065f0:	00d787b3          	add	a5,a5,a3
    800065f4:	00c585b3          	add	a1,a1,a2
    800065f8:	00371693          	slli	a3,a4,0x3
    800065fc:	00005717          	auipc	a4,0x5
    80006600:	61470713          	addi	a4,a4,1556 # 8000bc10 <timer_scratch>
    80006604:	00b7b023          	sd	a1,0(a5)
    80006608:	00d70733          	add	a4,a4,a3
    8000660c:	00f73c23          	sd	a5,24(a4)
    80006610:	02c73023          	sd	a2,32(a4)
    80006614:	34071073          	csrw	mscratch,a4
    80006618:	00000797          	auipc	a5,0x0
    8000661c:	64878793          	addi	a5,a5,1608 # 80006c60 <timervec>
    80006620:	30579073          	csrw	mtvec,a5
    80006624:	300027f3          	csrr	a5,mstatus
    80006628:	0087e793          	ori	a5,a5,8
    8000662c:	30079073          	csrw	mstatus,a5
    80006630:	304027f3          	csrr	a5,mie
    80006634:	0807e793          	ori	a5,a5,128
    80006638:	30479073          	csrw	mie,a5
    8000663c:	00813403          	ld	s0,8(sp)
    80006640:	01010113          	addi	sp,sp,16
    80006644:	00008067          	ret

0000000080006648 <system_main>:
    80006648:	fe010113          	addi	sp,sp,-32
    8000664c:	00813823          	sd	s0,16(sp)
    80006650:	00913423          	sd	s1,8(sp)
    80006654:	00113c23          	sd	ra,24(sp)
    80006658:	02010413          	addi	s0,sp,32
    8000665c:	00000097          	auipc	ra,0x0
    80006660:	0c4080e7          	jalr	196(ra) # 80006720 <cpuid>
    80006664:	00005497          	auipc	s1,0x5
    80006668:	4ac48493          	addi	s1,s1,1196 # 8000bb10 <started>
    8000666c:	02050263          	beqz	a0,80006690 <system_main+0x48>
    80006670:	0004a783          	lw	a5,0(s1)
    80006674:	0007879b          	sext.w	a5,a5
    80006678:	fe078ce3          	beqz	a5,80006670 <system_main+0x28>
    8000667c:	0ff0000f          	fence
    80006680:	00003517          	auipc	a0,0x3
    80006684:	f0850513          	addi	a0,a0,-248 # 80009588 <_ZL6digits+0x58>
    80006688:	00001097          	auipc	ra,0x1
    8000668c:	a74080e7          	jalr	-1420(ra) # 800070fc <panic>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	9c8080e7          	jalr	-1592(ra) # 80007058 <consoleinit>
    80006698:	00001097          	auipc	ra,0x1
    8000669c:	154080e7          	jalr	340(ra) # 800077ec <printfinit>
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	ad850513          	addi	a0,a0,-1320 # 80009178 <CONSOLE_STATUS+0x168>
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	ab0080e7          	jalr	-1360(ra) # 80007158 <__printf>
    800066b0:	00003517          	auipc	a0,0x3
    800066b4:	ea850513          	addi	a0,a0,-344 # 80009558 <_ZL6digits+0x28>
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	aa0080e7          	jalr	-1376(ra) # 80007158 <__printf>
    800066c0:	00003517          	auipc	a0,0x3
    800066c4:	ab850513          	addi	a0,a0,-1352 # 80009178 <CONSOLE_STATUS+0x168>
    800066c8:	00001097          	auipc	ra,0x1
    800066cc:	a90080e7          	jalr	-1392(ra) # 80007158 <__printf>
    800066d0:	00001097          	auipc	ra,0x1
    800066d4:	4a8080e7          	jalr	1192(ra) # 80007b78 <kinit>
    800066d8:	00000097          	auipc	ra,0x0
    800066dc:	148080e7          	jalr	328(ra) # 80006820 <trapinit>
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	16c080e7          	jalr	364(ra) # 8000684c <trapinithart>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	5b8080e7          	jalr	1464(ra) # 80006ca0 <plicinit>
    800066f0:	00000097          	auipc	ra,0x0
    800066f4:	5d8080e7          	jalr	1496(ra) # 80006cc8 <plicinithart>
    800066f8:	00000097          	auipc	ra,0x0
    800066fc:	078080e7          	jalr	120(ra) # 80006770 <userinit>
    80006700:	0ff0000f          	fence
    80006704:	00100793          	li	a5,1
    80006708:	00003517          	auipc	a0,0x3
    8000670c:	e6850513          	addi	a0,a0,-408 # 80009570 <_ZL6digits+0x40>
    80006710:	00f4a023          	sw	a5,0(s1)
    80006714:	00001097          	auipc	ra,0x1
    80006718:	a44080e7          	jalr	-1468(ra) # 80007158 <__printf>
    8000671c:	0000006f          	j	8000671c <system_main+0xd4>

0000000080006720 <cpuid>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813423          	sd	s0,8(sp)
    80006728:	01010413          	addi	s0,sp,16
    8000672c:	00020513          	mv	a0,tp
    80006730:	00813403          	ld	s0,8(sp)
    80006734:	0005051b          	sext.w	a0,a0
    80006738:	01010113          	addi	sp,sp,16
    8000673c:	00008067          	ret

0000000080006740 <mycpu>:
    80006740:	ff010113          	addi	sp,sp,-16
    80006744:	00813423          	sd	s0,8(sp)
    80006748:	01010413          	addi	s0,sp,16
    8000674c:	00020793          	mv	a5,tp
    80006750:	00813403          	ld	s0,8(sp)
    80006754:	0007879b          	sext.w	a5,a5
    80006758:	00779793          	slli	a5,a5,0x7
    8000675c:	00006517          	auipc	a0,0x6
    80006760:	4e450513          	addi	a0,a0,1252 # 8000cc40 <cpus>
    80006764:	00f50533          	add	a0,a0,a5
    80006768:	01010113          	addi	sp,sp,16
    8000676c:	00008067          	ret

0000000080006770 <userinit>:
    80006770:	ff010113          	addi	sp,sp,-16
    80006774:	00813423          	sd	s0,8(sp)
    80006778:	01010413          	addi	s0,sp,16
    8000677c:	00813403          	ld	s0,8(sp)
    80006780:	01010113          	addi	sp,sp,16
    80006784:	ffffd317          	auipc	t1,0xffffd
    80006788:	db430067          	jr	-588(t1) # 80003538 <main>

000000008000678c <either_copyout>:
    8000678c:	ff010113          	addi	sp,sp,-16
    80006790:	00813023          	sd	s0,0(sp)
    80006794:	00113423          	sd	ra,8(sp)
    80006798:	01010413          	addi	s0,sp,16
    8000679c:	02051663          	bnez	a0,800067c8 <either_copyout+0x3c>
    800067a0:	00058513          	mv	a0,a1
    800067a4:	00060593          	mv	a1,a2
    800067a8:	0006861b          	sext.w	a2,a3
    800067ac:	00002097          	auipc	ra,0x2
    800067b0:	c58080e7          	jalr	-936(ra) # 80008404 <__memmove>
    800067b4:	00813083          	ld	ra,8(sp)
    800067b8:	00013403          	ld	s0,0(sp)
    800067bc:	00000513          	li	a0,0
    800067c0:	01010113          	addi	sp,sp,16
    800067c4:	00008067          	ret
    800067c8:	00003517          	auipc	a0,0x3
    800067cc:	de850513          	addi	a0,a0,-536 # 800095b0 <_ZL6digits+0x80>
    800067d0:	00001097          	auipc	ra,0x1
    800067d4:	92c080e7          	jalr	-1748(ra) # 800070fc <panic>

00000000800067d8 <either_copyin>:
    800067d8:	ff010113          	addi	sp,sp,-16
    800067dc:	00813023          	sd	s0,0(sp)
    800067e0:	00113423          	sd	ra,8(sp)
    800067e4:	01010413          	addi	s0,sp,16
    800067e8:	02059463          	bnez	a1,80006810 <either_copyin+0x38>
    800067ec:	00060593          	mv	a1,a2
    800067f0:	0006861b          	sext.w	a2,a3
    800067f4:	00002097          	auipc	ra,0x2
    800067f8:	c10080e7          	jalr	-1008(ra) # 80008404 <__memmove>
    800067fc:	00813083          	ld	ra,8(sp)
    80006800:	00013403          	ld	s0,0(sp)
    80006804:	00000513          	li	a0,0
    80006808:	01010113          	addi	sp,sp,16
    8000680c:	00008067          	ret
    80006810:	00003517          	auipc	a0,0x3
    80006814:	dc850513          	addi	a0,a0,-568 # 800095d8 <_ZL6digits+0xa8>
    80006818:	00001097          	auipc	ra,0x1
    8000681c:	8e4080e7          	jalr	-1820(ra) # 800070fc <panic>

0000000080006820 <trapinit>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813423          	sd	s0,8(sp)
    80006828:	01010413          	addi	s0,sp,16
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	00003597          	auipc	a1,0x3
    80006834:	dd058593          	addi	a1,a1,-560 # 80009600 <_ZL6digits+0xd0>
    80006838:	00006517          	auipc	a0,0x6
    8000683c:	48850513          	addi	a0,a0,1160 # 8000ccc0 <tickslock>
    80006840:	01010113          	addi	sp,sp,16
    80006844:	00001317          	auipc	t1,0x1
    80006848:	5c430067          	jr	1476(t1) # 80007e08 <initlock>

000000008000684c <trapinithart>:
    8000684c:	ff010113          	addi	sp,sp,-16
    80006850:	00813423          	sd	s0,8(sp)
    80006854:	01010413          	addi	s0,sp,16
    80006858:	00000797          	auipc	a5,0x0
    8000685c:	2f878793          	addi	a5,a5,760 # 80006b50 <kernelvec>
    80006860:	10579073          	csrw	stvec,a5
    80006864:	00813403          	ld	s0,8(sp)
    80006868:	01010113          	addi	sp,sp,16
    8000686c:	00008067          	ret

0000000080006870 <usertrap>:
    80006870:	ff010113          	addi	sp,sp,-16
    80006874:	00813423          	sd	s0,8(sp)
    80006878:	01010413          	addi	s0,sp,16
    8000687c:	00813403          	ld	s0,8(sp)
    80006880:	01010113          	addi	sp,sp,16
    80006884:	00008067          	ret

0000000080006888 <usertrapret>:
    80006888:	ff010113          	addi	sp,sp,-16
    8000688c:	00813423          	sd	s0,8(sp)
    80006890:	01010413          	addi	s0,sp,16
    80006894:	00813403          	ld	s0,8(sp)
    80006898:	01010113          	addi	sp,sp,16
    8000689c:	00008067          	ret

00000000800068a0 <kerneltrap>:
    800068a0:	fe010113          	addi	sp,sp,-32
    800068a4:	00813823          	sd	s0,16(sp)
    800068a8:	00113c23          	sd	ra,24(sp)
    800068ac:	00913423          	sd	s1,8(sp)
    800068b0:	02010413          	addi	s0,sp,32
    800068b4:	142025f3          	csrr	a1,scause
    800068b8:	100027f3          	csrr	a5,sstatus
    800068bc:	0027f793          	andi	a5,a5,2
    800068c0:	10079c63          	bnez	a5,800069d8 <kerneltrap+0x138>
    800068c4:	142027f3          	csrr	a5,scause
    800068c8:	0207ce63          	bltz	a5,80006904 <kerneltrap+0x64>
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	d7c50513          	addi	a0,a0,-644 # 80009648 <_ZL6digits+0x118>
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	884080e7          	jalr	-1916(ra) # 80007158 <__printf>
    800068dc:	141025f3          	csrr	a1,sepc
    800068e0:	14302673          	csrr	a2,stval
    800068e4:	00003517          	auipc	a0,0x3
    800068e8:	d7450513          	addi	a0,a0,-652 # 80009658 <_ZL6digits+0x128>
    800068ec:	00001097          	auipc	ra,0x1
    800068f0:	86c080e7          	jalr	-1940(ra) # 80007158 <__printf>
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	d7c50513          	addi	a0,a0,-644 # 80009670 <_ZL6digits+0x140>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	800080e7          	jalr	-2048(ra) # 800070fc <panic>
    80006904:	0ff7f713          	andi	a4,a5,255
    80006908:	00900693          	li	a3,9
    8000690c:	04d70063          	beq	a4,a3,8000694c <kerneltrap+0xac>
    80006910:	fff00713          	li	a4,-1
    80006914:	03f71713          	slli	a4,a4,0x3f
    80006918:	00170713          	addi	a4,a4,1
    8000691c:	fae798e3          	bne	a5,a4,800068cc <kerneltrap+0x2c>
    80006920:	00000097          	auipc	ra,0x0
    80006924:	e00080e7          	jalr	-512(ra) # 80006720 <cpuid>
    80006928:	06050663          	beqz	a0,80006994 <kerneltrap+0xf4>
    8000692c:	144027f3          	csrr	a5,sip
    80006930:	ffd7f793          	andi	a5,a5,-3
    80006934:	14479073          	csrw	sip,a5
    80006938:	01813083          	ld	ra,24(sp)
    8000693c:	01013403          	ld	s0,16(sp)
    80006940:	00813483          	ld	s1,8(sp)
    80006944:	02010113          	addi	sp,sp,32
    80006948:	00008067          	ret
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	3c8080e7          	jalr	968(ra) # 80006d14 <plic_claim>
    80006954:	00a00793          	li	a5,10
    80006958:	00050493          	mv	s1,a0
    8000695c:	06f50863          	beq	a0,a5,800069cc <kerneltrap+0x12c>
    80006960:	fc050ce3          	beqz	a0,80006938 <kerneltrap+0x98>
    80006964:	00050593          	mv	a1,a0
    80006968:	00003517          	auipc	a0,0x3
    8000696c:	cc050513          	addi	a0,a0,-832 # 80009628 <_ZL6digits+0xf8>
    80006970:	00000097          	auipc	ra,0x0
    80006974:	7e8080e7          	jalr	2024(ra) # 80007158 <__printf>
    80006978:	01013403          	ld	s0,16(sp)
    8000697c:	01813083          	ld	ra,24(sp)
    80006980:	00048513          	mv	a0,s1
    80006984:	00813483          	ld	s1,8(sp)
    80006988:	02010113          	addi	sp,sp,32
    8000698c:	00000317          	auipc	t1,0x0
    80006990:	3c030067          	jr	960(t1) # 80006d4c <plic_complete>
    80006994:	00006517          	auipc	a0,0x6
    80006998:	32c50513          	addi	a0,a0,812 # 8000ccc0 <tickslock>
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	490080e7          	jalr	1168(ra) # 80007e2c <acquire>
    800069a4:	00005717          	auipc	a4,0x5
    800069a8:	17070713          	addi	a4,a4,368 # 8000bb14 <ticks>
    800069ac:	00072783          	lw	a5,0(a4)
    800069b0:	00006517          	auipc	a0,0x6
    800069b4:	31050513          	addi	a0,a0,784 # 8000ccc0 <tickslock>
    800069b8:	0017879b          	addiw	a5,a5,1
    800069bc:	00f72023          	sw	a5,0(a4)
    800069c0:	00001097          	auipc	ra,0x1
    800069c4:	538080e7          	jalr	1336(ra) # 80007ef8 <release>
    800069c8:	f65ff06f          	j	8000692c <kerneltrap+0x8c>
    800069cc:	00001097          	auipc	ra,0x1
    800069d0:	094080e7          	jalr	148(ra) # 80007a60 <uartintr>
    800069d4:	fa5ff06f          	j	80006978 <kerneltrap+0xd8>
    800069d8:	00003517          	auipc	a0,0x3
    800069dc:	c3050513          	addi	a0,a0,-976 # 80009608 <_ZL6digits+0xd8>
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	71c080e7          	jalr	1820(ra) # 800070fc <panic>

00000000800069e8 <clockintr>:
    800069e8:	fe010113          	addi	sp,sp,-32
    800069ec:	00813823          	sd	s0,16(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	00113c23          	sd	ra,24(sp)
    800069f8:	02010413          	addi	s0,sp,32
    800069fc:	00006497          	auipc	s1,0x6
    80006a00:	2c448493          	addi	s1,s1,708 # 8000ccc0 <tickslock>
    80006a04:	00048513          	mv	a0,s1
    80006a08:	00001097          	auipc	ra,0x1
    80006a0c:	424080e7          	jalr	1060(ra) # 80007e2c <acquire>
    80006a10:	00005717          	auipc	a4,0x5
    80006a14:	10470713          	addi	a4,a4,260 # 8000bb14 <ticks>
    80006a18:	00072783          	lw	a5,0(a4)
    80006a1c:	01013403          	ld	s0,16(sp)
    80006a20:	01813083          	ld	ra,24(sp)
    80006a24:	00048513          	mv	a0,s1
    80006a28:	0017879b          	addiw	a5,a5,1
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	00f72023          	sw	a5,0(a4)
    80006a34:	02010113          	addi	sp,sp,32
    80006a38:	00001317          	auipc	t1,0x1
    80006a3c:	4c030067          	jr	1216(t1) # 80007ef8 <release>

0000000080006a40 <devintr>:
    80006a40:	142027f3          	csrr	a5,scause
    80006a44:	00000513          	li	a0,0
    80006a48:	0007c463          	bltz	a5,80006a50 <devintr+0x10>
    80006a4c:	00008067          	ret
    80006a50:	fe010113          	addi	sp,sp,-32
    80006a54:	00813823          	sd	s0,16(sp)
    80006a58:	00113c23          	sd	ra,24(sp)
    80006a5c:	00913423          	sd	s1,8(sp)
    80006a60:	02010413          	addi	s0,sp,32
    80006a64:	0ff7f713          	andi	a4,a5,255
    80006a68:	00900693          	li	a3,9
    80006a6c:	04d70c63          	beq	a4,a3,80006ac4 <devintr+0x84>
    80006a70:	fff00713          	li	a4,-1
    80006a74:	03f71713          	slli	a4,a4,0x3f
    80006a78:	00170713          	addi	a4,a4,1
    80006a7c:	00e78c63          	beq	a5,a4,80006a94 <devintr+0x54>
    80006a80:	01813083          	ld	ra,24(sp)
    80006a84:	01013403          	ld	s0,16(sp)
    80006a88:	00813483          	ld	s1,8(sp)
    80006a8c:	02010113          	addi	sp,sp,32
    80006a90:	00008067          	ret
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	c8c080e7          	jalr	-884(ra) # 80006720 <cpuid>
    80006a9c:	06050663          	beqz	a0,80006b08 <devintr+0xc8>
    80006aa0:	144027f3          	csrr	a5,sip
    80006aa4:	ffd7f793          	andi	a5,a5,-3
    80006aa8:	14479073          	csrw	sip,a5
    80006aac:	01813083          	ld	ra,24(sp)
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00200513          	li	a0,2
    80006abc:	02010113          	addi	sp,sp,32
    80006ac0:	00008067          	ret
    80006ac4:	00000097          	auipc	ra,0x0
    80006ac8:	250080e7          	jalr	592(ra) # 80006d14 <plic_claim>
    80006acc:	00a00793          	li	a5,10
    80006ad0:	00050493          	mv	s1,a0
    80006ad4:	06f50663          	beq	a0,a5,80006b40 <devintr+0x100>
    80006ad8:	00100513          	li	a0,1
    80006adc:	fa0482e3          	beqz	s1,80006a80 <devintr+0x40>
    80006ae0:	00048593          	mv	a1,s1
    80006ae4:	00003517          	auipc	a0,0x3
    80006ae8:	b4450513          	addi	a0,a0,-1212 # 80009628 <_ZL6digits+0xf8>
    80006aec:	00000097          	auipc	ra,0x0
    80006af0:	66c080e7          	jalr	1644(ra) # 80007158 <__printf>
    80006af4:	00048513          	mv	a0,s1
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	254080e7          	jalr	596(ra) # 80006d4c <plic_complete>
    80006b00:	00100513          	li	a0,1
    80006b04:	f7dff06f          	j	80006a80 <devintr+0x40>
    80006b08:	00006517          	auipc	a0,0x6
    80006b0c:	1b850513          	addi	a0,a0,440 # 8000ccc0 <tickslock>
    80006b10:	00001097          	auipc	ra,0x1
    80006b14:	31c080e7          	jalr	796(ra) # 80007e2c <acquire>
    80006b18:	00005717          	auipc	a4,0x5
    80006b1c:	ffc70713          	addi	a4,a4,-4 # 8000bb14 <ticks>
    80006b20:	00072783          	lw	a5,0(a4)
    80006b24:	00006517          	auipc	a0,0x6
    80006b28:	19c50513          	addi	a0,a0,412 # 8000ccc0 <tickslock>
    80006b2c:	0017879b          	addiw	a5,a5,1
    80006b30:	00f72023          	sw	a5,0(a4)
    80006b34:	00001097          	auipc	ra,0x1
    80006b38:	3c4080e7          	jalr	964(ra) # 80007ef8 <release>
    80006b3c:	f65ff06f          	j	80006aa0 <devintr+0x60>
    80006b40:	00001097          	auipc	ra,0x1
    80006b44:	f20080e7          	jalr	-224(ra) # 80007a60 <uartintr>
    80006b48:	fadff06f          	j	80006af4 <devintr+0xb4>
    80006b4c:	0000                	unimp
	...

0000000080006b50 <kernelvec>:
    80006b50:	f0010113          	addi	sp,sp,-256
    80006b54:	00113023          	sd	ra,0(sp)
    80006b58:	00213423          	sd	sp,8(sp)
    80006b5c:	00313823          	sd	gp,16(sp)
    80006b60:	00413c23          	sd	tp,24(sp)
    80006b64:	02513023          	sd	t0,32(sp)
    80006b68:	02613423          	sd	t1,40(sp)
    80006b6c:	02713823          	sd	t2,48(sp)
    80006b70:	02813c23          	sd	s0,56(sp)
    80006b74:	04913023          	sd	s1,64(sp)
    80006b78:	04a13423          	sd	a0,72(sp)
    80006b7c:	04b13823          	sd	a1,80(sp)
    80006b80:	04c13c23          	sd	a2,88(sp)
    80006b84:	06d13023          	sd	a3,96(sp)
    80006b88:	06e13423          	sd	a4,104(sp)
    80006b8c:	06f13823          	sd	a5,112(sp)
    80006b90:	07013c23          	sd	a6,120(sp)
    80006b94:	09113023          	sd	a7,128(sp)
    80006b98:	09213423          	sd	s2,136(sp)
    80006b9c:	09313823          	sd	s3,144(sp)
    80006ba0:	09413c23          	sd	s4,152(sp)
    80006ba4:	0b513023          	sd	s5,160(sp)
    80006ba8:	0b613423          	sd	s6,168(sp)
    80006bac:	0b713823          	sd	s7,176(sp)
    80006bb0:	0b813c23          	sd	s8,184(sp)
    80006bb4:	0d913023          	sd	s9,192(sp)
    80006bb8:	0da13423          	sd	s10,200(sp)
    80006bbc:	0db13823          	sd	s11,208(sp)
    80006bc0:	0dc13c23          	sd	t3,216(sp)
    80006bc4:	0fd13023          	sd	t4,224(sp)
    80006bc8:	0fe13423          	sd	t5,232(sp)
    80006bcc:	0ff13823          	sd	t6,240(sp)
    80006bd0:	cd1ff0ef          	jal	ra,800068a0 <kerneltrap>
    80006bd4:	00013083          	ld	ra,0(sp)
    80006bd8:	00813103          	ld	sp,8(sp)
    80006bdc:	01013183          	ld	gp,16(sp)
    80006be0:	02013283          	ld	t0,32(sp)
    80006be4:	02813303          	ld	t1,40(sp)
    80006be8:	03013383          	ld	t2,48(sp)
    80006bec:	03813403          	ld	s0,56(sp)
    80006bf0:	04013483          	ld	s1,64(sp)
    80006bf4:	04813503          	ld	a0,72(sp)
    80006bf8:	05013583          	ld	a1,80(sp)
    80006bfc:	05813603          	ld	a2,88(sp)
    80006c00:	06013683          	ld	a3,96(sp)
    80006c04:	06813703          	ld	a4,104(sp)
    80006c08:	07013783          	ld	a5,112(sp)
    80006c0c:	07813803          	ld	a6,120(sp)
    80006c10:	08013883          	ld	a7,128(sp)
    80006c14:	08813903          	ld	s2,136(sp)
    80006c18:	09013983          	ld	s3,144(sp)
    80006c1c:	09813a03          	ld	s4,152(sp)
    80006c20:	0a013a83          	ld	s5,160(sp)
    80006c24:	0a813b03          	ld	s6,168(sp)
    80006c28:	0b013b83          	ld	s7,176(sp)
    80006c2c:	0b813c03          	ld	s8,184(sp)
    80006c30:	0c013c83          	ld	s9,192(sp)
    80006c34:	0c813d03          	ld	s10,200(sp)
    80006c38:	0d013d83          	ld	s11,208(sp)
    80006c3c:	0d813e03          	ld	t3,216(sp)
    80006c40:	0e013e83          	ld	t4,224(sp)
    80006c44:	0e813f03          	ld	t5,232(sp)
    80006c48:	0f013f83          	ld	t6,240(sp)
    80006c4c:	10010113          	addi	sp,sp,256
    80006c50:	10200073          	sret
    80006c54:	00000013          	nop
    80006c58:	00000013          	nop
    80006c5c:	00000013          	nop

0000000080006c60 <timervec>:
    80006c60:	34051573          	csrrw	a0,mscratch,a0
    80006c64:	00b53023          	sd	a1,0(a0)
    80006c68:	00c53423          	sd	a2,8(a0)
    80006c6c:	00d53823          	sd	a3,16(a0)
    80006c70:	01853583          	ld	a1,24(a0)
    80006c74:	02053603          	ld	a2,32(a0)
    80006c78:	0005b683          	ld	a3,0(a1)
    80006c7c:	00c686b3          	add	a3,a3,a2
    80006c80:	00d5b023          	sd	a3,0(a1)
    80006c84:	00200593          	li	a1,2
    80006c88:	14459073          	csrw	sip,a1
    80006c8c:	01053683          	ld	a3,16(a0)
    80006c90:	00853603          	ld	a2,8(a0)
    80006c94:	00053583          	ld	a1,0(a0)
    80006c98:	34051573          	csrrw	a0,mscratch,a0
    80006c9c:	30200073          	mret

0000000080006ca0 <plicinit>:
    80006ca0:	ff010113          	addi	sp,sp,-16
    80006ca4:	00813423          	sd	s0,8(sp)
    80006ca8:	01010413          	addi	s0,sp,16
    80006cac:	00813403          	ld	s0,8(sp)
    80006cb0:	0c0007b7          	lui	a5,0xc000
    80006cb4:	00100713          	li	a4,1
    80006cb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006cbc:	00e7a223          	sw	a4,4(a5)
    80006cc0:	01010113          	addi	sp,sp,16
    80006cc4:	00008067          	ret

0000000080006cc8 <plicinithart>:
    80006cc8:	ff010113          	addi	sp,sp,-16
    80006ccc:	00813023          	sd	s0,0(sp)
    80006cd0:	00113423          	sd	ra,8(sp)
    80006cd4:	01010413          	addi	s0,sp,16
    80006cd8:	00000097          	auipc	ra,0x0
    80006cdc:	a48080e7          	jalr	-1464(ra) # 80006720 <cpuid>
    80006ce0:	0085171b          	slliw	a4,a0,0x8
    80006ce4:	0c0027b7          	lui	a5,0xc002
    80006ce8:	00e787b3          	add	a5,a5,a4
    80006cec:	40200713          	li	a4,1026
    80006cf0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006cf4:	00813083          	ld	ra,8(sp)
    80006cf8:	00013403          	ld	s0,0(sp)
    80006cfc:	00d5151b          	slliw	a0,a0,0xd
    80006d00:	0c2017b7          	lui	a5,0xc201
    80006d04:	00a78533          	add	a0,a5,a0
    80006d08:	00052023          	sw	zero,0(a0)
    80006d0c:	01010113          	addi	sp,sp,16
    80006d10:	00008067          	ret

0000000080006d14 <plic_claim>:
    80006d14:	ff010113          	addi	sp,sp,-16
    80006d18:	00813023          	sd	s0,0(sp)
    80006d1c:	00113423          	sd	ra,8(sp)
    80006d20:	01010413          	addi	s0,sp,16
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	9fc080e7          	jalr	-1540(ra) # 80006720 <cpuid>
    80006d2c:	00813083          	ld	ra,8(sp)
    80006d30:	00013403          	ld	s0,0(sp)
    80006d34:	00d5151b          	slliw	a0,a0,0xd
    80006d38:	0c2017b7          	lui	a5,0xc201
    80006d3c:	00a78533          	add	a0,a5,a0
    80006d40:	00452503          	lw	a0,4(a0)
    80006d44:	01010113          	addi	sp,sp,16
    80006d48:	00008067          	ret

0000000080006d4c <plic_complete>:
    80006d4c:	fe010113          	addi	sp,sp,-32
    80006d50:	00813823          	sd	s0,16(sp)
    80006d54:	00913423          	sd	s1,8(sp)
    80006d58:	00113c23          	sd	ra,24(sp)
    80006d5c:	02010413          	addi	s0,sp,32
    80006d60:	00050493          	mv	s1,a0
    80006d64:	00000097          	auipc	ra,0x0
    80006d68:	9bc080e7          	jalr	-1604(ra) # 80006720 <cpuid>
    80006d6c:	01813083          	ld	ra,24(sp)
    80006d70:	01013403          	ld	s0,16(sp)
    80006d74:	00d5179b          	slliw	a5,a0,0xd
    80006d78:	0c201737          	lui	a4,0xc201
    80006d7c:	00f707b3          	add	a5,a4,a5
    80006d80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d84:	00813483          	ld	s1,8(sp)
    80006d88:	02010113          	addi	sp,sp,32
    80006d8c:	00008067          	ret

0000000080006d90 <consolewrite>:
    80006d90:	fb010113          	addi	sp,sp,-80
    80006d94:	04813023          	sd	s0,64(sp)
    80006d98:	04113423          	sd	ra,72(sp)
    80006d9c:	02913c23          	sd	s1,56(sp)
    80006da0:	03213823          	sd	s2,48(sp)
    80006da4:	03313423          	sd	s3,40(sp)
    80006da8:	03413023          	sd	s4,32(sp)
    80006dac:	01513c23          	sd	s5,24(sp)
    80006db0:	05010413          	addi	s0,sp,80
    80006db4:	06c05c63          	blez	a2,80006e2c <consolewrite+0x9c>
    80006db8:	00060993          	mv	s3,a2
    80006dbc:	00050a13          	mv	s4,a0
    80006dc0:	00058493          	mv	s1,a1
    80006dc4:	00000913          	li	s2,0
    80006dc8:	fff00a93          	li	s5,-1
    80006dcc:	01c0006f          	j	80006de8 <consolewrite+0x58>
    80006dd0:	fbf44503          	lbu	a0,-65(s0)
    80006dd4:	0019091b          	addiw	s2,s2,1
    80006dd8:	00148493          	addi	s1,s1,1
    80006ddc:	00001097          	auipc	ra,0x1
    80006de0:	a9c080e7          	jalr	-1380(ra) # 80007878 <uartputc>
    80006de4:	03298063          	beq	s3,s2,80006e04 <consolewrite+0x74>
    80006de8:	00048613          	mv	a2,s1
    80006dec:	00100693          	li	a3,1
    80006df0:	000a0593          	mv	a1,s4
    80006df4:	fbf40513          	addi	a0,s0,-65
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	9e0080e7          	jalr	-1568(ra) # 800067d8 <either_copyin>
    80006e00:	fd5518e3          	bne	a0,s5,80006dd0 <consolewrite+0x40>
    80006e04:	04813083          	ld	ra,72(sp)
    80006e08:	04013403          	ld	s0,64(sp)
    80006e0c:	03813483          	ld	s1,56(sp)
    80006e10:	02813983          	ld	s3,40(sp)
    80006e14:	02013a03          	ld	s4,32(sp)
    80006e18:	01813a83          	ld	s5,24(sp)
    80006e1c:	00090513          	mv	a0,s2
    80006e20:	03013903          	ld	s2,48(sp)
    80006e24:	05010113          	addi	sp,sp,80
    80006e28:	00008067          	ret
    80006e2c:	00000913          	li	s2,0
    80006e30:	fd5ff06f          	j	80006e04 <consolewrite+0x74>

0000000080006e34 <consoleread>:
    80006e34:	f9010113          	addi	sp,sp,-112
    80006e38:	06813023          	sd	s0,96(sp)
    80006e3c:	04913c23          	sd	s1,88(sp)
    80006e40:	05213823          	sd	s2,80(sp)
    80006e44:	05313423          	sd	s3,72(sp)
    80006e48:	05413023          	sd	s4,64(sp)
    80006e4c:	03513c23          	sd	s5,56(sp)
    80006e50:	03613823          	sd	s6,48(sp)
    80006e54:	03713423          	sd	s7,40(sp)
    80006e58:	03813023          	sd	s8,32(sp)
    80006e5c:	06113423          	sd	ra,104(sp)
    80006e60:	01913c23          	sd	s9,24(sp)
    80006e64:	07010413          	addi	s0,sp,112
    80006e68:	00060b93          	mv	s7,a2
    80006e6c:	00050913          	mv	s2,a0
    80006e70:	00058c13          	mv	s8,a1
    80006e74:	00060b1b          	sext.w	s6,a2
    80006e78:	00006497          	auipc	s1,0x6
    80006e7c:	e7048493          	addi	s1,s1,-400 # 8000cce8 <cons>
    80006e80:	00400993          	li	s3,4
    80006e84:	fff00a13          	li	s4,-1
    80006e88:	00a00a93          	li	s5,10
    80006e8c:	05705e63          	blez	s7,80006ee8 <consoleread+0xb4>
    80006e90:	09c4a703          	lw	a4,156(s1)
    80006e94:	0984a783          	lw	a5,152(s1)
    80006e98:	0007071b          	sext.w	a4,a4
    80006e9c:	08e78463          	beq	a5,a4,80006f24 <consoleread+0xf0>
    80006ea0:	07f7f713          	andi	a4,a5,127
    80006ea4:	00e48733          	add	a4,s1,a4
    80006ea8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006eac:	0017869b          	addiw	a3,a5,1
    80006eb0:	08d4ac23          	sw	a3,152(s1)
    80006eb4:	00070c9b          	sext.w	s9,a4
    80006eb8:	0b370663          	beq	a4,s3,80006f64 <consoleread+0x130>
    80006ebc:	00100693          	li	a3,1
    80006ec0:	f9f40613          	addi	a2,s0,-97
    80006ec4:	000c0593          	mv	a1,s8
    80006ec8:	00090513          	mv	a0,s2
    80006ecc:	f8e40fa3          	sb	a4,-97(s0)
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	8bc080e7          	jalr	-1860(ra) # 8000678c <either_copyout>
    80006ed8:	01450863          	beq	a0,s4,80006ee8 <consoleread+0xb4>
    80006edc:	001c0c13          	addi	s8,s8,1
    80006ee0:	fffb8b9b          	addiw	s7,s7,-1
    80006ee4:	fb5c94e3          	bne	s9,s5,80006e8c <consoleread+0x58>
    80006ee8:	000b851b          	sext.w	a0,s7
    80006eec:	06813083          	ld	ra,104(sp)
    80006ef0:	06013403          	ld	s0,96(sp)
    80006ef4:	05813483          	ld	s1,88(sp)
    80006ef8:	05013903          	ld	s2,80(sp)
    80006efc:	04813983          	ld	s3,72(sp)
    80006f00:	04013a03          	ld	s4,64(sp)
    80006f04:	03813a83          	ld	s5,56(sp)
    80006f08:	02813b83          	ld	s7,40(sp)
    80006f0c:	02013c03          	ld	s8,32(sp)
    80006f10:	01813c83          	ld	s9,24(sp)
    80006f14:	40ab053b          	subw	a0,s6,a0
    80006f18:	03013b03          	ld	s6,48(sp)
    80006f1c:	07010113          	addi	sp,sp,112
    80006f20:	00008067          	ret
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	1d8080e7          	jalr	472(ra) # 800080fc <push_on>
    80006f2c:	0984a703          	lw	a4,152(s1)
    80006f30:	09c4a783          	lw	a5,156(s1)
    80006f34:	0007879b          	sext.w	a5,a5
    80006f38:	fef70ce3          	beq	a4,a5,80006f30 <consoleread+0xfc>
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	234080e7          	jalr	564(ra) # 80008170 <pop_on>
    80006f44:	0984a783          	lw	a5,152(s1)
    80006f48:	07f7f713          	andi	a4,a5,127
    80006f4c:	00e48733          	add	a4,s1,a4
    80006f50:	01874703          	lbu	a4,24(a4)
    80006f54:	0017869b          	addiw	a3,a5,1
    80006f58:	08d4ac23          	sw	a3,152(s1)
    80006f5c:	00070c9b          	sext.w	s9,a4
    80006f60:	f5371ee3          	bne	a4,s3,80006ebc <consoleread+0x88>
    80006f64:	000b851b          	sext.w	a0,s7
    80006f68:	f96bf2e3          	bgeu	s7,s6,80006eec <consoleread+0xb8>
    80006f6c:	08f4ac23          	sw	a5,152(s1)
    80006f70:	f7dff06f          	j	80006eec <consoleread+0xb8>

0000000080006f74 <consputc>:
    80006f74:	10000793          	li	a5,256
    80006f78:	00f50663          	beq	a0,a5,80006f84 <consputc+0x10>
    80006f7c:	00001317          	auipc	t1,0x1
    80006f80:	9f430067          	jr	-1548(t1) # 80007970 <uartputc_sync>
    80006f84:	ff010113          	addi	sp,sp,-16
    80006f88:	00113423          	sd	ra,8(sp)
    80006f8c:	00813023          	sd	s0,0(sp)
    80006f90:	01010413          	addi	s0,sp,16
    80006f94:	00800513          	li	a0,8
    80006f98:	00001097          	auipc	ra,0x1
    80006f9c:	9d8080e7          	jalr	-1576(ra) # 80007970 <uartputc_sync>
    80006fa0:	02000513          	li	a0,32
    80006fa4:	00001097          	auipc	ra,0x1
    80006fa8:	9cc080e7          	jalr	-1588(ra) # 80007970 <uartputc_sync>
    80006fac:	00013403          	ld	s0,0(sp)
    80006fb0:	00813083          	ld	ra,8(sp)
    80006fb4:	00800513          	li	a0,8
    80006fb8:	01010113          	addi	sp,sp,16
    80006fbc:	00001317          	auipc	t1,0x1
    80006fc0:	9b430067          	jr	-1612(t1) # 80007970 <uartputc_sync>

0000000080006fc4 <consoleintr>:
    80006fc4:	fe010113          	addi	sp,sp,-32
    80006fc8:	00813823          	sd	s0,16(sp)
    80006fcc:	00913423          	sd	s1,8(sp)
    80006fd0:	01213023          	sd	s2,0(sp)
    80006fd4:	00113c23          	sd	ra,24(sp)
    80006fd8:	02010413          	addi	s0,sp,32
    80006fdc:	00006917          	auipc	s2,0x6
    80006fe0:	d0c90913          	addi	s2,s2,-756 # 8000cce8 <cons>
    80006fe4:	00050493          	mv	s1,a0
    80006fe8:	00090513          	mv	a0,s2
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	e40080e7          	jalr	-448(ra) # 80007e2c <acquire>
    80006ff4:	02048c63          	beqz	s1,8000702c <consoleintr+0x68>
    80006ff8:	0a092783          	lw	a5,160(s2)
    80006ffc:	09892703          	lw	a4,152(s2)
    80007000:	07f00693          	li	a3,127
    80007004:	40e7873b          	subw	a4,a5,a4
    80007008:	02e6e263          	bltu	a3,a4,8000702c <consoleintr+0x68>
    8000700c:	00d00713          	li	a4,13
    80007010:	04e48063          	beq	s1,a4,80007050 <consoleintr+0x8c>
    80007014:	07f7f713          	andi	a4,a5,127
    80007018:	00e90733          	add	a4,s2,a4
    8000701c:	0017879b          	addiw	a5,a5,1
    80007020:	0af92023          	sw	a5,160(s2)
    80007024:	00970c23          	sb	s1,24(a4)
    80007028:	08f92e23          	sw	a5,156(s2)
    8000702c:	01013403          	ld	s0,16(sp)
    80007030:	01813083          	ld	ra,24(sp)
    80007034:	00813483          	ld	s1,8(sp)
    80007038:	00013903          	ld	s2,0(sp)
    8000703c:	00006517          	auipc	a0,0x6
    80007040:	cac50513          	addi	a0,a0,-852 # 8000cce8 <cons>
    80007044:	02010113          	addi	sp,sp,32
    80007048:	00001317          	auipc	t1,0x1
    8000704c:	eb030067          	jr	-336(t1) # 80007ef8 <release>
    80007050:	00a00493          	li	s1,10
    80007054:	fc1ff06f          	j	80007014 <consoleintr+0x50>

0000000080007058 <consoleinit>:
    80007058:	fe010113          	addi	sp,sp,-32
    8000705c:	00113c23          	sd	ra,24(sp)
    80007060:	00813823          	sd	s0,16(sp)
    80007064:	00913423          	sd	s1,8(sp)
    80007068:	02010413          	addi	s0,sp,32
    8000706c:	00006497          	auipc	s1,0x6
    80007070:	c7c48493          	addi	s1,s1,-900 # 8000cce8 <cons>
    80007074:	00048513          	mv	a0,s1
    80007078:	00002597          	auipc	a1,0x2
    8000707c:	60858593          	addi	a1,a1,1544 # 80009680 <_ZL6digits+0x150>
    80007080:	00001097          	auipc	ra,0x1
    80007084:	d88080e7          	jalr	-632(ra) # 80007e08 <initlock>
    80007088:	00000097          	auipc	ra,0x0
    8000708c:	7ac080e7          	jalr	1964(ra) # 80007834 <uartinit>
    80007090:	01813083          	ld	ra,24(sp)
    80007094:	01013403          	ld	s0,16(sp)
    80007098:	00000797          	auipc	a5,0x0
    8000709c:	d9c78793          	addi	a5,a5,-612 # 80006e34 <consoleread>
    800070a0:	0af4bc23          	sd	a5,184(s1)
    800070a4:	00000797          	auipc	a5,0x0
    800070a8:	cec78793          	addi	a5,a5,-788 # 80006d90 <consolewrite>
    800070ac:	0cf4b023          	sd	a5,192(s1)
    800070b0:	00813483          	ld	s1,8(sp)
    800070b4:	02010113          	addi	sp,sp,32
    800070b8:	00008067          	ret

00000000800070bc <console_read>:
    800070bc:	ff010113          	addi	sp,sp,-16
    800070c0:	00813423          	sd	s0,8(sp)
    800070c4:	01010413          	addi	s0,sp,16
    800070c8:	00813403          	ld	s0,8(sp)
    800070cc:	00006317          	auipc	t1,0x6
    800070d0:	cd433303          	ld	t1,-812(t1) # 8000cda0 <devsw+0x10>
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00030067          	jr	t1

00000000800070dc <console_write>:
    800070dc:	ff010113          	addi	sp,sp,-16
    800070e0:	00813423          	sd	s0,8(sp)
    800070e4:	01010413          	addi	s0,sp,16
    800070e8:	00813403          	ld	s0,8(sp)
    800070ec:	00006317          	auipc	t1,0x6
    800070f0:	cbc33303          	ld	t1,-836(t1) # 8000cda8 <devsw+0x18>
    800070f4:	01010113          	addi	sp,sp,16
    800070f8:	00030067          	jr	t1

00000000800070fc <panic>:
    800070fc:	fe010113          	addi	sp,sp,-32
    80007100:	00113c23          	sd	ra,24(sp)
    80007104:	00813823          	sd	s0,16(sp)
    80007108:	00913423          	sd	s1,8(sp)
    8000710c:	02010413          	addi	s0,sp,32
    80007110:	00050493          	mv	s1,a0
    80007114:	00002517          	auipc	a0,0x2
    80007118:	57450513          	addi	a0,a0,1396 # 80009688 <_ZL6digits+0x158>
    8000711c:	00006797          	auipc	a5,0x6
    80007120:	d207a623          	sw	zero,-724(a5) # 8000ce48 <pr+0x18>
    80007124:	00000097          	auipc	ra,0x0
    80007128:	034080e7          	jalr	52(ra) # 80007158 <__printf>
    8000712c:	00048513          	mv	a0,s1
    80007130:	00000097          	auipc	ra,0x0
    80007134:	028080e7          	jalr	40(ra) # 80007158 <__printf>
    80007138:	00002517          	auipc	a0,0x2
    8000713c:	04050513          	addi	a0,a0,64 # 80009178 <CONSOLE_STATUS+0x168>
    80007140:	00000097          	auipc	ra,0x0
    80007144:	018080e7          	jalr	24(ra) # 80007158 <__printf>
    80007148:	00100793          	li	a5,1
    8000714c:	00005717          	auipc	a4,0x5
    80007150:	9cf72623          	sw	a5,-1588(a4) # 8000bb18 <panicked>
    80007154:	0000006f          	j	80007154 <panic+0x58>

0000000080007158 <__printf>:
    80007158:	f3010113          	addi	sp,sp,-208
    8000715c:	08813023          	sd	s0,128(sp)
    80007160:	07313423          	sd	s3,104(sp)
    80007164:	09010413          	addi	s0,sp,144
    80007168:	05813023          	sd	s8,64(sp)
    8000716c:	08113423          	sd	ra,136(sp)
    80007170:	06913c23          	sd	s1,120(sp)
    80007174:	07213823          	sd	s2,112(sp)
    80007178:	07413023          	sd	s4,96(sp)
    8000717c:	05513c23          	sd	s5,88(sp)
    80007180:	05613823          	sd	s6,80(sp)
    80007184:	05713423          	sd	s7,72(sp)
    80007188:	03913c23          	sd	s9,56(sp)
    8000718c:	03a13823          	sd	s10,48(sp)
    80007190:	03b13423          	sd	s11,40(sp)
    80007194:	00006317          	auipc	t1,0x6
    80007198:	c9c30313          	addi	t1,t1,-868 # 8000ce30 <pr>
    8000719c:	01832c03          	lw	s8,24(t1)
    800071a0:	00b43423          	sd	a1,8(s0)
    800071a4:	00c43823          	sd	a2,16(s0)
    800071a8:	00d43c23          	sd	a3,24(s0)
    800071ac:	02e43023          	sd	a4,32(s0)
    800071b0:	02f43423          	sd	a5,40(s0)
    800071b4:	03043823          	sd	a6,48(s0)
    800071b8:	03143c23          	sd	a7,56(s0)
    800071bc:	00050993          	mv	s3,a0
    800071c0:	4a0c1663          	bnez	s8,8000766c <__printf+0x514>
    800071c4:	60098c63          	beqz	s3,800077dc <__printf+0x684>
    800071c8:	0009c503          	lbu	a0,0(s3)
    800071cc:	00840793          	addi	a5,s0,8
    800071d0:	f6f43c23          	sd	a5,-136(s0)
    800071d4:	00000493          	li	s1,0
    800071d8:	22050063          	beqz	a0,800073f8 <__printf+0x2a0>
    800071dc:	00002a37          	lui	s4,0x2
    800071e0:	00018ab7          	lui	s5,0x18
    800071e4:	000f4b37          	lui	s6,0xf4
    800071e8:	00989bb7          	lui	s7,0x989
    800071ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071fc:	00148c9b          	addiw	s9,s1,1
    80007200:	02500793          	li	a5,37
    80007204:	01998933          	add	s2,s3,s9
    80007208:	38f51263          	bne	a0,a5,8000758c <__printf+0x434>
    8000720c:	00094783          	lbu	a5,0(s2)
    80007210:	00078c9b          	sext.w	s9,a5
    80007214:	1e078263          	beqz	a5,800073f8 <__printf+0x2a0>
    80007218:	0024849b          	addiw	s1,s1,2
    8000721c:	07000713          	li	a4,112
    80007220:	00998933          	add	s2,s3,s1
    80007224:	38e78a63          	beq	a5,a4,800075b8 <__printf+0x460>
    80007228:	20f76863          	bltu	a4,a5,80007438 <__printf+0x2e0>
    8000722c:	42a78863          	beq	a5,a0,8000765c <__printf+0x504>
    80007230:	06400713          	li	a4,100
    80007234:	40e79663          	bne	a5,a4,80007640 <__printf+0x4e8>
    80007238:	f7843783          	ld	a5,-136(s0)
    8000723c:	0007a603          	lw	a2,0(a5)
    80007240:	00878793          	addi	a5,a5,8
    80007244:	f6f43c23          	sd	a5,-136(s0)
    80007248:	42064a63          	bltz	a2,8000767c <__printf+0x524>
    8000724c:	00a00713          	li	a4,10
    80007250:	02e677bb          	remuw	a5,a2,a4
    80007254:	00002d97          	auipc	s11,0x2
    80007258:	45cd8d93          	addi	s11,s11,1116 # 800096b0 <digits>
    8000725c:	00900593          	li	a1,9
    80007260:	0006051b          	sext.w	a0,a2
    80007264:	00000c93          	li	s9,0
    80007268:	02079793          	slli	a5,a5,0x20
    8000726c:	0207d793          	srli	a5,a5,0x20
    80007270:	00fd87b3          	add	a5,s11,a5
    80007274:	0007c783          	lbu	a5,0(a5)
    80007278:	02e656bb          	divuw	a3,a2,a4
    8000727c:	f8f40023          	sb	a5,-128(s0)
    80007280:	14c5d863          	bge	a1,a2,800073d0 <__printf+0x278>
    80007284:	06300593          	li	a1,99
    80007288:	00100c93          	li	s9,1
    8000728c:	02e6f7bb          	remuw	a5,a3,a4
    80007290:	02079793          	slli	a5,a5,0x20
    80007294:	0207d793          	srli	a5,a5,0x20
    80007298:	00fd87b3          	add	a5,s11,a5
    8000729c:	0007c783          	lbu	a5,0(a5)
    800072a0:	02e6d73b          	divuw	a4,a3,a4
    800072a4:	f8f400a3          	sb	a5,-127(s0)
    800072a8:	12a5f463          	bgeu	a1,a0,800073d0 <__printf+0x278>
    800072ac:	00a00693          	li	a3,10
    800072b0:	00900593          	li	a1,9
    800072b4:	02d777bb          	remuw	a5,a4,a3
    800072b8:	02079793          	slli	a5,a5,0x20
    800072bc:	0207d793          	srli	a5,a5,0x20
    800072c0:	00fd87b3          	add	a5,s11,a5
    800072c4:	0007c503          	lbu	a0,0(a5)
    800072c8:	02d757bb          	divuw	a5,a4,a3
    800072cc:	f8a40123          	sb	a0,-126(s0)
    800072d0:	48e5f263          	bgeu	a1,a4,80007754 <__printf+0x5fc>
    800072d4:	06300513          	li	a0,99
    800072d8:	02d7f5bb          	remuw	a1,a5,a3
    800072dc:	02059593          	slli	a1,a1,0x20
    800072e0:	0205d593          	srli	a1,a1,0x20
    800072e4:	00bd85b3          	add	a1,s11,a1
    800072e8:	0005c583          	lbu	a1,0(a1)
    800072ec:	02d7d7bb          	divuw	a5,a5,a3
    800072f0:	f8b401a3          	sb	a1,-125(s0)
    800072f4:	48e57263          	bgeu	a0,a4,80007778 <__printf+0x620>
    800072f8:	3e700513          	li	a0,999
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b40223          	sb	a1,-124(s0)
    80007318:	46e57663          	bgeu	a0,a4,80007784 <__printf+0x62c>
    8000731c:	02d7f5bb          	remuw	a1,a5,a3
    80007320:	02059593          	slli	a1,a1,0x20
    80007324:	0205d593          	srli	a1,a1,0x20
    80007328:	00bd85b3          	add	a1,s11,a1
    8000732c:	0005c583          	lbu	a1,0(a1)
    80007330:	02d7d7bb          	divuw	a5,a5,a3
    80007334:	f8b402a3          	sb	a1,-123(s0)
    80007338:	46ea7863          	bgeu	s4,a4,800077a8 <__printf+0x650>
    8000733c:	02d7f5bb          	remuw	a1,a5,a3
    80007340:	02059593          	slli	a1,a1,0x20
    80007344:	0205d593          	srli	a1,a1,0x20
    80007348:	00bd85b3          	add	a1,s11,a1
    8000734c:	0005c583          	lbu	a1,0(a1)
    80007350:	02d7d7bb          	divuw	a5,a5,a3
    80007354:	f8b40323          	sb	a1,-122(s0)
    80007358:	3eeaf863          	bgeu	s5,a4,80007748 <__printf+0x5f0>
    8000735c:	02d7f5bb          	remuw	a1,a5,a3
    80007360:	02059593          	slli	a1,a1,0x20
    80007364:	0205d593          	srli	a1,a1,0x20
    80007368:	00bd85b3          	add	a1,s11,a1
    8000736c:	0005c583          	lbu	a1,0(a1)
    80007370:	02d7d7bb          	divuw	a5,a5,a3
    80007374:	f8b403a3          	sb	a1,-121(s0)
    80007378:	42eb7e63          	bgeu	s6,a4,800077b4 <__printf+0x65c>
    8000737c:	02d7f5bb          	remuw	a1,a5,a3
    80007380:	02059593          	slli	a1,a1,0x20
    80007384:	0205d593          	srli	a1,a1,0x20
    80007388:	00bd85b3          	add	a1,s11,a1
    8000738c:	0005c583          	lbu	a1,0(a1)
    80007390:	02d7d7bb          	divuw	a5,a5,a3
    80007394:	f8b40423          	sb	a1,-120(s0)
    80007398:	42ebfc63          	bgeu	s7,a4,800077d0 <__printf+0x678>
    8000739c:	02079793          	slli	a5,a5,0x20
    800073a0:	0207d793          	srli	a5,a5,0x20
    800073a4:	00fd8db3          	add	s11,s11,a5
    800073a8:	000dc703          	lbu	a4,0(s11)
    800073ac:	00a00793          	li	a5,10
    800073b0:	00900c93          	li	s9,9
    800073b4:	f8e404a3          	sb	a4,-119(s0)
    800073b8:	00065c63          	bgez	a2,800073d0 <__printf+0x278>
    800073bc:	f9040713          	addi	a4,s0,-112
    800073c0:	00f70733          	add	a4,a4,a5
    800073c4:	02d00693          	li	a3,45
    800073c8:	fed70823          	sb	a3,-16(a4)
    800073cc:	00078c93          	mv	s9,a5
    800073d0:	f8040793          	addi	a5,s0,-128
    800073d4:	01978cb3          	add	s9,a5,s9
    800073d8:	f7f40d13          	addi	s10,s0,-129
    800073dc:	000cc503          	lbu	a0,0(s9)
    800073e0:	fffc8c93          	addi	s9,s9,-1
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	b90080e7          	jalr	-1136(ra) # 80006f74 <consputc>
    800073ec:	ffac98e3          	bne	s9,s10,800073dc <__printf+0x284>
    800073f0:	00094503          	lbu	a0,0(s2)
    800073f4:	e00514e3          	bnez	a0,800071fc <__printf+0xa4>
    800073f8:	1a0c1663          	bnez	s8,800075a4 <__printf+0x44c>
    800073fc:	08813083          	ld	ra,136(sp)
    80007400:	08013403          	ld	s0,128(sp)
    80007404:	07813483          	ld	s1,120(sp)
    80007408:	07013903          	ld	s2,112(sp)
    8000740c:	06813983          	ld	s3,104(sp)
    80007410:	06013a03          	ld	s4,96(sp)
    80007414:	05813a83          	ld	s5,88(sp)
    80007418:	05013b03          	ld	s6,80(sp)
    8000741c:	04813b83          	ld	s7,72(sp)
    80007420:	04013c03          	ld	s8,64(sp)
    80007424:	03813c83          	ld	s9,56(sp)
    80007428:	03013d03          	ld	s10,48(sp)
    8000742c:	02813d83          	ld	s11,40(sp)
    80007430:	0d010113          	addi	sp,sp,208
    80007434:	00008067          	ret
    80007438:	07300713          	li	a4,115
    8000743c:	1ce78a63          	beq	a5,a4,80007610 <__printf+0x4b8>
    80007440:	07800713          	li	a4,120
    80007444:	1ee79e63          	bne	a5,a4,80007640 <__printf+0x4e8>
    80007448:	f7843783          	ld	a5,-136(s0)
    8000744c:	0007a703          	lw	a4,0(a5)
    80007450:	00878793          	addi	a5,a5,8
    80007454:	f6f43c23          	sd	a5,-136(s0)
    80007458:	28074263          	bltz	a4,800076dc <__printf+0x584>
    8000745c:	00002d97          	auipc	s11,0x2
    80007460:	254d8d93          	addi	s11,s11,596 # 800096b0 <digits>
    80007464:	00f77793          	andi	a5,a4,15
    80007468:	00fd87b3          	add	a5,s11,a5
    8000746c:	0007c683          	lbu	a3,0(a5)
    80007470:	00f00613          	li	a2,15
    80007474:	0007079b          	sext.w	a5,a4
    80007478:	f8d40023          	sb	a3,-128(s0)
    8000747c:	0047559b          	srliw	a1,a4,0x4
    80007480:	0047569b          	srliw	a3,a4,0x4
    80007484:	00000c93          	li	s9,0
    80007488:	0ee65063          	bge	a2,a4,80007568 <__printf+0x410>
    8000748c:	00f6f693          	andi	a3,a3,15
    80007490:	00dd86b3          	add	a3,s11,a3
    80007494:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007498:	0087d79b          	srliw	a5,a5,0x8
    8000749c:	00100c93          	li	s9,1
    800074a0:	f8d400a3          	sb	a3,-127(s0)
    800074a4:	0cb67263          	bgeu	a2,a1,80007568 <__printf+0x410>
    800074a8:	00f7f693          	andi	a3,a5,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c583          	lbu	a1,0(a3)
    800074b4:	00f00613          	li	a2,15
    800074b8:	0047d69b          	srliw	a3,a5,0x4
    800074bc:	f8b40123          	sb	a1,-126(s0)
    800074c0:	0047d593          	srli	a1,a5,0x4
    800074c4:	28f67e63          	bgeu	a2,a5,80007760 <__printf+0x608>
    800074c8:	00f6f693          	andi	a3,a3,15
    800074cc:	00dd86b3          	add	a3,s11,a3
    800074d0:	0006c503          	lbu	a0,0(a3)
    800074d4:	0087d813          	srli	a6,a5,0x8
    800074d8:	0087d69b          	srliw	a3,a5,0x8
    800074dc:	f8a401a3          	sb	a0,-125(s0)
    800074e0:	28b67663          	bgeu	a2,a1,8000776c <__printf+0x614>
    800074e4:	00f6f693          	andi	a3,a3,15
    800074e8:	00dd86b3          	add	a3,s11,a3
    800074ec:	0006c583          	lbu	a1,0(a3)
    800074f0:	00c7d513          	srli	a0,a5,0xc
    800074f4:	00c7d69b          	srliw	a3,a5,0xc
    800074f8:	f8b40223          	sb	a1,-124(s0)
    800074fc:	29067a63          	bgeu	a2,a6,80007790 <__printf+0x638>
    80007500:	00f6f693          	andi	a3,a3,15
    80007504:	00dd86b3          	add	a3,s11,a3
    80007508:	0006c583          	lbu	a1,0(a3)
    8000750c:	0107d813          	srli	a6,a5,0x10
    80007510:	0107d69b          	srliw	a3,a5,0x10
    80007514:	f8b402a3          	sb	a1,-123(s0)
    80007518:	28a67263          	bgeu	a2,a0,8000779c <__printf+0x644>
    8000751c:	00f6f693          	andi	a3,a3,15
    80007520:	00dd86b3          	add	a3,s11,a3
    80007524:	0006c683          	lbu	a3,0(a3)
    80007528:	0147d79b          	srliw	a5,a5,0x14
    8000752c:	f8d40323          	sb	a3,-122(s0)
    80007530:	21067663          	bgeu	a2,a6,8000773c <__printf+0x5e4>
    80007534:	02079793          	slli	a5,a5,0x20
    80007538:	0207d793          	srli	a5,a5,0x20
    8000753c:	00fd8db3          	add	s11,s11,a5
    80007540:	000dc683          	lbu	a3,0(s11)
    80007544:	00800793          	li	a5,8
    80007548:	00700c93          	li	s9,7
    8000754c:	f8d403a3          	sb	a3,-121(s0)
    80007550:	00075c63          	bgez	a4,80007568 <__printf+0x410>
    80007554:	f9040713          	addi	a4,s0,-112
    80007558:	00f70733          	add	a4,a4,a5
    8000755c:	02d00693          	li	a3,45
    80007560:	fed70823          	sb	a3,-16(a4)
    80007564:	00078c93          	mv	s9,a5
    80007568:	f8040793          	addi	a5,s0,-128
    8000756c:	01978cb3          	add	s9,a5,s9
    80007570:	f7f40d13          	addi	s10,s0,-129
    80007574:	000cc503          	lbu	a0,0(s9)
    80007578:	fffc8c93          	addi	s9,s9,-1
    8000757c:	00000097          	auipc	ra,0x0
    80007580:	9f8080e7          	jalr	-1544(ra) # 80006f74 <consputc>
    80007584:	ff9d18e3          	bne	s10,s9,80007574 <__printf+0x41c>
    80007588:	0100006f          	j	80007598 <__printf+0x440>
    8000758c:	00000097          	auipc	ra,0x0
    80007590:	9e8080e7          	jalr	-1560(ra) # 80006f74 <consputc>
    80007594:	000c8493          	mv	s1,s9
    80007598:	00094503          	lbu	a0,0(s2)
    8000759c:	c60510e3          	bnez	a0,800071fc <__printf+0xa4>
    800075a0:	e40c0ee3          	beqz	s8,800073fc <__printf+0x2a4>
    800075a4:	00006517          	auipc	a0,0x6
    800075a8:	88c50513          	addi	a0,a0,-1908 # 8000ce30 <pr>
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	94c080e7          	jalr	-1716(ra) # 80007ef8 <release>
    800075b4:	e49ff06f          	j	800073fc <__printf+0x2a4>
    800075b8:	f7843783          	ld	a5,-136(s0)
    800075bc:	03000513          	li	a0,48
    800075c0:	01000d13          	li	s10,16
    800075c4:	00878713          	addi	a4,a5,8
    800075c8:	0007bc83          	ld	s9,0(a5)
    800075cc:	f6e43c23          	sd	a4,-136(s0)
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	9a4080e7          	jalr	-1628(ra) # 80006f74 <consputc>
    800075d8:	07800513          	li	a0,120
    800075dc:	00000097          	auipc	ra,0x0
    800075e0:	998080e7          	jalr	-1640(ra) # 80006f74 <consputc>
    800075e4:	00002d97          	auipc	s11,0x2
    800075e8:	0ccd8d93          	addi	s11,s11,204 # 800096b0 <digits>
    800075ec:	03ccd793          	srli	a5,s9,0x3c
    800075f0:	00fd87b3          	add	a5,s11,a5
    800075f4:	0007c503          	lbu	a0,0(a5)
    800075f8:	fffd0d1b          	addiw	s10,s10,-1
    800075fc:	004c9c93          	slli	s9,s9,0x4
    80007600:	00000097          	auipc	ra,0x0
    80007604:	974080e7          	jalr	-1676(ra) # 80006f74 <consputc>
    80007608:	fe0d12e3          	bnez	s10,800075ec <__printf+0x494>
    8000760c:	f8dff06f          	j	80007598 <__printf+0x440>
    80007610:	f7843783          	ld	a5,-136(s0)
    80007614:	0007bc83          	ld	s9,0(a5)
    80007618:	00878793          	addi	a5,a5,8
    8000761c:	f6f43c23          	sd	a5,-136(s0)
    80007620:	000c9a63          	bnez	s9,80007634 <__printf+0x4dc>
    80007624:	1080006f          	j	8000772c <__printf+0x5d4>
    80007628:	001c8c93          	addi	s9,s9,1
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	948080e7          	jalr	-1720(ra) # 80006f74 <consputc>
    80007634:	000cc503          	lbu	a0,0(s9)
    80007638:	fe0518e3          	bnez	a0,80007628 <__printf+0x4d0>
    8000763c:	f5dff06f          	j	80007598 <__printf+0x440>
    80007640:	02500513          	li	a0,37
    80007644:	00000097          	auipc	ra,0x0
    80007648:	930080e7          	jalr	-1744(ra) # 80006f74 <consputc>
    8000764c:	000c8513          	mv	a0,s9
    80007650:	00000097          	auipc	ra,0x0
    80007654:	924080e7          	jalr	-1756(ra) # 80006f74 <consputc>
    80007658:	f41ff06f          	j	80007598 <__printf+0x440>
    8000765c:	02500513          	li	a0,37
    80007660:	00000097          	auipc	ra,0x0
    80007664:	914080e7          	jalr	-1772(ra) # 80006f74 <consputc>
    80007668:	f31ff06f          	j	80007598 <__printf+0x440>
    8000766c:	00030513          	mv	a0,t1
    80007670:	00000097          	auipc	ra,0x0
    80007674:	7bc080e7          	jalr	1980(ra) # 80007e2c <acquire>
    80007678:	b4dff06f          	j	800071c4 <__printf+0x6c>
    8000767c:	40c0053b          	negw	a0,a2
    80007680:	00a00713          	li	a4,10
    80007684:	02e576bb          	remuw	a3,a0,a4
    80007688:	00002d97          	auipc	s11,0x2
    8000768c:	028d8d93          	addi	s11,s11,40 # 800096b0 <digits>
    80007690:	ff700593          	li	a1,-9
    80007694:	02069693          	slli	a3,a3,0x20
    80007698:	0206d693          	srli	a3,a3,0x20
    8000769c:	00dd86b3          	add	a3,s11,a3
    800076a0:	0006c683          	lbu	a3,0(a3)
    800076a4:	02e557bb          	divuw	a5,a0,a4
    800076a8:	f8d40023          	sb	a3,-128(s0)
    800076ac:	10b65e63          	bge	a2,a1,800077c8 <__printf+0x670>
    800076b0:	06300593          	li	a1,99
    800076b4:	02e7f6bb          	remuw	a3,a5,a4
    800076b8:	02069693          	slli	a3,a3,0x20
    800076bc:	0206d693          	srli	a3,a3,0x20
    800076c0:	00dd86b3          	add	a3,s11,a3
    800076c4:	0006c683          	lbu	a3,0(a3)
    800076c8:	02e7d73b          	divuw	a4,a5,a4
    800076cc:	00200793          	li	a5,2
    800076d0:	f8d400a3          	sb	a3,-127(s0)
    800076d4:	bca5ece3          	bltu	a1,a0,800072ac <__printf+0x154>
    800076d8:	ce5ff06f          	j	800073bc <__printf+0x264>
    800076dc:	40e007bb          	negw	a5,a4
    800076e0:	00002d97          	auipc	s11,0x2
    800076e4:	fd0d8d93          	addi	s11,s11,-48 # 800096b0 <digits>
    800076e8:	00f7f693          	andi	a3,a5,15
    800076ec:	00dd86b3          	add	a3,s11,a3
    800076f0:	0006c583          	lbu	a1,0(a3)
    800076f4:	ff100613          	li	a2,-15
    800076f8:	0047d69b          	srliw	a3,a5,0x4
    800076fc:	f8b40023          	sb	a1,-128(s0)
    80007700:	0047d59b          	srliw	a1,a5,0x4
    80007704:	0ac75e63          	bge	a4,a2,800077c0 <__printf+0x668>
    80007708:	00f6f693          	andi	a3,a3,15
    8000770c:	00dd86b3          	add	a3,s11,a3
    80007710:	0006c603          	lbu	a2,0(a3)
    80007714:	00f00693          	li	a3,15
    80007718:	0087d79b          	srliw	a5,a5,0x8
    8000771c:	f8c400a3          	sb	a2,-127(s0)
    80007720:	d8b6e4e3          	bltu	a3,a1,800074a8 <__printf+0x350>
    80007724:	00200793          	li	a5,2
    80007728:	e2dff06f          	j	80007554 <__printf+0x3fc>
    8000772c:	00002c97          	auipc	s9,0x2
    80007730:	f64c8c93          	addi	s9,s9,-156 # 80009690 <_ZL6digits+0x160>
    80007734:	02800513          	li	a0,40
    80007738:	ef1ff06f          	j	80007628 <__printf+0x4d0>
    8000773c:	00700793          	li	a5,7
    80007740:	00600c93          	li	s9,6
    80007744:	e0dff06f          	j	80007550 <__printf+0x3f8>
    80007748:	00700793          	li	a5,7
    8000774c:	00600c93          	li	s9,6
    80007750:	c69ff06f          	j	800073b8 <__printf+0x260>
    80007754:	00300793          	li	a5,3
    80007758:	00200c93          	li	s9,2
    8000775c:	c5dff06f          	j	800073b8 <__printf+0x260>
    80007760:	00300793          	li	a5,3
    80007764:	00200c93          	li	s9,2
    80007768:	de9ff06f          	j	80007550 <__printf+0x3f8>
    8000776c:	00400793          	li	a5,4
    80007770:	00300c93          	li	s9,3
    80007774:	dddff06f          	j	80007550 <__printf+0x3f8>
    80007778:	00400793          	li	a5,4
    8000777c:	00300c93          	li	s9,3
    80007780:	c39ff06f          	j	800073b8 <__printf+0x260>
    80007784:	00500793          	li	a5,5
    80007788:	00400c93          	li	s9,4
    8000778c:	c2dff06f          	j	800073b8 <__printf+0x260>
    80007790:	00500793          	li	a5,5
    80007794:	00400c93          	li	s9,4
    80007798:	db9ff06f          	j	80007550 <__printf+0x3f8>
    8000779c:	00600793          	li	a5,6
    800077a0:	00500c93          	li	s9,5
    800077a4:	dadff06f          	j	80007550 <__printf+0x3f8>
    800077a8:	00600793          	li	a5,6
    800077ac:	00500c93          	li	s9,5
    800077b0:	c09ff06f          	j	800073b8 <__printf+0x260>
    800077b4:	00800793          	li	a5,8
    800077b8:	00700c93          	li	s9,7
    800077bc:	bfdff06f          	j	800073b8 <__printf+0x260>
    800077c0:	00100793          	li	a5,1
    800077c4:	d91ff06f          	j	80007554 <__printf+0x3fc>
    800077c8:	00100793          	li	a5,1
    800077cc:	bf1ff06f          	j	800073bc <__printf+0x264>
    800077d0:	00900793          	li	a5,9
    800077d4:	00800c93          	li	s9,8
    800077d8:	be1ff06f          	j	800073b8 <__printf+0x260>
    800077dc:	00002517          	auipc	a0,0x2
    800077e0:	ebc50513          	addi	a0,a0,-324 # 80009698 <_ZL6digits+0x168>
    800077e4:	00000097          	auipc	ra,0x0
    800077e8:	918080e7          	jalr	-1768(ra) # 800070fc <panic>

00000000800077ec <printfinit>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	00113c23          	sd	ra,24(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	00005497          	auipc	s1,0x5
    80007804:	63048493          	addi	s1,s1,1584 # 8000ce30 <pr>
    80007808:	00048513          	mv	a0,s1
    8000780c:	00002597          	auipc	a1,0x2
    80007810:	e9c58593          	addi	a1,a1,-356 # 800096a8 <_ZL6digits+0x178>
    80007814:	00000097          	auipc	ra,0x0
    80007818:	5f4080e7          	jalr	1524(ra) # 80007e08 <initlock>
    8000781c:	01813083          	ld	ra,24(sp)
    80007820:	01013403          	ld	s0,16(sp)
    80007824:	0004ac23          	sw	zero,24(s1)
    80007828:	00813483          	ld	s1,8(sp)
    8000782c:	02010113          	addi	sp,sp,32
    80007830:	00008067          	ret

0000000080007834 <uartinit>:
    80007834:	ff010113          	addi	sp,sp,-16
    80007838:	00813423          	sd	s0,8(sp)
    8000783c:	01010413          	addi	s0,sp,16
    80007840:	100007b7          	lui	a5,0x10000
    80007844:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007848:	f8000713          	li	a4,-128
    8000784c:	00e781a3          	sb	a4,3(a5)
    80007850:	00300713          	li	a4,3
    80007854:	00e78023          	sb	a4,0(a5)
    80007858:	000780a3          	sb	zero,1(a5)
    8000785c:	00e781a3          	sb	a4,3(a5)
    80007860:	00700693          	li	a3,7
    80007864:	00d78123          	sb	a3,2(a5)
    80007868:	00e780a3          	sb	a4,1(a5)
    8000786c:	00813403          	ld	s0,8(sp)
    80007870:	01010113          	addi	sp,sp,16
    80007874:	00008067          	ret

0000000080007878 <uartputc>:
    80007878:	00004797          	auipc	a5,0x4
    8000787c:	2a07a783          	lw	a5,672(a5) # 8000bb18 <panicked>
    80007880:	00078463          	beqz	a5,80007888 <uartputc+0x10>
    80007884:	0000006f          	j	80007884 <uartputc+0xc>
    80007888:	fd010113          	addi	sp,sp,-48
    8000788c:	02813023          	sd	s0,32(sp)
    80007890:	00913c23          	sd	s1,24(sp)
    80007894:	01213823          	sd	s2,16(sp)
    80007898:	01313423          	sd	s3,8(sp)
    8000789c:	02113423          	sd	ra,40(sp)
    800078a0:	03010413          	addi	s0,sp,48
    800078a4:	00004917          	auipc	s2,0x4
    800078a8:	27c90913          	addi	s2,s2,636 # 8000bb20 <uart_tx_r>
    800078ac:	00093783          	ld	a5,0(s2)
    800078b0:	00004497          	auipc	s1,0x4
    800078b4:	27848493          	addi	s1,s1,632 # 8000bb28 <uart_tx_w>
    800078b8:	0004b703          	ld	a4,0(s1)
    800078bc:	02078693          	addi	a3,a5,32
    800078c0:	00050993          	mv	s3,a0
    800078c4:	02e69c63          	bne	a3,a4,800078fc <uartputc+0x84>
    800078c8:	00001097          	auipc	ra,0x1
    800078cc:	834080e7          	jalr	-1996(ra) # 800080fc <push_on>
    800078d0:	00093783          	ld	a5,0(s2)
    800078d4:	0004b703          	ld	a4,0(s1)
    800078d8:	02078793          	addi	a5,a5,32
    800078dc:	00e79463          	bne	a5,a4,800078e4 <uartputc+0x6c>
    800078e0:	0000006f          	j	800078e0 <uartputc+0x68>
    800078e4:	00001097          	auipc	ra,0x1
    800078e8:	88c080e7          	jalr	-1908(ra) # 80008170 <pop_on>
    800078ec:	00093783          	ld	a5,0(s2)
    800078f0:	0004b703          	ld	a4,0(s1)
    800078f4:	02078693          	addi	a3,a5,32
    800078f8:	fce688e3          	beq	a3,a4,800078c8 <uartputc+0x50>
    800078fc:	01f77693          	andi	a3,a4,31
    80007900:	00005597          	auipc	a1,0x5
    80007904:	55058593          	addi	a1,a1,1360 # 8000ce50 <uart_tx_buf>
    80007908:	00d586b3          	add	a3,a1,a3
    8000790c:	00170713          	addi	a4,a4,1
    80007910:	01368023          	sb	s3,0(a3)
    80007914:	00e4b023          	sd	a4,0(s1)
    80007918:	10000637          	lui	a2,0x10000
    8000791c:	02f71063          	bne	a4,a5,8000793c <uartputc+0xc4>
    80007920:	0340006f          	j	80007954 <uartputc+0xdc>
    80007924:	00074703          	lbu	a4,0(a4)
    80007928:	00f93023          	sd	a5,0(s2)
    8000792c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007930:	00093783          	ld	a5,0(s2)
    80007934:	0004b703          	ld	a4,0(s1)
    80007938:	00f70e63          	beq	a4,a5,80007954 <uartputc+0xdc>
    8000793c:	00564683          	lbu	a3,5(a2)
    80007940:	01f7f713          	andi	a4,a5,31
    80007944:	00e58733          	add	a4,a1,a4
    80007948:	0206f693          	andi	a3,a3,32
    8000794c:	00178793          	addi	a5,a5,1
    80007950:	fc069ae3          	bnez	a3,80007924 <uartputc+0xac>
    80007954:	02813083          	ld	ra,40(sp)
    80007958:	02013403          	ld	s0,32(sp)
    8000795c:	01813483          	ld	s1,24(sp)
    80007960:	01013903          	ld	s2,16(sp)
    80007964:	00813983          	ld	s3,8(sp)
    80007968:	03010113          	addi	sp,sp,48
    8000796c:	00008067          	ret

0000000080007970 <uartputc_sync>:
    80007970:	ff010113          	addi	sp,sp,-16
    80007974:	00813423          	sd	s0,8(sp)
    80007978:	01010413          	addi	s0,sp,16
    8000797c:	00004717          	auipc	a4,0x4
    80007980:	19c72703          	lw	a4,412(a4) # 8000bb18 <panicked>
    80007984:	02071663          	bnez	a4,800079b0 <uartputc_sync+0x40>
    80007988:	00050793          	mv	a5,a0
    8000798c:	100006b7          	lui	a3,0x10000
    80007990:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007994:	02077713          	andi	a4,a4,32
    80007998:	fe070ce3          	beqz	a4,80007990 <uartputc_sync+0x20>
    8000799c:	0ff7f793          	andi	a5,a5,255
    800079a0:	00f68023          	sb	a5,0(a3)
    800079a4:	00813403          	ld	s0,8(sp)
    800079a8:	01010113          	addi	sp,sp,16
    800079ac:	00008067          	ret
    800079b0:	0000006f          	j	800079b0 <uartputc_sync+0x40>

00000000800079b4 <uartstart>:
    800079b4:	ff010113          	addi	sp,sp,-16
    800079b8:	00813423          	sd	s0,8(sp)
    800079bc:	01010413          	addi	s0,sp,16
    800079c0:	00004617          	auipc	a2,0x4
    800079c4:	16060613          	addi	a2,a2,352 # 8000bb20 <uart_tx_r>
    800079c8:	00004517          	auipc	a0,0x4
    800079cc:	16050513          	addi	a0,a0,352 # 8000bb28 <uart_tx_w>
    800079d0:	00063783          	ld	a5,0(a2)
    800079d4:	00053703          	ld	a4,0(a0)
    800079d8:	04f70263          	beq	a4,a5,80007a1c <uartstart+0x68>
    800079dc:	100005b7          	lui	a1,0x10000
    800079e0:	00005817          	auipc	a6,0x5
    800079e4:	47080813          	addi	a6,a6,1136 # 8000ce50 <uart_tx_buf>
    800079e8:	01c0006f          	j	80007a04 <uartstart+0x50>
    800079ec:	0006c703          	lbu	a4,0(a3)
    800079f0:	00f63023          	sd	a5,0(a2)
    800079f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079f8:	00063783          	ld	a5,0(a2)
    800079fc:	00053703          	ld	a4,0(a0)
    80007a00:	00f70e63          	beq	a4,a5,80007a1c <uartstart+0x68>
    80007a04:	01f7f713          	andi	a4,a5,31
    80007a08:	00e806b3          	add	a3,a6,a4
    80007a0c:	0055c703          	lbu	a4,5(a1)
    80007a10:	00178793          	addi	a5,a5,1
    80007a14:	02077713          	andi	a4,a4,32
    80007a18:	fc071ae3          	bnez	a4,800079ec <uartstart+0x38>
    80007a1c:	00813403          	ld	s0,8(sp)
    80007a20:	01010113          	addi	sp,sp,16
    80007a24:	00008067          	ret

0000000080007a28 <uartgetc>:
    80007a28:	ff010113          	addi	sp,sp,-16
    80007a2c:	00813423          	sd	s0,8(sp)
    80007a30:	01010413          	addi	s0,sp,16
    80007a34:	10000737          	lui	a4,0x10000
    80007a38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a3c:	0017f793          	andi	a5,a5,1
    80007a40:	00078c63          	beqz	a5,80007a58 <uartgetc+0x30>
    80007a44:	00074503          	lbu	a0,0(a4)
    80007a48:	0ff57513          	andi	a0,a0,255
    80007a4c:	00813403          	ld	s0,8(sp)
    80007a50:	01010113          	addi	sp,sp,16
    80007a54:	00008067          	ret
    80007a58:	fff00513          	li	a0,-1
    80007a5c:	ff1ff06f          	j	80007a4c <uartgetc+0x24>

0000000080007a60 <uartintr>:
    80007a60:	100007b7          	lui	a5,0x10000
    80007a64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a68:	0017f793          	andi	a5,a5,1
    80007a6c:	0a078463          	beqz	a5,80007b14 <uartintr+0xb4>
    80007a70:	fe010113          	addi	sp,sp,-32
    80007a74:	00813823          	sd	s0,16(sp)
    80007a78:	00913423          	sd	s1,8(sp)
    80007a7c:	00113c23          	sd	ra,24(sp)
    80007a80:	02010413          	addi	s0,sp,32
    80007a84:	100004b7          	lui	s1,0x10000
    80007a88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a8c:	0ff57513          	andi	a0,a0,255
    80007a90:	fffff097          	auipc	ra,0xfffff
    80007a94:	534080e7          	jalr	1332(ra) # 80006fc4 <consoleintr>
    80007a98:	0054c783          	lbu	a5,5(s1)
    80007a9c:	0017f793          	andi	a5,a5,1
    80007aa0:	fe0794e3          	bnez	a5,80007a88 <uartintr+0x28>
    80007aa4:	00004617          	auipc	a2,0x4
    80007aa8:	07c60613          	addi	a2,a2,124 # 8000bb20 <uart_tx_r>
    80007aac:	00004517          	auipc	a0,0x4
    80007ab0:	07c50513          	addi	a0,a0,124 # 8000bb28 <uart_tx_w>
    80007ab4:	00063783          	ld	a5,0(a2)
    80007ab8:	00053703          	ld	a4,0(a0)
    80007abc:	04f70263          	beq	a4,a5,80007b00 <uartintr+0xa0>
    80007ac0:	100005b7          	lui	a1,0x10000
    80007ac4:	00005817          	auipc	a6,0x5
    80007ac8:	38c80813          	addi	a6,a6,908 # 8000ce50 <uart_tx_buf>
    80007acc:	01c0006f          	j	80007ae8 <uartintr+0x88>
    80007ad0:	0006c703          	lbu	a4,0(a3)
    80007ad4:	00f63023          	sd	a5,0(a2)
    80007ad8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007adc:	00063783          	ld	a5,0(a2)
    80007ae0:	00053703          	ld	a4,0(a0)
    80007ae4:	00f70e63          	beq	a4,a5,80007b00 <uartintr+0xa0>
    80007ae8:	01f7f713          	andi	a4,a5,31
    80007aec:	00e806b3          	add	a3,a6,a4
    80007af0:	0055c703          	lbu	a4,5(a1)
    80007af4:	00178793          	addi	a5,a5,1
    80007af8:	02077713          	andi	a4,a4,32
    80007afc:	fc071ae3          	bnez	a4,80007ad0 <uartintr+0x70>
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	01013403          	ld	s0,16(sp)
    80007b08:	00813483          	ld	s1,8(sp)
    80007b0c:	02010113          	addi	sp,sp,32
    80007b10:	00008067          	ret
    80007b14:	00004617          	auipc	a2,0x4
    80007b18:	00c60613          	addi	a2,a2,12 # 8000bb20 <uart_tx_r>
    80007b1c:	00004517          	auipc	a0,0x4
    80007b20:	00c50513          	addi	a0,a0,12 # 8000bb28 <uart_tx_w>
    80007b24:	00063783          	ld	a5,0(a2)
    80007b28:	00053703          	ld	a4,0(a0)
    80007b2c:	04f70263          	beq	a4,a5,80007b70 <uartintr+0x110>
    80007b30:	100005b7          	lui	a1,0x10000
    80007b34:	00005817          	auipc	a6,0x5
    80007b38:	31c80813          	addi	a6,a6,796 # 8000ce50 <uart_tx_buf>
    80007b3c:	01c0006f          	j	80007b58 <uartintr+0xf8>
    80007b40:	0006c703          	lbu	a4,0(a3)
    80007b44:	00f63023          	sd	a5,0(a2)
    80007b48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b4c:	00063783          	ld	a5,0(a2)
    80007b50:	00053703          	ld	a4,0(a0)
    80007b54:	02f70063          	beq	a4,a5,80007b74 <uartintr+0x114>
    80007b58:	01f7f713          	andi	a4,a5,31
    80007b5c:	00e806b3          	add	a3,a6,a4
    80007b60:	0055c703          	lbu	a4,5(a1)
    80007b64:	00178793          	addi	a5,a5,1
    80007b68:	02077713          	andi	a4,a4,32
    80007b6c:	fc071ae3          	bnez	a4,80007b40 <uartintr+0xe0>
    80007b70:	00008067          	ret
    80007b74:	00008067          	ret

0000000080007b78 <kinit>:
    80007b78:	fc010113          	addi	sp,sp,-64
    80007b7c:	02913423          	sd	s1,40(sp)
    80007b80:	fffff7b7          	lui	a5,0xfffff
    80007b84:	00006497          	auipc	s1,0x6
    80007b88:	2eb48493          	addi	s1,s1,747 # 8000de6f <end+0xfff>
    80007b8c:	02813823          	sd	s0,48(sp)
    80007b90:	01313c23          	sd	s3,24(sp)
    80007b94:	00f4f4b3          	and	s1,s1,a5
    80007b98:	02113c23          	sd	ra,56(sp)
    80007b9c:	03213023          	sd	s2,32(sp)
    80007ba0:	01413823          	sd	s4,16(sp)
    80007ba4:	01513423          	sd	s5,8(sp)
    80007ba8:	04010413          	addi	s0,sp,64
    80007bac:	000017b7          	lui	a5,0x1
    80007bb0:	01100993          	li	s3,17
    80007bb4:	00f487b3          	add	a5,s1,a5
    80007bb8:	01b99993          	slli	s3,s3,0x1b
    80007bbc:	06f9e063          	bltu	s3,a5,80007c1c <kinit+0xa4>
    80007bc0:	00005a97          	auipc	s5,0x5
    80007bc4:	2b0a8a93          	addi	s5,s5,688 # 8000ce70 <end>
    80007bc8:	0754ec63          	bltu	s1,s5,80007c40 <kinit+0xc8>
    80007bcc:	0734fa63          	bgeu	s1,s3,80007c40 <kinit+0xc8>
    80007bd0:	00088a37          	lui	s4,0x88
    80007bd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007bd8:	00004917          	auipc	s2,0x4
    80007bdc:	f5890913          	addi	s2,s2,-168 # 8000bb30 <kmem>
    80007be0:	00ca1a13          	slli	s4,s4,0xc
    80007be4:	0140006f          	j	80007bf8 <kinit+0x80>
    80007be8:	000017b7          	lui	a5,0x1
    80007bec:	00f484b3          	add	s1,s1,a5
    80007bf0:	0554e863          	bltu	s1,s5,80007c40 <kinit+0xc8>
    80007bf4:	0534f663          	bgeu	s1,s3,80007c40 <kinit+0xc8>
    80007bf8:	00001637          	lui	a2,0x1
    80007bfc:	00100593          	li	a1,1
    80007c00:	00048513          	mv	a0,s1
    80007c04:	00000097          	auipc	ra,0x0
    80007c08:	5e4080e7          	jalr	1508(ra) # 800081e8 <__memset>
    80007c0c:	00093783          	ld	a5,0(s2)
    80007c10:	00f4b023          	sd	a5,0(s1)
    80007c14:	00993023          	sd	s1,0(s2)
    80007c18:	fd4498e3          	bne	s1,s4,80007be8 <kinit+0x70>
    80007c1c:	03813083          	ld	ra,56(sp)
    80007c20:	03013403          	ld	s0,48(sp)
    80007c24:	02813483          	ld	s1,40(sp)
    80007c28:	02013903          	ld	s2,32(sp)
    80007c2c:	01813983          	ld	s3,24(sp)
    80007c30:	01013a03          	ld	s4,16(sp)
    80007c34:	00813a83          	ld	s5,8(sp)
    80007c38:	04010113          	addi	sp,sp,64
    80007c3c:	00008067          	ret
    80007c40:	00002517          	auipc	a0,0x2
    80007c44:	a8850513          	addi	a0,a0,-1400 # 800096c8 <digits+0x18>
    80007c48:	fffff097          	auipc	ra,0xfffff
    80007c4c:	4b4080e7          	jalr	1204(ra) # 800070fc <panic>

0000000080007c50 <freerange>:
    80007c50:	fc010113          	addi	sp,sp,-64
    80007c54:	000017b7          	lui	a5,0x1
    80007c58:	02913423          	sd	s1,40(sp)
    80007c5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c60:	009504b3          	add	s1,a0,s1
    80007c64:	fffff537          	lui	a0,0xfffff
    80007c68:	02813823          	sd	s0,48(sp)
    80007c6c:	02113c23          	sd	ra,56(sp)
    80007c70:	03213023          	sd	s2,32(sp)
    80007c74:	01313c23          	sd	s3,24(sp)
    80007c78:	01413823          	sd	s4,16(sp)
    80007c7c:	01513423          	sd	s5,8(sp)
    80007c80:	01613023          	sd	s6,0(sp)
    80007c84:	04010413          	addi	s0,sp,64
    80007c88:	00a4f4b3          	and	s1,s1,a0
    80007c8c:	00f487b3          	add	a5,s1,a5
    80007c90:	06f5e463          	bltu	a1,a5,80007cf8 <freerange+0xa8>
    80007c94:	00005a97          	auipc	s5,0x5
    80007c98:	1dca8a93          	addi	s5,s5,476 # 8000ce70 <end>
    80007c9c:	0954e263          	bltu	s1,s5,80007d20 <freerange+0xd0>
    80007ca0:	01100993          	li	s3,17
    80007ca4:	01b99993          	slli	s3,s3,0x1b
    80007ca8:	0734fc63          	bgeu	s1,s3,80007d20 <freerange+0xd0>
    80007cac:	00058a13          	mv	s4,a1
    80007cb0:	00004917          	auipc	s2,0x4
    80007cb4:	e8090913          	addi	s2,s2,-384 # 8000bb30 <kmem>
    80007cb8:	00002b37          	lui	s6,0x2
    80007cbc:	0140006f          	j	80007cd0 <freerange+0x80>
    80007cc0:	000017b7          	lui	a5,0x1
    80007cc4:	00f484b3          	add	s1,s1,a5
    80007cc8:	0554ec63          	bltu	s1,s5,80007d20 <freerange+0xd0>
    80007ccc:	0534fa63          	bgeu	s1,s3,80007d20 <freerange+0xd0>
    80007cd0:	00001637          	lui	a2,0x1
    80007cd4:	00100593          	li	a1,1
    80007cd8:	00048513          	mv	a0,s1
    80007cdc:	00000097          	auipc	ra,0x0
    80007ce0:	50c080e7          	jalr	1292(ra) # 800081e8 <__memset>
    80007ce4:	00093703          	ld	a4,0(s2)
    80007ce8:	016487b3          	add	a5,s1,s6
    80007cec:	00e4b023          	sd	a4,0(s1)
    80007cf0:	00993023          	sd	s1,0(s2)
    80007cf4:	fcfa76e3          	bgeu	s4,a5,80007cc0 <freerange+0x70>
    80007cf8:	03813083          	ld	ra,56(sp)
    80007cfc:	03013403          	ld	s0,48(sp)
    80007d00:	02813483          	ld	s1,40(sp)
    80007d04:	02013903          	ld	s2,32(sp)
    80007d08:	01813983          	ld	s3,24(sp)
    80007d0c:	01013a03          	ld	s4,16(sp)
    80007d10:	00813a83          	ld	s5,8(sp)
    80007d14:	00013b03          	ld	s6,0(sp)
    80007d18:	04010113          	addi	sp,sp,64
    80007d1c:	00008067          	ret
    80007d20:	00002517          	auipc	a0,0x2
    80007d24:	9a850513          	addi	a0,a0,-1624 # 800096c8 <digits+0x18>
    80007d28:	fffff097          	auipc	ra,0xfffff
    80007d2c:	3d4080e7          	jalr	980(ra) # 800070fc <panic>

0000000080007d30 <kfree>:
    80007d30:	fe010113          	addi	sp,sp,-32
    80007d34:	00813823          	sd	s0,16(sp)
    80007d38:	00113c23          	sd	ra,24(sp)
    80007d3c:	00913423          	sd	s1,8(sp)
    80007d40:	02010413          	addi	s0,sp,32
    80007d44:	03451793          	slli	a5,a0,0x34
    80007d48:	04079c63          	bnez	a5,80007da0 <kfree+0x70>
    80007d4c:	00005797          	auipc	a5,0x5
    80007d50:	12478793          	addi	a5,a5,292 # 8000ce70 <end>
    80007d54:	00050493          	mv	s1,a0
    80007d58:	04f56463          	bltu	a0,a5,80007da0 <kfree+0x70>
    80007d5c:	01100793          	li	a5,17
    80007d60:	01b79793          	slli	a5,a5,0x1b
    80007d64:	02f57e63          	bgeu	a0,a5,80007da0 <kfree+0x70>
    80007d68:	00001637          	lui	a2,0x1
    80007d6c:	00100593          	li	a1,1
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	478080e7          	jalr	1144(ra) # 800081e8 <__memset>
    80007d78:	00004797          	auipc	a5,0x4
    80007d7c:	db878793          	addi	a5,a5,-584 # 8000bb30 <kmem>
    80007d80:	0007b703          	ld	a4,0(a5)
    80007d84:	01813083          	ld	ra,24(sp)
    80007d88:	01013403          	ld	s0,16(sp)
    80007d8c:	00e4b023          	sd	a4,0(s1)
    80007d90:	0097b023          	sd	s1,0(a5)
    80007d94:	00813483          	ld	s1,8(sp)
    80007d98:	02010113          	addi	sp,sp,32
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	92850513          	addi	a0,a0,-1752 # 800096c8 <digits+0x18>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	354080e7          	jalr	852(ra) # 800070fc <panic>

0000000080007db0 <kalloc>:
    80007db0:	fe010113          	addi	sp,sp,-32
    80007db4:	00813823          	sd	s0,16(sp)
    80007db8:	00913423          	sd	s1,8(sp)
    80007dbc:	00113c23          	sd	ra,24(sp)
    80007dc0:	02010413          	addi	s0,sp,32
    80007dc4:	00004797          	auipc	a5,0x4
    80007dc8:	d6c78793          	addi	a5,a5,-660 # 8000bb30 <kmem>
    80007dcc:	0007b483          	ld	s1,0(a5)
    80007dd0:	02048063          	beqz	s1,80007df0 <kalloc+0x40>
    80007dd4:	0004b703          	ld	a4,0(s1)
    80007dd8:	00001637          	lui	a2,0x1
    80007ddc:	00500593          	li	a1,5
    80007de0:	00048513          	mv	a0,s1
    80007de4:	00e7b023          	sd	a4,0(a5)
    80007de8:	00000097          	auipc	ra,0x0
    80007dec:	400080e7          	jalr	1024(ra) # 800081e8 <__memset>
    80007df0:	01813083          	ld	ra,24(sp)
    80007df4:	01013403          	ld	s0,16(sp)
    80007df8:	00048513          	mv	a0,s1
    80007dfc:	00813483          	ld	s1,8(sp)
    80007e00:	02010113          	addi	sp,sp,32
    80007e04:	00008067          	ret

0000000080007e08 <initlock>:
    80007e08:	ff010113          	addi	sp,sp,-16
    80007e0c:	00813423          	sd	s0,8(sp)
    80007e10:	01010413          	addi	s0,sp,16
    80007e14:	00813403          	ld	s0,8(sp)
    80007e18:	00b53423          	sd	a1,8(a0)
    80007e1c:	00052023          	sw	zero,0(a0)
    80007e20:	00053823          	sd	zero,16(a0)
    80007e24:	01010113          	addi	sp,sp,16
    80007e28:	00008067          	ret

0000000080007e2c <acquire>:
    80007e2c:	fe010113          	addi	sp,sp,-32
    80007e30:	00813823          	sd	s0,16(sp)
    80007e34:	00913423          	sd	s1,8(sp)
    80007e38:	00113c23          	sd	ra,24(sp)
    80007e3c:	01213023          	sd	s2,0(sp)
    80007e40:	02010413          	addi	s0,sp,32
    80007e44:	00050493          	mv	s1,a0
    80007e48:	10002973          	csrr	s2,sstatus
    80007e4c:	100027f3          	csrr	a5,sstatus
    80007e50:	ffd7f793          	andi	a5,a5,-3
    80007e54:	10079073          	csrw	sstatus,a5
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	8e8080e7          	jalr	-1816(ra) # 80006740 <mycpu>
    80007e60:	07852783          	lw	a5,120(a0)
    80007e64:	06078e63          	beqz	a5,80007ee0 <acquire+0xb4>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	8d8080e7          	jalr	-1832(ra) # 80006740 <mycpu>
    80007e70:	07852783          	lw	a5,120(a0)
    80007e74:	0004a703          	lw	a4,0(s1)
    80007e78:	0017879b          	addiw	a5,a5,1
    80007e7c:	06f52c23          	sw	a5,120(a0)
    80007e80:	04071063          	bnez	a4,80007ec0 <acquire+0x94>
    80007e84:	00100713          	li	a4,1
    80007e88:	00070793          	mv	a5,a4
    80007e8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e90:	0007879b          	sext.w	a5,a5
    80007e94:	fe079ae3          	bnez	a5,80007e88 <acquire+0x5c>
    80007e98:	0ff0000f          	fence
    80007e9c:	fffff097          	auipc	ra,0xfffff
    80007ea0:	8a4080e7          	jalr	-1884(ra) # 80006740 <mycpu>
    80007ea4:	01813083          	ld	ra,24(sp)
    80007ea8:	01013403          	ld	s0,16(sp)
    80007eac:	00a4b823          	sd	a0,16(s1)
    80007eb0:	00013903          	ld	s2,0(sp)
    80007eb4:	00813483          	ld	s1,8(sp)
    80007eb8:	02010113          	addi	sp,sp,32
    80007ebc:	00008067          	ret
    80007ec0:	0104b903          	ld	s2,16(s1)
    80007ec4:	fffff097          	auipc	ra,0xfffff
    80007ec8:	87c080e7          	jalr	-1924(ra) # 80006740 <mycpu>
    80007ecc:	faa91ce3          	bne	s2,a0,80007e84 <acquire+0x58>
    80007ed0:	00002517          	auipc	a0,0x2
    80007ed4:	80050513          	addi	a0,a0,-2048 # 800096d0 <digits+0x20>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	224080e7          	jalr	548(ra) # 800070fc <panic>
    80007ee0:	00195913          	srli	s2,s2,0x1
    80007ee4:	fffff097          	auipc	ra,0xfffff
    80007ee8:	85c080e7          	jalr	-1956(ra) # 80006740 <mycpu>
    80007eec:	00197913          	andi	s2,s2,1
    80007ef0:	07252e23          	sw	s2,124(a0)
    80007ef4:	f75ff06f          	j	80007e68 <acquire+0x3c>

0000000080007ef8 <release>:
    80007ef8:	fe010113          	addi	sp,sp,-32
    80007efc:	00813823          	sd	s0,16(sp)
    80007f00:	00113c23          	sd	ra,24(sp)
    80007f04:	00913423          	sd	s1,8(sp)
    80007f08:	01213023          	sd	s2,0(sp)
    80007f0c:	02010413          	addi	s0,sp,32
    80007f10:	00052783          	lw	a5,0(a0)
    80007f14:	00079a63          	bnez	a5,80007f28 <release+0x30>
    80007f18:	00001517          	auipc	a0,0x1
    80007f1c:	7c050513          	addi	a0,a0,1984 # 800096d8 <digits+0x28>
    80007f20:	fffff097          	auipc	ra,0xfffff
    80007f24:	1dc080e7          	jalr	476(ra) # 800070fc <panic>
    80007f28:	01053903          	ld	s2,16(a0)
    80007f2c:	00050493          	mv	s1,a0
    80007f30:	fffff097          	auipc	ra,0xfffff
    80007f34:	810080e7          	jalr	-2032(ra) # 80006740 <mycpu>
    80007f38:	fea910e3          	bne	s2,a0,80007f18 <release+0x20>
    80007f3c:	0004b823          	sd	zero,16(s1)
    80007f40:	0ff0000f          	fence
    80007f44:	0f50000f          	fence	iorw,ow
    80007f48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f4c:	ffffe097          	auipc	ra,0xffffe
    80007f50:	7f4080e7          	jalr	2036(ra) # 80006740 <mycpu>
    80007f54:	100027f3          	csrr	a5,sstatus
    80007f58:	0027f793          	andi	a5,a5,2
    80007f5c:	04079a63          	bnez	a5,80007fb0 <release+0xb8>
    80007f60:	07852783          	lw	a5,120(a0)
    80007f64:	02f05e63          	blez	a5,80007fa0 <release+0xa8>
    80007f68:	fff7871b          	addiw	a4,a5,-1
    80007f6c:	06e52c23          	sw	a4,120(a0)
    80007f70:	00071c63          	bnez	a4,80007f88 <release+0x90>
    80007f74:	07c52783          	lw	a5,124(a0)
    80007f78:	00078863          	beqz	a5,80007f88 <release+0x90>
    80007f7c:	100027f3          	csrr	a5,sstatus
    80007f80:	0027e793          	ori	a5,a5,2
    80007f84:	10079073          	csrw	sstatus,a5
    80007f88:	01813083          	ld	ra,24(sp)
    80007f8c:	01013403          	ld	s0,16(sp)
    80007f90:	00813483          	ld	s1,8(sp)
    80007f94:	00013903          	ld	s2,0(sp)
    80007f98:	02010113          	addi	sp,sp,32
    80007f9c:	00008067          	ret
    80007fa0:	00001517          	auipc	a0,0x1
    80007fa4:	75850513          	addi	a0,a0,1880 # 800096f8 <digits+0x48>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	154080e7          	jalr	340(ra) # 800070fc <panic>
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	73050513          	addi	a0,a0,1840 # 800096e0 <digits+0x30>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	144080e7          	jalr	324(ra) # 800070fc <panic>

0000000080007fc0 <holding>:
    80007fc0:	00052783          	lw	a5,0(a0)
    80007fc4:	00079663          	bnez	a5,80007fd0 <holding+0x10>
    80007fc8:	00000513          	li	a0,0
    80007fcc:	00008067          	ret
    80007fd0:	fe010113          	addi	sp,sp,-32
    80007fd4:	00813823          	sd	s0,16(sp)
    80007fd8:	00913423          	sd	s1,8(sp)
    80007fdc:	00113c23          	sd	ra,24(sp)
    80007fe0:	02010413          	addi	s0,sp,32
    80007fe4:	01053483          	ld	s1,16(a0)
    80007fe8:	ffffe097          	auipc	ra,0xffffe
    80007fec:	758080e7          	jalr	1880(ra) # 80006740 <mycpu>
    80007ff0:	01813083          	ld	ra,24(sp)
    80007ff4:	01013403          	ld	s0,16(sp)
    80007ff8:	40a48533          	sub	a0,s1,a0
    80007ffc:	00153513          	seqz	a0,a0
    80008000:	00813483          	ld	s1,8(sp)
    80008004:	02010113          	addi	sp,sp,32
    80008008:	00008067          	ret

000000008000800c <push_off>:
    8000800c:	fe010113          	addi	sp,sp,-32
    80008010:	00813823          	sd	s0,16(sp)
    80008014:	00113c23          	sd	ra,24(sp)
    80008018:	00913423          	sd	s1,8(sp)
    8000801c:	02010413          	addi	s0,sp,32
    80008020:	100024f3          	csrr	s1,sstatus
    80008024:	100027f3          	csrr	a5,sstatus
    80008028:	ffd7f793          	andi	a5,a5,-3
    8000802c:	10079073          	csrw	sstatus,a5
    80008030:	ffffe097          	auipc	ra,0xffffe
    80008034:	710080e7          	jalr	1808(ra) # 80006740 <mycpu>
    80008038:	07852783          	lw	a5,120(a0)
    8000803c:	02078663          	beqz	a5,80008068 <push_off+0x5c>
    80008040:	ffffe097          	auipc	ra,0xffffe
    80008044:	700080e7          	jalr	1792(ra) # 80006740 <mycpu>
    80008048:	07852783          	lw	a5,120(a0)
    8000804c:	01813083          	ld	ra,24(sp)
    80008050:	01013403          	ld	s0,16(sp)
    80008054:	0017879b          	addiw	a5,a5,1
    80008058:	06f52c23          	sw	a5,120(a0)
    8000805c:	00813483          	ld	s1,8(sp)
    80008060:	02010113          	addi	sp,sp,32
    80008064:	00008067          	ret
    80008068:	0014d493          	srli	s1,s1,0x1
    8000806c:	ffffe097          	auipc	ra,0xffffe
    80008070:	6d4080e7          	jalr	1748(ra) # 80006740 <mycpu>
    80008074:	0014f493          	andi	s1,s1,1
    80008078:	06952e23          	sw	s1,124(a0)
    8000807c:	fc5ff06f          	j	80008040 <push_off+0x34>

0000000080008080 <pop_off>:
    80008080:	ff010113          	addi	sp,sp,-16
    80008084:	00813023          	sd	s0,0(sp)
    80008088:	00113423          	sd	ra,8(sp)
    8000808c:	01010413          	addi	s0,sp,16
    80008090:	ffffe097          	auipc	ra,0xffffe
    80008094:	6b0080e7          	jalr	1712(ra) # 80006740 <mycpu>
    80008098:	100027f3          	csrr	a5,sstatus
    8000809c:	0027f793          	andi	a5,a5,2
    800080a0:	04079663          	bnez	a5,800080ec <pop_off+0x6c>
    800080a4:	07852783          	lw	a5,120(a0)
    800080a8:	02f05a63          	blez	a5,800080dc <pop_off+0x5c>
    800080ac:	fff7871b          	addiw	a4,a5,-1
    800080b0:	06e52c23          	sw	a4,120(a0)
    800080b4:	00071c63          	bnez	a4,800080cc <pop_off+0x4c>
    800080b8:	07c52783          	lw	a5,124(a0)
    800080bc:	00078863          	beqz	a5,800080cc <pop_off+0x4c>
    800080c0:	100027f3          	csrr	a5,sstatus
    800080c4:	0027e793          	ori	a5,a5,2
    800080c8:	10079073          	csrw	sstatus,a5
    800080cc:	00813083          	ld	ra,8(sp)
    800080d0:	00013403          	ld	s0,0(sp)
    800080d4:	01010113          	addi	sp,sp,16
    800080d8:	00008067          	ret
    800080dc:	00001517          	auipc	a0,0x1
    800080e0:	61c50513          	addi	a0,a0,1564 # 800096f8 <digits+0x48>
    800080e4:	fffff097          	auipc	ra,0xfffff
    800080e8:	018080e7          	jalr	24(ra) # 800070fc <panic>
    800080ec:	00001517          	auipc	a0,0x1
    800080f0:	5f450513          	addi	a0,a0,1524 # 800096e0 <digits+0x30>
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	008080e7          	jalr	8(ra) # 800070fc <panic>

00000000800080fc <push_on>:
    800080fc:	fe010113          	addi	sp,sp,-32
    80008100:	00813823          	sd	s0,16(sp)
    80008104:	00113c23          	sd	ra,24(sp)
    80008108:	00913423          	sd	s1,8(sp)
    8000810c:	02010413          	addi	s0,sp,32
    80008110:	100024f3          	csrr	s1,sstatus
    80008114:	100027f3          	csrr	a5,sstatus
    80008118:	0027e793          	ori	a5,a5,2
    8000811c:	10079073          	csrw	sstatus,a5
    80008120:	ffffe097          	auipc	ra,0xffffe
    80008124:	620080e7          	jalr	1568(ra) # 80006740 <mycpu>
    80008128:	07852783          	lw	a5,120(a0)
    8000812c:	02078663          	beqz	a5,80008158 <push_on+0x5c>
    80008130:	ffffe097          	auipc	ra,0xffffe
    80008134:	610080e7          	jalr	1552(ra) # 80006740 <mycpu>
    80008138:	07852783          	lw	a5,120(a0)
    8000813c:	01813083          	ld	ra,24(sp)
    80008140:	01013403          	ld	s0,16(sp)
    80008144:	0017879b          	addiw	a5,a5,1
    80008148:	06f52c23          	sw	a5,120(a0)
    8000814c:	00813483          	ld	s1,8(sp)
    80008150:	02010113          	addi	sp,sp,32
    80008154:	00008067          	ret
    80008158:	0014d493          	srli	s1,s1,0x1
    8000815c:	ffffe097          	auipc	ra,0xffffe
    80008160:	5e4080e7          	jalr	1508(ra) # 80006740 <mycpu>
    80008164:	0014f493          	andi	s1,s1,1
    80008168:	06952e23          	sw	s1,124(a0)
    8000816c:	fc5ff06f          	j	80008130 <push_on+0x34>

0000000080008170 <pop_on>:
    80008170:	ff010113          	addi	sp,sp,-16
    80008174:	00813023          	sd	s0,0(sp)
    80008178:	00113423          	sd	ra,8(sp)
    8000817c:	01010413          	addi	s0,sp,16
    80008180:	ffffe097          	auipc	ra,0xffffe
    80008184:	5c0080e7          	jalr	1472(ra) # 80006740 <mycpu>
    80008188:	100027f3          	csrr	a5,sstatus
    8000818c:	0027f793          	andi	a5,a5,2
    80008190:	04078463          	beqz	a5,800081d8 <pop_on+0x68>
    80008194:	07852783          	lw	a5,120(a0)
    80008198:	02f05863          	blez	a5,800081c8 <pop_on+0x58>
    8000819c:	fff7879b          	addiw	a5,a5,-1
    800081a0:	06f52c23          	sw	a5,120(a0)
    800081a4:	07853783          	ld	a5,120(a0)
    800081a8:	00079863          	bnez	a5,800081b8 <pop_on+0x48>
    800081ac:	100027f3          	csrr	a5,sstatus
    800081b0:	ffd7f793          	andi	a5,a5,-3
    800081b4:	10079073          	csrw	sstatus,a5
    800081b8:	00813083          	ld	ra,8(sp)
    800081bc:	00013403          	ld	s0,0(sp)
    800081c0:	01010113          	addi	sp,sp,16
    800081c4:	00008067          	ret
    800081c8:	00001517          	auipc	a0,0x1
    800081cc:	55850513          	addi	a0,a0,1368 # 80009720 <digits+0x70>
    800081d0:	fffff097          	auipc	ra,0xfffff
    800081d4:	f2c080e7          	jalr	-212(ra) # 800070fc <panic>
    800081d8:	00001517          	auipc	a0,0x1
    800081dc:	52850513          	addi	a0,a0,1320 # 80009700 <digits+0x50>
    800081e0:	fffff097          	auipc	ra,0xfffff
    800081e4:	f1c080e7          	jalr	-228(ra) # 800070fc <panic>

00000000800081e8 <__memset>:
    800081e8:	ff010113          	addi	sp,sp,-16
    800081ec:	00813423          	sd	s0,8(sp)
    800081f0:	01010413          	addi	s0,sp,16
    800081f4:	1a060e63          	beqz	a2,800083b0 <__memset+0x1c8>
    800081f8:	40a007b3          	neg	a5,a0
    800081fc:	0077f793          	andi	a5,a5,7
    80008200:	00778693          	addi	a3,a5,7
    80008204:	00b00813          	li	a6,11
    80008208:	0ff5f593          	andi	a1,a1,255
    8000820c:	fff6071b          	addiw	a4,a2,-1
    80008210:	1b06e663          	bltu	a3,a6,800083bc <__memset+0x1d4>
    80008214:	1cd76463          	bltu	a4,a3,800083dc <__memset+0x1f4>
    80008218:	1a078e63          	beqz	a5,800083d4 <__memset+0x1ec>
    8000821c:	00b50023          	sb	a1,0(a0)
    80008220:	00100713          	li	a4,1
    80008224:	1ae78463          	beq	a5,a4,800083cc <__memset+0x1e4>
    80008228:	00b500a3          	sb	a1,1(a0)
    8000822c:	00200713          	li	a4,2
    80008230:	1ae78a63          	beq	a5,a4,800083e4 <__memset+0x1fc>
    80008234:	00b50123          	sb	a1,2(a0)
    80008238:	00300713          	li	a4,3
    8000823c:	18e78463          	beq	a5,a4,800083c4 <__memset+0x1dc>
    80008240:	00b501a3          	sb	a1,3(a0)
    80008244:	00400713          	li	a4,4
    80008248:	1ae78263          	beq	a5,a4,800083ec <__memset+0x204>
    8000824c:	00b50223          	sb	a1,4(a0)
    80008250:	00500713          	li	a4,5
    80008254:	1ae78063          	beq	a5,a4,800083f4 <__memset+0x20c>
    80008258:	00b502a3          	sb	a1,5(a0)
    8000825c:	00700713          	li	a4,7
    80008260:	18e79e63          	bne	a5,a4,800083fc <__memset+0x214>
    80008264:	00b50323          	sb	a1,6(a0)
    80008268:	00700e93          	li	t4,7
    8000826c:	00859713          	slli	a4,a1,0x8
    80008270:	00e5e733          	or	a4,a1,a4
    80008274:	01059e13          	slli	t3,a1,0x10
    80008278:	01c76e33          	or	t3,a4,t3
    8000827c:	01859313          	slli	t1,a1,0x18
    80008280:	006e6333          	or	t1,t3,t1
    80008284:	02059893          	slli	a7,a1,0x20
    80008288:	40f60e3b          	subw	t3,a2,a5
    8000828c:	011368b3          	or	a7,t1,a7
    80008290:	02859813          	slli	a6,a1,0x28
    80008294:	0108e833          	or	a6,a7,a6
    80008298:	03059693          	slli	a3,a1,0x30
    8000829c:	003e589b          	srliw	a7,t3,0x3
    800082a0:	00d866b3          	or	a3,a6,a3
    800082a4:	03859713          	slli	a4,a1,0x38
    800082a8:	00389813          	slli	a6,a7,0x3
    800082ac:	00f507b3          	add	a5,a0,a5
    800082b0:	00e6e733          	or	a4,a3,a4
    800082b4:	000e089b          	sext.w	a7,t3
    800082b8:	00f806b3          	add	a3,a6,a5
    800082bc:	00e7b023          	sd	a4,0(a5)
    800082c0:	00878793          	addi	a5,a5,8
    800082c4:	fed79ce3          	bne	a5,a3,800082bc <__memset+0xd4>
    800082c8:	ff8e7793          	andi	a5,t3,-8
    800082cc:	0007871b          	sext.w	a4,a5
    800082d0:	01d787bb          	addw	a5,a5,t4
    800082d4:	0ce88e63          	beq	a7,a4,800083b0 <__memset+0x1c8>
    800082d8:	00f50733          	add	a4,a0,a5
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0017871b          	addiw	a4,a5,1
    800082e4:	0cc77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0027871b          	addiw	a4,a5,2
    800082f4:	0ac77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0037871b          	addiw	a4,a5,3
    80008304:	0ac77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0047871b          	addiw	a4,a5,4
    80008314:	08c77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0057871b          	addiw	a4,a5,5
    80008324:	08c77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0067871b          	addiw	a4,a5,6
    80008334:	06c77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0077871b          	addiw	a4,a5,7
    80008344:	06c77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	0087871b          	addiw	a4,a5,8
    80008354:	04c77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	0097871b          	addiw	a4,a5,9
    80008364:	04c77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	00a7871b          	addiw	a4,a5,10
    80008374:	02c77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	00b7871b          	addiw	a4,a5,11
    80008384:	02c77663          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	00c7871b          	addiw	a4,a5,12
    80008394:	00c77e63          	bgeu	a4,a2,800083b0 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	00d7879b          	addiw	a5,a5,13
    800083a4:	00c7f663          	bgeu	a5,a2,800083b0 <__memset+0x1c8>
    800083a8:	00f507b3          	add	a5,a0,a5
    800083ac:	00b78023          	sb	a1,0(a5)
    800083b0:	00813403          	ld	s0,8(sp)
    800083b4:	01010113          	addi	sp,sp,16
    800083b8:	00008067          	ret
    800083bc:	00b00693          	li	a3,11
    800083c0:	e55ff06f          	j	80008214 <__memset+0x2c>
    800083c4:	00300e93          	li	t4,3
    800083c8:	ea5ff06f          	j	8000826c <__memset+0x84>
    800083cc:	00100e93          	li	t4,1
    800083d0:	e9dff06f          	j	8000826c <__memset+0x84>
    800083d4:	00000e93          	li	t4,0
    800083d8:	e95ff06f          	j	8000826c <__memset+0x84>
    800083dc:	00000793          	li	a5,0
    800083e0:	ef9ff06f          	j	800082d8 <__memset+0xf0>
    800083e4:	00200e93          	li	t4,2
    800083e8:	e85ff06f          	j	8000826c <__memset+0x84>
    800083ec:	00400e93          	li	t4,4
    800083f0:	e7dff06f          	j	8000826c <__memset+0x84>
    800083f4:	00500e93          	li	t4,5
    800083f8:	e75ff06f          	j	8000826c <__memset+0x84>
    800083fc:	00600e93          	li	t4,6
    80008400:	e6dff06f          	j	8000826c <__memset+0x84>

0000000080008404 <__memmove>:
    80008404:	ff010113          	addi	sp,sp,-16
    80008408:	00813423          	sd	s0,8(sp)
    8000840c:	01010413          	addi	s0,sp,16
    80008410:	0e060863          	beqz	a2,80008500 <__memmove+0xfc>
    80008414:	fff6069b          	addiw	a3,a2,-1
    80008418:	0006881b          	sext.w	a6,a3
    8000841c:	0ea5e863          	bltu	a1,a0,8000850c <__memmove+0x108>
    80008420:	00758713          	addi	a4,a1,7
    80008424:	00a5e7b3          	or	a5,a1,a0
    80008428:	40a70733          	sub	a4,a4,a0
    8000842c:	0077f793          	andi	a5,a5,7
    80008430:	00f73713          	sltiu	a4,a4,15
    80008434:	00174713          	xori	a4,a4,1
    80008438:	0017b793          	seqz	a5,a5
    8000843c:	00e7f7b3          	and	a5,a5,a4
    80008440:	10078863          	beqz	a5,80008550 <__memmove+0x14c>
    80008444:	00900793          	li	a5,9
    80008448:	1107f463          	bgeu	a5,a6,80008550 <__memmove+0x14c>
    8000844c:	0036581b          	srliw	a6,a2,0x3
    80008450:	fff8081b          	addiw	a6,a6,-1
    80008454:	02081813          	slli	a6,a6,0x20
    80008458:	01d85893          	srli	a7,a6,0x1d
    8000845c:	00858813          	addi	a6,a1,8
    80008460:	00058793          	mv	a5,a1
    80008464:	00050713          	mv	a4,a0
    80008468:	01088833          	add	a6,a7,a6
    8000846c:	0007b883          	ld	a7,0(a5)
    80008470:	00878793          	addi	a5,a5,8
    80008474:	00870713          	addi	a4,a4,8
    80008478:	ff173c23          	sd	a7,-8(a4)
    8000847c:	ff0798e3          	bne	a5,a6,8000846c <__memmove+0x68>
    80008480:	ff867713          	andi	a4,a2,-8
    80008484:	02071793          	slli	a5,a4,0x20
    80008488:	0207d793          	srli	a5,a5,0x20
    8000848c:	00f585b3          	add	a1,a1,a5
    80008490:	40e686bb          	subw	a3,a3,a4
    80008494:	00f507b3          	add	a5,a0,a5
    80008498:	06e60463          	beq	a2,a4,80008500 <__memmove+0xfc>
    8000849c:	0005c703          	lbu	a4,0(a1)
    800084a0:	00e78023          	sb	a4,0(a5)
    800084a4:	04068e63          	beqz	a3,80008500 <__memmove+0xfc>
    800084a8:	0015c603          	lbu	a2,1(a1)
    800084ac:	00100713          	li	a4,1
    800084b0:	00c780a3          	sb	a2,1(a5)
    800084b4:	04e68663          	beq	a3,a4,80008500 <__memmove+0xfc>
    800084b8:	0025c603          	lbu	a2,2(a1)
    800084bc:	00200713          	li	a4,2
    800084c0:	00c78123          	sb	a2,2(a5)
    800084c4:	02e68e63          	beq	a3,a4,80008500 <__memmove+0xfc>
    800084c8:	0035c603          	lbu	a2,3(a1)
    800084cc:	00300713          	li	a4,3
    800084d0:	00c781a3          	sb	a2,3(a5)
    800084d4:	02e68663          	beq	a3,a4,80008500 <__memmove+0xfc>
    800084d8:	0045c603          	lbu	a2,4(a1)
    800084dc:	00400713          	li	a4,4
    800084e0:	00c78223          	sb	a2,4(a5)
    800084e4:	00e68e63          	beq	a3,a4,80008500 <__memmove+0xfc>
    800084e8:	0055c603          	lbu	a2,5(a1)
    800084ec:	00500713          	li	a4,5
    800084f0:	00c782a3          	sb	a2,5(a5)
    800084f4:	00e68663          	beq	a3,a4,80008500 <__memmove+0xfc>
    800084f8:	0065c703          	lbu	a4,6(a1)
    800084fc:	00e78323          	sb	a4,6(a5)
    80008500:	00813403          	ld	s0,8(sp)
    80008504:	01010113          	addi	sp,sp,16
    80008508:	00008067          	ret
    8000850c:	02061713          	slli	a4,a2,0x20
    80008510:	02075713          	srli	a4,a4,0x20
    80008514:	00e587b3          	add	a5,a1,a4
    80008518:	f0f574e3          	bgeu	a0,a5,80008420 <__memmove+0x1c>
    8000851c:	02069613          	slli	a2,a3,0x20
    80008520:	02065613          	srli	a2,a2,0x20
    80008524:	fff64613          	not	a2,a2
    80008528:	00e50733          	add	a4,a0,a4
    8000852c:	00c78633          	add	a2,a5,a2
    80008530:	fff7c683          	lbu	a3,-1(a5)
    80008534:	fff78793          	addi	a5,a5,-1
    80008538:	fff70713          	addi	a4,a4,-1
    8000853c:	00d70023          	sb	a3,0(a4)
    80008540:	fec798e3          	bne	a5,a2,80008530 <__memmove+0x12c>
    80008544:	00813403          	ld	s0,8(sp)
    80008548:	01010113          	addi	sp,sp,16
    8000854c:	00008067          	ret
    80008550:	02069713          	slli	a4,a3,0x20
    80008554:	02075713          	srli	a4,a4,0x20
    80008558:	00170713          	addi	a4,a4,1
    8000855c:	00e50733          	add	a4,a0,a4
    80008560:	00050793          	mv	a5,a0
    80008564:	0005c683          	lbu	a3,0(a1)
    80008568:	00178793          	addi	a5,a5,1
    8000856c:	00158593          	addi	a1,a1,1
    80008570:	fed78fa3          	sb	a3,-1(a5)
    80008574:	fee798e3          	bne	a5,a4,80008564 <__memmove+0x160>
    80008578:	f89ff06f          	j	80008500 <__memmove+0xfc>

000000008000857c <__putc>:
    8000857c:	fe010113          	addi	sp,sp,-32
    80008580:	00813823          	sd	s0,16(sp)
    80008584:	00113c23          	sd	ra,24(sp)
    80008588:	02010413          	addi	s0,sp,32
    8000858c:	00050793          	mv	a5,a0
    80008590:	fef40593          	addi	a1,s0,-17
    80008594:	00100613          	li	a2,1
    80008598:	00000513          	li	a0,0
    8000859c:	fef407a3          	sb	a5,-17(s0)
    800085a0:	fffff097          	auipc	ra,0xfffff
    800085a4:	b3c080e7          	jalr	-1220(ra) # 800070dc <console_write>
    800085a8:	01813083          	ld	ra,24(sp)
    800085ac:	01013403          	ld	s0,16(sp)
    800085b0:	02010113          	addi	sp,sp,32
    800085b4:	00008067          	ret

00000000800085b8 <__getc>:
    800085b8:	fe010113          	addi	sp,sp,-32
    800085bc:	00813823          	sd	s0,16(sp)
    800085c0:	00113c23          	sd	ra,24(sp)
    800085c4:	02010413          	addi	s0,sp,32
    800085c8:	fe840593          	addi	a1,s0,-24
    800085cc:	00100613          	li	a2,1
    800085d0:	00000513          	li	a0,0
    800085d4:	fffff097          	auipc	ra,0xfffff
    800085d8:	ae8080e7          	jalr	-1304(ra) # 800070bc <console_read>
    800085dc:	fe844503          	lbu	a0,-24(s0)
    800085e0:	01813083          	ld	ra,24(sp)
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	02010113          	addi	sp,sp,32
    800085ec:	00008067          	ret

00000000800085f0 <console_handler>:
    800085f0:	fe010113          	addi	sp,sp,-32
    800085f4:	00813823          	sd	s0,16(sp)
    800085f8:	00113c23          	sd	ra,24(sp)
    800085fc:	00913423          	sd	s1,8(sp)
    80008600:	02010413          	addi	s0,sp,32
    80008604:	14202773          	csrr	a4,scause
    80008608:	100027f3          	csrr	a5,sstatus
    8000860c:	0027f793          	andi	a5,a5,2
    80008610:	06079e63          	bnez	a5,8000868c <console_handler+0x9c>
    80008614:	00074c63          	bltz	a4,8000862c <console_handler+0x3c>
    80008618:	01813083          	ld	ra,24(sp)
    8000861c:	01013403          	ld	s0,16(sp)
    80008620:	00813483          	ld	s1,8(sp)
    80008624:	02010113          	addi	sp,sp,32
    80008628:	00008067          	ret
    8000862c:	0ff77713          	andi	a4,a4,255
    80008630:	00900793          	li	a5,9
    80008634:	fef712e3          	bne	a4,a5,80008618 <console_handler+0x28>
    80008638:	ffffe097          	auipc	ra,0xffffe
    8000863c:	6dc080e7          	jalr	1756(ra) # 80006d14 <plic_claim>
    80008640:	00a00793          	li	a5,10
    80008644:	00050493          	mv	s1,a0
    80008648:	02f50c63          	beq	a0,a5,80008680 <console_handler+0x90>
    8000864c:	fc0506e3          	beqz	a0,80008618 <console_handler+0x28>
    80008650:	00050593          	mv	a1,a0
    80008654:	00001517          	auipc	a0,0x1
    80008658:	fd450513          	addi	a0,a0,-44 # 80009628 <_ZL6digits+0xf8>
    8000865c:	fffff097          	auipc	ra,0xfffff
    80008660:	afc080e7          	jalr	-1284(ra) # 80007158 <__printf>
    80008664:	01013403          	ld	s0,16(sp)
    80008668:	01813083          	ld	ra,24(sp)
    8000866c:	00048513          	mv	a0,s1
    80008670:	00813483          	ld	s1,8(sp)
    80008674:	02010113          	addi	sp,sp,32
    80008678:	ffffe317          	auipc	t1,0xffffe
    8000867c:	6d430067          	jr	1748(t1) # 80006d4c <plic_complete>
    80008680:	fffff097          	auipc	ra,0xfffff
    80008684:	3e0080e7          	jalr	992(ra) # 80007a60 <uartintr>
    80008688:	fddff06f          	j	80008664 <console_handler+0x74>
    8000868c:	00001517          	auipc	a0,0x1
    80008690:	09c50513          	addi	a0,a0,156 # 80009728 <digits+0x78>
    80008694:	fffff097          	auipc	ra,0xfffff
    80008698:	a68080e7          	jalr	-1432(ra) # 800070fc <panic>
	...
