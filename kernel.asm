
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	5e013103          	ld	sp,1504(sp) # 8000a5e0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	355050ef          	jal	ra,80005b70 <start>

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
    80001080:	3b0020ef          	jal	ra,80003430 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	e8c080e7          	jalr	-372(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	e5c080e7          	jalr	-420(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800014c0:	e3c080e7          	jalr	-452(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	ea0080e7          	jalr	-352(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	cb050513          	addi	a0,a0,-848 # 80008180 <CONSOLE_STATUS+0x170>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	e20080e7          	jalr	-480(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001538:	dc4080e7          	jalr	-572(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001558:	da4080e7          	jalr	-604(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	e08080e7          	jalr	-504(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00007517          	auipc	a0,0x7
    8000156c:	c1850513          	addi	a0,a0,-1000 # 80008180 <CONSOLE_STATUS+0x170>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	d88080e7          	jalr	-632(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800015e0:	d1c080e7          	jalr	-740(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	d80080e7          	jalr	-640(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
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
    8000162c:	cd0080e7          	jalr	-816(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001658:	ca4080e7          	jalr	-860(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000165c:	00048513          	mv	a0,s1
    80001660:	00002097          	auipc	ra,0x2
    80001664:	d08080e7          	jalr	-760(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001668:	00007517          	auipc	a0,0x7
    8000166c:	b1850513          	addi	a0,a0,-1256 # 80008180 <CONSOLE_STATUS+0x170>
    80001670:	00002097          	auipc	ra,0x2
    80001674:	c88080e7          	jalr	-888(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800016dc:	c20080e7          	jalr	-992(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800016f8:	f4c90913          	addi	s2,s2,-180 # 8000a640 <_ZL5mutex>
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
    8000174c:	bb0080e7          	jalr	-1104(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
        mutex->wait();
    80001750:	00009497          	auipc	s1,0x9
    80001754:	ef048493          	addi	s1,s1,-272 # 8000a640 <_ZL5mutex>
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
    800017a0:	b5c080e7          	jalr	-1188(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800017bc:	e8890913          	addi	s2,s2,-376 # 8000a640 <_ZL5mutex>
    800017c0:	00893503          	ld	a0,8(s2)
    800017c4:	00002097          	auipc	ra,0x2
    800017c8:	8ac080e7          	jalr	-1876(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('1');
    800017cc:	03100513          	li	a0,49
    800017d0:	00006097          	auipc	ra,0x6
    800017d4:	45c080e7          	jalr	1116(ra) # 80007c2c <__putc>
        __putc('\n');
    800017d8:	00a00513          	li	a0,10
    800017dc:	00006097          	auipc	ra,0x6
    800017e0:	450080e7          	jalr	1104(ra) # 80007c2c <__putc>
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
    8000182c:	ad0080e7          	jalr	-1328(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001848:	dfc90913          	addi	s2,s2,-516 # 8000a640 <_ZL5mutex>
    8000184c:	01093503          	ld	a0,16(s2)
    80001850:	00002097          	auipc	ra,0x2
    80001854:	820080e7          	jalr	-2016(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('2');
    80001858:	03200513          	li	a0,50
    8000185c:	00006097          	auipc	ra,0x6
    80001860:	3d0080e7          	jalr	976(ra) # 80007c2c <__putc>
        __putc('\n');
    80001864:	00a00513          	li	a0,10
    80001868:	00006097          	auipc	ra,0x6
    8000186c:	3c4080e7          	jalr	964(ra) # 80007c2c <__putc>
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
    800018b8:	a44080e7          	jalr	-1468(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800018d4:	d7090913          	addi	s2,s2,-656 # 8000a640 <_ZL5mutex>
    800018d8:	01893503          	ld	a0,24(s2)
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	794080e7          	jalr	1940(ra) # 80003070 <_ZN9Semaphore4waitEv>
        __putc('3');
    800018e4:	03300513          	li	a0,51
    800018e8:	00006097          	auipc	ra,0x6
    800018ec:	344080e7          	jalr	836(ra) # 80007c2c <__putc>
        __putc('\n');
    800018f0:	00a00513          	li	a0,10
    800018f4:	00006097          	auipc	ra,0x6
    800018f8:	338080e7          	jalr	824(ra) # 80007c2c <__putc>
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
    8000199c:	8d8080e7          	jalr	-1832(ra) # 80003270 <_ZN5Riscv16enableInterruptsEv>
    800019a0:	01c0006f          	j	800019bc <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    800019a4:	00006517          	auipc	a0,0x6
    800019a8:	71450513          	addi	a0,a0,1812 # 800080b8 <CONSOLE_STATUS+0xa8>
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	94c080e7          	jalr	-1716(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    800019e8:	914080e7          	jalr	-1772(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	8a4080e7          	jalr	-1884(ra) # 80003290 <_ZN5Riscv17disableInterruptsEv>
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
    80001a24:	d98080e7          	jalr	-616(ra) # 8000b7b8 <_Unwind_Resume>
    80001a28:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001a2c:	00090513          	mv	a0,s2
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	464080e7          	jalr	1124(ra) # 80002e94 <_ZdlPv>
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	0000a097          	auipc	ra,0xa
    80001a40:	d7c080e7          	jalr	-644(ra) # 8000b7b8 <_Unwind_Resume>

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
    80001af0:	784080e7          	jalr	1924(ra) # 80003270 <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001af4:	0084b783          	ld	a5,8(s1)
    80001af8:	0307a703          	lw	a4,48(a5)
    80001afc:	00300793          	li	a5,3
    80001b00:	fef71ae3          	bne	a4,a5,80001af4 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001b04:	00006517          	auipc	a0,0x6
    80001b08:	5c450513          	addi	a0,a0,1476 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	7ec080e7          	jalr	2028(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	77c080e7          	jalr	1916(ra) # 80003290 <_ZN5Riscv17disableInterruptsEv>
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
    80001b4c:	c70080e7          	jalr	-912(ra) # 8000b7b8 <_Unwind_Resume>
    80001b50:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b54:	00090513          	mv	a0,s2
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	33c080e7          	jalr	828(ra) # 80002e94 <_ZdlPv>
    80001b60:	00048513          	mv	a0,s1
    80001b64:	0000a097          	auipc	ra,0xa
    80001b68:	c54080e7          	jalr	-940(ra) # 8000b7b8 <_Unwind_Resume>
    80001b6c:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b70:	00090513          	mv	a0,s2
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	320080e7          	jalr	800(ra) # 80002e94 <_ZdlPv>
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	0000a097          	auipc	ra,0xa
    80001b84:	c38080e7          	jalr	-968(ra) # 8000b7b8 <_Unwind_Resume>

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
    80001ba8:	754080e7          	jalr	1876(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001bec:	710080e7          	jalr	1808(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001c40:	6bc080e7          	jalr	1724(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001c88:	674080e7          	jalr	1652(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001ccc:	630080e7          	jalr	1584(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
            return;
    80001cd0:	f21ff06f          	j	80001bf0 <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001cd4:	00006517          	auipc	a0,0x6
    80001cd8:	41450513          	addi	a0,a0,1044 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	61c080e7          	jalr	1564(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001d04:	5f8080e7          	jalr	1528(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001d08:	00009797          	auipc	a5,0x9
    80001d0c:	8e87b783          	ld	a5,-1816(a5) # 8000a5f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d10:	0007b503          	ld	a0,0(a5)
    80001d14:	00009797          	auipc	a5,0x9
    80001d18:	8b47b783          	ld	a5,-1868(a5) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001d40:	5bc080e7          	jalr	1468(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret
        Riscv::printString("OK\n");
    80001d54:	00006517          	auipc	a0,0x6
    80001d58:	39450513          	addi	a0,a0,916 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	59c080e7          	jalr	1436(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001d90:	56c080e7          	jalr	1388(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001ddc:	590080e7          	jalr	1424(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001de0:	00006517          	auipc	a0,0x6
    80001de4:	3a050513          	addi	a0,a0,928 # 80008180 <CONSOLE_STATUS+0x170>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	510080e7          	jalr	1296(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001df0:	00291793          	slli	a5,s2,0x2
    80001df4:	01278933          	add	s2,a5,s2
    80001df8:	00191913          	slli	s2,s2,0x1
    80001dfc:	03390863          	beq	s2,s3,80001e2c <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001e00:	00006517          	auipc	a0,0x6
    80001e04:	2e050513          	addi	a0,a0,736 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	4f0080e7          	jalr	1264(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001e38:	4c4080e7          	jalr	1220(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001e5c:	4a0080e7          	jalr	1184(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001e88:	474080e7          	jalr	1140(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
}
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret
        Riscv::printString("OK\n");
    80001e9c:	00006517          	auipc	a0,0x6
    80001ea0:	24c50513          	addi	a0,a0,588 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	454080e7          	jalr	1108(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001ed4:	428080e7          	jalr	1064(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80001fe8:	314080e7          	jalr	788(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80002050:	5e97ba23          	sd	s1,1524(a5) # 8000a640 <_ZL5mutex>
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
    80002100:	6bc080e7          	jalr	1724(ra) # 8000b7b8 <_Unwind_Resume>
    80002104:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    80002108:	00090513          	mv	a0,s2
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	d88080e7          	jalr	-632(ra) # 80002e94 <_ZdlPv>
    80002114:	00048513          	mv	a0,s1
    80002118:	00009097          	auipc	ra,0x9
    8000211c:	6a0080e7          	jalr	1696(ra) # 8000b7b8 <_Unwind_Resume>
    80002120:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    80002124:	00048513          	mv	a0,s1
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	d6c080e7          	jalr	-660(ra) # 80002e94 <_ZdlPv>
    80002130:	00090513          	mv	a0,s2
    80002134:	00009097          	auipc	ra,0x9
    80002138:	684080e7          	jalr	1668(ra) # 8000b7b8 <_Unwind_Resume>

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
    80002178:	4c97ba23          	sd	s1,1236(a5) # 8000a648 <_ZL2s1>
    s2 = new Semaphore(0);
    8000217c:	01000513          	li	a0,16
    80002180:	00001097          	auipc	ra,0x1
    80002184:	cec080e7          	jalr	-788(ra) # 80002e6c <_Znwm>
    80002188:	00050493          	mv	s1,a0
    8000218c:	00000593          	li	a1,0
    80002190:	00001097          	auipc	ra,0x1
    80002194:	f18080e7          	jalr	-232(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80002198:	00008797          	auipc	a5,0x8
    8000219c:	4a97bc23          	sd	s1,1208(a5) # 8000a650 <_ZL2s2>
    s3 = new Semaphore(0);
    800021a0:	01000513          	li	a0,16
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	cc8080e7          	jalr	-824(ra) # 80002e6c <_Znwm>
    800021ac:	00050493          	mv	s1,a0
    800021b0:	00000593          	li	a1,0
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	ef4080e7          	jalr	-268(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    800021bc:	00008797          	auipc	a5,0x8
    800021c0:	4897be23          	sd	s1,1180(a5) # 8000a658 <_ZL2s3>
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
    800022a4:	518080e7          	jalr	1304(ra) # 8000b7b8 <_Unwind_Resume>
    800022a8:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	be4080e7          	jalr	-1052(ra) # 80002e94 <_ZdlPv>
    800022b8:	00090513          	mv	a0,s2
    800022bc:	00009097          	auipc	ra,0x9
    800022c0:	4fc080e7          	jalr	1276(ra) # 8000b7b8 <_Unwind_Resume>
    800022c4:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    800022c8:	00048513          	mv	a0,s1
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	bc8080e7          	jalr	-1080(ra) # 80002e94 <_ZdlPv>
    800022d4:	00090513          	mv	a0,s2
    800022d8:	00009097          	auipc	ra,0x9
    800022dc:	4e0080e7          	jalr	1248(ra) # 8000b7b8 <_Unwind_Resume>
    800022e0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022e4:	00098513          	mv	a0,s3
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	bac080e7          	jalr	-1108(ra) # 80002e94 <_ZdlPv>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00009097          	auipc	ra,0x9
    800022f8:	4c4080e7          	jalr	1220(ra) # 8000b7b8 <_Unwind_Resume>
    800022fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    80002300:	00090513          	mv	a0,s2
    80002304:	00001097          	auipc	ra,0x1
    80002308:	b90080e7          	jalr	-1136(ra) # 80002e94 <_ZdlPv>
    8000230c:	00048513          	mv	a0,s1
    80002310:	00009097          	auipc	ra,0x9
    80002314:	4a8080e7          	jalr	1192(ra) # 8000b7b8 <_Unwind_Resume>
    80002318:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    8000231c:	00048513          	mv	a0,s1
    80002320:	00001097          	auipc	ra,0x1
    80002324:	b74080e7          	jalr	-1164(ra) # 80002e94 <_ZdlPv>
    80002328:	00090513          	mv	a0,s2
    8000232c:	00009097          	auipc	ra,0x9
    80002330:	48c080e7          	jalr	1164(ra) # 8000b7b8 <_Unwind_Resume>

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
    80002380:	13478793          	addi	a5,a5,308 # 8000a4b0 <_ZTV12TestPeriodic+0x10>
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
    800023f8:	3c4080e7          	jalr	964(ra) # 8000b7b8 <_Unwind_Resume>

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
    80002470:	01478793          	addi	a5,a5,20 # 8000a480 <_ZTV14PeriodicThread+0x10>
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
    800024ac:	fd878793          	addi	a5,a5,-40 # 8000a480 <_ZTV14PeriodicThread+0x10>
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
    800024f0:	f9478793          	addi	a5,a5,-108 # 8000a480 <_ZTV14PeriodicThread+0x10>
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
    8000252c:	f5878793          	addi	a5,a5,-168 # 8000a480 <_ZTV14PeriodicThread+0x10>
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
    80002578:	d84080e7          	jalr	-636(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	d5c080e7          	jalr	-676(ra) # 800032d8 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002584:	00008797          	auipc	a5,0x8
    80002588:	0dc7b783          	ld	a5,220(a5) # 8000a660 <_ZN3PCB7runningE>
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
    800025a4:	d58080e7          	jalr	-680(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>

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
    8000267c:	fe84b483          	ld	s1,-24(s1) # 8000a660 <_ZN3PCB7runningE>
    80002680:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002684:	00100793          	li	a5,1
    80002688:	04f70063          	beq	a4,a5,800026c8 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	680080e7          	jalr	1664(ra) # 80002d0c <_ZN9Scheduler3getEv>
    80002694:	00008797          	auipc	a5,0x8
    80002698:	fca7b623          	sd	a0,-52(a5) # 8000a660 <_ZN3PCB7runningE>
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
    800026ec:	47c080e7          	jalr	1148(ra) # 80003b64 <_Z7kmallocm>
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
    80002714:	47c080e7          	jalr	1148(ra) # 80003b8c <_Z5kfreePv>
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
    80002740:	450080e7          	jalr	1104(ra) # 80003b8c <_Z5kfreePv>
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
    8000278c:	67c080e7          	jalr	1660(ra) # 80003e04 <_ZN10KSemaphorenwEm>
    80002790:	00050493          	mv	s1,a0
    80002794:	00000593          	li	a1,0
    80002798:	00001097          	auipc	ra,0x1
    8000279c:	41c080e7          	jalr	1052(ra) # 80003bb4 <_ZN10KSemaphoreC1Ei>
    800027a0:	00008797          	auipc	a5,0x8
    800027a4:	ec97bc23          	sd	s1,-296(a5) # 8000a678 <_ZN8KConsole13hasCharactersE>
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
    800027cc:	664080e7          	jalr	1636(ra) # 80003e2c <_ZN10KSemaphoredlEPv>
    800027d0:	00090513          	mv	a0,s2
    800027d4:	00009097          	auipc	ra,0x9
    800027d8:	fe4080e7          	jalr	-28(ra) # 8000b7b8 <_Unwind_Resume>

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
    800027fc:	36c080e7          	jalr	876(ra) # 80003b64 <_Z7kmallocm>
    newElem->next = 0;
    80002800:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002804:	00950423          	sb	s1,8(a0)
    if(head == 0)
    80002808:	00008797          	auipc	a5,0x8
    8000280c:	e787b783          	ld	a5,-392(a5) # 8000a680 <_ZN8KConsole4headE>
    80002810:	02078663          	beqz	a5,8000283c <_ZN8KConsole7putCharEc+0x60>
        tail->next = newElem;
    80002814:	00008797          	auipc	a5,0x8
    80002818:	e6478793          	addi	a5,a5,-412 # 8000a678 <_ZN8KConsole13hasCharactersE>
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
    80002840:	e3c78793          	addi	a5,a5,-452 # 8000a678 <_ZN8KConsole13hasCharactersE>
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
    80002868:	e1c53503          	ld	a0,-484(a0) # 8000a680 <_ZN8KConsole4headE>
    8000286c:	04050263          	beqz	a0,800028b0 <_ZN8KConsole7getCharEv+0x60>
    head = head->next;
    80002870:	00053783          	ld	a5,0(a0)
    80002874:	00008717          	auipc	a4,0x8
    80002878:	e0f73623          	sd	a5,-500(a4) # 8000a680 <_ZN8KConsole4headE>
    if(head == 0)
    8000287c:	02078463          	beqz	a5,800028a4 <_ZN8KConsole7getCharEv+0x54>
    char c = ret->data;
    80002880:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002884:	00001097          	auipc	ra,0x1
    80002888:	308080e7          	jalr	776(ra) # 80003b8c <_Z5kfreePv>
}
    8000288c:	00048513          	mv	a0,s1
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	02010113          	addi	sp,sp,32
    800028a0:	00008067          	ret
        tail = 0;
    800028a4:	00008797          	auipc	a5,0x8
    800028a8:	de07b223          	sd	zero,-540(a5) # 8000a688 <_ZN8KConsole4tailE>
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
    800028d4:	da853503          	ld	a0,-600(a0) # 8000a678 <_ZN8KConsole13hasCharactersE>
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	4e4080e7          	jalr	1252(ra) # 80003dbc <_ZN10KSemaphore6signalEv>
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
    80002904:	d7853503          	ld	a0,-648(a0) # 8000a678 <_ZN8KConsole13hasCharactersE>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	354080e7          	jalr	852(ra) # 80003c5c <_ZN10KSemaphore4waitEv>
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
    8000296c:	c807b783          	ld	a5,-896(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002970:	0007b583          	ld	a1,0(a5)
    80002974:	00500793          	li	a5,5
    80002978:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000297c:	00008797          	auipc	a5,0x8
    80002980:	d147b783          	ld	a5,-748(a5) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    800029b0:	c3c7b783          	ld	a5,-964(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800029dc:	c107b783          	ld	a5,-1008(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029e0:	0007b783          	ld	a5,0(a5)
    800029e4:	00008717          	auipc	a4,0x8
    800029e8:	caf73623          	sd	a5,-852(a4) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80002a0c:	c8853503          	ld	a0,-888(a0) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80002a34:	c607b783          	ld	a5,-928(a5) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80002a6c:	c297b423          	sd	s1,-984(a5) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002a70:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002a74:	00048c63          	beqz	s1,80002a8c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002a78:	00008797          	auipc	a5,0x8
    80002a7c:	c187b783          	ld	a5,-1000(a5) # 8000a690 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80002acc:	0c4080e7          	jalr	196(ra) # 80003b8c <_Z5kfreePv>
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
    80002b24:	044080e7          	jalr	68(ra) # 80003b64 <_Z7kmallocm>
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
    80002bdc:	fb4080e7          	jalr	-76(ra) # 80003b8c <_Z5kfreePv>
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
    80002c44:	f24080e7          	jalr	-220(ra) # 80003b64 <_Z7kmallocm>
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
    80002c6c:	f24080e7          	jalr	-220(ra) # 80003b8c <_Z5kfreePv>
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
    80002c90:	a0c7b783          	ld	a5,-1524(a5) # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80002cd0:	9cc7b783          	ld	a5,-1588(a5) # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
    80002cd4:	02078263          	beqz	a5,80002cf8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002cd8:	00008797          	auipc	a5,0x8
    80002cdc:	9c078793          	addi	a5,a5,-1600 # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80002cfc:	9a078793          	addi	a5,a5,-1632 # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80002d1c:	98053503          	ld	a0,-1664(a0) # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80002d30:	96f73623          	sd	a5,-1684(a4) # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002d34:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002d38:	00813403          	ld	s0,8(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002d44:	00008797          	auipc	a5,0x8
    80002d48:	95478793          	addi	a5,a5,-1708 # 8000a698 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80002d6c:	46c080e7          	jalr	1132(ra) # 800031d4 <_ZN5Riscv10initSystemEv>

    Riscv::enableInterrupts();
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	500080e7          	jalr	1280(ra) # 80003270 <_ZN5Riscv16enableInterruptsEv>
    //todo
    //go to unprivileged mode
    userMain();
    80002d78:	00003097          	auipc	ra,0x3
    80002d7c:	a54080e7          	jalr	-1452(ra) # 800057cc <_Z8userMainv>
    //myTests();

    Riscv::disableInterrupts();
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	510080e7          	jalr	1296(ra) # 80003290 <_ZN5Riscv17disableInterruptsEv>

    Riscv::endSystem();
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	528080e7          	jalr	1320(ra) # 800032b0 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80002d90:	00005517          	auipc	a0,0x5
    80002d94:	3d050513          	addi	a0,a0,976 # 80008160 <CONSOLE_STATUS+0x150>
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	560080e7          	jalr	1376(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80002dc4:	72878793          	addi	a5,a5,1832 # 8000a4e8 <_ZTV6Thread+0x10>
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
    80002dfc:	71878793          	addi	a5,a5,1816 # 8000a510 <_ZTV9Semaphore+0x10>
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
    80002e44:	4b8080e7          	jalr	1208(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>
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
    80003018:	4d478793          	addi	a5,a5,1236 # 8000a4e8 <_ZTV6Thread+0x10>
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
    80003048:	4a478793          	addi	a5,a5,1188 # 8000a4e8 <_ZTV6Thread+0x10>
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
    800030c4:	45078793          	addi	a5,a5,1104 # 8000a510 <_ZTV9Semaphore+0x10>
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
    80003198:	2ec78793          	addi	a5,a5,748 # 8000a480 <_ZTV14PeriodicThread+0x10>
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

00000000800031bc <_ZN5Riscv24getCharactersFromConsoleEv>:
//extern const uint64 CONSOLE_STATUS;
//extern const uint64 CONSOLE_TX_DATA;
//extern const uint64 CONSOLE_RX_DATA;

void Riscv::getCharactersFromConsole()
{
    800031bc:	ff010113          	addi	sp,sp,-16
    800031c0:	00813423          	sd	s0,8(sp)
    800031c4:	01010413          	addi	s0,sp,16
    //uint64 addr = CONSOLE_STATUS;
    //__asm__ volatile("ld a0, %0" : : "r"(addr));
}
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	01213023          	sd	s2,0(sp)
    800031e8:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800031ec:	00007797          	auipc	a5,0x7
    800031f0:	3e47b783          	ld	a5,996(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800031f4:	10579073          	csrw	stvec,a5
    new PCB(0, 0,0,0);
    800031f8:	05000513          	li	a0,80
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	4dc080e7          	jalr	1244(ra) # 800026d8 <_ZN3PCBnwEm>
    80003204:	00050493          	mv	s1,a0
    80003208:	00000713          	li	a4,0
    8000320c:	00000693          	li	a3,0
    80003210:	00000613          	li	a2,0
    80003214:	00000593          	li	a1,0
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	3a8080e7          	jalr	936(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::running = Scheduler::get();
    80003220:	00000097          	auipc	ra,0x0
    80003224:	aec080e7          	jalr	-1300(ra) # 80002d0c <_ZN9Scheduler3getEv>
    80003228:	00007797          	auipc	a5,0x7
    8000322c:	3c07b783          	ld	a5,960(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003230:	00a7b023          	sd	a0,0(a5)
    80003234:	00100793          	li	a5,1
    80003238:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	00013903          	ld	s2,0(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret
    80003254:	00050913          	mv	s2,a0
    new PCB(0, 0,0,0);
    80003258:	00048513          	mv	a0,s1
    8000325c:	fffff097          	auipc	ra,0xfffff
    80003260:	4a4080e7          	jalr	1188(ra) # 80002700 <_ZN3PCBdlEPv>
    80003264:	00090513          	mv	a0,s2
    80003268:	00008097          	auipc	ra,0x8
    8000326c:	550080e7          	jalr	1360(ra) # 8000b7b8 <_Unwind_Resume>

0000000080003270 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813423          	sd	s0,8(sp)
    80003278:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000327c:	00200793          	li	a5,2
    80003280:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003284:	00813403          	ld	s0,8(sp)
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret

0000000080003290 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813423          	sd	s0,8(sp)
    80003298:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000329c:	00200793          	li	a5,2
    800032a0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800032a4:	00813403          	ld	s0,8(sp)
    800032a8:	01010113          	addi	sp,sp,16
    800032ac:	00008067          	ret

00000000800032b0 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	fd0080e7          	jalr	-48(ra) # 80003290 <_ZN5Riscv17disableInterruptsEv>
}
    800032c8:	00813083          	ld	ra,8(sp)
    800032cc:	00013403          	ld	s0,0(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    800032d8:	ff010113          	addi	sp,sp,-16
    800032dc:	00813423          	sd	s0,8(sp)
    800032e0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800032e4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800032e8:	10200073          	sret
}
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    800032f8:	fd010113          	addi	sp,sp,-48
    800032fc:	02113423          	sd	ra,40(sp)
    80003300:	02813023          	sd	s0,32(sp)
    80003304:	00913c23          	sd	s1,24(sp)
    80003308:	01213823          	sd	s2,16(sp)
    8000330c:	03010413          	addi	s0,sp,48
    80003310:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003314:	100027f3          	csrr	a5,sstatus
    80003318:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000331c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003320:	00200793          	li	a5,2
    80003324:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80003328:	0004c503          	lbu	a0,0(s1)
    8000332c:	00050a63          	beqz	a0,80003340 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80003330:	00005097          	auipc	ra,0x5
    80003334:	8fc080e7          	jalr	-1796(ra) # 80007c2c <__putc>
        string++;
    80003338:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000333c:	fedff06f          	j	80003328 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003340:	0009091b          	sext.w	s2,s2
    80003344:	00297913          	andi	s2,s2,2
    80003348:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000334c:	10092073          	csrs	sstatus,s2
}
    80003350:	02813083          	ld	ra,40(sp)
    80003354:	02013403          	ld	s0,32(sp)
    80003358:	01813483          	ld	s1,24(sp)
    8000335c:	01013903          	ld	s2,16(sp)
    80003360:	03010113          	addi	sp,sp,48
    80003364:	00008067          	ret

0000000080003368 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80003368:	fc010113          	addi	sp,sp,-64
    8000336c:	02113c23          	sd	ra,56(sp)
    80003370:	02813823          	sd	s0,48(sp)
    80003374:	02913423          	sd	s1,40(sp)
    80003378:	03213023          	sd	s2,32(sp)
    8000337c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003380:	100027f3          	csrr	a5,sstatus
    80003384:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003388:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000338c:	00200793          	li	a5,2
    80003390:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80003394:	0005051b          	sext.w	a0,a0

    i = 0;
    80003398:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    8000339c:	00a00613          	li	a2,10
    800033a0:	02c5773b          	remuw	a4,a0,a2
    800033a4:	02071693          	slli	a3,a4,0x20
    800033a8:	0206d693          	srli	a3,a3,0x20
    800033ac:	00005717          	auipc	a4,0x5
    800033b0:	ddc70713          	addi	a4,a4,-548 # 80008188 <_ZZN5Riscv12printIntegerEmE6digits>
    800033b4:	00d70733          	add	a4,a4,a3
    800033b8:	00074703          	lbu	a4,0(a4)
    800033bc:	fe040693          	addi	a3,s0,-32
    800033c0:	009687b3          	add	a5,a3,s1
    800033c4:	0014849b          	addiw	s1,s1,1
    800033c8:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800033cc:	0005071b          	sext.w	a4,a0
    800033d0:	02c5553b          	divuw	a0,a0,a2
    800033d4:	00900793          	li	a5,9
    800033d8:	fce7e2e3          	bltu	a5,a4,8000339c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800033dc:	fff4849b          	addiw	s1,s1,-1
    800033e0:	0004ce63          	bltz	s1,800033fc <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    800033e4:	fe040793          	addi	a5,s0,-32
    800033e8:	009787b3          	add	a5,a5,s1
    800033ec:	ff07c503          	lbu	a0,-16(a5)
    800033f0:	00005097          	auipc	ra,0x5
    800033f4:	83c080e7          	jalr	-1988(ra) # 80007c2c <__putc>
    800033f8:	fe5ff06f          	j	800033dc <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    800033fc:	00a00513          	li	a0,10
    80003400:	00005097          	auipc	ra,0x5
    80003404:	82c080e7          	jalr	-2004(ra) # 80007c2c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80003408:	0009091b          	sext.w	s2,s2
    8000340c:	00297913          	andi	s2,s2,2
    80003410:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003414:	10092073          	csrs	sstatus,s2
}
    80003418:	03813083          	ld	ra,56(sp)
    8000341c:	03013403          	ld	s0,48(sp)
    80003420:	02813483          	ld	s1,40(sp)
    80003424:	02013903          	ld	s2,32(sp)
    80003428:	04010113          	addi	sp,sp,64
    8000342c:	00008067          	ret

0000000080003430 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80003430:	f8010113          	addi	sp,sp,-128
    80003434:	06113c23          	sd	ra,120(sp)
    80003438:	06813823          	sd	s0,112(sp)
    8000343c:	06913423          	sd	s1,104(sp)
    80003440:	07213023          	sd	s2,96(sp)
    80003444:	05313c23          	sd	s3,88(sp)
    80003448:	05413823          	sd	s4,80(sp)
    8000344c:	05513423          	sd	s5,72(sp)
    80003450:	05613023          	sd	s6,64(sp)
    80003454:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80003458:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000345c:	142027f3          	csrr	a5,scause
    80003460:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80003464:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80003468:	00900793          	li	a5,9
    8000346c:	0ae7f263          	bgeu	a5,a4,80003510 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    80003470:	fff00793          	li	a5,-1
    80003474:	03f79793          	slli	a5,a5,0x3f
    80003478:	00178793          	addi	a5,a5,1
    8000347c:	08f71e63          	bne	a4,a5,80003518 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003480:	00200793          	li	a5,2
    80003484:	1447b073          	csrc	sip,a5

            Riscv::mc_sip(Riscv::SIP_SSIP);
            //Riscv::printString("timerInterrupt\n");

            static uint64 total = 0;
            total++;
    80003488:	00007797          	auipc	a5,0x7
    8000348c:	22078793          	addi	a5,a5,544 # 8000a6a8 <_ZZN5Riscv20handleSupervisorTrapEvE5total>
    80003490:	0007b503          	ld	a0,0(a5)
    80003494:	00150513          	addi	a0,a0,1
    80003498:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(total);
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	ecc080e7          	jalr	-308(ra) # 80003368 <_ZN5Riscv12printIntegerEm>

            PCB::timeSliceCounter++;
    800034a4:	00007497          	auipc	s1,0x7
    800034a8:	1344b483          	ld	s1,308(s1) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800034ac:	0004b783          	ld	a5,0(s1)
    800034b0:	00178793          	addi	a5,a5,1
    800034b4:	00f4b023          	sd	a5,0(s1)

            SleepPCBList::tryToWakePCBs();
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	550080e7          	jalr	1360(ra) # 80002a08 <_ZN12SleepPCBList13tryToWakePCBsEv>

            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800034c0:	00007797          	auipc	a5,0x7
    800034c4:	1287b783          	ld	a5,296(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800034c8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800034cc:	0087b783          	ld	a5,8(a5)
    800034d0:	0004b703          	ld	a4,0(s1)
    800034d4:	04f76663          	bltu	a4,a5,80003520 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800034d8:	141027f3          	csrr	a5,sepc
    800034dc:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800034e0:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800034e4:	100027f3          	csrr	a5,sstatus
    800034e8:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800034ec:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    800034f0:	00007797          	auipc	a5,0x7
    800034f4:	0e87b783          	ld	a5,232(a5) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800034f8:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	168080e7          	jalr	360(ra) # 80002664 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003504:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003508:	14149073          	csrw	sepc,s1
}
    8000350c:	0140006f          	j	80003520 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    switch(scause)
    80003510:	00800793          	li	a5,8
    80003514:	02f77a63          	bgeu	a4,a5,80003548 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    80003518:	00004097          	auipc	ra,0x4
    8000351c:	788080e7          	jalr	1928(ra) # 80007ca0 <console_handler>
}
    80003520:	07813083          	ld	ra,120(sp)
    80003524:	07013403          	ld	s0,112(sp)
    80003528:	06813483          	ld	s1,104(sp)
    8000352c:	06013903          	ld	s2,96(sp)
    80003530:	05813983          	ld	s3,88(sp)
    80003534:	05013a03          	ld	s4,80(sp)
    80003538:	04813a83          	ld	s5,72(sp)
    8000353c:	04013b03          	ld	s6,64(sp)
    80003540:	08010113          	addi	sp,sp,128
    80003544:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003548:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000354c:	14102773          	csrr	a4,sepc
    80003550:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80003554:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80003558:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    8000355c:	00100713          	li	a4,1
    80003560:	06e78a63          	beq	a5,a4,800035d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            else if(operation == MemoryAllocator::MEM_FREE)
    80003564:	00200713          	li	a4,2
    80003568:	08e78463          	beq	a5,a4,800035f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            else if(operation == PCB::THREAD_CREATE)
    8000356c:	01100713          	li	a4,17
    80003570:	08e78a63          	beq	a5,a4,80003604 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            else if(operation == PCB::THREAD_DISPATCH)
    80003574:	01300713          	li	a4,19
    80003578:	0ce78c63          	beq	a5,a4,80003650 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            else if(operation == PCB::THREAD_EXIT)
    8000357c:	01200713          	li	a4,18
    80003580:	0ee78c63          	beq	a5,a4,80003678 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
            else if(operation == PCB::TIME_SLEEP)
    80003584:	03100713          	li	a4,49
    80003588:	14e78263          	beq	a5,a4,800036cc <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
            else if(operation == KSemaphore::SEM_OPEN)
    8000358c:	02100713          	li	a4,33
    80003590:	18e78263          	beq	a5,a4,80003714 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
            else if(operation == KSemaphore::SEM_WAIT)
    80003594:	02300713          	li	a4,35
    80003598:	1ae78c63          	beq	a5,a4,80003750 <_ZN5Riscv20handleSupervisorTrapEv+0x320>
            else if(operation == KSemaphore::SEM_SIGNAL)
    8000359c:	02400713          	li	a4,36
    800035a0:	1ce78263          	beq	a5,a4,80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
            else if(operation == KSemaphore::SEM_CLOSE)
    800035a4:	02200713          	li	a4,34
    800035a8:	04e79063          	bne	a5,a4,800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800035ac:	00058913          	mv	s2,a1
                delete kSem;
    800035b0:	00090e63          	beqz	s2,800035cc <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    800035b4:	00090513          	mv	a0,s2
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	744080e7          	jalr	1860(ra) # 80003cfc <_ZN10KSemaphoreD1Ev>
    800035c0:	00090513          	mv	a0,s2
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	868080e7          	jalr	-1944(ra) # 80003e2c <_ZN10KSemaphoredlEPv>
                __asm__ volatile("li a0, 0");
    800035cc:	00000513          	li	a0,0
    800035d0:	0180006f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800035d4:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800035d8:	00651513          	slli	a0,a0,0x6
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	588080e7          	jalr	1416(ra) # 80003b64 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800035e4:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800035e8:	14149073          	csrw	sepc,s1
}
    800035ec:	f35ff06f          	j	80003520 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800035f0:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	598080e7          	jalr	1432(ra) # 80003b8c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800035fc:	00050513          	mv	a0,a0
    80003600:	fe9ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80003604:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80003608:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    8000360c:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003610:	05000513          	li	a0,80
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	0c4080e7          	jalr	196(ra) # 800026d8 <_ZN3PCBnwEm>
    8000361c:	00050993          	mv	s3,a0
    80003620:	00200713          	li	a4,2
    80003624:	00090693          	mv	a3,s2
    80003628:	000b0613          	mv	a2,s6
    8000362c:	000a8593          	mv	a1,s5
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	f90080e7          	jalr	-112(ra) # 800025c0 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003638:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    8000363c:	00098663          	beqz	s3,80003648 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                    __asm__ volatile("li a0, 0");
    80003640:	00000513          	li	a0,0
    80003644:	fa5ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003648:	fff00513          	li	a0,-1
    8000364c:	f9dff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003650:	100027f3          	csrr	a5,sstatus
    80003654:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003658:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    8000365c:	00007797          	auipc	a5,0x7
    80003660:	f7c7b783          	ld	a5,-132(a5) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003664:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	ffc080e7          	jalr	-4(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003670:	10091073          	csrw	sstatus,s2
}
    80003674:	f75ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                if(PCB::running == 0)
    80003678:	00007797          	auipc	a5,0x7
    8000367c:	f707b783          	ld	a5,-144(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003680:	0007b783          	ld	a5,0(a5)
    80003684:	04078063          	beqz	a5,800036c4 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003688:	100027f3          	csrr	a5,sstatus
    8000368c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003690:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80003694:	00007797          	auipc	a5,0x7
    80003698:	f447b783          	ld	a5,-188(a5) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000369c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    800036a0:	00007797          	auipc	a5,0x7
    800036a4:	f487b783          	ld	a5,-184(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036a8:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    800036ac:	00300713          	li	a4,3
    800036b0:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	fb0080e7          	jalr	-80(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800036bc:	10091073          	csrw	sstatus,s2
}
    800036c0:	f29ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800036c4:	fff00513          	li	a0,-1
                    return;
    800036c8:	e59ff06f          	j	80003520 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800036cc:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800036d0:	100027f3          	csrr	a5,sstatus
    800036d4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800036d8:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    800036dc:	00007797          	auipc	a5,0x7
    800036e0:	efc7b783          	ld	a5,-260(a5) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800036e4:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    800036e8:	00007797          	auipc	a5,0x7
    800036ec:	f007b783          	ld	a5,-256(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036f0:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800036f4:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	264080e7          	jalr	612(ra) # 8000295c <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	f64080e7          	jalr	-156(ra) # 80002664 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003708:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    8000370c:	00000513          	li	a0,0
    80003710:	ed9ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003714:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003718:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    8000371c:	01800513          	li	a0,24
    80003720:	00000097          	auipc	ra,0x0
    80003724:	6e4080e7          	jalr	1764(ra) # 80003e04 <_ZN10KSemaphorenwEm>
    80003728:	00050913          	mv	s2,a0
    8000372c:	000a059b          	sext.w	a1,s4
    80003730:	00000097          	auipc	ra,0x0
    80003734:	484080e7          	jalr	1156(ra) # 80003bb4 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003738:	0129b023          	sd	s2,0(s3)
                if(newSem == 0)
    8000373c:	00090663          	beqz	s2,80003748 <_ZN5Riscv20handleSupervisorTrapEv+0x318>
                        __asm__ volatile("li a0, 0");
    80003740:	00000513          	li	a0,0
    80003744:	ea5ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003748:	fff00513          	li	a0,-1
    8000374c:	e9dff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003750:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003754:	00000097          	auipc	ra,0x0
    80003758:	508080e7          	jalr	1288(ra) # 80003c5c <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000375c:	00050513          	mv	a0,a0
    80003760:	e89ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003764:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	654080e7          	jalr	1620(ra) # 80003dbc <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003770:	00050513          	mv	a0,a0
    80003774:	e75ff06f          	j	800035e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80003778:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    8000377c:	00098513          	mv	a0,s3
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	f80080e7          	jalr	-128(ra) # 80002700 <_ZN3PCBdlEPv>
    80003788:	00048513          	mv	a0,s1
    8000378c:	00008097          	auipc	ra,0x8
    80003790:	02c080e7          	jalr	44(ra) # 8000b7b8 <_Unwind_Resume>
    80003794:	00050493          	mv	s1,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003798:	00090513          	mv	a0,s2
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	690080e7          	jalr	1680(ra) # 80003e2c <_ZN10KSemaphoredlEPv>
    800037a4:	00048513          	mv	a0,s1
    800037a8:	00008097          	auipc	ra,0x8
    800037ac:	010080e7          	jalr	16(ra) # 8000b7b8 <_Unwind_Resume>

00000000800037b0 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800037b0:	ff010113          	addi	sp,sp,-16
    800037b4:	00813423          	sd	s0,8(sp)
    800037b8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800037bc:	00007717          	auipc	a4,0x7
    800037c0:	ef472703          	lw	a4,-268(a4) # 8000a6b0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800037c4:	00100793          	li	a5,1
    800037c8:	04f70263          	beq	a4,a5,8000380c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800037cc:	00007797          	auipc	a5,0x7
    800037d0:	ee478793          	addi	a5,a5,-284 # 8000a6b0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800037d4:	00100713          	li	a4,1
    800037d8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800037dc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800037e0:	00007717          	auipc	a4,0x7
    800037e4:	de873703          	ld	a4,-536(a4) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800037e8:	00073703          	ld	a4,0(a4)
    800037ec:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800037f0:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800037f4:	00007797          	auipc	a5,0x7
    800037f8:	dfc7b783          	ld	a5,-516(a5) # 8000a5f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800037fc:	0007b783          	ld	a5,0(a5)
    80003800:	40e787b3          	sub	a5,a5,a4
    80003804:	ff178793          	addi	a5,a5,-15
    80003808:	00f73023          	sd	a5,0(a4)
}
    8000380c:	00813403          	ld	s0,8(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003818:	fe010113          	addi	sp,sp,-32
    8000381c:	00113c23          	sd	ra,24(sp)
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00913423          	sd	s1,8(sp)
    80003828:	01213023          	sd	s2,0(sp)
    8000382c:	02010413          	addi	s0,sp,32
    80003830:	00050493          	mv	s1,a0
    80003834:	00058913          	mv	s2,a1

    initMemory();
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	f78080e7          	jalr	-136(ra) # 800037b0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003840:	00007797          	auipc	a5,0x7
    80003844:	e787b783          	ld	a5,-392(a5) # 8000a6b8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003848:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000384c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003850:	00000713          	li	a4,0
    while(curr != 0)
    80003854:	00078c63          	beqz	a5,8000386c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003858:	00f4e863          	bltu	s1,a5,80003868 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    8000385c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003860:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003864:	ff1ff06f          	j	80003854 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003868:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000386c:	02070063          	beqz	a4,8000388c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003870:	00973423          	sd	s1,8(a4)
}
    80003874:	01813083          	ld	ra,24(sp)
    80003878:	01013403          	ld	s0,16(sp)
    8000387c:	00813483          	ld	s1,8(sp)
    80003880:	00013903          	ld	s2,0(sp)
    80003884:	02010113          	addi	sp,sp,32
    80003888:	00008067          	ret
        headAllocated = newAllocated;
    8000388c:	00007797          	auipc	a5,0x7
    80003890:	e297b623          	sd	s1,-468(a5) # 8000a6b8 <_ZN15MemoryAllocator13headAllocatedE>
    80003894:	fe1ff06f          	j	80003874 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003898 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003898:	fe010113          	addi	sp,sp,-32
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00913423          	sd	s1,8(sp)
    800038a8:	01213023          	sd	s2,0(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	00050913          	mv	s2,a0
    initMemory();
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	efc080e7          	jalr	-260(ra) # 800037b0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800038bc:	00007497          	auipc	s1,0x7
    800038c0:	e044b483          	ld	s1,-508(s1) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800038c4:	00000713          	li	a4,0
    while(curr != 0)
    800038c8:	0a048863          	beqz	s1,80003978 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800038cc:	0004b783          	ld	a5,0(s1)
    800038d0:	0127f863          	bgeu	a5,s2,800038e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800038d4:	00048713          	mv	a4,s1
        curr = curr->next;
    800038d8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800038dc:	fedff06f          	j	800038c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800038e0:	01090693          	addi	a3,s2,16
    800038e4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800038e8:	00007617          	auipc	a2,0x7
    800038ec:	d0863603          	ld	a2,-760(a2) # 8000a5f0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800038f0:	00063603          	ld	a2,0(a2)
    800038f4:	04d66c63          	bltu	a2,a3,8000394c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800038f8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800038fc:	01000613          	li	a2,16
    80003900:	02f67663          	bgeu	a2,a5,8000392c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003904:	0084b603          	ld	a2,8(s1)
    80003908:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000390c:	ff078793          	addi	a5,a5,-16
    80003910:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003914:	00070663          	beqz	a4,80003920 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003918:	00d73423          	sd	a3,8(a4)
    8000391c:	0380006f          	j	80003954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003920:	00007797          	auipc	a5,0x7
    80003924:	dad7b023          	sd	a3,-608(a5) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    80003928:	02c0006f          	j	80003954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000392c:	00070863          	beqz	a4,8000393c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003930:	0084b783          	ld	a5,8(s1)
    80003934:	00f73423          	sd	a5,8(a4)
    80003938:	01c0006f          	j	80003954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000393c:	0084b783          	ld	a5,8(s1)
    80003940:	00007717          	auipc	a4,0x7
    80003944:	d8f73023          	sd	a5,-640(a4) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    80003948:	00c0006f          	j	80003954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000394c:	02070063          	beqz	a4,8000396c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003950:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003954:	00090593          	mv	a1,s2
    80003958:	00048513          	mv	a0,s1
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	ebc080e7          	jalr	-324(ra) # 80003818 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003964:	01048513          	addi	a0,s1,16
            break;
    80003968:	0140006f          	j	8000397c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000396c:	00007797          	auipc	a5,0x7
    80003970:	d407ba23          	sd	zero,-684(a5) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    80003974:	fe1ff06f          	j	80003954 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003978:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000397c:	01813083          	ld	ra,24(sp)
    80003980:	01013403          	ld	s0,16(sp)
    80003984:	00813483          	ld	s1,8(sp)
    80003988:	00013903          	ld	s2,0(sp)
    8000398c:	02010113          	addi	sp,sp,32
    80003990:	00008067          	ret

0000000080003994 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	ef4080e7          	jalr	-268(ra) # 80003898 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800039ac:	00813083          	ld	ra,8(sp)
    800039b0:	00013403          	ld	s0,0(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    800039d8:	00058913          	mv	s2,a1
    initMemory();
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	dd4080e7          	jalr	-556(ra) # 800037b0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800039e4:	00007797          	auipc	a5,0x7
    800039e8:	cdc7b783          	ld	a5,-804(a5) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800039ec:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800039f0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800039f4:	00000713          	li	a4,0
    while(curr != 0)
    800039f8:	00078c63          	beqz	a5,80003a10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800039fc:	00f4e863          	bltu	s1,a5,80003a0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003a00:	00078713          	mv	a4,a5
        curr = curr->next;
    80003a04:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a08:	ff1ff06f          	j	800039f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003a0c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003a10:	04070663          	beqz	a4,80003a5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003a14:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003a18:	0084b783          	ld	a5,8(s1)
    80003a1c:	00078a63          	beqz	a5,80003a30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003a20:	0004b603          	ld	a2,0(s1)
    80003a24:	01060693          	addi	a3,a2,16
    80003a28:	00d486b3          	add	a3,s1,a3
    80003a2c:	02d78e63          	beq	a5,a3,80003a68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003a30:	00070a63          	beqz	a4,80003a44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003a34:	00073683          	ld	a3,0(a4)
    80003a38:	01068793          	addi	a5,a3,16
    80003a3c:	00f707b3          	add	a5,a4,a5
    80003a40:	04978263          	beq	a5,s1,80003a84 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	00013903          	ld	s2,0(sp)
    80003a54:	02010113          	addi	sp,sp,32
    80003a58:	00008067          	ret
        headFree = newSegment;
    80003a5c:	00007797          	auipc	a5,0x7
    80003a60:	c697b223          	sd	s1,-924(a5) # 8000a6c0 <_ZN15MemoryAllocator8headFreeE>
    80003a64:	fb5ff06f          	j	80003a18 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003a68:	0007b683          	ld	a3,0(a5)
    80003a6c:	00d60633          	add	a2,a2,a3
    80003a70:	01060613          	addi	a2,a2,16
    80003a74:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003a78:	0087b783          	ld	a5,8(a5)
    80003a7c:	00f4b423          	sd	a5,8(s1)
    80003a80:	fb1ff06f          	j	80003a30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003a84:	0004b783          	ld	a5,0(s1)
    80003a88:	00f686b3          	add	a3,a3,a5
    80003a8c:	01068693          	addi	a3,a3,16
    80003a90:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003a94:	0084b783          	ld	a5,8(s1)
    80003a98:	00f73423          	sd	a5,8(a4)
}
    80003a9c:	fa9ff06f          	j	80003a44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003aa0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	00113c23          	sd	ra,24(sp)
    80003aa8:	00813823          	sd	s0,16(sp)
    80003aac:	00913423          	sd	s1,8(sp)
    80003ab0:	01213023          	sd	s2,0(sp)
    80003ab4:	02010413          	addi	s0,sp,32
    80003ab8:	00050913          	mv	s2,a0
    initMemory();
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	cf4080e7          	jalr	-780(ra) # 800037b0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ac4:	00007497          	auipc	s1,0x7
    80003ac8:	bf44b483          	ld	s1,-1036(s1) # 8000a6b8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80003acc:	00000713          	li	a4,0
    while(curr != 0)
    80003ad0:	02048a63          	beqz	s1,80003b04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003ad4:	01048793          	addi	a5,s1,16
    80003ad8:	01278863          	beq	a5,s2,80003ae8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80003adc:	00048713          	mv	a4,s1
        curr = curr->next;
    80003ae0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003ae4:	fedff06f          	j	80003ad0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003ae8:	02070e63          	beqz	a4,80003b24 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80003aec:	0084b783          	ld	a5,8(s1)
    80003af0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003af4:	0004b583          	ld	a1,0(s1)
    80003af8:	00048513          	mv	a0,s1
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	ec0080e7          	jalr	-320(ra) # 800039bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003b04:	02048863          	beqz	s1,80003b34 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003b08:	00000513          	li	a0,0
    else
        return 1;
}
    80003b0c:	01813083          	ld	ra,24(sp)
    80003b10:	01013403          	ld	s0,16(sp)
    80003b14:	00813483          	ld	s1,8(sp)
    80003b18:	00013903          	ld	s2,0(sp)
    80003b1c:	02010113          	addi	sp,sp,32
    80003b20:	00008067          	ret
                headAllocated = curr->next;
    80003b24:	0084b783          	ld	a5,8(s1)
    80003b28:	00007717          	auipc	a4,0x7
    80003b2c:	b8f73823          	sd	a5,-1136(a4) # 8000a6b8 <_ZN15MemoryAllocator13headAllocatedE>
    80003b30:	fc5ff06f          	j	80003af4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003b34:	00100513          	li	a0,1
    80003b38:	fd5ff06f          	j	80003b0c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003b3c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00113423          	sd	ra,8(sp)
    80003b44:	00813023          	sd	s0,0(sp)
    80003b48:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003b4c:	00000097          	auipc	ra,0x0
    80003b50:	f54080e7          	jalr	-172(ra) # 80003aa0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003b54:	00813083          	ld	ra,8(sp)
    80003b58:	00013403          	ld	s0,0(sp)
    80003b5c:	01010113          	addi	sp,sp,16
    80003b60:	00008067          	ret

0000000080003b64 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003b64:	ff010113          	addi	sp,sp,-16
    80003b68:	00113423          	sd	ra,8(sp)
    80003b6c:	00813023          	sd	s0,0(sp)
    80003b70:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	e20080e7          	jalr	-480(ra) # 80003994 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003b7c:	00813083          	ld	ra,8(sp)
    80003b80:	00013403          	ld	s0,0(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    80003b8c:	ff010113          	addi	sp,sp,-16
    80003b90:	00113423          	sd	ra,8(sp)
    80003b94:	00813023          	sd	s0,0(sp)
    80003b98:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	fa0080e7          	jalr	-96(ra) # 80003b3c <_ZN15MemoryAllocator8mem_freeEPv>
    80003ba4:	00813083          	ld	ra,8(sp)
    80003ba8:	00013403          	ld	s0,0(sp)
    80003bac:	01010113          	addi	sp,sp,16
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00813423          	sd	s0,8(sp)
    80003bbc:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003bc0:	00b52a23          	sw	a1,20(a0)
    80003bc4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003bc8:	00053423          	sd	zero,8(a0)
    80003bcc:	00053023          	sd	zero,0(a0)
}
    80003bd0:	00813403          	ld	s0,8(sp)
    80003bd4:	01010113          	addi	sp,sp,16
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00813423          	sd	s0,8(sp)
    80003be4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003be8:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    80003bec:	00053783          	ld	a5,0(a0)
    80003bf0:	00078e63          	beqz	a5,80003c0c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003bf4:	00853783          	ld	a5,8(a0)
    80003bf8:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    80003bfc:	00b53423          	sd	a1,8(a0)
    }
}
    80003c00:	00813403          	ld	s0,8(sp)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003c0c:	00b53423          	sd	a1,8(a0)
    80003c10:	00b53023          	sd	a1,0(a0)
    80003c14:	fedff06f          	j	80003c00 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003c18 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003c28:	00007797          	auipc	a5,0x7
    80003c2c:	9c07b783          	ld	a5,-1600(a5) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c30:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003c34:	00200793          	li	a5,2
    80003c38:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	fa0080e7          	jalr	-96(ra) # 80003bdc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	a20080e7          	jalr	-1504(ra) # 80002664 <_ZN3PCB8dispatchEv>
}
    80003c4c:	00813083          	ld	ra,8(sp)
    80003c50:	00013403          	ld	s0,0(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret

0000000080003c5c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003c5c:	01052783          	lw	a5,16(a0)
    80003c60:	fff7879b          	addiw	a5,a5,-1
    80003c64:	00f52823          	sw	a5,16(a0)
    80003c68:	02079713          	slli	a4,a5,0x20
    80003c6c:	00074663          	bltz	a4,80003c78 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003c70:	00000513          	li	a0,0
    80003c74:	00008067          	ret
uint64 KSemaphore::wait() {
    80003c78:	ff010113          	addi	sp,sp,-16
    80003c7c:	00113423          	sd	ra,8(sp)
    80003c80:	00813023          	sd	s0,0(sp)
    80003c84:	01010413          	addi	s0,sp,16
        block();
    80003c88:	00000097          	auipc	ra,0x0
    80003c8c:	f90080e7          	jalr	-112(ra) # 80003c18 <_ZN10KSemaphore5blockEv>
}
    80003c90:	00000513          	li	a0,0
    80003c94:	00813083          	ld	ra,8(sp)
    80003c98:	00013403          	ld	s0,0(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret

0000000080003ca4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003ca4:	ff010113          	addi	sp,sp,-16
    80003ca8:	00813423          	sd	s0,8(sp)
    80003cac:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003cb0:	00053503          	ld	a0,0(a0)
    80003cb4:	00813403          	ld	s0,8(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003cc0:	ff010113          	addi	sp,sp,-16
    80003cc4:	00813423          	sd	s0,8(sp)
    80003cc8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80003ccc:	00053783          	ld	a5,0(a0)
    80003cd0:	00078c63          	beqz	a5,80003ce8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003cd4:	0007b703          	ld	a4,0(a5)
    80003cd8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80003cdc:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    80003ce0:	00053783          	ld	a5,0(a0)
    80003ce4:	00078863          	beqz	a5,80003cf4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003ce8:	00813403          	ld	s0,8(sp)
    80003cec:	01010113          	addi	sp,sp,16
    80003cf0:	00008067          	ret
        tailBlocked =0;
    80003cf4:	00053423          	sd	zero,8(a0)
    80003cf8:	ff1ff06f          	j	80003ce8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080003cfc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00113c23          	sd	ra,24(sp)
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	01213023          	sd	s2,0(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003d18:	00090513          	mv	a0,s2
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	f88080e7          	jalr	-120(ra) # 80003ca4 <_ZN10KSemaphore15getFirstBlockedEv>
    80003d24:	00050493          	mv	s1,a0
    80003d28:	02050063          	beqz	a0,80003d48 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    80003d2c:	00090513          	mv	a0,s2
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	f90080e7          	jalr	-112(ra) # 80003cc0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003d38:	00048513          	mv	a0,s1
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	f7c080e7          	jalr	-132(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003d44:	fd5ff06f          	j	80003d18 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	00013903          	ld	s2,0(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret

0000000080003d60 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	00813823          	sd	s0,16(sp)
    80003d6c:	00913423          	sd	s1,8(sp)
    80003d70:	01213023          	sd	s2,0(sp)
    80003d74:	02010413          	addi	s0,sp,32
    80003d78:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	f28080e7          	jalr	-216(ra) # 80003ca4 <_ZN10KSemaphore15getFirstBlockedEv>
    80003d84:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003d88:	00090513          	mv	a0,s2
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	f34080e7          	jalr	-204(ra) # 80003cc0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003d94:	00048863          	beqz	s1,80003da4 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	f1c080e7          	jalr	-228(ra) # 80002cb8 <_ZN9Scheduler3putEP3PCB>
}
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00813483          	ld	s1,8(sp)
    80003db0:	00013903          	ld	s2,0(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret

0000000080003dbc <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003dbc:	01052783          	lw	a5,16(a0)
    80003dc0:	0017879b          	addiw	a5,a5,1
    80003dc4:	0007871b          	sext.w	a4,a5
    80003dc8:	00f52823          	sw	a5,16(a0)
    80003dcc:	00e05663          	blez	a4,80003dd8 <_ZN10KSemaphore6signalEv+0x1c>
}
    80003dd0:	00000513          	li	a0,0
    80003dd4:	00008067          	ret
uint64 KSemaphore::signal() {
    80003dd8:	ff010113          	addi	sp,sp,-16
    80003ddc:	00113423          	sd	ra,8(sp)
    80003de0:	00813023          	sd	s0,0(sp)
    80003de4:	01010413          	addi	s0,sp,16
        unblock();
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	f78080e7          	jalr	-136(ra) # 80003d60 <_ZN10KSemaphore7unblockEv>
}
    80003df0:	00000513          	li	a0,0
    80003df4:	00813083          	ld	ra,8(sp)
    80003df8:	00013403          	ld	s0,0(sp)
    80003dfc:	01010113          	addi	sp,sp,16
    80003e00:	00008067          	ret

0000000080003e04 <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    80003e04:	ff010113          	addi	sp,sp,-16
    80003e08:	00113423          	sd	ra,8(sp)
    80003e0c:	00813023          	sd	s0,0(sp)
    80003e10:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	d50080e7          	jalr	-688(ra) # 80003b64 <_Z7kmallocm>
}
    80003e1c:	00813083          	ld	ra,8(sp)
    80003e20:	00013403          	ld	s0,0(sp)
    80003e24:	01010113          	addi	sp,sp,16
    80003e28:	00008067          	ret

0000000080003e2c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003e2c:	ff010113          	addi	sp,sp,-16
    80003e30:	00113423          	sd	ra,8(sp)
    80003e34:	00813023          	sd	s0,0(sp)
    80003e38:	01010413          	addi	s0,sp,16
    kfree(p);
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	d50080e7          	jalr	-688(ra) # 80003b8c <_Z5kfreePv>
}
    80003e44:	00813083          	ld	ra,8(sp)
    80003e48:	00013403          	ld	s0,0(sp)
    80003e4c:	01010113          	addi	sp,sp,16
    80003e50:	00008067          	ret

0000000080003e54 <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    80003e54:	fe010113          	addi	sp,sp,-32
    80003e58:	00113c23          	sd	ra,24(sp)
    80003e5c:	00813823          	sd	s0,16(sp)
    80003e60:	00913423          	sd	s1,8(sp)
    80003e64:	01213023          	sd	s2,0(sp)
    80003e68:	02010413          	addi	s0,sp,32
    80003e6c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003e70:	00004517          	auipc	a0,0x4
    80003e74:	32850513          	addi	a0,a0,808 # 80008198 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	480080e7          	jalr	1152(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003e80:	00000913          	li	s2,0
    80003e84:	00c0006f          	j	80003e90 <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003e88:	ffffd097          	auipc	ra,0xffffd
    80003e8c:	49c080e7          	jalr	1180(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    80003e90:	00007797          	auipc	a5,0x7
    80003e94:	8387a783          	lw	a5,-1992(a5) # 8000a6c8 <threadEnd>
    80003e98:	02079e63          	bnez	a5,80003ed4 <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80003e9c:	0004a583          	lw	a1,0(s1)
    80003ea0:	0305859b          	addiw	a1,a1,48
    80003ea4:	0084b503          	ld	a0,8(s1)
    80003ea8:	00002097          	auipc	ra,0x2
    80003eac:	bac080e7          	jalr	-1108(ra) # 80005a54 <_ZN6Buffer3putEi>
        i++;
    80003eb0:	0019071b          	addiw	a4,s2,1
    80003eb4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003eb8:	0004a683          	lw	a3,0(s1)
    80003ebc:	0026979b          	slliw	a5,a3,0x2
    80003ec0:	00d787bb          	addw	a5,a5,a3
    80003ec4:	0017979b          	slliw	a5,a5,0x1
    80003ec8:	02f767bb          	remw	a5,a4,a5
    80003ecc:	fc0792e3          	bnez	a5,80003e90 <_Z8producerPv+0x3c>
    80003ed0:	fb9ff06f          	j	80003e88 <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80003ed4:	0104b503          	ld	a0,16(s1)
    80003ed8:	ffffd097          	auipc	ra,0xffffd
    80003edc:	524080e7          	jalr	1316(ra) # 800013fc <sem_signal>
}
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	00013903          	ld	s2,0(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret

0000000080003ef8 <_Z8consumerPv>:

void consumer(void *arg) {
    80003ef8:	fd010113          	addi	sp,sp,-48
    80003efc:	02113423          	sd	ra,40(sp)
    80003f00:	02813023          	sd	s0,32(sp)
    80003f04:	00913c23          	sd	s1,24(sp)
    80003f08:	01213823          	sd	s2,16(sp)
    80003f0c:	01313423          	sd	s3,8(sp)
    80003f10:	03010413          	addi	s0,sp,48
    80003f14:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80003f18:	00004517          	auipc	a0,0x4
    80003f1c:	29850513          	addi	a0,a0,664 # 800081b0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	3d8080e7          	jalr	984(ra) # 800032f8 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003f28:	00000993          	li	s3,0
    80003f2c:	01c0006f          	j	80003f48 <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	3f4080e7          	jalr	1012(ra) # 80001324 <thread_dispatch>
    80003f38:	04c0006f          	j	80003f84 <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003f3c:	00a00513          	li	a0,10
    80003f40:	00004097          	auipc	ra,0x4
    80003f44:	cec080e7          	jalr	-788(ra) # 80007c2c <__putc>
    while (!threadEnd) {
    80003f48:	00006797          	auipc	a5,0x6
    80003f4c:	7807a783          	lw	a5,1920(a5) # 8000a6c8 <threadEnd>
    80003f50:	04079263          	bnez	a5,80003f94 <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    80003f54:	00893503          	ld	a0,8(s2)
    80003f58:	00002097          	auipc	ra,0x2
    80003f5c:	b8c080e7          	jalr	-1140(ra) # 80005ae4 <_ZN6Buffer3getEv>
        i++;
    80003f60:	0019849b          	addiw	s1,s3,1
    80003f64:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	400080e7          	jalr	1024(ra) # 80003368 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80003f70:	00092703          	lw	a4,0(s2)
    80003f74:	0027179b          	slliw	a5,a4,0x2
    80003f78:	00e787bb          	addw	a5,a5,a4
    80003f7c:	02f4e7bb          	remw	a5,s1,a5
    80003f80:	fa0788e3          	beqz	a5,80003f30 <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    80003f84:	05000793          	li	a5,80
    80003f88:	02f4e4bb          	remw	s1,s1,a5
    80003f8c:	fa049ee3          	bnez	s1,80003f48 <_Z8consumerPv+0x50>
    80003f90:	fadff06f          	j	80003f3c <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    80003f94:	01093503          	ld	a0,16(s2)
    80003f98:	ffffd097          	auipc	ra,0xffffd
    80003f9c:	464080e7          	jalr	1124(ra) # 800013fc <sem_signal>
}
    80003fa0:	02813083          	ld	ra,40(sp)
    80003fa4:	02013403          	ld	s0,32(sp)
    80003fa8:	01813483          	ld	s1,24(sp)
    80003fac:	01013903          	ld	s2,16(sp)
    80003fb0:	00813983          	ld	s3,8(sp)
    80003fb4:	03010113          	addi	sp,sp,48
    80003fb8:	00008067          	ret

0000000080003fbc <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003fbc:	fe010113          	addi	sp,sp,-32
    80003fc0:	00113c23          	sd	ra,24(sp)
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	01213023          	sd	s2,0(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00050493          	mv	s1,a0
    int i = 0;
    80003fd8:	00000913          	li	s2,0
    80003fdc:	00c0006f          	j	80003fe8 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	344080e7          	jalr	836(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003fe8:	00004097          	auipc	ra,0x4
    80003fec:	c80080e7          	jalr	-896(ra) # 80007c68 <__getc>
    80003ff0:	0005059b          	sext.w	a1,a0
    80003ff4:	01b00793          	li	a5,27
    80003ff8:	02f58a63          	beq	a1,a5,8000402c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003ffc:	0084b503          	ld	a0,8(s1)
    80004000:	00002097          	auipc	ra,0x2
    80004004:	a54080e7          	jalr	-1452(ra) # 80005a54 <_ZN6Buffer3putEi>
        i++;
    80004008:	0019071b          	addiw	a4,s2,1
    8000400c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004010:	0004a683          	lw	a3,0(s1)
    80004014:	0026979b          	slliw	a5,a3,0x2
    80004018:	00d787bb          	addw	a5,a5,a3
    8000401c:	0017979b          	slliw	a5,a5,0x1
    80004020:	02f767bb          	remw	a5,a4,a5
    80004024:	fc0792e3          	bnez	a5,80003fe8 <_Z16producerKeyboardPv+0x2c>
    80004028:	fb9ff06f          	j	80003fe0 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    8000402c:	00100793          	li	a5,1
    80004030:	00006717          	auipc	a4,0x6
    80004034:	68f72c23          	sw	a5,1688(a4) # 8000a6c8 <threadEnd>
    delete data->buffer;
    80004038:	0084b903          	ld	s2,8(s1)
    8000403c:	00090e63          	beqz	s2,80004058 <_Z16producerKeyboardPv+0x9c>
    80004040:	00090513          	mv	a0,s2
    80004044:	00002097          	auipc	ra,0x2
    80004048:	964080e7          	jalr	-1692(ra) # 800059a8 <_ZN6BufferD1Ev>
    8000404c:	00090513          	mv	a0,s2
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	e44080e7          	jalr	-444(ra) # 80002e94 <_ZdlPv>
    sem_signal(data->wait);
    80004058:	0104b503          	ld	a0,16(s1)
    8000405c:	ffffd097          	auipc	ra,0xffffd
    80004060:	3a0080e7          	jalr	928(ra) # 800013fc <sem_signal>
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    8000407c:	f2010113          	addi	sp,sp,-224
    80004080:	0c113c23          	sd	ra,216(sp)
    80004084:	0c813823          	sd	s0,208(sp)
    80004088:	0c913423          	sd	s1,200(sp)
    8000408c:	0d213023          	sd	s2,192(sp)
    80004090:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004094:	00004517          	auipc	a0,0x4
    80004098:	13450513          	addi	a0,a0,308 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	15c080e7          	jalr	348(ra) # 800051f8 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    800040a4:	00004517          	auipc	a0,0x4
    800040a8:	14450513          	addi	a0,a0,324 # 800081e8 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    800040ac:	00001097          	auipc	ra,0x1
    800040b0:	14c080e7          	jalr	332(ra) # 800051f8 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800040b4:	00004517          	auipc	a0,0x4
    800040b8:	15450513          	addi	a0,a0,340 # 80008208 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	13c080e7          	jalr	316(ra) # 800051f8 <_Z11printStringPKc>
    800040c4:	00000613          	li	a2,0
    800040c8:	00a00593          	li	a1,10
    800040cc:	00500513          	li	a0,5
    800040d0:	00001097          	auipc	ra,0x1
    800040d4:	2c0080e7          	jalr	704(ra) # 80005390 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800040d8:	00004517          	auipc	a0,0x4
    800040dc:	14850513          	addi	a0,a0,328 # 80008220 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	118080e7          	jalr	280(ra) # 800051f8 <_Z11printStringPKc>
    800040e8:	00000613          	li	a2,0
    800040ec:	00a00593          	li	a1,10
    800040f0:	00a00513          	li	a0,10
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	29c080e7          	jalr	668(ra) # 80005390 <_Z8printIntiii>
    printString(".\n");
    800040fc:	00004517          	auipc	a0,0x4
    80004100:	04c50513          	addi	a0,a0,76 # 80008148 <CONSOLE_STATUS+0x138>
    80004104:	00001097          	auipc	ra,0x1
    80004108:	0f4080e7          	jalr	244(ra) # 800051f8 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    8000410c:	03800513          	li	a0,56
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	d5c080e7          	jalr	-676(ra) # 80002e6c <_Znwm>
    80004118:	00050913          	mv	s2,a0
    8000411c:	00a00593          	li	a1,10
    80004120:	00002097          	auipc	ra,0x2
    80004124:	800080e7          	jalr	-2048(ra) # 80005920 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004128:	00000593          	li	a1,0
    8000412c:	00006517          	auipc	a0,0x6
    80004130:	5a450513          	addi	a0,a0,1444 # 8000a6d0 <waitForAll>
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	238080e7          	jalr	568(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    8000413c:	00500793          	li	a5,5
    80004140:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80004144:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80004148:	00006797          	auipc	a5,0x6
    8000414c:	5887b783          	ld	a5,1416(a5) # 8000a6d0 <waitForAll>
    80004150:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004154:	fc040613          	addi	a2,s0,-64
    80004158:	00000597          	auipc	a1,0x0
    8000415c:	da058593          	addi	a1,a1,-608 # 80003ef8 <_Z8consumerPv>
    80004160:	fd840513          	addi	a0,s0,-40
    80004164:	ffffd097          	auipc	ra,0xffffd
    80004168:	140080e7          	jalr	320(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    8000416c:	00000493          	li	s1,0
    80004170:	00400793          	li	a5,4
    80004174:	0697c063          	blt	a5,s1,800041d4 <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80004178:	00149613          	slli	a2,s1,0x1
    8000417c:	009607b3          	add	a5,a2,s1
    80004180:	00379793          	slli	a5,a5,0x3
    80004184:	fe040713          	addi	a4,s0,-32
    80004188:	00f707b3          	add	a5,a4,a5
    8000418c:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80004190:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80004194:	00006717          	auipc	a4,0x6
    80004198:	53c73703          	ld	a4,1340(a4) # 8000a6d0 <waitForAll>
    8000419c:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    800041a0:	00349793          	slli	a5,s1,0x3
    800041a4:	00960633          	add	a2,a2,s1
    800041a8:	00361613          	slli	a2,a2,0x3
    800041ac:	f4840713          	addi	a4,s0,-184
    800041b0:	00c70633          	add	a2,a4,a2
    800041b4:	00000597          	auipc	a1,0x0
    800041b8:	ca058593          	addi	a1,a1,-864 # 80003e54 <_Z8producerPv>
    800041bc:	f2040513          	addi	a0,s0,-224
    800041c0:	00f50533          	add	a0,a0,a5
    800041c4:	ffffd097          	auipc	ra,0xffffd
    800041c8:	0e0080e7          	jalr	224(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800041cc:	0014849b          	addiw	s1,s1,1
    800041d0:	fa1ff06f          	j	80004170 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    800041d4:	ffffd097          	auipc	ra,0xffffd
    800041d8:	150080e7          	jalr	336(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    800041dc:	00000493          	li	s1,0
    800041e0:	00500793          	li	a5,5
    800041e4:	0097ce63          	blt	a5,s1,80004200 <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    800041e8:	00006517          	auipc	a0,0x6
    800041ec:	4e853503          	ld	a0,1256(a0) # 8000a6d0 <waitForAll>
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	1e0080e7          	jalr	480(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800041f8:	0014849b          	addiw	s1,s1,1
    800041fc:	fe5ff06f          	j	800041e0 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    80004200:	00006517          	auipc	a0,0x6
    80004204:	4d053503          	ld	a0,1232(a0) # 8000a6d0 <waitForAll>
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	19c080e7          	jalr	412(ra) # 800013a4 <sem_close>
    80004210:	0d813083          	ld	ra,216(sp)
    80004214:	0d013403          	ld	s0,208(sp)
    80004218:	0c813483          	ld	s1,200(sp)
    8000421c:	0c013903          	ld	s2,192(sp)
    80004220:	0e010113          	addi	sp,sp,224
    80004224:	00008067          	ret
    80004228:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000422c:	00090513          	mv	a0,s2
    80004230:	fffff097          	auipc	ra,0xfffff
    80004234:	c64080e7          	jalr	-924(ra) # 80002e94 <_ZdlPv>
    80004238:	00048513          	mv	a0,s1
    8000423c:	00007097          	auipc	ra,0x7
    80004240:	57c080e7          	jalr	1404(ra) # 8000b7b8 <_Unwind_Resume>

0000000080004244 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	01213023          	sd	s2,0(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004260:	00100793          	li	a5,1
    80004264:	02a7f863          	bgeu	a5,a0,80004294 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004268:	00a00793          	li	a5,10
    8000426c:	02f577b3          	remu	a5,a0,a5
    80004270:	02078e63          	beqz	a5,800042ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004274:	fff48513          	addi	a0,s1,-1
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	fcc080e7          	jalr	-52(ra) # 80004244 <_ZL9fibonaccim>
    80004280:	00050913          	mv	s2,a0
    80004284:	ffe48513          	addi	a0,s1,-2
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	fbc080e7          	jalr	-68(ra) # 80004244 <_ZL9fibonaccim>
    80004290:	00a90533          	add	a0,s2,a0
}
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	00013903          	ld	s2,0(sp)
    800042a4:	02010113          	addi	sp,sp,32
    800042a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	078080e7          	jalr	120(ra) # 80001324 <thread_dispatch>
    800042b4:	fc1ff06f          	j	80004274 <_ZL9fibonaccim+0x30>

00000000800042b8 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	01213023          	sd	s2,0(sp)
    800042cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800042d0:	00000913          	li	s2,0
    800042d4:	0380006f          	j	8000430c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800042d8:	ffffd097          	auipc	ra,0xffffd
    800042dc:	04c080e7          	jalr	76(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800042e0:	00148493          	addi	s1,s1,1
    800042e4:	000027b7          	lui	a5,0x2
    800042e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042ec:	0097ee63          	bltu	a5,s1,80004308 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042f0:	00000713          	li	a4,0
    800042f4:	000077b7          	lui	a5,0x7
    800042f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042fc:	fce7eee3          	bltu	a5,a4,800042d8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004300:	00170713          	addi	a4,a4,1
    80004304:	ff1ff06f          	j	800042f4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004308:	00190913          	addi	s2,s2,1
    8000430c:	00900793          	li	a5,9
    80004310:	0527e063          	bltu	a5,s2,80004350 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004314:	00004517          	auipc	a0,0x4
    80004318:	f2450513          	addi	a0,a0,-220 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	edc080e7          	jalr	-292(ra) # 800051f8 <_Z11printStringPKc>
    80004324:	00000613          	li	a2,0
    80004328:	00a00593          	li	a1,10
    8000432c:	0009051b          	sext.w	a0,s2
    80004330:	00001097          	auipc	ra,0x1
    80004334:	060080e7          	jalr	96(ra) # 80005390 <_Z8printIntiii>
    80004338:	00004517          	auipc	a0,0x4
    8000433c:	e4850513          	addi	a0,a0,-440 # 80008180 <CONSOLE_STATUS+0x170>
    80004340:	00001097          	auipc	ra,0x1
    80004344:	eb8080e7          	jalr	-328(ra) # 800051f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004348:	00000493          	li	s1,0
    8000434c:	f99ff06f          	j	800042e4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004350:	00004517          	auipc	a0,0x4
    80004354:	ef050513          	addi	a0,a0,-272 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	ea0080e7          	jalr	-352(ra) # 800051f8 <_Z11printStringPKc>
    finishedA = true;
    80004360:	00100793          	li	a5,1
    80004364:	00006717          	auipc	a4,0x6
    80004368:	36f70a23          	sb	a5,884(a4) # 8000a6d8 <_ZL9finishedA>
}
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	00013903          	ld	s2,0(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	01213023          	sd	s2,0(sp)
    80004398:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000439c:	00000913          	li	s2,0
    800043a0:	0380006f          	j	800043d8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800043a4:	ffffd097          	auipc	ra,0xffffd
    800043a8:	f80080e7          	jalr	-128(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800043ac:	00148493          	addi	s1,s1,1
    800043b0:	000027b7          	lui	a5,0x2
    800043b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043b8:	0097ee63          	bltu	a5,s1,800043d4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800043bc:	00000713          	li	a4,0
    800043c0:	000077b7          	lui	a5,0x7
    800043c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800043c8:	fce7eee3          	bltu	a5,a4,800043a4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800043cc:	00170713          	addi	a4,a4,1
    800043d0:	ff1ff06f          	j	800043c0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800043d4:	00190913          	addi	s2,s2,1
    800043d8:	00f00793          	li	a5,15
    800043dc:	0527e063          	bltu	a5,s2,8000441c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800043e0:	00004517          	auipc	a0,0x4
    800043e4:	e7050513          	addi	a0,a0,-400 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	e10080e7          	jalr	-496(ra) # 800051f8 <_Z11printStringPKc>
    800043f0:	00000613          	li	a2,0
    800043f4:	00a00593          	li	a1,10
    800043f8:	0009051b          	sext.w	a0,s2
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	f94080e7          	jalr	-108(ra) # 80005390 <_Z8printIntiii>
    80004404:	00004517          	auipc	a0,0x4
    80004408:	d7c50513          	addi	a0,a0,-644 # 80008180 <CONSOLE_STATUS+0x170>
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	dec080e7          	jalr	-532(ra) # 800051f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004414:	00000493          	li	s1,0
    80004418:	f99ff06f          	j	800043b0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000441c:	00004517          	auipc	a0,0x4
    80004420:	e3c50513          	addi	a0,a0,-452 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004424:	00001097          	auipc	ra,0x1
    80004428:	dd4080e7          	jalr	-556(ra) # 800051f8 <_Z11printStringPKc>
    finishedB = true;
    8000442c:	00100793          	li	a5,1
    80004430:	00006717          	auipc	a4,0x6
    80004434:	2af704a3          	sb	a5,681(a4) # 8000a6d9 <_ZL9finishedB>
    thread_dispatch();
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	eec080e7          	jalr	-276(ra) # 80001324 <thread_dispatch>
}
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	00813483          	ld	s1,8(sp)
    8000444c:	00013903          	ld	s2,0(sp)
    80004450:	02010113          	addi	sp,sp,32
    80004454:	00008067          	ret

0000000080004458 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004470:	00000493          	li	s1,0
    80004474:	0400006f          	j	800044b4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004478:	00004517          	auipc	a0,0x4
    8000447c:	df050513          	addi	a0,a0,-528 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	d78080e7          	jalr	-648(ra) # 800051f8 <_Z11printStringPKc>
    80004488:	00000613          	li	a2,0
    8000448c:	00a00593          	li	a1,10
    80004490:	00048513          	mv	a0,s1
    80004494:	00001097          	auipc	ra,0x1
    80004498:	efc080e7          	jalr	-260(ra) # 80005390 <_Z8printIntiii>
    8000449c:	00004517          	auipc	a0,0x4
    800044a0:	ce450513          	addi	a0,a0,-796 # 80008180 <CONSOLE_STATUS+0x170>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	d54080e7          	jalr	-684(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	0ff4f493          	andi	s1,s1,255
    800044b4:	00200793          	li	a5,2
    800044b8:	fc97f0e3          	bgeu	a5,s1,80004478 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800044bc:	00004517          	auipc	a0,0x4
    800044c0:	db450513          	addi	a0,a0,-588 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	d34080e7          	jalr	-716(ra) # 800051f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044cc:	00700313          	li	t1,7
    thread_dispatch();
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	e54080e7          	jalr	-428(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044d8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800044dc:	00004517          	auipc	a0,0x4
    800044e0:	da450513          	addi	a0,a0,-604 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	d14080e7          	jalr	-748(ra) # 800051f8 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	0009051b          	sext.w	a0,s2
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	e98080e7          	jalr	-360(ra) # 80005390 <_Z8printIntiii>
    80004500:	00004517          	auipc	a0,0x4
    80004504:	c8050513          	addi	a0,a0,-896 # 80008180 <CONSOLE_STATUS+0x170>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	cf0080e7          	jalr	-784(ra) # 800051f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004510:	00c00513          	li	a0,12
    80004514:	00000097          	auipc	ra,0x0
    80004518:	d30080e7          	jalr	-720(ra) # 80004244 <_ZL9fibonaccim>
    8000451c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004520:	00004517          	auipc	a0,0x4
    80004524:	d6850513          	addi	a0,a0,-664 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	cd0080e7          	jalr	-816(ra) # 800051f8 <_Z11printStringPKc>
    80004530:	00000613          	li	a2,0
    80004534:	00a00593          	li	a1,10
    80004538:	0009051b          	sext.w	a0,s2
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	e54080e7          	jalr	-428(ra) # 80005390 <_Z8printIntiii>
    80004544:	00004517          	auipc	a0,0x4
    80004548:	c3c50513          	addi	a0,a0,-964 # 80008180 <CONSOLE_STATUS+0x170>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	cac080e7          	jalr	-852(ra) # 800051f8 <_Z11printStringPKc>
    80004554:	0400006f          	j	80004594 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004558:	00004517          	auipc	a0,0x4
    8000455c:	d1050513          	addi	a0,a0,-752 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	c98080e7          	jalr	-872(ra) # 800051f8 <_Z11printStringPKc>
    80004568:	00000613          	li	a2,0
    8000456c:	00a00593          	li	a1,10
    80004570:	00048513          	mv	a0,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	e1c080e7          	jalr	-484(ra) # 80005390 <_Z8printIntiii>
    8000457c:	00004517          	auipc	a0,0x4
    80004580:	c0450513          	addi	a0,a0,-1020 # 80008180 <CONSOLE_STATUS+0x170>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	c74080e7          	jalr	-908(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000458c:	0014849b          	addiw	s1,s1,1
    80004590:	0ff4f493          	andi	s1,s1,255
    80004594:	00500793          	li	a5,5
    80004598:	fc97f0e3          	bgeu	a5,s1,80004558 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000459c:	00004517          	auipc	a0,0x4
    800045a0:	ca450513          	addi	a0,a0,-860 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	c54080e7          	jalr	-940(ra) # 800051f8 <_Z11printStringPKc>
    finishedC = true;
    800045ac:	00100793          	li	a5,1
    800045b0:	00006717          	auipc	a4,0x6
    800045b4:	12f70523          	sb	a5,298(a4) # 8000a6da <_ZL9finishedC>
    thread_dispatch();
    800045b8:	ffffd097          	auipc	ra,0xffffd
    800045bc:	d6c080e7          	jalr	-660(ra) # 80001324 <thread_dispatch>
}
    800045c0:	01813083          	ld	ra,24(sp)
    800045c4:	01013403          	ld	s0,16(sp)
    800045c8:	00813483          	ld	s1,8(sp)
    800045cc:	00013903          	ld	s2,0(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00113c23          	sd	ra,24(sp)
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	01213023          	sd	s2,0(sp)
    800045ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045f0:	00a00493          	li	s1,10
    800045f4:	0400006f          	j	80004634 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045f8:	00004517          	auipc	a0,0x4
    800045fc:	ca050513          	addi	a0,a0,-864 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	bf8080e7          	jalr	-1032(ra) # 800051f8 <_Z11printStringPKc>
    80004608:	00000613          	li	a2,0
    8000460c:	00a00593          	li	a1,10
    80004610:	00048513          	mv	a0,s1
    80004614:	00001097          	auipc	ra,0x1
    80004618:	d7c080e7          	jalr	-644(ra) # 80005390 <_Z8printIntiii>
    8000461c:	00004517          	auipc	a0,0x4
    80004620:	b6450513          	addi	a0,a0,-1180 # 80008180 <CONSOLE_STATUS+0x170>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	bd4080e7          	jalr	-1068(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000462c:	0014849b          	addiw	s1,s1,1
    80004630:	0ff4f493          	andi	s1,s1,255
    80004634:	00c00793          	li	a5,12
    80004638:	fc97f0e3          	bgeu	a5,s1,800045f8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000463c:	00004517          	auipc	a0,0x4
    80004640:	c6450513          	addi	a0,a0,-924 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	bb4080e7          	jalr	-1100(ra) # 800051f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000464c:	00500313          	li	t1,5
    thread_dispatch();
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	cd4080e7          	jalr	-812(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004658:	01000513          	li	a0,16
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	be8080e7          	jalr	-1048(ra) # 80004244 <_ZL9fibonaccim>
    80004664:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004668:	00004517          	auipc	a0,0x4
    8000466c:	c4850513          	addi	a0,a0,-952 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	b88080e7          	jalr	-1144(ra) # 800051f8 <_Z11printStringPKc>
    80004678:	00000613          	li	a2,0
    8000467c:	00a00593          	li	a1,10
    80004680:	0009051b          	sext.w	a0,s2
    80004684:	00001097          	auipc	ra,0x1
    80004688:	d0c080e7          	jalr	-756(ra) # 80005390 <_Z8printIntiii>
    8000468c:	00004517          	auipc	a0,0x4
    80004690:	af450513          	addi	a0,a0,-1292 # 80008180 <CONSOLE_STATUS+0x170>
    80004694:	00001097          	auipc	ra,0x1
    80004698:	b64080e7          	jalr	-1180(ra) # 800051f8 <_Z11printStringPKc>
    8000469c:	0400006f          	j	800046dc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800046a0:	00004517          	auipc	a0,0x4
    800046a4:	bf850513          	addi	a0,a0,-1032 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	b50080e7          	jalr	-1200(ra) # 800051f8 <_Z11printStringPKc>
    800046b0:	00000613          	li	a2,0
    800046b4:	00a00593          	li	a1,10
    800046b8:	00048513          	mv	a0,s1
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	cd4080e7          	jalr	-812(ra) # 80005390 <_Z8printIntiii>
    800046c4:	00004517          	auipc	a0,0x4
    800046c8:	abc50513          	addi	a0,a0,-1348 # 80008180 <CONSOLE_STATUS+0x170>
    800046cc:	00001097          	auipc	ra,0x1
    800046d0:	b2c080e7          	jalr	-1236(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800046d4:	0014849b          	addiw	s1,s1,1
    800046d8:	0ff4f493          	andi	s1,s1,255
    800046dc:	00f00793          	li	a5,15
    800046e0:	fc97f0e3          	bgeu	a5,s1,800046a0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800046e4:	00004517          	auipc	a0,0x4
    800046e8:	bdc50513          	addi	a0,a0,-1060 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	b0c080e7          	jalr	-1268(ra) # 800051f8 <_Z11printStringPKc>
    finishedD = true;
    800046f4:	00100793          	li	a5,1
    800046f8:	00006717          	auipc	a4,0x6
    800046fc:	fef701a3          	sb	a5,-29(a4) # 8000a6db <_ZL9finishedD>
    thread_dispatch();
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	c24080e7          	jalr	-988(ra) # 80001324 <thread_dispatch>
}
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	00013903          	ld	s2,0(sp)
    80004718:	02010113          	addi	sp,sp,32
    8000471c:	00008067          	ret

0000000080004720 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004720:	fc010113          	addi	sp,sp,-64
    80004724:	02113c23          	sd	ra,56(sp)
    80004728:	02813823          	sd	s0,48(sp)
    8000472c:	02913423          	sd	s1,40(sp)
    80004730:	03213023          	sd	s2,32(sp)
    80004734:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004738:	02000513          	li	a0,32
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	730080e7          	jalr	1840(ra) # 80002e6c <_Znwm>
    80004744:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004748:	fffff097          	auipc	ra,0xfffff
    8000474c:	8f0080e7          	jalr	-1808(ra) # 80003038 <_ZN6ThreadC1Ev>
    80004750:	00006797          	auipc	a5,0x6
    80004754:	de078793          	addi	a5,a5,-544 # 8000a530 <_ZTV7WorkerA+0x10>
    80004758:	00f4b023          	sd	a5,0(s1)
    8000475c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004760:	00004517          	auipc	a0,0x4
    80004764:	b7050513          	addi	a0,a0,-1168 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	a90080e7          	jalr	-1392(ra) # 800051f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004770:	02000513          	li	a0,32
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	6f8080e7          	jalr	1784(ra) # 80002e6c <_Znwm>
    8000477c:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004780:	fffff097          	auipc	ra,0xfffff
    80004784:	8b8080e7          	jalr	-1864(ra) # 80003038 <_ZN6ThreadC1Ev>
    80004788:	00006797          	auipc	a5,0x6
    8000478c:	dd078793          	addi	a5,a5,-560 # 8000a558 <_ZTV7WorkerB+0x10>
    80004790:	00f4b023          	sd	a5,0(s1)
    80004794:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004798:	00004517          	auipc	a0,0x4
    8000479c:	b5050513          	addi	a0,a0,-1200 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	a58080e7          	jalr	-1448(ra) # 800051f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800047a8:	02000513          	li	a0,32
    800047ac:	ffffe097          	auipc	ra,0xffffe
    800047b0:	6c0080e7          	jalr	1728(ra) # 80002e6c <_Znwm>
    800047b4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	880080e7          	jalr	-1920(ra) # 80003038 <_ZN6ThreadC1Ev>
    800047c0:	00006797          	auipc	a5,0x6
    800047c4:	dc078793          	addi	a5,a5,-576 # 8000a580 <_ZTV7WorkerC+0x10>
    800047c8:	00f4b023          	sd	a5,0(s1)
    800047cc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800047d0:	00004517          	auipc	a0,0x4
    800047d4:	b3050513          	addi	a0,a0,-1232 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	a20080e7          	jalr	-1504(ra) # 800051f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800047e0:	02000513          	li	a0,32
    800047e4:	ffffe097          	auipc	ra,0xffffe
    800047e8:	688080e7          	jalr	1672(ra) # 80002e6c <_Znwm>
    800047ec:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	848080e7          	jalr	-1976(ra) # 80003038 <_ZN6ThreadC1Ev>
    800047f8:	00006797          	auipc	a5,0x6
    800047fc:	db078793          	addi	a5,a5,-592 # 8000a5a8 <_ZTV7WorkerD+0x10>
    80004800:	00f4b023          	sd	a5,0(s1)
    80004804:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004808:	00004517          	auipc	a0,0x4
    8000480c:	b1050513          	addi	a0,a0,-1264 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	9e8080e7          	jalr	-1560(ra) # 800051f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004818:	00000493          	li	s1,0
    8000481c:	00300793          	li	a5,3
    80004820:	0297c663          	blt	a5,s1,8000484c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004824:	00349793          	slli	a5,s1,0x3
    80004828:	fe040713          	addi	a4,s0,-32
    8000482c:	00f707b3          	add	a5,a4,a5
    80004830:	fe07b503          	ld	a0,-32(a5)
    80004834:	ffffe097          	auipc	ra,0xffffe
    80004838:	708080e7          	jalr	1800(ra) # 80002f3c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000483c:	0014849b          	addiw	s1,s1,1
    80004840:	fddff06f          	j	8000481c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	73c080e7          	jalr	1852(ra) # 80002f80 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000484c:	00006797          	auipc	a5,0x6
    80004850:	e8c7c783          	lbu	a5,-372(a5) # 8000a6d8 <_ZL9finishedA>
    80004854:	fe0788e3          	beqz	a5,80004844 <_Z20Threads_CPP_API_testv+0x124>
    80004858:	00006797          	auipc	a5,0x6
    8000485c:	e817c783          	lbu	a5,-383(a5) # 8000a6d9 <_ZL9finishedB>
    80004860:	fe0782e3          	beqz	a5,80004844 <_Z20Threads_CPP_API_testv+0x124>
    80004864:	00006797          	auipc	a5,0x6
    80004868:	e767c783          	lbu	a5,-394(a5) # 8000a6da <_ZL9finishedC>
    8000486c:	fc078ce3          	beqz	a5,80004844 <_Z20Threads_CPP_API_testv+0x124>
    80004870:	00006797          	auipc	a5,0x6
    80004874:	e6b7c783          	lbu	a5,-405(a5) # 8000a6db <_ZL9finishedD>
    80004878:	fc0786e3          	beqz	a5,80004844 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    8000487c:	fc040493          	addi	s1,s0,-64
    80004880:	0080006f          	j	80004888 <_Z20Threads_CPP_API_testv+0x168>
    80004884:	00848493          	addi	s1,s1,8
    80004888:	fe040793          	addi	a5,s0,-32
    8000488c:	08f48663          	beq	s1,a5,80004918 <_Z20Threads_CPP_API_testv+0x1f8>
    80004890:	0004b503          	ld	a0,0(s1)
    80004894:	fe0508e3          	beqz	a0,80004884 <_Z20Threads_CPP_API_testv+0x164>
    80004898:	00053783          	ld	a5,0(a0)
    8000489c:	0087b783          	ld	a5,8(a5)
    800048a0:	000780e7          	jalr	a5
    800048a4:	fe1ff06f          	j	80004884 <_Z20Threads_CPP_API_testv+0x164>
    800048a8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800048ac:	00048513          	mv	a0,s1
    800048b0:	ffffe097          	auipc	ra,0xffffe
    800048b4:	5e4080e7          	jalr	1508(ra) # 80002e94 <_ZdlPv>
    800048b8:	00090513          	mv	a0,s2
    800048bc:	00007097          	auipc	ra,0x7
    800048c0:	efc080e7          	jalr	-260(ra) # 8000b7b8 <_Unwind_Resume>
    800048c4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800048c8:	00048513          	mv	a0,s1
    800048cc:	ffffe097          	auipc	ra,0xffffe
    800048d0:	5c8080e7          	jalr	1480(ra) # 80002e94 <_ZdlPv>
    800048d4:	00090513          	mv	a0,s2
    800048d8:	00007097          	auipc	ra,0x7
    800048dc:	ee0080e7          	jalr	-288(ra) # 8000b7b8 <_Unwind_Resume>
    800048e0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800048e4:	00048513          	mv	a0,s1
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	5ac080e7          	jalr	1452(ra) # 80002e94 <_ZdlPv>
    800048f0:	00090513          	mv	a0,s2
    800048f4:	00007097          	auipc	ra,0x7
    800048f8:	ec4080e7          	jalr	-316(ra) # 8000b7b8 <_Unwind_Resume>
    800048fc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004900:	00048513          	mv	a0,s1
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	590080e7          	jalr	1424(ra) # 80002e94 <_ZdlPv>
    8000490c:	00090513          	mv	a0,s2
    80004910:	00007097          	auipc	ra,0x7
    80004914:	ea8080e7          	jalr	-344(ra) # 8000b7b8 <_Unwind_Resume>
    80004918:	03813083          	ld	ra,56(sp)
    8000491c:	03013403          	ld	s0,48(sp)
    80004920:	02813483          	ld	s1,40(sp)
    80004924:	02013903          	ld	s2,32(sp)
    80004928:	04010113          	addi	sp,sp,64
    8000492c:	00008067          	ret

0000000080004930 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004930:	ff010113          	addi	sp,sp,-16
    80004934:	00113423          	sd	ra,8(sp)
    80004938:	00813023          	sd	s0,0(sp)
    8000493c:	01010413          	addi	s0,sp,16
    80004940:	00006797          	auipc	a5,0x6
    80004944:	bf078793          	addi	a5,a5,-1040 # 8000a530 <_ZTV7WorkerA+0x10>
    80004948:	00f53023          	sd	a5,0(a0)
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	464080e7          	jalr	1124(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004954:	00813083          	ld	ra,8(sp)
    80004958:	00013403          	ld	s0,0(sp)
    8000495c:	01010113          	addi	sp,sp,16
    80004960:	00008067          	ret

0000000080004964 <_ZN7WorkerAD0Ev>:
    80004964:	fe010113          	addi	sp,sp,-32
    80004968:	00113c23          	sd	ra,24(sp)
    8000496c:	00813823          	sd	s0,16(sp)
    80004970:	00913423          	sd	s1,8(sp)
    80004974:	02010413          	addi	s0,sp,32
    80004978:	00050493          	mv	s1,a0
    8000497c:	00006797          	auipc	a5,0x6
    80004980:	bb478793          	addi	a5,a5,-1100 # 8000a530 <_ZTV7WorkerA+0x10>
    80004984:	00f53023          	sd	a5,0(a0)
    80004988:	ffffe097          	auipc	ra,0xffffe
    8000498c:	428080e7          	jalr	1064(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004990:	00048513          	mv	a0,s1
    80004994:	ffffe097          	auipc	ra,0xffffe
    80004998:	500080e7          	jalr	1280(ra) # 80002e94 <_ZdlPv>
    8000499c:	01813083          	ld	ra,24(sp)
    800049a0:	01013403          	ld	s0,16(sp)
    800049a4:	00813483          	ld	s1,8(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret

00000000800049b0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800049b0:	ff010113          	addi	sp,sp,-16
    800049b4:	00113423          	sd	ra,8(sp)
    800049b8:	00813023          	sd	s0,0(sp)
    800049bc:	01010413          	addi	s0,sp,16
    800049c0:	00006797          	auipc	a5,0x6
    800049c4:	b9878793          	addi	a5,a5,-1128 # 8000a558 <_ZTV7WorkerB+0x10>
    800049c8:	00f53023          	sd	a5,0(a0)
    800049cc:	ffffe097          	auipc	ra,0xffffe
    800049d0:	3e4080e7          	jalr	996(ra) # 80002db0 <_ZN6ThreadD1Ev>
    800049d4:	00813083          	ld	ra,8(sp)
    800049d8:	00013403          	ld	s0,0(sp)
    800049dc:	01010113          	addi	sp,sp,16
    800049e0:	00008067          	ret

00000000800049e4 <_ZN7WorkerBD0Ev>:
    800049e4:	fe010113          	addi	sp,sp,-32
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	00813823          	sd	s0,16(sp)
    800049f0:	00913423          	sd	s1,8(sp)
    800049f4:	02010413          	addi	s0,sp,32
    800049f8:	00050493          	mv	s1,a0
    800049fc:	00006797          	auipc	a5,0x6
    80004a00:	b5c78793          	addi	a5,a5,-1188 # 8000a558 <_ZTV7WorkerB+0x10>
    80004a04:	00f53023          	sd	a5,0(a0)
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	3a8080e7          	jalr	936(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004a10:	00048513          	mv	a0,s1
    80004a14:	ffffe097          	auipc	ra,0xffffe
    80004a18:	480080e7          	jalr	1152(ra) # 80002e94 <_ZdlPv>
    80004a1c:	01813083          	ld	ra,24(sp)
    80004a20:	01013403          	ld	s0,16(sp)
    80004a24:	00813483          	ld	s1,8(sp)
    80004a28:	02010113          	addi	sp,sp,32
    80004a2c:	00008067          	ret

0000000080004a30 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004a30:	ff010113          	addi	sp,sp,-16
    80004a34:	00113423          	sd	ra,8(sp)
    80004a38:	00813023          	sd	s0,0(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	00006797          	auipc	a5,0x6
    80004a44:	b4078793          	addi	a5,a5,-1216 # 8000a580 <_ZTV7WorkerC+0x10>
    80004a48:	00f53023          	sd	a5,0(a0)
    80004a4c:	ffffe097          	auipc	ra,0xffffe
    80004a50:	364080e7          	jalr	868(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004a54:	00813083          	ld	ra,8(sp)
    80004a58:	00013403          	ld	s0,0(sp)
    80004a5c:	01010113          	addi	sp,sp,16
    80004a60:	00008067          	ret

0000000080004a64 <_ZN7WorkerCD0Ev>:
    80004a64:	fe010113          	addi	sp,sp,-32
    80004a68:	00113c23          	sd	ra,24(sp)
    80004a6c:	00813823          	sd	s0,16(sp)
    80004a70:	00913423          	sd	s1,8(sp)
    80004a74:	02010413          	addi	s0,sp,32
    80004a78:	00050493          	mv	s1,a0
    80004a7c:	00006797          	auipc	a5,0x6
    80004a80:	b0478793          	addi	a5,a5,-1276 # 8000a580 <_ZTV7WorkerC+0x10>
    80004a84:	00f53023          	sd	a5,0(a0)
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	328080e7          	jalr	808(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004a90:	00048513          	mv	a0,s1
    80004a94:	ffffe097          	auipc	ra,0xffffe
    80004a98:	400080e7          	jalr	1024(ra) # 80002e94 <_ZdlPv>
    80004a9c:	01813083          	ld	ra,24(sp)
    80004aa0:	01013403          	ld	s0,16(sp)
    80004aa4:	00813483          	ld	s1,8(sp)
    80004aa8:	02010113          	addi	sp,sp,32
    80004aac:	00008067          	ret

0000000080004ab0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004ab0:	ff010113          	addi	sp,sp,-16
    80004ab4:	00113423          	sd	ra,8(sp)
    80004ab8:	00813023          	sd	s0,0(sp)
    80004abc:	01010413          	addi	s0,sp,16
    80004ac0:	00006797          	auipc	a5,0x6
    80004ac4:	ae878793          	addi	a5,a5,-1304 # 8000a5a8 <_ZTV7WorkerD+0x10>
    80004ac8:	00f53023          	sd	a5,0(a0)
    80004acc:	ffffe097          	auipc	ra,0xffffe
    80004ad0:	2e4080e7          	jalr	740(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004ad4:	00813083          	ld	ra,8(sp)
    80004ad8:	00013403          	ld	s0,0(sp)
    80004adc:	01010113          	addi	sp,sp,16
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZN7WorkerDD0Ev>:
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	02010413          	addi	s0,sp,32
    80004af8:	00050493          	mv	s1,a0
    80004afc:	00006797          	auipc	a5,0x6
    80004b00:	aac78793          	addi	a5,a5,-1364 # 8000a5a8 <_ZTV7WorkerD+0x10>
    80004b04:	00f53023          	sd	a5,0(a0)
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	2a8080e7          	jalr	680(ra) # 80002db0 <_ZN6ThreadD1Ev>
    80004b10:	00048513          	mv	a0,s1
    80004b14:	ffffe097          	auipc	ra,0xffffe
    80004b18:	380080e7          	jalr	896(ra) # 80002e94 <_ZdlPv>
    80004b1c:	01813083          	ld	ra,24(sp)
    80004b20:	01013403          	ld	s0,16(sp)
    80004b24:	00813483          	ld	s1,8(sp)
    80004b28:	02010113          	addi	sp,sp,32
    80004b2c:	00008067          	ret

0000000080004b30 <_ZN7WorkerA3runEv>:
    void run() override {
    80004b30:	ff010113          	addi	sp,sp,-16
    80004b34:	00113423          	sd	ra,8(sp)
    80004b38:	00813023          	sd	s0,0(sp)
    80004b3c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004b40:	00000593          	li	a1,0
    80004b44:	fffff097          	auipc	ra,0xfffff
    80004b48:	774080e7          	jalr	1908(ra) # 800042b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004b4c:	00813083          	ld	ra,8(sp)
    80004b50:	00013403          	ld	s0,0(sp)
    80004b54:	01010113          	addi	sp,sp,16
    80004b58:	00008067          	ret

0000000080004b5c <_ZN7WorkerB3runEv>:
    void run() override {
    80004b5c:	ff010113          	addi	sp,sp,-16
    80004b60:	00113423          	sd	ra,8(sp)
    80004b64:	00813023          	sd	s0,0(sp)
    80004b68:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b6c:	00000593          	li	a1,0
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	814080e7          	jalr	-2028(ra) # 80004384 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004b78:	00813083          	ld	ra,8(sp)
    80004b7c:	00013403          	ld	s0,0(sp)
    80004b80:	01010113          	addi	sp,sp,16
    80004b84:	00008067          	ret

0000000080004b88 <_ZN7WorkerC3runEv>:
    void run() override {
    80004b88:	ff010113          	addi	sp,sp,-16
    80004b8c:	00113423          	sd	ra,8(sp)
    80004b90:	00813023          	sd	s0,0(sp)
    80004b94:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004b98:	00000593          	li	a1,0
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	8bc080e7          	jalr	-1860(ra) # 80004458 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004ba4:	00813083          	ld	ra,8(sp)
    80004ba8:	00013403          	ld	s0,0(sp)
    80004bac:	01010113          	addi	sp,sp,16
    80004bb0:	00008067          	ret

0000000080004bb4 <_ZN7WorkerD3runEv>:

    void run() override {
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00113423          	sd	ra,8(sp)
    80004bbc:	00813023          	sd	s0,0(sp)
    80004bc0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004bc4:	00000593          	li	a1,0
    80004bc8:	00000097          	auipc	ra,0x0
    80004bcc:	a10080e7          	jalr	-1520(ra) # 800045d8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004bd0:	00813083          	ld	ra,8(sp)
    80004bd4:	00013403          	ld	s0,0(sp)
    80004bd8:	01010113          	addi	sp,sp,16
    80004bdc:	00008067          	ret

0000000080004be0 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004be0:	fe010113          	addi	sp,sp,-32
    80004be4:	00113c23          	sd	ra,24(sp)
    80004be8:	00813823          	sd	s0,16(sp)
    80004bec:	00913423          	sd	s1,8(sp)
    80004bf0:	01213023          	sd	s2,0(sp)
    80004bf4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004bf8:	00000913          	li	s2,0
    80004bfc:	0340006f          	j	80004c30 <_Z11workerBodyAPv+0x50>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("A j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004c00:	ffffc097          	auipc	ra,0xffffc
    80004c04:	724080e7          	jalr	1828(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004c08:	00148493          	addi	s1,s1,1
    80004c0c:	1f300793          	li	a5,499
    80004c10:	0097ee63          	bltu	a5,s1,80004c2c <_Z11workerBodyAPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004c14:	00000713          	li	a4,0
    80004c18:	000017b7          	lui	a5,0x1
    80004c1c:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004c20:	fee7e0e3          	bltu	a5,a4,80004c00 <_Z11workerBodyAPv+0x20>
    80004c24:	00170713          	addi	a4,a4,1
    80004c28:	ff1ff06f          	j	80004c18 <_Z11workerBodyAPv+0x38>
    for (uint64 i = 0; i < 10; i++) {
    80004c2c:	00190913          	addi	s2,s2,1
    80004c30:	00900793          	li	a5,9
    80004c34:	0527e063          	bltu	a5,s2,80004c74 <_Z11workerBodyAPv+0x94>
        printString("A: i="); printInt(i); printString("\n");
    80004c38:	00003517          	auipc	a0,0x3
    80004c3c:	60050513          	addi	a0,a0,1536 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	5b8080e7          	jalr	1464(ra) # 800051f8 <_Z11printStringPKc>
    80004c48:	00000613          	li	a2,0
    80004c4c:	00a00593          	li	a1,10
    80004c50:	0009051b          	sext.w	a0,s2
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	73c080e7          	jalr	1852(ra) # 80005390 <_Z8printIntiii>
    80004c5c:	00003517          	auipc	a0,0x3
    80004c60:	52450513          	addi	a0,a0,1316 # 80008180 <CONSOLE_STATUS+0x170>
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	594080e7          	jalr	1428(ra) # 800051f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004c6c:	00000493          	li	s1,0
    80004c70:	f9dff06f          	j	80004c0c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004c74:	00003517          	auipc	a0,0x3
    80004c78:	5cc50513          	addi	a0,a0,1484 # 80008240 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	57c080e7          	jalr	1404(ra) # 800051f8 <_Z11printStringPKc>
    finishedA = true;
    80004c84:	00100793          	li	a5,1
    80004c88:	00006717          	auipc	a4,0x6
    80004c8c:	a4f70a23          	sb	a5,-1452(a4) # 8000a6dc <_ZL9finishedA>
}
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00813483          	ld	s1,8(sp)
    80004c9c:	00013903          	ld	s2,0(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cc0:	00000913          	li	s2,0
    80004cc4:	0340006f          	j	80004cf8 <_Z11workerBodyBPv+0x50>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 500; j++) {
            //Riscv::printString("B j : ");
            //Riscv::printInteger(j);
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    80004cc8:	ffffc097          	auipc	ra,0xffffc
    80004ccc:	65c080e7          	jalr	1628(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 500; j++) {
    80004cd0:	00148493          	addi	s1,s1,1
    80004cd4:	1f300793          	li	a5,499
    80004cd8:	0097ee63          	bltu	a5,s1,80004cf4 <_Z11workerBodyBPv+0x4c>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    80004cdc:	00000713          	li	a4,0
    80004ce0:	000017b7          	lui	a5,0x1
    80004ce4:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80004ce8:	fee7e0e3          	bltu	a5,a4,80004cc8 <_Z11workerBodyBPv+0x20>
    80004cec:	00170713          	addi	a4,a4,1
    80004cf0:	ff1ff06f          	j	80004ce0 <_Z11workerBodyBPv+0x38>
    for (uint64 i = 0; i < 16; i++) {
    80004cf4:	00190913          	addi	s2,s2,1
    80004cf8:	00f00793          	li	a5,15
    80004cfc:	0527e063          	bltu	a5,s2,80004d3c <_Z11workerBodyBPv+0x94>
        printString("B: i="); printInt(i); printString("\n");
    80004d00:	00003517          	auipc	a0,0x3
    80004d04:	55050513          	addi	a0,a0,1360 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	4f0080e7          	jalr	1264(ra) # 800051f8 <_Z11printStringPKc>
    80004d10:	00000613          	li	a2,0
    80004d14:	00a00593          	li	a1,10
    80004d18:	0009051b          	sext.w	a0,s2
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	674080e7          	jalr	1652(ra) # 80005390 <_Z8printIntiii>
    80004d24:	00003517          	auipc	a0,0x3
    80004d28:	45c50513          	addi	a0,a0,1116 # 80008180 <CONSOLE_STATUS+0x170>
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	4cc080e7          	jalr	1228(ra) # 800051f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 500; j++) {
    80004d34:	00000493          	li	s1,0
    80004d38:	f9dff06f          	j	80004cd4 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004d3c:	00003517          	auipc	a0,0x3
    80004d40:	51c50513          	addi	a0,a0,1308 # 80008258 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004d44:	00000097          	auipc	ra,0x0
    80004d48:	4b4080e7          	jalr	1204(ra) # 800051f8 <_Z11printStringPKc>
    finishedB = true;
    80004d4c:	00100793          	li	a5,1
    80004d50:	00006717          	auipc	a4,0x6
    80004d54:	98f706a3          	sb	a5,-1651(a4) # 8000a6dd <_ZL9finishedB>
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

0000000080004d78 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80004d78:	fe010113          	addi	sp,sp,-32
    80004d7c:	00113c23          	sd	ra,24(sp)
    80004d80:	00813823          	sd	s0,16(sp)
    80004d84:	00913423          	sd	s1,8(sp)
    80004d88:	01213023          	sd	s2,0(sp)
    80004d8c:	02010413          	addi	s0,sp,32
    80004d90:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d94:	00100793          	li	a5,1
    80004d98:	02a7f863          	bgeu	a5,a0,80004dc8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d9c:	00a00793          	li	a5,10
    80004da0:	02f577b3          	remu	a5,a0,a5
    80004da4:	02078e63          	beqz	a5,80004de0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004da8:	fff48513          	addi	a0,s1,-1
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	fcc080e7          	jalr	-52(ra) # 80004d78 <_ZL9fibonaccim>
    80004db4:	00050913          	mv	s2,a0
    80004db8:	ffe48513          	addi	a0,s1,-2
    80004dbc:	00000097          	auipc	ra,0x0
    80004dc0:	fbc080e7          	jalr	-68(ra) # 80004d78 <_ZL9fibonaccim>
    80004dc4:	00a90533          	add	a0,s2,a0
}
    80004dc8:	01813083          	ld	ra,24(sp)
    80004dcc:	01013403          	ld	s0,16(sp)
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	00013903          	ld	s2,0(sp)
    80004dd8:	02010113          	addi	sp,sp,32
    80004ddc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004de0:	ffffc097          	auipc	ra,0xffffc
    80004de4:	544080e7          	jalr	1348(ra) # 80001324 <thread_dispatch>
    80004de8:	fc1ff06f          	j	80004da8 <_ZL9fibonaccim+0x30>

0000000080004dec <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80004dec:	fe010113          	addi	sp,sp,-32
    80004df0:	00113c23          	sd	ra,24(sp)
    80004df4:	00813823          	sd	s0,16(sp)
    80004df8:	00913423          	sd	s1,8(sp)
    80004dfc:	01213023          	sd	s2,0(sp)
    80004e00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e04:	00000493          	li	s1,0
    80004e08:	0400006f          	j	80004e48 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004e0c:	00003517          	auipc	a0,0x3
    80004e10:	45c50513          	addi	a0,a0,1116 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004e14:	00000097          	auipc	ra,0x0
    80004e18:	3e4080e7          	jalr	996(ra) # 800051f8 <_Z11printStringPKc>
    80004e1c:	00000613          	li	a2,0
    80004e20:	00a00593          	li	a1,10
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00000097          	auipc	ra,0x0
    80004e2c:	568080e7          	jalr	1384(ra) # 80005390 <_Z8printIntiii>
    80004e30:	00003517          	auipc	a0,0x3
    80004e34:	35050513          	addi	a0,a0,848 # 80008180 <CONSOLE_STATUS+0x170>
    80004e38:	00000097          	auipc	ra,0x0
    80004e3c:	3c0080e7          	jalr	960(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e40:	0014849b          	addiw	s1,s1,1
    80004e44:	0ff4f493          	andi	s1,s1,255
    80004e48:	00200793          	li	a5,2
    80004e4c:	fc97f0e3          	bgeu	a5,s1,80004e0c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004e50:	00003517          	auipc	a0,0x3
    80004e54:	42050513          	addi	a0,a0,1056 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004e58:	00000097          	auipc	ra,0x0
    80004e5c:	3a0080e7          	jalr	928(ra) # 800051f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e60:	00700313          	li	t1,7
    thread_dispatch();
    80004e64:	ffffc097          	auipc	ra,0xffffc
    80004e68:	4c0080e7          	jalr	1216(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e6c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004e70:	00003517          	auipc	a0,0x3
    80004e74:	41050513          	addi	a0,a0,1040 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004e78:	00000097          	auipc	ra,0x0
    80004e7c:	380080e7          	jalr	896(ra) # 800051f8 <_Z11printStringPKc>
    80004e80:	00000613          	li	a2,0
    80004e84:	00a00593          	li	a1,10
    80004e88:	0009051b          	sext.w	a0,s2
    80004e8c:	00000097          	auipc	ra,0x0
    80004e90:	504080e7          	jalr	1284(ra) # 80005390 <_Z8printIntiii>
    80004e94:	00003517          	auipc	a0,0x3
    80004e98:	2ec50513          	addi	a0,a0,748 # 80008180 <CONSOLE_STATUS+0x170>
    80004e9c:	00000097          	auipc	ra,0x0
    80004ea0:	35c080e7          	jalr	860(ra) # 800051f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004ea4:	00c00513          	li	a0,12
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	ed0080e7          	jalr	-304(ra) # 80004d78 <_ZL9fibonaccim>
    80004eb0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004eb4:	00003517          	auipc	a0,0x3
    80004eb8:	3d450513          	addi	a0,a0,980 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004ebc:	00000097          	auipc	ra,0x0
    80004ec0:	33c080e7          	jalr	828(ra) # 800051f8 <_Z11printStringPKc>
    80004ec4:	00000613          	li	a2,0
    80004ec8:	00a00593          	li	a1,10
    80004ecc:	0009051b          	sext.w	a0,s2
    80004ed0:	00000097          	auipc	ra,0x0
    80004ed4:	4c0080e7          	jalr	1216(ra) # 80005390 <_Z8printIntiii>
    80004ed8:	00003517          	auipc	a0,0x3
    80004edc:	2a850513          	addi	a0,a0,680 # 80008180 <CONSOLE_STATUS+0x170>
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	318080e7          	jalr	792(ra) # 800051f8 <_Z11printStringPKc>
    80004ee8:	0400006f          	j	80004f28 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004eec:	00003517          	auipc	a0,0x3
    80004ef0:	37c50513          	addi	a0,a0,892 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	304080e7          	jalr	772(ra) # 800051f8 <_Z11printStringPKc>
    80004efc:	00000613          	li	a2,0
    80004f00:	00a00593          	li	a1,10
    80004f04:	00048513          	mv	a0,s1
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	488080e7          	jalr	1160(ra) # 80005390 <_Z8printIntiii>
    80004f10:	00003517          	auipc	a0,0x3
    80004f14:	27050513          	addi	a0,a0,624 # 80008180 <CONSOLE_STATUS+0x170>
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	2e0080e7          	jalr	736(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f20:	0014849b          	addiw	s1,s1,1
    80004f24:	0ff4f493          	andi	s1,s1,255
    80004f28:	00500793          	li	a5,5
    80004f2c:	fc97f0e3          	bgeu	a5,s1,80004eec <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80004f30:	00003517          	auipc	a0,0x3
    80004f34:	40050513          	addi	a0,a0,1024 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	2c0080e7          	jalr	704(ra) # 800051f8 <_Z11printStringPKc>
    finishedC = true;
    80004f40:	00100793          	li	a5,1
    80004f44:	00005717          	auipc	a4,0x5
    80004f48:	78f70d23          	sb	a5,1946(a4) # 8000a6de <_ZL9finishedC>
    thread_dispatch();
    80004f4c:	ffffc097          	auipc	ra,0xffffc
    80004f50:	3d8080e7          	jalr	984(ra) # 80001324 <thread_dispatch>
}
    80004f54:	01813083          	ld	ra,24(sp)
    80004f58:	01013403          	ld	s0,16(sp)
    80004f5c:	00813483          	ld	s1,8(sp)
    80004f60:	00013903          	ld	s2,0(sp)
    80004f64:	02010113          	addi	sp,sp,32
    80004f68:	00008067          	ret

0000000080004f6c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004f6c:	fe010113          	addi	sp,sp,-32
    80004f70:	00113c23          	sd	ra,24(sp)
    80004f74:	00813823          	sd	s0,16(sp)
    80004f78:	00913423          	sd	s1,8(sp)
    80004f7c:	01213023          	sd	s2,0(sp)
    80004f80:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f84:	00a00493          	li	s1,10
    80004f88:	0400006f          	j	80004fc8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f8c:	00003517          	auipc	a0,0x3
    80004f90:	30c50513          	addi	a0,a0,780 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	264080e7          	jalr	612(ra) # 800051f8 <_Z11printStringPKc>
    80004f9c:	00000613          	li	a2,0
    80004fa0:	00a00593          	li	a1,10
    80004fa4:	00048513          	mv	a0,s1
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	3e8080e7          	jalr	1000(ra) # 80005390 <_Z8printIntiii>
    80004fb0:	00003517          	auipc	a0,0x3
    80004fb4:	1d050513          	addi	a0,a0,464 # 80008180 <CONSOLE_STATUS+0x170>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	240080e7          	jalr	576(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004fc0:	0014849b          	addiw	s1,s1,1
    80004fc4:	0ff4f493          	andi	s1,s1,255
    80004fc8:	00c00793          	li	a5,12
    80004fcc:	fc97f0e3          	bgeu	a5,s1,80004f8c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004fd0:	00003517          	auipc	a0,0x3
    80004fd4:	2d050513          	addi	a0,a0,720 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	220080e7          	jalr	544(ra) # 800051f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004fe0:	00500313          	li	t1,5
    thread_dispatch();
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	340080e7          	jalr	832(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004fec:	01000513          	li	a0,16
    80004ff0:	00000097          	auipc	ra,0x0
    80004ff4:	d88080e7          	jalr	-632(ra) # 80004d78 <_ZL9fibonaccim>
    80004ff8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ffc:	00003517          	auipc	a0,0x3
    80005000:	2b450513          	addi	a0,a0,692 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80005004:	00000097          	auipc	ra,0x0
    80005008:	1f4080e7          	jalr	500(ra) # 800051f8 <_Z11printStringPKc>
    8000500c:	00000613          	li	a2,0
    80005010:	00a00593          	li	a1,10
    80005014:	0009051b          	sext.w	a0,s2
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	378080e7          	jalr	888(ra) # 80005390 <_Z8printIntiii>
    80005020:	00003517          	auipc	a0,0x3
    80005024:	16050513          	addi	a0,a0,352 # 80008180 <CONSOLE_STATUS+0x170>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	1d0080e7          	jalr	464(ra) # 800051f8 <_Z11printStringPKc>
    80005030:	0400006f          	j	80005070 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005034:	00003517          	auipc	a0,0x3
    80005038:	26450513          	addi	a0,a0,612 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	1bc080e7          	jalr	444(ra) # 800051f8 <_Z11printStringPKc>
    80005044:	00000613          	li	a2,0
    80005048:	00a00593          	li	a1,10
    8000504c:	00048513          	mv	a0,s1
    80005050:	00000097          	auipc	ra,0x0
    80005054:	340080e7          	jalr	832(ra) # 80005390 <_Z8printIntiii>
    80005058:	00003517          	auipc	a0,0x3
    8000505c:	12850513          	addi	a0,a0,296 # 80008180 <CONSOLE_STATUS+0x170>
    80005060:	00000097          	auipc	ra,0x0
    80005064:	198080e7          	jalr	408(ra) # 800051f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005068:	0014849b          	addiw	s1,s1,1
    8000506c:	0ff4f493          	andi	s1,s1,255
    80005070:	00f00793          	li	a5,15
    80005074:	fc97f0e3          	bgeu	a5,s1,80005034 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005078:	00003517          	auipc	a0,0x3
    8000507c:	24850513          	addi	a0,a0,584 # 800082c0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80005080:	00000097          	auipc	ra,0x0
    80005084:	178080e7          	jalr	376(ra) # 800051f8 <_Z11printStringPKc>
    finishedD = true;
    80005088:	00100793          	li	a5,1
    8000508c:	00005717          	auipc	a4,0x5
    80005090:	64f709a3          	sb	a5,1619(a4) # 8000a6df <_ZL9finishedD>
    thread_dispatch();
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	290080e7          	jalr	656(ra) # 80001324 <thread_dispatch>
}
    8000509c:	01813083          	ld	ra,24(sp)
    800050a0:	01013403          	ld	s0,16(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	00013903          	ld	s2,0(sp)
    800050ac:	02010113          	addi	sp,sp,32
    800050b0:	00008067          	ret

00000000800050b4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050b4:	fc010113          	addi	sp,sp,-64
    800050b8:	02113c23          	sd	ra,56(sp)
    800050bc:	02813823          	sd	s0,48(sp)
    800050c0:	02913423          	sd	s1,40(sp)
    800050c4:	03213023          	sd	s2,32(sp)
    800050c8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050cc:	00000613          	li	a2,0
    800050d0:	00000597          	auipc	a1,0x0
    800050d4:	b1058593          	addi	a1,a1,-1264 # 80004be0 <_Z11workerBodyAPv>
    800050d8:	fc040513          	addi	a0,s0,-64
    800050dc:	ffffc097          	auipc	ra,0xffffc
    800050e0:	1c8080e7          	jalr	456(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    800050e4:	00003517          	auipc	a0,0x3
    800050e8:	1ec50513          	addi	a0,a0,492 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	10c080e7          	jalr	268(ra) # 800051f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800050f4:	00000613          	li	a2,0
    800050f8:	00000597          	auipc	a1,0x0
    800050fc:	bb058593          	addi	a1,a1,-1104 # 80004ca8 <_Z11workerBodyBPv>
    80005100:	fc840513          	addi	a0,s0,-56
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	1a0080e7          	jalr	416(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    8000510c:	00003517          	auipc	a0,0x3
    80005110:	1dc50513          	addi	a0,a0,476 # 800082e8 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80005114:	00000097          	auipc	ra,0x0
    80005118:	0e4080e7          	jalr	228(ra) # 800051f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000511c:	00000613          	li	a2,0
    80005120:	00000597          	auipc	a1,0x0
    80005124:	ccc58593          	addi	a1,a1,-820 # 80004dec <_Z11workerBodyCPv>
    80005128:	fd040513          	addi	a0,s0,-48
    8000512c:	ffffc097          	auipc	ra,0xffffc
    80005130:	178080e7          	jalr	376(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80005134:	00003517          	auipc	a0,0x3
    80005138:	1cc50513          	addi	a0,a0,460 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	0bc080e7          	jalr	188(ra) # 800051f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005144:	00000613          	li	a2,0
    80005148:	00000597          	auipc	a1,0x0
    8000514c:	e2458593          	addi	a1,a1,-476 # 80004f6c <_Z11workerBodyDPv>
    80005150:	fd840513          	addi	a0,s0,-40
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	150080e7          	jalr	336(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    8000515c:	00003517          	auipc	a0,0x3
    80005160:	1bc50513          	addi	a0,a0,444 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80005164:	00000097          	auipc	ra,0x0
    80005168:	094080e7          	jalr	148(ra) # 800051f8 <_Z11printStringPKc>
    8000516c:	00c0006f          	j	80005178 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	1b4080e7          	jalr	436(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005178:	00005797          	auipc	a5,0x5
    8000517c:	5647c783          	lbu	a5,1380(a5) # 8000a6dc <_ZL9finishedA>
    80005180:	fe0788e3          	beqz	a5,80005170 <_Z18Threads_C_API_testv+0xbc>
    80005184:	00005797          	auipc	a5,0x5
    80005188:	5597c783          	lbu	a5,1369(a5) # 8000a6dd <_ZL9finishedB>
    8000518c:	fe0782e3          	beqz	a5,80005170 <_Z18Threads_C_API_testv+0xbc>
    80005190:	00005797          	auipc	a5,0x5
    80005194:	54e7c783          	lbu	a5,1358(a5) # 8000a6de <_ZL9finishedC>
    80005198:	fc078ce3          	beqz	a5,80005170 <_Z18Threads_C_API_testv+0xbc>
    8000519c:	00005797          	auipc	a5,0x5
    800051a0:	5437c783          	lbu	a5,1347(a5) # 8000a6df <_ZL9finishedD>
    800051a4:	fc0786e3          	beqz	a5,80005170 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    800051a8:	fc040493          	addi	s1,s0,-64
    800051ac:	0080006f          	j	800051b4 <_Z18Threads_C_API_testv+0x100>
    800051b0:	00848493          	addi	s1,s1,8
    800051b4:	fe040793          	addi	a5,s0,-32
    800051b8:	02f48463          	beq	s1,a5,800051e0 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    800051bc:	0004b903          	ld	s2,0(s1)
    800051c0:	fe0908e3          	beqz	s2,800051b0 <_Z18Threads_C_API_testv+0xfc>
    800051c4:	00090513          	mv	a0,s2
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	560080e7          	jalr	1376(ra) # 80002728 <_ZN3PCBD1Ev>
    800051d0:	00090513          	mv	a0,s2
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	52c080e7          	jalr	1324(ra) # 80002700 <_ZN3PCBdlEPv>
    800051dc:	fd5ff06f          	j	800051b0 <_Z18Threads_C_API_testv+0xfc>
    }
}
    800051e0:	03813083          	ld	ra,56(sp)
    800051e4:	03013403          	ld	s0,48(sp)
    800051e8:	02813483          	ld	s1,40(sp)
    800051ec:	02013903          	ld	s2,32(sp)
    800051f0:	04010113          	addi	sp,sp,64
    800051f4:	00008067          	ret

00000000800051f8 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    800051f8:	fe010113          	addi	sp,sp,-32
    800051fc:	00113c23          	sd	ra,24(sp)
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00913423          	sd	s1,8(sp)
    80005208:	02010413          	addi	s0,sp,32
    8000520c:	00050493          	mv	s1,a0
    LOCK();
    80005210:	00100613          	li	a2,1
    80005214:	00000593          	li	a1,0
    80005218:	00005517          	auipc	a0,0x5
    8000521c:	4c850513          	addi	a0,a0,1224 # 8000a6e0 <lockPrint>
    80005220:	ffffc097          	auipc	ra,0xffffc
    80005224:	fe8080e7          	jalr	-24(ra) # 80001208 <copy_and_swap>
    80005228:	fe0514e3          	bnez	a0,80005210 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    8000522c:	0004c503          	lbu	a0,0(s1)
    80005230:	00050a63          	beqz	a0,80005244 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80005234:	00003097          	auipc	ra,0x3
    80005238:	9f8080e7          	jalr	-1544(ra) # 80007c2c <__putc>
        putc(*string);
        string++;
    8000523c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005240:	fedff06f          	j	8000522c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005244:	00000613          	li	a2,0
    80005248:	00100593          	li	a1,1
    8000524c:	00005517          	auipc	a0,0x5
    80005250:	49450513          	addi	a0,a0,1172 # 8000a6e0 <lockPrint>
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	fb4080e7          	jalr	-76(ra) # 80001208 <copy_and_swap>
    8000525c:	fe0514e3          	bnez	a0,80005244 <_Z11printStringPKc+0x4c>
}
    80005260:	01813083          	ld	ra,24(sp)
    80005264:	01013403          	ld	s0,16(sp)
    80005268:	00813483          	ld	s1,8(sp)
    8000526c:	02010113          	addi	sp,sp,32
    80005270:	00008067          	ret

0000000080005274 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005274:	fd010113          	addi	sp,sp,-48
    80005278:	02113423          	sd	ra,40(sp)
    8000527c:	02813023          	sd	s0,32(sp)
    80005280:	00913c23          	sd	s1,24(sp)
    80005284:	01213823          	sd	s2,16(sp)
    80005288:	01313423          	sd	s3,8(sp)
    8000528c:	01413023          	sd	s4,0(sp)
    80005290:	03010413          	addi	s0,sp,48
    80005294:	00050993          	mv	s3,a0
    80005298:	00058a13          	mv	s4,a1
    LOCK();
    8000529c:	00100613          	li	a2,1
    800052a0:	00000593          	li	a1,0
    800052a4:	00005517          	auipc	a0,0x5
    800052a8:	43c50513          	addi	a0,a0,1084 # 8000a6e0 <lockPrint>
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	f5c080e7          	jalr	-164(ra) # 80001208 <copy_and_swap>
    800052b4:	fe0514e3          	bnez	a0,8000529c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    800052b8:	00000913          	li	s2,0
    800052bc:	00090493          	mv	s1,s2
    800052c0:	0019091b          	addiw	s2,s2,1
    800052c4:	03495a63          	bge	s2,s4,800052f8 <_Z9getStringPci+0x84>
    return __getc();
    800052c8:	00003097          	auipc	ra,0x3
    800052cc:	9a0080e7          	jalr	-1632(ra) # 80007c68 <__getc>
        cc = getc();
        if (cc < 1)
    800052d0:	02050463          	beqz	a0,800052f8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800052d4:	009984b3          	add	s1,s3,s1
    800052d8:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    800052dc:	00a00793          	li	a5,10
    800052e0:	00f50a63          	beq	a0,a5,800052f4 <_Z9getStringPci+0x80>
    800052e4:	00d00793          	li	a5,13
    800052e8:	fcf51ae3          	bne	a0,a5,800052bc <_Z9getStringPci+0x48>
        buf[i++] = c;
    800052ec:	00090493          	mv	s1,s2
    800052f0:	0080006f          	j	800052f8 <_Z9getStringPci+0x84>
    800052f4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052f8:	009984b3          	add	s1,s3,s1
    800052fc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005300:	00000613          	li	a2,0
    80005304:	00100593          	li	a1,1
    80005308:	00005517          	auipc	a0,0x5
    8000530c:	3d850513          	addi	a0,a0,984 # 8000a6e0 <lockPrint>
    80005310:	ffffc097          	auipc	ra,0xffffc
    80005314:	ef8080e7          	jalr	-264(ra) # 80001208 <copy_and_swap>
    80005318:	fe0514e3          	bnez	a0,80005300 <_Z9getStringPci+0x8c>
    return buf;
}
    8000531c:	00098513          	mv	a0,s3
    80005320:	02813083          	ld	ra,40(sp)
    80005324:	02013403          	ld	s0,32(sp)
    80005328:	01813483          	ld	s1,24(sp)
    8000532c:	01013903          	ld	s2,16(sp)
    80005330:	00813983          	ld	s3,8(sp)
    80005334:	00013a03          	ld	s4,0(sp)
    80005338:	03010113          	addi	sp,sp,48
    8000533c:	00008067          	ret

0000000080005340 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005340:	ff010113          	addi	sp,sp,-16
    80005344:	00813423          	sd	s0,8(sp)
    80005348:	01010413          	addi	s0,sp,16
    8000534c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005350:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005354:	0006c603          	lbu	a2,0(a3)
    80005358:	fd06071b          	addiw	a4,a2,-48
    8000535c:	0ff77713          	andi	a4,a4,255
    80005360:	00900793          	li	a5,9
    80005364:	02e7e063          	bltu	a5,a4,80005384 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005368:	0025179b          	slliw	a5,a0,0x2
    8000536c:	00a787bb          	addw	a5,a5,a0
    80005370:	0017979b          	slliw	a5,a5,0x1
    80005374:	00168693          	addi	a3,a3,1
    80005378:	00c787bb          	addw	a5,a5,a2
    8000537c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005380:	fd5ff06f          	j	80005354 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005384:	00813403          	ld	s0,8(sp)
    80005388:	01010113          	addi	sp,sp,16
    8000538c:	00008067          	ret

0000000080005390 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005390:	fc010113          	addi	sp,sp,-64
    80005394:	02113c23          	sd	ra,56(sp)
    80005398:	02813823          	sd	s0,48(sp)
    8000539c:	02913423          	sd	s1,40(sp)
    800053a0:	03213023          	sd	s2,32(sp)
    800053a4:	01313c23          	sd	s3,24(sp)
    800053a8:	04010413          	addi	s0,sp,64
    800053ac:	00050493          	mv	s1,a0
    800053b0:	00058913          	mv	s2,a1
    800053b4:	00060993          	mv	s3,a2
    LOCK();
    800053b8:	00100613          	li	a2,1
    800053bc:	00000593          	li	a1,0
    800053c0:	00005517          	auipc	a0,0x5
    800053c4:	32050513          	addi	a0,a0,800 # 8000a6e0 <lockPrint>
    800053c8:	ffffc097          	auipc	ra,0xffffc
    800053cc:	e40080e7          	jalr	-448(ra) # 80001208 <copy_and_swap>
    800053d0:	fe0514e3          	bnez	a0,800053b8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    800053d4:	00098463          	beqz	s3,800053dc <_Z8printIntiii+0x4c>
    800053d8:	0804c463          	bltz	s1,80005460 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053dc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053e0:	00000593          	li	a1,0
    }

    i = 0;
    800053e4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800053e8:	0009079b          	sext.w	a5,s2
    800053ec:	0325773b          	remuw	a4,a0,s2
    800053f0:	00048613          	mv	a2,s1
    800053f4:	0014849b          	addiw	s1,s1,1
    800053f8:	02071693          	slli	a3,a4,0x20
    800053fc:	0206d693          	srli	a3,a3,0x20
    80005400:	00003717          	auipc	a4,0x3
    80005404:	f4070713          	addi	a4,a4,-192 # 80008340 <_ZL6digits>
    80005408:	00d70733          	add	a4,a4,a3
    8000540c:	00074683          	lbu	a3,0(a4)
    80005410:	fd040713          	addi	a4,s0,-48
    80005414:	00c70733          	add	a4,a4,a2
    80005418:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    8000541c:	0005071b          	sext.w	a4,a0
    80005420:	0325553b          	divuw	a0,a0,s2
    80005424:	fcf772e3          	bgeu	a4,a5,800053e8 <_Z8printIntiii+0x58>
    if (neg)
    80005428:	00058c63          	beqz	a1,80005440 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000542c:	fd040793          	addi	a5,s0,-48
    80005430:	009784b3          	add	s1,a5,s1
    80005434:	02d00793          	li	a5,45
    80005438:	fef48823          	sb	a5,-16(s1)
    8000543c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005440:	fff4849b          	addiw	s1,s1,-1
    80005444:	0204c463          	bltz	s1,8000546c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005448:	fd040793          	addi	a5,s0,-48
    8000544c:	009787b3          	add	a5,a5,s1
    __putc(c);
    80005450:	ff07c503          	lbu	a0,-16(a5)
    80005454:	00002097          	auipc	ra,0x2
    80005458:	7d8080e7          	jalr	2008(ra) # 80007c2c <__putc>
}
    8000545c:	fe5ff06f          	j	80005440 <_Z8printIntiii+0xb0>
        x = -xx;
    80005460:	4090053b          	negw	a0,s1
        neg = 1;
    80005464:	00100593          	li	a1,1
        x = -xx;
    80005468:	f7dff06f          	j	800053e4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000546c:	00000613          	li	a2,0
    80005470:	00100593          	li	a1,1
    80005474:	00005517          	auipc	a0,0x5
    80005478:	26c50513          	addi	a0,a0,620 # 8000a6e0 <lockPrint>
    8000547c:	ffffc097          	auipc	ra,0xffffc
    80005480:	d8c080e7          	jalr	-628(ra) # 80001208 <copy_and_swap>
    80005484:	fe0514e3          	bnez	a0,8000546c <_Z8printIntiii+0xdc>
}
    80005488:	03813083          	ld	ra,56(sp)
    8000548c:	03013403          	ld	s0,48(sp)
    80005490:	02813483          	ld	s1,40(sp)
    80005494:	02013903          	ld	s2,32(sp)
    80005498:	01813983          	ld	s3,24(sp)
    8000549c:	04010113          	addi	sp,sp,64
    800054a0:	00008067          	ret

00000000800054a4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    800054a4:	fe010113          	addi	sp,sp,-32
    800054a8:	00113c23          	sd	ra,24(sp)
    800054ac:	00813823          	sd	s0,16(sp)
    800054b0:	00913423          	sd	s1,8(sp)
    800054b4:	01213023          	sd	s2,0(sp)
    800054b8:	02010413          	addi	s0,sp,32
    800054bc:	00050493          	mv	s1,a0
    800054c0:	00b52023          	sw	a1,0(a0)
    800054c4:	00052823          	sw	zero,16(a0)
    800054c8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054cc:	00259513          	slli	a0,a1,0x2
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	d78080e7          	jalr	-648(ra) # 80001248 <mem_alloc>
    800054d8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054dc:	01000513          	li	a0,16
    800054e0:	ffffe097          	auipc	ra,0xffffe
    800054e4:	98c080e7          	jalr	-1652(ra) # 80002e6c <_Znwm>
    800054e8:	00050913          	mv	s2,a0
    800054ec:	00000593          	li	a1,0
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	bb8080e7          	jalr	-1096(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    800054f8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800054fc:	01000513          	li	a0,16
    80005500:	ffffe097          	auipc	ra,0xffffe
    80005504:	96c080e7          	jalr	-1684(ra) # 80002e6c <_Znwm>
    80005508:	00050913          	mv	s2,a0
    8000550c:	0004a583          	lw	a1,0(s1)
    80005510:	ffffe097          	auipc	ra,0xffffe
    80005514:	b98080e7          	jalr	-1128(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80005518:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000551c:	01000513          	li	a0,16
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	94c080e7          	jalr	-1716(ra) # 80002e6c <_Znwm>
    80005528:	00050913          	mv	s2,a0
    8000552c:	00100593          	li	a1,1
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	b78080e7          	jalr	-1160(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80005538:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000553c:	01000513          	li	a0,16
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	92c080e7          	jalr	-1748(ra) # 80002e6c <_Znwm>
    80005548:	00050913          	mv	s2,a0
    8000554c:	00100593          	li	a1,1
    80005550:	ffffe097          	auipc	ra,0xffffe
    80005554:	b58080e7          	jalr	-1192(ra) # 800030a8 <_ZN9SemaphoreC1Ej>
    80005558:	0324b823          	sd	s2,48(s1)
}
    8000555c:	01813083          	ld	ra,24(sp)
    80005560:	01013403          	ld	s0,16(sp)
    80005564:	00813483          	ld	s1,8(sp)
    80005568:	00013903          	ld	s2,0(sp)
    8000556c:	02010113          	addi	sp,sp,32
    80005570:	00008067          	ret
    80005574:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005578:	00090513          	mv	a0,s2
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	918080e7          	jalr	-1768(ra) # 80002e94 <_ZdlPv>
    80005584:	00048513          	mv	a0,s1
    80005588:	00006097          	auipc	ra,0x6
    8000558c:	230080e7          	jalr	560(ra) # 8000b7b8 <_Unwind_Resume>
    80005590:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005594:	00090513          	mv	a0,s2
    80005598:	ffffe097          	auipc	ra,0xffffe
    8000559c:	8fc080e7          	jalr	-1796(ra) # 80002e94 <_ZdlPv>
    800055a0:	00048513          	mv	a0,s1
    800055a4:	00006097          	auipc	ra,0x6
    800055a8:	214080e7          	jalr	532(ra) # 8000b7b8 <_Unwind_Resume>
    800055ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055b0:	00090513          	mv	a0,s2
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	8e0080e7          	jalr	-1824(ra) # 80002e94 <_ZdlPv>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	00006097          	auipc	ra,0x6
    800055c4:	1f8080e7          	jalr	504(ra) # 8000b7b8 <_Unwind_Resume>
    800055c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055cc:	00090513          	mv	a0,s2
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	8c4080e7          	jalr	-1852(ra) # 80002e94 <_ZdlPv>
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00006097          	auipc	ra,0x6
    800055e0:	1dc080e7          	jalr	476(ra) # 8000b7b8 <_Unwind_Resume>

00000000800055e4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800055e4:	fe010113          	addi	sp,sp,-32
    800055e8:	00113c23          	sd	ra,24(sp)
    800055ec:	00813823          	sd	s0,16(sp)
    800055f0:	00913423          	sd	s1,8(sp)
    800055f4:	02010413          	addi	s0,sp,32
    800055f8:	00050493          	mv	s1,a0
    __putc(c);
    800055fc:	00a00513          	li	a0,10
    80005600:	00002097          	auipc	ra,0x2
    80005604:	62c080e7          	jalr	1580(ra) # 80007c2c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005608:	0104a783          	lw	a5,16(s1)
    8000560c:	0144a703          	lw	a4,20(s1)
    80005610:	00e78c63          	beq	a5,a4,80005628 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005614:	0017879b          	addiw	a5,a5,1
    80005618:	0004a703          	lw	a4,0(s1)
    8000561c:	02e7e7bb          	remw	a5,a5,a4
    80005620:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005624:	fe5ff06f          	j	80005608 <_ZN9BufferCPPD1Ev+0x24>
    80005628:	02100513          	li	a0,33
    8000562c:	00002097          	auipc	ra,0x2
    80005630:	600080e7          	jalr	1536(ra) # 80007c2c <__putc>
    80005634:	00a00513          	li	a0,10
    80005638:	00002097          	auipc	ra,0x2
    8000563c:	5f4080e7          	jalr	1524(ra) # 80007c2c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005640:	0084b503          	ld	a0,8(s1)
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	c34080e7          	jalr	-972(ra) # 80001278 <mem_free>
    delete itemAvailable;
    8000564c:	0204b503          	ld	a0,32(s1)
    80005650:	00050863          	beqz	a0,80005660 <_ZN9BufferCPPD1Ev+0x7c>
    80005654:	00053783          	ld	a5,0(a0)
    80005658:	0087b783          	ld	a5,8(a5)
    8000565c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005660:	0184b503          	ld	a0,24(s1)
    80005664:	00050863          	beqz	a0,80005674 <_ZN9BufferCPPD1Ev+0x90>
    80005668:	00053783          	ld	a5,0(a0)
    8000566c:	0087b783          	ld	a5,8(a5)
    80005670:	000780e7          	jalr	a5
    delete mutexTail;
    80005674:	0304b503          	ld	a0,48(s1)
    80005678:	00050863          	beqz	a0,80005688 <_ZN9BufferCPPD1Ev+0xa4>
    8000567c:	00053783          	ld	a5,0(a0)
    80005680:	0087b783          	ld	a5,8(a5)
    80005684:	000780e7          	jalr	a5
    delete mutexHead;
    80005688:	0284b503          	ld	a0,40(s1)
    8000568c:	00050863          	beqz	a0,8000569c <_ZN9BufferCPPD1Ev+0xb8>
    80005690:	00053783          	ld	a5,0(a0)
    80005694:	0087b783          	ld	a5,8(a5)
    80005698:	000780e7          	jalr	a5

}
    8000569c:	01813083          	ld	ra,24(sp)
    800056a0:	01013403          	ld	s0,16(sp)
    800056a4:	00813483          	ld	s1,8(sp)
    800056a8:	02010113          	addi	sp,sp,32
    800056ac:	00008067          	ret

00000000800056b0 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800056b0:	fe010113          	addi	sp,sp,-32
    800056b4:	00113c23          	sd	ra,24(sp)
    800056b8:	00813823          	sd	s0,16(sp)
    800056bc:	00913423          	sd	s1,8(sp)
    800056c0:	01213023          	sd	s2,0(sp)
    800056c4:	02010413          	addi	s0,sp,32
    800056c8:	00050493          	mv	s1,a0
    800056cc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056d0:	01853503          	ld	a0,24(a0)
    800056d4:	ffffe097          	auipc	ra,0xffffe
    800056d8:	99c080e7          	jalr	-1636(ra) # 80003070 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056dc:	0304b503          	ld	a0,48(s1)
    800056e0:	ffffe097          	auipc	ra,0xffffe
    800056e4:	990080e7          	jalr	-1648(ra) # 80003070 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056e8:	0084b783          	ld	a5,8(s1)
    800056ec:	0144a703          	lw	a4,20(s1)
    800056f0:	00271713          	slli	a4,a4,0x2
    800056f4:	00e787b3          	add	a5,a5,a4
    800056f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056fc:	0144a783          	lw	a5,20(s1)
    80005700:	0017879b          	addiw	a5,a5,1
    80005704:	0004a703          	lw	a4,0(s1)
    80005708:	02e7e7bb          	remw	a5,a5,a4
    8000570c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005710:	0304b503          	ld	a0,48(s1)
    80005714:	ffffe097          	auipc	ra,0xffffe
    80005718:	9e0080e7          	jalr	-1568(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000571c:	0204b503          	ld	a0,32(s1)
    80005720:	ffffe097          	auipc	ra,0xffffe
    80005724:	9d4080e7          	jalr	-1580(ra) # 800030f4 <_ZN9Semaphore6signalEv>

}
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	00013903          	ld	s2,0(sp)
    80005738:	02010113          	addi	sp,sp,32
    8000573c:	00008067          	ret

0000000080005740 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	01213023          	sd	s2,0(sp)
    80005754:	02010413          	addi	s0,sp,32
    80005758:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000575c:	02053503          	ld	a0,32(a0)
    80005760:	ffffe097          	auipc	ra,0xffffe
    80005764:	910080e7          	jalr	-1776(ra) # 80003070 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005768:	0284b503          	ld	a0,40(s1)
    8000576c:	ffffe097          	auipc	ra,0xffffe
    80005770:	904080e7          	jalr	-1788(ra) # 80003070 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005774:	0084b703          	ld	a4,8(s1)
    80005778:	0104a783          	lw	a5,16(s1)
    8000577c:	00279693          	slli	a3,a5,0x2
    80005780:	00d70733          	add	a4,a4,a3
    80005784:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005788:	0017879b          	addiw	a5,a5,1
    8000578c:	0004a703          	lw	a4,0(s1)
    80005790:	02e7e7bb          	remw	a5,a5,a4
    80005794:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005798:	0284b503          	ld	a0,40(s1)
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	958080e7          	jalr	-1704(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800057a4:	0184b503          	ld	a0,24(s1)
    800057a8:	ffffe097          	auipc	ra,0xffffe
    800057ac:	94c080e7          	jalr	-1716(ra) # 800030f4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800057b0:	00090513          	mv	a0,s2
    800057b4:	01813083          	ld	ra,24(sp)
    800057b8:	01013403          	ld	s0,16(sp)
    800057bc:	00813483          	ld	s1,8(sp)
    800057c0:	00013903          	ld	s2,0(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	00008067          	ret

00000000800057cc <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800057cc:	ff010113          	addi	sp,sp,-16
    800057d0:	00113423          	sd	ra,8(sp)
    800057d4:	00813023          	sd	s0,0(sp)
    800057d8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800057dc:	00000097          	auipc	ra,0x0
    800057e0:	0bc080e7          	jalr	188(ra) # 80005898 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800057e4:	00813083          	ld	ra,8(sp)
    800057e8:	00013403          	ld	s0,0(sp)
    800057ec:	01010113          	addi	sp,sp,16
    800057f0:	00008067          	ret

00000000800057f4 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800057f4:	fe010113          	addi	sp,sp,-32
    800057f8:	00113c23          	sd	ra,24(sp)
    800057fc:	00813823          	sd	s0,16(sp)
    80005800:	00913423          	sd	s1,8(sp)
    80005804:	01213023          	sd	s2,0(sp)
    80005808:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000580c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005810:	00600493          	li	s1,6
    while (--i > 0) {
    80005814:	fff4849b          	addiw	s1,s1,-1
    80005818:	04905463          	blez	s1,80005860 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000581c:	00003517          	auipc	a0,0x3
    80005820:	b3c50513          	addi	a0,a0,-1220 # 80008358 <_ZL6digits+0x18>
    80005824:	00000097          	auipc	ra,0x0
    80005828:	9d4080e7          	jalr	-1580(ra) # 800051f8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000582c:	00000613          	li	a2,0
    80005830:	00a00593          	li	a1,10
    80005834:	0009051b          	sext.w	a0,s2
    80005838:	00000097          	auipc	ra,0x0
    8000583c:	b58080e7          	jalr	-1192(ra) # 80005390 <_Z8printIntiii>
        printString(" !\n");
    80005840:	00003517          	auipc	a0,0x3
    80005844:	b2050513          	addi	a0,a0,-1248 # 80008360 <_ZL6digits+0x20>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	9b0080e7          	jalr	-1616(ra) # 800051f8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005850:	00090513          	mv	a0,s2
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	bd4080e7          	jalr	-1068(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    8000585c:	fb9ff06f          	j	80005814 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005860:	00a00793          	li	a5,10
    80005864:	02f95933          	divu	s2,s2,a5
    80005868:	fff90913          	addi	s2,s2,-1
    8000586c:	00005797          	auipc	a5,0x5
    80005870:	e7c78793          	addi	a5,a5,-388 # 8000a6e8 <finished>
    80005874:	01278933          	add	s2,a5,s2
    80005878:	00100793          	li	a5,1
    8000587c:	00f90023          	sb	a5,0(s2)
}
    80005880:	01813083          	ld	ra,24(sp)
    80005884:	01013403          	ld	s0,16(sp)
    80005888:	00813483          	ld	s1,8(sp)
    8000588c:	00013903          	ld	s2,0(sp)
    80005890:	02010113          	addi	sp,sp,32
    80005894:	00008067          	ret

0000000080005898 <_Z12testSleepingv>:

void testSleeping()
{
    80005898:	fc010113          	addi	sp,sp,-64
    8000589c:	02113c23          	sd	ra,56(sp)
    800058a0:	02813823          	sd	s0,48(sp)
    800058a4:	02913423          	sd	s1,40(sp)
    800058a8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800058ac:	00a00793          	li	a5,10
    800058b0:	fcf43823          	sd	a5,-48(s0)
    800058b4:	01400793          	li	a5,20
    800058b8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800058bc:	00000493          	li	s1,0
    800058c0:	02c0006f          	j	800058ec <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800058c4:	00349793          	slli	a5,s1,0x3
    800058c8:	fd040613          	addi	a2,s0,-48
    800058cc:	00f60633          	add	a2,a2,a5
    800058d0:	00000597          	auipc	a1,0x0
    800058d4:	f2458593          	addi	a1,a1,-220 # 800057f4 <_Z9sleepyRunPv>
    800058d8:	fc040513          	addi	a0,s0,-64
    800058dc:	00f50533          	add	a0,a0,a5
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	9c4080e7          	jalr	-1596(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800058e8:	0014849b          	addiw	s1,s1,1
    800058ec:	00100793          	li	a5,1
    800058f0:	fc97dae3          	bge	a5,s1,800058c4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800058f4:	00005797          	auipc	a5,0x5
    800058f8:	df47c783          	lbu	a5,-524(a5) # 8000a6e8 <finished>
    800058fc:	fe078ce3          	beqz	a5,800058f4 <_Z12testSleepingv+0x5c>
    80005900:	00005797          	auipc	a5,0x5
    80005904:	de97c783          	lbu	a5,-535(a5) # 8000a6e9 <finished+0x1>
    80005908:	fe0786e3          	beqz	a5,800058f4 <_Z12testSleepingv+0x5c>
}
    8000590c:	03813083          	ld	ra,56(sp)
    80005910:	03013403          	ld	s0,48(sp)
    80005914:	02813483          	ld	s1,40(sp)
    80005918:	04010113          	addi	sp,sp,64
    8000591c:	00008067          	ret

0000000080005920 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00113c23          	sd	ra,24(sp)
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	02010413          	addi	s0,sp,32
    80005934:	00050493          	mv	s1,a0
    80005938:	00b52023          	sw	a1,0(a0)
    8000593c:	00052823          	sw	zero,16(a0)
    80005940:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005944:	00259513          	slli	a0,a1,0x2
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	900080e7          	jalr	-1792(ra) # 80001248 <mem_alloc>
    80005950:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005954:	00000593          	li	a1,0
    80005958:	02048513          	addi	a0,s1,32
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	a10080e7          	jalr	-1520(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005964:	0004a583          	lw	a1,0(s1)
    80005968:	01848513          	addi	a0,s1,24
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	a00080e7          	jalr	-1536(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005974:	00100593          	li	a1,1
    80005978:	02848513          	addi	a0,s1,40
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	9f0080e7          	jalr	-1552(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005984:	00100593          	li	a1,1
    80005988:	03048513          	addi	a0,s1,48
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	9e0080e7          	jalr	-1568(ra) # 8000136c <sem_open>
}
    80005994:	01813083          	ld	ra,24(sp)
    80005998:	01013403          	ld	s0,16(sp)
    8000599c:	00813483          	ld	s1,8(sp)
    800059a0:	02010113          	addi	sp,sp,32
    800059a4:	00008067          	ret

00000000800059a8 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800059a8:	fe010113          	addi	sp,sp,-32
    800059ac:	00113c23          	sd	ra,24(sp)
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	02010413          	addi	s0,sp,32
    800059bc:	00050493          	mv	s1,a0
    800059c0:	00a00513          	li	a0,10
    800059c4:	00002097          	auipc	ra,0x2
    800059c8:	268080e7          	jalr	616(ra) # 80007c2c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800059cc:	0104a783          	lw	a5,16(s1)
    800059d0:	0144a703          	lw	a4,20(s1)
    800059d4:	00e78c63          	beq	a5,a4,800059ec <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800059d8:	0017879b          	addiw	a5,a5,1
    800059dc:	0004a703          	lw	a4,0(s1)
    800059e0:	02e7e7bb          	remw	a5,a5,a4
    800059e4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800059e8:	fe5ff06f          	j	800059cc <_ZN6BufferD1Ev+0x24>
    800059ec:	02100513          	li	a0,33
    800059f0:	00002097          	auipc	ra,0x2
    800059f4:	23c080e7          	jalr	572(ra) # 80007c2c <__putc>
    800059f8:	00a00513          	li	a0,10
    800059fc:	00002097          	auipc	ra,0x2
    80005a00:	230080e7          	jalr	560(ra) # 80007c2c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005a04:	0084b503          	ld	a0,8(s1)
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	870080e7          	jalr	-1936(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005a10:	0204b503          	ld	a0,32(s1)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	990080e7          	jalr	-1648(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    80005a1c:	0184b503          	ld	a0,24(s1)
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	984080e7          	jalr	-1660(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005a28:	0304b503          	ld	a0,48(s1)
    80005a2c:	ffffc097          	auipc	ra,0xffffc
    80005a30:	978080e7          	jalr	-1672(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005a34:	0284b503          	ld	a0,40(s1)
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	96c080e7          	jalr	-1684(ra) # 800013a4 <sem_close>
}
    80005a40:	01813083          	ld	ra,24(sp)
    80005a44:	01013403          	ld	s0,16(sp)
    80005a48:	00813483          	ld	s1,8(sp)
    80005a4c:	02010113          	addi	sp,sp,32
    80005a50:	00008067          	ret

0000000080005a54 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00113c23          	sd	ra,24(sp)
    80005a5c:	00813823          	sd	s0,16(sp)
    80005a60:	00913423          	sd	s1,8(sp)
    80005a64:	01213023          	sd	s2,0(sp)
    80005a68:	02010413          	addi	s0,sp,32
    80005a6c:	00050493          	mv	s1,a0
    80005a70:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a74:	01853503          	ld	a0,24(a0)
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	958080e7          	jalr	-1704(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005a80:	0304b503          	ld	a0,48(s1)
    80005a84:	ffffc097          	auipc	ra,0xffffc
    80005a88:	94c080e7          	jalr	-1716(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80005a8c:	0084b783          	ld	a5,8(s1)
    80005a90:	0144a703          	lw	a4,20(s1)
    80005a94:	00271713          	slli	a4,a4,0x2
    80005a98:	00e787b3          	add	a5,a5,a4
    80005a9c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005aa0:	0144a783          	lw	a5,20(s1)
    80005aa4:	0017879b          	addiw	a5,a5,1
    80005aa8:	0004a703          	lw	a4,0(s1)
    80005aac:	02e7e7bb          	remw	a5,a5,a4
    80005ab0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005ab4:	0304b503          	ld	a0,48(s1)
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	944080e7          	jalr	-1724(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    80005ac0:	0204b503          	ld	a0,32(s1)
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	938080e7          	jalr	-1736(ra) # 800013fc <sem_signal>

}
    80005acc:	01813083          	ld	ra,24(sp)
    80005ad0:	01013403          	ld	s0,16(sp)
    80005ad4:	00813483          	ld	s1,8(sp)
    80005ad8:	00013903          	ld	s2,0(sp)
    80005adc:	02010113          	addi	sp,sp,32
    80005ae0:	00008067          	ret

0000000080005ae4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ae4:	fe010113          	addi	sp,sp,-32
    80005ae8:	00113c23          	sd	ra,24(sp)
    80005aec:	00813823          	sd	s0,16(sp)
    80005af0:	00913423          	sd	s1,8(sp)
    80005af4:	01213023          	sd	s2,0(sp)
    80005af8:	02010413          	addi	s0,sp,32
    80005afc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005b00:	02053503          	ld	a0,32(a0)
    80005b04:	ffffc097          	auipc	ra,0xffffc
    80005b08:	8cc080e7          	jalr	-1844(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80005b0c:	0284b503          	ld	a0,40(s1)
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	8c0080e7          	jalr	-1856(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005b18:	0084b703          	ld	a4,8(s1)
    80005b1c:	0104a783          	lw	a5,16(s1)
    80005b20:	00279693          	slli	a3,a5,0x2
    80005b24:	00d70733          	add	a4,a4,a3
    80005b28:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b2c:	0017879b          	addiw	a5,a5,1
    80005b30:	0004a703          	lw	a4,0(s1)
    80005b34:	02e7e7bb          	remw	a5,a5,a4
    80005b38:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b3c:	0284b503          	ld	a0,40(s1)
    80005b40:	ffffc097          	auipc	ra,0xffffc
    80005b44:	8bc080e7          	jalr	-1860(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005b48:	0184b503          	ld	a0,24(s1)
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	8b0080e7          	jalr	-1872(ra) # 800013fc <sem_signal>

    return ret;
}
    80005b54:	00090513          	mv	a0,s2
    80005b58:	01813083          	ld	ra,24(sp)
    80005b5c:	01013403          	ld	s0,16(sp)
    80005b60:	00813483          	ld	s1,8(sp)
    80005b64:	00013903          	ld	s2,0(sp)
    80005b68:	02010113          	addi	sp,sp,32
    80005b6c:	00008067          	ret

0000000080005b70 <start>:
    80005b70:	ff010113          	addi	sp,sp,-16
    80005b74:	00813423          	sd	s0,8(sp)
    80005b78:	01010413          	addi	s0,sp,16
    80005b7c:	300027f3          	csrr	a5,mstatus
    80005b80:	ffffe737          	lui	a4,0xffffe
    80005b84:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2eaf>
    80005b88:	00e7f7b3          	and	a5,a5,a4
    80005b8c:	00001737          	lui	a4,0x1
    80005b90:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005b94:	00e7e7b3          	or	a5,a5,a4
    80005b98:	30079073          	csrw	mstatus,a5
    80005b9c:	00000797          	auipc	a5,0x0
    80005ba0:	16078793          	addi	a5,a5,352 # 80005cfc <system_main>
    80005ba4:	34179073          	csrw	mepc,a5
    80005ba8:	00000793          	li	a5,0
    80005bac:	18079073          	csrw	satp,a5
    80005bb0:	000107b7          	lui	a5,0x10
    80005bb4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005bb8:	30279073          	csrw	medeleg,a5
    80005bbc:	30379073          	csrw	mideleg,a5
    80005bc0:	104027f3          	csrr	a5,sie
    80005bc4:	2227e793          	ori	a5,a5,546
    80005bc8:	10479073          	csrw	sie,a5
    80005bcc:	fff00793          	li	a5,-1
    80005bd0:	00a7d793          	srli	a5,a5,0xa
    80005bd4:	3b079073          	csrw	pmpaddr0,a5
    80005bd8:	00f00793          	li	a5,15
    80005bdc:	3a079073          	csrw	pmpcfg0,a5
    80005be0:	f14027f3          	csrr	a5,mhartid
    80005be4:	0200c737          	lui	a4,0x200c
    80005be8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bec:	0007869b          	sext.w	a3,a5
    80005bf0:	00269713          	slli	a4,a3,0x2
    80005bf4:	000f4637          	lui	a2,0xf4
    80005bf8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005bfc:	00d70733          	add	a4,a4,a3
    80005c00:	0037979b          	slliw	a5,a5,0x3
    80005c04:	020046b7          	lui	a3,0x2004
    80005c08:	00d787b3          	add	a5,a5,a3
    80005c0c:	00c585b3          	add	a1,a1,a2
    80005c10:	00371693          	slli	a3,a4,0x3
    80005c14:	00005717          	auipc	a4,0x5
    80005c18:	adc70713          	addi	a4,a4,-1316 # 8000a6f0 <timer_scratch>
    80005c1c:	00b7b023          	sd	a1,0(a5)
    80005c20:	00d70733          	add	a4,a4,a3
    80005c24:	00f73c23          	sd	a5,24(a4)
    80005c28:	02c73023          	sd	a2,32(a4)
    80005c2c:	34071073          	csrw	mscratch,a4
    80005c30:	00000797          	auipc	a5,0x0
    80005c34:	6e078793          	addi	a5,a5,1760 # 80006310 <timervec>
    80005c38:	30579073          	csrw	mtvec,a5
    80005c3c:	300027f3          	csrr	a5,mstatus
    80005c40:	0087e793          	ori	a5,a5,8
    80005c44:	30079073          	csrw	mstatus,a5
    80005c48:	304027f3          	csrr	a5,mie
    80005c4c:	0807e793          	ori	a5,a5,128
    80005c50:	30479073          	csrw	mie,a5
    80005c54:	f14027f3          	csrr	a5,mhartid
    80005c58:	0007879b          	sext.w	a5,a5
    80005c5c:	00078213          	mv	tp,a5
    80005c60:	30200073          	mret
    80005c64:	00813403          	ld	s0,8(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret

0000000080005c70 <timerinit>:
    80005c70:	ff010113          	addi	sp,sp,-16
    80005c74:	00813423          	sd	s0,8(sp)
    80005c78:	01010413          	addi	s0,sp,16
    80005c7c:	f14027f3          	csrr	a5,mhartid
    80005c80:	0200c737          	lui	a4,0x200c
    80005c84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c88:	0007869b          	sext.w	a3,a5
    80005c8c:	00269713          	slli	a4,a3,0x2
    80005c90:	000f4637          	lui	a2,0xf4
    80005c94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c98:	00d70733          	add	a4,a4,a3
    80005c9c:	0037979b          	slliw	a5,a5,0x3
    80005ca0:	020046b7          	lui	a3,0x2004
    80005ca4:	00d787b3          	add	a5,a5,a3
    80005ca8:	00c585b3          	add	a1,a1,a2
    80005cac:	00371693          	slli	a3,a4,0x3
    80005cb0:	00005717          	auipc	a4,0x5
    80005cb4:	a4070713          	addi	a4,a4,-1472 # 8000a6f0 <timer_scratch>
    80005cb8:	00b7b023          	sd	a1,0(a5)
    80005cbc:	00d70733          	add	a4,a4,a3
    80005cc0:	00f73c23          	sd	a5,24(a4)
    80005cc4:	02c73023          	sd	a2,32(a4)
    80005cc8:	34071073          	csrw	mscratch,a4
    80005ccc:	00000797          	auipc	a5,0x0
    80005cd0:	64478793          	addi	a5,a5,1604 # 80006310 <timervec>
    80005cd4:	30579073          	csrw	mtvec,a5
    80005cd8:	300027f3          	csrr	a5,mstatus
    80005cdc:	0087e793          	ori	a5,a5,8
    80005ce0:	30079073          	csrw	mstatus,a5
    80005ce4:	304027f3          	csrr	a5,mie
    80005ce8:	0807e793          	ori	a5,a5,128
    80005cec:	30479073          	csrw	mie,a5
    80005cf0:	00813403          	ld	s0,8(sp)
    80005cf4:	01010113          	addi	sp,sp,16
    80005cf8:	00008067          	ret

0000000080005cfc <system_main>:
    80005cfc:	fe010113          	addi	sp,sp,-32
    80005d00:	00813823          	sd	s0,16(sp)
    80005d04:	00913423          	sd	s1,8(sp)
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	02010413          	addi	s0,sp,32
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	0c4080e7          	jalr	196(ra) # 80005dd4 <cpuid>
    80005d18:	00005497          	auipc	s1,0x5
    80005d1c:	8f848493          	addi	s1,s1,-1800 # 8000a610 <started>
    80005d20:	02050263          	beqz	a0,80005d44 <system_main+0x48>
    80005d24:	0004a783          	lw	a5,0(s1)
    80005d28:	0007879b          	sext.w	a5,a5
    80005d2c:	fe078ce3          	beqz	a5,80005d24 <system_main+0x28>
    80005d30:	0ff0000f          	fence
    80005d34:	00002517          	auipc	a0,0x2
    80005d38:	66450513          	addi	a0,a0,1636 # 80008398 <_ZL6digits+0x58>
    80005d3c:	00001097          	auipc	ra,0x1
    80005d40:	a70080e7          	jalr	-1424(ra) # 800067ac <panic>
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	9c4080e7          	jalr	-1596(ra) # 80006708 <consoleinit>
    80005d4c:	00001097          	auipc	ra,0x1
    80005d50:	150080e7          	jalr	336(ra) # 80006e9c <printfinit>
    80005d54:	00002517          	auipc	a0,0x2
    80005d58:	42c50513          	addi	a0,a0,1068 # 80008180 <CONSOLE_STATUS+0x170>
    80005d5c:	00001097          	auipc	ra,0x1
    80005d60:	aac080e7          	jalr	-1364(ra) # 80006808 <__printf>
    80005d64:	00002517          	auipc	a0,0x2
    80005d68:	60450513          	addi	a0,a0,1540 # 80008368 <_ZL6digits+0x28>
    80005d6c:	00001097          	auipc	ra,0x1
    80005d70:	a9c080e7          	jalr	-1380(ra) # 80006808 <__printf>
    80005d74:	00002517          	auipc	a0,0x2
    80005d78:	40c50513          	addi	a0,a0,1036 # 80008180 <CONSOLE_STATUS+0x170>
    80005d7c:	00001097          	auipc	ra,0x1
    80005d80:	a8c080e7          	jalr	-1396(ra) # 80006808 <__printf>
    80005d84:	00001097          	auipc	ra,0x1
    80005d88:	4a4080e7          	jalr	1188(ra) # 80007228 <kinit>
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	148080e7          	jalr	328(ra) # 80005ed4 <trapinit>
    80005d94:	00000097          	auipc	ra,0x0
    80005d98:	16c080e7          	jalr	364(ra) # 80005f00 <trapinithart>
    80005d9c:	00000097          	auipc	ra,0x0
    80005da0:	5b4080e7          	jalr	1460(ra) # 80006350 <plicinit>
    80005da4:	00000097          	auipc	ra,0x0
    80005da8:	5d4080e7          	jalr	1492(ra) # 80006378 <plicinithart>
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	078080e7          	jalr	120(ra) # 80005e24 <userinit>
    80005db4:	0ff0000f          	fence
    80005db8:	00100793          	li	a5,1
    80005dbc:	00002517          	auipc	a0,0x2
    80005dc0:	5c450513          	addi	a0,a0,1476 # 80008380 <_ZL6digits+0x40>
    80005dc4:	00f4a023          	sw	a5,0(s1)
    80005dc8:	00001097          	auipc	ra,0x1
    80005dcc:	a40080e7          	jalr	-1472(ra) # 80006808 <__printf>
    80005dd0:	0000006f          	j	80005dd0 <system_main+0xd4>

0000000080005dd4 <cpuid>:
    80005dd4:	ff010113          	addi	sp,sp,-16
    80005dd8:	00813423          	sd	s0,8(sp)
    80005ddc:	01010413          	addi	s0,sp,16
    80005de0:	00020513          	mv	a0,tp
    80005de4:	00813403          	ld	s0,8(sp)
    80005de8:	0005051b          	sext.w	a0,a0
    80005dec:	01010113          	addi	sp,sp,16
    80005df0:	00008067          	ret

0000000080005df4 <mycpu>:
    80005df4:	ff010113          	addi	sp,sp,-16
    80005df8:	00813423          	sd	s0,8(sp)
    80005dfc:	01010413          	addi	s0,sp,16
    80005e00:	00020793          	mv	a5,tp
    80005e04:	00813403          	ld	s0,8(sp)
    80005e08:	0007879b          	sext.w	a5,a5
    80005e0c:	00779793          	slli	a5,a5,0x7
    80005e10:	00006517          	auipc	a0,0x6
    80005e14:	91050513          	addi	a0,a0,-1776 # 8000b720 <cpus>
    80005e18:	00f50533          	add	a0,a0,a5
    80005e1c:	01010113          	addi	sp,sp,16
    80005e20:	00008067          	ret

0000000080005e24 <userinit>:
    80005e24:	ff010113          	addi	sp,sp,-16
    80005e28:	00813423          	sd	s0,8(sp)
    80005e2c:	01010413          	addi	s0,sp,16
    80005e30:	00813403          	ld	s0,8(sp)
    80005e34:	01010113          	addi	sp,sp,16
    80005e38:	ffffd317          	auipc	t1,0xffffd
    80005e3c:	f2030067          	jr	-224(t1) # 80002d58 <main>

0000000080005e40 <either_copyout>:
    80005e40:	ff010113          	addi	sp,sp,-16
    80005e44:	00813023          	sd	s0,0(sp)
    80005e48:	00113423          	sd	ra,8(sp)
    80005e4c:	01010413          	addi	s0,sp,16
    80005e50:	02051663          	bnez	a0,80005e7c <either_copyout+0x3c>
    80005e54:	00058513          	mv	a0,a1
    80005e58:	00060593          	mv	a1,a2
    80005e5c:	0006861b          	sext.w	a2,a3
    80005e60:	00002097          	auipc	ra,0x2
    80005e64:	c54080e7          	jalr	-940(ra) # 80007ab4 <__memmove>
    80005e68:	00813083          	ld	ra,8(sp)
    80005e6c:	00013403          	ld	s0,0(sp)
    80005e70:	00000513          	li	a0,0
    80005e74:	01010113          	addi	sp,sp,16
    80005e78:	00008067          	ret
    80005e7c:	00002517          	auipc	a0,0x2
    80005e80:	54450513          	addi	a0,a0,1348 # 800083c0 <_ZL6digits+0x80>
    80005e84:	00001097          	auipc	ra,0x1
    80005e88:	928080e7          	jalr	-1752(ra) # 800067ac <panic>

0000000080005e8c <either_copyin>:
    80005e8c:	ff010113          	addi	sp,sp,-16
    80005e90:	00813023          	sd	s0,0(sp)
    80005e94:	00113423          	sd	ra,8(sp)
    80005e98:	01010413          	addi	s0,sp,16
    80005e9c:	02059463          	bnez	a1,80005ec4 <either_copyin+0x38>
    80005ea0:	00060593          	mv	a1,a2
    80005ea4:	0006861b          	sext.w	a2,a3
    80005ea8:	00002097          	auipc	ra,0x2
    80005eac:	c0c080e7          	jalr	-1012(ra) # 80007ab4 <__memmove>
    80005eb0:	00813083          	ld	ra,8(sp)
    80005eb4:	00013403          	ld	s0,0(sp)
    80005eb8:	00000513          	li	a0,0
    80005ebc:	01010113          	addi	sp,sp,16
    80005ec0:	00008067          	ret
    80005ec4:	00002517          	auipc	a0,0x2
    80005ec8:	52450513          	addi	a0,a0,1316 # 800083e8 <_ZL6digits+0xa8>
    80005ecc:	00001097          	auipc	ra,0x1
    80005ed0:	8e0080e7          	jalr	-1824(ra) # 800067ac <panic>

0000000080005ed4 <trapinit>:
    80005ed4:	ff010113          	addi	sp,sp,-16
    80005ed8:	00813423          	sd	s0,8(sp)
    80005edc:	01010413          	addi	s0,sp,16
    80005ee0:	00813403          	ld	s0,8(sp)
    80005ee4:	00002597          	auipc	a1,0x2
    80005ee8:	52c58593          	addi	a1,a1,1324 # 80008410 <_ZL6digits+0xd0>
    80005eec:	00006517          	auipc	a0,0x6
    80005ef0:	8b450513          	addi	a0,a0,-1868 # 8000b7a0 <tickslock>
    80005ef4:	01010113          	addi	sp,sp,16
    80005ef8:	00001317          	auipc	t1,0x1
    80005efc:	5c030067          	jr	1472(t1) # 800074b8 <initlock>

0000000080005f00 <trapinithart>:
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00813423          	sd	s0,8(sp)
    80005f08:	01010413          	addi	s0,sp,16
    80005f0c:	00000797          	auipc	a5,0x0
    80005f10:	2f478793          	addi	a5,a5,756 # 80006200 <kernelvec>
    80005f14:	10579073          	csrw	stvec,a5
    80005f18:	00813403          	ld	s0,8(sp)
    80005f1c:	01010113          	addi	sp,sp,16
    80005f20:	00008067          	ret

0000000080005f24 <usertrap>:
    80005f24:	ff010113          	addi	sp,sp,-16
    80005f28:	00813423          	sd	s0,8(sp)
    80005f2c:	01010413          	addi	s0,sp,16
    80005f30:	00813403          	ld	s0,8(sp)
    80005f34:	01010113          	addi	sp,sp,16
    80005f38:	00008067          	ret

0000000080005f3c <usertrapret>:
    80005f3c:	ff010113          	addi	sp,sp,-16
    80005f40:	00813423          	sd	s0,8(sp)
    80005f44:	01010413          	addi	s0,sp,16
    80005f48:	00813403          	ld	s0,8(sp)
    80005f4c:	01010113          	addi	sp,sp,16
    80005f50:	00008067          	ret

0000000080005f54 <kerneltrap>:
    80005f54:	fe010113          	addi	sp,sp,-32
    80005f58:	00813823          	sd	s0,16(sp)
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00913423          	sd	s1,8(sp)
    80005f64:	02010413          	addi	s0,sp,32
    80005f68:	142025f3          	csrr	a1,scause
    80005f6c:	100027f3          	csrr	a5,sstatus
    80005f70:	0027f793          	andi	a5,a5,2
    80005f74:	10079c63          	bnez	a5,8000608c <kerneltrap+0x138>
    80005f78:	142027f3          	csrr	a5,scause
    80005f7c:	0207ce63          	bltz	a5,80005fb8 <kerneltrap+0x64>
    80005f80:	00002517          	auipc	a0,0x2
    80005f84:	4d850513          	addi	a0,a0,1240 # 80008458 <_ZL6digits+0x118>
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	880080e7          	jalr	-1920(ra) # 80006808 <__printf>
    80005f90:	141025f3          	csrr	a1,sepc
    80005f94:	14302673          	csrr	a2,stval
    80005f98:	00002517          	auipc	a0,0x2
    80005f9c:	4d050513          	addi	a0,a0,1232 # 80008468 <_ZL6digits+0x128>
    80005fa0:	00001097          	auipc	ra,0x1
    80005fa4:	868080e7          	jalr	-1944(ra) # 80006808 <__printf>
    80005fa8:	00002517          	auipc	a0,0x2
    80005fac:	4d850513          	addi	a0,a0,1240 # 80008480 <_ZL6digits+0x140>
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	7fc080e7          	jalr	2044(ra) # 800067ac <panic>
    80005fb8:	0ff7f713          	andi	a4,a5,255
    80005fbc:	00900693          	li	a3,9
    80005fc0:	04d70063          	beq	a4,a3,80006000 <kerneltrap+0xac>
    80005fc4:	fff00713          	li	a4,-1
    80005fc8:	03f71713          	slli	a4,a4,0x3f
    80005fcc:	00170713          	addi	a4,a4,1
    80005fd0:	fae798e3          	bne	a5,a4,80005f80 <kerneltrap+0x2c>
    80005fd4:	00000097          	auipc	ra,0x0
    80005fd8:	e00080e7          	jalr	-512(ra) # 80005dd4 <cpuid>
    80005fdc:	06050663          	beqz	a0,80006048 <kerneltrap+0xf4>
    80005fe0:	144027f3          	csrr	a5,sip
    80005fe4:	ffd7f793          	andi	a5,a5,-3
    80005fe8:	14479073          	csrw	sip,a5
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret
    80006000:	00000097          	auipc	ra,0x0
    80006004:	3c4080e7          	jalr	964(ra) # 800063c4 <plic_claim>
    80006008:	00a00793          	li	a5,10
    8000600c:	00050493          	mv	s1,a0
    80006010:	06f50863          	beq	a0,a5,80006080 <kerneltrap+0x12c>
    80006014:	fc050ce3          	beqz	a0,80005fec <kerneltrap+0x98>
    80006018:	00050593          	mv	a1,a0
    8000601c:	00002517          	auipc	a0,0x2
    80006020:	41c50513          	addi	a0,a0,1052 # 80008438 <_ZL6digits+0xf8>
    80006024:	00000097          	auipc	ra,0x0
    80006028:	7e4080e7          	jalr	2020(ra) # 80006808 <__printf>
    8000602c:	01013403          	ld	s0,16(sp)
    80006030:	01813083          	ld	ra,24(sp)
    80006034:	00048513          	mv	a0,s1
    80006038:	00813483          	ld	s1,8(sp)
    8000603c:	02010113          	addi	sp,sp,32
    80006040:	00000317          	auipc	t1,0x0
    80006044:	3bc30067          	jr	956(t1) # 800063fc <plic_complete>
    80006048:	00005517          	auipc	a0,0x5
    8000604c:	75850513          	addi	a0,a0,1880 # 8000b7a0 <tickslock>
    80006050:	00001097          	auipc	ra,0x1
    80006054:	48c080e7          	jalr	1164(ra) # 800074dc <acquire>
    80006058:	00004717          	auipc	a4,0x4
    8000605c:	5bc70713          	addi	a4,a4,1468 # 8000a614 <ticks>
    80006060:	00072783          	lw	a5,0(a4)
    80006064:	00005517          	auipc	a0,0x5
    80006068:	73c50513          	addi	a0,a0,1852 # 8000b7a0 <tickslock>
    8000606c:	0017879b          	addiw	a5,a5,1
    80006070:	00f72023          	sw	a5,0(a4)
    80006074:	00001097          	auipc	ra,0x1
    80006078:	534080e7          	jalr	1332(ra) # 800075a8 <release>
    8000607c:	f65ff06f          	j	80005fe0 <kerneltrap+0x8c>
    80006080:	00001097          	auipc	ra,0x1
    80006084:	090080e7          	jalr	144(ra) # 80007110 <uartintr>
    80006088:	fa5ff06f          	j	8000602c <kerneltrap+0xd8>
    8000608c:	00002517          	auipc	a0,0x2
    80006090:	38c50513          	addi	a0,a0,908 # 80008418 <_ZL6digits+0xd8>
    80006094:	00000097          	auipc	ra,0x0
    80006098:	718080e7          	jalr	1816(ra) # 800067ac <panic>

000000008000609c <clockintr>:
    8000609c:	fe010113          	addi	sp,sp,-32
    800060a0:	00813823          	sd	s0,16(sp)
    800060a4:	00913423          	sd	s1,8(sp)
    800060a8:	00113c23          	sd	ra,24(sp)
    800060ac:	02010413          	addi	s0,sp,32
    800060b0:	00005497          	auipc	s1,0x5
    800060b4:	6f048493          	addi	s1,s1,1776 # 8000b7a0 <tickslock>
    800060b8:	00048513          	mv	a0,s1
    800060bc:	00001097          	auipc	ra,0x1
    800060c0:	420080e7          	jalr	1056(ra) # 800074dc <acquire>
    800060c4:	00004717          	auipc	a4,0x4
    800060c8:	55070713          	addi	a4,a4,1360 # 8000a614 <ticks>
    800060cc:	00072783          	lw	a5,0(a4)
    800060d0:	01013403          	ld	s0,16(sp)
    800060d4:	01813083          	ld	ra,24(sp)
    800060d8:	00048513          	mv	a0,s1
    800060dc:	0017879b          	addiw	a5,a5,1
    800060e0:	00813483          	ld	s1,8(sp)
    800060e4:	00f72023          	sw	a5,0(a4)
    800060e8:	02010113          	addi	sp,sp,32
    800060ec:	00001317          	auipc	t1,0x1
    800060f0:	4bc30067          	jr	1212(t1) # 800075a8 <release>

00000000800060f4 <devintr>:
    800060f4:	142027f3          	csrr	a5,scause
    800060f8:	00000513          	li	a0,0
    800060fc:	0007c463          	bltz	a5,80006104 <devintr+0x10>
    80006100:	00008067          	ret
    80006104:	fe010113          	addi	sp,sp,-32
    80006108:	00813823          	sd	s0,16(sp)
    8000610c:	00113c23          	sd	ra,24(sp)
    80006110:	00913423          	sd	s1,8(sp)
    80006114:	02010413          	addi	s0,sp,32
    80006118:	0ff7f713          	andi	a4,a5,255
    8000611c:	00900693          	li	a3,9
    80006120:	04d70c63          	beq	a4,a3,80006178 <devintr+0x84>
    80006124:	fff00713          	li	a4,-1
    80006128:	03f71713          	slli	a4,a4,0x3f
    8000612c:	00170713          	addi	a4,a4,1
    80006130:	00e78c63          	beq	a5,a4,80006148 <devintr+0x54>
    80006134:	01813083          	ld	ra,24(sp)
    80006138:	01013403          	ld	s0,16(sp)
    8000613c:	00813483          	ld	s1,8(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	c8c080e7          	jalr	-884(ra) # 80005dd4 <cpuid>
    80006150:	06050663          	beqz	a0,800061bc <devintr+0xc8>
    80006154:	144027f3          	csrr	a5,sip
    80006158:	ffd7f793          	andi	a5,a5,-3
    8000615c:	14479073          	csrw	sip,a5
    80006160:	01813083          	ld	ra,24(sp)
    80006164:	01013403          	ld	s0,16(sp)
    80006168:	00813483          	ld	s1,8(sp)
    8000616c:	00200513          	li	a0,2
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00008067          	ret
    80006178:	00000097          	auipc	ra,0x0
    8000617c:	24c080e7          	jalr	588(ra) # 800063c4 <plic_claim>
    80006180:	00a00793          	li	a5,10
    80006184:	00050493          	mv	s1,a0
    80006188:	06f50663          	beq	a0,a5,800061f4 <devintr+0x100>
    8000618c:	00100513          	li	a0,1
    80006190:	fa0482e3          	beqz	s1,80006134 <devintr+0x40>
    80006194:	00048593          	mv	a1,s1
    80006198:	00002517          	auipc	a0,0x2
    8000619c:	2a050513          	addi	a0,a0,672 # 80008438 <_ZL6digits+0xf8>
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	668080e7          	jalr	1640(ra) # 80006808 <__printf>
    800061a8:	00048513          	mv	a0,s1
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	250080e7          	jalr	592(ra) # 800063fc <plic_complete>
    800061b4:	00100513          	li	a0,1
    800061b8:	f7dff06f          	j	80006134 <devintr+0x40>
    800061bc:	00005517          	auipc	a0,0x5
    800061c0:	5e450513          	addi	a0,a0,1508 # 8000b7a0 <tickslock>
    800061c4:	00001097          	auipc	ra,0x1
    800061c8:	318080e7          	jalr	792(ra) # 800074dc <acquire>
    800061cc:	00004717          	auipc	a4,0x4
    800061d0:	44870713          	addi	a4,a4,1096 # 8000a614 <ticks>
    800061d4:	00072783          	lw	a5,0(a4)
    800061d8:	00005517          	auipc	a0,0x5
    800061dc:	5c850513          	addi	a0,a0,1480 # 8000b7a0 <tickslock>
    800061e0:	0017879b          	addiw	a5,a5,1
    800061e4:	00f72023          	sw	a5,0(a4)
    800061e8:	00001097          	auipc	ra,0x1
    800061ec:	3c0080e7          	jalr	960(ra) # 800075a8 <release>
    800061f0:	f65ff06f          	j	80006154 <devintr+0x60>
    800061f4:	00001097          	auipc	ra,0x1
    800061f8:	f1c080e7          	jalr	-228(ra) # 80007110 <uartintr>
    800061fc:	fadff06f          	j	800061a8 <devintr+0xb4>

0000000080006200 <kernelvec>:
    80006200:	f0010113          	addi	sp,sp,-256
    80006204:	00113023          	sd	ra,0(sp)
    80006208:	00213423          	sd	sp,8(sp)
    8000620c:	00313823          	sd	gp,16(sp)
    80006210:	00413c23          	sd	tp,24(sp)
    80006214:	02513023          	sd	t0,32(sp)
    80006218:	02613423          	sd	t1,40(sp)
    8000621c:	02713823          	sd	t2,48(sp)
    80006220:	02813c23          	sd	s0,56(sp)
    80006224:	04913023          	sd	s1,64(sp)
    80006228:	04a13423          	sd	a0,72(sp)
    8000622c:	04b13823          	sd	a1,80(sp)
    80006230:	04c13c23          	sd	a2,88(sp)
    80006234:	06d13023          	sd	a3,96(sp)
    80006238:	06e13423          	sd	a4,104(sp)
    8000623c:	06f13823          	sd	a5,112(sp)
    80006240:	07013c23          	sd	a6,120(sp)
    80006244:	09113023          	sd	a7,128(sp)
    80006248:	09213423          	sd	s2,136(sp)
    8000624c:	09313823          	sd	s3,144(sp)
    80006250:	09413c23          	sd	s4,152(sp)
    80006254:	0b513023          	sd	s5,160(sp)
    80006258:	0b613423          	sd	s6,168(sp)
    8000625c:	0b713823          	sd	s7,176(sp)
    80006260:	0b813c23          	sd	s8,184(sp)
    80006264:	0d913023          	sd	s9,192(sp)
    80006268:	0da13423          	sd	s10,200(sp)
    8000626c:	0db13823          	sd	s11,208(sp)
    80006270:	0dc13c23          	sd	t3,216(sp)
    80006274:	0fd13023          	sd	t4,224(sp)
    80006278:	0fe13423          	sd	t5,232(sp)
    8000627c:	0ff13823          	sd	t6,240(sp)
    80006280:	cd5ff0ef          	jal	ra,80005f54 <kerneltrap>
    80006284:	00013083          	ld	ra,0(sp)
    80006288:	00813103          	ld	sp,8(sp)
    8000628c:	01013183          	ld	gp,16(sp)
    80006290:	02013283          	ld	t0,32(sp)
    80006294:	02813303          	ld	t1,40(sp)
    80006298:	03013383          	ld	t2,48(sp)
    8000629c:	03813403          	ld	s0,56(sp)
    800062a0:	04013483          	ld	s1,64(sp)
    800062a4:	04813503          	ld	a0,72(sp)
    800062a8:	05013583          	ld	a1,80(sp)
    800062ac:	05813603          	ld	a2,88(sp)
    800062b0:	06013683          	ld	a3,96(sp)
    800062b4:	06813703          	ld	a4,104(sp)
    800062b8:	07013783          	ld	a5,112(sp)
    800062bc:	07813803          	ld	a6,120(sp)
    800062c0:	08013883          	ld	a7,128(sp)
    800062c4:	08813903          	ld	s2,136(sp)
    800062c8:	09013983          	ld	s3,144(sp)
    800062cc:	09813a03          	ld	s4,152(sp)
    800062d0:	0a013a83          	ld	s5,160(sp)
    800062d4:	0a813b03          	ld	s6,168(sp)
    800062d8:	0b013b83          	ld	s7,176(sp)
    800062dc:	0b813c03          	ld	s8,184(sp)
    800062e0:	0c013c83          	ld	s9,192(sp)
    800062e4:	0c813d03          	ld	s10,200(sp)
    800062e8:	0d013d83          	ld	s11,208(sp)
    800062ec:	0d813e03          	ld	t3,216(sp)
    800062f0:	0e013e83          	ld	t4,224(sp)
    800062f4:	0e813f03          	ld	t5,232(sp)
    800062f8:	0f013f83          	ld	t6,240(sp)
    800062fc:	10010113          	addi	sp,sp,256
    80006300:	10200073          	sret
    80006304:	00000013          	nop
    80006308:	00000013          	nop
    8000630c:	00000013          	nop

0000000080006310 <timervec>:
    80006310:	34051573          	csrrw	a0,mscratch,a0
    80006314:	00b53023          	sd	a1,0(a0)
    80006318:	00c53423          	sd	a2,8(a0)
    8000631c:	00d53823          	sd	a3,16(a0)
    80006320:	01853583          	ld	a1,24(a0)
    80006324:	02053603          	ld	a2,32(a0)
    80006328:	0005b683          	ld	a3,0(a1)
    8000632c:	00c686b3          	add	a3,a3,a2
    80006330:	00d5b023          	sd	a3,0(a1)
    80006334:	00200593          	li	a1,2
    80006338:	14459073          	csrw	sip,a1
    8000633c:	01053683          	ld	a3,16(a0)
    80006340:	00853603          	ld	a2,8(a0)
    80006344:	00053583          	ld	a1,0(a0)
    80006348:	34051573          	csrrw	a0,mscratch,a0
    8000634c:	30200073          	mret

0000000080006350 <plicinit>:
    80006350:	ff010113          	addi	sp,sp,-16
    80006354:	00813423          	sd	s0,8(sp)
    80006358:	01010413          	addi	s0,sp,16
    8000635c:	00813403          	ld	s0,8(sp)
    80006360:	0c0007b7          	lui	a5,0xc000
    80006364:	00100713          	li	a4,1
    80006368:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000636c:	00e7a223          	sw	a4,4(a5)
    80006370:	01010113          	addi	sp,sp,16
    80006374:	00008067          	ret

0000000080006378 <plicinithart>:
    80006378:	ff010113          	addi	sp,sp,-16
    8000637c:	00813023          	sd	s0,0(sp)
    80006380:	00113423          	sd	ra,8(sp)
    80006384:	01010413          	addi	s0,sp,16
    80006388:	00000097          	auipc	ra,0x0
    8000638c:	a4c080e7          	jalr	-1460(ra) # 80005dd4 <cpuid>
    80006390:	0085171b          	slliw	a4,a0,0x8
    80006394:	0c0027b7          	lui	a5,0xc002
    80006398:	00e787b3          	add	a5,a5,a4
    8000639c:	40200713          	li	a4,1026
    800063a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800063a4:	00813083          	ld	ra,8(sp)
    800063a8:	00013403          	ld	s0,0(sp)
    800063ac:	00d5151b          	slliw	a0,a0,0xd
    800063b0:	0c2017b7          	lui	a5,0xc201
    800063b4:	00a78533          	add	a0,a5,a0
    800063b8:	00052023          	sw	zero,0(a0)
    800063bc:	01010113          	addi	sp,sp,16
    800063c0:	00008067          	ret

00000000800063c4 <plic_claim>:
    800063c4:	ff010113          	addi	sp,sp,-16
    800063c8:	00813023          	sd	s0,0(sp)
    800063cc:	00113423          	sd	ra,8(sp)
    800063d0:	01010413          	addi	s0,sp,16
    800063d4:	00000097          	auipc	ra,0x0
    800063d8:	a00080e7          	jalr	-1536(ra) # 80005dd4 <cpuid>
    800063dc:	00813083          	ld	ra,8(sp)
    800063e0:	00013403          	ld	s0,0(sp)
    800063e4:	00d5151b          	slliw	a0,a0,0xd
    800063e8:	0c2017b7          	lui	a5,0xc201
    800063ec:	00a78533          	add	a0,a5,a0
    800063f0:	00452503          	lw	a0,4(a0)
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00008067          	ret

00000000800063fc <plic_complete>:
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00813823          	sd	s0,16(sp)
    80006404:	00913423          	sd	s1,8(sp)
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	02010413          	addi	s0,sp,32
    80006410:	00050493          	mv	s1,a0
    80006414:	00000097          	auipc	ra,0x0
    80006418:	9c0080e7          	jalr	-1600(ra) # 80005dd4 <cpuid>
    8000641c:	01813083          	ld	ra,24(sp)
    80006420:	01013403          	ld	s0,16(sp)
    80006424:	00d5179b          	slliw	a5,a0,0xd
    80006428:	0c201737          	lui	a4,0xc201
    8000642c:	00f707b3          	add	a5,a4,a5
    80006430:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006434:	00813483          	ld	s1,8(sp)
    80006438:	02010113          	addi	sp,sp,32
    8000643c:	00008067          	ret

0000000080006440 <consolewrite>:
    80006440:	fb010113          	addi	sp,sp,-80
    80006444:	04813023          	sd	s0,64(sp)
    80006448:	04113423          	sd	ra,72(sp)
    8000644c:	02913c23          	sd	s1,56(sp)
    80006450:	03213823          	sd	s2,48(sp)
    80006454:	03313423          	sd	s3,40(sp)
    80006458:	03413023          	sd	s4,32(sp)
    8000645c:	01513c23          	sd	s5,24(sp)
    80006460:	05010413          	addi	s0,sp,80
    80006464:	06c05c63          	blez	a2,800064dc <consolewrite+0x9c>
    80006468:	00060993          	mv	s3,a2
    8000646c:	00050a13          	mv	s4,a0
    80006470:	00058493          	mv	s1,a1
    80006474:	00000913          	li	s2,0
    80006478:	fff00a93          	li	s5,-1
    8000647c:	01c0006f          	j	80006498 <consolewrite+0x58>
    80006480:	fbf44503          	lbu	a0,-65(s0)
    80006484:	0019091b          	addiw	s2,s2,1
    80006488:	00148493          	addi	s1,s1,1
    8000648c:	00001097          	auipc	ra,0x1
    80006490:	a9c080e7          	jalr	-1380(ra) # 80006f28 <uartputc>
    80006494:	03298063          	beq	s3,s2,800064b4 <consolewrite+0x74>
    80006498:	00048613          	mv	a2,s1
    8000649c:	00100693          	li	a3,1
    800064a0:	000a0593          	mv	a1,s4
    800064a4:	fbf40513          	addi	a0,s0,-65
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	9e4080e7          	jalr	-1564(ra) # 80005e8c <either_copyin>
    800064b0:	fd5518e3          	bne	a0,s5,80006480 <consolewrite+0x40>
    800064b4:	04813083          	ld	ra,72(sp)
    800064b8:	04013403          	ld	s0,64(sp)
    800064bc:	03813483          	ld	s1,56(sp)
    800064c0:	02813983          	ld	s3,40(sp)
    800064c4:	02013a03          	ld	s4,32(sp)
    800064c8:	01813a83          	ld	s5,24(sp)
    800064cc:	00090513          	mv	a0,s2
    800064d0:	03013903          	ld	s2,48(sp)
    800064d4:	05010113          	addi	sp,sp,80
    800064d8:	00008067          	ret
    800064dc:	00000913          	li	s2,0
    800064e0:	fd5ff06f          	j	800064b4 <consolewrite+0x74>

00000000800064e4 <consoleread>:
    800064e4:	f9010113          	addi	sp,sp,-112
    800064e8:	06813023          	sd	s0,96(sp)
    800064ec:	04913c23          	sd	s1,88(sp)
    800064f0:	05213823          	sd	s2,80(sp)
    800064f4:	05313423          	sd	s3,72(sp)
    800064f8:	05413023          	sd	s4,64(sp)
    800064fc:	03513c23          	sd	s5,56(sp)
    80006500:	03613823          	sd	s6,48(sp)
    80006504:	03713423          	sd	s7,40(sp)
    80006508:	03813023          	sd	s8,32(sp)
    8000650c:	06113423          	sd	ra,104(sp)
    80006510:	01913c23          	sd	s9,24(sp)
    80006514:	07010413          	addi	s0,sp,112
    80006518:	00060b93          	mv	s7,a2
    8000651c:	00050913          	mv	s2,a0
    80006520:	00058c13          	mv	s8,a1
    80006524:	00060b1b          	sext.w	s6,a2
    80006528:	00005497          	auipc	s1,0x5
    8000652c:	2a048493          	addi	s1,s1,672 # 8000b7c8 <cons>
    80006530:	00400993          	li	s3,4
    80006534:	fff00a13          	li	s4,-1
    80006538:	00a00a93          	li	s5,10
    8000653c:	05705e63          	blez	s7,80006598 <consoleread+0xb4>
    80006540:	09c4a703          	lw	a4,156(s1)
    80006544:	0984a783          	lw	a5,152(s1)
    80006548:	0007071b          	sext.w	a4,a4
    8000654c:	08e78463          	beq	a5,a4,800065d4 <consoleread+0xf0>
    80006550:	07f7f713          	andi	a4,a5,127
    80006554:	00e48733          	add	a4,s1,a4
    80006558:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000655c:	0017869b          	addiw	a3,a5,1
    80006560:	08d4ac23          	sw	a3,152(s1)
    80006564:	00070c9b          	sext.w	s9,a4
    80006568:	0b370663          	beq	a4,s3,80006614 <consoleread+0x130>
    8000656c:	00100693          	li	a3,1
    80006570:	f9f40613          	addi	a2,s0,-97
    80006574:	000c0593          	mv	a1,s8
    80006578:	00090513          	mv	a0,s2
    8000657c:	f8e40fa3          	sb	a4,-97(s0)
    80006580:	00000097          	auipc	ra,0x0
    80006584:	8c0080e7          	jalr	-1856(ra) # 80005e40 <either_copyout>
    80006588:	01450863          	beq	a0,s4,80006598 <consoleread+0xb4>
    8000658c:	001c0c13          	addi	s8,s8,1
    80006590:	fffb8b9b          	addiw	s7,s7,-1
    80006594:	fb5c94e3          	bne	s9,s5,8000653c <consoleread+0x58>
    80006598:	000b851b          	sext.w	a0,s7
    8000659c:	06813083          	ld	ra,104(sp)
    800065a0:	06013403          	ld	s0,96(sp)
    800065a4:	05813483          	ld	s1,88(sp)
    800065a8:	05013903          	ld	s2,80(sp)
    800065ac:	04813983          	ld	s3,72(sp)
    800065b0:	04013a03          	ld	s4,64(sp)
    800065b4:	03813a83          	ld	s5,56(sp)
    800065b8:	02813b83          	ld	s7,40(sp)
    800065bc:	02013c03          	ld	s8,32(sp)
    800065c0:	01813c83          	ld	s9,24(sp)
    800065c4:	40ab053b          	subw	a0,s6,a0
    800065c8:	03013b03          	ld	s6,48(sp)
    800065cc:	07010113          	addi	sp,sp,112
    800065d0:	00008067          	ret
    800065d4:	00001097          	auipc	ra,0x1
    800065d8:	1d8080e7          	jalr	472(ra) # 800077ac <push_on>
    800065dc:	0984a703          	lw	a4,152(s1)
    800065e0:	09c4a783          	lw	a5,156(s1)
    800065e4:	0007879b          	sext.w	a5,a5
    800065e8:	fef70ce3          	beq	a4,a5,800065e0 <consoleread+0xfc>
    800065ec:	00001097          	auipc	ra,0x1
    800065f0:	234080e7          	jalr	564(ra) # 80007820 <pop_on>
    800065f4:	0984a783          	lw	a5,152(s1)
    800065f8:	07f7f713          	andi	a4,a5,127
    800065fc:	00e48733          	add	a4,s1,a4
    80006600:	01874703          	lbu	a4,24(a4)
    80006604:	0017869b          	addiw	a3,a5,1
    80006608:	08d4ac23          	sw	a3,152(s1)
    8000660c:	00070c9b          	sext.w	s9,a4
    80006610:	f5371ee3          	bne	a4,s3,8000656c <consoleread+0x88>
    80006614:	000b851b          	sext.w	a0,s7
    80006618:	f96bf2e3          	bgeu	s7,s6,8000659c <consoleread+0xb8>
    8000661c:	08f4ac23          	sw	a5,152(s1)
    80006620:	f7dff06f          	j	8000659c <consoleread+0xb8>

0000000080006624 <consputc>:
    80006624:	10000793          	li	a5,256
    80006628:	00f50663          	beq	a0,a5,80006634 <consputc+0x10>
    8000662c:	00001317          	auipc	t1,0x1
    80006630:	9f430067          	jr	-1548(t1) # 80007020 <uartputc_sync>
    80006634:	ff010113          	addi	sp,sp,-16
    80006638:	00113423          	sd	ra,8(sp)
    8000663c:	00813023          	sd	s0,0(sp)
    80006640:	01010413          	addi	s0,sp,16
    80006644:	00800513          	li	a0,8
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	9d8080e7          	jalr	-1576(ra) # 80007020 <uartputc_sync>
    80006650:	02000513          	li	a0,32
    80006654:	00001097          	auipc	ra,0x1
    80006658:	9cc080e7          	jalr	-1588(ra) # 80007020 <uartputc_sync>
    8000665c:	00013403          	ld	s0,0(sp)
    80006660:	00813083          	ld	ra,8(sp)
    80006664:	00800513          	li	a0,8
    80006668:	01010113          	addi	sp,sp,16
    8000666c:	00001317          	auipc	t1,0x1
    80006670:	9b430067          	jr	-1612(t1) # 80007020 <uartputc_sync>

0000000080006674 <consoleintr>:
    80006674:	fe010113          	addi	sp,sp,-32
    80006678:	00813823          	sd	s0,16(sp)
    8000667c:	00913423          	sd	s1,8(sp)
    80006680:	01213023          	sd	s2,0(sp)
    80006684:	00113c23          	sd	ra,24(sp)
    80006688:	02010413          	addi	s0,sp,32
    8000668c:	00005917          	auipc	s2,0x5
    80006690:	13c90913          	addi	s2,s2,316 # 8000b7c8 <cons>
    80006694:	00050493          	mv	s1,a0
    80006698:	00090513          	mv	a0,s2
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	e40080e7          	jalr	-448(ra) # 800074dc <acquire>
    800066a4:	02048c63          	beqz	s1,800066dc <consoleintr+0x68>
    800066a8:	0a092783          	lw	a5,160(s2)
    800066ac:	09892703          	lw	a4,152(s2)
    800066b0:	07f00693          	li	a3,127
    800066b4:	40e7873b          	subw	a4,a5,a4
    800066b8:	02e6e263          	bltu	a3,a4,800066dc <consoleintr+0x68>
    800066bc:	00d00713          	li	a4,13
    800066c0:	04e48063          	beq	s1,a4,80006700 <consoleintr+0x8c>
    800066c4:	07f7f713          	andi	a4,a5,127
    800066c8:	00e90733          	add	a4,s2,a4
    800066cc:	0017879b          	addiw	a5,a5,1
    800066d0:	0af92023          	sw	a5,160(s2)
    800066d4:	00970c23          	sb	s1,24(a4)
    800066d8:	08f92e23          	sw	a5,156(s2)
    800066dc:	01013403          	ld	s0,16(sp)
    800066e0:	01813083          	ld	ra,24(sp)
    800066e4:	00813483          	ld	s1,8(sp)
    800066e8:	00013903          	ld	s2,0(sp)
    800066ec:	00005517          	auipc	a0,0x5
    800066f0:	0dc50513          	addi	a0,a0,220 # 8000b7c8 <cons>
    800066f4:	02010113          	addi	sp,sp,32
    800066f8:	00001317          	auipc	t1,0x1
    800066fc:	eb030067          	jr	-336(t1) # 800075a8 <release>
    80006700:	00a00493          	li	s1,10
    80006704:	fc1ff06f          	j	800066c4 <consoleintr+0x50>

0000000080006708 <consoleinit>:
    80006708:	fe010113          	addi	sp,sp,-32
    8000670c:	00113c23          	sd	ra,24(sp)
    80006710:	00813823          	sd	s0,16(sp)
    80006714:	00913423          	sd	s1,8(sp)
    80006718:	02010413          	addi	s0,sp,32
    8000671c:	00005497          	auipc	s1,0x5
    80006720:	0ac48493          	addi	s1,s1,172 # 8000b7c8 <cons>
    80006724:	00048513          	mv	a0,s1
    80006728:	00002597          	auipc	a1,0x2
    8000672c:	d6858593          	addi	a1,a1,-664 # 80008490 <_ZL6digits+0x150>
    80006730:	00001097          	auipc	ra,0x1
    80006734:	d88080e7          	jalr	-632(ra) # 800074b8 <initlock>
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	7ac080e7          	jalr	1964(ra) # 80006ee4 <uartinit>
    80006740:	01813083          	ld	ra,24(sp)
    80006744:	01013403          	ld	s0,16(sp)
    80006748:	00000797          	auipc	a5,0x0
    8000674c:	d9c78793          	addi	a5,a5,-612 # 800064e4 <consoleread>
    80006750:	0af4bc23          	sd	a5,184(s1)
    80006754:	00000797          	auipc	a5,0x0
    80006758:	cec78793          	addi	a5,a5,-788 # 80006440 <consolewrite>
    8000675c:	0cf4b023          	sd	a5,192(s1)
    80006760:	00813483          	ld	s1,8(sp)
    80006764:	02010113          	addi	sp,sp,32
    80006768:	00008067          	ret

000000008000676c <console_read>:
    8000676c:	ff010113          	addi	sp,sp,-16
    80006770:	00813423          	sd	s0,8(sp)
    80006774:	01010413          	addi	s0,sp,16
    80006778:	00813403          	ld	s0,8(sp)
    8000677c:	00005317          	auipc	t1,0x5
    80006780:	10433303          	ld	t1,260(t1) # 8000b880 <devsw+0x10>
    80006784:	01010113          	addi	sp,sp,16
    80006788:	00030067          	jr	t1

000000008000678c <console_write>:
    8000678c:	ff010113          	addi	sp,sp,-16
    80006790:	00813423          	sd	s0,8(sp)
    80006794:	01010413          	addi	s0,sp,16
    80006798:	00813403          	ld	s0,8(sp)
    8000679c:	00005317          	auipc	t1,0x5
    800067a0:	0ec33303          	ld	t1,236(t1) # 8000b888 <devsw+0x18>
    800067a4:	01010113          	addi	sp,sp,16
    800067a8:	00030067          	jr	t1

00000000800067ac <panic>:
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00113c23          	sd	ra,24(sp)
    800067b4:	00813823          	sd	s0,16(sp)
    800067b8:	00913423          	sd	s1,8(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	00050493          	mv	s1,a0
    800067c4:	00002517          	auipc	a0,0x2
    800067c8:	cd450513          	addi	a0,a0,-812 # 80008498 <_ZL6digits+0x158>
    800067cc:	00005797          	auipc	a5,0x5
    800067d0:	1407ae23          	sw	zero,348(a5) # 8000b928 <pr+0x18>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	034080e7          	jalr	52(ra) # 80006808 <__printf>
    800067dc:	00048513          	mv	a0,s1
    800067e0:	00000097          	auipc	ra,0x0
    800067e4:	028080e7          	jalr	40(ra) # 80006808 <__printf>
    800067e8:	00002517          	auipc	a0,0x2
    800067ec:	99850513          	addi	a0,a0,-1640 # 80008180 <CONSOLE_STATUS+0x170>
    800067f0:	00000097          	auipc	ra,0x0
    800067f4:	018080e7          	jalr	24(ra) # 80006808 <__printf>
    800067f8:	00100793          	li	a5,1
    800067fc:	00004717          	auipc	a4,0x4
    80006800:	e0f72e23          	sw	a5,-484(a4) # 8000a618 <panicked>
    80006804:	0000006f          	j	80006804 <panic+0x58>

0000000080006808 <__printf>:
    80006808:	f3010113          	addi	sp,sp,-208
    8000680c:	08813023          	sd	s0,128(sp)
    80006810:	07313423          	sd	s3,104(sp)
    80006814:	09010413          	addi	s0,sp,144
    80006818:	05813023          	sd	s8,64(sp)
    8000681c:	08113423          	sd	ra,136(sp)
    80006820:	06913c23          	sd	s1,120(sp)
    80006824:	07213823          	sd	s2,112(sp)
    80006828:	07413023          	sd	s4,96(sp)
    8000682c:	05513c23          	sd	s5,88(sp)
    80006830:	05613823          	sd	s6,80(sp)
    80006834:	05713423          	sd	s7,72(sp)
    80006838:	03913c23          	sd	s9,56(sp)
    8000683c:	03a13823          	sd	s10,48(sp)
    80006840:	03b13423          	sd	s11,40(sp)
    80006844:	00005317          	auipc	t1,0x5
    80006848:	0cc30313          	addi	t1,t1,204 # 8000b910 <pr>
    8000684c:	01832c03          	lw	s8,24(t1)
    80006850:	00b43423          	sd	a1,8(s0)
    80006854:	00c43823          	sd	a2,16(s0)
    80006858:	00d43c23          	sd	a3,24(s0)
    8000685c:	02e43023          	sd	a4,32(s0)
    80006860:	02f43423          	sd	a5,40(s0)
    80006864:	03043823          	sd	a6,48(s0)
    80006868:	03143c23          	sd	a7,56(s0)
    8000686c:	00050993          	mv	s3,a0
    80006870:	4a0c1663          	bnez	s8,80006d1c <__printf+0x514>
    80006874:	60098c63          	beqz	s3,80006e8c <__printf+0x684>
    80006878:	0009c503          	lbu	a0,0(s3)
    8000687c:	00840793          	addi	a5,s0,8
    80006880:	f6f43c23          	sd	a5,-136(s0)
    80006884:	00000493          	li	s1,0
    80006888:	22050063          	beqz	a0,80006aa8 <__printf+0x2a0>
    8000688c:	00002a37          	lui	s4,0x2
    80006890:	00018ab7          	lui	s5,0x18
    80006894:	000f4b37          	lui	s6,0xf4
    80006898:	00989bb7          	lui	s7,0x989
    8000689c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800068a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800068a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800068a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800068ac:	00148c9b          	addiw	s9,s1,1
    800068b0:	02500793          	li	a5,37
    800068b4:	01998933          	add	s2,s3,s9
    800068b8:	38f51263          	bne	a0,a5,80006c3c <__printf+0x434>
    800068bc:	00094783          	lbu	a5,0(s2)
    800068c0:	00078c9b          	sext.w	s9,a5
    800068c4:	1e078263          	beqz	a5,80006aa8 <__printf+0x2a0>
    800068c8:	0024849b          	addiw	s1,s1,2
    800068cc:	07000713          	li	a4,112
    800068d0:	00998933          	add	s2,s3,s1
    800068d4:	38e78a63          	beq	a5,a4,80006c68 <__printf+0x460>
    800068d8:	20f76863          	bltu	a4,a5,80006ae8 <__printf+0x2e0>
    800068dc:	42a78863          	beq	a5,a0,80006d0c <__printf+0x504>
    800068e0:	06400713          	li	a4,100
    800068e4:	40e79663          	bne	a5,a4,80006cf0 <__printf+0x4e8>
    800068e8:	f7843783          	ld	a5,-136(s0)
    800068ec:	0007a603          	lw	a2,0(a5)
    800068f0:	00878793          	addi	a5,a5,8
    800068f4:	f6f43c23          	sd	a5,-136(s0)
    800068f8:	42064a63          	bltz	a2,80006d2c <__printf+0x524>
    800068fc:	00a00713          	li	a4,10
    80006900:	02e677bb          	remuw	a5,a2,a4
    80006904:	00002d97          	auipc	s11,0x2
    80006908:	bbcd8d93          	addi	s11,s11,-1092 # 800084c0 <digits>
    8000690c:	00900593          	li	a1,9
    80006910:	0006051b          	sext.w	a0,a2
    80006914:	00000c93          	li	s9,0
    80006918:	02079793          	slli	a5,a5,0x20
    8000691c:	0207d793          	srli	a5,a5,0x20
    80006920:	00fd87b3          	add	a5,s11,a5
    80006924:	0007c783          	lbu	a5,0(a5)
    80006928:	02e656bb          	divuw	a3,a2,a4
    8000692c:	f8f40023          	sb	a5,-128(s0)
    80006930:	14c5d863          	bge	a1,a2,80006a80 <__printf+0x278>
    80006934:	06300593          	li	a1,99
    80006938:	00100c93          	li	s9,1
    8000693c:	02e6f7bb          	remuw	a5,a3,a4
    80006940:	02079793          	slli	a5,a5,0x20
    80006944:	0207d793          	srli	a5,a5,0x20
    80006948:	00fd87b3          	add	a5,s11,a5
    8000694c:	0007c783          	lbu	a5,0(a5)
    80006950:	02e6d73b          	divuw	a4,a3,a4
    80006954:	f8f400a3          	sb	a5,-127(s0)
    80006958:	12a5f463          	bgeu	a1,a0,80006a80 <__printf+0x278>
    8000695c:	00a00693          	li	a3,10
    80006960:	00900593          	li	a1,9
    80006964:	02d777bb          	remuw	a5,a4,a3
    80006968:	02079793          	slli	a5,a5,0x20
    8000696c:	0207d793          	srli	a5,a5,0x20
    80006970:	00fd87b3          	add	a5,s11,a5
    80006974:	0007c503          	lbu	a0,0(a5)
    80006978:	02d757bb          	divuw	a5,a4,a3
    8000697c:	f8a40123          	sb	a0,-126(s0)
    80006980:	48e5f263          	bgeu	a1,a4,80006e04 <__printf+0x5fc>
    80006984:	06300513          	li	a0,99
    80006988:	02d7f5bb          	remuw	a1,a5,a3
    8000698c:	02059593          	slli	a1,a1,0x20
    80006990:	0205d593          	srli	a1,a1,0x20
    80006994:	00bd85b3          	add	a1,s11,a1
    80006998:	0005c583          	lbu	a1,0(a1)
    8000699c:	02d7d7bb          	divuw	a5,a5,a3
    800069a0:	f8b401a3          	sb	a1,-125(s0)
    800069a4:	48e57263          	bgeu	a0,a4,80006e28 <__printf+0x620>
    800069a8:	3e700513          	li	a0,999
    800069ac:	02d7f5bb          	remuw	a1,a5,a3
    800069b0:	02059593          	slli	a1,a1,0x20
    800069b4:	0205d593          	srli	a1,a1,0x20
    800069b8:	00bd85b3          	add	a1,s11,a1
    800069bc:	0005c583          	lbu	a1,0(a1)
    800069c0:	02d7d7bb          	divuw	a5,a5,a3
    800069c4:	f8b40223          	sb	a1,-124(s0)
    800069c8:	46e57663          	bgeu	a0,a4,80006e34 <__printf+0x62c>
    800069cc:	02d7f5bb          	remuw	a1,a5,a3
    800069d0:	02059593          	slli	a1,a1,0x20
    800069d4:	0205d593          	srli	a1,a1,0x20
    800069d8:	00bd85b3          	add	a1,s11,a1
    800069dc:	0005c583          	lbu	a1,0(a1)
    800069e0:	02d7d7bb          	divuw	a5,a5,a3
    800069e4:	f8b402a3          	sb	a1,-123(s0)
    800069e8:	46ea7863          	bgeu	s4,a4,80006e58 <__printf+0x650>
    800069ec:	02d7f5bb          	remuw	a1,a5,a3
    800069f0:	02059593          	slli	a1,a1,0x20
    800069f4:	0205d593          	srli	a1,a1,0x20
    800069f8:	00bd85b3          	add	a1,s11,a1
    800069fc:	0005c583          	lbu	a1,0(a1)
    80006a00:	02d7d7bb          	divuw	a5,a5,a3
    80006a04:	f8b40323          	sb	a1,-122(s0)
    80006a08:	3eeaf863          	bgeu	s5,a4,80006df8 <__printf+0x5f0>
    80006a0c:	02d7f5bb          	remuw	a1,a5,a3
    80006a10:	02059593          	slli	a1,a1,0x20
    80006a14:	0205d593          	srli	a1,a1,0x20
    80006a18:	00bd85b3          	add	a1,s11,a1
    80006a1c:	0005c583          	lbu	a1,0(a1)
    80006a20:	02d7d7bb          	divuw	a5,a5,a3
    80006a24:	f8b403a3          	sb	a1,-121(s0)
    80006a28:	42eb7e63          	bgeu	s6,a4,80006e64 <__printf+0x65c>
    80006a2c:	02d7f5bb          	remuw	a1,a5,a3
    80006a30:	02059593          	slli	a1,a1,0x20
    80006a34:	0205d593          	srli	a1,a1,0x20
    80006a38:	00bd85b3          	add	a1,s11,a1
    80006a3c:	0005c583          	lbu	a1,0(a1)
    80006a40:	02d7d7bb          	divuw	a5,a5,a3
    80006a44:	f8b40423          	sb	a1,-120(s0)
    80006a48:	42ebfc63          	bgeu	s7,a4,80006e80 <__printf+0x678>
    80006a4c:	02079793          	slli	a5,a5,0x20
    80006a50:	0207d793          	srli	a5,a5,0x20
    80006a54:	00fd8db3          	add	s11,s11,a5
    80006a58:	000dc703          	lbu	a4,0(s11)
    80006a5c:	00a00793          	li	a5,10
    80006a60:	00900c93          	li	s9,9
    80006a64:	f8e404a3          	sb	a4,-119(s0)
    80006a68:	00065c63          	bgez	a2,80006a80 <__printf+0x278>
    80006a6c:	f9040713          	addi	a4,s0,-112
    80006a70:	00f70733          	add	a4,a4,a5
    80006a74:	02d00693          	li	a3,45
    80006a78:	fed70823          	sb	a3,-16(a4)
    80006a7c:	00078c93          	mv	s9,a5
    80006a80:	f8040793          	addi	a5,s0,-128
    80006a84:	01978cb3          	add	s9,a5,s9
    80006a88:	f7f40d13          	addi	s10,s0,-129
    80006a8c:	000cc503          	lbu	a0,0(s9)
    80006a90:	fffc8c93          	addi	s9,s9,-1
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	b90080e7          	jalr	-1136(ra) # 80006624 <consputc>
    80006a9c:	ffac98e3          	bne	s9,s10,80006a8c <__printf+0x284>
    80006aa0:	00094503          	lbu	a0,0(s2)
    80006aa4:	e00514e3          	bnez	a0,800068ac <__printf+0xa4>
    80006aa8:	1a0c1663          	bnez	s8,80006c54 <__printf+0x44c>
    80006aac:	08813083          	ld	ra,136(sp)
    80006ab0:	08013403          	ld	s0,128(sp)
    80006ab4:	07813483          	ld	s1,120(sp)
    80006ab8:	07013903          	ld	s2,112(sp)
    80006abc:	06813983          	ld	s3,104(sp)
    80006ac0:	06013a03          	ld	s4,96(sp)
    80006ac4:	05813a83          	ld	s5,88(sp)
    80006ac8:	05013b03          	ld	s6,80(sp)
    80006acc:	04813b83          	ld	s7,72(sp)
    80006ad0:	04013c03          	ld	s8,64(sp)
    80006ad4:	03813c83          	ld	s9,56(sp)
    80006ad8:	03013d03          	ld	s10,48(sp)
    80006adc:	02813d83          	ld	s11,40(sp)
    80006ae0:	0d010113          	addi	sp,sp,208
    80006ae4:	00008067          	ret
    80006ae8:	07300713          	li	a4,115
    80006aec:	1ce78a63          	beq	a5,a4,80006cc0 <__printf+0x4b8>
    80006af0:	07800713          	li	a4,120
    80006af4:	1ee79e63          	bne	a5,a4,80006cf0 <__printf+0x4e8>
    80006af8:	f7843783          	ld	a5,-136(s0)
    80006afc:	0007a703          	lw	a4,0(a5)
    80006b00:	00878793          	addi	a5,a5,8
    80006b04:	f6f43c23          	sd	a5,-136(s0)
    80006b08:	28074263          	bltz	a4,80006d8c <__printf+0x584>
    80006b0c:	00002d97          	auipc	s11,0x2
    80006b10:	9b4d8d93          	addi	s11,s11,-1612 # 800084c0 <digits>
    80006b14:	00f77793          	andi	a5,a4,15
    80006b18:	00fd87b3          	add	a5,s11,a5
    80006b1c:	0007c683          	lbu	a3,0(a5)
    80006b20:	00f00613          	li	a2,15
    80006b24:	0007079b          	sext.w	a5,a4
    80006b28:	f8d40023          	sb	a3,-128(s0)
    80006b2c:	0047559b          	srliw	a1,a4,0x4
    80006b30:	0047569b          	srliw	a3,a4,0x4
    80006b34:	00000c93          	li	s9,0
    80006b38:	0ee65063          	bge	a2,a4,80006c18 <__printf+0x410>
    80006b3c:	00f6f693          	andi	a3,a3,15
    80006b40:	00dd86b3          	add	a3,s11,a3
    80006b44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006b48:	0087d79b          	srliw	a5,a5,0x8
    80006b4c:	00100c93          	li	s9,1
    80006b50:	f8d400a3          	sb	a3,-127(s0)
    80006b54:	0cb67263          	bgeu	a2,a1,80006c18 <__printf+0x410>
    80006b58:	00f7f693          	andi	a3,a5,15
    80006b5c:	00dd86b3          	add	a3,s11,a3
    80006b60:	0006c583          	lbu	a1,0(a3)
    80006b64:	00f00613          	li	a2,15
    80006b68:	0047d69b          	srliw	a3,a5,0x4
    80006b6c:	f8b40123          	sb	a1,-126(s0)
    80006b70:	0047d593          	srli	a1,a5,0x4
    80006b74:	28f67e63          	bgeu	a2,a5,80006e10 <__printf+0x608>
    80006b78:	00f6f693          	andi	a3,a3,15
    80006b7c:	00dd86b3          	add	a3,s11,a3
    80006b80:	0006c503          	lbu	a0,0(a3)
    80006b84:	0087d813          	srli	a6,a5,0x8
    80006b88:	0087d69b          	srliw	a3,a5,0x8
    80006b8c:	f8a401a3          	sb	a0,-125(s0)
    80006b90:	28b67663          	bgeu	a2,a1,80006e1c <__printf+0x614>
    80006b94:	00f6f693          	andi	a3,a3,15
    80006b98:	00dd86b3          	add	a3,s11,a3
    80006b9c:	0006c583          	lbu	a1,0(a3)
    80006ba0:	00c7d513          	srli	a0,a5,0xc
    80006ba4:	00c7d69b          	srliw	a3,a5,0xc
    80006ba8:	f8b40223          	sb	a1,-124(s0)
    80006bac:	29067a63          	bgeu	a2,a6,80006e40 <__printf+0x638>
    80006bb0:	00f6f693          	andi	a3,a3,15
    80006bb4:	00dd86b3          	add	a3,s11,a3
    80006bb8:	0006c583          	lbu	a1,0(a3)
    80006bbc:	0107d813          	srli	a6,a5,0x10
    80006bc0:	0107d69b          	srliw	a3,a5,0x10
    80006bc4:	f8b402a3          	sb	a1,-123(s0)
    80006bc8:	28a67263          	bgeu	a2,a0,80006e4c <__printf+0x644>
    80006bcc:	00f6f693          	andi	a3,a3,15
    80006bd0:	00dd86b3          	add	a3,s11,a3
    80006bd4:	0006c683          	lbu	a3,0(a3)
    80006bd8:	0147d79b          	srliw	a5,a5,0x14
    80006bdc:	f8d40323          	sb	a3,-122(s0)
    80006be0:	21067663          	bgeu	a2,a6,80006dec <__printf+0x5e4>
    80006be4:	02079793          	slli	a5,a5,0x20
    80006be8:	0207d793          	srli	a5,a5,0x20
    80006bec:	00fd8db3          	add	s11,s11,a5
    80006bf0:	000dc683          	lbu	a3,0(s11)
    80006bf4:	00800793          	li	a5,8
    80006bf8:	00700c93          	li	s9,7
    80006bfc:	f8d403a3          	sb	a3,-121(s0)
    80006c00:	00075c63          	bgez	a4,80006c18 <__printf+0x410>
    80006c04:	f9040713          	addi	a4,s0,-112
    80006c08:	00f70733          	add	a4,a4,a5
    80006c0c:	02d00693          	li	a3,45
    80006c10:	fed70823          	sb	a3,-16(a4)
    80006c14:	00078c93          	mv	s9,a5
    80006c18:	f8040793          	addi	a5,s0,-128
    80006c1c:	01978cb3          	add	s9,a5,s9
    80006c20:	f7f40d13          	addi	s10,s0,-129
    80006c24:	000cc503          	lbu	a0,0(s9)
    80006c28:	fffc8c93          	addi	s9,s9,-1
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	9f8080e7          	jalr	-1544(ra) # 80006624 <consputc>
    80006c34:	ff9d18e3          	bne	s10,s9,80006c24 <__printf+0x41c>
    80006c38:	0100006f          	j	80006c48 <__printf+0x440>
    80006c3c:	00000097          	auipc	ra,0x0
    80006c40:	9e8080e7          	jalr	-1560(ra) # 80006624 <consputc>
    80006c44:	000c8493          	mv	s1,s9
    80006c48:	00094503          	lbu	a0,0(s2)
    80006c4c:	c60510e3          	bnez	a0,800068ac <__printf+0xa4>
    80006c50:	e40c0ee3          	beqz	s8,80006aac <__printf+0x2a4>
    80006c54:	00005517          	auipc	a0,0x5
    80006c58:	cbc50513          	addi	a0,a0,-836 # 8000b910 <pr>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	94c080e7          	jalr	-1716(ra) # 800075a8 <release>
    80006c64:	e49ff06f          	j	80006aac <__printf+0x2a4>
    80006c68:	f7843783          	ld	a5,-136(s0)
    80006c6c:	03000513          	li	a0,48
    80006c70:	01000d13          	li	s10,16
    80006c74:	00878713          	addi	a4,a5,8
    80006c78:	0007bc83          	ld	s9,0(a5)
    80006c7c:	f6e43c23          	sd	a4,-136(s0)
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	9a4080e7          	jalr	-1628(ra) # 80006624 <consputc>
    80006c88:	07800513          	li	a0,120
    80006c8c:	00000097          	auipc	ra,0x0
    80006c90:	998080e7          	jalr	-1640(ra) # 80006624 <consputc>
    80006c94:	00002d97          	auipc	s11,0x2
    80006c98:	82cd8d93          	addi	s11,s11,-2004 # 800084c0 <digits>
    80006c9c:	03ccd793          	srli	a5,s9,0x3c
    80006ca0:	00fd87b3          	add	a5,s11,a5
    80006ca4:	0007c503          	lbu	a0,0(a5)
    80006ca8:	fffd0d1b          	addiw	s10,s10,-1
    80006cac:	004c9c93          	slli	s9,s9,0x4
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	974080e7          	jalr	-1676(ra) # 80006624 <consputc>
    80006cb8:	fe0d12e3          	bnez	s10,80006c9c <__printf+0x494>
    80006cbc:	f8dff06f          	j	80006c48 <__printf+0x440>
    80006cc0:	f7843783          	ld	a5,-136(s0)
    80006cc4:	0007bc83          	ld	s9,0(a5)
    80006cc8:	00878793          	addi	a5,a5,8
    80006ccc:	f6f43c23          	sd	a5,-136(s0)
    80006cd0:	000c9a63          	bnez	s9,80006ce4 <__printf+0x4dc>
    80006cd4:	1080006f          	j	80006ddc <__printf+0x5d4>
    80006cd8:	001c8c93          	addi	s9,s9,1
    80006cdc:	00000097          	auipc	ra,0x0
    80006ce0:	948080e7          	jalr	-1720(ra) # 80006624 <consputc>
    80006ce4:	000cc503          	lbu	a0,0(s9)
    80006ce8:	fe0518e3          	bnez	a0,80006cd8 <__printf+0x4d0>
    80006cec:	f5dff06f          	j	80006c48 <__printf+0x440>
    80006cf0:	02500513          	li	a0,37
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	930080e7          	jalr	-1744(ra) # 80006624 <consputc>
    80006cfc:	000c8513          	mv	a0,s9
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	924080e7          	jalr	-1756(ra) # 80006624 <consputc>
    80006d08:	f41ff06f          	j	80006c48 <__printf+0x440>
    80006d0c:	02500513          	li	a0,37
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	914080e7          	jalr	-1772(ra) # 80006624 <consputc>
    80006d18:	f31ff06f          	j	80006c48 <__printf+0x440>
    80006d1c:	00030513          	mv	a0,t1
    80006d20:	00000097          	auipc	ra,0x0
    80006d24:	7bc080e7          	jalr	1980(ra) # 800074dc <acquire>
    80006d28:	b4dff06f          	j	80006874 <__printf+0x6c>
    80006d2c:	40c0053b          	negw	a0,a2
    80006d30:	00a00713          	li	a4,10
    80006d34:	02e576bb          	remuw	a3,a0,a4
    80006d38:	00001d97          	auipc	s11,0x1
    80006d3c:	788d8d93          	addi	s11,s11,1928 # 800084c0 <digits>
    80006d40:	ff700593          	li	a1,-9
    80006d44:	02069693          	slli	a3,a3,0x20
    80006d48:	0206d693          	srli	a3,a3,0x20
    80006d4c:	00dd86b3          	add	a3,s11,a3
    80006d50:	0006c683          	lbu	a3,0(a3)
    80006d54:	02e557bb          	divuw	a5,a0,a4
    80006d58:	f8d40023          	sb	a3,-128(s0)
    80006d5c:	10b65e63          	bge	a2,a1,80006e78 <__printf+0x670>
    80006d60:	06300593          	li	a1,99
    80006d64:	02e7f6bb          	remuw	a3,a5,a4
    80006d68:	02069693          	slli	a3,a3,0x20
    80006d6c:	0206d693          	srli	a3,a3,0x20
    80006d70:	00dd86b3          	add	a3,s11,a3
    80006d74:	0006c683          	lbu	a3,0(a3)
    80006d78:	02e7d73b          	divuw	a4,a5,a4
    80006d7c:	00200793          	li	a5,2
    80006d80:	f8d400a3          	sb	a3,-127(s0)
    80006d84:	bca5ece3          	bltu	a1,a0,8000695c <__printf+0x154>
    80006d88:	ce5ff06f          	j	80006a6c <__printf+0x264>
    80006d8c:	40e007bb          	negw	a5,a4
    80006d90:	00001d97          	auipc	s11,0x1
    80006d94:	730d8d93          	addi	s11,s11,1840 # 800084c0 <digits>
    80006d98:	00f7f693          	andi	a3,a5,15
    80006d9c:	00dd86b3          	add	a3,s11,a3
    80006da0:	0006c583          	lbu	a1,0(a3)
    80006da4:	ff100613          	li	a2,-15
    80006da8:	0047d69b          	srliw	a3,a5,0x4
    80006dac:	f8b40023          	sb	a1,-128(s0)
    80006db0:	0047d59b          	srliw	a1,a5,0x4
    80006db4:	0ac75e63          	bge	a4,a2,80006e70 <__printf+0x668>
    80006db8:	00f6f693          	andi	a3,a3,15
    80006dbc:	00dd86b3          	add	a3,s11,a3
    80006dc0:	0006c603          	lbu	a2,0(a3)
    80006dc4:	00f00693          	li	a3,15
    80006dc8:	0087d79b          	srliw	a5,a5,0x8
    80006dcc:	f8c400a3          	sb	a2,-127(s0)
    80006dd0:	d8b6e4e3          	bltu	a3,a1,80006b58 <__printf+0x350>
    80006dd4:	00200793          	li	a5,2
    80006dd8:	e2dff06f          	j	80006c04 <__printf+0x3fc>
    80006ddc:	00001c97          	auipc	s9,0x1
    80006de0:	6c4c8c93          	addi	s9,s9,1732 # 800084a0 <_ZL6digits+0x160>
    80006de4:	02800513          	li	a0,40
    80006de8:	ef1ff06f          	j	80006cd8 <__printf+0x4d0>
    80006dec:	00700793          	li	a5,7
    80006df0:	00600c93          	li	s9,6
    80006df4:	e0dff06f          	j	80006c00 <__printf+0x3f8>
    80006df8:	00700793          	li	a5,7
    80006dfc:	00600c93          	li	s9,6
    80006e00:	c69ff06f          	j	80006a68 <__printf+0x260>
    80006e04:	00300793          	li	a5,3
    80006e08:	00200c93          	li	s9,2
    80006e0c:	c5dff06f          	j	80006a68 <__printf+0x260>
    80006e10:	00300793          	li	a5,3
    80006e14:	00200c93          	li	s9,2
    80006e18:	de9ff06f          	j	80006c00 <__printf+0x3f8>
    80006e1c:	00400793          	li	a5,4
    80006e20:	00300c93          	li	s9,3
    80006e24:	dddff06f          	j	80006c00 <__printf+0x3f8>
    80006e28:	00400793          	li	a5,4
    80006e2c:	00300c93          	li	s9,3
    80006e30:	c39ff06f          	j	80006a68 <__printf+0x260>
    80006e34:	00500793          	li	a5,5
    80006e38:	00400c93          	li	s9,4
    80006e3c:	c2dff06f          	j	80006a68 <__printf+0x260>
    80006e40:	00500793          	li	a5,5
    80006e44:	00400c93          	li	s9,4
    80006e48:	db9ff06f          	j	80006c00 <__printf+0x3f8>
    80006e4c:	00600793          	li	a5,6
    80006e50:	00500c93          	li	s9,5
    80006e54:	dadff06f          	j	80006c00 <__printf+0x3f8>
    80006e58:	00600793          	li	a5,6
    80006e5c:	00500c93          	li	s9,5
    80006e60:	c09ff06f          	j	80006a68 <__printf+0x260>
    80006e64:	00800793          	li	a5,8
    80006e68:	00700c93          	li	s9,7
    80006e6c:	bfdff06f          	j	80006a68 <__printf+0x260>
    80006e70:	00100793          	li	a5,1
    80006e74:	d91ff06f          	j	80006c04 <__printf+0x3fc>
    80006e78:	00100793          	li	a5,1
    80006e7c:	bf1ff06f          	j	80006a6c <__printf+0x264>
    80006e80:	00900793          	li	a5,9
    80006e84:	00800c93          	li	s9,8
    80006e88:	be1ff06f          	j	80006a68 <__printf+0x260>
    80006e8c:	00001517          	auipc	a0,0x1
    80006e90:	61c50513          	addi	a0,a0,1564 # 800084a8 <_ZL6digits+0x168>
    80006e94:	00000097          	auipc	ra,0x0
    80006e98:	918080e7          	jalr	-1768(ra) # 800067ac <panic>

0000000080006e9c <printfinit>:
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00813823          	sd	s0,16(sp)
    80006ea4:	00913423          	sd	s1,8(sp)
    80006ea8:	00113c23          	sd	ra,24(sp)
    80006eac:	02010413          	addi	s0,sp,32
    80006eb0:	00005497          	auipc	s1,0x5
    80006eb4:	a6048493          	addi	s1,s1,-1440 # 8000b910 <pr>
    80006eb8:	00048513          	mv	a0,s1
    80006ebc:	00001597          	auipc	a1,0x1
    80006ec0:	5fc58593          	addi	a1,a1,1532 # 800084b8 <_ZL6digits+0x178>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	5f4080e7          	jalr	1524(ra) # 800074b8 <initlock>
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	0004ac23          	sw	zero,24(s1)
    80006ed8:	00813483          	ld	s1,8(sp)
    80006edc:	02010113          	addi	sp,sp,32
    80006ee0:	00008067          	ret

0000000080006ee4 <uartinit>:
    80006ee4:	ff010113          	addi	sp,sp,-16
    80006ee8:	00813423          	sd	s0,8(sp)
    80006eec:	01010413          	addi	s0,sp,16
    80006ef0:	100007b7          	lui	a5,0x10000
    80006ef4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006ef8:	f8000713          	li	a4,-128
    80006efc:	00e781a3          	sb	a4,3(a5)
    80006f00:	00300713          	li	a4,3
    80006f04:	00e78023          	sb	a4,0(a5)
    80006f08:	000780a3          	sb	zero,1(a5)
    80006f0c:	00e781a3          	sb	a4,3(a5)
    80006f10:	00700693          	li	a3,7
    80006f14:	00d78123          	sb	a3,2(a5)
    80006f18:	00e780a3          	sb	a4,1(a5)
    80006f1c:	00813403          	ld	s0,8(sp)
    80006f20:	01010113          	addi	sp,sp,16
    80006f24:	00008067          	ret

0000000080006f28 <uartputc>:
    80006f28:	00003797          	auipc	a5,0x3
    80006f2c:	6f07a783          	lw	a5,1776(a5) # 8000a618 <panicked>
    80006f30:	00078463          	beqz	a5,80006f38 <uartputc+0x10>
    80006f34:	0000006f          	j	80006f34 <uartputc+0xc>
    80006f38:	fd010113          	addi	sp,sp,-48
    80006f3c:	02813023          	sd	s0,32(sp)
    80006f40:	00913c23          	sd	s1,24(sp)
    80006f44:	01213823          	sd	s2,16(sp)
    80006f48:	01313423          	sd	s3,8(sp)
    80006f4c:	02113423          	sd	ra,40(sp)
    80006f50:	03010413          	addi	s0,sp,48
    80006f54:	00003917          	auipc	s2,0x3
    80006f58:	6cc90913          	addi	s2,s2,1740 # 8000a620 <uart_tx_r>
    80006f5c:	00093783          	ld	a5,0(s2)
    80006f60:	00003497          	auipc	s1,0x3
    80006f64:	6c848493          	addi	s1,s1,1736 # 8000a628 <uart_tx_w>
    80006f68:	0004b703          	ld	a4,0(s1)
    80006f6c:	02078693          	addi	a3,a5,32
    80006f70:	00050993          	mv	s3,a0
    80006f74:	02e69c63          	bne	a3,a4,80006fac <uartputc+0x84>
    80006f78:	00001097          	auipc	ra,0x1
    80006f7c:	834080e7          	jalr	-1996(ra) # 800077ac <push_on>
    80006f80:	00093783          	ld	a5,0(s2)
    80006f84:	0004b703          	ld	a4,0(s1)
    80006f88:	02078793          	addi	a5,a5,32
    80006f8c:	00e79463          	bne	a5,a4,80006f94 <uartputc+0x6c>
    80006f90:	0000006f          	j	80006f90 <uartputc+0x68>
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	88c080e7          	jalr	-1908(ra) # 80007820 <pop_on>
    80006f9c:	00093783          	ld	a5,0(s2)
    80006fa0:	0004b703          	ld	a4,0(s1)
    80006fa4:	02078693          	addi	a3,a5,32
    80006fa8:	fce688e3          	beq	a3,a4,80006f78 <uartputc+0x50>
    80006fac:	01f77693          	andi	a3,a4,31
    80006fb0:	00005597          	auipc	a1,0x5
    80006fb4:	98058593          	addi	a1,a1,-1664 # 8000b930 <uart_tx_buf>
    80006fb8:	00d586b3          	add	a3,a1,a3
    80006fbc:	00170713          	addi	a4,a4,1
    80006fc0:	01368023          	sb	s3,0(a3)
    80006fc4:	00e4b023          	sd	a4,0(s1)
    80006fc8:	10000637          	lui	a2,0x10000
    80006fcc:	02f71063          	bne	a4,a5,80006fec <uartputc+0xc4>
    80006fd0:	0340006f          	j	80007004 <uartputc+0xdc>
    80006fd4:	00074703          	lbu	a4,0(a4)
    80006fd8:	00f93023          	sd	a5,0(s2)
    80006fdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006fe0:	00093783          	ld	a5,0(s2)
    80006fe4:	0004b703          	ld	a4,0(s1)
    80006fe8:	00f70e63          	beq	a4,a5,80007004 <uartputc+0xdc>
    80006fec:	00564683          	lbu	a3,5(a2)
    80006ff0:	01f7f713          	andi	a4,a5,31
    80006ff4:	00e58733          	add	a4,a1,a4
    80006ff8:	0206f693          	andi	a3,a3,32
    80006ffc:	00178793          	addi	a5,a5,1
    80007000:	fc069ae3          	bnez	a3,80006fd4 <uartputc+0xac>
    80007004:	02813083          	ld	ra,40(sp)
    80007008:	02013403          	ld	s0,32(sp)
    8000700c:	01813483          	ld	s1,24(sp)
    80007010:	01013903          	ld	s2,16(sp)
    80007014:	00813983          	ld	s3,8(sp)
    80007018:	03010113          	addi	sp,sp,48
    8000701c:	00008067          	ret

0000000080007020 <uartputc_sync>:
    80007020:	ff010113          	addi	sp,sp,-16
    80007024:	00813423          	sd	s0,8(sp)
    80007028:	01010413          	addi	s0,sp,16
    8000702c:	00003717          	auipc	a4,0x3
    80007030:	5ec72703          	lw	a4,1516(a4) # 8000a618 <panicked>
    80007034:	02071663          	bnez	a4,80007060 <uartputc_sync+0x40>
    80007038:	00050793          	mv	a5,a0
    8000703c:	100006b7          	lui	a3,0x10000
    80007040:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007044:	02077713          	andi	a4,a4,32
    80007048:	fe070ce3          	beqz	a4,80007040 <uartputc_sync+0x20>
    8000704c:	0ff7f793          	andi	a5,a5,255
    80007050:	00f68023          	sb	a5,0(a3)
    80007054:	00813403          	ld	s0,8(sp)
    80007058:	01010113          	addi	sp,sp,16
    8000705c:	00008067          	ret
    80007060:	0000006f          	j	80007060 <uartputc_sync+0x40>

0000000080007064 <uartstart>:
    80007064:	ff010113          	addi	sp,sp,-16
    80007068:	00813423          	sd	s0,8(sp)
    8000706c:	01010413          	addi	s0,sp,16
    80007070:	00003617          	auipc	a2,0x3
    80007074:	5b060613          	addi	a2,a2,1456 # 8000a620 <uart_tx_r>
    80007078:	00003517          	auipc	a0,0x3
    8000707c:	5b050513          	addi	a0,a0,1456 # 8000a628 <uart_tx_w>
    80007080:	00063783          	ld	a5,0(a2)
    80007084:	00053703          	ld	a4,0(a0)
    80007088:	04f70263          	beq	a4,a5,800070cc <uartstart+0x68>
    8000708c:	100005b7          	lui	a1,0x10000
    80007090:	00005817          	auipc	a6,0x5
    80007094:	8a080813          	addi	a6,a6,-1888 # 8000b930 <uart_tx_buf>
    80007098:	01c0006f          	j	800070b4 <uartstart+0x50>
    8000709c:	0006c703          	lbu	a4,0(a3)
    800070a0:	00f63023          	sd	a5,0(a2)
    800070a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800070a8:	00063783          	ld	a5,0(a2)
    800070ac:	00053703          	ld	a4,0(a0)
    800070b0:	00f70e63          	beq	a4,a5,800070cc <uartstart+0x68>
    800070b4:	01f7f713          	andi	a4,a5,31
    800070b8:	00e806b3          	add	a3,a6,a4
    800070bc:	0055c703          	lbu	a4,5(a1)
    800070c0:	00178793          	addi	a5,a5,1
    800070c4:	02077713          	andi	a4,a4,32
    800070c8:	fc071ae3          	bnez	a4,8000709c <uartstart+0x38>
    800070cc:	00813403          	ld	s0,8(sp)
    800070d0:	01010113          	addi	sp,sp,16
    800070d4:	00008067          	ret

00000000800070d8 <uartgetc>:
    800070d8:	ff010113          	addi	sp,sp,-16
    800070dc:	00813423          	sd	s0,8(sp)
    800070e0:	01010413          	addi	s0,sp,16
    800070e4:	10000737          	lui	a4,0x10000
    800070e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800070ec:	0017f793          	andi	a5,a5,1
    800070f0:	00078c63          	beqz	a5,80007108 <uartgetc+0x30>
    800070f4:	00074503          	lbu	a0,0(a4)
    800070f8:	0ff57513          	andi	a0,a0,255
    800070fc:	00813403          	ld	s0,8(sp)
    80007100:	01010113          	addi	sp,sp,16
    80007104:	00008067          	ret
    80007108:	fff00513          	li	a0,-1
    8000710c:	ff1ff06f          	j	800070fc <uartgetc+0x24>

0000000080007110 <uartintr>:
    80007110:	100007b7          	lui	a5,0x10000
    80007114:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007118:	0017f793          	andi	a5,a5,1
    8000711c:	0a078463          	beqz	a5,800071c4 <uartintr+0xb4>
    80007120:	fe010113          	addi	sp,sp,-32
    80007124:	00813823          	sd	s0,16(sp)
    80007128:	00913423          	sd	s1,8(sp)
    8000712c:	00113c23          	sd	ra,24(sp)
    80007130:	02010413          	addi	s0,sp,32
    80007134:	100004b7          	lui	s1,0x10000
    80007138:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000713c:	0ff57513          	andi	a0,a0,255
    80007140:	fffff097          	auipc	ra,0xfffff
    80007144:	534080e7          	jalr	1332(ra) # 80006674 <consoleintr>
    80007148:	0054c783          	lbu	a5,5(s1)
    8000714c:	0017f793          	andi	a5,a5,1
    80007150:	fe0794e3          	bnez	a5,80007138 <uartintr+0x28>
    80007154:	00003617          	auipc	a2,0x3
    80007158:	4cc60613          	addi	a2,a2,1228 # 8000a620 <uart_tx_r>
    8000715c:	00003517          	auipc	a0,0x3
    80007160:	4cc50513          	addi	a0,a0,1228 # 8000a628 <uart_tx_w>
    80007164:	00063783          	ld	a5,0(a2)
    80007168:	00053703          	ld	a4,0(a0)
    8000716c:	04f70263          	beq	a4,a5,800071b0 <uartintr+0xa0>
    80007170:	100005b7          	lui	a1,0x10000
    80007174:	00004817          	auipc	a6,0x4
    80007178:	7bc80813          	addi	a6,a6,1980 # 8000b930 <uart_tx_buf>
    8000717c:	01c0006f          	j	80007198 <uartintr+0x88>
    80007180:	0006c703          	lbu	a4,0(a3)
    80007184:	00f63023          	sd	a5,0(a2)
    80007188:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000718c:	00063783          	ld	a5,0(a2)
    80007190:	00053703          	ld	a4,0(a0)
    80007194:	00f70e63          	beq	a4,a5,800071b0 <uartintr+0xa0>
    80007198:	01f7f713          	andi	a4,a5,31
    8000719c:	00e806b3          	add	a3,a6,a4
    800071a0:	0055c703          	lbu	a4,5(a1)
    800071a4:	00178793          	addi	a5,a5,1
    800071a8:	02077713          	andi	a4,a4,32
    800071ac:	fc071ae3          	bnez	a4,80007180 <uartintr+0x70>
    800071b0:	01813083          	ld	ra,24(sp)
    800071b4:	01013403          	ld	s0,16(sp)
    800071b8:	00813483          	ld	s1,8(sp)
    800071bc:	02010113          	addi	sp,sp,32
    800071c0:	00008067          	ret
    800071c4:	00003617          	auipc	a2,0x3
    800071c8:	45c60613          	addi	a2,a2,1116 # 8000a620 <uart_tx_r>
    800071cc:	00003517          	auipc	a0,0x3
    800071d0:	45c50513          	addi	a0,a0,1116 # 8000a628 <uart_tx_w>
    800071d4:	00063783          	ld	a5,0(a2)
    800071d8:	00053703          	ld	a4,0(a0)
    800071dc:	04f70263          	beq	a4,a5,80007220 <uartintr+0x110>
    800071e0:	100005b7          	lui	a1,0x10000
    800071e4:	00004817          	auipc	a6,0x4
    800071e8:	74c80813          	addi	a6,a6,1868 # 8000b930 <uart_tx_buf>
    800071ec:	01c0006f          	j	80007208 <uartintr+0xf8>
    800071f0:	0006c703          	lbu	a4,0(a3)
    800071f4:	00f63023          	sd	a5,0(a2)
    800071f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071fc:	00063783          	ld	a5,0(a2)
    80007200:	00053703          	ld	a4,0(a0)
    80007204:	02f70063          	beq	a4,a5,80007224 <uartintr+0x114>
    80007208:	01f7f713          	andi	a4,a5,31
    8000720c:	00e806b3          	add	a3,a6,a4
    80007210:	0055c703          	lbu	a4,5(a1)
    80007214:	00178793          	addi	a5,a5,1
    80007218:	02077713          	andi	a4,a4,32
    8000721c:	fc071ae3          	bnez	a4,800071f0 <uartintr+0xe0>
    80007220:	00008067          	ret
    80007224:	00008067          	ret

0000000080007228 <kinit>:
    80007228:	fc010113          	addi	sp,sp,-64
    8000722c:	02913423          	sd	s1,40(sp)
    80007230:	fffff7b7          	lui	a5,0xfffff
    80007234:	00005497          	auipc	s1,0x5
    80007238:	71b48493          	addi	s1,s1,1819 # 8000c94f <end+0xfff>
    8000723c:	02813823          	sd	s0,48(sp)
    80007240:	01313c23          	sd	s3,24(sp)
    80007244:	00f4f4b3          	and	s1,s1,a5
    80007248:	02113c23          	sd	ra,56(sp)
    8000724c:	03213023          	sd	s2,32(sp)
    80007250:	01413823          	sd	s4,16(sp)
    80007254:	01513423          	sd	s5,8(sp)
    80007258:	04010413          	addi	s0,sp,64
    8000725c:	000017b7          	lui	a5,0x1
    80007260:	01100993          	li	s3,17
    80007264:	00f487b3          	add	a5,s1,a5
    80007268:	01b99993          	slli	s3,s3,0x1b
    8000726c:	06f9e063          	bltu	s3,a5,800072cc <kinit+0xa4>
    80007270:	00004a97          	auipc	s5,0x4
    80007274:	6e0a8a93          	addi	s5,s5,1760 # 8000b950 <end>
    80007278:	0754ec63          	bltu	s1,s5,800072f0 <kinit+0xc8>
    8000727c:	0734fa63          	bgeu	s1,s3,800072f0 <kinit+0xc8>
    80007280:	00088a37          	lui	s4,0x88
    80007284:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007288:	00003917          	auipc	s2,0x3
    8000728c:	3a890913          	addi	s2,s2,936 # 8000a630 <kmem>
    80007290:	00ca1a13          	slli	s4,s4,0xc
    80007294:	0140006f          	j	800072a8 <kinit+0x80>
    80007298:	000017b7          	lui	a5,0x1
    8000729c:	00f484b3          	add	s1,s1,a5
    800072a0:	0554e863          	bltu	s1,s5,800072f0 <kinit+0xc8>
    800072a4:	0534f663          	bgeu	s1,s3,800072f0 <kinit+0xc8>
    800072a8:	00001637          	lui	a2,0x1
    800072ac:	00100593          	li	a1,1
    800072b0:	00048513          	mv	a0,s1
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	5e4080e7          	jalr	1508(ra) # 80007898 <__memset>
    800072bc:	00093783          	ld	a5,0(s2)
    800072c0:	00f4b023          	sd	a5,0(s1)
    800072c4:	00993023          	sd	s1,0(s2)
    800072c8:	fd4498e3          	bne	s1,s4,80007298 <kinit+0x70>
    800072cc:	03813083          	ld	ra,56(sp)
    800072d0:	03013403          	ld	s0,48(sp)
    800072d4:	02813483          	ld	s1,40(sp)
    800072d8:	02013903          	ld	s2,32(sp)
    800072dc:	01813983          	ld	s3,24(sp)
    800072e0:	01013a03          	ld	s4,16(sp)
    800072e4:	00813a83          	ld	s5,8(sp)
    800072e8:	04010113          	addi	sp,sp,64
    800072ec:	00008067          	ret
    800072f0:	00001517          	auipc	a0,0x1
    800072f4:	1e850513          	addi	a0,a0,488 # 800084d8 <digits+0x18>
    800072f8:	fffff097          	auipc	ra,0xfffff
    800072fc:	4b4080e7          	jalr	1204(ra) # 800067ac <panic>

0000000080007300 <freerange>:
    80007300:	fc010113          	addi	sp,sp,-64
    80007304:	000017b7          	lui	a5,0x1
    80007308:	02913423          	sd	s1,40(sp)
    8000730c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007310:	009504b3          	add	s1,a0,s1
    80007314:	fffff537          	lui	a0,0xfffff
    80007318:	02813823          	sd	s0,48(sp)
    8000731c:	02113c23          	sd	ra,56(sp)
    80007320:	03213023          	sd	s2,32(sp)
    80007324:	01313c23          	sd	s3,24(sp)
    80007328:	01413823          	sd	s4,16(sp)
    8000732c:	01513423          	sd	s5,8(sp)
    80007330:	01613023          	sd	s6,0(sp)
    80007334:	04010413          	addi	s0,sp,64
    80007338:	00a4f4b3          	and	s1,s1,a0
    8000733c:	00f487b3          	add	a5,s1,a5
    80007340:	06f5e463          	bltu	a1,a5,800073a8 <freerange+0xa8>
    80007344:	00004a97          	auipc	s5,0x4
    80007348:	60ca8a93          	addi	s5,s5,1548 # 8000b950 <end>
    8000734c:	0954e263          	bltu	s1,s5,800073d0 <freerange+0xd0>
    80007350:	01100993          	li	s3,17
    80007354:	01b99993          	slli	s3,s3,0x1b
    80007358:	0734fc63          	bgeu	s1,s3,800073d0 <freerange+0xd0>
    8000735c:	00058a13          	mv	s4,a1
    80007360:	00003917          	auipc	s2,0x3
    80007364:	2d090913          	addi	s2,s2,720 # 8000a630 <kmem>
    80007368:	00002b37          	lui	s6,0x2
    8000736c:	0140006f          	j	80007380 <freerange+0x80>
    80007370:	000017b7          	lui	a5,0x1
    80007374:	00f484b3          	add	s1,s1,a5
    80007378:	0554ec63          	bltu	s1,s5,800073d0 <freerange+0xd0>
    8000737c:	0534fa63          	bgeu	s1,s3,800073d0 <freerange+0xd0>
    80007380:	00001637          	lui	a2,0x1
    80007384:	00100593          	li	a1,1
    80007388:	00048513          	mv	a0,s1
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	50c080e7          	jalr	1292(ra) # 80007898 <__memset>
    80007394:	00093703          	ld	a4,0(s2)
    80007398:	016487b3          	add	a5,s1,s6
    8000739c:	00e4b023          	sd	a4,0(s1)
    800073a0:	00993023          	sd	s1,0(s2)
    800073a4:	fcfa76e3          	bgeu	s4,a5,80007370 <freerange+0x70>
    800073a8:	03813083          	ld	ra,56(sp)
    800073ac:	03013403          	ld	s0,48(sp)
    800073b0:	02813483          	ld	s1,40(sp)
    800073b4:	02013903          	ld	s2,32(sp)
    800073b8:	01813983          	ld	s3,24(sp)
    800073bc:	01013a03          	ld	s4,16(sp)
    800073c0:	00813a83          	ld	s5,8(sp)
    800073c4:	00013b03          	ld	s6,0(sp)
    800073c8:	04010113          	addi	sp,sp,64
    800073cc:	00008067          	ret
    800073d0:	00001517          	auipc	a0,0x1
    800073d4:	10850513          	addi	a0,a0,264 # 800084d8 <digits+0x18>
    800073d8:	fffff097          	auipc	ra,0xfffff
    800073dc:	3d4080e7          	jalr	980(ra) # 800067ac <panic>

00000000800073e0 <kfree>:
    800073e0:	fe010113          	addi	sp,sp,-32
    800073e4:	00813823          	sd	s0,16(sp)
    800073e8:	00113c23          	sd	ra,24(sp)
    800073ec:	00913423          	sd	s1,8(sp)
    800073f0:	02010413          	addi	s0,sp,32
    800073f4:	03451793          	slli	a5,a0,0x34
    800073f8:	04079c63          	bnez	a5,80007450 <kfree+0x70>
    800073fc:	00004797          	auipc	a5,0x4
    80007400:	55478793          	addi	a5,a5,1364 # 8000b950 <end>
    80007404:	00050493          	mv	s1,a0
    80007408:	04f56463          	bltu	a0,a5,80007450 <kfree+0x70>
    8000740c:	01100793          	li	a5,17
    80007410:	01b79793          	slli	a5,a5,0x1b
    80007414:	02f57e63          	bgeu	a0,a5,80007450 <kfree+0x70>
    80007418:	00001637          	lui	a2,0x1
    8000741c:	00100593          	li	a1,1
    80007420:	00000097          	auipc	ra,0x0
    80007424:	478080e7          	jalr	1144(ra) # 80007898 <__memset>
    80007428:	00003797          	auipc	a5,0x3
    8000742c:	20878793          	addi	a5,a5,520 # 8000a630 <kmem>
    80007430:	0007b703          	ld	a4,0(a5)
    80007434:	01813083          	ld	ra,24(sp)
    80007438:	01013403          	ld	s0,16(sp)
    8000743c:	00e4b023          	sd	a4,0(s1)
    80007440:	0097b023          	sd	s1,0(a5)
    80007444:	00813483          	ld	s1,8(sp)
    80007448:	02010113          	addi	sp,sp,32
    8000744c:	00008067          	ret
    80007450:	00001517          	auipc	a0,0x1
    80007454:	08850513          	addi	a0,a0,136 # 800084d8 <digits+0x18>
    80007458:	fffff097          	auipc	ra,0xfffff
    8000745c:	354080e7          	jalr	852(ra) # 800067ac <panic>

0000000080007460 <kalloc>:
    80007460:	fe010113          	addi	sp,sp,-32
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	00113c23          	sd	ra,24(sp)
    80007470:	02010413          	addi	s0,sp,32
    80007474:	00003797          	auipc	a5,0x3
    80007478:	1bc78793          	addi	a5,a5,444 # 8000a630 <kmem>
    8000747c:	0007b483          	ld	s1,0(a5)
    80007480:	02048063          	beqz	s1,800074a0 <kalloc+0x40>
    80007484:	0004b703          	ld	a4,0(s1)
    80007488:	00001637          	lui	a2,0x1
    8000748c:	00500593          	li	a1,5
    80007490:	00048513          	mv	a0,s1
    80007494:	00e7b023          	sd	a4,0(a5)
    80007498:	00000097          	auipc	ra,0x0
    8000749c:	400080e7          	jalr	1024(ra) # 80007898 <__memset>
    800074a0:	01813083          	ld	ra,24(sp)
    800074a4:	01013403          	ld	s0,16(sp)
    800074a8:	00048513          	mv	a0,s1
    800074ac:	00813483          	ld	s1,8(sp)
    800074b0:	02010113          	addi	sp,sp,32
    800074b4:	00008067          	ret

00000000800074b8 <initlock>:
    800074b8:	ff010113          	addi	sp,sp,-16
    800074bc:	00813423          	sd	s0,8(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	00813403          	ld	s0,8(sp)
    800074c8:	00b53423          	sd	a1,8(a0)
    800074cc:	00052023          	sw	zero,0(a0)
    800074d0:	00053823          	sd	zero,16(a0)
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00008067          	ret

00000000800074dc <acquire>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00913423          	sd	s1,8(sp)
    800074e8:	00113c23          	sd	ra,24(sp)
    800074ec:	01213023          	sd	s2,0(sp)
    800074f0:	02010413          	addi	s0,sp,32
    800074f4:	00050493          	mv	s1,a0
    800074f8:	10002973          	csrr	s2,sstatus
    800074fc:	100027f3          	csrr	a5,sstatus
    80007500:	ffd7f793          	andi	a5,a5,-3
    80007504:	10079073          	csrw	sstatus,a5
    80007508:	fffff097          	auipc	ra,0xfffff
    8000750c:	8ec080e7          	jalr	-1812(ra) # 80005df4 <mycpu>
    80007510:	07852783          	lw	a5,120(a0)
    80007514:	06078e63          	beqz	a5,80007590 <acquire+0xb4>
    80007518:	fffff097          	auipc	ra,0xfffff
    8000751c:	8dc080e7          	jalr	-1828(ra) # 80005df4 <mycpu>
    80007520:	07852783          	lw	a5,120(a0)
    80007524:	0004a703          	lw	a4,0(s1)
    80007528:	0017879b          	addiw	a5,a5,1
    8000752c:	06f52c23          	sw	a5,120(a0)
    80007530:	04071063          	bnez	a4,80007570 <acquire+0x94>
    80007534:	00100713          	li	a4,1
    80007538:	00070793          	mv	a5,a4
    8000753c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007540:	0007879b          	sext.w	a5,a5
    80007544:	fe079ae3          	bnez	a5,80007538 <acquire+0x5c>
    80007548:	0ff0000f          	fence
    8000754c:	fffff097          	auipc	ra,0xfffff
    80007550:	8a8080e7          	jalr	-1880(ra) # 80005df4 <mycpu>
    80007554:	01813083          	ld	ra,24(sp)
    80007558:	01013403          	ld	s0,16(sp)
    8000755c:	00a4b823          	sd	a0,16(s1)
    80007560:	00013903          	ld	s2,0(sp)
    80007564:	00813483          	ld	s1,8(sp)
    80007568:	02010113          	addi	sp,sp,32
    8000756c:	00008067          	ret
    80007570:	0104b903          	ld	s2,16(s1)
    80007574:	fffff097          	auipc	ra,0xfffff
    80007578:	880080e7          	jalr	-1920(ra) # 80005df4 <mycpu>
    8000757c:	faa91ce3          	bne	s2,a0,80007534 <acquire+0x58>
    80007580:	00001517          	auipc	a0,0x1
    80007584:	f6050513          	addi	a0,a0,-160 # 800084e0 <digits+0x20>
    80007588:	fffff097          	auipc	ra,0xfffff
    8000758c:	224080e7          	jalr	548(ra) # 800067ac <panic>
    80007590:	00195913          	srli	s2,s2,0x1
    80007594:	fffff097          	auipc	ra,0xfffff
    80007598:	860080e7          	jalr	-1952(ra) # 80005df4 <mycpu>
    8000759c:	00197913          	andi	s2,s2,1
    800075a0:	07252e23          	sw	s2,124(a0)
    800075a4:	f75ff06f          	j	80007518 <acquire+0x3c>

00000000800075a8 <release>:
    800075a8:	fe010113          	addi	sp,sp,-32
    800075ac:	00813823          	sd	s0,16(sp)
    800075b0:	00113c23          	sd	ra,24(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	01213023          	sd	s2,0(sp)
    800075bc:	02010413          	addi	s0,sp,32
    800075c0:	00052783          	lw	a5,0(a0)
    800075c4:	00079a63          	bnez	a5,800075d8 <release+0x30>
    800075c8:	00001517          	auipc	a0,0x1
    800075cc:	f2050513          	addi	a0,a0,-224 # 800084e8 <digits+0x28>
    800075d0:	fffff097          	auipc	ra,0xfffff
    800075d4:	1dc080e7          	jalr	476(ra) # 800067ac <panic>
    800075d8:	01053903          	ld	s2,16(a0)
    800075dc:	00050493          	mv	s1,a0
    800075e0:	fffff097          	auipc	ra,0xfffff
    800075e4:	814080e7          	jalr	-2028(ra) # 80005df4 <mycpu>
    800075e8:	fea910e3          	bne	s2,a0,800075c8 <release+0x20>
    800075ec:	0004b823          	sd	zero,16(s1)
    800075f0:	0ff0000f          	fence
    800075f4:	0f50000f          	fence	iorw,ow
    800075f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800075fc:	ffffe097          	auipc	ra,0xffffe
    80007600:	7f8080e7          	jalr	2040(ra) # 80005df4 <mycpu>
    80007604:	100027f3          	csrr	a5,sstatus
    80007608:	0027f793          	andi	a5,a5,2
    8000760c:	04079a63          	bnez	a5,80007660 <release+0xb8>
    80007610:	07852783          	lw	a5,120(a0)
    80007614:	02f05e63          	blez	a5,80007650 <release+0xa8>
    80007618:	fff7871b          	addiw	a4,a5,-1
    8000761c:	06e52c23          	sw	a4,120(a0)
    80007620:	00071c63          	bnez	a4,80007638 <release+0x90>
    80007624:	07c52783          	lw	a5,124(a0)
    80007628:	00078863          	beqz	a5,80007638 <release+0x90>
    8000762c:	100027f3          	csrr	a5,sstatus
    80007630:	0027e793          	ori	a5,a5,2
    80007634:	10079073          	csrw	sstatus,a5
    80007638:	01813083          	ld	ra,24(sp)
    8000763c:	01013403          	ld	s0,16(sp)
    80007640:	00813483          	ld	s1,8(sp)
    80007644:	00013903          	ld	s2,0(sp)
    80007648:	02010113          	addi	sp,sp,32
    8000764c:	00008067          	ret
    80007650:	00001517          	auipc	a0,0x1
    80007654:	eb850513          	addi	a0,a0,-328 # 80008508 <digits+0x48>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	154080e7          	jalr	340(ra) # 800067ac <panic>
    80007660:	00001517          	auipc	a0,0x1
    80007664:	e9050513          	addi	a0,a0,-368 # 800084f0 <digits+0x30>
    80007668:	fffff097          	auipc	ra,0xfffff
    8000766c:	144080e7          	jalr	324(ra) # 800067ac <panic>

0000000080007670 <holding>:
    80007670:	00052783          	lw	a5,0(a0)
    80007674:	00079663          	bnez	a5,80007680 <holding+0x10>
    80007678:	00000513          	li	a0,0
    8000767c:	00008067          	ret
    80007680:	fe010113          	addi	sp,sp,-32
    80007684:	00813823          	sd	s0,16(sp)
    80007688:	00913423          	sd	s1,8(sp)
    8000768c:	00113c23          	sd	ra,24(sp)
    80007690:	02010413          	addi	s0,sp,32
    80007694:	01053483          	ld	s1,16(a0)
    80007698:	ffffe097          	auipc	ra,0xffffe
    8000769c:	75c080e7          	jalr	1884(ra) # 80005df4 <mycpu>
    800076a0:	01813083          	ld	ra,24(sp)
    800076a4:	01013403          	ld	s0,16(sp)
    800076a8:	40a48533          	sub	a0,s1,a0
    800076ac:	00153513          	seqz	a0,a0
    800076b0:	00813483          	ld	s1,8(sp)
    800076b4:	02010113          	addi	sp,sp,32
    800076b8:	00008067          	ret

00000000800076bc <push_off>:
    800076bc:	fe010113          	addi	sp,sp,-32
    800076c0:	00813823          	sd	s0,16(sp)
    800076c4:	00113c23          	sd	ra,24(sp)
    800076c8:	00913423          	sd	s1,8(sp)
    800076cc:	02010413          	addi	s0,sp,32
    800076d0:	100024f3          	csrr	s1,sstatus
    800076d4:	100027f3          	csrr	a5,sstatus
    800076d8:	ffd7f793          	andi	a5,a5,-3
    800076dc:	10079073          	csrw	sstatus,a5
    800076e0:	ffffe097          	auipc	ra,0xffffe
    800076e4:	714080e7          	jalr	1812(ra) # 80005df4 <mycpu>
    800076e8:	07852783          	lw	a5,120(a0)
    800076ec:	02078663          	beqz	a5,80007718 <push_off+0x5c>
    800076f0:	ffffe097          	auipc	ra,0xffffe
    800076f4:	704080e7          	jalr	1796(ra) # 80005df4 <mycpu>
    800076f8:	07852783          	lw	a5,120(a0)
    800076fc:	01813083          	ld	ra,24(sp)
    80007700:	01013403          	ld	s0,16(sp)
    80007704:	0017879b          	addiw	a5,a5,1
    80007708:	06f52c23          	sw	a5,120(a0)
    8000770c:	00813483          	ld	s1,8(sp)
    80007710:	02010113          	addi	sp,sp,32
    80007714:	00008067          	ret
    80007718:	0014d493          	srli	s1,s1,0x1
    8000771c:	ffffe097          	auipc	ra,0xffffe
    80007720:	6d8080e7          	jalr	1752(ra) # 80005df4 <mycpu>
    80007724:	0014f493          	andi	s1,s1,1
    80007728:	06952e23          	sw	s1,124(a0)
    8000772c:	fc5ff06f          	j	800076f0 <push_off+0x34>

0000000080007730 <pop_off>:
    80007730:	ff010113          	addi	sp,sp,-16
    80007734:	00813023          	sd	s0,0(sp)
    80007738:	00113423          	sd	ra,8(sp)
    8000773c:	01010413          	addi	s0,sp,16
    80007740:	ffffe097          	auipc	ra,0xffffe
    80007744:	6b4080e7          	jalr	1716(ra) # 80005df4 <mycpu>
    80007748:	100027f3          	csrr	a5,sstatus
    8000774c:	0027f793          	andi	a5,a5,2
    80007750:	04079663          	bnez	a5,8000779c <pop_off+0x6c>
    80007754:	07852783          	lw	a5,120(a0)
    80007758:	02f05a63          	blez	a5,8000778c <pop_off+0x5c>
    8000775c:	fff7871b          	addiw	a4,a5,-1
    80007760:	06e52c23          	sw	a4,120(a0)
    80007764:	00071c63          	bnez	a4,8000777c <pop_off+0x4c>
    80007768:	07c52783          	lw	a5,124(a0)
    8000776c:	00078863          	beqz	a5,8000777c <pop_off+0x4c>
    80007770:	100027f3          	csrr	a5,sstatus
    80007774:	0027e793          	ori	a5,a5,2
    80007778:	10079073          	csrw	sstatus,a5
    8000777c:	00813083          	ld	ra,8(sp)
    80007780:	00013403          	ld	s0,0(sp)
    80007784:	01010113          	addi	sp,sp,16
    80007788:	00008067          	ret
    8000778c:	00001517          	auipc	a0,0x1
    80007790:	d7c50513          	addi	a0,a0,-644 # 80008508 <digits+0x48>
    80007794:	fffff097          	auipc	ra,0xfffff
    80007798:	018080e7          	jalr	24(ra) # 800067ac <panic>
    8000779c:	00001517          	auipc	a0,0x1
    800077a0:	d5450513          	addi	a0,a0,-684 # 800084f0 <digits+0x30>
    800077a4:	fffff097          	auipc	ra,0xfffff
    800077a8:	008080e7          	jalr	8(ra) # 800067ac <panic>

00000000800077ac <push_on>:
    800077ac:	fe010113          	addi	sp,sp,-32
    800077b0:	00813823          	sd	s0,16(sp)
    800077b4:	00113c23          	sd	ra,24(sp)
    800077b8:	00913423          	sd	s1,8(sp)
    800077bc:	02010413          	addi	s0,sp,32
    800077c0:	100024f3          	csrr	s1,sstatus
    800077c4:	100027f3          	csrr	a5,sstatus
    800077c8:	0027e793          	ori	a5,a5,2
    800077cc:	10079073          	csrw	sstatus,a5
    800077d0:	ffffe097          	auipc	ra,0xffffe
    800077d4:	624080e7          	jalr	1572(ra) # 80005df4 <mycpu>
    800077d8:	07852783          	lw	a5,120(a0)
    800077dc:	02078663          	beqz	a5,80007808 <push_on+0x5c>
    800077e0:	ffffe097          	auipc	ra,0xffffe
    800077e4:	614080e7          	jalr	1556(ra) # 80005df4 <mycpu>
    800077e8:	07852783          	lw	a5,120(a0)
    800077ec:	01813083          	ld	ra,24(sp)
    800077f0:	01013403          	ld	s0,16(sp)
    800077f4:	0017879b          	addiw	a5,a5,1
    800077f8:	06f52c23          	sw	a5,120(a0)
    800077fc:	00813483          	ld	s1,8(sp)
    80007800:	02010113          	addi	sp,sp,32
    80007804:	00008067          	ret
    80007808:	0014d493          	srli	s1,s1,0x1
    8000780c:	ffffe097          	auipc	ra,0xffffe
    80007810:	5e8080e7          	jalr	1512(ra) # 80005df4 <mycpu>
    80007814:	0014f493          	andi	s1,s1,1
    80007818:	06952e23          	sw	s1,124(a0)
    8000781c:	fc5ff06f          	j	800077e0 <push_on+0x34>

0000000080007820 <pop_on>:
    80007820:	ff010113          	addi	sp,sp,-16
    80007824:	00813023          	sd	s0,0(sp)
    80007828:	00113423          	sd	ra,8(sp)
    8000782c:	01010413          	addi	s0,sp,16
    80007830:	ffffe097          	auipc	ra,0xffffe
    80007834:	5c4080e7          	jalr	1476(ra) # 80005df4 <mycpu>
    80007838:	100027f3          	csrr	a5,sstatus
    8000783c:	0027f793          	andi	a5,a5,2
    80007840:	04078463          	beqz	a5,80007888 <pop_on+0x68>
    80007844:	07852783          	lw	a5,120(a0)
    80007848:	02f05863          	blez	a5,80007878 <pop_on+0x58>
    8000784c:	fff7879b          	addiw	a5,a5,-1
    80007850:	06f52c23          	sw	a5,120(a0)
    80007854:	07853783          	ld	a5,120(a0)
    80007858:	00079863          	bnez	a5,80007868 <pop_on+0x48>
    8000785c:	100027f3          	csrr	a5,sstatus
    80007860:	ffd7f793          	andi	a5,a5,-3
    80007864:	10079073          	csrw	sstatus,a5
    80007868:	00813083          	ld	ra,8(sp)
    8000786c:	00013403          	ld	s0,0(sp)
    80007870:	01010113          	addi	sp,sp,16
    80007874:	00008067          	ret
    80007878:	00001517          	auipc	a0,0x1
    8000787c:	cb850513          	addi	a0,a0,-840 # 80008530 <digits+0x70>
    80007880:	fffff097          	auipc	ra,0xfffff
    80007884:	f2c080e7          	jalr	-212(ra) # 800067ac <panic>
    80007888:	00001517          	auipc	a0,0x1
    8000788c:	c8850513          	addi	a0,a0,-888 # 80008510 <digits+0x50>
    80007890:	fffff097          	auipc	ra,0xfffff
    80007894:	f1c080e7          	jalr	-228(ra) # 800067ac <panic>

0000000080007898 <__memset>:
    80007898:	ff010113          	addi	sp,sp,-16
    8000789c:	00813423          	sd	s0,8(sp)
    800078a0:	01010413          	addi	s0,sp,16
    800078a4:	1a060e63          	beqz	a2,80007a60 <__memset+0x1c8>
    800078a8:	40a007b3          	neg	a5,a0
    800078ac:	0077f793          	andi	a5,a5,7
    800078b0:	00778693          	addi	a3,a5,7
    800078b4:	00b00813          	li	a6,11
    800078b8:	0ff5f593          	andi	a1,a1,255
    800078bc:	fff6071b          	addiw	a4,a2,-1
    800078c0:	1b06e663          	bltu	a3,a6,80007a6c <__memset+0x1d4>
    800078c4:	1cd76463          	bltu	a4,a3,80007a8c <__memset+0x1f4>
    800078c8:	1a078e63          	beqz	a5,80007a84 <__memset+0x1ec>
    800078cc:	00b50023          	sb	a1,0(a0)
    800078d0:	00100713          	li	a4,1
    800078d4:	1ae78463          	beq	a5,a4,80007a7c <__memset+0x1e4>
    800078d8:	00b500a3          	sb	a1,1(a0)
    800078dc:	00200713          	li	a4,2
    800078e0:	1ae78a63          	beq	a5,a4,80007a94 <__memset+0x1fc>
    800078e4:	00b50123          	sb	a1,2(a0)
    800078e8:	00300713          	li	a4,3
    800078ec:	18e78463          	beq	a5,a4,80007a74 <__memset+0x1dc>
    800078f0:	00b501a3          	sb	a1,3(a0)
    800078f4:	00400713          	li	a4,4
    800078f8:	1ae78263          	beq	a5,a4,80007a9c <__memset+0x204>
    800078fc:	00b50223          	sb	a1,4(a0)
    80007900:	00500713          	li	a4,5
    80007904:	1ae78063          	beq	a5,a4,80007aa4 <__memset+0x20c>
    80007908:	00b502a3          	sb	a1,5(a0)
    8000790c:	00700713          	li	a4,7
    80007910:	18e79e63          	bne	a5,a4,80007aac <__memset+0x214>
    80007914:	00b50323          	sb	a1,6(a0)
    80007918:	00700e93          	li	t4,7
    8000791c:	00859713          	slli	a4,a1,0x8
    80007920:	00e5e733          	or	a4,a1,a4
    80007924:	01059e13          	slli	t3,a1,0x10
    80007928:	01c76e33          	or	t3,a4,t3
    8000792c:	01859313          	slli	t1,a1,0x18
    80007930:	006e6333          	or	t1,t3,t1
    80007934:	02059893          	slli	a7,a1,0x20
    80007938:	40f60e3b          	subw	t3,a2,a5
    8000793c:	011368b3          	or	a7,t1,a7
    80007940:	02859813          	slli	a6,a1,0x28
    80007944:	0108e833          	or	a6,a7,a6
    80007948:	03059693          	slli	a3,a1,0x30
    8000794c:	003e589b          	srliw	a7,t3,0x3
    80007950:	00d866b3          	or	a3,a6,a3
    80007954:	03859713          	slli	a4,a1,0x38
    80007958:	00389813          	slli	a6,a7,0x3
    8000795c:	00f507b3          	add	a5,a0,a5
    80007960:	00e6e733          	or	a4,a3,a4
    80007964:	000e089b          	sext.w	a7,t3
    80007968:	00f806b3          	add	a3,a6,a5
    8000796c:	00e7b023          	sd	a4,0(a5)
    80007970:	00878793          	addi	a5,a5,8
    80007974:	fed79ce3          	bne	a5,a3,8000796c <__memset+0xd4>
    80007978:	ff8e7793          	andi	a5,t3,-8
    8000797c:	0007871b          	sext.w	a4,a5
    80007980:	01d787bb          	addw	a5,a5,t4
    80007984:	0ce88e63          	beq	a7,a4,80007a60 <__memset+0x1c8>
    80007988:	00f50733          	add	a4,a0,a5
    8000798c:	00b70023          	sb	a1,0(a4)
    80007990:	0017871b          	addiw	a4,a5,1
    80007994:	0cc77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007998:	00e50733          	add	a4,a0,a4
    8000799c:	00b70023          	sb	a1,0(a4)
    800079a0:	0027871b          	addiw	a4,a5,2
    800079a4:	0ac77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079a8:	00e50733          	add	a4,a0,a4
    800079ac:	00b70023          	sb	a1,0(a4)
    800079b0:	0037871b          	addiw	a4,a5,3
    800079b4:	0ac77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079b8:	00e50733          	add	a4,a0,a4
    800079bc:	00b70023          	sb	a1,0(a4)
    800079c0:	0047871b          	addiw	a4,a5,4
    800079c4:	08c77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079c8:	00e50733          	add	a4,a0,a4
    800079cc:	00b70023          	sb	a1,0(a4)
    800079d0:	0057871b          	addiw	a4,a5,5
    800079d4:	08c77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079d8:	00e50733          	add	a4,a0,a4
    800079dc:	00b70023          	sb	a1,0(a4)
    800079e0:	0067871b          	addiw	a4,a5,6
    800079e4:	06c77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	0077871b          	addiw	a4,a5,7
    800079f4:	06c77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	0087871b          	addiw	a4,a5,8
    80007a04:	04c77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	0097871b          	addiw	a4,a5,9
    80007a14:	04c77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	00a7871b          	addiw	a4,a5,10
    80007a24:	02c77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007a28:	00e50733          	add	a4,a0,a4
    80007a2c:	00b70023          	sb	a1,0(a4)
    80007a30:	00b7871b          	addiw	a4,a5,11
    80007a34:	02c77663          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007a38:	00e50733          	add	a4,a0,a4
    80007a3c:	00b70023          	sb	a1,0(a4)
    80007a40:	00c7871b          	addiw	a4,a5,12
    80007a44:	00c77e63          	bgeu	a4,a2,80007a60 <__memset+0x1c8>
    80007a48:	00e50733          	add	a4,a0,a4
    80007a4c:	00b70023          	sb	a1,0(a4)
    80007a50:	00d7879b          	addiw	a5,a5,13
    80007a54:	00c7f663          	bgeu	a5,a2,80007a60 <__memset+0x1c8>
    80007a58:	00f507b3          	add	a5,a0,a5
    80007a5c:	00b78023          	sb	a1,0(a5)
    80007a60:	00813403          	ld	s0,8(sp)
    80007a64:	01010113          	addi	sp,sp,16
    80007a68:	00008067          	ret
    80007a6c:	00b00693          	li	a3,11
    80007a70:	e55ff06f          	j	800078c4 <__memset+0x2c>
    80007a74:	00300e93          	li	t4,3
    80007a78:	ea5ff06f          	j	8000791c <__memset+0x84>
    80007a7c:	00100e93          	li	t4,1
    80007a80:	e9dff06f          	j	8000791c <__memset+0x84>
    80007a84:	00000e93          	li	t4,0
    80007a88:	e95ff06f          	j	8000791c <__memset+0x84>
    80007a8c:	00000793          	li	a5,0
    80007a90:	ef9ff06f          	j	80007988 <__memset+0xf0>
    80007a94:	00200e93          	li	t4,2
    80007a98:	e85ff06f          	j	8000791c <__memset+0x84>
    80007a9c:	00400e93          	li	t4,4
    80007aa0:	e7dff06f          	j	8000791c <__memset+0x84>
    80007aa4:	00500e93          	li	t4,5
    80007aa8:	e75ff06f          	j	8000791c <__memset+0x84>
    80007aac:	00600e93          	li	t4,6
    80007ab0:	e6dff06f          	j	8000791c <__memset+0x84>

0000000080007ab4 <__memmove>:
    80007ab4:	ff010113          	addi	sp,sp,-16
    80007ab8:	00813423          	sd	s0,8(sp)
    80007abc:	01010413          	addi	s0,sp,16
    80007ac0:	0e060863          	beqz	a2,80007bb0 <__memmove+0xfc>
    80007ac4:	fff6069b          	addiw	a3,a2,-1
    80007ac8:	0006881b          	sext.w	a6,a3
    80007acc:	0ea5e863          	bltu	a1,a0,80007bbc <__memmove+0x108>
    80007ad0:	00758713          	addi	a4,a1,7
    80007ad4:	00a5e7b3          	or	a5,a1,a0
    80007ad8:	40a70733          	sub	a4,a4,a0
    80007adc:	0077f793          	andi	a5,a5,7
    80007ae0:	00f73713          	sltiu	a4,a4,15
    80007ae4:	00174713          	xori	a4,a4,1
    80007ae8:	0017b793          	seqz	a5,a5
    80007aec:	00e7f7b3          	and	a5,a5,a4
    80007af0:	10078863          	beqz	a5,80007c00 <__memmove+0x14c>
    80007af4:	00900793          	li	a5,9
    80007af8:	1107f463          	bgeu	a5,a6,80007c00 <__memmove+0x14c>
    80007afc:	0036581b          	srliw	a6,a2,0x3
    80007b00:	fff8081b          	addiw	a6,a6,-1
    80007b04:	02081813          	slli	a6,a6,0x20
    80007b08:	01d85893          	srli	a7,a6,0x1d
    80007b0c:	00858813          	addi	a6,a1,8
    80007b10:	00058793          	mv	a5,a1
    80007b14:	00050713          	mv	a4,a0
    80007b18:	01088833          	add	a6,a7,a6
    80007b1c:	0007b883          	ld	a7,0(a5)
    80007b20:	00878793          	addi	a5,a5,8
    80007b24:	00870713          	addi	a4,a4,8
    80007b28:	ff173c23          	sd	a7,-8(a4)
    80007b2c:	ff0798e3          	bne	a5,a6,80007b1c <__memmove+0x68>
    80007b30:	ff867713          	andi	a4,a2,-8
    80007b34:	02071793          	slli	a5,a4,0x20
    80007b38:	0207d793          	srli	a5,a5,0x20
    80007b3c:	00f585b3          	add	a1,a1,a5
    80007b40:	40e686bb          	subw	a3,a3,a4
    80007b44:	00f507b3          	add	a5,a0,a5
    80007b48:	06e60463          	beq	a2,a4,80007bb0 <__memmove+0xfc>
    80007b4c:	0005c703          	lbu	a4,0(a1)
    80007b50:	00e78023          	sb	a4,0(a5)
    80007b54:	04068e63          	beqz	a3,80007bb0 <__memmove+0xfc>
    80007b58:	0015c603          	lbu	a2,1(a1)
    80007b5c:	00100713          	li	a4,1
    80007b60:	00c780a3          	sb	a2,1(a5)
    80007b64:	04e68663          	beq	a3,a4,80007bb0 <__memmove+0xfc>
    80007b68:	0025c603          	lbu	a2,2(a1)
    80007b6c:	00200713          	li	a4,2
    80007b70:	00c78123          	sb	a2,2(a5)
    80007b74:	02e68e63          	beq	a3,a4,80007bb0 <__memmove+0xfc>
    80007b78:	0035c603          	lbu	a2,3(a1)
    80007b7c:	00300713          	li	a4,3
    80007b80:	00c781a3          	sb	a2,3(a5)
    80007b84:	02e68663          	beq	a3,a4,80007bb0 <__memmove+0xfc>
    80007b88:	0045c603          	lbu	a2,4(a1)
    80007b8c:	00400713          	li	a4,4
    80007b90:	00c78223          	sb	a2,4(a5)
    80007b94:	00e68e63          	beq	a3,a4,80007bb0 <__memmove+0xfc>
    80007b98:	0055c603          	lbu	a2,5(a1)
    80007b9c:	00500713          	li	a4,5
    80007ba0:	00c782a3          	sb	a2,5(a5)
    80007ba4:	00e68663          	beq	a3,a4,80007bb0 <__memmove+0xfc>
    80007ba8:	0065c703          	lbu	a4,6(a1)
    80007bac:	00e78323          	sb	a4,6(a5)
    80007bb0:	00813403          	ld	s0,8(sp)
    80007bb4:	01010113          	addi	sp,sp,16
    80007bb8:	00008067          	ret
    80007bbc:	02061713          	slli	a4,a2,0x20
    80007bc0:	02075713          	srli	a4,a4,0x20
    80007bc4:	00e587b3          	add	a5,a1,a4
    80007bc8:	f0f574e3          	bgeu	a0,a5,80007ad0 <__memmove+0x1c>
    80007bcc:	02069613          	slli	a2,a3,0x20
    80007bd0:	02065613          	srli	a2,a2,0x20
    80007bd4:	fff64613          	not	a2,a2
    80007bd8:	00e50733          	add	a4,a0,a4
    80007bdc:	00c78633          	add	a2,a5,a2
    80007be0:	fff7c683          	lbu	a3,-1(a5)
    80007be4:	fff78793          	addi	a5,a5,-1
    80007be8:	fff70713          	addi	a4,a4,-1
    80007bec:	00d70023          	sb	a3,0(a4)
    80007bf0:	fec798e3          	bne	a5,a2,80007be0 <__memmove+0x12c>
    80007bf4:	00813403          	ld	s0,8(sp)
    80007bf8:	01010113          	addi	sp,sp,16
    80007bfc:	00008067          	ret
    80007c00:	02069713          	slli	a4,a3,0x20
    80007c04:	02075713          	srli	a4,a4,0x20
    80007c08:	00170713          	addi	a4,a4,1
    80007c0c:	00e50733          	add	a4,a0,a4
    80007c10:	00050793          	mv	a5,a0
    80007c14:	0005c683          	lbu	a3,0(a1)
    80007c18:	00178793          	addi	a5,a5,1
    80007c1c:	00158593          	addi	a1,a1,1
    80007c20:	fed78fa3          	sb	a3,-1(a5)
    80007c24:	fee798e3          	bne	a5,a4,80007c14 <__memmove+0x160>
    80007c28:	f89ff06f          	j	80007bb0 <__memmove+0xfc>

0000000080007c2c <__putc>:
    80007c2c:	fe010113          	addi	sp,sp,-32
    80007c30:	00813823          	sd	s0,16(sp)
    80007c34:	00113c23          	sd	ra,24(sp)
    80007c38:	02010413          	addi	s0,sp,32
    80007c3c:	00050793          	mv	a5,a0
    80007c40:	fef40593          	addi	a1,s0,-17
    80007c44:	00100613          	li	a2,1
    80007c48:	00000513          	li	a0,0
    80007c4c:	fef407a3          	sb	a5,-17(s0)
    80007c50:	fffff097          	auipc	ra,0xfffff
    80007c54:	b3c080e7          	jalr	-1220(ra) # 8000678c <console_write>
    80007c58:	01813083          	ld	ra,24(sp)
    80007c5c:	01013403          	ld	s0,16(sp)
    80007c60:	02010113          	addi	sp,sp,32
    80007c64:	00008067          	ret

0000000080007c68 <__getc>:
    80007c68:	fe010113          	addi	sp,sp,-32
    80007c6c:	00813823          	sd	s0,16(sp)
    80007c70:	00113c23          	sd	ra,24(sp)
    80007c74:	02010413          	addi	s0,sp,32
    80007c78:	fe840593          	addi	a1,s0,-24
    80007c7c:	00100613          	li	a2,1
    80007c80:	00000513          	li	a0,0
    80007c84:	fffff097          	auipc	ra,0xfffff
    80007c88:	ae8080e7          	jalr	-1304(ra) # 8000676c <console_read>
    80007c8c:	fe844503          	lbu	a0,-24(s0)
    80007c90:	01813083          	ld	ra,24(sp)
    80007c94:	01013403          	ld	s0,16(sp)
    80007c98:	02010113          	addi	sp,sp,32
    80007c9c:	00008067          	ret

0000000080007ca0 <console_handler>:
    80007ca0:	fe010113          	addi	sp,sp,-32
    80007ca4:	00813823          	sd	s0,16(sp)
    80007ca8:	00113c23          	sd	ra,24(sp)
    80007cac:	00913423          	sd	s1,8(sp)
    80007cb0:	02010413          	addi	s0,sp,32
    80007cb4:	14202773          	csrr	a4,scause
    80007cb8:	100027f3          	csrr	a5,sstatus
    80007cbc:	0027f793          	andi	a5,a5,2
    80007cc0:	06079e63          	bnez	a5,80007d3c <console_handler+0x9c>
    80007cc4:	00074c63          	bltz	a4,80007cdc <console_handler+0x3c>
    80007cc8:	01813083          	ld	ra,24(sp)
    80007ccc:	01013403          	ld	s0,16(sp)
    80007cd0:	00813483          	ld	s1,8(sp)
    80007cd4:	02010113          	addi	sp,sp,32
    80007cd8:	00008067          	ret
    80007cdc:	0ff77713          	andi	a4,a4,255
    80007ce0:	00900793          	li	a5,9
    80007ce4:	fef712e3          	bne	a4,a5,80007cc8 <console_handler+0x28>
    80007ce8:	ffffe097          	auipc	ra,0xffffe
    80007cec:	6dc080e7          	jalr	1756(ra) # 800063c4 <plic_claim>
    80007cf0:	00a00793          	li	a5,10
    80007cf4:	00050493          	mv	s1,a0
    80007cf8:	02f50c63          	beq	a0,a5,80007d30 <console_handler+0x90>
    80007cfc:	fc0506e3          	beqz	a0,80007cc8 <console_handler+0x28>
    80007d00:	00050593          	mv	a1,a0
    80007d04:	00000517          	auipc	a0,0x0
    80007d08:	73450513          	addi	a0,a0,1844 # 80008438 <_ZL6digits+0xf8>
    80007d0c:	fffff097          	auipc	ra,0xfffff
    80007d10:	afc080e7          	jalr	-1284(ra) # 80006808 <__printf>
    80007d14:	01013403          	ld	s0,16(sp)
    80007d18:	01813083          	ld	ra,24(sp)
    80007d1c:	00048513          	mv	a0,s1
    80007d20:	00813483          	ld	s1,8(sp)
    80007d24:	02010113          	addi	sp,sp,32
    80007d28:	ffffe317          	auipc	t1,0xffffe
    80007d2c:	6d430067          	jr	1748(t1) # 800063fc <plic_complete>
    80007d30:	fffff097          	auipc	ra,0xfffff
    80007d34:	3e0080e7          	jalr	992(ra) # 80007110 <uartintr>
    80007d38:	fddff06f          	j	80007d14 <console_handler+0x74>
    80007d3c:	00000517          	auipc	a0,0x0
    80007d40:	7fc50513          	addi	a0,a0,2044 # 80008538 <digits+0x78>
    80007d44:	fffff097          	auipc	ra,0xfffff
    80007d48:	a68080e7          	jalr	-1432(ra) # 800067ac <panic>
	...
