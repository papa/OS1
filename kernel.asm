
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	fb013103          	ld	sp,-80(sp) # 80008fb0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	18d040ef          	jal	ra,800049a8 <start>

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
    80001088:	371010ef          	jal	ra,80002bf8 <_ZN5Riscv20handleSupervisorTrapEv>

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

00000000800015b0 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00113423          	sd	ra,8(sp)
    800015b8:	00813023          	sd	s0,0(sp)
    800015bc:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	fc4080e7          	jalr	-60(ra) # 80001584 <_Z17thread_delete_pcbP7_thread>
    800015c8:	00813083          	ld	ra,8(sp)
    800015cc:	00013403          	ld	s0,0(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00113423          	sd	ra,8(sp)
    800015e0:	00813023          	sd	s0,0(sp)
    800015e4:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	4a8080e7          	jalr	1192(ra) # 80002a90 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    800015f0:	00008797          	auipc	a5,0x8
    800015f4:	a507b783          	ld	a5,-1456(a5) # 80009040 <_ZN3PCB7runningE>
    800015f8:	0287b703          	ld	a4,40(a5)
    800015fc:	0307b503          	ld	a0,48(a5)
    80001600:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	d50080e7          	jalr	-688(ra) # 80001354 <_Z11thread_exitv>
}
    8000160c:	00813083          	ld	ra,8(sp)
    80001610:	00013403          	ld	s0,0(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    })
    80001628:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000162c:	00e53c23          	sd	a4,24(a0)
    80001630:	02053023          	sd	zero,32(a0)
    80001634:	02b53423          	sd	a1,40(a0)
    80001638:	02c53823          	sd	a2,48(a0)
    8000163c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001640:	000017b7          	lui	a5,0x1
    80001644:	00f686b3          	add	a3,a3,a5
    })
    80001648:	04d53423          	sd	a3,72(a0)
    8000164c:	00000797          	auipc	a5,0x0
    80001650:	f8c78793          	addi	a5,a5,-116 # 800015d8 <_ZN3PCB6runnerEv>
    80001654:	04f53823          	sd	a5,80(a0)
    80001658:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000165c:	00053423          	sd	zero,8(a0)
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN3PCB5sleepEm>:
{
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
}
    80001678:	00813403          	ld	s0,8(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_ZN3PCB5startEv>:
{
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001694:	00001097          	auipc	ra,0x1
    80001698:	ca8080e7          	jalr	-856(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
}
    8000169c:	00813083          	ld	ra,8(sp)
    800016a0:	00013403          	ld	s0,0(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800016ac:	fe010113          	addi	sp,sp,-32
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	00813823          	sd	s0,16(sp)
    800016b8:	00913423          	sd	s1,8(sp)
    800016bc:	01213023          	sd	s2,0(sp)
    800016c0:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800016c4:	00008497          	auipc	s1,0x8
    800016c8:	97c4b483          	ld	s1,-1668(s1) # 80009040 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800016cc:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800016d0:	00100793          	li	a5,1
    800016d4:	04f70a63          	beq	a4,a5,80001728 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	cb8080e7          	jalr	-840(ra) # 80002390 <_ZN9Scheduler3getEv>
    800016e0:	00008917          	auipc	s2,0x8
    800016e4:	96090913          	addi	s2,s2,-1696 # 80009040 <_ZN3PCB7runningE>
    800016e8:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800016ec:	00100793          	li	a5,1
    800016f0:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	4c4080e7          	jalr	1220(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800016fc:	00093583          	ld	a1,0(s2)
    80001700:	04858593          	addi	a1,a1,72
    80001704:	04848513          	addi	a0,s1,72
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	b30080e7          	jalr	-1232(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret
        Scheduler::put(old);
    80001728:	00048513          	mv	a0,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	c10080e7          	jalr	-1008(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    80001734:	fa5ff06f          	j	800016d8 <_ZN3PCB8dispatchEv+0x2c>

0000000080001738 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001738:	ff010113          	addi	sp,sp,-16
    8000173c:	00113423          	sd	ra,8(sp)
    80001740:	00813023          	sd	s0,0(sp)
    80001744:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	c08080e7          	jalr	-1016(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    80001750:	00813083          	ld	ra,8(sp)
    80001754:	00013403          	ld	s0,0(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00113423          	sd	ra,8(sp)
    80001768:	00813023          	sd	s0,0(sp)
    8000176c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80001770:	00002097          	auipc	ra,0x2
    80001774:	c44080e7          	jalr	-956(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80001778:	00813083          	ld	ra,8(sp)
    8000177c:	00013403          	ld	s0,0(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80001798:	03853503          	ld	a0,56(a0)
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	c18080e7          	jalr	-1000(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800017b4:	fd010113          	addi	sp,sp,-48
    800017b8:	02113423          	sd	ra,40(sp)
    800017bc:	02813023          	sd	s0,32(sp)
    800017c0:	00913c23          	sd	s1,24(sp)
    800017c4:	01213823          	sd	s2,16(sp)
    800017c8:	01313423          	sd	s3,8(sp)
    800017cc:	01413023          	sd	s4,0(sp)
    800017d0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800017d4:	06000513          	li	a0,96
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	f60080e7          	jalr	-160(ra) # 80001738 <_ZN3PCBnwEm>
    800017e0:	00050493          	mv	s1,a0
    800017e4:	00000713          	li	a4,0
    800017e8:	00000693          	li	a3,0
    800017ec:	00000613          	li	a2,0
    800017f0:	00000593          	li	a1,0
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	e28080e7          	jalr	-472(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800017fc:	00100793          	li	a5,1
    80001800:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80001804:	00008917          	auipc	s2,0x8
    80001808:	83c90913          	addi	s2,s2,-1988 # 80009040 <_ZN3PCB7runningE>
    8000180c:	00993023          	sd	s1,0(s2)
    80001810:	00100a13          	li	s4,1
    80001814:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001818:	00001537          	lui	a0,0x1
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	b34080e7          	jalr	-1228(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    80001824:	00050993          	mv	s3,a0
    80001828:	06000513          	li	a0,96
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	f0c080e7          	jalr	-244(ra) # 80001738 <_ZN3PCBnwEm>
    80001834:	00050493          	mv	s1,a0
    80001838:	00200713          	li	a4,2
    8000183c:	00098693          	mv	a3,s3
    80001840:	00000613          	li	a2,0
    80001844:	00007597          	auipc	a1,0x7
    80001848:	77c5b583          	ld	a1,1916(a1) # 80008fc0 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	dd0080e7          	jalr	-560(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    80001854:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80001858:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    8000185c:	00893503          	ld	a0,8(s2)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	e24080e7          	jalr	-476(ra) # 80001684 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001868:	00001537          	lui	a0,0x1
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	ae4080e7          	jalr	-1308(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    80001874:	00050993          	mv	s3,a0
    80001878:	06000513          	li	a0,96
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	ebc080e7          	jalr	-324(ra) # 80001738 <_ZN3PCBnwEm>
    80001884:	00050493          	mv	s1,a0
    80001888:	00200713          	li	a4,2
    8000188c:	00098693          	mv	a3,s3
    80001890:	00000613          	li	a2,0
    80001894:	00007597          	auipc	a1,0x7
    80001898:	75c5b583          	ld	a1,1884(a1) # 80008ff0 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	d80080e7          	jalr	-640(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    800018a4:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	dd8080e7          	jalr	-552(ra) # 80001684 <_ZN3PCB5startEv>
}
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	01813483          	ld	s1,24(sp)
    800018c0:	01013903          	ld	s2,16(sp)
    800018c4:	00813983          	ld	s3,8(sp)
    800018c8:	00013a03          	ld	s4,0(sp)
    800018cc:	03010113          	addi	sp,sp,48
    800018d0:	00008067          	ret

00000000800018d4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813423          	sd	s0,8(sp)
    800018dc:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800018e0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800018e4:	ffd50513          	addi	a0,a0,-3
}
    800018e8:	00153513          	seqz	a0,a0
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80001908:	00007797          	auipc	a5,0x7
    8000190c:	73878793          	addi	a5,a5,1848 # 80009040 <_ZN3PCB7runningE>
    80001910:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80001914:	0007b783          	ld	a5,0(a5)
    80001918:	00300713          	li	a4,3
    8000191c:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	d8c080e7          	jalr	-628(ra) # 800016ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80001928:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	254080e7          	jalr	596(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80001954:	00007797          	auipc	a5,0x7
    80001958:	7007b223          	sd	zero,1796(a5) # 80009058 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	d50080e7          	jalr	-688(ra) # 800016ac <_ZN3PCB8dispatchEv>
}
    80001964:	00813083          	ld	ra,8(sp)
    80001968:	00013403          	ld	s0,0(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80001984:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80001988:	00007717          	auipc	a4,0x7
    8000198c:	6b870713          	addi	a4,a4,1720 # 80009040 <_ZN3PCB7runningE>
    80001990:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80001994:	00073703          	ld	a4,0(a4)
    80001998:	00007697          	auipc	a3,0x7
    8000199c:	6206b683          	ld	a3,1568(a3) # 80008fb8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800019a0:	0006b683          	ld	a3,0(a3)
    800019a4:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800019a8:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	814080e7          	jalr	-2028(ra) # 800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	cf8080e7          	jalr	-776(ra) # 800016ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800019bc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	1c0080e7          	jalr	448(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800019c8:	00813083          	ld	ra,8(sp)
    800019cc:	00013403          	ld	s0,0(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800019d8:	fd010113          	addi	sp,sp,-48
    800019dc:	02113423          	sd	ra,40(sp)
    800019e0:	02813023          	sd	s0,32(sp)
    800019e4:	00913c23          	sd	s1,24(sp)
    800019e8:	01213823          	sd	s2,16(sp)
    800019ec:	01313423          	sd	s3,8(sp)
    800019f0:	01413023          	sd	s4,0(sp)
    800019f4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800019f8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800019fc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001a00:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001a04:	06000513          	li	a0,96
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	d30080e7          	jalr	-720(ra) # 80001738 <_ZN3PCBnwEm>
    80001a10:	00050493          	mv	s1,a0
    80001a14:	00200713          	li	a4,2
    80001a18:	00007697          	auipc	a3,0x7
    80001a1c:	6486b683          	ld	a3,1608(a3) # 80009060 <_ZN3PCB10savedRegA4E>
    80001a20:	000a0613          	mv	a2,s4
    80001a24:	00098593          	mv	a1,s3
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	bf4080e7          	jalr	-1036(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001a30:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001a34:	02048e63          	beqz	s1,80001a70 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	c48080e7          	jalr	-952(ra) # 80001684 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a44:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	138080e7          	jalr	312(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001a50:	02813083          	ld	ra,40(sp)
    80001a54:	02013403          	ld	s0,32(sp)
    80001a58:	01813483          	ld	s1,24(sp)
    80001a5c:	01013903          	ld	s2,16(sp)
    80001a60:	00813983          	ld	s3,8(sp)
    80001a64:	00013a03          	ld	s4,0(sp)
    80001a68:	03010113          	addi	sp,sp,48
    80001a6c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80001a70:	fff00513          	li	a0,-1
    80001a74:	fd5ff06f          	j	80001a48 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080001a78 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00113423          	sd	ra,8(sp)
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001a88:	00058513          	mv	a0,a1
    if(pcb != 0)
    80001a8c:	02050463          	beqz	a0,80001ab4 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	bf4080e7          	jalr	-1036(ra) # 80001684 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a98:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	0e4080e7          	jalr	228(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001aa4:	00813083          	ld	ra,8(sp)
    80001aa8:	00013403          	ld	s0,0(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001ab4:	fff00513          	li	a0,-1
    80001ab8:	fe5ff06f          	j	80001a9c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080001abc <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	01413023          	sd	s4,0(sp)
    80001ad8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80001adc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80001ae0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001ae4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001ae8:	06000513          	li	a0,96
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	c4c080e7          	jalr	-948(ra) # 80001738 <_ZN3PCBnwEm>
    80001af4:	00050493          	mv	s1,a0
    80001af8:	00200713          	li	a4,2
    80001afc:	00007697          	auipc	a3,0x7
    80001b00:	5646b683          	ld	a3,1380(a3) # 80009060 <_ZN3PCB10savedRegA4E>
    80001b04:	000a0613          	mv	a2,s4
    80001b08:	00098593          	mv	a1,s3
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	b10080e7          	jalr	-1264(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001b14:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001b18:	02048863          	beqz	s1,80001b48 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80001b1c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	060080e7          	jalr	96(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b28:	02813083          	ld	ra,40(sp)
    80001b2c:	02013403          	ld	s0,32(sp)
    80001b30:	01813483          	ld	s1,24(sp)
    80001b34:	01013903          	ld	s2,16(sp)
    80001b38:	00813983          	ld	s3,8(sp)
    80001b3c:	00013a03          	ld	s4,0(sp)
    80001b40:	03010113          	addi	sp,sp,48
    80001b44:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001b48:	fff00513          	li	a0,-1
    80001b4c:	fd5ff06f          	j	80001b20 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080001b50 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001b64:	00058493          	mv	s1,a1
    if(pcb != 0)
    80001b68:	02048e63          	beqz	s1,80001ba4 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	c18080e7          	jalr	-1000(ra) # 80001788 <_ZN3PCBD1Ev>
    80001b78:	00048513          	mv	a0,s1
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	be4080e7          	jalr	-1052(ra) # 80001760 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80001b84:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	ff8080e7          	jalr	-8(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	01013403          	ld	s0,16(sp)
    80001b98:	00813483          	ld	s1,8(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80001ba4:	00100513          	li	a0,1
    80001ba8:	fe1ff06f          	j	80001b88 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080001bac <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	01213023          	sd	s2,0(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80001bc4:	01800513          	li	a0,24
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	ab4080e7          	jalr	-1356(ra) # 8000367c <_ZN10KSemaphorenwEm>
    80001bd0:	00050493          	mv	s1,a0
    80001bd4:	00000593          	li	a1,0
    80001bd8:	00002097          	auipc	ra,0x2
    80001bdc:	83c080e7          	jalr	-1988(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    80001be0:	00007797          	auipc	a5,0x7
    80001be4:	4897b423          	sd	s1,1160(a5) # 80009068 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80001be8:	01800513          	li	a0,24
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	a90080e7          	jalr	-1392(ra) # 8000367c <_ZN10KSemaphorenwEm>
    80001bf4:	00050493          	mv	s1,a0
    80001bf8:	00000593          	li	a1,0
    80001bfc:	00002097          	auipc	ra,0x2
    80001c00:	818080e7          	jalr	-2024(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    80001c04:	00007797          	auipc	a5,0x7
    80001c08:	4697b623          	sd	s1,1132(a5) # 80009070 <_ZN8KConsole19hasCharactersOutputE>
}
    80001c0c:	01813083          	ld	ra,24(sp)
    80001c10:	01013403          	ld	s0,16(sp)
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	00013903          	ld	s2,0(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
    80001c24:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80001c28:	00048513          	mv	a0,s1
    80001c2c:	00002097          	auipc	ra,0x2
    80001c30:	af0080e7          	jalr	-1296(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    80001c34:	00090513          	mv	a0,s2
    80001c38:	0000c097          	auipc	ra,0xc
    80001c3c:	590080e7          	jalr	1424(ra) # 8000e1c8 <_Unwind_Resume>
    80001c40:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	ad4080e7          	jalr	-1324(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    80001c50:	00090513          	mv	a0,s2
    80001c54:	0000c097          	auipc	ra,0xc
    80001c58:	574080e7          	jalr	1396(ra) # 8000e1c8 <_Unwind_Resume>

0000000080001c5c <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80001c5c:	00007697          	auipc	a3,0x7
    80001c60:	40c68693          	addi	a3,a3,1036 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    80001c64:	0106b603          	ld	a2,16(a3)
    80001c68:	00160793          	addi	a5,a2,1
    80001c6c:	00002737          	lui	a4,0x2
    80001c70:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001c74:	00e7f7b3          	and	a5,a5,a4
    80001c78:	0186b703          	ld	a4,24(a3)
    80001c7c:	04e78263          	beq	a5,a4,80001cc0 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80001c90:	00009717          	auipc	a4,0x9
    80001c94:	41870713          	addi	a4,a4,1048 # 8000b0a8 <_ZN8KConsole11inputBufferE>
    80001c98:	00c70633          	add	a2,a4,a2
    80001c9c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80001ca0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80001ca4:	0006b503          	ld	a0,0(a3)
    80001ca8:	00002097          	auipc	ra,0x2
    80001cac:	98c080e7          	jalr	-1652(ra) # 80003634 <_ZN10KSemaphore6signalEv>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80001cc4:	fe010113          	addi	sp,sp,-32
    80001cc8:	00113c23          	sd	ra,24(sp)
    80001ccc:	00813823          	sd	s0,16(sp)
    80001cd0:	00913423          	sd	s1,8(sp)
    80001cd4:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80001cd8:	00007497          	auipc	s1,0x7
    80001cdc:	39048493          	addi	s1,s1,912 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    80001ce0:	0004b503          	ld	a0,0(s1)
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	7d8080e7          	jalr	2008(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80001cec:	0184b783          	ld	a5,24(s1)
    80001cf0:	0104b703          	ld	a4,16(s1)
    80001cf4:	04e78063          	beq	a5,a4,80001d34 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80001cf8:	00009717          	auipc	a4,0x9
    80001cfc:	3b070713          	addi	a4,a4,944 # 8000b0a8 <_ZN8KConsole11inputBufferE>
    80001d00:	00f70733          	add	a4,a4,a5
    80001d04:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80001d08:	00178793          	addi	a5,a5,1
    80001d0c:	00002737          	lui	a4,0x2
    80001d10:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001d14:	00e7f7b3          	and	a5,a5,a4
    80001d18:	00007717          	auipc	a4,0x7
    80001d1c:	36f73423          	sd	a5,872(a4) # 80009080 <_ZN8KConsole9inputHeadE>

    return c;
}
    80001d20:	01813083          	ld	ra,24(sp)
    80001d24:	01013403          	ld	s0,16(sp)
    80001d28:	00813483          	ld	s1,8(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret
        return -1;
    80001d34:	0ff00513          	li	a0,255
    80001d38:	fe9ff06f          	j	80001d20 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080001d3c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80001d3c:	00007697          	auipc	a3,0x7
    80001d40:	32c68693          	addi	a3,a3,812 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    80001d44:	0206b603          	ld	a2,32(a3)
    80001d48:	00160793          	addi	a5,a2,1
    80001d4c:	00002737          	lui	a4,0x2
    80001d50:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001d54:	00e7f7b3          	and	a5,a5,a4
    80001d58:	0286b703          	ld	a4,40(a3)
    80001d5c:	04e78a63          	beq	a5,a4,80001db0 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80001d70:	00068713          	mv	a4,a3
    80001d74:	0306b683          	ld	a3,48(a3)
    80001d78:	00168693          	addi	a3,a3,1
    80001d7c:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80001d80:	00007697          	auipc	a3,0x7
    80001d84:	32868693          	addi	a3,a3,808 # 800090a8 <_ZN8KConsole12outputBufferE>
    80001d88:	00c68633          	add	a2,a3,a2
    80001d8c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80001d90:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80001d94:	00873503          	ld	a0,8(a4)
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	89c080e7          	jalr	-1892(ra) # 80003634 <_ZN10KSemaphore6signalEv>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret
    80001db0:	00008067          	ret

0000000080001db4 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80001db4:	00007797          	auipc	a5,0x7
    80001db8:	1cc7b783          	ld	a5,460(a5) # 80008f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001dbc:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80001dc0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80001dc4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001dc8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80001dcc:	0017f793          	andi	a5,a5,1
    80001dd0:	08078063          	beqz	a5,80001e50 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	00813823          	sd	s0,16(sp)
    80001de0:	00913423          	sd	s1,8(sp)
    80001de4:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80001de8:	00007797          	auipc	a5,0x7
    80001dec:	1b87b783          	ld	a5,440(a5) # 80008fa0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001df0:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80001df4:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80001df8:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80001dfc:	00058493          	mv	s1,a1
    80001e00:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80001e04:	00048513          	mv	a0,s1
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	e54080e7          	jalr	-428(ra) # 80001c5c <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80001e10:	00048513          	mv	a0,s1
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	f28080e7          	jalr	-216(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80001e1c:	00007797          	auipc	a5,0x7
    80001e20:	1647b783          	ld	a5,356(a5) # 80008f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e24:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80001e28:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80001e2c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80001e30:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80001e34:	0017f793          	andi	a5,a5,1
    80001e38:	fa0798e3          	bnez	a5,80001de8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80001e3c:	01813083          	ld	ra,24(sp)
    80001e40:	01013403          	ld	s0,16(sp)
    80001e44:	00813483          	ld	s1,8(sp)
    80001e48:	02010113          	addi	sp,sp,32
    80001e4c:	00008067          	ret
    80001e50:	00008067          	ret

0000000080001e54 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80001e54:	fe010113          	addi	sp,sp,-32
    80001e58:	00113c23          	sd	ra,24(sp)
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80001e68:	00007497          	auipc	s1,0x7
    80001e6c:	20048493          	addi	s1,s1,512 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    80001e70:	0084b503          	ld	a0,8(s1)
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	648080e7          	jalr	1608(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80001e7c:	0284b783          	ld	a5,40(s1)
    80001e80:	0204b703          	ld	a4,32(s1)
    80001e84:	04e78063          	beq	a5,a4,80001ec4 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80001e88:	00007717          	auipc	a4,0x7
    80001e8c:	22070713          	addi	a4,a4,544 # 800090a8 <_ZN8KConsole12outputBufferE>
    80001e90:	00f70733          	add	a4,a4,a5
    80001e94:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80001e98:	00178793          	addi	a5,a5,1
    80001e9c:	00002737          	lui	a4,0x2
    80001ea0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80001ea4:	00e7f7b3          	and	a5,a5,a4
    80001ea8:	00007717          	auipc	a4,0x7
    80001eac:	1ef73423          	sd	a5,488(a4) # 80009090 <_ZN8KConsole10outputHeadE>

    return c;
}
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret
        return -1;
    80001ec4:	0ff00513          	li	a0,255
    80001ec8:	fe9ff06f          	j	80001eb0 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080001ecc <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80001edc:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80001ee0:	0ff57513          	andi	a0,a0,255
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	e58080e7          	jalr	-424(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80001f10:	00007717          	auipc	a4,0x7
    80001f14:	15870713          	addi	a4,a4,344 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    80001f18:	03873783          	ld	a5,56(a4)
    80001f1c:	00178793          	addi	a5,a5,1
    80001f20:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	da0080e7          	jalr	-608(ra) # 80001cc4 <_ZN8KConsole17getCharacterInputEv>
    80001f2c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80001f30:	01b00793          	li	a5,27
    80001f34:	02f51663          	bne	a0,a5,80001f60 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80001f38:	00d00793          	li	a5,13
    80001f3c:	02f48863          	beq	s1,a5,80001f6c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80001f40:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	c3c080e7          	jalr	-964(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001f4c:	01813083          	ld	ra,24(sp)
    80001f50:	01013403          	ld	s0,16(sp)
    80001f54:	00813483          	ld	s1,8(sp)
    80001f58:	02010113          	addi	sp,sp,32
    80001f5c:	00008067          	ret
        putCharacterOutput(ch);
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	ddc080e7          	jalr	-548(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    80001f68:	fd1ff06f          	j	80001f38 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80001f6c:	00d00513          	li	a0,13
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	dcc080e7          	jalr	-564(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80001f78:	00a00513          	li	a0,10
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	dc0080e7          	jalr	-576(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    80001f84:	fbdff06f          	j	80001f40 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080001f88 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80001f94:	00007517          	auipc	a0,0x7
    80001f98:	10453503          	ld	a0,260(a0) # 80009098 <_ZN8KConsole11pendingPutcE>
    80001f9c:	00153513          	seqz	a0,a0
    80001fa0:	00813403          	ld	s0,8(sp)
    80001fa4:	01010113          	addi	sp,sp,16
    80001fa8:	00008067          	ret

0000000080001fac <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	0180006f          	j	80001fd4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	394080e7          	jalr	916(ra) # 80001354 <_Z11thread_exitv>
    80001fc8:	0340006f          	j	80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	368080e7          	jalr	872(ra) # 80001334 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80001fd4:	00007797          	auipc	a5,0x7
    80001fd8:	0047b783          	ld	a5,4(a5) # 80008fd8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001fdc:	0007c783          	lbu	a5,0(a5)
    80001fe0:	00078e63          	beqz	a5,80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	fa4080e7          	jalr	-92(ra) # 80001f88 <_ZN8KConsole17outputBufferEmptyEv>
    80001fec:	00050863          	beqz	a0,80001ffc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80001ff0:	00007797          	auipc	a5,0x7
    80001ff4:	0b07b783          	ld	a5,176(a5) # 800090a0 <_ZN8KConsole11pendingGetcE>
    80001ff8:	fc0784e3          	beqz	a5,80001fc0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80001ffc:	00007797          	auipc	a5,0x7
    80002000:	f847b783          	ld	a5,-124(a5) # 80008f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002004:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002008:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    8000200c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002010:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002014:	0207f793          	andi	a5,a5,32
    80002018:	fa078ae3          	beqz	a5,80001fcc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000201c:	00007797          	auipc	a5,0x7
    80002020:	07c7b783          	ld	a5,124(a5) # 80009098 <_ZN8KConsole11pendingPutcE>
    80002024:	fa0784e3          	beqz	a5,80001fcc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	534080e7          	jalr	1332(ra) # 8000155c <_Z20sysCallGetCharOutputv>
    80002030:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002034:	00007717          	auipc	a4,0x7
    80002038:	03470713          	addi	a4,a4,52 # 80009068 <_ZN8KConsole18hasCharactersInputE>
    8000203c:	03073783          	ld	a5,48(a4)
    80002040:	fff78793          	addi	a5,a5,-1
    80002044:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002048:	00007797          	auipc	a5,0x7
    8000204c:	f307b783          	ld	a5,-208(a5) # 80008f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002050:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002054:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002058:	fef44783          	lbu	a5,-17(s0)
    8000205c:	0ff7f793          	andi	a5,a5,255
    80002060:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002064:	00b50023          	sb	a1,0(a0)
    80002068:	f6dff06f          	j	80001fd4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000206c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	00813023          	sd	s0,0(sp)
    80002078:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	dd8080e7          	jalr	-552(ra) # 80001e54 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002084:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002088:	00001097          	auipc	ra,0x1
    8000208c:	af8080e7          	jalr	-1288(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800020b8:	0004c503          	lbu	a0,0(s1)
    800020bc:	00050a63          	beqz	a0,800020d0 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	c7c080e7          	jalr	-900(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800020c8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800020cc:	fedff06f          	j	800020b8 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret

00000000800020e4 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    800020e4:	fb010113          	addi	sp,sp,-80
    800020e8:	04113423          	sd	ra,72(sp)
    800020ec:	04813023          	sd	s0,64(sp)
    800020f0:	02913c23          	sd	s1,56(sp)
    800020f4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800020f8:	00005797          	auipc	a5,0x5
    800020fc:	f2878793          	addi	a5,a5,-216 # 80007020 <CONSOLE_STATUS+0x10>
    80002100:	0007b703          	ld	a4,0(a5)
    80002104:	fce43423          	sd	a4,-56(s0)
    80002108:	0087b703          	ld	a4,8(a5)
    8000210c:	fce43823          	sd	a4,-48(s0)
    80002110:	0107c783          	lbu	a5,16(a5)
    80002114:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002118:	00060463          	beqz	a2,80002120 <_ZN8KConsole8printIntEiii+0x3c>
    8000211c:	08054263          	bltz	a0,800021a0 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002120:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002124:	00000813          	li	a6,0
    }

    i = 0;
    80002128:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000212c:	0005871b          	sext.w	a4,a1
    80002130:	02b577bb          	remuw	a5,a0,a1
    80002134:	00048693          	mv	a3,s1
    80002138:	0014849b          	addiw	s1,s1,1
    8000213c:	02079793          	slli	a5,a5,0x20
    80002140:	0207d793          	srli	a5,a5,0x20
    80002144:	fe040613          	addi	a2,s0,-32
    80002148:	00f607b3          	add	a5,a2,a5
    8000214c:	fe87c603          	lbu	a2,-24(a5)
    80002150:	fe040793          	addi	a5,s0,-32
    80002154:	00d787b3          	add	a5,a5,a3
    80002158:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    8000215c:	0005061b          	sext.w	a2,a0
    80002160:	02b5553b          	divuw	a0,a0,a1
    80002164:	fce674e3          	bgeu	a2,a4,8000212c <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80002168:	00080c63          	beqz	a6,80002180 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    8000216c:	fe040793          	addi	a5,s0,-32
    80002170:	009784b3          	add	s1,a5,s1
    80002174:	02d00793          	li	a5,45
    80002178:	fcf48c23          	sb	a5,-40(s1)
    8000217c:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80002180:	fff4849b          	addiw	s1,s1,-1
    80002184:	0204c463          	bltz	s1,800021ac <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80002188:	fe040793          	addi	a5,s0,-32
    8000218c:	009787b3          	add	a5,a5,s1
    80002190:	fd87c503          	lbu	a0,-40(a5)
    80002194:	00000097          	auipc	ra,0x0
    80002198:	ba8080e7          	jalr	-1112(ra) # 80001d3c <_ZN8KConsole18putCharacterOutputEc>
    8000219c:	fe5ff06f          	j	80002180 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    800021a0:	40a0053b          	negw	a0,a0
        neg = 1;
    800021a4:	00100813          	li	a6,1
        x = -xx;
    800021a8:	f81ff06f          	j	80002128 <_ZN8KConsole8printIntEiii+0x44>
}
    800021ac:	04813083          	ld	ra,72(sp)
    800021b0:	04013403          	ld	s0,64(sp)
    800021b4:	03813483          	ld	s1,56(sp)
    800021b8:	05010113          	addi	sp,sp,80
    800021bc:	00008067          	ret

00000000800021c0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800021cc:	00007797          	auipc	a5,0x7
    800021d0:	e147b783          	ld	a5,-492(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800021d4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800021d8:	00500793          	li	a5,5
    800021dc:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800021e0:	0000b797          	auipc	a5,0xb
    800021e4:	ec87b783          	ld	a5,-312(a5) # 8000d0a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800021e8:	00000593          	li	a1,0
    while(curr != 0)
    800021ec:	02078063          	beqz	a5,8000220c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800021f0:	02063683          	ld	a3,32(a2)
    800021f4:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800021f8:	00e6e863          	bltu	a3,a4,80002208 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800021fc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002200:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002204:	fe9ff06f          	j	800021ec <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80002208:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000220c:	00058a63          	beqz	a1,80002220 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80002210:	00c5b423          	sd	a2,8(a1)
}
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002220:	0000b797          	auipc	a5,0xb
    80002224:	e8c7b423          	sd	a2,-376(a5) # 8000d0a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80002228:	fedff06f          	j	80002214 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000222c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    8000222c:	0000b517          	auipc	a0,0xb
    80002230:	e7c53503          	ld	a0,-388(a0) # 8000d0a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002234:	06050e63          	beqz	a0,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002238:	06050c63          	beqz	a0,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000223c:	02053783          	ld	a5,32(a0)
    80002240:	00007717          	auipc	a4,0x7
    80002244:	d7873703          	ld	a4,-648(a4) # 80008fb8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002248:	00073703          	ld	a4,0(a4)
    8000224c:	06f76263          	bltu	a4,a5,800022b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00113c23          	sd	ra,24(sp)
    80002258:	00813823          	sd	s0,16(sp)
    8000225c:	00913423          	sd	s1,8(sp)
    80002260:	02010413          	addi	s0,sp,32
    80002264:	0180006f          	j	8000227c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80002268:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000226c:	00007717          	auipc	a4,0x7
    80002270:	d4c73703          	ld	a4,-692(a4) # 80008fb8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002274:	00073703          	ld	a4,0(a4)
    80002278:	02f76263          	bltu	a4,a5,8000229c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000227c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80002280:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80002284:	00000097          	auipc	ra,0x0
    80002288:	0b8080e7          	jalr	184(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000228c:	0000b797          	auipc	a5,0xb
    80002290:	e097be23          	sd	s1,-484(a5) # 8000d0a8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80002294:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002298:	fc0498e3          	bnez	s1,80002268 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000229c:	01813083          	ld	ra,24(sp)
    800022a0:	01013403          	ld	s0,16(sp)
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	02010113          	addi	sp,sp,32
    800022ac:	00008067          	ret
    800022b0:	00008067          	ret

00000000800022b4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	08c080e7          	jalr	140(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	0c8080e7          	jalr	200(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    800022f4:	00813083          	ld	ra,8(sp)
    800022f8:	00013403          	ld	s0,0(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002310:	0000b797          	auipc	a5,0xb
    80002314:	da07b783          	ld	a5,-608(a5) # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80002318:	00000513          	li	a0,0
    while(curr != 0)
    8000231c:	00078863          	beqz	a5,8000232c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002320:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002324:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002328:	ff5ff06f          	j	8000231c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000232c:	0005051b          	sext.w	a0,a0
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80002348:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000234c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002350:	0000b797          	auipc	a5,0xb
    80002354:	d607b783          	ld	a5,-672(a5) # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002358:	02078263          	beqz	a5,8000237c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000235c:	0000b797          	auipc	a5,0xb
    80002360:	d5478793          	addi	a5,a5,-684 # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002364:	0087b703          	ld	a4,8(a5)
    80002368:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000236c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000237c:	0000b797          	auipc	a5,0xb
    80002380:	d3478793          	addi	a5,a5,-716 # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002384:	00a7b423          	sd	a0,8(a5)
    80002388:	00a7b023          	sd	a0,0(a5)
    8000238c:	fe5ff06f          	j	80002370 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080002390 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000239c:	0000b517          	auipc	a0,0xb
    800023a0:	d1453503          	ld	a0,-748(a0) # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    800023a4:	00050c63          	beqz	a0,800023bc <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800023a8:	00853783          	ld	a5,8(a0)
    800023ac:	00078e63          	beqz	a5,800023c8 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800023b0:	0000b717          	auipc	a4,0xb
    800023b4:	d0f73023          	sd	a5,-768(a4) # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800023b8:	00053423          	sd	zero,8(a0)
    return retval;
}
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800023c8:	0000b797          	auipc	a5,0xb
    800023cc:	ce878793          	addi	a5,a5,-792 # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    800023d0:	0007b423          	sd	zero,8(a5)
    800023d4:	0007b023          	sd	zero,0(a5)
    800023d8:	fe1ff06f          	j	800023b8 <_ZN9Scheduler3getEv+0x28>

00000000800023dc <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800023dc:	fe010113          	addi	sp,sp,-32
    800023e0:	00113c23          	sd	ra,24(sp)
    800023e4:	00813823          	sd	s0,16(sp)
    800023e8:	00913423          	sd	s1,8(sp)
    800023ec:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800023f0:	0000b497          	auipc	s1,0xb
    800023f4:	cc04b483          	ld	s1,-832(s1) # 8000d0b0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800023f8:	02048863          	beqz	s1,80002428 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    800023fc:	00000613          	li	a2,0
    80002400:	01000593          	li	a1,16
    80002404:	0004851b          	sext.w	a0,s1
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	5c0080e7          	jalr	1472(ra) # 800039c8 <_Z8printIntiii>
        printString("\n");
    80002410:	00005517          	auipc	a0,0x5
    80002414:	d8850513          	addi	a0,a0,-632 # 80007198 <CONSOLE_STATUS+0x188>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	418080e7          	jalr	1048(ra) # 80003830 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80002420:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002424:	fd5ff06f          	j	800023f8 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	664080e7          	jalr	1636(ra) # 80002ab0 <_ZN5Riscv10kernelMainEv>
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80002474:	00053783          	ld	a5,0(a0)
    80002478:	0107b783          	ld	a5,16(a5)
    8000247c:	000780e7          	jalr	a5
}
    80002480:	00813083          	ld	ra,8(sp)
    80002484:	00013403          	ld	s0,0(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80002490:	00007797          	auipc	a5,0x7
    80002494:	a1878793          	addi	a5,a5,-1512 # 80008ea8 <_ZTV6Thread+0x10>
    80002498:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000249c:	00853503          	ld	a0,8(a0)
    800024a0:	02050663          	beqz	a0,800024cc <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    delete myHandle;
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	0fc080e7          	jalr	252(ra) # 800015b0 <_ZN7_threaddlEPv>
}
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret
    800024cc:	00008067          	ret

00000000800024d0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800024d0:	00007797          	auipc	a5,0x7
    800024d4:	a0078793          	addi	a5,a5,-1536 # 80008ed0 <_ZTV9Semaphore+0x10>
    800024d8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800024dc:	00853503          	ld	a0,8(a0)
    800024e0:	02050663          	beqz	a0,8000250c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    delete myHandle;
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	464080e7          	jalr	1124(ra) # 80002958 <_ZN4_semdlEPv>
}
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret
    8000250c:	00008067          	ret

0000000080002510 <_Znwm>:
{
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	d38080e7          	jalr	-712(ra) # 80001258 <_Z9mem_allocm>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZdlPv>:
{
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00113423          	sd	ra,8(sp)
    80002540:	00813023          	sd	s0,0(sp)
    80002544:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	d40080e7          	jalr	-704(ra) # 80001288 <_Z8mem_freePv>
}
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00013403          	ld	s0,0(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	02010413          	addi	s0,sp,32
    80002574:	00050493          	mv	s1,a0
}
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	f18080e7          	jalr	-232(ra) # 80002490 <_ZN6ThreadD1Ev>
    80002580:	00048513          	mv	a0,s1
    80002584:	00000097          	auipc	ra,0x0
    80002588:	fb4080e7          	jalr	-76(ra) # 80002538 <_ZdlPv>
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret

00000000800025a0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800025a0:	fe010113          	addi	sp,sp,-32
    800025a4:	00113c23          	sd	ra,24(sp)
    800025a8:	00813823          	sd	s0,16(sp)
    800025ac:	00913423          	sd	s1,8(sp)
    800025b0:	02010413          	addi	s0,sp,32
    800025b4:	00050493          	mv	s1,a0
}
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	f18080e7          	jalr	-232(ra) # 800024d0 <_ZN9SemaphoreD1Ev>
    800025c0:	00048513          	mv	a0,s1
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	f74080e7          	jalr	-140(ra) # 80002538 <_ZdlPv>
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800025e0:	00853503          	ld	a0,8(a0)
    800025e4:	02050663          	beqz	a0,80002610 <_ZN6Thread5startEv+0x30>
{
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	e6c080e7          	jalr	-404(ra) # 80001464 <_Z12thread_startPv>
}
    80002600:	00813083          	ld	ra,8(sp)
    80002604:	00013403          	ld	s0,0(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret
        return -1;
    80002610:	fff00513          	li	a0,-1
}
    80002614:	00008067          	ret

0000000080002618 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00113423          	sd	ra,8(sp)
    80002620:	00813023          	sd	s0,0(sp)
    80002624:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	d0c080e7          	jalr	-756(ra) # 80001334 <_Z15thread_dispatchv>
}
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00013403          	ld	s0,0(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN6Thread5sleepEm>:
{
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	de8080e7          	jalr	-536(ra) # 80001438 <_Z10time_sleepm>
}
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80002668:	fe010113          	addi	sp,sp,-32
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00813823          	sd	s0,16(sp)
    80002674:	00913423          	sd	s1,8(sp)
    80002678:	01213023          	sd	s2,0(sp)
    8000267c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80002680:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80002684:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80002688:	0004b783          	ld	a5,0(s1)
    8000268c:	0187b783          	ld	a5,24(a5)
    80002690:	00048513          	mv	a0,s1
    80002694:	000780e7          	jalr	a5
        Thread::sleep(time);
    80002698:	00090513          	mv	a0,s2
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	fa4080e7          	jalr	-92(ra) # 80002640 <_ZN6Thread5sleepEm>
    while(true)
    800026a4:	fe5ff06f          	j	80002688 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800026a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    800026b8:	00006797          	auipc	a5,0x6
    800026bc:	7f078793          	addi	a5,a5,2032 # 80008ea8 <_ZTV6Thread+0x10>
    800026c0:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800026c4:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    800026c8:	00850513          	addi	a0,a0,8
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	dc4080e7          	jalr	-572(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00006797          	auipc	a5,0x6
    800026f8:	7b478793          	addi	a5,a5,1972 # 80008ea8 <_ZTV6Thread+0x10>
    800026fc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002700:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80002704:	00050613          	mv	a2,a0
    80002708:	00000597          	auipc	a1,0x0
    8000270c:	d5c58593          	addi	a1,a1,-676 # 80002464 <_ZN6Thread6runnerEPv>
    80002710:	00850513          	addi	a0,a0,8
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	d7c080e7          	jalr	-644(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000271c:	00813083          	ld	ra,8(sp)
    80002720:	00013403          	ld	s0,0(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret

000000008000272c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000272c:	00853503          	ld	a0,8(a0)
    80002730:	02050663          	beqz	a0,8000275c <_ZN9Semaphore4waitEv+0x30>
{
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	c9c080e7          	jalr	-868(ra) # 800013e0 <_Z8sem_waitP4_sem>
}
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret
        return -1;
    8000275c:	fff00513          	li	a0,-1
}
    80002760:	00008067          	ret

0000000080002764 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80002764:	fe010113          	addi	sp,sp,-32
    80002768:	00113c23          	sd	ra,24(sp)
    8000276c:	00813823          	sd	s0,16(sp)
    80002770:	00913423          	sd	s1,8(sp)
    80002774:	02010413          	addi	s0,sp,32
    80002778:	00050493          	mv	s1,a0
    8000277c:	00006797          	auipc	a5,0x6
    80002780:	75478793          	addi	a5,a5,1876 # 80008ed0 <_ZTV9Semaphore+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80002788:	00850513          	addi	a0,a0,8
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	bf0080e7          	jalr	-1040(ra) # 8000137c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80002794:	00050463          	beqz	a0,8000279c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80002798:	0004b423          	sd	zero,8(s1)
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800027b0:	00853503          	ld	a0,8(a0)
    800027b4:	02050663          	beqz	a0,800027e0 <_ZN9Semaphore6signalEv+0x30>
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	c44080e7          	jalr	-956(ra) # 8000140c <_Z10sem_signalP4_sem>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret
        return -1;
    800027e0:	fff00513          	li	a0,-1
}
    800027e4:	00008067          	ret

00000000800027e8 <_ZN7Console4getcEv>:
{
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    return ::getc();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	d18080e7          	jalr	-744(ra) # 80001510 <_Z4getcv>
}
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN7Console4putcEc>:
{
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00113423          	sd	ra,8(sp)
    80002818:	00813023          	sd	s0,0(sp)
    8000281c:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	d18080e7          	jalr	-744(ra) # 80001538 <_Z4putcc>
}
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	01213023          	sd	s2,0(sp)
    8000284c:	02010413          	addi	s0,sp,32
    80002850:	00050493          	mv	s1,a0
    80002854:	00058913          	mv	s2,a1
    80002858:	01000513          	li	a0,16
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	cb4080e7          	jalr	-844(ra) # 80002510 <_Znwm>
    80002864:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80002868:	00953023          	sd	s1,0(a0)
    8000286c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002870:	00000597          	auipc	a1,0x0
    80002874:	df858593          	addi	a1,a1,-520 # 80002668 <_ZN14PeriodicThread6runnerEPv>
    80002878:	00048513          	mv	a0,s1
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	e2c080e7          	jalr	-468(ra) # 800026a8 <_ZN6ThreadC1EPFvPvES0_>
    80002884:	00006797          	auipc	a5,0x6
    80002888:	5f478793          	addi	a5,a5,1524 # 80008e78 <_ZTV14PeriodicThread+0x10>
    8000288c:	00f4b023          	sd	a5,0(s1)
}
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	00013903          	ld	s2,0(sp)
    800028a0:	02010113          	addi	sp,sp,32
    800028a4:	00008067          	ret

00000000800028a8 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00813423          	sd	s0,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	00813403          	ld	s0,8(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00813423          	sd	s0,8(sp)
    800028c8:	01010413          	addi	s0,sp,16
    800028cc:	00813403          	ld	s0,8(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	00006797          	auipc	a5,0x6
    800028ec:	59078793          	addi	a5,a5,1424 # 80008e78 <_ZTV14PeriodicThread+0x10>
    800028f0:	00f53023          	sd	a5,0(a0)
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	b9c080e7          	jalr	-1124(ra) # 80002490 <_ZN6ThreadD1Ev>
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN14PeriodicThreadD0Ev>:
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    80002924:	00006797          	auipc	a5,0x6
    80002928:	55478793          	addi	a5,a5,1364 # 80008e78 <_ZTV14PeriodicThread+0x10>
    8000292c:	00f53023          	sd	a5,0(a0)
    80002930:	00000097          	auipc	ra,0x0
    80002934:	b60080e7          	jalr	-1184(ra) # 80002490 <_ZN6ThreadD1Ev>
    80002938:	00048513          	mv	a0,s1
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	bfc080e7          	jalr	-1028(ra) # 80002538 <_ZdlPv>
    80002944:	01813083          	ld	ra,24(sp)
    80002948:	01013403          	ld	s0,16(sp)
    8000294c:	00813483          	ld	s1,8(sp)
    80002950:	02010113          	addi	sp,sp,32
    80002954:	00008067          	ret

0000000080002958 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00113423          	sd	ra,8(sp)
    80002960:	00813023          	sd	s0,0(sp)
    80002964:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	a4c080e7          	jalr	-1460(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80002970:	00813083          	ld	ra,8(sp)
    80002974:	00013403          	ld	s0,0(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret

0000000080002980 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00113423          	sd	ra,8(sp)
    80002988:	00813023          	sd	s0,0(sp)
    8000298c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002990:	00006797          	auipc	a5,0x6
    80002994:	6007b783          	ld	a5,1536(a5) # 80008f90 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002998:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	e18080e7          	jalr	-488(ra) # 800017b4 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	208080e7          	jalr	520(ra) # 80001bac <_ZN8KConsole10initializeEv>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800029c8:	00200793          	li	a5,2
    800029cc:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800029d0:	00813403          	ld	s0,8(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800029e8:	00200793          	li	a5,2
    800029ec:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZN5Riscv9endSystemEv>:
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	fd0080e7          	jalr	-48(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80002a14:	00100793          	li	a5,1
    80002a18:	0000a717          	auipc	a4,0xa
    80002a1c:	6af70423          	sb	a5,1704(a4) # 8000d0c0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	970080e7          	jalr	-1680(ra) # 80002390 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80002a28:	fe051ce3          	bnez	a0,80002a20 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80002a2c:	00006797          	auipc	a5,0x6
    80002a30:	59c7b783          	ld	a5,1436(a5) # 80008fc8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a34:	0007b503          	ld	a0,0(a5)
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	904080e7          	jalr	-1788(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80002a40:	00006797          	auipc	a5,0x6
    80002a44:	5587b783          	ld	a5,1368(a5) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a48:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	f70080e7          	jalr	-144(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80002a54:	00006797          	auipc	a5,0x6
    80002a58:	5747b783          	ld	a5,1396(a5) # 80008fc8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a5c:	0007b503          	ld	a0,0(a5)
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	e74080e7          	jalr	-396(ra) # 800018d4 <_ZN3PCB10isFinishedEv>
    80002a68:	00051863          	bnez	a0,80002a78 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	8c8080e7          	jalr	-1848(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80002a74:	fe1ff06f          	j	80002a54 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	f64080e7          	jalr	-156(ra) # 800029dc <_ZN5Riscv17disableInterruptsEv>
}
    80002a80:	00813083          	ld	ra,8(sp)
    80002a84:	00013403          	ld	s0,0(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002a9c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002aa0:	10200073          	sret
}
    80002aa4:	00813403          	ld	s0,8(sp)
    80002aa8:	01010113          	addi	sp,sp,16
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80002ab0:	0000a797          	auipc	a5,0xa
    80002ab4:	6117c783          	lbu	a5,1553(a5) # 8000d0c1 <_ZN5Riscv16kernelMainCalledE>
    80002ab8:	00078463          	beqz	a5,80002ac0 <_ZN5Riscv10kernelMainEv+0x10>
    80002abc:	00008067          	ret
{
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00113423          	sd	ra,8(sp)
    80002ac8:	00813023          	sd	s0,0(sp)
    80002acc:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80002ad0:	00100793          	li	a5,1
    80002ad4:	0000a717          	auipc	a4,0xa
    80002ad8:	5ef706a3          	sb	a5,1517(a4) # 8000d0c1 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	ea4080e7          	jalr	-348(ra) # 80002980 <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	ed8080e7          	jalr	-296(ra) # 800029bc <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80002aec:	00006797          	auipc	a5,0x6
    80002af0:	4e47b783          	ld	a5,1252(a5) # 80008fd0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002af4:	0007b503          	ld	a0,0(a5)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	ddc080e7          	jalr	-548(ra) # 800018d4 <_ZN3PCB10isFinishedEv>
    80002b00:	00051863          	bnez	a0,80002b10 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	830080e7          	jalr	-2000(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80002b0c:	fe1ff06f          	j	80002aec <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	eec080e7          	jalr	-276(ra) # 800029fc <_ZN5Riscv9endSystemEv>
}
    80002b18:	00813083          	ld	ra,8(sp)
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
    userMain();
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	7c0080e7          	jalr	1984(ra) # 800042f8 <_Z8userMainv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00813423          	sd	s0,8(sp)
    80002b58:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80002b5c:	00200793          	li	a5,2
    80002b60:	1047b073          	csrc	sie,a5
}
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    while(true)
    80002b7c:	0000006f          	j	80002b7c <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080002b80 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002b8c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002b90:	00006717          	auipc	a4,0x6
    80002b94:	45073703          	ld	a4,1104(a4) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002b98:	00073703          	ld	a4,0(a4)
    80002b9c:	01073703          	ld	a4,16(a4)
    80002ba0:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002ba4:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002ba8:	00078593          	mv	a1,a5
}
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80002bc4:	00006797          	auipc	a5,0x6
    80002bc8:	41c7b783          	ld	a5,1052(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002bcc:	0007b783          	ld	a5,0(a5)
    80002bd0:	0007c783          	lbu	a5,0(a5)
    80002bd4:	00078c63          	beqz	a5,80002bec <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002bd8:	10000793          	li	a5,256
    80002bdc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80002be0:	00813403          	ld	s0,8(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002bec:	10000793          	li	a5,256
    80002bf0:	1007b073          	csrc	sstatus,a5
    80002bf4:	fedff06f          	j	80002be0 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080002bf8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80002bf8:	f9010113          	addi	sp,sp,-112
    80002bfc:	06113423          	sd	ra,104(sp)
    80002c00:	06813023          	sd	s0,96(sp)
    80002c04:	04913c23          	sd	s1,88(sp)
    80002c08:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80002c0c:	00070713          	mv	a4,a4
    80002c10:	00006797          	auipc	a5,0x6
    80002c14:	3e87b783          	ld	a5,1000(a5) # 80008ff8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002c18:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80002c1c:	00006797          	auipc	a5,0x6
    80002c20:	3c47b783          	ld	a5,964(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002c24:	0007b783          	ld	a5,0(a5)
    80002c28:	14002773          	csrr	a4,sscratch
    80002c2c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002c30:	142027f3          	csrr	a5,scause
    80002c34:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002c38:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80002c3c:	00900713          	li	a4,9
    80002c40:	02f76e63          	bltu	a4,a5,80002c7c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80002c44:	00800713          	li	a4,8
    80002c48:	18e7f463          	bgeu	a5,a4,80002dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80002c4c:	00500713          	li	a4,5
    80002c50:	16e78a63          	beq	a5,a4,80002dc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80002c54:	00700713          	li	a4,7
    80002c58:	00e79863          	bne	a5,a4,80002c68 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	c9c080e7          	jalr	-868(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002c64:	1200006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80002c68:	00200713          	li	a4,2
    80002c6c:	10e79c63          	bne	a5,a4,80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	c88080e7          	jalr	-888(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002c78:	10c0006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80002c7c:	fff00713          	li	a4,-1
    80002c80:	03f71713          	slli	a4,a4,0x3f
    80002c84:	00170713          	addi	a4,a4,1
    80002c88:	06e78a63          	beq	a5,a4,80002cfc <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80002c8c:	fff00713          	li	a4,-1
    80002c90:	03f71713          	slli	a4,a4,0x3f
    80002c94:	00970713          	addi	a4,a4,9
    80002c98:	0ee79663          	bne	a5,a4,80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80002c9c:	00006797          	auipc	a5,0x6
    80002ca0:	2e47b783          	ld	a5,740(a5) # 80008f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ca4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ca8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002cac:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002cb0:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80002cb4:	0017f793          	andi	a5,a5,1
    80002cb8:	02078863          	beqz	a5,80002ce8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80002cbc:	00006797          	auipc	a5,0x6
    80002cc0:	2e47b783          	ld	a5,740(a5) # 80008fa0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cc4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002cc8:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80002ccc:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002cd0:	00058513          	mv	a0,a1
    80002cd4:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80002cd8:	00006797          	auipc	a5,0x6
    80002cdc:	2c07b783          	ld	a5,704(a5) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ce0:	0007b783          	ld	a5,0(a5)
    80002ce4:	0c079263          	bnez	a5,80002da8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80002ce8:	00002097          	auipc	ra,0x2
    80002cec:	51c080e7          	jalr	1308(ra) # 80005204 <plic_claim>
    80002cf0:	00002097          	auipc	ra,0x2
    80002cf4:	54c080e7          	jalr	1356(ra) # 8000523c <plic_complete>
            break;
    80002cf8:	08c0006f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002cfc:	141027f3          	csrr	a5,sepc
    80002d00:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002d04:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80002d08:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002d0c:	100027f3          	csrr	a5,sstatus
    80002d10:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d14:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80002d18:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80002d1c:	00200793          	li	a5,2
    80002d20:	1447b073          	csrc	sip,a5
            totalTime++;
    80002d24:	0000a717          	auipc	a4,0xa
    80002d28:	39c70713          	addi	a4,a4,924 # 8000d0c0 <_ZN5Riscv12finishSystemE>
    80002d2c:	00873783          	ld	a5,8(a4)
    80002d30:	00178793          	addi	a5,a5,1
    80002d34:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80002d38:	00006497          	auipc	s1,0x6
    80002d3c:	2704b483          	ld	s1,624(s1) # 80008fa8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d40:	0004b783          	ld	a5,0(s1)
    80002d44:	00178793          	addi	a5,a5,1
    80002d48:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	4e0080e7          	jalr	1248(ra) # 8000222c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80002d54:	00006797          	auipc	a5,0x6
    80002d58:	28c7b783          	ld	a5,652(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002d5c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80002d60:	0187b783          	ld	a5,24(a5)
    80002d64:	0004b703          	ld	a4,0(s1)
    80002d68:	02f77863          	bgeu	a4,a5,80002d98 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80002d6c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002d70:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80002d74:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002d78:	14179073          	csrw	sepc,a5
            changePrivMode();
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	e3c080e7          	jalr	-452(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>
}
    80002d84:	06813083          	ld	ra,104(sp)
    80002d88:	06013403          	ld	s0,96(sp)
    80002d8c:	05813483          	ld	s1,88(sp)
    80002d90:	07010113          	addi	sp,sp,112
    80002d94:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80002d98:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	910080e7          	jalr	-1776(ra) # 800016ac <_ZN3PCB8dispatchEv>
    80002da4:	fc9ff06f          	j	80002d6c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80002da8:	fff78793          	addi	a5,a5,-1
    80002dac:	00006717          	auipc	a4,0x6
    80002db0:	1ec73703          	ld	a4,492(a4) # 80008f98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002db4:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	ea4080e7          	jalr	-348(ra) # 80001c5c <_ZN8KConsole17putCharacterInputEc>
    80002dc0:	f29ff06f          	j	80002ce8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	b34080e7          	jalr	-1228(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80002dcc:	fb9ff06f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80002dd0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002dd4:	14102773          	csrr	a4,sepc
    80002dd8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80002ddc:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80002de0:	00470713          	addi	a4,a4,4
    80002de4:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002de8:	10002773          	csrr	a4,sstatus
    80002dec:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80002df0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80002df4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80002df8:	04300713          	li	a4,67
    80002dfc:	02f76463          	bltu	a4,a5,80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80002e00:	00279793          	slli	a5,a5,0x2
    80002e04:	00004717          	auipc	a4,0x4
    80002e08:	23070713          	addi	a4,a4,560 # 80007034 <CONSOLE_STATUS+0x24>
    80002e0c:	00e787b3          	add	a5,a5,a4
    80002e10:	0007a783          	lw	a5,0(a5)
    80002e14:	00e787b3          	add	a5,a5,a4
    80002e18:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	55c080e7          	jalr	1372(ra) # 80003378 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80002e24:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80002e28:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80002e2c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80002e30:	14179073          	csrw	sepc,a5
            changePrivMode();
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	d84080e7          	jalr	-636(ra) # 80002bb8 <_ZN5Riscv14changePrivModeEv>
}
    80002e3c:	f49ff06f          	j	80002d84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	59c080e7          	jalr	1436(ra) # 800033dc <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80002e48:	fddff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	c70080e7          	jalr	-912(ra) # 80001abc <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80002e54:	fd1ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	b80080e7          	jalr	-1152(ra) # 800019d8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80002e60:	fc5ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	c14080e7          	jalr	-1004(ra) # 80001a78 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80002e6c:	fb9ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	ad4080e7          	jalr	-1324(ra) # 80001944 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80002e78:	fadff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	a7c080e7          	jalr	-1412(ra) # 800018f8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80002e84:	fa1ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	aec080e7          	jalr	-1300(ra) # 80001974 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80002e90:	f95ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                     PCB::threadDelPCBHandler();
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	cbc080e7          	jalr	-836(ra) # 80001b50 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80002e9c:	f89ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80002ea0:	00001097          	auipc	ra,0x1
    80002ea4:	804080e7          	jalr	-2044(ra) # 800036a4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80002ea8:	f7dff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	898080e7          	jalr	-1896(ra) # 80003744 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80002eb4:	f71ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80002eb8:	00001097          	auipc	ra,0x1
    80002ebc:	8e0080e7          	jalr	-1824(ra) # 80003798 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80002ec0:	f65ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	918080e7          	jalr	-1768(ra) # 800037dc <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80002ecc:	f59ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	02c080e7          	jalr	44(ra) # 80001efc <_ZN8KConsole11getcHandlerEv>
                    break;
    80002ed8:	f4dff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	ff0080e7          	jalr	-16(ra) # 80001ecc <_ZN8KConsole11putcHandlerEv>
                    break;
    80002ee4:	f41ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	184080e7          	jalr	388(ra) # 8000206c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80002ef0:	f35ff06f          	j	80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080002ef4 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813423          	sd	s0,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80002f00:	0000a717          	auipc	a4,0xa
    80002f04:	1d072703          	lw	a4,464(a4) # 8000d0d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f08:	00100793          	li	a5,1
    80002f0c:	04f70263          	beq	a4,a5,80002f50 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80002f10:	0000a797          	auipc	a5,0xa
    80002f14:	1c078793          	addi	a5,a5,448 # 8000d0d0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80002f18:	00100713          	li	a4,1
    80002f1c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80002f20:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80002f24:	00006717          	auipc	a4,0x6
    80002f28:	06473703          	ld	a4,100(a4) # 80008f88 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002f2c:	00073703          	ld	a4,0(a4)
    80002f30:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80002f34:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80002f38:	00006797          	auipc	a5,0x6
    80002f3c:	0b07b783          	ld	a5,176(a5) # 80008fe8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002f40:	0007b783          	ld	a5,0(a5)
    80002f44:	40e787b3          	sub	a5,a5,a4
    80002f48:	ff178793          	addi	a5,a5,-15
    80002f4c:	00f73023          	sd	a5,0(a4)
}
    80002f50:	00813403          	ld	s0,8(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80002f5c:	fd010113          	addi	sp,sp,-48
    80002f60:	02113423          	sd	ra,40(sp)
    80002f64:	02813023          	sd	s0,32(sp)
    80002f68:	00913c23          	sd	s1,24(sp)
    80002f6c:	01213823          	sd	s2,16(sp)
    80002f70:	01313423          	sd	s3,8(sp)
    80002f74:	03010413          	addi	s0,sp,48
    80002f78:	00050493          	mv	s1,a0
    80002f7c:	00058993          	mv	s3,a1
    80002f80:	00060913          	mv	s2,a2
    initMemory();
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	f70080e7          	jalr	-144(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80002f8c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80002f90:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80002f94:	0000a797          	auipc	a5,0xa
    80002f98:	1447b783          	ld	a5,324(a5) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    80002f9c:	02078e63          	beqz	a5,80002fd8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80002fa0:	00006717          	auipc	a4,0x6
    80002fa4:	04873703          	ld	a4,72(a4) # 80008fe8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002fa8:	00073703          	ld	a4,0(a4)
    80002fac:	03276c63          	bltu	a4,s2,80002fe4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80002fb0:	00893783          	ld	a5,8(s2)
    80002fb4:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80002fb8:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80002fbc:	02813083          	ld	ra,40(sp)
    80002fc0:	02013403          	ld	s0,32(sp)
    80002fc4:	01813483          	ld	s1,24(sp)
    80002fc8:	01013903          	ld	s2,16(sp)
    80002fcc:	00813983          	ld	s3,8(sp)
    80002fd0:	03010113          	addi	sp,sp,48
    80002fd4:	00008067          	ret
        headAllocated = newAllocated;
    80002fd8:	0000a797          	auipc	a5,0xa
    80002fdc:	1097b023          	sd	s1,256(a5) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    80002fe0:	fddff06f          	j	80002fbc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80002fe4:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80002fe8:	0000a797          	auipc	a5,0xa
    80002fec:	0e97b823          	sd	s1,240(a5) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
}
    80002ff0:	fcdff06f          	j	80002fbc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080002ff4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	01213023          	sd	s2,0(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    80003010:	00058913          	mv	s2,a1
    initMemory();
    80003014:	00000097          	auipc	ra,0x0
    80003018:	ee0080e7          	jalr	-288(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000301c:	0000a797          	auipc	a5,0xa
    80003020:	0bc7b783          	ld	a5,188(a5) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003024:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003028:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000302c:	00000713          	li	a4,0
    while(curr != 0)
    80003030:	00078c63          	beqz	a5,80003048 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003034:	00f4e863          	bltu	s1,a5,80003044 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003038:	00078713          	mv	a4,a5
        curr = curr->next;
    8000303c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003040:	ff1ff06f          	j	80003030 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003044:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003048:	02070063          	beqz	a4,80003068 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000304c:	00973423          	sd	s1,8(a4)
}
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	00013903          	ld	s2,0(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret
        headAllocated = newAllocated;
    80003068:	0000a797          	auipc	a5,0xa
    8000306c:	0697b823          	sd	s1,112(a5) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    80003070:	fe1ff06f          	j	80003050 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003074 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003074:	fe010113          	addi	sp,sp,-32
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	00813823          	sd	s0,16(sp)
    80003080:	00913423          	sd	s1,8(sp)
    80003084:	01213023          	sd	s2,0(sp)
    80003088:	02010413          	addi	s0,sp,32
    8000308c:	00050913          	mv	s2,a0
    initMemory();
    80003090:	00000097          	auipc	ra,0x0
    80003094:	e64080e7          	jalr	-412(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003098:	0000a497          	auipc	s1,0xa
    8000309c:	0484b483          	ld	s1,72(s1) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800030a0:	00000713          	li	a4,0
    while(curr != 0)
    800030a4:	0c048063          	beqz	s1,80003164 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    800030a8:	0004b783          	ld	a5,0(s1)
    800030ac:	0127f863          	bgeu	a5,s2,800030bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800030b0:	00048713          	mv	a4,s1
        curr = curr->next;
    800030b4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800030b8:	fedff06f          	j	800030a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800030bc:	01090693          	addi	a3,s2,16
    800030c0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800030c4:	01078613          	addi	a2,a5,16
    800030c8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800030cc:	00006597          	auipc	a1,0x6
    800030d0:	f1c5b583          	ld	a1,-228(a1) # 80008fe8 <_GLOBAL_OFFSET_TABLE_+0x78>
    800030d4:	0005b583          	ld	a1,0(a1)
    800030d8:	06d5e063          	bltu	a1,a3,80003138 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800030dc:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800030e0:	01000513          	li	a0,16
    800030e4:	02b57663          	bgeu	a0,a1,80003110 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800030e8:	0084b783          	ld	a5,8(s1)
    800030ec:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800030f0:	ff058593          	addi	a1,a1,-16
    800030f4:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800030f8:	00070663          	beqz	a4,80003104 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800030fc:	00d73423          	sd	a3,8(a4)
    80003100:	0400006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80003104:	0000a797          	auipc	a5,0xa
    80003108:	fcd7be23          	sd	a3,-36(a5) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
    8000310c:	0340006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80003110:	00070a63          	beqz	a4,80003124 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80003114:	0084b683          	ld	a3,8(s1)
    80003118:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    8000311c:	00078913          	mv	s2,a5
    80003120:	0200006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80003124:	0084b703          	ld	a4,8(s1)
    80003128:	0000a697          	auipc	a3,0xa
    8000312c:	fae6bc23          	sd	a4,-72(a3) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80003130:	00078913          	mv	s2,a5
    80003134:	00c0006f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80003138:	02070063          	beqz	a4,80003158 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    8000313c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80003140:	00090593          	mv	a1,s2
    80003144:	00048513          	mv	a0,s1
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	e14080e7          	jalr	-492(ra) # 80002f5c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003150:	01048513          	addi	a0,s1,16
            break;
    80003154:	0140006f          	j	80003168 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80003158:	0000a797          	auipc	a5,0xa
    8000315c:	f807b423          	sd	zero,-120(a5) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
    80003160:	fe1ff06f          	j	80003140 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80003164:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	00013903          	ld	s2,0(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003180:	ff010113          	addi	sp,sp,-16
    80003184:	00113423          	sd	ra,8(sp)
    80003188:	00813023          	sd	s0,0(sp)
    8000318c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003190:	00000097          	auipc	ra,0x0
    80003194:	ee4080e7          	jalr	-284(ra) # 80003074 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003198:	00813083          	ld	ra,8(sp)
    8000319c:	00013403          	ld	s0,0(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	00913423          	sd	s1,8(sp)
    800031b8:	01213023          	sd	s2,0(sp)
    800031bc:	02010413          	addi	s0,sp,32
    800031c0:	00050493          	mv	s1,a0
    800031c4:	00058913          	mv	s2,a1
    initMemory();
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	d2c080e7          	jalr	-724(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800031d0:	0000a797          	auipc	a5,0xa
    800031d4:	f107b783          	ld	a5,-240(a5) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800031d8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800031dc:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800031e0:	00000713          	li	a4,0
    while(curr != 0)
    800031e4:	00078c63          	beqz	a5,800031fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800031e8:	00f4e863          	bltu	s1,a5,800031f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800031ec:	00078713          	mv	a4,a5
        curr = curr->next;
    800031f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031f4:	ff1ff06f          	j	800031e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800031f8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800031fc:	04070663          	beqz	a4,80003248 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003200:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003204:	0084b783          	ld	a5,8(s1)
    80003208:	00078a63          	beqz	a5,8000321c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    8000320c:	0004b603          	ld	a2,0(s1)
    80003210:	01060693          	addi	a3,a2,16
    80003214:	00d486b3          	add	a3,s1,a3
    80003218:	02d78e63          	beq	a5,a3,80003254 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000321c:	00070a63          	beqz	a4,80003230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003220:	00073683          	ld	a3,0(a4)
    80003224:	01068793          	addi	a5,a3,16
    80003228:	00f707b3          	add	a5,a4,a5
    8000322c:	04978263          	beq	a5,s1,80003270 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003230:	01813083          	ld	ra,24(sp)
    80003234:	01013403          	ld	s0,16(sp)
    80003238:	00813483          	ld	s1,8(sp)
    8000323c:	00013903          	ld	s2,0(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret
        headFree = newSegment;
    80003248:	0000a797          	auipc	a5,0xa
    8000324c:	e897bc23          	sd	s1,-360(a5) # 8000d0e0 <_ZN15MemoryAllocator8headFreeE>
    80003250:	fb5ff06f          	j	80003204 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003254:	0007b683          	ld	a3,0(a5)
    80003258:	00d60633          	add	a2,a2,a3
    8000325c:	01060613          	addi	a2,a2,16
    80003260:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003264:	0087b783          	ld	a5,8(a5)
    80003268:	00f4b423          	sd	a5,8(s1)
    8000326c:	fb1ff06f          	j	8000321c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003270:	0004b783          	ld	a5,0(s1)
    80003274:	00f686b3          	add	a3,a3,a5
    80003278:	01068693          	addi	a3,a3,16
    8000327c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003280:	0084b783          	ld	a5,8(s1)
    80003284:	00f73423          	sd	a5,8(a4)
}
    80003288:	fa9ff06f          	j	80003230 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

000000008000328c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    800032a4:	00050913          	mv	s2,a0
    initMemory();
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	c4c080e7          	jalr	-948(ra) # 80002ef4 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800032b0:	0000a497          	auipc	s1,0xa
    800032b4:	e284b483          	ld	s1,-472(s1) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800032b8:	00000713          	li	a4,0
    while(curr != 0)
    800032bc:	02048a63          	beqz	s1,800032f0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800032c0:	01048793          	addi	a5,s1,16
    800032c4:	01278863          	beq	a5,s2,800032d4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800032c8:	00048713          	mv	a4,s1
        curr = curr->next;
    800032cc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800032d0:	fedff06f          	j	800032bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800032d4:	02070e63          	beqz	a4,80003310 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800032d8:	0084b783          	ld	a5,8(s1)
    800032dc:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800032e0:	0004b583          	ld	a1,0(s1)
    800032e4:	00048513          	mv	a0,s1
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	ec0080e7          	jalr	-320(ra) # 800031a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800032f0:	02048863          	beqz	s1,80003320 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800032f4:	00000513          	li	a0,0
    else
        return 1;
}
    800032f8:	01813083          	ld	ra,24(sp)
    800032fc:	01013403          	ld	s0,16(sp)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	00013903          	ld	s2,0(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
                headAllocated = curr->next;
    80003310:	0084b783          	ld	a5,8(s1)
    80003314:	0000a717          	auipc	a4,0xa
    80003318:	dcf73223          	sd	a5,-572(a4) # 8000d0d8 <_ZN15MemoryAllocator13headAllocatedE>
    8000331c:	fc5ff06f          	j	800032e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80003320:	00100513          	li	a0,1
    80003324:	fd5ff06f          	j	800032f8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080003328 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00113423          	sd	ra,8(sp)
    80003330:	00813023          	sd	s0,0(sp)
    80003334:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80003338:	00000097          	auipc	ra,0x0
    8000333c:	f54080e7          	jalr	-172(ra) # 8000328c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003360:	00000097          	auipc	ra,0x0
    80003364:	e20080e7          	jalr	-480(ra) # 80003180 <_ZN15MemoryAllocator9mem_allocEm>
}
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80003388:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000338c:	00651513          	slli	a0,a0,0x6
    80003390:	00000097          	auipc	ra,0x0
    80003394:	fc0080e7          	jalr	-64(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80003398:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	7e4080e7          	jalr	2020(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800033a4:	00813083          	ld	ra,8(sp)
    800033a8:	00013403          	ld	s0,0(sp)
    800033ac:	01010113          	addi	sp,sp,16
    800033b0:	00008067          	ret

00000000800033b4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00113423          	sd	ra,8(sp)
    800033bc:	00813023          	sd	s0,0(sp)
    800033c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	f64080e7          	jalr	-156(ra) # 80003328 <_ZN15MemoryAllocator8mem_freeEPv>
    800033cc:	00813083          	ld	ra,8(sp)
    800033d0:	00013403          	ld	s0,0(sp)
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret

00000000800033dc <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00113423          	sd	ra,8(sp)
    800033e4:	00813023          	sd	s0,0(sp)
    800033e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800033ec:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	fc4080e7          	jalr	-60(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800033f8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	784080e7          	jalr	1924(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80003420:	00b52a23          	sw	a1,20(a0)
    80003424:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80003428:	00053423          	sd	zero,8(a0)
    8000342c:	00053023          	sd	zero,0(a0)
}
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80003448:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000344c:	00053783          	ld	a5,0(a0)
    80003450:	00078e63          	beqz	a5,8000346c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80003454:	00853783          	ld	a5,8(a0)
    80003458:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000345c:	00b53423          	sd	a1,8(a0)
    }
}
    80003460:	00813403          	ld	s0,8(sp)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000346c:	00b53423          	sd	a1,8(a0)
    80003470:	00b53023          	sd	a1,0(a0)
    80003474:	fedff06f          	j	80003460 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003478 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00113423          	sd	ra,8(sp)
    80003480:	00813023          	sd	s0,0(sp)
    80003484:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003488:	00006797          	auipc	a5,0x6
    8000348c:	b587b783          	ld	a5,-1192(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003490:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003494:	00200793          	li	a5,2
    80003498:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	fa0080e7          	jalr	-96(ra) # 8000343c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	208080e7          	jalr	520(ra) # 800016ac <_ZN3PCB8dispatchEv>
}
    800034ac:	00813083          	ld	ra,8(sp)
    800034b0:	00013403          	ld	s0,0(sp)
    800034b4:	01010113          	addi	sp,sp,16
    800034b8:	00008067          	ret

00000000800034bc <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800034bc:	00006797          	auipc	a5,0x6
    800034c0:	b247b783          	ld	a5,-1244(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800034c4:	0007b783          	ld	a5,0(a5)
    800034c8:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800034cc:	01052783          	lw	a5,16(a0)
    800034d0:	fff7879b          	addiw	a5,a5,-1
    800034d4:	00f52823          	sw	a5,16(a0)
    800034d8:	02079713          	slli	a4,a5,0x20
    800034dc:	00074663          	bltz	a4,800034e8 <_ZN10KSemaphore4waitEv+0x2c>
}
    800034e0:	00000513          	li	a0,0
    800034e4:	00008067          	ret
{
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
        block();
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	f80080e7          	jalr	-128(ra) # 80003478 <_ZN10KSemaphore5blockEv>
}
    80003500:	00000513          	li	a0,0
    80003504:	00813083          	ld	ra,8(sp)
    80003508:	00013403          	ld	s0,0(sp)
    8000350c:	01010113          	addi	sp,sp,16
    80003510:	00008067          	ret

0000000080003514 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80003514:	ff010113          	addi	sp,sp,-16
    80003518:	00813423          	sd	s0,8(sp)
    8000351c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80003520:	00053503          	ld	a0,0(a0)
    80003524:	00813403          	ld	s0,8(sp)
    80003528:	01010113          	addi	sp,sp,16
    8000352c:	00008067          	ret

0000000080003530 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00813423          	sd	s0,8(sp)
    80003538:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000353c:	00053783          	ld	a5,0(a0)
    80003540:	00078c63          	beqz	a5,80003558 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80003544:	0087b703          	ld	a4,8(a5)
    80003548:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000354c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80003550:	00053783          	ld	a5,0(a0)
    80003554:	00078863          	beqz	a5,80003564 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret
        tailBlocked =0;
    80003564:	00053423          	sd	zero,8(a0)
    80003568:	ff1ff06f          	j	80003558 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000356c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000356c:	fe010113          	addi	sp,sp,-32
    80003570:	00113c23          	sd	ra,24(sp)
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	01213023          	sd	s2,0(sp)
    80003580:	02010413          	addi	s0,sp,32
    80003584:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003588:	00090513          	mv	a0,s2
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	f88080e7          	jalr	-120(ra) # 80003514 <_ZN10KSemaphore15getFirstBlockedEv>
    80003594:	00050493          	mv	s1,a0
    80003598:	02050463          	beqz	a0,800035c0 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    8000359c:	00090513          	mv	a0,s2
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	f90080e7          	jalr	-112(ra) # 80003530 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800035a8:	00100793          	li	a5,1
    800035ac:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800035b0:	00048513          	mv	a0,s1
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	d88080e7          	jalr	-632(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800035bc:	fcdff06f          	j	80003588 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	00013903          	ld	s2,0(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret

00000000800035d8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800035d8:	fe010113          	addi	sp,sp,-32
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	01213023          	sd	s2,0(sp)
    800035ec:	02010413          	addi	s0,sp,32
    800035f0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	f20080e7          	jalr	-224(ra) # 80003514 <_ZN10KSemaphore15getFirstBlockedEv>
    800035fc:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80003600:	00090513          	mv	a0,s2
    80003604:	00000097          	auipc	ra,0x0
    80003608:	f2c080e7          	jalr	-212(ra) # 80003530 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000360c:	00048863          	beqz	s1,8000361c <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80003610:	00048513          	mv	a0,s1
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	d28080e7          	jalr	-728(ra) # 8000233c <_ZN9Scheduler3putEP3PCB>
    }
}
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	00013903          	ld	s2,0(sp)
    8000362c:	02010113          	addi	sp,sp,32
    80003630:	00008067          	ret

0000000080003634 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80003634:	01052783          	lw	a5,16(a0)
    80003638:	0017879b          	addiw	a5,a5,1
    8000363c:	0007871b          	sext.w	a4,a5
    80003640:	00f52823          	sw	a5,16(a0)
    80003644:	00e05663          	blez	a4,80003650 <_ZN10KSemaphore6signalEv+0x1c>
}
    80003648:	00000513          	li	a0,0
    8000364c:	00008067          	ret
uint64 KSemaphore::signal() {
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00113423          	sd	ra,8(sp)
    80003658:	00813023          	sd	s0,0(sp)
    8000365c:	01010413          	addi	s0,sp,16
        unblock();
    80003660:	00000097          	auipc	ra,0x0
    80003664:	f78080e7          	jalr	-136(ra) # 800035d8 <_ZN10KSemaphore7unblockEv>
}
    80003668:	00000513          	li	a0,0
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00113423          	sd	ra,8(sp)
    80003684:	00813023          	sd	s0,0(sp)
    80003688:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	cc4080e7          	jalr	-828(ra) # 80003350 <_ZN15MemoryAllocator7kmallocEm>
}
    80003694:	00813083          	ld	ra,8(sp)
    80003698:	00013403          	ld	s0,0(sp)
    8000369c:	01010113          	addi	sp,sp,16
    800036a0:	00008067          	ret

00000000800036a4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800036a4:	fd010113          	addi	sp,sp,-48
    800036a8:	02113423          	sd	ra,40(sp)
    800036ac:	02813023          	sd	s0,32(sp)
    800036b0:	00913c23          	sd	s1,24(sp)
    800036b4:	01213823          	sd	s2,16(sp)
    800036b8:	01313423          	sd	s3,8(sp)
    800036bc:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800036c0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800036c4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800036c8:	01800513          	li	a0,24
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	fb0080e7          	jalr	-80(ra) # 8000367c <_ZN10KSemaphorenwEm>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	0009859b          	sext.w	a1,s3
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	d38080e7          	jalr	-712(ra) # 80003414 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800036e4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800036e8:	02048663          	beqz	s1,80003714 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800036ec:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	490080e7          	jalr	1168(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800036f8:	02813083          	ld	ra,40(sp)
    800036fc:	02013403          	ld	s0,32(sp)
    80003700:	01813483          	ld	s1,24(sp)
    80003704:	01013903          	ld	s2,16(sp)
    80003708:	00813983          	ld	s3,8(sp)
    8000370c:	03010113          	addi	sp,sp,48
    80003710:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80003714:	fff00513          	li	a0,-1
    80003718:	fd9ff06f          	j	800036f0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000371c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	c88080e7          	jalr	-888(ra) # 800033b4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003754:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	d64080e7          	jalr	-668(ra) # 800034bc <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80003760:	00006797          	auipc	a5,0x6
    80003764:	8807b783          	ld	a5,-1920(a5) # 80008fe0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003768:	0007b783          	ld	a5,0(a5)
    8000376c:	0587c783          	lbu	a5,88(a5)
    80003770:	02078063          	beqz	a5,80003790 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80003774:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	408080e7          	jalr	1032(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003780:	00813083          	ld	ra,8(sp)
    80003784:	00013403          	ld	s0,0(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80003790:	00000513          	li	a0,0
    80003794:	fe5ff06f          	j	80003778 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080003798 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	00813023          	sd	s0,0(sp)
    800037a4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800037a8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800037ac:	02050463          	beqz	a0,800037d4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	e84080e7          	jalr	-380(ra) # 80003634 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800037b8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	3c4080e7          	jalr	964(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    800037c4:	00813083          	ld	ra,8(sp)
    800037c8:	00013403          	ld	s0,0(sp)
    800037cc:	01010113          	addi	sp,sp,16
    800037d0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800037d4:	00100513          	li	a0,1
    800037d8:	fe5ff06f          	j	800037bc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800037dc <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800037dc:	fe010113          	addi	sp,sp,-32
    800037e0:	00113c23          	sd	ra,24(sp)
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00913423          	sd	s1,8(sp)
    800037ec:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800037f0:	00058493          	mv	s1,a1
    delete kSem;
    800037f4:	00048e63          	beqz	s1,80003810 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800037f8:	00048513          	mv	a0,s1
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	d70080e7          	jalr	-656(ra) # 8000356c <_ZN10KSemaphoreD1Ev>
    80003804:	00048513          	mv	a0,s1
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	f14080e7          	jalr	-236(ra) # 8000371c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80003810:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	36c080e7          	jalr	876(ra) # 80002b80 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000381c:	01813083          	ld	ra,24(sp)
    80003820:	01013403          	ld	s0,16(sp)
    80003824:	00813483          	ld	s1,8(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret

0000000080003830 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00113c23          	sd	ra,24(sp)
    80003838:	00813823          	sd	s0,16(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	00050493          	mv	s1,a0
    LOCK();
    80003848:	00100613          	li	a2,1
    8000384c:	00000593          	li	a1,0
    80003850:	0000a517          	auipc	a0,0xa
    80003854:	89850513          	addi	a0,a0,-1896 # 8000d0e8 <lockPrint>
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	9c0080e7          	jalr	-1600(ra) # 80001218 <copy_and_swap>
    80003860:	fe0514e3          	bnez	a0,80003848 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003864:	0004c503          	lbu	a0,0(s1)
    80003868:	00050a63          	beqz	a0,8000387c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	ccc080e7          	jalr	-820(ra) # 80001538 <_Z4putcc>
        string++;
    80003874:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003878:	fedff06f          	j	80003864 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000387c:	00000613          	li	a2,0
    80003880:	00100593          	li	a1,1
    80003884:	0000a517          	auipc	a0,0xa
    80003888:	86450513          	addi	a0,a0,-1948 # 8000d0e8 <lockPrint>
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	98c080e7          	jalr	-1652(ra) # 80001218 <copy_and_swap>
    80003894:	fe0514e3          	bnez	a0,8000387c <_Z11printStringPKc+0x4c>
}
    80003898:	01813083          	ld	ra,24(sp)
    8000389c:	01013403          	ld	s0,16(sp)
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800038ac:	fd010113          	addi	sp,sp,-48
    800038b0:	02113423          	sd	ra,40(sp)
    800038b4:	02813023          	sd	s0,32(sp)
    800038b8:	00913c23          	sd	s1,24(sp)
    800038bc:	01213823          	sd	s2,16(sp)
    800038c0:	01313423          	sd	s3,8(sp)
    800038c4:	01413023          	sd	s4,0(sp)
    800038c8:	03010413          	addi	s0,sp,48
    800038cc:	00050993          	mv	s3,a0
    800038d0:	00058a13          	mv	s4,a1
    LOCK();
    800038d4:	00100613          	li	a2,1
    800038d8:	00000593          	li	a1,0
    800038dc:	0000a517          	auipc	a0,0xa
    800038e0:	80c50513          	addi	a0,a0,-2036 # 8000d0e8 <lockPrint>
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	934080e7          	jalr	-1740(ra) # 80001218 <copy_and_swap>
    800038ec:	fe0514e3          	bnez	a0,800038d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800038f0:	00000913          	li	s2,0
    800038f4:	00090493          	mv	s1,s2
    800038f8:	0019091b          	addiw	s2,s2,1
    800038fc:	03495a63          	bge	s2,s4,80003930 <_Z9getStringPci+0x84>
        cc = getc();
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	c10080e7          	jalr	-1008(ra) # 80001510 <_Z4getcv>
        if(cc < 1)
    80003908:	02050463          	beqz	a0,80003930 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000390c:	009984b3          	add	s1,s3,s1
    80003910:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003914:	00a00793          	li	a5,10
    80003918:	00f50a63          	beq	a0,a5,8000392c <_Z9getStringPci+0x80>
    8000391c:	00d00793          	li	a5,13
    80003920:	fcf51ae3          	bne	a0,a5,800038f4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003924:	00090493          	mv	s1,s2
    80003928:	0080006f          	j	80003930 <_Z9getStringPci+0x84>
    8000392c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003930:	009984b3          	add	s1,s3,s1
    80003934:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003938:	00000613          	li	a2,0
    8000393c:	00100593          	li	a1,1
    80003940:	00009517          	auipc	a0,0x9
    80003944:	7a850513          	addi	a0,a0,1960 # 8000d0e8 <lockPrint>
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	8d0080e7          	jalr	-1840(ra) # 80001218 <copy_and_swap>
    80003950:	fe0514e3          	bnez	a0,80003938 <_Z9getStringPci+0x8c>
    return buf;
}
    80003954:	00098513          	mv	a0,s3
    80003958:	02813083          	ld	ra,40(sp)
    8000395c:	02013403          	ld	s0,32(sp)
    80003960:	01813483          	ld	s1,24(sp)
    80003964:	01013903          	ld	s2,16(sp)
    80003968:	00813983          	ld	s3,8(sp)
    8000396c:	00013a03          	ld	s4,0(sp)
    80003970:	03010113          	addi	sp,sp,48
    80003974:	00008067          	ret

0000000080003978 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    80003984:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003988:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000398c:	0006c603          	lbu	a2,0(a3)
    80003990:	fd06071b          	addiw	a4,a2,-48
    80003994:	0ff77713          	andi	a4,a4,255
    80003998:	00900793          	li	a5,9
    8000399c:	02e7e063          	bltu	a5,a4,800039bc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800039a0:	0025179b          	slliw	a5,a0,0x2
    800039a4:	00a787bb          	addw	a5,a5,a0
    800039a8:	0017979b          	slliw	a5,a5,0x1
    800039ac:	00168693          	addi	a3,a3,1
    800039b0:	00c787bb          	addw	a5,a5,a2
    800039b4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800039b8:	fd5ff06f          	j	8000398c <_Z11stringToIntPKc+0x14>
    return n;
}
    800039bc:	00813403          	ld	s0,8(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800039c8:	fc010113          	addi	sp,sp,-64
    800039cc:	02113c23          	sd	ra,56(sp)
    800039d0:	02813823          	sd	s0,48(sp)
    800039d4:	02913423          	sd	s1,40(sp)
    800039d8:	03213023          	sd	s2,32(sp)
    800039dc:	01313c23          	sd	s3,24(sp)
    800039e0:	04010413          	addi	s0,sp,64
    800039e4:	00050493          	mv	s1,a0
    800039e8:	00058913          	mv	s2,a1
    800039ec:	00060993          	mv	s3,a2
    LOCK();
    800039f0:	00100613          	li	a2,1
    800039f4:	00000593          	li	a1,0
    800039f8:	00009517          	auipc	a0,0x9
    800039fc:	6f050513          	addi	a0,a0,1776 # 8000d0e8 <lockPrint>
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	818080e7          	jalr	-2024(ra) # 80001218 <copy_and_swap>
    80003a08:	fe0514e3          	bnez	a0,800039f0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003a0c:	00098463          	beqz	s3,80003a14 <_Z8printIntiii+0x4c>
    80003a10:	0804c463          	bltz	s1,80003a98 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003a14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003a18:	00000593          	li	a1,0
    }

    i = 0;
    80003a1c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a20:	0009079b          	sext.w	a5,s2
    80003a24:	0325773b          	remuw	a4,a0,s2
    80003a28:	00048613          	mv	a2,s1
    80003a2c:	0014849b          	addiw	s1,s1,1
    80003a30:	02071693          	slli	a3,a4,0x20
    80003a34:	0206d693          	srli	a3,a3,0x20
    80003a38:	00005717          	auipc	a4,0x5
    80003a3c:	4a870713          	addi	a4,a4,1192 # 80008ee0 <digits>
    80003a40:	00d70733          	add	a4,a4,a3
    80003a44:	00074683          	lbu	a3,0(a4)
    80003a48:	fd040713          	addi	a4,s0,-48
    80003a4c:	00c70733          	add	a4,a4,a2
    80003a50:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003a54:	0005071b          	sext.w	a4,a0
    80003a58:	0325553b          	divuw	a0,a0,s2
    80003a5c:	fcf772e3          	bgeu	a4,a5,80003a20 <_Z8printIntiii+0x58>
    if(neg)
    80003a60:	00058c63          	beqz	a1,80003a78 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003a64:	fd040793          	addi	a5,s0,-48
    80003a68:	009784b3          	add	s1,a5,s1
    80003a6c:	02d00793          	li	a5,45
    80003a70:	fef48823          	sb	a5,-16(s1)
    80003a74:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003a78:	fff4849b          	addiw	s1,s1,-1
    80003a7c:	0204c463          	bltz	s1,80003aa4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003a80:	fd040793          	addi	a5,s0,-48
    80003a84:	009787b3          	add	a5,a5,s1
    80003a88:	ff07c503          	lbu	a0,-16(a5)
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	aac080e7          	jalr	-1364(ra) # 80001538 <_Z4putcc>
    80003a94:	fe5ff06f          	j	80003a78 <_Z8printIntiii+0xb0>
        x = -xx;
    80003a98:	4090053b          	negw	a0,s1
        neg = 1;
    80003a9c:	00100593          	li	a1,1
        x = -xx;
    80003aa0:	f7dff06f          	j	80003a1c <_Z8printIntiii+0x54>

    UNLOCK();
    80003aa4:	00000613          	li	a2,0
    80003aa8:	00100593          	li	a1,1
    80003aac:	00009517          	auipc	a0,0x9
    80003ab0:	63c50513          	addi	a0,a0,1596 # 8000d0e8 <lockPrint>
    80003ab4:	ffffd097          	auipc	ra,0xffffd
    80003ab8:	764080e7          	jalr	1892(ra) # 80001218 <copy_and_swap>
    80003abc:	fe0514e3          	bnez	a0,80003aa4 <_Z8printIntiii+0xdc>
}
    80003ac0:	03813083          	ld	ra,56(sp)
    80003ac4:	03013403          	ld	s0,48(sp)
    80003ac8:	02813483          	ld	s1,40(sp)
    80003acc:	02013903          	ld	s2,32(sp)
    80003ad0:	01813983          	ld	s3,24(sp)
    80003ad4:	04010113          	addi	sp,sp,64
    80003ad8:	00008067          	ret

0000000080003adc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003adc:	fd010113          	addi	sp,sp,-48
    80003ae0:	02113423          	sd	ra,40(sp)
    80003ae4:	02813023          	sd	s0,32(sp)
    80003ae8:	00913c23          	sd	s1,24(sp)
    80003aec:	01213823          	sd	s2,16(sp)
    80003af0:	01313423          	sd	s3,8(sp)
    80003af4:	03010413          	addi	s0,sp,48
    80003af8:	00050493          	mv	s1,a0
    80003afc:	00058913          	mv	s2,a1
    80003b00:	0015879b          	addiw	a5,a1,1
    80003b04:	0007851b          	sext.w	a0,a5
    80003b08:	00f4a023          	sw	a5,0(s1)
    80003b0c:	0004a823          	sw	zero,16(s1)
    80003b10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b14:	00251513          	slli	a0,a0,0x2
    80003b18:	ffffd097          	auipc	ra,0xffffd
    80003b1c:	740080e7          	jalr	1856(ra) # 80001258 <_Z9mem_allocm>
    80003b20:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003b24:	01000513          	li	a0,16
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	9e8080e7          	jalr	-1560(ra) # 80002510 <_Znwm>
    80003b30:	00050993          	mv	s3,a0
    80003b34:	00000593          	li	a1,0
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	c2c080e7          	jalr	-980(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b40:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003b44:	01000513          	li	a0,16
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	9c8080e7          	jalr	-1592(ra) # 80002510 <_Znwm>
    80003b50:	00050993          	mv	s3,a0
    80003b54:	00090593          	mv	a1,s2
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	c0c080e7          	jalr	-1012(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b60:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003b64:	01000513          	li	a0,16
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	9a8080e7          	jalr	-1624(ra) # 80002510 <_Znwm>
    80003b70:	00050913          	mv	s2,a0
    80003b74:	00100593          	li	a1,1
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	bec080e7          	jalr	-1044(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003b80:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003b84:	01000513          	li	a0,16
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	988080e7          	jalr	-1656(ra) # 80002510 <_Znwm>
    80003b90:	00050913          	mv	s2,a0
    80003b94:	00100593          	li	a1,1
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	bcc080e7          	jalr	-1076(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80003ba0:	0324b823          	sd	s2,48(s1)
}
    80003ba4:	02813083          	ld	ra,40(sp)
    80003ba8:	02013403          	ld	s0,32(sp)
    80003bac:	01813483          	ld	s1,24(sp)
    80003bb0:	01013903          	ld	s2,16(sp)
    80003bb4:	00813983          	ld	s3,8(sp)
    80003bb8:	03010113          	addi	sp,sp,48
    80003bbc:	00008067          	ret
    80003bc0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003bc4:	00098513          	mv	a0,s3
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	970080e7          	jalr	-1680(ra) # 80002538 <_ZdlPv>
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	0000a097          	auipc	ra,0xa
    80003bd8:	5f4080e7          	jalr	1524(ra) # 8000e1c8 <_Unwind_Resume>
    80003bdc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003be0:	00098513          	mv	a0,s3
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	954080e7          	jalr	-1708(ra) # 80002538 <_ZdlPv>
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	0000a097          	auipc	ra,0xa
    80003bf4:	5d8080e7          	jalr	1496(ra) # 8000e1c8 <_Unwind_Resume>
    80003bf8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003bfc:	00090513          	mv	a0,s2
    80003c00:	fffff097          	auipc	ra,0xfffff
    80003c04:	938080e7          	jalr	-1736(ra) # 80002538 <_ZdlPv>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	0000a097          	auipc	ra,0xa
    80003c10:	5bc080e7          	jalr	1468(ra) # 8000e1c8 <_Unwind_Resume>
    80003c14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003c18:	00090513          	mv	a0,s2
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	91c080e7          	jalr	-1764(ra) # 80002538 <_ZdlPv>
    80003c24:	00048513          	mv	a0,s1
    80003c28:	0000a097          	auipc	ra,0xa
    80003c2c:	5a0080e7          	jalr	1440(ra) # 8000e1c8 <_Unwind_Resume>

0000000080003c30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003c30:	fe010113          	addi	sp,sp,-32
    80003c34:	00113c23          	sd	ra,24(sp)
    80003c38:	00813823          	sd	s0,16(sp)
    80003c3c:	00913423          	sd	s1,8(sp)
    80003c40:	01213023          	sd	s2,0(sp)
    80003c44:	02010413          	addi	s0,sp,32
    80003c48:	00050493          	mv	s1,a0
    80003c4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003c50:	01853503          	ld	a0,24(a0)
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	ad8080e7          	jalr	-1320(ra) # 8000272c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003c5c:	0304b503          	ld	a0,48(s1)
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	acc080e7          	jalr	-1332(ra) # 8000272c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003c68:	0084b783          	ld	a5,8(s1)
    80003c6c:	0144a703          	lw	a4,20(s1)
    80003c70:	00271713          	slli	a4,a4,0x2
    80003c74:	00e787b3          	add	a5,a5,a4
    80003c78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003c7c:	0144a783          	lw	a5,20(s1)
    80003c80:	0017879b          	addiw	a5,a5,1
    80003c84:	0004a703          	lw	a4,0(s1)
    80003c88:	02e7e7bb          	remw	a5,a5,a4
    80003c8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003c90:	0304b503          	ld	a0,48(s1)
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	b1c080e7          	jalr	-1252(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003c9c:	0204b503          	ld	a0,32(s1)
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	b10080e7          	jalr	-1264(ra) # 800027b0 <_ZN9Semaphore6signalEv>

}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	00013903          	ld	s2,0(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    80003cd8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003cdc:	02053503          	ld	a0,32(a0)
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	a4c080e7          	jalr	-1460(ra) # 8000272c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003ce8:	0284b503          	ld	a0,40(s1)
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	a40080e7          	jalr	-1472(ra) # 8000272c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003cf4:	0084b703          	ld	a4,8(s1)
    80003cf8:	0104a783          	lw	a5,16(s1)
    80003cfc:	00279693          	slli	a3,a5,0x2
    80003d00:	00d70733          	add	a4,a4,a3
    80003d04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003d08:	0017879b          	addiw	a5,a5,1
    80003d0c:	0004a703          	lw	a4,0(s1)
    80003d10:	02e7e7bb          	remw	a5,a5,a4
    80003d14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003d18:	0284b503          	ld	a0,40(s1)
    80003d1c:	fffff097          	auipc	ra,0xfffff
    80003d20:	a94080e7          	jalr	-1388(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003d24:	0184b503          	ld	a0,24(s1)
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	a88080e7          	jalr	-1400(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003d30:	00090513          	mv	a0,s2
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	00013903          	ld	s2,0(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	01213023          	sd	s2,0(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003d68:	02853503          	ld	a0,40(a0)
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	9c0080e7          	jalr	-1600(ra) # 8000272c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003d74:	0304b503          	ld	a0,48(s1)
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	9b4080e7          	jalr	-1612(ra) # 8000272c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003d80:	0144a783          	lw	a5,20(s1)
    80003d84:	0104a903          	lw	s2,16(s1)
    80003d88:	0327ce63          	blt	a5,s2,80003dc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003d8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003d90:	0304b503          	ld	a0,48(s1)
    80003d94:	fffff097          	auipc	ra,0xfffff
    80003d98:	a1c080e7          	jalr	-1508(ra) # 800027b0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003d9c:	0284b503          	ld	a0,40(s1)
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	a10080e7          	jalr	-1520(ra) # 800027b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003da8:	00090513          	mv	a0,s2
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	00013903          	ld	s2,0(sp)
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret
        ret = cap - head + tail;
    80003dc4:	0004a703          	lw	a4,0(s1)
    80003dc8:	4127093b          	subw	s2,a4,s2
    80003dcc:	00f9093b          	addw	s2,s2,a5
    80003dd0:	fc1ff06f          	j	80003d90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003dd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003dd4:	fe010113          	addi	sp,sp,-32
    80003dd8:	00113c23          	sd	ra,24(sp)
    80003ddc:	00813823          	sd	s0,16(sp)
    80003de0:	00913423          	sd	s1,8(sp)
    80003de4:	02010413          	addi	s0,sp,32
    80003de8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003dec:	00a00513          	li	a0,10
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	a20080e7          	jalr	-1504(ra) # 80002810 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003df8:	00003517          	auipc	a0,0x3
    80003dfc:	35050513          	addi	a0,a0,848 # 80007148 <CONSOLE_STATUS+0x138>
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	a30080e7          	jalr	-1488(ra) # 80003830 <_Z11printStringPKc>
    while (getCnt()) {
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	f40080e7          	jalr	-192(ra) # 80003d4c <_ZN9BufferCPP6getCntEv>
    80003e14:	02050c63          	beqz	a0,80003e4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003e18:	0084b783          	ld	a5,8(s1)
    80003e1c:	0104a703          	lw	a4,16(s1)
    80003e20:	00271713          	slli	a4,a4,0x2
    80003e24:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003e28:	0007c503          	lbu	a0,0(a5)
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	9e4080e7          	jalr	-1564(ra) # 80002810 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003e34:	0104a783          	lw	a5,16(s1)
    80003e38:	0017879b          	addiw	a5,a5,1
    80003e3c:	0004a703          	lw	a4,0(s1)
    80003e40:	02e7e7bb          	remw	a5,a5,a4
    80003e44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003e48:	fc1ff06f          	j	80003e08 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003e4c:	02100513          	li	a0,33
    80003e50:	fffff097          	auipc	ra,0xfffff
    80003e54:	9c0080e7          	jalr	-1600(ra) # 80002810 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003e58:	00a00513          	li	a0,10
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	9b4080e7          	jalr	-1612(ra) # 80002810 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003e64:	0084b503          	ld	a0,8(s1)
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	420080e7          	jalr	1056(ra) # 80001288 <_Z8mem_freePv>
    delete itemAvailable;
    80003e70:	0204b503          	ld	a0,32(s1)
    80003e74:	00050863          	beqz	a0,80003e84 <_ZN9BufferCPPD1Ev+0xb0>
    80003e78:	00053783          	ld	a5,0(a0)
    80003e7c:	0087b783          	ld	a5,8(a5)
    80003e80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003e84:	0184b503          	ld	a0,24(s1)
    80003e88:	00050863          	beqz	a0,80003e98 <_ZN9BufferCPPD1Ev+0xc4>
    80003e8c:	00053783          	ld	a5,0(a0)
    80003e90:	0087b783          	ld	a5,8(a5)
    80003e94:	000780e7          	jalr	a5
    delete mutexTail;
    80003e98:	0304b503          	ld	a0,48(s1)
    80003e9c:	00050863          	beqz	a0,80003eac <_ZN9BufferCPPD1Ev+0xd8>
    80003ea0:	00053783          	ld	a5,0(a0)
    80003ea4:	0087b783          	ld	a5,8(a5)
    80003ea8:	000780e7          	jalr	a5
    delete mutexHead;
    80003eac:	0284b503          	ld	a0,40(s1)
    80003eb0:	00050863          	beqz	a0,80003ec0 <_ZN9BufferCPPD1Ev+0xec>
    80003eb4:	00053783          	ld	a5,0(a0)
    80003eb8:	0087b783          	ld	a5,8(a5)
    80003ebc:	000780e7          	jalr	a5
}
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00813483          	ld	s1,8(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003ed4:	f8010113          	addi	sp,sp,-128
    80003ed8:	06113c23          	sd	ra,120(sp)
    80003edc:	06813823          	sd	s0,112(sp)
    80003ee0:	06913423          	sd	s1,104(sp)
    80003ee4:	07213023          	sd	s2,96(sp)
    80003ee8:	05313c23          	sd	s3,88(sp)
    80003eec:	05413823          	sd	s4,80(sp)
    80003ef0:	05513423          	sd	s5,72(sp)
    80003ef4:	05613023          	sd	s6,64(sp)
    80003ef8:	03713c23          	sd	s7,56(sp)
    80003efc:	03813823          	sd	s8,48(sp)
    80003f00:	03913423          	sd	s9,40(sp)
    80003f04:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003f08:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003f0c:	00003517          	auipc	a0,0x3
    80003f10:	25450513          	addi	a0,a0,596 # 80007160 <CONSOLE_STATUS+0x150>
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	91c080e7          	jalr	-1764(ra) # 80003830 <_Z11printStringPKc>
        getString(input, 30);
    80003f1c:	01e00593          	li	a1,30
    80003f20:	f8040493          	addi	s1,s0,-128
    80003f24:	00048513          	mv	a0,s1
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	984080e7          	jalr	-1660(ra) # 800038ac <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	a44080e7          	jalr	-1468(ra) # 80003978 <_Z11stringToIntPKc>
    80003f3c:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003f40:	00003517          	auipc	a0,0x3
    80003f44:	24050513          	addi	a0,a0,576 # 80007180 <CONSOLE_STATUS+0x170>
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	8e8080e7          	jalr	-1816(ra) # 80003830 <_Z11printStringPKc>
        getString(input, 30);
    80003f50:	01e00593          	li	a1,30
    80003f54:	00048513          	mv	a0,s1
    80003f58:	00000097          	auipc	ra,0x0
    80003f5c:	954080e7          	jalr	-1708(ra) # 800038ac <_Z9getStringPci>
        n = stringToInt(input);
    80003f60:	00048513          	mv	a0,s1
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	a14080e7          	jalr	-1516(ra) # 80003978 <_Z11stringToIntPKc>
    80003f6c:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003f70:	00003517          	auipc	a0,0x3
    80003f74:	23050513          	addi	a0,a0,560 # 800071a0 <CONSOLE_STATUS+0x190>
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	8b8080e7          	jalr	-1864(ra) # 80003830 <_Z11printStringPKc>
    80003f80:	00000613          	li	a2,0
    80003f84:	00a00593          	li	a1,10
    80003f88:	00098513          	mv	a0,s3
    80003f8c:	00000097          	auipc	ra,0x0
    80003f90:	a3c080e7          	jalr	-1476(ra) # 800039c8 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003f94:	00003517          	auipc	a0,0x3
    80003f98:	22450513          	addi	a0,a0,548 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80003f9c:	00000097          	auipc	ra,0x0
    80003fa0:	894080e7          	jalr	-1900(ra) # 80003830 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00000097          	auipc	ra,0x0
    80003fb4:	a18080e7          	jalr	-1512(ra) # 800039c8 <_Z8printIntiii>
        printString(".\n");
    80003fb8:	00003517          	auipc	a0,0x3
    80003fbc:	21850513          	addi	a0,a0,536 # 800071d0 <CONSOLE_STATUS+0x1c0>
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	870080e7          	jalr	-1936(ra) # 80003830 <_Z11printStringPKc>
        if(threadNum > n) {
    80003fc8:	0334c463          	blt	s1,s3,80003ff0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003fcc:	03305c63          	blez	s3,80004004 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003fd0:	03800513          	li	a0,56
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	53c080e7          	jalr	1340(ra) # 80002510 <_Znwm>
    80003fdc:	00050a93          	mv	s5,a0
    80003fe0:	00048593          	mv	a1,s1
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	af8080e7          	jalr	-1288(ra) # 80003adc <_ZN9BufferCPPC1Ei>
    80003fec:	0300006f          	j	8000401c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ff0:	00003517          	auipc	a0,0x3
    80003ff4:	1e850513          	addi	a0,a0,488 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	838080e7          	jalr	-1992(ra) # 80003830 <_Z11printStringPKc>
            return;
    80004000:	0140006f          	j	80004014 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004004:	00003517          	auipc	a0,0x3
    80004008:	21450513          	addi	a0,a0,532 # 80007218 <CONSOLE_STATUS+0x208>
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	824080e7          	jalr	-2012(ra) # 80003830 <_Z11printStringPKc>
            return;
    80004014:	000c0113          	mv	sp,s8
    80004018:	21c0006f          	j	80004234 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    8000401c:	01000513          	li	a0,16
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	4f0080e7          	jalr	1264(ra) # 80002510 <_Znwm>
    80004028:	00050493          	mv	s1,a0
    8000402c:	00000593          	li	a1,0
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	734080e7          	jalr	1844(ra) # 80002764 <_ZN9SemaphoreC1Ej>
    80004038:	00009717          	auipc	a4,0x9
    8000403c:	0b870713          	addi	a4,a4,184 # 8000d0f0 <_ZN19ConsumerProducerCPP9threadEndE>
    80004040:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80004044:	00399793          	slli	a5,s3,0x3
    80004048:	00f78793          	addi	a5,a5,15
    8000404c:	ff07f793          	andi	a5,a5,-16
    80004050:	40f10133          	sub	sp,sp,a5
    80004054:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80004058:	0019869b          	addiw	a3,s3,1
    8000405c:	00169793          	slli	a5,a3,0x1
    80004060:	00d787b3          	add	a5,a5,a3
    80004064:	00379793          	slli	a5,a5,0x3
    80004068:	00f78793          	addi	a5,a5,15
    8000406c:	ff07f793          	andi	a5,a5,-16
    80004070:	40f10133          	sub	sp,sp,a5
    80004074:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80004078:	00199493          	slli	s1,s3,0x1
    8000407c:	013484b3          	add	s1,s1,s3
    80004080:	00349493          	slli	s1,s1,0x3
    80004084:	009b04b3          	add	s1,s6,s1
    80004088:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    8000408c:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004090:	00873783          	ld	a5,8(a4)
    80004094:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004098:	01800513          	li	a0,24
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	474080e7          	jalr	1140(ra) # 80002510 <_Znwm>
    800040a4:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	63c080e7          	jalr	1596(ra) # 800026e4 <_ZN6ThreadC1Ev>
    800040b0:	00005797          	auipc	a5,0x5
    800040b4:	ea878793          	addi	a5,a5,-344 # 80008f58 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800040b8:	00fbb023          	sd	a5,0(s7)
    800040bc:	009bb823          	sd	s1,16(s7)
        consumer->start();
    800040c0:	000b8513          	mv	a0,s7
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	51c080e7          	jalr	1308(ra) # 800025e0 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    800040cc:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    800040d0:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    800040d4:	00009797          	auipc	a5,0x9
    800040d8:	0247b783          	ld	a5,36(a5) # 8000d0f8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800040dc:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800040e0:	01800513          	li	a0,24
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	42c080e7          	jalr	1068(ra) # 80002510 <_Znwm>
    800040ec:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	5f4080e7          	jalr	1524(ra) # 800026e4 <_ZN6ThreadC1Ev>
    800040f8:	00005797          	auipc	a5,0x5
    800040fc:	e1078793          	addi	a5,a5,-496 # 80008f08 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004100:	00f4b023          	sd	a5,0(s1)
    80004104:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004108:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    8000410c:	00048513          	mv	a0,s1
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	4d0080e7          	jalr	1232(ra) # 800025e0 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004118:	00100913          	li	s2,1
    8000411c:	0300006f          	j	8000414c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004120:	00005797          	auipc	a5,0x5
    80004124:	e1078793          	addi	a5,a5,-496 # 80008f30 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004128:	00fcb023          	sd	a5,0(s9)
    8000412c:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80004130:	00391793          	slli	a5,s2,0x3
    80004134:	00fa07b3          	add	a5,s4,a5
    80004138:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    8000413c:	000c8513          	mv	a0,s9
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	4a0080e7          	jalr	1184(ra) # 800025e0 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004148:	0019091b          	addiw	s2,s2,1
    8000414c:	05395263          	bge	s2,s3,80004190 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004150:	00191493          	slli	s1,s2,0x1
    80004154:	012484b3          	add	s1,s1,s2
    80004158:	00349493          	slli	s1,s1,0x3
    8000415c:	009b04b3          	add	s1,s6,s1
    80004160:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80004164:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80004168:	00009797          	auipc	a5,0x9
    8000416c:	f907b783          	ld	a5,-112(a5) # 8000d0f8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004170:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004174:	01800513          	li	a0,24
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	398080e7          	jalr	920(ra) # 80002510 <_Znwm>
    80004180:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	560080e7          	jalr	1376(ra) # 800026e4 <_ZN6ThreadC1Ev>
    8000418c:	f95ff06f          	j	80004120 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	488080e7          	jalr	1160(ra) # 80002618 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80004198:	00000493          	li	s1,0
    8000419c:	0099ce63          	blt	s3,s1,800041b8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    800041a0:	00009517          	auipc	a0,0x9
    800041a4:	f5853503          	ld	a0,-168(a0) # 8000d0f8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	584080e7          	jalr	1412(ra) # 8000272c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800041b0:	0014849b          	addiw	s1,s1,1
    800041b4:	fe9ff06f          	j	8000419c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    800041b8:	00009517          	auipc	a0,0x9
    800041bc:	f4053503          	ld	a0,-192(a0) # 8000d0f8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800041c0:	00050863          	beqz	a0,800041d0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    800041c4:	00053783          	ld	a5,0(a0)
    800041c8:	0087b783          	ld	a5,8(a5)
    800041cc:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800041d0:	00000493          	li	s1,0
    800041d4:	0080006f          	j	800041dc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    800041d8:	0014849b          	addiw	s1,s1,1
    800041dc:	0334d263          	bge	s1,s3,80004200 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    800041e0:	00349793          	slli	a5,s1,0x3
    800041e4:	00fa07b3          	add	a5,s4,a5
    800041e8:	0007b503          	ld	a0,0(a5)
    800041ec:	fe0506e3          	beqz	a0,800041d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    800041f0:	00053783          	ld	a5,0(a0)
    800041f4:	0087b783          	ld	a5,8(a5)
    800041f8:	000780e7          	jalr	a5
    800041fc:	fddff06f          	j	800041d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80004200:	000b8a63          	beqz	s7,80004214 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80004204:	000bb783          	ld	a5,0(s7)
    80004208:	0087b783          	ld	a5,8(a5)
    8000420c:	000b8513          	mv	a0,s7
    80004210:	000780e7          	jalr	a5
        delete buffer;
    80004214:	000a8e63          	beqz	s5,80004230 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80004218:	000a8513          	mv	a0,s5
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	bb8080e7          	jalr	-1096(ra) # 80003dd4 <_ZN9BufferCPPD1Ev>
    80004224:	000a8513          	mv	a0,s5
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	310080e7          	jalr	784(ra) # 80002538 <_ZdlPv>
    80004230:	000c0113          	mv	sp,s8
    }
    80004234:	f8040113          	addi	sp,s0,-128
    80004238:	07813083          	ld	ra,120(sp)
    8000423c:	07013403          	ld	s0,112(sp)
    80004240:	06813483          	ld	s1,104(sp)
    80004244:	06013903          	ld	s2,96(sp)
    80004248:	05813983          	ld	s3,88(sp)
    8000424c:	05013a03          	ld	s4,80(sp)
    80004250:	04813a83          	ld	s5,72(sp)
    80004254:	04013b03          	ld	s6,64(sp)
    80004258:	03813b83          	ld	s7,56(sp)
    8000425c:	03013c03          	ld	s8,48(sp)
    80004260:	02813c83          	ld	s9,40(sp)
    80004264:	08010113          	addi	sp,sp,128
    80004268:	00008067          	ret
    8000426c:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004270:	000a8513          	mv	a0,s5
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	2c4080e7          	jalr	708(ra) # 80002538 <_ZdlPv>
    8000427c:	00048513          	mv	a0,s1
    80004280:	0000a097          	auipc	ra,0xa
    80004284:	f48080e7          	jalr	-184(ra) # 8000e1c8 <_Unwind_Resume>
    80004288:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    8000428c:	00048513          	mv	a0,s1
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	2a8080e7          	jalr	680(ra) # 80002538 <_ZdlPv>
    80004298:	00090513          	mv	a0,s2
    8000429c:	0000a097          	auipc	ra,0xa
    800042a0:	f2c080e7          	jalr	-212(ra) # 8000e1c8 <_Unwind_Resume>
    800042a4:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800042a8:	000b8513          	mv	a0,s7
    800042ac:	ffffe097          	auipc	ra,0xffffe
    800042b0:	28c080e7          	jalr	652(ra) # 80002538 <_ZdlPv>
    800042b4:	00048513          	mv	a0,s1
    800042b8:	0000a097          	auipc	ra,0xa
    800042bc:	f10080e7          	jalr	-240(ra) # 8000e1c8 <_Unwind_Resume>
    800042c0:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800042c4:	00048513          	mv	a0,s1
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	270080e7          	jalr	624(ra) # 80002538 <_ZdlPv>
    800042d0:	00090513          	mv	a0,s2
    800042d4:	0000a097          	auipc	ra,0xa
    800042d8:	ef4080e7          	jalr	-268(ra) # 8000e1c8 <_Unwind_Resume>
    800042dc:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800042e0:	000c8513          	mv	a0,s9
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	254080e7          	jalr	596(ra) # 80002538 <_ZdlPv>
    800042ec:	00048513          	mv	a0,s1
    800042f0:	0000a097          	auipc	ra,0xa
    800042f4:	ed8080e7          	jalr	-296(ra) # 8000e1c8 <_Unwind_Resume>

00000000800042f8 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800042f8:	ff010113          	addi	sp,sp,-16
    800042fc:	00113423          	sd	ra,8(sp)
    80004300:	00813023          	sd	s0,0(sp)
    80004304:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	bcc080e7          	jalr	-1076(ra) # 80003ed4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    80004310:	00813083          	ld	ra,8(sp)
    80004314:	00013403          	ld	s0,0(sp)
    80004318:	01010113          	addi	sp,sp,16
    8000431c:	00008067          	ret

0000000080004320 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80004320:	fd010113          	addi	sp,sp,-48
    80004324:	02113423          	sd	ra,40(sp)
    80004328:	02813023          	sd	s0,32(sp)
    8000432c:	00913c23          	sd	s1,24(sp)
    80004330:	01213823          	sd	s2,16(sp)
    80004334:	01313423          	sd	s3,8(sp)
    80004338:	03010413          	addi	s0,sp,48
    8000433c:	00050913          	mv	s2,a0
            int i = 0;
    80004340:	00000993          	li	s3,0
    80004344:	0100006f          	j	80004354 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80004348:	00a00513          	li	a0,10
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	4c4080e7          	jalr	1220(ra) # 80002810 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80004354:	00009797          	auipc	a5,0x9
    80004358:	d9c7a783          	lw	a5,-612(a5) # 8000d0f0 <_ZN19ConsumerProducerCPP9threadEndE>
    8000435c:	04079a63          	bnez	a5,800043b0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004360:	01093783          	ld	a5,16(s2)
    80004364:	0087b503          	ld	a0,8(a5)
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	958080e7          	jalr	-1704(ra) # 80003cc0 <_ZN9BufferCPP3getEv>
                i++;
    80004370:	0019849b          	addiw	s1,s3,1
    80004374:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004378:	0ff57513          	andi	a0,a0,255
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	494080e7          	jalr	1172(ra) # 80002810 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004384:	05000793          	li	a5,80
    80004388:	02f4e4bb          	remw	s1,s1,a5
    8000438c:	fc0494e3          	bnez	s1,80004354 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80004390:	fb9ff06f          	j	80004348 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004394:	01093783          	ld	a5,16(s2)
    80004398:	0087b503          	ld	a0,8(a5)
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	924080e7          	jalr	-1756(ra) # 80003cc0 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800043a4:	0ff57513          	andi	a0,a0,255
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	468080e7          	jalr	1128(ra) # 80002810 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800043b0:	01093783          	ld	a5,16(s2)
    800043b4:	0087b503          	ld	a0,8(a5)
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	994080e7          	jalr	-1644(ra) # 80003d4c <_ZN9BufferCPP6getCntEv>
    800043c0:	fca04ae3          	bgtz	a0,80004394 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800043c4:	01093783          	ld	a5,16(s2)
    800043c8:	0107b503          	ld	a0,16(a5)
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	3e4080e7          	jalr	996(ra) # 800027b0 <_ZN9Semaphore6signalEv>
        }
    800043d4:	02813083          	ld	ra,40(sp)
    800043d8:	02013403          	ld	s0,32(sp)
    800043dc:	01813483          	ld	s1,24(sp)
    800043e0:	01013903          	ld	s2,16(sp)
    800043e4:	00813983          	ld	s3,8(sp)
    800043e8:	03010113          	addi	sp,sp,48
    800043ec:	00008067          	ret

00000000800043f0 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    800043f0:	ff010113          	addi	sp,sp,-16
    800043f4:	00113423          	sd	ra,8(sp)
    800043f8:	00813023          	sd	s0,0(sp)
    800043fc:	01010413          	addi	s0,sp,16
    80004400:	00005797          	auipc	a5,0x5
    80004404:	b5878793          	addi	a5,a5,-1192 # 80008f58 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004408:	00f53023          	sd	a5,0(a0)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	084080e7          	jalr	132(ra) # 80002490 <_ZN6ThreadD1Ev>
    80004414:	00813083          	ld	ra,8(sp)
    80004418:	00013403          	ld	s0,0(sp)
    8000441c:	01010113          	addi	sp,sp,16
    80004420:	00008067          	ret

0000000080004424 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80004424:	fe010113          	addi	sp,sp,-32
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	00813823          	sd	s0,16(sp)
    80004430:	00913423          	sd	s1,8(sp)
    80004434:	02010413          	addi	s0,sp,32
    80004438:	00050493          	mv	s1,a0
    8000443c:	00005797          	auipc	a5,0x5
    80004440:	b1c78793          	addi	a5,a5,-1252 # 80008f58 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004444:	00f53023          	sd	a5,0(a0)
    80004448:	ffffe097          	auipc	ra,0xffffe
    8000444c:	048080e7          	jalr	72(ra) # 80002490 <_ZN6ThreadD1Ev>
    80004450:	00048513          	mv	a0,s1
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	0e4080e7          	jalr	228(ra) # 80002538 <_ZdlPv>
    8000445c:	01813083          	ld	ra,24(sp)
    80004460:	01013403          	ld	s0,16(sp)
    80004464:	00813483          	ld	s1,8(sp)
    80004468:	02010113          	addi	sp,sp,32
    8000446c:	00008067          	ret

0000000080004470 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00113423          	sd	ra,8(sp)
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	01010413          	addi	s0,sp,16
    80004480:	00005797          	auipc	a5,0x5
    80004484:	a8878793          	addi	a5,a5,-1400 # 80008f08 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	004080e7          	jalr	4(ra) # 80002490 <_ZN6ThreadD1Ev>
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800044a4:	fe010113          	addi	sp,sp,-32
    800044a8:	00113c23          	sd	ra,24(sp)
    800044ac:	00813823          	sd	s0,16(sp)
    800044b0:	00913423          	sd	s1,8(sp)
    800044b4:	02010413          	addi	s0,sp,32
    800044b8:	00050493          	mv	s1,a0
    800044bc:	00005797          	auipc	a5,0x5
    800044c0:	a4c78793          	addi	a5,a5,-1460 # 80008f08 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800044c4:	00f53023          	sd	a5,0(a0)
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	fc8080e7          	jalr	-56(ra) # 80002490 <_ZN6ThreadD1Ev>
    800044d0:	00048513          	mv	a0,s1
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	064080e7          	jalr	100(ra) # 80002538 <_ZdlPv>
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret

00000000800044f0 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00113423          	sd	ra,8(sp)
    800044f8:	00813023          	sd	s0,0(sp)
    800044fc:	01010413          	addi	s0,sp,16
    80004500:	00005797          	auipc	a5,0x5
    80004504:	a3078793          	addi	a5,a5,-1488 # 80008f30 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004508:	00f53023          	sd	a5,0(a0)
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	f84080e7          	jalr	-124(ra) # 80002490 <_ZN6ThreadD1Ev>
    80004514:	00813083          	ld	ra,8(sp)
    80004518:	00013403          	ld	s0,0(sp)
    8000451c:	01010113          	addi	sp,sp,16
    80004520:	00008067          	ret

0000000080004524 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80004524:	fe010113          	addi	sp,sp,-32
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	00813823          	sd	s0,16(sp)
    80004530:	00913423          	sd	s1,8(sp)
    80004534:	02010413          	addi	s0,sp,32
    80004538:	00050493          	mv	s1,a0
    8000453c:	00005797          	auipc	a5,0x5
    80004540:	9f478793          	addi	a5,a5,-1548 # 80008f30 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004544:	00f53023          	sd	a5,0(a0)
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	f48080e7          	jalr	-184(ra) # 80002490 <_ZN6ThreadD1Ev>
    80004550:	00048513          	mv	a0,s1
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	fe4080e7          	jalr	-28(ra) # 80002538 <_ZdlPv>
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	00813483          	ld	s1,8(sp)
    80004568:	02010113          	addi	sp,sp,32
    8000456c:	00008067          	ret

0000000080004570 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004570:	fe010113          	addi	sp,sp,-32
    80004574:	00113c23          	sd	ra,24(sp)
    80004578:	00813823          	sd	s0,16(sp)
    8000457c:	00913423          	sd	s1,8(sp)
    80004580:	02010413          	addi	s0,sp,32
    80004584:	00050493          	mv	s1,a0
            while ((key = getc()) != 'q') {
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	f88080e7          	jalr	-120(ra) # 80001510 <_Z4getcv>
    80004590:	0005059b          	sext.w	a1,a0
    80004594:	07100793          	li	a5,113
    80004598:	00f58c63          	beq	a1,a5,800045b0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    8000459c:	0104b783          	ld	a5,16(s1)
    800045a0:	0087b503          	ld	a0,8(a5)
    800045a4:	fffff097          	auipc	ra,0xfffff
    800045a8:	68c080e7          	jalr	1676(ra) # 80003c30 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 'q') {
    800045ac:	fddff06f          	j	80004588 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800045b0:	00100793          	li	a5,1
    800045b4:	00009717          	auipc	a4,0x9
    800045b8:	b2f72e23          	sw	a5,-1220(a4) # 8000d0f0 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800045bc:	0104b783          	ld	a5,16(s1)
    800045c0:	02100593          	li	a1,33
    800045c4:	0087b503          	ld	a0,8(a5)
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	668080e7          	jalr	1640(ra) # 80003c30 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800045d0:	0104b783          	ld	a5,16(s1)
    800045d4:	0107b503          	ld	a0,16(a5)
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	1d8080e7          	jalr	472(ra) # 800027b0 <_ZN9Semaphore6signalEv>
        }
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	00813483          	ld	s1,8(sp)
    800045ec:	02010113          	addi	sp,sp,32
    800045f0:	00008067          	ret

00000000800045f4 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800045f4:	fe010113          	addi	sp,sp,-32
    800045f8:	00113c23          	sd	ra,24(sp)
    800045fc:	00813823          	sd	s0,16(sp)
    80004600:	00913423          	sd	s1,8(sp)
    80004604:	01213023          	sd	s2,0(sp)
    80004608:	02010413          	addi	s0,sp,32
    8000460c:	00050493          	mv	s1,a0
            int i = 0;
    80004610:	00000913          	li	s2,0
            while (!threadEnd) {
    80004614:	00009797          	auipc	a5,0x9
    80004618:	adc7a783          	lw	a5,-1316(a5) # 8000d0f0 <_ZN19ConsumerProducerCPP9threadEndE>
    8000461c:	04079263          	bnez	a5,80004660 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80004620:	0104b783          	ld	a5,16(s1)
    80004624:	0007a583          	lw	a1,0(a5)
    80004628:	0305859b          	addiw	a1,a1,48
    8000462c:	0087b503          	ld	a0,8(a5)
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	600080e7          	jalr	1536(ra) # 80003c30 <_ZN9BufferCPP3putEi>
                i++;
    80004638:	0019071b          	addiw	a4,s2,1
    8000463c:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80004640:	0104b783          	ld	a5,16(s1)
    80004644:	0007a783          	lw	a5,0(a5)
    80004648:	00e787bb          	addw	a5,a5,a4
    8000464c:	00500513          	li	a0,5
    80004650:	02a7e53b          	remw	a0,a5,a0
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	fec080e7          	jalr	-20(ra) # 80002640 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    8000465c:	fb9ff06f          	j	80004614 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004660:	0104b783          	ld	a5,16(s1)
    80004664:	0107b503          	ld	a0,16(a5)
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	148080e7          	jalr	328(ra) # 800027b0 <_ZN9Semaphore6signalEv>
        }
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	01013403          	ld	s0,16(sp)
    80004678:	00813483          	ld	s1,8(sp)
    8000467c:	00013903          	ld	s2,0(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret

0000000080004688 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00113c23          	sd	ra,24(sp)
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	01213023          	sd	s2,0(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	00050493          	mv	s1,a0
    800046a4:	00058913          	mv	s2,a1
    800046a8:	0015879b          	addiw	a5,a1,1
    800046ac:	0007851b          	sext.w	a0,a5
    800046b0:	00f4a023          	sw	a5,0(s1)
    800046b4:	0004a823          	sw	zero,16(s1)
    800046b8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800046bc:	00251513          	slli	a0,a0,0x2
    800046c0:	ffffd097          	auipc	ra,0xffffd
    800046c4:	b98080e7          	jalr	-1128(ra) # 80001258 <_Z9mem_allocm>
    800046c8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800046cc:	00000593          	li	a1,0
    800046d0:	02048513          	addi	a0,s1,32
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	ca8080e7          	jalr	-856(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800046dc:	00090593          	mv	a1,s2
    800046e0:	01848513          	addi	a0,s1,24
    800046e4:	ffffd097          	auipc	ra,0xffffd
    800046e8:	c98080e7          	jalr	-872(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800046ec:	00100593          	li	a1,1
    800046f0:	02848513          	addi	a0,s1,40
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	c88080e7          	jalr	-888(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800046fc:	00100593          	li	a1,1
    80004700:	03048513          	addi	a0,s1,48
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	c78080e7          	jalr	-904(ra) # 8000137c <_Z8sem_openPP4_semj>
}
    8000470c:	01813083          	ld	ra,24(sp)
    80004710:	01013403          	ld	s0,16(sp)
    80004714:	00813483          	ld	s1,8(sp)
    80004718:	00013903          	ld	s2,0(sp)
    8000471c:	02010113          	addi	sp,sp,32
    80004720:	00008067          	ret

0000000080004724 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004724:	fe010113          	addi	sp,sp,-32
    80004728:	00113c23          	sd	ra,24(sp)
    8000472c:	00813823          	sd	s0,16(sp)
    80004730:	00913423          	sd	s1,8(sp)
    80004734:	01213023          	sd	s2,0(sp)
    80004738:	02010413          	addi	s0,sp,32
    8000473c:	00050493          	mv	s1,a0
    80004740:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004744:	01853503          	ld	a0,24(a0)
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	c98080e7          	jalr	-872(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80004750:	0304b503          	ld	a0,48(s1)
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	c8c080e7          	jalr	-884(ra) # 800013e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000475c:	0084b783          	ld	a5,8(s1)
    80004760:	0144a703          	lw	a4,20(s1)
    80004764:	00271713          	slli	a4,a4,0x2
    80004768:	00e787b3          	add	a5,a5,a4
    8000476c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004770:	0144a783          	lw	a5,20(s1)
    80004774:	0017879b          	addiw	a5,a5,1
    80004778:	0004a703          	lw	a4,0(s1)
    8000477c:	02e7e7bb          	remw	a5,a5,a4
    80004780:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004784:	0304b503          	ld	a0,48(s1)
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	c84080e7          	jalr	-892(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80004790:	0204b503          	ld	a0,32(s1)
    80004794:	ffffd097          	auipc	ra,0xffffd
    80004798:	c78080e7          	jalr	-904(ra) # 8000140c <_Z10sem_signalP4_sem>

}
    8000479c:	01813083          	ld	ra,24(sp)
    800047a0:	01013403          	ld	s0,16(sp)
    800047a4:	00813483          	ld	s1,8(sp)
    800047a8:	00013903          	ld	s2,0(sp)
    800047ac:	02010113          	addi	sp,sp,32
    800047b0:	00008067          	ret

00000000800047b4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800047b4:	fe010113          	addi	sp,sp,-32
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	00813823          	sd	s0,16(sp)
    800047c0:	00913423          	sd	s1,8(sp)
    800047c4:	01213023          	sd	s2,0(sp)
    800047c8:	02010413          	addi	s0,sp,32
    800047cc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800047d0:	02053503          	ld	a0,32(a0)
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	c0c080e7          	jalr	-1012(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800047dc:	0284b503          	ld	a0,40(s1)
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	c00080e7          	jalr	-1024(ra) # 800013e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800047e8:	0084b703          	ld	a4,8(s1)
    800047ec:	0104a783          	lw	a5,16(s1)
    800047f0:	00279693          	slli	a3,a5,0x2
    800047f4:	00d70733          	add	a4,a4,a3
    800047f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800047fc:	0017879b          	addiw	a5,a5,1
    80004800:	0004a703          	lw	a4,0(s1)
    80004804:	02e7e7bb          	remw	a5,a5,a4
    80004808:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000480c:	0284b503          	ld	a0,40(s1)
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	bfc080e7          	jalr	-1028(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004818:	0184b503          	ld	a0,24(s1)
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	bf0080e7          	jalr	-1040(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
}
    80004824:	00090513          	mv	a0,s2
    80004828:	01813083          	ld	ra,24(sp)
    8000482c:	01013403          	ld	s0,16(sp)
    80004830:	00813483          	ld	s1,8(sp)
    80004834:	00013903          	ld	s2,0(sp)
    80004838:	02010113          	addi	sp,sp,32
    8000483c:	00008067          	ret

0000000080004840 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004840:	fe010113          	addi	sp,sp,-32
    80004844:	00113c23          	sd	ra,24(sp)
    80004848:	00813823          	sd	s0,16(sp)
    8000484c:	00913423          	sd	s1,8(sp)
    80004850:	01213023          	sd	s2,0(sp)
    80004854:	02010413          	addi	s0,sp,32
    80004858:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000485c:	02853503          	ld	a0,40(a0)
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	b80080e7          	jalr	-1152(ra) # 800013e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004868:	0304b503          	ld	a0,48(s1)
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	b74080e7          	jalr	-1164(ra) # 800013e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004874:	0144a783          	lw	a5,20(s1)
    80004878:	0104a903          	lw	s2,16(s1)
    8000487c:	0327ce63          	blt	a5,s2,800048b8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004880:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004884:	0304b503          	ld	a0,48(s1)
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	b84080e7          	jalr	-1148(ra) # 8000140c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004890:	0284b503          	ld	a0,40(s1)
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	b78080e7          	jalr	-1160(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
    8000489c:	00090513          	mv	a0,s2
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	00813483          	ld	s1,8(sp)
    800048ac:	00013903          	ld	s2,0(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret
        ret = cap - head + tail;
    800048b8:	0004a703          	lw	a4,0(s1)
    800048bc:	4127093b          	subw	s2,a4,s2
    800048c0:	00f9093b          	addw	s2,s2,a5
    800048c4:	fc1ff06f          	j	80004884 <_ZN6Buffer6getCntEv+0x44>

00000000800048c8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800048c8:	fe010113          	addi	sp,sp,-32
    800048cc:	00113c23          	sd	ra,24(sp)
    800048d0:	00813823          	sd	s0,16(sp)
    800048d4:	00913423          	sd	s1,8(sp)
    800048d8:	02010413          	addi	s0,sp,32
    800048dc:	00050493          	mv	s1,a0
    putc('\n');
    800048e0:	00a00513          	li	a0,10
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	c54080e7          	jalr	-940(ra) # 80001538 <_Z4putcc>
    printString("Buffer deleted!\n");
    800048ec:	00003517          	auipc	a0,0x3
    800048f0:	85c50513          	addi	a0,a0,-1956 # 80007148 <CONSOLE_STATUS+0x138>
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	f3c080e7          	jalr	-196(ra) # 80003830 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800048fc:	00048513          	mv	a0,s1
    80004900:	00000097          	auipc	ra,0x0
    80004904:	f40080e7          	jalr	-192(ra) # 80004840 <_ZN6Buffer6getCntEv>
    80004908:	02a05c63          	blez	a0,80004940 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000490c:	0084b783          	ld	a5,8(s1)
    80004910:	0104a703          	lw	a4,16(s1)
    80004914:	00271713          	slli	a4,a4,0x2
    80004918:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000491c:	0007c503          	lbu	a0,0(a5)
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	c18080e7          	jalr	-1000(ra) # 80001538 <_Z4putcc>
        head = (head + 1) % cap;
    80004928:	0104a783          	lw	a5,16(s1)
    8000492c:	0017879b          	addiw	a5,a5,1
    80004930:	0004a703          	lw	a4,0(s1)
    80004934:	02e7e7bb          	remw	a5,a5,a4
    80004938:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000493c:	fc1ff06f          	j	800048fc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004940:	02100513          	li	a0,33
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	bf4080e7          	jalr	-1036(ra) # 80001538 <_Z4putcc>
    putc('\n');
    8000494c:	00a00513          	li	a0,10
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	be8080e7          	jalr	-1048(ra) # 80001538 <_Z4putcc>
    mem_free(buffer);
    80004958:	0084b503          	ld	a0,8(s1)
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	92c080e7          	jalr	-1748(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004964:	0204b503          	ld	a0,32(s1)
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	a4c080e7          	jalr	-1460(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004970:	0184b503          	ld	a0,24(s1)
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	a40080e7          	jalr	-1472(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000497c:	0304b503          	ld	a0,48(s1)
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	a34080e7          	jalr	-1484(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004988:	0284b503          	ld	a0,40(s1)
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	a28080e7          	jalr	-1496(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80004994:	01813083          	ld	ra,24(sp)
    80004998:	01013403          	ld	s0,16(sp)
    8000499c:	00813483          	ld	s1,8(sp)
    800049a0:	02010113          	addi	sp,sp,32
    800049a4:	00008067          	ret

00000000800049a8 <start>:
    800049a8:	ff010113          	addi	sp,sp,-16
    800049ac:	00813423          	sd	s0,8(sp)
    800049b0:	01010413          	addi	s0,sp,16
    800049b4:	300027f3          	csrr	a5,mstatus
    800049b8:	ffffe737          	lui	a4,0xffffe
    800049bc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff049f>
    800049c0:	00e7f7b3          	and	a5,a5,a4
    800049c4:	00001737          	lui	a4,0x1
    800049c8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800049cc:	00e7e7b3          	or	a5,a5,a4
    800049d0:	30079073          	csrw	mstatus,a5
    800049d4:	00000797          	auipc	a5,0x0
    800049d8:	16078793          	addi	a5,a5,352 # 80004b34 <system_main>
    800049dc:	34179073          	csrw	mepc,a5
    800049e0:	00000793          	li	a5,0
    800049e4:	18079073          	csrw	satp,a5
    800049e8:	000107b7          	lui	a5,0x10
    800049ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800049f0:	30279073          	csrw	medeleg,a5
    800049f4:	30379073          	csrw	mideleg,a5
    800049f8:	104027f3          	csrr	a5,sie
    800049fc:	2227e793          	ori	a5,a5,546
    80004a00:	10479073          	csrw	sie,a5
    80004a04:	fff00793          	li	a5,-1
    80004a08:	00a7d793          	srli	a5,a5,0xa
    80004a0c:	3b079073          	csrw	pmpaddr0,a5
    80004a10:	00f00793          	li	a5,15
    80004a14:	3a079073          	csrw	pmpcfg0,a5
    80004a18:	f14027f3          	csrr	a5,mhartid
    80004a1c:	0200c737          	lui	a4,0x200c
    80004a20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004a24:	0007869b          	sext.w	a3,a5
    80004a28:	00269713          	slli	a4,a3,0x2
    80004a2c:	000f4637          	lui	a2,0xf4
    80004a30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004a34:	00d70733          	add	a4,a4,a3
    80004a38:	0037979b          	slliw	a5,a5,0x3
    80004a3c:	020046b7          	lui	a3,0x2004
    80004a40:	00d787b3          	add	a5,a5,a3
    80004a44:	00c585b3          	add	a1,a1,a2
    80004a48:	00371693          	slli	a3,a4,0x3
    80004a4c:	00008717          	auipc	a4,0x8
    80004a50:	6b470713          	addi	a4,a4,1716 # 8000d100 <timer_scratch>
    80004a54:	00b7b023          	sd	a1,0(a5)
    80004a58:	00d70733          	add	a4,a4,a3
    80004a5c:	00f73c23          	sd	a5,24(a4)
    80004a60:	02c73023          	sd	a2,32(a4)
    80004a64:	34071073          	csrw	mscratch,a4
    80004a68:	00000797          	auipc	a5,0x0
    80004a6c:	6e878793          	addi	a5,a5,1768 # 80005150 <timervec>
    80004a70:	30579073          	csrw	mtvec,a5
    80004a74:	300027f3          	csrr	a5,mstatus
    80004a78:	0087e793          	ori	a5,a5,8
    80004a7c:	30079073          	csrw	mstatus,a5
    80004a80:	304027f3          	csrr	a5,mie
    80004a84:	0807e793          	ori	a5,a5,128
    80004a88:	30479073          	csrw	mie,a5
    80004a8c:	f14027f3          	csrr	a5,mhartid
    80004a90:	0007879b          	sext.w	a5,a5
    80004a94:	00078213          	mv	tp,a5
    80004a98:	30200073          	mret
    80004a9c:	00813403          	ld	s0,8(sp)
    80004aa0:	01010113          	addi	sp,sp,16
    80004aa4:	00008067          	ret

0000000080004aa8 <timerinit>:
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00813423          	sd	s0,8(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    80004ab4:	f14027f3          	csrr	a5,mhartid
    80004ab8:	0200c737          	lui	a4,0x200c
    80004abc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004ac0:	0007869b          	sext.w	a3,a5
    80004ac4:	00269713          	slli	a4,a3,0x2
    80004ac8:	000f4637          	lui	a2,0xf4
    80004acc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004ad0:	00d70733          	add	a4,a4,a3
    80004ad4:	0037979b          	slliw	a5,a5,0x3
    80004ad8:	020046b7          	lui	a3,0x2004
    80004adc:	00d787b3          	add	a5,a5,a3
    80004ae0:	00c585b3          	add	a1,a1,a2
    80004ae4:	00371693          	slli	a3,a4,0x3
    80004ae8:	00008717          	auipc	a4,0x8
    80004aec:	61870713          	addi	a4,a4,1560 # 8000d100 <timer_scratch>
    80004af0:	00b7b023          	sd	a1,0(a5)
    80004af4:	00d70733          	add	a4,a4,a3
    80004af8:	00f73c23          	sd	a5,24(a4)
    80004afc:	02c73023          	sd	a2,32(a4)
    80004b00:	34071073          	csrw	mscratch,a4
    80004b04:	00000797          	auipc	a5,0x0
    80004b08:	64c78793          	addi	a5,a5,1612 # 80005150 <timervec>
    80004b0c:	30579073          	csrw	mtvec,a5
    80004b10:	300027f3          	csrr	a5,mstatus
    80004b14:	0087e793          	ori	a5,a5,8
    80004b18:	30079073          	csrw	mstatus,a5
    80004b1c:	304027f3          	csrr	a5,mie
    80004b20:	0807e793          	ori	a5,a5,128
    80004b24:	30479073          	csrw	mie,a5
    80004b28:	00813403          	ld	s0,8(sp)
    80004b2c:	01010113          	addi	sp,sp,16
    80004b30:	00008067          	ret

0000000080004b34 <system_main>:
    80004b34:	fe010113          	addi	sp,sp,-32
    80004b38:	00813823          	sd	s0,16(sp)
    80004b3c:	00913423          	sd	s1,8(sp)
    80004b40:	00113c23          	sd	ra,24(sp)
    80004b44:	02010413          	addi	s0,sp,32
    80004b48:	00000097          	auipc	ra,0x0
    80004b4c:	0c4080e7          	jalr	196(ra) # 80004c0c <cpuid>
    80004b50:	00004497          	auipc	s1,0x4
    80004b54:	4c048493          	addi	s1,s1,1216 # 80009010 <started>
    80004b58:	02050263          	beqz	a0,80004b7c <system_main+0x48>
    80004b5c:	0004a783          	lw	a5,0(s1)
    80004b60:	0007879b          	sext.w	a5,a5
    80004b64:	fe078ce3          	beqz	a5,80004b5c <system_main+0x28>
    80004b68:	0ff0000f          	fence
    80004b6c:	00002517          	auipc	a0,0x2
    80004b70:	70c50513          	addi	a0,a0,1804 # 80007278 <CONSOLE_STATUS+0x268>
    80004b74:	00001097          	auipc	ra,0x1
    80004b78:	a78080e7          	jalr	-1416(ra) # 800055ec <panic>
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	9cc080e7          	jalr	-1588(ra) # 80005548 <consoleinit>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	158080e7          	jalr	344(ra) # 80005cdc <printfinit>
    80004b8c:	00002517          	auipc	a0,0x2
    80004b90:	60c50513          	addi	a0,a0,1548 # 80007198 <CONSOLE_STATUS+0x188>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	ab4080e7          	jalr	-1356(ra) # 80005648 <__printf>
    80004b9c:	00002517          	auipc	a0,0x2
    80004ba0:	6ac50513          	addi	a0,a0,1708 # 80007248 <CONSOLE_STATUS+0x238>
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	aa4080e7          	jalr	-1372(ra) # 80005648 <__printf>
    80004bac:	00002517          	auipc	a0,0x2
    80004bb0:	5ec50513          	addi	a0,a0,1516 # 80007198 <CONSOLE_STATUS+0x188>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	a94080e7          	jalr	-1388(ra) # 80005648 <__printf>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	4ac080e7          	jalr	1196(ra) # 80006068 <kinit>
    80004bc4:	00000097          	auipc	ra,0x0
    80004bc8:	148080e7          	jalr	328(ra) # 80004d0c <trapinit>
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	16c080e7          	jalr	364(ra) # 80004d38 <trapinithart>
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	5bc080e7          	jalr	1468(ra) # 80005190 <plicinit>
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	5dc080e7          	jalr	1500(ra) # 800051b8 <plicinithart>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	078080e7          	jalr	120(ra) # 80004c5c <userinit>
    80004bec:	0ff0000f          	fence
    80004bf0:	00100793          	li	a5,1
    80004bf4:	00002517          	auipc	a0,0x2
    80004bf8:	66c50513          	addi	a0,a0,1644 # 80007260 <CONSOLE_STATUS+0x250>
    80004bfc:	00f4a023          	sw	a5,0(s1)
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	a48080e7          	jalr	-1464(ra) # 80005648 <__printf>
    80004c08:	0000006f          	j	80004c08 <system_main+0xd4>

0000000080004c0c <cpuid>:
    80004c0c:	ff010113          	addi	sp,sp,-16
    80004c10:	00813423          	sd	s0,8(sp)
    80004c14:	01010413          	addi	s0,sp,16
    80004c18:	00020513          	mv	a0,tp
    80004c1c:	00813403          	ld	s0,8(sp)
    80004c20:	0005051b          	sext.w	a0,a0
    80004c24:	01010113          	addi	sp,sp,16
    80004c28:	00008067          	ret

0000000080004c2c <mycpu>:
    80004c2c:	ff010113          	addi	sp,sp,-16
    80004c30:	00813423          	sd	s0,8(sp)
    80004c34:	01010413          	addi	s0,sp,16
    80004c38:	00020793          	mv	a5,tp
    80004c3c:	00813403          	ld	s0,8(sp)
    80004c40:	0007879b          	sext.w	a5,a5
    80004c44:	00779793          	slli	a5,a5,0x7
    80004c48:	00009517          	auipc	a0,0x9
    80004c4c:	4e850513          	addi	a0,a0,1256 # 8000e130 <cpus>
    80004c50:	00f50533          	add	a0,a0,a5
    80004c54:	01010113          	addi	sp,sp,16
    80004c58:	00008067          	ret

0000000080004c5c <userinit>:
    80004c5c:	ff010113          	addi	sp,sp,-16
    80004c60:	00813423          	sd	s0,8(sp)
    80004c64:	01010413          	addi	s0,sp,16
    80004c68:	00813403          	ld	s0,8(sp)
    80004c6c:	01010113          	addi	sp,sp,16
    80004c70:	ffffd317          	auipc	t1,0xffffd
    80004c74:	7cc30067          	jr	1996(t1) # 8000243c <main>

0000000080004c78 <either_copyout>:
    80004c78:	ff010113          	addi	sp,sp,-16
    80004c7c:	00813023          	sd	s0,0(sp)
    80004c80:	00113423          	sd	ra,8(sp)
    80004c84:	01010413          	addi	s0,sp,16
    80004c88:	02051663          	bnez	a0,80004cb4 <either_copyout+0x3c>
    80004c8c:	00058513          	mv	a0,a1
    80004c90:	00060593          	mv	a1,a2
    80004c94:	0006861b          	sext.w	a2,a3
    80004c98:	00002097          	auipc	ra,0x2
    80004c9c:	c5c080e7          	jalr	-932(ra) # 800068f4 <__memmove>
    80004ca0:	00813083          	ld	ra,8(sp)
    80004ca4:	00013403          	ld	s0,0(sp)
    80004ca8:	00000513          	li	a0,0
    80004cac:	01010113          	addi	sp,sp,16
    80004cb0:	00008067          	ret
    80004cb4:	00002517          	auipc	a0,0x2
    80004cb8:	5ec50513          	addi	a0,a0,1516 # 800072a0 <CONSOLE_STATUS+0x290>
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	930080e7          	jalr	-1744(ra) # 800055ec <panic>

0000000080004cc4 <either_copyin>:
    80004cc4:	ff010113          	addi	sp,sp,-16
    80004cc8:	00813023          	sd	s0,0(sp)
    80004ccc:	00113423          	sd	ra,8(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    80004cd4:	02059463          	bnez	a1,80004cfc <either_copyin+0x38>
    80004cd8:	00060593          	mv	a1,a2
    80004cdc:	0006861b          	sext.w	a2,a3
    80004ce0:	00002097          	auipc	ra,0x2
    80004ce4:	c14080e7          	jalr	-1004(ra) # 800068f4 <__memmove>
    80004ce8:	00813083          	ld	ra,8(sp)
    80004cec:	00013403          	ld	s0,0(sp)
    80004cf0:	00000513          	li	a0,0
    80004cf4:	01010113          	addi	sp,sp,16
    80004cf8:	00008067          	ret
    80004cfc:	00002517          	auipc	a0,0x2
    80004d00:	5cc50513          	addi	a0,a0,1484 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	8e8080e7          	jalr	-1816(ra) # 800055ec <panic>

0000000080004d0c <trapinit>:
    80004d0c:	ff010113          	addi	sp,sp,-16
    80004d10:	00813423          	sd	s0,8(sp)
    80004d14:	01010413          	addi	s0,sp,16
    80004d18:	00813403          	ld	s0,8(sp)
    80004d1c:	00002597          	auipc	a1,0x2
    80004d20:	5d458593          	addi	a1,a1,1492 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80004d24:	00009517          	auipc	a0,0x9
    80004d28:	48c50513          	addi	a0,a0,1164 # 8000e1b0 <tickslock>
    80004d2c:	01010113          	addi	sp,sp,16
    80004d30:	00001317          	auipc	t1,0x1
    80004d34:	5c830067          	jr	1480(t1) # 800062f8 <initlock>

0000000080004d38 <trapinithart>:
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00813423          	sd	s0,8(sp)
    80004d40:	01010413          	addi	s0,sp,16
    80004d44:	00000797          	auipc	a5,0x0
    80004d48:	2fc78793          	addi	a5,a5,764 # 80005040 <kernelvec>
    80004d4c:	10579073          	csrw	stvec,a5
    80004d50:	00813403          	ld	s0,8(sp)
    80004d54:	01010113          	addi	sp,sp,16
    80004d58:	00008067          	ret

0000000080004d5c <usertrap>:
    80004d5c:	ff010113          	addi	sp,sp,-16
    80004d60:	00813423          	sd	s0,8(sp)
    80004d64:	01010413          	addi	s0,sp,16
    80004d68:	00813403          	ld	s0,8(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <usertrapret>:
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00813423          	sd	s0,8(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	00813403          	ld	s0,8(sp)
    80004d84:	01010113          	addi	sp,sp,16
    80004d88:	00008067          	ret

0000000080004d8c <kerneltrap>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00813823          	sd	s0,16(sp)
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	142025f3          	csrr	a1,scause
    80004da4:	100027f3          	csrr	a5,sstatus
    80004da8:	0027f793          	andi	a5,a5,2
    80004dac:	10079c63          	bnez	a5,80004ec4 <kerneltrap+0x138>
    80004db0:	142027f3          	csrr	a5,scause
    80004db4:	0207ce63          	bltz	a5,80004df0 <kerneltrap+0x64>
    80004db8:	00002517          	auipc	a0,0x2
    80004dbc:	58050513          	addi	a0,a0,1408 # 80007338 <CONSOLE_STATUS+0x328>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	888080e7          	jalr	-1912(ra) # 80005648 <__printf>
    80004dc8:	141025f3          	csrr	a1,sepc
    80004dcc:	14302673          	csrr	a2,stval
    80004dd0:	00002517          	auipc	a0,0x2
    80004dd4:	57850513          	addi	a0,a0,1400 # 80007348 <CONSOLE_STATUS+0x338>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	870080e7          	jalr	-1936(ra) # 80005648 <__printf>
    80004de0:	00002517          	auipc	a0,0x2
    80004de4:	58050513          	addi	a0,a0,1408 # 80007360 <CONSOLE_STATUS+0x350>
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	804080e7          	jalr	-2044(ra) # 800055ec <panic>
    80004df0:	0ff7f713          	andi	a4,a5,255
    80004df4:	00900693          	li	a3,9
    80004df8:	04d70063          	beq	a4,a3,80004e38 <kerneltrap+0xac>
    80004dfc:	fff00713          	li	a4,-1
    80004e00:	03f71713          	slli	a4,a4,0x3f
    80004e04:	00170713          	addi	a4,a4,1
    80004e08:	fae798e3          	bne	a5,a4,80004db8 <kerneltrap+0x2c>
    80004e0c:	00000097          	auipc	ra,0x0
    80004e10:	e00080e7          	jalr	-512(ra) # 80004c0c <cpuid>
    80004e14:	06050663          	beqz	a0,80004e80 <kerneltrap+0xf4>
    80004e18:	144027f3          	csrr	a5,sip
    80004e1c:	ffd7f793          	andi	a5,a5,-3
    80004e20:	14479073          	csrw	sip,a5
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret
    80004e38:	00000097          	auipc	ra,0x0
    80004e3c:	3cc080e7          	jalr	972(ra) # 80005204 <plic_claim>
    80004e40:	00a00793          	li	a5,10
    80004e44:	00050493          	mv	s1,a0
    80004e48:	06f50863          	beq	a0,a5,80004eb8 <kerneltrap+0x12c>
    80004e4c:	fc050ce3          	beqz	a0,80004e24 <kerneltrap+0x98>
    80004e50:	00050593          	mv	a1,a0
    80004e54:	00002517          	auipc	a0,0x2
    80004e58:	4c450513          	addi	a0,a0,1220 # 80007318 <CONSOLE_STATUS+0x308>
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	7ec080e7          	jalr	2028(ra) # 80005648 <__printf>
    80004e64:	01013403          	ld	s0,16(sp)
    80004e68:	01813083          	ld	ra,24(sp)
    80004e6c:	00048513          	mv	a0,s1
    80004e70:	00813483          	ld	s1,8(sp)
    80004e74:	02010113          	addi	sp,sp,32
    80004e78:	00000317          	auipc	t1,0x0
    80004e7c:	3c430067          	jr	964(t1) # 8000523c <plic_complete>
    80004e80:	00009517          	auipc	a0,0x9
    80004e84:	33050513          	addi	a0,a0,816 # 8000e1b0 <tickslock>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	494080e7          	jalr	1172(ra) # 8000631c <acquire>
    80004e90:	00004717          	auipc	a4,0x4
    80004e94:	18470713          	addi	a4,a4,388 # 80009014 <ticks>
    80004e98:	00072783          	lw	a5,0(a4)
    80004e9c:	00009517          	auipc	a0,0x9
    80004ea0:	31450513          	addi	a0,a0,788 # 8000e1b0 <tickslock>
    80004ea4:	0017879b          	addiw	a5,a5,1
    80004ea8:	00f72023          	sw	a5,0(a4)
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	53c080e7          	jalr	1340(ra) # 800063e8 <release>
    80004eb4:	f65ff06f          	j	80004e18 <kerneltrap+0x8c>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	098080e7          	jalr	152(ra) # 80005f50 <uartintr>
    80004ec0:	fa5ff06f          	j	80004e64 <kerneltrap+0xd8>
    80004ec4:	00002517          	auipc	a0,0x2
    80004ec8:	43450513          	addi	a0,a0,1076 # 800072f8 <CONSOLE_STATUS+0x2e8>
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	720080e7          	jalr	1824(ra) # 800055ec <panic>

0000000080004ed4 <clockintr>:
    80004ed4:	fe010113          	addi	sp,sp,-32
    80004ed8:	00813823          	sd	s0,16(sp)
    80004edc:	00913423          	sd	s1,8(sp)
    80004ee0:	00113c23          	sd	ra,24(sp)
    80004ee4:	02010413          	addi	s0,sp,32
    80004ee8:	00009497          	auipc	s1,0x9
    80004eec:	2c848493          	addi	s1,s1,712 # 8000e1b0 <tickslock>
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	428080e7          	jalr	1064(ra) # 8000631c <acquire>
    80004efc:	00004717          	auipc	a4,0x4
    80004f00:	11870713          	addi	a4,a4,280 # 80009014 <ticks>
    80004f04:	00072783          	lw	a5,0(a4)
    80004f08:	01013403          	ld	s0,16(sp)
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	00048513          	mv	a0,s1
    80004f14:	0017879b          	addiw	a5,a5,1
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	00f72023          	sw	a5,0(a4)
    80004f20:	02010113          	addi	sp,sp,32
    80004f24:	00001317          	auipc	t1,0x1
    80004f28:	4c430067          	jr	1220(t1) # 800063e8 <release>

0000000080004f2c <devintr>:
    80004f2c:	142027f3          	csrr	a5,scause
    80004f30:	00000513          	li	a0,0
    80004f34:	0007c463          	bltz	a5,80004f3c <devintr+0x10>
    80004f38:	00008067          	ret
    80004f3c:	fe010113          	addi	sp,sp,-32
    80004f40:	00813823          	sd	s0,16(sp)
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00913423          	sd	s1,8(sp)
    80004f4c:	02010413          	addi	s0,sp,32
    80004f50:	0ff7f713          	andi	a4,a5,255
    80004f54:	00900693          	li	a3,9
    80004f58:	04d70c63          	beq	a4,a3,80004fb0 <devintr+0x84>
    80004f5c:	fff00713          	li	a4,-1
    80004f60:	03f71713          	slli	a4,a4,0x3f
    80004f64:	00170713          	addi	a4,a4,1
    80004f68:	00e78c63          	beq	a5,a4,80004f80 <devintr+0x54>
    80004f6c:	01813083          	ld	ra,24(sp)
    80004f70:	01013403          	ld	s0,16(sp)
    80004f74:	00813483          	ld	s1,8(sp)
    80004f78:	02010113          	addi	sp,sp,32
    80004f7c:	00008067          	ret
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	c8c080e7          	jalr	-884(ra) # 80004c0c <cpuid>
    80004f88:	06050663          	beqz	a0,80004ff4 <devintr+0xc8>
    80004f8c:	144027f3          	csrr	a5,sip
    80004f90:	ffd7f793          	andi	a5,a5,-3
    80004f94:	14479073          	csrw	sip,a5
    80004f98:	01813083          	ld	ra,24(sp)
    80004f9c:	01013403          	ld	s0,16(sp)
    80004fa0:	00813483          	ld	s1,8(sp)
    80004fa4:	00200513          	li	a0,2
    80004fa8:	02010113          	addi	sp,sp,32
    80004fac:	00008067          	ret
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	254080e7          	jalr	596(ra) # 80005204 <plic_claim>
    80004fb8:	00a00793          	li	a5,10
    80004fbc:	00050493          	mv	s1,a0
    80004fc0:	06f50663          	beq	a0,a5,8000502c <devintr+0x100>
    80004fc4:	00100513          	li	a0,1
    80004fc8:	fa0482e3          	beqz	s1,80004f6c <devintr+0x40>
    80004fcc:	00048593          	mv	a1,s1
    80004fd0:	00002517          	auipc	a0,0x2
    80004fd4:	34850513          	addi	a0,a0,840 # 80007318 <CONSOLE_STATUS+0x308>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	670080e7          	jalr	1648(ra) # 80005648 <__printf>
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00000097          	auipc	ra,0x0
    80004fe8:	258080e7          	jalr	600(ra) # 8000523c <plic_complete>
    80004fec:	00100513          	li	a0,1
    80004ff0:	f7dff06f          	j	80004f6c <devintr+0x40>
    80004ff4:	00009517          	auipc	a0,0x9
    80004ff8:	1bc50513          	addi	a0,a0,444 # 8000e1b0 <tickslock>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	320080e7          	jalr	800(ra) # 8000631c <acquire>
    80005004:	00004717          	auipc	a4,0x4
    80005008:	01070713          	addi	a4,a4,16 # 80009014 <ticks>
    8000500c:	00072783          	lw	a5,0(a4)
    80005010:	00009517          	auipc	a0,0x9
    80005014:	1a050513          	addi	a0,a0,416 # 8000e1b0 <tickslock>
    80005018:	0017879b          	addiw	a5,a5,1
    8000501c:	00f72023          	sw	a5,0(a4)
    80005020:	00001097          	auipc	ra,0x1
    80005024:	3c8080e7          	jalr	968(ra) # 800063e8 <release>
    80005028:	f65ff06f          	j	80004f8c <devintr+0x60>
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	f24080e7          	jalr	-220(ra) # 80005f50 <uartintr>
    80005034:	fadff06f          	j	80004fe0 <devintr+0xb4>
	...

0000000080005040 <kernelvec>:
    80005040:	f0010113          	addi	sp,sp,-256
    80005044:	00113023          	sd	ra,0(sp)
    80005048:	00213423          	sd	sp,8(sp)
    8000504c:	00313823          	sd	gp,16(sp)
    80005050:	00413c23          	sd	tp,24(sp)
    80005054:	02513023          	sd	t0,32(sp)
    80005058:	02613423          	sd	t1,40(sp)
    8000505c:	02713823          	sd	t2,48(sp)
    80005060:	02813c23          	sd	s0,56(sp)
    80005064:	04913023          	sd	s1,64(sp)
    80005068:	04a13423          	sd	a0,72(sp)
    8000506c:	04b13823          	sd	a1,80(sp)
    80005070:	04c13c23          	sd	a2,88(sp)
    80005074:	06d13023          	sd	a3,96(sp)
    80005078:	06e13423          	sd	a4,104(sp)
    8000507c:	06f13823          	sd	a5,112(sp)
    80005080:	07013c23          	sd	a6,120(sp)
    80005084:	09113023          	sd	a7,128(sp)
    80005088:	09213423          	sd	s2,136(sp)
    8000508c:	09313823          	sd	s3,144(sp)
    80005090:	09413c23          	sd	s4,152(sp)
    80005094:	0b513023          	sd	s5,160(sp)
    80005098:	0b613423          	sd	s6,168(sp)
    8000509c:	0b713823          	sd	s7,176(sp)
    800050a0:	0b813c23          	sd	s8,184(sp)
    800050a4:	0d913023          	sd	s9,192(sp)
    800050a8:	0da13423          	sd	s10,200(sp)
    800050ac:	0db13823          	sd	s11,208(sp)
    800050b0:	0dc13c23          	sd	t3,216(sp)
    800050b4:	0fd13023          	sd	t4,224(sp)
    800050b8:	0fe13423          	sd	t5,232(sp)
    800050bc:	0ff13823          	sd	t6,240(sp)
    800050c0:	ccdff0ef          	jal	ra,80004d8c <kerneltrap>
    800050c4:	00013083          	ld	ra,0(sp)
    800050c8:	00813103          	ld	sp,8(sp)
    800050cc:	01013183          	ld	gp,16(sp)
    800050d0:	02013283          	ld	t0,32(sp)
    800050d4:	02813303          	ld	t1,40(sp)
    800050d8:	03013383          	ld	t2,48(sp)
    800050dc:	03813403          	ld	s0,56(sp)
    800050e0:	04013483          	ld	s1,64(sp)
    800050e4:	04813503          	ld	a0,72(sp)
    800050e8:	05013583          	ld	a1,80(sp)
    800050ec:	05813603          	ld	a2,88(sp)
    800050f0:	06013683          	ld	a3,96(sp)
    800050f4:	06813703          	ld	a4,104(sp)
    800050f8:	07013783          	ld	a5,112(sp)
    800050fc:	07813803          	ld	a6,120(sp)
    80005100:	08013883          	ld	a7,128(sp)
    80005104:	08813903          	ld	s2,136(sp)
    80005108:	09013983          	ld	s3,144(sp)
    8000510c:	09813a03          	ld	s4,152(sp)
    80005110:	0a013a83          	ld	s5,160(sp)
    80005114:	0a813b03          	ld	s6,168(sp)
    80005118:	0b013b83          	ld	s7,176(sp)
    8000511c:	0b813c03          	ld	s8,184(sp)
    80005120:	0c013c83          	ld	s9,192(sp)
    80005124:	0c813d03          	ld	s10,200(sp)
    80005128:	0d013d83          	ld	s11,208(sp)
    8000512c:	0d813e03          	ld	t3,216(sp)
    80005130:	0e013e83          	ld	t4,224(sp)
    80005134:	0e813f03          	ld	t5,232(sp)
    80005138:	0f013f83          	ld	t6,240(sp)
    8000513c:	10010113          	addi	sp,sp,256
    80005140:	10200073          	sret
    80005144:	00000013          	nop
    80005148:	00000013          	nop
    8000514c:	00000013          	nop

0000000080005150 <timervec>:
    80005150:	34051573          	csrrw	a0,mscratch,a0
    80005154:	00b53023          	sd	a1,0(a0)
    80005158:	00c53423          	sd	a2,8(a0)
    8000515c:	00d53823          	sd	a3,16(a0)
    80005160:	01853583          	ld	a1,24(a0)
    80005164:	02053603          	ld	a2,32(a0)
    80005168:	0005b683          	ld	a3,0(a1)
    8000516c:	00c686b3          	add	a3,a3,a2
    80005170:	00d5b023          	sd	a3,0(a1)
    80005174:	00200593          	li	a1,2
    80005178:	14459073          	csrw	sip,a1
    8000517c:	01053683          	ld	a3,16(a0)
    80005180:	00853603          	ld	a2,8(a0)
    80005184:	00053583          	ld	a1,0(a0)
    80005188:	34051573          	csrrw	a0,mscratch,a0
    8000518c:	30200073          	mret

0000000080005190 <plicinit>:
    80005190:	ff010113          	addi	sp,sp,-16
    80005194:	00813423          	sd	s0,8(sp)
    80005198:	01010413          	addi	s0,sp,16
    8000519c:	00813403          	ld	s0,8(sp)
    800051a0:	0c0007b7          	lui	a5,0xc000
    800051a4:	00100713          	li	a4,1
    800051a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800051ac:	00e7a223          	sw	a4,4(a5)
    800051b0:	01010113          	addi	sp,sp,16
    800051b4:	00008067          	ret

00000000800051b8 <plicinithart>:
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	00113423          	sd	ra,8(sp)
    800051c4:	01010413          	addi	s0,sp,16
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	a44080e7          	jalr	-1468(ra) # 80004c0c <cpuid>
    800051d0:	0085171b          	slliw	a4,a0,0x8
    800051d4:	0c0027b7          	lui	a5,0xc002
    800051d8:	00e787b3          	add	a5,a5,a4
    800051dc:	40200713          	li	a4,1026
    800051e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800051e4:	00813083          	ld	ra,8(sp)
    800051e8:	00013403          	ld	s0,0(sp)
    800051ec:	00d5151b          	slliw	a0,a0,0xd
    800051f0:	0c2017b7          	lui	a5,0xc201
    800051f4:	00a78533          	add	a0,a5,a0
    800051f8:	00052023          	sw	zero,0(a0)
    800051fc:	01010113          	addi	sp,sp,16
    80005200:	00008067          	ret

0000000080005204 <plic_claim>:
    80005204:	ff010113          	addi	sp,sp,-16
    80005208:	00813023          	sd	s0,0(sp)
    8000520c:	00113423          	sd	ra,8(sp)
    80005210:	01010413          	addi	s0,sp,16
    80005214:	00000097          	auipc	ra,0x0
    80005218:	9f8080e7          	jalr	-1544(ra) # 80004c0c <cpuid>
    8000521c:	00813083          	ld	ra,8(sp)
    80005220:	00013403          	ld	s0,0(sp)
    80005224:	00d5151b          	slliw	a0,a0,0xd
    80005228:	0c2017b7          	lui	a5,0xc201
    8000522c:	00a78533          	add	a0,a5,a0
    80005230:	00452503          	lw	a0,4(a0)
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00008067          	ret

000000008000523c <plic_complete>:
    8000523c:	fe010113          	addi	sp,sp,-32
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    80005254:	00000097          	auipc	ra,0x0
    80005258:	9b8080e7          	jalr	-1608(ra) # 80004c0c <cpuid>
    8000525c:	01813083          	ld	ra,24(sp)
    80005260:	01013403          	ld	s0,16(sp)
    80005264:	00d5179b          	slliw	a5,a0,0xd
    80005268:	0c201737          	lui	a4,0xc201
    8000526c:	00f707b3          	add	a5,a4,a5
    80005270:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005274:	00813483          	ld	s1,8(sp)
    80005278:	02010113          	addi	sp,sp,32
    8000527c:	00008067          	ret

0000000080005280 <consolewrite>:
    80005280:	fb010113          	addi	sp,sp,-80
    80005284:	04813023          	sd	s0,64(sp)
    80005288:	04113423          	sd	ra,72(sp)
    8000528c:	02913c23          	sd	s1,56(sp)
    80005290:	03213823          	sd	s2,48(sp)
    80005294:	03313423          	sd	s3,40(sp)
    80005298:	03413023          	sd	s4,32(sp)
    8000529c:	01513c23          	sd	s5,24(sp)
    800052a0:	05010413          	addi	s0,sp,80
    800052a4:	06c05c63          	blez	a2,8000531c <consolewrite+0x9c>
    800052a8:	00060993          	mv	s3,a2
    800052ac:	00050a13          	mv	s4,a0
    800052b0:	00058493          	mv	s1,a1
    800052b4:	00000913          	li	s2,0
    800052b8:	fff00a93          	li	s5,-1
    800052bc:	01c0006f          	j	800052d8 <consolewrite+0x58>
    800052c0:	fbf44503          	lbu	a0,-65(s0)
    800052c4:	0019091b          	addiw	s2,s2,1
    800052c8:	00148493          	addi	s1,s1,1
    800052cc:	00001097          	auipc	ra,0x1
    800052d0:	a9c080e7          	jalr	-1380(ra) # 80005d68 <uartputc>
    800052d4:	03298063          	beq	s3,s2,800052f4 <consolewrite+0x74>
    800052d8:	00048613          	mv	a2,s1
    800052dc:	00100693          	li	a3,1
    800052e0:	000a0593          	mv	a1,s4
    800052e4:	fbf40513          	addi	a0,s0,-65
    800052e8:	00000097          	auipc	ra,0x0
    800052ec:	9dc080e7          	jalr	-1572(ra) # 80004cc4 <either_copyin>
    800052f0:	fd5518e3          	bne	a0,s5,800052c0 <consolewrite+0x40>
    800052f4:	04813083          	ld	ra,72(sp)
    800052f8:	04013403          	ld	s0,64(sp)
    800052fc:	03813483          	ld	s1,56(sp)
    80005300:	02813983          	ld	s3,40(sp)
    80005304:	02013a03          	ld	s4,32(sp)
    80005308:	01813a83          	ld	s5,24(sp)
    8000530c:	00090513          	mv	a0,s2
    80005310:	03013903          	ld	s2,48(sp)
    80005314:	05010113          	addi	sp,sp,80
    80005318:	00008067          	ret
    8000531c:	00000913          	li	s2,0
    80005320:	fd5ff06f          	j	800052f4 <consolewrite+0x74>

0000000080005324 <consoleread>:
    80005324:	f9010113          	addi	sp,sp,-112
    80005328:	06813023          	sd	s0,96(sp)
    8000532c:	04913c23          	sd	s1,88(sp)
    80005330:	05213823          	sd	s2,80(sp)
    80005334:	05313423          	sd	s3,72(sp)
    80005338:	05413023          	sd	s4,64(sp)
    8000533c:	03513c23          	sd	s5,56(sp)
    80005340:	03613823          	sd	s6,48(sp)
    80005344:	03713423          	sd	s7,40(sp)
    80005348:	03813023          	sd	s8,32(sp)
    8000534c:	06113423          	sd	ra,104(sp)
    80005350:	01913c23          	sd	s9,24(sp)
    80005354:	07010413          	addi	s0,sp,112
    80005358:	00060b93          	mv	s7,a2
    8000535c:	00050913          	mv	s2,a0
    80005360:	00058c13          	mv	s8,a1
    80005364:	00060b1b          	sext.w	s6,a2
    80005368:	00009497          	auipc	s1,0x9
    8000536c:	e7048493          	addi	s1,s1,-400 # 8000e1d8 <cons>
    80005370:	00400993          	li	s3,4
    80005374:	fff00a13          	li	s4,-1
    80005378:	00a00a93          	li	s5,10
    8000537c:	05705e63          	blez	s7,800053d8 <consoleread+0xb4>
    80005380:	09c4a703          	lw	a4,156(s1)
    80005384:	0984a783          	lw	a5,152(s1)
    80005388:	0007071b          	sext.w	a4,a4
    8000538c:	08e78463          	beq	a5,a4,80005414 <consoleread+0xf0>
    80005390:	07f7f713          	andi	a4,a5,127
    80005394:	00e48733          	add	a4,s1,a4
    80005398:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000539c:	0017869b          	addiw	a3,a5,1
    800053a0:	08d4ac23          	sw	a3,152(s1)
    800053a4:	00070c9b          	sext.w	s9,a4
    800053a8:	0b370663          	beq	a4,s3,80005454 <consoleread+0x130>
    800053ac:	00100693          	li	a3,1
    800053b0:	f9f40613          	addi	a2,s0,-97
    800053b4:	000c0593          	mv	a1,s8
    800053b8:	00090513          	mv	a0,s2
    800053bc:	f8e40fa3          	sb	a4,-97(s0)
    800053c0:	00000097          	auipc	ra,0x0
    800053c4:	8b8080e7          	jalr	-1864(ra) # 80004c78 <either_copyout>
    800053c8:	01450863          	beq	a0,s4,800053d8 <consoleread+0xb4>
    800053cc:	001c0c13          	addi	s8,s8,1
    800053d0:	fffb8b9b          	addiw	s7,s7,-1
    800053d4:	fb5c94e3          	bne	s9,s5,8000537c <consoleread+0x58>
    800053d8:	000b851b          	sext.w	a0,s7
    800053dc:	06813083          	ld	ra,104(sp)
    800053e0:	06013403          	ld	s0,96(sp)
    800053e4:	05813483          	ld	s1,88(sp)
    800053e8:	05013903          	ld	s2,80(sp)
    800053ec:	04813983          	ld	s3,72(sp)
    800053f0:	04013a03          	ld	s4,64(sp)
    800053f4:	03813a83          	ld	s5,56(sp)
    800053f8:	02813b83          	ld	s7,40(sp)
    800053fc:	02013c03          	ld	s8,32(sp)
    80005400:	01813c83          	ld	s9,24(sp)
    80005404:	40ab053b          	subw	a0,s6,a0
    80005408:	03013b03          	ld	s6,48(sp)
    8000540c:	07010113          	addi	sp,sp,112
    80005410:	00008067          	ret
    80005414:	00001097          	auipc	ra,0x1
    80005418:	1d8080e7          	jalr	472(ra) # 800065ec <push_on>
    8000541c:	0984a703          	lw	a4,152(s1)
    80005420:	09c4a783          	lw	a5,156(s1)
    80005424:	0007879b          	sext.w	a5,a5
    80005428:	fef70ce3          	beq	a4,a5,80005420 <consoleread+0xfc>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	234080e7          	jalr	564(ra) # 80006660 <pop_on>
    80005434:	0984a783          	lw	a5,152(s1)
    80005438:	07f7f713          	andi	a4,a5,127
    8000543c:	00e48733          	add	a4,s1,a4
    80005440:	01874703          	lbu	a4,24(a4)
    80005444:	0017869b          	addiw	a3,a5,1
    80005448:	08d4ac23          	sw	a3,152(s1)
    8000544c:	00070c9b          	sext.w	s9,a4
    80005450:	f5371ee3          	bne	a4,s3,800053ac <consoleread+0x88>
    80005454:	000b851b          	sext.w	a0,s7
    80005458:	f96bf2e3          	bgeu	s7,s6,800053dc <consoleread+0xb8>
    8000545c:	08f4ac23          	sw	a5,152(s1)
    80005460:	f7dff06f          	j	800053dc <consoleread+0xb8>

0000000080005464 <consputc>:
    80005464:	10000793          	li	a5,256
    80005468:	00f50663          	beq	a0,a5,80005474 <consputc+0x10>
    8000546c:	00001317          	auipc	t1,0x1
    80005470:	9f430067          	jr	-1548(t1) # 80005e60 <uartputc_sync>
    80005474:	ff010113          	addi	sp,sp,-16
    80005478:	00113423          	sd	ra,8(sp)
    8000547c:	00813023          	sd	s0,0(sp)
    80005480:	01010413          	addi	s0,sp,16
    80005484:	00800513          	li	a0,8
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	9d8080e7          	jalr	-1576(ra) # 80005e60 <uartputc_sync>
    80005490:	02000513          	li	a0,32
    80005494:	00001097          	auipc	ra,0x1
    80005498:	9cc080e7          	jalr	-1588(ra) # 80005e60 <uartputc_sync>
    8000549c:	00013403          	ld	s0,0(sp)
    800054a0:	00813083          	ld	ra,8(sp)
    800054a4:	00800513          	li	a0,8
    800054a8:	01010113          	addi	sp,sp,16
    800054ac:	00001317          	auipc	t1,0x1
    800054b0:	9b430067          	jr	-1612(t1) # 80005e60 <uartputc_sync>

00000000800054b4 <consoleintr>:
    800054b4:	fe010113          	addi	sp,sp,-32
    800054b8:	00813823          	sd	s0,16(sp)
    800054bc:	00913423          	sd	s1,8(sp)
    800054c0:	01213023          	sd	s2,0(sp)
    800054c4:	00113c23          	sd	ra,24(sp)
    800054c8:	02010413          	addi	s0,sp,32
    800054cc:	00009917          	auipc	s2,0x9
    800054d0:	d0c90913          	addi	s2,s2,-756 # 8000e1d8 <cons>
    800054d4:	00050493          	mv	s1,a0
    800054d8:	00090513          	mv	a0,s2
    800054dc:	00001097          	auipc	ra,0x1
    800054e0:	e40080e7          	jalr	-448(ra) # 8000631c <acquire>
    800054e4:	02048c63          	beqz	s1,8000551c <consoleintr+0x68>
    800054e8:	0a092783          	lw	a5,160(s2)
    800054ec:	09892703          	lw	a4,152(s2)
    800054f0:	07f00693          	li	a3,127
    800054f4:	40e7873b          	subw	a4,a5,a4
    800054f8:	02e6e263          	bltu	a3,a4,8000551c <consoleintr+0x68>
    800054fc:	00d00713          	li	a4,13
    80005500:	04e48063          	beq	s1,a4,80005540 <consoleintr+0x8c>
    80005504:	07f7f713          	andi	a4,a5,127
    80005508:	00e90733          	add	a4,s2,a4
    8000550c:	0017879b          	addiw	a5,a5,1
    80005510:	0af92023          	sw	a5,160(s2)
    80005514:	00970c23          	sb	s1,24(a4)
    80005518:	08f92e23          	sw	a5,156(s2)
    8000551c:	01013403          	ld	s0,16(sp)
    80005520:	01813083          	ld	ra,24(sp)
    80005524:	00813483          	ld	s1,8(sp)
    80005528:	00013903          	ld	s2,0(sp)
    8000552c:	00009517          	auipc	a0,0x9
    80005530:	cac50513          	addi	a0,a0,-852 # 8000e1d8 <cons>
    80005534:	02010113          	addi	sp,sp,32
    80005538:	00001317          	auipc	t1,0x1
    8000553c:	eb030067          	jr	-336(t1) # 800063e8 <release>
    80005540:	00a00493          	li	s1,10
    80005544:	fc1ff06f          	j	80005504 <consoleintr+0x50>

0000000080005548 <consoleinit>:
    80005548:	fe010113          	addi	sp,sp,-32
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	00813823          	sd	s0,16(sp)
    80005554:	00913423          	sd	s1,8(sp)
    80005558:	02010413          	addi	s0,sp,32
    8000555c:	00009497          	auipc	s1,0x9
    80005560:	c7c48493          	addi	s1,s1,-900 # 8000e1d8 <cons>
    80005564:	00048513          	mv	a0,s1
    80005568:	00002597          	auipc	a1,0x2
    8000556c:	e0858593          	addi	a1,a1,-504 # 80007370 <CONSOLE_STATUS+0x360>
    80005570:	00001097          	auipc	ra,0x1
    80005574:	d88080e7          	jalr	-632(ra) # 800062f8 <initlock>
    80005578:	00000097          	auipc	ra,0x0
    8000557c:	7ac080e7          	jalr	1964(ra) # 80005d24 <uartinit>
    80005580:	01813083          	ld	ra,24(sp)
    80005584:	01013403          	ld	s0,16(sp)
    80005588:	00000797          	auipc	a5,0x0
    8000558c:	d9c78793          	addi	a5,a5,-612 # 80005324 <consoleread>
    80005590:	0af4bc23          	sd	a5,184(s1)
    80005594:	00000797          	auipc	a5,0x0
    80005598:	cec78793          	addi	a5,a5,-788 # 80005280 <consolewrite>
    8000559c:	0cf4b023          	sd	a5,192(s1)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	00008067          	ret

00000000800055ac <console_read>:
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00813423          	sd	s0,8(sp)
    800055b4:	01010413          	addi	s0,sp,16
    800055b8:	00813403          	ld	s0,8(sp)
    800055bc:	00009317          	auipc	t1,0x9
    800055c0:	cd433303          	ld	t1,-812(t1) # 8000e290 <devsw+0x10>
    800055c4:	01010113          	addi	sp,sp,16
    800055c8:	00030067          	jr	t1

00000000800055cc <console_write>:
    800055cc:	ff010113          	addi	sp,sp,-16
    800055d0:	00813423          	sd	s0,8(sp)
    800055d4:	01010413          	addi	s0,sp,16
    800055d8:	00813403          	ld	s0,8(sp)
    800055dc:	00009317          	auipc	t1,0x9
    800055e0:	cbc33303          	ld	t1,-836(t1) # 8000e298 <devsw+0x18>
    800055e4:	01010113          	addi	sp,sp,16
    800055e8:	00030067          	jr	t1

00000000800055ec <panic>:
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00113c23          	sd	ra,24(sp)
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	02010413          	addi	s0,sp,32
    80005600:	00050493          	mv	s1,a0
    80005604:	00002517          	auipc	a0,0x2
    80005608:	d7450513          	addi	a0,a0,-652 # 80007378 <CONSOLE_STATUS+0x368>
    8000560c:	00009797          	auipc	a5,0x9
    80005610:	d207a623          	sw	zero,-724(a5) # 8000e338 <pr+0x18>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	034080e7          	jalr	52(ra) # 80005648 <__printf>
    8000561c:	00048513          	mv	a0,s1
    80005620:	00000097          	auipc	ra,0x0
    80005624:	028080e7          	jalr	40(ra) # 80005648 <__printf>
    80005628:	00002517          	auipc	a0,0x2
    8000562c:	b7050513          	addi	a0,a0,-1168 # 80007198 <CONSOLE_STATUS+0x188>
    80005630:	00000097          	auipc	ra,0x0
    80005634:	018080e7          	jalr	24(ra) # 80005648 <__printf>
    80005638:	00100793          	li	a5,1
    8000563c:	00004717          	auipc	a4,0x4
    80005640:	9cf72e23          	sw	a5,-1572(a4) # 80009018 <panicked>
    80005644:	0000006f          	j	80005644 <panic+0x58>

0000000080005648 <__printf>:
    80005648:	f3010113          	addi	sp,sp,-208
    8000564c:	08813023          	sd	s0,128(sp)
    80005650:	07313423          	sd	s3,104(sp)
    80005654:	09010413          	addi	s0,sp,144
    80005658:	05813023          	sd	s8,64(sp)
    8000565c:	08113423          	sd	ra,136(sp)
    80005660:	06913c23          	sd	s1,120(sp)
    80005664:	07213823          	sd	s2,112(sp)
    80005668:	07413023          	sd	s4,96(sp)
    8000566c:	05513c23          	sd	s5,88(sp)
    80005670:	05613823          	sd	s6,80(sp)
    80005674:	05713423          	sd	s7,72(sp)
    80005678:	03913c23          	sd	s9,56(sp)
    8000567c:	03a13823          	sd	s10,48(sp)
    80005680:	03b13423          	sd	s11,40(sp)
    80005684:	00009317          	auipc	t1,0x9
    80005688:	c9c30313          	addi	t1,t1,-868 # 8000e320 <pr>
    8000568c:	01832c03          	lw	s8,24(t1)
    80005690:	00b43423          	sd	a1,8(s0)
    80005694:	00c43823          	sd	a2,16(s0)
    80005698:	00d43c23          	sd	a3,24(s0)
    8000569c:	02e43023          	sd	a4,32(s0)
    800056a0:	02f43423          	sd	a5,40(s0)
    800056a4:	03043823          	sd	a6,48(s0)
    800056a8:	03143c23          	sd	a7,56(s0)
    800056ac:	00050993          	mv	s3,a0
    800056b0:	4a0c1663          	bnez	s8,80005b5c <__printf+0x514>
    800056b4:	60098c63          	beqz	s3,80005ccc <__printf+0x684>
    800056b8:	0009c503          	lbu	a0,0(s3)
    800056bc:	00840793          	addi	a5,s0,8
    800056c0:	f6f43c23          	sd	a5,-136(s0)
    800056c4:	00000493          	li	s1,0
    800056c8:	22050063          	beqz	a0,800058e8 <__printf+0x2a0>
    800056cc:	00002a37          	lui	s4,0x2
    800056d0:	00018ab7          	lui	s5,0x18
    800056d4:	000f4b37          	lui	s6,0xf4
    800056d8:	00989bb7          	lui	s7,0x989
    800056dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800056e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800056e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800056e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800056ec:	00148c9b          	addiw	s9,s1,1
    800056f0:	02500793          	li	a5,37
    800056f4:	01998933          	add	s2,s3,s9
    800056f8:	38f51263          	bne	a0,a5,80005a7c <__printf+0x434>
    800056fc:	00094783          	lbu	a5,0(s2)
    80005700:	00078c9b          	sext.w	s9,a5
    80005704:	1e078263          	beqz	a5,800058e8 <__printf+0x2a0>
    80005708:	0024849b          	addiw	s1,s1,2
    8000570c:	07000713          	li	a4,112
    80005710:	00998933          	add	s2,s3,s1
    80005714:	38e78a63          	beq	a5,a4,80005aa8 <__printf+0x460>
    80005718:	20f76863          	bltu	a4,a5,80005928 <__printf+0x2e0>
    8000571c:	42a78863          	beq	a5,a0,80005b4c <__printf+0x504>
    80005720:	06400713          	li	a4,100
    80005724:	40e79663          	bne	a5,a4,80005b30 <__printf+0x4e8>
    80005728:	f7843783          	ld	a5,-136(s0)
    8000572c:	0007a603          	lw	a2,0(a5)
    80005730:	00878793          	addi	a5,a5,8
    80005734:	f6f43c23          	sd	a5,-136(s0)
    80005738:	42064a63          	bltz	a2,80005b6c <__printf+0x524>
    8000573c:	00a00713          	li	a4,10
    80005740:	02e677bb          	remuw	a5,a2,a4
    80005744:	00002d97          	auipc	s11,0x2
    80005748:	c5cd8d93          	addi	s11,s11,-932 # 800073a0 <digits>
    8000574c:	00900593          	li	a1,9
    80005750:	0006051b          	sext.w	a0,a2
    80005754:	00000c93          	li	s9,0
    80005758:	02079793          	slli	a5,a5,0x20
    8000575c:	0207d793          	srli	a5,a5,0x20
    80005760:	00fd87b3          	add	a5,s11,a5
    80005764:	0007c783          	lbu	a5,0(a5)
    80005768:	02e656bb          	divuw	a3,a2,a4
    8000576c:	f8f40023          	sb	a5,-128(s0)
    80005770:	14c5d863          	bge	a1,a2,800058c0 <__printf+0x278>
    80005774:	06300593          	li	a1,99
    80005778:	00100c93          	li	s9,1
    8000577c:	02e6f7bb          	remuw	a5,a3,a4
    80005780:	02079793          	slli	a5,a5,0x20
    80005784:	0207d793          	srli	a5,a5,0x20
    80005788:	00fd87b3          	add	a5,s11,a5
    8000578c:	0007c783          	lbu	a5,0(a5)
    80005790:	02e6d73b          	divuw	a4,a3,a4
    80005794:	f8f400a3          	sb	a5,-127(s0)
    80005798:	12a5f463          	bgeu	a1,a0,800058c0 <__printf+0x278>
    8000579c:	00a00693          	li	a3,10
    800057a0:	00900593          	li	a1,9
    800057a4:	02d777bb          	remuw	a5,a4,a3
    800057a8:	02079793          	slli	a5,a5,0x20
    800057ac:	0207d793          	srli	a5,a5,0x20
    800057b0:	00fd87b3          	add	a5,s11,a5
    800057b4:	0007c503          	lbu	a0,0(a5)
    800057b8:	02d757bb          	divuw	a5,a4,a3
    800057bc:	f8a40123          	sb	a0,-126(s0)
    800057c0:	48e5f263          	bgeu	a1,a4,80005c44 <__printf+0x5fc>
    800057c4:	06300513          	li	a0,99
    800057c8:	02d7f5bb          	remuw	a1,a5,a3
    800057cc:	02059593          	slli	a1,a1,0x20
    800057d0:	0205d593          	srli	a1,a1,0x20
    800057d4:	00bd85b3          	add	a1,s11,a1
    800057d8:	0005c583          	lbu	a1,0(a1)
    800057dc:	02d7d7bb          	divuw	a5,a5,a3
    800057e0:	f8b401a3          	sb	a1,-125(s0)
    800057e4:	48e57263          	bgeu	a0,a4,80005c68 <__printf+0x620>
    800057e8:	3e700513          	li	a0,999
    800057ec:	02d7f5bb          	remuw	a1,a5,a3
    800057f0:	02059593          	slli	a1,a1,0x20
    800057f4:	0205d593          	srli	a1,a1,0x20
    800057f8:	00bd85b3          	add	a1,s11,a1
    800057fc:	0005c583          	lbu	a1,0(a1)
    80005800:	02d7d7bb          	divuw	a5,a5,a3
    80005804:	f8b40223          	sb	a1,-124(s0)
    80005808:	46e57663          	bgeu	a0,a4,80005c74 <__printf+0x62c>
    8000580c:	02d7f5bb          	remuw	a1,a5,a3
    80005810:	02059593          	slli	a1,a1,0x20
    80005814:	0205d593          	srli	a1,a1,0x20
    80005818:	00bd85b3          	add	a1,s11,a1
    8000581c:	0005c583          	lbu	a1,0(a1)
    80005820:	02d7d7bb          	divuw	a5,a5,a3
    80005824:	f8b402a3          	sb	a1,-123(s0)
    80005828:	46ea7863          	bgeu	s4,a4,80005c98 <__printf+0x650>
    8000582c:	02d7f5bb          	remuw	a1,a5,a3
    80005830:	02059593          	slli	a1,a1,0x20
    80005834:	0205d593          	srli	a1,a1,0x20
    80005838:	00bd85b3          	add	a1,s11,a1
    8000583c:	0005c583          	lbu	a1,0(a1)
    80005840:	02d7d7bb          	divuw	a5,a5,a3
    80005844:	f8b40323          	sb	a1,-122(s0)
    80005848:	3eeaf863          	bgeu	s5,a4,80005c38 <__printf+0x5f0>
    8000584c:	02d7f5bb          	remuw	a1,a5,a3
    80005850:	02059593          	slli	a1,a1,0x20
    80005854:	0205d593          	srli	a1,a1,0x20
    80005858:	00bd85b3          	add	a1,s11,a1
    8000585c:	0005c583          	lbu	a1,0(a1)
    80005860:	02d7d7bb          	divuw	a5,a5,a3
    80005864:	f8b403a3          	sb	a1,-121(s0)
    80005868:	42eb7e63          	bgeu	s6,a4,80005ca4 <__printf+0x65c>
    8000586c:	02d7f5bb          	remuw	a1,a5,a3
    80005870:	02059593          	slli	a1,a1,0x20
    80005874:	0205d593          	srli	a1,a1,0x20
    80005878:	00bd85b3          	add	a1,s11,a1
    8000587c:	0005c583          	lbu	a1,0(a1)
    80005880:	02d7d7bb          	divuw	a5,a5,a3
    80005884:	f8b40423          	sb	a1,-120(s0)
    80005888:	42ebfc63          	bgeu	s7,a4,80005cc0 <__printf+0x678>
    8000588c:	02079793          	slli	a5,a5,0x20
    80005890:	0207d793          	srli	a5,a5,0x20
    80005894:	00fd8db3          	add	s11,s11,a5
    80005898:	000dc703          	lbu	a4,0(s11)
    8000589c:	00a00793          	li	a5,10
    800058a0:	00900c93          	li	s9,9
    800058a4:	f8e404a3          	sb	a4,-119(s0)
    800058a8:	00065c63          	bgez	a2,800058c0 <__printf+0x278>
    800058ac:	f9040713          	addi	a4,s0,-112
    800058b0:	00f70733          	add	a4,a4,a5
    800058b4:	02d00693          	li	a3,45
    800058b8:	fed70823          	sb	a3,-16(a4)
    800058bc:	00078c93          	mv	s9,a5
    800058c0:	f8040793          	addi	a5,s0,-128
    800058c4:	01978cb3          	add	s9,a5,s9
    800058c8:	f7f40d13          	addi	s10,s0,-129
    800058cc:	000cc503          	lbu	a0,0(s9)
    800058d0:	fffc8c93          	addi	s9,s9,-1
    800058d4:	00000097          	auipc	ra,0x0
    800058d8:	b90080e7          	jalr	-1136(ra) # 80005464 <consputc>
    800058dc:	ffac98e3          	bne	s9,s10,800058cc <__printf+0x284>
    800058e0:	00094503          	lbu	a0,0(s2)
    800058e4:	e00514e3          	bnez	a0,800056ec <__printf+0xa4>
    800058e8:	1a0c1663          	bnez	s8,80005a94 <__printf+0x44c>
    800058ec:	08813083          	ld	ra,136(sp)
    800058f0:	08013403          	ld	s0,128(sp)
    800058f4:	07813483          	ld	s1,120(sp)
    800058f8:	07013903          	ld	s2,112(sp)
    800058fc:	06813983          	ld	s3,104(sp)
    80005900:	06013a03          	ld	s4,96(sp)
    80005904:	05813a83          	ld	s5,88(sp)
    80005908:	05013b03          	ld	s6,80(sp)
    8000590c:	04813b83          	ld	s7,72(sp)
    80005910:	04013c03          	ld	s8,64(sp)
    80005914:	03813c83          	ld	s9,56(sp)
    80005918:	03013d03          	ld	s10,48(sp)
    8000591c:	02813d83          	ld	s11,40(sp)
    80005920:	0d010113          	addi	sp,sp,208
    80005924:	00008067          	ret
    80005928:	07300713          	li	a4,115
    8000592c:	1ce78a63          	beq	a5,a4,80005b00 <__printf+0x4b8>
    80005930:	07800713          	li	a4,120
    80005934:	1ee79e63          	bne	a5,a4,80005b30 <__printf+0x4e8>
    80005938:	f7843783          	ld	a5,-136(s0)
    8000593c:	0007a703          	lw	a4,0(a5)
    80005940:	00878793          	addi	a5,a5,8
    80005944:	f6f43c23          	sd	a5,-136(s0)
    80005948:	28074263          	bltz	a4,80005bcc <__printf+0x584>
    8000594c:	00002d97          	auipc	s11,0x2
    80005950:	a54d8d93          	addi	s11,s11,-1452 # 800073a0 <digits>
    80005954:	00f77793          	andi	a5,a4,15
    80005958:	00fd87b3          	add	a5,s11,a5
    8000595c:	0007c683          	lbu	a3,0(a5)
    80005960:	00f00613          	li	a2,15
    80005964:	0007079b          	sext.w	a5,a4
    80005968:	f8d40023          	sb	a3,-128(s0)
    8000596c:	0047559b          	srliw	a1,a4,0x4
    80005970:	0047569b          	srliw	a3,a4,0x4
    80005974:	00000c93          	li	s9,0
    80005978:	0ee65063          	bge	a2,a4,80005a58 <__printf+0x410>
    8000597c:	00f6f693          	andi	a3,a3,15
    80005980:	00dd86b3          	add	a3,s11,a3
    80005984:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005988:	0087d79b          	srliw	a5,a5,0x8
    8000598c:	00100c93          	li	s9,1
    80005990:	f8d400a3          	sb	a3,-127(s0)
    80005994:	0cb67263          	bgeu	a2,a1,80005a58 <__printf+0x410>
    80005998:	00f7f693          	andi	a3,a5,15
    8000599c:	00dd86b3          	add	a3,s11,a3
    800059a0:	0006c583          	lbu	a1,0(a3)
    800059a4:	00f00613          	li	a2,15
    800059a8:	0047d69b          	srliw	a3,a5,0x4
    800059ac:	f8b40123          	sb	a1,-126(s0)
    800059b0:	0047d593          	srli	a1,a5,0x4
    800059b4:	28f67e63          	bgeu	a2,a5,80005c50 <__printf+0x608>
    800059b8:	00f6f693          	andi	a3,a3,15
    800059bc:	00dd86b3          	add	a3,s11,a3
    800059c0:	0006c503          	lbu	a0,0(a3)
    800059c4:	0087d813          	srli	a6,a5,0x8
    800059c8:	0087d69b          	srliw	a3,a5,0x8
    800059cc:	f8a401a3          	sb	a0,-125(s0)
    800059d0:	28b67663          	bgeu	a2,a1,80005c5c <__printf+0x614>
    800059d4:	00f6f693          	andi	a3,a3,15
    800059d8:	00dd86b3          	add	a3,s11,a3
    800059dc:	0006c583          	lbu	a1,0(a3)
    800059e0:	00c7d513          	srli	a0,a5,0xc
    800059e4:	00c7d69b          	srliw	a3,a5,0xc
    800059e8:	f8b40223          	sb	a1,-124(s0)
    800059ec:	29067a63          	bgeu	a2,a6,80005c80 <__printf+0x638>
    800059f0:	00f6f693          	andi	a3,a3,15
    800059f4:	00dd86b3          	add	a3,s11,a3
    800059f8:	0006c583          	lbu	a1,0(a3)
    800059fc:	0107d813          	srli	a6,a5,0x10
    80005a00:	0107d69b          	srliw	a3,a5,0x10
    80005a04:	f8b402a3          	sb	a1,-123(s0)
    80005a08:	28a67263          	bgeu	a2,a0,80005c8c <__printf+0x644>
    80005a0c:	00f6f693          	andi	a3,a3,15
    80005a10:	00dd86b3          	add	a3,s11,a3
    80005a14:	0006c683          	lbu	a3,0(a3)
    80005a18:	0147d79b          	srliw	a5,a5,0x14
    80005a1c:	f8d40323          	sb	a3,-122(s0)
    80005a20:	21067663          	bgeu	a2,a6,80005c2c <__printf+0x5e4>
    80005a24:	02079793          	slli	a5,a5,0x20
    80005a28:	0207d793          	srli	a5,a5,0x20
    80005a2c:	00fd8db3          	add	s11,s11,a5
    80005a30:	000dc683          	lbu	a3,0(s11)
    80005a34:	00800793          	li	a5,8
    80005a38:	00700c93          	li	s9,7
    80005a3c:	f8d403a3          	sb	a3,-121(s0)
    80005a40:	00075c63          	bgez	a4,80005a58 <__printf+0x410>
    80005a44:	f9040713          	addi	a4,s0,-112
    80005a48:	00f70733          	add	a4,a4,a5
    80005a4c:	02d00693          	li	a3,45
    80005a50:	fed70823          	sb	a3,-16(a4)
    80005a54:	00078c93          	mv	s9,a5
    80005a58:	f8040793          	addi	a5,s0,-128
    80005a5c:	01978cb3          	add	s9,a5,s9
    80005a60:	f7f40d13          	addi	s10,s0,-129
    80005a64:	000cc503          	lbu	a0,0(s9)
    80005a68:	fffc8c93          	addi	s9,s9,-1
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	9f8080e7          	jalr	-1544(ra) # 80005464 <consputc>
    80005a74:	ff9d18e3          	bne	s10,s9,80005a64 <__printf+0x41c>
    80005a78:	0100006f          	j	80005a88 <__printf+0x440>
    80005a7c:	00000097          	auipc	ra,0x0
    80005a80:	9e8080e7          	jalr	-1560(ra) # 80005464 <consputc>
    80005a84:	000c8493          	mv	s1,s9
    80005a88:	00094503          	lbu	a0,0(s2)
    80005a8c:	c60510e3          	bnez	a0,800056ec <__printf+0xa4>
    80005a90:	e40c0ee3          	beqz	s8,800058ec <__printf+0x2a4>
    80005a94:	00009517          	auipc	a0,0x9
    80005a98:	88c50513          	addi	a0,a0,-1908 # 8000e320 <pr>
    80005a9c:	00001097          	auipc	ra,0x1
    80005aa0:	94c080e7          	jalr	-1716(ra) # 800063e8 <release>
    80005aa4:	e49ff06f          	j	800058ec <__printf+0x2a4>
    80005aa8:	f7843783          	ld	a5,-136(s0)
    80005aac:	03000513          	li	a0,48
    80005ab0:	01000d13          	li	s10,16
    80005ab4:	00878713          	addi	a4,a5,8
    80005ab8:	0007bc83          	ld	s9,0(a5)
    80005abc:	f6e43c23          	sd	a4,-136(s0)
    80005ac0:	00000097          	auipc	ra,0x0
    80005ac4:	9a4080e7          	jalr	-1628(ra) # 80005464 <consputc>
    80005ac8:	07800513          	li	a0,120
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	998080e7          	jalr	-1640(ra) # 80005464 <consputc>
    80005ad4:	00002d97          	auipc	s11,0x2
    80005ad8:	8ccd8d93          	addi	s11,s11,-1844 # 800073a0 <digits>
    80005adc:	03ccd793          	srli	a5,s9,0x3c
    80005ae0:	00fd87b3          	add	a5,s11,a5
    80005ae4:	0007c503          	lbu	a0,0(a5)
    80005ae8:	fffd0d1b          	addiw	s10,s10,-1
    80005aec:	004c9c93          	slli	s9,s9,0x4
    80005af0:	00000097          	auipc	ra,0x0
    80005af4:	974080e7          	jalr	-1676(ra) # 80005464 <consputc>
    80005af8:	fe0d12e3          	bnez	s10,80005adc <__printf+0x494>
    80005afc:	f8dff06f          	j	80005a88 <__printf+0x440>
    80005b00:	f7843783          	ld	a5,-136(s0)
    80005b04:	0007bc83          	ld	s9,0(a5)
    80005b08:	00878793          	addi	a5,a5,8
    80005b0c:	f6f43c23          	sd	a5,-136(s0)
    80005b10:	000c9a63          	bnez	s9,80005b24 <__printf+0x4dc>
    80005b14:	1080006f          	j	80005c1c <__printf+0x5d4>
    80005b18:	001c8c93          	addi	s9,s9,1
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	948080e7          	jalr	-1720(ra) # 80005464 <consputc>
    80005b24:	000cc503          	lbu	a0,0(s9)
    80005b28:	fe0518e3          	bnez	a0,80005b18 <__printf+0x4d0>
    80005b2c:	f5dff06f          	j	80005a88 <__printf+0x440>
    80005b30:	02500513          	li	a0,37
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	930080e7          	jalr	-1744(ra) # 80005464 <consputc>
    80005b3c:	000c8513          	mv	a0,s9
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	924080e7          	jalr	-1756(ra) # 80005464 <consputc>
    80005b48:	f41ff06f          	j	80005a88 <__printf+0x440>
    80005b4c:	02500513          	li	a0,37
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	914080e7          	jalr	-1772(ra) # 80005464 <consputc>
    80005b58:	f31ff06f          	j	80005a88 <__printf+0x440>
    80005b5c:	00030513          	mv	a0,t1
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	7bc080e7          	jalr	1980(ra) # 8000631c <acquire>
    80005b68:	b4dff06f          	j	800056b4 <__printf+0x6c>
    80005b6c:	40c0053b          	negw	a0,a2
    80005b70:	00a00713          	li	a4,10
    80005b74:	02e576bb          	remuw	a3,a0,a4
    80005b78:	00002d97          	auipc	s11,0x2
    80005b7c:	828d8d93          	addi	s11,s11,-2008 # 800073a0 <digits>
    80005b80:	ff700593          	li	a1,-9
    80005b84:	02069693          	slli	a3,a3,0x20
    80005b88:	0206d693          	srli	a3,a3,0x20
    80005b8c:	00dd86b3          	add	a3,s11,a3
    80005b90:	0006c683          	lbu	a3,0(a3)
    80005b94:	02e557bb          	divuw	a5,a0,a4
    80005b98:	f8d40023          	sb	a3,-128(s0)
    80005b9c:	10b65e63          	bge	a2,a1,80005cb8 <__printf+0x670>
    80005ba0:	06300593          	li	a1,99
    80005ba4:	02e7f6bb          	remuw	a3,a5,a4
    80005ba8:	02069693          	slli	a3,a3,0x20
    80005bac:	0206d693          	srli	a3,a3,0x20
    80005bb0:	00dd86b3          	add	a3,s11,a3
    80005bb4:	0006c683          	lbu	a3,0(a3)
    80005bb8:	02e7d73b          	divuw	a4,a5,a4
    80005bbc:	00200793          	li	a5,2
    80005bc0:	f8d400a3          	sb	a3,-127(s0)
    80005bc4:	bca5ece3          	bltu	a1,a0,8000579c <__printf+0x154>
    80005bc8:	ce5ff06f          	j	800058ac <__printf+0x264>
    80005bcc:	40e007bb          	negw	a5,a4
    80005bd0:	00001d97          	auipc	s11,0x1
    80005bd4:	7d0d8d93          	addi	s11,s11,2000 # 800073a0 <digits>
    80005bd8:	00f7f693          	andi	a3,a5,15
    80005bdc:	00dd86b3          	add	a3,s11,a3
    80005be0:	0006c583          	lbu	a1,0(a3)
    80005be4:	ff100613          	li	a2,-15
    80005be8:	0047d69b          	srliw	a3,a5,0x4
    80005bec:	f8b40023          	sb	a1,-128(s0)
    80005bf0:	0047d59b          	srliw	a1,a5,0x4
    80005bf4:	0ac75e63          	bge	a4,a2,80005cb0 <__printf+0x668>
    80005bf8:	00f6f693          	andi	a3,a3,15
    80005bfc:	00dd86b3          	add	a3,s11,a3
    80005c00:	0006c603          	lbu	a2,0(a3)
    80005c04:	00f00693          	li	a3,15
    80005c08:	0087d79b          	srliw	a5,a5,0x8
    80005c0c:	f8c400a3          	sb	a2,-127(s0)
    80005c10:	d8b6e4e3          	bltu	a3,a1,80005998 <__printf+0x350>
    80005c14:	00200793          	li	a5,2
    80005c18:	e2dff06f          	j	80005a44 <__printf+0x3fc>
    80005c1c:	00001c97          	auipc	s9,0x1
    80005c20:	764c8c93          	addi	s9,s9,1892 # 80007380 <CONSOLE_STATUS+0x370>
    80005c24:	02800513          	li	a0,40
    80005c28:	ef1ff06f          	j	80005b18 <__printf+0x4d0>
    80005c2c:	00700793          	li	a5,7
    80005c30:	00600c93          	li	s9,6
    80005c34:	e0dff06f          	j	80005a40 <__printf+0x3f8>
    80005c38:	00700793          	li	a5,7
    80005c3c:	00600c93          	li	s9,6
    80005c40:	c69ff06f          	j	800058a8 <__printf+0x260>
    80005c44:	00300793          	li	a5,3
    80005c48:	00200c93          	li	s9,2
    80005c4c:	c5dff06f          	j	800058a8 <__printf+0x260>
    80005c50:	00300793          	li	a5,3
    80005c54:	00200c93          	li	s9,2
    80005c58:	de9ff06f          	j	80005a40 <__printf+0x3f8>
    80005c5c:	00400793          	li	a5,4
    80005c60:	00300c93          	li	s9,3
    80005c64:	dddff06f          	j	80005a40 <__printf+0x3f8>
    80005c68:	00400793          	li	a5,4
    80005c6c:	00300c93          	li	s9,3
    80005c70:	c39ff06f          	j	800058a8 <__printf+0x260>
    80005c74:	00500793          	li	a5,5
    80005c78:	00400c93          	li	s9,4
    80005c7c:	c2dff06f          	j	800058a8 <__printf+0x260>
    80005c80:	00500793          	li	a5,5
    80005c84:	00400c93          	li	s9,4
    80005c88:	db9ff06f          	j	80005a40 <__printf+0x3f8>
    80005c8c:	00600793          	li	a5,6
    80005c90:	00500c93          	li	s9,5
    80005c94:	dadff06f          	j	80005a40 <__printf+0x3f8>
    80005c98:	00600793          	li	a5,6
    80005c9c:	00500c93          	li	s9,5
    80005ca0:	c09ff06f          	j	800058a8 <__printf+0x260>
    80005ca4:	00800793          	li	a5,8
    80005ca8:	00700c93          	li	s9,7
    80005cac:	bfdff06f          	j	800058a8 <__printf+0x260>
    80005cb0:	00100793          	li	a5,1
    80005cb4:	d91ff06f          	j	80005a44 <__printf+0x3fc>
    80005cb8:	00100793          	li	a5,1
    80005cbc:	bf1ff06f          	j	800058ac <__printf+0x264>
    80005cc0:	00900793          	li	a5,9
    80005cc4:	00800c93          	li	s9,8
    80005cc8:	be1ff06f          	j	800058a8 <__printf+0x260>
    80005ccc:	00001517          	auipc	a0,0x1
    80005cd0:	6bc50513          	addi	a0,a0,1724 # 80007388 <CONSOLE_STATUS+0x378>
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	918080e7          	jalr	-1768(ra) # 800055ec <panic>

0000000080005cdc <printfinit>:
    80005cdc:	fe010113          	addi	sp,sp,-32
    80005ce0:	00813823          	sd	s0,16(sp)
    80005ce4:	00913423          	sd	s1,8(sp)
    80005ce8:	00113c23          	sd	ra,24(sp)
    80005cec:	02010413          	addi	s0,sp,32
    80005cf0:	00008497          	auipc	s1,0x8
    80005cf4:	63048493          	addi	s1,s1,1584 # 8000e320 <pr>
    80005cf8:	00048513          	mv	a0,s1
    80005cfc:	00001597          	auipc	a1,0x1
    80005d00:	69c58593          	addi	a1,a1,1692 # 80007398 <CONSOLE_STATUS+0x388>
    80005d04:	00000097          	auipc	ra,0x0
    80005d08:	5f4080e7          	jalr	1524(ra) # 800062f8 <initlock>
    80005d0c:	01813083          	ld	ra,24(sp)
    80005d10:	01013403          	ld	s0,16(sp)
    80005d14:	0004ac23          	sw	zero,24(s1)
    80005d18:	00813483          	ld	s1,8(sp)
    80005d1c:	02010113          	addi	sp,sp,32
    80005d20:	00008067          	ret

0000000080005d24 <uartinit>:
    80005d24:	ff010113          	addi	sp,sp,-16
    80005d28:	00813423          	sd	s0,8(sp)
    80005d2c:	01010413          	addi	s0,sp,16
    80005d30:	100007b7          	lui	a5,0x10000
    80005d34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005d38:	f8000713          	li	a4,-128
    80005d3c:	00e781a3          	sb	a4,3(a5)
    80005d40:	00300713          	li	a4,3
    80005d44:	00e78023          	sb	a4,0(a5)
    80005d48:	000780a3          	sb	zero,1(a5)
    80005d4c:	00e781a3          	sb	a4,3(a5)
    80005d50:	00700693          	li	a3,7
    80005d54:	00d78123          	sb	a3,2(a5)
    80005d58:	00e780a3          	sb	a4,1(a5)
    80005d5c:	00813403          	ld	s0,8(sp)
    80005d60:	01010113          	addi	sp,sp,16
    80005d64:	00008067          	ret

0000000080005d68 <uartputc>:
    80005d68:	00003797          	auipc	a5,0x3
    80005d6c:	2b07a783          	lw	a5,688(a5) # 80009018 <panicked>
    80005d70:	00078463          	beqz	a5,80005d78 <uartputc+0x10>
    80005d74:	0000006f          	j	80005d74 <uartputc+0xc>
    80005d78:	fd010113          	addi	sp,sp,-48
    80005d7c:	02813023          	sd	s0,32(sp)
    80005d80:	00913c23          	sd	s1,24(sp)
    80005d84:	01213823          	sd	s2,16(sp)
    80005d88:	01313423          	sd	s3,8(sp)
    80005d8c:	02113423          	sd	ra,40(sp)
    80005d90:	03010413          	addi	s0,sp,48
    80005d94:	00003917          	auipc	s2,0x3
    80005d98:	28c90913          	addi	s2,s2,652 # 80009020 <uart_tx_r>
    80005d9c:	00093783          	ld	a5,0(s2)
    80005da0:	00003497          	auipc	s1,0x3
    80005da4:	28848493          	addi	s1,s1,648 # 80009028 <uart_tx_w>
    80005da8:	0004b703          	ld	a4,0(s1)
    80005dac:	02078693          	addi	a3,a5,32
    80005db0:	00050993          	mv	s3,a0
    80005db4:	02e69c63          	bne	a3,a4,80005dec <uartputc+0x84>
    80005db8:	00001097          	auipc	ra,0x1
    80005dbc:	834080e7          	jalr	-1996(ra) # 800065ec <push_on>
    80005dc0:	00093783          	ld	a5,0(s2)
    80005dc4:	0004b703          	ld	a4,0(s1)
    80005dc8:	02078793          	addi	a5,a5,32
    80005dcc:	00e79463          	bne	a5,a4,80005dd4 <uartputc+0x6c>
    80005dd0:	0000006f          	j	80005dd0 <uartputc+0x68>
    80005dd4:	00001097          	auipc	ra,0x1
    80005dd8:	88c080e7          	jalr	-1908(ra) # 80006660 <pop_on>
    80005ddc:	00093783          	ld	a5,0(s2)
    80005de0:	0004b703          	ld	a4,0(s1)
    80005de4:	02078693          	addi	a3,a5,32
    80005de8:	fce688e3          	beq	a3,a4,80005db8 <uartputc+0x50>
    80005dec:	01f77693          	andi	a3,a4,31
    80005df0:	00008597          	auipc	a1,0x8
    80005df4:	55058593          	addi	a1,a1,1360 # 8000e340 <uart_tx_buf>
    80005df8:	00d586b3          	add	a3,a1,a3
    80005dfc:	00170713          	addi	a4,a4,1
    80005e00:	01368023          	sb	s3,0(a3)
    80005e04:	00e4b023          	sd	a4,0(s1)
    80005e08:	10000637          	lui	a2,0x10000
    80005e0c:	02f71063          	bne	a4,a5,80005e2c <uartputc+0xc4>
    80005e10:	0340006f          	j	80005e44 <uartputc+0xdc>
    80005e14:	00074703          	lbu	a4,0(a4)
    80005e18:	00f93023          	sd	a5,0(s2)
    80005e1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005e20:	00093783          	ld	a5,0(s2)
    80005e24:	0004b703          	ld	a4,0(s1)
    80005e28:	00f70e63          	beq	a4,a5,80005e44 <uartputc+0xdc>
    80005e2c:	00564683          	lbu	a3,5(a2)
    80005e30:	01f7f713          	andi	a4,a5,31
    80005e34:	00e58733          	add	a4,a1,a4
    80005e38:	0206f693          	andi	a3,a3,32
    80005e3c:	00178793          	addi	a5,a5,1
    80005e40:	fc069ae3          	bnez	a3,80005e14 <uartputc+0xac>
    80005e44:	02813083          	ld	ra,40(sp)
    80005e48:	02013403          	ld	s0,32(sp)
    80005e4c:	01813483          	ld	s1,24(sp)
    80005e50:	01013903          	ld	s2,16(sp)
    80005e54:	00813983          	ld	s3,8(sp)
    80005e58:	03010113          	addi	sp,sp,48
    80005e5c:	00008067          	ret

0000000080005e60 <uartputc_sync>:
    80005e60:	ff010113          	addi	sp,sp,-16
    80005e64:	00813423          	sd	s0,8(sp)
    80005e68:	01010413          	addi	s0,sp,16
    80005e6c:	00003717          	auipc	a4,0x3
    80005e70:	1ac72703          	lw	a4,428(a4) # 80009018 <panicked>
    80005e74:	02071663          	bnez	a4,80005ea0 <uartputc_sync+0x40>
    80005e78:	00050793          	mv	a5,a0
    80005e7c:	100006b7          	lui	a3,0x10000
    80005e80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005e84:	02077713          	andi	a4,a4,32
    80005e88:	fe070ce3          	beqz	a4,80005e80 <uartputc_sync+0x20>
    80005e8c:	0ff7f793          	andi	a5,a5,255
    80005e90:	00f68023          	sb	a5,0(a3)
    80005e94:	00813403          	ld	s0,8(sp)
    80005e98:	01010113          	addi	sp,sp,16
    80005e9c:	00008067          	ret
    80005ea0:	0000006f          	j	80005ea0 <uartputc_sync+0x40>

0000000080005ea4 <uartstart>:
    80005ea4:	ff010113          	addi	sp,sp,-16
    80005ea8:	00813423          	sd	s0,8(sp)
    80005eac:	01010413          	addi	s0,sp,16
    80005eb0:	00003617          	auipc	a2,0x3
    80005eb4:	17060613          	addi	a2,a2,368 # 80009020 <uart_tx_r>
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	17050513          	addi	a0,a0,368 # 80009028 <uart_tx_w>
    80005ec0:	00063783          	ld	a5,0(a2)
    80005ec4:	00053703          	ld	a4,0(a0)
    80005ec8:	04f70263          	beq	a4,a5,80005f0c <uartstart+0x68>
    80005ecc:	100005b7          	lui	a1,0x10000
    80005ed0:	00008817          	auipc	a6,0x8
    80005ed4:	47080813          	addi	a6,a6,1136 # 8000e340 <uart_tx_buf>
    80005ed8:	01c0006f          	j	80005ef4 <uartstart+0x50>
    80005edc:	0006c703          	lbu	a4,0(a3)
    80005ee0:	00f63023          	sd	a5,0(a2)
    80005ee4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005ee8:	00063783          	ld	a5,0(a2)
    80005eec:	00053703          	ld	a4,0(a0)
    80005ef0:	00f70e63          	beq	a4,a5,80005f0c <uartstart+0x68>
    80005ef4:	01f7f713          	andi	a4,a5,31
    80005ef8:	00e806b3          	add	a3,a6,a4
    80005efc:	0055c703          	lbu	a4,5(a1)
    80005f00:	00178793          	addi	a5,a5,1
    80005f04:	02077713          	andi	a4,a4,32
    80005f08:	fc071ae3          	bnez	a4,80005edc <uartstart+0x38>
    80005f0c:	00813403          	ld	s0,8(sp)
    80005f10:	01010113          	addi	sp,sp,16
    80005f14:	00008067          	ret

0000000080005f18 <uartgetc>:
    80005f18:	ff010113          	addi	sp,sp,-16
    80005f1c:	00813423          	sd	s0,8(sp)
    80005f20:	01010413          	addi	s0,sp,16
    80005f24:	10000737          	lui	a4,0x10000
    80005f28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005f2c:	0017f793          	andi	a5,a5,1
    80005f30:	00078c63          	beqz	a5,80005f48 <uartgetc+0x30>
    80005f34:	00074503          	lbu	a0,0(a4)
    80005f38:	0ff57513          	andi	a0,a0,255
    80005f3c:	00813403          	ld	s0,8(sp)
    80005f40:	01010113          	addi	sp,sp,16
    80005f44:	00008067          	ret
    80005f48:	fff00513          	li	a0,-1
    80005f4c:	ff1ff06f          	j	80005f3c <uartgetc+0x24>

0000000080005f50 <uartintr>:
    80005f50:	100007b7          	lui	a5,0x10000
    80005f54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005f58:	0017f793          	andi	a5,a5,1
    80005f5c:	0a078463          	beqz	a5,80006004 <uartintr+0xb4>
    80005f60:	fe010113          	addi	sp,sp,-32
    80005f64:	00813823          	sd	s0,16(sp)
    80005f68:	00913423          	sd	s1,8(sp)
    80005f6c:	00113c23          	sd	ra,24(sp)
    80005f70:	02010413          	addi	s0,sp,32
    80005f74:	100004b7          	lui	s1,0x10000
    80005f78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005f7c:	0ff57513          	andi	a0,a0,255
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	534080e7          	jalr	1332(ra) # 800054b4 <consoleintr>
    80005f88:	0054c783          	lbu	a5,5(s1)
    80005f8c:	0017f793          	andi	a5,a5,1
    80005f90:	fe0794e3          	bnez	a5,80005f78 <uartintr+0x28>
    80005f94:	00003617          	auipc	a2,0x3
    80005f98:	08c60613          	addi	a2,a2,140 # 80009020 <uart_tx_r>
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	08c50513          	addi	a0,a0,140 # 80009028 <uart_tx_w>
    80005fa4:	00063783          	ld	a5,0(a2)
    80005fa8:	00053703          	ld	a4,0(a0)
    80005fac:	04f70263          	beq	a4,a5,80005ff0 <uartintr+0xa0>
    80005fb0:	100005b7          	lui	a1,0x10000
    80005fb4:	00008817          	auipc	a6,0x8
    80005fb8:	38c80813          	addi	a6,a6,908 # 8000e340 <uart_tx_buf>
    80005fbc:	01c0006f          	j	80005fd8 <uartintr+0x88>
    80005fc0:	0006c703          	lbu	a4,0(a3)
    80005fc4:	00f63023          	sd	a5,0(a2)
    80005fc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005fcc:	00063783          	ld	a5,0(a2)
    80005fd0:	00053703          	ld	a4,0(a0)
    80005fd4:	00f70e63          	beq	a4,a5,80005ff0 <uartintr+0xa0>
    80005fd8:	01f7f713          	andi	a4,a5,31
    80005fdc:	00e806b3          	add	a3,a6,a4
    80005fe0:	0055c703          	lbu	a4,5(a1)
    80005fe4:	00178793          	addi	a5,a5,1
    80005fe8:	02077713          	andi	a4,a4,32
    80005fec:	fc071ae3          	bnez	a4,80005fc0 <uartintr+0x70>
    80005ff0:	01813083          	ld	ra,24(sp)
    80005ff4:	01013403          	ld	s0,16(sp)
    80005ff8:	00813483          	ld	s1,8(sp)
    80005ffc:	02010113          	addi	sp,sp,32
    80006000:	00008067          	ret
    80006004:	00003617          	auipc	a2,0x3
    80006008:	01c60613          	addi	a2,a2,28 # 80009020 <uart_tx_r>
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	01c50513          	addi	a0,a0,28 # 80009028 <uart_tx_w>
    80006014:	00063783          	ld	a5,0(a2)
    80006018:	00053703          	ld	a4,0(a0)
    8000601c:	04f70263          	beq	a4,a5,80006060 <uartintr+0x110>
    80006020:	100005b7          	lui	a1,0x10000
    80006024:	00008817          	auipc	a6,0x8
    80006028:	31c80813          	addi	a6,a6,796 # 8000e340 <uart_tx_buf>
    8000602c:	01c0006f          	j	80006048 <uartintr+0xf8>
    80006030:	0006c703          	lbu	a4,0(a3)
    80006034:	00f63023          	sd	a5,0(a2)
    80006038:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000603c:	00063783          	ld	a5,0(a2)
    80006040:	00053703          	ld	a4,0(a0)
    80006044:	02f70063          	beq	a4,a5,80006064 <uartintr+0x114>
    80006048:	01f7f713          	andi	a4,a5,31
    8000604c:	00e806b3          	add	a3,a6,a4
    80006050:	0055c703          	lbu	a4,5(a1)
    80006054:	00178793          	addi	a5,a5,1
    80006058:	02077713          	andi	a4,a4,32
    8000605c:	fc071ae3          	bnez	a4,80006030 <uartintr+0xe0>
    80006060:	00008067          	ret
    80006064:	00008067          	ret

0000000080006068 <kinit>:
    80006068:	fc010113          	addi	sp,sp,-64
    8000606c:	02913423          	sd	s1,40(sp)
    80006070:	fffff7b7          	lui	a5,0xfffff
    80006074:	00009497          	auipc	s1,0x9
    80006078:	2eb48493          	addi	s1,s1,747 # 8000f35f <end+0xfff>
    8000607c:	02813823          	sd	s0,48(sp)
    80006080:	01313c23          	sd	s3,24(sp)
    80006084:	00f4f4b3          	and	s1,s1,a5
    80006088:	02113c23          	sd	ra,56(sp)
    8000608c:	03213023          	sd	s2,32(sp)
    80006090:	01413823          	sd	s4,16(sp)
    80006094:	01513423          	sd	s5,8(sp)
    80006098:	04010413          	addi	s0,sp,64
    8000609c:	000017b7          	lui	a5,0x1
    800060a0:	01100993          	li	s3,17
    800060a4:	00f487b3          	add	a5,s1,a5
    800060a8:	01b99993          	slli	s3,s3,0x1b
    800060ac:	06f9e063          	bltu	s3,a5,8000610c <kinit+0xa4>
    800060b0:	00008a97          	auipc	s5,0x8
    800060b4:	2b0a8a93          	addi	s5,s5,688 # 8000e360 <end>
    800060b8:	0754ec63          	bltu	s1,s5,80006130 <kinit+0xc8>
    800060bc:	0734fa63          	bgeu	s1,s3,80006130 <kinit+0xc8>
    800060c0:	00088a37          	lui	s4,0x88
    800060c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800060c8:	00003917          	auipc	s2,0x3
    800060cc:	f6890913          	addi	s2,s2,-152 # 80009030 <kmem>
    800060d0:	00ca1a13          	slli	s4,s4,0xc
    800060d4:	0140006f          	j	800060e8 <kinit+0x80>
    800060d8:	000017b7          	lui	a5,0x1
    800060dc:	00f484b3          	add	s1,s1,a5
    800060e0:	0554e863          	bltu	s1,s5,80006130 <kinit+0xc8>
    800060e4:	0534f663          	bgeu	s1,s3,80006130 <kinit+0xc8>
    800060e8:	00001637          	lui	a2,0x1
    800060ec:	00100593          	li	a1,1
    800060f0:	00048513          	mv	a0,s1
    800060f4:	00000097          	auipc	ra,0x0
    800060f8:	5e4080e7          	jalr	1508(ra) # 800066d8 <__memset>
    800060fc:	00093783          	ld	a5,0(s2)
    80006100:	00f4b023          	sd	a5,0(s1)
    80006104:	00993023          	sd	s1,0(s2)
    80006108:	fd4498e3          	bne	s1,s4,800060d8 <kinit+0x70>
    8000610c:	03813083          	ld	ra,56(sp)
    80006110:	03013403          	ld	s0,48(sp)
    80006114:	02813483          	ld	s1,40(sp)
    80006118:	02013903          	ld	s2,32(sp)
    8000611c:	01813983          	ld	s3,24(sp)
    80006120:	01013a03          	ld	s4,16(sp)
    80006124:	00813a83          	ld	s5,8(sp)
    80006128:	04010113          	addi	sp,sp,64
    8000612c:	00008067          	ret
    80006130:	00001517          	auipc	a0,0x1
    80006134:	28850513          	addi	a0,a0,648 # 800073b8 <digits+0x18>
    80006138:	fffff097          	auipc	ra,0xfffff
    8000613c:	4b4080e7          	jalr	1204(ra) # 800055ec <panic>

0000000080006140 <freerange>:
    80006140:	fc010113          	addi	sp,sp,-64
    80006144:	000017b7          	lui	a5,0x1
    80006148:	02913423          	sd	s1,40(sp)
    8000614c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006150:	009504b3          	add	s1,a0,s1
    80006154:	fffff537          	lui	a0,0xfffff
    80006158:	02813823          	sd	s0,48(sp)
    8000615c:	02113c23          	sd	ra,56(sp)
    80006160:	03213023          	sd	s2,32(sp)
    80006164:	01313c23          	sd	s3,24(sp)
    80006168:	01413823          	sd	s4,16(sp)
    8000616c:	01513423          	sd	s5,8(sp)
    80006170:	01613023          	sd	s6,0(sp)
    80006174:	04010413          	addi	s0,sp,64
    80006178:	00a4f4b3          	and	s1,s1,a0
    8000617c:	00f487b3          	add	a5,s1,a5
    80006180:	06f5e463          	bltu	a1,a5,800061e8 <freerange+0xa8>
    80006184:	00008a97          	auipc	s5,0x8
    80006188:	1dca8a93          	addi	s5,s5,476 # 8000e360 <end>
    8000618c:	0954e263          	bltu	s1,s5,80006210 <freerange+0xd0>
    80006190:	01100993          	li	s3,17
    80006194:	01b99993          	slli	s3,s3,0x1b
    80006198:	0734fc63          	bgeu	s1,s3,80006210 <freerange+0xd0>
    8000619c:	00058a13          	mv	s4,a1
    800061a0:	00003917          	auipc	s2,0x3
    800061a4:	e9090913          	addi	s2,s2,-368 # 80009030 <kmem>
    800061a8:	00002b37          	lui	s6,0x2
    800061ac:	0140006f          	j	800061c0 <freerange+0x80>
    800061b0:	000017b7          	lui	a5,0x1
    800061b4:	00f484b3          	add	s1,s1,a5
    800061b8:	0554ec63          	bltu	s1,s5,80006210 <freerange+0xd0>
    800061bc:	0534fa63          	bgeu	s1,s3,80006210 <freerange+0xd0>
    800061c0:	00001637          	lui	a2,0x1
    800061c4:	00100593          	li	a1,1
    800061c8:	00048513          	mv	a0,s1
    800061cc:	00000097          	auipc	ra,0x0
    800061d0:	50c080e7          	jalr	1292(ra) # 800066d8 <__memset>
    800061d4:	00093703          	ld	a4,0(s2)
    800061d8:	016487b3          	add	a5,s1,s6
    800061dc:	00e4b023          	sd	a4,0(s1)
    800061e0:	00993023          	sd	s1,0(s2)
    800061e4:	fcfa76e3          	bgeu	s4,a5,800061b0 <freerange+0x70>
    800061e8:	03813083          	ld	ra,56(sp)
    800061ec:	03013403          	ld	s0,48(sp)
    800061f0:	02813483          	ld	s1,40(sp)
    800061f4:	02013903          	ld	s2,32(sp)
    800061f8:	01813983          	ld	s3,24(sp)
    800061fc:	01013a03          	ld	s4,16(sp)
    80006200:	00813a83          	ld	s5,8(sp)
    80006204:	00013b03          	ld	s6,0(sp)
    80006208:	04010113          	addi	sp,sp,64
    8000620c:	00008067          	ret
    80006210:	00001517          	auipc	a0,0x1
    80006214:	1a850513          	addi	a0,a0,424 # 800073b8 <digits+0x18>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	3d4080e7          	jalr	980(ra) # 800055ec <panic>

0000000080006220 <kfree>:
    80006220:	fe010113          	addi	sp,sp,-32
    80006224:	00813823          	sd	s0,16(sp)
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	00913423          	sd	s1,8(sp)
    80006230:	02010413          	addi	s0,sp,32
    80006234:	03451793          	slli	a5,a0,0x34
    80006238:	04079c63          	bnez	a5,80006290 <kfree+0x70>
    8000623c:	00008797          	auipc	a5,0x8
    80006240:	12478793          	addi	a5,a5,292 # 8000e360 <end>
    80006244:	00050493          	mv	s1,a0
    80006248:	04f56463          	bltu	a0,a5,80006290 <kfree+0x70>
    8000624c:	01100793          	li	a5,17
    80006250:	01b79793          	slli	a5,a5,0x1b
    80006254:	02f57e63          	bgeu	a0,a5,80006290 <kfree+0x70>
    80006258:	00001637          	lui	a2,0x1
    8000625c:	00100593          	li	a1,1
    80006260:	00000097          	auipc	ra,0x0
    80006264:	478080e7          	jalr	1144(ra) # 800066d8 <__memset>
    80006268:	00003797          	auipc	a5,0x3
    8000626c:	dc878793          	addi	a5,a5,-568 # 80009030 <kmem>
    80006270:	0007b703          	ld	a4,0(a5)
    80006274:	01813083          	ld	ra,24(sp)
    80006278:	01013403          	ld	s0,16(sp)
    8000627c:	00e4b023          	sd	a4,0(s1)
    80006280:	0097b023          	sd	s1,0(a5)
    80006284:	00813483          	ld	s1,8(sp)
    80006288:	02010113          	addi	sp,sp,32
    8000628c:	00008067          	ret
    80006290:	00001517          	auipc	a0,0x1
    80006294:	12850513          	addi	a0,a0,296 # 800073b8 <digits+0x18>
    80006298:	fffff097          	auipc	ra,0xfffff
    8000629c:	354080e7          	jalr	852(ra) # 800055ec <panic>

00000000800062a0 <kalloc>:
    800062a0:	fe010113          	addi	sp,sp,-32
    800062a4:	00813823          	sd	s0,16(sp)
    800062a8:	00913423          	sd	s1,8(sp)
    800062ac:	00113c23          	sd	ra,24(sp)
    800062b0:	02010413          	addi	s0,sp,32
    800062b4:	00003797          	auipc	a5,0x3
    800062b8:	d7c78793          	addi	a5,a5,-644 # 80009030 <kmem>
    800062bc:	0007b483          	ld	s1,0(a5)
    800062c0:	02048063          	beqz	s1,800062e0 <kalloc+0x40>
    800062c4:	0004b703          	ld	a4,0(s1)
    800062c8:	00001637          	lui	a2,0x1
    800062cc:	00500593          	li	a1,5
    800062d0:	00048513          	mv	a0,s1
    800062d4:	00e7b023          	sd	a4,0(a5)
    800062d8:	00000097          	auipc	ra,0x0
    800062dc:	400080e7          	jalr	1024(ra) # 800066d8 <__memset>
    800062e0:	01813083          	ld	ra,24(sp)
    800062e4:	01013403          	ld	s0,16(sp)
    800062e8:	00048513          	mv	a0,s1
    800062ec:	00813483          	ld	s1,8(sp)
    800062f0:	02010113          	addi	sp,sp,32
    800062f4:	00008067          	ret

00000000800062f8 <initlock>:
    800062f8:	ff010113          	addi	sp,sp,-16
    800062fc:	00813423          	sd	s0,8(sp)
    80006300:	01010413          	addi	s0,sp,16
    80006304:	00813403          	ld	s0,8(sp)
    80006308:	00b53423          	sd	a1,8(a0)
    8000630c:	00052023          	sw	zero,0(a0)
    80006310:	00053823          	sd	zero,16(a0)
    80006314:	01010113          	addi	sp,sp,16
    80006318:	00008067          	ret

000000008000631c <acquire>:
    8000631c:	fe010113          	addi	sp,sp,-32
    80006320:	00813823          	sd	s0,16(sp)
    80006324:	00913423          	sd	s1,8(sp)
    80006328:	00113c23          	sd	ra,24(sp)
    8000632c:	01213023          	sd	s2,0(sp)
    80006330:	02010413          	addi	s0,sp,32
    80006334:	00050493          	mv	s1,a0
    80006338:	10002973          	csrr	s2,sstatus
    8000633c:	100027f3          	csrr	a5,sstatus
    80006340:	ffd7f793          	andi	a5,a5,-3
    80006344:	10079073          	csrw	sstatus,a5
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	8e4080e7          	jalr	-1820(ra) # 80004c2c <mycpu>
    80006350:	07852783          	lw	a5,120(a0)
    80006354:	06078e63          	beqz	a5,800063d0 <acquire+0xb4>
    80006358:	fffff097          	auipc	ra,0xfffff
    8000635c:	8d4080e7          	jalr	-1836(ra) # 80004c2c <mycpu>
    80006360:	07852783          	lw	a5,120(a0)
    80006364:	0004a703          	lw	a4,0(s1)
    80006368:	0017879b          	addiw	a5,a5,1
    8000636c:	06f52c23          	sw	a5,120(a0)
    80006370:	04071063          	bnez	a4,800063b0 <acquire+0x94>
    80006374:	00100713          	li	a4,1
    80006378:	00070793          	mv	a5,a4
    8000637c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006380:	0007879b          	sext.w	a5,a5
    80006384:	fe079ae3          	bnez	a5,80006378 <acquire+0x5c>
    80006388:	0ff0000f          	fence
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	8a0080e7          	jalr	-1888(ra) # 80004c2c <mycpu>
    80006394:	01813083          	ld	ra,24(sp)
    80006398:	01013403          	ld	s0,16(sp)
    8000639c:	00a4b823          	sd	a0,16(s1)
    800063a0:	00013903          	ld	s2,0(sp)
    800063a4:	00813483          	ld	s1,8(sp)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00008067          	ret
    800063b0:	0104b903          	ld	s2,16(s1)
    800063b4:	fffff097          	auipc	ra,0xfffff
    800063b8:	878080e7          	jalr	-1928(ra) # 80004c2c <mycpu>
    800063bc:	faa91ce3          	bne	s2,a0,80006374 <acquire+0x58>
    800063c0:	00001517          	auipc	a0,0x1
    800063c4:	00050513          	mv	a0,a0
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	224080e7          	jalr	548(ra) # 800055ec <panic>
    800063d0:	00195913          	srli	s2,s2,0x1
    800063d4:	fffff097          	auipc	ra,0xfffff
    800063d8:	858080e7          	jalr	-1960(ra) # 80004c2c <mycpu>
    800063dc:	00197913          	andi	s2,s2,1
    800063e0:	07252e23          	sw	s2,124(a0) # 8000743c <digits+0x9c>
    800063e4:	f75ff06f          	j	80006358 <acquire+0x3c>

00000000800063e8 <release>:
    800063e8:	fe010113          	addi	sp,sp,-32
    800063ec:	00813823          	sd	s0,16(sp)
    800063f0:	00113c23          	sd	ra,24(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	01213023          	sd	s2,0(sp)
    800063fc:	02010413          	addi	s0,sp,32
    80006400:	00052783          	lw	a5,0(a0)
    80006404:	00079a63          	bnez	a5,80006418 <release+0x30>
    80006408:	00001517          	auipc	a0,0x1
    8000640c:	fc050513          	addi	a0,a0,-64 # 800073c8 <digits+0x28>
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	1dc080e7          	jalr	476(ra) # 800055ec <panic>
    80006418:	01053903          	ld	s2,16(a0)
    8000641c:	00050493          	mv	s1,a0
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	80c080e7          	jalr	-2036(ra) # 80004c2c <mycpu>
    80006428:	fea910e3          	bne	s2,a0,80006408 <release+0x20>
    8000642c:	0004b823          	sd	zero,16(s1)
    80006430:	0ff0000f          	fence
    80006434:	0f50000f          	fence	iorw,ow
    80006438:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000643c:	ffffe097          	auipc	ra,0xffffe
    80006440:	7f0080e7          	jalr	2032(ra) # 80004c2c <mycpu>
    80006444:	100027f3          	csrr	a5,sstatus
    80006448:	0027f793          	andi	a5,a5,2
    8000644c:	04079a63          	bnez	a5,800064a0 <release+0xb8>
    80006450:	07852783          	lw	a5,120(a0)
    80006454:	02f05e63          	blez	a5,80006490 <release+0xa8>
    80006458:	fff7871b          	addiw	a4,a5,-1
    8000645c:	06e52c23          	sw	a4,120(a0)
    80006460:	00071c63          	bnez	a4,80006478 <release+0x90>
    80006464:	07c52783          	lw	a5,124(a0)
    80006468:	00078863          	beqz	a5,80006478 <release+0x90>
    8000646c:	100027f3          	csrr	a5,sstatus
    80006470:	0027e793          	ori	a5,a5,2
    80006474:	10079073          	csrw	sstatus,a5
    80006478:	01813083          	ld	ra,24(sp)
    8000647c:	01013403          	ld	s0,16(sp)
    80006480:	00813483          	ld	s1,8(sp)
    80006484:	00013903          	ld	s2,0(sp)
    80006488:	02010113          	addi	sp,sp,32
    8000648c:	00008067          	ret
    80006490:	00001517          	auipc	a0,0x1
    80006494:	f5850513          	addi	a0,a0,-168 # 800073e8 <digits+0x48>
    80006498:	fffff097          	auipc	ra,0xfffff
    8000649c:	154080e7          	jalr	340(ra) # 800055ec <panic>
    800064a0:	00001517          	auipc	a0,0x1
    800064a4:	f3050513          	addi	a0,a0,-208 # 800073d0 <digits+0x30>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	144080e7          	jalr	324(ra) # 800055ec <panic>

00000000800064b0 <holding>:
    800064b0:	00052783          	lw	a5,0(a0)
    800064b4:	00079663          	bnez	a5,800064c0 <holding+0x10>
    800064b8:	00000513          	li	a0,0
    800064bc:	00008067          	ret
    800064c0:	fe010113          	addi	sp,sp,-32
    800064c4:	00813823          	sd	s0,16(sp)
    800064c8:	00913423          	sd	s1,8(sp)
    800064cc:	00113c23          	sd	ra,24(sp)
    800064d0:	02010413          	addi	s0,sp,32
    800064d4:	01053483          	ld	s1,16(a0)
    800064d8:	ffffe097          	auipc	ra,0xffffe
    800064dc:	754080e7          	jalr	1876(ra) # 80004c2c <mycpu>
    800064e0:	01813083          	ld	ra,24(sp)
    800064e4:	01013403          	ld	s0,16(sp)
    800064e8:	40a48533          	sub	a0,s1,a0
    800064ec:	00153513          	seqz	a0,a0
    800064f0:	00813483          	ld	s1,8(sp)
    800064f4:	02010113          	addi	sp,sp,32
    800064f8:	00008067          	ret

00000000800064fc <push_off>:
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00813823          	sd	s0,16(sp)
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	02010413          	addi	s0,sp,32
    80006510:	100024f3          	csrr	s1,sstatus
    80006514:	100027f3          	csrr	a5,sstatus
    80006518:	ffd7f793          	andi	a5,a5,-3
    8000651c:	10079073          	csrw	sstatus,a5
    80006520:	ffffe097          	auipc	ra,0xffffe
    80006524:	70c080e7          	jalr	1804(ra) # 80004c2c <mycpu>
    80006528:	07852783          	lw	a5,120(a0)
    8000652c:	02078663          	beqz	a5,80006558 <push_off+0x5c>
    80006530:	ffffe097          	auipc	ra,0xffffe
    80006534:	6fc080e7          	jalr	1788(ra) # 80004c2c <mycpu>
    80006538:	07852783          	lw	a5,120(a0)
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	01013403          	ld	s0,16(sp)
    80006544:	0017879b          	addiw	a5,a5,1
    80006548:	06f52c23          	sw	a5,120(a0)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret
    80006558:	0014d493          	srli	s1,s1,0x1
    8000655c:	ffffe097          	auipc	ra,0xffffe
    80006560:	6d0080e7          	jalr	1744(ra) # 80004c2c <mycpu>
    80006564:	0014f493          	andi	s1,s1,1
    80006568:	06952e23          	sw	s1,124(a0)
    8000656c:	fc5ff06f          	j	80006530 <push_off+0x34>

0000000080006570 <pop_off>:
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00813023          	sd	s0,0(sp)
    80006578:	00113423          	sd	ra,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	ffffe097          	auipc	ra,0xffffe
    80006584:	6ac080e7          	jalr	1708(ra) # 80004c2c <mycpu>
    80006588:	100027f3          	csrr	a5,sstatus
    8000658c:	0027f793          	andi	a5,a5,2
    80006590:	04079663          	bnez	a5,800065dc <pop_off+0x6c>
    80006594:	07852783          	lw	a5,120(a0)
    80006598:	02f05a63          	blez	a5,800065cc <pop_off+0x5c>
    8000659c:	fff7871b          	addiw	a4,a5,-1
    800065a0:	06e52c23          	sw	a4,120(a0)
    800065a4:	00071c63          	bnez	a4,800065bc <pop_off+0x4c>
    800065a8:	07c52783          	lw	a5,124(a0)
    800065ac:	00078863          	beqz	a5,800065bc <pop_off+0x4c>
    800065b0:	100027f3          	csrr	a5,sstatus
    800065b4:	0027e793          	ori	a5,a5,2
    800065b8:	10079073          	csrw	sstatus,a5
    800065bc:	00813083          	ld	ra,8(sp)
    800065c0:	00013403          	ld	s0,0(sp)
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00008067          	ret
    800065cc:	00001517          	auipc	a0,0x1
    800065d0:	e1c50513          	addi	a0,a0,-484 # 800073e8 <digits+0x48>
    800065d4:	fffff097          	auipc	ra,0xfffff
    800065d8:	018080e7          	jalr	24(ra) # 800055ec <panic>
    800065dc:	00001517          	auipc	a0,0x1
    800065e0:	df450513          	addi	a0,a0,-524 # 800073d0 <digits+0x30>
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	008080e7          	jalr	8(ra) # 800055ec <panic>

00000000800065ec <push_on>:
    800065ec:	fe010113          	addi	sp,sp,-32
    800065f0:	00813823          	sd	s0,16(sp)
    800065f4:	00113c23          	sd	ra,24(sp)
    800065f8:	00913423          	sd	s1,8(sp)
    800065fc:	02010413          	addi	s0,sp,32
    80006600:	100024f3          	csrr	s1,sstatus
    80006604:	100027f3          	csrr	a5,sstatus
    80006608:	0027e793          	ori	a5,a5,2
    8000660c:	10079073          	csrw	sstatus,a5
    80006610:	ffffe097          	auipc	ra,0xffffe
    80006614:	61c080e7          	jalr	1564(ra) # 80004c2c <mycpu>
    80006618:	07852783          	lw	a5,120(a0)
    8000661c:	02078663          	beqz	a5,80006648 <push_on+0x5c>
    80006620:	ffffe097          	auipc	ra,0xffffe
    80006624:	60c080e7          	jalr	1548(ra) # 80004c2c <mycpu>
    80006628:	07852783          	lw	a5,120(a0)
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	01013403          	ld	s0,16(sp)
    80006634:	0017879b          	addiw	a5,a5,1
    80006638:	06f52c23          	sw	a5,120(a0)
    8000663c:	00813483          	ld	s1,8(sp)
    80006640:	02010113          	addi	sp,sp,32
    80006644:	00008067          	ret
    80006648:	0014d493          	srli	s1,s1,0x1
    8000664c:	ffffe097          	auipc	ra,0xffffe
    80006650:	5e0080e7          	jalr	1504(ra) # 80004c2c <mycpu>
    80006654:	0014f493          	andi	s1,s1,1
    80006658:	06952e23          	sw	s1,124(a0)
    8000665c:	fc5ff06f          	j	80006620 <push_on+0x34>

0000000080006660 <pop_on>:
    80006660:	ff010113          	addi	sp,sp,-16
    80006664:	00813023          	sd	s0,0(sp)
    80006668:	00113423          	sd	ra,8(sp)
    8000666c:	01010413          	addi	s0,sp,16
    80006670:	ffffe097          	auipc	ra,0xffffe
    80006674:	5bc080e7          	jalr	1468(ra) # 80004c2c <mycpu>
    80006678:	100027f3          	csrr	a5,sstatus
    8000667c:	0027f793          	andi	a5,a5,2
    80006680:	04078463          	beqz	a5,800066c8 <pop_on+0x68>
    80006684:	07852783          	lw	a5,120(a0)
    80006688:	02f05863          	blez	a5,800066b8 <pop_on+0x58>
    8000668c:	fff7879b          	addiw	a5,a5,-1
    80006690:	06f52c23          	sw	a5,120(a0)
    80006694:	07853783          	ld	a5,120(a0)
    80006698:	00079863          	bnez	a5,800066a8 <pop_on+0x48>
    8000669c:	100027f3          	csrr	a5,sstatus
    800066a0:	ffd7f793          	andi	a5,a5,-3
    800066a4:	10079073          	csrw	sstatus,a5
    800066a8:	00813083          	ld	ra,8(sp)
    800066ac:	00013403          	ld	s0,0(sp)
    800066b0:	01010113          	addi	sp,sp,16
    800066b4:	00008067          	ret
    800066b8:	00001517          	auipc	a0,0x1
    800066bc:	d5850513          	addi	a0,a0,-680 # 80007410 <digits+0x70>
    800066c0:	fffff097          	auipc	ra,0xfffff
    800066c4:	f2c080e7          	jalr	-212(ra) # 800055ec <panic>
    800066c8:	00001517          	auipc	a0,0x1
    800066cc:	d2850513          	addi	a0,a0,-728 # 800073f0 <digits+0x50>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	f1c080e7          	jalr	-228(ra) # 800055ec <panic>

00000000800066d8 <__memset>:
    800066d8:	ff010113          	addi	sp,sp,-16
    800066dc:	00813423          	sd	s0,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	1a060e63          	beqz	a2,800068a0 <__memset+0x1c8>
    800066e8:	40a007b3          	neg	a5,a0
    800066ec:	0077f793          	andi	a5,a5,7
    800066f0:	00778693          	addi	a3,a5,7
    800066f4:	00b00813          	li	a6,11
    800066f8:	0ff5f593          	andi	a1,a1,255
    800066fc:	fff6071b          	addiw	a4,a2,-1
    80006700:	1b06e663          	bltu	a3,a6,800068ac <__memset+0x1d4>
    80006704:	1cd76463          	bltu	a4,a3,800068cc <__memset+0x1f4>
    80006708:	1a078e63          	beqz	a5,800068c4 <__memset+0x1ec>
    8000670c:	00b50023          	sb	a1,0(a0)
    80006710:	00100713          	li	a4,1
    80006714:	1ae78463          	beq	a5,a4,800068bc <__memset+0x1e4>
    80006718:	00b500a3          	sb	a1,1(a0)
    8000671c:	00200713          	li	a4,2
    80006720:	1ae78a63          	beq	a5,a4,800068d4 <__memset+0x1fc>
    80006724:	00b50123          	sb	a1,2(a0)
    80006728:	00300713          	li	a4,3
    8000672c:	18e78463          	beq	a5,a4,800068b4 <__memset+0x1dc>
    80006730:	00b501a3          	sb	a1,3(a0)
    80006734:	00400713          	li	a4,4
    80006738:	1ae78263          	beq	a5,a4,800068dc <__memset+0x204>
    8000673c:	00b50223          	sb	a1,4(a0)
    80006740:	00500713          	li	a4,5
    80006744:	1ae78063          	beq	a5,a4,800068e4 <__memset+0x20c>
    80006748:	00b502a3          	sb	a1,5(a0)
    8000674c:	00700713          	li	a4,7
    80006750:	18e79e63          	bne	a5,a4,800068ec <__memset+0x214>
    80006754:	00b50323          	sb	a1,6(a0)
    80006758:	00700e93          	li	t4,7
    8000675c:	00859713          	slli	a4,a1,0x8
    80006760:	00e5e733          	or	a4,a1,a4
    80006764:	01059e13          	slli	t3,a1,0x10
    80006768:	01c76e33          	or	t3,a4,t3
    8000676c:	01859313          	slli	t1,a1,0x18
    80006770:	006e6333          	or	t1,t3,t1
    80006774:	02059893          	slli	a7,a1,0x20
    80006778:	40f60e3b          	subw	t3,a2,a5
    8000677c:	011368b3          	or	a7,t1,a7
    80006780:	02859813          	slli	a6,a1,0x28
    80006784:	0108e833          	or	a6,a7,a6
    80006788:	03059693          	slli	a3,a1,0x30
    8000678c:	003e589b          	srliw	a7,t3,0x3
    80006790:	00d866b3          	or	a3,a6,a3
    80006794:	03859713          	slli	a4,a1,0x38
    80006798:	00389813          	slli	a6,a7,0x3
    8000679c:	00f507b3          	add	a5,a0,a5
    800067a0:	00e6e733          	or	a4,a3,a4
    800067a4:	000e089b          	sext.w	a7,t3
    800067a8:	00f806b3          	add	a3,a6,a5
    800067ac:	00e7b023          	sd	a4,0(a5)
    800067b0:	00878793          	addi	a5,a5,8
    800067b4:	fed79ce3          	bne	a5,a3,800067ac <__memset+0xd4>
    800067b8:	ff8e7793          	andi	a5,t3,-8
    800067bc:	0007871b          	sext.w	a4,a5
    800067c0:	01d787bb          	addw	a5,a5,t4
    800067c4:	0ce88e63          	beq	a7,a4,800068a0 <__memset+0x1c8>
    800067c8:	00f50733          	add	a4,a0,a5
    800067cc:	00b70023          	sb	a1,0(a4)
    800067d0:	0017871b          	addiw	a4,a5,1
    800067d4:	0cc77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    800067d8:	00e50733          	add	a4,a0,a4
    800067dc:	00b70023          	sb	a1,0(a4)
    800067e0:	0027871b          	addiw	a4,a5,2
    800067e4:	0ac77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    800067e8:	00e50733          	add	a4,a0,a4
    800067ec:	00b70023          	sb	a1,0(a4)
    800067f0:	0037871b          	addiw	a4,a5,3
    800067f4:	0ac77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    800067f8:	00e50733          	add	a4,a0,a4
    800067fc:	00b70023          	sb	a1,0(a4)
    80006800:	0047871b          	addiw	a4,a5,4
    80006804:	08c77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006808:	00e50733          	add	a4,a0,a4
    8000680c:	00b70023          	sb	a1,0(a4)
    80006810:	0057871b          	addiw	a4,a5,5
    80006814:	08c77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006818:	00e50733          	add	a4,a0,a4
    8000681c:	00b70023          	sb	a1,0(a4)
    80006820:	0067871b          	addiw	a4,a5,6
    80006824:	06c77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006828:	00e50733          	add	a4,a0,a4
    8000682c:	00b70023          	sb	a1,0(a4)
    80006830:	0077871b          	addiw	a4,a5,7
    80006834:	06c77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006838:	00e50733          	add	a4,a0,a4
    8000683c:	00b70023          	sb	a1,0(a4)
    80006840:	0087871b          	addiw	a4,a5,8
    80006844:	04c77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006848:	00e50733          	add	a4,a0,a4
    8000684c:	00b70023          	sb	a1,0(a4)
    80006850:	0097871b          	addiw	a4,a5,9
    80006854:	04c77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006858:	00e50733          	add	a4,a0,a4
    8000685c:	00b70023          	sb	a1,0(a4)
    80006860:	00a7871b          	addiw	a4,a5,10
    80006864:	02c77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006868:	00e50733          	add	a4,a0,a4
    8000686c:	00b70023          	sb	a1,0(a4)
    80006870:	00b7871b          	addiw	a4,a5,11
    80006874:	02c77663          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006878:	00e50733          	add	a4,a0,a4
    8000687c:	00b70023          	sb	a1,0(a4)
    80006880:	00c7871b          	addiw	a4,a5,12
    80006884:	00c77e63          	bgeu	a4,a2,800068a0 <__memset+0x1c8>
    80006888:	00e50733          	add	a4,a0,a4
    8000688c:	00b70023          	sb	a1,0(a4)
    80006890:	00d7879b          	addiw	a5,a5,13
    80006894:	00c7f663          	bgeu	a5,a2,800068a0 <__memset+0x1c8>
    80006898:	00f507b3          	add	a5,a0,a5
    8000689c:	00b78023          	sb	a1,0(a5)
    800068a0:	00813403          	ld	s0,8(sp)
    800068a4:	01010113          	addi	sp,sp,16
    800068a8:	00008067          	ret
    800068ac:	00b00693          	li	a3,11
    800068b0:	e55ff06f          	j	80006704 <__memset+0x2c>
    800068b4:	00300e93          	li	t4,3
    800068b8:	ea5ff06f          	j	8000675c <__memset+0x84>
    800068bc:	00100e93          	li	t4,1
    800068c0:	e9dff06f          	j	8000675c <__memset+0x84>
    800068c4:	00000e93          	li	t4,0
    800068c8:	e95ff06f          	j	8000675c <__memset+0x84>
    800068cc:	00000793          	li	a5,0
    800068d0:	ef9ff06f          	j	800067c8 <__memset+0xf0>
    800068d4:	00200e93          	li	t4,2
    800068d8:	e85ff06f          	j	8000675c <__memset+0x84>
    800068dc:	00400e93          	li	t4,4
    800068e0:	e7dff06f          	j	8000675c <__memset+0x84>
    800068e4:	00500e93          	li	t4,5
    800068e8:	e75ff06f          	j	8000675c <__memset+0x84>
    800068ec:	00600e93          	li	t4,6
    800068f0:	e6dff06f          	j	8000675c <__memset+0x84>

00000000800068f4 <__memmove>:
    800068f4:	ff010113          	addi	sp,sp,-16
    800068f8:	00813423          	sd	s0,8(sp)
    800068fc:	01010413          	addi	s0,sp,16
    80006900:	0e060863          	beqz	a2,800069f0 <__memmove+0xfc>
    80006904:	fff6069b          	addiw	a3,a2,-1
    80006908:	0006881b          	sext.w	a6,a3
    8000690c:	0ea5e863          	bltu	a1,a0,800069fc <__memmove+0x108>
    80006910:	00758713          	addi	a4,a1,7
    80006914:	00a5e7b3          	or	a5,a1,a0
    80006918:	40a70733          	sub	a4,a4,a0
    8000691c:	0077f793          	andi	a5,a5,7
    80006920:	00f73713          	sltiu	a4,a4,15
    80006924:	00174713          	xori	a4,a4,1
    80006928:	0017b793          	seqz	a5,a5
    8000692c:	00e7f7b3          	and	a5,a5,a4
    80006930:	10078863          	beqz	a5,80006a40 <__memmove+0x14c>
    80006934:	00900793          	li	a5,9
    80006938:	1107f463          	bgeu	a5,a6,80006a40 <__memmove+0x14c>
    8000693c:	0036581b          	srliw	a6,a2,0x3
    80006940:	fff8081b          	addiw	a6,a6,-1
    80006944:	02081813          	slli	a6,a6,0x20
    80006948:	01d85893          	srli	a7,a6,0x1d
    8000694c:	00858813          	addi	a6,a1,8
    80006950:	00058793          	mv	a5,a1
    80006954:	00050713          	mv	a4,a0
    80006958:	01088833          	add	a6,a7,a6
    8000695c:	0007b883          	ld	a7,0(a5)
    80006960:	00878793          	addi	a5,a5,8
    80006964:	00870713          	addi	a4,a4,8
    80006968:	ff173c23          	sd	a7,-8(a4)
    8000696c:	ff0798e3          	bne	a5,a6,8000695c <__memmove+0x68>
    80006970:	ff867713          	andi	a4,a2,-8
    80006974:	02071793          	slli	a5,a4,0x20
    80006978:	0207d793          	srli	a5,a5,0x20
    8000697c:	00f585b3          	add	a1,a1,a5
    80006980:	40e686bb          	subw	a3,a3,a4
    80006984:	00f507b3          	add	a5,a0,a5
    80006988:	06e60463          	beq	a2,a4,800069f0 <__memmove+0xfc>
    8000698c:	0005c703          	lbu	a4,0(a1)
    80006990:	00e78023          	sb	a4,0(a5)
    80006994:	04068e63          	beqz	a3,800069f0 <__memmove+0xfc>
    80006998:	0015c603          	lbu	a2,1(a1)
    8000699c:	00100713          	li	a4,1
    800069a0:	00c780a3          	sb	a2,1(a5)
    800069a4:	04e68663          	beq	a3,a4,800069f0 <__memmove+0xfc>
    800069a8:	0025c603          	lbu	a2,2(a1)
    800069ac:	00200713          	li	a4,2
    800069b0:	00c78123          	sb	a2,2(a5)
    800069b4:	02e68e63          	beq	a3,a4,800069f0 <__memmove+0xfc>
    800069b8:	0035c603          	lbu	a2,3(a1)
    800069bc:	00300713          	li	a4,3
    800069c0:	00c781a3          	sb	a2,3(a5)
    800069c4:	02e68663          	beq	a3,a4,800069f0 <__memmove+0xfc>
    800069c8:	0045c603          	lbu	a2,4(a1)
    800069cc:	00400713          	li	a4,4
    800069d0:	00c78223          	sb	a2,4(a5)
    800069d4:	00e68e63          	beq	a3,a4,800069f0 <__memmove+0xfc>
    800069d8:	0055c603          	lbu	a2,5(a1)
    800069dc:	00500713          	li	a4,5
    800069e0:	00c782a3          	sb	a2,5(a5)
    800069e4:	00e68663          	beq	a3,a4,800069f0 <__memmove+0xfc>
    800069e8:	0065c703          	lbu	a4,6(a1)
    800069ec:	00e78323          	sb	a4,6(a5)
    800069f0:	00813403          	ld	s0,8(sp)
    800069f4:	01010113          	addi	sp,sp,16
    800069f8:	00008067          	ret
    800069fc:	02061713          	slli	a4,a2,0x20
    80006a00:	02075713          	srli	a4,a4,0x20
    80006a04:	00e587b3          	add	a5,a1,a4
    80006a08:	f0f574e3          	bgeu	a0,a5,80006910 <__memmove+0x1c>
    80006a0c:	02069613          	slli	a2,a3,0x20
    80006a10:	02065613          	srli	a2,a2,0x20
    80006a14:	fff64613          	not	a2,a2
    80006a18:	00e50733          	add	a4,a0,a4
    80006a1c:	00c78633          	add	a2,a5,a2
    80006a20:	fff7c683          	lbu	a3,-1(a5)
    80006a24:	fff78793          	addi	a5,a5,-1
    80006a28:	fff70713          	addi	a4,a4,-1
    80006a2c:	00d70023          	sb	a3,0(a4)
    80006a30:	fec798e3          	bne	a5,a2,80006a20 <__memmove+0x12c>
    80006a34:	00813403          	ld	s0,8(sp)
    80006a38:	01010113          	addi	sp,sp,16
    80006a3c:	00008067          	ret
    80006a40:	02069713          	slli	a4,a3,0x20
    80006a44:	02075713          	srli	a4,a4,0x20
    80006a48:	00170713          	addi	a4,a4,1
    80006a4c:	00e50733          	add	a4,a0,a4
    80006a50:	00050793          	mv	a5,a0
    80006a54:	0005c683          	lbu	a3,0(a1)
    80006a58:	00178793          	addi	a5,a5,1
    80006a5c:	00158593          	addi	a1,a1,1
    80006a60:	fed78fa3          	sb	a3,-1(a5)
    80006a64:	fee798e3          	bne	a5,a4,80006a54 <__memmove+0x160>
    80006a68:	f89ff06f          	j	800069f0 <__memmove+0xfc>
	...
