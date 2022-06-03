
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	71013103          	ld	sp,1808(sp) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	089050ef          	jal	ra,800058a4 <start>

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
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	26d020ef          	jal	ra,80003af4 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001264:	03f50513          	addi	a0,a0,63
    80001268:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001270:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001274:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001278:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001298:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000129c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012a0:	00050513          	mv	a0,a0

    return result;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012b4:	fd010113          	addi	sp,sp,-48
    800012b8:	02113423          	sd	ra,40(sp)
    800012bc:	02813023          	sd	s0,32(sp)
    800012c0:	00913c23          	sd	s1,24(sp)
    800012c4:	01213823          	sd	s2,16(sp)
    800012c8:	01313423          	sd	s3,8(sp)
    800012cc:	03010413          	addi	s0,sp,48
    800012d0:	00050493          	mv	s1,a0
    800012d4:	00058913          	mv	s2,a1
    800012d8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012dc:	00001537          	lui	a0,0x1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	f78080e7          	jalr	-136(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012e8:	04050263          	beqz	a0,8000132c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012ec:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012f0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012f4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012f8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012fc:	01100793          	li	a5,17
    80001300:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001304:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001308:	00050513          	mv	a0,a0

    return result;
    8000130c:	0005051b          	sext.w	a0,a0
}
    80001310:	02813083          	ld	ra,40(sp)
    80001314:	02013403          	ld	s0,32(sp)
    80001318:	01813483          	ld	s1,24(sp)
    8000131c:	01013903          	ld	s2,16(sp)
    80001320:	00813983          	ld	s3,8(sp)
    80001324:	03010113          	addi	sp,sp,48
    80001328:	00008067          	ret
        return -1;
    8000132c:	fff00513          	li	a0,-1
    80001330:	fe1ff06f          	j	80001310 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001334 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001340:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
}
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z11thread_exitv>:

int thread_exit()
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001360:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001368:	00050513          	mv	a0,a0
    return result;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001388:	02059593          	slli	a1,a1,0x20
    8000138c:	0205d593          	srli	a1,a1,0x20
    80001390:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001398:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000139c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013a0:	00050513          	mv	a0,a0
    return result;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013c4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013cc:	00050513          	mv	a0,a0
    return result;
}
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013f0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013f8:	00050513          	mv	a0,a0
    return result;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000141c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001420:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001424:	00050513          	mv	a0,a0
    return result;
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001444:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001448:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001450:	00050513          	mv	a0,a0
    return result;
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001470:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001474:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001478:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000147c:	00050513          	mv	a0,a0
    return result;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001490:	fd010113          	addi	sp,sp,-48
    80001494:	02113423          	sd	ra,40(sp)
    80001498:	02813023          	sd	s0,32(sp)
    8000149c:	00913c23          	sd	s1,24(sp)
    800014a0:	01213823          	sd	s2,16(sp)
    800014a4:	01313423          	sd	s3,8(sp)
    800014a8:	03010413          	addi	s0,sp,48
    800014ac:	00050493          	mv	s1,a0
    800014b0:	00058913          	mv	s2,a1
    800014b4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014b8:	00001537          	lui	a0,0x1
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d9c080e7          	jalr	-612(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014c4:	04050263          	beqz	a0,80001508 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014c8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014d0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014d4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014d8:	01400793          	li	a5,20
    800014dc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014e0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014e4:	00050513          	mv	a0,a0
    return result;
    800014e8:	0005051b          	sext.w	a0,a0
}
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
        return -1;
    80001508:	fff00513          	li	a0,-1
    8000150c:	fe1ff06f          	j	800014ec <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001510 <_Z4getcv>:

char getc()
{
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000151c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001520:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001524:	00050513          	mv	a0,a0
    return (char)result;
}
    80001528:	0ff57513          	andi	a0,a0,255
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z4putcc>:

void putc(char c)
{
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001548:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001568:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001570:	00050513          	mv	a0,a0
    return (char)result;
}
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001590:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80001594:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001598:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000159c:	00050513          	mv	a0,a0
    return (char)result;
}
    800015a0:	0ff57513          	andi	a0,a0,255
    800015a4:	00813403          	ld	s0,8(sp)
    800015a8:	01010113          	addi	sp,sp,16
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
    for(int i = 0 ; i < 10;i++)
    800015c4:	00000493          	li	s1,0
    800015c8:	00900793          	li	a5,9
    800015cc:	0497c063          	blt	a5,s1,8000160c <_ZN12TestPeriodic18periodicActivationEv+0x5c>
    {
        printString("i : ");
    800015d0:	00007517          	auipc	a0,0x7
    800015d4:	a5050513          	addi	a0,a0,-1456 # 80008020 <CONSOLE_STATUS+0x10>
    800015d8:	00003097          	auipc	ra,0x3
    800015dc:	154080e7          	jalr	340(ra) # 8000472c <_Z11printStringPKc>
        printInt(i);
    800015e0:	00000613          	li	a2,0
    800015e4:	00a00593          	li	a1,10
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00003097          	auipc	ra,0x3
    800015f0:	2d8080e7          	jalr	728(ra) # 800048c4 <_Z8printIntiii>
        printString("\n");
    800015f4:	00007517          	auipc	a0,0x7
    800015f8:	afc50513          	addi	a0,a0,-1284 # 800080f0 <CONSOLE_STATUS+0xe0>
    800015fc:	00003097          	auipc	ra,0x3
    80001600:	130080e7          	jalr	304(ra) # 8000472c <_Z11printStringPKc>
    for(int i = 0 ; i < 10;i++)
    80001604:	0014849b          	addiw	s1,s1,1
    80001608:	fc1ff06f          	j	800015c8 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    8000160c:	01813083          	ld	ra,24(sp)
    80001610:	01013403          	ld	s0,16(sp)
    80001614:	00813483          	ld	s1,8(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret

0000000080001620 <_Z4idlePv>:
{
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00113423          	sd	ra,8(sp)
    80001628:	00813023          	sd	s0,0(sp)
    8000162c:	01010413          	addi	s0,sp,16
        printString("Idle\n");
    80001630:	00007517          	auipc	a0,0x7
    80001634:	9f850513          	addi	a0,a0,-1544 # 80008028 <CONSOLE_STATUS+0x18>
    80001638:	00003097          	auipc	ra,0x3
    8000163c:	0f4080e7          	jalr	244(ra) # 8000472c <_Z11printStringPKc>
        thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <_Z15thread_dispatchv>
    while(true)
    80001648:	fe9ff06f          	j	80001630 <_Z4idlePv+0x10>

000000008000164c <_Z15thread1FunctionPv>:
{
    8000164c:	fe010113          	addi	sp,sp,-32
    80001650:	00113c23          	sd	ra,24(sp)
    80001654:	00813823          	sd	s0,16(sp)
    80001658:	00913423          	sd	s1,8(sp)
    8000165c:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    80001660:	00007517          	auipc	a0,0x7
    80001664:	9d050513          	addi	a0,a0,-1584 # 80008030 <CONSOLE_STATUS+0x20>
    80001668:	00003097          	auipc	ra,0x3
    8000166c:	0c4080e7          	jalr	196(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001670:	00000493          	li	s1,0
    80001674:	0440006f          	j	800016b8 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	cbc080e7          	jalr	-836(ra) # 80001334 <_Z15thread_dispatchv>
        printString("i : ");
    80001680:	00007517          	auipc	a0,0x7
    80001684:	9a050513          	addi	a0,a0,-1632 # 80008020 <CONSOLE_STATUS+0x10>
    80001688:	00003097          	auipc	ra,0x3
    8000168c:	0a4080e7          	jalr	164(ra) # 8000472c <_Z11printStringPKc>
        printInt(i);
    80001690:	00000613          	li	a2,0
    80001694:	00a00593          	li	a1,10
    80001698:	0004851b          	sext.w	a0,s1
    8000169c:	00003097          	auipc	ra,0x3
    800016a0:	228080e7          	jalr	552(ra) # 800048c4 <_Z8printIntiii>
        printString("\n");
    800016a4:	00007517          	auipc	a0,0x7
    800016a8:	a4c50513          	addi	a0,a0,-1460 # 800080f0 <CONSOLE_STATUS+0xe0>
    800016ac:	00003097          	auipc	ra,0x3
    800016b0:	080080e7          	jalr	128(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    800016b4:	00148493          	addi	s1,s1,1
    800016b8:	000027b7          	lui	a5,0x2
    800016bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016c0:	0097ec63          	bltu	a5,s1,800016d8 <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    800016c4:	09600793          	li	a5,150
    800016c8:	02f4f7b3          	remu	a5,s1,a5
    800016cc:	fa079ae3          	bnez	a5,80001680 <_Z15thread1FunctionPv+0x34>
    800016d0:	fa0488e3          	beqz	s1,80001680 <_Z15thread1FunctionPv+0x34>
    800016d4:	fa5ff06f          	j	80001678 <_Z15thread1FunctionPv+0x2c>
}
    800016d8:	01813083          	ld	ra,24(sp)
    800016dc:	01013403          	ld	s0,16(sp)
    800016e0:	00813483          	ld	s1,8(sp)
    800016e4:	02010113          	addi	sp,sp,32
    800016e8:	00008067          	ret

00000000800016ec <_Z15thread2FunctionPv>:
{
    800016ec:	fe010113          	addi	sp,sp,-32
    800016f0:	00113c23          	sd	ra,24(sp)
    800016f4:	00813823          	sd	s0,16(sp)
    800016f8:	00913423          	sd	s1,8(sp)
    800016fc:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001700:	00007517          	auipc	a0,0x7
    80001704:	94850513          	addi	a0,a0,-1720 # 80008048 <CONSOLE_STATUS+0x38>
    80001708:	00003097          	auipc	ra,0x3
    8000170c:	024080e7          	jalr	36(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001710:	00000493          	li	s1,0
    80001714:	0440006f          	j	80001758 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	c1c080e7          	jalr	-996(ra) # 80001334 <_Z15thread_dispatchv>
        printString("j : ");
    80001720:	00007517          	auipc	a0,0x7
    80001724:	94050513          	addi	a0,a0,-1728 # 80008060 <CONSOLE_STATUS+0x50>
    80001728:	00003097          	auipc	ra,0x3
    8000172c:	004080e7          	jalr	4(ra) # 8000472c <_Z11printStringPKc>
        printInt(j);
    80001730:	00000613          	li	a2,0
    80001734:	00a00593          	li	a1,10
    80001738:	0004851b          	sext.w	a0,s1
    8000173c:	00003097          	auipc	ra,0x3
    80001740:	188080e7          	jalr	392(ra) # 800048c4 <_Z8printIntiii>
        printString("\n");
    80001744:	00007517          	auipc	a0,0x7
    80001748:	9ac50513          	addi	a0,a0,-1620 # 800080f0 <CONSOLE_STATUS+0xe0>
    8000174c:	00003097          	auipc	ra,0x3
    80001750:	fe0080e7          	jalr	-32(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001754:	00148493          	addi	s1,s1,1
    80001758:	000027b7          	lui	a5,0x2
    8000175c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001760:	0097ec63          	bltu	a5,s1,80001778 <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    80001764:	03200793          	li	a5,50
    80001768:	02f4f7b3          	remu	a5,s1,a5
    8000176c:	fa079ae3          	bnez	a5,80001720 <_Z15thread2FunctionPv+0x34>
    80001770:	fa0488e3          	beqz	s1,80001720 <_Z15thread2FunctionPv+0x34>
    80001774:	fa5ff06f          	j	80001718 <_Z15thread2FunctionPv+0x2c>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret

000000008000178c <_Z20thread2FunctionTest2Pv>:
{
    8000178c:	fe010113          	addi	sp,sp,-32
    80001790:	00113c23          	sd	ra,24(sp)
    80001794:	00813823          	sd	s0,16(sp)
    80001798:	00913423          	sd	s1,8(sp)
    8000179c:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    800017a0:	00007517          	auipc	a0,0x7
    800017a4:	8a850513          	addi	a0,a0,-1880 # 80008048 <CONSOLE_STATUS+0x38>
    800017a8:	00003097          	auipc	ra,0x3
    800017ac:	f84080e7          	jalr	-124(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800017b0:	00000493          	li	s1,0
    800017b4:	0500006f          	j	80001804 <_Z20thread2FunctionTest2Pv+0x78>
            thread_exit();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	b9c080e7          	jalr	-1124(ra) # 80001354 <_Z11thread_exitv>
    800017c0:	0580006f          	j	80001818 <_Z20thread2FunctionTest2Pv+0x8c>
            thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	b70080e7          	jalr	-1168(ra) # 80001334 <_Z15thread_dispatchv>
        printString("j : ");
    800017cc:	00007517          	auipc	a0,0x7
    800017d0:	89450513          	addi	a0,a0,-1900 # 80008060 <CONSOLE_STATUS+0x50>
    800017d4:	00003097          	auipc	ra,0x3
    800017d8:	f58080e7          	jalr	-168(ra) # 8000472c <_Z11printStringPKc>
        printInt(j);
    800017dc:	00000613          	li	a2,0
    800017e0:	00a00593          	li	a1,10
    800017e4:	0004851b          	sext.w	a0,s1
    800017e8:	00003097          	auipc	ra,0x3
    800017ec:	0dc080e7          	jalr	220(ra) # 800048c4 <_Z8printIntiii>
        printString("\n");
    800017f0:	00007517          	auipc	a0,0x7
    800017f4:	90050513          	addi	a0,a0,-1792 # 800080f0 <CONSOLE_STATUS+0xe0>
    800017f8:	00003097          	auipc	ra,0x3
    800017fc:	f34080e7          	jalr	-204(ra) # 8000472c <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001800:	00148493          	addi	s1,s1,1
    80001804:	000027b7          	lui	a5,0x2
    80001808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000180c:	0297e063          	bltu	a5,s1,8000182c <_Z20thread2FunctionTest2Pv+0xa0>
        if(j == 200)
    80001810:	0c800793          	li	a5,200
    80001814:	faf482e3          	beq	s1,a5,800017b8 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    80001818:	03200793          	li	a5,50
    8000181c:	02f4f7b3          	remu	a5,s1,a5
    80001820:	fa0796e3          	bnez	a5,800017cc <_Z20thread2FunctionTest2Pv+0x40>
    80001824:	fa0484e3          	beqz	s1,800017cc <_Z20thread2FunctionTest2Pv+0x40>
    80001828:	f9dff06f          	j	800017c4 <_Z20thread2FunctionTest2Pv+0x38>
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	02010113          	addi	sp,sp,32
    8000183c:	00008067          	ret

0000000080001840 <_Z11threadTest1v>:
{
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00813423          	sd	s0,8(sp)
    80001848:	01010413          	addi	s0,sp,16
}
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_Z11threadTest2v>:
{
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
}
    80001864:	00813403          	ld	s0,8(sp)
    80001868:	01010113          	addi	sp,sp,16
    8000186c:	00008067          	ret

0000000080001870 <_Z10mallocFreev>:
{
    80001870:	cc010113          	addi	sp,sp,-832
    80001874:	32113c23          	sd	ra,824(sp)
    80001878:	32813823          	sd	s0,816(sp)
    8000187c:	32913423          	sd	s1,808(sp)
    80001880:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    80001884:	00006517          	auipc	a0,0x6
    80001888:	7e450513          	addi	a0,a0,2020 # 80008068 <CONSOLE_STATUS+0x58>
    8000188c:	00003097          	auipc	ra,0x3
    80001890:	ea0080e7          	jalr	-352(ra) # 8000472c <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001894:	00000493          	li	s1,0
    80001898:	0080006f          	j	800018a0 <_Z10mallocFreev+0x30>
    8000189c:	0014849b          	addiw	s1,s1,1
    800018a0:	06300793          	li	a5,99
    800018a4:	0497c463          	blt	a5,s1,800018ec <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    800018a8:	06400513          	li	a0,100
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	9ac080e7          	jalr	-1620(ra) # 80001258 <_Z9mem_allocm>
    800018b4:	00349793          	slli	a5,s1,0x3
    800018b8:	fe040713          	addi	a4,s0,-32
    800018bc:	00f707b3          	add	a5,a4,a5
    800018c0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    800018c4:	fc051ce3          	bnez	a0,8000189c <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    800018c8:	00006517          	auipc	a0,0x6
    800018cc:	7b050513          	addi	a0,a0,1968 # 80008078 <CONSOLE_STATUS+0x68>
    800018d0:	00003097          	auipc	ra,0x3
    800018d4:	e5c080e7          	jalr	-420(ra) # 8000472c <_Z11printStringPKc>
}
    800018d8:	33813083          	ld	ra,824(sp)
    800018dc:	33013403          	ld	s0,816(sp)
    800018e0:	32813483          	ld	s1,808(sp)
    800018e4:	34010113          	addi	sp,sp,832
    800018e8:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800018ec:	00000493          	li	s1,0
    800018f0:	06300793          	li	a5,99
    800018f4:	0297ce63          	blt	a5,s1,80001930 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    800018f8:	00349793          	slli	a5,s1,0x3
    800018fc:	fe040713          	addi	a4,s0,-32
    80001900:	00f707b3          	add	a5,a4,a5
    80001904:	ce07b503          	ld	a0,-800(a5)
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	980080e7          	jalr	-1664(ra) # 80001288 <_Z8mem_freePv>
        if(retval != 0)
    80001910:	00051663          	bnez	a0,8000191c <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001914:	0024849b          	addiw	s1,s1,2
    80001918:	fd9ff06f          	j	800018f0 <_Z10mallocFreev+0x80>
            printString("not OK\n");
    8000191c:	00006517          	auipc	a0,0x6
    80001920:	75c50513          	addi	a0,a0,1884 # 80008078 <CONSOLE_STATUS+0x68>
    80001924:	00003097          	auipc	ra,0x3
    80001928:	e08080e7          	jalr	-504(ra) # 8000472c <_Z11printStringPKc>
            return;
    8000192c:	fadff06f          	j	800018d8 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001930:	00000493          	li	s1,0
    80001934:	0080006f          	j	8000193c <_Z10mallocFreev+0xcc>
    80001938:	0024849b          	addiw	s1,s1,2
    8000193c:	06300793          	li	a5,99
    80001940:	0297cc63          	blt	a5,s1,80001978 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001944:	01400513          	li	a0,20
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	910080e7          	jalr	-1776(ra) # 80001258 <_Z9mem_allocm>
    80001950:	00349793          	slli	a5,s1,0x3
    80001954:	fe040713          	addi	a4,s0,-32
    80001958:	00f707b3          	add	a5,a4,a5
    8000195c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001960:	fc051ce3          	bnez	a0,80001938 <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    80001964:	00006517          	auipc	a0,0x6
    80001968:	71450513          	addi	a0,a0,1812 # 80008078 <CONSOLE_STATUS+0x68>
    8000196c:	00003097          	auipc	ra,0x3
    80001970:	dc0080e7          	jalr	-576(ra) # 8000472c <_Z11printStringPKc>
            return;
    80001974:	f65ff06f          	j	800018d8 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001978:	00000493          	li	s1,0
    8000197c:	06300793          	li	a5,99
    80001980:	0297ce63          	blt	a5,s1,800019bc <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001984:	00349793          	slli	a5,s1,0x3
    80001988:	fe040713          	addi	a4,s0,-32
    8000198c:	00f707b3          	add	a5,a4,a5
    80001990:	ce07b503          	ld	a0,-800(a5)
    80001994:	00000097          	auipc	ra,0x0
    80001998:	8f4080e7          	jalr	-1804(ra) # 80001288 <_Z8mem_freePv>
        if(retval != 0)
    8000199c:	00051663          	bnez	a0,800019a8 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    800019a0:	0014849b          	addiw	s1,s1,1
    800019a4:	fd9ff06f          	j	8000197c <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    800019a8:	00006517          	auipc	a0,0x6
    800019ac:	6d050513          	addi	a0,a0,1744 # 80008078 <CONSOLE_STATUS+0x68>
    800019b0:	00003097          	auipc	ra,0x3
    800019b4:	d7c080e7          	jalr	-644(ra) # 8000472c <_Z11printStringPKc>
            return;
    800019b8:	f21ff06f          	j	800018d8 <_Z10mallocFreev+0x68>
    printString("OK\n");
    800019bc:	00006517          	auipc	a0,0x6
    800019c0:	6c450513          	addi	a0,a0,1732 # 80008080 <CONSOLE_STATUS+0x70>
    800019c4:	00003097          	auipc	ra,0x3
    800019c8:	d68080e7          	jalr	-664(ra) # 8000472c <_Z11printStringPKc>
    800019cc:	f0dff06f          	j	800018d8 <_Z10mallocFreev+0x68>

00000000800019d0 <_Z9bigMallocv>:
{
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00113423          	sd	ra,8(sp)
    800019d8:	00813023          	sd	s0,0(sp)
    800019dc:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    800019e0:	00006517          	auipc	a0,0x6
    800019e4:	6a850513          	addi	a0,a0,1704 # 80008088 <CONSOLE_STATUS+0x78>
    800019e8:	00003097          	auipc	ra,0x3
    800019ec:	d44080e7          	jalr	-700(ra) # 8000472c <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019f0:	00009797          	auipc	a5,0x9
    800019f4:	d587b783          	ld	a5,-680(a5) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019f8:	0007b503          	ld	a0,0(a5)
    800019fc:	00009797          	auipc	a5,0x9
    80001a00:	cec7b783          	ld	a5,-788(a5) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a04:	0007b783          	ld	a5,0(a5)
    80001a08:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001a0c:	06450513          	addi	a0,a0,100
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	848080e7          	jalr	-1976(ra) # 80001258 <_Z9mem_allocm>
    if(p == 0)
    80001a18:	02050263          	beqz	a0,80001a3c <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    80001a1c:	00006517          	auipc	a0,0x6
    80001a20:	65c50513          	addi	a0,a0,1628 # 80008078 <CONSOLE_STATUS+0x68>
    80001a24:	00003097          	auipc	ra,0x3
    80001a28:	d08080e7          	jalr	-760(ra) # 8000472c <_Z11printStringPKc>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret
        printString("OK\n");
    80001a3c:	00006517          	auipc	a0,0x6
    80001a40:	64450513          	addi	a0,a0,1604 # 80008080 <CONSOLE_STATUS+0x70>
    80001a44:	00003097          	auipc	ra,0x3
    80001a48:	ce8080e7          	jalr	-792(ra) # 8000472c <_Z11printStringPKc>
    80001a4c:	fe1ff06f          	j	80001a2c <_Z9bigMallocv+0x5c>

0000000080001a50 <_Z17lotOfSmallMallocsv>:
{
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	01213023          	sd	s2,0(sp)
    80001a64:	02010413          	addi	s0,sp,32
    for(int i=0;;i++){
    80001a68:	00000913          	li	s2,0
    80001a6c:	09c0006f          	j	80001b08 <_Z17lotOfSmallMallocsv+0xb8>
            printString("alloc\n");
    80001a70:	00006517          	auipc	a0,0x6
    80001a74:	62850513          	addi	a0,a0,1576 # 80008098 <CONSOLE_STATUS+0x88>
    80001a78:	00003097          	auipc	ra,0x3
    80001a7c:	cb4080e7          	jalr	-844(ra) # 8000472c <_Z11printStringPKc>
            printInt(i);
    80001a80:	00000613          	li	a2,0
    80001a84:	00a00593          	li	a1,10
    80001a88:	00090513          	mv	a0,s2
    80001a8c:	00003097          	auipc	ra,0x3
    80001a90:	e38080e7          	jalr	-456(ra) # 800048c4 <_Z8printIntiii>
    printString("OK\n");
    80001a94:	00006517          	auipc	a0,0x6
    80001a98:	5ec50513          	addi	a0,a0,1516 # 80008080 <CONSOLE_STATUS+0x70>
    80001a9c:	00003097          	auipc	ra,0x3
    80001aa0:	c90080e7          	jalr	-880(ra) # 8000472c <_Z11printStringPKc>
}
    80001aa4:	01813083          	ld	ra,24(sp)
    80001aa8:	01013403          	ld	s0,16(sp)
    80001aac:	00813483          	ld	s1,8(sp)
    80001ab0:	00013903          	ld	s2,0(sp)
    80001ab4:	02010113          	addi	sp,sp,32
    80001ab8:	00008067          	ret
            printString("free\n");
    80001abc:	00006517          	auipc	a0,0x6
    80001ac0:	5e450513          	addi	a0,a0,1508 # 800080a0 <CONSOLE_STATUS+0x90>
    80001ac4:	00003097          	auipc	ra,0x3
    80001ac8:	c68080e7          	jalr	-920(ra) # 8000472c <_Z11printStringPKc>
            printInt(i);
    80001acc:	00000613          	li	a2,0
    80001ad0:	00a00593          	li	a1,10
    80001ad4:	00090513          	mv	a0,s2
    80001ad8:	00003097          	auipc	ra,0x3
    80001adc:	dec080e7          	jalr	-532(ra) # 800048c4 <_Z8printIntiii>
            break;
    80001ae0:	fb5ff06f          	j	80001a94 <_Z17lotOfSmallMallocsv+0x44>
            printInt(i);
    80001ae4:	00000613          	li	a2,0
    80001ae8:	00a00593          	li	a1,10
    80001aec:	00090513          	mv	a0,s2
    80001af0:	00003097          	auipc	ra,0x3
    80001af4:	dd4080e7          	jalr	-556(ra) # 800048c4 <_Z8printIntiii>
            putc('\n');
    80001af8:	00a00513          	li	a0,10
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	a3c080e7          	jalr	-1476(ra) # 80001538 <_Z4putcc>
    for(int i=0;;i++){
    80001b04:	0019091b          	addiw	s2,s2,1
        void *x = mem_alloc(1);
    80001b08:	00100513          	li	a0,1
    80001b0c:	fffff097          	auipc	ra,0xfffff
    80001b10:	74c080e7          	jalr	1868(ra) # 80001258 <_Z9mem_allocm>
    80001b14:	00050493          	mv	s1,a0
        void *y = mem_alloc(1);
    80001b18:	00100513          	li	a0,1
    80001b1c:	fffff097          	auipc	ra,0xfffff
    80001b20:	73c080e7          	jalr	1852(ra) # 80001258 <_Z9mem_allocm>
        if(x == nullptr){
    80001b24:	f40486e3          	beqz	s1,80001a70 <_Z17lotOfSmallMallocsv+0x20>
        int status = mem_free(x);
    80001b28:	00048513          	mv	a0,s1
    80001b2c:	fffff097          	auipc	ra,0xfffff
    80001b30:	75c080e7          	jalr	1884(ra) # 80001288 <_Z8mem_freePv>
        if(status == -1){
    80001b34:	fff00793          	li	a5,-1
    80001b38:	f8f502e3          	beq	a0,a5,80001abc <_Z17lotOfSmallMallocsv+0x6c>
        if(i%10000==0){
    80001b3c:	000027b7          	lui	a5,0x2
    80001b40:	7107879b          	addiw	a5,a5,1808
    80001b44:	02f967bb          	remw	a5,s2,a5
    80001b48:	fa079ee3          	bnez	a5,80001b04 <_Z17lotOfSmallMallocsv+0xb4>
    80001b4c:	f99ff06f          	j	80001ae4 <_Z17lotOfSmallMallocsv+0x94>

0000000080001b50 <_Z7badFreev>:
{
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001b60:	00006517          	auipc	a0,0x6
    80001b64:	54850513          	addi	a0,a0,1352 # 800080a8 <CONSOLE_STATUS+0x98>
    80001b68:	00003097          	auipc	ra,0x3
    80001b6c:	bc4080e7          	jalr	-1084(ra) # 8000472c <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b70:	00800513          	li	a0,8
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	6e4080e7          	jalr	1764(ra) # 80001258 <_Z9mem_allocm>
    uint64 retval = mem_free((char*)t + 2);
    80001b7c:	00250513          	addi	a0,a0,2
    80001b80:	fffff097          	auipc	ra,0xfffff
    80001b84:	708080e7          	jalr	1800(ra) # 80001288 <_Z8mem_freePv>
    if(retval == 0)
    80001b88:	02051263          	bnez	a0,80001bac <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001b8c:	00006517          	auipc	a0,0x6
    80001b90:	4ec50513          	addi	a0,a0,1260 # 80008078 <CONSOLE_STATUS+0x68>
    80001b94:	00003097          	auipc	ra,0x3
    80001b98:	b98080e7          	jalr	-1128(ra) # 8000472c <_Z11printStringPKc>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret
         printString("OK\n");
    80001bac:	00006517          	auipc	a0,0x6
    80001bb0:	4d450513          	addi	a0,a0,1236 # 80008080 <CONSOLE_STATUS+0x70>
    80001bb4:	00003097          	auipc	ra,0x3
    80001bb8:	b78080e7          	jalr	-1160(ra) # 8000472c <_Z11printStringPKc>
}
    80001bbc:	fe1ff06f          	j	80001b9c <_Z7badFreev+0x4c>

0000000080001bc0 <_Z13stressTestingv>:
{
    80001bc0:	cc010113          	addi	sp,sp,-832
    80001bc4:	32113c23          	sd	ra,824(sp)
    80001bc8:	32813823          	sd	s0,816(sp)
    80001bcc:	32913423          	sd	s1,808(sp)
    80001bd0:	33213023          	sd	s2,800(sp)
    80001bd4:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001bd8:	00006517          	auipc	a0,0x6
    80001bdc:	4e050513          	addi	a0,a0,1248 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001be0:	00003097          	auipc	ra,0x3
    80001be4:	b4c080e7          	jalr	-1204(ra) # 8000472c <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001be8:	00000493          	li	s1,0
    80001bec:	0080006f          	j	80001bf4 <_Z13stressTestingv+0x34>
    80001bf0:	0014849b          	addiw	s1,s1,1
    80001bf4:	06300793          	li	a5,99
    80001bf8:	0497c663          	blt	a5,s1,80001c44 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001bfc:	00100513          	li	a0,1
    80001c00:	fffff097          	auipc	ra,0xfffff
    80001c04:	658080e7          	jalr	1624(ra) # 80001258 <_Z9mem_allocm>
    80001c08:	00349793          	slli	a5,s1,0x3
    80001c0c:	fe040713          	addi	a4,s0,-32
    80001c10:	00f707b3          	add	a5,a4,a5
    80001c14:	cea7b023          	sd	a0,-800(a5) # 1ce0 <_entry-0x7fffe320>
        if(addrs[i] == 0)
    80001c18:	fc051ce3          	bnez	a0,80001bf0 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001c1c:	00006517          	auipc	a0,0x6
    80001c20:	45c50513          	addi	a0,a0,1116 # 80008078 <CONSOLE_STATUS+0x68>
    80001c24:	00003097          	auipc	ra,0x3
    80001c28:	b08080e7          	jalr	-1272(ra) # 8000472c <_Z11printStringPKc>
}
    80001c2c:	33813083          	ld	ra,824(sp)
    80001c30:	33013403          	ld	s0,816(sp)
    80001c34:	32813483          	ld	s1,808(sp)
    80001c38:	32013903          	ld	s2,800(sp)
    80001c3c:	34010113          	addi	sp,sp,832
    80001c40:	00008067          	ret
    int sz = 300;
    80001c44:	12c00913          	li	s2,300
    while(sz > 0)
    80001c48:	11205263          	blez	s2,80001d4c <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001c4c:	00000493          	li	s1,0
    80001c50:	06300793          	li	a5,99
    80001c54:	0697cc63          	blt	a5,s1,80001ccc <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001c58:	00349793          	slli	a5,s1,0x3
    80001c5c:	fe040713          	addi	a4,s0,-32
    80001c60:	00f707b3          	add	a5,a4,a5
    80001c64:	ce07b503          	ld	a0,-800(a5)
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	620080e7          	jalr	1568(ra) # 80001288 <_Z8mem_freePv>
            if(retval != 0)
    80001c70:	02051a63          	bnez	a0,80001ca4 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001c74:	01f9551b          	srliw	a0,s2,0x1f
    80001c78:	0125053b          	addw	a0,a0,s2
    80001c7c:	4015551b          	sraiw	a0,a0,0x1
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	5d8080e7          	jalr	1496(ra) # 80001258 <_Z9mem_allocm>
    80001c88:	00349793          	slli	a5,s1,0x3
    80001c8c:	fe040713          	addi	a4,s0,-32
    80001c90:	00f707b3          	add	a5,a4,a5
    80001c94:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001c98:	02050063          	beqz	a0,80001cb8 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001c9c:	0024849b          	addiw	s1,s1,2
    80001ca0:	fb1ff06f          	j	80001c50 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001ca4:	00006517          	auipc	a0,0x6
    80001ca8:	3d450513          	addi	a0,a0,980 # 80008078 <CONSOLE_STATUS+0x68>
    80001cac:	00003097          	auipc	ra,0x3
    80001cb0:	a80080e7          	jalr	-1408(ra) # 8000472c <_Z11printStringPKc>
                return;
    80001cb4:	f79ff06f          	j	80001c2c <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cb8:	00006517          	auipc	a0,0x6
    80001cbc:	41050513          	addi	a0,a0,1040 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001cc0:	00003097          	auipc	ra,0x3
    80001cc4:	a6c080e7          	jalr	-1428(ra) # 8000472c <_Z11printStringPKc>
                return;
    80001cc8:	f65ff06f          	j	80001c2c <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001ccc:	00100493          	li	s1,1
    80001cd0:	06300793          	li	a5,99
    80001cd4:	0697c863          	blt	a5,s1,80001d44 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001cd8:	00349793          	slli	a5,s1,0x3
    80001cdc:	fe040713          	addi	a4,s0,-32
    80001ce0:	00f707b3          	add	a5,a4,a5
    80001ce4:	ce07b503          	ld	a0,-800(a5)
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	5a0080e7          	jalr	1440(ra) # 80001288 <_Z8mem_freePv>
            if(retval != 0)
    80001cf0:	02051663          	bnez	a0,80001d1c <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001cf4:	00090513          	mv	a0,s2
    80001cf8:	fffff097          	auipc	ra,0xfffff
    80001cfc:	560080e7          	jalr	1376(ra) # 80001258 <_Z9mem_allocm>
    80001d00:	00349793          	slli	a5,s1,0x3
    80001d04:	fe040713          	addi	a4,s0,-32
    80001d08:	00f707b3          	add	a5,a4,a5
    80001d0c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001d10:	02050063          	beqz	a0,80001d30 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001d14:	0024849b          	addiw	s1,s1,2
    80001d18:	fb9ff06f          	j	80001cd0 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001d1c:	00006517          	auipc	a0,0x6
    80001d20:	35c50513          	addi	a0,a0,860 # 80008078 <CONSOLE_STATUS+0x68>
    80001d24:	00003097          	auipc	ra,0x3
    80001d28:	a08080e7          	jalr	-1528(ra) # 8000472c <_Z11printStringPKc>
                return;
    80001d2c:	f01ff06f          	j	80001c2c <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001d30:	00006517          	auipc	a0,0x6
    80001d34:	39850513          	addi	a0,a0,920 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001d38:	00003097          	auipc	ra,0x3
    80001d3c:	9f4080e7          	jalr	-1548(ra) # 8000472c <_Z11printStringPKc>
                return;
    80001d40:	eedff06f          	j	80001c2c <_Z13stressTestingv+0x6c>
        sz-=10;
    80001d44:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001d48:	f01ff06f          	j	80001c48 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001d4c:	00006517          	auipc	a0,0x6
    80001d50:	33450513          	addi	a0,a0,820 # 80008080 <CONSOLE_STATUS+0x70>
    80001d54:	00003097          	auipc	ra,0x3
    80001d58:	9d8080e7          	jalr	-1576(ra) # 8000472c <_Z11printStringPKc>
    80001d5c:	ed1ff06f          	j	80001c2c <_Z13stressTestingv+0x6c>

0000000080001d60 <_Z21memoryAllocationTestsv>:
{
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00813423          	sd	s0,8(sp)
    80001d68:	01010413          	addi	s0,sp,16
}
    80001d6c:	00813403          	ld	s0,8(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_Z14semaphoreTestsv>:
{
    80001d78:	ff010113          	addi	sp,sp,-16
    80001d7c:	00813423          	sd	s0,8(sp)
    80001d80:	01010413          	addi	s0,sp,16
}
    80001d84:	00813403          	ld	s0,8(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001d90:	fe010113          	addi	sp,sp,-32
    80001d94:	00113c23          	sd	ra,24(sp)
    80001d98:	00813823          	sd	s0,16(sp)
    80001d9c:	00913423          	sd	s1,8(sp)
    80001da0:	02010413          	addi	s0,sp,32
    80001da4:	00050493          	mv	s1,a0
    80001da8:	00002097          	auipc	ra,0x2
    80001dac:	a14080e7          	jalr	-1516(ra) # 800037bc <_ZN14PeriodicThreadC1Em>
    80001db0:	00009797          	auipc	a5,0x9
    80001db4:	82078793          	addi	a5,a5,-2016 # 8000a5d0 <_ZTV12TestPeriodic+0x10>
    80001db8:	00f4b023          	sd	a5,0(s1)
}
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret

0000000080001dd0 <_Z11threadTest3v>:
{
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	01213023          	sd	s2,0(sp)
    80001de4:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001de8:	01000513          	li	a0,16
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	6a8080e7          	jalr	1704(ra) # 80003494 <_Znwm>
    80001df4:	00050913          	mv	s2,a0
    80001df8:	03200593          	li	a1,50
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	f94080e7          	jalr	-108(ra) # 80001d90 <_ZN12TestPeriodicC1Em>
    t->start();
    80001e04:	00090513          	mv	a0,s2
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	75c080e7          	jalr	1884(ra) # 80003564 <_ZN6Thread5startEv>
        thread_dispatch();
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	524080e7          	jalr	1316(ra) # 80001334 <_Z15thread_dispatchv>
    while(true)
    80001e18:	ff9ff06f          	j	80001e10 <_Z11threadTest3v+0x40>
    80001e1c:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001e20:	00090513          	mv	a0,s2
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	698080e7          	jalr	1688(ra) # 800034bc <_ZdlPv>
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	0000e097          	auipc	ra,0xe
    80001e34:	b28080e7          	jalr	-1240(ra) # 8000f958 <_Unwind_Resume>

0000000080001e38 <_Z11threadTestsv>:
{
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
    threadTest3();
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	f88080e7          	jalr	-120(ra) # 80001dd0 <_Z11threadTest3v>

0000000080001e50 <_Z7myTestsv>:
{
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    threadTests();
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	fd8080e7          	jalr	-40(ra) # 80001e38 <_Z11threadTestsv>

0000000080001e68 <_Z10mallocTestv>:

void mallocTest()
{
    80001e68:	fc010113          	addi	sp,sp,-64
    80001e6c:	02113c23          	sd	ra,56(sp)
    80001e70:	02813823          	sd	s0,48(sp)
    80001e74:	02913423          	sd	s1,40(sp)
    80001e78:	03213023          	sd	s2,32(sp)
    80001e7c:	01313c23          	sd	s3,24(sp)
    80001e80:	01413823          	sd	s4,16(sp)
    80001e84:	01513423          	sd	s5,8(sp)
    80001e88:	01613023          	sd	s6,0(sp)
    80001e8c:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    80001e90:	00006517          	auipc	a0,0x6
    80001e94:	24050513          	addi	a0,a0,576 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001e98:	00003097          	auipc	ra,0x3
    80001e9c:	894080e7          	jalr	-1900(ra) # 8000472c <_Z11printStringPKc>

    object* o = new object;
    80001ea0:	02c00513          	li	a0,44
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	5f0080e7          	jalr	1520(ra) # 80003494 <_Znwm>
    80001eac:	00050493          	mv	s1,a0
    o->a = 3;
    80001eb0:	00300793          	li	a5,3
    80001eb4:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80001eb8:	00a00513          	li	a0,10
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	39c080e7          	jalr	924(ra) # 80001258 <_Z9mem_allocm>
    80001ec4:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80001ec8:	06400513          	li	a0,100
    80001ecc:	fffff097          	auipc	ra,0xfffff
    80001ed0:	38c080e7          	jalr	908(ra) # 80001258 <_Z9mem_allocm>
    80001ed4:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80001ed8:	3e800513          	li	a0,1000
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	37c080e7          	jalr	892(ra) # 80001258 <_Z9mem_allocm>
    80001ee4:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80001ee8:	00002537          	lui	a0,0x2
    80001eec:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	368080e7          	jalr	872(ra) # 80001258 <_Z9mem_allocm>
    80001ef8:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80001efc:	00100513          	li	a0,1
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	358080e7          	jalr	856(ra) # 80001258 <_Z9mem_allocm>

    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80001f08:	06090c63          	beqz	s2,80001f80 <_Z10mallocTestv+0x118>
    80001f0c:	00050b13          	mv	s6,a0
    80001f10:	06098863          	beqz	s3,80001f80 <_Z10mallocTestv+0x118>
    80001f14:	060a0663          	beqz	s4,80001f80 <_Z10mallocTestv+0x118>
    80001f18:	060a8463          	beqz	s5,80001f80 <_Z10mallocTestv+0x118>
    80001f1c:	06050263          	beqz	a0,80001f80 <_Z10mallocTestv+0x118>
        printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    80001f20:	00090513          	mv	a0,s2
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	598080e7          	jalr	1432(ra) # 800034bc <_ZdlPv>
    delete (uint64*)m3;
    80001f2c:	000a0513          	mv	a0,s4
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	58c080e7          	jalr	1420(ra) # 800034bc <_ZdlPv>
    delete (uint64*)m4;
    80001f38:	000a8513          	mv	a0,s5
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	580080e7          	jalr	1408(ra) # 800034bc <_ZdlPv>
    delete (uint64*)m2;
    80001f44:	00098513          	mv	a0,s3
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	574080e7          	jalr	1396(ra) # 800034bc <_ZdlPv>
    delete (uint64*)m5;
    80001f50:	000b0513          	mv	a0,s6
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	568080e7          	jalr	1384(ra) # 800034bc <_ZdlPv>
    delete o;
    80001f5c:	00048863          	beqz	s1,80001f6c <_Z10mallocTestv+0x104>
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	558080e7          	jalr	1368(ra) # 800034bc <_ZdlPv>

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80001f6c:	00006517          	auipc	a0,0x6
    80001f70:	18c50513          	addi	a0,a0,396 # 800080f8 <CONSOLE_STATUS+0xe8>
    80001f74:	00002097          	auipc	ra,0x2
    80001f78:	7b8080e7          	jalr	1976(ra) # 8000472c <_Z11printStringPKc>
    80001f7c:	0140006f          	j	80001f90 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001f80:	00006517          	auipc	a0,0x6
    80001f84:	0f850513          	addi	a0,a0,248 # 80008078 <CONSOLE_STATUS+0x68>
    80001f88:	00002097          	auipc	ra,0x2
    80001f8c:	7a4080e7          	jalr	1956(ra) # 8000472c <_Z11printStringPKc>
}
    80001f90:	03813083          	ld	ra,56(sp)
    80001f94:	03013403          	ld	s0,48(sp)
    80001f98:	02813483          	ld	s1,40(sp)
    80001f9c:	02013903          	ld	s2,32(sp)
    80001fa0:	01813983          	ld	s3,24(sp)
    80001fa4:	01013a03          	ld	s4,16(sp)
    80001fa8:	00813a83          	ld	s5,8(sp)
    80001fac:	00013b03          	ld	s6,0(sp)
    80001fb0:	04010113          	addi	sp,sp,64
    80001fb4:	00008067          	ret

0000000080001fb8 <_Z16mallocEverythingv>:

void mallocEverything()
{
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    printString("SUCCESSFUL: Testing allocating whole address space\n\n");*/
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_Z17mallocGapFillTestv>:

void mallocGapFillTest()
{
    80001fd0:	f6010113          	addi	sp,sp,-160
    80001fd4:	08113c23          	sd	ra,152(sp)
    80001fd8:	08813823          	sd	s0,144(sp)
    80001fdc:	08913423          	sd	s1,136(sp)
    80001fe0:	09213023          	sd	s2,128(sp)
    80001fe4:	07313c23          	sd	s3,120(sp)
    80001fe8:	07413823          	sd	s4,112(sp)
    80001fec:	07513423          	sd	s5,104(sp)
    80001ff0:	07613023          	sd	s6,96(sp)
    80001ff4:	05713c23          	sd	s7,88(sp)
    80001ff8:	05813823          	sd	s8,80(sp)
    80001ffc:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002000:	00006517          	auipc	a0,0x6
    80002004:	12850513          	addi	a0,a0,296 # 80008128 <CONSOLE_STATUS+0x118>
    80002008:	00002097          	auipc	ra,0x2
    8000200c:	724080e7          	jalr	1828(ra) # 8000472c <_Z11printStringPKc>

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    80002010:	00000493          	li	s1,0
    80002014:	00900793          	li	a5,9
    80002018:	0697c863          	blt	a5,s1,80002088 <_Z17mallocGapFillTestv+0xb8>
    {
        m[i] = mem_alloc((i<<6)+1);
    8000201c:	0064951b          	slliw	a0,s1,0x6
    80002020:	0015051b          	addiw	a0,a0,1
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	234080e7          	jalr	564(ra) # 80001258 <_Z9mem_allocm>
    8000202c:	00349793          	slli	a5,s1,0x3
    80002030:	fb040713          	addi	a4,s0,-80
    80002034:	00f707b3          	add	a5,a4,a5
    80002038:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    8000203c:	00050663          	beqz	a0,80002048 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80002040:	0014849b          	addiw	s1,s1,1
    80002044:	fd1ff06f          	j	80002014 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80002048:	00006517          	auipc	a0,0x6
    8000204c:	03050513          	addi	a0,a0,48 # 80008078 <CONSOLE_STATUS+0x68>
    80002050:	00002097          	auipc	ra,0x2
    80002054:	6dc080e7          	jalr	1756(ra) # 8000472c <_Z11printStringPKc>
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
}
    80002058:	09813083          	ld	ra,152(sp)
    8000205c:	09013403          	ld	s0,144(sp)
    80002060:	08813483          	ld	s1,136(sp)
    80002064:	08013903          	ld	s2,128(sp)
    80002068:	07813983          	ld	s3,120(sp)
    8000206c:	07013a03          	ld	s4,112(sp)
    80002070:	06813a83          	ld	s5,104(sp)
    80002074:	06013b03          	ld	s6,96(sp)
    80002078:	05813b83          	ld	s7,88(sp)
    8000207c:	05013c03          	ld	s8,80(sp)
    80002080:	0a010113          	addi	sp,sp,160
    80002084:	00008067          	ret
    delete (uint64*)m[2];
    80002088:	f7043503          	ld	a0,-144(s0)
    8000208c:	00050663          	beqz	a0,80002098 <_Z17mallocGapFillTestv+0xc8>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	42c080e7          	jalr	1068(ra) # 800034bc <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002098:	00100513          	li	a0,1
    8000209c:	fffff097          	auipc	ra,0xfffff
    800020a0:	1bc080e7          	jalr	444(ra) # 80001258 <_Z9mem_allocm>
    800020a4:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800020a8:	00100513          	li	a0,1
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	1ac080e7          	jalr	428(ra) # 80001258 <_Z9mem_allocm>
    800020b4:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800020b8:	00100513          	li	a0,1
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	19c080e7          	jalr	412(ra) # 80001258 <_Z9mem_allocm>
    800020c4:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800020c8:	08048863          	beqz	s1,80002158 <_Z17mallocGapFillTestv+0x188>
    800020cc:	08090663          	beqz	s2,80002158 <_Z17mallocGapFillTestv+0x188>
    800020d0:	08050463          	beqz	a0,80002158 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800020d4:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800020d8:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    800020dc:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    800020e0:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    800020e4:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    800020e8:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    800020ec:	0897f063          	bgeu	a5,s1,8000216c <_Z17mallocGapFillTestv+0x19c>
    800020f0:	06a4fe63          	bgeu	s1,a0,8000216c <_Z17mallocGapFillTestv+0x19c>
    800020f4:	0727fc63          	bgeu	a5,s2,8000216c <_Z17mallocGapFillTestv+0x19c>
    800020f8:	06a97a63          	bgeu	s2,a0,8000216c <_Z17mallocGapFillTestv+0x19c>
    800020fc:	07367863          	bgeu	a2,s3,8000216c <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002100:	00050663          	beqz	a0,8000210c <_Z17mallocGapFillTestv+0x13c>
    80002104:	00001097          	auipc	ra,0x1
    80002108:	3b8080e7          	jalr	952(ra) # 800034bc <_ZdlPv>
    delete (uint64*)m[4];
    8000210c:	f8043503          	ld	a0,-128(s0)
    80002110:	00050663          	beqz	a0,8000211c <_Z17mallocGapFillTestv+0x14c>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	3a8080e7          	jalr	936(ra) # 800034bc <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    8000211c:	28000513          	li	a0,640
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	138080e7          	jalr	312(ra) # 80001258 <_Z9mem_allocm>
    80002128:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    8000212c:	24000513          	li	a0,576
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	128080e7          	jalr	296(ra) # 80001258 <_Z9mem_allocm>
    80002138:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    8000213c:	040c0263          	beqz	s8,80002180 <_Z17mallocGapFillTestv+0x1b0>
    80002140:	04050063          	beqz	a0,80002180 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002144:	04aa7863          	bgeu	s4,a0,80002194 <_Z17mallocGapFillTestv+0x1c4>
    80002148:	04ab7663          	bgeu	s6,a0,80002194 <_Z17mallocGapFillTestv+0x1c4>
    8000214c:	055c7463          	bgeu	s8,s5,80002194 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002150:	00000a13          	li	s4,0
    80002154:	0580006f          	j	800021ac <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    80002158:	00006517          	auipc	a0,0x6
    8000215c:	f2050513          	addi	a0,a0,-224 # 80008078 <CONSOLE_STATUS+0x68>
    80002160:	00002097          	auipc	ra,0x2
    80002164:	5cc080e7          	jalr	1484(ra) # 8000472c <_Z11printStringPKc>
        return;
    80002168:	ef1ff06f          	j	80002058 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    8000216c:	00006517          	auipc	a0,0x6
    80002170:	f0c50513          	addi	a0,a0,-244 # 80008078 <CONSOLE_STATUS+0x68>
    80002174:	00002097          	auipc	ra,0x2
    80002178:	5b8080e7          	jalr	1464(ra) # 8000472c <_Z11printStringPKc>
        return;
    8000217c:	eddff06f          	j	80002058 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002180:	00006517          	auipc	a0,0x6
    80002184:	ef850513          	addi	a0,a0,-264 # 80008078 <CONSOLE_STATUS+0x68>
    80002188:	00002097          	auipc	ra,0x2
    8000218c:	5a4080e7          	jalr	1444(ra) # 8000472c <_Z11printStringPKc>
        return;
    80002190:	ec9ff06f          	j	80002058 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002194:	00006517          	auipc	a0,0x6
    80002198:	ee450513          	addi	a0,a0,-284 # 80008078 <CONSOLE_STATUS+0x68>
    8000219c:	00002097          	auipc	ra,0x2
    800021a0:	590080e7          	jalr	1424(ra) # 8000472c <_Z11printStringPKc>
        return;
    800021a4:	eb5ff06f          	j	80002058 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800021a8:	001a0a1b          	addiw	s4,s4,1
    800021ac:	00900793          	li	a5,9
    800021b0:	0347c263          	blt	a5,s4,800021d4 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800021b4:	003a1793          	slli	a5,s4,0x3
    800021b8:	fb040713          	addi	a4,s0,-80
    800021bc:	00f707b3          	add	a5,a4,a5
    800021c0:	fb07b503          	ld	a0,-80(a5)
    800021c4:	fe0502e3          	beqz	a0,800021a8 <_Z17mallocGapFillTestv+0x1d8>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	2f4080e7          	jalr	756(ra) # 800034bc <_ZdlPv>
    800021d0:	fd9ff06f          	j	800021a8 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800021d4:	00048513          	mv	a0,s1
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	2e4080e7          	jalr	740(ra) # 800034bc <_ZdlPv>
    delete (uint64*)tmp2;
    800021e0:	00090513          	mv	a0,s2
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	2d8080e7          	jalr	728(ra) # 800034bc <_ZdlPv>
    delete (uint64*)tmp3;
    800021ec:	00098513          	mv	a0,s3
    800021f0:	00001097          	auipc	ra,0x1
    800021f4:	2cc080e7          	jalr	716(ra) # 800034bc <_ZdlPv>
    delete (uint64*)tmp4;
    800021f8:	000c0513          	mv	a0,s8
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	2c0080e7          	jalr	704(ra) # 800034bc <_ZdlPv>
    delete (uint64*)tmp5;
    80002204:	000b8513          	mv	a0,s7
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	2b4080e7          	jalr	692(ra) # 800034bc <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002210:	00006517          	auipc	a0,0x6
    80002214:	f6050513          	addi	a0,a0,-160 # 80008170 <CONSOLE_STATUS+0x160>
    80002218:	00002097          	auipc	ra,0x2
    8000221c:	514080e7          	jalr	1300(ra) # 8000472c <_Z11printStringPKc>
    80002220:	e39ff06f          	j	80002058 <_Z17mallocGapFillTestv+0x88>

0000000080002224 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    80002224:	00008717          	auipc	a4,0x8
    80002228:	57c72703          	lw	a4,1404(a4) # 8000a7a0 <head>
    8000222c:	00a00793          	li	a5,10
    80002230:	06f70c63          	beq	a4,a5,800022a8 <_Z9consumerAPv+0x84>
{
    80002234:	fe010113          	addi	sp,sp,-32
    80002238:	00113c23          	sd	ra,24(sp)
    8000223c:	00813823          	sd	s0,16(sp)
    80002240:	00913423          	sd	s1,8(sp)
    80002244:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    80002248:	00008497          	auipc	s1,0x8
    8000224c:	55848493          	addi	s1,s1,1368 # 8000a7a0 <head>
    80002250:	0084b503          	ld	a0,8(s1)
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	18c080e7          	jalr	396(ra) # 800013e0 <_Z8sem_waitP4_sem>
        putc(buffer[head++]);
    8000225c:	0004a783          	lw	a5,0(s1)
    80002260:	0017871b          	addiw	a4,a5,1
    80002264:	00e4a023          	sw	a4,0(s1)
    80002268:	00f487b3          	add	a5,s1,a5
    8000226c:	0107c503          	lbu	a0,16(a5)
    80002270:	fffff097          	auipc	ra,0xfffff
    80002274:	2c8080e7          	jalr	712(ra) # 80001538 <_Z4putcc>
        sem_signal(spaceAvailable);
    80002278:	0204b503          	ld	a0,32(s1)
    8000227c:	fffff097          	auipc	ra,0xfffff
    80002280:	190080e7          	jalr	400(ra) # 8000140c <_Z10sem_signalP4_sem>
    while(head!=10)
    80002284:	00008717          	auipc	a4,0x8
    80002288:	51c72703          	lw	a4,1308(a4) # 8000a7a0 <head>
    8000228c:	00a00793          	li	a5,10
    80002290:	faf71ce3          	bne	a4,a5,80002248 <_Z9consumerAPv+0x24>
    }
}
    80002294:	01813083          	ld	ra,24(sp)
    80002298:	01013403          	ld	s0,16(sp)
    8000229c:	00813483          	ld	s1,8(sp)
    800022a0:	02010113          	addi	sp,sp,32
    800022a4:	00008067          	ret
    800022a8:	00008067          	ret

00000000800022ac <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    800022ac:	00008717          	auipc	a4,0x8
    800022b0:	51c72703          	lw	a4,1308(a4) # 8000a7c8 <tail>
    800022b4:	00a00793          	li	a5,10
    800022b8:	08f70063          	beq	a4,a5,80002338 <_Z9producerAPv+0x8c>
{
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	00813823          	sd	s0,16(sp)
    800022c8:	00913423          	sd	s1,8(sp)
    800022cc:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    800022d0:	00008497          	auipc	s1,0x8
    800022d4:	4d048493          	addi	s1,s1,1232 # 8000a7a0 <head>
    800022d8:	0204b503          	ld	a0,32(s1)
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	104080e7          	jalr	260(ra) # 800013e0 <_Z8sem_waitP4_sem>
        buffer[tail] = string[tail];
    800022e4:	0284a783          	lw	a5,40(s1)
    800022e8:	00008717          	auipc	a4,0x8
    800022ec:	29870713          	addi	a4,a4,664 # 8000a580 <string>
    800022f0:	00f70733          	add	a4,a4,a5
    800022f4:	00074683          	lbu	a3,0(a4)
    800022f8:	00f48733          	add	a4,s1,a5
    800022fc:	00d70823          	sb	a3,16(a4)
        tail++;
    80002300:	0017879b          	addiw	a5,a5,1
    80002304:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    80002308:	0084b503          	ld	a0,8(s1)
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	100080e7          	jalr	256(ra) # 8000140c <_Z10sem_signalP4_sem>
    while(tail!=10)
    80002314:	00008717          	auipc	a4,0x8
    80002318:	4b472703          	lw	a4,1204(a4) # 8000a7c8 <tail>
    8000231c:	00a00793          	li	a5,10
    80002320:	faf718e3          	bne	a4,a5,800022d0 <_Z9producerAPv+0x24>
    }
}
    80002324:	01813083          	ld	ra,24(sp)
    80002328:	01013403          	ld	s0,16(sp)
    8000232c:	00813483          	ld	s1,8(sp)
    80002330:	02010113          	addi	sp,sp,32
    80002334:	00008067          	ret
    80002338:	00008067          	ret

000000008000233c <_Z8semTest1v>:

void semTest1()
{
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16

    thread_create(&threadB, consumerA, nullptr);

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();*/
}
    80002348:	00813403          	ld	s0,8(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_Z12consoleTest1v>:

void consoleTest1()
{
    80002354:	fe010113          	addi	sp,sp,-32
    80002358:	00113c23          	sd	ra,24(sp)
    8000235c:	00813823          	sd	s0,16(sp)
    80002360:	00913423          	sd	s1,8(sp)
    80002364:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002368:	00000493          	li	s1,0
    8000236c:	06300793          	li	a5,99
    80002370:	0097ca63          	blt	a5,s1,80002384 <_Z12consoleTest1v+0x30>
    {
        getc();
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	19c080e7          	jalr	412(ra) # 80001510 <_Z4getcv>
    for(int i = 0; i < 100;i++)
    8000237c:	0014849b          	addiw	s1,s1,1
    80002380:	fedff06f          	j	8000236c <_Z12consoleTest1v+0x18>
    }
}
    80002384:	01813083          	ld	ra,24(sp)
    80002388:	01013403          	ld	s0,16(sp)
    8000238c:	00813483          	ld	s1,8(sp)
    80002390:	02010113          	addi	sp,sp,32
    80002394:	00008067          	ret

0000000080002398 <_Z12consoleTestsv>:

void consoleTests()
{
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    consoleTest1();
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	fac080e7          	jalr	-84(ra) # 80002354 <_Z12consoleTest1v>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    800023cc:	10002573          	csrr	a0,sstatus
}
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_Z15changeModeTestsv>:

void changeModeTests()
{
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    changeModeTest1();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	fd4080e7          	jalr	-44(ra) # 800023c0 <_Z15changeModeTest1v>
}
    800023f4:	00813083          	ld	ra,8(sp)
    800023f8:	00013403          	ld	s0,0(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00813423          	sd	s0,8(sp)
    8000240c:	01010413          	addi	s0,sp,16
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00813423          	sd	s0,8(sp)
    80002424:	01010413          	addi	s0,sp,16
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	00008797          	auipc	a5,0x8
    80002448:	15c78793          	addi	a5,a5,348 # 8000a5a0 <_ZTV14PeriodicThread+0x10>
    8000244c:	00f53023          	sd	a5,0(a0)
    80002450:	00001097          	auipc	ra,0x1
    80002454:	fc4080e7          	jalr	-60(ra) # 80003414 <_ZN6ThreadD1Ev>
    80002458:	00813083          	ld	ra,8(sp)
    8000245c:	00013403          	ld	s0,0(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret

0000000080002468 <_ZN14PeriodicThreadD0Ev>:
    80002468:	fe010113          	addi	sp,sp,-32
    8000246c:	00113c23          	sd	ra,24(sp)
    80002470:	00813823          	sd	s0,16(sp)
    80002474:	00913423          	sd	s1,8(sp)
    80002478:	02010413          	addi	s0,sp,32
    8000247c:	00050493          	mv	s1,a0
    80002480:	00008797          	auipc	a5,0x8
    80002484:	12078793          	addi	a5,a5,288 # 8000a5a0 <_ZTV14PeriodicThread+0x10>
    80002488:	00f53023          	sd	a5,0(a0)
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	f88080e7          	jalr	-120(ra) # 80003414 <_ZN6ThreadD1Ev>
    80002494:	00048513          	mv	a0,s1
    80002498:	00001097          	auipc	ra,0x1
    8000249c:	024080e7          	jalr	36(ra) # 800034bc <_ZdlPv>
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	01013403          	ld	s0,16(sp)
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret

00000000800024b4 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    800024c4:	00008797          	auipc	a5,0x8
    800024c8:	0dc78793          	addi	a5,a5,220 # 8000a5a0 <_ZTV14PeriodicThread+0x10>
    800024cc:	00f53023          	sd	a5,0(a0)
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	f44080e7          	jalr	-188(ra) # 80003414 <_ZN6ThreadD1Ev>
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_ZN12TestPeriodicD0Ev>:
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00113c23          	sd	ra,24(sp)
    800024f0:	00813823          	sd	s0,16(sp)
    800024f4:	00913423          	sd	s1,8(sp)
    800024f8:	02010413          	addi	s0,sp,32
    800024fc:	00050493          	mv	s1,a0
    80002500:	00008797          	auipc	a5,0x8
    80002504:	0a078793          	addi	a5,a5,160 # 8000a5a0 <_ZTV14PeriodicThread+0x10>
    80002508:	00f53023          	sd	a5,0(a0)
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	f08080e7          	jalr	-248(ra) # 80003414 <_ZN6ThreadD1Ev>
    80002514:	00048513          	mv	a0,s1
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	fa4080e7          	jalr	-92(ra) # 800034bc <_ZdlPv>
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00813483          	ld	s1,8(sp)
    8000252c:	02010113          	addi	sp,sp,32
    80002530:	00008067          	ret

0000000080002534 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	040080e7          	jalr	64(ra) # 80001584 <_Z17thread_delete_pcbP7_thread>
    8000254c:	00813083          	ld	ra,8(sp)
    80002550:	00013403          	ld	s0,0(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	00813023          	sd	s0,0(sp)
    80002568:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    8000256c:	00001097          	auipc	ra,0x1
    80002570:	3f8080e7          	jalr	1016(ra) # 80003964 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002574:	00008797          	auipc	a5,0x8
    80002578:	25c7b783          	ld	a5,604(a5) # 8000a7d0 <_ZN3PCB7runningE>
    8000257c:	0287b703          	ld	a4,40(a5)
    80002580:	0307b503          	ld	a0,48(a5)
    80002584:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	dcc080e7          	jalr	-564(ra) # 80001354 <_Z11thread_exitv>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    })
    800025ac:	00050023          	sb	zero,0(a0)
    800025b0:	00e53c23          	sd	a4,24(a0)
    800025b4:	02053023          	sd	zero,32(a0)
    800025b8:	02b53423          	sd	a1,40(a0)
    800025bc:	02c53823          	sd	a2,48(a0)
    800025c0:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800025c4:	000017b7          	lui	a5,0x1
    800025c8:	00f686b3          	add	a3,a3,a5
    })
    800025cc:	04d53423          	sd	a3,72(a0)
    800025d0:	00000797          	auipc	a5,0x0
    800025d4:	f8c78793          	addi	a5,a5,-116 # 8000255c <_ZN3PCB6runnerEv>
    800025d8:	04f53823          	sd	a5,80(a0)
    800025dc:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800025e0:	00053423          	sd	zero,8(a0)
}
    800025e4:	00813403          	ld	s0,8(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_ZN3PCB5sleepEm>:
{
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00813423          	sd	s0,8(sp)
    800025f8:	01010413          	addi	s0,sp,16
}
    800025fc:	00813403          	ld	s0,8(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZN3PCB5startEv>:
{
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00113423          	sd	ra,8(sp)
    80002610:	00813023          	sd	s0,0(sp)
    80002614:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002618:	00001097          	auipc	ra,0x1
    8000261c:	ca8080e7          	jalr	-856(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
}
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00013403          	ld	s0,0(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002630:	fe010113          	addi	sp,sp,-32
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00913423          	sd	s1,8(sp)
    80002640:	01213023          	sd	s2,0(sp)
    80002644:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    80002648:	00008497          	auipc	s1,0x8
    8000264c:	1884b483          	ld	s1,392(s1) # 8000a7d0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002650:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002654:	00100793          	li	a5,1
    80002658:	04f70a63          	beq	a4,a5,800026ac <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	cb8080e7          	jalr	-840(ra) # 80003314 <_ZN9Scheduler3getEv>
    80002664:	00008917          	auipc	s2,0x8
    80002668:	16c90913          	addi	s2,s2,364 # 8000a7d0 <_ZN3PCB7runningE>
    8000266c:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002670:	00100793          	li	a5,1
    80002674:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	43c080e7          	jalr	1084(ra) # 80003ab4 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002680:	00093583          	ld	a1,0(s2)
    80002684:	04858593          	addi	a1,a1,72
    80002688:	04848513          	addi	a0,s1,72
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	bac080e7          	jalr	-1108(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	00013903          	ld	s2,0(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
        Scheduler::put(old);
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	c10080e7          	jalr	-1008(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
    800026b8:	fa5ff06f          	j	8000265c <_ZN3PCB8dispatchEv+0x2c>

00000000800026bc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800026cc:	00002097          	auipc	ra,0x2
    800026d0:	b80080e7          	jalr	-1152(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800026f4:	00002097          	auipc	ra,0x2
    800026f8:	bbc080e7          	jalr	-1092(ra) # 800042b0 <_ZN15MemoryAllocator5kfreeEPv>
}
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000271c:	03853503          	ld	a0,56(a0)
    80002720:	00002097          	auipc	ra,0x2
    80002724:	b90080e7          	jalr	-1136(ra) # 800042b0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002738:	fd010113          	addi	sp,sp,-48
    8000273c:	02113423          	sd	ra,40(sp)
    80002740:	02813023          	sd	s0,32(sp)
    80002744:	00913c23          	sd	s1,24(sp)
    80002748:	01213823          	sd	s2,16(sp)
    8000274c:	01313423          	sd	s3,8(sp)
    80002750:	01413023          	sd	s4,0(sp)
    80002754:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002758:	06000513          	li	a0,96
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	f60080e7          	jalr	-160(ra) # 800026bc <_ZN3PCBnwEm>
    80002764:	00050493          	mv	s1,a0
    80002768:	00000713          	li	a4,0
    8000276c:	00000693          	li	a3,0
    80002770:	00000613          	li	a2,0
    80002774:	00000593          	li	a1,0
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	e28080e7          	jalr	-472(ra) # 800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002780:	00100793          	li	a5,1
    80002784:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002788:	00008917          	auipc	s2,0x8
    8000278c:	04890913          	addi	s2,s2,72 # 8000a7d0 <_ZN3PCB7runningE>
    80002790:	00993023          	sd	s1,0(s2)
    80002794:	00100a13          	li	s4,1
    80002798:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    8000279c:	00001537          	lui	a0,0x1
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	aac080e7          	jalr	-1364(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
    800027a8:	00050993          	mv	s3,a0
    800027ac:	06000513          	li	a0,96
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	f0c080e7          	jalr	-244(ra) # 800026bc <_ZN3PCBnwEm>
    800027b8:	00050493          	mv	s1,a0
    800027bc:	00200713          	li	a4,2
    800027c0:	00098693          	mv	a3,s3
    800027c4:	00000613          	li	a2,0
    800027c8:	00008597          	auipc	a1,0x8
    800027cc:	f585b583          	ld	a1,-168(a1) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x50>
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	dd0080e7          	jalr	-560(ra) # 800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    800027d8:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    800027dc:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    800027e0:	00893503          	ld	a0,8(s2)
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	e24080e7          	jalr	-476(ra) # 80002608 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800027ec:	00001537          	lui	a0,0x1
    800027f0:	00002097          	auipc	ra,0x2
    800027f4:	a5c080e7          	jalr	-1444(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
    800027f8:	00050993          	mv	s3,a0
    800027fc:	06000513          	li	a0,96
    80002800:	00000097          	auipc	ra,0x0
    80002804:	ebc080e7          	jalr	-324(ra) # 800026bc <_ZN3PCBnwEm>
    80002808:	00050493          	mv	s1,a0
    8000280c:	00200713          	li	a4,2
    80002810:	00098693          	mv	a3,s3
    80002814:	00000613          	li	a2,0
    80002818:	00008597          	auipc	a1,0x8
    8000281c:	f385b583          	ld	a1,-200(a1) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x80>
    80002820:	00000097          	auipc	ra,0x0
    80002824:	d80080e7          	jalr	-640(ra) # 800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002828:	00993823          	sd	s1,16(s2)
    //PCB::userPCB = new PCB(&Riscv::myTestsWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    PCB::userPCB->start();
    8000282c:	00048513          	mv	a0,s1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	dd8080e7          	jalr	-552(ra) # 80002608 <_ZN3PCB5startEv>
}
    80002838:	02813083          	ld	ra,40(sp)
    8000283c:	02013403          	ld	s0,32(sp)
    80002840:	01813483          	ld	s1,24(sp)
    80002844:	01013903          	ld	s2,16(sp)
    80002848:	00813983          	ld	s3,8(sp)
    8000284c:	00013a03          	ld	s4,0(sp)
    80002850:	03010113          	addi	sp,sp,48
    80002854:	00008067          	ret

0000000080002858 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813423          	sd	s0,8(sp)
    80002860:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002864:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002868:	ffd50513          	addi	a0,a0,-3
}
    8000286c:	00153513          	seqz	a0,a0
    80002870:	00813403          	ld	s0,8(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    8000288c:	00008797          	auipc	a5,0x8
    80002890:	f4478793          	addi	a5,a5,-188 # 8000a7d0 <_ZN3PCB7runningE>
    80002894:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002898:	0007b783          	ld	a5,0(a5)
    8000289c:	00300713          	li	a4,3
    800028a0:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	d8c080e7          	jalr	-628(ra) # 80002630 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800028ac:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028b0:	00001097          	auipc	ra,0x1
    800028b4:	1cc080e7          	jalr	460(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	00813023          	sd	s0,0(sp)
    800028d4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800028d8:	00008797          	auipc	a5,0x8
    800028dc:	f007b823          	sd	zero,-240(a5) # 8000a7e8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	d50080e7          	jalr	-688(ra) # 80002630 <_ZN3PCB8dispatchEv>
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00113423          	sd	ra,8(sp)
    80002900:	00813023          	sd	s0,0(sp)
    80002904:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002908:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    8000290c:	00008717          	auipc	a4,0x8
    80002910:	ec470713          	addi	a4,a4,-316 # 8000a7d0 <_ZN3PCB7runningE>
    80002914:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002918:	00073703          	ld	a4,0(a4)
    8000291c:	00008697          	auipc	a3,0x8
    80002920:	dfc6b683          	ld	a3,-516(a3) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002924:	0006b683          	ld	a3,0(a3)
    80002928:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000292c:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002930:	00001097          	auipc	ra,0x1
    80002934:	814080e7          	jalr	-2028(ra) # 80003144 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	cf8080e7          	jalr	-776(ra) # 80002630 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002940:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002944:	00001097          	auipc	ra,0x1
    80002948:	138080e7          	jalr	312(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    8000295c:	fd010113          	addi	sp,sp,-48
    80002960:	02113423          	sd	ra,40(sp)
    80002964:	02813023          	sd	s0,32(sp)
    80002968:	00913c23          	sd	s1,24(sp)
    8000296c:	01213823          	sd	s2,16(sp)
    80002970:	01313423          	sd	s3,8(sp)
    80002974:	01413023          	sd	s4,0(sp)
    80002978:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    8000297c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002980:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002984:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002988:	06000513          	li	a0,96
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	d30080e7          	jalr	-720(ra) # 800026bc <_ZN3PCBnwEm>
    80002994:	00050493          	mv	s1,a0
    80002998:	00200713          	li	a4,2
    8000299c:	00008697          	auipc	a3,0x8
    800029a0:	e546b683          	ld	a3,-428(a3) # 8000a7f0 <_ZN3PCB10savedRegA4E>
    800029a4:	000a0613          	mv	a2,s4
    800029a8:	00098593          	mv	a1,s3
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	bf4080e7          	jalr	-1036(ra) # 800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029b4:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029b8:	02048e63          	beqz	s1,800029f4 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	c48080e7          	jalr	-952(ra) # 80002608 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800029c8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	0b0080e7          	jalr	176(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    800029d4:	02813083          	ld	ra,40(sp)
    800029d8:	02013403          	ld	s0,32(sp)
    800029dc:	01813483          	ld	s1,24(sp)
    800029e0:	01013903          	ld	s2,16(sp)
    800029e4:	00813983          	ld	s3,8(sp)
    800029e8:	00013a03          	ld	s4,0(sp)
    800029ec:	03010113          	addi	sp,sp,48
    800029f0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800029f4:	fff00513          	li	a0,-1
    800029f8:	fd5ff06f          	j	800029cc <_ZN3PCB19threadCreateHandlerEv+0x70>

00000000800029fc <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002a0c:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002a10:	02050463          	beqz	a0,80002a38 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	bf4080e7          	jalr	-1036(ra) # 80002608 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002a1c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002a20:	00001097          	auipc	ra,0x1
    80002a24:	05c080e7          	jalr	92(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a28:	00813083          	ld	ra,8(sp)
    80002a2c:	00013403          	ld	s0,0(sp)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a38:	fff00513          	li	a0,-1
    80002a3c:	fe5ff06f          	j	80002a20 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002a40 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
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

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002a6c:	06000513          	li	a0,96
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	c4c080e7          	jalr	-948(ra) # 800026bc <_ZN3PCBnwEm>
    80002a78:	00050493          	mv	s1,a0
    80002a7c:	00200713          	li	a4,2
    80002a80:	00008697          	auipc	a3,0x8
    80002a84:	d706b683          	ld	a3,-656(a3) # 8000a7f0 <_ZN3PCB10savedRegA4E>
    80002a88:	000a0613          	mv	a2,s4
    80002a8c:	00098593          	mv	a1,s3
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	b10080e7          	jalr	-1264(ra) # 800025a0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a98:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002a9c:	02048863          	beqz	s1,80002acc <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002aa0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	fd8080e7          	jalr	-40(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002aac:	02813083          	ld	ra,40(sp)
    80002ab0:	02013403          	ld	s0,32(sp)
    80002ab4:	01813483          	ld	s1,24(sp)
    80002ab8:	01013903          	ld	s2,16(sp)
    80002abc:	00813983          	ld	s3,8(sp)
    80002ac0:	00013a03          	ld	s4,0(sp)
    80002ac4:	03010113          	addi	sp,sp,48
    80002ac8:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002acc:	fff00513          	li	a0,-1
    80002ad0:	fd5ff06f          	j	80002aa4 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002ad4 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002ad4:	fe010113          	addi	sp,sp,-32
    80002ad8:	00113c23          	sd	ra,24(sp)
    80002adc:	00813823          	sd	s0,16(sp)
    80002ae0:	00913423          	sd	s1,8(sp)
    80002ae4:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002ae8:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002aec:	02048e63          	beqz	s1,80002b28 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002af0:	00048513          	mv	a0,s1
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	c18080e7          	jalr	-1000(ra) # 8000270c <_ZN3PCBD1Ev>
    80002afc:	00048513          	mv	a0,s1
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	be4080e7          	jalr	-1052(ra) # 800026e4 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002b08:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	f70080e7          	jalr	-144(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b14:	01813083          	ld	ra,24(sp)
    80002b18:	01013403          	ld	s0,16(sp)
    80002b1c:	00813483          	ld	s1,8(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002b28:	00100513          	li	a0,1
    80002b2c:	fe1ff06f          	j	80002b0c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002b30 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002b30:	fe010113          	addi	sp,sp,-32
    80002b34:	00113c23          	sd	ra,24(sp)
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	01213023          	sd	s2,0(sp)
    80002b44:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002b48:	01800513          	li	a0,24
    80002b4c:	00002097          	auipc	ra,0x2
    80002b50:	a2c080e7          	jalr	-1492(ra) # 80004578 <_ZN10KSemaphorenwEm>
    80002b54:	00050493          	mv	s1,a0
    80002b58:	00000593          	li	a1,0
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	7b4080e7          	jalr	1972(ra) # 80004310 <_ZN10KSemaphoreC1Ei>
    80002b64:	00008797          	auipc	a5,0x8
    80002b68:	c897ba23          	sd	s1,-876(a5) # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002b6c:	01800513          	li	a0,24
    80002b70:	00002097          	auipc	ra,0x2
    80002b74:	a08080e7          	jalr	-1528(ra) # 80004578 <_ZN10KSemaphorenwEm>
    80002b78:	00050493          	mv	s1,a0
    80002b7c:	00000593          	li	a1,0
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	790080e7          	jalr	1936(ra) # 80004310 <_ZN10KSemaphoreC1Ei>
    80002b88:	00008797          	auipc	a5,0x8
    80002b8c:	c697bc23          	sd	s1,-904(a5) # 8000a800 <_ZN8KConsole19hasCharactersOutputE>
}
    80002b90:	01813083          	ld	ra,24(sp)
    80002b94:	01013403          	ld	s0,16(sp)
    80002b98:	00813483          	ld	s1,8(sp)
    80002b9c:	00013903          	ld	s2,0(sp)
    80002ba0:	02010113          	addi	sp,sp,32
    80002ba4:	00008067          	ret
    80002ba8:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002bac:	00048513          	mv	a0,s1
    80002bb0:	00002097          	auipc	ra,0x2
    80002bb4:	a68080e7          	jalr	-1432(ra) # 80004618 <_ZN10KSemaphoredlEPv>
    80002bb8:	00090513          	mv	a0,s2
    80002bbc:	0000d097          	auipc	ra,0xd
    80002bc0:	d9c080e7          	jalr	-612(ra) # 8000f958 <_Unwind_Resume>
    80002bc4:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002bc8:	00048513          	mv	a0,s1
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	a4c080e7          	jalr	-1460(ra) # 80004618 <_ZN10KSemaphoredlEPv>
    80002bd4:	00090513          	mv	a0,s2
    80002bd8:	0000d097          	auipc	ra,0xd
    80002bdc:	d80080e7          	jalr	-640(ra) # 8000f958 <_Unwind_Resume>

0000000080002be0 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002be0:	00008697          	auipc	a3,0x8
    80002be4:	c1868693          	addi	a3,a3,-1000 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002be8:	0106b603          	ld	a2,16(a3)
    80002bec:	00160793          	addi	a5,a2,1
    80002bf0:	00002737          	lui	a4,0x2
    80002bf4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002bf8:	00e7f7b3          	and	a5,a5,a4
    80002bfc:	0186b703          	ld	a4,24(a3)
    80002c00:	04e78263          	beq	a5,a4,80002c44 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002c14:	0000a717          	auipc	a4,0xa
    80002c18:	c2470713          	addi	a4,a4,-988 # 8000c838 <_ZN8KConsole11inputBufferE>
    80002c1c:	00c70633          	add	a2,a4,a2
    80002c20:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002c24:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002c28:	0006b503          	ld	a0,0(a3)
    80002c2c:	00002097          	auipc	ra,0x2
    80002c30:	904080e7          	jalr	-1788(ra) # 80004530 <_ZN10KSemaphore6signalEv>
}
    80002c34:	00813083          	ld	ra,8(sp)
    80002c38:	00013403          	ld	s0,0(sp)
    80002c3c:	01010113          	addi	sp,sp,16
    80002c40:	00008067          	ret
    80002c44:	00008067          	ret

0000000080002c48 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002c5c:	00008497          	auipc	s1,0x8
    80002c60:	b9c48493          	addi	s1,s1,-1124 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002c64:	0004b503          	ld	a0,0(s1)
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	750080e7          	jalr	1872(ra) # 800043b8 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002c70:	0184b783          	ld	a5,24(s1)
    80002c74:	0104b703          	ld	a4,16(s1)
    80002c78:	04e78063          	beq	a5,a4,80002cb8 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002c7c:	0000a717          	auipc	a4,0xa
    80002c80:	bbc70713          	addi	a4,a4,-1092 # 8000c838 <_ZN8KConsole11inputBufferE>
    80002c84:	00f70733          	add	a4,a4,a5
    80002c88:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002c8c:	00178793          	addi	a5,a5,1
    80002c90:	00002737          	lui	a4,0x2
    80002c94:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002c98:	00e7f7b3          	and	a5,a5,a4
    80002c9c:	00008717          	auipc	a4,0x8
    80002ca0:	b6f73a23          	sd	a5,-1164(a4) # 8000a810 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002ca4:	01813083          	ld	ra,24(sp)
    80002ca8:	01013403          	ld	s0,16(sp)
    80002cac:	00813483          	ld	s1,8(sp)
    80002cb0:	02010113          	addi	sp,sp,32
    80002cb4:	00008067          	ret
        return -1;
    80002cb8:	0ff00513          	li	a0,255
    80002cbc:	fe9ff06f          	j	80002ca4 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002cc0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002cc0:	00008697          	auipc	a3,0x8
    80002cc4:	b3868693          	addi	a3,a3,-1224 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002cc8:	0206b603          	ld	a2,32(a3)
    80002ccc:	00160793          	addi	a5,a2,1
    80002cd0:	00002737          	lui	a4,0x2
    80002cd4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002cd8:	00e7f7b3          	and	a5,a5,a4
    80002cdc:	0286b703          	ld	a4,40(a3)
    80002ce0:	04e78a63          	beq	a5,a4,80002d34 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00113423          	sd	ra,8(sp)
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002cf4:	00068713          	mv	a4,a3
    80002cf8:	0306b683          	ld	a3,48(a3)
    80002cfc:	00168693          	addi	a3,a3,1
    80002d00:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002d04:	00008697          	auipc	a3,0x8
    80002d08:	b3468693          	addi	a3,a3,-1228 # 8000a838 <_ZN8KConsole12outputBufferE>
    80002d0c:	00c68633          	add	a2,a3,a2
    80002d10:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002d14:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002d18:	00873503          	ld	a0,8(a4)
    80002d1c:	00002097          	auipc	ra,0x2
    80002d20:	814080e7          	jalr	-2028(ra) # 80004530 <_ZN10KSemaphore6signalEv>
}
    80002d24:	00813083          	ld	ra,8(sp)
    80002d28:	00013403          	ld	s0,0(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret
    80002d34:	00008067          	ret

0000000080002d38 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002d38:	00008797          	auipc	a5,0x8
    80002d3c:	9a87b783          	ld	a5,-1624(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d40:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002d44:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002d48:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002d4c:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002d50:	0017f793          	andi	a5,a5,1
    80002d54:	08078063          	beqz	a5,80002dd4 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002d6c:	00008797          	auipc	a5,0x8
    80002d70:	9947b783          	ld	a5,-1644(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d74:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002d78:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002d7c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002d80:	00058493          	mv	s1,a1
    80002d84:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	e54080e7          	jalr	-428(ra) # 80002be0 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002d94:	00048513          	mv	a0,s1
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	f28080e7          	jalr	-216(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002da0:	00008797          	auipc	a5,0x8
    80002da4:	9407b783          	ld	a5,-1728(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002da8:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002dac:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002db0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002db4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002db8:	0017f793          	andi	a5,a5,1
    80002dbc:	fa0798e3          	bnez	a5,80002d6c <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	00813483          	ld	s1,8(sp)
    80002dcc:	02010113          	addi	sp,sp,32
    80002dd0:	00008067          	ret
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002dd8:	fe010113          	addi	sp,sp,-32
    80002ddc:	00113c23          	sd	ra,24(sp)
    80002de0:	00813823          	sd	s0,16(sp)
    80002de4:	00913423          	sd	s1,8(sp)
    80002de8:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002dec:	00008497          	auipc	s1,0x8
    80002df0:	a0c48493          	addi	s1,s1,-1524 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002df4:	0084b503          	ld	a0,8(s1)
    80002df8:	00001097          	auipc	ra,0x1
    80002dfc:	5c0080e7          	jalr	1472(ra) # 800043b8 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002e00:	0284b783          	ld	a5,40(s1)
    80002e04:	0204b703          	ld	a4,32(s1)
    80002e08:	04e78063          	beq	a5,a4,80002e48 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002e0c:	00008717          	auipc	a4,0x8
    80002e10:	a2c70713          	addi	a4,a4,-1492 # 8000a838 <_ZN8KConsole12outputBufferE>
    80002e14:	00f70733          	add	a4,a4,a5
    80002e18:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002e1c:	00178793          	addi	a5,a5,1
    80002e20:	00002737          	lui	a4,0x2
    80002e24:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e28:	00e7f7b3          	and	a5,a5,a4
    80002e2c:	00008717          	auipc	a4,0x8
    80002e30:	9ef73a23          	sd	a5,-1548(a4) # 8000a820 <_ZN8KConsole10outputHeadE>

    return c;
}
    80002e34:	01813083          	ld	ra,24(sp)
    80002e38:	01013403          	ld	s0,16(sp)
    80002e3c:	00813483          	ld	s1,8(sp)
    80002e40:	02010113          	addi	sp,sp,32
    80002e44:	00008067          	ret
        return -1;
    80002e48:	0ff00513          	li	a0,255
    80002e4c:	fe9ff06f          	j	80002e34 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002e50 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00113423          	sd	ra,8(sp)
    80002e58:	00813023          	sd	s0,0(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002e60:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002e64:	0ff57513          	andi	a0,a0,255
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	e58080e7          	jalr	-424(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
}
    80002e70:	00813083          	ld	ra,8(sp)
    80002e74:	00013403          	ld	s0,0(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00113c23          	sd	ra,24(sp)
    80002e88:	00813823          	sd	s0,16(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002e94:	00008717          	auipc	a4,0x8
    80002e98:	96470713          	addi	a4,a4,-1692 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002e9c:	03873783          	ld	a5,56(a4)
    80002ea0:	00178793          	addi	a5,a5,1
    80002ea4:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	da0080e7          	jalr	-608(ra) # 80002c48 <_ZN8KConsole17getCharacterInputEv>
    80002eb0:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002eb4:	01b00793          	li	a5,27
    80002eb8:	02f51663          	bne	a0,a5,80002ee4 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002ebc:	00d00793          	li	a5,13
    80002ec0:	02f48863          	beq	s1,a5,80002ef0 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002ec4:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002ec8:	00001097          	auipc	ra,0x1
    80002ecc:	bb4080e7          	jalr	-1100(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00813483          	ld	s1,8(sp)
    80002edc:	02010113          	addi	sp,sp,32
    80002ee0:	00008067          	ret
        putCharacterOutput(ch);
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	ddc080e7          	jalr	-548(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
    80002eec:	fd1ff06f          	j	80002ebc <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002ef0:	00d00513          	li	a0,13
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	dcc080e7          	jalr	-564(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002efc:	00a00513          	li	a0,10
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	dc0080e7          	jalr	-576(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
    80002f08:	fbdff06f          	j	80002ec4 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002f0c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002f18:	00008517          	auipc	a0,0x8
    80002f1c:	91053503          	ld	a0,-1776(a0) # 8000a828 <_ZN8KConsole11pendingPutcE>
    80002f20:	00153513          	seqz	a0,a0
    80002f24:	00813403          	ld	s0,8(sp)
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002f30:	fe010113          	addi	sp,sp,-32
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	02010413          	addi	s0,sp,32
    80002f40:	0180006f          	j	80002f58 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002f44:	ffffe097          	auipc	ra,0xffffe
    80002f48:	410080e7          	jalr	1040(ra) # 80001354 <_Z11thread_exitv>
    80002f4c:	0340006f          	j	80002f80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	3e4080e7          	jalr	996(ra) # 80001334 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002f58:	00007797          	auipc	a5,0x7
    80002f5c:	7e07b783          	ld	a5,2016(a5) # 8000a738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002f60:	0007c783          	lbu	a5,0(a5)
    80002f64:	00078e63          	beqz	a5,80002f80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	fa4080e7          	jalr	-92(ra) # 80002f0c <_ZN8KConsole17outputBufferEmptyEv>
    80002f70:	00050863          	beqz	a0,80002f80 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002f74:	00008797          	auipc	a5,0x8
    80002f78:	8bc7b783          	ld	a5,-1860(a5) # 8000a830 <_ZN8KConsole11pendingGetcE>
    80002f7c:	fc0784e3          	beqz	a5,80002f44 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002f80:	00007797          	auipc	a5,0x7
    80002f84:	7607b783          	ld	a5,1888(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f88:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f8c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002f90:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f94:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002f98:	0207f793          	andi	a5,a5,32
    80002f9c:	fa078ae3          	beqz	a5,80002f50 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80002fa0:	00008797          	auipc	a5,0x8
    80002fa4:	8887b783          	ld	a5,-1912(a5) # 8000a828 <_ZN8KConsole11pendingPutcE>
    80002fa8:	fa0784e3          	beqz	a5,80002f50 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	5b0080e7          	jalr	1456(ra) # 8000155c <_Z20sysCallGetCharOutputv>
    80002fb4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002fb8:	00008717          	auipc	a4,0x8
    80002fbc:	84070713          	addi	a4,a4,-1984 # 8000a7f8 <_ZN8KConsole18hasCharactersInputE>
    80002fc0:	03073783          	ld	a5,48(a4)
    80002fc4:	fff78793          	addi	a5,a5,-1
    80002fc8:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002fcc:	00007797          	auipc	a5,0x7
    80002fd0:	70c7b783          	ld	a5,1804(a5) # 8000a6d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fd4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002fd8:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002fdc:	fef44783          	lbu	a5,-17(s0)
    80002fe0:	0ff7f793          	andi	a5,a5,255
    80002fe4:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002fe8:	00b50023          	sb	a1,0(a0)
    80002fec:	f6dff06f          	j	80002f58 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002ff0 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00113423          	sd	ra,8(sp)
    80002ff8:	00813023          	sd	s0,0(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003000:	00000097          	auipc	ra,0x0
    80003004:	dd8080e7          	jalr	-552(ra) # 80002dd8 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003008:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	a70080e7          	jalr	-1424(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80003014:	00813083          	ld	ra,8(sp)
    80003018:	00013403          	ld	s0,0(sp)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret

0000000080003024 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003024:	fe010113          	addi	sp,sp,-32
    80003028:	00113c23          	sd	ra,24(sp)
    8000302c:	00813823          	sd	s0,16(sp)
    80003030:	00913423          	sd	s1,8(sp)
    80003034:	02010413          	addi	s0,sp,32
    80003038:	00050493          	mv	s1,a0
    while (*string != '\0')
    8000303c:	0004c503          	lbu	a0,0(s1)
    80003040:	00050a63          	beqz	a0,80003054 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003044:	00000097          	auipc	ra,0x0
    80003048:	c7c080e7          	jalr	-900(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    8000304c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003050:	fedff06f          	j	8000303c <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003054:	01813083          	ld	ra,24(sp)
    80003058:	01013403          	ld	s0,16(sp)
    8000305c:	00813483          	ld	s1,8(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret

0000000080003068 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    80003068:	fb010113          	addi	sp,sp,-80
    8000306c:	04113423          	sd	ra,72(sp)
    80003070:	04813023          	sd	s0,64(sp)
    80003074:	02913c23          	sd	s1,56(sp)
    80003078:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    8000307c:	00005797          	auipc	a5,0x5
    80003080:	14c78793          	addi	a5,a5,332 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003084:	0007b703          	ld	a4,0(a5)
    80003088:	fce43423          	sd	a4,-56(s0)
    8000308c:	0087b703          	ld	a4,8(a5)
    80003090:	fce43823          	sd	a4,-48(s0)
    80003094:	0107c783          	lbu	a5,16(a5)
    80003098:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000309c:	00060463          	beqz	a2,800030a4 <_ZN8KConsole8printIntEiii+0x3c>
    800030a0:	08054263          	bltz	a0,80003124 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030a4:	0005051b          	sext.w	a0,a0
    neg = 0;
    800030a8:	00000813          	li	a6,0
    }

    i = 0;
    800030ac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030b0:	0005871b          	sext.w	a4,a1
    800030b4:	02b577bb          	remuw	a5,a0,a1
    800030b8:	00048693          	mv	a3,s1
    800030bc:	0014849b          	addiw	s1,s1,1
    800030c0:	02079793          	slli	a5,a5,0x20
    800030c4:	0207d793          	srli	a5,a5,0x20
    800030c8:	fe040613          	addi	a2,s0,-32
    800030cc:	00f607b3          	add	a5,a2,a5
    800030d0:	fe87c603          	lbu	a2,-24(a5)
    800030d4:	fe040793          	addi	a5,s0,-32
    800030d8:	00d787b3          	add	a5,a5,a3
    800030dc:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    800030e0:	0005061b          	sext.w	a2,a0
    800030e4:	02b5553b          	divuw	a0,a0,a1
    800030e8:	fce674e3          	bgeu	a2,a4,800030b0 <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    800030ec:	00080c63          	beqz	a6,80003104 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    800030f0:	fe040793          	addi	a5,s0,-32
    800030f4:	009784b3          	add	s1,a5,s1
    800030f8:	02d00793          	li	a5,45
    800030fc:	fcf48c23          	sb	a5,-40(s1)
    80003100:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80003104:	fff4849b          	addiw	s1,s1,-1
    80003108:	0204c463          	bltz	s1,80003130 <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    8000310c:	fe040793          	addi	a5,s0,-32
    80003110:	009787b3          	add	a5,a5,s1
    80003114:	fd87c503          	lbu	a0,-40(a5)
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	ba8080e7          	jalr	-1112(ra) # 80002cc0 <_ZN8KConsole18putCharacterOutputEc>
    80003120:	fe5ff06f          	j	80003104 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    80003124:	40a0053b          	negw	a0,a0
        neg = 1;
    80003128:	00100813          	li	a6,1
        x = -xx;
    8000312c:	f81ff06f          	j	800030ac <_ZN8KConsole8printIntEiii+0x44>
}
    80003130:	04813083          	ld	ra,72(sp)
    80003134:	04013403          	ld	s0,64(sp)
    80003138:	03813483          	ld	s1,56(sp)
    8000313c:	05010113          	addi	sp,sp,80
    80003140:	00008067          	ret

0000000080003144 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00813423          	sd	s0,8(sp)
    8000314c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003150:	00007797          	auipc	a5,0x7
    80003154:	5f07b783          	ld	a5,1520(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003158:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    8000315c:	00500793          	li	a5,5
    80003160:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003164:	0000b797          	auipc	a5,0xb
    80003168:	6d47b783          	ld	a5,1748(a5) # 8000e838 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    8000316c:	00000593          	li	a1,0
    while(curr != 0)
    80003170:	02078063          	beqz	a5,80003190 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003174:	02063683          	ld	a3,32(a2)
    80003178:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000317c:	00e6e863          	bltu	a3,a4,8000318c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003180:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003184:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003188:	fe9ff06f          	j	80003170 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000318c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003190:	00058a63          	beqz	a1,800031a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003194:	00c5b423          	sd	a2,8(a1)
}
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031a4:	0000b797          	auipc	a5,0xb
    800031a8:	68c7ba23          	sd	a2,1684(a5) # 8000e838 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800031ac:	fedff06f          	j	80003198 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800031b0 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031b0:	0000b517          	auipc	a0,0xb
    800031b4:	68853503          	ld	a0,1672(a0) # 8000e838 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031b8:	06050e63          	beqz	a0,80003234 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800031bc:	06050c63          	beqz	a0,80003234 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800031c0:	02053783          	ld	a5,32(a0)
    800031c4:	00007717          	auipc	a4,0x7
    800031c8:	55473703          	ld	a4,1364(a4) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031cc:	00073703          	ld	a4,0(a4)
    800031d0:	06f76263          	bltu	a4,a5,80003234 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	0180006f          	j	80003200 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800031ec:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800031f0:	00007717          	auipc	a4,0x7
    800031f4:	52873703          	ld	a4,1320(a4) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031f8:	00073703          	ld	a4,0(a4)
    800031fc:	02f76263          	bltu	a4,a5,80003220 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003200:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003204:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	0b8080e7          	jalr	184(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003210:	0000b797          	auipc	a5,0xb
    80003214:	6297b423          	sd	s1,1576(a5) # 8000e838 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003218:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000321c:	fc0498e3          	bnez	s1,800031ec <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	02010113          	addi	sp,sp,32
    80003230:	00008067          	ret
    80003234:	00008067          	ret

0000000080003238 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00113423          	sd	ra,8(sp)
    80003240:	00813023          	sd	s0,0(sp)
    80003244:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003248:	00001097          	auipc	ra,0x1
    8000324c:	004080e7          	jalr	4(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
}
    80003250:	00813083          	ld	ra,8(sp)
    80003254:	00013403          	ld	s0,0(sp)
    80003258:	01010113          	addi	sp,sp,16
    8000325c:	00008067          	ret

0000000080003260 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00113423          	sd	ra,8(sp)
    80003268:	00813023          	sd	s0,0(sp)
    8000326c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003270:	00001097          	auipc	ra,0x1
    80003274:	040080e7          	jalr	64(ra) # 800042b0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003278:	00813083          	ld	ra,8(sp)
    8000327c:	00013403          	ld	s0,0(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret

0000000080003288 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00813423          	sd	s0,8(sp)
    80003290:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003294:	0000b797          	auipc	a5,0xb
    80003298:	5ac7b783          	ld	a5,1452(a5) # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    8000329c:	00000513          	li	a0,0
    while(curr != 0)
    800032a0:	00078863          	beqz	a5,800032b0 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800032a4:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800032a8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800032ac:	ff5ff06f          	j	800032a0 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800032b0:	0005051b          	sext.w	a0,a0
    800032b4:	00813403          	ld	s0,8(sp)
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	00008067          	ret

00000000800032c0 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813423          	sd	s0,8(sp)
    800032c8:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800032cc:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800032d0:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800032d4:	0000b797          	auipc	a5,0xb
    800032d8:	56c7b783          	ld	a5,1388(a5) # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    800032dc:	02078263          	beqz	a5,80003300 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800032e0:	0000b797          	auipc	a5,0xb
    800032e4:	56078793          	addi	a5,a5,1376 # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    800032e8:	0087b703          	ld	a4,8(a5)
    800032ec:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800032f0:	00a7b423          	sd	a0,8(a5)
    }
}
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003300:	0000b797          	auipc	a5,0xb
    80003304:	54078793          	addi	a5,a5,1344 # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    80003308:	00a7b423          	sd	a0,8(a5)
    8000330c:	00a7b023          	sd	a0,0(a5)
    80003310:	fe5ff06f          	j	800032f4 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003314 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00813423          	sd	s0,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003320:	0000b517          	auipc	a0,0xb
    80003324:	52053503          	ld	a0,1312(a0) # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    80003328:	00050c63          	beqz	a0,80003340 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    8000332c:	00853783          	ld	a5,8(a0)
    80003330:	00078e63          	beqz	a5,8000334c <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003334:	0000b717          	auipc	a4,0xb
    80003338:	50f73623          	sd	a5,1292(a4) # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    8000333c:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003340:	00813403          	ld	s0,8(sp)
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    8000334c:	0000b797          	auipc	a5,0xb
    80003350:	4f478793          	addi	a5,a5,1268 # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    80003354:	0007b423          	sd	zero,8(a5)
    80003358:	0007b023          	sd	zero,0(a5)
    8000335c:	fe1ff06f          	j	8000333c <_ZN9Scheduler3getEv+0x28>

0000000080003360 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003374:	0000b497          	auipc	s1,0xb
    80003378:	4cc4b483          	ld	s1,1228(s1) # 8000e840 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    8000337c:	02048863          	beqz	s1,800033ac <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    80003380:	00000613          	li	a2,0
    80003384:	01000593          	li	a1,16
    80003388:	0004851b          	sext.w	a0,s1
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	538080e7          	jalr	1336(ra) # 800048c4 <_Z8printIntiii>
        printString("\n");
    80003394:	00005517          	auipc	a0,0x5
    80003398:	d5c50513          	addi	a0,a0,-676 # 800080f0 <CONSOLE_STATUS+0xe0>
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	390080e7          	jalr	912(ra) # 8000472c <_Z11printStringPKc>
        curr = curr->nextPCB;
    800033a4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800033a8:	fd5ff06f          	j	8000337c <_ZN9Scheduler5printEv+0x1c>
    }
}
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	02010113          	addi	sp,sp,32
    800033bc:	00008067          	ret

00000000800033c0 <main>:
#include "../h/Riscv.hpp"

void main()
{
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00113423          	sd	ra,8(sp)
    800033c8:	00813023          	sd	s0,0(sp)
    800033cc:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	5b4080e7          	jalr	1460(ra) # 80003984 <_ZN5Riscv10kernelMainEv>
    800033d8:	00813083          	ld	ra,8(sp)
    800033dc:	00013403          	ld	s0,0(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00113423          	sd	ra,8(sp)
    800033f0:	00813023          	sd	s0,0(sp)
    800033f4:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800033f8:	00053783          	ld	a5,0(a0)
    800033fc:	0107b783          	ld	a5,16(a5)
    80003400:	000780e7          	jalr	a5
}
    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003414:	00007797          	auipc	a5,0x7
    80003418:	1f478793          	addi	a5,a5,500 # 8000a608 <_ZTV6Thread+0x10>
    8000341c:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003420:	00853503          	ld	a0,8(a0)
    80003424:	02050663          	beqz	a0,80003450 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00113423          	sd	ra,8(sp)
    80003430:	00813023          	sd	s0,0(sp)
    80003434:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	0fc080e7          	jalr	252(ra) # 80002534 <_ZN7_threaddlEPv>
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret
    80003450:	00008067          	ret

0000000080003454 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003454:	00007797          	auipc	a5,0x7
    80003458:	1dc78793          	addi	a5,a5,476 # 8000a630 <_ZTV9Semaphore+0x10>
    8000345c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003460:	00853503          	ld	a0,8(a0)
    80003464:	02050663          	beqz	a0,80003490 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00113423          	sd	ra,8(sp)
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	3b4080e7          	jalr	948(ra) # 8000382c <_ZN4_semdlEPv>
}
    80003480:	00813083          	ld	ra,8(sp)
    80003484:	00013403          	ld	s0,0(sp)
    80003488:	01010113          	addi	sp,sp,16
    8000348c:	00008067          	ret
    80003490:	00008067          	ret

0000000080003494 <_Znwm>:
{
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00113423          	sd	ra,8(sp)
    8000349c:	00813023          	sd	s0,0(sp)
    800034a0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	db4080e7          	jalr	-588(ra) # 80001258 <_Z9mem_allocm>
}
    800034ac:	00813083          	ld	ra,8(sp)
    800034b0:	00013403          	ld	s0,0(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZdlPv>:
{
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	00813023          	sd	s0,0(sp)
    800034c8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	dbc080e7          	jalr	-580(ra) # 80001288 <_Z8mem_freePv>
}
    800034d4:	00813083          	ld	ra,8(sp)
    800034d8:	00013403          	ld	s0,0(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret

00000000800034e4 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800034e4:	fe010113          	addi	sp,sp,-32
    800034e8:	00113c23          	sd	ra,24(sp)
    800034ec:	00813823          	sd	s0,16(sp)
    800034f0:	00913423          	sd	s1,8(sp)
    800034f4:	02010413          	addi	s0,sp,32
    800034f8:	00050493          	mv	s1,a0
}
    800034fc:	00000097          	auipc	ra,0x0
    80003500:	f18080e7          	jalr	-232(ra) # 80003414 <_ZN6ThreadD1Ev>
    80003504:	00048513          	mv	a0,s1
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	fb4080e7          	jalr	-76(ra) # 800034bc <_ZdlPv>
    80003510:	01813083          	ld	ra,24(sp)
    80003514:	01013403          	ld	s0,16(sp)
    80003518:	00813483          	ld	s1,8(sp)
    8000351c:	02010113          	addi	sp,sp,32
    80003520:	00008067          	ret

0000000080003524 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003524:	fe010113          	addi	sp,sp,-32
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	00813823          	sd	s0,16(sp)
    80003530:	00913423          	sd	s1,8(sp)
    80003534:	02010413          	addi	s0,sp,32
    80003538:	00050493          	mv	s1,a0
}
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	f18080e7          	jalr	-232(ra) # 80003454 <_ZN9SemaphoreD1Ev>
    80003544:	00048513          	mv	a0,s1
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	f74080e7          	jalr	-140(ra) # 800034bc <_ZdlPv>
    80003550:	01813083          	ld	ra,24(sp)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003564:	00853503          	ld	a0,8(a0)
    80003568:	02050663          	beqz	a0,80003594 <_ZN6Thread5startEv+0x30>
{
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	ee8080e7          	jalr	-280(ra) # 80001464 <_Z12thread_startPv>
}
    80003584:	00813083          	ld	ra,8(sp)
    80003588:	00013403          	ld	s0,0(sp)
    8000358c:	01010113          	addi	sp,sp,16
    80003590:	00008067          	ret
        return -1;
    80003594:	fff00513          	li	a0,-1
}
    80003598:	00008067          	ret

000000008000359c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000359c:	ff010113          	addi	sp,sp,-16
    800035a0:	00113423          	sd	ra,8(sp)
    800035a4:	00813023          	sd	s0,0(sp)
    800035a8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	d88080e7          	jalr	-632(ra) # 80001334 <_Z15thread_dispatchv>
}
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <_ZN6Thread5sleepEm>:
{
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	00813023          	sd	s0,0(sp)
    800035d0:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	e64080e7          	jalr	-412(ra) # 80001438 <_Z10time_sleepm>
}
    800035dc:	00813083          	ld	ra,8(sp)
    800035e0:	00013403          	ld	s0,0(sp)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret

00000000800035ec <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00113c23          	sd	ra,24(sp)
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	01213023          	sd	s2,0(sp)
    80003600:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003604:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003608:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000360c:	0004b783          	ld	a5,0(s1)
    80003610:	0187b783          	ld	a5,24(a5)
    80003614:	00048513          	mv	a0,s1
    80003618:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000361c:	00090513          	mv	a0,s2
    80003620:	00000097          	auipc	ra,0x0
    80003624:	fa4080e7          	jalr	-92(ra) # 800035c4 <_ZN6Thread5sleepEm>
    while(true)
    80003628:	fe5ff06f          	j	8000360c <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000362c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00113423          	sd	ra,8(sp)
    80003634:	00813023          	sd	s0,0(sp)
    80003638:	01010413          	addi	s0,sp,16
    8000363c:	00007797          	auipc	a5,0x7
    80003640:	fcc78793          	addi	a5,a5,-52 # 8000a608 <_ZTV6Thread+0x10>
    80003644:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003648:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000364c:	00850513          	addi	a0,a0,8
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	e40080e7          	jalr	-448(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003658:	00813083          	ld	ra,8(sp)
    8000365c:	00013403          	ld	s0,0(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret

0000000080003668 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003668:	ff010113          	addi	sp,sp,-16
    8000366c:	00113423          	sd	ra,8(sp)
    80003670:	00813023          	sd	s0,0(sp)
    80003674:	01010413          	addi	s0,sp,16
    80003678:	00007797          	auipc	a5,0x7
    8000367c:	f9078793          	addi	a5,a5,-112 # 8000a608 <_ZTV6Thread+0x10>
    80003680:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003684:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003688:	00050613          	mv	a2,a0
    8000368c:	00000597          	auipc	a1,0x0
    80003690:	d5c58593          	addi	a1,a1,-676 # 800033e8 <_ZN6Thread6runnerEPv>
    80003694:	00850513          	addi	a0,a0,8
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	df8080e7          	jalr	-520(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00013403          	ld	s0,0(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret

00000000800036b0 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    800036b0:	00853503          	ld	a0,8(a0)
    800036b4:	02050663          	beqz	a0,800036e0 <_ZN9Semaphore4waitEv+0x30>
{
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00113423          	sd	ra,8(sp)
    800036c0:	00813023          	sd	s0,0(sp)
    800036c4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	d18080e7          	jalr	-744(ra) # 800013e0 <_Z8sem_waitP4_sem>
}
    800036d0:	00813083          	ld	ra,8(sp)
    800036d4:	00013403          	ld	s0,0(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret
        return -1;
    800036e0:	fff00513          	li	a0,-1
}
    800036e4:	00008067          	ret

00000000800036e8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800036e8:	fe010113          	addi	sp,sp,-32
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	00813823          	sd	s0,16(sp)
    800036f4:	00913423          	sd	s1,8(sp)
    800036f8:	02010413          	addi	s0,sp,32
    800036fc:	00050493          	mv	s1,a0
    80003700:	00007797          	auipc	a5,0x7
    80003704:	f3078793          	addi	a5,a5,-208 # 8000a630 <_ZTV9Semaphore+0x10>
    80003708:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000370c:	00850513          	addi	a0,a0,8
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	c6c080e7          	jalr	-916(ra) # 8000137c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003718:	00050463          	beqz	a0,80003720 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    8000371c:	0004b423          	sd	zero,8(s1)
}
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	02010113          	addi	sp,sp,32
    80003730:	00008067          	ret

0000000080003734 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003734:	00853503          	ld	a0,8(a0)
    80003738:	02050663          	beqz	a0,80003764 <_ZN9Semaphore6signalEv+0x30>
{
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00113423          	sd	ra,8(sp)
    80003744:	00813023          	sd	s0,0(sp)
    80003748:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	cc0080e7          	jalr	-832(ra) # 8000140c <_Z10sem_signalP4_sem>
}
    80003754:	00813083          	ld	ra,8(sp)
    80003758:	00013403          	ld	s0,0(sp)
    8000375c:	01010113          	addi	sp,sp,16
    80003760:	00008067          	ret
        return -1;
    80003764:	fff00513          	li	a0,-1
}
    80003768:	00008067          	ret

000000008000376c <_ZN7Console4getcEv>:
{
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00113423          	sd	ra,8(sp)
    80003774:	00813023          	sd	s0,0(sp)
    80003778:	01010413          	addi	s0,sp,16
    return ::getc();
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	d94080e7          	jalr	-620(ra) # 80001510 <_Z4getcv>
}
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZN7Console4putcEc>:
{
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	d94080e7          	jalr	-620(ra) # 80001538 <_Z4putcc>
}
    800037ac:	00813083          	ld	ra,8(sp)
    800037b0:	00013403          	ld	s0,0(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret

00000000800037bc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800037bc:	fe010113          	addi	sp,sp,-32
    800037c0:	00113c23          	sd	ra,24(sp)
    800037c4:	00813823          	sd	s0,16(sp)
    800037c8:	00913423          	sd	s1,8(sp)
    800037cc:	01213023          	sd	s2,0(sp)
    800037d0:	02010413          	addi	s0,sp,32
    800037d4:	00050493          	mv	s1,a0
    800037d8:	00058913          	mv	s2,a1
    800037dc:	01000513          	li	a0,16
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	cb4080e7          	jalr	-844(ra) # 80003494 <_Znwm>
    800037e8:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800037ec:	00953023          	sd	s1,0(a0)
    800037f0:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800037f4:	00000597          	auipc	a1,0x0
    800037f8:	df858593          	addi	a1,a1,-520 # 800035ec <_ZN14PeriodicThread6runnerEPv>
    800037fc:	00048513          	mv	a0,s1
    80003800:	00000097          	auipc	ra,0x0
    80003804:	e2c080e7          	jalr	-468(ra) # 8000362c <_ZN6ThreadC1EPFvPvES0_>
    80003808:	00007797          	auipc	a5,0x7
    8000380c:	d9878793          	addi	a5,a5,-616 # 8000a5a0 <_ZTV14PeriodicThread+0x10>
    80003810:	00f4b023          	sd	a5,0(s1)
}
    80003814:	01813083          	ld	ra,24(sp)
    80003818:	01013403          	ld	s0,16(sp)
    8000381c:	00813483          	ld	s1,8(sp)
    80003820:	00013903          	ld	s2,0(sp)
    80003824:	02010113          	addi	sp,sp,32
    80003828:	00008067          	ret

000000008000382c <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00113423          	sd	ra,8(sp)
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	b78080e7          	jalr	-1160(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	00813023          	sd	s0,0(sp)
    80003860:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003864:	00007797          	auipc	a5,0x7
    80003868:	e8c7b783          	ld	a5,-372(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    8000386c:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	ec8080e7          	jalr	-312(ra) # 80002738 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	2b8080e7          	jalr	696(ra) # 80002b30 <_ZN8KConsole10initializeEv>
}
    80003880:	00813083          	ld	ra,8(sp)
    80003884:	00013403          	ld	s0,0(sp)
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00813423          	sd	s0,8(sp)
    80003898:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000389c:	00200793          	li	a5,2
    800038a0:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800038a4:	00813403          	ld	s0,8(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret

00000000800038b0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00813423          	sd	s0,8(sp)
    800038b8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800038bc:	00200793          	li	a5,2
    800038c0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800038c4:	00813403          	ld	s0,8(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZN5Riscv9endSystemEv>:
{
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00113423          	sd	ra,8(sp)
    800038d8:	00813023          	sd	s0,0(sp)
    800038dc:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	fd0080e7          	jalr	-48(ra) # 800038b0 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800038e8:	00100793          	li	a5,1
    800038ec:	0000b717          	auipc	a4,0xb
    800038f0:	f6f70223          	sb	a5,-156(a4) # 8000e850 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	a20080e7          	jalr	-1504(ra) # 80003314 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800038fc:	fe051ce3          	bnez	a0,800038f4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003900:	00007797          	auipc	a5,0x7
    80003904:	e287b783          	ld	a5,-472(a5) # 8000a728 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003908:	0007b503          	ld	a0,0(a5)
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	9b4080e7          	jalr	-1612(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003914:	00007797          	auipc	a5,0x7
    80003918:	de47b783          	ld	a5,-540(a5) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000391c:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003920:	00000097          	auipc	ra,0x0
    80003924:	f70080e7          	jalr	-144(ra) # 80003890 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003928:	00007797          	auipc	a5,0x7
    8000392c:	e007b783          	ld	a5,-512(a5) # 8000a728 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003930:	0007b503          	ld	a0,0(a5)
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	f24080e7          	jalr	-220(ra) # 80002858 <_ZN3PCB10isFinishedEv>
    8000393c:	00051863          	bnez	a0,8000394c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	9f4080e7          	jalr	-1548(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80003948:	fe1ff06f          	j	80003928 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    8000394c:	00000097          	auipc	ra,0x0
    80003950:	f64080e7          	jalr	-156(ra) # 800038b0 <_ZN5Riscv17disableInterruptsEv>
}
    80003954:	00813083          	ld	ra,8(sp)
    80003958:	00013403          	ld	s0,0(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00813423          	sd	s0,8(sp)
    8000396c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003970:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003974:	10200073          	sret
}
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80003984:	0000b797          	auipc	a5,0xb
    80003988:	ecd7c783          	lbu	a5,-307(a5) # 8000e851 <_ZN5Riscv16kernelMainCalledE>
    8000398c:	00078463          	beqz	a5,80003994 <_ZN5Riscv10kernelMainEv+0x10>
    80003990:	00008067          	ret
{
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800039a4:	00100793          	li	a5,1
    800039a8:	0000b717          	auipc	a4,0xb
    800039ac:	eaf704a3          	sb	a5,-343(a4) # 8000e851 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	ea4080e7          	jalr	-348(ra) # 80003854 <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    800039b8:	00000097          	auipc	ra,0x0
    800039bc:	ed8080e7          	jalr	-296(ra) # 80003890 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800039c0:	00007797          	auipc	a5,0x7
    800039c4:	d707b783          	ld	a5,-656(a5) # 8000a730 <_GLOBAL_OFFSET_TABLE_+0x60>
    800039c8:	0007b503          	ld	a0,0(a5)
    800039cc:	fffff097          	auipc	ra,0xfffff
    800039d0:	e8c080e7          	jalr	-372(ra) # 80002858 <_ZN3PCB10isFinishedEv>
    800039d4:	00051863          	bnez	a0,800039e4 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	95c080e7          	jalr	-1700(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800039e0:	fe1ff06f          	j	800039c0 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    800039e4:	00000097          	auipc	ra,0x0
    800039e8:	eec080e7          	jalr	-276(ra) # 800038d0 <_ZN5Riscv9endSystemEv>
}
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    userMain();
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	7e8080e7          	jalr	2024(ra) # 800051f4 <_Z8userMainv>
}
    80003a14:	00813083          	ld	ra,8(sp)
    80003a18:	00013403          	ld	s0,0(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00113423          	sd	ra,8(sp)
    80003a2c:	00813023          	sd	s0,0(sp)
    80003a30:	01010413          	addi	s0,sp,16
    myTests();
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	41c080e7          	jalr	1052(ra) # 80001e50 <_Z7myTestsv>
}
    80003a3c:	00813083          	ld	ra,8(sp)
    80003a40:	00013403          	ld	s0,0(sp)
    80003a44:	01010113          	addi	sp,sp,16
    80003a48:	00008067          	ret

0000000080003a4c <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003a4c:	ff010113          	addi	sp,sp,-16
    80003a50:	00813423          	sd	s0,8(sp)
    80003a54:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003a58:	00200793          	li	a5,2
    80003a5c:	1047b073          	csrc	sie,a5
}
    80003a60:	00813403          	ld	s0,8(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00813423          	sd	s0,8(sp)
    80003a74:	01010413          	addi	s0,sp,16
    while(true)
    80003a78:	0000006f          	j	80003a78 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003a7c <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003a7c:	ff010113          	addi	sp,sp,-16
    80003a80:	00813423          	sd	s0,8(sp)
    80003a84:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003a88:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003a8c:	00007717          	auipc	a4,0x7
    80003a90:	cb473703          	ld	a4,-844(a4) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003a94:	00073703          	ld	a4,0(a4)
    80003a98:	01073703          	ld	a4,16(a4)
    80003a9c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003aa0:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003aa4:	00078593          	mv	a1,a5
}
    80003aa8:	00813403          	ld	s0,8(sp)
    80003aac:	01010113          	addi	sp,sp,16
    80003ab0:	00008067          	ret

0000000080003ab4 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003ab4:	ff010113          	addi	sp,sp,-16
    80003ab8:	00813423          	sd	s0,8(sp)
    80003abc:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003ac0:	00007797          	auipc	a5,0x7
    80003ac4:	c807b783          	ld	a5,-896(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003ac8:	0007b783          	ld	a5,0(a5)
    80003acc:	0007c783          	lbu	a5,0(a5)
    80003ad0:	00078c63          	beqz	a5,80003ae8 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ad4:	10000793          	li	a5,256
    80003ad8:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003adc:	00813403          	ld	s0,8(sp)
    80003ae0:	01010113          	addi	sp,sp,16
    80003ae4:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ae8:	10000793          	li	a5,256
    80003aec:	1007b073          	csrc	sstatus,a5
    80003af0:	fedff06f          	j	80003adc <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003af4 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003af4:	f9010113          	addi	sp,sp,-112
    80003af8:	06113423          	sd	ra,104(sp)
    80003afc:	06813023          	sd	s0,96(sp)
    80003b00:	04913c23          	sd	s1,88(sp)
    80003b04:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003b08:	00070713          	mv	a4,a4
    80003b0c:	00007797          	auipc	a5,0x7
    80003b10:	c4c7b783          	ld	a5,-948(a5) # 8000a758 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003b14:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003b18:	00007797          	auipc	a5,0x7
    80003b1c:	c287b783          	ld	a5,-984(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003b20:	0007b783          	ld	a5,0(a5)
    80003b24:	14002773          	csrr	a4,sscratch
    80003b28:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003b2c:	142027f3          	csrr	a5,scause
    80003b30:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003b34:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003b38:	00900713          	li	a4,9
    80003b3c:	02f76e63          	bltu	a4,a5,80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003b40:	00800713          	li	a4,8
    80003b44:	18e7f463          	bgeu	a5,a4,80003ccc <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003b48:	00500713          	li	a4,5
    80003b4c:	16e78a63          	beq	a5,a4,80003cc0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003b50:	00700713          	li	a4,7
    80003b54:	00e79863          	bne	a5,a4,80003b64 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	d24080e7          	jalr	-732(ra) # 8000287c <_ZN3PCB17threadExitHandlerEv>
            break;
    80003b60:	1200006f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003b64:	00200713          	li	a4,2
    80003b68:	10e79c63          	bne	a5,a4,80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	d10080e7          	jalr	-752(ra) # 8000287c <_ZN3PCB17threadExitHandlerEv>
            break;
    80003b74:	10c0006f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003b78:	fff00713          	li	a4,-1
    80003b7c:	03f71713          	slli	a4,a4,0x3f
    80003b80:	00170713          	addi	a4,a4,1
    80003b84:	06e78a63          	beq	a5,a4,80003bf8 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003b88:	fff00713          	li	a4,-1
    80003b8c:	03f71713          	slli	a4,a4,0x3f
    80003b90:	00970713          	addi	a4,a4,9
    80003b94:	0ee79663          	bne	a5,a4,80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003b98:	00007797          	auipc	a5,0x7
    80003b9c:	b487b783          	ld	a5,-1208(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003ba0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003ba4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003ba8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003bac:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003bb0:	0017f793          	andi	a5,a5,1
    80003bb4:	02078863          	beqz	a5,80003be4 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003bb8:	00007797          	auipc	a5,0x7
    80003bbc:	b487b783          	ld	a5,-1208(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003bc0:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003bc4:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003bc8:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003bcc:	00058513          	mv	a0,a1
    80003bd0:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003bd4:	00007797          	auipc	a5,0x7
    80003bd8:	b247b783          	ld	a5,-1244(a5) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003bdc:	0007b783          	ld	a5,0(a5)
    80003be0:	0c079263          	bnez	a5,80003ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	520080e7          	jalr	1312(ra) # 80006104 <plic_claim>
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	550080e7          	jalr	1360(ra) # 8000613c <plic_complete>
            break;
    80003bf4:	08c0006f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bf8:	141027f3          	csrr	a5,sepc
    80003bfc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003c00:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003c04:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003c10:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003c14:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003c18:	00200793          	li	a5,2
    80003c1c:	1447b073          	csrc	sip,a5
            totalTime++;
    80003c20:	0000b717          	auipc	a4,0xb
    80003c24:	c3070713          	addi	a4,a4,-976 # 8000e850 <_ZN5Riscv12finishSystemE>
    80003c28:	00873783          	ld	a5,8(a4)
    80003c2c:	00178793          	addi	a5,a5,1
    80003c30:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003c34:	00007497          	auipc	s1,0x7
    80003c38:	ad44b483          	ld	s1,-1324(s1) # 8000a708 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003c3c:	0004b783          	ld	a5,0(s1)
    80003c40:	00178793          	addi	a5,a5,1
    80003c44:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	568080e7          	jalr	1384(ra) # 800031b0 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003c50:	00007797          	auipc	a5,0x7
    80003c54:	af07b783          	ld	a5,-1296(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003c58:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003c5c:	0187b783          	ld	a5,24(a5)
    80003c60:	0004b703          	ld	a4,0(s1)
    80003c64:	02f77863          	bgeu	a4,a5,80003c94 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003c68:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c6c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c70:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c74:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003c78:	00000097          	auipc	ra,0x0
    80003c7c:	e3c080e7          	jalr	-452(ra) # 80003ab4 <_ZN5Riscv14changePrivModeEv>
}
    80003c80:	06813083          	ld	ra,104(sp)
    80003c84:	06013403          	ld	s0,96(sp)
    80003c88:	05813483          	ld	s1,88(sp)
    80003c8c:	07010113          	addi	sp,sp,112
    80003c90:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003c94:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	998080e7          	jalr	-1640(ra) # 80002630 <_ZN3PCB8dispatchEv>
    80003ca0:	fc9ff06f          	j	80003c68 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003ca4:	fff78793          	addi	a5,a5,-1
    80003ca8:	00007717          	auipc	a4,0x7
    80003cac:	a5073703          	ld	a4,-1456(a4) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003cb0:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	f2c080e7          	jalr	-212(ra) # 80002be0 <_ZN8KConsole17putCharacterInputEc>
    80003cbc:	f29ff06f          	j	80003be4 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	bbc080e7          	jalr	-1092(ra) # 8000287c <_ZN3PCB17threadExitHandlerEv>
            break;
    80003cc8:	fb9ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003ccc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003cd0:	14102773          	csrr	a4,sepc
    80003cd4:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003cd8:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003cdc:	00470713          	addi	a4,a4,4
    80003ce0:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003ce4:	10002773          	csrr	a4,sstatus
    80003ce8:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003cec:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003cf0:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003cf4:	04300713          	li	a4,67
    80003cf8:	02f76463          	bltu	a4,a5,80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003cfc:	00279793          	slli	a5,a5,0x2
    80003d00:	00004717          	auipc	a4,0x4
    80003d04:	4dc70713          	addi	a4,a4,1244 # 800081dc <CONSOLE_STATUS+0x1cc>
    80003d08:	00e787b3          	add	a5,a5,a4
    80003d0c:	0007a783          	lw	a5,0(a5)
    80003d10:	00e787b3          	add	a5,a5,a4
    80003d14:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	55c080e7          	jalr	1372(ra) # 80004274 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003d20:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003d24:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003d28:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003d2c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	d84080e7          	jalr	-636(ra) # 80003ab4 <_ZN5Riscv14changePrivModeEv>
}
    80003d38:	f49ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	59c080e7          	jalr	1436(ra) # 800042d8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003d44:	fddff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	cf8080e7          	jalr	-776(ra) # 80002a40 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003d50:	fd1ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	c08080e7          	jalr	-1016(ra) # 8000295c <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003d5c:	fc5ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	c9c080e7          	jalr	-868(ra) # 800029fc <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003d68:	fb9ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	b5c080e7          	jalr	-1188(ra) # 800028c8 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003d74:	fadff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	b04080e7          	jalr	-1276(ra) # 8000287c <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003d80:	fa1ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	b74080e7          	jalr	-1164(ra) # 800028f8 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003d8c:	f95ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                     PCB::threadDelPCBHandler();
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	d44080e7          	jalr	-700(ra) # 80002ad4 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80003d98:	f89ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	804080e7          	jalr	-2044(ra) # 800045a0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003da4:	f7dff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	898080e7          	jalr	-1896(ra) # 80004640 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003db0:	f71ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	8e0080e7          	jalr	-1824(ra) # 80004694 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003dbc:	f65ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003dc0:	00001097          	auipc	ra,0x1
    80003dc4:	918080e7          	jalr	-1768(ra) # 800046d8 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003dc8:	f59ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	0b4080e7          	jalr	180(ra) # 80002e80 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003dd4:	f4dff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	078080e7          	jalr	120(ra) # 80002e50 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003de0:	f41ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	20c080e7          	jalr	524(ra) # 80002ff0 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003dec:	f35ff06f          	j	80003d20 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003df0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00813423          	sd	s0,8(sp)
    80003df8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003dfc:	0000b717          	auipc	a4,0xb
    80003e00:	a6472703          	lw	a4,-1436(a4) # 8000e860 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003e04:	00100793          	li	a5,1
    80003e08:	04f70263          	beq	a4,a5,80003e4c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003e0c:	0000b797          	auipc	a5,0xb
    80003e10:	a5478793          	addi	a5,a5,-1452 # 8000e860 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003e14:	00100713          	li	a4,1
    80003e18:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003e1c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003e20:	00007717          	auipc	a4,0x7
    80003e24:	8c873703          	ld	a4,-1848(a4) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e28:	00073703          	ld	a4,0(a4)
    80003e2c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003e30:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003e34:	00007797          	auipc	a5,0x7
    80003e38:	9147b783          	ld	a5,-1772(a5) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003e3c:	0007b783          	ld	a5,0(a5)
    80003e40:	40e787b3          	sub	a5,a5,a4
    80003e44:	ff178793          	addi	a5,a5,-15
    80003e48:	00f73023          	sd	a5,0(a4)
}
    80003e4c:	00813403          	ld	s0,8(sp)
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret

0000000080003e58 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80003e58:	fd010113          	addi	sp,sp,-48
    80003e5c:	02113423          	sd	ra,40(sp)
    80003e60:	02813023          	sd	s0,32(sp)
    80003e64:	00913c23          	sd	s1,24(sp)
    80003e68:	01213823          	sd	s2,16(sp)
    80003e6c:	01313423          	sd	s3,8(sp)
    80003e70:	03010413          	addi	s0,sp,48
    80003e74:	00050493          	mv	s1,a0
    80003e78:	00058993          	mv	s3,a1
    80003e7c:	00060913          	mv	s2,a2
    initMemory();
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	f70080e7          	jalr	-144(ra) # 80003df0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003e88:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003e8c:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80003e90:	0000b797          	auipc	a5,0xb
    80003e94:	9d87b783          	ld	a5,-1576(a5) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    80003e98:	02078e63          	beqz	a5,80003ed4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003e9c:	00007717          	auipc	a4,0x7
    80003ea0:	8ac73703          	ld	a4,-1876(a4) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003ea4:	00073703          	ld	a4,0(a4)
    80003ea8:	03276c63          	bltu	a4,s2,80003ee0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80003eac:	00893783          	ld	a5,8(s2)
    80003eb0:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80003eb4:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80003eb8:	02813083          	ld	ra,40(sp)
    80003ebc:	02013403          	ld	s0,32(sp)
    80003ec0:	01813483          	ld	s1,24(sp)
    80003ec4:	01013903          	ld	s2,16(sp)
    80003ec8:	00813983          	ld	s3,8(sp)
    80003ecc:	03010113          	addi	sp,sp,48
    80003ed0:	00008067          	ret
        headAllocated = newAllocated;
    80003ed4:	0000b797          	auipc	a5,0xb
    80003ed8:	9897ba23          	sd	s1,-1644(a5) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    80003edc:	fddff06f          	j	80003eb8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003ee0:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80003ee4:	0000b797          	auipc	a5,0xb
    80003ee8:	9897b223          	sd	s1,-1660(a5) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
}
    80003eec:	fcdff06f          	j	80003eb8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080003ef0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00113c23          	sd	ra,24(sp)
    80003ef8:	00813823          	sd	s0,16(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	01213023          	sd	s2,0(sp)
    80003f04:	02010413          	addi	s0,sp,32
    80003f08:	00050493          	mv	s1,a0
    80003f0c:	00058913          	mv	s2,a1
    initMemory();
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	ee0080e7          	jalr	-288(ra) # 80003df0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003f18:	0000b797          	auipc	a5,0xb
    80003f1c:	9507b783          	ld	a5,-1712(a5) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003f20:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003f24:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003f28:	00000713          	li	a4,0
    while(curr != 0)
    80003f2c:	00078c63          	beqz	a5,80003f44 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f30:	00f4e863          	bltu	s1,a5,80003f40 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003f34:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f38:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f3c:	ff1ff06f          	j	80003f2c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003f40:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f44:	02070063          	beqz	a4,80003f64 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003f48:	00973423          	sd	s1,8(a4)
}
    80003f4c:	01813083          	ld	ra,24(sp)
    80003f50:	01013403          	ld	s0,16(sp)
    80003f54:	00813483          	ld	s1,8(sp)
    80003f58:	00013903          	ld	s2,0(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret
        headAllocated = newAllocated;
    80003f64:	0000b797          	auipc	a5,0xb
    80003f68:	9097b223          	sd	s1,-1788(a5) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    80003f6c:	fe1ff06f          	j	80003f4c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003f70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00113c23          	sd	ra,24(sp)
    80003f78:	00813823          	sd	s0,16(sp)
    80003f7c:	00913423          	sd	s1,8(sp)
    80003f80:	01213023          	sd	s2,0(sp)
    80003f84:	02010413          	addi	s0,sp,32
    80003f88:	00050913          	mv	s2,a0
    initMemory();
    80003f8c:	00000097          	auipc	ra,0x0
    80003f90:	e64080e7          	jalr	-412(ra) # 80003df0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003f94:	0000b497          	auipc	s1,0xb
    80003f98:	8dc4b483          	ld	s1,-1828(s1) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003f9c:	00000713          	li	a4,0
    while(curr != 0)
    80003fa0:	0c048063          	beqz	s1,80004060 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80003fa4:	0004b783          	ld	a5,0(s1)
    80003fa8:	0127f863          	bgeu	a5,s2,80003fb8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003fac:	00048713          	mv	a4,s1
        curr = curr->next;
    80003fb0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003fb4:	fedff06f          	j	80003fa0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003fb8:	01090693          	addi	a3,s2,16
    80003fbc:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80003fc0:	01078613          	addi	a2,a5,16
    80003fc4:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80003fc8:	00006597          	auipc	a1,0x6
    80003fcc:	7805b583          	ld	a1,1920(a1) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003fd0:	0005b583          	ld	a1,0(a1)
    80003fd4:	06d5e063          	bltu	a1,a3,80004034 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80003fd8:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003fdc:	01000513          	li	a0,16
    80003fe0:	02b57663          	bgeu	a0,a1,8000400c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80003fe4:	0084b783          	ld	a5,8(s1)
    80003fe8:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003fec:	ff058593          	addi	a1,a1,-16
    80003ff0:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    80003ff4:	00070663          	beqz	a4,80004000 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80003ff8:	00d73423          	sd	a3,8(a4)
    80003ffc:	0400006f          	j	8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004000:	0000b797          	auipc	a5,0xb
    80004004:	86d7b823          	sd	a3,-1936(a5) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
    80004008:	0340006f          	j	8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    8000400c:	00070a63          	beqz	a4,80004020 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004010:	0084b683          	ld	a3,8(s1)
    80004014:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004018:	00078913          	mv	s2,a5
    8000401c:	0200006f          	j	8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004020:	0084b703          	ld	a4,8(s1)
    80004024:	0000b697          	auipc	a3,0xb
    80004028:	84e6b623          	sd	a4,-1972(a3) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    8000402c:	00078913          	mv	s2,a5
    80004030:	00c0006f          	j	8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004034:	02070063          	beqz	a4,80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004038:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    8000403c:	00090593          	mv	a1,s2
    80004040:	00048513          	mv	a0,s1
    80004044:	00000097          	auipc	ra,0x0
    80004048:	e14080e7          	jalr	-492(ra) # 80003e58 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000404c:	01048513          	addi	a0,s1,16
            break;
    80004050:	0140006f          	j	80004064 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004054:	0000b797          	auipc	a5,0xb
    80004058:	8007be23          	sd	zero,-2020(a5) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
    8000405c:	fe1ff06f          	j	8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004060:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	02010113          	addi	sp,sp,32
    80004078:	00008067          	ret

000000008000407c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000407c:	ff010113          	addi	sp,sp,-16
    80004080:	00113423          	sd	ra,8(sp)
    80004084:	00813023          	sd	s0,0(sp)
    80004088:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	ee4080e7          	jalr	-284(ra) # 80003f70 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004094:	00813083          	ld	ra,8(sp)
    80004098:	00013403          	ld	s0,0(sp)
    8000409c:	01010113          	addi	sp,sp,16
    800040a0:	00008067          	ret

00000000800040a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800040a4:	fe010113          	addi	sp,sp,-32
    800040a8:	00113c23          	sd	ra,24(sp)
    800040ac:	00813823          	sd	s0,16(sp)
    800040b0:	00913423          	sd	s1,8(sp)
    800040b4:	01213023          	sd	s2,0(sp)
    800040b8:	02010413          	addi	s0,sp,32
    800040bc:	00050493          	mv	s1,a0
    800040c0:	00058913          	mv	s2,a1
    initMemory();
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	d2c080e7          	jalr	-724(ra) # 80003df0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800040cc:	0000a797          	auipc	a5,0xa
    800040d0:	7a47b783          	ld	a5,1956(a5) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800040d4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800040d8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800040dc:	00000713          	li	a4,0
    while(curr != 0)
    800040e0:	00078c63          	beqz	a5,800040f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040e4:	00f4e863          	bltu	s1,a5,800040f4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800040e8:	00078713          	mv	a4,a5
        curr = curr->next;
    800040ec:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800040f0:	ff1ff06f          	j	800040e0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800040f4:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800040f8:	04070663          	beqz	a4,80004144 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800040fc:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004100:	0084b783          	ld	a5,8(s1)
    80004104:	00078a63          	beqz	a5,80004118 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004108:	0004b603          	ld	a2,0(s1)
    8000410c:	01060693          	addi	a3,a2,16
    80004110:	00d486b3          	add	a3,s1,a3
    80004114:	02d78e63          	beq	a5,a3,80004150 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004118:	00070a63          	beqz	a4,8000412c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000411c:	00073683          	ld	a3,0(a4)
    80004120:	01068793          	addi	a5,a3,16
    80004124:	00f707b3          	add	a5,a4,a5
    80004128:	04978263          	beq	a5,s1,8000416c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	00013903          	ld	s2,0(sp)
    8000413c:	02010113          	addi	sp,sp,32
    80004140:	00008067          	ret
        headFree = newSegment;
    80004144:	0000a797          	auipc	a5,0xa
    80004148:	7297b623          	sd	s1,1836(a5) # 8000e870 <_ZN15MemoryAllocator8headFreeE>
    8000414c:	fb5ff06f          	j	80004100 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004150:	0007b683          	ld	a3,0(a5)
    80004154:	00d60633          	add	a2,a2,a3
    80004158:	01060613          	addi	a2,a2,16
    8000415c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004160:	0087b783          	ld	a5,8(a5)
    80004164:	00f4b423          	sd	a5,8(s1)
    80004168:	fb1ff06f          	j	80004118 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000416c:	0004b783          	ld	a5,0(s1)
    80004170:	00f686b3          	add	a3,a3,a5
    80004174:	01068693          	addi	a3,a3,16
    80004178:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000417c:	0084b783          	ld	a5,8(s1)
    80004180:	00f73423          	sd	a5,8(a4)
}
    80004184:	fa9ff06f          	j	8000412c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004188 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004188:	fe010113          	addi	sp,sp,-32
    8000418c:	00113c23          	sd	ra,24(sp)
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00913423          	sd	s1,8(sp)
    80004198:	01213023          	sd	s2,0(sp)
    8000419c:	02010413          	addi	s0,sp,32
    800041a0:	00050913          	mv	s2,a0
    initMemory();
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	c4c080e7          	jalr	-948(ra) # 80003df0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800041ac:	0000a497          	auipc	s1,0xa
    800041b0:	6bc4b483          	ld	s1,1724(s1) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800041b4:	00000713          	li	a4,0
    while(curr != 0)
    800041b8:	02048a63          	beqz	s1,800041ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800041bc:	01048793          	addi	a5,s1,16
    800041c0:	01278863          	beq	a5,s2,800041d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800041c4:	00048713          	mv	a4,s1
        curr = curr->next;
    800041c8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800041cc:	fedff06f          	j	800041b8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800041d0:	02070e63          	beqz	a4,8000420c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800041d4:	0084b783          	ld	a5,8(s1)
    800041d8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800041dc:	0004b583          	ld	a1,0(s1)
    800041e0:	00048513          	mv	a0,s1
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	ec0080e7          	jalr	-320(ra) # 800040a4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800041ec:	02048863          	beqz	s1,8000421c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800041f0:	00000513          	li	a0,0
    else
        return 1;
}
    800041f4:	01813083          	ld	ra,24(sp)
    800041f8:	01013403          	ld	s0,16(sp)
    800041fc:	00813483          	ld	s1,8(sp)
    80004200:	00013903          	ld	s2,0(sp)
    80004204:	02010113          	addi	sp,sp,32
    80004208:	00008067          	ret
                headAllocated = curr->next;
    8000420c:	0084b783          	ld	a5,8(s1)
    80004210:	0000a717          	auipc	a4,0xa
    80004214:	64f73c23          	sd	a5,1624(a4) # 8000e868 <_ZN15MemoryAllocator13headAllocatedE>
    80004218:	fc5ff06f          	j	800041dc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000421c:	00100513          	li	a0,1
    80004220:	fd5ff06f          	j	800041f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004224 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004234:	00000097          	auipc	ra,0x0
    80004238:	f54080e7          	jalr	-172(ra) # 80004188 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000423c:	00813083          	ld	ra,8(sp)
    80004240:	00013403          	ld	s0,0(sp)
    80004244:	01010113          	addi	sp,sp,16
    80004248:	00008067          	ret

000000008000424c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000424c:	ff010113          	addi	sp,sp,-16
    80004250:	00113423          	sd	ra,8(sp)
    80004254:	00813023          	sd	s0,0(sp)
    80004258:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	e20080e7          	jalr	-480(ra) # 8000407c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004264:	00813083          	ld	ra,8(sp)
    80004268:	00013403          	ld	s0,0(sp)
    8000426c:	01010113          	addi	sp,sp,16
    80004270:	00008067          	ret

0000000080004274 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00113423          	sd	ra,8(sp)
    8000427c:	00813023          	sd	s0,0(sp)
    80004280:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004284:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004288:	00651513          	slli	a0,a0,0x6
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	fc0080e7          	jalr	-64(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004294:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	7e4080e7          	jalr	2020(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    800042a0:	00813083          	ld	ra,8(sp)
    800042a4:	00013403          	ld	s0,0(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret

00000000800042b0 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00113423          	sd	ra,8(sp)
    800042b8:	00813023          	sd	s0,0(sp)
    800042bc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	f64080e7          	jalr	-156(ra) # 80004224 <_ZN15MemoryAllocator8mem_freeEPv>
    800042c8:	00813083          	ld	ra,8(sp)
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	00813023          	sd	s0,0(sp)
    800042e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800042e8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	fc4080e7          	jalr	-60(ra) # 800042b0 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800042f4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	784080e7          	jalr	1924(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004300:	00813083          	ld	ra,8(sp)
    80004304:	00013403          	ld	s0,0(sp)
    80004308:	01010113          	addi	sp,sp,16
    8000430c:	00008067          	ret

0000000080004310 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004310:	ff010113          	addi	sp,sp,-16
    80004314:	00813423          	sd	s0,8(sp)
    80004318:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    8000431c:	00b52a23          	sw	a1,20(a0)
    80004320:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004324:	00053423          	sd	zero,8(a0)
    80004328:	00053023          	sd	zero,0(a0)
}
    8000432c:	00813403          	ld	s0,8(sp)
    80004330:	01010113          	addi	sp,sp,16
    80004334:	00008067          	ret

0000000080004338 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004338:	ff010113          	addi	sp,sp,-16
    8000433c:	00813423          	sd	s0,8(sp)
    80004340:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004344:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004348:	00053783          	ld	a5,0(a0)
    8000434c:	00078e63          	beqz	a5,80004368 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004350:	00853783          	ld	a5,8(a0)
    80004354:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004358:	00b53423          	sd	a1,8(a0)
    }
}
    8000435c:	00813403          	ld	s0,8(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004368:	00b53423          	sd	a1,8(a0)
    8000436c:	00b53023          	sd	a1,0(a0)
    80004370:	fedff06f          	j	8000435c <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004374 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00113423          	sd	ra,8(sp)
    8000437c:	00813023          	sd	s0,0(sp)
    80004380:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004384:	00006797          	auipc	a5,0x6
    80004388:	3bc7b783          	ld	a5,956(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000438c:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004390:	00200793          	li	a5,2
    80004394:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	fa0080e7          	jalr	-96(ra) # 80004338 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	290080e7          	jalr	656(ra) # 80002630 <_ZN3PCB8dispatchEv>
}
    800043a8:	00813083          	ld	ra,8(sp)
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800043b8:	00006797          	auipc	a5,0x6
    800043bc:	3887b783          	ld	a5,904(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    800043c0:	0007b783          	ld	a5,0(a5)
    800043c4:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800043c8:	01052783          	lw	a5,16(a0)
    800043cc:	fff7879b          	addiw	a5,a5,-1
    800043d0:	00f52823          	sw	a5,16(a0)
    800043d4:	02079713          	slli	a4,a5,0x20
    800043d8:	00074663          	bltz	a4,800043e4 <_ZN10KSemaphore4waitEv+0x2c>
}
    800043dc:	00000513          	li	a0,0
    800043e0:	00008067          	ret
{
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00113423          	sd	ra,8(sp)
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	01010413          	addi	s0,sp,16
        block();
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	f80080e7          	jalr	-128(ra) # 80004374 <_ZN10KSemaphore5blockEv>
}
    800043fc:	00000513          	li	a0,0
    80004400:	00813083          	ld	ra,8(sp)
    80004404:	00013403          	ld	s0,0(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret

0000000080004410 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004410:	ff010113          	addi	sp,sp,-16
    80004414:	00813423          	sd	s0,8(sp)
    80004418:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000441c:	00053503          	ld	a0,0(a0)
    80004420:	00813403          	ld	s0,8(sp)
    80004424:	01010113          	addi	sp,sp,16
    80004428:	00008067          	ret

000000008000442c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000442c:	ff010113          	addi	sp,sp,-16
    80004430:	00813423          	sd	s0,8(sp)
    80004434:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004438:	00053783          	ld	a5,0(a0)
    8000443c:	00078c63          	beqz	a5,80004454 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004440:	0087b703          	ld	a4,8(a5)
    80004444:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004448:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000444c:	00053783          	ld	a5,0(a0)
    80004450:	00078863          	beqz	a5,80004460 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004454:	00813403          	ld	s0,8(sp)
    80004458:	01010113          	addi	sp,sp,16
    8000445c:	00008067          	ret
        tailBlocked =0;
    80004460:	00053423          	sd	zero,8(a0)
    80004464:	ff1ff06f          	j	80004454 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004468 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	01213023          	sd	s2,0(sp)
    8000447c:	02010413          	addi	s0,sp,32
    80004480:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004484:	00090513          	mv	a0,s2
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	f88080e7          	jalr	-120(ra) # 80004410 <_ZN10KSemaphore15getFirstBlockedEv>
    80004490:	00050493          	mv	s1,a0
    80004494:	02050463          	beqz	a0,800044bc <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004498:	00090513          	mv	a0,s2
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	f90080e7          	jalr	-112(ra) # 8000442c <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800044a4:	00100793          	li	a5,1
    800044a8:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800044ac:	00048513          	mv	a0,s1
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	e10080e7          	jalr	-496(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800044b8:	fcdff06f          	j	80004484 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	00813483          	ld	s1,8(sp)
    800044c8:	00013903          	ld	s2,0(sp)
    800044cc:	02010113          	addi	sp,sp,32
    800044d0:	00008067          	ret

00000000800044d4 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800044d4:	fe010113          	addi	sp,sp,-32
    800044d8:	00113c23          	sd	ra,24(sp)
    800044dc:	00813823          	sd	s0,16(sp)
    800044e0:	00913423          	sd	s1,8(sp)
    800044e4:	01213023          	sd	s2,0(sp)
    800044e8:	02010413          	addi	s0,sp,32
    800044ec:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	f20080e7          	jalr	-224(ra) # 80004410 <_ZN10KSemaphore15getFirstBlockedEv>
    800044f8:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800044fc:	00090513          	mv	a0,s2
    80004500:	00000097          	auipc	ra,0x0
    80004504:	f2c080e7          	jalr	-212(ra) # 8000442c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004508:	00048863          	beqz	s1,80004518 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    8000450c:	00048513          	mv	a0,s1
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	db0080e7          	jalr	-592(ra) # 800032c0 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004518:	01813083          	ld	ra,24(sp)
    8000451c:	01013403          	ld	s0,16(sp)
    80004520:	00813483          	ld	s1,8(sp)
    80004524:	00013903          	ld	s2,0(sp)
    80004528:	02010113          	addi	sp,sp,32
    8000452c:	00008067          	ret

0000000080004530 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004530:	01052783          	lw	a5,16(a0)
    80004534:	0017879b          	addiw	a5,a5,1
    80004538:	0007871b          	sext.w	a4,a5
    8000453c:	00f52823          	sw	a5,16(a0)
    80004540:	00e05663          	blez	a4,8000454c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004544:	00000513          	li	a0,0
    80004548:	00008067          	ret
uint64 KSemaphore::signal() {
    8000454c:	ff010113          	addi	sp,sp,-16
    80004550:	00113423          	sd	ra,8(sp)
    80004554:	00813023          	sd	s0,0(sp)
    80004558:	01010413          	addi	s0,sp,16
        unblock();
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	f78080e7          	jalr	-136(ra) # 800044d4 <_ZN10KSemaphore7unblockEv>
}
    80004564:	00000513          	li	a0,0
    80004568:	00813083          	ld	ra,8(sp)
    8000456c:	00013403          	ld	s0,0(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret

0000000080004578 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00113423          	sd	ra,8(sp)
    80004580:	00813023          	sd	s0,0(sp)
    80004584:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004588:	00000097          	auipc	ra,0x0
    8000458c:	cc4080e7          	jalr	-828(ra) # 8000424c <_ZN15MemoryAllocator7kmallocEm>
}
    80004590:	00813083          	ld	ra,8(sp)
    80004594:	00013403          	ld	s0,0(sp)
    80004598:	01010113          	addi	sp,sp,16
    8000459c:	00008067          	ret

00000000800045a0 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800045a0:	fd010113          	addi	sp,sp,-48
    800045a4:	02113423          	sd	ra,40(sp)
    800045a8:	02813023          	sd	s0,32(sp)
    800045ac:	00913c23          	sd	s1,24(sp)
    800045b0:	01213823          	sd	s2,16(sp)
    800045b4:	01313423          	sd	s3,8(sp)
    800045b8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800045bc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800045c0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800045c4:	01800513          	li	a0,24
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	fb0080e7          	jalr	-80(ra) # 80004578 <_ZN10KSemaphorenwEm>
    800045d0:	00050493          	mv	s1,a0
    800045d4:	0009859b          	sext.w	a1,s3
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	d38080e7          	jalr	-712(ra) # 80004310 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800045e0:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800045e4:	02048663          	beqz	s1,80004610 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800045e8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800045ec:	fffff097          	auipc	ra,0xfffff
    800045f0:	490080e7          	jalr	1168(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    800045f4:	02813083          	ld	ra,40(sp)
    800045f8:	02013403          	ld	s0,32(sp)
    800045fc:	01813483          	ld	s1,24(sp)
    80004600:	01013903          	ld	s2,16(sp)
    80004604:	00813983          	ld	s3,8(sp)
    80004608:	03010113          	addi	sp,sp,48
    8000460c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004610:	fff00513          	li	a0,-1
    80004614:	fd9ff06f          	j	800045ec <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004618 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00113423          	sd	ra,8(sp)
    80004620:	00813023          	sd	s0,0(sp)
    80004624:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	c88080e7          	jalr	-888(ra) # 800042b0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004630:	00813083          	ld	ra,8(sp)
    80004634:	00013403          	ld	s0,0(sp)
    80004638:	01010113          	addi	sp,sp,16
    8000463c:	00008067          	ret

0000000080004640 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00113423          	sd	ra,8(sp)
    80004648:	00813023          	sd	s0,0(sp)
    8000464c:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004650:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    80004654:	00000097          	auipc	ra,0x0
    80004658:	d64080e7          	jalr	-668(ra) # 800043b8 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    8000465c:	00006797          	auipc	a5,0x6
    80004660:	0e47b783          	ld	a5,228(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004664:	0007b783          	ld	a5,0(a5)
    80004668:	0587c783          	lbu	a5,88(a5)
    8000466c:	02078063          	beqz	a5,8000468c <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004670:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004674:	fffff097          	auipc	ra,0xfffff
    80004678:	408080e7          	jalr	1032(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    8000467c:	00813083          	ld	ra,8(sp)
    80004680:	00013403          	ld	s0,0(sp)
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    8000468c:	00000513          	li	a0,0
    80004690:	fe5ff06f          	j	80004674 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080004694 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80004694:	ff010113          	addi	sp,sp,-16
    80004698:	00113423          	sd	ra,8(sp)
    8000469c:	00813023          	sd	s0,0(sp)
    800046a0:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800046a4:	00058513          	mv	a0,a1
    if (kSem == 0)
    800046a8:	02050463          	beqz	a0,800046d0 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	e84080e7          	jalr	-380(ra) # 80004530 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800046b4:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	3c4080e7          	jalr	964(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    800046c0:	00813083          	ld	ra,8(sp)
    800046c4:	00013403          	ld	s0,0(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800046d0:	00100513          	li	a0,1
    800046d4:	fe5ff06f          	j	800046b8 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800046d8 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800046d8:	fe010113          	addi	sp,sp,-32
    800046dc:	00113c23          	sd	ra,24(sp)
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00913423          	sd	s1,8(sp)
    800046e8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800046ec:	00058493          	mv	s1,a1
    delete kSem;
    800046f0:	00048e63          	beqz	s1,8000470c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800046f4:	00048513          	mv	a0,s1
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	d70080e7          	jalr	-656(ra) # 80004468 <_ZN10KSemaphoreD1Ev>
    80004700:	00048513          	mv	a0,s1
    80004704:	00000097          	auipc	ra,0x0
    80004708:	f14080e7          	jalr	-236(ra) # 80004618 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    8000470c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004710:	fffff097          	auipc	ra,0xfffff
    80004714:	36c080e7          	jalr	876(ra) # 80003a7c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004718:	01813083          	ld	ra,24(sp)
    8000471c:	01013403          	ld	s0,16(sp)
    80004720:	00813483          	ld	s1,8(sp)
    80004724:	02010113          	addi	sp,sp,32
    80004728:	00008067          	ret

000000008000472c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000472c:	fe010113          	addi	sp,sp,-32
    80004730:	00113c23          	sd	ra,24(sp)
    80004734:	00813823          	sd	s0,16(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	02010413          	addi	s0,sp,32
    80004740:	00050493          	mv	s1,a0
    LOCK();
    80004744:	00100613          	li	a2,1
    80004748:	00000593          	li	a1,0
    8000474c:	0000a517          	auipc	a0,0xa
    80004750:	12c50513          	addi	a0,a0,300 # 8000e878 <lockPrint>
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	ac4080e7          	jalr	-1340(ra) # 80001218 <copy_and_swap>
    8000475c:	fe0514e3          	bnez	a0,80004744 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004760:	0004c503          	lbu	a0,0(s1)
    80004764:	00050a63          	beqz	a0,80004778 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	dd0080e7          	jalr	-560(ra) # 80001538 <_Z4putcc>
        string++;
    80004770:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004774:	fedff06f          	j	80004760 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004778:	00000613          	li	a2,0
    8000477c:	00100593          	li	a1,1
    80004780:	0000a517          	auipc	a0,0xa
    80004784:	0f850513          	addi	a0,a0,248 # 8000e878 <lockPrint>
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	a90080e7          	jalr	-1392(ra) # 80001218 <copy_and_swap>
    80004790:	fe0514e3          	bnez	a0,80004778 <_Z11printStringPKc+0x4c>
}
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800047a8:	fd010113          	addi	sp,sp,-48
    800047ac:	02113423          	sd	ra,40(sp)
    800047b0:	02813023          	sd	s0,32(sp)
    800047b4:	00913c23          	sd	s1,24(sp)
    800047b8:	01213823          	sd	s2,16(sp)
    800047bc:	01313423          	sd	s3,8(sp)
    800047c0:	01413023          	sd	s4,0(sp)
    800047c4:	03010413          	addi	s0,sp,48
    800047c8:	00050993          	mv	s3,a0
    800047cc:	00058a13          	mv	s4,a1
    LOCK();
    800047d0:	00100613          	li	a2,1
    800047d4:	00000593          	li	a1,0
    800047d8:	0000a517          	auipc	a0,0xa
    800047dc:	0a050513          	addi	a0,a0,160 # 8000e878 <lockPrint>
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	a38080e7          	jalr	-1480(ra) # 80001218 <copy_and_swap>
    800047e8:	fe0514e3          	bnez	a0,800047d0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800047ec:	00000913          	li	s2,0
    800047f0:	00090493          	mv	s1,s2
    800047f4:	0019091b          	addiw	s2,s2,1
    800047f8:	03495a63          	bge	s2,s4,8000482c <_Z9getStringPci+0x84>
        cc = getc();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	d14080e7          	jalr	-748(ra) # 80001510 <_Z4getcv>
        if(cc < 1)
    80004804:	02050463          	beqz	a0,8000482c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004808:	009984b3          	add	s1,s3,s1
    8000480c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004810:	00a00793          	li	a5,10
    80004814:	00f50a63          	beq	a0,a5,80004828 <_Z9getStringPci+0x80>
    80004818:	00d00793          	li	a5,13
    8000481c:	fcf51ae3          	bne	a0,a5,800047f0 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004820:	00090493          	mv	s1,s2
    80004824:	0080006f          	j	8000482c <_Z9getStringPci+0x84>
    80004828:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000482c:	009984b3          	add	s1,s3,s1
    80004830:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004834:	00000613          	li	a2,0
    80004838:	00100593          	li	a1,1
    8000483c:	0000a517          	auipc	a0,0xa
    80004840:	03c50513          	addi	a0,a0,60 # 8000e878 <lockPrint>
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	9d4080e7          	jalr	-1580(ra) # 80001218 <copy_and_swap>
    8000484c:	fe0514e3          	bnez	a0,80004834 <_Z9getStringPci+0x8c>
    return buf;
}
    80004850:	00098513          	mv	a0,s3
    80004854:	02813083          	ld	ra,40(sp)
    80004858:	02013403          	ld	s0,32(sp)
    8000485c:	01813483          	ld	s1,24(sp)
    80004860:	01013903          	ld	s2,16(sp)
    80004864:	00813983          	ld	s3,8(sp)
    80004868:	00013a03          	ld	s4,0(sp)
    8000486c:	03010113          	addi	sp,sp,48
    80004870:	00008067          	ret

0000000080004874 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004874:	ff010113          	addi	sp,sp,-16
    80004878:	00813423          	sd	s0,8(sp)
    8000487c:	01010413          	addi	s0,sp,16
    80004880:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004884:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004888:	0006c603          	lbu	a2,0(a3)
    8000488c:	fd06071b          	addiw	a4,a2,-48
    80004890:	0ff77713          	andi	a4,a4,255
    80004894:	00900793          	li	a5,9
    80004898:	02e7e063          	bltu	a5,a4,800048b8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000489c:	0025179b          	slliw	a5,a0,0x2
    800048a0:	00a787bb          	addw	a5,a5,a0
    800048a4:	0017979b          	slliw	a5,a5,0x1
    800048a8:	00168693          	addi	a3,a3,1
    800048ac:	00c787bb          	addw	a5,a5,a2
    800048b0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800048b4:	fd5ff06f          	j	80004888 <_Z11stringToIntPKc+0x14>
    return n;
}
    800048b8:	00813403          	ld	s0,8(sp)
    800048bc:	01010113          	addi	sp,sp,16
    800048c0:	00008067          	ret

00000000800048c4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800048c4:	fc010113          	addi	sp,sp,-64
    800048c8:	02113c23          	sd	ra,56(sp)
    800048cc:	02813823          	sd	s0,48(sp)
    800048d0:	02913423          	sd	s1,40(sp)
    800048d4:	03213023          	sd	s2,32(sp)
    800048d8:	01313c23          	sd	s3,24(sp)
    800048dc:	04010413          	addi	s0,sp,64
    800048e0:	00050493          	mv	s1,a0
    800048e4:	00058913          	mv	s2,a1
    800048e8:	00060993          	mv	s3,a2
    LOCK();
    800048ec:	00100613          	li	a2,1
    800048f0:	00000593          	li	a1,0
    800048f4:	0000a517          	auipc	a0,0xa
    800048f8:	f8450513          	addi	a0,a0,-124 # 8000e878 <lockPrint>
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	91c080e7          	jalr	-1764(ra) # 80001218 <copy_and_swap>
    80004904:	fe0514e3          	bnez	a0,800048ec <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004908:	00098463          	beqz	s3,80004910 <_Z8printIntiii+0x4c>
    8000490c:	0804c463          	bltz	s1,80004994 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004910:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004914:	00000593          	li	a1,0
    }

    i = 0;
    80004918:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000491c:	0009079b          	sext.w	a5,s2
    80004920:	0325773b          	remuw	a4,a0,s2
    80004924:	00048613          	mv	a2,s1
    80004928:	0014849b          	addiw	s1,s1,1
    8000492c:	02071693          	slli	a3,a4,0x20
    80004930:	0206d693          	srli	a3,a3,0x20
    80004934:	00006717          	auipc	a4,0x6
    80004938:	d0c70713          	addi	a4,a4,-756 # 8000a640 <digits>
    8000493c:	00d70733          	add	a4,a4,a3
    80004940:	00074683          	lbu	a3,0(a4)
    80004944:	fd040713          	addi	a4,s0,-48
    80004948:	00c70733          	add	a4,a4,a2
    8000494c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004950:	0005071b          	sext.w	a4,a0
    80004954:	0325553b          	divuw	a0,a0,s2
    80004958:	fcf772e3          	bgeu	a4,a5,8000491c <_Z8printIntiii+0x58>
    if(neg)
    8000495c:	00058c63          	beqz	a1,80004974 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004960:	fd040793          	addi	a5,s0,-48
    80004964:	009784b3          	add	s1,a5,s1
    80004968:	02d00793          	li	a5,45
    8000496c:	fef48823          	sb	a5,-16(s1)
    80004970:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004974:	fff4849b          	addiw	s1,s1,-1
    80004978:	0204c463          	bltz	s1,800049a0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000497c:	fd040793          	addi	a5,s0,-48
    80004980:	009787b3          	add	a5,a5,s1
    80004984:	ff07c503          	lbu	a0,-16(a5)
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	bb0080e7          	jalr	-1104(ra) # 80001538 <_Z4putcc>
    80004990:	fe5ff06f          	j	80004974 <_Z8printIntiii+0xb0>
        x = -xx;
    80004994:	4090053b          	negw	a0,s1
        neg = 1;
    80004998:	00100593          	li	a1,1
        x = -xx;
    8000499c:	f7dff06f          	j	80004918 <_Z8printIntiii+0x54>

    UNLOCK();
    800049a0:	00000613          	li	a2,0
    800049a4:	00100593          	li	a1,1
    800049a8:	0000a517          	auipc	a0,0xa
    800049ac:	ed050513          	addi	a0,a0,-304 # 8000e878 <lockPrint>
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	868080e7          	jalr	-1944(ra) # 80001218 <copy_and_swap>
    800049b8:	fe0514e3          	bnez	a0,800049a0 <_Z8printIntiii+0xdc>
}
    800049bc:	03813083          	ld	ra,56(sp)
    800049c0:	03013403          	ld	s0,48(sp)
    800049c4:	02813483          	ld	s1,40(sp)
    800049c8:	02013903          	ld	s2,32(sp)
    800049cc:	01813983          	ld	s3,24(sp)
    800049d0:	04010113          	addi	sp,sp,64
    800049d4:	00008067          	ret

00000000800049d8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800049d8:	fd010113          	addi	sp,sp,-48
    800049dc:	02113423          	sd	ra,40(sp)
    800049e0:	02813023          	sd	s0,32(sp)
    800049e4:	00913c23          	sd	s1,24(sp)
    800049e8:	01213823          	sd	s2,16(sp)
    800049ec:	01313423          	sd	s3,8(sp)
    800049f0:	03010413          	addi	s0,sp,48
    800049f4:	00050493          	mv	s1,a0
    800049f8:	00058913          	mv	s2,a1
    800049fc:	0015879b          	addiw	a5,a1,1
    80004a00:	0007851b          	sext.w	a0,a5
    80004a04:	00f4a023          	sw	a5,0(s1)
    80004a08:	0004a823          	sw	zero,16(s1)
    80004a0c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004a10:	00251513          	slli	a0,a0,0x2
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	844080e7          	jalr	-1980(ra) # 80001258 <_Z9mem_allocm>
    80004a1c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004a20:	01000513          	li	a0,16
    80004a24:	fffff097          	auipc	ra,0xfffff
    80004a28:	a70080e7          	jalr	-1424(ra) # 80003494 <_Znwm>
    80004a2c:	00050993          	mv	s3,a0
    80004a30:	00000593          	li	a1,0
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	cb4080e7          	jalr	-844(ra) # 800036e8 <_ZN9SemaphoreC1Ej>
    80004a3c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004a40:	01000513          	li	a0,16
    80004a44:	fffff097          	auipc	ra,0xfffff
    80004a48:	a50080e7          	jalr	-1456(ra) # 80003494 <_Znwm>
    80004a4c:	00050993          	mv	s3,a0
    80004a50:	00090593          	mv	a1,s2
    80004a54:	fffff097          	auipc	ra,0xfffff
    80004a58:	c94080e7          	jalr	-876(ra) # 800036e8 <_ZN9SemaphoreC1Ej>
    80004a5c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004a60:	01000513          	li	a0,16
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	a30080e7          	jalr	-1488(ra) # 80003494 <_Znwm>
    80004a6c:	00050913          	mv	s2,a0
    80004a70:	00100593          	li	a1,1
    80004a74:	fffff097          	auipc	ra,0xfffff
    80004a78:	c74080e7          	jalr	-908(ra) # 800036e8 <_ZN9SemaphoreC1Ej>
    80004a7c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004a80:	01000513          	li	a0,16
    80004a84:	fffff097          	auipc	ra,0xfffff
    80004a88:	a10080e7          	jalr	-1520(ra) # 80003494 <_Znwm>
    80004a8c:	00050913          	mv	s2,a0
    80004a90:	00100593          	li	a1,1
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	c54080e7          	jalr	-940(ra) # 800036e8 <_ZN9SemaphoreC1Ej>
    80004a9c:	0324b823          	sd	s2,48(s1)
}
    80004aa0:	02813083          	ld	ra,40(sp)
    80004aa4:	02013403          	ld	s0,32(sp)
    80004aa8:	01813483          	ld	s1,24(sp)
    80004aac:	01013903          	ld	s2,16(sp)
    80004ab0:	00813983          	ld	s3,8(sp)
    80004ab4:	03010113          	addi	sp,sp,48
    80004ab8:	00008067          	ret
    80004abc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004ac0:	00098513          	mv	a0,s3
    80004ac4:	fffff097          	auipc	ra,0xfffff
    80004ac8:	9f8080e7          	jalr	-1544(ra) # 800034bc <_ZdlPv>
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	0000b097          	auipc	ra,0xb
    80004ad4:	e88080e7          	jalr	-376(ra) # 8000f958 <_Unwind_Resume>
    80004ad8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004adc:	00098513          	mv	a0,s3
    80004ae0:	fffff097          	auipc	ra,0xfffff
    80004ae4:	9dc080e7          	jalr	-1572(ra) # 800034bc <_ZdlPv>
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	0000b097          	auipc	ra,0xb
    80004af0:	e6c080e7          	jalr	-404(ra) # 8000f958 <_Unwind_Resume>
    80004af4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004af8:	00090513          	mv	a0,s2
    80004afc:	fffff097          	auipc	ra,0xfffff
    80004b00:	9c0080e7          	jalr	-1600(ra) # 800034bc <_ZdlPv>
    80004b04:	00048513          	mv	a0,s1
    80004b08:	0000b097          	auipc	ra,0xb
    80004b0c:	e50080e7          	jalr	-432(ra) # 8000f958 <_Unwind_Resume>
    80004b10:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004b14:	00090513          	mv	a0,s2
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	9a4080e7          	jalr	-1628(ra) # 800034bc <_ZdlPv>
    80004b20:	00048513          	mv	a0,s1
    80004b24:	0000b097          	auipc	ra,0xb
    80004b28:	e34080e7          	jalr	-460(ra) # 8000f958 <_Unwind_Resume>

0000000080004b2c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004b2c:	fe010113          	addi	sp,sp,-32
    80004b30:	00113c23          	sd	ra,24(sp)
    80004b34:	00813823          	sd	s0,16(sp)
    80004b38:	00913423          	sd	s1,8(sp)
    80004b3c:	01213023          	sd	s2,0(sp)
    80004b40:	02010413          	addi	s0,sp,32
    80004b44:	00050493          	mv	s1,a0
    80004b48:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004b4c:	01853503          	ld	a0,24(a0)
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	b60080e7          	jalr	-1184(ra) # 800036b0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004b58:	0304b503          	ld	a0,48(s1)
    80004b5c:	fffff097          	auipc	ra,0xfffff
    80004b60:	b54080e7          	jalr	-1196(ra) # 800036b0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004b64:	0084b783          	ld	a5,8(s1)
    80004b68:	0144a703          	lw	a4,20(s1)
    80004b6c:	00271713          	slli	a4,a4,0x2
    80004b70:	00e787b3          	add	a5,a5,a4
    80004b74:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004b78:	0144a783          	lw	a5,20(s1)
    80004b7c:	0017879b          	addiw	a5,a5,1
    80004b80:	0004a703          	lw	a4,0(s1)
    80004b84:	02e7e7bb          	remw	a5,a5,a4
    80004b88:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004b8c:	0304b503          	ld	a0,48(s1)
    80004b90:	fffff097          	auipc	ra,0xfffff
    80004b94:	ba4080e7          	jalr	-1116(ra) # 80003734 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004b98:	0204b503          	ld	a0,32(s1)
    80004b9c:	fffff097          	auipc	ra,0xfffff
    80004ba0:	b98080e7          	jalr	-1128(ra) # 80003734 <_ZN9Semaphore6signalEv>

}
    80004ba4:	01813083          	ld	ra,24(sp)
    80004ba8:	01013403          	ld	s0,16(sp)
    80004bac:	00813483          	ld	s1,8(sp)
    80004bb0:	00013903          	ld	s2,0(sp)
    80004bb4:	02010113          	addi	sp,sp,32
    80004bb8:	00008067          	ret

0000000080004bbc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00113c23          	sd	ra,24(sp)
    80004bc4:	00813823          	sd	s0,16(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	01213023          	sd	s2,0(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004bd8:	02053503          	ld	a0,32(a0)
    80004bdc:	fffff097          	auipc	ra,0xfffff
    80004be0:	ad4080e7          	jalr	-1324(ra) # 800036b0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004be4:	0284b503          	ld	a0,40(s1)
    80004be8:	fffff097          	auipc	ra,0xfffff
    80004bec:	ac8080e7          	jalr	-1336(ra) # 800036b0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004bf0:	0084b703          	ld	a4,8(s1)
    80004bf4:	0104a783          	lw	a5,16(s1)
    80004bf8:	00279693          	slli	a3,a5,0x2
    80004bfc:	00d70733          	add	a4,a4,a3
    80004c00:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004c04:	0017879b          	addiw	a5,a5,1
    80004c08:	0004a703          	lw	a4,0(s1)
    80004c0c:	02e7e7bb          	remw	a5,a5,a4
    80004c10:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004c14:	0284b503          	ld	a0,40(s1)
    80004c18:	fffff097          	auipc	ra,0xfffff
    80004c1c:	b1c080e7          	jalr	-1252(ra) # 80003734 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004c20:	0184b503          	ld	a0,24(s1)
    80004c24:	fffff097          	auipc	ra,0xfffff
    80004c28:	b10080e7          	jalr	-1264(ra) # 80003734 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004c2c:	00090513          	mv	a0,s2
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	00013903          	ld	s2,0(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret

0000000080004c48 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004c48:	fe010113          	addi	sp,sp,-32
    80004c4c:	00113c23          	sd	ra,24(sp)
    80004c50:	00813823          	sd	s0,16(sp)
    80004c54:	00913423          	sd	s1,8(sp)
    80004c58:	01213023          	sd	s2,0(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    80004c60:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004c64:	02853503          	ld	a0,40(a0)
    80004c68:	fffff097          	auipc	ra,0xfffff
    80004c6c:	a48080e7          	jalr	-1464(ra) # 800036b0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004c70:	0304b503          	ld	a0,48(s1)
    80004c74:	fffff097          	auipc	ra,0xfffff
    80004c78:	a3c080e7          	jalr	-1476(ra) # 800036b0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004c7c:	0144a783          	lw	a5,20(s1)
    80004c80:	0104a903          	lw	s2,16(s1)
    80004c84:	0327ce63          	blt	a5,s2,80004cc0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004c88:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004c8c:	0304b503          	ld	a0,48(s1)
    80004c90:	fffff097          	auipc	ra,0xfffff
    80004c94:	aa4080e7          	jalr	-1372(ra) # 80003734 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004c98:	0284b503          	ld	a0,40(s1)
    80004c9c:	fffff097          	auipc	ra,0xfffff
    80004ca0:	a98080e7          	jalr	-1384(ra) # 80003734 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ca4:	00090513          	mv	a0,s2
    80004ca8:	01813083          	ld	ra,24(sp)
    80004cac:	01013403          	ld	s0,16(sp)
    80004cb0:	00813483          	ld	s1,8(sp)
    80004cb4:	00013903          	ld	s2,0(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret
        ret = cap - head + tail;
    80004cc0:	0004a703          	lw	a4,0(s1)
    80004cc4:	4127093b          	subw	s2,a4,s2
    80004cc8:	00f9093b          	addw	s2,s2,a5
    80004ccc:	fc1ff06f          	j	80004c8c <_ZN9BufferCPP6getCntEv+0x44>

0000000080004cd0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    80004ce4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004ce8:	00a00513          	li	a0,10
    80004cec:	fffff097          	auipc	ra,0xfffff
    80004cf0:	aa8080e7          	jalr	-1368(ra) # 80003794 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004cf4:	00003517          	auipc	a0,0x3
    80004cf8:	5fc50513          	addi	a0,a0,1532 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	a30080e7          	jalr	-1488(ra) # 8000472c <_Z11printStringPKc>
    while (getCnt()) {
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	f40080e7          	jalr	-192(ra) # 80004c48 <_ZN9BufferCPP6getCntEv>
    80004d10:	02050c63          	beqz	a0,80004d48 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004d14:	0084b783          	ld	a5,8(s1)
    80004d18:	0104a703          	lw	a4,16(s1)
    80004d1c:	00271713          	slli	a4,a4,0x2
    80004d20:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004d24:	0007c503          	lbu	a0,0(a5)
    80004d28:	fffff097          	auipc	ra,0xfffff
    80004d2c:	a6c080e7          	jalr	-1428(ra) # 80003794 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004d30:	0104a783          	lw	a5,16(s1)
    80004d34:	0017879b          	addiw	a5,a5,1
    80004d38:	0004a703          	lw	a4,0(s1)
    80004d3c:	02e7e7bb          	remw	a5,a5,a4
    80004d40:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004d44:	fc1ff06f          	j	80004d04 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004d48:	02100513          	li	a0,33
    80004d4c:	fffff097          	auipc	ra,0xfffff
    80004d50:	a48080e7          	jalr	-1464(ra) # 80003794 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004d54:	00a00513          	li	a0,10
    80004d58:	fffff097          	auipc	ra,0xfffff
    80004d5c:	a3c080e7          	jalr	-1476(ra) # 80003794 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004d60:	0084b503          	ld	a0,8(s1)
    80004d64:	ffffc097          	auipc	ra,0xffffc
    80004d68:	524080e7          	jalr	1316(ra) # 80001288 <_Z8mem_freePv>
    delete itemAvailable;
    80004d6c:	0204b503          	ld	a0,32(s1)
    80004d70:	00050863          	beqz	a0,80004d80 <_ZN9BufferCPPD1Ev+0xb0>
    80004d74:	00053783          	ld	a5,0(a0)
    80004d78:	0087b783          	ld	a5,8(a5)
    80004d7c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004d80:	0184b503          	ld	a0,24(s1)
    80004d84:	00050863          	beqz	a0,80004d94 <_ZN9BufferCPPD1Ev+0xc4>
    80004d88:	00053783          	ld	a5,0(a0)
    80004d8c:	0087b783          	ld	a5,8(a5)
    80004d90:	000780e7          	jalr	a5
    delete mutexTail;
    80004d94:	0304b503          	ld	a0,48(s1)
    80004d98:	00050863          	beqz	a0,80004da8 <_ZN9BufferCPPD1Ev+0xd8>
    80004d9c:	00053783          	ld	a5,0(a0)
    80004da0:	0087b783          	ld	a5,8(a5)
    80004da4:	000780e7          	jalr	a5
    delete mutexHead;
    80004da8:	0284b503          	ld	a0,40(s1)
    80004dac:	00050863          	beqz	a0,80004dbc <_ZN9BufferCPPD1Ev+0xec>
    80004db0:	00053783          	ld	a5,0(a0)
    80004db4:	0087b783          	ld	a5,8(a5)
    80004db8:	000780e7          	jalr	a5
}
    80004dbc:	01813083          	ld	ra,24(sp)
    80004dc0:	01013403          	ld	s0,16(sp)
    80004dc4:	00813483          	ld	s1,8(sp)
    80004dc8:	02010113          	addi	sp,sp,32
    80004dcc:	00008067          	ret

0000000080004dd0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80004dd0:	f8010113          	addi	sp,sp,-128
    80004dd4:	06113c23          	sd	ra,120(sp)
    80004dd8:	06813823          	sd	s0,112(sp)
    80004ddc:	06913423          	sd	s1,104(sp)
    80004de0:	07213023          	sd	s2,96(sp)
    80004de4:	05313c23          	sd	s3,88(sp)
    80004de8:	05413823          	sd	s4,80(sp)
    80004dec:	05513423          	sd	s5,72(sp)
    80004df0:	05613023          	sd	s6,64(sp)
    80004df4:	03713c23          	sd	s7,56(sp)
    80004df8:	03813823          	sd	s8,48(sp)
    80004dfc:	03913423          	sd	s9,40(sp)
    80004e00:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80004e04:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80004e08:	00003517          	auipc	a0,0x3
    80004e0c:	50050513          	addi	a0,a0,1280 # 80008308 <CONSOLE_STATUS+0x2f8>
    80004e10:	00000097          	auipc	ra,0x0
    80004e14:	91c080e7          	jalr	-1764(ra) # 8000472c <_Z11printStringPKc>
        getString(input, 30);
    80004e18:	01e00593          	li	a1,30
    80004e1c:	f8040493          	addi	s1,s0,-128
    80004e20:	00048513          	mv	a0,s1
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	984080e7          	jalr	-1660(ra) # 800047a8 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80004e2c:	00048513          	mv	a0,s1
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	a44080e7          	jalr	-1468(ra) # 80004874 <_Z11stringToIntPKc>
    80004e38:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80004e3c:	00003517          	auipc	a0,0x3
    80004e40:	4ec50513          	addi	a0,a0,1260 # 80008328 <CONSOLE_STATUS+0x318>
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	8e8080e7          	jalr	-1816(ra) # 8000472c <_Z11printStringPKc>
        getString(input, 30);
    80004e4c:	01e00593          	li	a1,30
    80004e50:	00048513          	mv	a0,s1
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	954080e7          	jalr	-1708(ra) # 800047a8 <_Z9getStringPci>
        n = stringToInt(input);
    80004e5c:	00048513          	mv	a0,s1
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	a14080e7          	jalr	-1516(ra) # 80004874 <_Z11stringToIntPKc>
    80004e68:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004e6c:	00003517          	auipc	a0,0x3
    80004e70:	4dc50513          	addi	a0,a0,1244 # 80008348 <CONSOLE_STATUS+0x338>
    80004e74:	00000097          	auipc	ra,0x0
    80004e78:	8b8080e7          	jalr	-1864(ra) # 8000472c <_Z11printStringPKc>
    80004e7c:	00000613          	li	a2,0
    80004e80:	00a00593          	li	a1,10
    80004e84:	00098513          	mv	a0,s3
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	a3c080e7          	jalr	-1476(ra) # 800048c4 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004e90:	00003517          	auipc	a0,0x3
    80004e94:	4d050513          	addi	a0,a0,1232 # 80008360 <CONSOLE_STATUS+0x350>
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	894080e7          	jalr	-1900(ra) # 8000472c <_Z11printStringPKc>
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00a00593          	li	a1,10
    80004ea8:	00048513          	mv	a0,s1
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	a18080e7          	jalr	-1512(ra) # 800048c4 <_Z8printIntiii>
        printString(".\n");
    80004eb4:	00003517          	auipc	a0,0x3
    80004eb8:	4c450513          	addi	a0,a0,1220 # 80008378 <CONSOLE_STATUS+0x368>
    80004ebc:	00000097          	auipc	ra,0x0
    80004ec0:	870080e7          	jalr	-1936(ra) # 8000472c <_Z11printStringPKc>
        if(threadNum > n) {
    80004ec4:	0334c463          	blt	s1,s3,80004eec <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80004ec8:	03305c63          	blez	s3,80004f00 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80004ecc:	03800513          	li	a0,56
    80004ed0:	ffffe097          	auipc	ra,0xffffe
    80004ed4:	5c4080e7          	jalr	1476(ra) # 80003494 <_Znwm>
    80004ed8:	00050a93          	mv	s5,a0
    80004edc:	00048593          	mv	a1,s1
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	af8080e7          	jalr	-1288(ra) # 800049d8 <_ZN9BufferCPPC1Ei>
    80004ee8:	0300006f          	j	80004f18 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004eec:	00003517          	auipc	a0,0x3
    80004ef0:	49450513          	addi	a0,a0,1172 # 80008380 <CONSOLE_STATUS+0x370>
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	838080e7          	jalr	-1992(ra) # 8000472c <_Z11printStringPKc>
            return;
    80004efc:	0140006f          	j	80004f10 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004f00:	00003517          	auipc	a0,0x3
    80004f04:	4c050513          	addi	a0,a0,1216 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	824080e7          	jalr	-2012(ra) # 8000472c <_Z11printStringPKc>
            return;
    80004f10:	000c0113          	mv	sp,s8
    80004f14:	21c0006f          	j	80005130 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80004f18:	01000513          	li	a0,16
    80004f1c:	ffffe097          	auipc	ra,0xffffe
    80004f20:	578080e7          	jalr	1400(ra) # 80003494 <_Znwm>
    80004f24:	00050493          	mv	s1,a0
    80004f28:	00000593          	li	a1,0
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	7bc080e7          	jalr	1980(ra) # 800036e8 <_ZN9SemaphoreC1Ej>
    80004f34:	0000a717          	auipc	a4,0xa
    80004f38:	94c70713          	addi	a4,a4,-1716 # 8000e880 <_ZN19ConsumerProducerCPP9threadEndE>
    80004f3c:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80004f40:	00399793          	slli	a5,s3,0x3
    80004f44:	00f78793          	addi	a5,a5,15
    80004f48:	ff07f793          	andi	a5,a5,-16
    80004f4c:	40f10133          	sub	sp,sp,a5
    80004f50:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80004f54:	0019869b          	addiw	a3,s3,1
    80004f58:	00169793          	slli	a5,a3,0x1
    80004f5c:	00d787b3          	add	a5,a5,a3
    80004f60:	00379793          	slli	a5,a5,0x3
    80004f64:	00f78793          	addi	a5,a5,15
    80004f68:	ff07f793          	andi	a5,a5,-16
    80004f6c:	40f10133          	sub	sp,sp,a5
    80004f70:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80004f74:	00199493          	slli	s1,s3,0x1
    80004f78:	013484b3          	add	s1,s1,s3
    80004f7c:	00349493          	slli	s1,s1,0x3
    80004f80:	009b04b3          	add	s1,s6,s1
    80004f84:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004f88:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004f8c:	00873783          	ld	a5,8(a4)
    80004f90:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004f94:	01800513          	li	a0,24
    80004f98:	ffffe097          	auipc	ra,0xffffe
    80004f9c:	4fc080e7          	jalr	1276(ra) # 80003494 <_Znwm>
    80004fa0:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004fa4:	ffffe097          	auipc	ra,0xffffe
    80004fa8:	6c4080e7          	jalr	1732(ra) # 80003668 <_ZN6ThreadC1Ev>
    80004fac:	00005797          	auipc	a5,0x5
    80004fb0:	70c78793          	addi	a5,a5,1804 # 8000a6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004fb4:	00fbb023          	sd	a5,0(s7)
    80004fb8:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80004fbc:	000b8513          	mv	a0,s7
    80004fc0:	ffffe097          	auipc	ra,0xffffe
    80004fc4:	5a4080e7          	jalr	1444(ra) # 80003564 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004fc8:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80004fcc:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80004fd0:	0000a797          	auipc	a5,0xa
    80004fd4:	8b87b783          	ld	a5,-1864(a5) # 8000e888 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004fd8:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004fdc:	01800513          	li	a0,24
    80004fe0:	ffffe097          	auipc	ra,0xffffe
    80004fe4:	4b4080e7          	jalr	1204(ra) # 80003494 <_Znwm>
    80004fe8:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	67c080e7          	jalr	1660(ra) # 80003668 <_ZN6ThreadC1Ev>
    80004ff4:	00005797          	auipc	a5,0x5
    80004ff8:	67478793          	addi	a5,a5,1652 # 8000a668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004ffc:	00f4b023          	sd	a5,0(s1)
    80005000:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80005004:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80005008:	00048513          	mv	a0,s1
    8000500c:	ffffe097          	auipc	ra,0xffffe
    80005010:	558080e7          	jalr	1368(ra) # 80003564 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80005014:	00100913          	li	s2,1
    80005018:	0300006f          	j	80005048 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    8000501c:	00005797          	auipc	a5,0x5
    80005020:	67478793          	addi	a5,a5,1652 # 8000a690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005024:	00fcb023          	sd	a5,0(s9)
    80005028:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    8000502c:	00391793          	slli	a5,s2,0x3
    80005030:	00fa07b3          	add	a5,s4,a5
    80005034:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80005038:	000c8513          	mv	a0,s9
    8000503c:	ffffe097          	auipc	ra,0xffffe
    80005040:	528080e7          	jalr	1320(ra) # 80003564 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80005044:	0019091b          	addiw	s2,s2,1
    80005048:	05395263          	bge	s2,s3,8000508c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    8000504c:	00191493          	slli	s1,s2,0x1
    80005050:	012484b3          	add	s1,s1,s2
    80005054:	00349493          	slli	s1,s1,0x3
    80005058:	009b04b3          	add	s1,s6,s1
    8000505c:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80005060:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80005064:	0000a797          	auipc	a5,0xa
    80005068:	8247b783          	ld	a5,-2012(a5) # 8000e888 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000506c:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80005070:	01800513          	li	a0,24
    80005074:	ffffe097          	auipc	ra,0xffffe
    80005078:	420080e7          	jalr	1056(ra) # 80003494 <_Znwm>
    8000507c:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80005080:	ffffe097          	auipc	ra,0xffffe
    80005084:	5e8080e7          	jalr	1512(ra) # 80003668 <_ZN6ThreadC1Ev>
    80005088:	f95ff06f          	j	8000501c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	510080e7          	jalr	1296(ra) # 8000359c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80005094:	00000493          	li	s1,0
    80005098:	0099ce63          	blt	s3,s1,800050b4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    8000509c:	00009517          	auipc	a0,0x9
    800050a0:	7ec53503          	ld	a0,2028(a0) # 8000e888 <_ZN19ConsumerProducerCPP10waitForAllE>
    800050a4:	ffffe097          	auipc	ra,0xffffe
    800050a8:	60c080e7          	jalr	1548(ra) # 800036b0 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800050ac:	0014849b          	addiw	s1,s1,1
    800050b0:	fe9ff06f          	j	80005098 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    800050b4:	00009517          	auipc	a0,0x9
    800050b8:	7d453503          	ld	a0,2004(a0) # 8000e888 <_ZN19ConsumerProducerCPP10waitForAllE>
    800050bc:	00050863          	beqz	a0,800050cc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    800050c0:	00053783          	ld	a5,0(a0)
    800050c4:	0087b783          	ld	a5,8(a5)
    800050c8:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800050cc:	00000493          	li	s1,0
    800050d0:	0080006f          	j	800050d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    800050d4:	0014849b          	addiw	s1,s1,1
    800050d8:	0334d263          	bge	s1,s3,800050fc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    800050dc:	00349793          	slli	a5,s1,0x3
    800050e0:	00fa07b3          	add	a5,s4,a5
    800050e4:	0007b503          	ld	a0,0(a5)
    800050e8:	fe0506e3          	beqz	a0,800050d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    800050ec:	00053783          	ld	a5,0(a0)
    800050f0:	0087b783          	ld	a5,8(a5)
    800050f4:	000780e7          	jalr	a5
    800050f8:	fddff06f          	j	800050d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    800050fc:	000b8a63          	beqz	s7,80005110 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80005100:	000bb783          	ld	a5,0(s7)
    80005104:	0087b783          	ld	a5,8(a5)
    80005108:	000b8513          	mv	a0,s7
    8000510c:	000780e7          	jalr	a5
        delete buffer;
    80005110:	000a8e63          	beqz	s5,8000512c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80005114:	000a8513          	mv	a0,s5
    80005118:	00000097          	auipc	ra,0x0
    8000511c:	bb8080e7          	jalr	-1096(ra) # 80004cd0 <_ZN9BufferCPPD1Ev>
    80005120:	000a8513          	mv	a0,s5
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	398080e7          	jalr	920(ra) # 800034bc <_ZdlPv>
    8000512c:	000c0113          	mv	sp,s8
    }
    80005130:	f8040113          	addi	sp,s0,-128
    80005134:	07813083          	ld	ra,120(sp)
    80005138:	07013403          	ld	s0,112(sp)
    8000513c:	06813483          	ld	s1,104(sp)
    80005140:	06013903          	ld	s2,96(sp)
    80005144:	05813983          	ld	s3,88(sp)
    80005148:	05013a03          	ld	s4,80(sp)
    8000514c:	04813a83          	ld	s5,72(sp)
    80005150:	04013b03          	ld	s6,64(sp)
    80005154:	03813b83          	ld	s7,56(sp)
    80005158:	03013c03          	ld	s8,48(sp)
    8000515c:	02813c83          	ld	s9,40(sp)
    80005160:	08010113          	addi	sp,sp,128
    80005164:	00008067          	ret
    80005168:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    8000516c:	000a8513          	mv	a0,s5
    80005170:	ffffe097          	auipc	ra,0xffffe
    80005174:	34c080e7          	jalr	844(ra) # 800034bc <_ZdlPv>
    80005178:	00048513          	mv	a0,s1
    8000517c:	0000a097          	auipc	ra,0xa
    80005180:	7dc080e7          	jalr	2012(ra) # 8000f958 <_Unwind_Resume>
    80005184:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80005188:	00048513          	mv	a0,s1
    8000518c:	ffffe097          	auipc	ra,0xffffe
    80005190:	330080e7          	jalr	816(ra) # 800034bc <_ZdlPv>
    80005194:	00090513          	mv	a0,s2
    80005198:	0000a097          	auipc	ra,0xa
    8000519c:	7c0080e7          	jalr	1984(ra) # 8000f958 <_Unwind_Resume>
    800051a0:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800051a4:	000b8513          	mv	a0,s7
    800051a8:	ffffe097          	auipc	ra,0xffffe
    800051ac:	314080e7          	jalr	788(ra) # 800034bc <_ZdlPv>
    800051b0:	00048513          	mv	a0,s1
    800051b4:	0000a097          	auipc	ra,0xa
    800051b8:	7a4080e7          	jalr	1956(ra) # 8000f958 <_Unwind_Resume>
    800051bc:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800051c0:	00048513          	mv	a0,s1
    800051c4:	ffffe097          	auipc	ra,0xffffe
    800051c8:	2f8080e7          	jalr	760(ra) # 800034bc <_ZdlPv>
    800051cc:	00090513          	mv	a0,s2
    800051d0:	0000a097          	auipc	ra,0xa
    800051d4:	788080e7          	jalr	1928(ra) # 8000f958 <_Unwind_Resume>
    800051d8:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800051dc:	000c8513          	mv	a0,s9
    800051e0:	ffffe097          	auipc	ra,0xffffe
    800051e4:	2dc080e7          	jalr	732(ra) # 800034bc <_ZdlPv>
    800051e8:	00048513          	mv	a0,s1
    800051ec:	0000a097          	auipc	ra,0xa
    800051f0:	76c080e7          	jalr	1900(ra) # 8000f958 <_Unwind_Resume>

00000000800051f4 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800051f4:	ff010113          	addi	sp,sp,-16
    800051f8:	00113423          	sd	ra,8(sp)
    800051fc:	00813023          	sd	s0,0(sp)
    80005200:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005204:	00000097          	auipc	ra,0x0
    80005208:	bcc080e7          	jalr	-1076(ra) # 80004dd0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    8000520c:	00813083          	ld	ra,8(sp)
    80005210:	00013403          	ld	s0,0(sp)
    80005214:	01010113          	addi	sp,sp,16
    80005218:	00008067          	ret

000000008000521c <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    8000521c:	fd010113          	addi	sp,sp,-48
    80005220:	02113423          	sd	ra,40(sp)
    80005224:	02813023          	sd	s0,32(sp)
    80005228:	00913c23          	sd	s1,24(sp)
    8000522c:	01213823          	sd	s2,16(sp)
    80005230:	01313423          	sd	s3,8(sp)
    80005234:	03010413          	addi	s0,sp,48
    80005238:	00050913          	mv	s2,a0
            int i = 0;
    8000523c:	00000993          	li	s3,0
    80005240:	0100006f          	j	80005250 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80005244:	00a00513          	li	a0,10
    80005248:	ffffe097          	auipc	ra,0xffffe
    8000524c:	54c080e7          	jalr	1356(ra) # 80003794 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80005250:	00009797          	auipc	a5,0x9
    80005254:	6307a783          	lw	a5,1584(a5) # 8000e880 <_ZN19ConsumerProducerCPP9threadEndE>
    80005258:	04079a63          	bnez	a5,800052ac <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    8000525c:	01093783          	ld	a5,16(s2)
    80005260:	0087b503          	ld	a0,8(a5)
    80005264:	00000097          	auipc	ra,0x0
    80005268:	958080e7          	jalr	-1704(ra) # 80004bbc <_ZN9BufferCPP3getEv>
                i++;
    8000526c:	0019849b          	addiw	s1,s3,1
    80005270:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80005274:	0ff57513          	andi	a0,a0,255
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	51c080e7          	jalr	1308(ra) # 80003794 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80005280:	05000793          	li	a5,80
    80005284:	02f4e4bb          	remw	s1,s1,a5
    80005288:	fc0494e3          	bnez	s1,80005250 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    8000528c:	fb9ff06f          	j	80005244 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80005290:	01093783          	ld	a5,16(s2)
    80005294:	0087b503          	ld	a0,8(a5)
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	924080e7          	jalr	-1756(ra) # 80004bbc <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800052a0:	0ff57513          	andi	a0,a0,255
    800052a4:	ffffe097          	auipc	ra,0xffffe
    800052a8:	4f0080e7          	jalr	1264(ra) # 80003794 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800052ac:	01093783          	ld	a5,16(s2)
    800052b0:	0087b503          	ld	a0,8(a5)
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	994080e7          	jalr	-1644(ra) # 80004c48 <_ZN9BufferCPP6getCntEv>
    800052bc:	fca04ae3          	bgtz	a0,80005290 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800052c0:	01093783          	ld	a5,16(s2)
    800052c4:	0107b503          	ld	a0,16(a5)
    800052c8:	ffffe097          	auipc	ra,0xffffe
    800052cc:	46c080e7          	jalr	1132(ra) # 80003734 <_ZN9Semaphore6signalEv>
        }
    800052d0:	02813083          	ld	ra,40(sp)
    800052d4:	02013403          	ld	s0,32(sp)
    800052d8:	01813483          	ld	s1,24(sp)
    800052dc:	01013903          	ld	s2,16(sp)
    800052e0:	00813983          	ld	s3,8(sp)
    800052e4:	03010113          	addi	sp,sp,48
    800052e8:	00008067          	ret

00000000800052ec <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    800052ec:	ff010113          	addi	sp,sp,-16
    800052f0:	00113423          	sd	ra,8(sp)
    800052f4:	00813023          	sd	s0,0(sp)
    800052f8:	01010413          	addi	s0,sp,16
    800052fc:	00005797          	auipc	a5,0x5
    80005300:	3bc78793          	addi	a5,a5,956 # 8000a6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005304:	00f53023          	sd	a5,0(a0)
    80005308:	ffffe097          	auipc	ra,0xffffe
    8000530c:	10c080e7          	jalr	268(ra) # 80003414 <_ZN6ThreadD1Ev>
    80005310:	00813083          	ld	ra,8(sp)
    80005314:	00013403          	ld	s0,0(sp)
    80005318:	01010113          	addi	sp,sp,16
    8000531c:	00008067          	ret

0000000080005320 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00113c23          	sd	ra,24(sp)
    80005328:	00813823          	sd	s0,16(sp)
    8000532c:	00913423          	sd	s1,8(sp)
    80005330:	02010413          	addi	s0,sp,32
    80005334:	00050493          	mv	s1,a0
    80005338:	00005797          	auipc	a5,0x5
    8000533c:	38078793          	addi	a5,a5,896 # 8000a6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005340:	00f53023          	sd	a5,0(a0)
    80005344:	ffffe097          	auipc	ra,0xffffe
    80005348:	0d0080e7          	jalr	208(ra) # 80003414 <_ZN6ThreadD1Ev>
    8000534c:	00048513          	mv	a0,s1
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	16c080e7          	jalr	364(ra) # 800034bc <_ZdlPv>
    80005358:	01813083          	ld	ra,24(sp)
    8000535c:	01013403          	ld	s0,16(sp)
    80005360:	00813483          	ld	s1,8(sp)
    80005364:	02010113          	addi	sp,sp,32
    80005368:	00008067          	ret

000000008000536c <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    8000536c:	ff010113          	addi	sp,sp,-16
    80005370:	00113423          	sd	ra,8(sp)
    80005374:	00813023          	sd	s0,0(sp)
    80005378:	01010413          	addi	s0,sp,16
    8000537c:	00005797          	auipc	a5,0x5
    80005380:	2ec78793          	addi	a5,a5,748 # 8000a668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80005384:	00f53023          	sd	a5,0(a0)
    80005388:	ffffe097          	auipc	ra,0xffffe
    8000538c:	08c080e7          	jalr	140(ra) # 80003414 <_ZN6ThreadD1Ev>
    80005390:	00813083          	ld	ra,8(sp)
    80005394:	00013403          	ld	s0,0(sp)
    80005398:	01010113          	addi	sp,sp,16
    8000539c:	00008067          	ret

00000000800053a0 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800053a0:	fe010113          	addi	sp,sp,-32
    800053a4:	00113c23          	sd	ra,24(sp)
    800053a8:	00813823          	sd	s0,16(sp)
    800053ac:	00913423          	sd	s1,8(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    800053b8:	00005797          	auipc	a5,0x5
    800053bc:	2b078793          	addi	a5,a5,688 # 8000a668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800053c0:	00f53023          	sd	a5,0(a0)
    800053c4:	ffffe097          	auipc	ra,0xffffe
    800053c8:	050080e7          	jalr	80(ra) # 80003414 <_ZN6ThreadD1Ev>
    800053cc:	00048513          	mv	a0,s1
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	0ec080e7          	jalr	236(ra) # 800034bc <_ZdlPv>
    800053d8:	01813083          	ld	ra,24(sp)
    800053dc:	01013403          	ld	s0,16(sp)
    800053e0:	00813483          	ld	s1,8(sp)
    800053e4:	02010113          	addi	sp,sp,32
    800053e8:	00008067          	ret

00000000800053ec <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    800053ec:	ff010113          	addi	sp,sp,-16
    800053f0:	00113423          	sd	ra,8(sp)
    800053f4:	00813023          	sd	s0,0(sp)
    800053f8:	01010413          	addi	s0,sp,16
    800053fc:	00005797          	auipc	a5,0x5
    80005400:	29478793          	addi	a5,a5,660 # 8000a690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005404:	00f53023          	sd	a5,0(a0)
    80005408:	ffffe097          	auipc	ra,0xffffe
    8000540c:	00c080e7          	jalr	12(ra) # 80003414 <_ZN6ThreadD1Ev>
    80005410:	00813083          	ld	ra,8(sp)
    80005414:	00013403          	ld	s0,0(sp)
    80005418:	01010113          	addi	sp,sp,16
    8000541c:	00008067          	ret

0000000080005420 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80005420:	fe010113          	addi	sp,sp,-32
    80005424:	00113c23          	sd	ra,24(sp)
    80005428:	00813823          	sd	s0,16(sp)
    8000542c:	00913423          	sd	s1,8(sp)
    80005430:	02010413          	addi	s0,sp,32
    80005434:	00050493          	mv	s1,a0
    80005438:	00005797          	auipc	a5,0x5
    8000543c:	25878793          	addi	a5,a5,600 # 8000a690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005440:	00f53023          	sd	a5,0(a0)
    80005444:	ffffe097          	auipc	ra,0xffffe
    80005448:	fd0080e7          	jalr	-48(ra) # 80003414 <_ZN6ThreadD1Ev>
    8000544c:	00048513          	mv	a0,s1
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	06c080e7          	jalr	108(ra) # 800034bc <_ZdlPv>
    80005458:	01813083          	ld	ra,24(sp)
    8000545c:	01013403          	ld	s0,16(sp)
    80005460:	00813483          	ld	s1,8(sp)
    80005464:	02010113          	addi	sp,sp,32
    80005468:	00008067          	ret

000000008000546c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00813823          	sd	s0,16(sp)
    80005478:	00913423          	sd	s1,8(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00050493          	mv	s1,a0
            while ((key = getc()) != 'q') {
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	08c080e7          	jalr	140(ra) # 80001510 <_Z4getcv>
    8000548c:	0005059b          	sext.w	a1,a0
    80005490:	07100793          	li	a5,113
    80005494:	00f58c63          	beq	a1,a5,800054ac <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80005498:	0104b783          	ld	a5,16(s1)
    8000549c:	0087b503          	ld	a0,8(a5)
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	68c080e7          	jalr	1676(ra) # 80004b2c <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 'q') {
    800054a8:	fddff06f          	j	80005484 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800054ac:	00100793          	li	a5,1
    800054b0:	00009717          	auipc	a4,0x9
    800054b4:	3cf72823          	sw	a5,976(a4) # 8000e880 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800054b8:	0104b783          	ld	a5,16(s1)
    800054bc:	02100593          	li	a1,33
    800054c0:	0087b503          	ld	a0,8(a5)
    800054c4:	fffff097          	auipc	ra,0xfffff
    800054c8:	668080e7          	jalr	1640(ra) # 80004b2c <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800054cc:	0104b783          	ld	a5,16(s1)
    800054d0:	0107b503          	ld	a0,16(a5)
    800054d4:	ffffe097          	auipc	ra,0xffffe
    800054d8:	260080e7          	jalr	608(ra) # 80003734 <_ZN9Semaphore6signalEv>
        }
    800054dc:	01813083          	ld	ra,24(sp)
    800054e0:	01013403          	ld	s0,16(sp)
    800054e4:	00813483          	ld	s1,8(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret

00000000800054f0 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800054f0:	fe010113          	addi	sp,sp,-32
    800054f4:	00113c23          	sd	ra,24(sp)
    800054f8:	00813823          	sd	s0,16(sp)
    800054fc:	00913423          	sd	s1,8(sp)
    80005500:	01213023          	sd	s2,0(sp)
    80005504:	02010413          	addi	s0,sp,32
    80005508:	00050493          	mv	s1,a0
            int i = 0;
    8000550c:	00000913          	li	s2,0
            while (!threadEnd) {
    80005510:	00009797          	auipc	a5,0x9
    80005514:	3707a783          	lw	a5,880(a5) # 8000e880 <_ZN19ConsumerProducerCPP9threadEndE>
    80005518:	04079263          	bnez	a5,8000555c <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    8000551c:	0104b783          	ld	a5,16(s1)
    80005520:	0007a583          	lw	a1,0(a5)
    80005524:	0305859b          	addiw	a1,a1,48
    80005528:	0087b503          	ld	a0,8(a5)
    8000552c:	fffff097          	auipc	ra,0xfffff
    80005530:	600080e7          	jalr	1536(ra) # 80004b2c <_ZN9BufferCPP3putEi>
                i++;
    80005534:	0019071b          	addiw	a4,s2,1
    80005538:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    8000553c:	0104b783          	ld	a5,16(s1)
    80005540:	0007a783          	lw	a5,0(a5)
    80005544:	00e787bb          	addw	a5,a5,a4
    80005548:	00500513          	li	a0,5
    8000554c:	02a7e53b          	remw	a0,a5,a0
    80005550:	ffffe097          	auipc	ra,0xffffe
    80005554:	074080e7          	jalr	116(ra) # 800035c4 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80005558:	fb9ff06f          	j	80005510 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    8000555c:	0104b783          	ld	a5,16(s1)
    80005560:	0107b503          	ld	a0,16(a5)
    80005564:	ffffe097          	auipc	ra,0xffffe
    80005568:	1d0080e7          	jalr	464(ra) # 80003734 <_ZN9Semaphore6signalEv>
        }
    8000556c:	01813083          	ld	ra,24(sp)
    80005570:	01013403          	ld	s0,16(sp)
    80005574:	00813483          	ld	s1,8(sp)
    80005578:	00013903          	ld	s2,0(sp)
    8000557c:	02010113          	addi	sp,sp,32
    80005580:	00008067          	ret

0000000080005584 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005584:	fe010113          	addi	sp,sp,-32
    80005588:	00113c23          	sd	ra,24(sp)
    8000558c:	00813823          	sd	s0,16(sp)
    80005590:	00913423          	sd	s1,8(sp)
    80005594:	01213023          	sd	s2,0(sp)
    80005598:	02010413          	addi	s0,sp,32
    8000559c:	00050493          	mv	s1,a0
    800055a0:	00058913          	mv	s2,a1
    800055a4:	0015879b          	addiw	a5,a1,1
    800055a8:	0007851b          	sext.w	a0,a5
    800055ac:	00f4a023          	sw	a5,0(s1)
    800055b0:	0004a823          	sw	zero,16(s1)
    800055b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800055b8:	00251513          	slli	a0,a0,0x2
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	c9c080e7          	jalr	-868(ra) # 80001258 <_Z9mem_allocm>
    800055c4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800055c8:	00000593          	li	a1,0
    800055cc:	02048513          	addi	a0,s1,32
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	dac080e7          	jalr	-596(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800055d8:	00090593          	mv	a1,s2
    800055dc:	01848513          	addi	a0,s1,24
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	d9c080e7          	jalr	-612(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800055e8:	00100593          	li	a1,1
    800055ec:	02848513          	addi	a0,s1,40
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	d8c080e7          	jalr	-628(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800055f8:	00100593          	li	a1,1
    800055fc:	03048513          	addi	a0,s1,48
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	d7c080e7          	jalr	-644(ra) # 8000137c <_Z8sem_openPP4_semj>
}
    80005608:	01813083          	ld	ra,24(sp)
    8000560c:	01013403          	ld	s0,16(sp)
    80005610:	00813483          	ld	s1,8(sp)
    80005614:	00013903          	ld	s2,0(sp)
    80005618:	02010113          	addi	sp,sp,32
    8000561c:	00008067          	ret

0000000080005620 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00913423          	sd	s1,8(sp)
    80005630:	01213023          	sd	s2,0(sp)
    80005634:	02010413          	addi	s0,sp,32
    80005638:	00050493          	mv	s1,a0
    8000563c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005640:	01853503          	ld	a0,24(a0)
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	d9c080e7          	jalr	-612(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000564c:	0304b503          	ld	a0,48(s1)
    80005650:	ffffc097          	auipc	ra,0xffffc
    80005654:	d90080e7          	jalr	-624(ra) # 800013e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005658:	0084b783          	ld	a5,8(s1)
    8000565c:	0144a703          	lw	a4,20(s1)
    80005660:	00271713          	slli	a4,a4,0x2
    80005664:	00e787b3          	add	a5,a5,a4
    80005668:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000566c:	0144a783          	lw	a5,20(s1)
    80005670:	0017879b          	addiw	a5,a5,1
    80005674:	0004a703          	lw	a4,0(s1)
    80005678:	02e7e7bb          	remw	a5,a5,a4
    8000567c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005680:	0304b503          	ld	a0,48(s1)
    80005684:	ffffc097          	auipc	ra,0xffffc
    80005688:	d88080e7          	jalr	-632(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000568c:	0204b503          	ld	a0,32(s1)
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	d7c080e7          	jalr	-644(ra) # 8000140c <_Z10sem_signalP4_sem>

}
    80005698:	01813083          	ld	ra,24(sp)
    8000569c:	01013403          	ld	s0,16(sp)
    800056a0:	00813483          	ld	s1,8(sp)
    800056a4:	00013903          	ld	s2,0(sp)
    800056a8:	02010113          	addi	sp,sp,32
    800056ac:	00008067          	ret

00000000800056b0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800056b0:	fe010113          	addi	sp,sp,-32
    800056b4:	00113c23          	sd	ra,24(sp)
    800056b8:	00813823          	sd	s0,16(sp)
    800056bc:	00913423          	sd	s1,8(sp)
    800056c0:	01213023          	sd	s2,0(sp)
    800056c4:	02010413          	addi	s0,sp,32
    800056c8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800056cc:	02053503          	ld	a0,32(a0)
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	d10080e7          	jalr	-752(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800056d8:	0284b503          	ld	a0,40(s1)
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	d04080e7          	jalr	-764(ra) # 800013e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800056e4:	0084b703          	ld	a4,8(s1)
    800056e8:	0104a783          	lw	a5,16(s1)
    800056ec:	00279693          	slli	a3,a5,0x2
    800056f0:	00d70733          	add	a4,a4,a3
    800056f4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056f8:	0017879b          	addiw	a5,a5,1
    800056fc:	0004a703          	lw	a4,0(s1)
    80005700:	02e7e7bb          	remw	a5,a5,a4
    80005704:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005708:	0284b503          	ld	a0,40(s1)
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	d00080e7          	jalr	-768(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005714:	0184b503          	ld	a0,24(s1)
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	cf4080e7          	jalr	-780(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
}
    80005720:	00090513          	mv	a0,s2
    80005724:	01813083          	ld	ra,24(sp)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	00813483          	ld	s1,8(sp)
    80005730:	00013903          	ld	s2,0(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret

000000008000573c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00113c23          	sd	ra,24(sp)
    80005744:	00813823          	sd	s0,16(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	01213023          	sd	s2,0(sp)
    80005750:	02010413          	addi	s0,sp,32
    80005754:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005758:	02853503          	ld	a0,40(a0)
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	c84080e7          	jalr	-892(ra) # 800013e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005764:	0304b503          	ld	a0,48(s1)
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	c78080e7          	jalr	-904(ra) # 800013e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005770:	0144a783          	lw	a5,20(s1)
    80005774:	0104a903          	lw	s2,16(s1)
    80005778:	0327ce63          	blt	a5,s2,800057b4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000577c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005780:	0304b503          	ld	a0,48(s1)
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	c88080e7          	jalr	-888(ra) # 8000140c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000578c:	0284b503          	ld	a0,40(s1)
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	c7c080e7          	jalr	-900(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
    80005798:	00090513          	mv	a0,s2
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	00013903          	ld	s2,0(sp)
    800057ac:	02010113          	addi	sp,sp,32
    800057b0:	00008067          	ret
        ret = cap - head + tail;
    800057b4:	0004a703          	lw	a4,0(s1)
    800057b8:	4127093b          	subw	s2,a4,s2
    800057bc:	00f9093b          	addw	s2,s2,a5
    800057c0:	fc1ff06f          	j	80005780 <_ZN6Buffer6getCntEv+0x44>

00000000800057c4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800057c4:	fe010113          	addi	sp,sp,-32
    800057c8:	00113c23          	sd	ra,24(sp)
    800057cc:	00813823          	sd	s0,16(sp)
    800057d0:	00913423          	sd	s1,8(sp)
    800057d4:	02010413          	addi	s0,sp,32
    800057d8:	00050493          	mv	s1,a0
    putc('\n');
    800057dc:	00a00513          	li	a0,10
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	d58080e7          	jalr	-680(ra) # 80001538 <_Z4putcc>
    printString("Buffer deleted!\n");
    800057e8:	00003517          	auipc	a0,0x3
    800057ec:	b0850513          	addi	a0,a0,-1272 # 800082f0 <CONSOLE_STATUS+0x2e0>
    800057f0:	fffff097          	auipc	ra,0xfffff
    800057f4:	f3c080e7          	jalr	-196(ra) # 8000472c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	f40080e7          	jalr	-192(ra) # 8000573c <_ZN6Buffer6getCntEv>
    80005804:	02a05c63          	blez	a0,8000583c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005808:	0084b783          	ld	a5,8(s1)
    8000580c:	0104a703          	lw	a4,16(s1)
    80005810:	00271713          	slli	a4,a4,0x2
    80005814:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005818:	0007c503          	lbu	a0,0(a5)
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	d1c080e7          	jalr	-740(ra) # 80001538 <_Z4putcc>
        head = (head + 1) % cap;
    80005824:	0104a783          	lw	a5,16(s1)
    80005828:	0017879b          	addiw	a5,a5,1
    8000582c:	0004a703          	lw	a4,0(s1)
    80005830:	02e7e7bb          	remw	a5,a5,a4
    80005834:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005838:	fc1ff06f          	j	800057f8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000583c:	02100513          	li	a0,33
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	cf8080e7          	jalr	-776(ra) # 80001538 <_Z4putcc>
    putc('\n');
    80005848:	00a00513          	li	a0,10
    8000584c:	ffffc097          	auipc	ra,0xffffc
    80005850:	cec080e7          	jalr	-788(ra) # 80001538 <_Z4putcc>
    mem_free(buffer);
    80005854:	0084b503          	ld	a0,8(s1)
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	a30080e7          	jalr	-1488(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005860:	0204b503          	ld	a0,32(s1)
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	b50080e7          	jalr	-1200(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000586c:	0184b503          	ld	a0,24(s1)
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	b44080e7          	jalr	-1212(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005878:	0304b503          	ld	a0,48(s1)
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	b38080e7          	jalr	-1224(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005884:	0284b503          	ld	a0,40(s1)
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	b2c080e7          	jalr	-1236(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	01013403          	ld	s0,16(sp)
    80005898:	00813483          	ld	s1,8(sp)
    8000589c:	02010113          	addi	sp,sp,32
    800058a0:	00008067          	ret

00000000800058a4 <start>:
    800058a4:	ff010113          	addi	sp,sp,-16
    800058a8:	00813423          	sd	s0,8(sp)
    800058ac:	01010413          	addi	s0,sp,16
    800058b0:	300027f3          	csrr	a5,mstatus
    800058b4:	ffffe737          	lui	a4,0xffffe
    800058b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeed0f>
    800058bc:	00e7f7b3          	and	a5,a5,a4
    800058c0:	00001737          	lui	a4,0x1
    800058c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800058c8:	00e7e7b3          	or	a5,a5,a4
    800058cc:	30079073          	csrw	mstatus,a5
    800058d0:	00000797          	auipc	a5,0x0
    800058d4:	16078793          	addi	a5,a5,352 # 80005a30 <system_main>
    800058d8:	34179073          	csrw	mepc,a5
    800058dc:	00000793          	li	a5,0
    800058e0:	18079073          	csrw	satp,a5
    800058e4:	000107b7          	lui	a5,0x10
    800058e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800058ec:	30279073          	csrw	medeleg,a5
    800058f0:	30379073          	csrw	mideleg,a5
    800058f4:	104027f3          	csrr	a5,sie
    800058f8:	2227e793          	ori	a5,a5,546
    800058fc:	10479073          	csrw	sie,a5
    80005900:	fff00793          	li	a5,-1
    80005904:	00a7d793          	srli	a5,a5,0xa
    80005908:	3b079073          	csrw	pmpaddr0,a5
    8000590c:	00f00793          	li	a5,15
    80005910:	3a079073          	csrw	pmpcfg0,a5
    80005914:	f14027f3          	csrr	a5,mhartid
    80005918:	0200c737          	lui	a4,0x200c
    8000591c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005920:	0007869b          	sext.w	a3,a5
    80005924:	00269713          	slli	a4,a3,0x2
    80005928:	000f4637          	lui	a2,0xf4
    8000592c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005930:	00d70733          	add	a4,a4,a3
    80005934:	0037979b          	slliw	a5,a5,0x3
    80005938:	020046b7          	lui	a3,0x2004
    8000593c:	00d787b3          	add	a5,a5,a3
    80005940:	00c585b3          	add	a1,a1,a2
    80005944:	00371693          	slli	a3,a4,0x3
    80005948:	00009717          	auipc	a4,0x9
    8000594c:	f4870713          	addi	a4,a4,-184 # 8000e890 <timer_scratch>
    80005950:	00b7b023          	sd	a1,0(a5)
    80005954:	00d70733          	add	a4,a4,a3
    80005958:	00f73c23          	sd	a5,24(a4)
    8000595c:	02c73023          	sd	a2,32(a4)
    80005960:	34071073          	csrw	mscratch,a4
    80005964:	00000797          	auipc	a5,0x0
    80005968:	6ec78793          	addi	a5,a5,1772 # 80006050 <timervec>
    8000596c:	30579073          	csrw	mtvec,a5
    80005970:	300027f3          	csrr	a5,mstatus
    80005974:	0087e793          	ori	a5,a5,8
    80005978:	30079073          	csrw	mstatus,a5
    8000597c:	304027f3          	csrr	a5,mie
    80005980:	0807e793          	ori	a5,a5,128
    80005984:	30479073          	csrw	mie,a5
    80005988:	f14027f3          	csrr	a5,mhartid
    8000598c:	0007879b          	sext.w	a5,a5
    80005990:	00078213          	mv	tp,a5
    80005994:	30200073          	mret
    80005998:	00813403          	ld	s0,8(sp)
    8000599c:	01010113          	addi	sp,sp,16
    800059a0:	00008067          	ret

00000000800059a4 <timerinit>:
    800059a4:	ff010113          	addi	sp,sp,-16
    800059a8:	00813423          	sd	s0,8(sp)
    800059ac:	01010413          	addi	s0,sp,16
    800059b0:	f14027f3          	csrr	a5,mhartid
    800059b4:	0200c737          	lui	a4,0x200c
    800059b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800059bc:	0007869b          	sext.w	a3,a5
    800059c0:	00269713          	slli	a4,a3,0x2
    800059c4:	000f4637          	lui	a2,0xf4
    800059c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800059cc:	00d70733          	add	a4,a4,a3
    800059d0:	0037979b          	slliw	a5,a5,0x3
    800059d4:	020046b7          	lui	a3,0x2004
    800059d8:	00d787b3          	add	a5,a5,a3
    800059dc:	00c585b3          	add	a1,a1,a2
    800059e0:	00371693          	slli	a3,a4,0x3
    800059e4:	00009717          	auipc	a4,0x9
    800059e8:	eac70713          	addi	a4,a4,-340 # 8000e890 <timer_scratch>
    800059ec:	00b7b023          	sd	a1,0(a5)
    800059f0:	00d70733          	add	a4,a4,a3
    800059f4:	00f73c23          	sd	a5,24(a4)
    800059f8:	02c73023          	sd	a2,32(a4)
    800059fc:	34071073          	csrw	mscratch,a4
    80005a00:	00000797          	auipc	a5,0x0
    80005a04:	65078793          	addi	a5,a5,1616 # 80006050 <timervec>
    80005a08:	30579073          	csrw	mtvec,a5
    80005a0c:	300027f3          	csrr	a5,mstatus
    80005a10:	0087e793          	ori	a5,a5,8
    80005a14:	30079073          	csrw	mstatus,a5
    80005a18:	304027f3          	csrr	a5,mie
    80005a1c:	0807e793          	ori	a5,a5,128
    80005a20:	30479073          	csrw	mie,a5
    80005a24:	00813403          	ld	s0,8(sp)
    80005a28:	01010113          	addi	sp,sp,16
    80005a2c:	00008067          	ret

0000000080005a30 <system_main>:
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00813823          	sd	s0,16(sp)
    80005a38:	00913423          	sd	s1,8(sp)
    80005a3c:	00113c23          	sd	ra,24(sp)
    80005a40:	02010413          	addi	s0,sp,32
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	0c4080e7          	jalr	196(ra) # 80005b08 <cpuid>
    80005a4c:	00005497          	auipc	s1,0x5
    80005a50:	d2448493          	addi	s1,s1,-732 # 8000a770 <started>
    80005a54:	02050263          	beqz	a0,80005a78 <system_main+0x48>
    80005a58:	0004a783          	lw	a5,0(s1)
    80005a5c:	0007879b          	sext.w	a5,a5
    80005a60:	fe078ce3          	beqz	a5,80005a58 <system_main+0x28>
    80005a64:	0ff0000f          	fence
    80005a68:	00003517          	auipc	a0,0x3
    80005a6c:	9b850513          	addi	a0,a0,-1608 # 80008420 <CONSOLE_STATUS+0x410>
    80005a70:	00001097          	auipc	ra,0x1
    80005a74:	a7c080e7          	jalr	-1412(ra) # 800064ec <panic>
    80005a78:	00001097          	auipc	ra,0x1
    80005a7c:	9d0080e7          	jalr	-1584(ra) # 80006448 <consoleinit>
    80005a80:	00001097          	auipc	ra,0x1
    80005a84:	15c080e7          	jalr	348(ra) # 80006bdc <printfinit>
    80005a88:	00002517          	auipc	a0,0x2
    80005a8c:	66850513          	addi	a0,a0,1640 # 800080f0 <CONSOLE_STATUS+0xe0>
    80005a90:	00001097          	auipc	ra,0x1
    80005a94:	ab8080e7          	jalr	-1352(ra) # 80006548 <__printf>
    80005a98:	00003517          	auipc	a0,0x3
    80005a9c:	95850513          	addi	a0,a0,-1704 # 800083f0 <CONSOLE_STATUS+0x3e0>
    80005aa0:	00001097          	auipc	ra,0x1
    80005aa4:	aa8080e7          	jalr	-1368(ra) # 80006548 <__printf>
    80005aa8:	00002517          	auipc	a0,0x2
    80005aac:	64850513          	addi	a0,a0,1608 # 800080f0 <CONSOLE_STATUS+0xe0>
    80005ab0:	00001097          	auipc	ra,0x1
    80005ab4:	a98080e7          	jalr	-1384(ra) # 80006548 <__printf>
    80005ab8:	00001097          	auipc	ra,0x1
    80005abc:	4b0080e7          	jalr	1200(ra) # 80006f68 <kinit>
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	148080e7          	jalr	328(ra) # 80005c08 <trapinit>
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	16c080e7          	jalr	364(ra) # 80005c34 <trapinithart>
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	5c0080e7          	jalr	1472(ra) # 80006090 <plicinit>
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	5e0080e7          	jalr	1504(ra) # 800060b8 <plicinithart>
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	078080e7          	jalr	120(ra) # 80005b58 <userinit>
    80005ae8:	0ff0000f          	fence
    80005aec:	00100793          	li	a5,1
    80005af0:	00003517          	auipc	a0,0x3
    80005af4:	91850513          	addi	a0,a0,-1768 # 80008408 <CONSOLE_STATUS+0x3f8>
    80005af8:	00f4a023          	sw	a5,0(s1)
    80005afc:	00001097          	auipc	ra,0x1
    80005b00:	a4c080e7          	jalr	-1460(ra) # 80006548 <__printf>
    80005b04:	0000006f          	j	80005b04 <system_main+0xd4>

0000000080005b08 <cpuid>:
    80005b08:	ff010113          	addi	sp,sp,-16
    80005b0c:	00813423          	sd	s0,8(sp)
    80005b10:	01010413          	addi	s0,sp,16
    80005b14:	00020513          	mv	a0,tp
    80005b18:	00813403          	ld	s0,8(sp)
    80005b1c:	0005051b          	sext.w	a0,a0
    80005b20:	01010113          	addi	sp,sp,16
    80005b24:	00008067          	ret

0000000080005b28 <mycpu>:
    80005b28:	ff010113          	addi	sp,sp,-16
    80005b2c:	00813423          	sd	s0,8(sp)
    80005b30:	01010413          	addi	s0,sp,16
    80005b34:	00020793          	mv	a5,tp
    80005b38:	00813403          	ld	s0,8(sp)
    80005b3c:	0007879b          	sext.w	a5,a5
    80005b40:	00779793          	slli	a5,a5,0x7
    80005b44:	0000a517          	auipc	a0,0xa
    80005b48:	d7c50513          	addi	a0,a0,-644 # 8000f8c0 <cpus>
    80005b4c:	00f50533          	add	a0,a0,a5
    80005b50:	01010113          	addi	sp,sp,16
    80005b54:	00008067          	ret

0000000080005b58 <userinit>:
    80005b58:	ff010113          	addi	sp,sp,-16
    80005b5c:	00813423          	sd	s0,8(sp)
    80005b60:	01010413          	addi	s0,sp,16
    80005b64:	00813403          	ld	s0,8(sp)
    80005b68:	01010113          	addi	sp,sp,16
    80005b6c:	ffffe317          	auipc	t1,0xffffe
    80005b70:	85430067          	jr	-1964(t1) # 800033c0 <main>

0000000080005b74 <either_copyout>:
    80005b74:	ff010113          	addi	sp,sp,-16
    80005b78:	00813023          	sd	s0,0(sp)
    80005b7c:	00113423          	sd	ra,8(sp)
    80005b80:	01010413          	addi	s0,sp,16
    80005b84:	02051663          	bnez	a0,80005bb0 <either_copyout+0x3c>
    80005b88:	00058513          	mv	a0,a1
    80005b8c:	00060593          	mv	a1,a2
    80005b90:	0006861b          	sext.w	a2,a3
    80005b94:	00002097          	auipc	ra,0x2
    80005b98:	c60080e7          	jalr	-928(ra) # 800077f4 <__memmove>
    80005b9c:	00813083          	ld	ra,8(sp)
    80005ba0:	00013403          	ld	s0,0(sp)
    80005ba4:	00000513          	li	a0,0
    80005ba8:	01010113          	addi	sp,sp,16
    80005bac:	00008067          	ret
    80005bb0:	00003517          	auipc	a0,0x3
    80005bb4:	89850513          	addi	a0,a0,-1896 # 80008448 <CONSOLE_STATUS+0x438>
    80005bb8:	00001097          	auipc	ra,0x1
    80005bbc:	934080e7          	jalr	-1740(ra) # 800064ec <panic>

0000000080005bc0 <either_copyin>:
    80005bc0:	ff010113          	addi	sp,sp,-16
    80005bc4:	00813023          	sd	s0,0(sp)
    80005bc8:	00113423          	sd	ra,8(sp)
    80005bcc:	01010413          	addi	s0,sp,16
    80005bd0:	02059463          	bnez	a1,80005bf8 <either_copyin+0x38>
    80005bd4:	00060593          	mv	a1,a2
    80005bd8:	0006861b          	sext.w	a2,a3
    80005bdc:	00002097          	auipc	ra,0x2
    80005be0:	c18080e7          	jalr	-1000(ra) # 800077f4 <__memmove>
    80005be4:	00813083          	ld	ra,8(sp)
    80005be8:	00013403          	ld	s0,0(sp)
    80005bec:	00000513          	li	a0,0
    80005bf0:	01010113          	addi	sp,sp,16
    80005bf4:	00008067          	ret
    80005bf8:	00003517          	auipc	a0,0x3
    80005bfc:	87850513          	addi	a0,a0,-1928 # 80008470 <CONSOLE_STATUS+0x460>
    80005c00:	00001097          	auipc	ra,0x1
    80005c04:	8ec080e7          	jalr	-1812(ra) # 800064ec <panic>

0000000080005c08 <trapinit>:
    80005c08:	ff010113          	addi	sp,sp,-16
    80005c0c:	00813423          	sd	s0,8(sp)
    80005c10:	01010413          	addi	s0,sp,16
    80005c14:	00813403          	ld	s0,8(sp)
    80005c18:	00003597          	auipc	a1,0x3
    80005c1c:	88058593          	addi	a1,a1,-1920 # 80008498 <CONSOLE_STATUS+0x488>
    80005c20:	0000a517          	auipc	a0,0xa
    80005c24:	d2050513          	addi	a0,a0,-736 # 8000f940 <tickslock>
    80005c28:	01010113          	addi	sp,sp,16
    80005c2c:	00001317          	auipc	t1,0x1
    80005c30:	5cc30067          	jr	1484(t1) # 800071f8 <initlock>

0000000080005c34 <trapinithart>:
    80005c34:	ff010113          	addi	sp,sp,-16
    80005c38:	00813423          	sd	s0,8(sp)
    80005c3c:	01010413          	addi	s0,sp,16
    80005c40:	00000797          	auipc	a5,0x0
    80005c44:	30078793          	addi	a5,a5,768 # 80005f40 <kernelvec>
    80005c48:	10579073          	csrw	stvec,a5
    80005c4c:	00813403          	ld	s0,8(sp)
    80005c50:	01010113          	addi	sp,sp,16
    80005c54:	00008067          	ret

0000000080005c58 <usertrap>:
    80005c58:	ff010113          	addi	sp,sp,-16
    80005c5c:	00813423          	sd	s0,8(sp)
    80005c60:	01010413          	addi	s0,sp,16
    80005c64:	00813403          	ld	s0,8(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret

0000000080005c70 <usertrapret>:
    80005c70:	ff010113          	addi	sp,sp,-16
    80005c74:	00813423          	sd	s0,8(sp)
    80005c78:	01010413          	addi	s0,sp,16
    80005c7c:	00813403          	ld	s0,8(sp)
    80005c80:	01010113          	addi	sp,sp,16
    80005c84:	00008067          	ret

0000000080005c88 <kerneltrap>:
    80005c88:	fe010113          	addi	sp,sp,-32
    80005c8c:	00813823          	sd	s0,16(sp)
    80005c90:	00113c23          	sd	ra,24(sp)
    80005c94:	00913423          	sd	s1,8(sp)
    80005c98:	02010413          	addi	s0,sp,32
    80005c9c:	142025f3          	csrr	a1,scause
    80005ca0:	100027f3          	csrr	a5,sstatus
    80005ca4:	0027f793          	andi	a5,a5,2
    80005ca8:	10079c63          	bnez	a5,80005dc0 <kerneltrap+0x138>
    80005cac:	142027f3          	csrr	a5,scause
    80005cb0:	0207ce63          	bltz	a5,80005cec <kerneltrap+0x64>
    80005cb4:	00003517          	auipc	a0,0x3
    80005cb8:	82c50513          	addi	a0,a0,-2004 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	88c080e7          	jalr	-1908(ra) # 80006548 <__printf>
    80005cc4:	141025f3          	csrr	a1,sepc
    80005cc8:	14302673          	csrr	a2,stval
    80005ccc:	00003517          	auipc	a0,0x3
    80005cd0:	82450513          	addi	a0,a0,-2012 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80005cd4:	00001097          	auipc	ra,0x1
    80005cd8:	874080e7          	jalr	-1932(ra) # 80006548 <__printf>
    80005cdc:	00003517          	auipc	a0,0x3
    80005ce0:	82c50513          	addi	a0,a0,-2004 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005ce4:	00001097          	auipc	ra,0x1
    80005ce8:	808080e7          	jalr	-2040(ra) # 800064ec <panic>
    80005cec:	0ff7f713          	andi	a4,a5,255
    80005cf0:	00900693          	li	a3,9
    80005cf4:	04d70063          	beq	a4,a3,80005d34 <kerneltrap+0xac>
    80005cf8:	fff00713          	li	a4,-1
    80005cfc:	03f71713          	slli	a4,a4,0x3f
    80005d00:	00170713          	addi	a4,a4,1
    80005d04:	fae798e3          	bne	a5,a4,80005cb4 <kerneltrap+0x2c>
    80005d08:	00000097          	auipc	ra,0x0
    80005d0c:	e00080e7          	jalr	-512(ra) # 80005b08 <cpuid>
    80005d10:	06050663          	beqz	a0,80005d7c <kerneltrap+0xf4>
    80005d14:	144027f3          	csrr	a5,sip
    80005d18:	ffd7f793          	andi	a5,a5,-3
    80005d1c:	14479073          	csrw	sip,a5
    80005d20:	01813083          	ld	ra,24(sp)
    80005d24:	01013403          	ld	s0,16(sp)
    80005d28:	00813483          	ld	s1,8(sp)
    80005d2c:	02010113          	addi	sp,sp,32
    80005d30:	00008067          	ret
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	3d0080e7          	jalr	976(ra) # 80006104 <plic_claim>
    80005d3c:	00a00793          	li	a5,10
    80005d40:	00050493          	mv	s1,a0
    80005d44:	06f50863          	beq	a0,a5,80005db4 <kerneltrap+0x12c>
    80005d48:	fc050ce3          	beqz	a0,80005d20 <kerneltrap+0x98>
    80005d4c:	00050593          	mv	a1,a0
    80005d50:	00002517          	auipc	a0,0x2
    80005d54:	77050513          	addi	a0,a0,1904 # 800084c0 <CONSOLE_STATUS+0x4b0>
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	7f0080e7          	jalr	2032(ra) # 80006548 <__printf>
    80005d60:	01013403          	ld	s0,16(sp)
    80005d64:	01813083          	ld	ra,24(sp)
    80005d68:	00048513          	mv	a0,s1
    80005d6c:	00813483          	ld	s1,8(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00000317          	auipc	t1,0x0
    80005d78:	3c830067          	jr	968(t1) # 8000613c <plic_complete>
    80005d7c:	0000a517          	auipc	a0,0xa
    80005d80:	bc450513          	addi	a0,a0,-1084 # 8000f940 <tickslock>
    80005d84:	00001097          	auipc	ra,0x1
    80005d88:	498080e7          	jalr	1176(ra) # 8000721c <acquire>
    80005d8c:	00005717          	auipc	a4,0x5
    80005d90:	9e870713          	addi	a4,a4,-1560 # 8000a774 <ticks>
    80005d94:	00072783          	lw	a5,0(a4)
    80005d98:	0000a517          	auipc	a0,0xa
    80005d9c:	ba850513          	addi	a0,a0,-1112 # 8000f940 <tickslock>
    80005da0:	0017879b          	addiw	a5,a5,1
    80005da4:	00f72023          	sw	a5,0(a4)
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	540080e7          	jalr	1344(ra) # 800072e8 <release>
    80005db0:	f65ff06f          	j	80005d14 <kerneltrap+0x8c>
    80005db4:	00001097          	auipc	ra,0x1
    80005db8:	09c080e7          	jalr	156(ra) # 80006e50 <uartintr>
    80005dbc:	fa5ff06f          	j	80005d60 <kerneltrap+0xd8>
    80005dc0:	00002517          	auipc	a0,0x2
    80005dc4:	6e050513          	addi	a0,a0,1760 # 800084a0 <CONSOLE_STATUS+0x490>
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	724080e7          	jalr	1828(ra) # 800064ec <panic>

0000000080005dd0 <clockintr>:
    80005dd0:	fe010113          	addi	sp,sp,-32
    80005dd4:	00813823          	sd	s0,16(sp)
    80005dd8:	00913423          	sd	s1,8(sp)
    80005ddc:	00113c23          	sd	ra,24(sp)
    80005de0:	02010413          	addi	s0,sp,32
    80005de4:	0000a497          	auipc	s1,0xa
    80005de8:	b5c48493          	addi	s1,s1,-1188 # 8000f940 <tickslock>
    80005dec:	00048513          	mv	a0,s1
    80005df0:	00001097          	auipc	ra,0x1
    80005df4:	42c080e7          	jalr	1068(ra) # 8000721c <acquire>
    80005df8:	00005717          	auipc	a4,0x5
    80005dfc:	97c70713          	addi	a4,a4,-1668 # 8000a774 <ticks>
    80005e00:	00072783          	lw	a5,0(a4)
    80005e04:	01013403          	ld	s0,16(sp)
    80005e08:	01813083          	ld	ra,24(sp)
    80005e0c:	00048513          	mv	a0,s1
    80005e10:	0017879b          	addiw	a5,a5,1
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00f72023          	sw	a5,0(a4)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00001317          	auipc	t1,0x1
    80005e24:	4c830067          	jr	1224(t1) # 800072e8 <release>

0000000080005e28 <devintr>:
    80005e28:	142027f3          	csrr	a5,scause
    80005e2c:	00000513          	li	a0,0
    80005e30:	0007c463          	bltz	a5,80005e38 <devintr+0x10>
    80005e34:	00008067          	ret
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00113c23          	sd	ra,24(sp)
    80005e44:	00913423          	sd	s1,8(sp)
    80005e48:	02010413          	addi	s0,sp,32
    80005e4c:	0ff7f713          	andi	a4,a5,255
    80005e50:	00900693          	li	a3,9
    80005e54:	04d70c63          	beq	a4,a3,80005eac <devintr+0x84>
    80005e58:	fff00713          	li	a4,-1
    80005e5c:	03f71713          	slli	a4,a4,0x3f
    80005e60:	00170713          	addi	a4,a4,1
    80005e64:	00e78c63          	beq	a5,a4,80005e7c <devintr+0x54>
    80005e68:	01813083          	ld	ra,24(sp)
    80005e6c:	01013403          	ld	s0,16(sp)
    80005e70:	00813483          	ld	s1,8(sp)
    80005e74:	02010113          	addi	sp,sp,32
    80005e78:	00008067          	ret
    80005e7c:	00000097          	auipc	ra,0x0
    80005e80:	c8c080e7          	jalr	-884(ra) # 80005b08 <cpuid>
    80005e84:	06050663          	beqz	a0,80005ef0 <devintr+0xc8>
    80005e88:	144027f3          	csrr	a5,sip
    80005e8c:	ffd7f793          	andi	a5,a5,-3
    80005e90:	14479073          	csrw	sip,a5
    80005e94:	01813083          	ld	ra,24(sp)
    80005e98:	01013403          	ld	s0,16(sp)
    80005e9c:	00813483          	ld	s1,8(sp)
    80005ea0:	00200513          	li	a0,2
    80005ea4:	02010113          	addi	sp,sp,32
    80005ea8:	00008067          	ret
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	258080e7          	jalr	600(ra) # 80006104 <plic_claim>
    80005eb4:	00a00793          	li	a5,10
    80005eb8:	00050493          	mv	s1,a0
    80005ebc:	06f50663          	beq	a0,a5,80005f28 <devintr+0x100>
    80005ec0:	00100513          	li	a0,1
    80005ec4:	fa0482e3          	beqz	s1,80005e68 <devintr+0x40>
    80005ec8:	00048593          	mv	a1,s1
    80005ecc:	00002517          	auipc	a0,0x2
    80005ed0:	5f450513          	addi	a0,a0,1524 # 800084c0 <CONSOLE_STATUS+0x4b0>
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	674080e7          	jalr	1652(ra) # 80006548 <__printf>
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	25c080e7          	jalr	604(ra) # 8000613c <plic_complete>
    80005ee8:	00100513          	li	a0,1
    80005eec:	f7dff06f          	j	80005e68 <devintr+0x40>
    80005ef0:	0000a517          	auipc	a0,0xa
    80005ef4:	a5050513          	addi	a0,a0,-1456 # 8000f940 <tickslock>
    80005ef8:	00001097          	auipc	ra,0x1
    80005efc:	324080e7          	jalr	804(ra) # 8000721c <acquire>
    80005f00:	00005717          	auipc	a4,0x5
    80005f04:	87470713          	addi	a4,a4,-1932 # 8000a774 <ticks>
    80005f08:	00072783          	lw	a5,0(a4)
    80005f0c:	0000a517          	auipc	a0,0xa
    80005f10:	a3450513          	addi	a0,a0,-1484 # 8000f940 <tickslock>
    80005f14:	0017879b          	addiw	a5,a5,1
    80005f18:	00f72023          	sw	a5,0(a4)
    80005f1c:	00001097          	auipc	ra,0x1
    80005f20:	3cc080e7          	jalr	972(ra) # 800072e8 <release>
    80005f24:	f65ff06f          	j	80005e88 <devintr+0x60>
    80005f28:	00001097          	auipc	ra,0x1
    80005f2c:	f28080e7          	jalr	-216(ra) # 80006e50 <uartintr>
    80005f30:	fadff06f          	j	80005edc <devintr+0xb4>
	...

0000000080005f40 <kernelvec>:
    80005f40:	f0010113          	addi	sp,sp,-256
    80005f44:	00113023          	sd	ra,0(sp)
    80005f48:	00213423          	sd	sp,8(sp)
    80005f4c:	00313823          	sd	gp,16(sp)
    80005f50:	00413c23          	sd	tp,24(sp)
    80005f54:	02513023          	sd	t0,32(sp)
    80005f58:	02613423          	sd	t1,40(sp)
    80005f5c:	02713823          	sd	t2,48(sp)
    80005f60:	02813c23          	sd	s0,56(sp)
    80005f64:	04913023          	sd	s1,64(sp)
    80005f68:	04a13423          	sd	a0,72(sp)
    80005f6c:	04b13823          	sd	a1,80(sp)
    80005f70:	04c13c23          	sd	a2,88(sp)
    80005f74:	06d13023          	sd	a3,96(sp)
    80005f78:	06e13423          	sd	a4,104(sp)
    80005f7c:	06f13823          	sd	a5,112(sp)
    80005f80:	07013c23          	sd	a6,120(sp)
    80005f84:	09113023          	sd	a7,128(sp)
    80005f88:	09213423          	sd	s2,136(sp)
    80005f8c:	09313823          	sd	s3,144(sp)
    80005f90:	09413c23          	sd	s4,152(sp)
    80005f94:	0b513023          	sd	s5,160(sp)
    80005f98:	0b613423          	sd	s6,168(sp)
    80005f9c:	0b713823          	sd	s7,176(sp)
    80005fa0:	0b813c23          	sd	s8,184(sp)
    80005fa4:	0d913023          	sd	s9,192(sp)
    80005fa8:	0da13423          	sd	s10,200(sp)
    80005fac:	0db13823          	sd	s11,208(sp)
    80005fb0:	0dc13c23          	sd	t3,216(sp)
    80005fb4:	0fd13023          	sd	t4,224(sp)
    80005fb8:	0fe13423          	sd	t5,232(sp)
    80005fbc:	0ff13823          	sd	t6,240(sp)
    80005fc0:	cc9ff0ef          	jal	ra,80005c88 <kerneltrap>
    80005fc4:	00013083          	ld	ra,0(sp)
    80005fc8:	00813103          	ld	sp,8(sp)
    80005fcc:	01013183          	ld	gp,16(sp)
    80005fd0:	02013283          	ld	t0,32(sp)
    80005fd4:	02813303          	ld	t1,40(sp)
    80005fd8:	03013383          	ld	t2,48(sp)
    80005fdc:	03813403          	ld	s0,56(sp)
    80005fe0:	04013483          	ld	s1,64(sp)
    80005fe4:	04813503          	ld	a0,72(sp)
    80005fe8:	05013583          	ld	a1,80(sp)
    80005fec:	05813603          	ld	a2,88(sp)
    80005ff0:	06013683          	ld	a3,96(sp)
    80005ff4:	06813703          	ld	a4,104(sp)
    80005ff8:	07013783          	ld	a5,112(sp)
    80005ffc:	07813803          	ld	a6,120(sp)
    80006000:	08013883          	ld	a7,128(sp)
    80006004:	08813903          	ld	s2,136(sp)
    80006008:	09013983          	ld	s3,144(sp)
    8000600c:	09813a03          	ld	s4,152(sp)
    80006010:	0a013a83          	ld	s5,160(sp)
    80006014:	0a813b03          	ld	s6,168(sp)
    80006018:	0b013b83          	ld	s7,176(sp)
    8000601c:	0b813c03          	ld	s8,184(sp)
    80006020:	0c013c83          	ld	s9,192(sp)
    80006024:	0c813d03          	ld	s10,200(sp)
    80006028:	0d013d83          	ld	s11,208(sp)
    8000602c:	0d813e03          	ld	t3,216(sp)
    80006030:	0e013e83          	ld	t4,224(sp)
    80006034:	0e813f03          	ld	t5,232(sp)
    80006038:	0f013f83          	ld	t6,240(sp)
    8000603c:	10010113          	addi	sp,sp,256
    80006040:	10200073          	sret
    80006044:	00000013          	nop
    80006048:	00000013          	nop
    8000604c:	00000013          	nop

0000000080006050 <timervec>:
    80006050:	34051573          	csrrw	a0,mscratch,a0
    80006054:	00b53023          	sd	a1,0(a0)
    80006058:	00c53423          	sd	a2,8(a0)
    8000605c:	00d53823          	sd	a3,16(a0)
    80006060:	01853583          	ld	a1,24(a0)
    80006064:	02053603          	ld	a2,32(a0)
    80006068:	0005b683          	ld	a3,0(a1)
    8000606c:	00c686b3          	add	a3,a3,a2
    80006070:	00d5b023          	sd	a3,0(a1)
    80006074:	00200593          	li	a1,2
    80006078:	14459073          	csrw	sip,a1
    8000607c:	01053683          	ld	a3,16(a0)
    80006080:	00853603          	ld	a2,8(a0)
    80006084:	00053583          	ld	a1,0(a0)
    80006088:	34051573          	csrrw	a0,mscratch,a0
    8000608c:	30200073          	mret

0000000080006090 <plicinit>:
    80006090:	ff010113          	addi	sp,sp,-16
    80006094:	00813423          	sd	s0,8(sp)
    80006098:	01010413          	addi	s0,sp,16
    8000609c:	00813403          	ld	s0,8(sp)
    800060a0:	0c0007b7          	lui	a5,0xc000
    800060a4:	00100713          	li	a4,1
    800060a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800060ac:	00e7a223          	sw	a4,4(a5)
    800060b0:	01010113          	addi	sp,sp,16
    800060b4:	00008067          	ret

00000000800060b8 <plicinithart>:
    800060b8:	ff010113          	addi	sp,sp,-16
    800060bc:	00813023          	sd	s0,0(sp)
    800060c0:	00113423          	sd	ra,8(sp)
    800060c4:	01010413          	addi	s0,sp,16
    800060c8:	00000097          	auipc	ra,0x0
    800060cc:	a40080e7          	jalr	-1472(ra) # 80005b08 <cpuid>
    800060d0:	0085171b          	slliw	a4,a0,0x8
    800060d4:	0c0027b7          	lui	a5,0xc002
    800060d8:	00e787b3          	add	a5,a5,a4
    800060dc:	40200713          	li	a4,1026
    800060e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800060e4:	00813083          	ld	ra,8(sp)
    800060e8:	00013403          	ld	s0,0(sp)
    800060ec:	00d5151b          	slliw	a0,a0,0xd
    800060f0:	0c2017b7          	lui	a5,0xc201
    800060f4:	00a78533          	add	a0,a5,a0
    800060f8:	00052023          	sw	zero,0(a0)
    800060fc:	01010113          	addi	sp,sp,16
    80006100:	00008067          	ret

0000000080006104 <plic_claim>:
    80006104:	ff010113          	addi	sp,sp,-16
    80006108:	00813023          	sd	s0,0(sp)
    8000610c:	00113423          	sd	ra,8(sp)
    80006110:	01010413          	addi	s0,sp,16
    80006114:	00000097          	auipc	ra,0x0
    80006118:	9f4080e7          	jalr	-1548(ra) # 80005b08 <cpuid>
    8000611c:	00813083          	ld	ra,8(sp)
    80006120:	00013403          	ld	s0,0(sp)
    80006124:	00d5151b          	slliw	a0,a0,0xd
    80006128:	0c2017b7          	lui	a5,0xc201
    8000612c:	00a78533          	add	a0,a5,a0
    80006130:	00452503          	lw	a0,4(a0)
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret

000000008000613c <plic_complete>:
    8000613c:	fe010113          	addi	sp,sp,-32
    80006140:	00813823          	sd	s0,16(sp)
    80006144:	00913423          	sd	s1,8(sp)
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	02010413          	addi	s0,sp,32
    80006150:	00050493          	mv	s1,a0
    80006154:	00000097          	auipc	ra,0x0
    80006158:	9b4080e7          	jalr	-1612(ra) # 80005b08 <cpuid>
    8000615c:	01813083          	ld	ra,24(sp)
    80006160:	01013403          	ld	s0,16(sp)
    80006164:	00d5179b          	slliw	a5,a0,0xd
    80006168:	0c201737          	lui	a4,0xc201
    8000616c:	00f707b3          	add	a5,a4,a5
    80006170:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006174:	00813483          	ld	s1,8(sp)
    80006178:	02010113          	addi	sp,sp,32
    8000617c:	00008067          	ret

0000000080006180 <consolewrite>:
    80006180:	fb010113          	addi	sp,sp,-80
    80006184:	04813023          	sd	s0,64(sp)
    80006188:	04113423          	sd	ra,72(sp)
    8000618c:	02913c23          	sd	s1,56(sp)
    80006190:	03213823          	sd	s2,48(sp)
    80006194:	03313423          	sd	s3,40(sp)
    80006198:	03413023          	sd	s4,32(sp)
    8000619c:	01513c23          	sd	s5,24(sp)
    800061a0:	05010413          	addi	s0,sp,80
    800061a4:	06c05c63          	blez	a2,8000621c <consolewrite+0x9c>
    800061a8:	00060993          	mv	s3,a2
    800061ac:	00050a13          	mv	s4,a0
    800061b0:	00058493          	mv	s1,a1
    800061b4:	00000913          	li	s2,0
    800061b8:	fff00a93          	li	s5,-1
    800061bc:	01c0006f          	j	800061d8 <consolewrite+0x58>
    800061c0:	fbf44503          	lbu	a0,-65(s0)
    800061c4:	0019091b          	addiw	s2,s2,1
    800061c8:	00148493          	addi	s1,s1,1
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	a9c080e7          	jalr	-1380(ra) # 80006c68 <uartputc>
    800061d4:	03298063          	beq	s3,s2,800061f4 <consolewrite+0x74>
    800061d8:	00048613          	mv	a2,s1
    800061dc:	00100693          	li	a3,1
    800061e0:	000a0593          	mv	a1,s4
    800061e4:	fbf40513          	addi	a0,s0,-65
    800061e8:	00000097          	auipc	ra,0x0
    800061ec:	9d8080e7          	jalr	-1576(ra) # 80005bc0 <either_copyin>
    800061f0:	fd5518e3          	bne	a0,s5,800061c0 <consolewrite+0x40>
    800061f4:	04813083          	ld	ra,72(sp)
    800061f8:	04013403          	ld	s0,64(sp)
    800061fc:	03813483          	ld	s1,56(sp)
    80006200:	02813983          	ld	s3,40(sp)
    80006204:	02013a03          	ld	s4,32(sp)
    80006208:	01813a83          	ld	s5,24(sp)
    8000620c:	00090513          	mv	a0,s2
    80006210:	03013903          	ld	s2,48(sp)
    80006214:	05010113          	addi	sp,sp,80
    80006218:	00008067          	ret
    8000621c:	00000913          	li	s2,0
    80006220:	fd5ff06f          	j	800061f4 <consolewrite+0x74>

0000000080006224 <consoleread>:
    80006224:	f9010113          	addi	sp,sp,-112
    80006228:	06813023          	sd	s0,96(sp)
    8000622c:	04913c23          	sd	s1,88(sp)
    80006230:	05213823          	sd	s2,80(sp)
    80006234:	05313423          	sd	s3,72(sp)
    80006238:	05413023          	sd	s4,64(sp)
    8000623c:	03513c23          	sd	s5,56(sp)
    80006240:	03613823          	sd	s6,48(sp)
    80006244:	03713423          	sd	s7,40(sp)
    80006248:	03813023          	sd	s8,32(sp)
    8000624c:	06113423          	sd	ra,104(sp)
    80006250:	01913c23          	sd	s9,24(sp)
    80006254:	07010413          	addi	s0,sp,112
    80006258:	00060b93          	mv	s7,a2
    8000625c:	00050913          	mv	s2,a0
    80006260:	00058c13          	mv	s8,a1
    80006264:	00060b1b          	sext.w	s6,a2
    80006268:	00009497          	auipc	s1,0x9
    8000626c:	70048493          	addi	s1,s1,1792 # 8000f968 <cons>
    80006270:	00400993          	li	s3,4
    80006274:	fff00a13          	li	s4,-1
    80006278:	00a00a93          	li	s5,10
    8000627c:	05705e63          	blez	s7,800062d8 <consoleread+0xb4>
    80006280:	09c4a703          	lw	a4,156(s1)
    80006284:	0984a783          	lw	a5,152(s1)
    80006288:	0007071b          	sext.w	a4,a4
    8000628c:	08e78463          	beq	a5,a4,80006314 <consoleread+0xf0>
    80006290:	07f7f713          	andi	a4,a5,127
    80006294:	00e48733          	add	a4,s1,a4
    80006298:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000629c:	0017869b          	addiw	a3,a5,1
    800062a0:	08d4ac23          	sw	a3,152(s1)
    800062a4:	00070c9b          	sext.w	s9,a4
    800062a8:	0b370663          	beq	a4,s3,80006354 <consoleread+0x130>
    800062ac:	00100693          	li	a3,1
    800062b0:	f9f40613          	addi	a2,s0,-97
    800062b4:	000c0593          	mv	a1,s8
    800062b8:	00090513          	mv	a0,s2
    800062bc:	f8e40fa3          	sb	a4,-97(s0)
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	8b4080e7          	jalr	-1868(ra) # 80005b74 <either_copyout>
    800062c8:	01450863          	beq	a0,s4,800062d8 <consoleread+0xb4>
    800062cc:	001c0c13          	addi	s8,s8,1
    800062d0:	fffb8b9b          	addiw	s7,s7,-1
    800062d4:	fb5c94e3          	bne	s9,s5,8000627c <consoleread+0x58>
    800062d8:	000b851b          	sext.w	a0,s7
    800062dc:	06813083          	ld	ra,104(sp)
    800062e0:	06013403          	ld	s0,96(sp)
    800062e4:	05813483          	ld	s1,88(sp)
    800062e8:	05013903          	ld	s2,80(sp)
    800062ec:	04813983          	ld	s3,72(sp)
    800062f0:	04013a03          	ld	s4,64(sp)
    800062f4:	03813a83          	ld	s5,56(sp)
    800062f8:	02813b83          	ld	s7,40(sp)
    800062fc:	02013c03          	ld	s8,32(sp)
    80006300:	01813c83          	ld	s9,24(sp)
    80006304:	40ab053b          	subw	a0,s6,a0
    80006308:	03013b03          	ld	s6,48(sp)
    8000630c:	07010113          	addi	sp,sp,112
    80006310:	00008067          	ret
    80006314:	00001097          	auipc	ra,0x1
    80006318:	1d8080e7          	jalr	472(ra) # 800074ec <push_on>
    8000631c:	0984a703          	lw	a4,152(s1)
    80006320:	09c4a783          	lw	a5,156(s1)
    80006324:	0007879b          	sext.w	a5,a5
    80006328:	fef70ce3          	beq	a4,a5,80006320 <consoleread+0xfc>
    8000632c:	00001097          	auipc	ra,0x1
    80006330:	234080e7          	jalr	564(ra) # 80007560 <pop_on>
    80006334:	0984a783          	lw	a5,152(s1)
    80006338:	07f7f713          	andi	a4,a5,127
    8000633c:	00e48733          	add	a4,s1,a4
    80006340:	01874703          	lbu	a4,24(a4)
    80006344:	0017869b          	addiw	a3,a5,1
    80006348:	08d4ac23          	sw	a3,152(s1)
    8000634c:	00070c9b          	sext.w	s9,a4
    80006350:	f5371ee3          	bne	a4,s3,800062ac <consoleread+0x88>
    80006354:	000b851b          	sext.w	a0,s7
    80006358:	f96bf2e3          	bgeu	s7,s6,800062dc <consoleread+0xb8>
    8000635c:	08f4ac23          	sw	a5,152(s1)
    80006360:	f7dff06f          	j	800062dc <consoleread+0xb8>

0000000080006364 <consputc>:
    80006364:	10000793          	li	a5,256
    80006368:	00f50663          	beq	a0,a5,80006374 <consputc+0x10>
    8000636c:	00001317          	auipc	t1,0x1
    80006370:	9f430067          	jr	-1548(t1) # 80006d60 <uartputc_sync>
    80006374:	ff010113          	addi	sp,sp,-16
    80006378:	00113423          	sd	ra,8(sp)
    8000637c:	00813023          	sd	s0,0(sp)
    80006380:	01010413          	addi	s0,sp,16
    80006384:	00800513          	li	a0,8
    80006388:	00001097          	auipc	ra,0x1
    8000638c:	9d8080e7          	jalr	-1576(ra) # 80006d60 <uartputc_sync>
    80006390:	02000513          	li	a0,32
    80006394:	00001097          	auipc	ra,0x1
    80006398:	9cc080e7          	jalr	-1588(ra) # 80006d60 <uartputc_sync>
    8000639c:	00013403          	ld	s0,0(sp)
    800063a0:	00813083          	ld	ra,8(sp)
    800063a4:	00800513          	li	a0,8
    800063a8:	01010113          	addi	sp,sp,16
    800063ac:	00001317          	auipc	t1,0x1
    800063b0:	9b430067          	jr	-1612(t1) # 80006d60 <uartputc_sync>

00000000800063b4 <consoleintr>:
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00813823          	sd	s0,16(sp)
    800063bc:	00913423          	sd	s1,8(sp)
    800063c0:	01213023          	sd	s2,0(sp)
    800063c4:	00113c23          	sd	ra,24(sp)
    800063c8:	02010413          	addi	s0,sp,32
    800063cc:	00009917          	auipc	s2,0x9
    800063d0:	59c90913          	addi	s2,s2,1436 # 8000f968 <cons>
    800063d4:	00050493          	mv	s1,a0
    800063d8:	00090513          	mv	a0,s2
    800063dc:	00001097          	auipc	ra,0x1
    800063e0:	e40080e7          	jalr	-448(ra) # 8000721c <acquire>
    800063e4:	02048c63          	beqz	s1,8000641c <consoleintr+0x68>
    800063e8:	0a092783          	lw	a5,160(s2)
    800063ec:	09892703          	lw	a4,152(s2)
    800063f0:	07f00693          	li	a3,127
    800063f4:	40e7873b          	subw	a4,a5,a4
    800063f8:	02e6e263          	bltu	a3,a4,8000641c <consoleintr+0x68>
    800063fc:	00d00713          	li	a4,13
    80006400:	04e48063          	beq	s1,a4,80006440 <consoleintr+0x8c>
    80006404:	07f7f713          	andi	a4,a5,127
    80006408:	00e90733          	add	a4,s2,a4
    8000640c:	0017879b          	addiw	a5,a5,1
    80006410:	0af92023          	sw	a5,160(s2)
    80006414:	00970c23          	sb	s1,24(a4)
    80006418:	08f92e23          	sw	a5,156(s2)
    8000641c:	01013403          	ld	s0,16(sp)
    80006420:	01813083          	ld	ra,24(sp)
    80006424:	00813483          	ld	s1,8(sp)
    80006428:	00013903          	ld	s2,0(sp)
    8000642c:	00009517          	auipc	a0,0x9
    80006430:	53c50513          	addi	a0,a0,1340 # 8000f968 <cons>
    80006434:	02010113          	addi	sp,sp,32
    80006438:	00001317          	auipc	t1,0x1
    8000643c:	eb030067          	jr	-336(t1) # 800072e8 <release>
    80006440:	00a00493          	li	s1,10
    80006444:	fc1ff06f          	j	80006404 <consoleintr+0x50>

0000000080006448 <consoleinit>:
    80006448:	fe010113          	addi	sp,sp,-32
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	00813823          	sd	s0,16(sp)
    80006454:	00913423          	sd	s1,8(sp)
    80006458:	02010413          	addi	s0,sp,32
    8000645c:	00009497          	auipc	s1,0x9
    80006460:	50c48493          	addi	s1,s1,1292 # 8000f968 <cons>
    80006464:	00048513          	mv	a0,s1
    80006468:	00002597          	auipc	a1,0x2
    8000646c:	0b058593          	addi	a1,a1,176 # 80008518 <CONSOLE_STATUS+0x508>
    80006470:	00001097          	auipc	ra,0x1
    80006474:	d88080e7          	jalr	-632(ra) # 800071f8 <initlock>
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	7ac080e7          	jalr	1964(ra) # 80006c24 <uartinit>
    80006480:	01813083          	ld	ra,24(sp)
    80006484:	01013403          	ld	s0,16(sp)
    80006488:	00000797          	auipc	a5,0x0
    8000648c:	d9c78793          	addi	a5,a5,-612 # 80006224 <consoleread>
    80006490:	0af4bc23          	sd	a5,184(s1)
    80006494:	00000797          	auipc	a5,0x0
    80006498:	cec78793          	addi	a5,a5,-788 # 80006180 <consolewrite>
    8000649c:	0cf4b023          	sd	a5,192(s1)
    800064a0:	00813483          	ld	s1,8(sp)
    800064a4:	02010113          	addi	sp,sp,32
    800064a8:	00008067          	ret

00000000800064ac <console_read>:
    800064ac:	ff010113          	addi	sp,sp,-16
    800064b0:	00813423          	sd	s0,8(sp)
    800064b4:	01010413          	addi	s0,sp,16
    800064b8:	00813403          	ld	s0,8(sp)
    800064bc:	00009317          	auipc	t1,0x9
    800064c0:	56433303          	ld	t1,1380(t1) # 8000fa20 <devsw+0x10>
    800064c4:	01010113          	addi	sp,sp,16
    800064c8:	00030067          	jr	t1

00000000800064cc <console_write>:
    800064cc:	ff010113          	addi	sp,sp,-16
    800064d0:	00813423          	sd	s0,8(sp)
    800064d4:	01010413          	addi	s0,sp,16
    800064d8:	00813403          	ld	s0,8(sp)
    800064dc:	00009317          	auipc	t1,0x9
    800064e0:	54c33303          	ld	t1,1356(t1) # 8000fa28 <devsw+0x18>
    800064e4:	01010113          	addi	sp,sp,16
    800064e8:	00030067          	jr	t1

00000000800064ec <panic>:
    800064ec:	fe010113          	addi	sp,sp,-32
    800064f0:	00113c23          	sd	ra,24(sp)
    800064f4:	00813823          	sd	s0,16(sp)
    800064f8:	00913423          	sd	s1,8(sp)
    800064fc:	02010413          	addi	s0,sp,32
    80006500:	00050493          	mv	s1,a0
    80006504:	00002517          	auipc	a0,0x2
    80006508:	01c50513          	addi	a0,a0,28 # 80008520 <CONSOLE_STATUS+0x510>
    8000650c:	00009797          	auipc	a5,0x9
    80006510:	5a07ae23          	sw	zero,1468(a5) # 8000fac8 <pr+0x18>
    80006514:	00000097          	auipc	ra,0x0
    80006518:	034080e7          	jalr	52(ra) # 80006548 <__printf>
    8000651c:	00048513          	mv	a0,s1
    80006520:	00000097          	auipc	ra,0x0
    80006524:	028080e7          	jalr	40(ra) # 80006548 <__printf>
    80006528:	00002517          	auipc	a0,0x2
    8000652c:	bc850513          	addi	a0,a0,-1080 # 800080f0 <CONSOLE_STATUS+0xe0>
    80006530:	00000097          	auipc	ra,0x0
    80006534:	018080e7          	jalr	24(ra) # 80006548 <__printf>
    80006538:	00100793          	li	a5,1
    8000653c:	00004717          	auipc	a4,0x4
    80006540:	22f72e23          	sw	a5,572(a4) # 8000a778 <panicked>
    80006544:	0000006f          	j	80006544 <panic+0x58>

0000000080006548 <__printf>:
    80006548:	f3010113          	addi	sp,sp,-208
    8000654c:	08813023          	sd	s0,128(sp)
    80006550:	07313423          	sd	s3,104(sp)
    80006554:	09010413          	addi	s0,sp,144
    80006558:	05813023          	sd	s8,64(sp)
    8000655c:	08113423          	sd	ra,136(sp)
    80006560:	06913c23          	sd	s1,120(sp)
    80006564:	07213823          	sd	s2,112(sp)
    80006568:	07413023          	sd	s4,96(sp)
    8000656c:	05513c23          	sd	s5,88(sp)
    80006570:	05613823          	sd	s6,80(sp)
    80006574:	05713423          	sd	s7,72(sp)
    80006578:	03913c23          	sd	s9,56(sp)
    8000657c:	03a13823          	sd	s10,48(sp)
    80006580:	03b13423          	sd	s11,40(sp)
    80006584:	00009317          	auipc	t1,0x9
    80006588:	52c30313          	addi	t1,t1,1324 # 8000fab0 <pr>
    8000658c:	01832c03          	lw	s8,24(t1)
    80006590:	00b43423          	sd	a1,8(s0)
    80006594:	00c43823          	sd	a2,16(s0)
    80006598:	00d43c23          	sd	a3,24(s0)
    8000659c:	02e43023          	sd	a4,32(s0)
    800065a0:	02f43423          	sd	a5,40(s0)
    800065a4:	03043823          	sd	a6,48(s0)
    800065a8:	03143c23          	sd	a7,56(s0)
    800065ac:	00050993          	mv	s3,a0
    800065b0:	4a0c1663          	bnez	s8,80006a5c <__printf+0x514>
    800065b4:	60098c63          	beqz	s3,80006bcc <__printf+0x684>
    800065b8:	0009c503          	lbu	a0,0(s3)
    800065bc:	00840793          	addi	a5,s0,8
    800065c0:	f6f43c23          	sd	a5,-136(s0)
    800065c4:	00000493          	li	s1,0
    800065c8:	22050063          	beqz	a0,800067e8 <__printf+0x2a0>
    800065cc:	00002a37          	lui	s4,0x2
    800065d0:	00018ab7          	lui	s5,0x18
    800065d4:	000f4b37          	lui	s6,0xf4
    800065d8:	00989bb7          	lui	s7,0x989
    800065dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800065e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800065e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800065e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800065ec:	00148c9b          	addiw	s9,s1,1
    800065f0:	02500793          	li	a5,37
    800065f4:	01998933          	add	s2,s3,s9
    800065f8:	38f51263          	bne	a0,a5,8000697c <__printf+0x434>
    800065fc:	00094783          	lbu	a5,0(s2)
    80006600:	00078c9b          	sext.w	s9,a5
    80006604:	1e078263          	beqz	a5,800067e8 <__printf+0x2a0>
    80006608:	0024849b          	addiw	s1,s1,2
    8000660c:	07000713          	li	a4,112
    80006610:	00998933          	add	s2,s3,s1
    80006614:	38e78a63          	beq	a5,a4,800069a8 <__printf+0x460>
    80006618:	20f76863          	bltu	a4,a5,80006828 <__printf+0x2e0>
    8000661c:	42a78863          	beq	a5,a0,80006a4c <__printf+0x504>
    80006620:	06400713          	li	a4,100
    80006624:	40e79663          	bne	a5,a4,80006a30 <__printf+0x4e8>
    80006628:	f7843783          	ld	a5,-136(s0)
    8000662c:	0007a603          	lw	a2,0(a5)
    80006630:	00878793          	addi	a5,a5,8
    80006634:	f6f43c23          	sd	a5,-136(s0)
    80006638:	42064a63          	bltz	a2,80006a6c <__printf+0x524>
    8000663c:	00a00713          	li	a4,10
    80006640:	02e677bb          	remuw	a5,a2,a4
    80006644:	00002d97          	auipc	s11,0x2
    80006648:	f04d8d93          	addi	s11,s11,-252 # 80008548 <digits>
    8000664c:	00900593          	li	a1,9
    80006650:	0006051b          	sext.w	a0,a2
    80006654:	00000c93          	li	s9,0
    80006658:	02079793          	slli	a5,a5,0x20
    8000665c:	0207d793          	srli	a5,a5,0x20
    80006660:	00fd87b3          	add	a5,s11,a5
    80006664:	0007c783          	lbu	a5,0(a5)
    80006668:	02e656bb          	divuw	a3,a2,a4
    8000666c:	f8f40023          	sb	a5,-128(s0)
    80006670:	14c5d863          	bge	a1,a2,800067c0 <__printf+0x278>
    80006674:	06300593          	li	a1,99
    80006678:	00100c93          	li	s9,1
    8000667c:	02e6f7bb          	remuw	a5,a3,a4
    80006680:	02079793          	slli	a5,a5,0x20
    80006684:	0207d793          	srli	a5,a5,0x20
    80006688:	00fd87b3          	add	a5,s11,a5
    8000668c:	0007c783          	lbu	a5,0(a5)
    80006690:	02e6d73b          	divuw	a4,a3,a4
    80006694:	f8f400a3          	sb	a5,-127(s0)
    80006698:	12a5f463          	bgeu	a1,a0,800067c0 <__printf+0x278>
    8000669c:	00a00693          	li	a3,10
    800066a0:	00900593          	li	a1,9
    800066a4:	02d777bb          	remuw	a5,a4,a3
    800066a8:	02079793          	slli	a5,a5,0x20
    800066ac:	0207d793          	srli	a5,a5,0x20
    800066b0:	00fd87b3          	add	a5,s11,a5
    800066b4:	0007c503          	lbu	a0,0(a5)
    800066b8:	02d757bb          	divuw	a5,a4,a3
    800066bc:	f8a40123          	sb	a0,-126(s0)
    800066c0:	48e5f263          	bgeu	a1,a4,80006b44 <__printf+0x5fc>
    800066c4:	06300513          	li	a0,99
    800066c8:	02d7f5bb          	remuw	a1,a5,a3
    800066cc:	02059593          	slli	a1,a1,0x20
    800066d0:	0205d593          	srli	a1,a1,0x20
    800066d4:	00bd85b3          	add	a1,s11,a1
    800066d8:	0005c583          	lbu	a1,0(a1)
    800066dc:	02d7d7bb          	divuw	a5,a5,a3
    800066e0:	f8b401a3          	sb	a1,-125(s0)
    800066e4:	48e57263          	bgeu	a0,a4,80006b68 <__printf+0x620>
    800066e8:	3e700513          	li	a0,999
    800066ec:	02d7f5bb          	remuw	a1,a5,a3
    800066f0:	02059593          	slli	a1,a1,0x20
    800066f4:	0205d593          	srli	a1,a1,0x20
    800066f8:	00bd85b3          	add	a1,s11,a1
    800066fc:	0005c583          	lbu	a1,0(a1)
    80006700:	02d7d7bb          	divuw	a5,a5,a3
    80006704:	f8b40223          	sb	a1,-124(s0)
    80006708:	46e57663          	bgeu	a0,a4,80006b74 <__printf+0x62c>
    8000670c:	02d7f5bb          	remuw	a1,a5,a3
    80006710:	02059593          	slli	a1,a1,0x20
    80006714:	0205d593          	srli	a1,a1,0x20
    80006718:	00bd85b3          	add	a1,s11,a1
    8000671c:	0005c583          	lbu	a1,0(a1)
    80006720:	02d7d7bb          	divuw	a5,a5,a3
    80006724:	f8b402a3          	sb	a1,-123(s0)
    80006728:	46ea7863          	bgeu	s4,a4,80006b98 <__printf+0x650>
    8000672c:	02d7f5bb          	remuw	a1,a5,a3
    80006730:	02059593          	slli	a1,a1,0x20
    80006734:	0205d593          	srli	a1,a1,0x20
    80006738:	00bd85b3          	add	a1,s11,a1
    8000673c:	0005c583          	lbu	a1,0(a1)
    80006740:	02d7d7bb          	divuw	a5,a5,a3
    80006744:	f8b40323          	sb	a1,-122(s0)
    80006748:	3eeaf863          	bgeu	s5,a4,80006b38 <__printf+0x5f0>
    8000674c:	02d7f5bb          	remuw	a1,a5,a3
    80006750:	02059593          	slli	a1,a1,0x20
    80006754:	0205d593          	srli	a1,a1,0x20
    80006758:	00bd85b3          	add	a1,s11,a1
    8000675c:	0005c583          	lbu	a1,0(a1)
    80006760:	02d7d7bb          	divuw	a5,a5,a3
    80006764:	f8b403a3          	sb	a1,-121(s0)
    80006768:	42eb7e63          	bgeu	s6,a4,80006ba4 <__printf+0x65c>
    8000676c:	02d7f5bb          	remuw	a1,a5,a3
    80006770:	02059593          	slli	a1,a1,0x20
    80006774:	0205d593          	srli	a1,a1,0x20
    80006778:	00bd85b3          	add	a1,s11,a1
    8000677c:	0005c583          	lbu	a1,0(a1)
    80006780:	02d7d7bb          	divuw	a5,a5,a3
    80006784:	f8b40423          	sb	a1,-120(s0)
    80006788:	42ebfc63          	bgeu	s7,a4,80006bc0 <__printf+0x678>
    8000678c:	02079793          	slli	a5,a5,0x20
    80006790:	0207d793          	srli	a5,a5,0x20
    80006794:	00fd8db3          	add	s11,s11,a5
    80006798:	000dc703          	lbu	a4,0(s11)
    8000679c:	00a00793          	li	a5,10
    800067a0:	00900c93          	li	s9,9
    800067a4:	f8e404a3          	sb	a4,-119(s0)
    800067a8:	00065c63          	bgez	a2,800067c0 <__printf+0x278>
    800067ac:	f9040713          	addi	a4,s0,-112
    800067b0:	00f70733          	add	a4,a4,a5
    800067b4:	02d00693          	li	a3,45
    800067b8:	fed70823          	sb	a3,-16(a4)
    800067bc:	00078c93          	mv	s9,a5
    800067c0:	f8040793          	addi	a5,s0,-128
    800067c4:	01978cb3          	add	s9,a5,s9
    800067c8:	f7f40d13          	addi	s10,s0,-129
    800067cc:	000cc503          	lbu	a0,0(s9)
    800067d0:	fffc8c93          	addi	s9,s9,-1
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	b90080e7          	jalr	-1136(ra) # 80006364 <consputc>
    800067dc:	ffac98e3          	bne	s9,s10,800067cc <__printf+0x284>
    800067e0:	00094503          	lbu	a0,0(s2)
    800067e4:	e00514e3          	bnez	a0,800065ec <__printf+0xa4>
    800067e8:	1a0c1663          	bnez	s8,80006994 <__printf+0x44c>
    800067ec:	08813083          	ld	ra,136(sp)
    800067f0:	08013403          	ld	s0,128(sp)
    800067f4:	07813483          	ld	s1,120(sp)
    800067f8:	07013903          	ld	s2,112(sp)
    800067fc:	06813983          	ld	s3,104(sp)
    80006800:	06013a03          	ld	s4,96(sp)
    80006804:	05813a83          	ld	s5,88(sp)
    80006808:	05013b03          	ld	s6,80(sp)
    8000680c:	04813b83          	ld	s7,72(sp)
    80006810:	04013c03          	ld	s8,64(sp)
    80006814:	03813c83          	ld	s9,56(sp)
    80006818:	03013d03          	ld	s10,48(sp)
    8000681c:	02813d83          	ld	s11,40(sp)
    80006820:	0d010113          	addi	sp,sp,208
    80006824:	00008067          	ret
    80006828:	07300713          	li	a4,115
    8000682c:	1ce78a63          	beq	a5,a4,80006a00 <__printf+0x4b8>
    80006830:	07800713          	li	a4,120
    80006834:	1ee79e63          	bne	a5,a4,80006a30 <__printf+0x4e8>
    80006838:	f7843783          	ld	a5,-136(s0)
    8000683c:	0007a703          	lw	a4,0(a5)
    80006840:	00878793          	addi	a5,a5,8
    80006844:	f6f43c23          	sd	a5,-136(s0)
    80006848:	28074263          	bltz	a4,80006acc <__printf+0x584>
    8000684c:	00002d97          	auipc	s11,0x2
    80006850:	cfcd8d93          	addi	s11,s11,-772 # 80008548 <digits>
    80006854:	00f77793          	andi	a5,a4,15
    80006858:	00fd87b3          	add	a5,s11,a5
    8000685c:	0007c683          	lbu	a3,0(a5)
    80006860:	00f00613          	li	a2,15
    80006864:	0007079b          	sext.w	a5,a4
    80006868:	f8d40023          	sb	a3,-128(s0)
    8000686c:	0047559b          	srliw	a1,a4,0x4
    80006870:	0047569b          	srliw	a3,a4,0x4
    80006874:	00000c93          	li	s9,0
    80006878:	0ee65063          	bge	a2,a4,80006958 <__printf+0x410>
    8000687c:	00f6f693          	andi	a3,a3,15
    80006880:	00dd86b3          	add	a3,s11,a3
    80006884:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006888:	0087d79b          	srliw	a5,a5,0x8
    8000688c:	00100c93          	li	s9,1
    80006890:	f8d400a3          	sb	a3,-127(s0)
    80006894:	0cb67263          	bgeu	a2,a1,80006958 <__printf+0x410>
    80006898:	00f7f693          	andi	a3,a5,15
    8000689c:	00dd86b3          	add	a3,s11,a3
    800068a0:	0006c583          	lbu	a1,0(a3)
    800068a4:	00f00613          	li	a2,15
    800068a8:	0047d69b          	srliw	a3,a5,0x4
    800068ac:	f8b40123          	sb	a1,-126(s0)
    800068b0:	0047d593          	srli	a1,a5,0x4
    800068b4:	28f67e63          	bgeu	a2,a5,80006b50 <__printf+0x608>
    800068b8:	00f6f693          	andi	a3,a3,15
    800068bc:	00dd86b3          	add	a3,s11,a3
    800068c0:	0006c503          	lbu	a0,0(a3)
    800068c4:	0087d813          	srli	a6,a5,0x8
    800068c8:	0087d69b          	srliw	a3,a5,0x8
    800068cc:	f8a401a3          	sb	a0,-125(s0)
    800068d0:	28b67663          	bgeu	a2,a1,80006b5c <__printf+0x614>
    800068d4:	00f6f693          	andi	a3,a3,15
    800068d8:	00dd86b3          	add	a3,s11,a3
    800068dc:	0006c583          	lbu	a1,0(a3)
    800068e0:	00c7d513          	srli	a0,a5,0xc
    800068e4:	00c7d69b          	srliw	a3,a5,0xc
    800068e8:	f8b40223          	sb	a1,-124(s0)
    800068ec:	29067a63          	bgeu	a2,a6,80006b80 <__printf+0x638>
    800068f0:	00f6f693          	andi	a3,a3,15
    800068f4:	00dd86b3          	add	a3,s11,a3
    800068f8:	0006c583          	lbu	a1,0(a3)
    800068fc:	0107d813          	srli	a6,a5,0x10
    80006900:	0107d69b          	srliw	a3,a5,0x10
    80006904:	f8b402a3          	sb	a1,-123(s0)
    80006908:	28a67263          	bgeu	a2,a0,80006b8c <__printf+0x644>
    8000690c:	00f6f693          	andi	a3,a3,15
    80006910:	00dd86b3          	add	a3,s11,a3
    80006914:	0006c683          	lbu	a3,0(a3)
    80006918:	0147d79b          	srliw	a5,a5,0x14
    8000691c:	f8d40323          	sb	a3,-122(s0)
    80006920:	21067663          	bgeu	a2,a6,80006b2c <__printf+0x5e4>
    80006924:	02079793          	slli	a5,a5,0x20
    80006928:	0207d793          	srli	a5,a5,0x20
    8000692c:	00fd8db3          	add	s11,s11,a5
    80006930:	000dc683          	lbu	a3,0(s11)
    80006934:	00800793          	li	a5,8
    80006938:	00700c93          	li	s9,7
    8000693c:	f8d403a3          	sb	a3,-121(s0)
    80006940:	00075c63          	bgez	a4,80006958 <__printf+0x410>
    80006944:	f9040713          	addi	a4,s0,-112
    80006948:	00f70733          	add	a4,a4,a5
    8000694c:	02d00693          	li	a3,45
    80006950:	fed70823          	sb	a3,-16(a4)
    80006954:	00078c93          	mv	s9,a5
    80006958:	f8040793          	addi	a5,s0,-128
    8000695c:	01978cb3          	add	s9,a5,s9
    80006960:	f7f40d13          	addi	s10,s0,-129
    80006964:	000cc503          	lbu	a0,0(s9)
    80006968:	fffc8c93          	addi	s9,s9,-1
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	9f8080e7          	jalr	-1544(ra) # 80006364 <consputc>
    80006974:	ff9d18e3          	bne	s10,s9,80006964 <__printf+0x41c>
    80006978:	0100006f          	j	80006988 <__printf+0x440>
    8000697c:	00000097          	auipc	ra,0x0
    80006980:	9e8080e7          	jalr	-1560(ra) # 80006364 <consputc>
    80006984:	000c8493          	mv	s1,s9
    80006988:	00094503          	lbu	a0,0(s2)
    8000698c:	c60510e3          	bnez	a0,800065ec <__printf+0xa4>
    80006990:	e40c0ee3          	beqz	s8,800067ec <__printf+0x2a4>
    80006994:	00009517          	auipc	a0,0x9
    80006998:	11c50513          	addi	a0,a0,284 # 8000fab0 <pr>
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	94c080e7          	jalr	-1716(ra) # 800072e8 <release>
    800069a4:	e49ff06f          	j	800067ec <__printf+0x2a4>
    800069a8:	f7843783          	ld	a5,-136(s0)
    800069ac:	03000513          	li	a0,48
    800069b0:	01000d13          	li	s10,16
    800069b4:	00878713          	addi	a4,a5,8
    800069b8:	0007bc83          	ld	s9,0(a5)
    800069bc:	f6e43c23          	sd	a4,-136(s0)
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	9a4080e7          	jalr	-1628(ra) # 80006364 <consputc>
    800069c8:	07800513          	li	a0,120
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	998080e7          	jalr	-1640(ra) # 80006364 <consputc>
    800069d4:	00002d97          	auipc	s11,0x2
    800069d8:	b74d8d93          	addi	s11,s11,-1164 # 80008548 <digits>
    800069dc:	03ccd793          	srli	a5,s9,0x3c
    800069e0:	00fd87b3          	add	a5,s11,a5
    800069e4:	0007c503          	lbu	a0,0(a5)
    800069e8:	fffd0d1b          	addiw	s10,s10,-1
    800069ec:	004c9c93          	slli	s9,s9,0x4
    800069f0:	00000097          	auipc	ra,0x0
    800069f4:	974080e7          	jalr	-1676(ra) # 80006364 <consputc>
    800069f8:	fe0d12e3          	bnez	s10,800069dc <__printf+0x494>
    800069fc:	f8dff06f          	j	80006988 <__printf+0x440>
    80006a00:	f7843783          	ld	a5,-136(s0)
    80006a04:	0007bc83          	ld	s9,0(a5)
    80006a08:	00878793          	addi	a5,a5,8
    80006a0c:	f6f43c23          	sd	a5,-136(s0)
    80006a10:	000c9a63          	bnez	s9,80006a24 <__printf+0x4dc>
    80006a14:	1080006f          	j	80006b1c <__printf+0x5d4>
    80006a18:	001c8c93          	addi	s9,s9,1
    80006a1c:	00000097          	auipc	ra,0x0
    80006a20:	948080e7          	jalr	-1720(ra) # 80006364 <consputc>
    80006a24:	000cc503          	lbu	a0,0(s9)
    80006a28:	fe0518e3          	bnez	a0,80006a18 <__printf+0x4d0>
    80006a2c:	f5dff06f          	j	80006988 <__printf+0x440>
    80006a30:	02500513          	li	a0,37
    80006a34:	00000097          	auipc	ra,0x0
    80006a38:	930080e7          	jalr	-1744(ra) # 80006364 <consputc>
    80006a3c:	000c8513          	mv	a0,s9
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	924080e7          	jalr	-1756(ra) # 80006364 <consputc>
    80006a48:	f41ff06f          	j	80006988 <__printf+0x440>
    80006a4c:	02500513          	li	a0,37
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	914080e7          	jalr	-1772(ra) # 80006364 <consputc>
    80006a58:	f31ff06f          	j	80006988 <__printf+0x440>
    80006a5c:	00030513          	mv	a0,t1
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	7bc080e7          	jalr	1980(ra) # 8000721c <acquire>
    80006a68:	b4dff06f          	j	800065b4 <__printf+0x6c>
    80006a6c:	40c0053b          	negw	a0,a2
    80006a70:	00a00713          	li	a4,10
    80006a74:	02e576bb          	remuw	a3,a0,a4
    80006a78:	00002d97          	auipc	s11,0x2
    80006a7c:	ad0d8d93          	addi	s11,s11,-1328 # 80008548 <digits>
    80006a80:	ff700593          	li	a1,-9
    80006a84:	02069693          	slli	a3,a3,0x20
    80006a88:	0206d693          	srli	a3,a3,0x20
    80006a8c:	00dd86b3          	add	a3,s11,a3
    80006a90:	0006c683          	lbu	a3,0(a3)
    80006a94:	02e557bb          	divuw	a5,a0,a4
    80006a98:	f8d40023          	sb	a3,-128(s0)
    80006a9c:	10b65e63          	bge	a2,a1,80006bb8 <__printf+0x670>
    80006aa0:	06300593          	li	a1,99
    80006aa4:	02e7f6bb          	remuw	a3,a5,a4
    80006aa8:	02069693          	slli	a3,a3,0x20
    80006aac:	0206d693          	srli	a3,a3,0x20
    80006ab0:	00dd86b3          	add	a3,s11,a3
    80006ab4:	0006c683          	lbu	a3,0(a3)
    80006ab8:	02e7d73b          	divuw	a4,a5,a4
    80006abc:	00200793          	li	a5,2
    80006ac0:	f8d400a3          	sb	a3,-127(s0)
    80006ac4:	bca5ece3          	bltu	a1,a0,8000669c <__printf+0x154>
    80006ac8:	ce5ff06f          	j	800067ac <__printf+0x264>
    80006acc:	40e007bb          	negw	a5,a4
    80006ad0:	00002d97          	auipc	s11,0x2
    80006ad4:	a78d8d93          	addi	s11,s11,-1416 # 80008548 <digits>
    80006ad8:	00f7f693          	andi	a3,a5,15
    80006adc:	00dd86b3          	add	a3,s11,a3
    80006ae0:	0006c583          	lbu	a1,0(a3)
    80006ae4:	ff100613          	li	a2,-15
    80006ae8:	0047d69b          	srliw	a3,a5,0x4
    80006aec:	f8b40023          	sb	a1,-128(s0)
    80006af0:	0047d59b          	srliw	a1,a5,0x4
    80006af4:	0ac75e63          	bge	a4,a2,80006bb0 <__printf+0x668>
    80006af8:	00f6f693          	andi	a3,a3,15
    80006afc:	00dd86b3          	add	a3,s11,a3
    80006b00:	0006c603          	lbu	a2,0(a3)
    80006b04:	00f00693          	li	a3,15
    80006b08:	0087d79b          	srliw	a5,a5,0x8
    80006b0c:	f8c400a3          	sb	a2,-127(s0)
    80006b10:	d8b6e4e3          	bltu	a3,a1,80006898 <__printf+0x350>
    80006b14:	00200793          	li	a5,2
    80006b18:	e2dff06f          	j	80006944 <__printf+0x3fc>
    80006b1c:	00002c97          	auipc	s9,0x2
    80006b20:	a0cc8c93          	addi	s9,s9,-1524 # 80008528 <CONSOLE_STATUS+0x518>
    80006b24:	02800513          	li	a0,40
    80006b28:	ef1ff06f          	j	80006a18 <__printf+0x4d0>
    80006b2c:	00700793          	li	a5,7
    80006b30:	00600c93          	li	s9,6
    80006b34:	e0dff06f          	j	80006940 <__printf+0x3f8>
    80006b38:	00700793          	li	a5,7
    80006b3c:	00600c93          	li	s9,6
    80006b40:	c69ff06f          	j	800067a8 <__printf+0x260>
    80006b44:	00300793          	li	a5,3
    80006b48:	00200c93          	li	s9,2
    80006b4c:	c5dff06f          	j	800067a8 <__printf+0x260>
    80006b50:	00300793          	li	a5,3
    80006b54:	00200c93          	li	s9,2
    80006b58:	de9ff06f          	j	80006940 <__printf+0x3f8>
    80006b5c:	00400793          	li	a5,4
    80006b60:	00300c93          	li	s9,3
    80006b64:	dddff06f          	j	80006940 <__printf+0x3f8>
    80006b68:	00400793          	li	a5,4
    80006b6c:	00300c93          	li	s9,3
    80006b70:	c39ff06f          	j	800067a8 <__printf+0x260>
    80006b74:	00500793          	li	a5,5
    80006b78:	00400c93          	li	s9,4
    80006b7c:	c2dff06f          	j	800067a8 <__printf+0x260>
    80006b80:	00500793          	li	a5,5
    80006b84:	00400c93          	li	s9,4
    80006b88:	db9ff06f          	j	80006940 <__printf+0x3f8>
    80006b8c:	00600793          	li	a5,6
    80006b90:	00500c93          	li	s9,5
    80006b94:	dadff06f          	j	80006940 <__printf+0x3f8>
    80006b98:	00600793          	li	a5,6
    80006b9c:	00500c93          	li	s9,5
    80006ba0:	c09ff06f          	j	800067a8 <__printf+0x260>
    80006ba4:	00800793          	li	a5,8
    80006ba8:	00700c93          	li	s9,7
    80006bac:	bfdff06f          	j	800067a8 <__printf+0x260>
    80006bb0:	00100793          	li	a5,1
    80006bb4:	d91ff06f          	j	80006944 <__printf+0x3fc>
    80006bb8:	00100793          	li	a5,1
    80006bbc:	bf1ff06f          	j	800067ac <__printf+0x264>
    80006bc0:	00900793          	li	a5,9
    80006bc4:	00800c93          	li	s9,8
    80006bc8:	be1ff06f          	j	800067a8 <__printf+0x260>
    80006bcc:	00002517          	auipc	a0,0x2
    80006bd0:	96450513          	addi	a0,a0,-1692 # 80008530 <CONSOLE_STATUS+0x520>
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	918080e7          	jalr	-1768(ra) # 800064ec <panic>

0000000080006bdc <printfinit>:
    80006bdc:	fe010113          	addi	sp,sp,-32
    80006be0:	00813823          	sd	s0,16(sp)
    80006be4:	00913423          	sd	s1,8(sp)
    80006be8:	00113c23          	sd	ra,24(sp)
    80006bec:	02010413          	addi	s0,sp,32
    80006bf0:	00009497          	auipc	s1,0x9
    80006bf4:	ec048493          	addi	s1,s1,-320 # 8000fab0 <pr>
    80006bf8:	00048513          	mv	a0,s1
    80006bfc:	00002597          	auipc	a1,0x2
    80006c00:	94458593          	addi	a1,a1,-1724 # 80008540 <CONSOLE_STATUS+0x530>
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	5f4080e7          	jalr	1524(ra) # 800071f8 <initlock>
    80006c0c:	01813083          	ld	ra,24(sp)
    80006c10:	01013403          	ld	s0,16(sp)
    80006c14:	0004ac23          	sw	zero,24(s1)
    80006c18:	00813483          	ld	s1,8(sp)
    80006c1c:	02010113          	addi	sp,sp,32
    80006c20:	00008067          	ret

0000000080006c24 <uartinit>:
    80006c24:	ff010113          	addi	sp,sp,-16
    80006c28:	00813423          	sd	s0,8(sp)
    80006c2c:	01010413          	addi	s0,sp,16
    80006c30:	100007b7          	lui	a5,0x10000
    80006c34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006c38:	f8000713          	li	a4,-128
    80006c3c:	00e781a3          	sb	a4,3(a5)
    80006c40:	00300713          	li	a4,3
    80006c44:	00e78023          	sb	a4,0(a5)
    80006c48:	000780a3          	sb	zero,1(a5)
    80006c4c:	00e781a3          	sb	a4,3(a5)
    80006c50:	00700693          	li	a3,7
    80006c54:	00d78123          	sb	a3,2(a5)
    80006c58:	00e780a3          	sb	a4,1(a5)
    80006c5c:	00813403          	ld	s0,8(sp)
    80006c60:	01010113          	addi	sp,sp,16
    80006c64:	00008067          	ret

0000000080006c68 <uartputc>:
    80006c68:	00004797          	auipc	a5,0x4
    80006c6c:	b107a783          	lw	a5,-1264(a5) # 8000a778 <panicked>
    80006c70:	00078463          	beqz	a5,80006c78 <uartputc+0x10>
    80006c74:	0000006f          	j	80006c74 <uartputc+0xc>
    80006c78:	fd010113          	addi	sp,sp,-48
    80006c7c:	02813023          	sd	s0,32(sp)
    80006c80:	00913c23          	sd	s1,24(sp)
    80006c84:	01213823          	sd	s2,16(sp)
    80006c88:	01313423          	sd	s3,8(sp)
    80006c8c:	02113423          	sd	ra,40(sp)
    80006c90:	03010413          	addi	s0,sp,48
    80006c94:	00004917          	auipc	s2,0x4
    80006c98:	aec90913          	addi	s2,s2,-1300 # 8000a780 <uart_tx_r>
    80006c9c:	00093783          	ld	a5,0(s2)
    80006ca0:	00004497          	auipc	s1,0x4
    80006ca4:	ae848493          	addi	s1,s1,-1304 # 8000a788 <uart_tx_w>
    80006ca8:	0004b703          	ld	a4,0(s1)
    80006cac:	02078693          	addi	a3,a5,32
    80006cb0:	00050993          	mv	s3,a0
    80006cb4:	02e69c63          	bne	a3,a4,80006cec <uartputc+0x84>
    80006cb8:	00001097          	auipc	ra,0x1
    80006cbc:	834080e7          	jalr	-1996(ra) # 800074ec <push_on>
    80006cc0:	00093783          	ld	a5,0(s2)
    80006cc4:	0004b703          	ld	a4,0(s1)
    80006cc8:	02078793          	addi	a5,a5,32
    80006ccc:	00e79463          	bne	a5,a4,80006cd4 <uartputc+0x6c>
    80006cd0:	0000006f          	j	80006cd0 <uartputc+0x68>
    80006cd4:	00001097          	auipc	ra,0x1
    80006cd8:	88c080e7          	jalr	-1908(ra) # 80007560 <pop_on>
    80006cdc:	00093783          	ld	a5,0(s2)
    80006ce0:	0004b703          	ld	a4,0(s1)
    80006ce4:	02078693          	addi	a3,a5,32
    80006ce8:	fce688e3          	beq	a3,a4,80006cb8 <uartputc+0x50>
    80006cec:	01f77693          	andi	a3,a4,31
    80006cf0:	00009597          	auipc	a1,0x9
    80006cf4:	de058593          	addi	a1,a1,-544 # 8000fad0 <uart_tx_buf>
    80006cf8:	00d586b3          	add	a3,a1,a3
    80006cfc:	00170713          	addi	a4,a4,1
    80006d00:	01368023          	sb	s3,0(a3)
    80006d04:	00e4b023          	sd	a4,0(s1)
    80006d08:	10000637          	lui	a2,0x10000
    80006d0c:	02f71063          	bne	a4,a5,80006d2c <uartputc+0xc4>
    80006d10:	0340006f          	j	80006d44 <uartputc+0xdc>
    80006d14:	00074703          	lbu	a4,0(a4)
    80006d18:	00f93023          	sd	a5,0(s2)
    80006d1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006d20:	00093783          	ld	a5,0(s2)
    80006d24:	0004b703          	ld	a4,0(s1)
    80006d28:	00f70e63          	beq	a4,a5,80006d44 <uartputc+0xdc>
    80006d2c:	00564683          	lbu	a3,5(a2)
    80006d30:	01f7f713          	andi	a4,a5,31
    80006d34:	00e58733          	add	a4,a1,a4
    80006d38:	0206f693          	andi	a3,a3,32
    80006d3c:	00178793          	addi	a5,a5,1
    80006d40:	fc069ae3          	bnez	a3,80006d14 <uartputc+0xac>
    80006d44:	02813083          	ld	ra,40(sp)
    80006d48:	02013403          	ld	s0,32(sp)
    80006d4c:	01813483          	ld	s1,24(sp)
    80006d50:	01013903          	ld	s2,16(sp)
    80006d54:	00813983          	ld	s3,8(sp)
    80006d58:	03010113          	addi	sp,sp,48
    80006d5c:	00008067          	ret

0000000080006d60 <uartputc_sync>:
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00813423          	sd	s0,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	00004717          	auipc	a4,0x4
    80006d70:	a0c72703          	lw	a4,-1524(a4) # 8000a778 <panicked>
    80006d74:	02071663          	bnez	a4,80006da0 <uartputc_sync+0x40>
    80006d78:	00050793          	mv	a5,a0
    80006d7c:	100006b7          	lui	a3,0x10000
    80006d80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006d84:	02077713          	andi	a4,a4,32
    80006d88:	fe070ce3          	beqz	a4,80006d80 <uartputc_sync+0x20>
    80006d8c:	0ff7f793          	andi	a5,a5,255
    80006d90:	00f68023          	sb	a5,0(a3)
    80006d94:	00813403          	ld	s0,8(sp)
    80006d98:	01010113          	addi	sp,sp,16
    80006d9c:	00008067          	ret
    80006da0:	0000006f          	j	80006da0 <uartputc_sync+0x40>

0000000080006da4 <uartstart>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813423          	sd	s0,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	00004617          	auipc	a2,0x4
    80006db4:	9d060613          	addi	a2,a2,-1584 # 8000a780 <uart_tx_r>
    80006db8:	00004517          	auipc	a0,0x4
    80006dbc:	9d050513          	addi	a0,a0,-1584 # 8000a788 <uart_tx_w>
    80006dc0:	00063783          	ld	a5,0(a2)
    80006dc4:	00053703          	ld	a4,0(a0)
    80006dc8:	04f70263          	beq	a4,a5,80006e0c <uartstart+0x68>
    80006dcc:	100005b7          	lui	a1,0x10000
    80006dd0:	00009817          	auipc	a6,0x9
    80006dd4:	d0080813          	addi	a6,a6,-768 # 8000fad0 <uart_tx_buf>
    80006dd8:	01c0006f          	j	80006df4 <uartstart+0x50>
    80006ddc:	0006c703          	lbu	a4,0(a3)
    80006de0:	00f63023          	sd	a5,0(a2)
    80006de4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006de8:	00063783          	ld	a5,0(a2)
    80006dec:	00053703          	ld	a4,0(a0)
    80006df0:	00f70e63          	beq	a4,a5,80006e0c <uartstart+0x68>
    80006df4:	01f7f713          	andi	a4,a5,31
    80006df8:	00e806b3          	add	a3,a6,a4
    80006dfc:	0055c703          	lbu	a4,5(a1)
    80006e00:	00178793          	addi	a5,a5,1
    80006e04:	02077713          	andi	a4,a4,32
    80006e08:	fc071ae3          	bnez	a4,80006ddc <uartstart+0x38>
    80006e0c:	00813403          	ld	s0,8(sp)
    80006e10:	01010113          	addi	sp,sp,16
    80006e14:	00008067          	ret

0000000080006e18 <uartgetc>:
    80006e18:	ff010113          	addi	sp,sp,-16
    80006e1c:	00813423          	sd	s0,8(sp)
    80006e20:	01010413          	addi	s0,sp,16
    80006e24:	10000737          	lui	a4,0x10000
    80006e28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006e2c:	0017f793          	andi	a5,a5,1
    80006e30:	00078c63          	beqz	a5,80006e48 <uartgetc+0x30>
    80006e34:	00074503          	lbu	a0,0(a4)
    80006e38:	0ff57513          	andi	a0,a0,255
    80006e3c:	00813403          	ld	s0,8(sp)
    80006e40:	01010113          	addi	sp,sp,16
    80006e44:	00008067          	ret
    80006e48:	fff00513          	li	a0,-1
    80006e4c:	ff1ff06f          	j	80006e3c <uartgetc+0x24>

0000000080006e50 <uartintr>:
    80006e50:	100007b7          	lui	a5,0x10000
    80006e54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006e58:	0017f793          	andi	a5,a5,1
    80006e5c:	0a078463          	beqz	a5,80006f04 <uartintr+0xb4>
    80006e60:	fe010113          	addi	sp,sp,-32
    80006e64:	00813823          	sd	s0,16(sp)
    80006e68:	00913423          	sd	s1,8(sp)
    80006e6c:	00113c23          	sd	ra,24(sp)
    80006e70:	02010413          	addi	s0,sp,32
    80006e74:	100004b7          	lui	s1,0x10000
    80006e78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006e7c:	0ff57513          	andi	a0,a0,255
    80006e80:	fffff097          	auipc	ra,0xfffff
    80006e84:	534080e7          	jalr	1332(ra) # 800063b4 <consoleintr>
    80006e88:	0054c783          	lbu	a5,5(s1)
    80006e8c:	0017f793          	andi	a5,a5,1
    80006e90:	fe0794e3          	bnez	a5,80006e78 <uartintr+0x28>
    80006e94:	00004617          	auipc	a2,0x4
    80006e98:	8ec60613          	addi	a2,a2,-1812 # 8000a780 <uart_tx_r>
    80006e9c:	00004517          	auipc	a0,0x4
    80006ea0:	8ec50513          	addi	a0,a0,-1812 # 8000a788 <uart_tx_w>
    80006ea4:	00063783          	ld	a5,0(a2)
    80006ea8:	00053703          	ld	a4,0(a0)
    80006eac:	04f70263          	beq	a4,a5,80006ef0 <uartintr+0xa0>
    80006eb0:	100005b7          	lui	a1,0x10000
    80006eb4:	00009817          	auipc	a6,0x9
    80006eb8:	c1c80813          	addi	a6,a6,-996 # 8000fad0 <uart_tx_buf>
    80006ebc:	01c0006f          	j	80006ed8 <uartintr+0x88>
    80006ec0:	0006c703          	lbu	a4,0(a3)
    80006ec4:	00f63023          	sd	a5,0(a2)
    80006ec8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ecc:	00063783          	ld	a5,0(a2)
    80006ed0:	00053703          	ld	a4,0(a0)
    80006ed4:	00f70e63          	beq	a4,a5,80006ef0 <uartintr+0xa0>
    80006ed8:	01f7f713          	andi	a4,a5,31
    80006edc:	00e806b3          	add	a3,a6,a4
    80006ee0:	0055c703          	lbu	a4,5(a1)
    80006ee4:	00178793          	addi	a5,a5,1
    80006ee8:	02077713          	andi	a4,a4,32
    80006eec:	fc071ae3          	bnez	a4,80006ec0 <uartintr+0x70>
    80006ef0:	01813083          	ld	ra,24(sp)
    80006ef4:	01013403          	ld	s0,16(sp)
    80006ef8:	00813483          	ld	s1,8(sp)
    80006efc:	02010113          	addi	sp,sp,32
    80006f00:	00008067          	ret
    80006f04:	00004617          	auipc	a2,0x4
    80006f08:	87c60613          	addi	a2,a2,-1924 # 8000a780 <uart_tx_r>
    80006f0c:	00004517          	auipc	a0,0x4
    80006f10:	87c50513          	addi	a0,a0,-1924 # 8000a788 <uart_tx_w>
    80006f14:	00063783          	ld	a5,0(a2)
    80006f18:	00053703          	ld	a4,0(a0)
    80006f1c:	04f70263          	beq	a4,a5,80006f60 <uartintr+0x110>
    80006f20:	100005b7          	lui	a1,0x10000
    80006f24:	00009817          	auipc	a6,0x9
    80006f28:	bac80813          	addi	a6,a6,-1108 # 8000fad0 <uart_tx_buf>
    80006f2c:	01c0006f          	j	80006f48 <uartintr+0xf8>
    80006f30:	0006c703          	lbu	a4,0(a3)
    80006f34:	00f63023          	sd	a5,0(a2)
    80006f38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f3c:	00063783          	ld	a5,0(a2)
    80006f40:	00053703          	ld	a4,0(a0)
    80006f44:	02f70063          	beq	a4,a5,80006f64 <uartintr+0x114>
    80006f48:	01f7f713          	andi	a4,a5,31
    80006f4c:	00e806b3          	add	a3,a6,a4
    80006f50:	0055c703          	lbu	a4,5(a1)
    80006f54:	00178793          	addi	a5,a5,1
    80006f58:	02077713          	andi	a4,a4,32
    80006f5c:	fc071ae3          	bnez	a4,80006f30 <uartintr+0xe0>
    80006f60:	00008067          	ret
    80006f64:	00008067          	ret

0000000080006f68 <kinit>:
    80006f68:	fc010113          	addi	sp,sp,-64
    80006f6c:	02913423          	sd	s1,40(sp)
    80006f70:	fffff7b7          	lui	a5,0xfffff
    80006f74:	0000a497          	auipc	s1,0xa
    80006f78:	b7b48493          	addi	s1,s1,-1157 # 80010aef <end+0xfff>
    80006f7c:	02813823          	sd	s0,48(sp)
    80006f80:	01313c23          	sd	s3,24(sp)
    80006f84:	00f4f4b3          	and	s1,s1,a5
    80006f88:	02113c23          	sd	ra,56(sp)
    80006f8c:	03213023          	sd	s2,32(sp)
    80006f90:	01413823          	sd	s4,16(sp)
    80006f94:	01513423          	sd	s5,8(sp)
    80006f98:	04010413          	addi	s0,sp,64
    80006f9c:	000017b7          	lui	a5,0x1
    80006fa0:	01100993          	li	s3,17
    80006fa4:	00f487b3          	add	a5,s1,a5
    80006fa8:	01b99993          	slli	s3,s3,0x1b
    80006fac:	06f9e063          	bltu	s3,a5,8000700c <kinit+0xa4>
    80006fb0:	00009a97          	auipc	s5,0x9
    80006fb4:	b40a8a93          	addi	s5,s5,-1216 # 8000faf0 <end>
    80006fb8:	0754ec63          	bltu	s1,s5,80007030 <kinit+0xc8>
    80006fbc:	0734fa63          	bgeu	s1,s3,80007030 <kinit+0xc8>
    80006fc0:	00088a37          	lui	s4,0x88
    80006fc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006fc8:	00003917          	auipc	s2,0x3
    80006fcc:	7c890913          	addi	s2,s2,1992 # 8000a790 <kmem>
    80006fd0:	00ca1a13          	slli	s4,s4,0xc
    80006fd4:	0140006f          	j	80006fe8 <kinit+0x80>
    80006fd8:	000017b7          	lui	a5,0x1
    80006fdc:	00f484b3          	add	s1,s1,a5
    80006fe0:	0554e863          	bltu	s1,s5,80007030 <kinit+0xc8>
    80006fe4:	0534f663          	bgeu	s1,s3,80007030 <kinit+0xc8>
    80006fe8:	00001637          	lui	a2,0x1
    80006fec:	00100593          	li	a1,1
    80006ff0:	00048513          	mv	a0,s1
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	5e4080e7          	jalr	1508(ra) # 800075d8 <__memset>
    80006ffc:	00093783          	ld	a5,0(s2)
    80007000:	00f4b023          	sd	a5,0(s1)
    80007004:	00993023          	sd	s1,0(s2)
    80007008:	fd4498e3          	bne	s1,s4,80006fd8 <kinit+0x70>
    8000700c:	03813083          	ld	ra,56(sp)
    80007010:	03013403          	ld	s0,48(sp)
    80007014:	02813483          	ld	s1,40(sp)
    80007018:	02013903          	ld	s2,32(sp)
    8000701c:	01813983          	ld	s3,24(sp)
    80007020:	01013a03          	ld	s4,16(sp)
    80007024:	00813a83          	ld	s5,8(sp)
    80007028:	04010113          	addi	sp,sp,64
    8000702c:	00008067          	ret
    80007030:	00001517          	auipc	a0,0x1
    80007034:	53050513          	addi	a0,a0,1328 # 80008560 <digits+0x18>
    80007038:	fffff097          	auipc	ra,0xfffff
    8000703c:	4b4080e7          	jalr	1204(ra) # 800064ec <panic>

0000000080007040 <freerange>:
    80007040:	fc010113          	addi	sp,sp,-64
    80007044:	000017b7          	lui	a5,0x1
    80007048:	02913423          	sd	s1,40(sp)
    8000704c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007050:	009504b3          	add	s1,a0,s1
    80007054:	fffff537          	lui	a0,0xfffff
    80007058:	02813823          	sd	s0,48(sp)
    8000705c:	02113c23          	sd	ra,56(sp)
    80007060:	03213023          	sd	s2,32(sp)
    80007064:	01313c23          	sd	s3,24(sp)
    80007068:	01413823          	sd	s4,16(sp)
    8000706c:	01513423          	sd	s5,8(sp)
    80007070:	01613023          	sd	s6,0(sp)
    80007074:	04010413          	addi	s0,sp,64
    80007078:	00a4f4b3          	and	s1,s1,a0
    8000707c:	00f487b3          	add	a5,s1,a5
    80007080:	06f5e463          	bltu	a1,a5,800070e8 <freerange+0xa8>
    80007084:	00009a97          	auipc	s5,0x9
    80007088:	a6ca8a93          	addi	s5,s5,-1428 # 8000faf0 <end>
    8000708c:	0954e263          	bltu	s1,s5,80007110 <freerange+0xd0>
    80007090:	01100993          	li	s3,17
    80007094:	01b99993          	slli	s3,s3,0x1b
    80007098:	0734fc63          	bgeu	s1,s3,80007110 <freerange+0xd0>
    8000709c:	00058a13          	mv	s4,a1
    800070a0:	00003917          	auipc	s2,0x3
    800070a4:	6f090913          	addi	s2,s2,1776 # 8000a790 <kmem>
    800070a8:	00002b37          	lui	s6,0x2
    800070ac:	0140006f          	j	800070c0 <freerange+0x80>
    800070b0:	000017b7          	lui	a5,0x1
    800070b4:	00f484b3          	add	s1,s1,a5
    800070b8:	0554ec63          	bltu	s1,s5,80007110 <freerange+0xd0>
    800070bc:	0534fa63          	bgeu	s1,s3,80007110 <freerange+0xd0>
    800070c0:	00001637          	lui	a2,0x1
    800070c4:	00100593          	li	a1,1
    800070c8:	00048513          	mv	a0,s1
    800070cc:	00000097          	auipc	ra,0x0
    800070d0:	50c080e7          	jalr	1292(ra) # 800075d8 <__memset>
    800070d4:	00093703          	ld	a4,0(s2)
    800070d8:	016487b3          	add	a5,s1,s6
    800070dc:	00e4b023          	sd	a4,0(s1)
    800070e0:	00993023          	sd	s1,0(s2)
    800070e4:	fcfa76e3          	bgeu	s4,a5,800070b0 <freerange+0x70>
    800070e8:	03813083          	ld	ra,56(sp)
    800070ec:	03013403          	ld	s0,48(sp)
    800070f0:	02813483          	ld	s1,40(sp)
    800070f4:	02013903          	ld	s2,32(sp)
    800070f8:	01813983          	ld	s3,24(sp)
    800070fc:	01013a03          	ld	s4,16(sp)
    80007100:	00813a83          	ld	s5,8(sp)
    80007104:	00013b03          	ld	s6,0(sp)
    80007108:	04010113          	addi	sp,sp,64
    8000710c:	00008067          	ret
    80007110:	00001517          	auipc	a0,0x1
    80007114:	45050513          	addi	a0,a0,1104 # 80008560 <digits+0x18>
    80007118:	fffff097          	auipc	ra,0xfffff
    8000711c:	3d4080e7          	jalr	980(ra) # 800064ec <panic>

0000000080007120 <kfree>:
    80007120:	fe010113          	addi	sp,sp,-32
    80007124:	00813823          	sd	s0,16(sp)
    80007128:	00113c23          	sd	ra,24(sp)
    8000712c:	00913423          	sd	s1,8(sp)
    80007130:	02010413          	addi	s0,sp,32
    80007134:	03451793          	slli	a5,a0,0x34
    80007138:	04079c63          	bnez	a5,80007190 <kfree+0x70>
    8000713c:	00009797          	auipc	a5,0x9
    80007140:	9b478793          	addi	a5,a5,-1612 # 8000faf0 <end>
    80007144:	00050493          	mv	s1,a0
    80007148:	04f56463          	bltu	a0,a5,80007190 <kfree+0x70>
    8000714c:	01100793          	li	a5,17
    80007150:	01b79793          	slli	a5,a5,0x1b
    80007154:	02f57e63          	bgeu	a0,a5,80007190 <kfree+0x70>
    80007158:	00001637          	lui	a2,0x1
    8000715c:	00100593          	li	a1,1
    80007160:	00000097          	auipc	ra,0x0
    80007164:	478080e7          	jalr	1144(ra) # 800075d8 <__memset>
    80007168:	00003797          	auipc	a5,0x3
    8000716c:	62878793          	addi	a5,a5,1576 # 8000a790 <kmem>
    80007170:	0007b703          	ld	a4,0(a5)
    80007174:	01813083          	ld	ra,24(sp)
    80007178:	01013403          	ld	s0,16(sp)
    8000717c:	00e4b023          	sd	a4,0(s1)
    80007180:	0097b023          	sd	s1,0(a5)
    80007184:	00813483          	ld	s1,8(sp)
    80007188:	02010113          	addi	sp,sp,32
    8000718c:	00008067          	ret
    80007190:	00001517          	auipc	a0,0x1
    80007194:	3d050513          	addi	a0,a0,976 # 80008560 <digits+0x18>
    80007198:	fffff097          	auipc	ra,0xfffff
    8000719c:	354080e7          	jalr	852(ra) # 800064ec <panic>

00000000800071a0 <kalloc>:
    800071a0:	fe010113          	addi	sp,sp,-32
    800071a4:	00813823          	sd	s0,16(sp)
    800071a8:	00913423          	sd	s1,8(sp)
    800071ac:	00113c23          	sd	ra,24(sp)
    800071b0:	02010413          	addi	s0,sp,32
    800071b4:	00003797          	auipc	a5,0x3
    800071b8:	5dc78793          	addi	a5,a5,1500 # 8000a790 <kmem>
    800071bc:	0007b483          	ld	s1,0(a5)
    800071c0:	02048063          	beqz	s1,800071e0 <kalloc+0x40>
    800071c4:	0004b703          	ld	a4,0(s1)
    800071c8:	00001637          	lui	a2,0x1
    800071cc:	00500593          	li	a1,5
    800071d0:	00048513          	mv	a0,s1
    800071d4:	00e7b023          	sd	a4,0(a5)
    800071d8:	00000097          	auipc	ra,0x0
    800071dc:	400080e7          	jalr	1024(ra) # 800075d8 <__memset>
    800071e0:	01813083          	ld	ra,24(sp)
    800071e4:	01013403          	ld	s0,16(sp)
    800071e8:	00048513          	mv	a0,s1
    800071ec:	00813483          	ld	s1,8(sp)
    800071f0:	02010113          	addi	sp,sp,32
    800071f4:	00008067          	ret

00000000800071f8 <initlock>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813423          	sd	s0,8(sp)
    80007200:	01010413          	addi	s0,sp,16
    80007204:	00813403          	ld	s0,8(sp)
    80007208:	00b53423          	sd	a1,8(a0)
    8000720c:	00052023          	sw	zero,0(a0)
    80007210:	00053823          	sd	zero,16(a0)
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00008067          	ret

000000008000721c <acquire>:
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00913423          	sd	s1,8(sp)
    80007228:	00113c23          	sd	ra,24(sp)
    8000722c:	01213023          	sd	s2,0(sp)
    80007230:	02010413          	addi	s0,sp,32
    80007234:	00050493          	mv	s1,a0
    80007238:	10002973          	csrr	s2,sstatus
    8000723c:	100027f3          	csrr	a5,sstatus
    80007240:	ffd7f793          	andi	a5,a5,-3
    80007244:	10079073          	csrw	sstatus,a5
    80007248:	fffff097          	auipc	ra,0xfffff
    8000724c:	8e0080e7          	jalr	-1824(ra) # 80005b28 <mycpu>
    80007250:	07852783          	lw	a5,120(a0)
    80007254:	06078e63          	beqz	a5,800072d0 <acquire+0xb4>
    80007258:	fffff097          	auipc	ra,0xfffff
    8000725c:	8d0080e7          	jalr	-1840(ra) # 80005b28 <mycpu>
    80007260:	07852783          	lw	a5,120(a0)
    80007264:	0004a703          	lw	a4,0(s1)
    80007268:	0017879b          	addiw	a5,a5,1
    8000726c:	06f52c23          	sw	a5,120(a0)
    80007270:	04071063          	bnez	a4,800072b0 <acquire+0x94>
    80007274:	00100713          	li	a4,1
    80007278:	00070793          	mv	a5,a4
    8000727c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007280:	0007879b          	sext.w	a5,a5
    80007284:	fe079ae3          	bnez	a5,80007278 <acquire+0x5c>
    80007288:	0ff0000f          	fence
    8000728c:	fffff097          	auipc	ra,0xfffff
    80007290:	89c080e7          	jalr	-1892(ra) # 80005b28 <mycpu>
    80007294:	01813083          	ld	ra,24(sp)
    80007298:	01013403          	ld	s0,16(sp)
    8000729c:	00a4b823          	sd	a0,16(s1)
    800072a0:	00013903          	ld	s2,0(sp)
    800072a4:	00813483          	ld	s1,8(sp)
    800072a8:	02010113          	addi	sp,sp,32
    800072ac:	00008067          	ret
    800072b0:	0104b903          	ld	s2,16(s1)
    800072b4:	fffff097          	auipc	ra,0xfffff
    800072b8:	874080e7          	jalr	-1932(ra) # 80005b28 <mycpu>
    800072bc:	faa91ce3          	bne	s2,a0,80007274 <acquire+0x58>
    800072c0:	00001517          	auipc	a0,0x1
    800072c4:	2a850513          	addi	a0,a0,680 # 80008568 <digits+0x20>
    800072c8:	fffff097          	auipc	ra,0xfffff
    800072cc:	224080e7          	jalr	548(ra) # 800064ec <panic>
    800072d0:	00195913          	srli	s2,s2,0x1
    800072d4:	fffff097          	auipc	ra,0xfffff
    800072d8:	854080e7          	jalr	-1964(ra) # 80005b28 <mycpu>
    800072dc:	00197913          	andi	s2,s2,1
    800072e0:	07252e23          	sw	s2,124(a0)
    800072e4:	f75ff06f          	j	80007258 <acquire+0x3c>

00000000800072e8 <release>:
    800072e8:	fe010113          	addi	sp,sp,-32
    800072ec:	00813823          	sd	s0,16(sp)
    800072f0:	00113c23          	sd	ra,24(sp)
    800072f4:	00913423          	sd	s1,8(sp)
    800072f8:	01213023          	sd	s2,0(sp)
    800072fc:	02010413          	addi	s0,sp,32
    80007300:	00052783          	lw	a5,0(a0)
    80007304:	00079a63          	bnez	a5,80007318 <release+0x30>
    80007308:	00001517          	auipc	a0,0x1
    8000730c:	26850513          	addi	a0,a0,616 # 80008570 <digits+0x28>
    80007310:	fffff097          	auipc	ra,0xfffff
    80007314:	1dc080e7          	jalr	476(ra) # 800064ec <panic>
    80007318:	01053903          	ld	s2,16(a0)
    8000731c:	00050493          	mv	s1,a0
    80007320:	fffff097          	auipc	ra,0xfffff
    80007324:	808080e7          	jalr	-2040(ra) # 80005b28 <mycpu>
    80007328:	fea910e3          	bne	s2,a0,80007308 <release+0x20>
    8000732c:	0004b823          	sd	zero,16(s1)
    80007330:	0ff0000f          	fence
    80007334:	0f50000f          	fence	iorw,ow
    80007338:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000733c:	ffffe097          	auipc	ra,0xffffe
    80007340:	7ec080e7          	jalr	2028(ra) # 80005b28 <mycpu>
    80007344:	100027f3          	csrr	a5,sstatus
    80007348:	0027f793          	andi	a5,a5,2
    8000734c:	04079a63          	bnez	a5,800073a0 <release+0xb8>
    80007350:	07852783          	lw	a5,120(a0)
    80007354:	02f05e63          	blez	a5,80007390 <release+0xa8>
    80007358:	fff7871b          	addiw	a4,a5,-1
    8000735c:	06e52c23          	sw	a4,120(a0)
    80007360:	00071c63          	bnez	a4,80007378 <release+0x90>
    80007364:	07c52783          	lw	a5,124(a0)
    80007368:	00078863          	beqz	a5,80007378 <release+0x90>
    8000736c:	100027f3          	csrr	a5,sstatus
    80007370:	0027e793          	ori	a5,a5,2
    80007374:	10079073          	csrw	sstatus,a5
    80007378:	01813083          	ld	ra,24(sp)
    8000737c:	01013403          	ld	s0,16(sp)
    80007380:	00813483          	ld	s1,8(sp)
    80007384:	00013903          	ld	s2,0(sp)
    80007388:	02010113          	addi	sp,sp,32
    8000738c:	00008067          	ret
    80007390:	00001517          	auipc	a0,0x1
    80007394:	20050513          	addi	a0,a0,512 # 80008590 <digits+0x48>
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	154080e7          	jalr	340(ra) # 800064ec <panic>
    800073a0:	00001517          	auipc	a0,0x1
    800073a4:	1d850513          	addi	a0,a0,472 # 80008578 <digits+0x30>
    800073a8:	fffff097          	auipc	ra,0xfffff
    800073ac:	144080e7          	jalr	324(ra) # 800064ec <panic>

00000000800073b0 <holding>:
    800073b0:	00052783          	lw	a5,0(a0)
    800073b4:	00079663          	bnez	a5,800073c0 <holding+0x10>
    800073b8:	00000513          	li	a0,0
    800073bc:	00008067          	ret
    800073c0:	fe010113          	addi	sp,sp,-32
    800073c4:	00813823          	sd	s0,16(sp)
    800073c8:	00913423          	sd	s1,8(sp)
    800073cc:	00113c23          	sd	ra,24(sp)
    800073d0:	02010413          	addi	s0,sp,32
    800073d4:	01053483          	ld	s1,16(a0)
    800073d8:	ffffe097          	auipc	ra,0xffffe
    800073dc:	750080e7          	jalr	1872(ra) # 80005b28 <mycpu>
    800073e0:	01813083          	ld	ra,24(sp)
    800073e4:	01013403          	ld	s0,16(sp)
    800073e8:	40a48533          	sub	a0,s1,a0
    800073ec:	00153513          	seqz	a0,a0
    800073f0:	00813483          	ld	s1,8(sp)
    800073f4:	02010113          	addi	sp,sp,32
    800073f8:	00008067          	ret

00000000800073fc <push_off>:
    800073fc:	fe010113          	addi	sp,sp,-32
    80007400:	00813823          	sd	s0,16(sp)
    80007404:	00113c23          	sd	ra,24(sp)
    80007408:	00913423          	sd	s1,8(sp)
    8000740c:	02010413          	addi	s0,sp,32
    80007410:	100024f3          	csrr	s1,sstatus
    80007414:	100027f3          	csrr	a5,sstatus
    80007418:	ffd7f793          	andi	a5,a5,-3
    8000741c:	10079073          	csrw	sstatus,a5
    80007420:	ffffe097          	auipc	ra,0xffffe
    80007424:	708080e7          	jalr	1800(ra) # 80005b28 <mycpu>
    80007428:	07852783          	lw	a5,120(a0)
    8000742c:	02078663          	beqz	a5,80007458 <push_off+0x5c>
    80007430:	ffffe097          	auipc	ra,0xffffe
    80007434:	6f8080e7          	jalr	1784(ra) # 80005b28 <mycpu>
    80007438:	07852783          	lw	a5,120(a0)
    8000743c:	01813083          	ld	ra,24(sp)
    80007440:	01013403          	ld	s0,16(sp)
    80007444:	0017879b          	addiw	a5,a5,1
    80007448:	06f52c23          	sw	a5,120(a0)
    8000744c:	00813483          	ld	s1,8(sp)
    80007450:	02010113          	addi	sp,sp,32
    80007454:	00008067          	ret
    80007458:	0014d493          	srli	s1,s1,0x1
    8000745c:	ffffe097          	auipc	ra,0xffffe
    80007460:	6cc080e7          	jalr	1740(ra) # 80005b28 <mycpu>
    80007464:	0014f493          	andi	s1,s1,1
    80007468:	06952e23          	sw	s1,124(a0)
    8000746c:	fc5ff06f          	j	80007430 <push_off+0x34>

0000000080007470 <pop_off>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813023          	sd	s0,0(sp)
    80007478:	00113423          	sd	ra,8(sp)
    8000747c:	01010413          	addi	s0,sp,16
    80007480:	ffffe097          	auipc	ra,0xffffe
    80007484:	6a8080e7          	jalr	1704(ra) # 80005b28 <mycpu>
    80007488:	100027f3          	csrr	a5,sstatus
    8000748c:	0027f793          	andi	a5,a5,2
    80007490:	04079663          	bnez	a5,800074dc <pop_off+0x6c>
    80007494:	07852783          	lw	a5,120(a0)
    80007498:	02f05a63          	blez	a5,800074cc <pop_off+0x5c>
    8000749c:	fff7871b          	addiw	a4,a5,-1
    800074a0:	06e52c23          	sw	a4,120(a0)
    800074a4:	00071c63          	bnez	a4,800074bc <pop_off+0x4c>
    800074a8:	07c52783          	lw	a5,124(a0)
    800074ac:	00078863          	beqz	a5,800074bc <pop_off+0x4c>
    800074b0:	100027f3          	csrr	a5,sstatus
    800074b4:	0027e793          	ori	a5,a5,2
    800074b8:	10079073          	csrw	sstatus,a5
    800074bc:	00813083          	ld	ra,8(sp)
    800074c0:	00013403          	ld	s0,0(sp)
    800074c4:	01010113          	addi	sp,sp,16
    800074c8:	00008067          	ret
    800074cc:	00001517          	auipc	a0,0x1
    800074d0:	0c450513          	addi	a0,a0,196 # 80008590 <digits+0x48>
    800074d4:	fffff097          	auipc	ra,0xfffff
    800074d8:	018080e7          	jalr	24(ra) # 800064ec <panic>
    800074dc:	00001517          	auipc	a0,0x1
    800074e0:	09c50513          	addi	a0,a0,156 # 80008578 <digits+0x30>
    800074e4:	fffff097          	auipc	ra,0xfffff
    800074e8:	008080e7          	jalr	8(ra) # 800064ec <panic>

00000000800074ec <push_on>:
    800074ec:	fe010113          	addi	sp,sp,-32
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00113c23          	sd	ra,24(sp)
    800074f8:	00913423          	sd	s1,8(sp)
    800074fc:	02010413          	addi	s0,sp,32
    80007500:	100024f3          	csrr	s1,sstatus
    80007504:	100027f3          	csrr	a5,sstatus
    80007508:	0027e793          	ori	a5,a5,2
    8000750c:	10079073          	csrw	sstatus,a5
    80007510:	ffffe097          	auipc	ra,0xffffe
    80007514:	618080e7          	jalr	1560(ra) # 80005b28 <mycpu>
    80007518:	07852783          	lw	a5,120(a0)
    8000751c:	02078663          	beqz	a5,80007548 <push_on+0x5c>
    80007520:	ffffe097          	auipc	ra,0xffffe
    80007524:	608080e7          	jalr	1544(ra) # 80005b28 <mycpu>
    80007528:	07852783          	lw	a5,120(a0)
    8000752c:	01813083          	ld	ra,24(sp)
    80007530:	01013403          	ld	s0,16(sp)
    80007534:	0017879b          	addiw	a5,a5,1
    80007538:	06f52c23          	sw	a5,120(a0)
    8000753c:	00813483          	ld	s1,8(sp)
    80007540:	02010113          	addi	sp,sp,32
    80007544:	00008067          	ret
    80007548:	0014d493          	srli	s1,s1,0x1
    8000754c:	ffffe097          	auipc	ra,0xffffe
    80007550:	5dc080e7          	jalr	1500(ra) # 80005b28 <mycpu>
    80007554:	0014f493          	andi	s1,s1,1
    80007558:	06952e23          	sw	s1,124(a0)
    8000755c:	fc5ff06f          	j	80007520 <push_on+0x34>

0000000080007560 <pop_on>:
    80007560:	ff010113          	addi	sp,sp,-16
    80007564:	00813023          	sd	s0,0(sp)
    80007568:	00113423          	sd	ra,8(sp)
    8000756c:	01010413          	addi	s0,sp,16
    80007570:	ffffe097          	auipc	ra,0xffffe
    80007574:	5b8080e7          	jalr	1464(ra) # 80005b28 <mycpu>
    80007578:	100027f3          	csrr	a5,sstatus
    8000757c:	0027f793          	andi	a5,a5,2
    80007580:	04078463          	beqz	a5,800075c8 <pop_on+0x68>
    80007584:	07852783          	lw	a5,120(a0)
    80007588:	02f05863          	blez	a5,800075b8 <pop_on+0x58>
    8000758c:	fff7879b          	addiw	a5,a5,-1
    80007590:	06f52c23          	sw	a5,120(a0)
    80007594:	07853783          	ld	a5,120(a0)
    80007598:	00079863          	bnez	a5,800075a8 <pop_on+0x48>
    8000759c:	100027f3          	csrr	a5,sstatus
    800075a0:	ffd7f793          	andi	a5,a5,-3
    800075a4:	10079073          	csrw	sstatus,a5
    800075a8:	00813083          	ld	ra,8(sp)
    800075ac:	00013403          	ld	s0,0(sp)
    800075b0:	01010113          	addi	sp,sp,16
    800075b4:	00008067          	ret
    800075b8:	00001517          	auipc	a0,0x1
    800075bc:	00050513          	mv	a0,a0
    800075c0:	fffff097          	auipc	ra,0xfffff
    800075c4:	f2c080e7          	jalr	-212(ra) # 800064ec <panic>
    800075c8:	00001517          	auipc	a0,0x1
    800075cc:	fd050513          	addi	a0,a0,-48 # 80008598 <digits+0x50>
    800075d0:	fffff097          	auipc	ra,0xfffff
    800075d4:	f1c080e7          	jalr	-228(ra) # 800064ec <panic>

00000000800075d8 <__memset>:
    800075d8:	ff010113          	addi	sp,sp,-16
    800075dc:	00813423          	sd	s0,8(sp)
    800075e0:	01010413          	addi	s0,sp,16
    800075e4:	1a060e63          	beqz	a2,800077a0 <__memset+0x1c8>
    800075e8:	40a007b3          	neg	a5,a0
    800075ec:	0077f793          	andi	a5,a5,7
    800075f0:	00778693          	addi	a3,a5,7
    800075f4:	00b00813          	li	a6,11
    800075f8:	0ff5f593          	andi	a1,a1,255
    800075fc:	fff6071b          	addiw	a4,a2,-1
    80007600:	1b06e663          	bltu	a3,a6,800077ac <__memset+0x1d4>
    80007604:	1cd76463          	bltu	a4,a3,800077cc <__memset+0x1f4>
    80007608:	1a078e63          	beqz	a5,800077c4 <__memset+0x1ec>
    8000760c:	00b50023          	sb	a1,0(a0)
    80007610:	00100713          	li	a4,1
    80007614:	1ae78463          	beq	a5,a4,800077bc <__memset+0x1e4>
    80007618:	00b500a3          	sb	a1,1(a0)
    8000761c:	00200713          	li	a4,2
    80007620:	1ae78a63          	beq	a5,a4,800077d4 <__memset+0x1fc>
    80007624:	00b50123          	sb	a1,2(a0)
    80007628:	00300713          	li	a4,3
    8000762c:	18e78463          	beq	a5,a4,800077b4 <__memset+0x1dc>
    80007630:	00b501a3          	sb	a1,3(a0)
    80007634:	00400713          	li	a4,4
    80007638:	1ae78263          	beq	a5,a4,800077dc <__memset+0x204>
    8000763c:	00b50223          	sb	a1,4(a0)
    80007640:	00500713          	li	a4,5
    80007644:	1ae78063          	beq	a5,a4,800077e4 <__memset+0x20c>
    80007648:	00b502a3          	sb	a1,5(a0)
    8000764c:	00700713          	li	a4,7
    80007650:	18e79e63          	bne	a5,a4,800077ec <__memset+0x214>
    80007654:	00b50323          	sb	a1,6(a0)
    80007658:	00700e93          	li	t4,7
    8000765c:	00859713          	slli	a4,a1,0x8
    80007660:	00e5e733          	or	a4,a1,a4
    80007664:	01059e13          	slli	t3,a1,0x10
    80007668:	01c76e33          	or	t3,a4,t3
    8000766c:	01859313          	slli	t1,a1,0x18
    80007670:	006e6333          	or	t1,t3,t1
    80007674:	02059893          	slli	a7,a1,0x20
    80007678:	40f60e3b          	subw	t3,a2,a5
    8000767c:	011368b3          	or	a7,t1,a7
    80007680:	02859813          	slli	a6,a1,0x28
    80007684:	0108e833          	or	a6,a7,a6
    80007688:	03059693          	slli	a3,a1,0x30
    8000768c:	003e589b          	srliw	a7,t3,0x3
    80007690:	00d866b3          	or	a3,a6,a3
    80007694:	03859713          	slli	a4,a1,0x38
    80007698:	00389813          	slli	a6,a7,0x3
    8000769c:	00f507b3          	add	a5,a0,a5
    800076a0:	00e6e733          	or	a4,a3,a4
    800076a4:	000e089b          	sext.w	a7,t3
    800076a8:	00f806b3          	add	a3,a6,a5
    800076ac:	00e7b023          	sd	a4,0(a5)
    800076b0:	00878793          	addi	a5,a5,8
    800076b4:	fed79ce3          	bne	a5,a3,800076ac <__memset+0xd4>
    800076b8:	ff8e7793          	andi	a5,t3,-8
    800076bc:	0007871b          	sext.w	a4,a5
    800076c0:	01d787bb          	addw	a5,a5,t4
    800076c4:	0ce88e63          	beq	a7,a4,800077a0 <__memset+0x1c8>
    800076c8:	00f50733          	add	a4,a0,a5
    800076cc:	00b70023          	sb	a1,0(a4)
    800076d0:	0017871b          	addiw	a4,a5,1
    800076d4:	0cc77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    800076d8:	00e50733          	add	a4,a0,a4
    800076dc:	00b70023          	sb	a1,0(a4)
    800076e0:	0027871b          	addiw	a4,a5,2
    800076e4:	0ac77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    800076e8:	00e50733          	add	a4,a0,a4
    800076ec:	00b70023          	sb	a1,0(a4)
    800076f0:	0037871b          	addiw	a4,a5,3
    800076f4:	0ac77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    800076f8:	00e50733          	add	a4,a0,a4
    800076fc:	00b70023          	sb	a1,0(a4)
    80007700:	0047871b          	addiw	a4,a5,4
    80007704:	08c77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007708:	00e50733          	add	a4,a0,a4
    8000770c:	00b70023          	sb	a1,0(a4)
    80007710:	0057871b          	addiw	a4,a5,5
    80007714:	08c77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007718:	00e50733          	add	a4,a0,a4
    8000771c:	00b70023          	sb	a1,0(a4)
    80007720:	0067871b          	addiw	a4,a5,6
    80007724:	06c77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007728:	00e50733          	add	a4,a0,a4
    8000772c:	00b70023          	sb	a1,0(a4)
    80007730:	0077871b          	addiw	a4,a5,7
    80007734:	06c77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007738:	00e50733          	add	a4,a0,a4
    8000773c:	00b70023          	sb	a1,0(a4)
    80007740:	0087871b          	addiw	a4,a5,8
    80007744:	04c77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007748:	00e50733          	add	a4,a0,a4
    8000774c:	00b70023          	sb	a1,0(a4)
    80007750:	0097871b          	addiw	a4,a5,9
    80007754:	04c77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007758:	00e50733          	add	a4,a0,a4
    8000775c:	00b70023          	sb	a1,0(a4)
    80007760:	00a7871b          	addiw	a4,a5,10
    80007764:	02c77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007768:	00e50733          	add	a4,a0,a4
    8000776c:	00b70023          	sb	a1,0(a4)
    80007770:	00b7871b          	addiw	a4,a5,11
    80007774:	02c77663          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007778:	00e50733          	add	a4,a0,a4
    8000777c:	00b70023          	sb	a1,0(a4)
    80007780:	00c7871b          	addiw	a4,a5,12
    80007784:	00c77e63          	bgeu	a4,a2,800077a0 <__memset+0x1c8>
    80007788:	00e50733          	add	a4,a0,a4
    8000778c:	00b70023          	sb	a1,0(a4)
    80007790:	00d7879b          	addiw	a5,a5,13
    80007794:	00c7f663          	bgeu	a5,a2,800077a0 <__memset+0x1c8>
    80007798:	00f507b3          	add	a5,a0,a5
    8000779c:	00b78023          	sb	a1,0(a5)
    800077a0:	00813403          	ld	s0,8(sp)
    800077a4:	01010113          	addi	sp,sp,16
    800077a8:	00008067          	ret
    800077ac:	00b00693          	li	a3,11
    800077b0:	e55ff06f          	j	80007604 <__memset+0x2c>
    800077b4:	00300e93          	li	t4,3
    800077b8:	ea5ff06f          	j	8000765c <__memset+0x84>
    800077bc:	00100e93          	li	t4,1
    800077c0:	e9dff06f          	j	8000765c <__memset+0x84>
    800077c4:	00000e93          	li	t4,0
    800077c8:	e95ff06f          	j	8000765c <__memset+0x84>
    800077cc:	00000793          	li	a5,0
    800077d0:	ef9ff06f          	j	800076c8 <__memset+0xf0>
    800077d4:	00200e93          	li	t4,2
    800077d8:	e85ff06f          	j	8000765c <__memset+0x84>
    800077dc:	00400e93          	li	t4,4
    800077e0:	e7dff06f          	j	8000765c <__memset+0x84>
    800077e4:	00500e93          	li	t4,5
    800077e8:	e75ff06f          	j	8000765c <__memset+0x84>
    800077ec:	00600e93          	li	t4,6
    800077f0:	e6dff06f          	j	8000765c <__memset+0x84>

00000000800077f4 <__memmove>:
    800077f4:	ff010113          	addi	sp,sp,-16
    800077f8:	00813423          	sd	s0,8(sp)
    800077fc:	01010413          	addi	s0,sp,16
    80007800:	0e060863          	beqz	a2,800078f0 <__memmove+0xfc>
    80007804:	fff6069b          	addiw	a3,a2,-1
    80007808:	0006881b          	sext.w	a6,a3
    8000780c:	0ea5e863          	bltu	a1,a0,800078fc <__memmove+0x108>
    80007810:	00758713          	addi	a4,a1,7
    80007814:	00a5e7b3          	or	a5,a1,a0
    80007818:	40a70733          	sub	a4,a4,a0
    8000781c:	0077f793          	andi	a5,a5,7
    80007820:	00f73713          	sltiu	a4,a4,15
    80007824:	00174713          	xori	a4,a4,1
    80007828:	0017b793          	seqz	a5,a5
    8000782c:	00e7f7b3          	and	a5,a5,a4
    80007830:	10078863          	beqz	a5,80007940 <__memmove+0x14c>
    80007834:	00900793          	li	a5,9
    80007838:	1107f463          	bgeu	a5,a6,80007940 <__memmove+0x14c>
    8000783c:	0036581b          	srliw	a6,a2,0x3
    80007840:	fff8081b          	addiw	a6,a6,-1
    80007844:	02081813          	slli	a6,a6,0x20
    80007848:	01d85893          	srli	a7,a6,0x1d
    8000784c:	00858813          	addi	a6,a1,8
    80007850:	00058793          	mv	a5,a1
    80007854:	00050713          	mv	a4,a0
    80007858:	01088833          	add	a6,a7,a6
    8000785c:	0007b883          	ld	a7,0(a5)
    80007860:	00878793          	addi	a5,a5,8
    80007864:	00870713          	addi	a4,a4,8
    80007868:	ff173c23          	sd	a7,-8(a4)
    8000786c:	ff0798e3          	bne	a5,a6,8000785c <__memmove+0x68>
    80007870:	ff867713          	andi	a4,a2,-8
    80007874:	02071793          	slli	a5,a4,0x20
    80007878:	0207d793          	srli	a5,a5,0x20
    8000787c:	00f585b3          	add	a1,a1,a5
    80007880:	40e686bb          	subw	a3,a3,a4
    80007884:	00f507b3          	add	a5,a0,a5
    80007888:	06e60463          	beq	a2,a4,800078f0 <__memmove+0xfc>
    8000788c:	0005c703          	lbu	a4,0(a1)
    80007890:	00e78023          	sb	a4,0(a5)
    80007894:	04068e63          	beqz	a3,800078f0 <__memmove+0xfc>
    80007898:	0015c603          	lbu	a2,1(a1)
    8000789c:	00100713          	li	a4,1
    800078a0:	00c780a3          	sb	a2,1(a5)
    800078a4:	04e68663          	beq	a3,a4,800078f0 <__memmove+0xfc>
    800078a8:	0025c603          	lbu	a2,2(a1)
    800078ac:	00200713          	li	a4,2
    800078b0:	00c78123          	sb	a2,2(a5)
    800078b4:	02e68e63          	beq	a3,a4,800078f0 <__memmove+0xfc>
    800078b8:	0035c603          	lbu	a2,3(a1)
    800078bc:	00300713          	li	a4,3
    800078c0:	00c781a3          	sb	a2,3(a5)
    800078c4:	02e68663          	beq	a3,a4,800078f0 <__memmove+0xfc>
    800078c8:	0045c603          	lbu	a2,4(a1)
    800078cc:	00400713          	li	a4,4
    800078d0:	00c78223          	sb	a2,4(a5)
    800078d4:	00e68e63          	beq	a3,a4,800078f0 <__memmove+0xfc>
    800078d8:	0055c603          	lbu	a2,5(a1)
    800078dc:	00500713          	li	a4,5
    800078e0:	00c782a3          	sb	a2,5(a5)
    800078e4:	00e68663          	beq	a3,a4,800078f0 <__memmove+0xfc>
    800078e8:	0065c703          	lbu	a4,6(a1)
    800078ec:	00e78323          	sb	a4,6(a5)
    800078f0:	00813403          	ld	s0,8(sp)
    800078f4:	01010113          	addi	sp,sp,16
    800078f8:	00008067          	ret
    800078fc:	02061713          	slli	a4,a2,0x20
    80007900:	02075713          	srli	a4,a4,0x20
    80007904:	00e587b3          	add	a5,a1,a4
    80007908:	f0f574e3          	bgeu	a0,a5,80007810 <__memmove+0x1c>
    8000790c:	02069613          	slli	a2,a3,0x20
    80007910:	02065613          	srli	a2,a2,0x20
    80007914:	fff64613          	not	a2,a2
    80007918:	00e50733          	add	a4,a0,a4
    8000791c:	00c78633          	add	a2,a5,a2
    80007920:	fff7c683          	lbu	a3,-1(a5)
    80007924:	fff78793          	addi	a5,a5,-1
    80007928:	fff70713          	addi	a4,a4,-1
    8000792c:	00d70023          	sb	a3,0(a4)
    80007930:	fec798e3          	bne	a5,a2,80007920 <__memmove+0x12c>
    80007934:	00813403          	ld	s0,8(sp)
    80007938:	01010113          	addi	sp,sp,16
    8000793c:	00008067          	ret
    80007940:	02069713          	slli	a4,a3,0x20
    80007944:	02075713          	srli	a4,a4,0x20
    80007948:	00170713          	addi	a4,a4,1
    8000794c:	00e50733          	add	a4,a0,a4
    80007950:	00050793          	mv	a5,a0
    80007954:	0005c683          	lbu	a3,0(a1)
    80007958:	00178793          	addi	a5,a5,1
    8000795c:	00158593          	addi	a1,a1,1
    80007960:	fed78fa3          	sb	a3,-1(a5)
    80007964:	fee798e3          	bne	a5,a4,80007954 <__memmove+0x160>
    80007968:	f89ff06f          	j	800078f0 <__memmove+0xfc>
	...
