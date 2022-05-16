
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	56013103          	ld	sp,1376(sp) # 80007560 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1e1030ef          	jal	ra,800039fc <start>

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
    80001080:	331010ef          	jal	ra,80002bb0 <_ZN5Riscv20handleSupervisorTrapEv>

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
void thread_dispatch(){
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
//

#include "../h/Tests.hpp"

void idle(void* args)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    while(true)
    {
        Riscv::printString("Idle\n");
    80001464:	00005517          	auipc	a0,0x5
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80006020 <CONSOLE_STATUS+0x10>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	60c080e7          	jalr	1548(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
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
    80001494:	00005517          	auipc	a0,0x5
    80001498:	b9450513          	addi	a0,a0,-1132 # 80006028 <CONSOLE_STATUS+0x18>
    8000149c:	00001097          	auipc	ra,0x1
    800014a0:	5dc080e7          	jalr	1500(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800014a4:	00000493          	li	s1,0
    800014a8:	000027b7          	lui	a5,0x2
    800014ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014b0:	0297ec63          	bltu	a5,s1,800014e8 <_Z15thread1FunctionPv+0x68>
    {
        //if(i % 150 == 0 && i > 0)
        //    thread_dispatch();
        Riscv::printString("i : ");
    800014b4:	00005517          	auipc	a0,0x5
    800014b8:	b8c50513          	addi	a0,a0,-1140 # 80006040 <CONSOLE_STATUS+0x30>
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	5bc080e7          	jalr	1468(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	620080e7          	jalr	1568(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800014d0:	00005517          	auipc	a0,0x5
    800014d4:	e1850513          	addi	a0,a0,-488 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	5a0080e7          	jalr	1440(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    for(uint64 i = 0; i < num;i++)
    800014e0:	00148493          	addi	s1,s1,1
    800014e4:	fc5ff06f          	j	800014a8 <_Z15thread1FunctionPv+0x28>
    }
}
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    80001510:	00005517          	auipc	a0,0x5
    80001514:	b3850513          	addi	a0,a0,-1224 # 80006048 <CONSOLE_STATUS+0x38>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	560080e7          	jalr	1376(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001520:	00000493          	li	s1,0
    80001524:	000027b7          	lui	a5,0x2
    80001528:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000152c:	0297ec63          	bltu	a5,s1,80001564 <_Z15thread2FunctionPv+0x68>
    {
        //if(j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    80001530:	00005517          	auipc	a0,0x5
    80001534:	b3050513          	addi	a0,a0,-1232 # 80006060 <CONSOLE_STATUS+0x50>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	540080e7          	jalr	1344(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    80001540:	00048513          	mv	a0,s1
    80001544:	00001097          	auipc	ra,0x1
    80001548:	5a4080e7          	jalr	1444(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    8000154c:	00005517          	auipc	a0,0x5
    80001550:	d9c50513          	addi	a0,a0,-612 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	524080e7          	jalr	1316(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    8000155c:	00148493          	addi	s1,s1,1
    80001560:	fc5ff06f          	j	80001524 <_Z15thread2FunctionPv+0x28>
    }
}
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_Z20thread2FunctionTest2Pv>:

void thread2FunctionTest2(void* p)
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
    Riscv::printString("Thread 2 started...\n");
    8000158c:	00005517          	auipc	a0,0x5
    80001590:	abc50513          	addi	a0,a0,-1348 # 80006048 <CONSOLE_STATUS+0x38>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	4e4080e7          	jalr	1252(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000159c:	00000493          	li	s1,0
    800015a0:	000027b7          	lui	a5,0x2
    800015a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015a8:	0297ec63          	bltu	a5,s1,800015e0 <_Z20thread2FunctionTest2Pv+0x68>
        //    time_sleep(200);
        //if(j == 200)
        //    thread_exit();
        //if(j!= 100 && j!= 200 && j % 50 == 0 && j > 0)
        //    thread_dispatch();
        Riscv::printString("j : ");
    800015ac:	00005517          	auipc	a0,0x5
    800015b0:	ab450513          	addi	a0,a0,-1356 # 80006060 <CONSOLE_STATUS+0x50>
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	4c4080e7          	jalr	1220(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(j);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	528080e7          	jalr	1320(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
        Riscv::printString("\n");
    800015c8:	00005517          	auipc	a0,0x5
    800015cc:	d2050513          	addi	a0,a0,-736 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	4a8080e7          	jalr	1192(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    for(uint64 j = 0; j < num;j++)
    800015d8:	00148493          	addi	s1,s1,1
    800015dc:	fc5ff06f          	j	800015a0 <_Z20thread2FunctionTest2Pv+0x28>
    }
}
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_Z11threadTest1v>:


void threadTest1()
{
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    8000160c:	01800513          	li	a0,24
    80001610:	00001097          	auipc	ra,0x1
    80001614:	1b8080e7          	jalr	440(ra) # 800027c8 <_Znwm>
    80001618:	00050493          	mv	s1,a0
    8000161c:	00000613          	li	a2,0
    80001620:	00000597          	auipc	a1,0x0
    80001624:	e6058593          	addi	a1,a1,-416 # 80001480 <_Z15thread1FunctionPv>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	26c080e7          	jalr	620(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001630:	00048513          	mv	a0,s1
    80001634:	00001097          	auipc	ra,0x1
    80001638:	1e4080e7          	jalr	484(ra) # 80002818 <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    8000163c:	01800513          	li	a0,24
    80001640:	00001097          	auipc	ra,0x1
    80001644:	188080e7          	jalr	392(ra) # 800027c8 <_Znwm>
    80001648:	00050913          	mv	s2,a0
    8000164c:	00000613          	li	a2,0
    80001650:	00000597          	auipc	a1,0x0
    80001654:	eac58593          	addi	a1,a1,-340 # 800014fc <_Z15thread2FunctionPv>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	23c080e7          	jalr	572(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001660:	00090513          	mv	a0,s2
    80001664:	00001097          	auipc	ra,0x1
    80001668:	1b4080e7          	jalr	436(ra) # 80002818 <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	384080e7          	jalr	900(ra) # 800029f0 <_ZN5Riscv16enableInterruptsEv>
    80001674:	01c0006f          	j	80001690 <_Z11threadTest1v+0x9c>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    {
        Riscv::printString("Main thread\n");
    80001678:	00005517          	auipc	a0,0x5
    8000167c:	9f050513          	addi	a0,a0,-1552 # 80006068 <CONSOLE_STATUS+0x58>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	3f8080e7          	jalr	1016(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        thread_dispatch();
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	c9c080e7          	jalr	-868(ra) # 80001324 <thread_dispatch>
    while(t1->myHandle->getState() != PCB::FINISHED || t2->myHandle->getState() != PCB::FINISHED)
    80001690:	0004b783          	ld	a5,0(s1)

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80001694:	0307a703          	lw	a4,48(a5)
    80001698:	00300793          	li	a5,3
    8000169c:	fcf71ee3          	bne	a4,a5,80001678 <_Z11threadTest1v+0x84>
    800016a0:	00093783          	ld	a5,0(s2)
    800016a4:	0307a703          	lw	a4,48(a5)
    800016a8:	00300793          	li	a5,3
    800016ac:	fcf716e3          	bne	a4,a5,80001678 <_Z11threadTest1v+0x84>
    }

    Riscv::printString("End...\n");
    800016b0:	00005517          	auipc	a0,0x5
    800016b4:	9c850513          	addi	a0,a0,-1592 # 80006078 <CONSOLE_STATUS+0x68>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	3c0080e7          	jalr	960(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    Riscv::disableInterrupts();
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	350080e7          	jalr	848(ra) # 80002a10 <_ZN5Riscv17disableInterruptsEv>
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	00013903          	ld	s2,0(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret
    800016e0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	108080e7          	jalr	264(ra) # 800027f0 <_ZdlPv>
    800016f0:	00090513          	mv	a0,s2
    800016f4:	00007097          	auipc	ra,0x7
    800016f8:	ff4080e7          	jalr	-12(ra) # 800086e8 <_Unwind_Resume>
    800016fc:	00050493          	mv	s1,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    80001700:	00090513          	mv	a0,s2
    80001704:	00001097          	auipc	ra,0x1
    80001708:	0ec080e7          	jalr	236(ra) # 800027f0 <_ZdlPv>
    8000170c:	00048513          	mv	a0,s1
    80001710:	00007097          	auipc	ra,0x7
    80001714:	fd8080e7          	jalr	-40(ra) # 800086e8 <_Unwind_Resume>

0000000080001718 <_Z11threadTest2v>:

void threadTest2()
{
    80001718:	fe010113          	addi	sp,sp,-32
    8000171c:	00113c23          	sd	ra,24(sp)
    80001720:	00813823          	sd	s0,16(sp)
    80001724:	00913423          	sd	s1,8(sp)
    80001728:	01213023          	sd	s2,0(sp)
    8000172c:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001730:	01800513          	li	a0,24
    80001734:	00001097          	auipc	ra,0x1
    80001738:	094080e7          	jalr	148(ra) # 800027c8 <_Znwm>
    8000173c:	00050493          	mv	s1,a0
    80001740:	00000613          	li	a2,0
    80001744:	00000597          	auipc	a1,0x0
    80001748:	d1058593          	addi	a1,a1,-752 # 80001454 <_Z4idlePv>
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	148080e7          	jalr	328(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001754:	00048513          	mv	a0,s1
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	0c0080e7          	jalr	192(ra) # 80002818 <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001760:	01800513          	li	a0,24
    80001764:	00001097          	auipc	ra,0x1
    80001768:	064080e7          	jalr	100(ra) # 800027c8 <_Znwm>
    8000176c:	00050913          	mv	s2,a0
    80001770:	00000613          	li	a2,0
    80001774:	00000597          	auipc	a1,0x0
    80001778:	d0c58593          	addi	a1,a1,-756 # 80001480 <_Z15thread1FunctionPv>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	118080e7          	jalr	280(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001784:	00090513          	mv	a0,s2
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	090080e7          	jalr	144(ra) # 80002818 <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001790:	01800513          	li	a0,24
    80001794:	00001097          	auipc	ra,0x1
    80001798:	034080e7          	jalr	52(ra) # 800027c8 <_Znwm>
    8000179c:	00050913          	mv	s2,a0
    800017a0:	00000613          	li	a2,0
    800017a4:	00000597          	auipc	a1,0x0
    800017a8:	dd458593          	addi	a1,a1,-556 # 80001578 <_Z20thread2FunctionTest2Pv>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	0e8080e7          	jalr	232(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    800017b4:	00090513          	mv	a0,s2
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	060080e7          	jalr	96(ra) # 80002818 <_ZN6Thread5startEv>

    Riscv::enableInterrupts();
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	230080e7          	jalr	560(ra) # 800029f0 <_ZN5Riscv16enableInterruptsEv>

    while(idleThread->myHandle->getState() != PCB::FINISHED);
    800017c8:	0004b783          	ld	a5,0(s1)
    800017cc:	0307a703          	lw	a4,48(a5)
    800017d0:	00300793          	li	a5,3
    800017d4:	fef71ae3          	bne	a4,a5,800017c8 <_Z11threadTest2v+0xb0>

    Riscv::printString("End...\n");
    800017d8:	00005517          	auipc	a0,0x5
    800017dc:	8a050513          	addi	a0,a0,-1888 # 80006078 <CONSOLE_STATUS+0x68>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	298080e7          	jalr	664(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>

    Riscv::disableInterrupts();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	228080e7          	jalr	552(ra) # 80002a10 <_ZN5Riscv17disableInterruptsEv>
}
    800017f0:	01813083          	ld	ra,24(sp)
    800017f4:	01013403          	ld	s0,16(sp)
    800017f8:	00813483          	ld	s1,8(sp)
    800017fc:	00013903          	ld	s2,0(sp)
    80001800:	02010113          	addi	sp,sp,32
    80001804:	00008067          	ret
    80001808:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    8000180c:	00048513          	mv	a0,s1
    80001810:	00001097          	auipc	ra,0x1
    80001814:	fe0080e7          	jalr	-32(ra) # 800027f0 <_ZdlPv>
    80001818:	00090513          	mv	a0,s2
    8000181c:	00007097          	auipc	ra,0x7
    80001820:	ecc080e7          	jalr	-308(ra) # 800086e8 <_Unwind_Resume>
    80001824:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001828:	00090513          	mv	a0,s2
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	fc4080e7          	jalr	-60(ra) # 800027f0 <_ZdlPv>
    80001834:	00048513          	mv	a0,s1
    80001838:	00007097          	auipc	ra,0x7
    8000183c:	eb0080e7          	jalr	-336(ra) # 800086e8 <_Unwind_Resume>
    80001840:	00050493          	mv	s1,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001844:	00090513          	mv	a0,s2
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	fa8080e7          	jalr	-88(ra) # 800027f0 <_ZdlPv>
    80001850:	00048513          	mv	a0,s1
    80001854:	00007097          	auipc	ra,0x7
    80001858:	e94080e7          	jalr	-364(ra) # 800086e8 <_Unwind_Resume>

000000008000185c <_Z11threadTestsv>:

void threadTests()
{
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    threadTest1();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	d88080e7          	jalr	-632(ra) # 800015f4 <_Z11threadTest1v>
    //threadTest2();
}
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_Z10mallocFreev>:


//memory (de)allocation tests
void mallocFree()
{
    80001884:	cc010113          	addi	sp,sp,-832
    80001888:	32113c23          	sd	ra,824(sp)
    8000188c:	32813823          	sd	s0,816(sp)
    80001890:	32913423          	sd	s1,808(sp)
    80001894:	34010413          	addi	s0,sp,832
    Riscv::printString("mallocFree\n");
    80001898:	00004517          	auipc	a0,0x4
    8000189c:	7e850513          	addi	a0,a0,2024 # 80006080 <CONSOLE_STATUS+0x70>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	1d8080e7          	jalr	472(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    800018a8:	00000493          	li	s1,0
    800018ac:	0080006f          	j	800018b4 <_Z10mallocFreev+0x30>
    800018b0:	0014849b          	addiw	s1,s1,1
    800018b4:	06300793          	li	a5,99
    800018b8:	0497c463          	blt	a5,s1,80001900 <_Z10mallocFreev+0x7c>
    {
        addrs[i] = mem_alloc(100);
    800018bc:	06400513          	li	a0,100
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	988080e7          	jalr	-1656(ra) # 80001248 <mem_alloc>
    800018c8:	00349793          	slli	a5,s1,0x3
    800018cc:	fe040713          	addi	a4,s0,-32
    800018d0:	00f707b3          	add	a5,a4,a5
    800018d4:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800018d8:	fc051ce3          	bnez	a0,800018b0 <_Z10mallocFreev+0x2c>
        {
            Riscv::printString("not OK\n");
    800018dc:	00004517          	auipc	a0,0x4
    800018e0:	7b450513          	addi	a0,a0,1972 # 80006090 <CONSOLE_STATUS+0x80>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	194080e7          	jalr	404(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            return;
        }
    }

    Riscv::printString("OK\n");
}
    800018ec:	33813083          	ld	ra,824(sp)
    800018f0:	33013403          	ld	s0,816(sp)
    800018f4:	32813483          	ld	s1,808(sp)
    800018f8:	34010113          	addi	sp,sp,832
    800018fc:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001900:	00000493          	li	s1,0
    80001904:	06300793          	li	a5,99
    80001908:	0297ce63          	blt	a5,s1,80001944 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    8000190c:	00349793          	slli	a5,s1,0x3
    80001910:	fe040713          	addi	a4,s0,-32
    80001914:	00f707b3          	add	a5,a4,a5
    80001918:	ce07b503          	ld	a0,-800(a5)
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	95c080e7          	jalr	-1700(ra) # 80001278 <mem_free>
        if(retval != 0)
    80001924:	00051663          	bnez	a0,80001930 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001928:	0024849b          	addiw	s1,s1,2
    8000192c:	fd9ff06f          	j	80001904 <_Z10mallocFreev+0x80>
            Riscv::printString("not OK\n");
    80001930:	00004517          	auipc	a0,0x4
    80001934:	76050513          	addi	a0,a0,1888 # 80006090 <CONSOLE_STATUS+0x80>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	140080e7          	jalr	320(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            return;
    80001940:	fadff06f          	j	800018ec <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001944:	00000493          	li	s1,0
    80001948:	0080006f          	j	80001950 <_Z10mallocFreev+0xcc>
    8000194c:	0024849b          	addiw	s1,s1,2
    80001950:	06300793          	li	a5,99
    80001954:	0297cc63          	blt	a5,s1,8000198c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001958:	01400513          	li	a0,20
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	8ec080e7          	jalr	-1812(ra) # 80001248 <mem_alloc>
    80001964:	00349793          	slli	a5,s1,0x3
    80001968:	fe040713          	addi	a4,s0,-32
    8000196c:	00f707b3          	add	a5,a4,a5
    80001970:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001974:	fc051ce3          	bnez	a0,8000194c <_Z10mallocFreev+0xc8>
            Riscv::printString("not OK\n");
    80001978:	00004517          	auipc	a0,0x4
    8000197c:	71850513          	addi	a0,a0,1816 # 80006090 <CONSOLE_STATUS+0x80>
    80001980:	00001097          	auipc	ra,0x1
    80001984:	0f8080e7          	jalr	248(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            return;
    80001988:	f65ff06f          	j	800018ec <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    8000198c:	00000493          	li	s1,0
    80001990:	06300793          	li	a5,99
    80001994:	0297ce63          	blt	a5,s1,800019d0 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001998:	00349793          	slli	a5,s1,0x3
    8000199c:	fe040713          	addi	a4,s0,-32
    800019a0:	00f707b3          	add	a5,a4,a5
    800019a4:	ce07b503          	ld	a0,-800(a5)
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	8d0080e7          	jalr	-1840(ra) # 80001278 <mem_free>
        if(retval != 0)
    800019b0:	00051663          	bnez	a0,800019bc <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    800019b4:	0014849b          	addiw	s1,s1,1
    800019b8:	fd9ff06f          	j	80001990 <_Z10mallocFreev+0x10c>
            Riscv::printString("not OK\n");
    800019bc:	00004517          	auipc	a0,0x4
    800019c0:	6d450513          	addi	a0,a0,1748 # 80006090 <CONSOLE_STATUS+0x80>
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	0b4080e7          	jalr	180(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            return;
    800019cc:	f21ff06f          	j	800018ec <_Z10mallocFreev+0x68>
    Riscv::printString("OK\n");
    800019d0:	00004517          	auipc	a0,0x4
    800019d4:	6c850513          	addi	a0,a0,1736 # 80006098 <CONSOLE_STATUS+0x88>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	0a0080e7          	jalr	160(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    800019e0:	f0dff06f          	j	800018ec <_Z10mallocFreev+0x68>

00000000800019e4 <_Z9bigMallocv>:
void bigMalloc()
{
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
    Riscv::printString("bigMalloc\n");
    800019f4:	00004517          	auipc	a0,0x4
    800019f8:	6ac50513          	addi	a0,a0,1708 # 800060a0 <CONSOLE_STATUS+0x90>
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	07c080e7          	jalr	124(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001a04:	00006797          	auipc	a5,0x6
    80001a08:	b6c7b783          	ld	a5,-1172(a5) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a0c:	0007b503          	ld	a0,0(a5)
    80001a10:	00006797          	auipc	a5,0x6
    80001a14:	b307b783          	ld	a5,-1232(a5) # 80007540 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a18:	0007b783          	ld	a5,0(a5)
    80001a1c:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001a20:	06450513          	addi	a0,a0,100
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	824080e7          	jalr	-2012(ra) # 80001248 <mem_alloc>
    if(p == 0)
    80001a2c:	02050263          	beqz	a0,80001a50 <_Z9bigMallocv+0x6c>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001a30:	00004517          	auipc	a0,0x4
    80001a34:	66050513          	addi	a0,a0,1632 # 80006090 <CONSOLE_STATUS+0x80>
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	040080e7          	jalr	64(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret
        Riscv::printString("OK\n");
    80001a50:	00004517          	auipc	a0,0x4
    80001a54:	64850513          	addi	a0,a0,1608 # 80006098 <CONSOLE_STATUS+0x88>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	020080e7          	jalr	32(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    80001a60:	fe1ff06f          	j	80001a40 <_Z9bigMallocv+0x5c>

0000000080001a64 <_Z17lotOfSmallMallocsv>:

void lotOfSmallMallocs()
{
    80001a64:	fd010113          	addi	sp,sp,-48
    80001a68:	02113423          	sd	ra,40(sp)
    80001a6c:	02813023          	sd	s0,32(sp)
    80001a70:	00913c23          	sd	s1,24(sp)
    80001a74:	01213823          	sd	s2,16(sp)
    80001a78:	01313423          	sd	s3,8(sp)
    80001a7c:	03010413          	addi	s0,sp,48
    Riscv::printString("lotOfSmallMallocs\n");
    80001a80:	00004517          	auipc	a0,0x4
    80001a84:	63050513          	addi	a0,a0,1584 # 800060b0 <CONSOLE_STATUS+0xa0>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	ff0080e7          	jalr	-16(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    uint64 cnt = 0;
    uint64 sum = 0;
    uint64 N = 10000UL;
    uint64 X = 10UL;
    for(uint64 i = 0; i < N;i++)
    80001a90:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a94:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a98:	00000913          	li	s2,0
    80001a9c:	0180006f          	j	80001ab4 <_Z17lotOfSmallMallocsv+0x50>
    {
        Test* t = (Test*)mem_alloc(sizeof(Test));
        if(t == 0)
            break;
        t->a = X;
    80001aa0:	00a00793          	li	a5,10
    80001aa4:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001aa8:	00a98993          	addi	s3,s3,10
        cnt++;
    80001aac:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001ab0:	00148493          	addi	s1,s1,1
    80001ab4:	000027b7          	lui	a5,0x2
    80001ab8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001abc:	0097ea63          	bltu	a5,s1,80001ad0 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001ac0:	00800513          	li	a0,8
    80001ac4:	fffff097          	auipc	ra,0xfffff
    80001ac8:	784080e7          	jalr	1924(ra) # 80001248 <mem_alloc>
        if(t == 0)
    80001acc:	fc051ae3          	bnez	a0,80001aa0 <_Z17lotOfSmallMallocsv+0x3c>
    }
    Riscv::printInteger(cnt);
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	014080e7          	jalr	20(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
    Riscv::printString("\n");
    80001adc:	00005517          	auipc	a0,0x5
    80001ae0:	80c50513          	addi	a0,a0,-2036 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	f94080e7          	jalr	-108(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    if(sum == X*cnt)
    80001aec:	00291793          	slli	a5,s2,0x2
    80001af0:	01278933          	add	s2,a5,s2
    80001af4:	00191913          	slli	s2,s2,0x1
    80001af8:	03390863          	beq	s2,s3,80001b28 <_Z17lotOfSmallMallocsv+0xc4>
        Riscv::printString("OK\n");
    else
        Riscv::printString("not OK\n");
    80001afc:	00004517          	auipc	a0,0x4
    80001b00:	59450513          	addi	a0,a0,1428 # 80006090 <CONSOLE_STATUS+0x80>
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	f74080e7          	jalr	-140(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
}
    80001b0c:	02813083          	ld	ra,40(sp)
    80001b10:	02013403          	ld	s0,32(sp)
    80001b14:	01813483          	ld	s1,24(sp)
    80001b18:	01013903          	ld	s2,16(sp)
    80001b1c:	00813983          	ld	s3,8(sp)
    80001b20:	03010113          	addi	sp,sp,48
    80001b24:	00008067          	ret
        Riscv::printString("OK\n");
    80001b28:	00004517          	auipc	a0,0x4
    80001b2c:	57050513          	addi	a0,a0,1392 # 80006098 <CONSOLE_STATUS+0x88>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	f48080e7          	jalr	-184(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    80001b38:	fd5ff06f          	j	80001b0c <_Z17lotOfSmallMallocsv+0xa8>

0000000080001b3c <_Z7badFreev>:
void badFree()
{
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    Riscv::printString("badFree\n");
    80001b4c:	00004517          	auipc	a0,0x4
    80001b50:	57c50513          	addi	a0,a0,1404 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	f24080e7          	jalr	-220(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b5c:	00800513          	li	a0,8
    80001b60:	fffff097          	auipc	ra,0xfffff
    80001b64:	6e8080e7          	jalr	1768(ra) # 80001248 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b68:	00250513          	addi	a0,a0,2
    80001b6c:	fffff097          	auipc	ra,0xfffff
    80001b70:	70c080e7          	jalr	1804(ra) # 80001278 <mem_free>
    if(retval == 0)
    80001b74:	02051263          	bnez	a0,80001b98 <_Z7badFreev+0x5c>
        Riscv::printString("not OK\n");
    80001b78:	00004517          	auipc	a0,0x4
    80001b7c:	51850513          	addi	a0,a0,1304 # 80006090 <CONSOLE_STATUS+0x80>
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	ef8080e7          	jalr	-264(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    else
        Riscv::printString("OK\n");
}
    80001b88:	00813083          	ld	ra,8(sp)
    80001b8c:	00013403          	ld	s0,0(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret
        Riscv::printString("OK\n");
    80001b98:	00004517          	auipc	a0,0x4
    80001b9c:	50050513          	addi	a0,a0,1280 # 80006098 <CONSOLE_STATUS+0x88>
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	ed8080e7          	jalr	-296(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
}
    80001ba8:	fe1ff06f          	j	80001b88 <_Z7badFreev+0x4c>

0000000080001bac <_Z13stressTestingv>:

void stressTesting()
{
    80001bac:	cb010113          	addi	sp,sp,-848
    80001bb0:	34113423          	sd	ra,840(sp)
    80001bb4:	34813023          	sd	s0,832(sp)
    80001bb8:	32913c23          	sd	s1,824(sp)
    80001bbc:	33213823          	sd	s2,816(sp)
    80001bc0:	33313423          	sd	s3,808(sp)
    80001bc4:	35010413          	addi	s0,sp,848
    Riscv::printString("stressTesting\n");
    80001bc8:	00004517          	auipc	a0,0x4
    80001bcc:	51050513          	addi	a0,a0,1296 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	ea8080e7          	jalr	-344(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i < num;i++)
    80001bd8:	00000493          	li	s1,0
    80001bdc:	0080006f          	j	80001be4 <_Z13stressTestingv+0x38>
    80001be0:	0014849b          	addiw	s1,s1,1
    80001be4:	06300793          	li	a5,99
    80001be8:	0497c863          	blt	a5,s1,80001c38 <_Z13stressTestingv+0x8c>
    {
        addrs[i] = mem_alloc(1);
    80001bec:	00100513          	li	a0,1
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	658080e7          	jalr	1624(ra) # 80001248 <mem_alloc>
    80001bf8:	00349793          	slli	a5,s1,0x3
    80001bfc:	fd040713          	addi	a4,s0,-48
    80001c00:	00f707b3          	add	a5,a4,a5
    80001c04:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c08:	fc051ce3          	bnez	a0,80001be0 <_Z13stressTestingv+0x34>
        {
            Riscv::printString("not OK\n");
    80001c0c:	00004517          	auipc	a0,0x4
    80001c10:	48450513          	addi	a0,a0,1156 # 80006090 <CONSOLE_STATUS+0x80>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	e64080e7          	jalr	-412(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        }
        sz-=10;
    }

    Riscv::printString("OK\n");
}
    80001c1c:	34813083          	ld	ra,840(sp)
    80001c20:	34013403          	ld	s0,832(sp)
    80001c24:	33813483          	ld	s1,824(sp)
    80001c28:	33013903          	ld	s2,816(sp)
    80001c2c:	32813983          	ld	s3,808(sp)
    80001c30:	35010113          	addi	sp,sp,848
    80001c34:	00008067          	ret
    int sz = 5;
    80001c38:	00500913          	li	s2,5
    while(sz > 0)
    80001c3c:	19205e63          	blez	s2,80001dd8 <_Z13stressTestingv+0x22c>
        Riscv::printString("sz : ");
    80001c40:	00004517          	auipc	a0,0x4
    80001c44:	4a850513          	addi	a0,a0,1192 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	e30080e7          	jalr	-464(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        Riscv::printInteger(sz);
    80001c50:	00090993          	mv	s3,s2
    80001c54:	00090513          	mv	a0,s2
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	e90080e7          	jalr	-368(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
        for(int i = 0 ; i < num;i+=2)
    80001c60:	00000493          	li	s1,0
    80001c64:	06300793          	li	a5,99
    80001c68:	0a97ca63          	blt	a5,s1,80001d1c <_Z13stressTestingv+0x170>
            Riscv::printString("i : ");
    80001c6c:	00004517          	auipc	a0,0x4
    80001c70:	3d450513          	addi	a0,a0,980 # 80006040 <CONSOLE_STATUS+0x30>
    80001c74:	00001097          	auipc	ra,0x1
    80001c78:	e04080e7          	jalr	-508(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	e68080e7          	jalr	-408(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001c88:	00004517          	auipc	a0,0x4
    80001c8c:	46850513          	addi	a0,a0,1128 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	de8080e7          	jalr	-536(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001c98:	00349793          	slli	a5,s1,0x3
    80001c9c:	fd040713          	addi	a4,s0,-48
    80001ca0:	00f707b3          	add	a5,a4,a5
    80001ca4:	ce07b503          	ld	a0,-800(a5)
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	5d0080e7          	jalr	1488(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001cb0:	04051263          	bnez	a0,80001cf4 <_Z13stressTestingv+0x148>
            Riscv::printString("alloc\n");
    80001cb4:	00004517          	auipc	a0,0x4
    80001cb8:	44450513          	addi	a0,a0,1092 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001cbc:	00001097          	auipc	ra,0x1
    80001cc0:	dbc080e7          	jalr	-580(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz/2);
    80001cc4:	01f9551b          	srliw	a0,s2,0x1f
    80001cc8:	0125053b          	addw	a0,a0,s2
    80001ccc:	4015551b          	sraiw	a0,a0,0x1
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	578080e7          	jalr	1400(ra) # 80001248 <mem_alloc>
    80001cd8:	00349793          	slli	a5,s1,0x3
    80001cdc:	fd040713          	addi	a4,s0,-48
    80001ce0:	00f707b3          	add	a5,a4,a5
    80001ce4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001ce8:	02050063          	beqz	a0,80001d08 <_Z13stressTestingv+0x15c>
        for(int i = 0 ; i < num;i+=2)
    80001cec:	0024849b          	addiw	s1,s1,2
    80001cf0:	f75ff06f          	j	80001c64 <_Z13stressTestingv+0xb8>
                Riscv::printString("not OK\n");
    80001cf4:	00004517          	auipc	a0,0x4
    80001cf8:	39c50513          	addi	a0,a0,924 # 80006090 <CONSOLE_STATUS+0x80>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	d7c080e7          	jalr	-644(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
                return;
    80001d04:	f19ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001d08:	00004517          	auipc	a0,0x4
    80001d0c:	3f850513          	addi	a0,a0,1016 # 80006100 <CONSOLE_STATUS+0xf0>
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	d68080e7          	jalr	-664(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
                return;
    80001d18:	f05ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
        for(int i = 1 ; i < num;i+=2)
    80001d1c:	00100493          	li	s1,1
    80001d20:	06300793          	li	a5,99
    80001d24:	0a97c663          	blt	a5,s1,80001dd0 <_Z13stressTestingv+0x224>
            Riscv::printString("i : ");
    80001d28:	00004517          	auipc	a0,0x4
    80001d2c:	31850513          	addi	a0,a0,792 # 80006040 <CONSOLE_STATUS+0x30>
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	d48080e7          	jalr	-696(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            Riscv::printInteger(i);
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	dac080e7          	jalr	-596(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
            Riscv::printString("free\n");
    80001d44:	00004517          	auipc	a0,0x4
    80001d48:	3ac50513          	addi	a0,a0,940 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	d2c080e7          	jalr	-724(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            int retval = mem_free(addrs[i]);
    80001d54:	00349793          	slli	a5,s1,0x3
    80001d58:	fd040713          	addi	a4,s0,-48
    80001d5c:	00f707b3          	add	a5,a4,a5
    80001d60:	ce07b503          	ld	a0,-800(a5)
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	514080e7          	jalr	1300(ra) # 80001278 <mem_free>
            if(retval != 0)
    80001d6c:	02051e63          	bnez	a0,80001da8 <_Z13stressTestingv+0x1fc>
            Riscv::printString("alloc\n");
    80001d70:	00004517          	auipc	a0,0x4
    80001d74:	38850513          	addi	a0,a0,904 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	d00080e7          	jalr	-768(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            addrs[i] = mem_alloc(sz);
    80001d80:	00098513          	mv	a0,s3
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	4c4080e7          	jalr	1220(ra) # 80001248 <mem_alloc>
    80001d8c:	00349793          	slli	a5,s1,0x3
    80001d90:	fd040713          	addi	a4,s0,-48
    80001d94:	00f707b3          	add	a5,a4,a5
    80001d98:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d9c:	02050063          	beqz	a0,80001dbc <_Z13stressTestingv+0x210>
        for(int i = 1 ; i < num;i+=2)
    80001da0:	0024849b          	addiw	s1,s1,2
    80001da4:	f7dff06f          	j	80001d20 <_Z13stressTestingv+0x174>
                Riscv::printString("not OK\n");
    80001da8:	00004517          	auipc	a0,0x4
    80001dac:	2e850513          	addi	a0,a0,744 # 80006090 <CONSOLE_STATUS+0x80>
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	cc8080e7          	jalr	-824(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
                return;
    80001db8:	e65ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
                Riscv::printString("not Ok\n");
    80001dbc:	00004517          	auipc	a0,0x4
    80001dc0:	34450513          	addi	a0,a0,836 # 80006100 <CONSOLE_STATUS+0xf0>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	cb4080e7          	jalr	-844(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
                return;
    80001dcc:	e51ff06f          	j	80001c1c <_Z13stressTestingv+0x70>
        sz-=10;
    80001dd0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001dd4:	e69ff06f          	j	80001c3c <_Z13stressTestingv+0x90>
    Riscv::printString("OK\n");
    80001dd8:	00004517          	auipc	a0,0x4
    80001ddc:	2c050513          	addi	a0,a0,704 # 80006098 <CONSOLE_STATUS+0x88>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	c98080e7          	jalr	-872(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    80001de8:	e35ff06f          	j	80001c1c <_Z13stressTestingv+0x70>

0000000080001dec <_Z21memoryAllocationTestsv>:

void memoryAllocationTests()
{
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    //badFree();
    stressTesting();
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	db0080e7          	jalr	-592(ra) # 80001bac <_Z13stressTestingv>
}
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN3PCB6runnerEv>:
    Scheduler::put(this);
}

//todo
void PCB::runner()
{
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    Riscv::printString("Runner started...\n");
    80001e28:	00004517          	auipc	a0,0x4
    80001e2c:	2e050513          	addi	a0,a0,736 # 80006108 <CONSOLE_STATUS+0xf8>
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	c48080e7          	jalr	-952(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    Riscv::popSppSpie();
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	c20080e7          	jalr	-992(ra) # 80002a58 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001e40:	00005497          	auipc	s1,0x5
    80001e44:	78048493          	addi	s1,s1,1920 # 800075c0 <_ZN3PCB7runningE>
    80001e48:	0004b783          	ld	a5,0(s1)
    80001e4c:	0187b703          	ld	a4,24(a5)
    80001e50:	0207b503          	ld	a0,32(a5)
    80001e54:	000700e7          	jalr	a4
    running->setState(PCB::FINISHED);
    80001e58:	0004b783          	ld	a5,0(s1)
    void setState(State s) {state = s;}
    80001e5c:	00300713          	li	a4,3
    80001e60:	02e7a823          	sw	a4,48(a5)
    Riscv::printString("PCB finished\n");
    80001e64:	00004517          	auipc	a0,0x4
    80001e68:	2bc50513          	addi	a0,a0,700 # 80006120 <CONSOLE_STATUS+0x110>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	c0c080e7          	jalr	-1012(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>

    //todo
    //da li thread_exit ili dispatch
    //thread_exit();
    thread_dispatch();
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	4b0080e7          	jalr	1200(ra) # 80001324 <thread_dispatch>
}
    80001e7c:	01813083          	ld	ra,24(sp)
    80001e80:	01013403          	ld	s0,16(sp)
    80001e84:	00813483          	ld	s1,8(sp)
    80001e88:	02010113          	addi	sp,sp,32
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00050493          	mv	s1,a0
    })
    80001ea8:	00e53423          	sd	a4,8(a0)
    80001eac:	00053823          	sd	zero,16(a0)
    80001eb0:	00b53c23          	sd	a1,24(a0)
    80001eb4:	02c53023          	sd	a2,32(a0)
    80001eb8:	02d53423          	sd	a3,40(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001ebc:	000017b7          	lui	a5,0x1
    80001ec0:	00f686b3          	add	a3,a3,a5
    })
    80001ec4:	02d53c23          	sd	a3,56(a0)
    80001ec8:	00000797          	auipc	a5,0x0
    80001ecc:	f4c78793          	addi	a5,a5,-180 # 80001e14 <_ZN3PCB6runnerEv>
    80001ed0:	04f53023          	sd	a5,64(a0)
    Scheduler::put(this);
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	820080e7          	jalr	-2016(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
    nextPCB = 0;
    80001edc:	0004b023          	sd	zero,0(s1)
}
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	02010113          	addi	sp,sp,32
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN3PCB5sleepEm>:
{
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813423          	sd	s0,8(sp)
    80001efc:	01010413          	addi	s0,sp,16
}
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <_ZN3PCB5startEv>:
{
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00113423          	sd	ra,8(sp)
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	7d8080e7          	jalr	2008(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN3PCBnwEm>:
        PCB::contextSwitchExiting(&running->context);
    }

}

void *PCB::operator new(size_t size) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	300080e7          	jalr	768(ra) # 80003244 <_Z7kmallocm>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	00813023          	sd	s0,0(sp)
    80001f68:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	300080e7          	jalr	768(ra) # 8000326c <_Z5kfreePv>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN3PCBD1Ev>:

PCB::~PCB() {
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00113423          	sd	ra,8(sp)
    80001f8c:	00813023          	sd	s0,0(sp)
    80001f90:	01010413          	addi	s0,sp,16
    kfree(beginSP);
    80001f94:	02853503          	ld	a0,40(a0)
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	2d4080e7          	jalr	724(ra) # 8000326c <_Z5kfreePv>
}
    80001fa0:	00813083          	ld	ra,8(sp)
    80001fa4:	00013403          	ld	s0,0(sp)
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN3PCB8dispatchEv>:
{
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	01213023          	sd	s2,0(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    Riscv::printString("Dispatch called...\n");
    80001fc8:	00004517          	auipc	a0,0x4
    80001fcc:	16850513          	addi	a0,a0,360 # 80006130 <CONSOLE_STATUS+0x120>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	aa8080e7          	jalr	-1368(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    PCB* old = running;
    80001fd8:	00005917          	auipc	s2,0x5
    80001fdc:	5e893903          	ld	s2,1512(s2) # 800075c0 <_ZN3PCB7runningE>
    State getState() {return state;}
    80001fe0:	03092703          	lw	a4,48(s2)
    if(old->getState() == PCB::RUNNING)
    80001fe4:	00100793          	li	a5,1
    80001fe8:	08f70263          	beq	a4,a5,8000206c <_ZN3PCB8dispatchEv+0xbc>
    PCB::running = Scheduler::get();
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	758080e7          	jalr	1880(ra) # 80002744 <_ZN9Scheduler3getEv>
    80001ff4:	00005497          	auipc	s1,0x5
    80001ff8:	5cc48493          	addi	s1,s1,1484 # 800075c0 <_ZN3PCB7runningE>
    80001ffc:	00a4b023          	sd	a0,0(s1)
    void setState(State s) {state = s;}
    80002000:	00100793          	li	a5,1
    80002004:	02f52823          	sw	a5,48(a0)
    Riscv::printString("Switching context...\n");
    80002008:	00004517          	auipc	a0,0x4
    8000200c:	14050513          	addi	a0,a0,320 # 80006148 <CONSOLE_STATUS+0x138>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	a68080e7          	jalr	-1432(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    if(PCB::exitingPCB == 0)
    80002018:	0084b483          	ld	s1,8(s1)
    8000201c:	06048063          	beqz	s1,8000207c <_ZN3PCB8dispatchEv+0xcc>
        delete PCB::exitingPCB;
    80002020:	00048513          	mv	a0,s1
    80002024:	00000097          	auipc	ra,0x0
    80002028:	f60080e7          	jalr	-160(ra) # 80001f84 <_ZN3PCBD1Ev>
    8000202c:	00048513          	mv	a0,s1
    80002030:	00000097          	auipc	ra,0x0
    80002034:	f2c080e7          	jalr	-212(ra) # 80001f5c <_ZN3PCBdlEPv>
        PCB::exitingPCB = 0;
    80002038:	00005797          	auipc	a5,0x5
    8000203c:	58878793          	addi	a5,a5,1416 # 800075c0 <_ZN3PCB7runningE>
    80002040:	0007b423          	sd	zero,8(a5)
        PCB::contextSwitchExiting(&running->context);
    80002044:	0007b503          	ld	a0,0(a5)
    80002048:	03850513          	addi	a0,a0,56
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	1f0080e7          	jalr	496(ra) # 8000123c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>
}
    80002054:	01813083          	ld	ra,24(sp)
    80002058:	01013403          	ld	s0,16(sp)
    8000205c:	00813483          	ld	s1,8(sp)
    80002060:	00013903          	ld	s2,0(sp)
    80002064:	02010113          	addi	sp,sp,32
    80002068:	00008067          	ret
        Scheduler::put(old);
    8000206c:	00090513          	mv	a0,s2
    80002070:	00000097          	auipc	ra,0x0
    80002074:	684080e7          	jalr	1668(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
    80002078:	f75ff06f          	j	80001fec <_ZN3PCB8dispatchEv+0x3c>
        PCB::contextSwitch(&old->context, &running->context);
    8000207c:	00005597          	auipc	a1,0x5
    80002080:	5445b583          	ld	a1,1348(a1) # 800075c0 <_ZN3PCB7runningE>
    80002084:	03858593          	addi	a1,a1,56
    80002088:	03890513          	addi	a0,s2,56
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	19c080e7          	jalr	412(ra) # 80001228 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    80002094:	fc1ff06f          	j	80002054 <_ZN3PCB8dispatchEv+0xa4>

0000000080002098 <_ZN3PCB17insertSleepingPCBEv>:

void PCB::insertSleepingPCB()
{
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	00813023          	sd	s0,0(sp)
    800020a4:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    800020a8:	00004517          	auipc	a0,0x4
    800020ac:	0b850513          	addi	a0,a0,184 # 80006160 <CONSOLE_STATUS+0x150>
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	9c8080e7          	jalr	-1592(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800020b8:	00005797          	auipc	a5,0x5
    800020bc:	5187b783          	ld	a5,1304(a5) # 800075d0 <_ZN3PCB15sleepingPCBHeadE>
    PCB* prev = 0;
    800020c0:	00000593          	li	a1,0
    while(curr != 0)
    800020c4:	02078463          	beqz	a5,800020ec <_ZN3PCB17insertSleepingPCBEv+0x54>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800020c8:	00005717          	auipc	a4,0x5
    800020cc:	4f873703          	ld	a4,1272(a4) # 800075c0 <_ZN3PCB7runningE>
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}
    800020d0:	01073603          	ld	a2,16(a4)
    800020d4:	0107b683          	ld	a3,16(a5)
    800020d8:	00d66863          	bltu	a2,a3,800020e8 <_ZN3PCB17insertSleepingPCBEv+0x50>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800020dc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800020e0:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800020e4:	fe1ff06f          	j	800020c4 <_ZN3PCB17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800020e8:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    800020ec:	02058063          	beqz	a1,8000210c <_ZN3PCB17insertSleepingPCBEv+0x74>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800020f0:	00005797          	auipc	a5,0x5
    800020f4:	4d07b783          	ld	a5,1232(a5) # 800075c0 <_ZN3PCB7runningE>
    800020f8:	00f5b023          	sd	a5,0(a1)
}
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000210c:	00005797          	auipc	a5,0x5
    80002110:	4b478793          	addi	a5,a5,1204 # 800075c0 <_ZN3PCB7runningE>
    80002114:	0007b703          	ld	a4,0(a5)
    80002118:	00e7b823          	sd	a4,16(a5)
    8000211c:	fe1ff06f          	j	800020fc <_ZN3PCB17insertSleepingPCBEv+0x64>

0000000080002120 <_ZN3PCB13tryToWakePCBsEv>:

void PCB::tryToWakePCBs() {
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	01213023          	sd	s2,0(sp)
    80002134:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking PCBs...\n");
    80002138:	00004517          	auipc	a0,0x4
    8000213c:	04850513          	addi	a0,a0,72 # 80006180 <CONSOLE_STATUS+0x170>
    80002140:	00001097          	auipc	ra,0x1
    80002144:	938080e7          	jalr	-1736(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    80002148:	00005497          	auipc	s1,0x5
    8000214c:	4884b483          	ld	s1,1160(s1) # 800075d0 <_ZN3PCB15sleepingPCBHeadE>
    80002150:	0380006f          	j	80002188 <_ZN3PCB13tryToWakePCBsEv+0x68>
    while(curr != 0)
    {
        if(curr->getTimeToSleep() == 1UL)
        {
            Riscv::printString("PCB woken...\n");
    80002154:	00004517          	auipc	a0,0x4
    80002158:	03c50513          	addi	a0,a0,60 # 80006190 <CONSOLE_STATUS+0x180>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	91c080e7          	jalr	-1764(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            PCB* old = curr;
            curr=curr->nextPCB;
    80002164:	0004b903          	ld	s2,0(s1)
    void setState(State s) {state = s;}
    80002168:	0204a823          	sw	zero,48(s1)
            old->setState(PCB::READY);
            old->nextPCB = 0;
    8000216c:	0004b023          	sd	zero,0(s1)
            Scheduler::put(old);
    80002170:	00048513          	mv	a0,s1
    80002174:	00000097          	auipc	ra,0x0
    80002178:	580080e7          	jalr	1408(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    8000217c:	00005797          	auipc	a5,0x5
    80002180:	4527ba23          	sd	s2,1108(a5) # 800075d0 <_ZN3PCB15sleepingPCBHeadE>
            curr=curr->nextPCB;
    80002184:	00090493          	mv	s1,s2
    while(curr != 0)
    80002188:	02048063          	beqz	s1,800021a8 <_ZN3PCB13tryToWakePCBsEv+0x88>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000218c:	0104b783          	ld	a5,16(s1)
        if(curr->getTimeToSleep() == 1UL)
    80002190:	00100713          	li	a4,1
    80002194:	fce780e3          	beq	a5,a4,80002154 <_ZN3PCB13tryToWakePCBsEv+0x34>
        }
        else
        {
            curr->setTimeToSleep(curr->getTimeToSleep() - 1);
    80002198:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000219c:	00f4b823          	sd	a5,16(s1)
            curr = curr->nextPCB;
    800021a0:	0004b483          	ld	s1,0(s1)
    800021a4:	fe5ff06f          	j	80002188 <_ZN3PCB13tryToWakePCBsEv+0x68>
        }
    }
}
    800021a8:	01813083          	ld	ra,24(sp)
    800021ac:	01013403          	ld	s0,16(sp)
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	00013903          	ld	s2,0(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret

00000000800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    Riscv::printString("Inserting sleeping PCB...\n");
    800021d0:	00004517          	auipc	a0,0x4
    800021d4:	f9050513          	addi	a0,a0,-112 # 80006160 <CONSOLE_STATUS+0x150>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	8a0080e7          	jalr	-1888(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800021e0:	00005797          	auipc	a5,0x5
    800021e4:	4007b783          	ld	a5,1024(a5) # 800075e0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800021e8:	00000593          	li	a1,0
    while(curr != 0)
    800021ec:	02078663          	beqz	a5,80002218 <_ZN12SleepPCBList17insertSleepingPCBEv+0x58>
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800021f0:	00005717          	auipc	a4,0x5
    800021f4:	37873703          	ld	a4,888(a4) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021f8:	00073703          	ld	a4,0(a4)
    uint64 getTimeToSleep() {return timeToSleep;}
    800021fc:	01073603          	ld	a2,16(a4)
    80002200:	0107b683          	ld	a3,16(a5)
    80002204:	00d66863          	bltu	a2,a3,80002214 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002208:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000220c:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    80002210:	fddff06f          	j	800021ec <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002214:	00f73023          	sd	a5,0(a4)
    }

    if(prev == 0)
    80002218:	02058a63          	beqz	a1,8000224c <_ZN12SleepPCBList17insertSleepingPCBEv+0x8c>
        if(sleepingPCBHead->nextPCB != 0)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
    8000221c:	00005797          	auipc	a5,0x5
    80002220:	34c7b783          	ld	a5,844(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002224:	0007b783          	ld	a5,0(a5)
    80002228:	0107b703          	ld	a4,16(a5)
    8000222c:	0105b683          	ld	a3,16(a1)
    80002230:	40d70733          	sub	a4,a4,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002234:	00e7b823          	sd	a4,16(a5)
        prev->nextPCB = PCB::running;
    80002238:	00f5b023          	sd	a5,0(a1)
    }
}
    8000223c:	00813083          	ld	ra,8(sp)
    80002240:	00013403          	ld	s0,0(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000224c:	00005797          	auipc	a5,0x5
    80002250:	31c7b783          	ld	a5,796(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002254:	0007b783          	ld	a5,0(a5)
    80002258:	00005717          	auipc	a4,0x5
    8000225c:	38f73423          	sd	a5,904(a4) # 800075e0 <_ZN12SleepPCBList15sleepingPCBHeadE>
        if(sleepingPCBHead->nextPCB != 0)
    80002260:	0007b703          	ld	a4,0(a5)
    80002264:	fc070ce3          	beqz	a4,8000223c <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002268:	01073683          	ld	a3,16(a4)
    8000226c:	0107b783          	ld	a5,16(a5)
            sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    80002270:	40f687b3          	sub	a5,a3,a5
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002274:	00f73823          	sd	a5,16(a4)
    80002278:	fc5ff06f          	j	8000223c <_ZN12SleepPCBList17insertSleepingPCBEv+0x7c>

000000008000227c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	00913423          	sd	s1,8(sp)
    8000228c:	02010413          	addi	s0,sp,32
    Riscv::printString("Waking pcbs...\n");
    80002290:	00004517          	auipc	a0,0x4
    80002294:	f1050513          	addi	a0,a0,-240 # 800061a0 <CONSOLE_STATUS+0x190>
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	7e0080e7          	jalr	2016(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
    PCB* curr = sleepingPCBHead;
    800022a0:	00005517          	auipc	a0,0x5
    800022a4:	34053503          	ld	a0,832(a0) # 800075e0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800022a8:	02050663          	beqz	a0,800022d4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x58>
    uint64 getTimeToSleep() {return timeToSleep;}
    800022ac:	01053783          	ld	a5,16(a0)
    {
        Riscv::printString("NULL\n");
        return;
    }
    if(sleepingPCBHead->getTimeToSleep() == 1)
    800022b0:	00100713          	li	a4,1
    800022b4:	04e78863          	beq	a5,a4,80002304 <_ZN12SleepPCBList13tryToWakePCBsEv+0x88>
            sleepingPCBHead = curr;
        }
    }
    else
    {
        sleepingPCBHead->setTimeToSleep(sleepingPCBHead->getTimeToSleep() - 1);
    800022b8:	fff78793          	addi	a5,a5,-1
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800022bc:	00f53823          	sd	a5,16(a0)
    }
}
    800022c0:	01813083          	ld	ra,24(sp)
    800022c4:	01013403          	ld	s0,16(sp)
    800022c8:	00813483          	ld	s1,8(sp)
    800022cc:	02010113          	addi	sp,sp,32
    800022d0:	00008067          	ret
        Riscv::printString("NULL\n");
    800022d4:	00004517          	auipc	a0,0x4
    800022d8:	edc50513          	addi	a0,a0,-292 # 800061b0 <CONSOLE_STATUS+0x1a0>
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	79c080e7          	jalr	1948(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
        return;
    800022e4:	fddff06f          	j	800022c0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>
            curr = curr->nextPCB;
    800022e8:	00053483          	ld	s1,0(a0)
            old->nextPCB = 0;
    800022ec:	00053023          	sd	zero,0(a0)
            Scheduler::put(old);
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	404080e7          	jalr	1028(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
            sleepingPCBHead = curr;
    800022f8:	00005797          	auipc	a5,0x5
    800022fc:	2e97b423          	sd	s1,744(a5) # 800075e0 <_ZN12SleepPCBList15sleepingPCBHeadE>
            curr = curr->nextPCB;
    80002300:	00048513          	mv	a0,s1
        while(curr != 0 && (curr == sleepingPCBHead || curr->getTimeToSleep() == 0))
    80002304:	fa050ee3          	beqz	a0,800022c0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>
    80002308:	00005797          	auipc	a5,0x5
    8000230c:	2d87b783          	ld	a5,728(a5) # 800075e0 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002310:	fca78ce3          	beq	a5,a0,800022e8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x6c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002314:	01053783          	ld	a5,16(a0)
    80002318:	fc0788e3          	beqz	a5,800022e8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x6c>
    8000231c:	fa5ff06f          	j	800022c0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x44>

0000000080002320 <_ZN5Queue3popEv>:
// Created by os on 5/3/22.
//

#include "../h/Queue.hpp"

void Queue::pop() {
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	01213023          	sd	s2,0(sp)
    80002334:	02010413          	addi	s0,sp,32
    80002338:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    8000233c:	00053503          	ld	a0,0(a0)
    80002340:	00853903          	ld	s2,8(a0)
    kfree(first);
    80002344:	00001097          	auipc	ra,0x1
    80002348:	f28080e7          	jalr	-216(ra) # 8000326c <_Z5kfreePv>
    first = newFirst;
    8000234c:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80002350:	00090e63          	beqz	s2,8000236c <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	00013903          	ld	s2,0(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret
        first = last = 0;
    8000236c:	0004b423          	sd	zero,8(s1)
    80002370:	0004b023          	sd	zero,0(s1)
}
    80002374:	fe1ff06f          	j	80002354 <_ZN5Queue3popEv+0x34>

0000000080002378 <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t) {
    80002378:	fe010113          	addi	sp,sp,-32
    8000237c:	00113c23          	sd	ra,24(sp)
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00913423          	sd	s1,8(sp)
    80002388:	01213023          	sd	s2,0(sp)
    8000238c:	02010413          	addi	s0,sp,32
    80002390:	00050493          	mv	s1,a0
    80002394:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    80002398:	01000513          	li	a0,16
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	ea8080e7          	jalr	-344(ra) # 80003244 <_Z7kmallocm>
    newElem->data = t;
    800023a4:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800023a8:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800023ac:	0004b783          	ld	a5,0(s1)
    800023b0:	02078463          	beqz	a5,800023d8 <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800023b4:	0084b783          	ld	a5,8(s1)
    800023b8:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800023bc:	00a4b423          	sd	a0,8(s1)
    }
}
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	01013403          	ld	s0,16(sp)
    800023c8:	00813483          	ld	s1,8(sp)
    800023cc:	00013903          	ld	s2,0(sp)
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00008067          	ret
        first = newElem;
    800023d8:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    800023dc:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    800023e0:	00053423          	sd	zero,8(a0)
    800023e4:	0004b783          	ld	a5,0(s1)
    800023e8:	0007b423          	sd	zero,8(a5)
    800023ec:	fd5ff06f          	j	800023c0 <_ZN5Queue4pushEP3PCB+0x48>

00000000800023f0 <_ZN5Queue5frontEv>:


PCB* Queue::front() {
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00813423          	sd	s0,8(sp)
    800023f8:	01010413          	addi	s0,sp,16
    if(first == 0)
    800023fc:	00053503          	ld	a0,0(a0)
    80002400:	00050463          	beqz	a0,80002408 <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80002404:	00053503          	ld	a0,0(a0)
}
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZN5QueueC1Ev>:

Queue::Queue() {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
    first = last = 0;
    80002420:	00053423          	sd	zero,8(a0)
    80002424:	00053023          	sd	zero,0(a0)
}
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN5QueueD1Ev>:

Queue::~Queue() {
    Elem* curr = first;
    80002434:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    80002438:	04050063          	beqz	a0,80002478 <_ZN5QueueD1Ev+0x44>
Queue::~Queue() {
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	02010413          	addi	s0,sp,32
    {
        //todo
        //vrati ovo
        //sad je zakomentarisano zbog kfree
        Elem* old = curr;
        curr = curr->next;
    80002450:	00853483          	ld	s1,8(a0)
        kfree(old);
    80002454:	00001097          	auipc	ra,0x1
    80002458:	e18080e7          	jalr	-488(ra) # 8000326c <_Z5kfreePv>
        curr = curr->next;
    8000245c:	00048513          	mv	a0,s1
    while(curr != 0)
    80002460:	fe0498e3          	bnez	s1,80002450 <_ZN5QueueD1Ev+0x1c>
    }
}
    80002464:	01813083          	ld	ra,24(sp)
    80002468:	01013403          	ld	s0,16(sp)
    8000246c:	00813483          	ld	s1,8(sp)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00008067          	ret
    80002478:	00008067          	ret

000000008000247c <_ZN5Queue4sizeEv>:

int Queue::size() {
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    80002488:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    8000248c:	00000513          	li	a0,0
    while(curr != 0)
    80002490:	00078863          	beqz	a5,800024a0 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    80002494:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    80002498:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000249c:	ff5ff06f          	j	80002490 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800024a0:	00813403          	ld	s0,8(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret

00000000800024ac <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00813423          	sd	s0,8(sp)
    800024b4:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800024b8:	00813403          	ld	s0,8(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN9SchedulernwEm>:
    PCB* fr = scheduler->queuePCB.front();
    scheduler->queuePCB.pop();
    return fr;
}

void *Scheduler::operator new(size_t size) {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00113423          	sd	ra,8(sp)
    800024cc:	00813023          	sd	s0,0(sp)
    800024d0:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	d70080e7          	jalr	-656(ra) # 80003244 <_Z7kmallocm>
}
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	01010113          	addi	sp,sp,16
    800024e8:	00008067          	ret

00000000800024ec <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p) {
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00113423          	sd	ra,8(sp)
    800024f4:	00813023          	sd	s0,0(sp)
    800024f8:	01010413          	addi	s0,sp,16
    //todo
    kfree(p);
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	d70080e7          	jalr	-656(ra) # 8000326c <_Z5kfreePv>
}
    80002504:	00813083          	ld	ra,8(sp)
    80002508:	00013403          	ld	s0,0(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_ZN9Scheduler4put2EP3PCB>:
void Scheduler::put2(PCB *pcb) {
    80002514:	fe010113          	addi	sp,sp,-32
    80002518:	00113c23          	sd	ra,24(sp)
    8000251c:	00813823          	sd	s0,16(sp)
    80002520:	00913423          	sd	s1,8(sp)
    80002524:	01213023          	sd	s2,0(sp)
    80002528:	02010413          	addi	s0,sp,32
    8000252c:	00050493          	mv	s1,a0
    void setState(State s) {state = s;}
    80002530:	02052823          	sw	zero,48(a0)
    if(scheduler == 0)
    80002534:	00005797          	auipc	a5,0x5
    80002538:	0b47b783          	ld	a5,180(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    8000253c:	02078863          	beqz	a5,8000256c <_ZN9Scheduler4put2EP3PCB+0x58>
    scheduler->queuePCB.push(pcb);
    80002540:	00048593          	mv	a1,s1
    80002544:	00005517          	auipc	a0,0x5
    80002548:	0a453503          	ld	a0,164(a0) # 800075e8 <_ZN9Scheduler9schedulerE>
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	e2c080e7          	jalr	-468(ra) # 80002378 <_ZN5Queue4pushEP3PCB>
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	00013903          	ld	s2,0(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret
        scheduler = new Scheduler();
    8000256c:	01000513          	li	a0,16
    80002570:	00000097          	auipc	ra,0x0
    80002574:	f54080e7          	jalr	-172(ra) # 800024c4 <_ZN9SchedulernwEm>
    80002578:	00050913          	mv	s2,a0
    8000257c:	00053023          	sd	zero,0(a0)
    80002580:	00053423          	sd	zero,8(a0)
#include "MemoryAllocator.hpp"
#include "Queue.hpp"

class PCB;

class Scheduler
    80002584:	00000097          	auipc	ra,0x0
    80002588:	e90080e7          	jalr	-368(ra) # 80002414 <_ZN5QueueC1Ev>
    8000258c:	00005797          	auipc	a5,0x5
    80002590:	0527be23          	sd	s2,92(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    80002594:	fadff06f          	j	80002540 <_ZN9Scheduler4put2EP3PCB+0x2c>
    80002598:	00050493          	mv	s1,a0
    8000259c:	00090513          	mv	a0,s2
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	f4c080e7          	jalr	-180(ra) # 800024ec <_ZN9SchedulerdlEPv>
    800025a8:	00048513          	mv	a0,s1
    800025ac:	00006097          	auipc	ra,0x6
    800025b0:	13c080e7          	jalr	316(ra) # 800086e8 <_Unwind_Resume>

00000000800025b4 <_ZN9Scheduler4get2Ev>:
PCB *Scheduler::get2() {
    800025b4:	fe010113          	addi	sp,sp,-32
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	00813823          	sd	s0,16(sp)
    800025c0:	00913423          	sd	s1,8(sp)
    800025c4:	01213023          	sd	s2,0(sp)
    800025c8:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    800025cc:	00005797          	auipc	a5,0x5
    800025d0:	01c7b783          	ld	a5,28(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    800025d4:	04078263          	beqz	a5,80002618 <_ZN9Scheduler4get2Ev+0x64>
    PCB* fr = scheduler->queuePCB.front();
    800025d8:	00005917          	auipc	s2,0x5
    800025dc:	01090913          	addi	s2,s2,16 # 800075e8 <_ZN9Scheduler9schedulerE>
    800025e0:	00093503          	ld	a0,0(s2)
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	e0c080e7          	jalr	-500(ra) # 800023f0 <_ZN5Queue5frontEv>
    800025ec:	00050493          	mv	s1,a0
    scheduler->queuePCB.pop();
    800025f0:	00093503          	ld	a0,0(s2)
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	d2c080e7          	jalr	-724(ra) # 80002320 <_ZN5Queue3popEv>
}
    800025fc:	00048513          	mv	a0,s1
    80002600:	01813083          	ld	ra,24(sp)
    80002604:	01013403          	ld	s0,16(sp)
    80002608:	00813483          	ld	s1,8(sp)
    8000260c:	00013903          	ld	s2,0(sp)
    80002610:	02010113          	addi	sp,sp,32
    80002614:	00008067          	ret
        scheduler = new Scheduler();
    80002618:	01000513          	li	a0,16
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	ea8080e7          	jalr	-344(ra) # 800024c4 <_ZN9SchedulernwEm>
    80002624:	00050493          	mv	s1,a0
    80002628:	00053023          	sd	zero,0(a0)
    8000262c:	00053423          	sd	zero,8(a0)
    80002630:	00000097          	auipc	ra,0x0
    80002634:	de4080e7          	jalr	-540(ra) # 80002414 <_ZN5QueueC1Ev>
    80002638:	00005797          	auipc	a5,0x5
    8000263c:	fa97b823          	sd	s1,-80(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    80002640:	f99ff06f          	j	800025d8 <_ZN9Scheduler4get2Ev+0x24>
    80002644:	00050913          	mv	s2,a0
    80002648:	00048513          	mv	a0,s1
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	ea0080e7          	jalr	-352(ra) # 800024ec <_ZN9SchedulerdlEPv>
    80002654:	00090513          	mv	a0,s2
    80002658:	00006097          	auipc	ra,0x6
    8000265c:	090080e7          	jalr	144(ra) # 800086e8 <_Unwind_Resume>

0000000080002660 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize() {
    80002660:	fe010113          	addi	sp,sp,-32
    80002664:	00113c23          	sd	ra,24(sp)
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00913423          	sd	s1,8(sp)
    80002670:	01213023          	sd	s2,0(sp)
    80002674:	02010413          	addi	s0,sp,32
    if(scheduler == 0)
    80002678:	00005797          	auipc	a5,0x5
    8000267c:	f707b783          	ld	a5,-144(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    80002680:	02078663          	beqz	a5,800026ac <_ZN9Scheduler7getSizeEv+0x4c>
        scheduler = new Scheduler();
    return scheduler->queuePCB.size();
    80002684:	00005517          	auipc	a0,0x5
    80002688:	f6453503          	ld	a0,-156(a0) # 800075e8 <_ZN9Scheduler9schedulerE>
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	df0080e7          	jalr	-528(ra) # 8000247c <_ZN5Queue4sizeEv>
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	00013903          	ld	s2,0(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
        scheduler = new Scheduler();
    800026ac:	01000513          	li	a0,16
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	e14080e7          	jalr	-492(ra) # 800024c4 <_ZN9SchedulernwEm>
    800026b8:	00050493          	mv	s1,a0
    800026bc:	00053023          	sd	zero,0(a0)
    800026c0:	00053423          	sd	zero,8(a0)
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	d50080e7          	jalr	-688(ra) # 80002414 <_ZN5QueueC1Ev>
    800026cc:	00005797          	auipc	a5,0x5
    800026d0:	f097be23          	sd	s1,-228(a5) # 800075e8 <_ZN9Scheduler9schedulerE>
    800026d4:	fb1ff06f          	j	80002684 <_ZN9Scheduler7getSizeEv+0x24>
    800026d8:	00050913          	mv	s2,a0
    800026dc:	00048513          	mv	a0,s1
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	e0c080e7          	jalr	-500(ra) # 800024ec <_ZN9SchedulerdlEPv>
    800026e8:	00090513          	mv	a0,s2
    800026ec:	00006097          	auipc	ra,0x6
    800026f0:	ffc080e7          	jalr	-4(ra) # 800086e8 <_Unwind_Resume>

00000000800026f4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb) {
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00813423          	sd	s0,8(sp)
    800026fc:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80002700:	00053023          	sd	zero,0(a0)
    if(schedulerPCBHead == 0)
    80002704:	00005797          	auipc	a5,0x5
    80002708:	eec7b783          	ld	a5,-276(a5) # 800075f0 <_ZN9Scheduler16schedulerPCBHeadE>
    8000270c:	02078263          	beqz	a5,80002730 <_ZN9Scheduler3putEP3PCB+0x3c>
    {
        schedulerPCBHead = schedulerPCBTail = pcb;
    }
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002710:	00005797          	auipc	a5,0x5
    80002714:	ed878793          	addi	a5,a5,-296 # 800075e8 <_ZN9Scheduler9schedulerE>
    80002718:	0107b703          	ld	a4,16(a5)
    8000271c:	00a73023          	sd	a0,0(a4)
        schedulerPCBTail = pcb;
    80002720:	00a7b823          	sd	a0,16(a5)
    }
}
    80002724:	00813403          	ld	s0,8(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002730:	00005797          	auipc	a5,0x5
    80002734:	eb878793          	addi	a5,a5,-328 # 800075e8 <_ZN9Scheduler9schedulerE>
    80002738:	00a7b823          	sd	a0,16(a5)
    8000273c:	00a7b423          	sd	a0,8(a5)
    80002740:	fe5ff06f          	j	80002724 <_ZN9Scheduler3putEP3PCB+0x30>

0000000080002744 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get() {
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80002750:	00005517          	auipc	a0,0x5
    80002754:	ea053503          	ld	a0,-352(a0) # 800075f0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002758:	00050c63          	beqz	a0,80002770 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    8000275c:	00053783          	ld	a5,0(a0)
    80002760:	00078e63          	beqz	a5,8000277c <_ZN9Scheduler3getEv+0x38>
    {
        schedulerPCBHead = schedulerPCBTail = 0;
    }
    else
    {
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80002764:	00005717          	auipc	a4,0x5
    80002768:	e8f73623          	sd	a5,-372(a4) # 800075f0 <_ZN9Scheduler16schedulerPCBHeadE>
    }
    retval->nextPCB = 0;
    8000276c:	00053023          	sd	zero,0(a0)
    return retval;
}
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    8000277c:	00005797          	auipc	a5,0x5
    80002780:	e6c78793          	addi	a5,a5,-404 # 800075e8 <_ZN9Scheduler9schedulerE>
    80002784:	0007b823          	sd	zero,16(a5)
    80002788:	0007b423          	sd	zero,8(a5)
    8000278c:	fe1ff06f          	j	8000276c <_ZN9Scheduler3getEv+0x28>

0000000080002790 <main>:
#include "../lib/console.h"
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"

void main()
{
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    Riscv::initSystem();
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	1b0080e7          	jalr	432(ra) # 80002950 <_ZN5Riscv10initSystemEv>

    //memoryAllocationTests();
    threadTests();
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	0b4080e7          	jalr	180(ra) # 8000185c <_Z11threadTestsv>
    //testQueue();

    Riscv::endSystem();
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	280080e7          	jalr	640(ra) # 80002a30 <_ZN5Riscv9endSystemEv>
    800027b8:	00813083          	ld	ra,8(sp)
    800027bc:	00013403          	ld	s0,0(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_Znwm>:

#include "../h/syscall_cpp.hpp"

//general
void * operator new(size_t size)
{
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	a70080e7          	jalr	-1424(ra) # 80001248 <mem_alloc>
}
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret

00000000800027f0 <_ZdlPv>:

void operator delete(void * p)
{
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
   mem_free(p);
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	a78080e7          	jalr	-1416(ra) # 80001278 <mem_free>
}
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN6Thread5startEv>:
//Thread

//todo
//diskusija u os1 proj sheet-u
void Thread::start() {
    if(myHandle == 0)
    80002818:	00053783          	ld	a5,0(a0)
    8000281c:	00078463          	beqz	a5,80002824 <_ZN6Thread5startEv+0xc>
    80002820:	00008067          	ret
void Thread::start() {
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00113423          	sd	ra,8(sp)
    8000282c:	00813023          	sd	s0,0(sp)
    80002830:	01010413          	addi	s0,sp,16
    {
        int retval = thread_create((void**)&myHandle, f, args);
    80002834:	01053603          	ld	a2,16(a0)
    80002838:	00853583          	ld	a1,8(a0)
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	a68080e7          	jalr	-1432(ra) # 800012a4 <thread_create>
        {
        //todo
        //what then
        }
    }
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00113423          	sd	ra,8(sp)
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	ac0080e7          	jalr	-1344(ra) # 80001324 <thread_dispatch>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN6Thread5sleepEm>:

void Thread::sleep(time_t time) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00813423          	sd	s0,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    //PCB::sleep(time);
}
    80002888:	00813403          	ld	s0,8(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret

0000000080002894 <_ZN6ThreadC1EPFvPvES0_>:

Thread::Thread(void (*body)(void *), void *args) {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    myHandle = 0;
    800028a0:	00053023          	sd	zero,0(a0)
    f = body;
    800028a4:	00b53423          	sd	a1,8(a0)
    this->args = args;
    800028a8:	00c53823          	sd	a2,16(a0)
    //if(retval != 0)
    //{
        //todo
        //what then
    //}
}
    800028ac:	00813403          	ld	s0,8(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00813423          	sd	s0,8(sp)
    800028c0:	01010413          	addi	s0,sp,16

}
    800028c4:	00813403          	ld	s0,8(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN9Semaphore4waitEv>:

//Semaphore

void Semaphore::wait() {
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
    int retval = sem_wait((void*)myHandle);
    800028e0:	00053503          	ld	a0,0(a0)
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	aec080e7          	jalr	-1300(ra) # 800013d0 <sem_wait>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00113423          	sd	ra,8(sp)
    80002904:	00813023          	sd	s0,0(sp)
    80002908:	01010413          	addi	s0,sp,16
    int retval = sem_open((void**)&myHandle, init);
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	a60080e7          	jalr	-1440(ra) # 8000136c <sem_open>
    if(retval != 0)
    {
        //todo
        //what then
    }
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    int retval = sem_signal((void*)myHandle);
    80002934:	00053503          	ld	a0,0(a0)
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	ac4080e7          	jalr	-1340(ra) # 800013fc <sem_signal>
    {
        //todo
        //what then
    }

}
    80002940:	00813083          	ld	ra,8(sp)
    80002944:	00013403          	ld	s0,0(sp)
    80002948:	01010113          	addi	sp,sp,16
    8000294c:	00008067          	ret

0000000080002950 <_ZN5Riscv10initSystemEv>:
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"

//todo
//sta sve treba da se odradi ovde
void Riscv::initSystem() {
    80002950:	fe010113          	addi	sp,sp,-32
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	00813823          	sd	s0,16(sp)
    8000295c:	00913423          	sd	s1,8(sp)
    80002960:	01213023          	sd	s2,0(sp)
    80002964:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002968:	00005797          	auipc	a5,0x5
    8000296c:	be07b783          	ld	a5,-1056(a5) # 80007548 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002970:	10579073          	csrw	stvec,a5
    Thread* t = new Thread(0, 0);
    80002974:	01800513          	li	a0,24
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	e50080e7          	jalr	-432(ra) # 800027c8 <_Znwm>
    80002980:	00050493          	mv	s1,a0
    80002984:	00000613          	li	a2,0
    80002988:	00000593          	li	a1,0
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	f08080e7          	jalr	-248(ra) # 80002894 <_ZN6ThreadC1EPFvPvES0_>
    t->start();
    80002994:	00048513          	mv	a0,s1
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	e80080e7          	jalr	-384(ra) # 80002818 <_ZN6Thread5startEv>
    PCB::running = Scheduler::get();
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	da4080e7          	jalr	-604(ra) # 80002744 <_ZN9Scheduler3getEv>
    800029a8:	00005797          	auipc	a5,0x5
    800029ac:	bc07b783          	ld	a5,-1088(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    800029b0:	00a7b023          	sd	a0,0(a5)
    800029b4:	00100793          	li	a5,1
    800029b8:	02f52823          	sw	a5,48(a0)
    PCB::running->setState(PCB::RUNNING);
}
    800029bc:	01813083          	ld	ra,24(sp)
    800029c0:	01013403          	ld	s0,16(sp)
    800029c4:	00813483          	ld	s1,8(sp)
    800029c8:	00013903          	ld	s2,0(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret
    800029d4:	00050913          	mv	s2,a0
    Thread* t = new Thread(0, 0);
    800029d8:	00048513          	mv	a0,s1
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	e14080e7          	jalr	-492(ra) # 800027f0 <_ZdlPv>
    800029e4:	00090513          	mv	a0,s2
    800029e8:	00006097          	auipc	ra,0x6
    800029ec:	d00080e7          	jalr	-768(ra) # 800086e8 <_Unwind_Resume>

00000000800029f0 <_ZN5Riscv16enableInterruptsEv>:
    //da li treba jos nesto da se ocisti
    Riscv::disableInterrupts();
}


void Riscv::enableInterrupts() {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00813423          	sd	s0,8(sp)
    800029f8:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029fc:	00200793          	li	a5,2
    80002a00:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00008067          	ret

0000000080002a10 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002a10:	ff010113          	addi	sp,sp,-16
    80002a14:	00813423          	sd	s0,8(sp)
    80002a18:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002a1c:	00200793          	li	a5,2
    80002a20:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002a24:	00813403          	ld	s0,8(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN5Riscv9endSystemEv>:
void Riscv::endSystem() {
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	fd0080e7          	jalr	-48(ra) # 80002a10 <_ZN5Riscv17disableInterruptsEv>
}
    80002a48:	00813083          	ld	ra,8(sp)
    80002a4c:	00013403          	ld	s0,0(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00813423          	sd	s0,8(sp)
    80002a60:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002a64:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002a68:	10200073          	sret
}
    80002a6c:	00813403          	ld	s0,8(sp)
    80002a70:	01010113          	addi	sp,sp,16
    80002a74:	00008067          	ret

0000000080002a78 <_ZN5Riscv11printStringEPKc>:

void Riscv::printString(const char *string)
{
    80002a78:	fd010113          	addi	sp,sp,-48
    80002a7c:	02113423          	sd	ra,40(sp)
    80002a80:	02813023          	sd	s0,32(sp)
    80002a84:	00913c23          	sd	s1,24(sp)
    80002a88:	01213823          	sd	s2,16(sp)
    80002a8c:	03010413          	addi	s0,sp,48
    80002a90:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002a94:	100027f3          	csrr	a5,sstatus
    80002a98:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002a9c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002aa0:	00200793          	li	a5,2
    80002aa4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = r_sstatus();
    mc_sstatus(SSTATUS_SIE);
    while (*string != '\0')
    80002aa8:	0004c503          	lbu	a0,0(s1)
    80002aac:	00050a63          	beqz	a0,80002ac0 <_ZN5Riscv11printStringEPKc+0x48>
    {
        __putc(*string);
    80002ab0:	00003097          	auipc	ra,0x3
    80002ab4:	00c080e7          	jalr	12(ra) # 80005abc <__putc>
        string++;
    80002ab8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002abc:	fedff06f          	j	80002aa8 <_ZN5Riscv11printStringEPKc+0x30>
    }
    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002ac0:	0009091b          	sext.w	s2,s2
    80002ac4:	00297913          	andi	s2,s2,2
    80002ac8:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002acc:	10092073          	csrs	sstatus,s2
}
    80002ad0:	02813083          	ld	ra,40(sp)
    80002ad4:	02013403          	ld	s0,32(sp)
    80002ad8:	01813483          	ld	s1,24(sp)
    80002adc:	01013903          	ld	s2,16(sp)
    80002ae0:	03010113          	addi	sp,sp,48
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN5Riscv12printIntegerEm>:

void Riscv::printInteger(uint64 num)
{
    80002ae8:	fc010113          	addi	sp,sp,-64
    80002aec:	02113c23          	sd	ra,56(sp)
    80002af0:	02813823          	sd	s0,48(sp)
    80002af4:	02913423          	sd	s1,40(sp)
    80002af8:	03213023          	sd	s2,32(sp)
    80002afc:	04010413          	addi	s0,sp,64
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002b00:	100027f3          	csrr	a5,sstatus
    80002b04:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b08:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002b0c:	00200793          	li	a5,2
    80002b10:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -num;
    }
    else
        x = num;
    80002b14:	0005051b          	sext.w	a0,a0

    i = 0;
    80002b18:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x%10];
    80002b1c:	00a00613          	li	a2,10
    80002b20:	02c5773b          	remuw	a4,a0,a2
    80002b24:	02071693          	slli	a3,a4,0x20
    80002b28:	0206d693          	srli	a3,a3,0x20
    80002b2c:	00003717          	auipc	a4,0x3
    80002b30:	69c70713          	addi	a4,a4,1692 # 800061c8 <_ZZN5Riscv12printIntegerEmE6digits>
    80002b34:	00d70733          	add	a4,a4,a3
    80002b38:	00074703          	lbu	a4,0(a4)
    80002b3c:	fe040693          	addi	a3,s0,-32
    80002b40:	009687b3          	add	a5,a3,s1
    80002b44:	0014849b          	addiw	s1,s1,1
    80002b48:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002b4c:	0005071b          	sext.w	a4,a0
    80002b50:	02c5553b          	divuw	a0,a0,a2
    80002b54:	00900793          	li	a5,9
    80002b58:	fce7e2e3          	bltu	a5,a4,80002b1c <_ZN5Riscv12printIntegerEm+0x34>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80002b5c:	fff4849b          	addiw	s1,s1,-1
    80002b60:	0004ce63          	bltz	s1,80002b7c <_ZN5Riscv12printIntegerEm+0x94>
        __putc(buf[i]);
    80002b64:	fe040793          	addi	a5,s0,-32
    80002b68:	009787b3          	add	a5,a5,s1
    80002b6c:	ff07c503          	lbu	a0,-16(a5)
    80002b70:	00003097          	auipc	ra,0x3
    80002b74:	f4c080e7          	jalr	-180(ra) # 80005abc <__putc>
    80002b78:	fe5ff06f          	j	80002b5c <_ZN5Riscv12printIntegerEm+0x74>

    __putc('\n');
    80002b7c:	00a00513          	li	a0,10
    80002b80:	00003097          	auipc	ra,0x3
    80002b84:	f3c080e7          	jalr	-196(ra) # 80005abc <__putc>

    ms_sstatus(sstatus & SSTATUS_SIE ? SSTATUS_SIE : 0);
    80002b88:	0009091b          	sext.w	s2,s2
    80002b8c:	00297913          	andi	s2,s2,2
    80002b90:	0009091b          	sext.w	s2,s2
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002b94:	10092073          	csrs	sstatus,s2
}
    80002b98:	03813083          	ld	ra,56(sp)
    80002b9c:	03013403          	ld	s0,48(sp)
    80002ba0:	02813483          	ld	s1,40(sp)
    80002ba4:	02013903          	ld	s2,32(sp)
    80002ba8:	04010113          	addi	sp,sp,64
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002bb0:	f8010113          	addi	sp,sp,-128
    80002bb4:	06113c23          	sd	ra,120(sp)
    80002bb8:	06813823          	sd	s0,112(sp)
    80002bbc:	06913423          	sd	s1,104(sp)
    80002bc0:	07213023          	sd	s2,96(sp)
    80002bc4:	05313c23          	sd	s3,88(sp)
    80002bc8:	05413823          	sd	s4,80(sp)
    80002bcc:	05513423          	sd	s5,72(sp)
    80002bd0:	05613023          	sd	s6,64(sp)
    80002bd4:	08010413          	addi	s0,sp,128

    uint64 a4;
    __asm__ volatile("mv %0, a4" : "=r"(a4));
    80002bd8:	00070913          	mv	s2,a4
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002bdc:	142027f3          	csrr	a5,scause
    80002be0:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002be4:	f8843703          	ld	a4,-120(s0)

    uint64 scause = Riscv::r_scause();

    switch(scause) {
    80002be8:	00900793          	li	a5,9
    80002bec:	0ae7fa63          	bgeu	a5,a4,80002ca0 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002bf0:	fff00793          	li	a5,-1
    80002bf4:	03f79793          	slli	a5,a5,0x3f
    80002bf8:	00178793          	addi	a5,a5,1
    80002bfc:	0af71663          	bne	a4,a5,80002ca8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002c00:	00200793          	li	a5,2
    80002c04:	1447b073          	csrc	sip,a5

        case timerInterrupt:

            Riscv::mc_sip(Riscv::SIP_SSIP);
            Riscv::printString("timerInterrupt\n");
    80002c08:	00003517          	auipc	a0,0x3
    80002c0c:	5b050513          	addi	a0,a0,1456 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	e68080e7          	jalr	-408(ra) # 80002a78 <_ZN5Riscv11printStringEPKc>
            PCB::timeSliceCounter++;
    80002c18:	00005497          	auipc	s1,0x5
    80002c1c:	9404b483          	ld	s1,-1728(s1) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c20:	0004b783          	ld	a5,0(s1)
    80002c24:	00178793          	addi	a5,a5,1
    80002c28:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002c2c:	fffff097          	auipc	ra,0xfffff
    80002c30:	650080e7          	jalr	1616(ra) # 8000227c <_ZN12SleepPCBList13tryToWakePCBsEv>
            static uint64 sumInterrupts = 0;
            sumInterrupts++;
    80002c34:	00005797          	auipc	a5,0x5
    80002c38:	9cc78793          	addi	a5,a5,-1588 # 80007600 <_ZZN5Riscv20handleSupervisorTrapEvE13sumInterrupts>
    80002c3c:	0007b503          	ld	a0,0(a5)
    80002c40:	00150513          	addi	a0,a0,1
    80002c44:	00a7b023          	sd	a0,0(a5)
            Riscv::printInteger(sumInterrupts);
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	ea0080e7          	jalr	-352(ra) # 80002ae8 <_ZN5Riscv12printIntegerEm>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002c50:	00005797          	auipc	a5,0x5
    80002c54:	9187b783          	ld	a5,-1768(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c58:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002c5c:	0087b783          	ld	a5,8(a5)
    80002c60:	0004b703          	ld	a4,0(s1)
    80002c64:	04f76263          	bltu	a4,a5,80002ca8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002c68:	141027f3          	csrr	a5,sepc
    80002c6c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002c70:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002c74:	100027f3          	csrr	a5,sstatus
    80002c78:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002c7c:	f9043903          	ld	s2,-112(s0)
            {
                uint64 sepc = Riscv::r_sepc();
                uint64 sstatus = Riscv::r_sstatus();
                PCB::timeSliceCounter = 0;
    80002c80:	00005797          	auipc	a5,0x5
    80002c84:	8d87b783          	ld	a5,-1832(a5) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c88:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	324080e7          	jalr	804(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002c94:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002c98:	14149073          	csrw	sepc,s1
}
    80002c9c:	00c0006f          	j	80002ca8 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
    switch(scause) {
    80002ca0:	00800793          	li	a5,8
    80002ca4:	02f77a63          	bgeu	a4,a5,80002cd8 <_ZN5Riscv20handleSupervisorTrapEv+0x128>

            return;
            //break;
    }

    console_handler();
    80002ca8:	00003097          	auipc	ra,0x3
    80002cac:	e88080e7          	jalr	-376(ra) # 80005b30 <console_handler>
}
    80002cb0:	07813083          	ld	ra,120(sp)
    80002cb4:	07013403          	ld	s0,112(sp)
    80002cb8:	06813483          	ld	s1,104(sp)
    80002cbc:	06013903          	ld	s2,96(sp)
    80002cc0:	05813983          	ld	s3,88(sp)
    80002cc4:	05013a03          	ld	s4,80(sp)
    80002cc8:	04813a83          	ld	s5,72(sp)
    80002ccc:	04013b03          	ld	s6,64(sp)
    80002cd0:	08010113          	addi	sp,sp,128
    80002cd4:	00008067          	ret
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002cd8:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002cdc:	14102773          	csrr	a4,sepc
    80002ce0:	fae43023          	sd	a4,-96(s0)
    return sepc;
    80002ce4:	fa043703          	ld	a4,-96(s0)
            sepc+=4;
    80002ce8:	00470493          	addi	s1,a4,4
            if(operation == MemoryAllocator::MEM_ALLOC)
    80002cec:	00100713          	li	a4,1
    80002cf0:	02e78a63          	beq	a5,a4,80002d24 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            else if(operation == MemoryAllocator::MEM_FREE)
    80002cf4:	00200713          	li	a4,2
    80002cf8:	04e78263          	beq	a5,a4,80002d3c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            else if(operation == PCB::THREAD_CREATE)
    80002cfc:	01100713          	li	a4,17
    80002d00:	04e78863          	beq	a5,a4,80002d50 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            else if(operation == PCB::THREAD_DISPATCH)
    80002d04:	01300713          	li	a4,19
    80002d08:	08e78a63          	beq	a5,a4,80002d9c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
            else if(operation == PCB::THREAD_EXIT)
    80002d0c:	01200713          	li	a4,18
    80002d10:	0ae78a63          	beq	a5,a4,80002dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
            else if(operation == PCB::TIME_SLEEP)
    80002d14:	03100713          	li	a4,49
    80002d18:	10e78663          	beq	a5,a4,80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x274>
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002d1c:	14149073          	csrw	sepc,s1
}
    80002d20:	f91ff06f          	j	80002cb0 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002d24:	00058513          	mv	a0,a1
                void* allocatedAddr = kmalloc(size);
    80002d28:	00651513          	slli	a0,a0,0x6
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	518080e7          	jalr	1304(ra) # 80003244 <_Z7kmallocm>
                __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80002d34:	00050513          	mv	a0,a0
    80002d38:	fe5ff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                __asm__ volatile("mv %0, a1" : "=r"(addr));
    80002d3c:	00058513          	mv	a0,a1
                uint64 retval = kfree((void*)addr);
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	52c080e7          	jalr	1324(ra) # 8000326c <_Z5kfreePv>
                __asm__ volatile("mv a0,%0" : :"r"(retval));
    80002d48:	00050513          	mv	a0,a0
    80002d4c:	fd1ff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002d50:	00058a13          	mv	s4,a1
                __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002d54:	00060a93          	mv	s5,a2
                __asm__ volatile("mv %0, a3" : "=r"(args));
    80002d58:	00068b13          	mv	s6,a3
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002d5c:	05800513          	li	a0,88
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	1d4080e7          	jalr	468(ra) # 80001f34 <_ZN3PCBnwEm>
    80002d68:	00050993          	mv	s3,a0
    80002d6c:	00300713          	li	a4,3
    80002d70:	00090693          	mv	a3,s2
    80002d74:	000b0613          	mv	a2,s6
    80002d78:	000a8593          	mv	a1,s5
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	114080e7          	jalr	276(ra) # 80001e90 <_ZN3PCBC1EPFvPvES0_S0_m>
                (*threadHandle) = newPCB;
    80002d84:	013a3023          	sd	s3,0(s4)
                if(newPCB == 0)
    80002d88:	00098663          	beqz	s3,80002d94 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
                    __asm__ volatile("li a0, 0");
    80002d8c:	00000513          	li	a0,0
    80002d90:	f8dff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d94:	fff00513          	li	a0,-1
    80002d98:	f85ff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002da4:	fa843903          	ld	s2,-88(s0)
                PCB::timeSliceCounter = 0;
    80002da8:	00004797          	auipc	a5,0x4
    80002dac:	7b07b783          	ld	a5,1968(a5) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002db0:	0007b023          	sd	zero,0(a5)
                PCB::dispatch();
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	1fc080e7          	jalr	508(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002dbc:	10091073          	csrw	sstatus,s2
}
    80002dc0:	f5dff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                if(PCB::running == 0)
    80002dc4:	00004797          	auipc	a5,0x4
    80002dc8:	7a47b783          	ld	a5,1956(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002dcc:	0007b783          	ld	a5,0(a5)
    80002dd0:	04078663          	beqz	a5,80002e1c <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002dd4:	100027f3          	csrr	a5,sstatus
    80002dd8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002ddc:	fb043903          	ld	s2,-80(s0)
                PCB::timeSliceCounter = 0;
    80002de0:	00004797          	auipc	a5,0x4
    80002de4:	7787b783          	ld	a5,1912(a5) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002de8:	0007b023          	sd	zero,0(a5)
                PCB::exitingPCB = PCB::running;
    80002dec:	00004797          	auipc	a5,0x4
    80002df0:	77c7b783          	ld	a5,1916(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002df4:	0007b783          	ld	a5,0(a5)
    80002df8:	00004717          	auipc	a4,0x4
    80002dfc:	75873703          	ld	a4,1880(a4) # 80007550 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002e00:	00f73023          	sd	a5,0(a4)
    void setState(State s) {state = s;}
    80002e04:	00400713          	li	a4,4
    80002e08:	02e7a823          	sw	a4,48(a5)
                PCB::dispatch();
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	1a4080e7          	jalr	420(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e14:	10091073          	csrw	sstatus,s2
}
    80002e18:	f05ff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
                    __asm__ volatile("li a0, 0xffffffffffffffff");
    80002e1c:	fff00513          	li	a0,-1
                    return;
    80002e20:	e91ff06f          	j	80002cb0 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                __asm__ volatile("mv %0, a1" : "=r"(time));
    80002e24:	00058713          	mv	a4,a1
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002e28:	100027f3          	csrr	a5,sstatus
    80002e2c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002e30:	fb843903          	ld	s2,-72(s0)
                PCB::timeSliceCounter = 0;
    80002e34:	00004797          	auipc	a5,0x4
    80002e38:	7247b783          	ld	a5,1828(a5) # 80007558 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e3c:	0007b023          	sd	zero,0(a5)
                PCB::running->setState(PCB::SLEEPING);
    80002e40:	00004797          	auipc	a5,0x4
    80002e44:	7287b783          	ld	a5,1832(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e48:	0007b783          	ld	a5,0(a5)
    80002e4c:	00500693          	li	a3,5
    80002e50:	02d7a823          	sw	a3,48(a5)
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002e54:	00e7b823          	sd	a4,16(a5)
                SleepPCBList::insertSleepingPCB();
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	368080e7          	jalr	872(ra) # 800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>
                PCB::dispatch();
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	150080e7          	jalr	336(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e68:	10091073          	csrw	sstatus,s2
                __asm__ volatile("li a0, 0x0");
    80002e6c:	00000513          	li	a0,0
    80002e70:	eadff06f          	j	80002d1c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80002e74:	00050493          	mv	s1,a0
                PCB* newPCB = new PCB((void (*)(void*))start_routine, (void*)args, (void*)a4, 3UL);
    80002e78:	00098513          	mv	a0,s3
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	0e0080e7          	jalr	224(ra) # 80001f5c <_ZN3PCBdlEPv>
    80002e84:	00048513          	mv	a0,s1
    80002e88:	00006097          	auipc	ra,0x6
    80002e8c:	860080e7          	jalr	-1952(ra) # 800086e8 <_Unwind_Resume>

0000000080002e90 <_ZN15MemoryAllocator10initMemoryEv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002e90:	ff010113          	addi	sp,sp,-16
    80002e94:	00813423          	sd	s0,8(sp)
    80002e98:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002e9c:	00004717          	auipc	a4,0x4
    80002ea0:	76c72703          	lw	a4,1900(a4) # 80007608 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002ea4:	00100793          	li	a5,1
    80002ea8:	04f70263          	beq	a4,a5,80002eec <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	75c78793          	addi	a5,a5,1884 # 80007608 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002eb4:	00100713          	li	a4,1
    80002eb8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002ebc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002ec0:	00004717          	auipc	a4,0x4
    80002ec4:	68073703          	ld	a4,1664(a4) # 80007540 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ec8:	00073703          	ld	a4,0(a4)
    80002ecc:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002ed0:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002ed4:	00004797          	auipc	a5,0x4
    80002ed8:	69c7b783          	ld	a5,1692(a5) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002edc:	0007b783          	ld	a5,0(a5)
    80002ee0:	40e787b3          	sub	a5,a5,a4
    80002ee4:	ff178793          	addi	a5,a5,-15
    80002ee8:	00f73023          	sd	a5,0(a4)
}
    80002eec:	00813403          	ld	s0,8(sp)
    80002ef0:	01010113          	addi	sp,sp,16
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size) {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	01213023          	sd	s2,0(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00050493          	mv	s1,a0
    80002f14:	00058913          	mv	s2,a1

    initMemory();
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	f78080e7          	jalr	-136(ra) # 80002e90 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80002f20:	00004797          	auipc	a5,0x4
    80002f24:	6f07b783          	ld	a5,1776(a5) # 80007610 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002f28:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002f2c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80002f30:	00000713          	li	a4,0
    while(curr != 0)
    80002f34:	00078c63          	beqz	a5,80002f4c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80002f38:	00f4e863          	bltu	s1,a5,80002f48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80002f3c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f40:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002f44:	ff1ff06f          	j	80002f34 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80002f48:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80002f4c:	02070063          	beqz	a4,80002f6c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80002f50:	00973423          	sd	s1,8(a4)
}
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	00013903          	ld	s2,0(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret
        headAllocated = newAllocated;
    80002f6c:	00004797          	auipc	a5,0x4
    80002f70:	6a97b223          	sd	s1,1700(a5) # 80007610 <_ZN15MemoryAllocator13headAllocatedE>
    80002f74:	fe1ff06f          	j	80002f54 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080002f78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size) {
    80002f78:	fe010113          	addi	sp,sp,-32
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	00813823          	sd	s0,16(sp)
    80002f84:	00913423          	sd	s1,8(sp)
    80002f88:	01213023          	sd	s2,0(sp)
    80002f8c:	02010413          	addi	s0,sp,32
    80002f90:	00050913          	mv	s2,a0
    initMemory();
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	efc080e7          	jalr	-260(ra) # 80002e90 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80002f9c:	00004497          	auipc	s1,0x4
    80002fa0:	67c4b483          	ld	s1,1660(s1) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80002fa4:	00000713          	li	a4,0
    while(curr != 0) {
    80002fa8:	0a048863          	beqz	s1,80003058 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>

        if(curr->size >= size) {
    80002fac:	0004b783          	ld	a5,0(s1)
    80002fb0:	0127f863          	bgeu	a5,s2,80002fc0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80002fb4:	00048713          	mv	a4,s1
        curr = curr->next;
    80002fb8:	0084b483          	ld	s1,8(s1)
    while(curr != 0) {
    80002fbc:	fedff06f          	j	80002fa8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80002fc0:	01090693          	addi	a3,s2,16
    80002fc4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80002fc8:	00004617          	auipc	a2,0x4
    80002fcc:	5a863603          	ld	a2,1448(a2) # 80007570 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002fd0:	00063603          	ld	a2,0(a2)
    80002fd4:	04d66c63          	bltu	a2,a3,8000302c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80002fd8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80002fdc:	01000613          	li	a2,16
    80002fe0:	02f67663          	bgeu	a2,a5,8000300c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80002fe4:	0084b603          	ld	a2,8(s1)
    80002fe8:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80002fec:	ff078793          	addi	a5,a5,-16
    80002ff0:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80002ff4:	00070663          	beqz	a4,80003000 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80002ff8:	00d73423          	sd	a3,8(a4)
    80002ffc:	0380006f          	j	80003034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003000:	00004797          	auipc	a5,0x4
    80003004:	60d7bc23          	sd	a3,1560(a5) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    80003008:	02c0006f          	j	80003034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000300c:	00070863          	beqz	a4,8000301c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003010:	0084b783          	ld	a5,8(s1)
    80003014:	00f73423          	sd	a5,8(a4)
    80003018:	01c0006f          	j	80003034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000301c:	0084b783          	ld	a5,8(s1)
    80003020:	00004717          	auipc	a4,0x4
    80003024:	5ef73c23          	sd	a5,1528(a4) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    80003028:	00c0006f          	j	80003034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000302c:	02070063          	beqz	a4,8000304c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003030:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003034:	00090593          	mv	a1,s2
    80003038:	00048513          	mv	a0,s1
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	ebc080e7          	jalr	-324(ra) # 80002ef8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003044:	01048513          	addi	a0,s1,16
            break;
    80003048:	0140006f          	j	8000305c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000304c:	00004797          	auipc	a5,0x4
    80003050:	5c07b623          	sd	zero,1484(a5) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    80003054:	fe1ff06f          	j	80003034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003058:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000305c:	01813083          	ld	ra,24(sp)
    80003060:	01013403          	ld	s0,16(sp)
    80003064:	00813483          	ld	s1,8(sp)
    80003068:	00013903          	ld	s2,0(sp)
    8000306c:	02010113          	addi	sp,sp,32
    80003070:	00008067          	ret

0000000080003074 <_ZN15MemoryAllocator9mem_allocEm>:
void *MemoryAllocator::mem_alloc(size_t size) {
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00113423          	sd	ra,8(sp)
    8000307c:	00813023          	sd	s0,0(sp)
    80003080:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003084:	00000097          	auipc	ra,0x0
    80003088:	ef4080e7          	jalr	-268(ra) # 80002f78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000309c:	fe010113          	addi	sp,sp,-32
    800030a0:	00113c23          	sd	ra,24(sp)
    800030a4:	00813823          	sd	s0,16(sp)
    800030a8:	00913423          	sd	s1,8(sp)
    800030ac:	01213023          	sd	s2,0(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	00050493          	mv	s1,a0
    800030b8:	00058913          	mv	s2,a1
    initMemory();
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	dd4080e7          	jalr	-556(ra) # 80002e90 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800030c4:	00004797          	auipc	a5,0x4
    800030c8:	5547b783          	ld	a5,1364(a5) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800030cc:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800030d0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800030d4:	00000713          	li	a4,0
    while(curr != 0)
    800030d8:	00078c63          	beqz	a5,800030f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800030dc:	00f4e863          	bltu	s1,a5,800030ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800030e0:	00078713          	mv	a4,a5
        curr = curr->next;
    800030e4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800030e8:	ff1ff06f          	j	800030d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800030ec:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800030f0:	04070663          	beqz	a4,8000313c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800030f4:	00973423          	sd	s1,8(a4)

    //todo
    //kad proradi kfree odkomentarisi ovo
    //test it few times
    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800030f8:	0084b783          	ld	a5,8(s1)
    800030fc:	00078a63          	beqz	a5,80003110 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003100:	0004b603          	ld	a2,0(s1)
    80003104:	01060693          	addi	a3,a2,16
    80003108:	00d486b3          	add	a3,s1,a3
    8000310c:	02d78e63          	beq	a5,a3,80003148 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003110:	00070a63          	beqz	a4,80003124 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003114:	00073683          	ld	a3,0(a4)
    80003118:	01068793          	addi	a5,a3,16
    8000311c:	00f707b3          	add	a5,a4,a5
    80003120:	04978263          	beq	a5,s1,80003164 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003124:	01813083          	ld	ra,24(sp)
    80003128:	01013403          	ld	s0,16(sp)
    8000312c:	00813483          	ld	s1,8(sp)
    80003130:	00013903          	ld	s2,0(sp)
    80003134:	02010113          	addi	sp,sp,32
    80003138:	00008067          	ret
        headFree = newSegment;
    8000313c:	00004797          	auipc	a5,0x4
    80003140:	4c97be23          	sd	s1,1244(a5) # 80007618 <_ZN15MemoryAllocator8headFreeE>
    80003144:	fb5ff06f          	j	800030f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003148:	0007b683          	ld	a3,0(a5)
    8000314c:	00d60633          	add	a2,a2,a3
    80003150:	01060613          	addi	a2,a2,16
    80003154:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003158:	0087b783          	ld	a5,8(a5)
    8000315c:	00f4b423          	sd	a5,8(s1)
    80003160:	fb1ff06f          	j	80003110 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003164:	0004b783          	ld	a5,0(s1)
    80003168:	00f686b3          	add	a3,a3,a5
    8000316c:	01068693          	addi	a3,a3,16
    80003170:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003174:	0084b783          	ld	a5,8(s1)
    80003178:	00f73423          	sd	a5,8(a4)
}
    8000317c:	fa9ff06f          	j	80003124 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003180 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00113c23          	sd	ra,24(sp)
    80003188:	00813823          	sd	s0,16(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	01213023          	sd	s2,0(sp)
    80003194:	02010413          	addi	s0,sp,32
    80003198:	00050913          	mv	s2,a0
    initMemory();
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	cf4080e7          	jalr	-780(ra) # 80002e90 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800031a4:	00004497          	auipc	s1,0x4
    800031a8:	46c4b483          	ld	s1,1132(s1) # 80007610 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800031ac:	00000713          	li	a4,0
    while(curr != 0)
    800031b0:	02048a63          	beqz	s1,800031e4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800031b4:	01048793          	addi	a5,s1,16
    800031b8:	01278863          	beq	a5,s2,800031c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800031bc:	00048713          	mv	a4,s1
        curr = curr->next;
    800031c0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800031c4:	fedff06f          	j	800031b0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800031c8:	02070e63          	beqz	a4,80003204 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800031cc:	0084b783          	ld	a5,8(s1)
    800031d0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800031d4:	0004b583          	ld	a1,0(s1)
    800031d8:	00048513          	mv	a0,s1
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	ec0080e7          	jalr	-320(ra) # 8000309c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800031e4:	02048863          	beqz	s1,80003214 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800031e8:	00000513          	li	a0,0
    else
        return 1;
}
    800031ec:	01813083          	ld	ra,24(sp)
    800031f0:	01013403          	ld	s0,16(sp)
    800031f4:	00813483          	ld	s1,8(sp)
    800031f8:	00013903          	ld	s2,0(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret
                headAllocated = curr->next;
    80003204:	0084b783          	ld	a5,8(s1)
    80003208:	00004717          	auipc	a4,0x4
    8000320c:	40f73423          	sd	a5,1032(a4) # 80007610 <_ZN15MemoryAllocator13headAllocatedE>
    80003210:	fc5ff06f          	j	800031d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003214:	00100513          	li	a0,1
    80003218:	fd5ff06f          	j	800031ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000321c <_ZN15MemoryAllocator8mem_freeEPv>:
uint64 MemoryAllocator::mem_free(void * addr) {
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00113423          	sd	ra,8(sp)
    80003224:	00813023          	sd	s0,0(sp)
    80003228:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	f54080e7          	jalr	-172(ra) # 80003180 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003234:	00813083          	ld	ra,8(sp)
    80003238:	00013403          	ld	s0,0(sp)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret

0000000080003244 <_Z7kmallocm>:

void* kmalloc(size_t size)
{
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003254:	00000097          	auipc	ra,0x0
    80003258:	e20080e7          	jalr	-480(ra) # 80003074 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_Z5kfreePv>:

uint64 kfree(void* p)
{
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00113423          	sd	ra,8(sp)
    80003274:	00813023          	sd	s0,0(sp)
    80003278:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	fa0080e7          	jalr	-96(ra) # 8000321c <_ZN15MemoryAllocator8mem_freeEPv>
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val) {
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    this->val = this->beginVal = val;
    800032a0:	00b52a23          	sw	a1,20(a0)
    800032a4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800032a8:	00053423          	sd	zero,8(a0)
    800032ac:	00053023          	sd	zero,0(a0)
}
    800032b0:	00813403          	ld	s0,8(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <_ZN10KSemaphoreD1Ev>:
        unblock();
    else
        val = beginVal;
}

KSemaphore::~KSemaphore() {
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00813423          	sd	s0,8(sp)
    800032c4:	01010413          	addi	s0,sp,16
    //todo
}
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN10KSemaphore12addToBlockedEP3PCB>:

void KSemaphore::addToBlocked(PCB* pcb)
{
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00813423          	sd	s0,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800032e0:	0005b023          	sd	zero,0(a1)
    if(headBlocked == 0)
    800032e4:	00053783          	ld	a5,0(a0)
    800032e8:	00078e63          	beqz	a5,80003304 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800032ec:	00853783          	ld	a5,8(a0)
    800032f0:	00b7b023          	sd	a1,0(a5)
        tailBlocked = pcb;
    800032f4:	00b53423          	sd	a1,8(a0)
    }
}
    800032f8:	00813403          	ld	s0,8(sp)
    800032fc:	01010113          	addi	sp,sp,16
    80003300:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80003304:	00b53423          	sd	a1,8(a0)
    80003308:	00b53023          	sd	a1,0(a0)
    8000330c:	fedff06f          	j	800032f8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003310 <_ZN10KSemaphore5blockEv>:

//todo
void KSemaphore::block() {
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003320:	00004797          	auipc	a5,0x4
    80003324:	2487b783          	ld	a5,584(a5) # 80007568 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003328:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    8000332c:	00200793          	li	a5,2
    80003330:	02f5a823          	sw	a5,48(a1)
    addToBlocked(PCB::running);
    80003334:	00000097          	auipc	ra,0x0
    80003338:	fa0080e7          	jalr	-96(ra) # 800032d4 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    8000333c:	fffff097          	auipc	ra,0xfffff
    80003340:	c74080e7          	jalr	-908(ra) # 80001fb0 <_ZN3PCB8dispatchEv>
}
    80003344:	00813083          	ld	ra,8(sp)
    80003348:	00013403          	ld	s0,0(sp)
    8000334c:	01010113          	addi	sp,sp,16
    80003350:	00008067          	ret

0000000080003354 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    80003354:	01052783          	lw	a5,16(a0)
    80003358:	fff7879b          	addiw	a5,a5,-1
    8000335c:	00f52823          	sw	a5,16(a0)
    80003360:	02079713          	slli	a4,a5,0x20
    80003364:	00074463          	bltz	a4,8000336c <_ZN10KSemaphore4waitEv+0x18>
    80003368:	00008067          	ret
void KSemaphore::wait() {
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00113423          	sd	ra,8(sp)
    80003374:	00813023          	sd	s0,0(sp)
    80003378:	01010413          	addi	s0,sp,16
        block();
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	f94080e7          	jalr	-108(ra) # 80003310 <_ZN10KSemaphore5blockEv>
}
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813423          	sd	s0,8(sp)
    8000339c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800033a0:	00053503          	ld	a0,0(a0)
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00813423          	sd	s0,8(sp)
    800033b8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800033bc:	00053783          	ld	a5,0(a0)
    800033c0:	00078c63          	beqz	a5,800033d8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800033c4:	0007b703          	ld	a4,0(a5)
    800033c8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800033cc:	0007b023          	sd	zero,0(a5)
    if(headBlocked == 0)
    800033d0:	00053783          	ld	a5,0(a0)
    800033d4:	00078863          	beqz	a5,800033e4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800033d8:	00813403          	ld	s0,8(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret
        tailBlocked =0;
    800033e4:	00053423          	sd	zero,8(a0)
    800033e8:	ff1ff06f          	j	800033d8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800033ec <_ZN10KSemaphore7unblockEv>:

//todo
void KSemaphore::unblock() {
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00113c23          	sd	ra,24(sp)
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	01213023          	sd	s2,0(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	f8c080e7          	jalr	-116(ra) # 80003394 <_ZN10KSemaphore15getFirstBlockedEv>
    80003410:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003414:	00090513          	mv	a0,s2
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	f98080e7          	jalr	-104(ra) # 800033b0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80003420:	00048a63          	beqz	s1,80003434 <_ZN10KSemaphore7unblockEv+0x48>
    80003424:	0204a823          	sw	zero,48(s1)
    {
        fr->setState(PCB::READY);
        Scheduler::put(fr);
    80003428:	00048513          	mv	a0,s1
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	2c8080e7          	jalr	712(ra) # 800026f4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80003434:	01813083          	ld	ra,24(sp)
    80003438:	01013403          	ld	s0,16(sp)
    8000343c:	00813483          	ld	s1,8(sp)
    80003440:	00013903          	ld	s2,0(sp)
    80003444:	02010113          	addi	sp,sp,32
    80003448:	00008067          	ret

000000008000344c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000344c:	01052783          	lw	a5,16(a0)
    80003450:	0017879b          	addiw	a5,a5,1
    80003454:	0007871b          	sext.w	a4,a5
    80003458:	00f52823          	sw	a5,16(a0)
    8000345c:	00e05863          	blez	a4,8000346c <_ZN10KSemaphore6signalEv+0x20>
        val = beginVal;
    80003460:	01452783          	lw	a5,20(a0)
    80003464:	00f52823          	sw	a5,16(a0)
    80003468:	00008067          	ret
void KSemaphore::signal() {
    8000346c:	ff010113          	addi	sp,sp,-16
    80003470:	00113423          	sd	ra,8(sp)
    80003474:	00813023          	sd	s0,0(sp)
    80003478:	01010413          	addi	s0,sp,16
        unblock();
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	f70080e7          	jalr	-144(ra) # 800033ec <_ZN10KSemaphore7unblockEv>
}
    80003484:	00813083          	ld	ra,8(sp)
    80003488:	00013403          	ld	s0,0(sp)
    8000348c:	01010113          	addi	sp,sp,16
    80003490:	00008067          	ret

0000000080003494 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../h/std.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80003494:	fe010113          	addi	sp,sp,-32
    80003498:	00113c23          	sd	ra,24(sp)
    8000349c:	00813823          	sd	s0,16(sp)
    800034a0:	00913423          	sd	s1,8(sp)
    800034a4:	01213023          	sd	s2,0(sp)
    800034a8:	02010413          	addi	s0,sp,32
    800034ac:	00050493          	mv	s1,a0
    800034b0:	00b52023          	sw	a1,0(a0)
    800034b4:	00052823          	sw	zero,16(a0)
    800034b8:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800034bc:	00259513          	slli	a0,a1,0x2
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	d88080e7          	jalr	-632(ra) # 80001248 <mem_alloc>
    800034c8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800034cc:	00800513          	li	a0,8
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	2f8080e7          	jalr	760(ra) # 800027c8 <_Znwm>
    800034d8:	00050913          	mv	s2,a0
    800034dc:	00000593          	li	a1,0
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	41c080e7          	jalr	1052(ra) # 800028fc <_ZN9SemaphoreC1Ej>
    800034e8:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    800034ec:	00800513          	li	a0,8
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	2d8080e7          	jalr	728(ra) # 800027c8 <_Znwm>
    800034f8:	00050913          	mv	s2,a0
    800034fc:	0004a583          	lw	a1,0(s1)
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	3fc080e7          	jalr	1020(ra) # 800028fc <_ZN9SemaphoreC1Ej>
    80003508:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000350c:	00800513          	li	a0,8
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	2b8080e7          	jalr	696(ra) # 800027c8 <_Znwm>
    80003518:	00050913          	mv	s2,a0
    8000351c:	00100593          	li	a1,1
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	3dc080e7          	jalr	988(ra) # 800028fc <_ZN9SemaphoreC1Ej>
    80003528:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000352c:	00800513          	li	a0,8
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	298080e7          	jalr	664(ra) # 800027c8 <_Znwm>
    80003538:	00050913          	mv	s2,a0
    8000353c:	00100593          	li	a1,1
    80003540:	fffff097          	auipc	ra,0xfffff
    80003544:	3bc080e7          	jalr	956(ra) # 800028fc <_ZN9SemaphoreC1Ej>
    80003548:	0324b823          	sd	s2,48(s1)
}
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	00013903          	ld	s2,0(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret
    80003564:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003568:	00090513          	mv	a0,s2
    8000356c:	fffff097          	auipc	ra,0xfffff
    80003570:	284080e7          	jalr	644(ra) # 800027f0 <_ZdlPv>
    80003574:	00048513          	mv	a0,s1
    80003578:	00005097          	auipc	ra,0x5
    8000357c:	170080e7          	jalr	368(ra) # 800086e8 <_Unwind_Resume>
    80003580:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80003584:	00090513          	mv	a0,s2
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	268080e7          	jalr	616(ra) # 800027f0 <_ZdlPv>
    80003590:	00048513          	mv	a0,s1
    80003594:	00005097          	auipc	ra,0x5
    80003598:	154080e7          	jalr	340(ra) # 800086e8 <_Unwind_Resume>
    8000359c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800035a0:	00090513          	mv	a0,s2
    800035a4:	fffff097          	auipc	ra,0xfffff
    800035a8:	24c080e7          	jalr	588(ra) # 800027f0 <_ZdlPv>
    800035ac:	00048513          	mv	a0,s1
    800035b0:	00005097          	auipc	ra,0x5
    800035b4:	138080e7          	jalr	312(ra) # 800086e8 <_Unwind_Resume>
    800035b8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800035bc:	00090513          	mv	a0,s2
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	230080e7          	jalr	560(ra) # 800027f0 <_ZdlPv>
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00005097          	auipc	ra,0x5
    800035d0:	11c080e7          	jalr	284(ra) # 800086e8 <_Unwind_Resume>

00000000800035d4 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    800035d4:	fe010113          	addi	sp,sp,-32
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	00813823          	sd	s0,16(sp)
    800035e0:	00913423          	sd	s1,8(sp)
    800035e4:	02010413          	addi	s0,sp,32
    800035e8:	00050493          	mv	s1,a0
inline char getc() {
    return __getc();
}

inline void putc(char c) {
    __putc(c);
    800035ec:	00a00513          	li	a0,10
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	4cc080e7          	jalr	1228(ra) # 80005abc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    800035f8:	0104a783          	lw	a5,16(s1)
    800035fc:	0144a703          	lw	a4,20(s1)
    80003600:	00e78c63          	beq	a5,a4,80003618 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80003604:	0017879b          	addiw	a5,a5,1
    80003608:	0004a703          	lw	a4,0(s1)
    8000360c:	02e7e7bb          	remw	a5,a5,a4
    80003610:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80003614:	fe5ff06f          	j	800035f8 <_ZN9BufferCPPD1Ev+0x24>
    80003618:	02100513          	li	a0,33
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	4a0080e7          	jalr	1184(ra) # 80005abc <__putc>
    80003624:	00a00513          	li	a0,10
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	494080e7          	jalr	1172(ra) # 80005abc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80003630:	0084b503          	ld	a0,8(s1)
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	c44080e7          	jalr	-956(ra) # 80001278 <mem_free>
    delete itemAvailable;
    8000363c:	0204b503          	ld	a0,32(s1)
    80003640:	00050663          	beqz	a0,8000364c <_ZN9BufferCPPD1Ev+0x78>
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	1ac080e7          	jalr	428(ra) # 800027f0 <_ZdlPv>
    delete spaceAvailable;
    8000364c:	0184b503          	ld	a0,24(s1)
    80003650:	00050663          	beqz	a0,8000365c <_ZN9BufferCPPD1Ev+0x88>
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	19c080e7          	jalr	412(ra) # 800027f0 <_ZdlPv>
    delete mutexTail;
    8000365c:	0304b503          	ld	a0,48(s1)
    80003660:	00050663          	beqz	a0,8000366c <_ZN9BufferCPPD1Ev+0x98>
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	18c080e7          	jalr	396(ra) # 800027f0 <_ZdlPv>
    delete mutexHead;
    8000366c:	0284b503          	ld	a0,40(s1)
    80003670:	00050663          	beqz	a0,8000367c <_ZN9BufferCPPD1Ev+0xa8>
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	17c080e7          	jalr	380(ra) # 800027f0 <_ZdlPv>

}
    8000367c:	01813083          	ld	ra,24(sp)
    80003680:	01013403          	ld	s0,16(sp)
    80003684:	00813483          	ld	s1,8(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret

0000000080003690 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	01213023          	sd	s2,0(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    800036ac:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800036b0:	01853503          	ld	a0,24(a0)
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	21c080e7          	jalr	540(ra) # 800028d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800036bc:	0304b503          	ld	a0,48(s1)
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	210080e7          	jalr	528(ra) # 800028d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800036c8:	0084b783          	ld	a5,8(s1)
    800036cc:	0144a703          	lw	a4,20(s1)
    800036d0:	00271713          	slli	a4,a4,0x2
    800036d4:	00e787b3          	add	a5,a5,a4
    800036d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800036dc:	0144a783          	lw	a5,20(s1)
    800036e0:	0017879b          	addiw	a5,a5,1
    800036e4:	0004a703          	lw	a4,0(s1)
    800036e8:	02e7e7bb          	remw	a5,a5,a4
    800036ec:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800036f0:	0304b503          	ld	a0,48(s1)
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	230080e7          	jalr	560(ra) # 80002924 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800036fc:	0204b503          	ld	a0,32(s1)
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	224080e7          	jalr	548(ra) # 80002924 <_ZN9Semaphore6signalEv>

}
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret

0000000080003720 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	01213023          	sd	s2,0(sp)
    80003734:	02010413          	addi	s0,sp,32
    80003738:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000373c:	02053503          	ld	a0,32(a0)
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	190080e7          	jalr	400(ra) # 800028d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003748:	0284b503          	ld	a0,40(s1)
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	184080e7          	jalr	388(ra) # 800028d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003754:	0084b703          	ld	a4,8(s1)
    80003758:	0104a783          	lw	a5,16(s1)
    8000375c:	00279693          	slli	a3,a5,0x2
    80003760:	00d70733          	add	a4,a4,a3
    80003764:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003768:	0017879b          	addiw	a5,a5,1
    8000376c:	0004a703          	lw	a4,0(s1)
    80003770:	02e7e7bb          	remw	a5,a5,a4
    80003774:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003778:	0284b503          	ld	a0,40(s1)
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	1a8080e7          	jalr	424(ra) # 80002924 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003784:	0184b503          	ld	a0,24(s1)
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	19c080e7          	jalr	412(ra) # 80002924 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003790:	00090513          	mv	a0,s2
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	00013903          	ld	s2,0(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"
#include "../h/std.hpp"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	02010413          	addi	s0,sp,32
    800037c0:	00050493          	mv	s1,a0
    800037c4:	00b52023          	sw	a1,0(a0)
    800037c8:	00052823          	sw	zero,16(a0)
    800037cc:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800037d0:	00259513          	slli	a0,a1,0x2
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	a74080e7          	jalr	-1420(ra) # 80001248 <mem_alloc>
    800037dc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800037e0:	00000593          	li	a1,0
    800037e4:	02048513          	addi	a0,s1,32
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	b84080e7          	jalr	-1148(ra) # 8000136c <sem_open>
    sem_open(&spaceAvailable, cap);
    800037f0:	0004a583          	lw	a1,0(s1)
    800037f4:	01848513          	addi	a0,s1,24
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	b74080e7          	jalr	-1164(ra) # 8000136c <sem_open>
    sem_open(&mutexHead, 1);
    80003800:	00100593          	li	a1,1
    80003804:	02848513          	addi	a0,s1,40
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	b64080e7          	jalr	-1180(ra) # 8000136c <sem_open>
    sem_open(&mutexTail, 1);
    80003810:	00100593          	li	a1,1
    80003814:	03048513          	addi	a0,s1,48
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	b54080e7          	jalr	-1196(ra) # 8000136c <sem_open>
}
    80003820:	01813083          	ld	ra,24(sp)
    80003824:	01013403          	ld	s0,16(sp)
    80003828:	00813483          	ld	s1,8(sp)
    8000382c:	02010113          	addi	sp,sp,32
    80003830:	00008067          	ret

0000000080003834 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00913423          	sd	s1,8(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00050493          	mv	s1,a0
    8000384c:	00a00513          	li	a0,10
    80003850:	00002097          	auipc	ra,0x2
    80003854:	26c080e7          	jalr	620(ra) # 80005abc <__putc>
    putc('\n');
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80003858:	0104a783          	lw	a5,16(s1)
    8000385c:	0144a703          	lw	a4,20(s1)
    80003860:	00e78c63          	beq	a5,a4,80003878 <_ZN6BufferD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80003864:	0017879b          	addiw	a5,a5,1
    80003868:	0004a703          	lw	a4,0(s1)
    8000386c:	02e7e7bb          	remw	a5,a5,a4
    80003870:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80003874:	fe5ff06f          	j	80003858 <_ZN6BufferD1Ev+0x24>
    80003878:	02100513          	li	a0,33
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	240080e7          	jalr	576(ra) # 80005abc <__putc>
    80003884:	00a00513          	li	a0,10
    80003888:	00002097          	auipc	ra,0x2
    8000388c:	234080e7          	jalr	564(ra) # 80005abc <__putc>
    }
    putc('!');
    putc('\n');

    mem_free(buffer);
    80003890:	0084b503          	ld	a0,8(s1)
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	9e4080e7          	jalr	-1564(ra) # 80001278 <mem_free>
    sem_close(itemAvailable);
    8000389c:	0204b503          	ld	a0,32(s1)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	b04080e7          	jalr	-1276(ra) # 800013a4 <sem_close>
    sem_close(spaceAvailable);
    800038a8:	0184b503          	ld	a0,24(s1)
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	af8080e7          	jalr	-1288(ra) # 800013a4 <sem_close>
    sem_close(mutexTail);
    800038b4:	0304b503          	ld	a0,48(s1)
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	aec080e7          	jalr	-1300(ra) # 800013a4 <sem_close>
    sem_close(mutexHead);
    800038c0:	0284b503          	ld	a0,40(s1)
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	ae0080e7          	jalr	-1312(ra) # 800013a4 <sem_close>
}
    800038cc:	01813083          	ld	ra,24(sp)
    800038d0:	01013403          	ld	s0,16(sp)
    800038d4:	00813483          	ld	s1,8(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	01213023          	sd	s2,0(sp)
    800038f4:	02010413          	addi	s0,sp,32
    800038f8:	00050493          	mv	s1,a0
    800038fc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003900:	01853503          	ld	a0,24(a0)
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	acc080e7          	jalr	-1332(ra) # 800013d0 <sem_wait>

    sem_wait(mutexTail);
    8000390c:	0304b503          	ld	a0,48(s1)
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	ac0080e7          	jalr	-1344(ra) # 800013d0 <sem_wait>
    buffer[tail] = val;
    80003918:	0084b783          	ld	a5,8(s1)
    8000391c:	0144a703          	lw	a4,20(s1)
    80003920:	00271713          	slli	a4,a4,0x2
    80003924:	00e787b3          	add	a5,a5,a4
    80003928:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000392c:	0144a783          	lw	a5,20(s1)
    80003930:	0017879b          	addiw	a5,a5,1
    80003934:	0004a703          	lw	a4,0(s1)
    80003938:	02e7e7bb          	remw	a5,a5,a4
    8000393c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003940:	0304b503          	ld	a0,48(s1)
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	ab8080e7          	jalr	-1352(ra) # 800013fc <sem_signal>

    sem_signal(itemAvailable);
    8000394c:	0204b503          	ld	a0,32(s1)
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	aac080e7          	jalr	-1364(ra) # 800013fc <sem_signal>

}
    80003958:	01813083          	ld	ra,24(sp)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	00013903          	ld	s2,0(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00113c23          	sd	ra,24(sp)
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	01213023          	sd	s2,0(sp)
    80003984:	02010413          	addi	s0,sp,32
    80003988:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000398c:	02053503          	ld	a0,32(a0)
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	a40080e7          	jalr	-1472(ra) # 800013d0 <sem_wait>

    sem_wait(mutexHead);
    80003998:	0284b503          	ld	a0,40(s1)
    8000399c:	ffffe097          	auipc	ra,0xffffe
    800039a0:	a34080e7          	jalr	-1484(ra) # 800013d0 <sem_wait>

    int ret = buffer[head];
    800039a4:	0084b703          	ld	a4,8(s1)
    800039a8:	0104a783          	lw	a5,16(s1)
    800039ac:	00279693          	slli	a3,a5,0x2
    800039b0:	00d70733          	add	a4,a4,a3
    800039b4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800039b8:	0017879b          	addiw	a5,a5,1
    800039bc:	0004a703          	lw	a4,0(s1)
    800039c0:	02e7e7bb          	remw	a5,a5,a4
    800039c4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800039c8:	0284b503          	ld	a0,40(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a30080e7          	jalr	-1488(ra) # 800013fc <sem_signal>

    sem_signal(spaceAvailable);
    800039d4:	0184b503          	ld	a0,24(s1)
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	a24080e7          	jalr	-1500(ra) # 800013fc <sem_signal>

    return ret;
}
    800039e0:	00090513          	mv	a0,s2
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	00013903          	ld	s2,0(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <start>:
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00813423          	sd	s0,8(sp)
    80003a04:	01010413          	addi	s0,sp,16
    80003a08:	300027f3          	csrr	a5,mstatus
    80003a0c:	ffffe737          	lui	a4,0xffffe
    80003a10:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5f7f>
    80003a14:	00e7f7b3          	and	a5,a5,a4
    80003a18:	00001737          	lui	a4,0x1
    80003a1c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a20:	00e7e7b3          	or	a5,a5,a4
    80003a24:	30079073          	csrw	mstatus,a5
    80003a28:	00000797          	auipc	a5,0x0
    80003a2c:	16078793          	addi	a5,a5,352 # 80003b88 <system_main>
    80003a30:	34179073          	csrw	mepc,a5
    80003a34:	00000793          	li	a5,0
    80003a38:	18079073          	csrw	satp,a5
    80003a3c:	000107b7          	lui	a5,0x10
    80003a40:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a44:	30279073          	csrw	medeleg,a5
    80003a48:	30379073          	csrw	mideleg,a5
    80003a4c:	104027f3          	csrr	a5,sie
    80003a50:	2227e793          	ori	a5,a5,546
    80003a54:	10479073          	csrw	sie,a5
    80003a58:	fff00793          	li	a5,-1
    80003a5c:	00a7d793          	srli	a5,a5,0xa
    80003a60:	3b079073          	csrw	pmpaddr0,a5
    80003a64:	00f00793          	li	a5,15
    80003a68:	3a079073          	csrw	pmpcfg0,a5
    80003a6c:	f14027f3          	csrr	a5,mhartid
    80003a70:	0200c737          	lui	a4,0x200c
    80003a74:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a78:	0007869b          	sext.w	a3,a5
    80003a7c:	00269713          	slli	a4,a3,0x2
    80003a80:	000f4637          	lui	a2,0xf4
    80003a84:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a88:	00d70733          	add	a4,a4,a3
    80003a8c:	0037979b          	slliw	a5,a5,0x3
    80003a90:	020046b7          	lui	a3,0x2004
    80003a94:	00d787b3          	add	a5,a5,a3
    80003a98:	00c585b3          	add	a1,a1,a2
    80003a9c:	00371693          	slli	a3,a4,0x3
    80003aa0:	00004717          	auipc	a4,0x4
    80003aa4:	b8070713          	addi	a4,a4,-1152 # 80007620 <timer_scratch>
    80003aa8:	00b7b023          	sd	a1,0(a5)
    80003aac:	00d70733          	add	a4,a4,a3
    80003ab0:	00f73c23          	sd	a5,24(a4)
    80003ab4:	02c73023          	sd	a2,32(a4)
    80003ab8:	34071073          	csrw	mscratch,a4
    80003abc:	00000797          	auipc	a5,0x0
    80003ac0:	6e478793          	addi	a5,a5,1764 # 800041a0 <timervec>
    80003ac4:	30579073          	csrw	mtvec,a5
    80003ac8:	300027f3          	csrr	a5,mstatus
    80003acc:	0087e793          	ori	a5,a5,8
    80003ad0:	30079073          	csrw	mstatus,a5
    80003ad4:	304027f3          	csrr	a5,mie
    80003ad8:	0807e793          	ori	a5,a5,128
    80003adc:	30479073          	csrw	mie,a5
    80003ae0:	f14027f3          	csrr	a5,mhartid
    80003ae4:	0007879b          	sext.w	a5,a5
    80003ae8:	00078213          	mv	tp,a5
    80003aec:	30200073          	mret
    80003af0:	00813403          	ld	s0,8(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <timerinit>:
    80003afc:	ff010113          	addi	sp,sp,-16
    80003b00:	00813423          	sd	s0,8(sp)
    80003b04:	01010413          	addi	s0,sp,16
    80003b08:	f14027f3          	csrr	a5,mhartid
    80003b0c:	0200c737          	lui	a4,0x200c
    80003b10:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b14:	0007869b          	sext.w	a3,a5
    80003b18:	00269713          	slli	a4,a3,0x2
    80003b1c:	000f4637          	lui	a2,0xf4
    80003b20:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b24:	00d70733          	add	a4,a4,a3
    80003b28:	0037979b          	slliw	a5,a5,0x3
    80003b2c:	020046b7          	lui	a3,0x2004
    80003b30:	00d787b3          	add	a5,a5,a3
    80003b34:	00c585b3          	add	a1,a1,a2
    80003b38:	00371693          	slli	a3,a4,0x3
    80003b3c:	00004717          	auipc	a4,0x4
    80003b40:	ae470713          	addi	a4,a4,-1308 # 80007620 <timer_scratch>
    80003b44:	00b7b023          	sd	a1,0(a5)
    80003b48:	00d70733          	add	a4,a4,a3
    80003b4c:	00f73c23          	sd	a5,24(a4)
    80003b50:	02c73023          	sd	a2,32(a4)
    80003b54:	34071073          	csrw	mscratch,a4
    80003b58:	00000797          	auipc	a5,0x0
    80003b5c:	64878793          	addi	a5,a5,1608 # 800041a0 <timervec>
    80003b60:	30579073          	csrw	mtvec,a5
    80003b64:	300027f3          	csrr	a5,mstatus
    80003b68:	0087e793          	ori	a5,a5,8
    80003b6c:	30079073          	csrw	mstatus,a5
    80003b70:	304027f3          	csrr	a5,mie
    80003b74:	0807e793          	ori	a5,a5,128
    80003b78:	30479073          	csrw	mie,a5
    80003b7c:	00813403          	ld	s0,8(sp)
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret

0000000080003b88 <system_main>:
    80003b88:	fe010113          	addi	sp,sp,-32
    80003b8c:	00813823          	sd	s0,16(sp)
    80003b90:	00913423          	sd	s1,8(sp)
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	02010413          	addi	s0,sp,32
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	0c4080e7          	jalr	196(ra) # 80003c60 <cpuid>
    80003ba4:	00004497          	auipc	s1,0x4
    80003ba8:	9ec48493          	addi	s1,s1,-1556 # 80007590 <started>
    80003bac:	02050263          	beqz	a0,80003bd0 <system_main+0x48>
    80003bb0:	0004a783          	lw	a5,0(s1)
    80003bb4:	0007879b          	sext.w	a5,a5
    80003bb8:	fe078ce3          	beqz	a5,80003bb0 <system_main+0x28>
    80003bbc:	0ff0000f          	fence
    80003bc0:	00002517          	auipc	a0,0x2
    80003bc4:	64850513          	addi	a0,a0,1608 # 80006208 <_ZZN5Riscv12printIntegerEmE6digits+0x40>
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	a74080e7          	jalr	-1420(ra) # 8000463c <panic>
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	9c8080e7          	jalr	-1592(ra) # 80004598 <consoleinit>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	154080e7          	jalr	340(ra) # 80004d2c <printfinit>
    80003be0:	00002517          	auipc	a0,0x2
    80003be4:	70850513          	addi	a0,a0,1800 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	ab0080e7          	jalr	-1360(ra) # 80004698 <__printf>
    80003bf0:	00002517          	auipc	a0,0x2
    80003bf4:	5e850513          	addi	a0,a0,1512 # 800061d8 <_ZZN5Riscv12printIntegerEmE6digits+0x10>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	aa0080e7          	jalr	-1376(ra) # 80004698 <__printf>
    80003c00:	00002517          	auipc	a0,0x2
    80003c04:	6e850513          	addi	a0,a0,1768 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	a90080e7          	jalr	-1392(ra) # 80004698 <__printf>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	4a8080e7          	jalr	1192(ra) # 800050b8 <kinit>
    80003c18:	00000097          	auipc	ra,0x0
    80003c1c:	148080e7          	jalr	328(ra) # 80003d60 <trapinit>
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	16c080e7          	jalr	364(ra) # 80003d8c <trapinithart>
    80003c28:	00000097          	auipc	ra,0x0
    80003c2c:	5b8080e7          	jalr	1464(ra) # 800041e0 <plicinit>
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	5d8080e7          	jalr	1496(ra) # 80004208 <plicinithart>
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	078080e7          	jalr	120(ra) # 80003cb0 <userinit>
    80003c40:	0ff0000f          	fence
    80003c44:	00100793          	li	a5,1
    80003c48:	00002517          	auipc	a0,0x2
    80003c4c:	5a850513          	addi	a0,a0,1448 # 800061f0 <_ZZN5Riscv12printIntegerEmE6digits+0x28>
    80003c50:	00f4a023          	sw	a5,0(s1)
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	a44080e7          	jalr	-1468(ra) # 80004698 <__printf>
    80003c5c:	0000006f          	j	80003c5c <system_main+0xd4>

0000000080003c60 <cpuid>:
    80003c60:	ff010113          	addi	sp,sp,-16
    80003c64:	00813423          	sd	s0,8(sp)
    80003c68:	01010413          	addi	s0,sp,16
    80003c6c:	00020513          	mv	a0,tp
    80003c70:	00813403          	ld	s0,8(sp)
    80003c74:	0005051b          	sext.w	a0,a0
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <mycpu>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00020793          	mv	a5,tp
    80003c90:	00813403          	ld	s0,8(sp)
    80003c94:	0007879b          	sext.w	a5,a5
    80003c98:	00779793          	slli	a5,a5,0x7
    80003c9c:	00005517          	auipc	a0,0x5
    80003ca0:	9b450513          	addi	a0,a0,-1612 # 80008650 <cpus>
    80003ca4:	00f50533          	add	a0,a0,a5
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <userinit>:
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00813423          	sd	s0,8(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    80003cbc:	00813403          	ld	s0,8(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	fffff317          	auipc	t1,0xfffff
    80003cc8:	acc30067          	jr	-1332(t1) # 80002790 <main>

0000000080003ccc <either_copyout>:
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00813023          	sd	s0,0(sp)
    80003cd4:	00113423          	sd	ra,8(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    80003cdc:	02051663          	bnez	a0,80003d08 <either_copyout+0x3c>
    80003ce0:	00058513          	mv	a0,a1
    80003ce4:	00060593          	mv	a1,a2
    80003ce8:	0006861b          	sext.w	a2,a3
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	c58080e7          	jalr	-936(ra) # 80005944 <__memmove>
    80003cf4:	00813083          	ld	ra,8(sp)
    80003cf8:	00013403          	ld	s0,0(sp)
    80003cfc:	00000513          	li	a0,0
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret
    80003d08:	00002517          	auipc	a0,0x2
    80003d0c:	52850513          	addi	a0,a0,1320 # 80006230 <_ZZN5Riscv12printIntegerEmE6digits+0x68>
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	92c080e7          	jalr	-1748(ra) # 8000463c <panic>

0000000080003d18 <either_copyin>:
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00813023          	sd	s0,0(sp)
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	01010413          	addi	s0,sp,16
    80003d28:	02059463          	bnez	a1,80003d50 <either_copyin+0x38>
    80003d2c:	00060593          	mv	a1,a2
    80003d30:	0006861b          	sext.w	a2,a3
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	c10080e7          	jalr	-1008(ra) # 80005944 <__memmove>
    80003d3c:	00813083          	ld	ra,8(sp)
    80003d40:	00013403          	ld	s0,0(sp)
    80003d44:	00000513          	li	a0,0
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret
    80003d50:	00002517          	auipc	a0,0x2
    80003d54:	50850513          	addi	a0,a0,1288 # 80006258 <_ZZN5Riscv12printIntegerEmE6digits+0x90>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	8e4080e7          	jalr	-1820(ra) # 8000463c <panic>

0000000080003d60 <trapinit>:
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00813423          	sd	s0,8(sp)
    80003d68:	01010413          	addi	s0,sp,16
    80003d6c:	00813403          	ld	s0,8(sp)
    80003d70:	00002597          	auipc	a1,0x2
    80003d74:	51058593          	addi	a1,a1,1296 # 80006280 <_ZZN5Riscv12printIntegerEmE6digits+0xb8>
    80003d78:	00005517          	auipc	a0,0x5
    80003d7c:	95850513          	addi	a0,a0,-1704 # 800086d0 <tickslock>
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00001317          	auipc	t1,0x1
    80003d88:	5c430067          	jr	1476(t1) # 80005348 <initlock>

0000000080003d8c <trapinithart>:
    80003d8c:	ff010113          	addi	sp,sp,-16
    80003d90:	00813423          	sd	s0,8(sp)
    80003d94:	01010413          	addi	s0,sp,16
    80003d98:	00000797          	auipc	a5,0x0
    80003d9c:	2f878793          	addi	a5,a5,760 # 80004090 <kernelvec>
    80003da0:	10579073          	csrw	stvec,a5
    80003da4:	00813403          	ld	s0,8(sp)
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00008067          	ret

0000000080003db0 <usertrap>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813423          	sd	s0,8(sp)
    80003db8:	01010413          	addi	s0,sp,16
    80003dbc:	00813403          	ld	s0,8(sp)
    80003dc0:	01010113          	addi	sp,sp,16
    80003dc4:	00008067          	ret

0000000080003dc8 <usertrapret>:
    80003dc8:	ff010113          	addi	sp,sp,-16
    80003dcc:	00813423          	sd	s0,8(sp)
    80003dd0:	01010413          	addi	s0,sp,16
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <kerneltrap>:
    80003de0:	fe010113          	addi	sp,sp,-32
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00113c23          	sd	ra,24(sp)
    80003dec:	00913423          	sd	s1,8(sp)
    80003df0:	02010413          	addi	s0,sp,32
    80003df4:	142025f3          	csrr	a1,scause
    80003df8:	100027f3          	csrr	a5,sstatus
    80003dfc:	0027f793          	andi	a5,a5,2
    80003e00:	10079c63          	bnez	a5,80003f18 <kerneltrap+0x138>
    80003e04:	142027f3          	csrr	a5,scause
    80003e08:	0207ce63          	bltz	a5,80003e44 <kerneltrap+0x64>
    80003e0c:	00002517          	auipc	a0,0x2
    80003e10:	4bc50513          	addi	a0,a0,1212 # 800062c8 <_ZZN5Riscv12printIntegerEmE6digits+0x100>
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	884080e7          	jalr	-1916(ra) # 80004698 <__printf>
    80003e1c:	141025f3          	csrr	a1,sepc
    80003e20:	14302673          	csrr	a2,stval
    80003e24:	00002517          	auipc	a0,0x2
    80003e28:	4b450513          	addi	a0,a0,1204 # 800062d8 <_ZZN5Riscv12printIntegerEmE6digits+0x110>
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	86c080e7          	jalr	-1940(ra) # 80004698 <__printf>
    80003e34:	00002517          	auipc	a0,0x2
    80003e38:	4bc50513          	addi	a0,a0,1212 # 800062f0 <_ZZN5Riscv12printIntegerEmE6digits+0x128>
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	800080e7          	jalr	-2048(ra) # 8000463c <panic>
    80003e44:	0ff7f713          	andi	a4,a5,255
    80003e48:	00900693          	li	a3,9
    80003e4c:	04d70063          	beq	a4,a3,80003e8c <kerneltrap+0xac>
    80003e50:	fff00713          	li	a4,-1
    80003e54:	03f71713          	slli	a4,a4,0x3f
    80003e58:	00170713          	addi	a4,a4,1
    80003e5c:	fae798e3          	bne	a5,a4,80003e0c <kerneltrap+0x2c>
    80003e60:	00000097          	auipc	ra,0x0
    80003e64:	e00080e7          	jalr	-512(ra) # 80003c60 <cpuid>
    80003e68:	06050663          	beqz	a0,80003ed4 <kerneltrap+0xf4>
    80003e6c:	144027f3          	csrr	a5,sip
    80003e70:	ffd7f793          	andi	a5,a5,-3
    80003e74:	14479073          	csrw	sip,a5
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	01013403          	ld	s0,16(sp)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	02010113          	addi	sp,sp,32
    80003e88:	00008067          	ret
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	3c8080e7          	jalr	968(ra) # 80004254 <plic_claim>
    80003e94:	00a00793          	li	a5,10
    80003e98:	00050493          	mv	s1,a0
    80003e9c:	06f50863          	beq	a0,a5,80003f0c <kerneltrap+0x12c>
    80003ea0:	fc050ce3          	beqz	a0,80003e78 <kerneltrap+0x98>
    80003ea4:	00050593          	mv	a1,a0
    80003ea8:	00002517          	auipc	a0,0x2
    80003eac:	40050513          	addi	a0,a0,1024 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	7e8080e7          	jalr	2024(ra) # 80004698 <__printf>
    80003eb8:	01013403          	ld	s0,16(sp)
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00000317          	auipc	t1,0x0
    80003ed0:	3c030067          	jr	960(t1) # 8000428c <plic_complete>
    80003ed4:	00004517          	auipc	a0,0x4
    80003ed8:	7fc50513          	addi	a0,a0,2044 # 800086d0 <tickslock>
    80003edc:	00001097          	auipc	ra,0x1
    80003ee0:	490080e7          	jalr	1168(ra) # 8000536c <acquire>
    80003ee4:	00003717          	auipc	a4,0x3
    80003ee8:	6b070713          	addi	a4,a4,1712 # 80007594 <ticks>
    80003eec:	00072783          	lw	a5,0(a4)
    80003ef0:	00004517          	auipc	a0,0x4
    80003ef4:	7e050513          	addi	a0,a0,2016 # 800086d0 <tickslock>
    80003ef8:	0017879b          	addiw	a5,a5,1
    80003efc:	00f72023          	sw	a5,0(a4)
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	538080e7          	jalr	1336(ra) # 80005438 <release>
    80003f08:	f65ff06f          	j	80003e6c <kerneltrap+0x8c>
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	094080e7          	jalr	148(ra) # 80004fa0 <uartintr>
    80003f14:	fa5ff06f          	j	80003eb8 <kerneltrap+0xd8>
    80003f18:	00002517          	auipc	a0,0x2
    80003f1c:	37050513          	addi	a0,a0,880 # 80006288 <_ZZN5Riscv12printIntegerEmE6digits+0xc0>
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	71c080e7          	jalr	1820(ra) # 8000463c <panic>

0000000080003f28 <clockintr>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00813823          	sd	s0,16(sp)
    80003f30:	00913423          	sd	s1,8(sp)
    80003f34:	00113c23          	sd	ra,24(sp)
    80003f38:	02010413          	addi	s0,sp,32
    80003f3c:	00004497          	auipc	s1,0x4
    80003f40:	79448493          	addi	s1,s1,1940 # 800086d0 <tickslock>
    80003f44:	00048513          	mv	a0,s1
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	424080e7          	jalr	1060(ra) # 8000536c <acquire>
    80003f50:	00003717          	auipc	a4,0x3
    80003f54:	64470713          	addi	a4,a4,1604 # 80007594 <ticks>
    80003f58:	00072783          	lw	a5,0(a4)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	00048513          	mv	a0,s1
    80003f68:	0017879b          	addiw	a5,a5,1
    80003f6c:	00813483          	ld	s1,8(sp)
    80003f70:	00f72023          	sw	a5,0(a4)
    80003f74:	02010113          	addi	sp,sp,32
    80003f78:	00001317          	auipc	t1,0x1
    80003f7c:	4c030067          	jr	1216(t1) # 80005438 <release>

0000000080003f80 <devintr>:
    80003f80:	142027f3          	csrr	a5,scause
    80003f84:	00000513          	li	a0,0
    80003f88:	0007c463          	bltz	a5,80003f90 <devintr+0x10>
    80003f8c:	00008067          	ret
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00913423          	sd	s1,8(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	0ff7f713          	andi	a4,a5,255
    80003fa8:	00900693          	li	a3,9
    80003fac:	04d70c63          	beq	a4,a3,80004004 <devintr+0x84>
    80003fb0:	fff00713          	li	a4,-1
    80003fb4:	03f71713          	slli	a4,a4,0x3f
    80003fb8:	00170713          	addi	a4,a4,1
    80003fbc:	00e78c63          	beq	a5,a4,80003fd4 <devintr+0x54>
    80003fc0:	01813083          	ld	ra,24(sp)
    80003fc4:	01013403          	ld	s0,16(sp)
    80003fc8:	00813483          	ld	s1,8(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00008067          	ret
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	c8c080e7          	jalr	-884(ra) # 80003c60 <cpuid>
    80003fdc:	06050663          	beqz	a0,80004048 <devintr+0xc8>
    80003fe0:	144027f3          	csrr	a5,sip
    80003fe4:	ffd7f793          	andi	a5,a5,-3
    80003fe8:	14479073          	csrw	sip,a5
    80003fec:	01813083          	ld	ra,24(sp)
    80003ff0:	01013403          	ld	s0,16(sp)
    80003ff4:	00813483          	ld	s1,8(sp)
    80003ff8:	00200513          	li	a0,2
    80003ffc:	02010113          	addi	sp,sp,32
    80004000:	00008067          	ret
    80004004:	00000097          	auipc	ra,0x0
    80004008:	250080e7          	jalr	592(ra) # 80004254 <plic_claim>
    8000400c:	00a00793          	li	a5,10
    80004010:	00050493          	mv	s1,a0
    80004014:	06f50663          	beq	a0,a5,80004080 <devintr+0x100>
    80004018:	00100513          	li	a0,1
    8000401c:	fa0482e3          	beqz	s1,80003fc0 <devintr+0x40>
    80004020:	00048593          	mv	a1,s1
    80004024:	00002517          	auipc	a0,0x2
    80004028:	28450513          	addi	a0,a0,644 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	66c080e7          	jalr	1644(ra) # 80004698 <__printf>
    80004034:	00048513          	mv	a0,s1
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	254080e7          	jalr	596(ra) # 8000428c <plic_complete>
    80004040:	00100513          	li	a0,1
    80004044:	f7dff06f          	j	80003fc0 <devintr+0x40>
    80004048:	00004517          	auipc	a0,0x4
    8000404c:	68850513          	addi	a0,a0,1672 # 800086d0 <tickslock>
    80004050:	00001097          	auipc	ra,0x1
    80004054:	31c080e7          	jalr	796(ra) # 8000536c <acquire>
    80004058:	00003717          	auipc	a4,0x3
    8000405c:	53c70713          	addi	a4,a4,1340 # 80007594 <ticks>
    80004060:	00072783          	lw	a5,0(a4)
    80004064:	00004517          	auipc	a0,0x4
    80004068:	66c50513          	addi	a0,a0,1644 # 800086d0 <tickslock>
    8000406c:	0017879b          	addiw	a5,a5,1
    80004070:	00f72023          	sw	a5,0(a4)
    80004074:	00001097          	auipc	ra,0x1
    80004078:	3c4080e7          	jalr	964(ra) # 80005438 <release>
    8000407c:	f65ff06f          	j	80003fe0 <devintr+0x60>
    80004080:	00001097          	auipc	ra,0x1
    80004084:	f20080e7          	jalr	-224(ra) # 80004fa0 <uartintr>
    80004088:	fadff06f          	j	80004034 <devintr+0xb4>
    8000408c:	0000                	unimp
	...

0000000080004090 <kernelvec>:
    80004090:	f0010113          	addi	sp,sp,-256
    80004094:	00113023          	sd	ra,0(sp)
    80004098:	00213423          	sd	sp,8(sp)
    8000409c:	00313823          	sd	gp,16(sp)
    800040a0:	00413c23          	sd	tp,24(sp)
    800040a4:	02513023          	sd	t0,32(sp)
    800040a8:	02613423          	sd	t1,40(sp)
    800040ac:	02713823          	sd	t2,48(sp)
    800040b0:	02813c23          	sd	s0,56(sp)
    800040b4:	04913023          	sd	s1,64(sp)
    800040b8:	04a13423          	sd	a0,72(sp)
    800040bc:	04b13823          	sd	a1,80(sp)
    800040c0:	04c13c23          	sd	a2,88(sp)
    800040c4:	06d13023          	sd	a3,96(sp)
    800040c8:	06e13423          	sd	a4,104(sp)
    800040cc:	06f13823          	sd	a5,112(sp)
    800040d0:	07013c23          	sd	a6,120(sp)
    800040d4:	09113023          	sd	a7,128(sp)
    800040d8:	09213423          	sd	s2,136(sp)
    800040dc:	09313823          	sd	s3,144(sp)
    800040e0:	09413c23          	sd	s4,152(sp)
    800040e4:	0b513023          	sd	s5,160(sp)
    800040e8:	0b613423          	sd	s6,168(sp)
    800040ec:	0b713823          	sd	s7,176(sp)
    800040f0:	0b813c23          	sd	s8,184(sp)
    800040f4:	0d913023          	sd	s9,192(sp)
    800040f8:	0da13423          	sd	s10,200(sp)
    800040fc:	0db13823          	sd	s11,208(sp)
    80004100:	0dc13c23          	sd	t3,216(sp)
    80004104:	0fd13023          	sd	t4,224(sp)
    80004108:	0fe13423          	sd	t5,232(sp)
    8000410c:	0ff13823          	sd	t6,240(sp)
    80004110:	cd1ff0ef          	jal	ra,80003de0 <kerneltrap>
    80004114:	00013083          	ld	ra,0(sp)
    80004118:	00813103          	ld	sp,8(sp)
    8000411c:	01013183          	ld	gp,16(sp)
    80004120:	02013283          	ld	t0,32(sp)
    80004124:	02813303          	ld	t1,40(sp)
    80004128:	03013383          	ld	t2,48(sp)
    8000412c:	03813403          	ld	s0,56(sp)
    80004130:	04013483          	ld	s1,64(sp)
    80004134:	04813503          	ld	a0,72(sp)
    80004138:	05013583          	ld	a1,80(sp)
    8000413c:	05813603          	ld	a2,88(sp)
    80004140:	06013683          	ld	a3,96(sp)
    80004144:	06813703          	ld	a4,104(sp)
    80004148:	07013783          	ld	a5,112(sp)
    8000414c:	07813803          	ld	a6,120(sp)
    80004150:	08013883          	ld	a7,128(sp)
    80004154:	08813903          	ld	s2,136(sp)
    80004158:	09013983          	ld	s3,144(sp)
    8000415c:	09813a03          	ld	s4,152(sp)
    80004160:	0a013a83          	ld	s5,160(sp)
    80004164:	0a813b03          	ld	s6,168(sp)
    80004168:	0b013b83          	ld	s7,176(sp)
    8000416c:	0b813c03          	ld	s8,184(sp)
    80004170:	0c013c83          	ld	s9,192(sp)
    80004174:	0c813d03          	ld	s10,200(sp)
    80004178:	0d013d83          	ld	s11,208(sp)
    8000417c:	0d813e03          	ld	t3,216(sp)
    80004180:	0e013e83          	ld	t4,224(sp)
    80004184:	0e813f03          	ld	t5,232(sp)
    80004188:	0f013f83          	ld	t6,240(sp)
    8000418c:	10010113          	addi	sp,sp,256
    80004190:	10200073          	sret
    80004194:	00000013          	nop
    80004198:	00000013          	nop
    8000419c:	00000013          	nop

00000000800041a0 <timervec>:
    800041a0:	34051573          	csrrw	a0,mscratch,a0
    800041a4:	00b53023          	sd	a1,0(a0)
    800041a8:	00c53423          	sd	a2,8(a0)
    800041ac:	00d53823          	sd	a3,16(a0)
    800041b0:	01853583          	ld	a1,24(a0)
    800041b4:	02053603          	ld	a2,32(a0)
    800041b8:	0005b683          	ld	a3,0(a1)
    800041bc:	00c686b3          	add	a3,a3,a2
    800041c0:	00d5b023          	sd	a3,0(a1)
    800041c4:	00200593          	li	a1,2
    800041c8:	14459073          	csrw	sip,a1
    800041cc:	01053683          	ld	a3,16(a0)
    800041d0:	00853603          	ld	a2,8(a0)
    800041d4:	00053583          	ld	a1,0(a0)
    800041d8:	34051573          	csrrw	a0,mscratch,a0
    800041dc:	30200073          	mret

00000000800041e0 <plicinit>:
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00813423          	sd	s0,8(sp)
    800041e8:	01010413          	addi	s0,sp,16
    800041ec:	00813403          	ld	s0,8(sp)
    800041f0:	0c0007b7          	lui	a5,0xc000
    800041f4:	00100713          	li	a4,1
    800041f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800041fc:	00e7a223          	sw	a4,4(a5)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <plicinithart>:
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00813023          	sd	s0,0(sp)
    80004210:	00113423          	sd	ra,8(sp)
    80004214:	01010413          	addi	s0,sp,16
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	a48080e7          	jalr	-1464(ra) # 80003c60 <cpuid>
    80004220:	0085171b          	slliw	a4,a0,0x8
    80004224:	0c0027b7          	lui	a5,0xc002
    80004228:	00e787b3          	add	a5,a5,a4
    8000422c:	40200713          	li	a4,1026
    80004230:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004234:	00813083          	ld	ra,8(sp)
    80004238:	00013403          	ld	s0,0(sp)
    8000423c:	00d5151b          	slliw	a0,a0,0xd
    80004240:	0c2017b7          	lui	a5,0xc201
    80004244:	00a78533          	add	a0,a5,a0
    80004248:	00052023          	sw	zero,0(a0)
    8000424c:	01010113          	addi	sp,sp,16
    80004250:	00008067          	ret

0000000080004254 <plic_claim>:
    80004254:	ff010113          	addi	sp,sp,-16
    80004258:	00813023          	sd	s0,0(sp)
    8000425c:	00113423          	sd	ra,8(sp)
    80004260:	01010413          	addi	s0,sp,16
    80004264:	00000097          	auipc	ra,0x0
    80004268:	9fc080e7          	jalr	-1540(ra) # 80003c60 <cpuid>
    8000426c:	00813083          	ld	ra,8(sp)
    80004270:	00013403          	ld	s0,0(sp)
    80004274:	00d5151b          	slliw	a0,a0,0xd
    80004278:	0c2017b7          	lui	a5,0xc201
    8000427c:	00a78533          	add	a0,a5,a0
    80004280:	00452503          	lw	a0,4(a0)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <plic_complete>:
    8000428c:	fe010113          	addi	sp,sp,-32
    80004290:	00813823          	sd	s0,16(sp)
    80004294:	00913423          	sd	s1,8(sp)
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	00050493          	mv	s1,a0
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	9bc080e7          	jalr	-1604(ra) # 80003c60 <cpuid>
    800042ac:	01813083          	ld	ra,24(sp)
    800042b0:	01013403          	ld	s0,16(sp)
    800042b4:	00d5179b          	slliw	a5,a0,0xd
    800042b8:	0c201737          	lui	a4,0xc201
    800042bc:	00f707b3          	add	a5,a4,a5
    800042c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <consolewrite>:
    800042d0:	fb010113          	addi	sp,sp,-80
    800042d4:	04813023          	sd	s0,64(sp)
    800042d8:	04113423          	sd	ra,72(sp)
    800042dc:	02913c23          	sd	s1,56(sp)
    800042e0:	03213823          	sd	s2,48(sp)
    800042e4:	03313423          	sd	s3,40(sp)
    800042e8:	03413023          	sd	s4,32(sp)
    800042ec:	01513c23          	sd	s5,24(sp)
    800042f0:	05010413          	addi	s0,sp,80
    800042f4:	06c05c63          	blez	a2,8000436c <consolewrite+0x9c>
    800042f8:	00060993          	mv	s3,a2
    800042fc:	00050a13          	mv	s4,a0
    80004300:	00058493          	mv	s1,a1
    80004304:	00000913          	li	s2,0
    80004308:	fff00a93          	li	s5,-1
    8000430c:	01c0006f          	j	80004328 <consolewrite+0x58>
    80004310:	fbf44503          	lbu	a0,-65(s0)
    80004314:	0019091b          	addiw	s2,s2,1
    80004318:	00148493          	addi	s1,s1,1
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	a9c080e7          	jalr	-1380(ra) # 80004db8 <uartputc>
    80004324:	03298063          	beq	s3,s2,80004344 <consolewrite+0x74>
    80004328:	00048613          	mv	a2,s1
    8000432c:	00100693          	li	a3,1
    80004330:	000a0593          	mv	a1,s4
    80004334:	fbf40513          	addi	a0,s0,-65
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	9e0080e7          	jalr	-1568(ra) # 80003d18 <either_copyin>
    80004340:	fd5518e3          	bne	a0,s5,80004310 <consolewrite+0x40>
    80004344:	04813083          	ld	ra,72(sp)
    80004348:	04013403          	ld	s0,64(sp)
    8000434c:	03813483          	ld	s1,56(sp)
    80004350:	02813983          	ld	s3,40(sp)
    80004354:	02013a03          	ld	s4,32(sp)
    80004358:	01813a83          	ld	s5,24(sp)
    8000435c:	00090513          	mv	a0,s2
    80004360:	03013903          	ld	s2,48(sp)
    80004364:	05010113          	addi	sp,sp,80
    80004368:	00008067          	ret
    8000436c:	00000913          	li	s2,0
    80004370:	fd5ff06f          	j	80004344 <consolewrite+0x74>

0000000080004374 <consoleread>:
    80004374:	f9010113          	addi	sp,sp,-112
    80004378:	06813023          	sd	s0,96(sp)
    8000437c:	04913c23          	sd	s1,88(sp)
    80004380:	05213823          	sd	s2,80(sp)
    80004384:	05313423          	sd	s3,72(sp)
    80004388:	05413023          	sd	s4,64(sp)
    8000438c:	03513c23          	sd	s5,56(sp)
    80004390:	03613823          	sd	s6,48(sp)
    80004394:	03713423          	sd	s7,40(sp)
    80004398:	03813023          	sd	s8,32(sp)
    8000439c:	06113423          	sd	ra,104(sp)
    800043a0:	01913c23          	sd	s9,24(sp)
    800043a4:	07010413          	addi	s0,sp,112
    800043a8:	00060b93          	mv	s7,a2
    800043ac:	00050913          	mv	s2,a0
    800043b0:	00058c13          	mv	s8,a1
    800043b4:	00060b1b          	sext.w	s6,a2
    800043b8:	00004497          	auipc	s1,0x4
    800043bc:	34048493          	addi	s1,s1,832 # 800086f8 <cons>
    800043c0:	00400993          	li	s3,4
    800043c4:	fff00a13          	li	s4,-1
    800043c8:	00a00a93          	li	s5,10
    800043cc:	05705e63          	blez	s7,80004428 <consoleread+0xb4>
    800043d0:	09c4a703          	lw	a4,156(s1)
    800043d4:	0984a783          	lw	a5,152(s1)
    800043d8:	0007071b          	sext.w	a4,a4
    800043dc:	08e78463          	beq	a5,a4,80004464 <consoleread+0xf0>
    800043e0:	07f7f713          	andi	a4,a5,127
    800043e4:	00e48733          	add	a4,s1,a4
    800043e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800043ec:	0017869b          	addiw	a3,a5,1
    800043f0:	08d4ac23          	sw	a3,152(s1)
    800043f4:	00070c9b          	sext.w	s9,a4
    800043f8:	0b370663          	beq	a4,s3,800044a4 <consoleread+0x130>
    800043fc:	00100693          	li	a3,1
    80004400:	f9f40613          	addi	a2,s0,-97
    80004404:	000c0593          	mv	a1,s8
    80004408:	00090513          	mv	a0,s2
    8000440c:	f8e40fa3          	sb	a4,-97(s0)
    80004410:	00000097          	auipc	ra,0x0
    80004414:	8bc080e7          	jalr	-1860(ra) # 80003ccc <either_copyout>
    80004418:	01450863          	beq	a0,s4,80004428 <consoleread+0xb4>
    8000441c:	001c0c13          	addi	s8,s8,1
    80004420:	fffb8b9b          	addiw	s7,s7,-1
    80004424:	fb5c94e3          	bne	s9,s5,800043cc <consoleread+0x58>
    80004428:	000b851b          	sext.w	a0,s7
    8000442c:	06813083          	ld	ra,104(sp)
    80004430:	06013403          	ld	s0,96(sp)
    80004434:	05813483          	ld	s1,88(sp)
    80004438:	05013903          	ld	s2,80(sp)
    8000443c:	04813983          	ld	s3,72(sp)
    80004440:	04013a03          	ld	s4,64(sp)
    80004444:	03813a83          	ld	s5,56(sp)
    80004448:	02813b83          	ld	s7,40(sp)
    8000444c:	02013c03          	ld	s8,32(sp)
    80004450:	01813c83          	ld	s9,24(sp)
    80004454:	40ab053b          	subw	a0,s6,a0
    80004458:	03013b03          	ld	s6,48(sp)
    8000445c:	07010113          	addi	sp,sp,112
    80004460:	00008067          	ret
    80004464:	00001097          	auipc	ra,0x1
    80004468:	1d8080e7          	jalr	472(ra) # 8000563c <push_on>
    8000446c:	0984a703          	lw	a4,152(s1)
    80004470:	09c4a783          	lw	a5,156(s1)
    80004474:	0007879b          	sext.w	a5,a5
    80004478:	fef70ce3          	beq	a4,a5,80004470 <consoleread+0xfc>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	234080e7          	jalr	564(ra) # 800056b0 <pop_on>
    80004484:	0984a783          	lw	a5,152(s1)
    80004488:	07f7f713          	andi	a4,a5,127
    8000448c:	00e48733          	add	a4,s1,a4
    80004490:	01874703          	lbu	a4,24(a4)
    80004494:	0017869b          	addiw	a3,a5,1
    80004498:	08d4ac23          	sw	a3,152(s1)
    8000449c:	00070c9b          	sext.w	s9,a4
    800044a0:	f5371ee3          	bne	a4,s3,800043fc <consoleread+0x88>
    800044a4:	000b851b          	sext.w	a0,s7
    800044a8:	f96bf2e3          	bgeu	s7,s6,8000442c <consoleread+0xb8>
    800044ac:	08f4ac23          	sw	a5,152(s1)
    800044b0:	f7dff06f          	j	8000442c <consoleread+0xb8>

00000000800044b4 <consputc>:
    800044b4:	10000793          	li	a5,256
    800044b8:	00f50663          	beq	a0,a5,800044c4 <consputc+0x10>
    800044bc:	00001317          	auipc	t1,0x1
    800044c0:	9f430067          	jr	-1548(t1) # 80004eb0 <uartputc_sync>
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00113423          	sd	ra,8(sp)
    800044cc:	00813023          	sd	s0,0(sp)
    800044d0:	01010413          	addi	s0,sp,16
    800044d4:	00800513          	li	a0,8
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	9d8080e7          	jalr	-1576(ra) # 80004eb0 <uartputc_sync>
    800044e0:	02000513          	li	a0,32
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	9cc080e7          	jalr	-1588(ra) # 80004eb0 <uartputc_sync>
    800044ec:	00013403          	ld	s0,0(sp)
    800044f0:	00813083          	ld	ra,8(sp)
    800044f4:	00800513          	li	a0,8
    800044f8:	01010113          	addi	sp,sp,16
    800044fc:	00001317          	auipc	t1,0x1
    80004500:	9b430067          	jr	-1612(t1) # 80004eb0 <uartputc_sync>

0000000080004504 <consoleintr>:
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00813823          	sd	s0,16(sp)
    8000450c:	00913423          	sd	s1,8(sp)
    80004510:	01213023          	sd	s2,0(sp)
    80004514:	00113c23          	sd	ra,24(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00004917          	auipc	s2,0x4
    80004520:	1dc90913          	addi	s2,s2,476 # 800086f8 <cons>
    80004524:	00050493          	mv	s1,a0
    80004528:	00090513          	mv	a0,s2
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	e40080e7          	jalr	-448(ra) # 8000536c <acquire>
    80004534:	02048c63          	beqz	s1,8000456c <consoleintr+0x68>
    80004538:	0a092783          	lw	a5,160(s2)
    8000453c:	09892703          	lw	a4,152(s2)
    80004540:	07f00693          	li	a3,127
    80004544:	40e7873b          	subw	a4,a5,a4
    80004548:	02e6e263          	bltu	a3,a4,8000456c <consoleintr+0x68>
    8000454c:	00d00713          	li	a4,13
    80004550:	04e48063          	beq	s1,a4,80004590 <consoleintr+0x8c>
    80004554:	07f7f713          	andi	a4,a5,127
    80004558:	00e90733          	add	a4,s2,a4
    8000455c:	0017879b          	addiw	a5,a5,1
    80004560:	0af92023          	sw	a5,160(s2)
    80004564:	00970c23          	sb	s1,24(a4)
    80004568:	08f92e23          	sw	a5,156(s2)
    8000456c:	01013403          	ld	s0,16(sp)
    80004570:	01813083          	ld	ra,24(sp)
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	00013903          	ld	s2,0(sp)
    8000457c:	00004517          	auipc	a0,0x4
    80004580:	17c50513          	addi	a0,a0,380 # 800086f8 <cons>
    80004584:	02010113          	addi	sp,sp,32
    80004588:	00001317          	auipc	t1,0x1
    8000458c:	eb030067          	jr	-336(t1) # 80005438 <release>
    80004590:	00a00493          	li	s1,10
    80004594:	fc1ff06f          	j	80004554 <consoleintr+0x50>

0000000080004598 <consoleinit>:
    80004598:	fe010113          	addi	sp,sp,-32
    8000459c:	00113c23          	sd	ra,24(sp)
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00913423          	sd	s1,8(sp)
    800045a8:	02010413          	addi	s0,sp,32
    800045ac:	00004497          	auipc	s1,0x4
    800045b0:	14c48493          	addi	s1,s1,332 # 800086f8 <cons>
    800045b4:	00048513          	mv	a0,s1
    800045b8:	00002597          	auipc	a1,0x2
    800045bc:	d4858593          	addi	a1,a1,-696 # 80006300 <_ZZN5Riscv12printIntegerEmE6digits+0x138>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	d88080e7          	jalr	-632(ra) # 80005348 <initlock>
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	7ac080e7          	jalr	1964(ra) # 80004d74 <uartinit>
    800045d0:	01813083          	ld	ra,24(sp)
    800045d4:	01013403          	ld	s0,16(sp)
    800045d8:	00000797          	auipc	a5,0x0
    800045dc:	d9c78793          	addi	a5,a5,-612 # 80004374 <consoleread>
    800045e0:	0af4bc23          	sd	a5,184(s1)
    800045e4:	00000797          	auipc	a5,0x0
    800045e8:	cec78793          	addi	a5,a5,-788 # 800042d0 <consolewrite>
    800045ec:	0cf4b023          	sd	a5,192(s1)
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	02010113          	addi	sp,sp,32
    800045f8:	00008067          	ret

00000000800045fc <console_read>:
    800045fc:	ff010113          	addi	sp,sp,-16
    80004600:	00813423          	sd	s0,8(sp)
    80004604:	01010413          	addi	s0,sp,16
    80004608:	00813403          	ld	s0,8(sp)
    8000460c:	00004317          	auipc	t1,0x4
    80004610:	1a433303          	ld	t1,420(t1) # 800087b0 <devsw+0x10>
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00030067          	jr	t1

000000008000461c <console_write>:
    8000461c:	ff010113          	addi	sp,sp,-16
    80004620:	00813423          	sd	s0,8(sp)
    80004624:	01010413          	addi	s0,sp,16
    80004628:	00813403          	ld	s0,8(sp)
    8000462c:	00004317          	auipc	t1,0x4
    80004630:	18c33303          	ld	t1,396(t1) # 800087b8 <devsw+0x18>
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00030067          	jr	t1

000000008000463c <panic>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00113c23          	sd	ra,24(sp)
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	02010413          	addi	s0,sp,32
    80004650:	00050493          	mv	s1,a0
    80004654:	00002517          	auipc	a0,0x2
    80004658:	cb450513          	addi	a0,a0,-844 # 80006308 <_ZZN5Riscv12printIntegerEmE6digits+0x140>
    8000465c:	00004797          	auipc	a5,0x4
    80004660:	1e07ae23          	sw	zero,508(a5) # 80008858 <pr+0x18>
    80004664:	00000097          	auipc	ra,0x0
    80004668:	034080e7          	jalr	52(ra) # 80004698 <__printf>
    8000466c:	00048513          	mv	a0,s1
    80004670:	00000097          	auipc	ra,0x0
    80004674:	028080e7          	jalr	40(ra) # 80004698 <__printf>
    80004678:	00002517          	auipc	a0,0x2
    8000467c:	c7050513          	addi	a0,a0,-912 # 800062e8 <_ZZN5Riscv12printIntegerEmE6digits+0x120>
    80004680:	00000097          	auipc	ra,0x0
    80004684:	018080e7          	jalr	24(ra) # 80004698 <__printf>
    80004688:	00100793          	li	a5,1
    8000468c:	00003717          	auipc	a4,0x3
    80004690:	f0f72623          	sw	a5,-244(a4) # 80007598 <panicked>
    80004694:	0000006f          	j	80004694 <panic+0x58>

0000000080004698 <__printf>:
    80004698:	f3010113          	addi	sp,sp,-208
    8000469c:	08813023          	sd	s0,128(sp)
    800046a0:	07313423          	sd	s3,104(sp)
    800046a4:	09010413          	addi	s0,sp,144
    800046a8:	05813023          	sd	s8,64(sp)
    800046ac:	08113423          	sd	ra,136(sp)
    800046b0:	06913c23          	sd	s1,120(sp)
    800046b4:	07213823          	sd	s2,112(sp)
    800046b8:	07413023          	sd	s4,96(sp)
    800046bc:	05513c23          	sd	s5,88(sp)
    800046c0:	05613823          	sd	s6,80(sp)
    800046c4:	05713423          	sd	s7,72(sp)
    800046c8:	03913c23          	sd	s9,56(sp)
    800046cc:	03a13823          	sd	s10,48(sp)
    800046d0:	03b13423          	sd	s11,40(sp)
    800046d4:	00004317          	auipc	t1,0x4
    800046d8:	16c30313          	addi	t1,t1,364 # 80008840 <pr>
    800046dc:	01832c03          	lw	s8,24(t1)
    800046e0:	00b43423          	sd	a1,8(s0)
    800046e4:	00c43823          	sd	a2,16(s0)
    800046e8:	00d43c23          	sd	a3,24(s0)
    800046ec:	02e43023          	sd	a4,32(s0)
    800046f0:	02f43423          	sd	a5,40(s0)
    800046f4:	03043823          	sd	a6,48(s0)
    800046f8:	03143c23          	sd	a7,56(s0)
    800046fc:	00050993          	mv	s3,a0
    80004700:	4a0c1663          	bnez	s8,80004bac <__printf+0x514>
    80004704:	60098c63          	beqz	s3,80004d1c <__printf+0x684>
    80004708:	0009c503          	lbu	a0,0(s3)
    8000470c:	00840793          	addi	a5,s0,8
    80004710:	f6f43c23          	sd	a5,-136(s0)
    80004714:	00000493          	li	s1,0
    80004718:	22050063          	beqz	a0,80004938 <__printf+0x2a0>
    8000471c:	00002a37          	lui	s4,0x2
    80004720:	00018ab7          	lui	s5,0x18
    80004724:	000f4b37          	lui	s6,0xf4
    80004728:	00989bb7          	lui	s7,0x989
    8000472c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004730:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004734:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004738:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000473c:	00148c9b          	addiw	s9,s1,1
    80004740:	02500793          	li	a5,37
    80004744:	01998933          	add	s2,s3,s9
    80004748:	38f51263          	bne	a0,a5,80004acc <__printf+0x434>
    8000474c:	00094783          	lbu	a5,0(s2)
    80004750:	00078c9b          	sext.w	s9,a5
    80004754:	1e078263          	beqz	a5,80004938 <__printf+0x2a0>
    80004758:	0024849b          	addiw	s1,s1,2
    8000475c:	07000713          	li	a4,112
    80004760:	00998933          	add	s2,s3,s1
    80004764:	38e78a63          	beq	a5,a4,80004af8 <__printf+0x460>
    80004768:	20f76863          	bltu	a4,a5,80004978 <__printf+0x2e0>
    8000476c:	42a78863          	beq	a5,a0,80004b9c <__printf+0x504>
    80004770:	06400713          	li	a4,100
    80004774:	40e79663          	bne	a5,a4,80004b80 <__printf+0x4e8>
    80004778:	f7843783          	ld	a5,-136(s0)
    8000477c:	0007a603          	lw	a2,0(a5)
    80004780:	00878793          	addi	a5,a5,8
    80004784:	f6f43c23          	sd	a5,-136(s0)
    80004788:	42064a63          	bltz	a2,80004bbc <__printf+0x524>
    8000478c:	00a00713          	li	a4,10
    80004790:	02e677bb          	remuw	a5,a2,a4
    80004794:	00002d97          	auipc	s11,0x2
    80004798:	b9cd8d93          	addi	s11,s11,-1124 # 80006330 <digits>
    8000479c:	00900593          	li	a1,9
    800047a0:	0006051b          	sext.w	a0,a2
    800047a4:	00000c93          	li	s9,0
    800047a8:	02079793          	slli	a5,a5,0x20
    800047ac:	0207d793          	srli	a5,a5,0x20
    800047b0:	00fd87b3          	add	a5,s11,a5
    800047b4:	0007c783          	lbu	a5,0(a5)
    800047b8:	02e656bb          	divuw	a3,a2,a4
    800047bc:	f8f40023          	sb	a5,-128(s0)
    800047c0:	14c5d863          	bge	a1,a2,80004910 <__printf+0x278>
    800047c4:	06300593          	li	a1,99
    800047c8:	00100c93          	li	s9,1
    800047cc:	02e6f7bb          	remuw	a5,a3,a4
    800047d0:	02079793          	slli	a5,a5,0x20
    800047d4:	0207d793          	srli	a5,a5,0x20
    800047d8:	00fd87b3          	add	a5,s11,a5
    800047dc:	0007c783          	lbu	a5,0(a5)
    800047e0:	02e6d73b          	divuw	a4,a3,a4
    800047e4:	f8f400a3          	sb	a5,-127(s0)
    800047e8:	12a5f463          	bgeu	a1,a0,80004910 <__printf+0x278>
    800047ec:	00a00693          	li	a3,10
    800047f0:	00900593          	li	a1,9
    800047f4:	02d777bb          	remuw	a5,a4,a3
    800047f8:	02079793          	slli	a5,a5,0x20
    800047fc:	0207d793          	srli	a5,a5,0x20
    80004800:	00fd87b3          	add	a5,s11,a5
    80004804:	0007c503          	lbu	a0,0(a5)
    80004808:	02d757bb          	divuw	a5,a4,a3
    8000480c:	f8a40123          	sb	a0,-126(s0)
    80004810:	48e5f263          	bgeu	a1,a4,80004c94 <__printf+0x5fc>
    80004814:	06300513          	li	a0,99
    80004818:	02d7f5bb          	remuw	a1,a5,a3
    8000481c:	02059593          	slli	a1,a1,0x20
    80004820:	0205d593          	srli	a1,a1,0x20
    80004824:	00bd85b3          	add	a1,s11,a1
    80004828:	0005c583          	lbu	a1,0(a1)
    8000482c:	02d7d7bb          	divuw	a5,a5,a3
    80004830:	f8b401a3          	sb	a1,-125(s0)
    80004834:	48e57263          	bgeu	a0,a4,80004cb8 <__printf+0x620>
    80004838:	3e700513          	li	a0,999
    8000483c:	02d7f5bb          	remuw	a1,a5,a3
    80004840:	02059593          	slli	a1,a1,0x20
    80004844:	0205d593          	srli	a1,a1,0x20
    80004848:	00bd85b3          	add	a1,s11,a1
    8000484c:	0005c583          	lbu	a1,0(a1)
    80004850:	02d7d7bb          	divuw	a5,a5,a3
    80004854:	f8b40223          	sb	a1,-124(s0)
    80004858:	46e57663          	bgeu	a0,a4,80004cc4 <__printf+0x62c>
    8000485c:	02d7f5bb          	remuw	a1,a5,a3
    80004860:	02059593          	slli	a1,a1,0x20
    80004864:	0205d593          	srli	a1,a1,0x20
    80004868:	00bd85b3          	add	a1,s11,a1
    8000486c:	0005c583          	lbu	a1,0(a1)
    80004870:	02d7d7bb          	divuw	a5,a5,a3
    80004874:	f8b402a3          	sb	a1,-123(s0)
    80004878:	46ea7863          	bgeu	s4,a4,80004ce8 <__printf+0x650>
    8000487c:	02d7f5bb          	remuw	a1,a5,a3
    80004880:	02059593          	slli	a1,a1,0x20
    80004884:	0205d593          	srli	a1,a1,0x20
    80004888:	00bd85b3          	add	a1,s11,a1
    8000488c:	0005c583          	lbu	a1,0(a1)
    80004890:	02d7d7bb          	divuw	a5,a5,a3
    80004894:	f8b40323          	sb	a1,-122(s0)
    80004898:	3eeaf863          	bgeu	s5,a4,80004c88 <__printf+0x5f0>
    8000489c:	02d7f5bb          	remuw	a1,a5,a3
    800048a0:	02059593          	slli	a1,a1,0x20
    800048a4:	0205d593          	srli	a1,a1,0x20
    800048a8:	00bd85b3          	add	a1,s11,a1
    800048ac:	0005c583          	lbu	a1,0(a1)
    800048b0:	02d7d7bb          	divuw	a5,a5,a3
    800048b4:	f8b403a3          	sb	a1,-121(s0)
    800048b8:	42eb7e63          	bgeu	s6,a4,80004cf4 <__printf+0x65c>
    800048bc:	02d7f5bb          	remuw	a1,a5,a3
    800048c0:	02059593          	slli	a1,a1,0x20
    800048c4:	0205d593          	srli	a1,a1,0x20
    800048c8:	00bd85b3          	add	a1,s11,a1
    800048cc:	0005c583          	lbu	a1,0(a1)
    800048d0:	02d7d7bb          	divuw	a5,a5,a3
    800048d4:	f8b40423          	sb	a1,-120(s0)
    800048d8:	42ebfc63          	bgeu	s7,a4,80004d10 <__printf+0x678>
    800048dc:	02079793          	slli	a5,a5,0x20
    800048e0:	0207d793          	srli	a5,a5,0x20
    800048e4:	00fd8db3          	add	s11,s11,a5
    800048e8:	000dc703          	lbu	a4,0(s11)
    800048ec:	00a00793          	li	a5,10
    800048f0:	00900c93          	li	s9,9
    800048f4:	f8e404a3          	sb	a4,-119(s0)
    800048f8:	00065c63          	bgez	a2,80004910 <__printf+0x278>
    800048fc:	f9040713          	addi	a4,s0,-112
    80004900:	00f70733          	add	a4,a4,a5
    80004904:	02d00693          	li	a3,45
    80004908:	fed70823          	sb	a3,-16(a4)
    8000490c:	00078c93          	mv	s9,a5
    80004910:	f8040793          	addi	a5,s0,-128
    80004914:	01978cb3          	add	s9,a5,s9
    80004918:	f7f40d13          	addi	s10,s0,-129
    8000491c:	000cc503          	lbu	a0,0(s9)
    80004920:	fffc8c93          	addi	s9,s9,-1
    80004924:	00000097          	auipc	ra,0x0
    80004928:	b90080e7          	jalr	-1136(ra) # 800044b4 <consputc>
    8000492c:	ffac98e3          	bne	s9,s10,8000491c <__printf+0x284>
    80004930:	00094503          	lbu	a0,0(s2)
    80004934:	e00514e3          	bnez	a0,8000473c <__printf+0xa4>
    80004938:	1a0c1663          	bnez	s8,80004ae4 <__printf+0x44c>
    8000493c:	08813083          	ld	ra,136(sp)
    80004940:	08013403          	ld	s0,128(sp)
    80004944:	07813483          	ld	s1,120(sp)
    80004948:	07013903          	ld	s2,112(sp)
    8000494c:	06813983          	ld	s3,104(sp)
    80004950:	06013a03          	ld	s4,96(sp)
    80004954:	05813a83          	ld	s5,88(sp)
    80004958:	05013b03          	ld	s6,80(sp)
    8000495c:	04813b83          	ld	s7,72(sp)
    80004960:	04013c03          	ld	s8,64(sp)
    80004964:	03813c83          	ld	s9,56(sp)
    80004968:	03013d03          	ld	s10,48(sp)
    8000496c:	02813d83          	ld	s11,40(sp)
    80004970:	0d010113          	addi	sp,sp,208
    80004974:	00008067          	ret
    80004978:	07300713          	li	a4,115
    8000497c:	1ce78a63          	beq	a5,a4,80004b50 <__printf+0x4b8>
    80004980:	07800713          	li	a4,120
    80004984:	1ee79e63          	bne	a5,a4,80004b80 <__printf+0x4e8>
    80004988:	f7843783          	ld	a5,-136(s0)
    8000498c:	0007a703          	lw	a4,0(a5)
    80004990:	00878793          	addi	a5,a5,8
    80004994:	f6f43c23          	sd	a5,-136(s0)
    80004998:	28074263          	bltz	a4,80004c1c <__printf+0x584>
    8000499c:	00002d97          	auipc	s11,0x2
    800049a0:	994d8d93          	addi	s11,s11,-1644 # 80006330 <digits>
    800049a4:	00f77793          	andi	a5,a4,15
    800049a8:	00fd87b3          	add	a5,s11,a5
    800049ac:	0007c683          	lbu	a3,0(a5)
    800049b0:	00f00613          	li	a2,15
    800049b4:	0007079b          	sext.w	a5,a4
    800049b8:	f8d40023          	sb	a3,-128(s0)
    800049bc:	0047559b          	srliw	a1,a4,0x4
    800049c0:	0047569b          	srliw	a3,a4,0x4
    800049c4:	00000c93          	li	s9,0
    800049c8:	0ee65063          	bge	a2,a4,80004aa8 <__printf+0x410>
    800049cc:	00f6f693          	andi	a3,a3,15
    800049d0:	00dd86b3          	add	a3,s11,a3
    800049d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800049d8:	0087d79b          	srliw	a5,a5,0x8
    800049dc:	00100c93          	li	s9,1
    800049e0:	f8d400a3          	sb	a3,-127(s0)
    800049e4:	0cb67263          	bgeu	a2,a1,80004aa8 <__printf+0x410>
    800049e8:	00f7f693          	andi	a3,a5,15
    800049ec:	00dd86b3          	add	a3,s11,a3
    800049f0:	0006c583          	lbu	a1,0(a3)
    800049f4:	00f00613          	li	a2,15
    800049f8:	0047d69b          	srliw	a3,a5,0x4
    800049fc:	f8b40123          	sb	a1,-126(s0)
    80004a00:	0047d593          	srli	a1,a5,0x4
    80004a04:	28f67e63          	bgeu	a2,a5,80004ca0 <__printf+0x608>
    80004a08:	00f6f693          	andi	a3,a3,15
    80004a0c:	00dd86b3          	add	a3,s11,a3
    80004a10:	0006c503          	lbu	a0,0(a3)
    80004a14:	0087d813          	srli	a6,a5,0x8
    80004a18:	0087d69b          	srliw	a3,a5,0x8
    80004a1c:	f8a401a3          	sb	a0,-125(s0)
    80004a20:	28b67663          	bgeu	a2,a1,80004cac <__printf+0x614>
    80004a24:	00f6f693          	andi	a3,a3,15
    80004a28:	00dd86b3          	add	a3,s11,a3
    80004a2c:	0006c583          	lbu	a1,0(a3)
    80004a30:	00c7d513          	srli	a0,a5,0xc
    80004a34:	00c7d69b          	srliw	a3,a5,0xc
    80004a38:	f8b40223          	sb	a1,-124(s0)
    80004a3c:	29067a63          	bgeu	a2,a6,80004cd0 <__printf+0x638>
    80004a40:	00f6f693          	andi	a3,a3,15
    80004a44:	00dd86b3          	add	a3,s11,a3
    80004a48:	0006c583          	lbu	a1,0(a3)
    80004a4c:	0107d813          	srli	a6,a5,0x10
    80004a50:	0107d69b          	srliw	a3,a5,0x10
    80004a54:	f8b402a3          	sb	a1,-123(s0)
    80004a58:	28a67263          	bgeu	a2,a0,80004cdc <__printf+0x644>
    80004a5c:	00f6f693          	andi	a3,a3,15
    80004a60:	00dd86b3          	add	a3,s11,a3
    80004a64:	0006c683          	lbu	a3,0(a3)
    80004a68:	0147d79b          	srliw	a5,a5,0x14
    80004a6c:	f8d40323          	sb	a3,-122(s0)
    80004a70:	21067663          	bgeu	a2,a6,80004c7c <__printf+0x5e4>
    80004a74:	02079793          	slli	a5,a5,0x20
    80004a78:	0207d793          	srli	a5,a5,0x20
    80004a7c:	00fd8db3          	add	s11,s11,a5
    80004a80:	000dc683          	lbu	a3,0(s11)
    80004a84:	00800793          	li	a5,8
    80004a88:	00700c93          	li	s9,7
    80004a8c:	f8d403a3          	sb	a3,-121(s0)
    80004a90:	00075c63          	bgez	a4,80004aa8 <__printf+0x410>
    80004a94:	f9040713          	addi	a4,s0,-112
    80004a98:	00f70733          	add	a4,a4,a5
    80004a9c:	02d00693          	li	a3,45
    80004aa0:	fed70823          	sb	a3,-16(a4)
    80004aa4:	00078c93          	mv	s9,a5
    80004aa8:	f8040793          	addi	a5,s0,-128
    80004aac:	01978cb3          	add	s9,a5,s9
    80004ab0:	f7f40d13          	addi	s10,s0,-129
    80004ab4:	000cc503          	lbu	a0,0(s9)
    80004ab8:	fffc8c93          	addi	s9,s9,-1
    80004abc:	00000097          	auipc	ra,0x0
    80004ac0:	9f8080e7          	jalr	-1544(ra) # 800044b4 <consputc>
    80004ac4:	ff9d18e3          	bne	s10,s9,80004ab4 <__printf+0x41c>
    80004ac8:	0100006f          	j	80004ad8 <__printf+0x440>
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	9e8080e7          	jalr	-1560(ra) # 800044b4 <consputc>
    80004ad4:	000c8493          	mv	s1,s9
    80004ad8:	00094503          	lbu	a0,0(s2)
    80004adc:	c60510e3          	bnez	a0,8000473c <__printf+0xa4>
    80004ae0:	e40c0ee3          	beqz	s8,8000493c <__printf+0x2a4>
    80004ae4:	00004517          	auipc	a0,0x4
    80004ae8:	d5c50513          	addi	a0,a0,-676 # 80008840 <pr>
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	94c080e7          	jalr	-1716(ra) # 80005438 <release>
    80004af4:	e49ff06f          	j	8000493c <__printf+0x2a4>
    80004af8:	f7843783          	ld	a5,-136(s0)
    80004afc:	03000513          	li	a0,48
    80004b00:	01000d13          	li	s10,16
    80004b04:	00878713          	addi	a4,a5,8
    80004b08:	0007bc83          	ld	s9,0(a5)
    80004b0c:	f6e43c23          	sd	a4,-136(s0)
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	9a4080e7          	jalr	-1628(ra) # 800044b4 <consputc>
    80004b18:	07800513          	li	a0,120
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	998080e7          	jalr	-1640(ra) # 800044b4 <consputc>
    80004b24:	00002d97          	auipc	s11,0x2
    80004b28:	80cd8d93          	addi	s11,s11,-2036 # 80006330 <digits>
    80004b2c:	03ccd793          	srli	a5,s9,0x3c
    80004b30:	00fd87b3          	add	a5,s11,a5
    80004b34:	0007c503          	lbu	a0,0(a5)
    80004b38:	fffd0d1b          	addiw	s10,s10,-1
    80004b3c:	004c9c93          	slli	s9,s9,0x4
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	974080e7          	jalr	-1676(ra) # 800044b4 <consputc>
    80004b48:	fe0d12e3          	bnez	s10,80004b2c <__printf+0x494>
    80004b4c:	f8dff06f          	j	80004ad8 <__printf+0x440>
    80004b50:	f7843783          	ld	a5,-136(s0)
    80004b54:	0007bc83          	ld	s9,0(a5)
    80004b58:	00878793          	addi	a5,a5,8
    80004b5c:	f6f43c23          	sd	a5,-136(s0)
    80004b60:	000c9a63          	bnez	s9,80004b74 <__printf+0x4dc>
    80004b64:	1080006f          	j	80004c6c <__printf+0x5d4>
    80004b68:	001c8c93          	addi	s9,s9,1
    80004b6c:	00000097          	auipc	ra,0x0
    80004b70:	948080e7          	jalr	-1720(ra) # 800044b4 <consputc>
    80004b74:	000cc503          	lbu	a0,0(s9)
    80004b78:	fe0518e3          	bnez	a0,80004b68 <__printf+0x4d0>
    80004b7c:	f5dff06f          	j	80004ad8 <__printf+0x440>
    80004b80:	02500513          	li	a0,37
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	930080e7          	jalr	-1744(ra) # 800044b4 <consputc>
    80004b8c:	000c8513          	mv	a0,s9
    80004b90:	00000097          	auipc	ra,0x0
    80004b94:	924080e7          	jalr	-1756(ra) # 800044b4 <consputc>
    80004b98:	f41ff06f          	j	80004ad8 <__printf+0x440>
    80004b9c:	02500513          	li	a0,37
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	914080e7          	jalr	-1772(ra) # 800044b4 <consputc>
    80004ba8:	f31ff06f          	j	80004ad8 <__printf+0x440>
    80004bac:	00030513          	mv	a0,t1
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	7bc080e7          	jalr	1980(ra) # 8000536c <acquire>
    80004bb8:	b4dff06f          	j	80004704 <__printf+0x6c>
    80004bbc:	40c0053b          	negw	a0,a2
    80004bc0:	00a00713          	li	a4,10
    80004bc4:	02e576bb          	remuw	a3,a0,a4
    80004bc8:	00001d97          	auipc	s11,0x1
    80004bcc:	768d8d93          	addi	s11,s11,1896 # 80006330 <digits>
    80004bd0:	ff700593          	li	a1,-9
    80004bd4:	02069693          	slli	a3,a3,0x20
    80004bd8:	0206d693          	srli	a3,a3,0x20
    80004bdc:	00dd86b3          	add	a3,s11,a3
    80004be0:	0006c683          	lbu	a3,0(a3)
    80004be4:	02e557bb          	divuw	a5,a0,a4
    80004be8:	f8d40023          	sb	a3,-128(s0)
    80004bec:	10b65e63          	bge	a2,a1,80004d08 <__printf+0x670>
    80004bf0:	06300593          	li	a1,99
    80004bf4:	02e7f6bb          	remuw	a3,a5,a4
    80004bf8:	02069693          	slli	a3,a3,0x20
    80004bfc:	0206d693          	srli	a3,a3,0x20
    80004c00:	00dd86b3          	add	a3,s11,a3
    80004c04:	0006c683          	lbu	a3,0(a3)
    80004c08:	02e7d73b          	divuw	a4,a5,a4
    80004c0c:	00200793          	li	a5,2
    80004c10:	f8d400a3          	sb	a3,-127(s0)
    80004c14:	bca5ece3          	bltu	a1,a0,800047ec <__printf+0x154>
    80004c18:	ce5ff06f          	j	800048fc <__printf+0x264>
    80004c1c:	40e007bb          	negw	a5,a4
    80004c20:	00001d97          	auipc	s11,0x1
    80004c24:	710d8d93          	addi	s11,s11,1808 # 80006330 <digits>
    80004c28:	00f7f693          	andi	a3,a5,15
    80004c2c:	00dd86b3          	add	a3,s11,a3
    80004c30:	0006c583          	lbu	a1,0(a3)
    80004c34:	ff100613          	li	a2,-15
    80004c38:	0047d69b          	srliw	a3,a5,0x4
    80004c3c:	f8b40023          	sb	a1,-128(s0)
    80004c40:	0047d59b          	srliw	a1,a5,0x4
    80004c44:	0ac75e63          	bge	a4,a2,80004d00 <__printf+0x668>
    80004c48:	00f6f693          	andi	a3,a3,15
    80004c4c:	00dd86b3          	add	a3,s11,a3
    80004c50:	0006c603          	lbu	a2,0(a3)
    80004c54:	00f00693          	li	a3,15
    80004c58:	0087d79b          	srliw	a5,a5,0x8
    80004c5c:	f8c400a3          	sb	a2,-127(s0)
    80004c60:	d8b6e4e3          	bltu	a3,a1,800049e8 <__printf+0x350>
    80004c64:	00200793          	li	a5,2
    80004c68:	e2dff06f          	j	80004a94 <__printf+0x3fc>
    80004c6c:	00001c97          	auipc	s9,0x1
    80004c70:	6a4c8c93          	addi	s9,s9,1700 # 80006310 <_ZZN5Riscv12printIntegerEmE6digits+0x148>
    80004c74:	02800513          	li	a0,40
    80004c78:	ef1ff06f          	j	80004b68 <__printf+0x4d0>
    80004c7c:	00700793          	li	a5,7
    80004c80:	00600c93          	li	s9,6
    80004c84:	e0dff06f          	j	80004a90 <__printf+0x3f8>
    80004c88:	00700793          	li	a5,7
    80004c8c:	00600c93          	li	s9,6
    80004c90:	c69ff06f          	j	800048f8 <__printf+0x260>
    80004c94:	00300793          	li	a5,3
    80004c98:	00200c93          	li	s9,2
    80004c9c:	c5dff06f          	j	800048f8 <__printf+0x260>
    80004ca0:	00300793          	li	a5,3
    80004ca4:	00200c93          	li	s9,2
    80004ca8:	de9ff06f          	j	80004a90 <__printf+0x3f8>
    80004cac:	00400793          	li	a5,4
    80004cb0:	00300c93          	li	s9,3
    80004cb4:	dddff06f          	j	80004a90 <__printf+0x3f8>
    80004cb8:	00400793          	li	a5,4
    80004cbc:	00300c93          	li	s9,3
    80004cc0:	c39ff06f          	j	800048f8 <__printf+0x260>
    80004cc4:	00500793          	li	a5,5
    80004cc8:	00400c93          	li	s9,4
    80004ccc:	c2dff06f          	j	800048f8 <__printf+0x260>
    80004cd0:	00500793          	li	a5,5
    80004cd4:	00400c93          	li	s9,4
    80004cd8:	db9ff06f          	j	80004a90 <__printf+0x3f8>
    80004cdc:	00600793          	li	a5,6
    80004ce0:	00500c93          	li	s9,5
    80004ce4:	dadff06f          	j	80004a90 <__printf+0x3f8>
    80004ce8:	00600793          	li	a5,6
    80004cec:	00500c93          	li	s9,5
    80004cf0:	c09ff06f          	j	800048f8 <__printf+0x260>
    80004cf4:	00800793          	li	a5,8
    80004cf8:	00700c93          	li	s9,7
    80004cfc:	bfdff06f          	j	800048f8 <__printf+0x260>
    80004d00:	00100793          	li	a5,1
    80004d04:	d91ff06f          	j	80004a94 <__printf+0x3fc>
    80004d08:	00100793          	li	a5,1
    80004d0c:	bf1ff06f          	j	800048fc <__printf+0x264>
    80004d10:	00900793          	li	a5,9
    80004d14:	00800c93          	li	s9,8
    80004d18:	be1ff06f          	j	800048f8 <__printf+0x260>
    80004d1c:	00001517          	auipc	a0,0x1
    80004d20:	5fc50513          	addi	a0,a0,1532 # 80006318 <_ZZN5Riscv12printIntegerEmE6digits+0x150>
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	918080e7          	jalr	-1768(ra) # 8000463c <panic>

0000000080004d2c <printfinit>:
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	00113c23          	sd	ra,24(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    80004d40:	00004497          	auipc	s1,0x4
    80004d44:	b0048493          	addi	s1,s1,-1280 # 80008840 <pr>
    80004d48:	00048513          	mv	a0,s1
    80004d4c:	00001597          	auipc	a1,0x1
    80004d50:	5dc58593          	addi	a1,a1,1500 # 80006328 <_ZZN5Riscv12printIntegerEmE6digits+0x160>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	5f4080e7          	jalr	1524(ra) # 80005348 <initlock>
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	0004ac23          	sw	zero,24(s1)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <uartinit>:
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00813423          	sd	s0,8(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	100007b7          	lui	a5,0x10000
    80004d84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004d88:	f8000713          	li	a4,-128
    80004d8c:	00e781a3          	sb	a4,3(a5)
    80004d90:	00300713          	li	a4,3
    80004d94:	00e78023          	sb	a4,0(a5)
    80004d98:	000780a3          	sb	zero,1(a5)
    80004d9c:	00e781a3          	sb	a4,3(a5)
    80004da0:	00700693          	li	a3,7
    80004da4:	00d78123          	sb	a3,2(a5)
    80004da8:	00e780a3          	sb	a4,1(a5)
    80004dac:	00813403          	ld	s0,8(sp)
    80004db0:	01010113          	addi	sp,sp,16
    80004db4:	00008067          	ret

0000000080004db8 <uartputc>:
    80004db8:	00002797          	auipc	a5,0x2
    80004dbc:	7e07a783          	lw	a5,2016(a5) # 80007598 <panicked>
    80004dc0:	00078463          	beqz	a5,80004dc8 <uartputc+0x10>
    80004dc4:	0000006f          	j	80004dc4 <uartputc+0xc>
    80004dc8:	fd010113          	addi	sp,sp,-48
    80004dcc:	02813023          	sd	s0,32(sp)
    80004dd0:	00913c23          	sd	s1,24(sp)
    80004dd4:	01213823          	sd	s2,16(sp)
    80004dd8:	01313423          	sd	s3,8(sp)
    80004ddc:	02113423          	sd	ra,40(sp)
    80004de0:	03010413          	addi	s0,sp,48
    80004de4:	00002917          	auipc	s2,0x2
    80004de8:	7bc90913          	addi	s2,s2,1980 # 800075a0 <uart_tx_r>
    80004dec:	00093783          	ld	a5,0(s2)
    80004df0:	00002497          	auipc	s1,0x2
    80004df4:	7b848493          	addi	s1,s1,1976 # 800075a8 <uart_tx_w>
    80004df8:	0004b703          	ld	a4,0(s1)
    80004dfc:	02078693          	addi	a3,a5,32
    80004e00:	00050993          	mv	s3,a0
    80004e04:	02e69c63          	bne	a3,a4,80004e3c <uartputc+0x84>
    80004e08:	00001097          	auipc	ra,0x1
    80004e0c:	834080e7          	jalr	-1996(ra) # 8000563c <push_on>
    80004e10:	00093783          	ld	a5,0(s2)
    80004e14:	0004b703          	ld	a4,0(s1)
    80004e18:	02078793          	addi	a5,a5,32
    80004e1c:	00e79463          	bne	a5,a4,80004e24 <uartputc+0x6c>
    80004e20:	0000006f          	j	80004e20 <uartputc+0x68>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	88c080e7          	jalr	-1908(ra) # 800056b0 <pop_on>
    80004e2c:	00093783          	ld	a5,0(s2)
    80004e30:	0004b703          	ld	a4,0(s1)
    80004e34:	02078693          	addi	a3,a5,32
    80004e38:	fce688e3          	beq	a3,a4,80004e08 <uartputc+0x50>
    80004e3c:	01f77693          	andi	a3,a4,31
    80004e40:	00004597          	auipc	a1,0x4
    80004e44:	a2058593          	addi	a1,a1,-1504 # 80008860 <uart_tx_buf>
    80004e48:	00d586b3          	add	a3,a1,a3
    80004e4c:	00170713          	addi	a4,a4,1
    80004e50:	01368023          	sb	s3,0(a3)
    80004e54:	00e4b023          	sd	a4,0(s1)
    80004e58:	10000637          	lui	a2,0x10000
    80004e5c:	02f71063          	bne	a4,a5,80004e7c <uartputc+0xc4>
    80004e60:	0340006f          	j	80004e94 <uartputc+0xdc>
    80004e64:	00074703          	lbu	a4,0(a4)
    80004e68:	00f93023          	sd	a5,0(s2)
    80004e6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004e70:	00093783          	ld	a5,0(s2)
    80004e74:	0004b703          	ld	a4,0(s1)
    80004e78:	00f70e63          	beq	a4,a5,80004e94 <uartputc+0xdc>
    80004e7c:	00564683          	lbu	a3,5(a2)
    80004e80:	01f7f713          	andi	a4,a5,31
    80004e84:	00e58733          	add	a4,a1,a4
    80004e88:	0206f693          	andi	a3,a3,32
    80004e8c:	00178793          	addi	a5,a5,1
    80004e90:	fc069ae3          	bnez	a3,80004e64 <uartputc+0xac>
    80004e94:	02813083          	ld	ra,40(sp)
    80004e98:	02013403          	ld	s0,32(sp)
    80004e9c:	01813483          	ld	s1,24(sp)
    80004ea0:	01013903          	ld	s2,16(sp)
    80004ea4:	00813983          	ld	s3,8(sp)
    80004ea8:	03010113          	addi	sp,sp,48
    80004eac:	00008067          	ret

0000000080004eb0 <uartputc_sync>:
    80004eb0:	ff010113          	addi	sp,sp,-16
    80004eb4:	00813423          	sd	s0,8(sp)
    80004eb8:	01010413          	addi	s0,sp,16
    80004ebc:	00002717          	auipc	a4,0x2
    80004ec0:	6dc72703          	lw	a4,1756(a4) # 80007598 <panicked>
    80004ec4:	02071663          	bnez	a4,80004ef0 <uartputc_sync+0x40>
    80004ec8:	00050793          	mv	a5,a0
    80004ecc:	100006b7          	lui	a3,0x10000
    80004ed0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004ed4:	02077713          	andi	a4,a4,32
    80004ed8:	fe070ce3          	beqz	a4,80004ed0 <uartputc_sync+0x20>
    80004edc:	0ff7f793          	andi	a5,a5,255
    80004ee0:	00f68023          	sb	a5,0(a3)
    80004ee4:	00813403          	ld	s0,8(sp)
    80004ee8:	01010113          	addi	sp,sp,16
    80004eec:	00008067          	ret
    80004ef0:	0000006f          	j	80004ef0 <uartputc_sync+0x40>

0000000080004ef4 <uartstart>:
    80004ef4:	ff010113          	addi	sp,sp,-16
    80004ef8:	00813423          	sd	s0,8(sp)
    80004efc:	01010413          	addi	s0,sp,16
    80004f00:	00002617          	auipc	a2,0x2
    80004f04:	6a060613          	addi	a2,a2,1696 # 800075a0 <uart_tx_r>
    80004f08:	00002517          	auipc	a0,0x2
    80004f0c:	6a050513          	addi	a0,a0,1696 # 800075a8 <uart_tx_w>
    80004f10:	00063783          	ld	a5,0(a2)
    80004f14:	00053703          	ld	a4,0(a0)
    80004f18:	04f70263          	beq	a4,a5,80004f5c <uartstart+0x68>
    80004f1c:	100005b7          	lui	a1,0x10000
    80004f20:	00004817          	auipc	a6,0x4
    80004f24:	94080813          	addi	a6,a6,-1728 # 80008860 <uart_tx_buf>
    80004f28:	01c0006f          	j	80004f44 <uartstart+0x50>
    80004f2c:	0006c703          	lbu	a4,0(a3)
    80004f30:	00f63023          	sd	a5,0(a2)
    80004f34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f38:	00063783          	ld	a5,0(a2)
    80004f3c:	00053703          	ld	a4,0(a0)
    80004f40:	00f70e63          	beq	a4,a5,80004f5c <uartstart+0x68>
    80004f44:	01f7f713          	andi	a4,a5,31
    80004f48:	00e806b3          	add	a3,a6,a4
    80004f4c:	0055c703          	lbu	a4,5(a1)
    80004f50:	00178793          	addi	a5,a5,1
    80004f54:	02077713          	andi	a4,a4,32
    80004f58:	fc071ae3          	bnez	a4,80004f2c <uartstart+0x38>
    80004f5c:	00813403          	ld	s0,8(sp)
    80004f60:	01010113          	addi	sp,sp,16
    80004f64:	00008067          	ret

0000000080004f68 <uartgetc>:
    80004f68:	ff010113          	addi	sp,sp,-16
    80004f6c:	00813423          	sd	s0,8(sp)
    80004f70:	01010413          	addi	s0,sp,16
    80004f74:	10000737          	lui	a4,0x10000
    80004f78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004f7c:	0017f793          	andi	a5,a5,1
    80004f80:	00078c63          	beqz	a5,80004f98 <uartgetc+0x30>
    80004f84:	00074503          	lbu	a0,0(a4)
    80004f88:	0ff57513          	andi	a0,a0,255
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret
    80004f98:	fff00513          	li	a0,-1
    80004f9c:	ff1ff06f          	j	80004f8c <uartgetc+0x24>

0000000080004fa0 <uartintr>:
    80004fa0:	100007b7          	lui	a5,0x10000
    80004fa4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fa8:	0017f793          	andi	a5,a5,1
    80004fac:	0a078463          	beqz	a5,80005054 <uartintr+0xb4>
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00813823          	sd	s0,16(sp)
    80004fb8:	00913423          	sd	s1,8(sp)
    80004fbc:	00113c23          	sd	ra,24(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	100004b7          	lui	s1,0x10000
    80004fc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004fcc:	0ff57513          	andi	a0,a0,255
    80004fd0:	fffff097          	auipc	ra,0xfffff
    80004fd4:	534080e7          	jalr	1332(ra) # 80004504 <consoleintr>
    80004fd8:	0054c783          	lbu	a5,5(s1)
    80004fdc:	0017f793          	andi	a5,a5,1
    80004fe0:	fe0794e3          	bnez	a5,80004fc8 <uartintr+0x28>
    80004fe4:	00002617          	auipc	a2,0x2
    80004fe8:	5bc60613          	addi	a2,a2,1468 # 800075a0 <uart_tx_r>
    80004fec:	00002517          	auipc	a0,0x2
    80004ff0:	5bc50513          	addi	a0,a0,1468 # 800075a8 <uart_tx_w>
    80004ff4:	00063783          	ld	a5,0(a2)
    80004ff8:	00053703          	ld	a4,0(a0)
    80004ffc:	04f70263          	beq	a4,a5,80005040 <uartintr+0xa0>
    80005000:	100005b7          	lui	a1,0x10000
    80005004:	00004817          	auipc	a6,0x4
    80005008:	85c80813          	addi	a6,a6,-1956 # 80008860 <uart_tx_buf>
    8000500c:	01c0006f          	j	80005028 <uartintr+0x88>
    80005010:	0006c703          	lbu	a4,0(a3)
    80005014:	00f63023          	sd	a5,0(a2)
    80005018:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000501c:	00063783          	ld	a5,0(a2)
    80005020:	00053703          	ld	a4,0(a0)
    80005024:	00f70e63          	beq	a4,a5,80005040 <uartintr+0xa0>
    80005028:	01f7f713          	andi	a4,a5,31
    8000502c:	00e806b3          	add	a3,a6,a4
    80005030:	0055c703          	lbu	a4,5(a1)
    80005034:	00178793          	addi	a5,a5,1
    80005038:	02077713          	andi	a4,a4,32
    8000503c:	fc071ae3          	bnez	a4,80005010 <uartintr+0x70>
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	02010113          	addi	sp,sp,32
    80005050:	00008067          	ret
    80005054:	00002617          	auipc	a2,0x2
    80005058:	54c60613          	addi	a2,a2,1356 # 800075a0 <uart_tx_r>
    8000505c:	00002517          	auipc	a0,0x2
    80005060:	54c50513          	addi	a0,a0,1356 # 800075a8 <uart_tx_w>
    80005064:	00063783          	ld	a5,0(a2)
    80005068:	00053703          	ld	a4,0(a0)
    8000506c:	04f70263          	beq	a4,a5,800050b0 <uartintr+0x110>
    80005070:	100005b7          	lui	a1,0x10000
    80005074:	00003817          	auipc	a6,0x3
    80005078:	7ec80813          	addi	a6,a6,2028 # 80008860 <uart_tx_buf>
    8000507c:	01c0006f          	j	80005098 <uartintr+0xf8>
    80005080:	0006c703          	lbu	a4,0(a3)
    80005084:	00f63023          	sd	a5,0(a2)
    80005088:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000508c:	00063783          	ld	a5,0(a2)
    80005090:	00053703          	ld	a4,0(a0)
    80005094:	02f70063          	beq	a4,a5,800050b4 <uartintr+0x114>
    80005098:	01f7f713          	andi	a4,a5,31
    8000509c:	00e806b3          	add	a3,a6,a4
    800050a0:	0055c703          	lbu	a4,5(a1)
    800050a4:	00178793          	addi	a5,a5,1
    800050a8:	02077713          	andi	a4,a4,32
    800050ac:	fc071ae3          	bnez	a4,80005080 <uartintr+0xe0>
    800050b0:	00008067          	ret
    800050b4:	00008067          	ret

00000000800050b8 <kinit>:
    800050b8:	fc010113          	addi	sp,sp,-64
    800050bc:	02913423          	sd	s1,40(sp)
    800050c0:	fffff7b7          	lui	a5,0xfffff
    800050c4:	00004497          	auipc	s1,0x4
    800050c8:	7bb48493          	addi	s1,s1,1979 # 8000987f <end+0xfff>
    800050cc:	02813823          	sd	s0,48(sp)
    800050d0:	01313c23          	sd	s3,24(sp)
    800050d4:	00f4f4b3          	and	s1,s1,a5
    800050d8:	02113c23          	sd	ra,56(sp)
    800050dc:	03213023          	sd	s2,32(sp)
    800050e0:	01413823          	sd	s4,16(sp)
    800050e4:	01513423          	sd	s5,8(sp)
    800050e8:	04010413          	addi	s0,sp,64
    800050ec:	000017b7          	lui	a5,0x1
    800050f0:	01100993          	li	s3,17
    800050f4:	00f487b3          	add	a5,s1,a5
    800050f8:	01b99993          	slli	s3,s3,0x1b
    800050fc:	06f9e063          	bltu	s3,a5,8000515c <kinit+0xa4>
    80005100:	00003a97          	auipc	s5,0x3
    80005104:	780a8a93          	addi	s5,s5,1920 # 80008880 <end>
    80005108:	0754ec63          	bltu	s1,s5,80005180 <kinit+0xc8>
    8000510c:	0734fa63          	bgeu	s1,s3,80005180 <kinit+0xc8>
    80005110:	00088a37          	lui	s4,0x88
    80005114:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005118:	00002917          	auipc	s2,0x2
    8000511c:	49890913          	addi	s2,s2,1176 # 800075b0 <kmem>
    80005120:	00ca1a13          	slli	s4,s4,0xc
    80005124:	0140006f          	j	80005138 <kinit+0x80>
    80005128:	000017b7          	lui	a5,0x1
    8000512c:	00f484b3          	add	s1,s1,a5
    80005130:	0554e863          	bltu	s1,s5,80005180 <kinit+0xc8>
    80005134:	0534f663          	bgeu	s1,s3,80005180 <kinit+0xc8>
    80005138:	00001637          	lui	a2,0x1
    8000513c:	00100593          	li	a1,1
    80005140:	00048513          	mv	a0,s1
    80005144:	00000097          	auipc	ra,0x0
    80005148:	5e4080e7          	jalr	1508(ra) # 80005728 <__memset>
    8000514c:	00093783          	ld	a5,0(s2)
    80005150:	00f4b023          	sd	a5,0(s1)
    80005154:	00993023          	sd	s1,0(s2)
    80005158:	fd4498e3          	bne	s1,s4,80005128 <kinit+0x70>
    8000515c:	03813083          	ld	ra,56(sp)
    80005160:	03013403          	ld	s0,48(sp)
    80005164:	02813483          	ld	s1,40(sp)
    80005168:	02013903          	ld	s2,32(sp)
    8000516c:	01813983          	ld	s3,24(sp)
    80005170:	01013a03          	ld	s4,16(sp)
    80005174:	00813a83          	ld	s5,8(sp)
    80005178:	04010113          	addi	sp,sp,64
    8000517c:	00008067          	ret
    80005180:	00001517          	auipc	a0,0x1
    80005184:	1c850513          	addi	a0,a0,456 # 80006348 <digits+0x18>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	4b4080e7          	jalr	1204(ra) # 8000463c <panic>

0000000080005190 <freerange>:
    80005190:	fc010113          	addi	sp,sp,-64
    80005194:	000017b7          	lui	a5,0x1
    80005198:	02913423          	sd	s1,40(sp)
    8000519c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051a0:	009504b3          	add	s1,a0,s1
    800051a4:	fffff537          	lui	a0,0xfffff
    800051a8:	02813823          	sd	s0,48(sp)
    800051ac:	02113c23          	sd	ra,56(sp)
    800051b0:	03213023          	sd	s2,32(sp)
    800051b4:	01313c23          	sd	s3,24(sp)
    800051b8:	01413823          	sd	s4,16(sp)
    800051bc:	01513423          	sd	s5,8(sp)
    800051c0:	01613023          	sd	s6,0(sp)
    800051c4:	04010413          	addi	s0,sp,64
    800051c8:	00a4f4b3          	and	s1,s1,a0
    800051cc:	00f487b3          	add	a5,s1,a5
    800051d0:	06f5e463          	bltu	a1,a5,80005238 <freerange+0xa8>
    800051d4:	00003a97          	auipc	s5,0x3
    800051d8:	6aca8a93          	addi	s5,s5,1708 # 80008880 <end>
    800051dc:	0954e263          	bltu	s1,s5,80005260 <freerange+0xd0>
    800051e0:	01100993          	li	s3,17
    800051e4:	01b99993          	slli	s3,s3,0x1b
    800051e8:	0734fc63          	bgeu	s1,s3,80005260 <freerange+0xd0>
    800051ec:	00058a13          	mv	s4,a1
    800051f0:	00002917          	auipc	s2,0x2
    800051f4:	3c090913          	addi	s2,s2,960 # 800075b0 <kmem>
    800051f8:	00002b37          	lui	s6,0x2
    800051fc:	0140006f          	j	80005210 <freerange+0x80>
    80005200:	000017b7          	lui	a5,0x1
    80005204:	00f484b3          	add	s1,s1,a5
    80005208:	0554ec63          	bltu	s1,s5,80005260 <freerange+0xd0>
    8000520c:	0534fa63          	bgeu	s1,s3,80005260 <freerange+0xd0>
    80005210:	00001637          	lui	a2,0x1
    80005214:	00100593          	li	a1,1
    80005218:	00048513          	mv	a0,s1
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	50c080e7          	jalr	1292(ra) # 80005728 <__memset>
    80005224:	00093703          	ld	a4,0(s2)
    80005228:	016487b3          	add	a5,s1,s6
    8000522c:	00e4b023          	sd	a4,0(s1)
    80005230:	00993023          	sd	s1,0(s2)
    80005234:	fcfa76e3          	bgeu	s4,a5,80005200 <freerange+0x70>
    80005238:	03813083          	ld	ra,56(sp)
    8000523c:	03013403          	ld	s0,48(sp)
    80005240:	02813483          	ld	s1,40(sp)
    80005244:	02013903          	ld	s2,32(sp)
    80005248:	01813983          	ld	s3,24(sp)
    8000524c:	01013a03          	ld	s4,16(sp)
    80005250:	00813a83          	ld	s5,8(sp)
    80005254:	00013b03          	ld	s6,0(sp)
    80005258:	04010113          	addi	sp,sp,64
    8000525c:	00008067          	ret
    80005260:	00001517          	auipc	a0,0x1
    80005264:	0e850513          	addi	a0,a0,232 # 80006348 <digits+0x18>
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	3d4080e7          	jalr	980(ra) # 8000463c <panic>

0000000080005270 <kfree>:
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00113c23          	sd	ra,24(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	03451793          	slli	a5,a0,0x34
    80005288:	04079c63          	bnez	a5,800052e0 <kfree+0x70>
    8000528c:	00003797          	auipc	a5,0x3
    80005290:	5f478793          	addi	a5,a5,1524 # 80008880 <end>
    80005294:	00050493          	mv	s1,a0
    80005298:	04f56463          	bltu	a0,a5,800052e0 <kfree+0x70>
    8000529c:	01100793          	li	a5,17
    800052a0:	01b79793          	slli	a5,a5,0x1b
    800052a4:	02f57e63          	bgeu	a0,a5,800052e0 <kfree+0x70>
    800052a8:	00001637          	lui	a2,0x1
    800052ac:	00100593          	li	a1,1
    800052b0:	00000097          	auipc	ra,0x0
    800052b4:	478080e7          	jalr	1144(ra) # 80005728 <__memset>
    800052b8:	00002797          	auipc	a5,0x2
    800052bc:	2f878793          	addi	a5,a5,760 # 800075b0 <kmem>
    800052c0:	0007b703          	ld	a4,0(a5)
    800052c4:	01813083          	ld	ra,24(sp)
    800052c8:	01013403          	ld	s0,16(sp)
    800052cc:	00e4b023          	sd	a4,0(s1)
    800052d0:	0097b023          	sd	s1,0(a5)
    800052d4:	00813483          	ld	s1,8(sp)
    800052d8:	02010113          	addi	sp,sp,32
    800052dc:	00008067          	ret
    800052e0:	00001517          	auipc	a0,0x1
    800052e4:	06850513          	addi	a0,a0,104 # 80006348 <digits+0x18>
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	354080e7          	jalr	852(ra) # 8000463c <panic>

00000000800052f0 <kalloc>:
    800052f0:	fe010113          	addi	sp,sp,-32
    800052f4:	00813823          	sd	s0,16(sp)
    800052f8:	00913423          	sd	s1,8(sp)
    800052fc:	00113c23          	sd	ra,24(sp)
    80005300:	02010413          	addi	s0,sp,32
    80005304:	00002797          	auipc	a5,0x2
    80005308:	2ac78793          	addi	a5,a5,684 # 800075b0 <kmem>
    8000530c:	0007b483          	ld	s1,0(a5)
    80005310:	02048063          	beqz	s1,80005330 <kalloc+0x40>
    80005314:	0004b703          	ld	a4,0(s1)
    80005318:	00001637          	lui	a2,0x1
    8000531c:	00500593          	li	a1,5
    80005320:	00048513          	mv	a0,s1
    80005324:	00e7b023          	sd	a4,0(a5)
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	400080e7          	jalr	1024(ra) # 80005728 <__memset>
    80005330:	01813083          	ld	ra,24(sp)
    80005334:	01013403          	ld	s0,16(sp)
    80005338:	00048513          	mv	a0,s1
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret

0000000080005348 <initlock>:
    80005348:	ff010113          	addi	sp,sp,-16
    8000534c:	00813423          	sd	s0,8(sp)
    80005350:	01010413          	addi	s0,sp,16
    80005354:	00813403          	ld	s0,8(sp)
    80005358:	00b53423          	sd	a1,8(a0)
    8000535c:	00052023          	sw	zero,0(a0)
    80005360:	00053823          	sd	zero,16(a0)
    80005364:	01010113          	addi	sp,sp,16
    80005368:	00008067          	ret

000000008000536c <acquire>:
    8000536c:	fe010113          	addi	sp,sp,-32
    80005370:	00813823          	sd	s0,16(sp)
    80005374:	00913423          	sd	s1,8(sp)
    80005378:	00113c23          	sd	ra,24(sp)
    8000537c:	01213023          	sd	s2,0(sp)
    80005380:	02010413          	addi	s0,sp,32
    80005384:	00050493          	mv	s1,a0
    80005388:	10002973          	csrr	s2,sstatus
    8000538c:	100027f3          	csrr	a5,sstatus
    80005390:	ffd7f793          	andi	a5,a5,-3
    80005394:	10079073          	csrw	sstatus,a5
    80005398:	fffff097          	auipc	ra,0xfffff
    8000539c:	8e8080e7          	jalr	-1816(ra) # 80003c80 <mycpu>
    800053a0:	07852783          	lw	a5,120(a0)
    800053a4:	06078e63          	beqz	a5,80005420 <acquire+0xb4>
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	8d8080e7          	jalr	-1832(ra) # 80003c80 <mycpu>
    800053b0:	07852783          	lw	a5,120(a0)
    800053b4:	0004a703          	lw	a4,0(s1)
    800053b8:	0017879b          	addiw	a5,a5,1
    800053bc:	06f52c23          	sw	a5,120(a0)
    800053c0:	04071063          	bnez	a4,80005400 <acquire+0x94>
    800053c4:	00100713          	li	a4,1
    800053c8:	00070793          	mv	a5,a4
    800053cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800053d0:	0007879b          	sext.w	a5,a5
    800053d4:	fe079ae3          	bnez	a5,800053c8 <acquire+0x5c>
    800053d8:	0ff0000f          	fence
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	8a4080e7          	jalr	-1884(ra) # 80003c80 <mycpu>
    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00a4b823          	sd	a0,16(s1)
    800053f0:	00013903          	ld	s2,0(sp)
    800053f4:	00813483          	ld	s1,8(sp)
    800053f8:	02010113          	addi	sp,sp,32
    800053fc:	00008067          	ret
    80005400:	0104b903          	ld	s2,16(s1)
    80005404:	fffff097          	auipc	ra,0xfffff
    80005408:	87c080e7          	jalr	-1924(ra) # 80003c80 <mycpu>
    8000540c:	faa91ce3          	bne	s2,a0,800053c4 <acquire+0x58>
    80005410:	00001517          	auipc	a0,0x1
    80005414:	f4050513          	addi	a0,a0,-192 # 80006350 <digits+0x20>
    80005418:	fffff097          	auipc	ra,0xfffff
    8000541c:	224080e7          	jalr	548(ra) # 8000463c <panic>
    80005420:	00195913          	srli	s2,s2,0x1
    80005424:	fffff097          	auipc	ra,0xfffff
    80005428:	85c080e7          	jalr	-1956(ra) # 80003c80 <mycpu>
    8000542c:	00197913          	andi	s2,s2,1
    80005430:	07252e23          	sw	s2,124(a0)
    80005434:	f75ff06f          	j	800053a8 <acquire+0x3c>

0000000080005438 <release>:
    80005438:	fe010113          	addi	sp,sp,-32
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00113c23          	sd	ra,24(sp)
    80005444:	00913423          	sd	s1,8(sp)
    80005448:	01213023          	sd	s2,0(sp)
    8000544c:	02010413          	addi	s0,sp,32
    80005450:	00052783          	lw	a5,0(a0)
    80005454:	00079a63          	bnez	a5,80005468 <release+0x30>
    80005458:	00001517          	auipc	a0,0x1
    8000545c:	f0050513          	addi	a0,a0,-256 # 80006358 <digits+0x28>
    80005460:	fffff097          	auipc	ra,0xfffff
    80005464:	1dc080e7          	jalr	476(ra) # 8000463c <panic>
    80005468:	01053903          	ld	s2,16(a0)
    8000546c:	00050493          	mv	s1,a0
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	810080e7          	jalr	-2032(ra) # 80003c80 <mycpu>
    80005478:	fea910e3          	bne	s2,a0,80005458 <release+0x20>
    8000547c:	0004b823          	sd	zero,16(s1)
    80005480:	0ff0000f          	fence
    80005484:	0f50000f          	fence	iorw,ow
    80005488:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000548c:	ffffe097          	auipc	ra,0xffffe
    80005490:	7f4080e7          	jalr	2036(ra) # 80003c80 <mycpu>
    80005494:	100027f3          	csrr	a5,sstatus
    80005498:	0027f793          	andi	a5,a5,2
    8000549c:	04079a63          	bnez	a5,800054f0 <release+0xb8>
    800054a0:	07852783          	lw	a5,120(a0)
    800054a4:	02f05e63          	blez	a5,800054e0 <release+0xa8>
    800054a8:	fff7871b          	addiw	a4,a5,-1
    800054ac:	06e52c23          	sw	a4,120(a0)
    800054b0:	00071c63          	bnez	a4,800054c8 <release+0x90>
    800054b4:	07c52783          	lw	a5,124(a0)
    800054b8:	00078863          	beqz	a5,800054c8 <release+0x90>
    800054bc:	100027f3          	csrr	a5,sstatus
    800054c0:	0027e793          	ori	a5,a5,2
    800054c4:	10079073          	csrw	sstatus,a5
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	00013903          	ld	s2,0(sp)
    800054d8:	02010113          	addi	sp,sp,32
    800054dc:	00008067          	ret
    800054e0:	00001517          	auipc	a0,0x1
    800054e4:	e9850513          	addi	a0,a0,-360 # 80006378 <digits+0x48>
    800054e8:	fffff097          	auipc	ra,0xfffff
    800054ec:	154080e7          	jalr	340(ra) # 8000463c <panic>
    800054f0:	00001517          	auipc	a0,0x1
    800054f4:	e7050513          	addi	a0,a0,-400 # 80006360 <digits+0x30>
    800054f8:	fffff097          	auipc	ra,0xfffff
    800054fc:	144080e7          	jalr	324(ra) # 8000463c <panic>

0000000080005500 <holding>:
    80005500:	00052783          	lw	a5,0(a0)
    80005504:	00079663          	bnez	a5,80005510 <holding+0x10>
    80005508:	00000513          	li	a0,0
    8000550c:	00008067          	ret
    80005510:	fe010113          	addi	sp,sp,-32
    80005514:	00813823          	sd	s0,16(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	00113c23          	sd	ra,24(sp)
    80005520:	02010413          	addi	s0,sp,32
    80005524:	01053483          	ld	s1,16(a0)
    80005528:	ffffe097          	auipc	ra,0xffffe
    8000552c:	758080e7          	jalr	1880(ra) # 80003c80 <mycpu>
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	40a48533          	sub	a0,s1,a0
    8000553c:	00153513          	seqz	a0,a0
    80005540:	00813483          	ld	s1,8(sp)
    80005544:	02010113          	addi	sp,sp,32
    80005548:	00008067          	ret

000000008000554c <push_off>:
    8000554c:	fe010113          	addi	sp,sp,-32
    80005550:	00813823          	sd	s0,16(sp)
    80005554:	00113c23          	sd	ra,24(sp)
    80005558:	00913423          	sd	s1,8(sp)
    8000555c:	02010413          	addi	s0,sp,32
    80005560:	100024f3          	csrr	s1,sstatus
    80005564:	100027f3          	csrr	a5,sstatus
    80005568:	ffd7f793          	andi	a5,a5,-3
    8000556c:	10079073          	csrw	sstatus,a5
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	710080e7          	jalr	1808(ra) # 80003c80 <mycpu>
    80005578:	07852783          	lw	a5,120(a0)
    8000557c:	02078663          	beqz	a5,800055a8 <push_off+0x5c>
    80005580:	ffffe097          	auipc	ra,0xffffe
    80005584:	700080e7          	jalr	1792(ra) # 80003c80 <mycpu>
    80005588:	07852783          	lw	a5,120(a0)
    8000558c:	01813083          	ld	ra,24(sp)
    80005590:	01013403          	ld	s0,16(sp)
    80005594:	0017879b          	addiw	a5,a5,1
    80005598:	06f52c23          	sw	a5,120(a0)
    8000559c:	00813483          	ld	s1,8(sp)
    800055a0:	02010113          	addi	sp,sp,32
    800055a4:	00008067          	ret
    800055a8:	0014d493          	srli	s1,s1,0x1
    800055ac:	ffffe097          	auipc	ra,0xffffe
    800055b0:	6d4080e7          	jalr	1748(ra) # 80003c80 <mycpu>
    800055b4:	0014f493          	andi	s1,s1,1
    800055b8:	06952e23          	sw	s1,124(a0)
    800055bc:	fc5ff06f          	j	80005580 <push_off+0x34>

00000000800055c0 <pop_off>:
    800055c0:	ff010113          	addi	sp,sp,-16
    800055c4:	00813023          	sd	s0,0(sp)
    800055c8:	00113423          	sd	ra,8(sp)
    800055cc:	01010413          	addi	s0,sp,16
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	6b0080e7          	jalr	1712(ra) # 80003c80 <mycpu>
    800055d8:	100027f3          	csrr	a5,sstatus
    800055dc:	0027f793          	andi	a5,a5,2
    800055e0:	04079663          	bnez	a5,8000562c <pop_off+0x6c>
    800055e4:	07852783          	lw	a5,120(a0)
    800055e8:	02f05a63          	blez	a5,8000561c <pop_off+0x5c>
    800055ec:	fff7871b          	addiw	a4,a5,-1
    800055f0:	06e52c23          	sw	a4,120(a0)
    800055f4:	00071c63          	bnez	a4,8000560c <pop_off+0x4c>
    800055f8:	07c52783          	lw	a5,124(a0)
    800055fc:	00078863          	beqz	a5,8000560c <pop_off+0x4c>
    80005600:	100027f3          	csrr	a5,sstatus
    80005604:	0027e793          	ori	a5,a5,2
    80005608:	10079073          	csrw	sstatus,a5
    8000560c:	00813083          	ld	ra,8(sp)
    80005610:	00013403          	ld	s0,0(sp)
    80005614:	01010113          	addi	sp,sp,16
    80005618:	00008067          	ret
    8000561c:	00001517          	auipc	a0,0x1
    80005620:	d5c50513          	addi	a0,a0,-676 # 80006378 <digits+0x48>
    80005624:	fffff097          	auipc	ra,0xfffff
    80005628:	018080e7          	jalr	24(ra) # 8000463c <panic>
    8000562c:	00001517          	auipc	a0,0x1
    80005630:	d3450513          	addi	a0,a0,-716 # 80006360 <digits+0x30>
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	008080e7          	jalr	8(ra) # 8000463c <panic>

000000008000563c <push_on>:
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00813823          	sd	s0,16(sp)
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	02010413          	addi	s0,sp,32
    80005650:	100024f3          	csrr	s1,sstatus
    80005654:	100027f3          	csrr	a5,sstatus
    80005658:	0027e793          	ori	a5,a5,2
    8000565c:	10079073          	csrw	sstatus,a5
    80005660:	ffffe097          	auipc	ra,0xffffe
    80005664:	620080e7          	jalr	1568(ra) # 80003c80 <mycpu>
    80005668:	07852783          	lw	a5,120(a0)
    8000566c:	02078663          	beqz	a5,80005698 <push_on+0x5c>
    80005670:	ffffe097          	auipc	ra,0xffffe
    80005674:	610080e7          	jalr	1552(ra) # 80003c80 <mycpu>
    80005678:	07852783          	lw	a5,120(a0)
    8000567c:	01813083          	ld	ra,24(sp)
    80005680:	01013403          	ld	s0,16(sp)
    80005684:	0017879b          	addiw	a5,a5,1
    80005688:	06f52c23          	sw	a5,120(a0)
    8000568c:	00813483          	ld	s1,8(sp)
    80005690:	02010113          	addi	sp,sp,32
    80005694:	00008067          	ret
    80005698:	0014d493          	srli	s1,s1,0x1
    8000569c:	ffffe097          	auipc	ra,0xffffe
    800056a0:	5e4080e7          	jalr	1508(ra) # 80003c80 <mycpu>
    800056a4:	0014f493          	andi	s1,s1,1
    800056a8:	06952e23          	sw	s1,124(a0)
    800056ac:	fc5ff06f          	j	80005670 <push_on+0x34>

00000000800056b0 <pop_on>:
    800056b0:	ff010113          	addi	sp,sp,-16
    800056b4:	00813023          	sd	s0,0(sp)
    800056b8:	00113423          	sd	ra,8(sp)
    800056bc:	01010413          	addi	s0,sp,16
    800056c0:	ffffe097          	auipc	ra,0xffffe
    800056c4:	5c0080e7          	jalr	1472(ra) # 80003c80 <mycpu>
    800056c8:	100027f3          	csrr	a5,sstatus
    800056cc:	0027f793          	andi	a5,a5,2
    800056d0:	04078463          	beqz	a5,80005718 <pop_on+0x68>
    800056d4:	07852783          	lw	a5,120(a0)
    800056d8:	02f05863          	blez	a5,80005708 <pop_on+0x58>
    800056dc:	fff7879b          	addiw	a5,a5,-1
    800056e0:	06f52c23          	sw	a5,120(a0)
    800056e4:	07853783          	ld	a5,120(a0)
    800056e8:	00079863          	bnez	a5,800056f8 <pop_on+0x48>
    800056ec:	100027f3          	csrr	a5,sstatus
    800056f0:	ffd7f793          	andi	a5,a5,-3
    800056f4:	10079073          	csrw	sstatus,a5
    800056f8:	00813083          	ld	ra,8(sp)
    800056fc:	00013403          	ld	s0,0(sp)
    80005700:	01010113          	addi	sp,sp,16
    80005704:	00008067          	ret
    80005708:	00001517          	auipc	a0,0x1
    8000570c:	c9850513          	addi	a0,a0,-872 # 800063a0 <digits+0x70>
    80005710:	fffff097          	auipc	ra,0xfffff
    80005714:	f2c080e7          	jalr	-212(ra) # 8000463c <panic>
    80005718:	00001517          	auipc	a0,0x1
    8000571c:	c6850513          	addi	a0,a0,-920 # 80006380 <digits+0x50>
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	f1c080e7          	jalr	-228(ra) # 8000463c <panic>

0000000080005728 <__memset>:
    80005728:	ff010113          	addi	sp,sp,-16
    8000572c:	00813423          	sd	s0,8(sp)
    80005730:	01010413          	addi	s0,sp,16
    80005734:	1a060e63          	beqz	a2,800058f0 <__memset+0x1c8>
    80005738:	40a007b3          	neg	a5,a0
    8000573c:	0077f793          	andi	a5,a5,7
    80005740:	00778693          	addi	a3,a5,7
    80005744:	00b00813          	li	a6,11
    80005748:	0ff5f593          	andi	a1,a1,255
    8000574c:	fff6071b          	addiw	a4,a2,-1
    80005750:	1b06e663          	bltu	a3,a6,800058fc <__memset+0x1d4>
    80005754:	1cd76463          	bltu	a4,a3,8000591c <__memset+0x1f4>
    80005758:	1a078e63          	beqz	a5,80005914 <__memset+0x1ec>
    8000575c:	00b50023          	sb	a1,0(a0)
    80005760:	00100713          	li	a4,1
    80005764:	1ae78463          	beq	a5,a4,8000590c <__memset+0x1e4>
    80005768:	00b500a3          	sb	a1,1(a0)
    8000576c:	00200713          	li	a4,2
    80005770:	1ae78a63          	beq	a5,a4,80005924 <__memset+0x1fc>
    80005774:	00b50123          	sb	a1,2(a0)
    80005778:	00300713          	li	a4,3
    8000577c:	18e78463          	beq	a5,a4,80005904 <__memset+0x1dc>
    80005780:	00b501a3          	sb	a1,3(a0)
    80005784:	00400713          	li	a4,4
    80005788:	1ae78263          	beq	a5,a4,8000592c <__memset+0x204>
    8000578c:	00b50223          	sb	a1,4(a0)
    80005790:	00500713          	li	a4,5
    80005794:	1ae78063          	beq	a5,a4,80005934 <__memset+0x20c>
    80005798:	00b502a3          	sb	a1,5(a0)
    8000579c:	00700713          	li	a4,7
    800057a0:	18e79e63          	bne	a5,a4,8000593c <__memset+0x214>
    800057a4:	00b50323          	sb	a1,6(a0)
    800057a8:	00700e93          	li	t4,7
    800057ac:	00859713          	slli	a4,a1,0x8
    800057b0:	00e5e733          	or	a4,a1,a4
    800057b4:	01059e13          	slli	t3,a1,0x10
    800057b8:	01c76e33          	or	t3,a4,t3
    800057bc:	01859313          	slli	t1,a1,0x18
    800057c0:	006e6333          	or	t1,t3,t1
    800057c4:	02059893          	slli	a7,a1,0x20
    800057c8:	40f60e3b          	subw	t3,a2,a5
    800057cc:	011368b3          	or	a7,t1,a7
    800057d0:	02859813          	slli	a6,a1,0x28
    800057d4:	0108e833          	or	a6,a7,a6
    800057d8:	03059693          	slli	a3,a1,0x30
    800057dc:	003e589b          	srliw	a7,t3,0x3
    800057e0:	00d866b3          	or	a3,a6,a3
    800057e4:	03859713          	slli	a4,a1,0x38
    800057e8:	00389813          	slli	a6,a7,0x3
    800057ec:	00f507b3          	add	a5,a0,a5
    800057f0:	00e6e733          	or	a4,a3,a4
    800057f4:	000e089b          	sext.w	a7,t3
    800057f8:	00f806b3          	add	a3,a6,a5
    800057fc:	00e7b023          	sd	a4,0(a5)
    80005800:	00878793          	addi	a5,a5,8
    80005804:	fed79ce3          	bne	a5,a3,800057fc <__memset+0xd4>
    80005808:	ff8e7793          	andi	a5,t3,-8
    8000580c:	0007871b          	sext.w	a4,a5
    80005810:	01d787bb          	addw	a5,a5,t4
    80005814:	0ce88e63          	beq	a7,a4,800058f0 <__memset+0x1c8>
    80005818:	00f50733          	add	a4,a0,a5
    8000581c:	00b70023          	sb	a1,0(a4)
    80005820:	0017871b          	addiw	a4,a5,1
    80005824:	0cc77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005828:	00e50733          	add	a4,a0,a4
    8000582c:	00b70023          	sb	a1,0(a4)
    80005830:	0027871b          	addiw	a4,a5,2
    80005834:	0ac77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005838:	00e50733          	add	a4,a0,a4
    8000583c:	00b70023          	sb	a1,0(a4)
    80005840:	0037871b          	addiw	a4,a5,3
    80005844:	0ac77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0047871b          	addiw	a4,a5,4
    80005854:	08c77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0057871b          	addiw	a4,a5,5
    80005864:	08c77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0067871b          	addiw	a4,a5,6
    80005874:	06c77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0077871b          	addiw	a4,a5,7
    80005884:	06c77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0087871b          	addiw	a4,a5,8
    80005894:	04c77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0097871b          	addiw	a4,a5,9
    800058a4:	04c77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	00a7871b          	addiw	a4,a5,10
    800058b4:	02c77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	00b7871b          	addiw	a4,a5,11
    800058c4:	02c77663          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	00c7871b          	addiw	a4,a5,12
    800058d4:	00c77e63          	bgeu	a4,a2,800058f0 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	00d7879b          	addiw	a5,a5,13
    800058e4:	00c7f663          	bgeu	a5,a2,800058f0 <__memset+0x1c8>
    800058e8:	00f507b3          	add	a5,a0,a5
    800058ec:	00b78023          	sb	a1,0(a5)
    800058f0:	00813403          	ld	s0,8(sp)
    800058f4:	01010113          	addi	sp,sp,16
    800058f8:	00008067          	ret
    800058fc:	00b00693          	li	a3,11
    80005900:	e55ff06f          	j	80005754 <__memset+0x2c>
    80005904:	00300e93          	li	t4,3
    80005908:	ea5ff06f          	j	800057ac <__memset+0x84>
    8000590c:	00100e93          	li	t4,1
    80005910:	e9dff06f          	j	800057ac <__memset+0x84>
    80005914:	00000e93          	li	t4,0
    80005918:	e95ff06f          	j	800057ac <__memset+0x84>
    8000591c:	00000793          	li	a5,0
    80005920:	ef9ff06f          	j	80005818 <__memset+0xf0>
    80005924:	00200e93          	li	t4,2
    80005928:	e85ff06f          	j	800057ac <__memset+0x84>
    8000592c:	00400e93          	li	t4,4
    80005930:	e7dff06f          	j	800057ac <__memset+0x84>
    80005934:	00500e93          	li	t4,5
    80005938:	e75ff06f          	j	800057ac <__memset+0x84>
    8000593c:	00600e93          	li	t4,6
    80005940:	e6dff06f          	j	800057ac <__memset+0x84>

0000000080005944 <__memmove>:
    80005944:	ff010113          	addi	sp,sp,-16
    80005948:	00813423          	sd	s0,8(sp)
    8000594c:	01010413          	addi	s0,sp,16
    80005950:	0e060863          	beqz	a2,80005a40 <__memmove+0xfc>
    80005954:	fff6069b          	addiw	a3,a2,-1
    80005958:	0006881b          	sext.w	a6,a3
    8000595c:	0ea5e863          	bltu	a1,a0,80005a4c <__memmove+0x108>
    80005960:	00758713          	addi	a4,a1,7
    80005964:	00a5e7b3          	or	a5,a1,a0
    80005968:	40a70733          	sub	a4,a4,a0
    8000596c:	0077f793          	andi	a5,a5,7
    80005970:	00f73713          	sltiu	a4,a4,15
    80005974:	00174713          	xori	a4,a4,1
    80005978:	0017b793          	seqz	a5,a5
    8000597c:	00e7f7b3          	and	a5,a5,a4
    80005980:	10078863          	beqz	a5,80005a90 <__memmove+0x14c>
    80005984:	00900793          	li	a5,9
    80005988:	1107f463          	bgeu	a5,a6,80005a90 <__memmove+0x14c>
    8000598c:	0036581b          	srliw	a6,a2,0x3
    80005990:	fff8081b          	addiw	a6,a6,-1
    80005994:	02081813          	slli	a6,a6,0x20
    80005998:	01d85893          	srli	a7,a6,0x1d
    8000599c:	00858813          	addi	a6,a1,8
    800059a0:	00058793          	mv	a5,a1
    800059a4:	00050713          	mv	a4,a0
    800059a8:	01088833          	add	a6,a7,a6
    800059ac:	0007b883          	ld	a7,0(a5)
    800059b0:	00878793          	addi	a5,a5,8
    800059b4:	00870713          	addi	a4,a4,8
    800059b8:	ff173c23          	sd	a7,-8(a4)
    800059bc:	ff0798e3          	bne	a5,a6,800059ac <__memmove+0x68>
    800059c0:	ff867713          	andi	a4,a2,-8
    800059c4:	02071793          	slli	a5,a4,0x20
    800059c8:	0207d793          	srli	a5,a5,0x20
    800059cc:	00f585b3          	add	a1,a1,a5
    800059d0:	40e686bb          	subw	a3,a3,a4
    800059d4:	00f507b3          	add	a5,a0,a5
    800059d8:	06e60463          	beq	a2,a4,80005a40 <__memmove+0xfc>
    800059dc:	0005c703          	lbu	a4,0(a1)
    800059e0:	00e78023          	sb	a4,0(a5)
    800059e4:	04068e63          	beqz	a3,80005a40 <__memmove+0xfc>
    800059e8:	0015c603          	lbu	a2,1(a1)
    800059ec:	00100713          	li	a4,1
    800059f0:	00c780a3          	sb	a2,1(a5)
    800059f4:	04e68663          	beq	a3,a4,80005a40 <__memmove+0xfc>
    800059f8:	0025c603          	lbu	a2,2(a1)
    800059fc:	00200713          	li	a4,2
    80005a00:	00c78123          	sb	a2,2(a5)
    80005a04:	02e68e63          	beq	a3,a4,80005a40 <__memmove+0xfc>
    80005a08:	0035c603          	lbu	a2,3(a1)
    80005a0c:	00300713          	li	a4,3
    80005a10:	00c781a3          	sb	a2,3(a5)
    80005a14:	02e68663          	beq	a3,a4,80005a40 <__memmove+0xfc>
    80005a18:	0045c603          	lbu	a2,4(a1)
    80005a1c:	00400713          	li	a4,4
    80005a20:	00c78223          	sb	a2,4(a5)
    80005a24:	00e68e63          	beq	a3,a4,80005a40 <__memmove+0xfc>
    80005a28:	0055c603          	lbu	a2,5(a1)
    80005a2c:	00500713          	li	a4,5
    80005a30:	00c782a3          	sb	a2,5(a5)
    80005a34:	00e68663          	beq	a3,a4,80005a40 <__memmove+0xfc>
    80005a38:	0065c703          	lbu	a4,6(a1)
    80005a3c:	00e78323          	sb	a4,6(a5)
    80005a40:	00813403          	ld	s0,8(sp)
    80005a44:	01010113          	addi	sp,sp,16
    80005a48:	00008067          	ret
    80005a4c:	02061713          	slli	a4,a2,0x20
    80005a50:	02075713          	srli	a4,a4,0x20
    80005a54:	00e587b3          	add	a5,a1,a4
    80005a58:	f0f574e3          	bgeu	a0,a5,80005960 <__memmove+0x1c>
    80005a5c:	02069613          	slli	a2,a3,0x20
    80005a60:	02065613          	srli	a2,a2,0x20
    80005a64:	fff64613          	not	a2,a2
    80005a68:	00e50733          	add	a4,a0,a4
    80005a6c:	00c78633          	add	a2,a5,a2
    80005a70:	fff7c683          	lbu	a3,-1(a5)
    80005a74:	fff78793          	addi	a5,a5,-1
    80005a78:	fff70713          	addi	a4,a4,-1
    80005a7c:	00d70023          	sb	a3,0(a4)
    80005a80:	fec798e3          	bne	a5,a2,80005a70 <__memmove+0x12c>
    80005a84:	00813403          	ld	s0,8(sp)
    80005a88:	01010113          	addi	sp,sp,16
    80005a8c:	00008067          	ret
    80005a90:	02069713          	slli	a4,a3,0x20
    80005a94:	02075713          	srli	a4,a4,0x20
    80005a98:	00170713          	addi	a4,a4,1
    80005a9c:	00e50733          	add	a4,a0,a4
    80005aa0:	00050793          	mv	a5,a0
    80005aa4:	0005c683          	lbu	a3,0(a1)
    80005aa8:	00178793          	addi	a5,a5,1
    80005aac:	00158593          	addi	a1,a1,1
    80005ab0:	fed78fa3          	sb	a3,-1(a5)
    80005ab4:	fee798e3          	bne	a5,a4,80005aa4 <__memmove+0x160>
    80005ab8:	f89ff06f          	j	80005a40 <__memmove+0xfc>

0000000080005abc <__putc>:
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00813823          	sd	s0,16(sp)
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	02010413          	addi	s0,sp,32
    80005acc:	00050793          	mv	a5,a0
    80005ad0:	fef40593          	addi	a1,s0,-17
    80005ad4:	00100613          	li	a2,1
    80005ad8:	00000513          	li	a0,0
    80005adc:	fef407a3          	sb	a5,-17(s0)
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	b3c080e7          	jalr	-1220(ra) # 8000461c <console_write>
    80005ae8:	01813083          	ld	ra,24(sp)
    80005aec:	01013403          	ld	s0,16(sp)
    80005af0:	02010113          	addi	sp,sp,32
    80005af4:	00008067          	ret

0000000080005af8 <__getc>:
    80005af8:	fe010113          	addi	sp,sp,-32
    80005afc:	00813823          	sd	s0,16(sp)
    80005b00:	00113c23          	sd	ra,24(sp)
    80005b04:	02010413          	addi	s0,sp,32
    80005b08:	fe840593          	addi	a1,s0,-24
    80005b0c:	00100613          	li	a2,1
    80005b10:	00000513          	li	a0,0
    80005b14:	fffff097          	auipc	ra,0xfffff
    80005b18:	ae8080e7          	jalr	-1304(ra) # 800045fc <console_read>
    80005b1c:	fe844503          	lbu	a0,-24(s0)
    80005b20:	01813083          	ld	ra,24(sp)
    80005b24:	01013403          	ld	s0,16(sp)
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret

0000000080005b30 <console_handler>:
    80005b30:	fe010113          	addi	sp,sp,-32
    80005b34:	00813823          	sd	s0,16(sp)
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	00913423          	sd	s1,8(sp)
    80005b40:	02010413          	addi	s0,sp,32
    80005b44:	14202773          	csrr	a4,scause
    80005b48:	100027f3          	csrr	a5,sstatus
    80005b4c:	0027f793          	andi	a5,a5,2
    80005b50:	06079e63          	bnez	a5,80005bcc <console_handler+0x9c>
    80005b54:	00074c63          	bltz	a4,80005b6c <console_handler+0x3c>
    80005b58:	01813083          	ld	ra,24(sp)
    80005b5c:	01013403          	ld	s0,16(sp)
    80005b60:	00813483          	ld	s1,8(sp)
    80005b64:	02010113          	addi	sp,sp,32
    80005b68:	00008067          	ret
    80005b6c:	0ff77713          	andi	a4,a4,255
    80005b70:	00900793          	li	a5,9
    80005b74:	fef712e3          	bne	a4,a5,80005b58 <console_handler+0x28>
    80005b78:	ffffe097          	auipc	ra,0xffffe
    80005b7c:	6dc080e7          	jalr	1756(ra) # 80004254 <plic_claim>
    80005b80:	00a00793          	li	a5,10
    80005b84:	00050493          	mv	s1,a0
    80005b88:	02f50c63          	beq	a0,a5,80005bc0 <console_handler+0x90>
    80005b8c:	fc0506e3          	beqz	a0,80005b58 <console_handler+0x28>
    80005b90:	00050593          	mv	a1,a0
    80005b94:	00000517          	auipc	a0,0x0
    80005b98:	71450513          	addi	a0,a0,1812 # 800062a8 <_ZZN5Riscv12printIntegerEmE6digits+0xe0>
    80005b9c:	fffff097          	auipc	ra,0xfffff
    80005ba0:	afc080e7          	jalr	-1284(ra) # 80004698 <__printf>
    80005ba4:	01013403          	ld	s0,16(sp)
    80005ba8:	01813083          	ld	ra,24(sp)
    80005bac:	00048513          	mv	a0,s1
    80005bb0:	00813483          	ld	s1,8(sp)
    80005bb4:	02010113          	addi	sp,sp,32
    80005bb8:	ffffe317          	auipc	t1,0xffffe
    80005bbc:	6d430067          	jr	1748(t1) # 8000428c <plic_complete>
    80005bc0:	fffff097          	auipc	ra,0xfffff
    80005bc4:	3e0080e7          	jalr	992(ra) # 80004fa0 <uartintr>
    80005bc8:	fddff06f          	j	80005ba4 <console_handler+0x74>
    80005bcc:	00000517          	auipc	a0,0x0
    80005bd0:	7dc50513          	addi	a0,a0,2012 # 800063a8 <digits+0x78>
    80005bd4:	fffff097          	auipc	ra,0xfffff
    80005bd8:	a68080e7          	jalr	-1432(ra) # 8000463c <panic>
	...
