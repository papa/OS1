
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	24013103          	ld	sp,576(sp) # 8000a240 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	654050ef          	jal	ra,80005670 <start>

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
    80001080:	691010ef          	jal	ra,80002f10 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001470:	96c080e7          	jalr	-1684(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    800014a0:	93c080e7          	jalr	-1732(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    800014c0:	91c080e7          	jalr	-1764(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	980080e7          	jalr	-1664(ra) # 80002e48 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	cc850513          	addi	a0,a0,-824 # 80008198 <CONSOLE_STATUS+0x188>
    800014d8:	00002097          	auipc	ra,0x2
    800014dc:	900080e7          	jalr	-1792(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001538:	8a4080e7          	jalr	-1884(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001558:	884080e7          	jalr	-1916(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00002097          	auipc	ra,0x2
    80001564:	8e8080e7          	jalr	-1816(ra) # 80002e48 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    80001568:	00007517          	auipc	a0,0x7
    8000156c:	c3050513          	addi	a0,a0,-976 # 80008198 <CONSOLE_STATUS+0x188>
    80001570:	00002097          	auipc	ra,0x2
    80001574:	868080e7          	jalr	-1944(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    800015c4:	00007517          	auipc	a0,0x7
    800015c8:	a8450513          	addi	a0,a0,-1404 # 80008048 <CONSOLE_STATUS+0x38>
    800015cc:	00002097          	auipc	ra,0x2
    800015d0:	80c080e7          	jalr	-2036(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    800015f0:	00007517          	auipc	a0,0x7
    800015f4:	a7050513          	addi	a0,a0,-1424 # 80008060 <CONSOLE_STATUS+0x50>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	7e0080e7          	jalr	2016(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001600:	00048513          	mv	a0,s1
    80001604:	00002097          	auipc	ra,0x2
    80001608:	844080e7          	jalr	-1980(ra) # 80002e48 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000160c:	00007517          	auipc	a0,0x7
    80001610:	b8c50513          	addi	a0,a0,-1140 # 80008198 <CONSOLE_STATUS+0x188>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	7c4080e7          	jalr	1988(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001674:	00007517          	auipc	a0,0x7
    80001678:	9f450513          	addi	a0,a0,-1548 # 80008068 <CONSOLE_STATUS+0x58>
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	75c080e7          	jalr	1884(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001698:	00009917          	auipc	s2,0x9
    8000169c:	c0890913          	addi	s2,s2,-1016 # 8000a2a0 <_ZL5mutex>
    800016a0:	00093503          	ld	a0,0(s2)
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	564080e7          	jalr	1380(ra) # 80002c08 <_ZN9Semaphore4waitEv>
        mutex->signal();
    800016ac:	00093503          	ld	a0,0(s2)
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	5bc080e7          	jalr	1468(ra) # 80002c6c <_ZN9Semaphore6signalEv>
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
    800016e4:	00007517          	auipc	a0,0x7
    800016e8:	99450513          	addi	a0,a0,-1644 # 80008078 <CONSOLE_STATUS+0x68>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	6ec080e7          	jalr	1772(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    int x = 0;
    while(true)
    {
        mutex->wait();
    800016f4:	00009497          	auipc	s1,0x9
    800016f8:	bac48493          	addi	s1,s1,-1108 # 8000a2a0 <_ZL5mutex>
    800016fc:	0004b503          	ld	a0,0(s1)
    80001700:	00001097          	auipc	ra,0x1
    80001704:	508080e7          	jalr	1288(ra) # 80002c08 <_ZN9Semaphore4waitEv>
        //__putc('2');
        //__putc('\n');
        mutex->signal();
    80001708:	0004b503          	ld	a0,0(s1)
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	560080e7          	jalr	1376(ra) # 80002c6c <_ZN9Semaphore6signalEv>
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
    80001738:	00007517          	auipc	a0,0x7
    8000173c:	95050513          	addi	a0,a0,-1712 # 80008088 <CONSOLE_STATUS+0x78>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	698080e7          	jalr	1688(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    8000175c:	00009917          	auipc	s2,0x9
    80001760:	b4490913          	addi	s2,s2,-1212 # 8000a2a0 <_ZL5mutex>
    80001764:	00893503          	ld	a0,8(s2)
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	4a0080e7          	jalr	1184(ra) # 80002c08 <_ZN9Semaphore4waitEv>
        __putc('1');
    80001770:	03100513          	li	a0,49
    80001774:	00006097          	auipc	ra,0x6
    80001778:	fb8080e7          	jalr	-72(ra) # 8000772c <__putc>
        __putc('\n');
    8000177c:	00a00513          	li	a0,10
    80001780:	00006097          	auipc	ra,0x6
    80001784:	fac080e7          	jalr	-84(ra) # 8000772c <__putc>
        s2->signal();
    80001788:	01093503          	ld	a0,16(s2)
    8000178c:	00001097          	auipc	ra,0x1
    80001790:	4e0080e7          	jalr	1248(ra) # 80002c6c <_ZN9Semaphore6signalEv>
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
    800017c4:	00007517          	auipc	a0,0x7
    800017c8:	8d450513          	addi	a0,a0,-1836 # 80008098 <CONSOLE_STATUS+0x88>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	60c080e7          	jalr	1548(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    800017e8:	00009917          	auipc	s2,0x9
    800017ec:	ab890913          	addi	s2,s2,-1352 # 8000a2a0 <_ZL5mutex>
    800017f0:	01093503          	ld	a0,16(s2)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	414080e7          	jalr	1044(ra) # 80002c08 <_ZN9Semaphore4waitEv>
        __putc('2');
    800017fc:	03200513          	li	a0,50
    80001800:	00006097          	auipc	ra,0x6
    80001804:	f2c080e7          	jalr	-212(ra) # 8000772c <__putc>
        __putc('\n');
    80001808:	00a00513          	li	a0,10
    8000180c:	00006097          	auipc	ra,0x6
    80001810:	f20080e7          	jalr	-224(ra) # 8000772c <__putc>
        s3->signal();
    80001814:	01893503          	ld	a0,24(s2)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	454080e7          	jalr	1108(ra) # 80002c6c <_ZN9Semaphore6signalEv>
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
    80001850:	00007517          	auipc	a0,0x7
    80001854:	85850513          	addi	a0,a0,-1960 # 800080a8 <CONSOLE_STATUS+0x98>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	580080e7          	jalr	1408(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001874:	00009917          	auipc	s2,0x9
    80001878:	a2c90913          	addi	s2,s2,-1492 # 8000a2a0 <_ZL5mutex>
    8000187c:	01893503          	ld	a0,24(s2)
    80001880:	00001097          	auipc	ra,0x1
    80001884:	388080e7          	jalr	904(ra) # 80002c08 <_ZN9Semaphore4waitEv>
        __putc('3');
    80001888:	03300513          	li	a0,51
    8000188c:	00006097          	auipc	ra,0x6
    80001890:	ea0080e7          	jalr	-352(ra) # 8000772c <__putc>
        __putc('\n');
    80001894:	00a00513          	li	a0,10
    80001898:	00006097          	auipc	ra,0x6
    8000189c:	e94080e7          	jalr	-364(ra) # 8000772c <__putc>
        s1->signal();
    800018a0:	00893503          	ld	a0,8(s2)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	3c8080e7          	jalr	968(ra) # 80002c6c <_ZN9Semaphore6signalEv>
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
    800018e4:	160080e7          	jalr	352(ra) # 80002a40 <_Znwm>
    800018e8:	00050493          	mv	s1,a0
    800018ec:	00000613          	li	a2,0
    800018f0:	00000597          	auipc	a1,0x0
    800018f4:	b9058593          	addi	a1,a1,-1136 # 80001480 <_Z15thread1FunctionPv>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	2a8080e7          	jalr	680(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001900:	00048513          	mv	a0,s1
    80001904:	00001097          	auipc	ra,0x1
    80001908:	20c080e7          	jalr	524(ra) # 80002b10 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000190c:	02000513          	li	a0,32
    80001910:	00001097          	auipc	ra,0x1
    80001914:	130080e7          	jalr	304(ra) # 80002a40 <_Znwm>
    80001918:	00050913          	mv	s2,a0
    8000191c:	00000613          	li	a2,0
    80001920:	00000597          	auipc	a1,0x0
    80001924:	bf858593          	addi	a1,a1,-1032 # 80001518 <_Z15thread2FunctionPv>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	278080e7          	jalr	632(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001930:	00090513          	mv	a0,s2
    80001934:	00001097          	auipc	ra,0x1
    80001938:	1dc080e7          	jalr	476(ra) # 80002b10 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	414080e7          	jalr	1044(ra) # 80002d50 <_ZN5Riscv16enableInterruptsEv>
    80001944:	01c0006f          	j	80001960 <_Z11threadTest1v+0x9c>
        Riscv::printString("Main thread\n");
    80001948:	00006517          	auipc	a0,0x6
    8000194c:	77050513          	addi	a0,a0,1904 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	488080e7          	jalr	1160(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001980:	00006517          	auipc	a0,0x6
    80001984:	74850513          	addi	a0,a0,1864 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	450080e7          	jalr	1104(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001990:	00001097          	auipc	ra,0x1
    80001994:	3e0080e7          	jalr	992(ra) # 80002d70 <_ZN5Riscv17disableInterruptsEv>
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
    800019bc:	0b0080e7          	jalr	176(ra) # 80002a68 <_ZdlPv>
    800019c0:	00090513          	mv	a0,s2
    800019c4:	0000a097          	auipc	ra,0xa
    800019c8:	a34080e7          	jalr	-1484(ra) # 8000b3f8 <_Unwind_Resume>
    800019cc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	094080e7          	jalr	148(ra) # 80002a68 <_ZdlPv>
    800019dc:	00048513          	mv	a0,s1
    800019e0:	0000a097          	auipc	ra,0xa
    800019e4:	a18080e7          	jalr	-1512(ra) # 8000b3f8 <_Unwind_Resume>

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
    80001a08:	03c080e7          	jalr	60(ra) # 80002a40 <_Znwm>
    80001a0c:	00050493          	mv	s1,a0
    80001a10:	00000613          	li	a2,0
    80001a14:	00000597          	auipc	a1,0x0
    80001a18:	a4058593          	addi	a1,a1,-1472 # 80001454 <_Z4idlePv>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	184080e7          	jalr	388(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	0e8080e7          	jalr	232(ra) # 80002b10 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a30:	02000513          	li	a0,32
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	00c080e7          	jalr	12(ra) # 80002a40 <_Znwm>
    80001a3c:	00050913          	mv	s2,a0
    80001a40:	00000613          	li	a2,0
    80001a44:	00000597          	auipc	a1,0x0
    80001a48:	a3c58593          	addi	a1,a1,-1476 # 80001480 <_Z15thread1FunctionPv>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	154080e7          	jalr	340(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a54:	00090513          	mv	a0,s2
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	0b8080e7          	jalr	184(ra) # 80002b10 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a60:	02000513          	li	a0,32
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	fdc080e7          	jalr	-36(ra) # 80002a40 <_Znwm>
    80001a6c:	00050913          	mv	s2,a0
    80001a70:	00000613          	li	a2,0
    80001a74:	00000597          	auipc	a1,0x0
    80001a78:	b3c58593          	addi	a1,a1,-1220 # 800015b0 <_Z20thread2FunctionTest2Pv>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	124080e7          	jalr	292(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	088080e7          	jalr	136(ra) # 80002b10 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	2c0080e7          	jalr	704(ra) # 80002d50 <_ZN5Riscv16enableInterruptsEv>
    while(idleThread->myHandle->getState() != PCB::FINISHED);
    80001a98:	0084b783          	ld	a5,8(s1)
    80001a9c:	0307a703          	lw	a4,48(a5)
    80001aa0:	00300793          	li	a5,3
    80001aa4:	fef71ae3          	bne	a4,a5,80001a98 <_Z11threadTest2v+0xb0>
    Riscv::printString("End...\n");
    80001aa8:	00006517          	auipc	a0,0x6
    80001aac:	62050513          	addi	a0,a0,1568 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	328080e7          	jalr	808(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	2b8080e7          	jalr	696(ra) # 80002d70 <_ZN5Riscv17disableInterruptsEv>
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
    80001ae4:	f88080e7          	jalr	-120(ra) # 80002a68 <_ZdlPv>
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	0000a097          	auipc	ra,0xa
    80001af0:	90c080e7          	jalr	-1780(ra) # 8000b3f8 <_Unwind_Resume>
    80001af4:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001af8:	00090513          	mv	a0,s2
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	f6c080e7          	jalr	-148(ra) # 80002a68 <_ZdlPv>
    80001b04:	00048513          	mv	a0,s1
    80001b08:	0000a097          	auipc	ra,0xa
    80001b0c:	8f0080e7          	jalr	-1808(ra) # 8000b3f8 <_Unwind_Resume>
    80001b10:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b14:	00090513          	mv	a0,s2
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	f50080e7          	jalr	-176(ra) # 80002a68 <_ZdlPv>
    80001b20:	00048513          	mv	a0,s1
    80001b24:	0000a097          	auipc	ra,0xa
    80001b28:	8d4080e7          	jalr	-1836(ra) # 8000b3f8 <_Unwind_Resume>

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
    80001b68:	00006517          	auipc	a0,0x6
    80001b6c:	56850513          	addi	a0,a0,1384 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	268080e7          	jalr	616(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001bac:	00006517          	auipc	a0,0x6
    80001bb0:	53450513          	addi	a0,a0,1332 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	224080e7          	jalr	548(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001c00:	00006517          	auipc	a0,0x6
    80001c04:	4e050513          	addi	a0,a0,1248 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	1d0080e7          	jalr	464(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001c48:	00006517          	auipc	a0,0x6
    80001c4c:	49850513          	addi	a0,a0,1176 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	188080e7          	jalr	392(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001c8c:	00006517          	auipc	a0,0x6
    80001c90:	45450513          	addi	a0,a0,1108 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	144080e7          	jalr	324(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
            return;
    80001c9c:	f21ff06f          	j	80001bbc <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    80001ca0:	00006517          	auipc	a0,0x6
    80001ca4:	44850513          	addi	a0,a0,1096 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	130080e7          	jalr	304(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    80001cb0:	f0dff06f          	j	80001bbc <_Z10mallocFreev+0x68>

0000000080001cb4 <_Z9bigMallocv>:
{
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    80001cc4:	00006517          	auipc	a0,0x6
    80001cc8:	42c50513          	addi	a0,a0,1068 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	10c080e7          	jalr	268(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cd4:	00008797          	auipc	a5,0x8
    80001cd8:	57c7b783          	ld	a5,1404(a5) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cdc:	0007b503          	ld	a0,0(a5)
    80001ce0:	00008797          	auipc	a5,0x8
    80001ce4:	5487b783          	ld	a5,1352(a5) # 8000a228 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ce8:	0007b783          	ld	a5,0(a5)
    80001cec:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cf0:	06450513          	addi	a0,a0,100
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	554080e7          	jalr	1364(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001cfc:	02050263          	beqz	a0,80001d20 <_Z9bigMallocv+0x6c>
        Riscv::printString("not OK\n");
    80001d00:	00006517          	auipc	a0,0x6
    80001d04:	3e050513          	addi	a0,a0,992 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	0d0080e7          	jalr	208(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret
        Riscv::printString("OK\n");
    80001d20:	00006517          	auipc	a0,0x6
    80001d24:	3c850513          	addi	a0,a0,968 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	0b0080e7          	jalr	176(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001d50:	00006517          	auipc	a0,0x6
    80001d54:	3b050513          	addi	a0,a0,944 # 80008100 <CONSOLE_STATUS+0xf0>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	080080e7          	jalr	128(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001da8:	0a4080e7          	jalr	164(ra) # 80002e48 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001dac:	00006517          	auipc	a0,0x6
    80001db0:	3ec50513          	addi	a0,a0,1004 # 80008198 <CONSOLE_STATUS+0x188>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	024080e7          	jalr	36(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001dbc:	00291793          	slli	a5,s2,0x2
    80001dc0:	01278933          	add	s2,a5,s2
    80001dc4:	00191913          	slli	s2,s2,0x1
    80001dc8:	03390863          	beq	s2,s3,80001df8 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("not OK\n");
    80001dcc:	00006517          	auipc	a0,0x6
    80001dd0:	31450513          	addi	a0,a0,788 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	004080e7          	jalr	4(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
}
    80001ddc:	02813083          	ld	ra,40(sp)
    80001de0:	02013403          	ld	s0,32(sp)
    80001de4:	01813483          	ld	s1,24(sp)
    80001de8:	01013903          	ld	s2,16(sp)
    80001dec:	00813983          	ld	s3,8(sp)
    80001df0:	03010113          	addi	sp,sp,48
    80001df4:	00008067          	ret
        Riscv::printString("OK\n");
    80001df8:	00006517          	auipc	a0,0x6
    80001dfc:	2f050513          	addi	a0,a0,752 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	fd8080e7          	jalr	-40(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    80001e08:	fd5ff06f          	j	80001ddc <_Z17lotOfSmallMallocsv+0xa8>

0000000080001e0c <_Z7badFreev>:
{
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001e1c:	00006517          	auipc	a0,0x6
    80001e20:	2fc50513          	addi	a0,a0,764 # 80008118 <CONSOLE_STATUS+0x108>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	fb4080e7          	jalr	-76(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001e48:	00006517          	auipc	a0,0x6
    80001e4c:	29850513          	addi	a0,a0,664 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	f88080e7          	jalr	-120(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret
        Riscv::printString("OK\n");
    80001e68:	00006517          	auipc	a0,0x6
    80001e6c:	28050513          	addi	a0,a0,640 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	f68080e7          	jalr	-152(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001e94:	00006517          	auipc	a0,0x6
    80001e98:	29450513          	addi	a0,a0,660 # 80008128 <CONSOLE_STATUS+0x118>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	f3c080e7          	jalr	-196(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001fa8:	00006517          	auipc	a0,0x6
    80001fac:	14050513          	addi	a0,a0,320 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	e28080e7          	jalr	-472(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
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
    80001ffc:	01000513          	li	a0,16
    80002000:	00001097          	auipc	ra,0x1
    80002004:	a40080e7          	jalr	-1472(ra) # 80002a40 <_Znwm>
    80002008:	00050493          	mv	s1,a0
    8000200c:	00100593          	li	a1,1
    80002010:	00001097          	auipc	ra,0x1
    80002014:	c24080e7          	jalr	-988(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80002018:	00008797          	auipc	a5,0x8
    8000201c:	2897b423          	sd	s1,648(a5) # 8000a2a0 <_ZL5mutex>
    Thread* t1 = new Thread(&f1, 0);
    80002020:	02000513          	li	a0,32
    80002024:	00001097          	auipc	ra,0x1
    80002028:	a1c080e7          	jalr	-1508(ra) # 80002a40 <_Znwm>
    8000202c:	00050913          	mv	s2,a0
    80002030:	00000613          	li	a2,0
    80002034:	fffff597          	auipc	a1,0xfffff
    80002038:	62858593          	addi	a1,a1,1576 # 8000165c <_Z2f1Pv>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	b64080e7          	jalr	-1180(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2, 0);
    80002044:	02000513          	li	a0,32
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	9f8080e7          	jalr	-1544(ra) # 80002a40 <_Znwm>
    80002050:	00050493          	mv	s1,a0
    80002054:	00000613          	li	a2,0
    80002058:	fffff597          	auipc	a1,0xfffff
    8000205c:	67858593          	addi	a1,a1,1656 # 800016d0 <_Z2f2Pv>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	b40080e7          	jalr	-1216(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80002068:	00090513          	mv	a0,s2
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	aa4080e7          	jalr	-1372(ra) # 80002b10 <_ZN6Thread5startEv>
    t2->start();
    80002074:	00048513          	mv	a0,s1
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	a98080e7          	jalr	-1384(ra) # 80002b10 <_ZN6Thread5startEv>
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
    800020c0:	9ac080e7          	jalr	-1620(ra) # 80002a68 <_ZdlPv>
    800020c4:	00090513          	mv	a0,s2
    800020c8:	00009097          	auipc	ra,0x9
    800020cc:	330080e7          	jalr	816(ra) # 8000b3f8 <_Unwind_Resume>
    800020d0:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1, 0);
    800020d4:	00090513          	mv	a0,s2
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	990080e7          	jalr	-1648(ra) # 80002a68 <_ZdlPv>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00009097          	auipc	ra,0x9
    800020e8:	314080e7          	jalr	788(ra) # 8000b3f8 <_Unwind_Resume>
    800020ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&f2, 0);
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	974080e7          	jalr	-1676(ra) # 80002a68 <_ZdlPv>
    800020fc:	00090513          	mv	a0,s2
    80002100:	00009097          	auipc	ra,0x9
    80002104:	2f8080e7          	jalr	760(ra) # 8000b3f8 <_Unwind_Resume>

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
    80002124:	01000513          	li	a0,16
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	918080e7          	jalr	-1768(ra) # 80002a40 <_Znwm>
    80002130:	00050493          	mv	s1,a0
    80002134:	00100593          	li	a1,1
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	afc080e7          	jalr	-1284(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80002140:	00008797          	auipc	a5,0x8
    80002144:	1697b423          	sd	s1,360(a5) # 8000a2a8 <_ZL2s1>
    s2 = new Semaphore(0);
    80002148:	01000513          	li	a0,16
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	8f4080e7          	jalr	-1804(ra) # 80002a40 <_Znwm>
    80002154:	00050493          	mv	s1,a0
    80002158:	00000593          	li	a1,0
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	ad8080e7          	jalr	-1320(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80002164:	00008797          	auipc	a5,0x8
    80002168:	1497b623          	sd	s1,332(a5) # 8000a2b0 <_ZL2s2>
    s3 = new Semaphore(0);
    8000216c:	01000513          	li	a0,16
    80002170:	00001097          	auipc	ra,0x1
    80002174:	8d0080e7          	jalr	-1840(ra) # 80002a40 <_Znwm>
    80002178:	00050493          	mv	s1,a0
    8000217c:	00000593          	li	a1,0
    80002180:	00001097          	auipc	ra,0x1
    80002184:	ab4080e7          	jalr	-1356(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80002188:	00008797          	auipc	a5,0x8
    8000218c:	1297b823          	sd	s1,304(a5) # 8000a2b8 <_ZL2s3>
    Thread* t1 = new Thread(&f1_2, 0);
    80002190:	02000513          	li	a0,32
    80002194:	00001097          	auipc	ra,0x1
    80002198:	8ac080e7          	jalr	-1876(ra) # 80002a40 <_Znwm>
    8000219c:	00050993          	mv	s3,a0
    800021a0:	00000613          	li	a2,0
    800021a4:	fffff597          	auipc	a1,0xfffff
    800021a8:	57c58593          	addi	a1,a1,1404 # 80001720 <_Z4f1_2Pv>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	9f4080e7          	jalr	-1548(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t2 = new Thread(&f2_2, 0);
    800021b4:	02000513          	li	a0,32
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	888080e7          	jalr	-1912(ra) # 80002a40 <_Znwm>
    800021c0:	00050913          	mv	s2,a0
    800021c4:	00000613          	li	a2,0
    800021c8:	fffff597          	auipc	a1,0xfffff
    800021cc:	5e458593          	addi	a1,a1,1508 # 800017ac <_Z4f2_2Pv>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	9d0080e7          	jalr	-1584(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    Thread* t3 = new Thread(&f3_2, 0);
    800021d8:	02000513          	li	a0,32
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	864080e7          	jalr	-1948(ra) # 80002a40 <_Znwm>
    800021e4:	00050493          	mv	s1,a0
    800021e8:	00000613          	li	a2,0
    800021ec:	fffff597          	auipc	a1,0xfffff
    800021f0:	64c58593          	addi	a1,a1,1612 # 80001838 <_Z4f3_2Pv>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	9ac080e7          	jalr	-1620(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t3->start();
    800021fc:	00048513          	mv	a0,s1
    80002200:	00001097          	auipc	ra,0x1
    80002204:	910080e7          	jalr	-1776(ra) # 80002b10 <_ZN6Thread5startEv>
    t2->start();
    80002208:	00090513          	mv	a0,s2
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	904080e7          	jalr	-1788(ra) # 80002b10 <_ZN6Thread5startEv>
    t1->start();
    80002214:	00098513          	mv	a0,s3
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	8f8080e7          	jalr	-1800(ra) # 80002b10 <_ZN6Thread5startEv>

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
    80002260:	00001097          	auipc	ra,0x1
    80002264:	808080e7          	jalr	-2040(ra) # 80002a68 <_ZdlPv>
    80002268:	00090513          	mv	a0,s2
    8000226c:	00009097          	auipc	ra,0x9
    80002270:	18c080e7          	jalr	396(ra) # 8000b3f8 <_Unwind_Resume>
    80002274:	00050913          	mv	s2,a0
    s2 = new Semaphore(0);
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	7ec080e7          	jalr	2028(ra) # 80002a68 <_ZdlPv>
    80002284:	00090513          	mv	a0,s2
    80002288:	00009097          	auipc	ra,0x9
    8000228c:	170080e7          	jalr	368(ra) # 8000b3f8 <_Unwind_Resume>
    80002290:	00050913          	mv	s2,a0
    s3 = new Semaphore(0);
    80002294:	00048513          	mv	a0,s1
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	7d0080e7          	jalr	2000(ra) # 80002a68 <_ZdlPv>
    800022a0:	00090513          	mv	a0,s2
    800022a4:	00009097          	auipc	ra,0x9
    800022a8:	154080e7          	jalr	340(ra) # 8000b3f8 <_Unwind_Resume>
    800022ac:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&f1_2, 0);
    800022b0:	00098513          	mv	a0,s3
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	7b4080e7          	jalr	1972(ra) # 80002a68 <_ZdlPv>
    800022bc:	00048513          	mv	a0,s1
    800022c0:	00009097          	auipc	ra,0x9
    800022c4:	138080e7          	jalr	312(ra) # 8000b3f8 <_Unwind_Resume>
    800022c8:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&f2_2, 0);
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	798080e7          	jalr	1944(ra) # 80002a68 <_ZdlPv>
    800022d8:	00048513          	mv	a0,s1
    800022dc:	00009097          	auipc	ra,0x9
    800022e0:	11c080e7          	jalr	284(ra) # 8000b3f8 <_Unwind_Resume>
    800022e4:	00050913          	mv	s2,a0
    Thread* t3 = new Thread(&f3_2, 0);
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	77c080e7          	jalr	1916(ra) # 80002a68 <_ZdlPv>
    800022f4:	00090513          	mv	a0,s2
    800022f8:	00009097          	auipc	ra,0x9
    800022fc:	100080e7          	jalr	256(ra) # 8000b3f8 <_Unwind_Resume>

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
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00113423          	sd	ra,8(sp)
    80002358:	00813023          	sd	s0,0(sp)
    8000235c:	01010413          	addi	s0,sp,16
    Riscv::printString("Runner started...\n");
    80002360:	00006517          	auipc	a0,0x6
    80002364:	dd850513          	addi	a0,a0,-552 # 80008138 <CONSOLE_STATUS+0x128>
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	a70080e7          	jalr	-1424(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80002370:	00001097          	auipc	ra,0x1
    80002374:	a48080e7          	jalr	-1464(ra) # 80002db8 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002378:	00008797          	auipc	a5,0x8
    8000237c:	f487b783          	ld	a5,-184(a5) # 8000a2c0 <_ZN3PCB7runningE>
    80002380:	0187b703          	ld	a4,24(a5)
    80002384:	0207b503          	ld	a0,32(a5)
    80002388:	000700e7          	jalr	a4
    //da li ovde treba da se predje u kernel rezim mozda
    //mozda moze da se iskoristi lock za neku promenljivu za PCB::running
    //kako ne bi pristupalo vise niti tome, jer malo je
    //nezgodna promena rezima ovde
    //running->setState(PCB::FINISHED);
    Riscv::printString("PCB finished\n");
    8000238c:	00006517          	auipc	a0,0x6
    80002390:	dc450513          	addi	a0,a0,-572 # 80008150 <CONSOLE_STATUS+0x140>
    80002394:	00001097          	auipc	ra,0x1
    80002398:	a44080e7          	jalr	-1468(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    thread_exit();
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	fa8080e7          	jalr	-88(ra) # 80001344 <thread_exit>
    //thread_dispatch();
}
    800023a4:	00813083          	ld	ra,8(sp)
    800023a8:	00013403          	ld	s0,0(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050493          	mv	s1,a0
    })
    800023cc:	00e53423          	sd	a4,8(a0)
    800023d0:	00053823          	sd	zero,16(a0)
    800023d4:	00b53c23          	sd	a1,24(a0)
    800023d8:	02c53023          	sd	a2,32(a0)
    800023dc:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023e0:	000017b7          	lui	a5,0x1
    800023e4:	00f686b3          	add	a3,a3,a5
    })
    800023e8:	02d53c23          	sd	a3,56(a0)
    800023ec:	00000797          	auipc	a5,0x0
    800023f0:	f6478793          	addi	a5,a5,-156 # 80002350 <_ZN3PCB6runnerEv>
    800023f4:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	4a4080e7          	jalr	1188(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80002400:	0004b023          	sd	zero,0(s1)
}
    80002404:	01813083          	ld	ra,24(sp)
    80002408:	01013403          	ld	s0,16(sp)
    8000240c:	00813483          	ld	s1,8(sp)
    80002410:	02010113          	addi	sp,sp,32
    80002414:	00008067          	ret

0000000080002418 <_ZN3PCB5sleepEm>:
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
}
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN3PCB5startEv>:
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002440:	00000097          	auipc	ra,0x0
    80002444:	45c080e7          	jalr	1116(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002458:	fe010113          	addi	sp,sp,-32
    8000245c:	00113c23          	sd	ra,24(sp)
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00913423          	sd	s1,8(sp)
    80002468:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    8000246c:	00008497          	auipc	s1,0x8
    80002470:	e544b483          	ld	s1,-428(s1) # 8000a2c0 <_ZN3PCB7runningE>
    80002474:	0304a703          	lw	a4,48(s1)
    if(old->getState() == PCB::RUNNING)
    80002478:	00100793          	li	a5,1
    8000247c:	04f70063          	beq	a4,a5,800024bc <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002480:	00000097          	auipc	ra,0x0
    80002484:	470080e7          	jalr	1136(ra) # 800028f0 <_ZN9Scheduler3getEv>
    80002488:	00008797          	auipc	a5,0x8
    8000248c:	e2a7bc23          	sd	a0,-456(a5) # 8000a2c0 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002490:	00100793          	li	a5,1
    80002494:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
    //Riscv::printString("Switching context...\n");

    PCB::contextSwitch(&old->context, &running->context);
    80002498:	03850593          	addi	a1,a0,56
    8000249c:	03848513          	addi	a0,s1,56
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	d88080e7          	jalr	-632(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024a8:	01813083          	ld	ra,24(sp)
    800024ac:	01013403          	ld	s0,16(sp)
    800024b0:	00813483          	ld	s1,8(sp)
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00008067          	ret
        Scheduler::put(old);
    800024bc:	00048513          	mv	a0,s1
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	3dc080e7          	jalr	988(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
    800024c8:	fb9ff06f          	j	80002480 <_ZN3PCB8dispatchEv+0x28>

00000000800024cc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00113423          	sd	ra,8(sp)
    800024d4:	00813023          	sd	s0,0(sp)
    800024d8:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	178080e7          	jalr	376(ra) # 80003654 <_Z7kmallocm>
}
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    kfree(p);
    80002504:	00001097          	auipc	ra,0x1
    80002508:	178080e7          	jalr	376(ra) # 8000367c <_Z5kfreePv>
}
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret

000000008000251c <_ZN3PCBD1Ev>:

PCB::~PCB() {
    8000251c:	ff010113          	addi	sp,sp,-16
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	00813023          	sd	s0,0(sp)
    80002528:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    8000252c:	02853503          	ld	a0,40(a0)
    80002530:	00001097          	auipc	ra,0x1
    80002534:	14c080e7          	jalr	332(ra) # 8000367c <_Z5kfreePv>
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813423          	sd	s0,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80002554:	00008797          	auipc	a5,0x8
    80002558:	cf47b783          	ld	a5,-780(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000255c:	0007b583          	ld	a1,0(a5)
    80002560:	00500793          	li	a5,5
    80002564:	02f5a823          	sw	a5,48(a1)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80002568:	00008797          	auipc	a5,0x8
    8000256c:	d707b783          	ld	a5,-656(a5) # 8000a2d8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80002570:	00000613          	li	a2,0
    while(curr != 0)
    80002574:	02078063          	beqz	a5,80002594 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    80002578:	0105b683          	ld	a3,16(a1)
    8000257c:	0107b703          	ld	a4,16(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80002580:	00e6e863          	bltu	a3,a4,80002590 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002584:	00078613          	mv	a2,a5
        curr=curr->nextPCB;
    80002588:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    8000258c:	fe9ff06f          	j	80002574 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002590:	00f5b023          	sd	a5,0(a1)
    }

    if(prev == 0)
    80002594:	02060863          	beqz	a2,800025c4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    80002598:	00008797          	auipc	a5,0x8
    8000259c:	cb07b783          	ld	a5,-848(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025a0:	0007b783          	ld	a5,0(a5)
    800025a4:	0107b703          	ld	a4,16(a5)
    800025a8:	01063683          	ld	a3,16(a2)
    800025ac:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800025b0:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    800025b4:	00f63023          	sd	a5,0(a2)
    }
}
    800025b8:	00813403          	ld	s0,8(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800025c4:	00008797          	auipc	a5,0x8
    800025c8:	c847b783          	ld	a5,-892(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025cc:	0007b783          	ld	a5,0(a5)
    800025d0:	00008717          	auipc	a4,0x8
    800025d4:	d0f73423          	sd	a5,-760(a4) # 8000a2d8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    800025d8:	0007b703          	ld	a4,0(a5)
    800025dc:	fc070ee3          	beqz	a4,800025b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>
    uint64 getTimeToSleep() {return timeToSleep;}
    800025e0:	01073683          	ld	a3,16(a4)
    800025e4:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    800025e8:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800025ec:	00f73823          	sd	a5,16(a4)
    800025f0:	fc9ff06f          	j	800025b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x70>

00000000800025f4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    800025f4:	fe010113          	addi	sp,sp,-32
    800025f8:	00113c23          	sd	ra,24(sp)
    800025fc:	00813823          	sd	s0,16(sp)
    80002600:	00913423          	sd	s1,8(sp)
    80002604:	02010413          	addi	s0,sp,32
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    80002608:	00008517          	auipc	a0,0x8
    8000260c:	cd053503          	ld	a0,-816(a0) # 8000a2d8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002610:	02050663          	beqz	a0,8000263c <_ZN12SleepPCBList13tryToWakePCBsEv+0x48>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002614:	01053783          	ld	a5,16(a0)
    {
        Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    80002618:	00100713          	li	a4,1
    8000261c:	04e78863          	beq	a5,a4,8000266c <_ZN12SleepPCBList13tryToWakePCBsEv+0x78>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    80002620:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002624:	00f53823          	sd	a5,16(a0)
    }
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret
        Riscv::printString("No sleeping PCBs...\n");
    8000263c:	00006517          	auipc	a0,0x6
    80002640:	b2450513          	addi	a0,a0,-1244 # 80008160 <CONSOLE_STATUS+0x150>
    80002644:	00000097          	auipc	ra,0x0
    80002648:	794080e7          	jalr	1940(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
        return;
    8000264c:	fddff06f          	j	80002628 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
            curr = curr->nextPCB;
    80002650:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    80002654:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	244080e7          	jalr	580(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    80002660:	00008797          	auipc	a5,0x8
    80002664:	c697bc23          	sd	s1,-904(a5) # 8000a2d8 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002668:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    8000266c:	fa050ee3          	beqz	a0,80002628 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>
    80002670:	00008797          	auipc	a5,0x8
    80002674:	c687b783          	ld	a5,-920(a5) # 8000a2d8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002678:	fca78ce3          	beq	a5,a0,80002650 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000267c:	01053783          	ld	a5,16(a0)
    80002680:	fc0788e3          	beqz	a5,80002650 <_ZN12SleepPCBList13tryToWakePCBsEv+0x5c>
    80002684:	fa5ff06f          	j	80002628 <_ZN12SleepPCBList13tryToWakePCBsEv+0x34>

0000000080002688 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80002688:	fe010113          	addi	sp,sp,-32
    8000268c:	00113c23          	sd	ra,24(sp)
    80002690:	00813823          	sd	s0,16(sp)
    80002694:	00913423          	sd	s1,8(sp)
    80002698:	01213023          	sd	s2,0(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800026a4:	00053503          	ld	a0,0(a0)
    800026a8:	00853903          	ld	s2,8(a0)
    kfree(first);
    800026ac:	00001097          	auipc	ra,0x1
    800026b0:	fd0080e7          	jalr	-48(ra) # 8000367c <_Z5kfreePv>
    first = newFirst;
    800026b4:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800026b8:	00090e63          	beqz	s2,800026d4 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800026bc:	01813083          	ld	ra,24(sp)
    800026c0:	01013403          	ld	s0,16(sp)
    800026c4:	00813483          	ld	s1,8(sp)
    800026c8:	00013903          	ld	s2,0(sp)
    800026cc:	02010113          	addi	sp,sp,32
    800026d0:	00008067          	ret
        first = last = 0;
    800026d4:	0004b423          	sd	zero,8(s1)
    800026d8:	0004b023          	sd	zero,0(s1)
}
    800026dc:	fe1ff06f          	j	800026bc <_ZN5Queue3popEv+0x34>

00000000800026e0 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    800026e0:	fe010113          	addi	sp,sp,-32
    800026e4:	00113c23          	sd	ra,24(sp)
    800026e8:	00813823          	sd	s0,16(sp)
    800026ec:	00913423          	sd	s1,8(sp)
    800026f0:	01213023          	sd	s2,0(sp)
    800026f4:	02010413          	addi	s0,sp,32
    800026f8:	00050493          	mv	s1,a0
    800026fc:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002700:	01000513          	li	a0,16
    80002704:	00001097          	auipc	ra,0x1
    80002708:	f50080e7          	jalr	-176(ra) # 80003654 <_Z7kmallocm>
    newElem->data = t;
    8000270c:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    80002710:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80002714:	0004b783          	ld	a5,0(s1)
    80002718:	02078463          	beqz	a5,80002740 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    8000271c:	0084b783          	ld	a5,8(s1)
    80002720:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80002724:	00a4b423          	sd	a0,8(s1)
    }
}
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	00013903          	ld	s2,0(sp)
    80002738:	02010113          	addi	sp,sp,32
    8000273c:	00008067          	ret
        first = newElem;
    80002740:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80002744:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80002748:	00053423          	sd	zero,8(a0)
    8000274c:	0004b783          	ld	a5,0(s1)
    80002750:	0007b423          	sd	zero,8(a5)
    80002754:	fd5ff06f          	j	80002728 <_ZN5Queue4pushEP3PCB+0x48>

0000000080002758 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00813423          	sd	s0,8(sp)
    80002760:	01010413          	addi	s0,sp,16
    if(first == 0)
    80002764:	00053503          	ld	a0,0(a0)
    80002768:	00050463          	beqz	a0,80002770 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    8000276c:	00053503          	ld	a0,0(a0)
}
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN5QueueC1Ev>:

Queue::Queue() {
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002788:	00053423          	sd	zero,8(a0)
    8000278c:	00053023          	sd	zero,0(a0)
}
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    8000279c:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    800027a0:	04050063          	beqz	a0,800027e0 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    800027a4:	fe010113          	addi	sp,sp,-32
    800027a8:	00113c23          	sd	ra,24(sp)
    800027ac:	00813823          	sd	s0,16(sp)
    800027b0:	00913423          	sd	s1,8(sp)
    800027b4:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800027b8:	00853483          	ld	s1,8(a0)
        kfree(old);
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	ec0080e7          	jalr	-320(ra) # 8000367c <_Z5kfreePv>
        curr = curr->next;
    800027c4:	00048513          	mv	a0,s1
    while(curr != 0)
    800027c8:	fe0498e3          	bnez	s1,800027b8 <_ZN5QueueD1Ev+0x1c>
    }
}
    800027cc:	01813083          	ld	ra,24(sp)
    800027d0:	01013403          	ld	s0,16(sp)
    800027d4:	00813483          	ld	s1,8(sp)
    800027d8:	02010113          	addi	sp,sp,32
    800027dc:	00008067          	ret
    800027e0:	00008067          	ret

00000000800027e4 <_ZN5Queue4sizeEv>:

int Queue::size() {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00813423          	sd	s0,8(sp)
    800027ec:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800027f0:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800027f4:	00000513          	li	a0,0
    while(curr != 0)
    800027f8:	00078863          	beqz	a5,80002808 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800027fc:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002800:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002804:	ff5ff06f          	j	800027f8 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80002808:	00813403          	ld	s0,8(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <_ZN9SchedulernwEm>:
PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;


void *Scheduler::operator new(size_t size)
{
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002824:	00001097          	auipc	ra,0x1
    80002828:	e30080e7          	jalr	-464(ra) # 80003654 <_Z7kmallocm>
}
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    kfree(p);
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	e30080e7          	jalr	-464(ra) # 8000367c <_Z5kfreePv>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00813423          	sd	s0,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002870:	00008797          	auipc	a5,0x8
    80002874:	a707b783          	ld	a5,-1424(a5) # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002878:	00000513          	li	a0,0
    while(curr != 0)
    8000287c:	00078863          	beqz	a5,8000288c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002880:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002884:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002888:	ff5ff06f          	j	8000287c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000288c:	0005051b          	sext.w	a0,a0
    80002890:	00813403          	ld	s0,8(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800028a8:	02052823          	sw	zero,48(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800028ac:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    800028b0:	00008797          	auipc	a5,0x8
    800028b4:	a307b783          	ld	a5,-1488(a5) # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    800028b8:	02078263          	beqz	a5,800028dc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800028bc:	00008797          	auipc	a5,0x8
    800028c0:	a2478793          	addi	a5,a5,-1500 # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    800028c4:	0087b703          	ld	a4,8(a5)
    800028c8:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    800028cc:	00a7b423          	sd	a0,8(a5)
    }
}
    800028d0:	00813403          	ld	s0,8(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800028dc:	00008797          	auipc	a5,0x8
    800028e0:	a0478793          	addi	a5,a5,-1532 # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    800028e4:	00a7b423          	sd	a0,8(a5)
    800028e8:	00a7b023          	sd	a0,0(a5)
    800028ec:	fe5ff06f          	j	800028d0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800028f0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00813423          	sd	s0,8(sp)
    800028f8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800028fc:	00008517          	auipc	a0,0x8
    80002900:	9e453503          	ld	a0,-1564(a0) # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002904:	00050c63          	beqz	a0,8000291c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80002908:	00053783          	ld	a5,0(a0)
    8000290c:	00078e63          	beqz	a5,80002928 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002910:	00008717          	auipc	a4,0x8
    80002914:	9cf73823          	sd	a5,-1584(a4) # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80002918:	00053023          	sd	zero,0(a0)
    return retval;
}
    8000291c:	00813403          	ld	s0,8(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80002928:	00008797          	auipc	a5,0x8
    8000292c:	9b878793          	addi	a5,a5,-1608 # 8000a2e0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002930:	0007b423          	sd	zero,8(a5)
    80002934:	0007b023          	sd	zero,0(a5)
    80002938:	fe1ff06f          	j	80002918 <_ZN9Scheduler3getEv+0x28>

000000008000293c <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	364080e7          	jalr	868(ra) # 80002cb0 <_ZN5Riscv10initSystemEv>

    //Riscv::enableInterrupts();
    //todo
    //go to unprivileged mode
    userMain();
    80002954:	00003097          	auipc	ra,0x3
    80002958:	978080e7          	jalr	-1672(ra) # 800052cc <_Z8userMainv>
    //Riscv::disableInterrupts();

    //myTests();

    Riscv::endSystem();
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	434080e7          	jalr	1076(ra) # 80002d90 <_ZN5Riscv9endSystemEv>

    Riscv::printString("End...");
    80002964:	00006517          	auipc	a0,0x6
    80002968:	81450513          	addi	a0,a0,-2028 # 80008178 <CONSOLE_STATUS+0x168>
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	46c080e7          	jalr	1132(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN6ThreadD1Ev>:
    Riscv::printString("Thread runner started...\n");
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread() {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00007797          	auipc	a5,0x7
    80002998:	7b478793          	addi	a5,a5,1972 # 8000a148 <_ZTV6Thread+0x10>
    8000299c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800029a0:	00853503          	ld	a0,8(a0)
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	8d4080e7          	jalr	-1836(ra) # 80001278 <mem_free>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN9SemaphoreD1Ev>:
        //what then
    }

}

Semaphore::~Semaphore() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    800029cc:	00007797          	auipc	a5,0x7
    800029d0:	7a478793          	addi	a5,a5,1956 # 8000a170 <_ZTV9Semaphore+0x10>
    800029d4:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800029d8:	00853503          	ld	a0,8(a0)
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	89c080e7          	jalr	-1892(ra) # 80001278 <mem_free>
}
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN6Thread6runnerEPv>:
void Thread::runner(void *t) {
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	02010413          	addi	s0,sp,32
    80002a08:	00050493          	mv	s1,a0
    Riscv::printString("Thread runner started...\n");
    80002a0c:	00005517          	auipc	a0,0x5
    80002a10:	77450513          	addi	a0,a0,1908 # 80008180 <CONSOLE_STATUS+0x170>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	3c4080e7          	jalr	964(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
    thr->run();
    80002a1c:	0004b783          	ld	a5,0(s1)
    80002a20:	0107b783          	ld	a5,16(a5)
    80002a24:	00048513          	mv	a0,s1
    80002a28:	000780e7          	jalr	a5
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <_Znwm>:
{
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00113423          	sd	ra,8(sp)
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002a50:	ffffe097          	auipc	ra,0xffffe
    80002a54:	7f8080e7          	jalr	2040(ra) # 80001248 <mem_alloc>
}
    80002a58:	00813083          	ld	ra,8(sp)
    80002a5c:	00013403          	ld	s0,0(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_ZdlPv>:
{
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00113423          	sd	ra,8(sp)
    80002a70:	00813023          	sd	s0,0(sp)
    80002a74:	01010413          	addi	s0,sp,16
   mem_free(p);
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	800080e7          	jalr	-2048(ra) # 80001278 <mem_free>
}
    80002a80:	00813083          	ld	ra,8(sp)
    80002a84:	00013403          	ld	s0,0(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002a90:	fe010113          	addi	sp,sp,-32
    80002a94:	00113c23          	sd	ra,24(sp)
    80002a98:	00813823          	sd	s0,16(sp)
    80002a9c:	00913423          	sd	s1,8(sp)
    80002aa0:	02010413          	addi	s0,sp,32
    80002aa4:	00050493          	mv	s1,a0
}
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	edc080e7          	jalr	-292(ra) # 80002984 <_ZN6ThreadD1Ev>
    80002ab0:	00048513          	mv	a0,s1
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	fb4080e7          	jalr	-76(ra) # 80002a68 <_ZdlPv>
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	00813483          	ld	s1,8(sp)
    80002ac8:	02010113          	addi	sp,sp,32
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002ad0:	fe010113          	addi	sp,sp,-32
    80002ad4:	00113c23          	sd	ra,24(sp)
    80002ad8:	00813823          	sd	s0,16(sp)
    80002adc:	00913423          	sd	s1,8(sp)
    80002ae0:	02010413          	addi	s0,sp,32
    80002ae4:	00050493          	mv	s1,a0
}
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	ed4080e7          	jalr	-300(ra) # 800029bc <_ZN9SemaphoreD1Ev>
    80002af0:	00048513          	mv	a0,s1
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	f74080e7          	jalr	-140(ra) # 80002a68 <_ZdlPv>
    80002afc:	01813083          	ld	ra,24(sp)
    80002b00:	01013403          	ld	s0,16(sp)
    80002b04:	00813483          	ld	s1,8(sp)
    80002b08:	02010113          	addi	sp,sp,32
    80002b0c:	00008067          	ret

0000000080002b10 <_ZN6Thread5startEv>:
    if(myHandle == 0)
    80002b10:	00853783          	ld	a5,8(a0)
    80002b14:	00078463          	beqz	a5,80002b1c <_ZN6Thread5startEv+0xc>
    80002b18:	00008067          	ret
{
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00113423          	sd	ra,8(sp)
    80002b24:	00813023          	sd	s0,0(sp)
    80002b28:	01010413          	addi	s0,sp,16
        int retval = thread_create((void**)&myHandle, f, args);
    80002b2c:	01853603          	ld	a2,24(a0)
    80002b30:	01053583          	ld	a1,16(a0)
    80002b34:	00850513          	addi	a0,a0,8
    80002b38:	ffffe097          	auipc	ra,0xffffe
    80002b3c:	76c080e7          	jalr	1900(ra) # 800012a4 <thread_create>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002b60:	ffffe097          	auipc	ra,0xffffe
    80002b64:	7c4080e7          	jalr	1988(ra) # 80001324 <thread_dispatch>
}
    80002b68:	00813083          	ld	ra,8(sp)
    80002b6c:	00013403          	ld	s0,0(sp)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret

0000000080002b78 <_ZN6Thread5sleepEm>:
void Thread::sleep(time_t time) {
    80002b78:	ff010113          	addi	sp,sp,-16
    80002b7c:	00113423          	sd	ra,8(sp)
    80002b80:	00813023          	sd	s0,0(sp)
    80002b84:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	8a0080e7          	jalr	-1888(ra) # 80001428 <time_sleep>
}
    80002b90:	00813083          	ld	ra,8(sp)
    80002b94:	00013403          	ld	s0,0(sp)
    80002b98:	01010113          	addi	sp,sp,16
    80002b9c:	00008067          	ret

0000000080002ba0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00813423          	sd	s0,8(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    80002bac:	00007797          	auipc	a5,0x7
    80002bb0:	59c78793          	addi	a5,a5,1436 # 8000a148 <_ZTV6Thread+0x10>
    80002bb4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002bb8:	00053423          	sd	zero,8(a0)
    f = body;
    80002bbc:	00b53823          	sd	a1,16(a0)
    this->args = args;
    80002bc0:	00c53c23          	sd	a2,24(a0)
}
    80002bc4:	00813403          	ld	s0,8(sp)
    80002bc8:	01010113          	addi	sp,sp,16
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00813423          	sd	s0,8(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    80002bdc:	00007797          	auipc	a5,0x7
    80002be0:	56c78793          	addi	a5,a5,1388 # 8000a148 <_ZTV6Thread+0x10>
    80002be4:	00f53023          	sd	a5,0(a0)
    f = &Thread::runner;
    80002be8:	00000797          	auipc	a5,0x0
    80002bec:	e0c78793          	addi	a5,a5,-500 # 800029f4 <_ZN6Thread6runnerEPv>
    80002bf0:	00f53823          	sd	a5,16(a0)
    myHandle = 0;
    80002bf4:	00053423          	sd	zero,8(a0)
    args = (void*)this;
    80002bf8:	00a53c23          	sd	a0,24(a0)
}
    80002bfc:	00813403          	ld	s0,8(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <_ZN9Semaphore4waitEv>:
void Semaphore::wait() {
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00113423          	sd	ra,8(sp)
    80002c10:	00813023          	sd	s0,0(sp)
    80002c14:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    80002c18:	00853503          	ld	a0,8(a0)
    80002c1c:	ffffe097          	auipc	ra,0xffffe
    80002c20:	7b4080e7          	jalr	1972(ra) # 800013d0 <sem_wait>
}
    80002c24:	00813083          	ld	ra,8(sp)
    80002c28:	00013403          	ld	s0,0(sp)
    80002c2c:	01010113          	addi	sp,sp,16
    80002c30:	00008067          	ret

0000000080002c34 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00113423          	sd	ra,8(sp)
    80002c3c:	00813023          	sd	s0,0(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	00007797          	auipc	a5,0x7
    80002c48:	52c78793          	addi	a5,a5,1324 # 8000a170 <_ZTV9Semaphore+0x10>
    80002c4c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open((void**)&myHandle, init);
    80002c50:	00850513          	addi	a0,a0,8
    80002c54:	ffffe097          	auipc	ra,0xffffe
    80002c58:	718080e7          	jalr	1816(ra) # 8000136c <sem_open>
}
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret

0000000080002c6c <_ZN9Semaphore6signalEv>:
void Semaphore::signal() {
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00113423          	sd	ra,8(sp)
    80002c74:	00813023          	sd	s0,0(sp)
    80002c78:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002c7c:	00853503          	ld	a0,8(a0)
    80002c80:	ffffe097          	auipc	ra,0xffffe
    80002c84:	77c080e7          	jalr	1916(ra) # 800013fc <sem_signal>
}
    80002c88:	00813083          	ld	ra,8(sp)
    80002c8c:	00013403          	ld	s0,0(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <_ZN6Thread3runEv>:
protected:
    //todo
    Thread();

    //todo
    virtual void run() {}
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    80002ca4:	00813403          	ld	s0,8(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN5Riscv10initSystemEv>:
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem()
{
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	01213023          	sd	s2,0(sp)
    80002cc4:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002cc8:	00007797          	auipc	a5,0x7
    80002ccc:	5687b783          	ld	a5,1384(a5) # 8000a230 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002cd0:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002cd4:	02000513          	li	a0,32
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	d68080e7          	jalr	-664(ra) # 80002a40 <_Znwm>
    80002ce0:	00050493          	mv	s1,a0
    80002ce4:	00000613          	li	a2,0
    80002ce8:	00000593          	li	a1,0
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	eb4080e7          	jalr	-332(ra) # 80002ba0 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	e18080e7          	jalr	-488(ra) # 80002b10 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	bf0080e7          	jalr	-1040(ra) # 800028f0 <_ZN9Scheduler3getEv>
    80002d08:	00007797          	auipc	a5,0x7
    80002d0c:	5407b783          	ld	a5,1344(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d10:	00a7b023          	sd	a0,0(a5)
    80002d14:	00100793          	li	a5,1
    80002d18:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    80002d1c:	01813083          	ld	ra,24(sp)
    80002d20:	01013403          	ld	s0,16(sp)
    80002d24:	00813483          	ld	s1,8(sp)
    80002d28:	00013903          	ld	s2,0(sp)
    80002d2c:	02010113          	addi	sp,sp,32
    80002d30:	00008067          	ret
    80002d34:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	d2c080e7          	jalr	-724(ra) # 80002a68 <_ZdlPv>
    80002d44:	00090513          	mv	a0,s2
    80002d48:	00008097          	auipc	ra,0x8
    80002d4c:	6b0080e7          	jalr	1712(ra) # 8000b3f8 <_Unwind_Resume>

0000000080002d50 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    80002d50:	ff010113          	addi	sp,sp,-16
    80002d54:	00813423          	sd	s0,8(sp)
    80002d58:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002d5c:	00200793          	li	a5,2
    80002d60:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002d64:	00813403          	ld	s0,8(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002d7c:	00200793          	li	a5,2
    80002d80:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002d84:	00813403          	ld	s0,8(sp)
    80002d88:	01010113          	addi	sp,sp,16
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00113423          	sd	ra,8(sp)
    80002d98:	00813023          	sd	s0,0(sp)
    80002d9c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	fd0080e7          	jalr	-48(ra) # 80002d70 <_ZN5Riscv17disableInterruptsEv>
}
    80002da8:	00813083          	ld	ra,8(sp)
    80002dac:	00013403          	ld	s0,0(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	00008067          	ret

0000000080002db8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002db8:	ff010113          	addi	sp,sp,-16
    80002dbc:	00813423          	sd	s0,8(sp)
    80002dc0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002dc4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002dc8:	10200073          	sret
}
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002dd8:	fd010113          	addi	sp,sp,-48
    80002ddc:	02113423          	sd	ra,40(sp)
    80002de0:	02813023          	sd	s0,32(sp)
    80002de4:	00913c23          	sd	s1,24(sp)
    80002de8:	01213823          	sd	s2,16(sp)
    80002dec:	03010413          	addi	s0,sp,48
    80002df0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002df4:	100027f3          	csrr	a5,sstatus
    80002df8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002dfc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002e00:	00200793          	li	a5,2
    80002e04:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002e08:	0004c503          	lbu	a0,0(s1)
    80002e0c:	00050a63          	beqz	a0,80002e20 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002e10:	00005097          	auipc	ra,0x5
    80002e14:	91c080e7          	jalr	-1764(ra) # 8000772c <__putc>
        string++;
    80002e18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002e1c:	fedff06f          	j	80002e08 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002e20:	0009091b          	sext.w	s2,s2
    80002e24:	00297913          	andi	s2,s2,2
    80002e28:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002e2c:	10092073          	csrs	sstatus,s2
}
    80002e30:	02813083          	ld	ra,40(sp)
    80002e34:	02013403          	ld	s0,32(sp)
    80002e38:	01813483          	ld	s1,24(sp)
    80002e3c:	01013903          	ld	s2,16(sp)
    80002e40:	03010113          	addi	sp,sp,48
    80002e44:	00008067          	ret

0000000080002e48 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002e48:	fc010113          	addi	sp,sp,-64
    80002e4c:	02113c23          	sd	ra,56(sp)
    80002e50:	02813823          	sd	s0,48(sp)
    80002e54:	02913423          	sd	s1,40(sp)
    80002e58:	03213023          	sd	s2,32(sp)
    80002e5c:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002e60:	100027f3          	csrr	a5,sstatus
    80002e64:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002e68:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002e6c:	00200793          	li	a5,2
    80002e70:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002e74:	0005051b          	sext.w	a0,a0

    i = 0;
    80002e78:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002e7c:	00a00613          	li	a2,10
    80002e80:	02c5773b          	remuw	a4,a0,a2
    80002e84:	02071693          	slli	a3,a4,0x20
    80002e88:	0206d693          	srli	a3,a3,0x20
    80002e8c:	00005717          	auipc	a4,0x5
    80002e90:	32c70713          	addi	a4,a4,812 # 800081b8 <_ZZN5Riscv12printIntegerEmE6digits>
    80002e94:	00d70733          	add	a4,a4,a3
    80002e98:	00074703          	lbu	a4,0(a4)
    80002e9c:	fe040693          	addi	a3,s0,-32
    80002ea0:	009687b3          	add	a5,a3,s1
    80002ea4:	0014849b          	addiw	s1,s1,1
    80002ea8:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002eac:	0005071b          	sext.w	a4,a0
    80002eb0:	02c5553b          	divuw	a0,a0,a2
    80002eb4:	00900793          	li	a5,9
    80002eb8:	fce7e2e3          	bltu	a5,a4,80002e7c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002ebc:	fff4849b          	addiw	s1,s1,-1
    80002ec0:	0004ce63          	bltz	s1,80002edc <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002ec4:	fe040793          	addi	a5,s0,-32
    80002ec8:	009787b3          	add	a5,a5,s1
    80002ecc:	ff07c503          	lbu	a0,-16(a5)
    80002ed0:	00005097          	auipc	ra,0x5
    80002ed4:	85c080e7          	jalr	-1956(ra) # 8000772c <__putc>
    80002ed8:	fe5ff06f          	j	80002ebc <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002edc:	00a00513          	li	a0,10
    80002ee0:	00005097          	auipc	ra,0x5
    80002ee4:	84c080e7          	jalr	-1972(ra) # 8000772c <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002ee8:	0009091b          	sext.w	s2,s2
    80002eec:	00297913          	andi	s2,s2,2
    80002ef0:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002ef4:	10092073          	csrs	sstatus,s2
}
    80002ef8:	03813083          	ld	ra,56(sp)
    80002efc:	03013403          	ld	s0,48(sp)
    80002f00:	02813483          	ld	s1,40(sp)
    80002f04:	02013903          	ld	s2,32(sp)
    80002f08:	04010113          	addi	sp,sp,64
    80002f0c:	00008067          	ret

0000000080002f10 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002f10:	f8010113          	addi	sp,sp,-128
    80002f14:	06113c23          	sd	ra,120(sp)
    80002f18:	06813823          	sd	s0,112(sp)
    80002f1c:	06913423          	sd	s1,104(sp)
    80002f20:	07213023          	sd	s2,96(sp)
    80002f24:	05313c23          	sd	s3,88(sp)
    80002f28:	05413823          	sd	s4,80(sp)
    80002f2c:	05513423          	sd	s5,72(sp)
    80002f30:	05613023          	sd	s6,64(sp)
    80002f34:	08010413          	addi	s0,sp,128
    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002f38:	00070493          	mv	s1,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002f3c:	142027f3          	csrr	a5,scause
    80002f40:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002f44:	f8843783          	ld	a5,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause)
    80002f48:	fff00713          	li	a4,-1
    80002f4c:	03f71713          	slli	a4,a4,0x3f
    80002f50:	00170713          	addi	a4,a4,1
    80002f54:	0ee78e63          	beq	a5,a4,80003050 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
    80002f58:	fff00713          	li	a4,-1
    80002f5c:	03f71713          	slli	a4,a4,0x3f
    80002f60:	00170713          	addi	a4,a4,1
    80002f64:	08f76e63          	bltu	a4,a5,80003000 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002f68:	ff878793          	addi	a5,a5,-8
    80002f6c:	00100713          	li	a4,1
    80002f70:	0af76863          	bltu	a4,a5,80003020 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

        case ecallSystemInterupt:
        case ecallUserInterrupt:

            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002f74:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002f78:	14102773          	csrr	a4,sepc
    80002f7c:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002f80:	fa043703          	ld	a4,-96(s0)

            uint64 sepc = Riscv::r_sepc();
            sepc+=4;
    80002f84:	00470913          	addi	s2,a4,4

            if(operation == MemoryAllocator::MEM_ALLOC)
    80002f88:	00100713          	li	a4,1
    80002f8c:	12e78c63          	beq	a5,a4,800030c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                __asm__ volatile("mv %0, a1" : "=r"(size));
                size*=MEM_BLOCK_SIZE;
                void* allocatedAddr = kmalloc(size);
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
            }
            else if(operation == MemoryAllocator::MEM_FREE)
    80002f90:	00200713          	li	a4,2
    80002f94:	14e78663          	beq	a5,a4,800030e0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                uint64 addr = 0;
                __asm__ volatile("mv %0, a1" : "=r"(addr));
                uint64 retval = kfree((void*)addr);
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == PCB::THREAD_CREATE)
    80002f98:	01100713          	li	a4,17
    80002f9c:	14e78c63          	beq	a5,a4,800030f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
                if(newPCB == 0)
                    __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                    __asm__ volatile("li a0, 0");
            }
            else if(operation == PCB::THREAD_DISPATCH)
    80002fa0:	01300713          	li	a4,19
    80002fa4:	18e78e63          	beq	a5,a4,80003140 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::THREAD_EXIT)
    80002fa8:	01200713          	li	a4,18
    80002fac:	1ae78e63          	beq	a5,a4,80003168 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
                PCB::running->setState(PCB::EXITING);
                PCB::running->setState(PCB::FINISHED);
                PCB::dispatch();
                Riscv::w_sstatus(sstatus);
            }
            else if(operation == PCB::TIME_SLEEP)
    80002fb0:	03100713          	li	a4,49
    80002fb4:	20e78463          	beq	a5,a4,800031bc <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
                Riscv::w_sstatus(sstatus);
                //todo
                //kad treba vratiti kod greske
                __asm__ volatile("li a0, 0x0");
            }
            else if(operation == KSemaphore::SEM_OPEN)
    80002fb8:	02100713          	li	a4,33
    80002fbc:	24e78463          	beq	a5,a4,80003204 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
                else
                        __asm__ volatile("li a0, 0");

            }
            else if(operation == KSemaphore::SEM_WAIT)
    80002fc0:	02300713          	li	a4,35
    80002fc4:	26e78e63          	beq	a5,a4,80003240 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->wait();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_SIGNAL)
    80002fc8:	02400713          	li	a4,36
    80002fcc:	28e78463          	beq	a5,a4,80003254 <_ZN5Riscv20handleSupervisorTrapEv+0x344>
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
                uint64 retval = kSem->signal();
                __asm__ volatile("mv a0,%0" : :"r"(retval));
            }
            else if(operation == KSemaphore::SEM_CLOSE)
    80002fd0:	02200713          	li	a4,34
    80002fd4:	10e79263          	bne	a5,a4,800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            {
                //todo
                //negativna povratna vrednost sta i kako
                KSemaphore* kSem;
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80002fd8:	00058493          	mv	s1,a1

                delete kSem;
    80002fdc:	00048e63          	beqz	s1,80002ff8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	808080e7          	jalr	-2040(ra) # 800037ec <_ZN10KSemaphoreD1Ev>
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00001097          	auipc	ra,0x1
    80002ff4:	934080e7          	jalr	-1740(ra) # 80003924 <_ZN10KSemaphoredlEPv>

                __asm__ volatile("li a0, 0");
    80002ff8:	00000513          	li	a0,0
    80002ffc:	0dc0006f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
    switch(scause)
    80003000:	fff00713          	li	a4,-1
    80003004:	03f71713          	slli	a4,a4,0x3f
    80003008:	00970713          	addi	a4,a4,9
    8000300c:	00e79a63          	bne	a5,a4,80003020 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            Riscv::printString("Hardware interrupt...\n");
    80003010:	00005517          	auipc	a0,0x5
    80003014:	19050513          	addi	a0,a0,400 # 800081a0 <CONSOLE_STATUS+0x190>
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	dc0080e7          	jalr	-576(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>
            Riscv::w_sepc(sepc);

            return;
    }

    console_handler();
    80003020:	00004097          	auipc	ra,0x4
    80003024:	780080e7          	jalr	1920(ra) # 800077a0 <console_handler>
}
    80003028:	07813083          	ld	ra,120(sp)
    8000302c:	07013403          	ld	s0,112(sp)
    80003030:	06813483          	ld	s1,104(sp)
    80003034:	06013903          	ld	s2,96(sp)
    80003038:	05813983          	ld	s3,88(sp)
    8000303c:	05013a03          	ld	s4,80(sp)
    80003040:	04813a83          	ld	s5,72(sp)
    80003044:	04013b03          	ld	s6,64(sp)
    80003048:	08010113          	addi	sp,sp,128
    8000304c:	00008067          	ret
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003050:	00200793          	li	a5,2
    80003054:	1447b073          	csrc	sip,a5
            PCB::timeSliceCounter++;
    80003058:	00007497          	auipc	s1,0x7
    8000305c:	1e04b483          	ld	s1,480(s1) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003060:	0004b783          	ld	a5,0(s1)
    80003064:	00178793          	addi	a5,a5,1
    80003068:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	588080e7          	jalr	1416(ra) # 800025f4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003074:	00007797          	auipc	a5,0x7
    80003078:	1d47b783          	ld	a5,468(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000307c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003080:	0087b783          	ld	a5,8(a5)
    80003084:	0004b703          	ld	a4,0(s1)
    80003088:	f8f76ce3          	bltu	a4,a5,80003020 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000308c:	141027f3          	csrr	a5,sepc
    80003090:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80003094:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003098:	100027f3          	csrr	a5,sstatus
    8000309c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800030a0:	f9043903          	ld	s2,-112(s0)
                PCB::timeSliceCounter = 0;
    800030a4:	00007797          	auipc	a5,0x7
    800030a8:	1947b783          	ld	a5,404(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x18>
    800030ac:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	3a8080e7          	jalr	936(ra) # 80002458 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800030b8:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800030bc:	14149073          	csrw	sepc,s1
}
    800030c0:	f61ff06f          	j	80003020 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    800030c4:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    800030c8:	00651513          	slli	a0,a0,0x6
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	588080e7          	jalr	1416(ra) # 80003654 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800030d4:	00050513          	mv	a0,a0
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800030d8:	14191073          	csrw	sepc,s2
}
    800030dc:	f4dff06f          	j	80003028 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    800030e0:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	598080e7          	jalr	1432(ra) # 8000367c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    800030ec:	00050513          	mv	a0,a0
    800030f0:	fe9ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800030f4:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800030f8:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    800030fc:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    80003100:	05000513          	li	a0,80
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	3c8080e7          	jalr	968(ra) # 800024cc <_ZN3PCBnwEm>
    8000310c:	00050993          	mv	s3,a0
    80003110:	00200713          	li	a4,2
    80003114:	00048693          	mv	a3,s1
    80003118:	000b0613          	mv	a2,s6
    8000311c:	000a8593          	mv	a1,s5
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	294080e7          	jalr	660(ra) # 800023b4 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80003128:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    8000312c:	00098663          	beqz	s3,80003138 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
                    __asm__ volatile("li a0, 0");
    80003130:	00000513          	li	a0,0
    80003134:	fa5ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80003138:	fff00513          	li	a0,-1
    8000313c:	f9dff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003140:	100027f3          	csrr	a5,sstatus
    80003144:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80003148:	fa843483          	ld	s1,-88(s0)
                PCB::timeSliceCounter = 0;
    8000314c:	00007797          	auipc	a5,0x7
    80003150:	0ec7b783          	ld	a5,236(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003154:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	300080e7          	jalr	768(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003160:	10049073          	csrw	sstatus,s1
}
    80003164:	f75ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                if(PCB::running == 0)
    80003168:	00007797          	auipc	a5,0x7
    8000316c:	0e07b783          	ld	a5,224(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003170:	0007b783          	ld	a5,0(a5)
    80003174:	04078063          	beqz	a5,800031b4 <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003178:	100027f3          	csrr	a5,sstatus
    8000317c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80003180:	fb043483          	ld	s1,-80(s0)
                PCB::timeSliceCounter = 0;
    80003184:	00007797          	auipc	a5,0x7
    80003188:	0b47b783          	ld	a5,180(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000318c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::EXITING);
    80003190:	00007797          	auipc	a5,0x7
    80003194:	0b87b783          	ld	a5,184(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003198:	0007b783          	ld	a5,0(a5)
    void setState(State s) {state = s;}
    8000319c:	00300713          	li	a4,3
    800031a0:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	2b4080e7          	jalr	692(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800031ac:	10049073          	csrw	sstatus,s1
}
    800031b0:	f29ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    800031b4:	fff00513          	li	a0,-1
                    return;
    800031b8:	e71ff06f          	j	80003028 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    800031bc:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800031c0:	100027f3          	csrr	a5,sstatus
    800031c4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800031c8:	fb843483          	ld	s1,-72(s0)
                PCB::timeSliceCounter = 0;
    800031cc:	00007797          	auipc	a5,0x7
    800031d0:	06c7b783          	ld	a5,108(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x18>
    800031d4:	0007b023          	sd	zero,0(a5)
                PCB::running->setTimeToSleep(time);
    800031d8:	00007797          	auipc	a5,0x7
    800031dc:	0707b783          	ld	a5,112(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031e0:	0007b783          	ld	a5,0(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800031e4:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	360080e7          	jalr	864(ra) # 80002548 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	268080e7          	jalr	616(ra) # 80002458 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800031f8:	10049073          	csrw	sstatus,s1
                __asm__ volatile("li a0, 0x0");
    800031fc:	00000513          	li	a0,0
    80003200:	ed9ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003204:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r"(val));
    80003208:	00060a13          	mv	s4,a2
                KSemaphore* newSem = new KSemaphore(val);
    8000320c:	01800513          	li	a0,24
    80003210:	00000097          	auipc	ra,0x0
    80003214:	6ec080e7          	jalr	1772(ra) # 800038fc <_ZN10KSemaphorenwEm>
    80003218:	00050493          	mv	s1,a0
    8000321c:	000a059b          	sext.w	a1,s4
    80003220:	00000097          	auipc	ra,0x0
    80003224:	484080e7          	jalr	1156(ra) # 800036a4 <_ZN10KSemaphoreC1Ei>
                (*semaphoreHandle) = newSem;
    80003228:	0099b023          	sd	s1,0(s3)
                if(newSem == 0)
    8000322c:	00048663          	beqz	s1,80003238 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
                        __asm__ volatile("li a0, 0");
    80003230:	00000513          	li	a0,0
    80003234:	ea5ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                        __asm__ volatile("li a0, 0xffffffffffffffff");
    80003238:	fff00513          	li	a0,-1
    8000323c:	e9dff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003240:	00058513          	mv	a0,a1
                uint64 retval = kSem->wait();
    80003244:	00000097          	auipc	ra,0x0
    80003248:	508080e7          	jalr	1288(ra) # 8000374c <_ZN10KSemaphore4waitEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000324c:	00050513          	mv	a0,a0
    80003250:	e89ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
                __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003254:	00058513          	mv	a0,a1
                uint64 retval = kSem->signal();
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	654080e7          	jalr	1620(ra) # 800038ac <_ZN10KSemaphore6signalEv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80003260:	00050513          	mv	a0,a0
    80003264:	e75ff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
    80003268:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, DEFAULT_TIME_SLICE);
    8000326c:	00098513          	mv	a0,s3
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	284080e7          	jalr	644(ra) # 800024f4 <_ZN3PCBdlEPv>
    80003278:	00048513          	mv	a0,s1
    8000327c:	00008097          	auipc	ra,0x8
    80003280:	17c080e7          	jalr	380(ra) # 8000b3f8 <_Unwind_Resume>
    80003284:	00050913          	mv	s2,a0
                KSemaphore* newSem = new KSemaphore(val);
    80003288:	00048513          	mv	a0,s1
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	698080e7          	jalr	1688(ra) # 80003924 <_ZN10KSemaphoredlEPv>
    80003294:	00090513          	mv	a0,s2
    80003298:	00008097          	auipc	ra,0x8
    8000329c:	160080e7          	jalr	352(ra) # 8000b3f8 <_Unwind_Resume>

00000000800032a0 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00813423          	sd	s0,8(sp)
    800032a8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800032ac:	00007717          	auipc	a4,0x7
    800032b0:	04472703          	lw	a4,68(a4) # 8000a2f0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800032b4:	00100793          	li	a5,1
    800032b8:	04f70263          	beq	a4,a5,800032fc <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800032bc:	00007797          	auipc	a5,0x7
    800032c0:	03478793          	addi	a5,a5,52 # 8000a2f0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800032c4:	00100713          	li	a4,1
    800032c8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800032cc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800032d0:	00007717          	auipc	a4,0x7
    800032d4:	f5873703          	ld	a4,-168(a4) # 8000a228 <_GLOBAL_OFFSET_TABLE_+0x8>
    800032d8:	00073703          	ld	a4,0(a4)
    800032dc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800032e0:	00073423          	sd	zero,8(a4)
    //todo
    //+-1
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800032e4:	00007797          	auipc	a5,0x7
    800032e8:	f6c7b783          	ld	a5,-148(a5) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x30>
    800032ec:	0007b783          	ld	a5,0(a5)
    800032f0:	40e787b3          	sub	a5,a5,a4
    800032f4:	ff178793          	addi	a5,a5,-15
    800032f8:	00f73023          	sd	a5,0(a4)
}
    800032fc:	00813403          	ld	s0,8(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80003308:	fe010113          	addi	sp,sp,-32
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	01213023          	sd	s2,0(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	00050493          	mv	s1,a0
    80003324:	00058913          	mv	s2,a1

    initMemory();
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	f78080e7          	jalr	-136(ra) # 800032a0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003330:	00007797          	auipc	a5,0x7
    80003334:	fc87b783          	ld	a5,-56(a5) # 8000a2f8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003338:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000333c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003340:	00000713          	li	a4,0
    while(curr != 0)
    80003344:	00078c63          	beqz	a5,8000335c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003348:	00f4e863          	bltu	s1,a5,80003358 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    8000334c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003350:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003354:	ff1ff06f          	j	80003344 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003358:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    8000335c:	02070063          	beqz	a4,8000337c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003360:	00973423          	sd	s1,8(a4)
}
    80003364:	01813083          	ld	ra,24(sp)
    80003368:	01013403          	ld	s0,16(sp)
    8000336c:	00813483          	ld	s1,8(sp)
    80003370:	00013903          	ld	s2,0(sp)
    80003374:	02010113          	addi	sp,sp,32
    80003378:	00008067          	ret
        headAllocated = newAllocated;
    8000337c:	00007797          	auipc	a5,0x7
    80003380:	f697be23          	sd	s1,-132(a5) # 8000a2f8 <_ZN15MemoryAllocator13headAllocatedE>
    80003384:	fe1ff06f          	j	80003364 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003388 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050913          	mv	s2,a0
    initMemory();
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	efc080e7          	jalr	-260(ra) # 800032a0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800033ac:	00007497          	auipc	s1,0x7
    800033b0:	f544b483          	ld	s1,-172(s1) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800033b4:	00000713          	li	a4,0
    while(curr != 0)
    800033b8:	0a048863          	beqz	s1,80003468 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800033bc:	0004b783          	ld	a5,0(s1)
    800033c0:	0127f863          	bgeu	a5,s2,800033d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800033c4:	00048713          	mv	a4,s1
        curr = curr->next;
    800033c8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800033cc:	fedff06f          	j	800033b8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800033d0:	01090693          	addi	a3,s2,16
    800033d4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800033d8:	00007617          	auipc	a2,0x7
    800033dc:	e7863603          	ld	a2,-392(a2) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x30>
    800033e0:	00063603          	ld	a2,0(a2)
    800033e4:	04d66c63          	bltu	a2,a3,8000343c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800033e8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800033ec:	01000613          	li	a2,16
    800033f0:	02f67663          	bgeu	a2,a5,8000341c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800033f4:	0084b603          	ld	a2,8(s1)
    800033f8:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800033fc:	ff078793          	addi	a5,a5,-16
    80003400:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003404:	00070663          	beqz	a4,80003410 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003408:	00d73423          	sd	a3,8(a4)
    8000340c:	0380006f          	j	80003444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003410:	00007797          	auipc	a5,0x7
    80003414:	eed7b823          	sd	a3,-272(a5) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    80003418:	02c0006f          	j	80003444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000341c:	00070863          	beqz	a4,8000342c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003420:	0084b783          	ld	a5,8(s1)
    80003424:	00f73423          	sd	a5,8(a4)
    80003428:	01c0006f          	j	80003444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000342c:	0084b783          	ld	a5,8(s1)
    80003430:	00007717          	auipc	a4,0x7
    80003434:	ecf73823          	sd	a5,-304(a4) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    80003438:	00c0006f          	j	80003444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000343c:	02070063          	beqz	a4,8000345c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003440:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003444:	00090593          	mv	a1,s2
    80003448:	00048513          	mv	a0,s1
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	ebc080e7          	jalr	-324(ra) # 80003308 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003454:	01048513          	addi	a0,s1,16
            break;
    80003458:	0140006f          	j	8000346c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000345c:	00007797          	auipc	a5,0x7
    80003460:	ea07b223          	sd	zero,-348(a5) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    80003464:	fe1ff06f          	j	80003444 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003468:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	00013903          	ld	s2,0(sp)
    8000347c:	02010113          	addi	sp,sp,32
    80003480:	00008067          	ret

0000000080003484 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003484:	ff010113          	addi	sp,sp,-16
    80003488:	00113423          	sd	ra,8(sp)
    8000348c:	00813023          	sd	s0,0(sp)
    80003490:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003494:	00000097          	auipc	ra,0x0
    80003498:	ef4080e7          	jalr	-268(ra) # 80003388 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000349c:	00813083          	ld	ra,8(sp)
    800034a0:	00013403          	ld	s0,0(sp)
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00008067          	ret

00000000800034ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	00050493          	mv	s1,a0
    800034c8:	00058913          	mv	s2,a1
    initMemory();
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	dd4080e7          	jalr	-556(ra) # 800032a0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800034d4:	00007797          	auipc	a5,0x7
    800034d8:	e2c7b783          	ld	a5,-468(a5) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800034dc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800034e0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800034e4:	00000713          	li	a4,0
    while(curr != 0)
    800034e8:	00078c63          	beqz	a5,80003500 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800034ec:	00f4e863          	bltu	s1,a5,800034fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800034f0:	00078713          	mv	a4,a5
        curr = curr->next;
    800034f4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800034f8:	ff1ff06f          	j	800034e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800034fc:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003500:	04070663          	beqz	a4,8000354c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003504:	00973423          	sd	s1,8(a4)

    //todo
    //test it
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003508:	0084b783          	ld	a5,8(s1)
    8000350c:	00078a63          	beqz	a5,80003520 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003510:	0004b603          	ld	a2,0(s1)
    80003514:	01060693          	addi	a3,a2,16
    80003518:	00d486b3          	add	a3,s1,a3
    8000351c:	02d78e63          	beq	a5,a3,80003558 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003520:	00070a63          	beqz	a4,80003534 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003524:	00073683          	ld	a3,0(a4)
    80003528:	01068793          	addi	a5,a3,16
    8000352c:	00f707b3          	add	a5,a4,a5
    80003530:	04978263          	beq	a5,s1,80003574 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	00013903          	ld	s2,0(sp)
    80003544:	02010113          	addi	sp,sp,32
    80003548:	00008067          	ret
        headFree = newSegment;
    8000354c:	00007797          	auipc	a5,0x7
    80003550:	da97ba23          	sd	s1,-588(a5) # 8000a300 <_ZN15MemoryAllocator8headFreeE>
    80003554:	fb5ff06f          	j	80003508 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003558:	0007b683          	ld	a3,0(a5)
    8000355c:	00d60633          	add	a2,a2,a3
    80003560:	01060613          	addi	a2,a2,16
    80003564:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003568:	0087b783          	ld	a5,8(a5)
    8000356c:	00f4b423          	sd	a5,8(s1)
    80003570:	fb1ff06f          	j	80003520 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003574:	0004b783          	ld	a5,0(s1)
    80003578:	00f686b3          	add	a3,a3,a5
    8000357c:	01068693          	addi	a3,a3,16
    80003580:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003584:	0084b783          	ld	a5,8(s1)
    80003588:	00f73423          	sd	a5,8(a4)
}
    8000358c:	fa9ff06f          	j	80003534 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003590 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	01213023          	sd	s2,0(sp)
    800035a4:	02010413          	addi	s0,sp,32
    800035a8:	00050913          	mv	s2,a0
    initMemory();
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	cf4080e7          	jalr	-780(ra) # 800032a0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800035b4:	00007497          	auipc	s1,0x7
    800035b8:	d444b483          	ld	s1,-700(s1) # 8000a2f8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800035bc:	00000713          	li	a4,0
    while(curr != 0)
    800035c0:	02048a63          	beqz	s1,800035f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800035c4:	01048793          	addi	a5,s1,16
    800035c8:	01278863          	beq	a5,s2,800035d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800035cc:	00048713          	mv	a4,s1
        curr = curr->next;
    800035d0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800035d4:	fedff06f          	j	800035c0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800035d8:	02070e63          	beqz	a4,80003614 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800035dc:	0084b783          	ld	a5,8(s1)
    800035e0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800035e4:	0004b583          	ld	a1,0(s1)
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	ec0080e7          	jalr	-320(ra) # 800034ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800035f4:	02048863          	beqz	s1,80003624 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800035f8:	00000513          	li	a0,0
    else
        return 1;
}
    800035fc:	01813083          	ld	ra,24(sp)
    80003600:	01013403          	ld	s0,16(sp)
    80003604:	00813483          	ld	s1,8(sp)
    80003608:	00013903          	ld	s2,0(sp)
    8000360c:	02010113          	addi	sp,sp,32
    80003610:	00008067          	ret
                headAllocated = curr->next;
    80003614:	0084b783          	ld	a5,8(s1)
    80003618:	00007717          	auipc	a4,0x7
    8000361c:	cef73023          	sd	a5,-800(a4) # 8000a2f8 <_ZN15MemoryAllocator13headAllocatedE>
    80003620:	fc5ff06f          	j	800035e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003624:	00100513          	li	a0,1
    80003628:	fd5ff06f          	j	800035fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000362c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00113423          	sd	ra,8(sp)
    80003634:	00813023          	sd	s0,0(sp)
    80003638:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	f54080e7          	jalr	-172(ra) # 80003590 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003644:	00813083          	ld	ra,8(sp)
    80003648:	00013403          	ld	s0,0(sp)
    8000364c:	01010113          	addi	sp,sp,16
    80003650:	00008067          	ret

0000000080003654 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003664:	00000097          	auipc	ra,0x0
    80003668:	e20080e7          	jalr	-480(ra) # 80003484 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00113423          	sd	ra,8(sp)
    80003684:	00813023          	sd	s0,0(sp)
    80003688:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	fa0080e7          	jalr	-96(ra) # 8000362c <_ZN15MemoryAllocator8mem_freeEPv>
    80003694:	00813083          	ld	ra,8(sp)
    80003698:	00013403          	ld	s0,0(sp)
    8000369c:	01010113          	addi	sp,sp,16
    800036a0:	00008067          	ret

00000000800036a4 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00813423          	sd	s0,8(sp)
    800036ac:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    800036b0:	00b52a23          	sw	a1,20(a0)
    800036b4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800036b8:	00053423          	sd	zero,8(a0)
    800036bc:	00053023          	sd	zero,0(a0)
}
    800036c0:	00813403          	ld	s0,8(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret

00000000800036cc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00813423          	sd	s0,8(sp)
    800036d4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800036d8:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    800036dc:	00053783          	ld	a5,0(a0)
    800036e0:	00078e63          	beqz	a5,800036fc <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800036e4:	00853783          	ld	a5,8(a0)
    800036e8:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    800036ec:	00b53423          	sd	a1,8(a0)
    }
}
    800036f0:	00813403          	ld	s0,8(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800036fc:	00b53423          	sd	a1,8(a0)
    80003700:	00b53023          	sd	a1,0(a0)
    80003704:	fedff06f          	j	800036f0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003708 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block() {
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00113423          	sd	ra,8(sp)
    80003710:	00813023          	sd	s0,0(sp)
    80003714:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003718:	00007797          	auipc	a5,0x7
    8000371c:	b307b783          	ld	a5,-1232(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003720:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003724:	00200793          	li	a5,2
    80003728:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	fa0080e7          	jalr	-96(ra) # 800036cc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	d24080e7          	jalr	-732(ra) # 80002458 <_ZN3PCB8dispatchEv>
}
    8000373c:	00813083          	ld	ra,8(sp)
    80003740:	00013403          	ld	s0,0(sp)
    80003744:	01010113          	addi	sp,sp,16
    80003748:	00008067          	ret

000000008000374c <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    8000374c:	01052783          	lw	a5,16(a0)
    80003750:	fff7879b          	addiw	a5,a5,-1
    80003754:	00f52823          	sw	a5,16(a0)
    80003758:	02079713          	slli	a4,a5,0x20
    8000375c:	00074663          	bltz	a4,80003768 <_ZN10KSemaphore4waitEv+0x1c>
}
    80003760:	00000513          	li	a0,0
    80003764:	00008067          	ret
uint64 KSemaphore::wait() {
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
        block();
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	f90080e7          	jalr	-112(ra) # 80003708 <_ZN10KSemaphore5blockEv>
}
    80003780:	00000513          	li	a0,0
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00813423          	sd	s0,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800037a0:	00053503          	ld	a0,0(a0)
    800037a4:	00813403          	ld	s0,8(sp)
    800037a8:	01010113          	addi	sp,sp,16
    800037ac:	00008067          	ret

00000000800037b0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800037b0:	ff010113          	addi	sp,sp,-16
    800037b4:	00813423          	sd	s0,8(sp)
    800037b8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800037bc:	00053783          	ld	a5,0(a0)
    800037c0:	00078c63          	beqz	a5,800037d8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800037c4:	0007b703          	ld	a4,0(a5)
    800037c8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800037cc:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    800037d0:	00053783          	ld	a5,0(a0)
    800037d4:	00078863          	beqz	a5,800037e4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800037d8:	00813403          	ld	s0,8(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret
        tailBlocked =0;
    800037e4:	00053423          	sd	zero,8(a0)
    800037e8:	ff1ff06f          	j	800037d8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800037ec <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	01213023          	sd	s2,0(sp)
    80003800:	02010413          	addi	s0,sp,32
    80003804:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003808:	00090513          	mv	a0,s2
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	f88080e7          	jalr	-120(ra) # 80003794 <_ZN10KSemaphore15getFirstBlockedEv>
    80003814:	00050493          	mv	s1,a0
    80003818:	02050063          	beqz	a0,80003838 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000381c:	00090513          	mv	a0,s2
    80003820:	00000097          	auipc	ra,0x0
    80003824:	f90080e7          	jalr	-112(ra) # 800037b0 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80003828:	00048513          	mv	a0,s1
    8000382c:	fffff097          	auipc	ra,0xfffff
    80003830:	070080e7          	jalr	112(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80003834:	fd5ff06f          	j	80003808 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003838:	01813083          	ld	ra,24(sp)
    8000383c:	01013403          	ld	s0,16(sp)
    80003840:	00813483          	ld	s1,8(sp)
    80003844:	00013903          	ld	s2,0(sp)
    80003848:	02010113          	addi	sp,sp,32
    8000384c:	00008067          	ret

0000000080003850 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00113c23          	sd	ra,24(sp)
    80003858:	00813823          	sd	s0,16(sp)
    8000385c:	00913423          	sd	s1,8(sp)
    80003860:	01213023          	sd	s2,0(sp)
    80003864:	02010413          	addi	s0,sp,32
    80003868:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	f28080e7          	jalr	-216(ra) # 80003794 <_ZN10KSemaphore15getFirstBlockedEv>
    80003874:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003878:	00090513          	mv	a0,s2
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	f34080e7          	jalr	-204(ra) # 800037b0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003884:	00048863          	beqz	s1,80003894 <_ZN10KSemaphore7unblockEv+0x44>
        Scheduler::put(fr);
    80003888:	00048513          	mv	a0,s1
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	010080e7          	jalr	16(ra) # 8000289c <_ZN9Scheduler3putEP3PCB>
}
    80003894:	01813083          	ld	ra,24(sp)
    80003898:	01013403          	ld	s0,16(sp)
    8000389c:	00813483          	ld	s1,8(sp)
    800038a0:	00013903          	ld	s2,0(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800038ac:	01052783          	lw	a5,16(a0)
    800038b0:	0017879b          	addiw	a5,a5,1
    800038b4:	0007871b          	sext.w	a4,a5
    800038b8:	00f52823          	sw	a5,16(a0)
    800038bc:	00e05a63          	blez	a4,800038d0 <_ZN10KSemaphore6signalEv+0x24>
        val = beginVal;
    800038c0:	01452783          	lw	a5,20(a0)
    800038c4:	00f52823          	sw	a5,16(a0)
}
    800038c8:	00000513          	li	a0,0
    800038cc:	00008067          	ret
uint64 KSemaphore::signal() {
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00113423          	sd	ra,8(sp)
    800038d8:	00813023          	sd	s0,0(sp)
    800038dc:	01010413          	addi	s0,sp,16
        unblock();
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	f70080e7          	jalr	-144(ra) # 80003850 <_ZN10KSemaphore7unblockEv>
}
    800038e8:	00000513          	li	a0,0
    800038ec:	00813083          	ld	ra,8(sp)
    800038f0:	00013403          	ld	s0,0(sp)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <_ZN10KSemaphorenwEm>:

void *KSemaphore::operator new(size_t size) {
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	d48080e7          	jalr	-696(ra) # 80003654 <_Z7kmallocm>
}
    80003914:	00813083          	ld	ra,8(sp)
    80003918:	00013403          	ld	s0,0(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret

0000000080003924 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p) {
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00113423          	sd	ra,8(sp)
    8000392c:	00813023          	sd	s0,0(sp)
    80003930:	01010413          	addi	s0,sp,16
    kfree(p);
    80003934:	00000097          	auipc	ra,0x0
    80003938:	d48080e7          	jalr	-696(ra) # 8000367c <_Z5kfreePv>
}
    8000393c:	00813083          	ld	ra,8(sp)
    80003940:	00013403          	ld	s0,0(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_Z8producerPv>:
    delete data->buffer;

    sem_signal(data->wait);
}

void producer(void *arg) {
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	01213023          	sd	s2,0(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Producer started...\n");
    80003968:	00005517          	auipc	a0,0x5
    8000396c:	86050513          	addi	a0,a0,-1952 # 800081c8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	468080e7          	jalr	1128(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003978:	00000913          	li	s2,0
    8000397c:	00c0006f          	j	80003988 <_Z8producerPv+0x3c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	9a4080e7          	jalr	-1628(ra) # 80001324 <thread_dispatch>
    while (!threadEnd) {
    80003988:	00007797          	auipc	a5,0x7
    8000398c:	9807a783          	lw	a5,-1664(a5) # 8000a308 <threadEnd>
    80003990:	02079e63          	bnez	a5,800039cc <_Z8producerPv+0x80>
        data->buffer->put(data->id + '0');
    80003994:	0004a583          	lw	a1,0(s1)
    80003998:	0305859b          	addiw	a1,a1,48
    8000399c:	0084b503          	ld	a0,8(s1)
    800039a0:	00002097          	auipc	ra,0x2
    800039a4:	bb4080e7          	jalr	-1100(ra) # 80005554 <_ZN6Buffer3putEi>
        i++;
    800039a8:	0019071b          	addiw	a4,s2,1
    800039ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039b0:	0004a683          	lw	a3,0(s1)
    800039b4:	0026979b          	slliw	a5,a3,0x2
    800039b8:	00d787bb          	addw	a5,a5,a3
    800039bc:	0017979b          	slliw	a5,a5,0x1
    800039c0:	02f767bb          	remw	a5,a4,a5
    800039c4:	fc0792e3          	bnez	a5,80003988 <_Z8producerPv+0x3c>
    800039c8:	fb9ff06f          	j	80003980 <_Z8producerPv+0x34>
        }
    }

    sem_signal(data->wait);
    800039cc:	0104b503          	ld	a0,16(s1)
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	a2c080e7          	jalr	-1492(ra) # 800013fc <sem_signal>
}
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00013903          	ld	s2,0(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <_Z8consumerPv>:

void consumer(void *arg) {
    800039f0:	fd010113          	addi	sp,sp,-48
    800039f4:	02113423          	sd	ra,40(sp)
    800039f8:	02813023          	sd	s0,32(sp)
    800039fc:	00913c23          	sd	s1,24(sp)
    80003a00:	01213823          	sd	s2,16(sp)
    80003a04:	01313423          	sd	s3,8(sp)
    80003a08:	03010413          	addi	s0,sp,48
    80003a0c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    Riscv::printString("Consumer started...\n");
    80003a10:	00004517          	auipc	a0,0x4
    80003a14:	7d050513          	addi	a0,a0,2000 # 800081e0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	3c0080e7          	jalr	960(ra) # 80002dd8 <_ZN5Riscv11printStringEPKc>

    int i = 0;
    80003a20:	00000993          	li	s3,0
    80003a24:	01c0006f          	j	80003a40 <_Z8consumerPv+0x50>

        //putc(key);
        Riscv::printInteger(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	8fc080e7          	jalr	-1796(ra) # 80001324 <thread_dispatch>
    80003a30:	04c0006f          	j	80003a7c <_Z8consumerPv+0x8c>
        }

        if (i % 80 == 0) {
            __putc('\n');
    80003a34:	00a00513          	li	a0,10
    80003a38:	00004097          	auipc	ra,0x4
    80003a3c:	cf4080e7          	jalr	-780(ra) # 8000772c <__putc>
    while (!threadEnd) {
    80003a40:	00007797          	auipc	a5,0x7
    80003a44:	8c87a783          	lw	a5,-1848(a5) # 8000a308 <threadEnd>
    80003a48:	04079263          	bnez	a5,80003a8c <_Z8consumerPv+0x9c>
        int key = data->buffer->get();
    80003a4c:	00893503          	ld	a0,8(s2)
    80003a50:	00002097          	auipc	ra,0x2
    80003a54:	b94080e7          	jalr	-1132(ra) # 800055e4 <_ZN6Buffer3getEv>
        i++;
    80003a58:	0019849b          	addiw	s1,s3,1
    80003a5c:	0004899b          	sext.w	s3,s1
        Riscv::printInteger(key);
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	3e8080e7          	jalr	1000(ra) # 80002e48 <_ZN5Riscv12printIntegerEm>
        if (i % (5 * data->id) == 0) {
    80003a68:	00092703          	lw	a4,0(s2)
    80003a6c:	0027179b          	slliw	a5,a4,0x2
    80003a70:	00e787bb          	addw	a5,a5,a4
    80003a74:	02f4e7bb          	remw	a5,s1,a5
    80003a78:	fa0788e3          	beqz	a5,80003a28 <_Z8consumerPv+0x38>
        if (i % 80 == 0) {
    80003a7c:	05000793          	li	a5,80
    80003a80:	02f4e4bb          	remw	s1,s1,a5
    80003a84:	fa049ee3          	bnez	s1,80003a40 <_Z8consumerPv+0x50>
    80003a88:	fadff06f          	j	80003a34 <_Z8consumerPv+0x44>
        }
    }

    sem_signal(data->wait);
    80003a8c:	01093503          	ld	a0,16(s2)
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	96c080e7          	jalr	-1684(ra) # 800013fc <sem_signal>
}
    80003a98:	02813083          	ld	ra,40(sp)
    80003a9c:	02013403          	ld	s0,32(sp)
    80003aa0:	01813483          	ld	s1,24(sp)
    80003aa4:	01013903          	ld	s2,16(sp)
    80003aa8:	00813983          	ld	s3,8(sp)
    80003aac:	03010113          	addi	sp,sp,48
    80003ab0:	00008067          	ret

0000000080003ab4 <_Z16producerKeyboardPv>:
void producerKeyboard(void *arg) {
    80003ab4:	fe010113          	addi	sp,sp,-32
    80003ab8:	00113c23          	sd	ra,24(sp)
    80003abc:	00813823          	sd	s0,16(sp)
    80003ac0:	00913423          	sd	s1,8(sp)
    80003ac4:	01213023          	sd	s2,0(sp)
    80003ac8:	02010413          	addi	s0,sp,32
    80003acc:	00050493          	mv	s1,a0
    int i = 0;
    80003ad0:	00000913          	li	s2,0
    80003ad4:	00c0006f          	j	80003ae0 <_Z16producerKeyboardPv+0x2c>
            thread_dispatch();
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	84c080e7          	jalr	-1972(ra) # 80001324 <thread_dispatch>
    while ((key = __getc()) != 0x1b) {
    80003ae0:	00004097          	auipc	ra,0x4
    80003ae4:	c88080e7          	jalr	-888(ra) # 80007768 <__getc>
    80003ae8:	0005059b          	sext.w	a1,a0
    80003aec:	01b00793          	li	a5,27
    80003af0:	02f58a63          	beq	a1,a5,80003b24 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003af4:	0084b503          	ld	a0,8(s1)
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	a5c080e7          	jalr	-1444(ra) # 80005554 <_ZN6Buffer3putEi>
        i++;
    80003b00:	0019071b          	addiw	a4,s2,1
    80003b04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003b08:	0004a683          	lw	a3,0(s1)
    80003b0c:	0026979b          	slliw	a5,a3,0x2
    80003b10:	00d787bb          	addw	a5,a5,a3
    80003b14:	0017979b          	slliw	a5,a5,0x1
    80003b18:	02f767bb          	remw	a5,a4,a5
    80003b1c:	fc0792e3          	bnez	a5,80003ae0 <_Z16producerKeyboardPv+0x2c>
    80003b20:	fb9ff06f          	j	80003ad8 <_Z16producerKeyboardPv+0x24>
    threadEnd = 1;
    80003b24:	00100793          	li	a5,1
    80003b28:	00006717          	auipc	a4,0x6
    80003b2c:	7ef72023          	sw	a5,2016(a4) # 8000a308 <threadEnd>
    delete data->buffer;
    80003b30:	0084b903          	ld	s2,8(s1)
    80003b34:	00090e63          	beqz	s2,80003b50 <_Z16producerKeyboardPv+0x9c>
    80003b38:	00090513          	mv	a0,s2
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	96c080e7          	jalr	-1684(ra) # 800054a8 <_ZN6BufferD1Ev>
    80003b44:	00090513          	mv	a0,s2
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	f20080e7          	jalr	-224(ra) # 80002a68 <_ZdlPv>
    sem_signal(data->wait);
    80003b50:	0104b503          	ld	a0,16(s1)
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	8a8080e7          	jalr	-1880(ra) # 800013fc <sem_signal>
}
    80003b5c:	01813083          	ld	ra,24(sp)
    80003b60:	01013403          	ld	s0,16(sp)
    80003b64:	00813483          	ld	s1,8(sp)
    80003b68:	00013903          	ld	s2,0(sp)
    80003b6c:	02010113          	addi	sp,sp,32
    80003b70:	00008067          	ret

0000000080003b74 <_Z22producerConsumer_C_APIv>:
//todo
//threadNuma hardCoded, timer enables itself as soon as
//code gets into getString
//isto za bafer
void producerConsumer_C_API()
{
    80003b74:	f2010113          	addi	sp,sp,-224
    80003b78:	0c113c23          	sd	ra,216(sp)
    80003b7c:	0c813823          	sd	s0,208(sp)
    80003b80:	0c913423          	sd	s1,200(sp)
    80003b84:	0d213023          	sd	s2,192(sp)
    80003b88:	0e010413          	addi	s0,sp,224
    //char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80003b8c:	00004517          	auipc	a0,0x4
    80003b90:	66c50513          	addi	a0,a0,1644 # 800081f8 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003b94:	00001097          	auipc	ra,0x1
    80003b98:	164080e7          	jalr	356(ra) # 80004cf8 <_Z11printStringPKc>
    //getString(input, 30);
    threadNum = 5;

    printString("Unesite velicinu bafera?\n");
    80003b9c:	00004517          	auipc	a0,0x4
    80003ba0:	67c50513          	addi	a0,a0,1660 # 80008218 <_ZZN5Riscv12printIntegerEmE6digits+0x60>
    80003ba4:	00001097          	auipc	ra,0x1
    80003ba8:	154080e7          	jalr	340(ra) # 80004cf8 <_Z11printStringPKc>
    //getString(input, 30);
    n = 10;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80003bac:	00004517          	auipc	a0,0x4
    80003bb0:	68c50513          	addi	a0,a0,1676 # 80008238 <_ZZN5Riscv12printIntegerEmE6digits+0x80>
    80003bb4:	00001097          	auipc	ra,0x1
    80003bb8:	144080e7          	jalr	324(ra) # 80004cf8 <_Z11printStringPKc>
    80003bbc:	00000613          	li	a2,0
    80003bc0:	00a00593          	li	a1,10
    80003bc4:	00500513          	li	a0,5
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	2c8080e7          	jalr	712(ra) # 80004e90 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003bd0:	00004517          	auipc	a0,0x4
    80003bd4:	68050513          	addi	a0,a0,1664 # 80008250 <_ZZN5Riscv12printIntegerEmE6digits+0x98>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	120080e7          	jalr	288(ra) # 80004cf8 <_Z11printStringPKc>
    80003be0:	00000613          	li	a2,0
    80003be4:	00a00593          	li	a1,10
    80003be8:	00a00513          	li	a0,10
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	2a4080e7          	jalr	676(ra) # 80004e90 <_Z8printIntiii>
    printString(".\n");
    80003bf4:	00004517          	auipc	a0,0x4
    80003bf8:	55450513          	addi	a0,a0,1364 # 80008148 <CONSOLE_STATUS+0x138>
    80003bfc:	00001097          	auipc	ra,0x1
    80003c00:	0fc080e7          	jalr	252(ra) # 80004cf8 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80003c04:	03800513          	li	a0,56
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	e38080e7          	jalr	-456(ra) # 80002a40 <_Znwm>
    80003c10:	00050913          	mv	s2,a0
    80003c14:	00a00593          	li	a1,10
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	808080e7          	jalr	-2040(ra) # 80005420 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80003c20:	00000593          	li	a1,0
    80003c24:	00006517          	auipc	a0,0x6
    80003c28:	6ec50513          	addi	a0,a0,1772 # 8000a310 <waitForAll>
    80003c2c:	ffffd097          	auipc	ra,0xffffd
    80003c30:	740080e7          	jalr	1856(ra) # 8000136c <sem_open>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    80003c34:	00500793          	li	a5,5
    80003c38:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    80003c3c:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    80003c40:	00006797          	auipc	a5,0x6
    80003c44:	6d07b783          	ld	a5,1744(a5) # 8000a310 <waitForAll>
    80003c48:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c4c:	fc040613          	addi	a2,s0,-64
    80003c50:	00000597          	auipc	a1,0x0
    80003c54:	da058593          	addi	a1,a1,-608 # 800039f0 <_Z8consumerPv>
    80003c58:	fd840513          	addi	a0,s0,-40
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	648080e7          	jalr	1608(ra) # 800012a4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80003c64:	00000493          	li	s1,0
    80003c68:	00400793          	li	a5,4
    80003c6c:	0697c063          	blt	a5,s1,80003ccc <_Z22producerConsumer_C_APIv+0x158>
        data[i].id = i;
    80003c70:	00149613          	slli	a2,s1,0x1
    80003c74:	009607b3          	add	a5,a2,s1
    80003c78:	00379793          	slli	a5,a5,0x3
    80003c7c:	fe040713          	addi	a4,s0,-32
    80003c80:	00f707b3          	add	a5,a4,a5
    80003c84:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80003c88:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80003c8c:	00006717          	auipc	a4,0x6
    80003c90:	68473703          	ld	a4,1668(a4) # 8000a310 <waitForAll>
    80003c94:	f6e7bc23          	sd	a4,-136(a5)
        //todo changed
        //thread_create(threads + i,
        //              i > 0 ? producer : producerKeyboard,
        //              data + i);

        thread_create(threads + i, producer, data + i);
    80003c98:	00349793          	slli	a5,s1,0x3
    80003c9c:	00960633          	add	a2,a2,s1
    80003ca0:	00361613          	slli	a2,a2,0x3
    80003ca4:	f4840713          	addi	a4,s0,-184
    80003ca8:	00c70633          	add	a2,a4,a2
    80003cac:	00000597          	auipc	a1,0x0
    80003cb0:	ca058593          	addi	a1,a1,-864 # 8000394c <_Z8producerPv>
    80003cb4:	f2040513          	addi	a0,s0,-224
    80003cb8:	00f50533          	add	a0,a0,a5
    80003cbc:	ffffd097          	auipc	ra,0xffffd
    80003cc0:	5e8080e7          	jalr	1512(ra) # 800012a4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003cc4:	0014849b          	addiw	s1,s1,1
    80003cc8:	fa1ff06f          	j	80003c68 <_Z22producerConsumer_C_APIv+0xf4>

    }

    thread_dispatch();
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	658080e7          	jalr	1624(ra) # 80001324 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80003cd4:	00000493          	li	s1,0
    80003cd8:	00500793          	li	a5,5
    80003cdc:	0097ce63          	blt	a5,s1,80003cf8 <_Z22producerConsumer_C_APIv+0x184>
        sem_wait(waitForAll);
    80003ce0:	00006517          	auipc	a0,0x6
    80003ce4:	63053503          	ld	a0,1584(a0) # 8000a310 <waitForAll>
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	6e8080e7          	jalr	1768(ra) # 800013d0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003cf0:	0014849b          	addiw	s1,s1,1
    80003cf4:	fe5ff06f          	j	80003cd8 <_Z22producerConsumer_C_APIv+0x164>
    }

    sem_close(waitForAll);
    80003cf8:	00006517          	auipc	a0,0x6
    80003cfc:	61853503          	ld	a0,1560(a0) # 8000a310 <waitForAll>
    80003d00:	ffffd097          	auipc	ra,0xffffd
    80003d04:	6a4080e7          	jalr	1700(ra) # 800013a4 <sem_close>
    80003d08:	0d813083          	ld	ra,216(sp)
    80003d0c:	0d013403          	ld	s0,208(sp)
    80003d10:	0c813483          	ld	s1,200(sp)
    80003d14:	0c013903          	ld	s2,192(sp)
    80003d18:	0e010113          	addi	sp,sp,224
    80003d1c:	00008067          	ret
    80003d20:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d24:	00090513          	mv	a0,s2
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	d40080e7          	jalr	-704(ra) # 80002a68 <_ZdlPv>
    80003d30:	00048513          	mv	a0,s1
    80003d34:	00007097          	auipc	ra,0x7
    80003d38:	6c4080e7          	jalr	1732(ra) # 8000b3f8 <_Unwind_Resume>

0000000080003d3c <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	01213023          	sd	s2,0(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d58:	00100793          	li	a5,1
    80003d5c:	02a7f863          	bgeu	a5,a0,80003d8c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d60:	00a00793          	li	a5,10
    80003d64:	02f577b3          	remu	a5,a0,a5
    80003d68:	02078e63          	beqz	a5,80003da4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d6c:	fff48513          	addi	a0,s1,-1
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	fcc080e7          	jalr	-52(ra) # 80003d3c <_ZL9fibonaccim>
    80003d78:	00050913          	mv	s2,a0
    80003d7c:	ffe48513          	addi	a0,s1,-2
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	fbc080e7          	jalr	-68(ra) # 80003d3c <_ZL9fibonaccim>
    80003d88:	00a90533          	add	a0,s2,a0
}
    80003d8c:	01813083          	ld	ra,24(sp)
    80003d90:	01013403          	ld	s0,16(sp)
    80003d94:	00813483          	ld	s1,8(sp)
    80003d98:	00013903          	ld	s2,0(sp)
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	580080e7          	jalr	1408(ra) # 80001324 <thread_dispatch>
    80003dac:	fc1ff06f          	j	80003d6c <_ZL9fibonaccim+0x30>

0000000080003db0 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	01213023          	sd	s2,0(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003dc8:	00000913          	li	s2,0
    80003dcc:	0380006f          	j	80003e04 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003dd0:	ffffd097          	auipc	ra,0xffffd
    80003dd4:	554080e7          	jalr	1364(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003dd8:	00148493          	addi	s1,s1,1
    80003ddc:	000027b7          	lui	a5,0x2
    80003de0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003de4:	0097ee63          	bltu	a5,s1,80003e00 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003de8:	00000713          	li	a4,0
    80003dec:	000077b7          	lui	a5,0x7
    80003df0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003df4:	fce7eee3          	bltu	a5,a4,80003dd0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003df8:	00170713          	addi	a4,a4,1
    80003dfc:	ff1ff06f          	j	80003dec <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e00:	00190913          	addi	s2,s2,1
    80003e04:	00900793          	li	a5,9
    80003e08:	0527e063          	bltu	a5,s2,80003e48 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e0c:	00004517          	auipc	a0,0x4
    80003e10:	45c50513          	addi	a0,a0,1116 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	ee4080e7          	jalr	-284(ra) # 80004cf8 <_Z11printStringPKc>
    80003e1c:	00000613          	li	a2,0
    80003e20:	00a00593          	li	a1,10
    80003e24:	0009051b          	sext.w	a0,s2
    80003e28:	00001097          	auipc	ra,0x1
    80003e2c:	068080e7          	jalr	104(ra) # 80004e90 <_Z8printIntiii>
    80003e30:	00004517          	auipc	a0,0x4
    80003e34:	36850513          	addi	a0,a0,872 # 80008198 <CONSOLE_STATUS+0x188>
    80003e38:	00001097          	auipc	ra,0x1
    80003e3c:	ec0080e7          	jalr	-320(ra) # 80004cf8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e40:	00000493          	li	s1,0
    80003e44:	f99ff06f          	j	80003ddc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e48:	00004517          	auipc	a0,0x4
    80003e4c:	42850513          	addi	a0,a0,1064 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	ea8080e7          	jalr	-344(ra) # 80004cf8 <_Z11printStringPKc>
    finishedA = true;
    80003e58:	00100793          	li	a5,1
    80003e5c:	00006717          	auipc	a4,0x6
    80003e60:	4af70e23          	sb	a5,1212(a4) # 8000a318 <_ZL9finishedA>
}
    80003e64:	01813083          	ld	ra,24(sp)
    80003e68:	01013403          	ld	s0,16(sp)
    80003e6c:	00813483          	ld	s1,8(sp)
    80003e70:	00013903          	ld	s2,0(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00113c23          	sd	ra,24(sp)
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	01213023          	sd	s2,0(sp)
    80003e90:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e94:	00000913          	li	s2,0
    80003e98:	0380006f          	j	80003ed0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e9c:	ffffd097          	auipc	ra,0xffffd
    80003ea0:	488080e7          	jalr	1160(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003ea4:	00148493          	addi	s1,s1,1
    80003ea8:	000027b7          	lui	a5,0x2
    80003eac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003eb0:	0097ee63          	bltu	a5,s1,80003ecc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003eb4:	00000713          	li	a4,0
    80003eb8:	000077b7          	lui	a5,0x7
    80003ebc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ec0:	fce7eee3          	bltu	a5,a4,80003e9c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003ec4:	00170713          	addi	a4,a4,1
    80003ec8:	ff1ff06f          	j	80003eb8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ecc:	00190913          	addi	s2,s2,1
    80003ed0:	00f00793          	li	a5,15
    80003ed4:	0527e063          	bltu	a5,s2,80003f14 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ed8:	00004517          	auipc	a0,0x4
    80003edc:	3a850513          	addi	a0,a0,936 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	e18080e7          	jalr	-488(ra) # 80004cf8 <_Z11printStringPKc>
    80003ee8:	00000613          	li	a2,0
    80003eec:	00a00593          	li	a1,10
    80003ef0:	0009051b          	sext.w	a0,s2
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	f9c080e7          	jalr	-100(ra) # 80004e90 <_Z8printIntiii>
    80003efc:	00004517          	auipc	a0,0x4
    80003f00:	29c50513          	addi	a0,a0,668 # 80008198 <CONSOLE_STATUS+0x188>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	df4080e7          	jalr	-524(ra) # 80004cf8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f0c:	00000493          	li	s1,0
    80003f10:	f99ff06f          	j	80003ea8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f14:	00004517          	auipc	a0,0x4
    80003f18:	37450513          	addi	a0,a0,884 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	ddc080e7          	jalr	-548(ra) # 80004cf8 <_Z11printStringPKc>
    finishedB = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00006717          	auipc	a4,0x6
    80003f2c:	3ef708a3          	sb	a5,1009(a4) # 8000a319 <_ZL9finishedB>
    thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	3f4080e7          	jalr	1012(ra) # 80001324 <thread_dispatch>
}
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret

0000000080003f50 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f50:	fe010113          	addi	sp,sp,-32
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00813823          	sd	s0,16(sp)
    80003f5c:	00913423          	sd	s1,8(sp)
    80003f60:	01213023          	sd	s2,0(sp)
    80003f64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f68:	00000493          	li	s1,0
    80003f6c:	0400006f          	j	80003fac <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f70:	00004517          	auipc	a0,0x4
    80003f74:	32850513          	addi	a0,a0,808 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	d80080e7          	jalr	-640(ra) # 80004cf8 <_Z11printStringPKc>
    80003f80:	00000613          	li	a2,0
    80003f84:	00a00593          	li	a1,10
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	f04080e7          	jalr	-252(ra) # 80004e90 <_Z8printIntiii>
    80003f94:	00004517          	auipc	a0,0x4
    80003f98:	20450513          	addi	a0,a0,516 # 80008198 <CONSOLE_STATUS+0x188>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	d5c080e7          	jalr	-676(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fa4:	0014849b          	addiw	s1,s1,1
    80003fa8:	0ff4f493          	andi	s1,s1,255
    80003fac:	00200793          	li	a5,2
    80003fb0:	fc97f0e3          	bgeu	a5,s1,80003f70 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003fb4:	00004517          	auipc	a0,0x4
    80003fb8:	2ec50513          	addi	a0,a0,748 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	d3c080e7          	jalr	-708(ra) # 80004cf8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fc4:	00700313          	li	t1,7
    thread_dispatch();
    80003fc8:	ffffd097          	auipc	ra,0xffffd
    80003fcc:	35c080e7          	jalr	860(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fd0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003fd4:	00004517          	auipc	a0,0x4
    80003fd8:	2dc50513          	addi	a0,a0,732 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	d1c080e7          	jalr	-740(ra) # 80004cf8 <_Z11printStringPKc>
    80003fe4:	00000613          	li	a2,0
    80003fe8:	00a00593          	li	a1,10
    80003fec:	0009051b          	sext.w	a0,s2
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	ea0080e7          	jalr	-352(ra) # 80004e90 <_Z8printIntiii>
    80003ff8:	00004517          	auipc	a0,0x4
    80003ffc:	1a050513          	addi	a0,a0,416 # 80008198 <CONSOLE_STATUS+0x188>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	cf8080e7          	jalr	-776(ra) # 80004cf8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004008:	00c00513          	li	a0,12
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	d30080e7          	jalr	-720(ra) # 80003d3c <_ZL9fibonaccim>
    80004014:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004018:	00004517          	auipc	a0,0x4
    8000401c:	2a050513          	addi	a0,a0,672 # 800082b8 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	cd8080e7          	jalr	-808(ra) # 80004cf8 <_Z11printStringPKc>
    80004028:	00000613          	li	a2,0
    8000402c:	00a00593          	li	a1,10
    80004030:	0009051b          	sext.w	a0,s2
    80004034:	00001097          	auipc	ra,0x1
    80004038:	e5c080e7          	jalr	-420(ra) # 80004e90 <_Z8printIntiii>
    8000403c:	00004517          	auipc	a0,0x4
    80004040:	15c50513          	addi	a0,a0,348 # 80008198 <CONSOLE_STATUS+0x188>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	cb4080e7          	jalr	-844(ra) # 80004cf8 <_Z11printStringPKc>
    8000404c:	0400006f          	j	8000408c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004050:	00004517          	auipc	a0,0x4
    80004054:	24850513          	addi	a0,a0,584 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	ca0080e7          	jalr	-864(ra) # 80004cf8 <_Z11printStringPKc>
    80004060:	00000613          	li	a2,0
    80004064:	00a00593          	li	a1,10
    80004068:	00048513          	mv	a0,s1
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	e24080e7          	jalr	-476(ra) # 80004e90 <_Z8printIntiii>
    80004074:	00004517          	auipc	a0,0x4
    80004078:	12450513          	addi	a0,a0,292 # 80008198 <CONSOLE_STATUS+0x188>
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	c7c080e7          	jalr	-900(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004084:	0014849b          	addiw	s1,s1,1
    80004088:	0ff4f493          	andi	s1,s1,255
    8000408c:	00500793          	li	a5,5
    80004090:	fc97f0e3          	bgeu	a5,s1,80004050 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004094:	00004517          	auipc	a0,0x4
    80004098:	1dc50513          	addi	a0,a0,476 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	c5c080e7          	jalr	-932(ra) # 80004cf8 <_Z11printStringPKc>
    finishedC = true;
    800040a4:	00100793          	li	a5,1
    800040a8:	00006717          	auipc	a4,0x6
    800040ac:	26f70923          	sb	a5,626(a4) # 8000a31a <_ZL9finishedC>
    thread_dispatch();
    800040b0:	ffffd097          	auipc	ra,0xffffd
    800040b4:	274080e7          	jalr	628(ra) # 80001324 <thread_dispatch>
}
    800040b8:	01813083          	ld	ra,24(sp)
    800040bc:	01013403          	ld	s0,16(sp)
    800040c0:	00813483          	ld	s1,8(sp)
    800040c4:	00013903          	ld	s2,0(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret

00000000800040d0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	00813823          	sd	s0,16(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	01213023          	sd	s2,0(sp)
    800040e4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800040e8:	00a00493          	li	s1,10
    800040ec:	0400006f          	j	8000412c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040f0:	00004517          	auipc	a0,0x4
    800040f4:	1d850513          	addi	a0,a0,472 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	c00080e7          	jalr	-1024(ra) # 80004cf8 <_Z11printStringPKc>
    80004100:	00000613          	li	a2,0
    80004104:	00a00593          	li	a1,10
    80004108:	00048513          	mv	a0,s1
    8000410c:	00001097          	auipc	ra,0x1
    80004110:	d84080e7          	jalr	-636(ra) # 80004e90 <_Z8printIntiii>
    80004114:	00004517          	auipc	a0,0x4
    80004118:	08450513          	addi	a0,a0,132 # 80008198 <CONSOLE_STATUS+0x188>
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	bdc080e7          	jalr	-1060(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004124:	0014849b          	addiw	s1,s1,1
    80004128:	0ff4f493          	andi	s1,s1,255
    8000412c:	00c00793          	li	a5,12
    80004130:	fc97f0e3          	bgeu	a5,s1,800040f0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004134:	00004517          	auipc	a0,0x4
    80004138:	19c50513          	addi	a0,a0,412 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	bbc080e7          	jalr	-1092(ra) # 80004cf8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004144:	00500313          	li	t1,5
    thread_dispatch();
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	1dc080e7          	jalr	476(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004150:	01000513          	li	a0,16
    80004154:	00000097          	auipc	ra,0x0
    80004158:	be8080e7          	jalr	-1048(ra) # 80003d3c <_ZL9fibonaccim>
    8000415c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004160:	00004517          	auipc	a0,0x4
    80004164:	18050513          	addi	a0,a0,384 # 800082e0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	b90080e7          	jalr	-1136(ra) # 80004cf8 <_Z11printStringPKc>
    80004170:	00000613          	li	a2,0
    80004174:	00a00593          	li	a1,10
    80004178:	0009051b          	sext.w	a0,s2
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	d14080e7          	jalr	-748(ra) # 80004e90 <_Z8printIntiii>
    80004184:	00004517          	auipc	a0,0x4
    80004188:	01450513          	addi	a0,a0,20 # 80008198 <CONSOLE_STATUS+0x188>
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	b6c080e7          	jalr	-1172(ra) # 80004cf8 <_Z11printStringPKc>
    80004194:	0400006f          	j	800041d4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004198:	00004517          	auipc	a0,0x4
    8000419c:	13050513          	addi	a0,a0,304 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    800041a0:	00001097          	auipc	ra,0x1
    800041a4:	b58080e7          	jalr	-1192(ra) # 80004cf8 <_Z11printStringPKc>
    800041a8:	00000613          	li	a2,0
    800041ac:	00a00593          	li	a1,10
    800041b0:	00048513          	mv	a0,s1
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	cdc080e7          	jalr	-804(ra) # 80004e90 <_Z8printIntiii>
    800041bc:	00004517          	auipc	a0,0x4
    800041c0:	fdc50513          	addi	a0,a0,-36 # 80008198 <CONSOLE_STATUS+0x188>
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	b34080e7          	jalr	-1228(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041cc:	0014849b          	addiw	s1,s1,1
    800041d0:	0ff4f493          	andi	s1,s1,255
    800041d4:	00f00793          	li	a5,15
    800041d8:	fc97f0e3          	bgeu	a5,s1,80004198 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800041dc:	00004517          	auipc	a0,0x4
    800041e0:	11450513          	addi	a0,a0,276 # 800082f0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800041e4:	00001097          	auipc	ra,0x1
    800041e8:	b14080e7          	jalr	-1260(ra) # 80004cf8 <_Z11printStringPKc>
    finishedD = true;
    800041ec:	00100793          	li	a5,1
    800041f0:	00006717          	auipc	a4,0x6
    800041f4:	12f705a3          	sb	a5,299(a4) # 8000a31b <_ZL9finishedD>
    thread_dispatch();
    800041f8:	ffffd097          	auipc	ra,0xffffd
    800041fc:	12c080e7          	jalr	300(ra) # 80001324 <thread_dispatch>
}
    80004200:	01813083          	ld	ra,24(sp)
    80004204:	01013403          	ld	s0,16(sp)
    80004208:	00813483          	ld	s1,8(sp)
    8000420c:	00013903          	ld	s2,0(sp)
    80004210:	02010113          	addi	sp,sp,32
    80004214:	00008067          	ret

0000000080004218 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004218:	fc010113          	addi	sp,sp,-64
    8000421c:	02113c23          	sd	ra,56(sp)
    80004220:	02813823          	sd	s0,48(sp)
    80004224:	02913423          	sd	s1,40(sp)
    80004228:	03213023          	sd	s2,32(sp)
    8000422c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004230:	02000513          	li	a0,32
    80004234:	fffff097          	auipc	ra,0xfffff
    80004238:	80c080e7          	jalr	-2036(ra) # 80002a40 <_Znwm>
    8000423c:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	990080e7          	jalr	-1648(ra) # 80002bd0 <_ZN6ThreadC1Ev>
    80004248:	00006797          	auipc	a5,0x6
    8000424c:	f4878793          	addi	a5,a5,-184 # 8000a190 <_ZTV7WorkerA+0x10>
    80004250:	00f4b023          	sd	a5,0(s1)
    80004254:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004258:	00004517          	auipc	a0,0x4
    8000425c:	0a850513          	addi	a0,a0,168 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004260:	00001097          	auipc	ra,0x1
    80004264:	a98080e7          	jalr	-1384(ra) # 80004cf8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004268:	02000513          	li	a0,32
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	7d4080e7          	jalr	2004(ra) # 80002a40 <_Znwm>
    80004274:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004278:	fffff097          	auipc	ra,0xfffff
    8000427c:	958080e7          	jalr	-1704(ra) # 80002bd0 <_ZN6ThreadC1Ev>
    80004280:	00006797          	auipc	a5,0x6
    80004284:	f3878793          	addi	a5,a5,-200 # 8000a1b8 <_ZTV7WorkerB+0x10>
    80004288:	00f4b023          	sd	a5,0(s1)
    8000428c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004290:	00004517          	auipc	a0,0x4
    80004294:	08850513          	addi	a0,a0,136 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	a60080e7          	jalr	-1440(ra) # 80004cf8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042a0:	02000513          	li	a0,32
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	79c080e7          	jalr	1948(ra) # 80002a40 <_Znwm>
    800042ac:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	920080e7          	jalr	-1760(ra) # 80002bd0 <_ZN6ThreadC1Ev>
    800042b8:	00006797          	auipc	a5,0x6
    800042bc:	f2878793          	addi	a5,a5,-216 # 8000a1e0 <_ZTV7WorkerC+0x10>
    800042c0:	00f4b023          	sd	a5,0(s1)
    800042c4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042c8:	00004517          	auipc	a0,0x4
    800042cc:	06850513          	addi	a0,a0,104 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	a28080e7          	jalr	-1496(ra) # 80004cf8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800042d8:	02000513          	li	a0,32
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	764080e7          	jalr	1892(ra) # 80002a40 <_Znwm>
    800042e4:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	8e8080e7          	jalr	-1816(ra) # 80002bd0 <_ZN6ThreadC1Ev>
    800042f0:	00006797          	auipc	a5,0x6
    800042f4:	f1878793          	addi	a5,a5,-232 # 8000a208 <_ZTV7WorkerD+0x10>
    800042f8:	00f4b023          	sd	a5,0(s1)
    800042fc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004300:	00004517          	auipc	a0,0x4
    80004304:	04850513          	addi	a0,a0,72 # 80008348 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004308:	00001097          	auipc	ra,0x1
    8000430c:	9f0080e7          	jalr	-1552(ra) # 80004cf8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004310:	00000493          	li	s1,0
    80004314:	00300793          	li	a5,3
    80004318:	0297c663          	blt	a5,s1,80004344 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000431c:	00349793          	slli	a5,s1,0x3
    80004320:	fe040713          	addi	a4,s0,-32
    80004324:	00f707b3          	add	a5,a4,a5
    80004328:	fe07b503          	ld	a0,-32(a5)
    8000432c:	ffffe097          	auipc	ra,0xffffe
    80004330:	7e4080e7          	jalr	2020(ra) # 80002b10 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004334:	0014849b          	addiw	s1,s1,1
    80004338:	fddff06f          	j	80004314 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000433c:	fffff097          	auipc	ra,0xfffff
    80004340:	814080e7          	jalr	-2028(ra) # 80002b50 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004344:	00006797          	auipc	a5,0x6
    80004348:	fd47c783          	lbu	a5,-44(a5) # 8000a318 <_ZL9finishedA>
    8000434c:	fe0788e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    80004350:	00006797          	auipc	a5,0x6
    80004354:	fc97c783          	lbu	a5,-55(a5) # 8000a319 <_ZL9finishedB>
    80004358:	fe0782e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    8000435c:	00006797          	auipc	a5,0x6
    80004360:	fbe7c783          	lbu	a5,-66(a5) # 8000a31a <_ZL9finishedC>
    80004364:	fc078ce3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    80004368:	00006797          	auipc	a5,0x6
    8000436c:	fb37c783          	lbu	a5,-77(a5) # 8000a31b <_ZL9finishedD>
    80004370:	fc0786e3          	beqz	a5,8000433c <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80004374:	fc040493          	addi	s1,s0,-64
    80004378:	0080006f          	j	80004380 <_Z20Threads_CPP_API_testv+0x168>
    8000437c:	00848493          	addi	s1,s1,8
    80004380:	fe040793          	addi	a5,s0,-32
    80004384:	08f48663          	beq	s1,a5,80004410 <_Z20Threads_CPP_API_testv+0x1f8>
    80004388:	0004b503          	ld	a0,0(s1)
    8000438c:	fe0508e3          	beqz	a0,8000437c <_Z20Threads_CPP_API_testv+0x164>
    80004390:	00053783          	ld	a5,0(a0)
    80004394:	0087b783          	ld	a5,8(a5)
    80004398:	000780e7          	jalr	a5
    8000439c:	fe1ff06f          	j	8000437c <_Z20Threads_CPP_API_testv+0x164>
    800043a0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043a4:	00048513          	mv	a0,s1
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	6c0080e7          	jalr	1728(ra) # 80002a68 <_ZdlPv>
    800043b0:	00090513          	mv	a0,s2
    800043b4:	00007097          	auipc	ra,0x7
    800043b8:	044080e7          	jalr	68(ra) # 8000b3f8 <_Unwind_Resume>
    800043bc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800043c0:	00048513          	mv	a0,s1
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	6a4080e7          	jalr	1700(ra) # 80002a68 <_ZdlPv>
    800043cc:	00090513          	mv	a0,s2
    800043d0:	00007097          	auipc	ra,0x7
    800043d4:	028080e7          	jalr	40(ra) # 8000b3f8 <_Unwind_Resume>
    800043d8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800043dc:	00048513          	mv	a0,s1
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	688080e7          	jalr	1672(ra) # 80002a68 <_ZdlPv>
    800043e8:	00090513          	mv	a0,s2
    800043ec:	00007097          	auipc	ra,0x7
    800043f0:	00c080e7          	jalr	12(ra) # 8000b3f8 <_Unwind_Resume>
    800043f4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800043f8:	00048513          	mv	a0,s1
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	66c080e7          	jalr	1644(ra) # 80002a68 <_ZdlPv>
    80004404:	00090513          	mv	a0,s2
    80004408:	00007097          	auipc	ra,0x7
    8000440c:	ff0080e7          	jalr	-16(ra) # 8000b3f8 <_Unwind_Resume>
    80004410:	03813083          	ld	ra,56(sp)
    80004414:	03013403          	ld	s0,48(sp)
    80004418:	02813483          	ld	s1,40(sp)
    8000441c:	02013903          	ld	s2,32(sp)
    80004420:	04010113          	addi	sp,sp,64
    80004424:	00008067          	ret

0000000080004428 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00113423          	sd	ra,8(sp)
    80004430:	00813023          	sd	s0,0(sp)
    80004434:	01010413          	addi	s0,sp,16
    80004438:	00006797          	auipc	a5,0x6
    8000443c:	d5878793          	addi	a5,a5,-680 # 8000a190 <_ZTV7WorkerA+0x10>
    80004440:	00f53023          	sd	a5,0(a0)
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	540080e7          	jalr	1344(ra) # 80002984 <_ZN6ThreadD1Ev>
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN7WorkerAD0Ev>:
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00113c23          	sd	ra,24(sp)
    80004464:	00813823          	sd	s0,16(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	00050493          	mv	s1,a0
    80004474:	00006797          	auipc	a5,0x6
    80004478:	d1c78793          	addi	a5,a5,-740 # 8000a190 <_ZTV7WorkerA+0x10>
    8000447c:	00f53023          	sd	a5,0(a0)
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	504080e7          	jalr	1284(ra) # 80002984 <_ZN6ThreadD1Ev>
    80004488:	00048513          	mv	a0,s1
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	5dc080e7          	jalr	1500(ra) # 80002a68 <_ZdlPv>
    80004494:	01813083          	ld	ra,24(sp)
    80004498:	01013403          	ld	s0,16(sp)
    8000449c:	00813483          	ld	s1,8(sp)
    800044a0:	02010113          	addi	sp,sp,32
    800044a4:	00008067          	ret

00000000800044a8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800044a8:	ff010113          	addi	sp,sp,-16
    800044ac:	00113423          	sd	ra,8(sp)
    800044b0:	00813023          	sd	s0,0(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00006797          	auipc	a5,0x6
    800044bc:	d0078793          	addi	a5,a5,-768 # 8000a1b8 <_ZTV7WorkerB+0x10>
    800044c0:	00f53023          	sd	a5,0(a0)
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	4c0080e7          	jalr	1216(ra) # 80002984 <_ZN6ThreadD1Ev>
    800044cc:	00813083          	ld	ra,8(sp)
    800044d0:	00013403          	ld	s0,0(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret

00000000800044dc <_ZN7WorkerBD0Ev>:
    800044dc:	fe010113          	addi	sp,sp,-32
    800044e0:	00113c23          	sd	ra,24(sp)
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00913423          	sd	s1,8(sp)
    800044ec:	02010413          	addi	s0,sp,32
    800044f0:	00050493          	mv	s1,a0
    800044f4:	00006797          	auipc	a5,0x6
    800044f8:	cc478793          	addi	a5,a5,-828 # 8000a1b8 <_ZTV7WorkerB+0x10>
    800044fc:	00f53023          	sd	a5,0(a0)
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	484080e7          	jalr	1156(ra) # 80002984 <_ZN6ThreadD1Ev>
    80004508:	00048513          	mv	a0,s1
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	55c080e7          	jalr	1372(ra) # 80002a68 <_ZdlPv>
    80004514:	01813083          	ld	ra,24(sp)
    80004518:	01013403          	ld	s0,16(sp)
    8000451c:	00813483          	ld	s1,8(sp)
    80004520:	02010113          	addi	sp,sp,32
    80004524:	00008067          	ret

0000000080004528 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00113423          	sd	ra,8(sp)
    80004530:	00813023          	sd	s0,0(sp)
    80004534:	01010413          	addi	s0,sp,16
    80004538:	00006797          	auipc	a5,0x6
    8000453c:	ca878793          	addi	a5,a5,-856 # 8000a1e0 <_ZTV7WorkerC+0x10>
    80004540:	00f53023          	sd	a5,0(a0)
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	440080e7          	jalr	1088(ra) # 80002984 <_ZN6ThreadD1Ev>
    8000454c:	00813083          	ld	ra,8(sp)
    80004550:	00013403          	ld	s0,0(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret

000000008000455c <_ZN7WorkerCD0Ev>:
    8000455c:	fe010113          	addi	sp,sp,-32
    80004560:	00113c23          	sd	ra,24(sp)
    80004564:	00813823          	sd	s0,16(sp)
    80004568:	00913423          	sd	s1,8(sp)
    8000456c:	02010413          	addi	s0,sp,32
    80004570:	00050493          	mv	s1,a0
    80004574:	00006797          	auipc	a5,0x6
    80004578:	c6c78793          	addi	a5,a5,-916 # 8000a1e0 <_ZTV7WorkerC+0x10>
    8000457c:	00f53023          	sd	a5,0(a0)
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	404080e7          	jalr	1028(ra) # 80002984 <_ZN6ThreadD1Ev>
    80004588:	00048513          	mv	a0,s1
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	4dc080e7          	jalr	1244(ra) # 80002a68 <_ZdlPv>
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00813483          	ld	s1,8(sp)
    800045a0:	02010113          	addi	sp,sp,32
    800045a4:	00008067          	ret

00000000800045a8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00113423          	sd	ra,8(sp)
    800045b0:	00813023          	sd	s0,0(sp)
    800045b4:	01010413          	addi	s0,sp,16
    800045b8:	00006797          	auipc	a5,0x6
    800045bc:	c5078793          	addi	a5,a5,-944 # 8000a208 <_ZTV7WorkerD+0x10>
    800045c0:	00f53023          	sd	a5,0(a0)
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	3c0080e7          	jalr	960(ra) # 80002984 <_ZN6ThreadD1Ev>
    800045cc:	00813083          	ld	ra,8(sp)
    800045d0:	00013403          	ld	s0,0(sp)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <_ZN7WorkerDD0Ev>:
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	02010413          	addi	s0,sp,32
    800045f0:	00050493          	mv	s1,a0
    800045f4:	00006797          	auipc	a5,0x6
    800045f8:	c1478793          	addi	a5,a5,-1004 # 8000a208 <_ZTV7WorkerD+0x10>
    800045fc:	00f53023          	sd	a5,0(a0)
    80004600:	ffffe097          	auipc	ra,0xffffe
    80004604:	384080e7          	jalr	900(ra) # 80002984 <_ZN6ThreadD1Ev>
    80004608:	00048513          	mv	a0,s1
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	45c080e7          	jalr	1116(ra) # 80002a68 <_ZdlPv>
    80004614:	01813083          	ld	ra,24(sp)
    80004618:	01013403          	ld	s0,16(sp)
    8000461c:	00813483          	ld	s1,8(sp)
    80004620:	02010113          	addi	sp,sp,32
    80004624:	00008067          	ret

0000000080004628 <_ZN7WorkerA3runEv>:
    void run() override {
    80004628:	ff010113          	addi	sp,sp,-16
    8000462c:	00113423          	sd	ra,8(sp)
    80004630:	00813023          	sd	s0,0(sp)
    80004634:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004638:	00000593          	li	a1,0
    8000463c:	fffff097          	auipc	ra,0xfffff
    80004640:	774080e7          	jalr	1908(ra) # 80003db0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004644:	00813083          	ld	ra,8(sp)
    80004648:	00013403          	ld	s0,0(sp)
    8000464c:	01010113          	addi	sp,sp,16
    80004650:	00008067          	ret

0000000080004654 <_ZN7WorkerB3runEv>:
    void run() override {
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00113423          	sd	ra,8(sp)
    8000465c:	00813023          	sd	s0,0(sp)
    80004660:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004664:	00000593          	li	a1,0
    80004668:	00000097          	auipc	ra,0x0
    8000466c:	814080e7          	jalr	-2028(ra) # 80003e7c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004670:	00813083          	ld	ra,8(sp)
    80004674:	00013403          	ld	s0,0(sp)
    80004678:	01010113          	addi	sp,sp,16
    8000467c:	00008067          	ret

0000000080004680 <_ZN7WorkerC3runEv>:
    void run() override {
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00113423          	sd	ra,8(sp)
    80004688:	00813023          	sd	s0,0(sp)
    8000468c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004690:	00000593          	li	a1,0
    80004694:	00000097          	auipc	ra,0x0
    80004698:	8bc080e7          	jalr	-1860(ra) # 80003f50 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000469c:	00813083          	ld	ra,8(sp)
    800046a0:	00013403          	ld	s0,0(sp)
    800046a4:	01010113          	addi	sp,sp,16
    800046a8:	00008067          	ret

00000000800046ac <_ZN7WorkerD3runEv>:

    void run() override {
    800046ac:	ff010113          	addi	sp,sp,-16
    800046b0:	00113423          	sd	ra,8(sp)
    800046b4:	00813023          	sd	s0,0(sp)
    800046b8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800046bc:	00000593          	li	a1,0
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	a10080e7          	jalr	-1520(ra) # 800040d0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800046c8:	00813083          	ld	ra,8(sp)
    800046cc:	00013403          	ld	s0,0(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret

00000000800046d8 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800046d8:	fe010113          	addi	sp,sp,-32
    800046dc:	00113c23          	sd	ra,24(sp)
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00913423          	sd	s1,8(sp)
    800046e8:	01213023          	sd	s2,0(sp)
    800046ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800046f0:	00000913          	li	s2,0
    800046f4:	0380006f          	j	8000472c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	c2c080e7          	jalr	-980(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004700:	00148493          	addi	s1,s1,1
    80004704:	000027b7          	lui	a5,0x2
    80004708:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000470c:	0097ee63          	bltu	a5,s1,80004728 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004710:	00000713          	li	a4,0
    80004714:	000077b7          	lui	a5,0x7
    80004718:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000471c:	fce7eee3          	bltu	a5,a4,800046f8 <_Z11workerBodyAPv+0x20>
    80004720:	00170713          	addi	a4,a4,1
    80004724:	ff1ff06f          	j	80004714 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004728:	00190913          	addi	s2,s2,1
    8000472c:	00900793          	li	a5,9
    80004730:	0527e063          	bltu	a5,s2,80004770 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004734:	00004517          	auipc	a0,0x4
    80004738:	b3450513          	addi	a0,a0,-1228 # 80008268 <_ZZN5Riscv12printIntegerEmE6digits+0xb0>
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	5bc080e7          	jalr	1468(ra) # 80004cf8 <_Z11printStringPKc>
    80004744:	00000613          	li	a2,0
    80004748:	00a00593          	li	a1,10
    8000474c:	0009051b          	sext.w	a0,s2
    80004750:	00000097          	auipc	ra,0x0
    80004754:	740080e7          	jalr	1856(ra) # 80004e90 <_Z8printIntiii>
    80004758:	00004517          	auipc	a0,0x4
    8000475c:	a4050513          	addi	a0,a0,-1472 # 80008198 <CONSOLE_STATUS+0x188>
    80004760:	00000097          	auipc	ra,0x0
    80004764:	598080e7          	jalr	1432(ra) # 80004cf8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004768:	00000493          	li	s1,0
    8000476c:	f99ff06f          	j	80004704 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004770:	00004517          	auipc	a0,0x4
    80004774:	b0050513          	addi	a0,a0,-1280 # 80008270 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	580080e7          	jalr	1408(ra) # 80004cf8 <_Z11printStringPKc>
    finishedA = true;
    80004780:	00100793          	li	a5,1
    80004784:	00006717          	auipc	a4,0x6
    80004788:	b8f70c23          	sb	a5,-1128(a4) # 8000a31c <_ZL9finishedA>
}
    8000478c:	01813083          	ld	ra,24(sp)
    80004790:	01013403          	ld	s0,16(sp)
    80004794:	00813483          	ld	s1,8(sp)
    80004798:	00013903          	ld	s2,0(sp)
    8000479c:	02010113          	addi	sp,sp,32
    800047a0:	00008067          	ret

00000000800047a4 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800047a4:	fe010113          	addi	sp,sp,-32
    800047a8:	00113c23          	sd	ra,24(sp)
    800047ac:	00813823          	sd	s0,16(sp)
    800047b0:	00913423          	sd	s1,8(sp)
    800047b4:	01213023          	sd	s2,0(sp)
    800047b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047bc:	00000913          	li	s2,0
    800047c0:	0380006f          	j	800047f8 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	b60080e7          	jalr	-1184(ra) # 80001324 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800047cc:	00148493          	addi	s1,s1,1
    800047d0:	000027b7          	lui	a5,0x2
    800047d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047d8:	0097ee63          	bltu	a5,s1,800047f4 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047dc:	00000713          	li	a4,0
    800047e0:	000077b7          	lui	a5,0x7
    800047e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047e8:	fce7eee3          	bltu	a5,a4,800047c4 <_Z11workerBodyBPv+0x20>
    800047ec:	00170713          	addi	a4,a4,1
    800047f0:	ff1ff06f          	j	800047e0 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800047f4:	00190913          	addi	s2,s2,1
    800047f8:	00f00793          	li	a5,15
    800047fc:	0527e063          	bltu	a5,s2,8000483c <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004800:	00004517          	auipc	a0,0x4
    80004804:	a8050513          	addi	a0,a0,-1408 # 80008280 <_ZZN5Riscv12printIntegerEmE6digits+0xc8>
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	4f0080e7          	jalr	1264(ra) # 80004cf8 <_Z11printStringPKc>
    80004810:	00000613          	li	a2,0
    80004814:	00a00593          	li	a1,10
    80004818:	0009051b          	sext.w	a0,s2
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	674080e7          	jalr	1652(ra) # 80004e90 <_Z8printIntiii>
    80004824:	00004517          	auipc	a0,0x4
    80004828:	97450513          	addi	a0,a0,-1676 # 80008198 <CONSOLE_STATUS+0x188>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	4cc080e7          	jalr	1228(ra) # 80004cf8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004834:	00000493          	li	s1,0
    80004838:	f99ff06f          	j	800047d0 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000483c:	00004517          	auipc	a0,0x4
    80004840:	a4c50513          	addi	a0,a0,-1460 # 80008288 <_ZZN5Riscv12printIntegerEmE6digits+0xd0>
    80004844:	00000097          	auipc	ra,0x0
    80004848:	4b4080e7          	jalr	1204(ra) # 80004cf8 <_Z11printStringPKc>
    finishedB = true;
    8000484c:	00100793          	li	a5,1
    80004850:	00006717          	auipc	a4,0x6
    80004854:	acf706a3          	sb	a5,-1331(a4) # 8000a31d <_ZL9finishedB>
    thread_dispatch();
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	acc080e7          	jalr	-1332(ra) # 80001324 <thread_dispatch>
}
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	00813483          	ld	s1,8(sp)
    8000486c:	00013903          	ld	s2,0(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret

0000000080004878 <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    80004878:	fe010113          	addi	sp,sp,-32
    8000487c:	00113c23          	sd	ra,24(sp)
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	01213023          	sd	s2,0(sp)
    8000488c:	02010413          	addi	s0,sp,32
    80004890:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004894:	00100793          	li	a5,1
    80004898:	02a7f863          	bgeu	a5,a0,800048c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000489c:	00a00793          	li	a5,10
    800048a0:	02f577b3          	remu	a5,a0,a5
    800048a4:	02078e63          	beqz	a5,800048e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048a8:	fff48513          	addi	a0,s1,-1
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	fcc080e7          	jalr	-52(ra) # 80004878 <_ZL9fibonaccim>
    800048b4:	00050913          	mv	s2,a0
    800048b8:	ffe48513          	addi	a0,s1,-2
    800048bc:	00000097          	auipc	ra,0x0
    800048c0:	fbc080e7          	jalr	-68(ra) # 80004878 <_ZL9fibonaccim>
    800048c4:	00a90533          	add	a0,s2,a0
}
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	01013403          	ld	s0,16(sp)
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	00013903          	ld	s2,0(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	a44080e7          	jalr	-1468(ra) # 80001324 <thread_dispatch>
    800048e8:	fc1ff06f          	j	800048a8 <_ZL9fibonaccim+0x30>

00000000800048ec <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800048ec:	fe010113          	addi	sp,sp,-32
    800048f0:	00113c23          	sd	ra,24(sp)
    800048f4:	00813823          	sd	s0,16(sp)
    800048f8:	00913423          	sd	s1,8(sp)
    800048fc:	01213023          	sd	s2,0(sp)
    80004900:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004904:	00000493          	li	s1,0
    80004908:	0400006f          	j	80004948 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000490c:	00004517          	auipc	a0,0x4
    80004910:	98c50513          	addi	a0,a0,-1652 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80004914:	00000097          	auipc	ra,0x0
    80004918:	3e4080e7          	jalr	996(ra) # 80004cf8 <_Z11printStringPKc>
    8000491c:	00000613          	li	a2,0
    80004920:	00a00593          	li	a1,10
    80004924:	00048513          	mv	a0,s1
    80004928:	00000097          	auipc	ra,0x0
    8000492c:	568080e7          	jalr	1384(ra) # 80004e90 <_Z8printIntiii>
    80004930:	00004517          	auipc	a0,0x4
    80004934:	86850513          	addi	a0,a0,-1944 # 80008198 <CONSOLE_STATUS+0x188>
    80004938:	00000097          	auipc	ra,0x0
    8000493c:	3c0080e7          	jalr	960(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004940:	0014849b          	addiw	s1,s1,1
    80004944:	0ff4f493          	andi	s1,s1,255
    80004948:	00200793          	li	a5,2
    8000494c:	fc97f0e3          	bgeu	a5,s1,8000490c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004950:	00004517          	auipc	a0,0x4
    80004954:	95050513          	addi	a0,a0,-1712 # 800082a0 <_ZZN5Riscv12printIntegerEmE6digits+0xe8>
    80004958:	00000097          	auipc	ra,0x0
    8000495c:	3a0080e7          	jalr	928(ra) # 80004cf8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004960:	00700313          	li	t1,7
    thread_dispatch();
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	9c0080e7          	jalr	-1600(ra) # 80001324 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000496c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004970:	00004517          	auipc	a0,0x4
    80004974:	94050513          	addi	a0,a0,-1728 # 800082b0 <_ZZN5Riscv12printIntegerEmE6digits+0xf8>
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	380080e7          	jalr	896(ra) # 80004cf8 <_Z11printStringPKc>
    80004980:	00000613          	li	a2,0
    80004984:	00a00593          	li	a1,10
    80004988:	0009051b          	sext.w	a0,s2
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	504080e7          	jalr	1284(ra) # 80004e90 <_Z8printIntiii>
    80004994:	00004517          	auipc	a0,0x4
    80004998:	80450513          	addi	a0,a0,-2044 # 80008198 <CONSOLE_STATUS+0x188>
    8000499c:	00000097          	auipc	ra,0x0
    800049a0:	35c080e7          	jalr	860(ra) # 80004cf8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800049a4:	00c00513          	li	a0,12
    800049a8:	00000097          	auipc	ra,0x0
    800049ac:	ed0080e7          	jalr	-304(ra) # 80004878 <_ZL9fibonaccim>
    800049b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800049b4:	00004517          	auipc	a0,0x4
    800049b8:	90450513          	addi	a0,a0,-1788 # 800082b8 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	33c080e7          	jalr	828(ra) # 80004cf8 <_Z11printStringPKc>
    800049c4:	00000613          	li	a2,0
    800049c8:	00a00593          	li	a1,10
    800049cc:	0009051b          	sext.w	a0,s2
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	4c0080e7          	jalr	1216(ra) # 80004e90 <_Z8printIntiii>
    800049d8:	00003517          	auipc	a0,0x3
    800049dc:	7c050513          	addi	a0,a0,1984 # 80008198 <CONSOLE_STATUS+0x188>
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	318080e7          	jalr	792(ra) # 80004cf8 <_Z11printStringPKc>
    800049e8:	0400006f          	j	80004a28 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800049ec:	00004517          	auipc	a0,0x4
    800049f0:	8ac50513          	addi	a0,a0,-1876 # 80008298 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	304080e7          	jalr	772(ra) # 80004cf8 <_Z11printStringPKc>
    800049fc:	00000613          	li	a2,0
    80004a00:	00a00593          	li	a1,10
    80004a04:	00048513          	mv	a0,s1
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	488080e7          	jalr	1160(ra) # 80004e90 <_Z8printIntiii>
    80004a10:	00003517          	auipc	a0,0x3
    80004a14:	78850513          	addi	a0,a0,1928 # 80008198 <CONSOLE_STATUS+0x188>
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	2e0080e7          	jalr	736(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a20:	0014849b          	addiw	s1,s1,1
    80004a24:	0ff4f493          	andi	s1,s1,255
    80004a28:	00500793          	li	a5,5
    80004a2c:	fc97f0e3          	bgeu	a5,s1,800049ec <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80004a30:	00004517          	auipc	a0,0x4
    80004a34:	93050513          	addi	a0,a0,-1744 # 80008360 <_ZZN5Riscv12printIntegerEmE6digits+0x1a8>
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	2c0080e7          	jalr	704(ra) # 80004cf8 <_Z11printStringPKc>
    finishedC = true;
    80004a40:	00100793          	li	a5,1
    80004a44:	00006717          	auipc	a4,0x6
    80004a48:	8cf70d23          	sb	a5,-1830(a4) # 8000a31e <_ZL9finishedC>
    thread_dispatch();
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	8d8080e7          	jalr	-1832(ra) # 80001324 <thread_dispatch>
}
    80004a54:	01813083          	ld	ra,24(sp)
    80004a58:	01013403          	ld	s0,16(sp)
    80004a5c:	00813483          	ld	s1,8(sp)
    80004a60:	00013903          	ld	s2,0(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	01213023          	sd	s2,0(sp)
    80004a80:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a84:	00a00493          	li	s1,10
    80004a88:	0400006f          	j	80004ac8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a8c:	00004517          	auipc	a0,0x4
    80004a90:	83c50513          	addi	a0,a0,-1988 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	264080e7          	jalr	612(ra) # 80004cf8 <_Z11printStringPKc>
    80004a9c:	00000613          	li	a2,0
    80004aa0:	00a00593          	li	a1,10
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	00000097          	auipc	ra,0x0
    80004aac:	3e8080e7          	jalr	1000(ra) # 80004e90 <_Z8printIntiii>
    80004ab0:	00003517          	auipc	a0,0x3
    80004ab4:	6e850513          	addi	a0,a0,1768 # 80008198 <CONSOLE_STATUS+0x188>
    80004ab8:	00000097          	auipc	ra,0x0
    80004abc:	240080e7          	jalr	576(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ac0:	0014849b          	addiw	s1,s1,1
    80004ac4:	0ff4f493          	andi	s1,s1,255
    80004ac8:	00c00793          	li	a5,12
    80004acc:	fc97f0e3          	bgeu	a5,s1,80004a8c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004ad0:	00004517          	auipc	a0,0x4
    80004ad4:	80050513          	addi	a0,a0,-2048 # 800082d0 <_ZZN5Riscv12printIntegerEmE6digits+0x118>
    80004ad8:	00000097          	auipc	ra,0x0
    80004adc:	220080e7          	jalr	544(ra) # 80004cf8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004ae0:	00500313          	li	t1,5
    thread_dispatch();
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	840080e7          	jalr	-1984(ra) # 80001324 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004aec:	01000513          	li	a0,16
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	d88080e7          	jalr	-632(ra) # 80004878 <_ZL9fibonaccim>
    80004af8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004afc:	00003517          	auipc	a0,0x3
    80004b00:	7e450513          	addi	a0,a0,2020 # 800082e0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80004b04:	00000097          	auipc	ra,0x0
    80004b08:	1f4080e7          	jalr	500(ra) # 80004cf8 <_Z11printStringPKc>
    80004b0c:	00000613          	li	a2,0
    80004b10:	00a00593          	li	a1,10
    80004b14:	0009051b          	sext.w	a0,s2
    80004b18:	00000097          	auipc	ra,0x0
    80004b1c:	378080e7          	jalr	888(ra) # 80004e90 <_Z8printIntiii>
    80004b20:	00003517          	auipc	a0,0x3
    80004b24:	67850513          	addi	a0,a0,1656 # 80008198 <CONSOLE_STATUS+0x188>
    80004b28:	00000097          	auipc	ra,0x0
    80004b2c:	1d0080e7          	jalr	464(ra) # 80004cf8 <_Z11printStringPKc>
    80004b30:	0400006f          	j	80004b70 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b34:	00003517          	auipc	a0,0x3
    80004b38:	79450513          	addi	a0,a0,1940 # 800082c8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80004b3c:	00000097          	auipc	ra,0x0
    80004b40:	1bc080e7          	jalr	444(ra) # 80004cf8 <_Z11printStringPKc>
    80004b44:	00000613          	li	a2,0
    80004b48:	00a00593          	li	a1,10
    80004b4c:	00048513          	mv	a0,s1
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	340080e7          	jalr	832(ra) # 80004e90 <_Z8printIntiii>
    80004b58:	00003517          	auipc	a0,0x3
    80004b5c:	64050513          	addi	a0,a0,1600 # 80008198 <CONSOLE_STATUS+0x188>
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	198080e7          	jalr	408(ra) # 80004cf8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b68:	0014849b          	addiw	s1,s1,1
    80004b6c:	0ff4f493          	andi	s1,s1,255
    80004b70:	00f00793          	li	a5,15
    80004b74:	fc97f0e3          	bgeu	a5,s1,80004b34 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b78:	00003517          	auipc	a0,0x3
    80004b7c:	77850513          	addi	a0,a0,1912 # 800082f0 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	178080e7          	jalr	376(ra) # 80004cf8 <_Z11printStringPKc>
    finishedD = true;
    80004b88:	00100793          	li	a5,1
    80004b8c:	00005717          	auipc	a4,0x5
    80004b90:	78f709a3          	sb	a5,1939(a4) # 8000a31f <_ZL9finishedD>
    thread_dispatch();
    80004b94:	ffffc097          	auipc	ra,0xffffc
    80004b98:	790080e7          	jalr	1936(ra) # 80001324 <thread_dispatch>
}
    80004b9c:	01813083          	ld	ra,24(sp)
    80004ba0:	01013403          	ld	s0,16(sp)
    80004ba4:	00813483          	ld	s1,8(sp)
    80004ba8:	00013903          	ld	s2,0(sp)
    80004bac:	02010113          	addi	sp,sp,32
    80004bb0:	00008067          	ret

0000000080004bb4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004bb4:	fc010113          	addi	sp,sp,-64
    80004bb8:	02113c23          	sd	ra,56(sp)
    80004bbc:	02813823          	sd	s0,48(sp)
    80004bc0:	02913423          	sd	s1,40(sp)
    80004bc4:	03213023          	sd	s2,32(sp)
    80004bc8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004bcc:	00000613          	li	a2,0
    80004bd0:	00000597          	auipc	a1,0x0
    80004bd4:	b0858593          	addi	a1,a1,-1272 # 800046d8 <_Z11workerBodyAPv>
    80004bd8:	fc040513          	addi	a0,s0,-64
    80004bdc:	ffffc097          	auipc	ra,0xffffc
    80004be0:	6c8080e7          	jalr	1736(ra) # 800012a4 <thread_create>
    printString("ThreadA created\n");
    80004be4:	00003517          	auipc	a0,0x3
    80004be8:	71c50513          	addi	a0,a0,1820 # 80008300 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004bec:	00000097          	auipc	ra,0x0
    80004bf0:	10c080e7          	jalr	268(ra) # 80004cf8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004bf4:	00000613          	li	a2,0
    80004bf8:	00000597          	auipc	a1,0x0
    80004bfc:	bac58593          	addi	a1,a1,-1108 # 800047a4 <_Z11workerBodyBPv>
    80004c00:	fc840513          	addi	a0,s0,-56
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	6a0080e7          	jalr	1696(ra) # 800012a4 <thread_create>
    printString("ThreadB created\n");
    80004c0c:	00003517          	auipc	a0,0x3
    80004c10:	70c50513          	addi	a0,a0,1804 # 80008318 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004c14:	00000097          	auipc	ra,0x0
    80004c18:	0e4080e7          	jalr	228(ra) # 80004cf8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004c1c:	00000613          	li	a2,0
    80004c20:	00000597          	auipc	a1,0x0
    80004c24:	ccc58593          	addi	a1,a1,-820 # 800048ec <_Z11workerBodyCPv>
    80004c28:	fd040513          	addi	a0,s0,-48
    80004c2c:	ffffc097          	auipc	ra,0xffffc
    80004c30:	678080e7          	jalr	1656(ra) # 800012a4 <thread_create>
    printString("ThreadC created\n");
    80004c34:	00003517          	auipc	a0,0x3
    80004c38:	6fc50513          	addi	a0,a0,1788 # 80008330 <_ZZN5Riscv12printIntegerEmE6digits+0x178>
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	0bc080e7          	jalr	188(ra) # 80004cf8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004c44:	00000613          	li	a2,0
    80004c48:	00000597          	auipc	a1,0x0
    80004c4c:	e2458593          	addi	a1,a1,-476 # 80004a6c <_Z11workerBodyDPv>
    80004c50:	fd840513          	addi	a0,s0,-40
    80004c54:	ffffc097          	auipc	ra,0xffffc
    80004c58:	650080e7          	jalr	1616(ra) # 800012a4 <thread_create>
    printString("ThreadD created\n");
    80004c5c:	00003517          	auipc	a0,0x3
    80004c60:	6ec50513          	addi	a0,a0,1772 # 80008348 <_ZZN5Riscv12printIntegerEmE6digits+0x190>
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	094080e7          	jalr	148(ra) # 80004cf8 <_Z11printStringPKc>
    80004c6c:	00c0006f          	j	80004c78 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("Main thread\n");
        thread_dispatch();
    80004c70:	ffffc097          	auipc	ra,0xffffc
    80004c74:	6b4080e7          	jalr	1716(ra) # 80001324 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c78:	00005797          	auipc	a5,0x5
    80004c7c:	6a47c783          	lbu	a5,1700(a5) # 8000a31c <_ZL9finishedA>
    80004c80:	fe0788e3          	beqz	a5,80004c70 <_Z18Threads_C_API_testv+0xbc>
    80004c84:	00005797          	auipc	a5,0x5
    80004c88:	6997c783          	lbu	a5,1689(a5) # 8000a31d <_ZL9finishedB>
    80004c8c:	fe0782e3          	beqz	a5,80004c70 <_Z18Threads_C_API_testv+0xbc>
    80004c90:	00005797          	auipc	a5,0x5
    80004c94:	68e7c783          	lbu	a5,1678(a5) # 8000a31e <_ZL9finishedC>
    80004c98:	fc078ce3          	beqz	a5,80004c70 <_Z18Threads_C_API_testv+0xbc>
    80004c9c:	00005797          	auipc	a5,0x5
    80004ca0:	6837c783          	lbu	a5,1667(a5) # 8000a31f <_ZL9finishedD>
    80004ca4:	fc0786e3          	beqz	a5,80004c70 <_Z18Threads_C_API_testv+0xbc>
    }

    for (auto &thread: threads) {
    80004ca8:	fc040493          	addi	s1,s0,-64
    80004cac:	0080006f          	j	80004cb4 <_Z18Threads_C_API_testv+0x100>
    80004cb0:	00848493          	addi	s1,s1,8
    80004cb4:	fe040793          	addi	a5,s0,-32
    80004cb8:	02f48463          	beq	s1,a5,80004ce0 <_Z18Threads_C_API_testv+0x12c>
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (PCB*)thread;
    80004cbc:	0004b903          	ld	s2,0(s1)
    80004cc0:	fe0908e3          	beqz	s2,80004cb0 <_Z18Threads_C_API_testv+0xfc>
    80004cc4:	00090513          	mv	a0,s2
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	854080e7          	jalr	-1964(ra) # 8000251c <_ZN3PCBD1Ev>
    80004cd0:	00090513          	mv	a0,s2
    80004cd4:	ffffe097          	auipc	ra,0xffffe
    80004cd8:	820080e7          	jalr	-2016(ra) # 800024f4 <_ZN3PCBdlEPv>
    80004cdc:	fd5ff06f          	j	80004cb0 <_Z18Threads_C_API_testv+0xfc>
    }
}
    80004ce0:	03813083          	ld	ra,56(sp)
    80004ce4:	03013403          	ld	s0,48(sp)
    80004ce8:	02813483          	ld	s1,40(sp)
    80004cec:	02013903          	ld	s2,32(sp)
    80004cf0:	04010113          	addi	sp,sp,64
    80004cf4:	00008067          	ret

0000000080004cf8 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	02010413          	addi	s0,sp,32
    80004d0c:	00050493          	mv	s1,a0
    LOCK();
    80004d10:	00100613          	li	a2,1
    80004d14:	00000593          	li	a1,0
    80004d18:	00005517          	auipc	a0,0x5
    80004d1c:	60850513          	addi	a0,a0,1544 # 8000a320 <lockPrint>
    80004d20:	ffffc097          	auipc	ra,0xffffc
    80004d24:	4e8080e7          	jalr	1256(ra) # 80001208 <copy_and_swap>
    80004d28:	fe0514e3          	bnez	a0,80004d10 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80004d2c:	0004c503          	lbu	a0,0(s1)
    80004d30:	00050a63          	beqz	a0,80004d44 <_Z11printStringPKc+0x4c>
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    80004d34:	00003097          	auipc	ra,0x3
    80004d38:	9f8080e7          	jalr	-1544(ra) # 8000772c <__putc>
        putc(*string);
        string++;
    80004d3c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80004d40:	fedff06f          	j	80004d2c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004d44:	00000613          	li	a2,0
    80004d48:	00100593          	li	a1,1
    80004d4c:	00005517          	auipc	a0,0x5
    80004d50:	5d450513          	addi	a0,a0,1492 # 8000a320 <lockPrint>
    80004d54:	ffffc097          	auipc	ra,0xffffc
    80004d58:	4b4080e7          	jalr	1204(ra) # 80001208 <copy_and_swap>
    80004d5c:	fe0514e3          	bnez	a0,80004d44 <_Z11printStringPKc+0x4c>
}
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80004d74:	fd010113          	addi	sp,sp,-48
    80004d78:	02113423          	sd	ra,40(sp)
    80004d7c:	02813023          	sd	s0,32(sp)
    80004d80:	00913c23          	sd	s1,24(sp)
    80004d84:	01213823          	sd	s2,16(sp)
    80004d88:	01313423          	sd	s3,8(sp)
    80004d8c:	01413023          	sd	s4,0(sp)
    80004d90:	03010413          	addi	s0,sp,48
    80004d94:	00050993          	mv	s3,a0
    80004d98:	00058a13          	mv	s4,a1
    LOCK();
    80004d9c:	00100613          	li	a2,1
    80004da0:	00000593          	li	a1,0
    80004da4:	00005517          	auipc	a0,0x5
    80004da8:	57c50513          	addi	a0,a0,1404 # 8000a320 <lockPrint>
    80004dac:	ffffc097          	auipc	ra,0xffffc
    80004db0:	45c080e7          	jalr	1116(ra) # 80001208 <copy_and_swap>
    80004db4:	fe0514e3          	bnez	a0,80004d9c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80004db8:	00000913          	li	s2,0
    80004dbc:	00090493          	mv	s1,s2
    80004dc0:	0019091b          	addiw	s2,s2,1
    80004dc4:	03495a63          	bge	s2,s4,80004df8 <_Z9getStringPci+0x84>
    return __getc();
    80004dc8:	00003097          	auipc	ra,0x3
    80004dcc:	9a0080e7          	jalr	-1632(ra) # 80007768 <__getc>
        cc = getc();
        if (cc < 1)
    80004dd0:	02050463          	beqz	a0,80004df8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004dd4:	009984b3          	add	s1,s3,s1
    80004dd8:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80004ddc:	00a00793          	li	a5,10
    80004de0:	00f50a63          	beq	a0,a5,80004df4 <_Z9getStringPci+0x80>
    80004de4:	00d00793          	li	a5,13
    80004de8:	fcf51ae3          	bne	a0,a5,80004dbc <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004dec:	00090493          	mv	s1,s2
    80004df0:	0080006f          	j	80004df8 <_Z9getStringPci+0x84>
    80004df4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004df8:	009984b3          	add	s1,s3,s1
    80004dfc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004e00:	00000613          	li	a2,0
    80004e04:	00100593          	li	a1,1
    80004e08:	00005517          	auipc	a0,0x5
    80004e0c:	51850513          	addi	a0,a0,1304 # 8000a320 <lockPrint>
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	3f8080e7          	jalr	1016(ra) # 80001208 <copy_and_swap>
    80004e18:	fe0514e3          	bnez	a0,80004e00 <_Z9getStringPci+0x8c>
    return buf;
}
    80004e1c:	00098513          	mv	a0,s3
    80004e20:	02813083          	ld	ra,40(sp)
    80004e24:	02013403          	ld	s0,32(sp)
    80004e28:	01813483          	ld	s1,24(sp)
    80004e2c:	01013903          	ld	s2,16(sp)
    80004e30:	00813983          	ld	s3,8(sp)
    80004e34:	00013a03          	ld	s4,0(sp)
    80004e38:	03010113          	addi	sp,sp,48
    80004e3c:	00008067          	ret

0000000080004e40 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004e40:	ff010113          	addi	sp,sp,-16
    80004e44:	00813423          	sd	s0,8(sp)
    80004e48:	01010413          	addi	s0,sp,16
    80004e4c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004e50:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004e54:	0006c603          	lbu	a2,0(a3)
    80004e58:	fd06071b          	addiw	a4,a2,-48
    80004e5c:	0ff77713          	andi	a4,a4,255
    80004e60:	00900793          	li	a5,9
    80004e64:	02e7e063          	bltu	a5,a4,80004e84 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004e68:	0025179b          	slliw	a5,a0,0x2
    80004e6c:	00a787bb          	addw	a5,a5,a0
    80004e70:	0017979b          	slliw	a5,a5,0x1
    80004e74:	00168693          	addi	a3,a3,1
    80004e78:	00c787bb          	addw	a5,a5,a2
    80004e7c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004e80:	fd5ff06f          	j	80004e54 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004e84:	00813403          	ld	s0,8(sp)
    80004e88:	01010113          	addi	sp,sp,16
    80004e8c:	00008067          	ret

0000000080004e90 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80004e90:	fc010113          	addi	sp,sp,-64
    80004e94:	02113c23          	sd	ra,56(sp)
    80004e98:	02813823          	sd	s0,48(sp)
    80004e9c:	02913423          	sd	s1,40(sp)
    80004ea0:	03213023          	sd	s2,32(sp)
    80004ea4:	01313c23          	sd	s3,24(sp)
    80004ea8:	04010413          	addi	s0,sp,64
    80004eac:	00050493          	mv	s1,a0
    80004eb0:	00058913          	mv	s2,a1
    80004eb4:	00060993          	mv	s3,a2
    LOCK();
    80004eb8:	00100613          	li	a2,1
    80004ebc:	00000593          	li	a1,0
    80004ec0:	00005517          	auipc	a0,0x5
    80004ec4:	46050513          	addi	a0,a0,1120 # 8000a320 <lockPrint>
    80004ec8:	ffffc097          	auipc	ra,0xffffc
    80004ecc:	340080e7          	jalr	832(ra) # 80001208 <copy_and_swap>
    80004ed0:	fe0514e3          	bnez	a0,80004eb8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80004ed4:	00098463          	beqz	s3,80004edc <_Z8printIntiii+0x4c>
    80004ed8:	0804c463          	bltz	s1,80004f60 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004edc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ee0:	00000593          	li	a1,0
    }

    i = 0;
    80004ee4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80004ee8:	0009079b          	sext.w	a5,s2
    80004eec:	0325773b          	remuw	a4,a0,s2
    80004ef0:	00048613          	mv	a2,s1
    80004ef4:	0014849b          	addiw	s1,s1,1
    80004ef8:	02071693          	slli	a3,a4,0x20
    80004efc:	0206d693          	srli	a3,a3,0x20
    80004f00:	00003717          	auipc	a4,0x3
    80004f04:	47070713          	addi	a4,a4,1136 # 80008370 <_ZL6digits>
    80004f08:	00d70733          	add	a4,a4,a3
    80004f0c:	00074683          	lbu	a3,0(a4)
    80004f10:	fd040713          	addi	a4,s0,-48
    80004f14:	00c70733          	add	a4,a4,a2
    80004f18:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80004f1c:	0005071b          	sext.w	a4,a0
    80004f20:	0325553b          	divuw	a0,a0,s2
    80004f24:	fcf772e3          	bgeu	a4,a5,80004ee8 <_Z8printIntiii+0x58>
    if (neg)
    80004f28:	00058c63          	beqz	a1,80004f40 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004f2c:	fd040793          	addi	a5,s0,-48
    80004f30:	009784b3          	add	s1,a5,s1
    80004f34:	02d00793          	li	a5,45
    80004f38:	fef48823          	sb	a5,-16(s1)
    80004f3c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80004f40:	fff4849b          	addiw	s1,s1,-1
    80004f44:	0204c463          	bltz	s1,80004f6c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004f48:	fd040793          	addi	a5,s0,-48
    80004f4c:	009787b3          	add	a5,a5,s1
    __putc(c);
    80004f50:	ff07c503          	lbu	a0,-16(a5)
    80004f54:	00002097          	auipc	ra,0x2
    80004f58:	7d8080e7          	jalr	2008(ra) # 8000772c <__putc>
}
    80004f5c:	fe5ff06f          	j	80004f40 <_Z8printIntiii+0xb0>
        x = -xx;
    80004f60:	4090053b          	negw	a0,s1
        neg = 1;
    80004f64:	00100593          	li	a1,1
        x = -xx;
    80004f68:	f7dff06f          	j	80004ee4 <_Z8printIntiii+0x54>

    UNLOCK();
    80004f6c:	00000613          	li	a2,0
    80004f70:	00100593          	li	a1,1
    80004f74:	00005517          	auipc	a0,0x5
    80004f78:	3ac50513          	addi	a0,a0,940 # 8000a320 <lockPrint>
    80004f7c:	ffffc097          	auipc	ra,0xffffc
    80004f80:	28c080e7          	jalr	652(ra) # 80001208 <copy_and_swap>
    80004f84:	fe0514e3          	bnez	a0,80004f6c <_Z8printIntiii+0xdc>
}
    80004f88:	03813083          	ld	ra,56(sp)
    80004f8c:	03013403          	ld	s0,48(sp)
    80004f90:	02813483          	ld	s1,40(sp)
    80004f94:	02013903          	ld	s2,32(sp)
    80004f98:	01813983          	ld	s3,24(sp)
    80004f9c:	04010113          	addi	sp,sp,64
    80004fa0:	00008067          	ret

0000000080004fa4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80004fa4:	fe010113          	addi	sp,sp,-32
    80004fa8:	00113c23          	sd	ra,24(sp)
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00913423          	sd	s1,8(sp)
    80004fb4:	01213023          	sd	s2,0(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    80004fbc:	00050493          	mv	s1,a0
    80004fc0:	00b52023          	sw	a1,0(a0)
    80004fc4:	00052823          	sw	zero,16(a0)
    80004fc8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004fcc:	00259513          	slli	a0,a1,0x2
    80004fd0:	ffffc097          	auipc	ra,0xffffc
    80004fd4:	278080e7          	jalr	632(ra) # 80001248 <mem_alloc>
    80004fd8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004fdc:	01000513          	li	a0,16
    80004fe0:	ffffe097          	auipc	ra,0xffffe
    80004fe4:	a60080e7          	jalr	-1440(ra) # 80002a40 <_Znwm>
    80004fe8:	00050913          	mv	s2,a0
    80004fec:	00000593          	li	a1,0
    80004ff0:	ffffe097          	auipc	ra,0xffffe
    80004ff4:	c44080e7          	jalr	-956(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80004ff8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80004ffc:	01000513          	li	a0,16
    80005000:	ffffe097          	auipc	ra,0xffffe
    80005004:	a40080e7          	jalr	-1472(ra) # 80002a40 <_Znwm>
    80005008:	00050913          	mv	s2,a0
    8000500c:	0004a583          	lw	a1,0(s1)
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	c24080e7          	jalr	-988(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80005018:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000501c:	01000513          	li	a0,16
    80005020:	ffffe097          	auipc	ra,0xffffe
    80005024:	a20080e7          	jalr	-1504(ra) # 80002a40 <_Znwm>
    80005028:	00050913          	mv	s2,a0
    8000502c:	00100593          	li	a1,1
    80005030:	ffffe097          	auipc	ra,0xffffe
    80005034:	c04080e7          	jalr	-1020(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80005038:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000503c:	01000513          	li	a0,16
    80005040:	ffffe097          	auipc	ra,0xffffe
    80005044:	a00080e7          	jalr	-1536(ra) # 80002a40 <_Znwm>
    80005048:	00050913          	mv	s2,a0
    8000504c:	00100593          	li	a1,1
    80005050:	ffffe097          	auipc	ra,0xffffe
    80005054:	be4080e7          	jalr	-1052(ra) # 80002c34 <_ZN9SemaphoreC1Ej>
    80005058:	0324b823          	sd	s2,48(s1)
}
    8000505c:	01813083          	ld	ra,24(sp)
    80005060:	01013403          	ld	s0,16(sp)
    80005064:	00813483          	ld	s1,8(sp)
    80005068:	00013903          	ld	s2,0(sp)
    8000506c:	02010113          	addi	sp,sp,32
    80005070:	00008067          	ret
    80005074:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005078:	00090513          	mv	a0,s2
    8000507c:	ffffe097          	auipc	ra,0xffffe
    80005080:	9ec080e7          	jalr	-1556(ra) # 80002a68 <_ZdlPv>
    80005084:	00048513          	mv	a0,s1
    80005088:	00006097          	auipc	ra,0x6
    8000508c:	370080e7          	jalr	880(ra) # 8000b3f8 <_Unwind_Resume>
    80005090:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005094:	00090513          	mv	a0,s2
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	9d0080e7          	jalr	-1584(ra) # 80002a68 <_ZdlPv>
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00006097          	auipc	ra,0x6
    800050a8:	354080e7          	jalr	852(ra) # 8000b3f8 <_Unwind_Resume>
    800050ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800050b0:	00090513          	mv	a0,s2
    800050b4:	ffffe097          	auipc	ra,0xffffe
    800050b8:	9b4080e7          	jalr	-1612(ra) # 80002a68 <_ZdlPv>
    800050bc:	00048513          	mv	a0,s1
    800050c0:	00006097          	auipc	ra,0x6
    800050c4:	338080e7          	jalr	824(ra) # 8000b3f8 <_Unwind_Resume>
    800050c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800050cc:	00090513          	mv	a0,s2
    800050d0:	ffffe097          	auipc	ra,0xffffe
    800050d4:	998080e7          	jalr	-1640(ra) # 80002a68 <_ZdlPv>
    800050d8:	00048513          	mv	a0,s1
    800050dc:	00006097          	auipc	ra,0x6
    800050e0:	31c080e7          	jalr	796(ra) # 8000b3f8 <_Unwind_Resume>

00000000800050e4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800050e4:	fe010113          	addi	sp,sp,-32
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00913423          	sd	s1,8(sp)
    800050f4:	02010413          	addi	s0,sp,32
    800050f8:	00050493          	mv	s1,a0
    __putc(c);
    800050fc:	00a00513          	li	a0,10
    80005100:	00002097          	auipc	ra,0x2
    80005104:	62c080e7          	jalr	1580(ra) # 8000772c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005108:	0104a783          	lw	a5,16(s1)
    8000510c:	0144a703          	lw	a4,20(s1)
    80005110:	00e78c63          	beq	a5,a4,80005128 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005114:	0017879b          	addiw	a5,a5,1
    80005118:	0004a703          	lw	a4,0(s1)
    8000511c:	02e7e7bb          	remw	a5,a5,a4
    80005120:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005124:	fe5ff06f          	j	80005108 <_ZN9BufferCPPD1Ev+0x24>
    80005128:	02100513          	li	a0,33
    8000512c:	00002097          	auipc	ra,0x2
    80005130:	600080e7          	jalr	1536(ra) # 8000772c <__putc>
    80005134:	00a00513          	li	a0,10
    80005138:	00002097          	auipc	ra,0x2
    8000513c:	5f4080e7          	jalr	1524(ra) # 8000772c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005140:	0084b503          	ld	a0,8(s1)
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	134080e7          	jalr	308(ra) # 80001278 <mem_free>
    delete itemAvailable;
    8000514c:	0204b503          	ld	a0,32(s1)
    80005150:	00050863          	beqz	a0,80005160 <_ZN9BufferCPPD1Ev+0x7c>
    80005154:	00053783          	ld	a5,0(a0)
    80005158:	0087b783          	ld	a5,8(a5)
    8000515c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005160:	0184b503          	ld	a0,24(s1)
    80005164:	00050863          	beqz	a0,80005174 <_ZN9BufferCPPD1Ev+0x90>
    80005168:	00053783          	ld	a5,0(a0)
    8000516c:	0087b783          	ld	a5,8(a5)
    80005170:	000780e7          	jalr	a5
    delete mutexTail;
    80005174:	0304b503          	ld	a0,48(s1)
    80005178:	00050863          	beqz	a0,80005188 <_ZN9BufferCPPD1Ev+0xa4>
    8000517c:	00053783          	ld	a5,0(a0)
    80005180:	0087b783          	ld	a5,8(a5)
    80005184:	000780e7          	jalr	a5
    delete mutexHead;
    80005188:	0284b503          	ld	a0,40(s1)
    8000518c:	00050863          	beqz	a0,8000519c <_ZN9BufferCPPD1Ev+0xb8>
    80005190:	00053783          	ld	a5,0(a0)
    80005194:	0087b783          	ld	a5,8(a5)
    80005198:	000780e7          	jalr	a5

}
    8000519c:	01813083          	ld	ra,24(sp)
    800051a0:	01013403          	ld	s0,16(sp)
    800051a4:	00813483          	ld	s1,8(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret

00000000800051b0 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00113c23          	sd	ra,24(sp)
    800051b8:	00813823          	sd	s0,16(sp)
    800051bc:	00913423          	sd	s1,8(sp)
    800051c0:	01213023          	sd	s2,0(sp)
    800051c4:	02010413          	addi	s0,sp,32
    800051c8:	00050493          	mv	s1,a0
    800051cc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800051d0:	01853503          	ld	a0,24(a0)
    800051d4:	ffffe097          	auipc	ra,0xffffe
    800051d8:	a34080e7          	jalr	-1484(ra) # 80002c08 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800051dc:	0304b503          	ld	a0,48(s1)
    800051e0:	ffffe097          	auipc	ra,0xffffe
    800051e4:	a28080e7          	jalr	-1496(ra) # 80002c08 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800051e8:	0084b783          	ld	a5,8(s1)
    800051ec:	0144a703          	lw	a4,20(s1)
    800051f0:	00271713          	slli	a4,a4,0x2
    800051f4:	00e787b3          	add	a5,a5,a4
    800051f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800051fc:	0144a783          	lw	a5,20(s1)
    80005200:	0017879b          	addiw	a5,a5,1
    80005204:	0004a703          	lw	a4,0(s1)
    80005208:	02e7e7bb          	remw	a5,a5,a4
    8000520c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005210:	0304b503          	ld	a0,48(s1)
    80005214:	ffffe097          	auipc	ra,0xffffe
    80005218:	a58080e7          	jalr	-1448(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000521c:	0204b503          	ld	a0,32(s1)
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	a4c080e7          	jalr	-1460(ra) # 80002c6c <_ZN9Semaphore6signalEv>

}
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	00013903          	ld	s2,0(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret

0000000080005240 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005240:	fe010113          	addi	sp,sp,-32
    80005244:	00113c23          	sd	ra,24(sp)
    80005248:	00813823          	sd	s0,16(sp)
    8000524c:	00913423          	sd	s1,8(sp)
    80005250:	01213023          	sd	s2,0(sp)
    80005254:	02010413          	addi	s0,sp,32
    80005258:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000525c:	02053503          	ld	a0,32(a0)
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	9a8080e7          	jalr	-1624(ra) # 80002c08 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005268:	0284b503          	ld	a0,40(s1)
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	99c080e7          	jalr	-1636(ra) # 80002c08 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005274:	0084b703          	ld	a4,8(s1)
    80005278:	0104a783          	lw	a5,16(s1)
    8000527c:	00279693          	slli	a3,a5,0x2
    80005280:	00d70733          	add	a4,a4,a3
    80005284:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005288:	0017879b          	addiw	a5,a5,1
    8000528c:	0004a703          	lw	a4,0(s1)
    80005290:	02e7e7bb          	remw	a5,a5,a4
    80005294:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005298:	0284b503          	ld	a0,40(s1)
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	9d0080e7          	jalr	-1584(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800052a4:	0184b503          	ld	a0,24(s1)
    800052a8:	ffffe097          	auipc	ra,0xffffe
    800052ac:	9c4080e7          	jalr	-1596(ra) # 80002c6c <_ZN9Semaphore6signalEv>

    return ret;
}
    800052b0:	00090513          	mv	a0,s2
    800052b4:	01813083          	ld	ra,24(sp)
    800052b8:	01013403          	ld	s0,16(sp)
    800052bc:	00813483          	ld	s1,8(sp)
    800052c0:	00013903          	ld	s2,0(sp)
    800052c4:	02010113          	addi	sp,sp,32
    800052c8:	00008067          	ret

00000000800052cc <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800052cc:	ff010113          	addi	sp,sp,-16
    800052d0:	00113423          	sd	ra,8(sp)
    800052d4:	00813023          	sd	s0,0(sp)
    800052d8:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    800052dc:	fffff097          	auipc	ra,0xfffff
    800052e0:	f3c080e7          	jalr	-196(ra) # 80004218 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800052e4:	00813083          	ld	ra,8(sp)
    800052e8:	00013403          	ld	s0,0(sp)
    800052ec:	01010113          	addi	sp,sp,16
    800052f0:	00008067          	ret

00000000800052f4 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800052f4:	fe010113          	addi	sp,sp,-32
    800052f8:	00113c23          	sd	ra,24(sp)
    800052fc:	00813823          	sd	s0,16(sp)
    80005300:	00913423          	sd	s1,8(sp)
    80005304:	01213023          	sd	s2,0(sp)
    80005308:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000530c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005310:	00600493          	li	s1,6
    while (--i > 0) {
    80005314:	fff4849b          	addiw	s1,s1,-1
    80005318:	04905463          	blez	s1,80005360 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000531c:	00003517          	auipc	a0,0x3
    80005320:	06c50513          	addi	a0,a0,108 # 80008388 <_ZL6digits+0x18>
    80005324:	00000097          	auipc	ra,0x0
    80005328:	9d4080e7          	jalr	-1580(ra) # 80004cf8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000532c:	00000613          	li	a2,0
    80005330:	00a00593          	li	a1,10
    80005334:	0009051b          	sext.w	a0,s2
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	b58080e7          	jalr	-1192(ra) # 80004e90 <_Z8printIntiii>
        printString(" !\n");
    80005340:	00003517          	auipc	a0,0x3
    80005344:	05050513          	addi	a0,a0,80 # 80008390 <_ZL6digits+0x20>
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	9b0080e7          	jalr	-1616(ra) # 80004cf8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005350:	00090513          	mv	a0,s2
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	0d4080e7          	jalr	212(ra) # 80001428 <time_sleep>
    while (--i > 0) {
    8000535c:	fb9ff06f          	j	80005314 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005360:	00a00793          	li	a5,10
    80005364:	02f95933          	divu	s2,s2,a5
    80005368:	fff90913          	addi	s2,s2,-1
    8000536c:	00005797          	auipc	a5,0x5
    80005370:	fbc78793          	addi	a5,a5,-68 # 8000a328 <finished>
    80005374:	01278933          	add	s2,a5,s2
    80005378:	00100793          	li	a5,1
    8000537c:	00f90023          	sb	a5,0(s2)
}
    80005380:	01813083          	ld	ra,24(sp)
    80005384:	01013403          	ld	s0,16(sp)
    80005388:	00813483          	ld	s1,8(sp)
    8000538c:	00013903          	ld	s2,0(sp)
    80005390:	02010113          	addi	sp,sp,32
    80005394:	00008067          	ret

0000000080005398 <_Z12testSleepingv>:

void testSleeping()
{
    80005398:	fc010113          	addi	sp,sp,-64
    8000539c:	02113c23          	sd	ra,56(sp)
    800053a0:	02813823          	sd	s0,48(sp)
    800053a4:	02913423          	sd	s1,40(sp)
    800053a8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800053ac:	00a00793          	li	a5,10
    800053b0:	fcf43823          	sd	a5,-48(s0)
    800053b4:	01400793          	li	a5,20
    800053b8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800053bc:	00000493          	li	s1,0
    800053c0:	02c0006f          	j	800053ec <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800053c4:	00349793          	slli	a5,s1,0x3
    800053c8:	fd040613          	addi	a2,s0,-48
    800053cc:	00f60633          	add	a2,a2,a5
    800053d0:	00000597          	auipc	a1,0x0
    800053d4:	f2458593          	addi	a1,a1,-220 # 800052f4 <_Z9sleepyRunPv>
    800053d8:	fc040513          	addi	a0,s0,-64
    800053dc:	00f50533          	add	a0,a0,a5
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	ec4080e7          	jalr	-316(ra) # 800012a4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800053e8:	0014849b          	addiw	s1,s1,1
    800053ec:	00100793          	li	a5,1
    800053f0:	fc97dae3          	bge	a5,s1,800053c4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800053f4:	00005797          	auipc	a5,0x5
    800053f8:	f347c783          	lbu	a5,-204(a5) # 8000a328 <finished>
    800053fc:	fe078ce3          	beqz	a5,800053f4 <_Z12testSleepingv+0x5c>
    80005400:	00005797          	auipc	a5,0x5
    80005404:	f297c783          	lbu	a5,-215(a5) # 8000a329 <finished+0x1>
    80005408:	fe0786e3          	beqz	a5,800053f4 <_Z12testSleepingv+0x5c>
}
    8000540c:	03813083          	ld	ra,56(sp)
    80005410:	03013403          	ld	s0,48(sp)
    80005414:	02813483          	ld	s1,40(sp)
    80005418:	04010113          	addi	sp,sp,64
    8000541c:	00008067          	ret

0000000080005420 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80005420:	fe010113          	addi	sp,sp,-32
    80005424:	00113c23          	sd	ra,24(sp)
    80005428:	00813823          	sd	s0,16(sp)
    8000542c:	00913423          	sd	s1,8(sp)
    80005430:	02010413          	addi	s0,sp,32
    80005434:	00050493          	mv	s1,a0
    80005438:	00b52023          	sw	a1,0(a0)
    8000543c:	00052823          	sw	zero,16(a0)
    80005440:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005444:	00259513          	slli	a0,a1,0x2
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	e00080e7          	jalr	-512(ra) # 80001248 <mem_alloc>
    80005450:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005454:	00000593          	li	a1,0
    80005458:	02048513          	addi	a0,s1,32
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	f10080e7          	jalr	-240(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    80005464:	0004a583          	lw	a1,0(s1)
    80005468:	01848513          	addi	a0,s1,24
    8000546c:	ffffc097          	auipc	ra,0xffffc
    80005470:	f00080e7          	jalr	-256(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80005474:	00100593          	li	a1,1
    80005478:	02848513          	addi	a0,s1,40
    8000547c:	ffffc097          	auipc	ra,0xffffc
    80005480:	ef0080e7          	jalr	-272(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80005484:	00100593          	li	a1,1
    80005488:	03048513          	addi	a0,s1,48
    8000548c:	ffffc097          	auipc	ra,0xffffc
    80005490:	ee0080e7          	jalr	-288(ra) # 8000136c <sem_open>
}
    80005494:	01813083          	ld	ra,24(sp)
    80005498:	01013403          	ld	s0,16(sp)
    8000549c:	00813483          	ld	s1,8(sp)
    800054a0:	02010113          	addi	sp,sp,32
    800054a4:	00008067          	ret

00000000800054a8 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800054a8:	fe010113          	addi	sp,sp,-32
    800054ac:	00113c23          	sd	ra,24(sp)
    800054b0:	00813823          	sd	s0,16(sp)
    800054b4:	00913423          	sd	s1,8(sp)
    800054b8:	02010413          	addi	s0,sp,32
    800054bc:	00050493          	mv	s1,a0
    800054c0:	00a00513          	li	a0,10
    800054c4:	00002097          	auipc	ra,0x2
    800054c8:	268080e7          	jalr	616(ra) # 8000772c <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800054cc:	0104a783          	lw	a5,16(s1)
    800054d0:	0144a703          	lw	a4,20(s1)
    800054d4:	00e78c63          	beq	a5,a4,800054ec <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    800054d8:	0017879b          	addiw	a5,a5,1
    800054dc:	0004a703          	lw	a4,0(s1)
    800054e0:	02e7e7bb          	remw	a5,a5,a4
    800054e4:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    800054e8:	fe5ff06f          	j	800054cc <_ZN6BufferD1Ev+0x24>
    800054ec:	02100513          	li	a0,33
    800054f0:	00002097          	auipc	ra,0x2
    800054f4:	23c080e7          	jalr	572(ra) # 8000772c <__putc>
    800054f8:	00a00513          	li	a0,10
    800054fc:	00002097          	auipc	ra,0x2
    80005500:	230080e7          	jalr	560(ra) # 8000772c <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80005504:	0084b503          	ld	a0,8(s1)
    80005508:	ffffc097          	auipc	ra,0xffffc
    8000550c:	d70080e7          	jalr	-656(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    80005510:	0204b503          	ld	a0,32(s1)
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	e90080e7          	jalr	-368(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    8000551c:	0184b503          	ld	a0,24(s1)
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	e84080e7          	jalr	-380(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    80005528:	0304b503          	ld	a0,48(s1)
    8000552c:	ffffc097          	auipc	ra,0xffffc
    80005530:	e78080e7          	jalr	-392(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    80005534:	0284b503          	ld	a0,40(s1)
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	e6c080e7          	jalr	-404(ra) # 800013a4 <sem_close>
}
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	02010113          	addi	sp,sp,32
    80005550:	00008067          	ret

0000000080005554 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    80005554:	fe010113          	addi	sp,sp,-32
    80005558:	00113c23          	sd	ra,24(sp)
    8000555c:	00813823          	sd	s0,16(sp)
    80005560:	00913423          	sd	s1,8(sp)
    80005564:	01213023          	sd	s2,0(sp)
    80005568:	02010413          	addi	s0,sp,32
    8000556c:	00050493          	mv	s1,a0
    80005570:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005574:	01853503          	ld	a0,24(a0)
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	e58080e7          	jalr	-424(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    80005580:	0304b503          	ld	a0,48(s1)
    80005584:	ffffc097          	auipc	ra,0xffffc
    80005588:	e4c080e7          	jalr	-436(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    8000558c:	0084b783          	ld	a5,8(s1)
    80005590:	0144a703          	lw	a4,20(s1)
    80005594:	00271713          	slli	a4,a4,0x2
    80005598:	00e787b3          	add	a5,a5,a4
    8000559c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800055a0:	0144a783          	lw	a5,20(s1)
    800055a4:	0017879b          	addiw	a5,a5,1
    800055a8:	0004a703          	lw	a4,0(s1)
    800055ac:	02e7e7bb          	remw	a5,a5,a4
    800055b0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800055b4:	0304b503          	ld	a0,48(s1)
    800055b8:	ffffc097          	auipc	ra,0xffffc
    800055bc:	e44080e7          	jalr	-444(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    800055c0:	0204b503          	ld	a0,32(s1)
    800055c4:	ffffc097          	auipc	ra,0xffffc
    800055c8:	e38080e7          	jalr	-456(ra) # 800013fc <sem_signal>

}
    800055cc:	01813083          	ld	ra,24(sp)
    800055d0:	01013403          	ld	s0,16(sp)
    800055d4:	00813483          	ld	s1,8(sp)
    800055d8:	00013903          	ld	s2,0(sp)
    800055dc:	02010113          	addi	sp,sp,32
    800055e0:	00008067          	ret

00000000800055e4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800055e4:	fe010113          	addi	sp,sp,-32
    800055e8:	00113c23          	sd	ra,24(sp)
    800055ec:	00813823          	sd	s0,16(sp)
    800055f0:	00913423          	sd	s1,8(sp)
    800055f4:	01213023          	sd	s2,0(sp)
    800055f8:	02010413          	addi	s0,sp,32
    800055fc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005600:	02053503          	ld	a0,32(a0)
    80005604:	ffffc097          	auipc	ra,0xffffc
    80005608:	dcc080e7          	jalr	-564(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    8000560c:	0284b503          	ld	a0,40(s1)
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	dc0080e7          	jalr	-576(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    80005618:	0084b703          	ld	a4,8(s1)
    8000561c:	0104a783          	lw	a5,16(s1)
    80005620:	00279693          	slli	a3,a5,0x2
    80005624:	00d70733          	add	a4,a4,a3
    80005628:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000562c:	0017879b          	addiw	a5,a5,1
    80005630:	0004a703          	lw	a4,0(s1)
    80005634:	02e7e7bb          	remw	a5,a5,a4
    80005638:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000563c:	0284b503          	ld	a0,40(s1)
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	dbc080e7          	jalr	-580(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    80005648:	0184b503          	ld	a0,24(s1)
    8000564c:	ffffc097          	auipc	ra,0xffffc
    80005650:	db0080e7          	jalr	-592(ra) # 800013fc <sem_signal>

    return ret;
}
    80005654:	00090513          	mv	a0,s2
    80005658:	01813083          	ld	ra,24(sp)
    8000565c:	01013403          	ld	s0,16(sp)
    80005660:	00813483          	ld	s1,8(sp)
    80005664:	00013903          	ld	s2,0(sp)
    80005668:	02010113          	addi	sp,sp,32
    8000566c:	00008067          	ret

0000000080005670 <start>:
    80005670:	ff010113          	addi	sp,sp,-16
    80005674:	00813423          	sd	s0,8(sp)
    80005678:	01010413          	addi	s0,sp,16
    8000567c:	300027f3          	csrr	a5,mstatus
    80005680:	ffffe737          	lui	a4,0xffffe
    80005684:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff326f>
    80005688:	00e7f7b3          	and	a5,a5,a4
    8000568c:	00001737          	lui	a4,0x1
    80005690:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005694:	00e7e7b3          	or	a5,a5,a4
    80005698:	30079073          	csrw	mstatus,a5
    8000569c:	00000797          	auipc	a5,0x0
    800056a0:	16078793          	addi	a5,a5,352 # 800057fc <system_main>
    800056a4:	34179073          	csrw	mepc,a5
    800056a8:	00000793          	li	a5,0
    800056ac:	18079073          	csrw	satp,a5
    800056b0:	000107b7          	lui	a5,0x10
    800056b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800056b8:	30279073          	csrw	medeleg,a5
    800056bc:	30379073          	csrw	mideleg,a5
    800056c0:	104027f3          	csrr	a5,sie
    800056c4:	2227e793          	ori	a5,a5,546
    800056c8:	10479073          	csrw	sie,a5
    800056cc:	fff00793          	li	a5,-1
    800056d0:	00a7d793          	srli	a5,a5,0xa
    800056d4:	3b079073          	csrw	pmpaddr0,a5
    800056d8:	00f00793          	li	a5,15
    800056dc:	3a079073          	csrw	pmpcfg0,a5
    800056e0:	f14027f3          	csrr	a5,mhartid
    800056e4:	0200c737          	lui	a4,0x200c
    800056e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800056ec:	0007869b          	sext.w	a3,a5
    800056f0:	00269713          	slli	a4,a3,0x2
    800056f4:	000f4637          	lui	a2,0xf4
    800056f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800056fc:	00d70733          	add	a4,a4,a3
    80005700:	0037979b          	slliw	a5,a5,0x3
    80005704:	020046b7          	lui	a3,0x2004
    80005708:	00d787b3          	add	a5,a5,a3
    8000570c:	00c585b3          	add	a1,a1,a2
    80005710:	00371693          	slli	a3,a4,0x3
    80005714:	00005717          	auipc	a4,0x5
    80005718:	c1c70713          	addi	a4,a4,-996 # 8000a330 <timer_scratch>
    8000571c:	00b7b023          	sd	a1,0(a5)
    80005720:	00d70733          	add	a4,a4,a3
    80005724:	00f73c23          	sd	a5,24(a4)
    80005728:	02c73023          	sd	a2,32(a4)
    8000572c:	34071073          	csrw	mscratch,a4
    80005730:	00000797          	auipc	a5,0x0
    80005734:	6e078793          	addi	a5,a5,1760 # 80005e10 <timervec>
    80005738:	30579073          	csrw	mtvec,a5
    8000573c:	300027f3          	csrr	a5,mstatus
    80005740:	0087e793          	ori	a5,a5,8
    80005744:	30079073          	csrw	mstatus,a5
    80005748:	304027f3          	csrr	a5,mie
    8000574c:	0807e793          	ori	a5,a5,128
    80005750:	30479073          	csrw	mie,a5
    80005754:	f14027f3          	csrr	a5,mhartid
    80005758:	0007879b          	sext.w	a5,a5
    8000575c:	00078213          	mv	tp,a5
    80005760:	30200073          	mret
    80005764:	00813403          	ld	s0,8(sp)
    80005768:	01010113          	addi	sp,sp,16
    8000576c:	00008067          	ret

0000000080005770 <timerinit>:
    80005770:	ff010113          	addi	sp,sp,-16
    80005774:	00813423          	sd	s0,8(sp)
    80005778:	01010413          	addi	s0,sp,16
    8000577c:	f14027f3          	csrr	a5,mhartid
    80005780:	0200c737          	lui	a4,0x200c
    80005784:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005788:	0007869b          	sext.w	a3,a5
    8000578c:	00269713          	slli	a4,a3,0x2
    80005790:	000f4637          	lui	a2,0xf4
    80005794:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005798:	00d70733          	add	a4,a4,a3
    8000579c:	0037979b          	slliw	a5,a5,0x3
    800057a0:	020046b7          	lui	a3,0x2004
    800057a4:	00d787b3          	add	a5,a5,a3
    800057a8:	00c585b3          	add	a1,a1,a2
    800057ac:	00371693          	slli	a3,a4,0x3
    800057b0:	00005717          	auipc	a4,0x5
    800057b4:	b8070713          	addi	a4,a4,-1152 # 8000a330 <timer_scratch>
    800057b8:	00b7b023          	sd	a1,0(a5)
    800057bc:	00d70733          	add	a4,a4,a3
    800057c0:	00f73c23          	sd	a5,24(a4)
    800057c4:	02c73023          	sd	a2,32(a4)
    800057c8:	34071073          	csrw	mscratch,a4
    800057cc:	00000797          	auipc	a5,0x0
    800057d0:	64478793          	addi	a5,a5,1604 # 80005e10 <timervec>
    800057d4:	30579073          	csrw	mtvec,a5
    800057d8:	300027f3          	csrr	a5,mstatus
    800057dc:	0087e793          	ori	a5,a5,8
    800057e0:	30079073          	csrw	mstatus,a5
    800057e4:	304027f3          	csrr	a5,mie
    800057e8:	0807e793          	ori	a5,a5,128
    800057ec:	30479073          	csrw	mie,a5
    800057f0:	00813403          	ld	s0,8(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret

00000000800057fc <system_main>:
    800057fc:	fe010113          	addi	sp,sp,-32
    80005800:	00813823          	sd	s0,16(sp)
    80005804:	00913423          	sd	s1,8(sp)
    80005808:	00113c23          	sd	ra,24(sp)
    8000580c:	02010413          	addi	s0,sp,32
    80005810:	00000097          	auipc	ra,0x0
    80005814:	0c4080e7          	jalr	196(ra) # 800058d4 <cpuid>
    80005818:	00005497          	auipc	s1,0x5
    8000581c:	a5848493          	addi	s1,s1,-1448 # 8000a270 <started>
    80005820:	02050263          	beqz	a0,80005844 <system_main+0x48>
    80005824:	0004a783          	lw	a5,0(s1)
    80005828:	0007879b          	sext.w	a5,a5
    8000582c:	fe078ce3          	beqz	a5,80005824 <system_main+0x28>
    80005830:	0ff0000f          	fence
    80005834:	00003517          	auipc	a0,0x3
    80005838:	b9450513          	addi	a0,a0,-1132 # 800083c8 <_ZL6digits+0x58>
    8000583c:	00001097          	auipc	ra,0x1
    80005840:	a70080e7          	jalr	-1424(ra) # 800062ac <panic>
    80005844:	00001097          	auipc	ra,0x1
    80005848:	9c4080e7          	jalr	-1596(ra) # 80006208 <consoleinit>
    8000584c:	00001097          	auipc	ra,0x1
    80005850:	150080e7          	jalr	336(ra) # 8000699c <printfinit>
    80005854:	00003517          	auipc	a0,0x3
    80005858:	94450513          	addi	a0,a0,-1724 # 80008198 <CONSOLE_STATUS+0x188>
    8000585c:	00001097          	auipc	ra,0x1
    80005860:	aac080e7          	jalr	-1364(ra) # 80006308 <__printf>
    80005864:	00003517          	auipc	a0,0x3
    80005868:	b3450513          	addi	a0,a0,-1228 # 80008398 <_ZL6digits+0x28>
    8000586c:	00001097          	auipc	ra,0x1
    80005870:	a9c080e7          	jalr	-1380(ra) # 80006308 <__printf>
    80005874:	00003517          	auipc	a0,0x3
    80005878:	92450513          	addi	a0,a0,-1756 # 80008198 <CONSOLE_STATUS+0x188>
    8000587c:	00001097          	auipc	ra,0x1
    80005880:	a8c080e7          	jalr	-1396(ra) # 80006308 <__printf>
    80005884:	00001097          	auipc	ra,0x1
    80005888:	4a4080e7          	jalr	1188(ra) # 80006d28 <kinit>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	148080e7          	jalr	328(ra) # 800059d4 <trapinit>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	16c080e7          	jalr	364(ra) # 80005a00 <trapinithart>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	5b4080e7          	jalr	1460(ra) # 80005e50 <plicinit>
    800058a4:	00000097          	auipc	ra,0x0
    800058a8:	5d4080e7          	jalr	1492(ra) # 80005e78 <plicinithart>
    800058ac:	00000097          	auipc	ra,0x0
    800058b0:	078080e7          	jalr	120(ra) # 80005924 <userinit>
    800058b4:	0ff0000f          	fence
    800058b8:	00100793          	li	a5,1
    800058bc:	00003517          	auipc	a0,0x3
    800058c0:	af450513          	addi	a0,a0,-1292 # 800083b0 <_ZL6digits+0x40>
    800058c4:	00f4a023          	sw	a5,0(s1)
    800058c8:	00001097          	auipc	ra,0x1
    800058cc:	a40080e7          	jalr	-1472(ra) # 80006308 <__printf>
    800058d0:	0000006f          	j	800058d0 <system_main+0xd4>

00000000800058d4 <cpuid>:
    800058d4:	ff010113          	addi	sp,sp,-16
    800058d8:	00813423          	sd	s0,8(sp)
    800058dc:	01010413          	addi	s0,sp,16
    800058e0:	00020513          	mv	a0,tp
    800058e4:	00813403          	ld	s0,8(sp)
    800058e8:	0005051b          	sext.w	a0,a0
    800058ec:	01010113          	addi	sp,sp,16
    800058f0:	00008067          	ret

00000000800058f4 <mycpu>:
    800058f4:	ff010113          	addi	sp,sp,-16
    800058f8:	00813423          	sd	s0,8(sp)
    800058fc:	01010413          	addi	s0,sp,16
    80005900:	00020793          	mv	a5,tp
    80005904:	00813403          	ld	s0,8(sp)
    80005908:	0007879b          	sext.w	a5,a5
    8000590c:	00779793          	slli	a5,a5,0x7
    80005910:	00006517          	auipc	a0,0x6
    80005914:	a5050513          	addi	a0,a0,-1456 # 8000b360 <cpus>
    80005918:	00f50533          	add	a0,a0,a5
    8000591c:	01010113          	addi	sp,sp,16
    80005920:	00008067          	ret

0000000080005924 <userinit>:
    80005924:	ff010113          	addi	sp,sp,-16
    80005928:	00813423          	sd	s0,8(sp)
    8000592c:	01010413          	addi	s0,sp,16
    80005930:	00813403          	ld	s0,8(sp)
    80005934:	01010113          	addi	sp,sp,16
    80005938:	ffffd317          	auipc	t1,0xffffd
    8000593c:	00430067          	jr	4(t1) # 8000293c <main>

0000000080005940 <either_copyout>:
    80005940:	ff010113          	addi	sp,sp,-16
    80005944:	00813023          	sd	s0,0(sp)
    80005948:	00113423          	sd	ra,8(sp)
    8000594c:	01010413          	addi	s0,sp,16
    80005950:	02051663          	bnez	a0,8000597c <either_copyout+0x3c>
    80005954:	00058513          	mv	a0,a1
    80005958:	00060593          	mv	a1,a2
    8000595c:	0006861b          	sext.w	a2,a3
    80005960:	00002097          	auipc	ra,0x2
    80005964:	c54080e7          	jalr	-940(ra) # 800075b4 <__memmove>
    80005968:	00813083          	ld	ra,8(sp)
    8000596c:	00013403          	ld	s0,0(sp)
    80005970:	00000513          	li	a0,0
    80005974:	01010113          	addi	sp,sp,16
    80005978:	00008067          	ret
    8000597c:	00003517          	auipc	a0,0x3
    80005980:	a7450513          	addi	a0,a0,-1420 # 800083f0 <_ZL6digits+0x80>
    80005984:	00001097          	auipc	ra,0x1
    80005988:	928080e7          	jalr	-1752(ra) # 800062ac <panic>

000000008000598c <either_copyin>:
    8000598c:	ff010113          	addi	sp,sp,-16
    80005990:	00813023          	sd	s0,0(sp)
    80005994:	00113423          	sd	ra,8(sp)
    80005998:	01010413          	addi	s0,sp,16
    8000599c:	02059463          	bnez	a1,800059c4 <either_copyin+0x38>
    800059a0:	00060593          	mv	a1,a2
    800059a4:	0006861b          	sext.w	a2,a3
    800059a8:	00002097          	auipc	ra,0x2
    800059ac:	c0c080e7          	jalr	-1012(ra) # 800075b4 <__memmove>
    800059b0:	00813083          	ld	ra,8(sp)
    800059b4:	00013403          	ld	s0,0(sp)
    800059b8:	00000513          	li	a0,0
    800059bc:	01010113          	addi	sp,sp,16
    800059c0:	00008067          	ret
    800059c4:	00003517          	auipc	a0,0x3
    800059c8:	a5450513          	addi	a0,a0,-1452 # 80008418 <_ZL6digits+0xa8>
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	8e0080e7          	jalr	-1824(ra) # 800062ac <panic>

00000000800059d4 <trapinit>:
    800059d4:	ff010113          	addi	sp,sp,-16
    800059d8:	00813423          	sd	s0,8(sp)
    800059dc:	01010413          	addi	s0,sp,16
    800059e0:	00813403          	ld	s0,8(sp)
    800059e4:	00003597          	auipc	a1,0x3
    800059e8:	a5c58593          	addi	a1,a1,-1444 # 80008440 <_ZL6digits+0xd0>
    800059ec:	00006517          	auipc	a0,0x6
    800059f0:	9f450513          	addi	a0,a0,-1548 # 8000b3e0 <tickslock>
    800059f4:	01010113          	addi	sp,sp,16
    800059f8:	00001317          	auipc	t1,0x1
    800059fc:	5c030067          	jr	1472(t1) # 80006fb8 <initlock>

0000000080005a00 <trapinithart>:
    80005a00:	ff010113          	addi	sp,sp,-16
    80005a04:	00813423          	sd	s0,8(sp)
    80005a08:	01010413          	addi	s0,sp,16
    80005a0c:	00000797          	auipc	a5,0x0
    80005a10:	2f478793          	addi	a5,a5,756 # 80005d00 <kernelvec>
    80005a14:	10579073          	csrw	stvec,a5
    80005a18:	00813403          	ld	s0,8(sp)
    80005a1c:	01010113          	addi	sp,sp,16
    80005a20:	00008067          	ret

0000000080005a24 <usertrap>:
    80005a24:	ff010113          	addi	sp,sp,-16
    80005a28:	00813423          	sd	s0,8(sp)
    80005a2c:	01010413          	addi	s0,sp,16
    80005a30:	00813403          	ld	s0,8(sp)
    80005a34:	01010113          	addi	sp,sp,16
    80005a38:	00008067          	ret

0000000080005a3c <usertrapret>:
    80005a3c:	ff010113          	addi	sp,sp,-16
    80005a40:	00813423          	sd	s0,8(sp)
    80005a44:	01010413          	addi	s0,sp,16
    80005a48:	00813403          	ld	s0,8(sp)
    80005a4c:	01010113          	addi	sp,sp,16
    80005a50:	00008067          	ret

0000000080005a54 <kerneltrap>:
    80005a54:	fe010113          	addi	sp,sp,-32
    80005a58:	00813823          	sd	s0,16(sp)
    80005a5c:	00113c23          	sd	ra,24(sp)
    80005a60:	00913423          	sd	s1,8(sp)
    80005a64:	02010413          	addi	s0,sp,32
    80005a68:	142025f3          	csrr	a1,scause
    80005a6c:	100027f3          	csrr	a5,sstatus
    80005a70:	0027f793          	andi	a5,a5,2
    80005a74:	10079c63          	bnez	a5,80005b8c <kerneltrap+0x138>
    80005a78:	142027f3          	csrr	a5,scause
    80005a7c:	0207ce63          	bltz	a5,80005ab8 <kerneltrap+0x64>
    80005a80:	00003517          	auipc	a0,0x3
    80005a84:	a0850513          	addi	a0,a0,-1528 # 80008488 <_ZL6digits+0x118>
    80005a88:	00001097          	auipc	ra,0x1
    80005a8c:	880080e7          	jalr	-1920(ra) # 80006308 <__printf>
    80005a90:	141025f3          	csrr	a1,sepc
    80005a94:	14302673          	csrr	a2,stval
    80005a98:	00003517          	auipc	a0,0x3
    80005a9c:	a0050513          	addi	a0,a0,-1536 # 80008498 <_ZL6digits+0x128>
    80005aa0:	00001097          	auipc	ra,0x1
    80005aa4:	868080e7          	jalr	-1944(ra) # 80006308 <__printf>
    80005aa8:	00003517          	auipc	a0,0x3
    80005aac:	a0850513          	addi	a0,a0,-1528 # 800084b0 <_ZL6digits+0x140>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	7fc080e7          	jalr	2044(ra) # 800062ac <panic>
    80005ab8:	0ff7f713          	andi	a4,a5,255
    80005abc:	00900693          	li	a3,9
    80005ac0:	04d70063          	beq	a4,a3,80005b00 <kerneltrap+0xac>
    80005ac4:	fff00713          	li	a4,-1
    80005ac8:	03f71713          	slli	a4,a4,0x3f
    80005acc:	00170713          	addi	a4,a4,1
    80005ad0:	fae798e3          	bne	a5,a4,80005a80 <kerneltrap+0x2c>
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	e00080e7          	jalr	-512(ra) # 800058d4 <cpuid>
    80005adc:	06050663          	beqz	a0,80005b48 <kerneltrap+0xf4>
    80005ae0:	144027f3          	csrr	a5,sip
    80005ae4:	ffd7f793          	andi	a5,a5,-3
    80005ae8:	14479073          	csrw	sip,a5
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	02010113          	addi	sp,sp,32
    80005afc:	00008067          	ret
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	3c4080e7          	jalr	964(ra) # 80005ec4 <plic_claim>
    80005b08:	00a00793          	li	a5,10
    80005b0c:	00050493          	mv	s1,a0
    80005b10:	06f50863          	beq	a0,a5,80005b80 <kerneltrap+0x12c>
    80005b14:	fc050ce3          	beqz	a0,80005aec <kerneltrap+0x98>
    80005b18:	00050593          	mv	a1,a0
    80005b1c:	00003517          	auipc	a0,0x3
    80005b20:	94c50513          	addi	a0,a0,-1716 # 80008468 <_ZL6digits+0xf8>
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	7e4080e7          	jalr	2020(ra) # 80006308 <__printf>
    80005b2c:	01013403          	ld	s0,16(sp)
    80005b30:	01813083          	ld	ra,24(sp)
    80005b34:	00048513          	mv	a0,s1
    80005b38:	00813483          	ld	s1,8(sp)
    80005b3c:	02010113          	addi	sp,sp,32
    80005b40:	00000317          	auipc	t1,0x0
    80005b44:	3bc30067          	jr	956(t1) # 80005efc <plic_complete>
    80005b48:	00006517          	auipc	a0,0x6
    80005b4c:	89850513          	addi	a0,a0,-1896 # 8000b3e0 <tickslock>
    80005b50:	00001097          	auipc	ra,0x1
    80005b54:	48c080e7          	jalr	1164(ra) # 80006fdc <acquire>
    80005b58:	00004717          	auipc	a4,0x4
    80005b5c:	71c70713          	addi	a4,a4,1820 # 8000a274 <ticks>
    80005b60:	00072783          	lw	a5,0(a4)
    80005b64:	00006517          	auipc	a0,0x6
    80005b68:	87c50513          	addi	a0,a0,-1924 # 8000b3e0 <tickslock>
    80005b6c:	0017879b          	addiw	a5,a5,1
    80005b70:	00f72023          	sw	a5,0(a4)
    80005b74:	00001097          	auipc	ra,0x1
    80005b78:	534080e7          	jalr	1332(ra) # 800070a8 <release>
    80005b7c:	f65ff06f          	j	80005ae0 <kerneltrap+0x8c>
    80005b80:	00001097          	auipc	ra,0x1
    80005b84:	090080e7          	jalr	144(ra) # 80006c10 <uartintr>
    80005b88:	fa5ff06f          	j	80005b2c <kerneltrap+0xd8>
    80005b8c:	00003517          	auipc	a0,0x3
    80005b90:	8bc50513          	addi	a0,a0,-1860 # 80008448 <_ZL6digits+0xd8>
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	718080e7          	jalr	1816(ra) # 800062ac <panic>

0000000080005b9c <clockintr>:
    80005b9c:	fe010113          	addi	sp,sp,-32
    80005ba0:	00813823          	sd	s0,16(sp)
    80005ba4:	00913423          	sd	s1,8(sp)
    80005ba8:	00113c23          	sd	ra,24(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	00006497          	auipc	s1,0x6
    80005bb4:	83048493          	addi	s1,s1,-2000 # 8000b3e0 <tickslock>
    80005bb8:	00048513          	mv	a0,s1
    80005bbc:	00001097          	auipc	ra,0x1
    80005bc0:	420080e7          	jalr	1056(ra) # 80006fdc <acquire>
    80005bc4:	00004717          	auipc	a4,0x4
    80005bc8:	6b070713          	addi	a4,a4,1712 # 8000a274 <ticks>
    80005bcc:	00072783          	lw	a5,0(a4)
    80005bd0:	01013403          	ld	s0,16(sp)
    80005bd4:	01813083          	ld	ra,24(sp)
    80005bd8:	00048513          	mv	a0,s1
    80005bdc:	0017879b          	addiw	a5,a5,1
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	00f72023          	sw	a5,0(a4)
    80005be8:	02010113          	addi	sp,sp,32
    80005bec:	00001317          	auipc	t1,0x1
    80005bf0:	4bc30067          	jr	1212(t1) # 800070a8 <release>

0000000080005bf4 <devintr>:
    80005bf4:	142027f3          	csrr	a5,scause
    80005bf8:	00000513          	li	a0,0
    80005bfc:	0007c463          	bltz	a5,80005c04 <devintr+0x10>
    80005c00:	00008067          	ret
    80005c04:	fe010113          	addi	sp,sp,-32
    80005c08:	00813823          	sd	s0,16(sp)
    80005c0c:	00113c23          	sd	ra,24(sp)
    80005c10:	00913423          	sd	s1,8(sp)
    80005c14:	02010413          	addi	s0,sp,32
    80005c18:	0ff7f713          	andi	a4,a5,255
    80005c1c:	00900693          	li	a3,9
    80005c20:	04d70c63          	beq	a4,a3,80005c78 <devintr+0x84>
    80005c24:	fff00713          	li	a4,-1
    80005c28:	03f71713          	slli	a4,a4,0x3f
    80005c2c:	00170713          	addi	a4,a4,1
    80005c30:	00e78c63          	beq	a5,a4,80005c48 <devintr+0x54>
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	02010113          	addi	sp,sp,32
    80005c44:	00008067          	ret
    80005c48:	00000097          	auipc	ra,0x0
    80005c4c:	c8c080e7          	jalr	-884(ra) # 800058d4 <cpuid>
    80005c50:	06050663          	beqz	a0,80005cbc <devintr+0xc8>
    80005c54:	144027f3          	csrr	a5,sip
    80005c58:	ffd7f793          	andi	a5,a5,-3
    80005c5c:	14479073          	csrw	sip,a5
    80005c60:	01813083          	ld	ra,24(sp)
    80005c64:	01013403          	ld	s0,16(sp)
    80005c68:	00813483          	ld	s1,8(sp)
    80005c6c:	00200513          	li	a0,2
    80005c70:	02010113          	addi	sp,sp,32
    80005c74:	00008067          	ret
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	24c080e7          	jalr	588(ra) # 80005ec4 <plic_claim>
    80005c80:	00a00793          	li	a5,10
    80005c84:	00050493          	mv	s1,a0
    80005c88:	06f50663          	beq	a0,a5,80005cf4 <devintr+0x100>
    80005c8c:	00100513          	li	a0,1
    80005c90:	fa0482e3          	beqz	s1,80005c34 <devintr+0x40>
    80005c94:	00048593          	mv	a1,s1
    80005c98:	00002517          	auipc	a0,0x2
    80005c9c:	7d050513          	addi	a0,a0,2000 # 80008468 <_ZL6digits+0xf8>
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	668080e7          	jalr	1640(ra) # 80006308 <__printf>
    80005ca8:	00048513          	mv	a0,s1
    80005cac:	00000097          	auipc	ra,0x0
    80005cb0:	250080e7          	jalr	592(ra) # 80005efc <plic_complete>
    80005cb4:	00100513          	li	a0,1
    80005cb8:	f7dff06f          	j	80005c34 <devintr+0x40>
    80005cbc:	00005517          	auipc	a0,0x5
    80005cc0:	72450513          	addi	a0,a0,1828 # 8000b3e0 <tickslock>
    80005cc4:	00001097          	auipc	ra,0x1
    80005cc8:	318080e7          	jalr	792(ra) # 80006fdc <acquire>
    80005ccc:	00004717          	auipc	a4,0x4
    80005cd0:	5a870713          	addi	a4,a4,1448 # 8000a274 <ticks>
    80005cd4:	00072783          	lw	a5,0(a4)
    80005cd8:	00005517          	auipc	a0,0x5
    80005cdc:	70850513          	addi	a0,a0,1800 # 8000b3e0 <tickslock>
    80005ce0:	0017879b          	addiw	a5,a5,1
    80005ce4:	00f72023          	sw	a5,0(a4)
    80005ce8:	00001097          	auipc	ra,0x1
    80005cec:	3c0080e7          	jalr	960(ra) # 800070a8 <release>
    80005cf0:	f65ff06f          	j	80005c54 <devintr+0x60>
    80005cf4:	00001097          	auipc	ra,0x1
    80005cf8:	f1c080e7          	jalr	-228(ra) # 80006c10 <uartintr>
    80005cfc:	fadff06f          	j	80005ca8 <devintr+0xb4>

0000000080005d00 <kernelvec>:
    80005d00:	f0010113          	addi	sp,sp,-256
    80005d04:	00113023          	sd	ra,0(sp)
    80005d08:	00213423          	sd	sp,8(sp)
    80005d0c:	00313823          	sd	gp,16(sp)
    80005d10:	00413c23          	sd	tp,24(sp)
    80005d14:	02513023          	sd	t0,32(sp)
    80005d18:	02613423          	sd	t1,40(sp)
    80005d1c:	02713823          	sd	t2,48(sp)
    80005d20:	02813c23          	sd	s0,56(sp)
    80005d24:	04913023          	sd	s1,64(sp)
    80005d28:	04a13423          	sd	a0,72(sp)
    80005d2c:	04b13823          	sd	a1,80(sp)
    80005d30:	04c13c23          	sd	a2,88(sp)
    80005d34:	06d13023          	sd	a3,96(sp)
    80005d38:	06e13423          	sd	a4,104(sp)
    80005d3c:	06f13823          	sd	a5,112(sp)
    80005d40:	07013c23          	sd	a6,120(sp)
    80005d44:	09113023          	sd	a7,128(sp)
    80005d48:	09213423          	sd	s2,136(sp)
    80005d4c:	09313823          	sd	s3,144(sp)
    80005d50:	09413c23          	sd	s4,152(sp)
    80005d54:	0b513023          	sd	s5,160(sp)
    80005d58:	0b613423          	sd	s6,168(sp)
    80005d5c:	0b713823          	sd	s7,176(sp)
    80005d60:	0b813c23          	sd	s8,184(sp)
    80005d64:	0d913023          	sd	s9,192(sp)
    80005d68:	0da13423          	sd	s10,200(sp)
    80005d6c:	0db13823          	sd	s11,208(sp)
    80005d70:	0dc13c23          	sd	t3,216(sp)
    80005d74:	0fd13023          	sd	t4,224(sp)
    80005d78:	0fe13423          	sd	t5,232(sp)
    80005d7c:	0ff13823          	sd	t6,240(sp)
    80005d80:	cd5ff0ef          	jal	ra,80005a54 <kerneltrap>
    80005d84:	00013083          	ld	ra,0(sp)
    80005d88:	00813103          	ld	sp,8(sp)
    80005d8c:	01013183          	ld	gp,16(sp)
    80005d90:	02013283          	ld	t0,32(sp)
    80005d94:	02813303          	ld	t1,40(sp)
    80005d98:	03013383          	ld	t2,48(sp)
    80005d9c:	03813403          	ld	s0,56(sp)
    80005da0:	04013483          	ld	s1,64(sp)
    80005da4:	04813503          	ld	a0,72(sp)
    80005da8:	05013583          	ld	a1,80(sp)
    80005dac:	05813603          	ld	a2,88(sp)
    80005db0:	06013683          	ld	a3,96(sp)
    80005db4:	06813703          	ld	a4,104(sp)
    80005db8:	07013783          	ld	a5,112(sp)
    80005dbc:	07813803          	ld	a6,120(sp)
    80005dc0:	08013883          	ld	a7,128(sp)
    80005dc4:	08813903          	ld	s2,136(sp)
    80005dc8:	09013983          	ld	s3,144(sp)
    80005dcc:	09813a03          	ld	s4,152(sp)
    80005dd0:	0a013a83          	ld	s5,160(sp)
    80005dd4:	0a813b03          	ld	s6,168(sp)
    80005dd8:	0b013b83          	ld	s7,176(sp)
    80005ddc:	0b813c03          	ld	s8,184(sp)
    80005de0:	0c013c83          	ld	s9,192(sp)
    80005de4:	0c813d03          	ld	s10,200(sp)
    80005de8:	0d013d83          	ld	s11,208(sp)
    80005dec:	0d813e03          	ld	t3,216(sp)
    80005df0:	0e013e83          	ld	t4,224(sp)
    80005df4:	0e813f03          	ld	t5,232(sp)
    80005df8:	0f013f83          	ld	t6,240(sp)
    80005dfc:	10010113          	addi	sp,sp,256
    80005e00:	10200073          	sret
    80005e04:	00000013          	nop
    80005e08:	00000013          	nop
    80005e0c:	00000013          	nop

0000000080005e10 <timervec>:
    80005e10:	34051573          	csrrw	a0,mscratch,a0
    80005e14:	00b53023          	sd	a1,0(a0)
    80005e18:	00c53423          	sd	a2,8(a0)
    80005e1c:	00d53823          	sd	a3,16(a0)
    80005e20:	01853583          	ld	a1,24(a0)
    80005e24:	02053603          	ld	a2,32(a0)
    80005e28:	0005b683          	ld	a3,0(a1)
    80005e2c:	00c686b3          	add	a3,a3,a2
    80005e30:	00d5b023          	sd	a3,0(a1)
    80005e34:	00200593          	li	a1,2
    80005e38:	14459073          	csrw	sip,a1
    80005e3c:	01053683          	ld	a3,16(a0)
    80005e40:	00853603          	ld	a2,8(a0)
    80005e44:	00053583          	ld	a1,0(a0)
    80005e48:	34051573          	csrrw	a0,mscratch,a0
    80005e4c:	30200073          	mret

0000000080005e50 <plicinit>:
    80005e50:	ff010113          	addi	sp,sp,-16
    80005e54:	00813423          	sd	s0,8(sp)
    80005e58:	01010413          	addi	s0,sp,16
    80005e5c:	00813403          	ld	s0,8(sp)
    80005e60:	0c0007b7          	lui	a5,0xc000
    80005e64:	00100713          	li	a4,1
    80005e68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005e6c:	00e7a223          	sw	a4,4(a5)
    80005e70:	01010113          	addi	sp,sp,16
    80005e74:	00008067          	ret

0000000080005e78 <plicinithart>:
    80005e78:	ff010113          	addi	sp,sp,-16
    80005e7c:	00813023          	sd	s0,0(sp)
    80005e80:	00113423          	sd	ra,8(sp)
    80005e84:	01010413          	addi	s0,sp,16
    80005e88:	00000097          	auipc	ra,0x0
    80005e8c:	a4c080e7          	jalr	-1460(ra) # 800058d4 <cpuid>
    80005e90:	0085171b          	slliw	a4,a0,0x8
    80005e94:	0c0027b7          	lui	a5,0xc002
    80005e98:	00e787b3          	add	a5,a5,a4
    80005e9c:	40200713          	li	a4,1026
    80005ea0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ea4:	00813083          	ld	ra,8(sp)
    80005ea8:	00013403          	ld	s0,0(sp)
    80005eac:	00d5151b          	slliw	a0,a0,0xd
    80005eb0:	0c2017b7          	lui	a5,0xc201
    80005eb4:	00a78533          	add	a0,a5,a0
    80005eb8:	00052023          	sw	zero,0(a0)
    80005ebc:	01010113          	addi	sp,sp,16
    80005ec0:	00008067          	ret

0000000080005ec4 <plic_claim>:
    80005ec4:	ff010113          	addi	sp,sp,-16
    80005ec8:	00813023          	sd	s0,0(sp)
    80005ecc:	00113423          	sd	ra,8(sp)
    80005ed0:	01010413          	addi	s0,sp,16
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	a00080e7          	jalr	-1536(ra) # 800058d4 <cpuid>
    80005edc:	00813083          	ld	ra,8(sp)
    80005ee0:	00013403          	ld	s0,0(sp)
    80005ee4:	00d5151b          	slliw	a0,a0,0xd
    80005ee8:	0c2017b7          	lui	a5,0xc201
    80005eec:	00a78533          	add	a0,a5,a0
    80005ef0:	00452503          	lw	a0,4(a0)
    80005ef4:	01010113          	addi	sp,sp,16
    80005ef8:	00008067          	ret

0000000080005efc <plic_complete>:
    80005efc:	fe010113          	addi	sp,sp,-32
    80005f00:	00813823          	sd	s0,16(sp)
    80005f04:	00913423          	sd	s1,8(sp)
    80005f08:	00113c23          	sd	ra,24(sp)
    80005f0c:	02010413          	addi	s0,sp,32
    80005f10:	00050493          	mv	s1,a0
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	9c0080e7          	jalr	-1600(ra) # 800058d4 <cpuid>
    80005f1c:	01813083          	ld	ra,24(sp)
    80005f20:	01013403          	ld	s0,16(sp)
    80005f24:	00d5179b          	slliw	a5,a0,0xd
    80005f28:	0c201737          	lui	a4,0xc201
    80005f2c:	00f707b3          	add	a5,a4,a5
    80005f30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005f34:	00813483          	ld	s1,8(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret

0000000080005f40 <consolewrite>:
    80005f40:	fb010113          	addi	sp,sp,-80
    80005f44:	04813023          	sd	s0,64(sp)
    80005f48:	04113423          	sd	ra,72(sp)
    80005f4c:	02913c23          	sd	s1,56(sp)
    80005f50:	03213823          	sd	s2,48(sp)
    80005f54:	03313423          	sd	s3,40(sp)
    80005f58:	03413023          	sd	s4,32(sp)
    80005f5c:	01513c23          	sd	s5,24(sp)
    80005f60:	05010413          	addi	s0,sp,80
    80005f64:	06c05c63          	blez	a2,80005fdc <consolewrite+0x9c>
    80005f68:	00060993          	mv	s3,a2
    80005f6c:	00050a13          	mv	s4,a0
    80005f70:	00058493          	mv	s1,a1
    80005f74:	00000913          	li	s2,0
    80005f78:	fff00a93          	li	s5,-1
    80005f7c:	01c0006f          	j	80005f98 <consolewrite+0x58>
    80005f80:	fbf44503          	lbu	a0,-65(s0)
    80005f84:	0019091b          	addiw	s2,s2,1
    80005f88:	00148493          	addi	s1,s1,1
    80005f8c:	00001097          	auipc	ra,0x1
    80005f90:	a9c080e7          	jalr	-1380(ra) # 80006a28 <uartputc>
    80005f94:	03298063          	beq	s3,s2,80005fb4 <consolewrite+0x74>
    80005f98:	00048613          	mv	a2,s1
    80005f9c:	00100693          	li	a3,1
    80005fa0:	000a0593          	mv	a1,s4
    80005fa4:	fbf40513          	addi	a0,s0,-65
    80005fa8:	00000097          	auipc	ra,0x0
    80005fac:	9e4080e7          	jalr	-1564(ra) # 8000598c <either_copyin>
    80005fb0:	fd5518e3          	bne	a0,s5,80005f80 <consolewrite+0x40>
    80005fb4:	04813083          	ld	ra,72(sp)
    80005fb8:	04013403          	ld	s0,64(sp)
    80005fbc:	03813483          	ld	s1,56(sp)
    80005fc0:	02813983          	ld	s3,40(sp)
    80005fc4:	02013a03          	ld	s4,32(sp)
    80005fc8:	01813a83          	ld	s5,24(sp)
    80005fcc:	00090513          	mv	a0,s2
    80005fd0:	03013903          	ld	s2,48(sp)
    80005fd4:	05010113          	addi	sp,sp,80
    80005fd8:	00008067          	ret
    80005fdc:	00000913          	li	s2,0
    80005fe0:	fd5ff06f          	j	80005fb4 <consolewrite+0x74>

0000000080005fe4 <consoleread>:
    80005fe4:	f9010113          	addi	sp,sp,-112
    80005fe8:	06813023          	sd	s0,96(sp)
    80005fec:	04913c23          	sd	s1,88(sp)
    80005ff0:	05213823          	sd	s2,80(sp)
    80005ff4:	05313423          	sd	s3,72(sp)
    80005ff8:	05413023          	sd	s4,64(sp)
    80005ffc:	03513c23          	sd	s5,56(sp)
    80006000:	03613823          	sd	s6,48(sp)
    80006004:	03713423          	sd	s7,40(sp)
    80006008:	03813023          	sd	s8,32(sp)
    8000600c:	06113423          	sd	ra,104(sp)
    80006010:	01913c23          	sd	s9,24(sp)
    80006014:	07010413          	addi	s0,sp,112
    80006018:	00060b93          	mv	s7,a2
    8000601c:	00050913          	mv	s2,a0
    80006020:	00058c13          	mv	s8,a1
    80006024:	00060b1b          	sext.w	s6,a2
    80006028:	00005497          	auipc	s1,0x5
    8000602c:	3e048493          	addi	s1,s1,992 # 8000b408 <cons>
    80006030:	00400993          	li	s3,4
    80006034:	fff00a13          	li	s4,-1
    80006038:	00a00a93          	li	s5,10
    8000603c:	05705e63          	blez	s7,80006098 <consoleread+0xb4>
    80006040:	09c4a703          	lw	a4,156(s1)
    80006044:	0984a783          	lw	a5,152(s1)
    80006048:	0007071b          	sext.w	a4,a4
    8000604c:	08e78463          	beq	a5,a4,800060d4 <consoleread+0xf0>
    80006050:	07f7f713          	andi	a4,a5,127
    80006054:	00e48733          	add	a4,s1,a4
    80006058:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000605c:	0017869b          	addiw	a3,a5,1
    80006060:	08d4ac23          	sw	a3,152(s1)
    80006064:	00070c9b          	sext.w	s9,a4
    80006068:	0b370663          	beq	a4,s3,80006114 <consoleread+0x130>
    8000606c:	00100693          	li	a3,1
    80006070:	f9f40613          	addi	a2,s0,-97
    80006074:	000c0593          	mv	a1,s8
    80006078:	00090513          	mv	a0,s2
    8000607c:	f8e40fa3          	sb	a4,-97(s0)
    80006080:	00000097          	auipc	ra,0x0
    80006084:	8c0080e7          	jalr	-1856(ra) # 80005940 <either_copyout>
    80006088:	01450863          	beq	a0,s4,80006098 <consoleread+0xb4>
    8000608c:	001c0c13          	addi	s8,s8,1
    80006090:	fffb8b9b          	addiw	s7,s7,-1
    80006094:	fb5c94e3          	bne	s9,s5,8000603c <consoleread+0x58>
    80006098:	000b851b          	sext.w	a0,s7
    8000609c:	06813083          	ld	ra,104(sp)
    800060a0:	06013403          	ld	s0,96(sp)
    800060a4:	05813483          	ld	s1,88(sp)
    800060a8:	05013903          	ld	s2,80(sp)
    800060ac:	04813983          	ld	s3,72(sp)
    800060b0:	04013a03          	ld	s4,64(sp)
    800060b4:	03813a83          	ld	s5,56(sp)
    800060b8:	02813b83          	ld	s7,40(sp)
    800060bc:	02013c03          	ld	s8,32(sp)
    800060c0:	01813c83          	ld	s9,24(sp)
    800060c4:	40ab053b          	subw	a0,s6,a0
    800060c8:	03013b03          	ld	s6,48(sp)
    800060cc:	07010113          	addi	sp,sp,112
    800060d0:	00008067          	ret
    800060d4:	00001097          	auipc	ra,0x1
    800060d8:	1d8080e7          	jalr	472(ra) # 800072ac <push_on>
    800060dc:	0984a703          	lw	a4,152(s1)
    800060e0:	09c4a783          	lw	a5,156(s1)
    800060e4:	0007879b          	sext.w	a5,a5
    800060e8:	fef70ce3          	beq	a4,a5,800060e0 <consoleread+0xfc>
    800060ec:	00001097          	auipc	ra,0x1
    800060f0:	234080e7          	jalr	564(ra) # 80007320 <pop_on>
    800060f4:	0984a783          	lw	a5,152(s1)
    800060f8:	07f7f713          	andi	a4,a5,127
    800060fc:	00e48733          	add	a4,s1,a4
    80006100:	01874703          	lbu	a4,24(a4)
    80006104:	0017869b          	addiw	a3,a5,1
    80006108:	08d4ac23          	sw	a3,152(s1)
    8000610c:	00070c9b          	sext.w	s9,a4
    80006110:	f5371ee3          	bne	a4,s3,8000606c <consoleread+0x88>
    80006114:	000b851b          	sext.w	a0,s7
    80006118:	f96bf2e3          	bgeu	s7,s6,8000609c <consoleread+0xb8>
    8000611c:	08f4ac23          	sw	a5,152(s1)
    80006120:	f7dff06f          	j	8000609c <consoleread+0xb8>

0000000080006124 <consputc>:
    80006124:	10000793          	li	a5,256
    80006128:	00f50663          	beq	a0,a5,80006134 <consputc+0x10>
    8000612c:	00001317          	auipc	t1,0x1
    80006130:	9f430067          	jr	-1548(t1) # 80006b20 <uartputc_sync>
    80006134:	ff010113          	addi	sp,sp,-16
    80006138:	00113423          	sd	ra,8(sp)
    8000613c:	00813023          	sd	s0,0(sp)
    80006140:	01010413          	addi	s0,sp,16
    80006144:	00800513          	li	a0,8
    80006148:	00001097          	auipc	ra,0x1
    8000614c:	9d8080e7          	jalr	-1576(ra) # 80006b20 <uartputc_sync>
    80006150:	02000513          	li	a0,32
    80006154:	00001097          	auipc	ra,0x1
    80006158:	9cc080e7          	jalr	-1588(ra) # 80006b20 <uartputc_sync>
    8000615c:	00013403          	ld	s0,0(sp)
    80006160:	00813083          	ld	ra,8(sp)
    80006164:	00800513          	li	a0,8
    80006168:	01010113          	addi	sp,sp,16
    8000616c:	00001317          	auipc	t1,0x1
    80006170:	9b430067          	jr	-1612(t1) # 80006b20 <uartputc_sync>

0000000080006174 <consoleintr>:
    80006174:	fe010113          	addi	sp,sp,-32
    80006178:	00813823          	sd	s0,16(sp)
    8000617c:	00913423          	sd	s1,8(sp)
    80006180:	01213023          	sd	s2,0(sp)
    80006184:	00113c23          	sd	ra,24(sp)
    80006188:	02010413          	addi	s0,sp,32
    8000618c:	00005917          	auipc	s2,0x5
    80006190:	27c90913          	addi	s2,s2,636 # 8000b408 <cons>
    80006194:	00050493          	mv	s1,a0
    80006198:	00090513          	mv	a0,s2
    8000619c:	00001097          	auipc	ra,0x1
    800061a0:	e40080e7          	jalr	-448(ra) # 80006fdc <acquire>
    800061a4:	02048c63          	beqz	s1,800061dc <consoleintr+0x68>
    800061a8:	0a092783          	lw	a5,160(s2)
    800061ac:	09892703          	lw	a4,152(s2)
    800061b0:	07f00693          	li	a3,127
    800061b4:	40e7873b          	subw	a4,a5,a4
    800061b8:	02e6e263          	bltu	a3,a4,800061dc <consoleintr+0x68>
    800061bc:	00d00713          	li	a4,13
    800061c0:	04e48063          	beq	s1,a4,80006200 <consoleintr+0x8c>
    800061c4:	07f7f713          	andi	a4,a5,127
    800061c8:	00e90733          	add	a4,s2,a4
    800061cc:	0017879b          	addiw	a5,a5,1
    800061d0:	0af92023          	sw	a5,160(s2)
    800061d4:	00970c23          	sb	s1,24(a4)
    800061d8:	08f92e23          	sw	a5,156(s2)
    800061dc:	01013403          	ld	s0,16(sp)
    800061e0:	01813083          	ld	ra,24(sp)
    800061e4:	00813483          	ld	s1,8(sp)
    800061e8:	00013903          	ld	s2,0(sp)
    800061ec:	00005517          	auipc	a0,0x5
    800061f0:	21c50513          	addi	a0,a0,540 # 8000b408 <cons>
    800061f4:	02010113          	addi	sp,sp,32
    800061f8:	00001317          	auipc	t1,0x1
    800061fc:	eb030067          	jr	-336(t1) # 800070a8 <release>
    80006200:	00a00493          	li	s1,10
    80006204:	fc1ff06f          	j	800061c4 <consoleintr+0x50>

0000000080006208 <consoleinit>:
    80006208:	fe010113          	addi	sp,sp,-32
    8000620c:	00113c23          	sd	ra,24(sp)
    80006210:	00813823          	sd	s0,16(sp)
    80006214:	00913423          	sd	s1,8(sp)
    80006218:	02010413          	addi	s0,sp,32
    8000621c:	00005497          	auipc	s1,0x5
    80006220:	1ec48493          	addi	s1,s1,492 # 8000b408 <cons>
    80006224:	00048513          	mv	a0,s1
    80006228:	00002597          	auipc	a1,0x2
    8000622c:	29858593          	addi	a1,a1,664 # 800084c0 <_ZL6digits+0x150>
    80006230:	00001097          	auipc	ra,0x1
    80006234:	d88080e7          	jalr	-632(ra) # 80006fb8 <initlock>
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	7ac080e7          	jalr	1964(ra) # 800069e4 <uartinit>
    80006240:	01813083          	ld	ra,24(sp)
    80006244:	01013403          	ld	s0,16(sp)
    80006248:	00000797          	auipc	a5,0x0
    8000624c:	d9c78793          	addi	a5,a5,-612 # 80005fe4 <consoleread>
    80006250:	0af4bc23          	sd	a5,184(s1)
    80006254:	00000797          	auipc	a5,0x0
    80006258:	cec78793          	addi	a5,a5,-788 # 80005f40 <consolewrite>
    8000625c:	0cf4b023          	sd	a5,192(s1)
    80006260:	00813483          	ld	s1,8(sp)
    80006264:	02010113          	addi	sp,sp,32
    80006268:	00008067          	ret

000000008000626c <console_read>:
    8000626c:	ff010113          	addi	sp,sp,-16
    80006270:	00813423          	sd	s0,8(sp)
    80006274:	01010413          	addi	s0,sp,16
    80006278:	00813403          	ld	s0,8(sp)
    8000627c:	00005317          	auipc	t1,0x5
    80006280:	24433303          	ld	t1,580(t1) # 8000b4c0 <devsw+0x10>
    80006284:	01010113          	addi	sp,sp,16
    80006288:	00030067          	jr	t1

000000008000628c <console_write>:
    8000628c:	ff010113          	addi	sp,sp,-16
    80006290:	00813423          	sd	s0,8(sp)
    80006294:	01010413          	addi	s0,sp,16
    80006298:	00813403          	ld	s0,8(sp)
    8000629c:	00005317          	auipc	t1,0x5
    800062a0:	22c33303          	ld	t1,556(t1) # 8000b4c8 <devsw+0x18>
    800062a4:	01010113          	addi	sp,sp,16
    800062a8:	00030067          	jr	t1

00000000800062ac <panic>:
    800062ac:	fe010113          	addi	sp,sp,-32
    800062b0:	00113c23          	sd	ra,24(sp)
    800062b4:	00813823          	sd	s0,16(sp)
    800062b8:	00913423          	sd	s1,8(sp)
    800062bc:	02010413          	addi	s0,sp,32
    800062c0:	00050493          	mv	s1,a0
    800062c4:	00002517          	auipc	a0,0x2
    800062c8:	20450513          	addi	a0,a0,516 # 800084c8 <_ZL6digits+0x158>
    800062cc:	00005797          	auipc	a5,0x5
    800062d0:	2807ae23          	sw	zero,668(a5) # 8000b568 <pr+0x18>
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	034080e7          	jalr	52(ra) # 80006308 <__printf>
    800062dc:	00048513          	mv	a0,s1
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	028080e7          	jalr	40(ra) # 80006308 <__printf>
    800062e8:	00002517          	auipc	a0,0x2
    800062ec:	eb050513          	addi	a0,a0,-336 # 80008198 <CONSOLE_STATUS+0x188>
    800062f0:	00000097          	auipc	ra,0x0
    800062f4:	018080e7          	jalr	24(ra) # 80006308 <__printf>
    800062f8:	00100793          	li	a5,1
    800062fc:	00004717          	auipc	a4,0x4
    80006300:	f6f72e23          	sw	a5,-132(a4) # 8000a278 <panicked>
    80006304:	0000006f          	j	80006304 <panic+0x58>

0000000080006308 <__printf>:
    80006308:	f3010113          	addi	sp,sp,-208
    8000630c:	08813023          	sd	s0,128(sp)
    80006310:	07313423          	sd	s3,104(sp)
    80006314:	09010413          	addi	s0,sp,144
    80006318:	05813023          	sd	s8,64(sp)
    8000631c:	08113423          	sd	ra,136(sp)
    80006320:	06913c23          	sd	s1,120(sp)
    80006324:	07213823          	sd	s2,112(sp)
    80006328:	07413023          	sd	s4,96(sp)
    8000632c:	05513c23          	sd	s5,88(sp)
    80006330:	05613823          	sd	s6,80(sp)
    80006334:	05713423          	sd	s7,72(sp)
    80006338:	03913c23          	sd	s9,56(sp)
    8000633c:	03a13823          	sd	s10,48(sp)
    80006340:	03b13423          	sd	s11,40(sp)
    80006344:	00005317          	auipc	t1,0x5
    80006348:	20c30313          	addi	t1,t1,524 # 8000b550 <pr>
    8000634c:	01832c03          	lw	s8,24(t1)
    80006350:	00b43423          	sd	a1,8(s0)
    80006354:	00c43823          	sd	a2,16(s0)
    80006358:	00d43c23          	sd	a3,24(s0)
    8000635c:	02e43023          	sd	a4,32(s0)
    80006360:	02f43423          	sd	a5,40(s0)
    80006364:	03043823          	sd	a6,48(s0)
    80006368:	03143c23          	sd	a7,56(s0)
    8000636c:	00050993          	mv	s3,a0
    80006370:	4a0c1663          	bnez	s8,8000681c <__printf+0x514>
    80006374:	60098c63          	beqz	s3,8000698c <__printf+0x684>
    80006378:	0009c503          	lbu	a0,0(s3)
    8000637c:	00840793          	addi	a5,s0,8
    80006380:	f6f43c23          	sd	a5,-136(s0)
    80006384:	00000493          	li	s1,0
    80006388:	22050063          	beqz	a0,800065a8 <__printf+0x2a0>
    8000638c:	00002a37          	lui	s4,0x2
    80006390:	00018ab7          	lui	s5,0x18
    80006394:	000f4b37          	lui	s6,0xf4
    80006398:	00989bb7          	lui	s7,0x989
    8000639c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800063a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800063a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800063a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800063ac:	00148c9b          	addiw	s9,s1,1
    800063b0:	02500793          	li	a5,37
    800063b4:	01998933          	add	s2,s3,s9
    800063b8:	38f51263          	bne	a0,a5,8000673c <__printf+0x434>
    800063bc:	00094783          	lbu	a5,0(s2)
    800063c0:	00078c9b          	sext.w	s9,a5
    800063c4:	1e078263          	beqz	a5,800065a8 <__printf+0x2a0>
    800063c8:	0024849b          	addiw	s1,s1,2
    800063cc:	07000713          	li	a4,112
    800063d0:	00998933          	add	s2,s3,s1
    800063d4:	38e78a63          	beq	a5,a4,80006768 <__printf+0x460>
    800063d8:	20f76863          	bltu	a4,a5,800065e8 <__printf+0x2e0>
    800063dc:	42a78863          	beq	a5,a0,8000680c <__printf+0x504>
    800063e0:	06400713          	li	a4,100
    800063e4:	40e79663          	bne	a5,a4,800067f0 <__printf+0x4e8>
    800063e8:	f7843783          	ld	a5,-136(s0)
    800063ec:	0007a603          	lw	a2,0(a5)
    800063f0:	00878793          	addi	a5,a5,8
    800063f4:	f6f43c23          	sd	a5,-136(s0)
    800063f8:	42064a63          	bltz	a2,8000682c <__printf+0x524>
    800063fc:	00a00713          	li	a4,10
    80006400:	02e677bb          	remuw	a5,a2,a4
    80006404:	00002d97          	auipc	s11,0x2
    80006408:	0ecd8d93          	addi	s11,s11,236 # 800084f0 <digits>
    8000640c:	00900593          	li	a1,9
    80006410:	0006051b          	sext.w	a0,a2
    80006414:	00000c93          	li	s9,0
    80006418:	02079793          	slli	a5,a5,0x20
    8000641c:	0207d793          	srli	a5,a5,0x20
    80006420:	00fd87b3          	add	a5,s11,a5
    80006424:	0007c783          	lbu	a5,0(a5)
    80006428:	02e656bb          	divuw	a3,a2,a4
    8000642c:	f8f40023          	sb	a5,-128(s0)
    80006430:	14c5d863          	bge	a1,a2,80006580 <__printf+0x278>
    80006434:	06300593          	li	a1,99
    80006438:	00100c93          	li	s9,1
    8000643c:	02e6f7bb          	remuw	a5,a3,a4
    80006440:	02079793          	slli	a5,a5,0x20
    80006444:	0207d793          	srli	a5,a5,0x20
    80006448:	00fd87b3          	add	a5,s11,a5
    8000644c:	0007c783          	lbu	a5,0(a5)
    80006450:	02e6d73b          	divuw	a4,a3,a4
    80006454:	f8f400a3          	sb	a5,-127(s0)
    80006458:	12a5f463          	bgeu	a1,a0,80006580 <__printf+0x278>
    8000645c:	00a00693          	li	a3,10
    80006460:	00900593          	li	a1,9
    80006464:	02d777bb          	remuw	a5,a4,a3
    80006468:	02079793          	slli	a5,a5,0x20
    8000646c:	0207d793          	srli	a5,a5,0x20
    80006470:	00fd87b3          	add	a5,s11,a5
    80006474:	0007c503          	lbu	a0,0(a5)
    80006478:	02d757bb          	divuw	a5,a4,a3
    8000647c:	f8a40123          	sb	a0,-126(s0)
    80006480:	48e5f263          	bgeu	a1,a4,80006904 <__printf+0x5fc>
    80006484:	06300513          	li	a0,99
    80006488:	02d7f5bb          	remuw	a1,a5,a3
    8000648c:	02059593          	slli	a1,a1,0x20
    80006490:	0205d593          	srli	a1,a1,0x20
    80006494:	00bd85b3          	add	a1,s11,a1
    80006498:	0005c583          	lbu	a1,0(a1)
    8000649c:	02d7d7bb          	divuw	a5,a5,a3
    800064a0:	f8b401a3          	sb	a1,-125(s0)
    800064a4:	48e57263          	bgeu	a0,a4,80006928 <__printf+0x620>
    800064a8:	3e700513          	li	a0,999
    800064ac:	02d7f5bb          	remuw	a1,a5,a3
    800064b0:	02059593          	slli	a1,a1,0x20
    800064b4:	0205d593          	srli	a1,a1,0x20
    800064b8:	00bd85b3          	add	a1,s11,a1
    800064bc:	0005c583          	lbu	a1,0(a1)
    800064c0:	02d7d7bb          	divuw	a5,a5,a3
    800064c4:	f8b40223          	sb	a1,-124(s0)
    800064c8:	46e57663          	bgeu	a0,a4,80006934 <__printf+0x62c>
    800064cc:	02d7f5bb          	remuw	a1,a5,a3
    800064d0:	02059593          	slli	a1,a1,0x20
    800064d4:	0205d593          	srli	a1,a1,0x20
    800064d8:	00bd85b3          	add	a1,s11,a1
    800064dc:	0005c583          	lbu	a1,0(a1)
    800064e0:	02d7d7bb          	divuw	a5,a5,a3
    800064e4:	f8b402a3          	sb	a1,-123(s0)
    800064e8:	46ea7863          	bgeu	s4,a4,80006958 <__printf+0x650>
    800064ec:	02d7f5bb          	remuw	a1,a5,a3
    800064f0:	02059593          	slli	a1,a1,0x20
    800064f4:	0205d593          	srli	a1,a1,0x20
    800064f8:	00bd85b3          	add	a1,s11,a1
    800064fc:	0005c583          	lbu	a1,0(a1)
    80006500:	02d7d7bb          	divuw	a5,a5,a3
    80006504:	f8b40323          	sb	a1,-122(s0)
    80006508:	3eeaf863          	bgeu	s5,a4,800068f8 <__printf+0x5f0>
    8000650c:	02d7f5bb          	remuw	a1,a5,a3
    80006510:	02059593          	slli	a1,a1,0x20
    80006514:	0205d593          	srli	a1,a1,0x20
    80006518:	00bd85b3          	add	a1,s11,a1
    8000651c:	0005c583          	lbu	a1,0(a1)
    80006520:	02d7d7bb          	divuw	a5,a5,a3
    80006524:	f8b403a3          	sb	a1,-121(s0)
    80006528:	42eb7e63          	bgeu	s6,a4,80006964 <__printf+0x65c>
    8000652c:	02d7f5bb          	remuw	a1,a5,a3
    80006530:	02059593          	slli	a1,a1,0x20
    80006534:	0205d593          	srli	a1,a1,0x20
    80006538:	00bd85b3          	add	a1,s11,a1
    8000653c:	0005c583          	lbu	a1,0(a1)
    80006540:	02d7d7bb          	divuw	a5,a5,a3
    80006544:	f8b40423          	sb	a1,-120(s0)
    80006548:	42ebfc63          	bgeu	s7,a4,80006980 <__printf+0x678>
    8000654c:	02079793          	slli	a5,a5,0x20
    80006550:	0207d793          	srli	a5,a5,0x20
    80006554:	00fd8db3          	add	s11,s11,a5
    80006558:	000dc703          	lbu	a4,0(s11)
    8000655c:	00a00793          	li	a5,10
    80006560:	00900c93          	li	s9,9
    80006564:	f8e404a3          	sb	a4,-119(s0)
    80006568:	00065c63          	bgez	a2,80006580 <__printf+0x278>
    8000656c:	f9040713          	addi	a4,s0,-112
    80006570:	00f70733          	add	a4,a4,a5
    80006574:	02d00693          	li	a3,45
    80006578:	fed70823          	sb	a3,-16(a4)
    8000657c:	00078c93          	mv	s9,a5
    80006580:	f8040793          	addi	a5,s0,-128
    80006584:	01978cb3          	add	s9,a5,s9
    80006588:	f7f40d13          	addi	s10,s0,-129
    8000658c:	000cc503          	lbu	a0,0(s9)
    80006590:	fffc8c93          	addi	s9,s9,-1
    80006594:	00000097          	auipc	ra,0x0
    80006598:	b90080e7          	jalr	-1136(ra) # 80006124 <consputc>
    8000659c:	ffac98e3          	bne	s9,s10,8000658c <__printf+0x284>
    800065a0:	00094503          	lbu	a0,0(s2)
    800065a4:	e00514e3          	bnez	a0,800063ac <__printf+0xa4>
    800065a8:	1a0c1663          	bnez	s8,80006754 <__printf+0x44c>
    800065ac:	08813083          	ld	ra,136(sp)
    800065b0:	08013403          	ld	s0,128(sp)
    800065b4:	07813483          	ld	s1,120(sp)
    800065b8:	07013903          	ld	s2,112(sp)
    800065bc:	06813983          	ld	s3,104(sp)
    800065c0:	06013a03          	ld	s4,96(sp)
    800065c4:	05813a83          	ld	s5,88(sp)
    800065c8:	05013b03          	ld	s6,80(sp)
    800065cc:	04813b83          	ld	s7,72(sp)
    800065d0:	04013c03          	ld	s8,64(sp)
    800065d4:	03813c83          	ld	s9,56(sp)
    800065d8:	03013d03          	ld	s10,48(sp)
    800065dc:	02813d83          	ld	s11,40(sp)
    800065e0:	0d010113          	addi	sp,sp,208
    800065e4:	00008067          	ret
    800065e8:	07300713          	li	a4,115
    800065ec:	1ce78a63          	beq	a5,a4,800067c0 <__printf+0x4b8>
    800065f0:	07800713          	li	a4,120
    800065f4:	1ee79e63          	bne	a5,a4,800067f0 <__printf+0x4e8>
    800065f8:	f7843783          	ld	a5,-136(s0)
    800065fc:	0007a703          	lw	a4,0(a5)
    80006600:	00878793          	addi	a5,a5,8
    80006604:	f6f43c23          	sd	a5,-136(s0)
    80006608:	28074263          	bltz	a4,8000688c <__printf+0x584>
    8000660c:	00002d97          	auipc	s11,0x2
    80006610:	ee4d8d93          	addi	s11,s11,-284 # 800084f0 <digits>
    80006614:	00f77793          	andi	a5,a4,15
    80006618:	00fd87b3          	add	a5,s11,a5
    8000661c:	0007c683          	lbu	a3,0(a5)
    80006620:	00f00613          	li	a2,15
    80006624:	0007079b          	sext.w	a5,a4
    80006628:	f8d40023          	sb	a3,-128(s0)
    8000662c:	0047559b          	srliw	a1,a4,0x4
    80006630:	0047569b          	srliw	a3,a4,0x4
    80006634:	00000c93          	li	s9,0
    80006638:	0ee65063          	bge	a2,a4,80006718 <__printf+0x410>
    8000663c:	00f6f693          	andi	a3,a3,15
    80006640:	00dd86b3          	add	a3,s11,a3
    80006644:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006648:	0087d79b          	srliw	a5,a5,0x8
    8000664c:	00100c93          	li	s9,1
    80006650:	f8d400a3          	sb	a3,-127(s0)
    80006654:	0cb67263          	bgeu	a2,a1,80006718 <__printf+0x410>
    80006658:	00f7f693          	andi	a3,a5,15
    8000665c:	00dd86b3          	add	a3,s11,a3
    80006660:	0006c583          	lbu	a1,0(a3)
    80006664:	00f00613          	li	a2,15
    80006668:	0047d69b          	srliw	a3,a5,0x4
    8000666c:	f8b40123          	sb	a1,-126(s0)
    80006670:	0047d593          	srli	a1,a5,0x4
    80006674:	28f67e63          	bgeu	a2,a5,80006910 <__printf+0x608>
    80006678:	00f6f693          	andi	a3,a3,15
    8000667c:	00dd86b3          	add	a3,s11,a3
    80006680:	0006c503          	lbu	a0,0(a3)
    80006684:	0087d813          	srli	a6,a5,0x8
    80006688:	0087d69b          	srliw	a3,a5,0x8
    8000668c:	f8a401a3          	sb	a0,-125(s0)
    80006690:	28b67663          	bgeu	a2,a1,8000691c <__printf+0x614>
    80006694:	00f6f693          	andi	a3,a3,15
    80006698:	00dd86b3          	add	a3,s11,a3
    8000669c:	0006c583          	lbu	a1,0(a3)
    800066a0:	00c7d513          	srli	a0,a5,0xc
    800066a4:	00c7d69b          	srliw	a3,a5,0xc
    800066a8:	f8b40223          	sb	a1,-124(s0)
    800066ac:	29067a63          	bgeu	a2,a6,80006940 <__printf+0x638>
    800066b0:	00f6f693          	andi	a3,a3,15
    800066b4:	00dd86b3          	add	a3,s11,a3
    800066b8:	0006c583          	lbu	a1,0(a3)
    800066bc:	0107d813          	srli	a6,a5,0x10
    800066c0:	0107d69b          	srliw	a3,a5,0x10
    800066c4:	f8b402a3          	sb	a1,-123(s0)
    800066c8:	28a67263          	bgeu	a2,a0,8000694c <__printf+0x644>
    800066cc:	00f6f693          	andi	a3,a3,15
    800066d0:	00dd86b3          	add	a3,s11,a3
    800066d4:	0006c683          	lbu	a3,0(a3)
    800066d8:	0147d79b          	srliw	a5,a5,0x14
    800066dc:	f8d40323          	sb	a3,-122(s0)
    800066e0:	21067663          	bgeu	a2,a6,800068ec <__printf+0x5e4>
    800066e4:	02079793          	slli	a5,a5,0x20
    800066e8:	0207d793          	srli	a5,a5,0x20
    800066ec:	00fd8db3          	add	s11,s11,a5
    800066f0:	000dc683          	lbu	a3,0(s11)
    800066f4:	00800793          	li	a5,8
    800066f8:	00700c93          	li	s9,7
    800066fc:	f8d403a3          	sb	a3,-121(s0)
    80006700:	00075c63          	bgez	a4,80006718 <__printf+0x410>
    80006704:	f9040713          	addi	a4,s0,-112
    80006708:	00f70733          	add	a4,a4,a5
    8000670c:	02d00693          	li	a3,45
    80006710:	fed70823          	sb	a3,-16(a4)
    80006714:	00078c93          	mv	s9,a5
    80006718:	f8040793          	addi	a5,s0,-128
    8000671c:	01978cb3          	add	s9,a5,s9
    80006720:	f7f40d13          	addi	s10,s0,-129
    80006724:	000cc503          	lbu	a0,0(s9)
    80006728:	fffc8c93          	addi	s9,s9,-1
    8000672c:	00000097          	auipc	ra,0x0
    80006730:	9f8080e7          	jalr	-1544(ra) # 80006124 <consputc>
    80006734:	ff9d18e3          	bne	s10,s9,80006724 <__printf+0x41c>
    80006738:	0100006f          	j	80006748 <__printf+0x440>
    8000673c:	00000097          	auipc	ra,0x0
    80006740:	9e8080e7          	jalr	-1560(ra) # 80006124 <consputc>
    80006744:	000c8493          	mv	s1,s9
    80006748:	00094503          	lbu	a0,0(s2)
    8000674c:	c60510e3          	bnez	a0,800063ac <__printf+0xa4>
    80006750:	e40c0ee3          	beqz	s8,800065ac <__printf+0x2a4>
    80006754:	00005517          	auipc	a0,0x5
    80006758:	dfc50513          	addi	a0,a0,-516 # 8000b550 <pr>
    8000675c:	00001097          	auipc	ra,0x1
    80006760:	94c080e7          	jalr	-1716(ra) # 800070a8 <release>
    80006764:	e49ff06f          	j	800065ac <__printf+0x2a4>
    80006768:	f7843783          	ld	a5,-136(s0)
    8000676c:	03000513          	li	a0,48
    80006770:	01000d13          	li	s10,16
    80006774:	00878713          	addi	a4,a5,8
    80006778:	0007bc83          	ld	s9,0(a5)
    8000677c:	f6e43c23          	sd	a4,-136(s0)
    80006780:	00000097          	auipc	ra,0x0
    80006784:	9a4080e7          	jalr	-1628(ra) # 80006124 <consputc>
    80006788:	07800513          	li	a0,120
    8000678c:	00000097          	auipc	ra,0x0
    80006790:	998080e7          	jalr	-1640(ra) # 80006124 <consputc>
    80006794:	00002d97          	auipc	s11,0x2
    80006798:	d5cd8d93          	addi	s11,s11,-676 # 800084f0 <digits>
    8000679c:	03ccd793          	srli	a5,s9,0x3c
    800067a0:	00fd87b3          	add	a5,s11,a5
    800067a4:	0007c503          	lbu	a0,0(a5)
    800067a8:	fffd0d1b          	addiw	s10,s10,-1
    800067ac:	004c9c93          	slli	s9,s9,0x4
    800067b0:	00000097          	auipc	ra,0x0
    800067b4:	974080e7          	jalr	-1676(ra) # 80006124 <consputc>
    800067b8:	fe0d12e3          	bnez	s10,8000679c <__printf+0x494>
    800067bc:	f8dff06f          	j	80006748 <__printf+0x440>
    800067c0:	f7843783          	ld	a5,-136(s0)
    800067c4:	0007bc83          	ld	s9,0(a5)
    800067c8:	00878793          	addi	a5,a5,8
    800067cc:	f6f43c23          	sd	a5,-136(s0)
    800067d0:	000c9a63          	bnez	s9,800067e4 <__printf+0x4dc>
    800067d4:	1080006f          	j	800068dc <__printf+0x5d4>
    800067d8:	001c8c93          	addi	s9,s9,1
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	948080e7          	jalr	-1720(ra) # 80006124 <consputc>
    800067e4:	000cc503          	lbu	a0,0(s9)
    800067e8:	fe0518e3          	bnez	a0,800067d8 <__printf+0x4d0>
    800067ec:	f5dff06f          	j	80006748 <__printf+0x440>
    800067f0:	02500513          	li	a0,37
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	930080e7          	jalr	-1744(ra) # 80006124 <consputc>
    800067fc:	000c8513          	mv	a0,s9
    80006800:	00000097          	auipc	ra,0x0
    80006804:	924080e7          	jalr	-1756(ra) # 80006124 <consputc>
    80006808:	f41ff06f          	j	80006748 <__printf+0x440>
    8000680c:	02500513          	li	a0,37
    80006810:	00000097          	auipc	ra,0x0
    80006814:	914080e7          	jalr	-1772(ra) # 80006124 <consputc>
    80006818:	f31ff06f          	j	80006748 <__printf+0x440>
    8000681c:	00030513          	mv	a0,t1
    80006820:	00000097          	auipc	ra,0x0
    80006824:	7bc080e7          	jalr	1980(ra) # 80006fdc <acquire>
    80006828:	b4dff06f          	j	80006374 <__printf+0x6c>
    8000682c:	40c0053b          	negw	a0,a2
    80006830:	00a00713          	li	a4,10
    80006834:	02e576bb          	remuw	a3,a0,a4
    80006838:	00002d97          	auipc	s11,0x2
    8000683c:	cb8d8d93          	addi	s11,s11,-840 # 800084f0 <digits>
    80006840:	ff700593          	li	a1,-9
    80006844:	02069693          	slli	a3,a3,0x20
    80006848:	0206d693          	srli	a3,a3,0x20
    8000684c:	00dd86b3          	add	a3,s11,a3
    80006850:	0006c683          	lbu	a3,0(a3)
    80006854:	02e557bb          	divuw	a5,a0,a4
    80006858:	f8d40023          	sb	a3,-128(s0)
    8000685c:	10b65e63          	bge	a2,a1,80006978 <__printf+0x670>
    80006860:	06300593          	li	a1,99
    80006864:	02e7f6bb          	remuw	a3,a5,a4
    80006868:	02069693          	slli	a3,a3,0x20
    8000686c:	0206d693          	srli	a3,a3,0x20
    80006870:	00dd86b3          	add	a3,s11,a3
    80006874:	0006c683          	lbu	a3,0(a3)
    80006878:	02e7d73b          	divuw	a4,a5,a4
    8000687c:	00200793          	li	a5,2
    80006880:	f8d400a3          	sb	a3,-127(s0)
    80006884:	bca5ece3          	bltu	a1,a0,8000645c <__printf+0x154>
    80006888:	ce5ff06f          	j	8000656c <__printf+0x264>
    8000688c:	40e007bb          	negw	a5,a4
    80006890:	00002d97          	auipc	s11,0x2
    80006894:	c60d8d93          	addi	s11,s11,-928 # 800084f0 <digits>
    80006898:	00f7f693          	andi	a3,a5,15
    8000689c:	00dd86b3          	add	a3,s11,a3
    800068a0:	0006c583          	lbu	a1,0(a3)
    800068a4:	ff100613          	li	a2,-15
    800068a8:	0047d69b          	srliw	a3,a5,0x4
    800068ac:	f8b40023          	sb	a1,-128(s0)
    800068b0:	0047d59b          	srliw	a1,a5,0x4
    800068b4:	0ac75e63          	bge	a4,a2,80006970 <__printf+0x668>
    800068b8:	00f6f693          	andi	a3,a3,15
    800068bc:	00dd86b3          	add	a3,s11,a3
    800068c0:	0006c603          	lbu	a2,0(a3)
    800068c4:	00f00693          	li	a3,15
    800068c8:	0087d79b          	srliw	a5,a5,0x8
    800068cc:	f8c400a3          	sb	a2,-127(s0)
    800068d0:	d8b6e4e3          	bltu	a3,a1,80006658 <__printf+0x350>
    800068d4:	00200793          	li	a5,2
    800068d8:	e2dff06f          	j	80006704 <__printf+0x3fc>
    800068dc:	00002c97          	auipc	s9,0x2
    800068e0:	bf4c8c93          	addi	s9,s9,-1036 # 800084d0 <_ZL6digits+0x160>
    800068e4:	02800513          	li	a0,40
    800068e8:	ef1ff06f          	j	800067d8 <__printf+0x4d0>
    800068ec:	00700793          	li	a5,7
    800068f0:	00600c93          	li	s9,6
    800068f4:	e0dff06f          	j	80006700 <__printf+0x3f8>
    800068f8:	00700793          	li	a5,7
    800068fc:	00600c93          	li	s9,6
    80006900:	c69ff06f          	j	80006568 <__printf+0x260>
    80006904:	00300793          	li	a5,3
    80006908:	00200c93          	li	s9,2
    8000690c:	c5dff06f          	j	80006568 <__printf+0x260>
    80006910:	00300793          	li	a5,3
    80006914:	00200c93          	li	s9,2
    80006918:	de9ff06f          	j	80006700 <__printf+0x3f8>
    8000691c:	00400793          	li	a5,4
    80006920:	00300c93          	li	s9,3
    80006924:	dddff06f          	j	80006700 <__printf+0x3f8>
    80006928:	00400793          	li	a5,4
    8000692c:	00300c93          	li	s9,3
    80006930:	c39ff06f          	j	80006568 <__printf+0x260>
    80006934:	00500793          	li	a5,5
    80006938:	00400c93          	li	s9,4
    8000693c:	c2dff06f          	j	80006568 <__printf+0x260>
    80006940:	00500793          	li	a5,5
    80006944:	00400c93          	li	s9,4
    80006948:	db9ff06f          	j	80006700 <__printf+0x3f8>
    8000694c:	00600793          	li	a5,6
    80006950:	00500c93          	li	s9,5
    80006954:	dadff06f          	j	80006700 <__printf+0x3f8>
    80006958:	00600793          	li	a5,6
    8000695c:	00500c93          	li	s9,5
    80006960:	c09ff06f          	j	80006568 <__printf+0x260>
    80006964:	00800793          	li	a5,8
    80006968:	00700c93          	li	s9,7
    8000696c:	bfdff06f          	j	80006568 <__printf+0x260>
    80006970:	00100793          	li	a5,1
    80006974:	d91ff06f          	j	80006704 <__printf+0x3fc>
    80006978:	00100793          	li	a5,1
    8000697c:	bf1ff06f          	j	8000656c <__printf+0x264>
    80006980:	00900793          	li	a5,9
    80006984:	00800c93          	li	s9,8
    80006988:	be1ff06f          	j	80006568 <__printf+0x260>
    8000698c:	00002517          	auipc	a0,0x2
    80006990:	b4c50513          	addi	a0,a0,-1204 # 800084d8 <_ZL6digits+0x168>
    80006994:	00000097          	auipc	ra,0x0
    80006998:	918080e7          	jalr	-1768(ra) # 800062ac <panic>

000000008000699c <printfinit>:
    8000699c:	fe010113          	addi	sp,sp,-32
    800069a0:	00813823          	sd	s0,16(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	02010413          	addi	s0,sp,32
    800069b0:	00005497          	auipc	s1,0x5
    800069b4:	ba048493          	addi	s1,s1,-1120 # 8000b550 <pr>
    800069b8:	00048513          	mv	a0,s1
    800069bc:	00002597          	auipc	a1,0x2
    800069c0:	b2c58593          	addi	a1,a1,-1236 # 800084e8 <_ZL6digits+0x178>
    800069c4:	00000097          	auipc	ra,0x0
    800069c8:	5f4080e7          	jalr	1524(ra) # 80006fb8 <initlock>
    800069cc:	01813083          	ld	ra,24(sp)
    800069d0:	01013403          	ld	s0,16(sp)
    800069d4:	0004ac23          	sw	zero,24(s1)
    800069d8:	00813483          	ld	s1,8(sp)
    800069dc:	02010113          	addi	sp,sp,32
    800069e0:	00008067          	ret

00000000800069e4 <uartinit>:
    800069e4:	ff010113          	addi	sp,sp,-16
    800069e8:	00813423          	sd	s0,8(sp)
    800069ec:	01010413          	addi	s0,sp,16
    800069f0:	100007b7          	lui	a5,0x10000
    800069f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800069f8:	f8000713          	li	a4,-128
    800069fc:	00e781a3          	sb	a4,3(a5)
    80006a00:	00300713          	li	a4,3
    80006a04:	00e78023          	sb	a4,0(a5)
    80006a08:	000780a3          	sb	zero,1(a5)
    80006a0c:	00e781a3          	sb	a4,3(a5)
    80006a10:	00700693          	li	a3,7
    80006a14:	00d78123          	sb	a3,2(a5)
    80006a18:	00e780a3          	sb	a4,1(a5)
    80006a1c:	00813403          	ld	s0,8(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret

0000000080006a28 <uartputc>:
    80006a28:	00004797          	auipc	a5,0x4
    80006a2c:	8507a783          	lw	a5,-1968(a5) # 8000a278 <panicked>
    80006a30:	00078463          	beqz	a5,80006a38 <uartputc+0x10>
    80006a34:	0000006f          	j	80006a34 <uartputc+0xc>
    80006a38:	fd010113          	addi	sp,sp,-48
    80006a3c:	02813023          	sd	s0,32(sp)
    80006a40:	00913c23          	sd	s1,24(sp)
    80006a44:	01213823          	sd	s2,16(sp)
    80006a48:	01313423          	sd	s3,8(sp)
    80006a4c:	02113423          	sd	ra,40(sp)
    80006a50:	03010413          	addi	s0,sp,48
    80006a54:	00004917          	auipc	s2,0x4
    80006a58:	82c90913          	addi	s2,s2,-2004 # 8000a280 <uart_tx_r>
    80006a5c:	00093783          	ld	a5,0(s2)
    80006a60:	00004497          	auipc	s1,0x4
    80006a64:	82848493          	addi	s1,s1,-2008 # 8000a288 <uart_tx_w>
    80006a68:	0004b703          	ld	a4,0(s1)
    80006a6c:	02078693          	addi	a3,a5,32
    80006a70:	00050993          	mv	s3,a0
    80006a74:	02e69c63          	bne	a3,a4,80006aac <uartputc+0x84>
    80006a78:	00001097          	auipc	ra,0x1
    80006a7c:	834080e7          	jalr	-1996(ra) # 800072ac <push_on>
    80006a80:	00093783          	ld	a5,0(s2)
    80006a84:	0004b703          	ld	a4,0(s1)
    80006a88:	02078793          	addi	a5,a5,32
    80006a8c:	00e79463          	bne	a5,a4,80006a94 <uartputc+0x6c>
    80006a90:	0000006f          	j	80006a90 <uartputc+0x68>
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	88c080e7          	jalr	-1908(ra) # 80007320 <pop_on>
    80006a9c:	00093783          	ld	a5,0(s2)
    80006aa0:	0004b703          	ld	a4,0(s1)
    80006aa4:	02078693          	addi	a3,a5,32
    80006aa8:	fce688e3          	beq	a3,a4,80006a78 <uartputc+0x50>
    80006aac:	01f77693          	andi	a3,a4,31
    80006ab0:	00005597          	auipc	a1,0x5
    80006ab4:	ac058593          	addi	a1,a1,-1344 # 8000b570 <uart_tx_buf>
    80006ab8:	00d586b3          	add	a3,a1,a3
    80006abc:	00170713          	addi	a4,a4,1
    80006ac0:	01368023          	sb	s3,0(a3)
    80006ac4:	00e4b023          	sd	a4,0(s1)
    80006ac8:	10000637          	lui	a2,0x10000
    80006acc:	02f71063          	bne	a4,a5,80006aec <uartputc+0xc4>
    80006ad0:	0340006f          	j	80006b04 <uartputc+0xdc>
    80006ad4:	00074703          	lbu	a4,0(a4)
    80006ad8:	00f93023          	sd	a5,0(s2)
    80006adc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006ae0:	00093783          	ld	a5,0(s2)
    80006ae4:	0004b703          	ld	a4,0(s1)
    80006ae8:	00f70e63          	beq	a4,a5,80006b04 <uartputc+0xdc>
    80006aec:	00564683          	lbu	a3,5(a2)
    80006af0:	01f7f713          	andi	a4,a5,31
    80006af4:	00e58733          	add	a4,a1,a4
    80006af8:	0206f693          	andi	a3,a3,32
    80006afc:	00178793          	addi	a5,a5,1
    80006b00:	fc069ae3          	bnez	a3,80006ad4 <uartputc+0xac>
    80006b04:	02813083          	ld	ra,40(sp)
    80006b08:	02013403          	ld	s0,32(sp)
    80006b0c:	01813483          	ld	s1,24(sp)
    80006b10:	01013903          	ld	s2,16(sp)
    80006b14:	00813983          	ld	s3,8(sp)
    80006b18:	03010113          	addi	sp,sp,48
    80006b1c:	00008067          	ret

0000000080006b20 <uartputc_sync>:
    80006b20:	ff010113          	addi	sp,sp,-16
    80006b24:	00813423          	sd	s0,8(sp)
    80006b28:	01010413          	addi	s0,sp,16
    80006b2c:	00003717          	auipc	a4,0x3
    80006b30:	74c72703          	lw	a4,1868(a4) # 8000a278 <panicked>
    80006b34:	02071663          	bnez	a4,80006b60 <uartputc_sync+0x40>
    80006b38:	00050793          	mv	a5,a0
    80006b3c:	100006b7          	lui	a3,0x10000
    80006b40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006b44:	02077713          	andi	a4,a4,32
    80006b48:	fe070ce3          	beqz	a4,80006b40 <uartputc_sync+0x20>
    80006b4c:	0ff7f793          	andi	a5,a5,255
    80006b50:	00f68023          	sb	a5,0(a3)
    80006b54:	00813403          	ld	s0,8(sp)
    80006b58:	01010113          	addi	sp,sp,16
    80006b5c:	00008067          	ret
    80006b60:	0000006f          	j	80006b60 <uartputc_sync+0x40>

0000000080006b64 <uartstart>:
    80006b64:	ff010113          	addi	sp,sp,-16
    80006b68:	00813423          	sd	s0,8(sp)
    80006b6c:	01010413          	addi	s0,sp,16
    80006b70:	00003617          	auipc	a2,0x3
    80006b74:	71060613          	addi	a2,a2,1808 # 8000a280 <uart_tx_r>
    80006b78:	00003517          	auipc	a0,0x3
    80006b7c:	71050513          	addi	a0,a0,1808 # 8000a288 <uart_tx_w>
    80006b80:	00063783          	ld	a5,0(a2)
    80006b84:	00053703          	ld	a4,0(a0)
    80006b88:	04f70263          	beq	a4,a5,80006bcc <uartstart+0x68>
    80006b8c:	100005b7          	lui	a1,0x10000
    80006b90:	00005817          	auipc	a6,0x5
    80006b94:	9e080813          	addi	a6,a6,-1568 # 8000b570 <uart_tx_buf>
    80006b98:	01c0006f          	j	80006bb4 <uartstart+0x50>
    80006b9c:	0006c703          	lbu	a4,0(a3)
    80006ba0:	00f63023          	sd	a5,0(a2)
    80006ba4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ba8:	00063783          	ld	a5,0(a2)
    80006bac:	00053703          	ld	a4,0(a0)
    80006bb0:	00f70e63          	beq	a4,a5,80006bcc <uartstart+0x68>
    80006bb4:	01f7f713          	andi	a4,a5,31
    80006bb8:	00e806b3          	add	a3,a6,a4
    80006bbc:	0055c703          	lbu	a4,5(a1)
    80006bc0:	00178793          	addi	a5,a5,1
    80006bc4:	02077713          	andi	a4,a4,32
    80006bc8:	fc071ae3          	bnez	a4,80006b9c <uartstart+0x38>
    80006bcc:	00813403          	ld	s0,8(sp)
    80006bd0:	01010113          	addi	sp,sp,16
    80006bd4:	00008067          	ret

0000000080006bd8 <uartgetc>:
    80006bd8:	ff010113          	addi	sp,sp,-16
    80006bdc:	00813423          	sd	s0,8(sp)
    80006be0:	01010413          	addi	s0,sp,16
    80006be4:	10000737          	lui	a4,0x10000
    80006be8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006bec:	0017f793          	andi	a5,a5,1
    80006bf0:	00078c63          	beqz	a5,80006c08 <uartgetc+0x30>
    80006bf4:	00074503          	lbu	a0,0(a4)
    80006bf8:	0ff57513          	andi	a0,a0,255
    80006bfc:	00813403          	ld	s0,8(sp)
    80006c00:	01010113          	addi	sp,sp,16
    80006c04:	00008067          	ret
    80006c08:	fff00513          	li	a0,-1
    80006c0c:	ff1ff06f          	j	80006bfc <uartgetc+0x24>

0000000080006c10 <uartintr>:
    80006c10:	100007b7          	lui	a5,0x10000
    80006c14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006c18:	0017f793          	andi	a5,a5,1
    80006c1c:	0a078463          	beqz	a5,80006cc4 <uartintr+0xb4>
    80006c20:	fe010113          	addi	sp,sp,-32
    80006c24:	00813823          	sd	s0,16(sp)
    80006c28:	00913423          	sd	s1,8(sp)
    80006c2c:	00113c23          	sd	ra,24(sp)
    80006c30:	02010413          	addi	s0,sp,32
    80006c34:	100004b7          	lui	s1,0x10000
    80006c38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006c3c:	0ff57513          	andi	a0,a0,255
    80006c40:	fffff097          	auipc	ra,0xfffff
    80006c44:	534080e7          	jalr	1332(ra) # 80006174 <consoleintr>
    80006c48:	0054c783          	lbu	a5,5(s1)
    80006c4c:	0017f793          	andi	a5,a5,1
    80006c50:	fe0794e3          	bnez	a5,80006c38 <uartintr+0x28>
    80006c54:	00003617          	auipc	a2,0x3
    80006c58:	62c60613          	addi	a2,a2,1580 # 8000a280 <uart_tx_r>
    80006c5c:	00003517          	auipc	a0,0x3
    80006c60:	62c50513          	addi	a0,a0,1580 # 8000a288 <uart_tx_w>
    80006c64:	00063783          	ld	a5,0(a2)
    80006c68:	00053703          	ld	a4,0(a0)
    80006c6c:	04f70263          	beq	a4,a5,80006cb0 <uartintr+0xa0>
    80006c70:	100005b7          	lui	a1,0x10000
    80006c74:	00005817          	auipc	a6,0x5
    80006c78:	8fc80813          	addi	a6,a6,-1796 # 8000b570 <uart_tx_buf>
    80006c7c:	01c0006f          	j	80006c98 <uartintr+0x88>
    80006c80:	0006c703          	lbu	a4,0(a3)
    80006c84:	00f63023          	sd	a5,0(a2)
    80006c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006c8c:	00063783          	ld	a5,0(a2)
    80006c90:	00053703          	ld	a4,0(a0)
    80006c94:	00f70e63          	beq	a4,a5,80006cb0 <uartintr+0xa0>
    80006c98:	01f7f713          	andi	a4,a5,31
    80006c9c:	00e806b3          	add	a3,a6,a4
    80006ca0:	0055c703          	lbu	a4,5(a1)
    80006ca4:	00178793          	addi	a5,a5,1
    80006ca8:	02077713          	andi	a4,a4,32
    80006cac:	fc071ae3          	bnez	a4,80006c80 <uartintr+0x70>
    80006cb0:	01813083          	ld	ra,24(sp)
    80006cb4:	01013403          	ld	s0,16(sp)
    80006cb8:	00813483          	ld	s1,8(sp)
    80006cbc:	02010113          	addi	sp,sp,32
    80006cc0:	00008067          	ret
    80006cc4:	00003617          	auipc	a2,0x3
    80006cc8:	5bc60613          	addi	a2,a2,1468 # 8000a280 <uart_tx_r>
    80006ccc:	00003517          	auipc	a0,0x3
    80006cd0:	5bc50513          	addi	a0,a0,1468 # 8000a288 <uart_tx_w>
    80006cd4:	00063783          	ld	a5,0(a2)
    80006cd8:	00053703          	ld	a4,0(a0)
    80006cdc:	04f70263          	beq	a4,a5,80006d20 <uartintr+0x110>
    80006ce0:	100005b7          	lui	a1,0x10000
    80006ce4:	00005817          	auipc	a6,0x5
    80006ce8:	88c80813          	addi	a6,a6,-1908 # 8000b570 <uart_tx_buf>
    80006cec:	01c0006f          	j	80006d08 <uartintr+0xf8>
    80006cf0:	0006c703          	lbu	a4,0(a3)
    80006cf4:	00f63023          	sd	a5,0(a2)
    80006cf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006cfc:	00063783          	ld	a5,0(a2)
    80006d00:	00053703          	ld	a4,0(a0)
    80006d04:	02f70063          	beq	a4,a5,80006d24 <uartintr+0x114>
    80006d08:	01f7f713          	andi	a4,a5,31
    80006d0c:	00e806b3          	add	a3,a6,a4
    80006d10:	0055c703          	lbu	a4,5(a1)
    80006d14:	00178793          	addi	a5,a5,1
    80006d18:	02077713          	andi	a4,a4,32
    80006d1c:	fc071ae3          	bnez	a4,80006cf0 <uartintr+0xe0>
    80006d20:	00008067          	ret
    80006d24:	00008067          	ret

0000000080006d28 <kinit>:
    80006d28:	fc010113          	addi	sp,sp,-64
    80006d2c:	02913423          	sd	s1,40(sp)
    80006d30:	fffff7b7          	lui	a5,0xfffff
    80006d34:	00006497          	auipc	s1,0x6
    80006d38:	85b48493          	addi	s1,s1,-1957 # 8000c58f <end+0xfff>
    80006d3c:	02813823          	sd	s0,48(sp)
    80006d40:	01313c23          	sd	s3,24(sp)
    80006d44:	00f4f4b3          	and	s1,s1,a5
    80006d48:	02113c23          	sd	ra,56(sp)
    80006d4c:	03213023          	sd	s2,32(sp)
    80006d50:	01413823          	sd	s4,16(sp)
    80006d54:	01513423          	sd	s5,8(sp)
    80006d58:	04010413          	addi	s0,sp,64
    80006d5c:	000017b7          	lui	a5,0x1
    80006d60:	01100993          	li	s3,17
    80006d64:	00f487b3          	add	a5,s1,a5
    80006d68:	01b99993          	slli	s3,s3,0x1b
    80006d6c:	06f9e063          	bltu	s3,a5,80006dcc <kinit+0xa4>
    80006d70:	00005a97          	auipc	s5,0x5
    80006d74:	820a8a93          	addi	s5,s5,-2016 # 8000b590 <end>
    80006d78:	0754ec63          	bltu	s1,s5,80006df0 <kinit+0xc8>
    80006d7c:	0734fa63          	bgeu	s1,s3,80006df0 <kinit+0xc8>
    80006d80:	00088a37          	lui	s4,0x88
    80006d84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006d88:	00003917          	auipc	s2,0x3
    80006d8c:	50890913          	addi	s2,s2,1288 # 8000a290 <kmem>
    80006d90:	00ca1a13          	slli	s4,s4,0xc
    80006d94:	0140006f          	j	80006da8 <kinit+0x80>
    80006d98:	000017b7          	lui	a5,0x1
    80006d9c:	00f484b3          	add	s1,s1,a5
    80006da0:	0554e863          	bltu	s1,s5,80006df0 <kinit+0xc8>
    80006da4:	0534f663          	bgeu	s1,s3,80006df0 <kinit+0xc8>
    80006da8:	00001637          	lui	a2,0x1
    80006dac:	00100593          	li	a1,1
    80006db0:	00048513          	mv	a0,s1
    80006db4:	00000097          	auipc	ra,0x0
    80006db8:	5e4080e7          	jalr	1508(ra) # 80007398 <__memset>
    80006dbc:	00093783          	ld	a5,0(s2)
    80006dc0:	00f4b023          	sd	a5,0(s1)
    80006dc4:	00993023          	sd	s1,0(s2)
    80006dc8:	fd4498e3          	bne	s1,s4,80006d98 <kinit+0x70>
    80006dcc:	03813083          	ld	ra,56(sp)
    80006dd0:	03013403          	ld	s0,48(sp)
    80006dd4:	02813483          	ld	s1,40(sp)
    80006dd8:	02013903          	ld	s2,32(sp)
    80006ddc:	01813983          	ld	s3,24(sp)
    80006de0:	01013a03          	ld	s4,16(sp)
    80006de4:	00813a83          	ld	s5,8(sp)
    80006de8:	04010113          	addi	sp,sp,64
    80006dec:	00008067          	ret
    80006df0:	00001517          	auipc	a0,0x1
    80006df4:	71850513          	addi	a0,a0,1816 # 80008508 <digits+0x18>
    80006df8:	fffff097          	auipc	ra,0xfffff
    80006dfc:	4b4080e7          	jalr	1204(ra) # 800062ac <panic>

0000000080006e00 <freerange>:
    80006e00:	fc010113          	addi	sp,sp,-64
    80006e04:	000017b7          	lui	a5,0x1
    80006e08:	02913423          	sd	s1,40(sp)
    80006e0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006e10:	009504b3          	add	s1,a0,s1
    80006e14:	fffff537          	lui	a0,0xfffff
    80006e18:	02813823          	sd	s0,48(sp)
    80006e1c:	02113c23          	sd	ra,56(sp)
    80006e20:	03213023          	sd	s2,32(sp)
    80006e24:	01313c23          	sd	s3,24(sp)
    80006e28:	01413823          	sd	s4,16(sp)
    80006e2c:	01513423          	sd	s5,8(sp)
    80006e30:	01613023          	sd	s6,0(sp)
    80006e34:	04010413          	addi	s0,sp,64
    80006e38:	00a4f4b3          	and	s1,s1,a0
    80006e3c:	00f487b3          	add	a5,s1,a5
    80006e40:	06f5e463          	bltu	a1,a5,80006ea8 <freerange+0xa8>
    80006e44:	00004a97          	auipc	s5,0x4
    80006e48:	74ca8a93          	addi	s5,s5,1868 # 8000b590 <end>
    80006e4c:	0954e263          	bltu	s1,s5,80006ed0 <freerange+0xd0>
    80006e50:	01100993          	li	s3,17
    80006e54:	01b99993          	slli	s3,s3,0x1b
    80006e58:	0734fc63          	bgeu	s1,s3,80006ed0 <freerange+0xd0>
    80006e5c:	00058a13          	mv	s4,a1
    80006e60:	00003917          	auipc	s2,0x3
    80006e64:	43090913          	addi	s2,s2,1072 # 8000a290 <kmem>
    80006e68:	00002b37          	lui	s6,0x2
    80006e6c:	0140006f          	j	80006e80 <freerange+0x80>
    80006e70:	000017b7          	lui	a5,0x1
    80006e74:	00f484b3          	add	s1,s1,a5
    80006e78:	0554ec63          	bltu	s1,s5,80006ed0 <freerange+0xd0>
    80006e7c:	0534fa63          	bgeu	s1,s3,80006ed0 <freerange+0xd0>
    80006e80:	00001637          	lui	a2,0x1
    80006e84:	00100593          	li	a1,1
    80006e88:	00048513          	mv	a0,s1
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	50c080e7          	jalr	1292(ra) # 80007398 <__memset>
    80006e94:	00093703          	ld	a4,0(s2)
    80006e98:	016487b3          	add	a5,s1,s6
    80006e9c:	00e4b023          	sd	a4,0(s1)
    80006ea0:	00993023          	sd	s1,0(s2)
    80006ea4:	fcfa76e3          	bgeu	s4,a5,80006e70 <freerange+0x70>
    80006ea8:	03813083          	ld	ra,56(sp)
    80006eac:	03013403          	ld	s0,48(sp)
    80006eb0:	02813483          	ld	s1,40(sp)
    80006eb4:	02013903          	ld	s2,32(sp)
    80006eb8:	01813983          	ld	s3,24(sp)
    80006ebc:	01013a03          	ld	s4,16(sp)
    80006ec0:	00813a83          	ld	s5,8(sp)
    80006ec4:	00013b03          	ld	s6,0(sp)
    80006ec8:	04010113          	addi	sp,sp,64
    80006ecc:	00008067          	ret
    80006ed0:	00001517          	auipc	a0,0x1
    80006ed4:	63850513          	addi	a0,a0,1592 # 80008508 <digits+0x18>
    80006ed8:	fffff097          	auipc	ra,0xfffff
    80006edc:	3d4080e7          	jalr	980(ra) # 800062ac <panic>

0000000080006ee0 <kfree>:
    80006ee0:	fe010113          	addi	sp,sp,-32
    80006ee4:	00813823          	sd	s0,16(sp)
    80006ee8:	00113c23          	sd	ra,24(sp)
    80006eec:	00913423          	sd	s1,8(sp)
    80006ef0:	02010413          	addi	s0,sp,32
    80006ef4:	03451793          	slli	a5,a0,0x34
    80006ef8:	04079c63          	bnez	a5,80006f50 <kfree+0x70>
    80006efc:	00004797          	auipc	a5,0x4
    80006f00:	69478793          	addi	a5,a5,1684 # 8000b590 <end>
    80006f04:	00050493          	mv	s1,a0
    80006f08:	04f56463          	bltu	a0,a5,80006f50 <kfree+0x70>
    80006f0c:	01100793          	li	a5,17
    80006f10:	01b79793          	slli	a5,a5,0x1b
    80006f14:	02f57e63          	bgeu	a0,a5,80006f50 <kfree+0x70>
    80006f18:	00001637          	lui	a2,0x1
    80006f1c:	00100593          	li	a1,1
    80006f20:	00000097          	auipc	ra,0x0
    80006f24:	478080e7          	jalr	1144(ra) # 80007398 <__memset>
    80006f28:	00003797          	auipc	a5,0x3
    80006f2c:	36878793          	addi	a5,a5,872 # 8000a290 <kmem>
    80006f30:	0007b703          	ld	a4,0(a5)
    80006f34:	01813083          	ld	ra,24(sp)
    80006f38:	01013403          	ld	s0,16(sp)
    80006f3c:	00e4b023          	sd	a4,0(s1)
    80006f40:	0097b023          	sd	s1,0(a5)
    80006f44:	00813483          	ld	s1,8(sp)
    80006f48:	02010113          	addi	sp,sp,32
    80006f4c:	00008067          	ret
    80006f50:	00001517          	auipc	a0,0x1
    80006f54:	5b850513          	addi	a0,a0,1464 # 80008508 <digits+0x18>
    80006f58:	fffff097          	auipc	ra,0xfffff
    80006f5c:	354080e7          	jalr	852(ra) # 800062ac <panic>

0000000080006f60 <kalloc>:
    80006f60:	fe010113          	addi	sp,sp,-32
    80006f64:	00813823          	sd	s0,16(sp)
    80006f68:	00913423          	sd	s1,8(sp)
    80006f6c:	00113c23          	sd	ra,24(sp)
    80006f70:	02010413          	addi	s0,sp,32
    80006f74:	00003797          	auipc	a5,0x3
    80006f78:	31c78793          	addi	a5,a5,796 # 8000a290 <kmem>
    80006f7c:	0007b483          	ld	s1,0(a5)
    80006f80:	02048063          	beqz	s1,80006fa0 <kalloc+0x40>
    80006f84:	0004b703          	ld	a4,0(s1)
    80006f88:	00001637          	lui	a2,0x1
    80006f8c:	00500593          	li	a1,5
    80006f90:	00048513          	mv	a0,s1
    80006f94:	00e7b023          	sd	a4,0(a5)
    80006f98:	00000097          	auipc	ra,0x0
    80006f9c:	400080e7          	jalr	1024(ra) # 80007398 <__memset>
    80006fa0:	01813083          	ld	ra,24(sp)
    80006fa4:	01013403          	ld	s0,16(sp)
    80006fa8:	00048513          	mv	a0,s1
    80006fac:	00813483          	ld	s1,8(sp)
    80006fb0:	02010113          	addi	sp,sp,32
    80006fb4:	00008067          	ret

0000000080006fb8 <initlock>:
    80006fb8:	ff010113          	addi	sp,sp,-16
    80006fbc:	00813423          	sd	s0,8(sp)
    80006fc0:	01010413          	addi	s0,sp,16
    80006fc4:	00813403          	ld	s0,8(sp)
    80006fc8:	00b53423          	sd	a1,8(a0)
    80006fcc:	00052023          	sw	zero,0(a0)
    80006fd0:	00053823          	sd	zero,16(a0)
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00008067          	ret

0000000080006fdc <acquire>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00913423          	sd	s1,8(sp)
    80006fe8:	00113c23          	sd	ra,24(sp)
    80006fec:	01213023          	sd	s2,0(sp)
    80006ff0:	02010413          	addi	s0,sp,32
    80006ff4:	00050493          	mv	s1,a0
    80006ff8:	10002973          	csrr	s2,sstatus
    80006ffc:	100027f3          	csrr	a5,sstatus
    80007000:	ffd7f793          	andi	a5,a5,-3
    80007004:	10079073          	csrw	sstatus,a5
    80007008:	fffff097          	auipc	ra,0xfffff
    8000700c:	8ec080e7          	jalr	-1812(ra) # 800058f4 <mycpu>
    80007010:	07852783          	lw	a5,120(a0)
    80007014:	06078e63          	beqz	a5,80007090 <acquire+0xb4>
    80007018:	fffff097          	auipc	ra,0xfffff
    8000701c:	8dc080e7          	jalr	-1828(ra) # 800058f4 <mycpu>
    80007020:	07852783          	lw	a5,120(a0)
    80007024:	0004a703          	lw	a4,0(s1)
    80007028:	0017879b          	addiw	a5,a5,1
    8000702c:	06f52c23          	sw	a5,120(a0)
    80007030:	04071063          	bnez	a4,80007070 <acquire+0x94>
    80007034:	00100713          	li	a4,1
    80007038:	00070793          	mv	a5,a4
    8000703c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007040:	0007879b          	sext.w	a5,a5
    80007044:	fe079ae3          	bnez	a5,80007038 <acquire+0x5c>
    80007048:	0ff0000f          	fence
    8000704c:	fffff097          	auipc	ra,0xfffff
    80007050:	8a8080e7          	jalr	-1880(ra) # 800058f4 <mycpu>
    80007054:	01813083          	ld	ra,24(sp)
    80007058:	01013403          	ld	s0,16(sp)
    8000705c:	00a4b823          	sd	a0,16(s1)
    80007060:	00013903          	ld	s2,0(sp)
    80007064:	00813483          	ld	s1,8(sp)
    80007068:	02010113          	addi	sp,sp,32
    8000706c:	00008067          	ret
    80007070:	0104b903          	ld	s2,16(s1)
    80007074:	fffff097          	auipc	ra,0xfffff
    80007078:	880080e7          	jalr	-1920(ra) # 800058f4 <mycpu>
    8000707c:	faa91ce3          	bne	s2,a0,80007034 <acquire+0x58>
    80007080:	00001517          	auipc	a0,0x1
    80007084:	49050513          	addi	a0,a0,1168 # 80008510 <digits+0x20>
    80007088:	fffff097          	auipc	ra,0xfffff
    8000708c:	224080e7          	jalr	548(ra) # 800062ac <panic>
    80007090:	00195913          	srli	s2,s2,0x1
    80007094:	fffff097          	auipc	ra,0xfffff
    80007098:	860080e7          	jalr	-1952(ra) # 800058f4 <mycpu>
    8000709c:	00197913          	andi	s2,s2,1
    800070a0:	07252e23          	sw	s2,124(a0)
    800070a4:	f75ff06f          	j	80007018 <acquire+0x3c>

00000000800070a8 <release>:
    800070a8:	fe010113          	addi	sp,sp,-32
    800070ac:	00813823          	sd	s0,16(sp)
    800070b0:	00113c23          	sd	ra,24(sp)
    800070b4:	00913423          	sd	s1,8(sp)
    800070b8:	01213023          	sd	s2,0(sp)
    800070bc:	02010413          	addi	s0,sp,32
    800070c0:	00052783          	lw	a5,0(a0)
    800070c4:	00079a63          	bnez	a5,800070d8 <release+0x30>
    800070c8:	00001517          	auipc	a0,0x1
    800070cc:	45050513          	addi	a0,a0,1104 # 80008518 <digits+0x28>
    800070d0:	fffff097          	auipc	ra,0xfffff
    800070d4:	1dc080e7          	jalr	476(ra) # 800062ac <panic>
    800070d8:	01053903          	ld	s2,16(a0)
    800070dc:	00050493          	mv	s1,a0
    800070e0:	fffff097          	auipc	ra,0xfffff
    800070e4:	814080e7          	jalr	-2028(ra) # 800058f4 <mycpu>
    800070e8:	fea910e3          	bne	s2,a0,800070c8 <release+0x20>
    800070ec:	0004b823          	sd	zero,16(s1)
    800070f0:	0ff0000f          	fence
    800070f4:	0f50000f          	fence	iorw,ow
    800070f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800070fc:	ffffe097          	auipc	ra,0xffffe
    80007100:	7f8080e7          	jalr	2040(ra) # 800058f4 <mycpu>
    80007104:	100027f3          	csrr	a5,sstatus
    80007108:	0027f793          	andi	a5,a5,2
    8000710c:	04079a63          	bnez	a5,80007160 <release+0xb8>
    80007110:	07852783          	lw	a5,120(a0)
    80007114:	02f05e63          	blez	a5,80007150 <release+0xa8>
    80007118:	fff7871b          	addiw	a4,a5,-1
    8000711c:	06e52c23          	sw	a4,120(a0)
    80007120:	00071c63          	bnez	a4,80007138 <release+0x90>
    80007124:	07c52783          	lw	a5,124(a0)
    80007128:	00078863          	beqz	a5,80007138 <release+0x90>
    8000712c:	100027f3          	csrr	a5,sstatus
    80007130:	0027e793          	ori	a5,a5,2
    80007134:	10079073          	csrw	sstatus,a5
    80007138:	01813083          	ld	ra,24(sp)
    8000713c:	01013403          	ld	s0,16(sp)
    80007140:	00813483          	ld	s1,8(sp)
    80007144:	00013903          	ld	s2,0(sp)
    80007148:	02010113          	addi	sp,sp,32
    8000714c:	00008067          	ret
    80007150:	00001517          	auipc	a0,0x1
    80007154:	3e850513          	addi	a0,a0,1000 # 80008538 <digits+0x48>
    80007158:	fffff097          	auipc	ra,0xfffff
    8000715c:	154080e7          	jalr	340(ra) # 800062ac <panic>
    80007160:	00001517          	auipc	a0,0x1
    80007164:	3c050513          	addi	a0,a0,960 # 80008520 <digits+0x30>
    80007168:	fffff097          	auipc	ra,0xfffff
    8000716c:	144080e7          	jalr	324(ra) # 800062ac <panic>

0000000080007170 <holding>:
    80007170:	00052783          	lw	a5,0(a0)
    80007174:	00079663          	bnez	a5,80007180 <holding+0x10>
    80007178:	00000513          	li	a0,0
    8000717c:	00008067          	ret
    80007180:	fe010113          	addi	sp,sp,-32
    80007184:	00813823          	sd	s0,16(sp)
    80007188:	00913423          	sd	s1,8(sp)
    8000718c:	00113c23          	sd	ra,24(sp)
    80007190:	02010413          	addi	s0,sp,32
    80007194:	01053483          	ld	s1,16(a0)
    80007198:	ffffe097          	auipc	ra,0xffffe
    8000719c:	75c080e7          	jalr	1884(ra) # 800058f4 <mycpu>
    800071a0:	01813083          	ld	ra,24(sp)
    800071a4:	01013403          	ld	s0,16(sp)
    800071a8:	40a48533          	sub	a0,s1,a0
    800071ac:	00153513          	seqz	a0,a0
    800071b0:	00813483          	ld	s1,8(sp)
    800071b4:	02010113          	addi	sp,sp,32
    800071b8:	00008067          	ret

00000000800071bc <push_off>:
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00113c23          	sd	ra,24(sp)
    800071c8:	00913423          	sd	s1,8(sp)
    800071cc:	02010413          	addi	s0,sp,32
    800071d0:	100024f3          	csrr	s1,sstatus
    800071d4:	100027f3          	csrr	a5,sstatus
    800071d8:	ffd7f793          	andi	a5,a5,-3
    800071dc:	10079073          	csrw	sstatus,a5
    800071e0:	ffffe097          	auipc	ra,0xffffe
    800071e4:	714080e7          	jalr	1812(ra) # 800058f4 <mycpu>
    800071e8:	07852783          	lw	a5,120(a0)
    800071ec:	02078663          	beqz	a5,80007218 <push_off+0x5c>
    800071f0:	ffffe097          	auipc	ra,0xffffe
    800071f4:	704080e7          	jalr	1796(ra) # 800058f4 <mycpu>
    800071f8:	07852783          	lw	a5,120(a0)
    800071fc:	01813083          	ld	ra,24(sp)
    80007200:	01013403          	ld	s0,16(sp)
    80007204:	0017879b          	addiw	a5,a5,1
    80007208:	06f52c23          	sw	a5,120(a0)
    8000720c:	00813483          	ld	s1,8(sp)
    80007210:	02010113          	addi	sp,sp,32
    80007214:	00008067          	ret
    80007218:	0014d493          	srli	s1,s1,0x1
    8000721c:	ffffe097          	auipc	ra,0xffffe
    80007220:	6d8080e7          	jalr	1752(ra) # 800058f4 <mycpu>
    80007224:	0014f493          	andi	s1,s1,1
    80007228:	06952e23          	sw	s1,124(a0)
    8000722c:	fc5ff06f          	j	800071f0 <push_off+0x34>

0000000080007230 <pop_off>:
    80007230:	ff010113          	addi	sp,sp,-16
    80007234:	00813023          	sd	s0,0(sp)
    80007238:	00113423          	sd	ra,8(sp)
    8000723c:	01010413          	addi	s0,sp,16
    80007240:	ffffe097          	auipc	ra,0xffffe
    80007244:	6b4080e7          	jalr	1716(ra) # 800058f4 <mycpu>
    80007248:	100027f3          	csrr	a5,sstatus
    8000724c:	0027f793          	andi	a5,a5,2
    80007250:	04079663          	bnez	a5,8000729c <pop_off+0x6c>
    80007254:	07852783          	lw	a5,120(a0)
    80007258:	02f05a63          	blez	a5,8000728c <pop_off+0x5c>
    8000725c:	fff7871b          	addiw	a4,a5,-1
    80007260:	06e52c23          	sw	a4,120(a0)
    80007264:	00071c63          	bnez	a4,8000727c <pop_off+0x4c>
    80007268:	07c52783          	lw	a5,124(a0)
    8000726c:	00078863          	beqz	a5,8000727c <pop_off+0x4c>
    80007270:	100027f3          	csrr	a5,sstatus
    80007274:	0027e793          	ori	a5,a5,2
    80007278:	10079073          	csrw	sstatus,a5
    8000727c:	00813083          	ld	ra,8(sp)
    80007280:	00013403          	ld	s0,0(sp)
    80007284:	01010113          	addi	sp,sp,16
    80007288:	00008067          	ret
    8000728c:	00001517          	auipc	a0,0x1
    80007290:	2ac50513          	addi	a0,a0,684 # 80008538 <digits+0x48>
    80007294:	fffff097          	auipc	ra,0xfffff
    80007298:	018080e7          	jalr	24(ra) # 800062ac <panic>
    8000729c:	00001517          	auipc	a0,0x1
    800072a0:	28450513          	addi	a0,a0,644 # 80008520 <digits+0x30>
    800072a4:	fffff097          	auipc	ra,0xfffff
    800072a8:	008080e7          	jalr	8(ra) # 800062ac <panic>

00000000800072ac <push_on>:
    800072ac:	fe010113          	addi	sp,sp,-32
    800072b0:	00813823          	sd	s0,16(sp)
    800072b4:	00113c23          	sd	ra,24(sp)
    800072b8:	00913423          	sd	s1,8(sp)
    800072bc:	02010413          	addi	s0,sp,32
    800072c0:	100024f3          	csrr	s1,sstatus
    800072c4:	100027f3          	csrr	a5,sstatus
    800072c8:	0027e793          	ori	a5,a5,2
    800072cc:	10079073          	csrw	sstatus,a5
    800072d0:	ffffe097          	auipc	ra,0xffffe
    800072d4:	624080e7          	jalr	1572(ra) # 800058f4 <mycpu>
    800072d8:	07852783          	lw	a5,120(a0)
    800072dc:	02078663          	beqz	a5,80007308 <push_on+0x5c>
    800072e0:	ffffe097          	auipc	ra,0xffffe
    800072e4:	614080e7          	jalr	1556(ra) # 800058f4 <mycpu>
    800072e8:	07852783          	lw	a5,120(a0)
    800072ec:	01813083          	ld	ra,24(sp)
    800072f0:	01013403          	ld	s0,16(sp)
    800072f4:	0017879b          	addiw	a5,a5,1
    800072f8:	06f52c23          	sw	a5,120(a0)
    800072fc:	00813483          	ld	s1,8(sp)
    80007300:	02010113          	addi	sp,sp,32
    80007304:	00008067          	ret
    80007308:	0014d493          	srli	s1,s1,0x1
    8000730c:	ffffe097          	auipc	ra,0xffffe
    80007310:	5e8080e7          	jalr	1512(ra) # 800058f4 <mycpu>
    80007314:	0014f493          	andi	s1,s1,1
    80007318:	06952e23          	sw	s1,124(a0)
    8000731c:	fc5ff06f          	j	800072e0 <push_on+0x34>

0000000080007320 <pop_on>:
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813023          	sd	s0,0(sp)
    80007328:	00113423          	sd	ra,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	ffffe097          	auipc	ra,0xffffe
    80007334:	5c4080e7          	jalr	1476(ra) # 800058f4 <mycpu>
    80007338:	100027f3          	csrr	a5,sstatus
    8000733c:	0027f793          	andi	a5,a5,2
    80007340:	04078463          	beqz	a5,80007388 <pop_on+0x68>
    80007344:	07852783          	lw	a5,120(a0)
    80007348:	02f05863          	blez	a5,80007378 <pop_on+0x58>
    8000734c:	fff7879b          	addiw	a5,a5,-1
    80007350:	06f52c23          	sw	a5,120(a0)
    80007354:	07853783          	ld	a5,120(a0)
    80007358:	00079863          	bnez	a5,80007368 <pop_on+0x48>
    8000735c:	100027f3          	csrr	a5,sstatus
    80007360:	ffd7f793          	andi	a5,a5,-3
    80007364:	10079073          	csrw	sstatus,a5
    80007368:	00813083          	ld	ra,8(sp)
    8000736c:	00013403          	ld	s0,0(sp)
    80007370:	01010113          	addi	sp,sp,16
    80007374:	00008067          	ret
    80007378:	00001517          	auipc	a0,0x1
    8000737c:	1e850513          	addi	a0,a0,488 # 80008560 <digits+0x70>
    80007380:	fffff097          	auipc	ra,0xfffff
    80007384:	f2c080e7          	jalr	-212(ra) # 800062ac <panic>
    80007388:	00001517          	auipc	a0,0x1
    8000738c:	1b850513          	addi	a0,a0,440 # 80008540 <digits+0x50>
    80007390:	fffff097          	auipc	ra,0xfffff
    80007394:	f1c080e7          	jalr	-228(ra) # 800062ac <panic>

0000000080007398 <__memset>:
    80007398:	ff010113          	addi	sp,sp,-16
    8000739c:	00813423          	sd	s0,8(sp)
    800073a0:	01010413          	addi	s0,sp,16
    800073a4:	1a060e63          	beqz	a2,80007560 <__memset+0x1c8>
    800073a8:	40a007b3          	neg	a5,a0
    800073ac:	0077f793          	andi	a5,a5,7
    800073b0:	00778693          	addi	a3,a5,7
    800073b4:	00b00813          	li	a6,11
    800073b8:	0ff5f593          	andi	a1,a1,255
    800073bc:	fff6071b          	addiw	a4,a2,-1
    800073c0:	1b06e663          	bltu	a3,a6,8000756c <__memset+0x1d4>
    800073c4:	1cd76463          	bltu	a4,a3,8000758c <__memset+0x1f4>
    800073c8:	1a078e63          	beqz	a5,80007584 <__memset+0x1ec>
    800073cc:	00b50023          	sb	a1,0(a0)
    800073d0:	00100713          	li	a4,1
    800073d4:	1ae78463          	beq	a5,a4,8000757c <__memset+0x1e4>
    800073d8:	00b500a3          	sb	a1,1(a0)
    800073dc:	00200713          	li	a4,2
    800073e0:	1ae78a63          	beq	a5,a4,80007594 <__memset+0x1fc>
    800073e4:	00b50123          	sb	a1,2(a0)
    800073e8:	00300713          	li	a4,3
    800073ec:	18e78463          	beq	a5,a4,80007574 <__memset+0x1dc>
    800073f0:	00b501a3          	sb	a1,3(a0)
    800073f4:	00400713          	li	a4,4
    800073f8:	1ae78263          	beq	a5,a4,8000759c <__memset+0x204>
    800073fc:	00b50223          	sb	a1,4(a0)
    80007400:	00500713          	li	a4,5
    80007404:	1ae78063          	beq	a5,a4,800075a4 <__memset+0x20c>
    80007408:	00b502a3          	sb	a1,5(a0)
    8000740c:	00700713          	li	a4,7
    80007410:	18e79e63          	bne	a5,a4,800075ac <__memset+0x214>
    80007414:	00b50323          	sb	a1,6(a0)
    80007418:	00700e93          	li	t4,7
    8000741c:	00859713          	slli	a4,a1,0x8
    80007420:	00e5e733          	or	a4,a1,a4
    80007424:	01059e13          	slli	t3,a1,0x10
    80007428:	01c76e33          	or	t3,a4,t3
    8000742c:	01859313          	slli	t1,a1,0x18
    80007430:	006e6333          	or	t1,t3,t1
    80007434:	02059893          	slli	a7,a1,0x20
    80007438:	40f60e3b          	subw	t3,a2,a5
    8000743c:	011368b3          	or	a7,t1,a7
    80007440:	02859813          	slli	a6,a1,0x28
    80007444:	0108e833          	or	a6,a7,a6
    80007448:	03059693          	slli	a3,a1,0x30
    8000744c:	003e589b          	srliw	a7,t3,0x3
    80007450:	00d866b3          	or	a3,a6,a3
    80007454:	03859713          	slli	a4,a1,0x38
    80007458:	00389813          	slli	a6,a7,0x3
    8000745c:	00f507b3          	add	a5,a0,a5
    80007460:	00e6e733          	or	a4,a3,a4
    80007464:	000e089b          	sext.w	a7,t3
    80007468:	00f806b3          	add	a3,a6,a5
    8000746c:	00e7b023          	sd	a4,0(a5)
    80007470:	00878793          	addi	a5,a5,8
    80007474:	fed79ce3          	bne	a5,a3,8000746c <__memset+0xd4>
    80007478:	ff8e7793          	andi	a5,t3,-8
    8000747c:	0007871b          	sext.w	a4,a5
    80007480:	01d787bb          	addw	a5,a5,t4
    80007484:	0ce88e63          	beq	a7,a4,80007560 <__memset+0x1c8>
    80007488:	00f50733          	add	a4,a0,a5
    8000748c:	00b70023          	sb	a1,0(a4)
    80007490:	0017871b          	addiw	a4,a5,1
    80007494:	0cc77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007498:	00e50733          	add	a4,a0,a4
    8000749c:	00b70023          	sb	a1,0(a4)
    800074a0:	0027871b          	addiw	a4,a5,2
    800074a4:	0ac77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074a8:	00e50733          	add	a4,a0,a4
    800074ac:	00b70023          	sb	a1,0(a4)
    800074b0:	0037871b          	addiw	a4,a5,3
    800074b4:	0ac77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074b8:	00e50733          	add	a4,a0,a4
    800074bc:	00b70023          	sb	a1,0(a4)
    800074c0:	0047871b          	addiw	a4,a5,4
    800074c4:	08c77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074c8:	00e50733          	add	a4,a0,a4
    800074cc:	00b70023          	sb	a1,0(a4)
    800074d0:	0057871b          	addiw	a4,a5,5
    800074d4:	08c77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074d8:	00e50733          	add	a4,a0,a4
    800074dc:	00b70023          	sb	a1,0(a4)
    800074e0:	0067871b          	addiw	a4,a5,6
    800074e4:	06c77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074e8:	00e50733          	add	a4,a0,a4
    800074ec:	00b70023          	sb	a1,0(a4)
    800074f0:	0077871b          	addiw	a4,a5,7
    800074f4:	06c77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    800074f8:	00e50733          	add	a4,a0,a4
    800074fc:	00b70023          	sb	a1,0(a4)
    80007500:	0087871b          	addiw	a4,a5,8
    80007504:	04c77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007508:	00e50733          	add	a4,a0,a4
    8000750c:	00b70023          	sb	a1,0(a4)
    80007510:	0097871b          	addiw	a4,a5,9
    80007514:	04c77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007518:	00e50733          	add	a4,a0,a4
    8000751c:	00b70023          	sb	a1,0(a4)
    80007520:	00a7871b          	addiw	a4,a5,10
    80007524:	02c77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007528:	00e50733          	add	a4,a0,a4
    8000752c:	00b70023          	sb	a1,0(a4)
    80007530:	00b7871b          	addiw	a4,a5,11
    80007534:	02c77663          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007538:	00e50733          	add	a4,a0,a4
    8000753c:	00b70023          	sb	a1,0(a4)
    80007540:	00c7871b          	addiw	a4,a5,12
    80007544:	00c77e63          	bgeu	a4,a2,80007560 <__memset+0x1c8>
    80007548:	00e50733          	add	a4,a0,a4
    8000754c:	00b70023          	sb	a1,0(a4)
    80007550:	00d7879b          	addiw	a5,a5,13
    80007554:	00c7f663          	bgeu	a5,a2,80007560 <__memset+0x1c8>
    80007558:	00f507b3          	add	a5,a0,a5
    8000755c:	00b78023          	sb	a1,0(a5)
    80007560:	00813403          	ld	s0,8(sp)
    80007564:	01010113          	addi	sp,sp,16
    80007568:	00008067          	ret
    8000756c:	00b00693          	li	a3,11
    80007570:	e55ff06f          	j	800073c4 <__memset+0x2c>
    80007574:	00300e93          	li	t4,3
    80007578:	ea5ff06f          	j	8000741c <__memset+0x84>
    8000757c:	00100e93          	li	t4,1
    80007580:	e9dff06f          	j	8000741c <__memset+0x84>
    80007584:	00000e93          	li	t4,0
    80007588:	e95ff06f          	j	8000741c <__memset+0x84>
    8000758c:	00000793          	li	a5,0
    80007590:	ef9ff06f          	j	80007488 <__memset+0xf0>
    80007594:	00200e93          	li	t4,2
    80007598:	e85ff06f          	j	8000741c <__memset+0x84>
    8000759c:	00400e93          	li	t4,4
    800075a0:	e7dff06f          	j	8000741c <__memset+0x84>
    800075a4:	00500e93          	li	t4,5
    800075a8:	e75ff06f          	j	8000741c <__memset+0x84>
    800075ac:	00600e93          	li	t4,6
    800075b0:	e6dff06f          	j	8000741c <__memset+0x84>

00000000800075b4 <__memmove>:
    800075b4:	ff010113          	addi	sp,sp,-16
    800075b8:	00813423          	sd	s0,8(sp)
    800075bc:	01010413          	addi	s0,sp,16
    800075c0:	0e060863          	beqz	a2,800076b0 <__memmove+0xfc>
    800075c4:	fff6069b          	addiw	a3,a2,-1
    800075c8:	0006881b          	sext.w	a6,a3
    800075cc:	0ea5e863          	bltu	a1,a0,800076bc <__memmove+0x108>
    800075d0:	00758713          	addi	a4,a1,7
    800075d4:	00a5e7b3          	or	a5,a1,a0
    800075d8:	40a70733          	sub	a4,a4,a0
    800075dc:	0077f793          	andi	a5,a5,7
    800075e0:	00f73713          	sltiu	a4,a4,15
    800075e4:	00174713          	xori	a4,a4,1
    800075e8:	0017b793          	seqz	a5,a5
    800075ec:	00e7f7b3          	and	a5,a5,a4
    800075f0:	10078863          	beqz	a5,80007700 <__memmove+0x14c>
    800075f4:	00900793          	li	a5,9
    800075f8:	1107f463          	bgeu	a5,a6,80007700 <__memmove+0x14c>
    800075fc:	0036581b          	srliw	a6,a2,0x3
    80007600:	fff8081b          	addiw	a6,a6,-1
    80007604:	02081813          	slli	a6,a6,0x20
    80007608:	01d85893          	srli	a7,a6,0x1d
    8000760c:	00858813          	addi	a6,a1,8
    80007610:	00058793          	mv	a5,a1
    80007614:	00050713          	mv	a4,a0
    80007618:	01088833          	add	a6,a7,a6
    8000761c:	0007b883          	ld	a7,0(a5)
    80007620:	00878793          	addi	a5,a5,8
    80007624:	00870713          	addi	a4,a4,8
    80007628:	ff173c23          	sd	a7,-8(a4)
    8000762c:	ff0798e3          	bne	a5,a6,8000761c <__memmove+0x68>
    80007630:	ff867713          	andi	a4,a2,-8
    80007634:	02071793          	slli	a5,a4,0x20
    80007638:	0207d793          	srli	a5,a5,0x20
    8000763c:	00f585b3          	add	a1,a1,a5
    80007640:	40e686bb          	subw	a3,a3,a4
    80007644:	00f507b3          	add	a5,a0,a5
    80007648:	06e60463          	beq	a2,a4,800076b0 <__memmove+0xfc>
    8000764c:	0005c703          	lbu	a4,0(a1)
    80007650:	00e78023          	sb	a4,0(a5)
    80007654:	04068e63          	beqz	a3,800076b0 <__memmove+0xfc>
    80007658:	0015c603          	lbu	a2,1(a1)
    8000765c:	00100713          	li	a4,1
    80007660:	00c780a3          	sb	a2,1(a5)
    80007664:	04e68663          	beq	a3,a4,800076b0 <__memmove+0xfc>
    80007668:	0025c603          	lbu	a2,2(a1)
    8000766c:	00200713          	li	a4,2
    80007670:	00c78123          	sb	a2,2(a5)
    80007674:	02e68e63          	beq	a3,a4,800076b0 <__memmove+0xfc>
    80007678:	0035c603          	lbu	a2,3(a1)
    8000767c:	00300713          	li	a4,3
    80007680:	00c781a3          	sb	a2,3(a5)
    80007684:	02e68663          	beq	a3,a4,800076b0 <__memmove+0xfc>
    80007688:	0045c603          	lbu	a2,4(a1)
    8000768c:	00400713          	li	a4,4
    80007690:	00c78223          	sb	a2,4(a5)
    80007694:	00e68e63          	beq	a3,a4,800076b0 <__memmove+0xfc>
    80007698:	0055c603          	lbu	a2,5(a1)
    8000769c:	00500713          	li	a4,5
    800076a0:	00c782a3          	sb	a2,5(a5)
    800076a4:	00e68663          	beq	a3,a4,800076b0 <__memmove+0xfc>
    800076a8:	0065c703          	lbu	a4,6(a1)
    800076ac:	00e78323          	sb	a4,6(a5)
    800076b0:	00813403          	ld	s0,8(sp)
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00008067          	ret
    800076bc:	02061713          	slli	a4,a2,0x20
    800076c0:	02075713          	srli	a4,a4,0x20
    800076c4:	00e587b3          	add	a5,a1,a4
    800076c8:	f0f574e3          	bgeu	a0,a5,800075d0 <__memmove+0x1c>
    800076cc:	02069613          	slli	a2,a3,0x20
    800076d0:	02065613          	srli	a2,a2,0x20
    800076d4:	fff64613          	not	a2,a2
    800076d8:	00e50733          	add	a4,a0,a4
    800076dc:	00c78633          	add	a2,a5,a2
    800076e0:	fff7c683          	lbu	a3,-1(a5)
    800076e4:	fff78793          	addi	a5,a5,-1
    800076e8:	fff70713          	addi	a4,a4,-1
    800076ec:	00d70023          	sb	a3,0(a4)
    800076f0:	fec798e3          	bne	a5,a2,800076e0 <__memmove+0x12c>
    800076f4:	00813403          	ld	s0,8(sp)
    800076f8:	01010113          	addi	sp,sp,16
    800076fc:	00008067          	ret
    80007700:	02069713          	slli	a4,a3,0x20
    80007704:	02075713          	srli	a4,a4,0x20
    80007708:	00170713          	addi	a4,a4,1
    8000770c:	00e50733          	add	a4,a0,a4
    80007710:	00050793          	mv	a5,a0
    80007714:	0005c683          	lbu	a3,0(a1)
    80007718:	00178793          	addi	a5,a5,1
    8000771c:	00158593          	addi	a1,a1,1
    80007720:	fed78fa3          	sb	a3,-1(a5)
    80007724:	fee798e3          	bne	a5,a4,80007714 <__memmove+0x160>
    80007728:	f89ff06f          	j	800076b0 <__memmove+0xfc>

000000008000772c <__putc>:
    8000772c:	fe010113          	addi	sp,sp,-32
    80007730:	00813823          	sd	s0,16(sp)
    80007734:	00113c23          	sd	ra,24(sp)
    80007738:	02010413          	addi	s0,sp,32
    8000773c:	00050793          	mv	a5,a0
    80007740:	fef40593          	addi	a1,s0,-17
    80007744:	00100613          	li	a2,1
    80007748:	00000513          	li	a0,0
    8000774c:	fef407a3          	sb	a5,-17(s0)
    80007750:	fffff097          	auipc	ra,0xfffff
    80007754:	b3c080e7          	jalr	-1220(ra) # 8000628c <console_write>
    80007758:	01813083          	ld	ra,24(sp)
    8000775c:	01013403          	ld	s0,16(sp)
    80007760:	02010113          	addi	sp,sp,32
    80007764:	00008067          	ret

0000000080007768 <__getc>:
    80007768:	fe010113          	addi	sp,sp,-32
    8000776c:	00813823          	sd	s0,16(sp)
    80007770:	00113c23          	sd	ra,24(sp)
    80007774:	02010413          	addi	s0,sp,32
    80007778:	fe840593          	addi	a1,s0,-24
    8000777c:	00100613          	li	a2,1
    80007780:	00000513          	li	a0,0
    80007784:	fffff097          	auipc	ra,0xfffff
    80007788:	ae8080e7          	jalr	-1304(ra) # 8000626c <console_read>
    8000778c:	fe844503          	lbu	a0,-24(s0)
    80007790:	01813083          	ld	ra,24(sp)
    80007794:	01013403          	ld	s0,16(sp)
    80007798:	02010113          	addi	sp,sp,32
    8000779c:	00008067          	ret

00000000800077a0 <console_handler>:
    800077a0:	fe010113          	addi	sp,sp,-32
    800077a4:	00813823          	sd	s0,16(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	00913423          	sd	s1,8(sp)
    800077b0:	02010413          	addi	s0,sp,32
    800077b4:	14202773          	csrr	a4,scause
    800077b8:	100027f3          	csrr	a5,sstatus
    800077bc:	0027f793          	andi	a5,a5,2
    800077c0:	06079e63          	bnez	a5,8000783c <console_handler+0x9c>
    800077c4:	00074c63          	bltz	a4,800077dc <console_handler+0x3c>
    800077c8:	01813083          	ld	ra,24(sp)
    800077cc:	01013403          	ld	s0,16(sp)
    800077d0:	00813483          	ld	s1,8(sp)
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00008067          	ret
    800077dc:	0ff77713          	andi	a4,a4,255
    800077e0:	00900793          	li	a5,9
    800077e4:	fef712e3          	bne	a4,a5,800077c8 <console_handler+0x28>
    800077e8:	ffffe097          	auipc	ra,0xffffe
    800077ec:	6dc080e7          	jalr	1756(ra) # 80005ec4 <plic_claim>
    800077f0:	00a00793          	li	a5,10
    800077f4:	00050493          	mv	s1,a0
    800077f8:	02f50c63          	beq	a0,a5,80007830 <console_handler+0x90>
    800077fc:	fc0506e3          	beqz	a0,800077c8 <console_handler+0x28>
    80007800:	00050593          	mv	a1,a0
    80007804:	00001517          	auipc	a0,0x1
    80007808:	c6450513          	addi	a0,a0,-924 # 80008468 <_ZL6digits+0xf8>
    8000780c:	fffff097          	auipc	ra,0xfffff
    80007810:	afc080e7          	jalr	-1284(ra) # 80006308 <__printf>
    80007814:	01013403          	ld	s0,16(sp)
    80007818:	01813083          	ld	ra,24(sp)
    8000781c:	00048513          	mv	a0,s1
    80007820:	00813483          	ld	s1,8(sp)
    80007824:	02010113          	addi	sp,sp,32
    80007828:	ffffe317          	auipc	t1,0xffffe
    8000782c:	6d430067          	jr	1748(t1) # 80005efc <plic_complete>
    80007830:	fffff097          	auipc	ra,0xfffff
    80007834:	3e0080e7          	jalr	992(ra) # 80006c10 <uartintr>
    80007838:	fddff06f          	j	80007814 <console_handler+0x74>
    8000783c:	00001517          	auipc	a0,0x1
    80007840:	d2c50513          	addi	a0,a0,-724 # 80008568 <digits+0x78>
    80007844:	fffff097          	auipc	ra,0xfffff
    80007848:	a68080e7          	jalr	-1432(ra) # 800062ac <panic>
	...
