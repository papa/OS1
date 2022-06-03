
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	ff813103          	ld	sp,-8(sp) # 80009ff8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	739040ef          	jal	ra,80004f54 <start>

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
    80001088:	0c5020ef          	jal	ra,8000394c <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001258 <mem_alloc>:

#ifdef __cplusplus
extern "C"
#endif
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

0000000080001288 <mem_free>:

#ifdef __cplusplus
extern "C"
#endif
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

00000000800012b4 <thread_create>:

#ifdef __cplusplus
extern "C"
#endif
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
    800012e4:	f78080e7          	jalr	-136(ra) # 80001258 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012e8:	04050263          	beqz	a0,8000132c <thread_create+0x78>
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
    80001330:	fe1ff06f          	j	80001310 <thread_create+0x5c>

0000000080001334 <thread_dispatch>:

#ifdef __cplusplus
extern "C"
#endif
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

0000000080001354 <thread_exit>:

#ifdef __cplusplus
extern "C"
#endif
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

000000008000137c <sem_open>:

typedef uint64* sem_t;
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

00000000800013b4 <sem_close>:


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

00000000800013e0 <sem_wait>:

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

000000008000140c <sem_signal>:

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

0000000080001438 <time_sleep>:

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

0000000080001464 <thread_start>:

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

0000000080001490 <thread_make_pcb>:

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
    800014c0:	d9c080e7          	jalr	-612(ra) # 80001258 <mem_alloc>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014c4:	04050263          	beqz	a0,80001508 <thread_make_pcb+0x78>
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
    8000150c:	fe1ff06f          	j	800014ec <thread_make_pcb+0x5c>

0000000080001510 <getc>:

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

0000000080001538 <putc>:

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

000000008000155c <sysCallGetCharOutput>:

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

0000000080001584 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    80001598:	00000493          	li	s1,0
    8000159c:	000027b7          	lui	a5,0x2
    800015a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015a4:	0297c863          	blt	a5,s1,800015d4 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    800015a8:	00007517          	auipc	a0,0x7
    800015ac:	a7850513          	addi	a0,a0,-1416 # 80008020 <CONSOLE_STATUS+0x10>
    800015b0:	00003097          	auipc	ra,0x3
    800015b4:	fc8080e7          	jalr	-56(ra) # 80004578 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00003097          	auipc	ra,0x3
    800015c8:	14c080e7          	jalr	332(ra) # 80004710 <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	fcdff06f          	j	8000159c <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    800015d4:	01813083          	ld	ra,24(sp)
    800015d8:	01013403          	ld	s0,16(sp)
    800015dc:	00813483          	ld	s1,8(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret

00000000800015e8 <_Z4idlePv>:
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
        printString("Idle\n");
    800015f8:	00007517          	auipc	a0,0x7
    800015fc:	a3050513          	addi	a0,a0,-1488 # 80008028 <CONSOLE_STATUS+0x18>
    80001600:	00003097          	auipc	ra,0x3
    80001604:	f78080e7          	jalr	-136(ra) # 80004578 <_Z11printStringPKc>
        thread_dispatch();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	d2c080e7          	jalr	-724(ra) # 80001334 <thread_dispatch>
    while(true)
    80001610:	fe9ff06f          	j	800015f8 <_Z4idlePv+0x10>

0000000080001614 <_Z15thread1FunctionPv>:
{
    80001614:	fe010113          	addi	sp,sp,-32
    80001618:	00113c23          	sd	ra,24(sp)
    8000161c:	00813823          	sd	s0,16(sp)
    80001620:	00913423          	sd	s1,8(sp)
    80001624:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    80001628:	00007517          	auipc	a0,0x7
    8000162c:	a0850513          	addi	a0,a0,-1528 # 80008030 <CONSOLE_STATUS+0x20>
    80001630:	00003097          	auipc	ra,0x3
    80001634:	f48080e7          	jalr	-184(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001638:	00000493          	li	s1,0
    8000163c:	0440006f          	j	80001680 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    80001648:	00007517          	auipc	a0,0x7
    8000164c:	9d850513          	addi	a0,a0,-1576 # 80008020 <CONSOLE_STATUS+0x10>
    80001650:	00003097          	auipc	ra,0x3
    80001654:	f28080e7          	jalr	-216(ra) # 80004578 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00003097          	auipc	ra,0x3
    80001668:	0ac080e7          	jalr	172(ra) # 80004710 <_Z8printIntiii>
        printString("\n");
    8000166c:	00007517          	auipc	a0,0x7
    80001670:	a7450513          	addi	a0,a0,-1420 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001674:	00003097          	auipc	ra,0x3
    80001678:	f04080e7          	jalr	-252(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    8000167c:	00148493          	addi	s1,s1,1
    80001680:	000027b7          	lui	a5,0x2
    80001684:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001688:	0097ec63          	bltu	a5,s1,800016a0 <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    8000168c:	09600793          	li	a5,150
    80001690:	02f4f7b3          	remu	a5,s1,a5
    80001694:	fa079ae3          	bnez	a5,80001648 <_Z15thread1FunctionPv+0x34>
    80001698:	fa0488e3          	beqz	s1,80001648 <_Z15thread1FunctionPv+0x34>
    8000169c:	fa5ff06f          	j	80001640 <_Z15thread1FunctionPv+0x2c>
}
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret

00000000800016b4 <_Z15thread2FunctionPv>:
{
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    800016c8:	00007517          	auipc	a0,0x7
    800016cc:	98050513          	addi	a0,a0,-1664 # 80008048 <CONSOLE_STATUS+0x38>
    800016d0:	00003097          	auipc	ra,0x3
    800016d4:	ea8080e7          	jalr	-344(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016d8:	00000493          	li	s1,0
    800016dc:	0440006f          	j	80001720 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c54080e7          	jalr	-940(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    800016e8:	00007517          	auipc	a0,0x7
    800016ec:	97850513          	addi	a0,a0,-1672 # 80008060 <CONSOLE_STATUS+0x50>
    800016f0:	00003097          	auipc	ra,0x3
    800016f4:	e88080e7          	jalr	-376(ra) # 80004578 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00003097          	auipc	ra,0x3
    80001708:	00c080e7          	jalr	12(ra) # 80004710 <_Z8printIntiii>
        printString("\n");
    8000170c:	00007517          	auipc	a0,0x7
    80001710:	9d450513          	addi	a0,a0,-1580 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001714:	00003097          	auipc	ra,0x3
    80001718:	e64080e7          	jalr	-412(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    8000171c:	00148493          	addi	s1,s1,1
    80001720:	000027b7          	lui	a5,0x2
    80001724:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001728:	0097ec63          	bltu	a5,s1,80001740 <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    8000172c:	03200793          	li	a5,50
    80001730:	02f4f7b3          	remu	a5,s1,a5
    80001734:	fa079ae3          	bnez	a5,800016e8 <_Z15thread2FunctionPv+0x34>
    80001738:	fa0488e3          	beqz	s1,800016e8 <_Z15thread2FunctionPv+0x34>
    8000173c:	fa5ff06f          	j	800016e0 <_Z15thread2FunctionPv+0x2c>
}
    80001740:	01813083          	ld	ra,24(sp)
    80001744:	01013403          	ld	s0,16(sp)
    80001748:	00813483          	ld	s1,8(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_Z20thread2FunctionTest2Pv>:
{
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001768:	00007517          	auipc	a0,0x7
    8000176c:	8e050513          	addi	a0,a0,-1824 # 80008048 <CONSOLE_STATUS+0x38>
    80001770:	00003097          	auipc	ra,0x3
    80001774:	e08080e7          	jalr	-504(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001778:	00000493          	li	s1,0
    8000177c:	0500006f          	j	800017cc <_Z20thread2FunctionTest2Pv+0x78>
            thread_exit();
    80001780:	00000097          	auipc	ra,0x0
    80001784:	bd4080e7          	jalr	-1068(ra) # 80001354 <thread_exit>
    80001788:	0580006f          	j	800017e0 <_Z20thread2FunctionTest2Pv+0x8c>
            thread_dispatch();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	ba8080e7          	jalr	-1112(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    80001794:	00007517          	auipc	a0,0x7
    80001798:	8cc50513          	addi	a0,a0,-1844 # 80008060 <CONSOLE_STATUS+0x50>
    8000179c:	00003097          	auipc	ra,0x3
    800017a0:	ddc080e7          	jalr	-548(ra) # 80004578 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00003097          	auipc	ra,0x3
    800017b4:	f60080e7          	jalr	-160(ra) # 80004710 <_Z8printIntiii>
        printString("\n");
    800017b8:	00007517          	auipc	a0,0x7
    800017bc:	92850513          	addi	a0,a0,-1752 # 800080e0 <CONSOLE_STATUS+0xd0>
    800017c0:	00003097          	auipc	ra,0x3
    800017c4:	db8080e7          	jalr	-584(ra) # 80004578 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800017c8:	00148493          	addi	s1,s1,1
    800017cc:	000027b7          	lui	a5,0x2
    800017d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017d4:	0297e063          	bltu	a5,s1,800017f4 <_Z20thread2FunctionTest2Pv+0xa0>
        if(j == 200)
    800017d8:	0c800793          	li	a5,200
    800017dc:	faf482e3          	beq	s1,a5,80001780 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    800017e0:	03200793          	li	a5,50
    800017e4:	02f4f7b3          	remu	a5,s1,a5
    800017e8:	fa0796e3          	bnez	a5,80001794 <_Z20thread2FunctionTest2Pv+0x40>
    800017ec:	fa0484e3          	beqz	s1,80001794 <_Z20thread2FunctionTest2Pv+0x40>
    800017f0:	f9dff06f          	j	8000178c <_Z20thread2FunctionTest2Pv+0x38>
}
    800017f4:	01813083          	ld	ra,24(sp)
    800017f8:	01013403          	ld	s0,16(sp)
    800017fc:	00813483          	ld	s1,8(sp)
    80001800:	02010113          	addi	sp,sp,32
    80001804:	00008067          	ret

0000000080001808 <_Z11threadTest1v>:
{
    80001808:	ff010113          	addi	sp,sp,-16
    8000180c:	00813423          	sd	s0,8(sp)
    80001810:	01010413          	addi	s0,sp,16
}
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Z11threadTest2v>:
{
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
}
    8000182c:	00813403          	ld	s0,8(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret

0000000080001838 <_Z10mallocFreev>:
{
    80001838:	cc010113          	addi	sp,sp,-832
    8000183c:	32113c23          	sd	ra,824(sp)
    80001840:	32813823          	sd	s0,816(sp)
    80001844:	32913423          	sd	s1,808(sp)
    80001848:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    8000184c:	00007517          	auipc	a0,0x7
    80001850:	81c50513          	addi	a0,a0,-2020 # 80008068 <CONSOLE_STATUS+0x58>
    80001854:	00003097          	auipc	ra,0x3
    80001858:	d24080e7          	jalr	-732(ra) # 80004578 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    8000185c:	00000493          	li	s1,0
    80001860:	0080006f          	j	80001868 <_Z10mallocFreev+0x30>
    80001864:	0014849b          	addiw	s1,s1,1
    80001868:	06300793          	li	a5,99
    8000186c:	0497c463          	blt	a5,s1,800018b4 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001870:	06400513          	li	a0,100
    80001874:	00000097          	auipc	ra,0x0
    80001878:	9e4080e7          	jalr	-1564(ra) # 80001258 <mem_alloc>
    8000187c:	00349793          	slli	a5,s1,0x3
    80001880:	fe040713          	addi	a4,s0,-32
    80001884:	00f707b3          	add	a5,a4,a5
    80001888:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    8000188c:	fc051ce3          	bnez	a0,80001864 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001890:	00006517          	auipc	a0,0x6
    80001894:	7e850513          	addi	a0,a0,2024 # 80008078 <CONSOLE_STATUS+0x68>
    80001898:	00003097          	auipc	ra,0x3
    8000189c:	ce0080e7          	jalr	-800(ra) # 80004578 <_Z11printStringPKc>
}
    800018a0:	33813083          	ld	ra,824(sp)
    800018a4:	33013403          	ld	s0,816(sp)
    800018a8:	32813483          	ld	s1,808(sp)
    800018ac:	34010113          	addi	sp,sp,832
    800018b0:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    800018b4:	00000493          	li	s1,0
    800018b8:	06300793          	li	a5,99
    800018bc:	0297ce63          	blt	a5,s1,800018f8 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    800018c0:	00349793          	slli	a5,s1,0x3
    800018c4:	fe040713          	addi	a4,s0,-32
    800018c8:	00f707b3          	add	a5,a4,a5
    800018cc:	ce07b503          	ld	a0,-800(a5)
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	9b8080e7          	jalr	-1608(ra) # 80001288 <mem_free>
        if(retval != 0)
    800018d8:	00051663          	bnez	a0,800018e4 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    800018dc:	0024849b          	addiw	s1,s1,2
    800018e0:	fd9ff06f          	j	800018b8 <_Z10mallocFreev+0x80>
            printString("not OK\n");
    800018e4:	00006517          	auipc	a0,0x6
    800018e8:	79450513          	addi	a0,a0,1940 # 80008078 <CONSOLE_STATUS+0x68>
    800018ec:	00003097          	auipc	ra,0x3
    800018f0:	c8c080e7          	jalr	-884(ra) # 80004578 <_Z11printStringPKc>
            return;
    800018f4:	fadff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    800018f8:	00000493          	li	s1,0
    800018fc:	0080006f          	j	80001904 <_Z10mallocFreev+0xcc>
    80001900:	0024849b          	addiw	s1,s1,2
    80001904:	06300793          	li	a5,99
    80001908:	0297cc63          	blt	a5,s1,80001940 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    8000190c:	01400513          	li	a0,20
    80001910:	00000097          	auipc	ra,0x0
    80001914:	948080e7          	jalr	-1720(ra) # 80001258 <mem_alloc>
    80001918:	00349793          	slli	a5,s1,0x3
    8000191c:	fe040713          	addi	a4,s0,-32
    80001920:	00f707b3          	add	a5,a4,a5
    80001924:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001928:	fc051ce3          	bnez	a0,80001900 <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    8000192c:	00006517          	auipc	a0,0x6
    80001930:	74c50513          	addi	a0,a0,1868 # 80008078 <CONSOLE_STATUS+0x68>
    80001934:	00003097          	auipc	ra,0x3
    80001938:	c44080e7          	jalr	-956(ra) # 80004578 <_Z11printStringPKc>
            return;
    8000193c:	f65ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001940:	00000493          	li	s1,0
    80001944:	06300793          	li	a5,99
    80001948:	0297ce63          	blt	a5,s1,80001984 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    8000194c:	00349793          	slli	a5,s1,0x3
    80001950:	fe040713          	addi	a4,s0,-32
    80001954:	00f707b3          	add	a5,a4,a5
    80001958:	ce07b503          	ld	a0,-800(a5)
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	92c080e7          	jalr	-1748(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001964:	00051663          	bnez	a0,80001970 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001968:	0014849b          	addiw	s1,s1,1
    8000196c:	fd9ff06f          	j	80001944 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001970:	00006517          	auipc	a0,0x6
    80001974:	70850513          	addi	a0,a0,1800 # 80008078 <CONSOLE_STATUS+0x68>
    80001978:	00003097          	auipc	ra,0x3
    8000197c:	c00080e7          	jalr	-1024(ra) # 80004578 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00006517          	auipc	a0,0x6
    80001988:	6fc50513          	addi	a0,a0,1788 # 80008080 <CONSOLE_STATUS+0x70>
    8000198c:	00003097          	auipc	ra,0x3
    80001990:	bec080e7          	jalr	-1044(ra) # 80004578 <_Z11printStringPKc>
    80001994:	f0dff06f          	j	800018a0 <_Z10mallocFreev+0x68>

0000000080001998 <_Z9bigMallocv>:
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    800019a8:	00006517          	auipc	a0,0x6
    800019ac:	6e050513          	addi	a0,a0,1760 # 80008088 <CONSOLE_STATUS+0x78>
    800019b0:	00003097          	auipc	ra,0x3
    800019b4:	bc8080e7          	jalr	-1080(ra) # 80004578 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	00008797          	auipc	a5,0x8
    800019bc:	6787b783          	ld	a5,1656(a5) # 8000a030 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	00008797          	auipc	a5,0x8
    800019c8:	60c7b783          	ld	a5,1548(a5) # 80009fd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    800019d4:	06450513          	addi	a0,a0,100
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	880080e7          	jalr	-1920(ra) # 80001258 <mem_alloc>
    if(p == 0)
    800019e0:	02050263          	beqz	a0,80001a04 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    800019e4:	00006517          	auipc	a0,0x6
    800019e8:	69450513          	addi	a0,a0,1684 # 80008078 <CONSOLE_STATUS+0x68>
    800019ec:	00003097          	auipc	ra,0x3
    800019f0:	b8c080e7          	jalr	-1140(ra) # 80004578 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00006517          	auipc	a0,0x6
    80001a08:	67c50513          	addi	a0,a0,1660 # 80008080 <CONSOLE_STATUS+0x70>
    80001a0c:	00003097          	auipc	ra,0x3
    80001a10:	b6c080e7          	jalr	-1172(ra) # 80004578 <_Z11printStringPKc>
    80001a14:	fe1ff06f          	j	800019f4 <_Z9bigMallocv+0x5c>

0000000080001a18 <_Z17lotOfSmallMallocsv>:
{
    80001a18:	fe010113          	addi	sp,sp,-32
    80001a1c:	00113c23          	sd	ra,24(sp)
    80001a20:	00813823          	sd	s0,16(sp)
    80001a24:	00913423          	sd	s1,8(sp)
    80001a28:	02010413          	addi	s0,sp,32
    for(int i=0;i<200000;i++)
    80001a2c:	00000493          	li	s1,0
    80001a30:	0080006f          	j	80001a38 <_Z17lotOfSmallMallocsv+0x20>
    80001a34:	0014849b          	addiw	s1,s1,1
    80001a38:	000317b7          	lui	a5,0x31
    80001a3c:	d3f78793          	addi	a5,a5,-705 # 30d3f <_entry-0x7ffcf2c1>
    80001a40:	0297c263          	blt	a5,s1,80001a64 <_Z17lotOfSmallMallocsv+0x4c>
        int *x = (int*) mem_alloc(1);
    80001a44:	00100513          	li	a0,1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	810080e7          	jalr	-2032(ra) # 80001258 <mem_alloc>
        if(x == nullptr)
    80001a50:	fe0512e3          	bnez	a0,80001a34 <_Z17lotOfSmallMallocsv+0x1c>
            printString("not OK\n");
    80001a54:	00006517          	auipc	a0,0x6
    80001a58:	62450513          	addi	a0,a0,1572 # 80008078 <CONSOLE_STATUS+0x68>
    80001a5c:	00003097          	auipc	ra,0x3
    80001a60:	b1c080e7          	jalr	-1252(ra) # 80004578 <_Z11printStringPKc>
    printString("OK\n");
    80001a64:	00006517          	auipc	a0,0x6
    80001a68:	61c50513          	addi	a0,a0,1564 # 80008080 <CONSOLE_STATUS+0x70>
    80001a6c:	00003097          	auipc	ra,0x3
    80001a70:	b0c080e7          	jalr	-1268(ra) # 80004578 <_Z11printStringPKc>
}
    80001a74:	01813083          	ld	ra,24(sp)
    80001a78:	01013403          	ld	s0,16(sp)
    80001a7c:	00813483          	ld	s1,8(sp)
    80001a80:	02010113          	addi	sp,sp,32
    80001a84:	00008067          	ret

0000000080001a88 <_Z7badFreev>:
{
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00113423          	sd	ra,8(sp)
    80001a90:	00813023          	sd	s0,0(sp)
    80001a94:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001a98:	00006517          	auipc	a0,0x6
    80001a9c:	60050513          	addi	a0,a0,1536 # 80008098 <CONSOLE_STATUS+0x88>
    80001aa0:	00003097          	auipc	ra,0x3
    80001aa4:	ad8080e7          	jalr	-1320(ra) # 80004578 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001aa8:	00800513          	li	a0,8
    80001aac:	fffff097          	auipc	ra,0xfffff
    80001ab0:	7ac080e7          	jalr	1964(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001ab4:	00250513          	addi	a0,a0,2
    80001ab8:	fffff097          	auipc	ra,0xfffff
    80001abc:	7d0080e7          	jalr	2000(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001ac0:	02051263          	bnez	a0,80001ae4 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001ac4:	00006517          	auipc	a0,0x6
    80001ac8:	5b450513          	addi	a0,a0,1460 # 80008078 <CONSOLE_STATUS+0x68>
    80001acc:	00003097          	auipc	ra,0x3
    80001ad0:	aac080e7          	jalr	-1364(ra) # 80004578 <_Z11printStringPKc>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret
         printString("OK\n");
    80001ae4:	00006517          	auipc	a0,0x6
    80001ae8:	59c50513          	addi	a0,a0,1436 # 80008080 <CONSOLE_STATUS+0x70>
    80001aec:	00003097          	auipc	ra,0x3
    80001af0:	a8c080e7          	jalr	-1396(ra) # 80004578 <_Z11printStringPKc>
}
    80001af4:	fe1ff06f          	j	80001ad4 <_Z7badFreev+0x4c>

0000000080001af8 <_Z13stressTestingv>:
{
    80001af8:	cc010113          	addi	sp,sp,-832
    80001afc:	32113c23          	sd	ra,824(sp)
    80001b00:	32813823          	sd	s0,816(sp)
    80001b04:	32913423          	sd	s1,808(sp)
    80001b08:	33213023          	sd	s2,800(sp)
    80001b0c:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001b10:	00006517          	auipc	a0,0x6
    80001b14:	59850513          	addi	a0,a0,1432 # 800080a8 <CONSOLE_STATUS+0x98>
    80001b18:	00003097          	auipc	ra,0x3
    80001b1c:	a60080e7          	jalr	-1440(ra) # 80004578 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b20:	00000493          	li	s1,0
    80001b24:	0080006f          	j	80001b2c <_Z13stressTestingv+0x34>
    80001b28:	0014849b          	addiw	s1,s1,1
    80001b2c:	06300793          	li	a5,99
    80001b30:	0497c663          	blt	a5,s1,80001b7c <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001b34:	00100513          	li	a0,1
    80001b38:	fffff097          	auipc	ra,0xfffff
    80001b3c:	720080e7          	jalr	1824(ra) # 80001258 <mem_alloc>
    80001b40:	00349793          	slli	a5,s1,0x3
    80001b44:	fe040713          	addi	a4,s0,-32
    80001b48:	00f707b3          	add	a5,a4,a5
    80001b4c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b50:	fc051ce3          	bnez	a0,80001b28 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001b54:	00006517          	auipc	a0,0x6
    80001b58:	52450513          	addi	a0,a0,1316 # 80008078 <CONSOLE_STATUS+0x68>
    80001b5c:	00003097          	auipc	ra,0x3
    80001b60:	a1c080e7          	jalr	-1508(ra) # 80004578 <_Z11printStringPKc>
}
    80001b64:	33813083          	ld	ra,824(sp)
    80001b68:	33013403          	ld	s0,816(sp)
    80001b6c:	32813483          	ld	s1,808(sp)
    80001b70:	32013903          	ld	s2,800(sp)
    80001b74:	34010113          	addi	sp,sp,832
    80001b78:	00008067          	ret
    int sz = 300;
    80001b7c:	12c00913          	li	s2,300
    while(sz > 0)
    80001b80:	11205263          	blez	s2,80001c84 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001b84:	00000493          	li	s1,0
    80001b88:	06300793          	li	a5,99
    80001b8c:	0697cc63          	blt	a5,s1,80001c04 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001b90:	00349793          	slli	a5,s1,0x3
    80001b94:	fe040713          	addi	a4,s0,-32
    80001b98:	00f707b3          	add	a5,a4,a5
    80001b9c:	ce07b503          	ld	a0,-800(a5)
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	6e8080e7          	jalr	1768(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001ba8:	02051a63          	bnez	a0,80001bdc <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001bac:	01f9551b          	srliw	a0,s2,0x1f
    80001bb0:	0125053b          	addw	a0,a0,s2
    80001bb4:	4015551b          	sraiw	a0,a0,0x1
    80001bb8:	fffff097          	auipc	ra,0xfffff
    80001bbc:	6a0080e7          	jalr	1696(ra) # 80001258 <mem_alloc>
    80001bc0:	00349793          	slli	a5,s1,0x3
    80001bc4:	fe040713          	addi	a4,s0,-32
    80001bc8:	00f707b3          	add	a5,a4,a5
    80001bcc:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001bd0:	02050063          	beqz	a0,80001bf0 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001bd4:	0024849b          	addiw	s1,s1,2
    80001bd8:	fb1ff06f          	j	80001b88 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001bdc:	00006517          	auipc	a0,0x6
    80001be0:	49c50513          	addi	a0,a0,1180 # 80008078 <CONSOLE_STATUS+0x68>
    80001be4:	00003097          	auipc	ra,0x3
    80001be8:	994080e7          	jalr	-1644(ra) # 80004578 <_Z11printStringPKc>
                return;
    80001bec:	f79ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001bf0:	00006517          	auipc	a0,0x6
    80001bf4:	4c850513          	addi	a0,a0,1224 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001bf8:	00003097          	auipc	ra,0x3
    80001bfc:	980080e7          	jalr	-1664(ra) # 80004578 <_Z11printStringPKc>
                return;
    80001c00:	f65ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001c04:	00100493          	li	s1,1
    80001c08:	06300793          	li	a5,99
    80001c0c:	0697c863          	blt	a5,s1,80001c7c <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001c10:	00349793          	slli	a5,s1,0x3
    80001c14:	fe040713          	addi	a4,s0,-32
    80001c18:	00f707b3          	add	a5,a4,a5
    80001c1c:	ce07b503          	ld	a0,-800(a5)
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	668080e7          	jalr	1640(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001c28:	02051663          	bnez	a0,80001c54 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001c2c:	00090513          	mv	a0,s2
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	628080e7          	jalr	1576(ra) # 80001258 <mem_alloc>
    80001c38:	00349793          	slli	a5,s1,0x3
    80001c3c:	fe040713          	addi	a4,s0,-32
    80001c40:	00f707b3          	add	a5,a4,a5
    80001c44:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001c48:	02050063          	beqz	a0,80001c68 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001c4c:	0024849b          	addiw	s1,s1,2
    80001c50:	fb9ff06f          	j	80001c08 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001c54:	00006517          	auipc	a0,0x6
    80001c58:	42450513          	addi	a0,a0,1060 # 80008078 <CONSOLE_STATUS+0x68>
    80001c5c:	00003097          	auipc	ra,0x3
    80001c60:	91c080e7          	jalr	-1764(ra) # 80004578 <_Z11printStringPKc>
                return;
    80001c64:	f01ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c68:	00006517          	auipc	a0,0x6
    80001c6c:	45050513          	addi	a0,a0,1104 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001c70:	00003097          	auipc	ra,0x3
    80001c74:	908080e7          	jalr	-1784(ra) # 80004578 <_Z11printStringPKc>
                return;
    80001c78:	eedff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001c7c:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001c80:	f01ff06f          	j	80001b80 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001c84:	00006517          	auipc	a0,0x6
    80001c88:	3fc50513          	addi	a0,a0,1020 # 80008080 <CONSOLE_STATUS+0x70>
    80001c8c:	00003097          	auipc	ra,0x3
    80001c90:	8ec080e7          	jalr	-1812(ra) # 80004578 <_Z11printStringPKc>
    80001c94:	ed1ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>

0000000080001c98 <_Z21memoryAllocationTestsv>:
{
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    lotOfSmallMallocs();
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	d70080e7          	jalr	-656(ra) # 80001a18 <_Z17lotOfSmallMallocsv>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_Z14semaphoreTestsv>:
{
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00813423          	sd	s0,8(sp)
    80001cc8:	01010413          	addi	s0,sp,16
}
    80001ccc:	00813403          	ld	s0,8(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_Z7myTestsv>:
{
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	00813023          	sd	s0,0(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    memoryAllocationTests();
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	fb0080e7          	jalr	-80(ra) # 80001c98 <_Z21memoryAllocationTestsv>
}
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00113c23          	sd	ra,24(sp)
    80001d08:	00813823          	sd	s0,16(sp)
    80001d0c:	00913423          	sd	s1,8(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	00050493          	mv	s1,a0
    80001d18:	00002097          	auipc	ra,0x2
    80001d1c:	958080e7          	jalr	-1704(ra) # 80003670 <_ZN14PeriodicThreadC1Em>
    80001d20:	00008797          	auipc	a5,0x8
    80001d24:	21078793          	addi	a5,a5,528 # 80009f30 <_ZTV12TestPeriodic+0x10>
    80001d28:	00f4b023          	sd	a5,0(s1)
}
    80001d2c:	01813083          	ld	ra,24(sp)
    80001d30:	01013403          	ld	s0,16(sp)
    80001d34:	00813483          	ld	s1,8(sp)
    80001d38:	02010113          	addi	sp,sp,32
    80001d3c:	00008067          	ret

0000000080001d40 <_Z11threadTest3v>:
{
    80001d40:	fe010113          	addi	sp,sp,-32
    80001d44:	00113c23          	sd	ra,24(sp)
    80001d48:	00813823          	sd	s0,16(sp)
    80001d4c:	00913423          	sd	s1,8(sp)
    80001d50:	01213023          	sd	s2,0(sp)
    80001d54:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001d58:	01000513          	li	a0,16
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	5f4080e7          	jalr	1524(ra) # 80003350 <_Znwm>
    80001d64:	00050913          	mv	s2,a0
    80001d68:	03200593          	li	a1,50
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	f94080e7          	jalr	-108(ra) # 80001d00 <_ZN12TestPeriodicC1Em>
    t->start();
    80001d74:	00090513          	mv	a0,s2
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	6a8080e7          	jalr	1704(ra) # 80003420 <_ZN6Thread5startEv>
    while(true)
    80001d80:	0000006f          	j	80001d80 <_Z11threadTest3v+0x40>
    80001d84:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001d88:	00090513          	mv	a0,s2
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	5ec080e7          	jalr	1516(ra) # 80003378 <_ZdlPv>
    80001d94:	00048513          	mv	a0,s1
    80001d98:	0000d097          	auipc	ra,0xd
    80001d9c:	4a0080e7          	jalr	1184(ra) # 8000f238 <_Unwind_Resume>

0000000080001da0 <_Z11threadTestsv>:
{
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00113423          	sd	ra,8(sp)
    80001da8:	00813023          	sd	s0,0(sp)
    80001dac:	01010413          	addi	s0,sp,16
    threadTest3();
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	f90080e7          	jalr	-112(ra) # 80001d40 <_Z11threadTest3v>

0000000080001db8 <_Z10mallocTestv>:

void mallocTest()
{
    80001db8:	fc010113          	addi	sp,sp,-64
    80001dbc:	02113c23          	sd	ra,56(sp)
    80001dc0:	02813823          	sd	s0,48(sp)
    80001dc4:	02913423          	sd	s1,40(sp)
    80001dc8:	03213023          	sd	s2,32(sp)
    80001dcc:	01313c23          	sd	s3,24(sp)
    80001dd0:	01413823          	sd	s4,16(sp)
    80001dd4:	01513423          	sd	s5,8(sp)
    80001dd8:	01613023          	sd	s6,0(sp)
    80001ddc:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    80001de0:	00006517          	auipc	a0,0x6
    80001de4:	2e050513          	addi	a0,a0,736 # 800080c0 <CONSOLE_STATUS+0xb0>
    80001de8:	00002097          	auipc	ra,0x2
    80001dec:	790080e7          	jalr	1936(ra) # 80004578 <_Z11printStringPKc>

    object* o = new object;
    80001df0:	02c00513          	li	a0,44
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	55c080e7          	jalr	1372(ra) # 80003350 <_Znwm>
    80001dfc:	00050493          	mv	s1,a0
    o->a = 3;
    80001e00:	00300793          	li	a5,3
    80001e04:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80001e08:	00a00513          	li	a0,10
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	44c080e7          	jalr	1100(ra) # 80001258 <mem_alloc>
    80001e14:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80001e18:	06400513          	li	a0,100
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	43c080e7          	jalr	1084(ra) # 80001258 <mem_alloc>
    80001e24:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80001e28:	3e800513          	li	a0,1000
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	42c080e7          	jalr	1068(ra) # 80001258 <mem_alloc>
    80001e34:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80001e38:	00002537          	lui	a0,0x2
    80001e3c:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80001e40:	fffff097          	auipc	ra,0xfffff
    80001e44:	418080e7          	jalr	1048(ra) # 80001258 <mem_alloc>
    80001e48:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80001e4c:	00100513          	li	a0,1
    80001e50:	fffff097          	auipc	ra,0xfffff
    80001e54:	408080e7          	jalr	1032(ra) # 80001258 <mem_alloc>

    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80001e58:	06090c63          	beqz	s2,80001ed0 <_Z10mallocTestv+0x118>
    80001e5c:	00050b13          	mv	s6,a0
    80001e60:	06098863          	beqz	s3,80001ed0 <_Z10mallocTestv+0x118>
    80001e64:	060a0663          	beqz	s4,80001ed0 <_Z10mallocTestv+0x118>
    80001e68:	060a8463          	beqz	s5,80001ed0 <_Z10mallocTestv+0x118>
    80001e6c:	06050263          	beqz	a0,80001ed0 <_Z10mallocTestv+0x118>
        printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    80001e70:	00090513          	mv	a0,s2
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	504080e7          	jalr	1284(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m3;
    80001e7c:	000a0513          	mv	a0,s4
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	4f8080e7          	jalr	1272(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m4;
    80001e88:	000a8513          	mv	a0,s5
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	4ec080e7          	jalr	1260(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m2;
    80001e94:	00098513          	mv	a0,s3
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	4e0080e7          	jalr	1248(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m5;
    80001ea0:	000b0513          	mv	a0,s6
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	4d4080e7          	jalr	1236(ra) # 80003378 <_ZdlPv>
    delete o;
    80001eac:	00048863          	beqz	s1,80001ebc <_Z10mallocTestv+0x104>
    80001eb0:	00048513          	mv	a0,s1
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	4c4080e7          	jalr	1220(ra) # 80003378 <_ZdlPv>

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80001ebc:	00006517          	auipc	a0,0x6
    80001ec0:	22c50513          	addi	a0,a0,556 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ec4:	00002097          	auipc	ra,0x2
    80001ec8:	6b4080e7          	jalr	1716(ra) # 80004578 <_Z11printStringPKc>
    80001ecc:	0140006f          	j	80001ee0 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ed0:	00006517          	auipc	a0,0x6
    80001ed4:	1a850513          	addi	a0,a0,424 # 80008078 <CONSOLE_STATUS+0x68>
    80001ed8:	00002097          	auipc	ra,0x2
    80001edc:	6a0080e7          	jalr	1696(ra) # 80004578 <_Z11printStringPKc>
}
    80001ee0:	03813083          	ld	ra,56(sp)
    80001ee4:	03013403          	ld	s0,48(sp)
    80001ee8:	02813483          	ld	s1,40(sp)
    80001eec:	02013903          	ld	s2,32(sp)
    80001ef0:	01813983          	ld	s3,24(sp)
    80001ef4:	01013a03          	ld	s4,16(sp)
    80001ef8:	00813a83          	ld	s5,8(sp)
    80001efc:	00013b03          	ld	s6,0(sp)
    80001f00:	04010113          	addi	sp,sp,64
    80001f04:	00008067          	ret

0000000080001f08 <_Z16mallocEverythingv>:

void mallocEverything()
{
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00813423          	sd	s0,8(sp)
    80001f10:	01010413          	addi	s0,sp,16

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    printString("SUCCESSFUL: Testing allocating whole address space\n\n");*/
}
    80001f14:	00813403          	ld	s0,8(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_Z17mallocGapFillTestv>:

void mallocGapFillTest()
{
    80001f20:	f6010113          	addi	sp,sp,-160
    80001f24:	08113c23          	sd	ra,152(sp)
    80001f28:	08813823          	sd	s0,144(sp)
    80001f2c:	08913423          	sd	s1,136(sp)
    80001f30:	09213023          	sd	s2,128(sp)
    80001f34:	07313c23          	sd	s3,120(sp)
    80001f38:	07413823          	sd	s4,112(sp)
    80001f3c:	07513423          	sd	s5,104(sp)
    80001f40:	07613023          	sd	s6,96(sp)
    80001f44:	05713c23          	sd	s7,88(sp)
    80001f48:	05813823          	sd	s8,80(sp)
    80001f4c:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80001f50:	00006517          	auipc	a0,0x6
    80001f54:	1c850513          	addi	a0,a0,456 # 80008118 <CONSOLE_STATUS+0x108>
    80001f58:	00002097          	auipc	ra,0x2
    80001f5c:	620080e7          	jalr	1568(ra) # 80004578 <_Z11printStringPKc>

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    80001f60:	00000493          	li	s1,0
    80001f64:	00900793          	li	a5,9
    80001f68:	0697c863          	blt	a5,s1,80001fd8 <_Z17mallocGapFillTestv+0xb8>
    {
        m[i] = mem_alloc((i<<6)+1);
    80001f6c:	0064951b          	slliw	a0,s1,0x6
    80001f70:	0015051b          	addiw	a0,a0,1
    80001f74:	fffff097          	auipc	ra,0xfffff
    80001f78:	2e4080e7          	jalr	740(ra) # 80001258 <mem_alloc>
    80001f7c:	00349793          	slli	a5,s1,0x3
    80001f80:	fb040713          	addi	a4,s0,-80
    80001f84:	00f707b3          	add	a5,a4,a5
    80001f88:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80001f8c:	00050663          	beqz	a0,80001f98 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80001f90:	0014849b          	addiw	s1,s1,1
    80001f94:	fd1ff06f          	j	80001f64 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80001f98:	00006517          	auipc	a0,0x6
    80001f9c:	0e050513          	addi	a0,a0,224 # 80008078 <CONSOLE_STATUS+0x68>
    80001fa0:	00002097          	auipc	ra,0x2
    80001fa4:	5d8080e7          	jalr	1496(ra) # 80004578 <_Z11printStringPKc>
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
}
    80001fa8:	09813083          	ld	ra,152(sp)
    80001fac:	09013403          	ld	s0,144(sp)
    80001fb0:	08813483          	ld	s1,136(sp)
    80001fb4:	08013903          	ld	s2,128(sp)
    80001fb8:	07813983          	ld	s3,120(sp)
    80001fbc:	07013a03          	ld	s4,112(sp)
    80001fc0:	06813a83          	ld	s5,104(sp)
    80001fc4:	06013b03          	ld	s6,96(sp)
    80001fc8:	05813b83          	ld	s7,88(sp)
    80001fcc:	05013c03          	ld	s8,80(sp)
    80001fd0:	0a010113          	addi	sp,sp,160
    80001fd4:	00008067          	ret
    delete (uint64*)m[2];
    80001fd8:	f7043503          	ld	a0,-144(s0)
    80001fdc:	00050663          	beqz	a0,80001fe8 <_Z17mallocGapFillTestv+0xc8>
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	398080e7          	jalr	920(ra) # 80003378 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80001fe8:	00100513          	li	a0,1
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	26c080e7          	jalr	620(ra) # 80001258 <mem_alloc>
    80001ff4:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80001ff8:	00100513          	li	a0,1
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	25c080e7          	jalr	604(ra) # 80001258 <mem_alloc>
    80002004:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002008:	00100513          	li	a0,1
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	24c080e7          	jalr	588(ra) # 80001258 <mem_alloc>
    80002014:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002018:	08048863          	beqz	s1,800020a8 <_Z17mallocGapFillTestv+0x188>
    8000201c:	08090663          	beqz	s2,800020a8 <_Z17mallocGapFillTestv+0x188>
    80002020:	08050463          	beqz	a0,800020a8 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002024:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002028:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000202c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002030:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002034:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002038:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000203c:	0897f063          	bgeu	a5,s1,800020bc <_Z17mallocGapFillTestv+0x19c>
    80002040:	06a4fe63          	bgeu	s1,a0,800020bc <_Z17mallocGapFillTestv+0x19c>
    80002044:	0727fc63          	bgeu	a5,s2,800020bc <_Z17mallocGapFillTestv+0x19c>
    80002048:	06a97a63          	bgeu	s2,a0,800020bc <_Z17mallocGapFillTestv+0x19c>
    8000204c:	07367863          	bgeu	a2,s3,800020bc <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002050:	00050663          	beqz	a0,8000205c <_Z17mallocGapFillTestv+0x13c>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	324080e7          	jalr	804(ra) # 80003378 <_ZdlPv>
    delete (uint64*)m[4];
    8000205c:	f8043503          	ld	a0,-128(s0)
    80002060:	00050663          	beqz	a0,8000206c <_Z17mallocGapFillTestv+0x14c>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	314080e7          	jalr	788(ra) # 80003378 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    8000206c:	28000513          	li	a0,640
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	1e8080e7          	jalr	488(ra) # 80001258 <mem_alloc>
    80002078:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    8000207c:	24000513          	li	a0,576
    80002080:	fffff097          	auipc	ra,0xfffff
    80002084:	1d8080e7          	jalr	472(ra) # 80001258 <mem_alloc>
    80002088:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    8000208c:	040c0263          	beqz	s8,800020d0 <_Z17mallocGapFillTestv+0x1b0>
    80002090:	04050063          	beqz	a0,800020d0 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002094:	04aa7863          	bgeu	s4,a0,800020e4 <_Z17mallocGapFillTestv+0x1c4>
    80002098:	04ab7663          	bgeu	s6,a0,800020e4 <_Z17mallocGapFillTestv+0x1c4>
    8000209c:	055c7463          	bgeu	s8,s5,800020e4 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    800020a0:	00000a13          	li	s4,0
    800020a4:	0580006f          	j	800020fc <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    800020a8:	00006517          	auipc	a0,0x6
    800020ac:	fd050513          	addi	a0,a0,-48 # 80008078 <CONSOLE_STATUS+0x68>
    800020b0:	00002097          	auipc	ra,0x2
    800020b4:	4c8080e7          	jalr	1224(ra) # 80004578 <_Z11printStringPKc>
        return;
    800020b8:	ef1ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020bc:	00006517          	auipc	a0,0x6
    800020c0:	fbc50513          	addi	a0,a0,-68 # 80008078 <CONSOLE_STATUS+0x68>
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	4b4080e7          	jalr	1204(ra) # 80004578 <_Z11printStringPKc>
        return;
    800020cc:	eddff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020d0:	00006517          	auipc	a0,0x6
    800020d4:	fa850513          	addi	a0,a0,-88 # 80008078 <CONSOLE_STATUS+0x68>
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	4a0080e7          	jalr	1184(ra) # 80004578 <_Z11printStringPKc>
        return;
    800020e0:	ec9ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020e4:	00006517          	auipc	a0,0x6
    800020e8:	f9450513          	addi	a0,a0,-108 # 80008078 <CONSOLE_STATUS+0x68>
    800020ec:	00002097          	auipc	ra,0x2
    800020f0:	48c080e7          	jalr	1164(ra) # 80004578 <_Z11printStringPKc>
        return;
    800020f4:	eb5ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800020f8:	001a0a1b          	addiw	s4,s4,1
    800020fc:	00900793          	li	a5,9
    80002100:	0347c263          	blt	a5,s4,80002124 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002104:	003a1793          	slli	a5,s4,0x3
    80002108:	fb040713          	addi	a4,s0,-80
    8000210c:	00f707b3          	add	a5,a4,a5
    80002110:	fb07b503          	ld	a0,-80(a5)
    80002114:	fe0502e3          	beqz	a0,800020f8 <_Z17mallocGapFillTestv+0x1d8>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	260080e7          	jalr	608(ra) # 80003378 <_ZdlPv>
    80002120:	fd9ff06f          	j	800020f8 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002124:	00048513          	mv	a0,s1
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	250080e7          	jalr	592(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp2;
    80002130:	00090513          	mv	a0,s2
    80002134:	00001097          	auipc	ra,0x1
    80002138:	244080e7          	jalr	580(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp3;
    8000213c:	00098513          	mv	a0,s3
    80002140:	00001097          	auipc	ra,0x1
    80002144:	238080e7          	jalr	568(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp4;
    80002148:	000c0513          	mv	a0,s8
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	22c080e7          	jalr	556(ra) # 80003378 <_ZdlPv>
    delete (uint64*)tmp5;
    80002154:	000b8513          	mv	a0,s7
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	220080e7          	jalr	544(ra) # 80003378 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002160:	00006517          	auipc	a0,0x6
    80002164:	00050513          	mv	a0,a0
    80002168:	00002097          	auipc	ra,0x2
    8000216c:	410080e7          	jalr	1040(ra) # 80004578 <_Z11printStringPKc>
    80002170:	e39ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>

0000000080002174 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    80002174:	00008717          	auipc	a4,0x8
    80002178:	f1c72703          	lw	a4,-228(a4) # 8000a090 <head>
    8000217c:	00a00793          	li	a5,10
    80002180:	06f70c63          	beq	a4,a5,800021f8 <_Z9consumerAPv+0x84>
{
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00113c23          	sd	ra,24(sp)
    8000218c:	00813823          	sd	s0,16(sp)
    80002190:	00913423          	sd	s1,8(sp)
    80002194:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    80002198:	00008497          	auipc	s1,0x8
    8000219c:	ef848493          	addi	s1,s1,-264 # 8000a090 <head>
    800021a0:	0084b503          	ld	a0,8(s1)
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	23c080e7          	jalr	572(ra) # 800013e0 <sem_wait>
        putc(buffer[head++]);
    800021ac:	0004a783          	lw	a5,0(s1)
    800021b0:	0017871b          	addiw	a4,a5,1
    800021b4:	00e4a023          	sw	a4,0(s1)
    800021b8:	00f487b3          	add	a5,s1,a5
    800021bc:	0107c503          	lbu	a0,16(a5)
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	378080e7          	jalr	888(ra) # 80001538 <putc>
        sem_signal(spaceAvailable);
    800021c8:	0204b503          	ld	a0,32(s1)
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	240080e7          	jalr	576(ra) # 8000140c <sem_signal>
    while(head!=10)
    800021d4:	00008717          	auipc	a4,0x8
    800021d8:	ebc72703          	lw	a4,-324(a4) # 8000a090 <head>
    800021dc:	00a00793          	li	a5,10
    800021e0:	faf71ce3          	bne	a4,a5,80002198 <_Z9consumerAPv+0x24>
    }
}
    800021e4:	01813083          	ld	ra,24(sp)
    800021e8:	01013403          	ld	s0,16(sp)
    800021ec:	00813483          	ld	s1,8(sp)
    800021f0:	02010113          	addi	sp,sp,32
    800021f4:	00008067          	ret
    800021f8:	00008067          	ret

00000000800021fc <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    800021fc:	00008717          	auipc	a4,0x8
    80002200:	ebc72703          	lw	a4,-324(a4) # 8000a0b8 <tail>
    80002204:	00a00793          	li	a5,10
    80002208:	08f70063          	beq	a4,a5,80002288 <_Z9producerAPv+0x8c>
{
    8000220c:	fe010113          	addi	sp,sp,-32
    80002210:	00113c23          	sd	ra,24(sp)
    80002214:	00813823          	sd	s0,16(sp)
    80002218:	00913423          	sd	s1,8(sp)
    8000221c:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    80002220:	00008497          	auipc	s1,0x8
    80002224:	e7048493          	addi	s1,s1,-400 # 8000a090 <head>
    80002228:	0204b503          	ld	a0,32(s1)
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	1b4080e7          	jalr	436(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    80002234:	0284a783          	lw	a5,40(s1)
    80002238:	00008717          	auipc	a4,0x8
    8000223c:	ca870713          	addi	a4,a4,-856 # 80009ee0 <string>
    80002240:	00f70733          	add	a4,a4,a5
    80002244:	00074683          	lbu	a3,0(a4)
    80002248:	00f48733          	add	a4,s1,a5
    8000224c:	00d70823          	sb	a3,16(a4)
        tail++;
    80002250:	0017879b          	addiw	a5,a5,1
    80002254:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    80002258:	0084b503          	ld	a0,8(s1)
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	1b0080e7          	jalr	432(ra) # 8000140c <sem_signal>
    while(tail!=10)
    80002264:	00008717          	auipc	a4,0x8
    80002268:	e5472703          	lw	a4,-428(a4) # 8000a0b8 <tail>
    8000226c:	00a00793          	li	a5,10
    80002270:	faf718e3          	bne	a4,a5,80002220 <_Z9producerAPv+0x24>
    }
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
    80002288:	00008067          	ret

000000008000228c <_Z8semTest1v>:

void semTest1()
{
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16

    thread_create(&threadB, consumerA, nullptr);

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();*/
}
    80002298:	00813403          	ld	s0,8(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_Z12consoleTest1v>:

void consoleTest1()
{
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    800022b8:	00000493          	li	s1,0
    800022bc:	06300793          	li	a5,99
    800022c0:	0097ca63          	blt	a5,s1,800022d4 <_Z12consoleTest1v+0x30>
    {
        getc();
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	24c080e7          	jalr	588(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    800022cc:	0014849b          	addiw	s1,s1,1
    800022d0:	fedff06f          	j	800022bc <_Z12consoleTest1v+0x18>
    }
}
    800022d4:	01813083          	ld	ra,24(sp)
    800022d8:	01013403          	ld	s0,16(sp)
    800022dc:	00813483          	ld	s1,8(sp)
    800022e0:	02010113          	addi	sp,sp,32
    800022e4:	00008067          	ret

00000000800022e8 <_Z12consoleTestsv>:

void consoleTests()
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    consoleTest1();
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	fac080e7          	jalr	-84(ra) # 800022a4 <_Z12consoleTest1v>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813423          	sd	s0,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    8000231c:	10002573          	csrr	a0,sstatus
}
    80002320:	00813403          	ld	s0,8(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_Z15changeModeTestsv>:

void changeModeTests()
{
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    changeModeTest1();
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	fd4080e7          	jalr	-44(ra) # 80002310 <_Z15changeModeTest1v>
}
    80002344:	00813083          	ld	ra,8(sp)
    80002348:	00013403          	ld	s0,0(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	00008797          	auipc	a5,0x8
    80002398:	b6c78793          	addi	a5,a5,-1172 # 80009f00 <_ZTV14PeriodicThread+0x10>
    8000239c:	00f53023          	sd	a5,0(a0) # 80008160 <CONSOLE_STATUS+0x150>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	f40080e7          	jalr	-192(ra) # 800032e0 <_ZN6ThreadD1Ev>
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN14PeriodicThreadD0Ev>:
    800023b8:	fe010113          	addi	sp,sp,-32
    800023bc:	00113c23          	sd	ra,24(sp)
    800023c0:	00813823          	sd	s0,16(sp)
    800023c4:	00913423          	sd	s1,8(sp)
    800023c8:	02010413          	addi	s0,sp,32
    800023cc:	00050493          	mv	s1,a0
    800023d0:	00008797          	auipc	a5,0x8
    800023d4:	b3078793          	addi	a5,a5,-1232 # 80009f00 <_ZTV14PeriodicThread+0x10>
    800023d8:	00f53023          	sd	a5,0(a0)
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	f04080e7          	jalr	-252(ra) # 800032e0 <_ZN6ThreadD1Ev>
    800023e4:	00048513          	mv	a0,s1
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	f90080e7          	jalr	-112(ra) # 80003378 <_ZdlPv>
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret

0000000080002404 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    80002414:	00008797          	auipc	a5,0x8
    80002418:	aec78793          	addi	a5,a5,-1300 # 80009f00 <_ZTV14PeriodicThread+0x10>
    8000241c:	00f53023          	sd	a5,0(a0)
    80002420:	00001097          	auipc	ra,0x1
    80002424:	ec0080e7          	jalr	-320(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN12TestPeriodicD0Ev>:
    80002438:	fe010113          	addi	sp,sp,-32
    8000243c:	00113c23          	sd	ra,24(sp)
    80002440:	00813823          	sd	s0,16(sp)
    80002444:	00913423          	sd	s1,8(sp)
    80002448:	02010413          	addi	s0,sp,32
    8000244c:	00050493          	mv	s1,a0
    80002450:	00008797          	auipc	a5,0x8
    80002454:	ab078793          	addi	a5,a5,-1360 # 80009f00 <_ZTV14PeriodicThread+0x10>
    80002458:	00f53023          	sd	a5,0(a0)
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	e84080e7          	jalr	-380(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80002464:	00048513          	mv	a0,s1
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	f10080e7          	jalr	-240(ra) # 80003378 <_ZdlPv>
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret

0000000080002484 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    80002494:	00001097          	auipc	ra,0x1
    80002498:	2f0080e7          	jalr	752(ra) # 80003784 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000249c:	00008797          	auipc	a5,0x8
    800024a0:	c247b783          	ld	a5,-988(a5) # 8000a0c0 <_ZN3PCB7runningE>
    800024a4:	0287b703          	ld	a4,40(a5)
    800024a8:	0307b503          	ld	a0,48(a5)
    800024ac:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	ea4080e7          	jalr	-348(ra) # 80001354 <thread_exit>
}
    800024b8:	00813083          	ld	ra,8(sp)
    800024bc:	00013403          	ld	s0,0(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    })
    800024d4:	00050023          	sb	zero,0(a0)
    800024d8:	00e53c23          	sd	a4,24(a0)
    800024dc:	02053023          	sd	zero,32(a0)
    800024e0:	02b53423          	sd	a1,40(a0)
    800024e4:	02c53823          	sd	a2,48(a0)
    800024e8:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800024ec:	000017b7          	lui	a5,0x1
    800024f0:	00f686b3          	add	a3,a3,a5
    })
    800024f4:	04d53423          	sd	a3,72(a0)
    800024f8:	00000797          	auipc	a5,0x0
    800024fc:	f8c78793          	addi	a5,a5,-116 # 80002484 <_ZN3PCB6runnerEv>
    80002500:	04f53823          	sd	a5,80(a0)
    80002504:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002508:	00053423          	sd	zero,8(a0)
}
    8000250c:	00813403          	ld	s0,8(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN3PCB5sleepEm>:
{
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
}
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN3PCB5startEv>:
{
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00113423          	sd	ra,8(sp)
    80002538:	00813023          	sd	s0,0(sp)
    8000253c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002540:	00001097          	auipc	ra,0x1
    80002544:	c4c080e7          	jalr	-948(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
}
    80002548:	00813083          	ld	ra,8(sp)
    8000254c:	00013403          	ld	s0,0(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret

0000000080002558 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002558:	fe010113          	addi	sp,sp,-32
    8000255c:	00113c23          	sd	ra,24(sp)
    80002560:	00813823          	sd	s0,16(sp)
    80002564:	00913423          	sd	s1,8(sp)
    80002568:	01213023          	sd	s2,0(sp)
    8000256c:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    80002570:	00008497          	auipc	s1,0x8
    80002574:	b504b483          	ld	s1,-1200(s1) # 8000a0c0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002578:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000257c:	00100793          	li	a5,1
    80002580:	04f70a63          	beq	a4,a5,800025d4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002584:	00001097          	auipc	ra,0x1
    80002588:	c5c080e7          	jalr	-932(ra) # 800031e0 <_ZN9Scheduler3getEv>
    8000258c:	00008917          	auipc	s2,0x8
    80002590:	b3490913          	addi	s2,s2,-1228 # 8000a0c0 <_ZN3PCB7runningE>
    80002594:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002598:	00100793          	li	a5,1
    8000259c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	36c080e7          	jalr	876(ra) # 8000390c <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800025a8:	00093583          	ld	a1,0(s2)
    800025ac:	04858593          	addi	a1,a1,72
    800025b0:	04848513          	addi	a0,s1,72
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	c84080e7          	jalr	-892(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	00013903          	ld	s2,0(sp)
    800025cc:	02010113          	addi	sp,sp,32
    800025d0:	00008067          	ret
        Scheduler::put(old);
    800025d4:	00048513          	mv	a0,s1
    800025d8:	00001097          	auipc	ra,0x1
    800025dc:	bb4080e7          	jalr	-1100(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
    800025e0:	fa5ff06f          	j	80002584 <_ZN3PCB8dispatchEv+0x2c>

00000000800025e4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800025f4:	00002097          	auipc	ra,0x2
    800025f8:	aa4080e7          	jalr	-1372(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
}
    800025fc:	00813083          	ld	ra,8(sp)
    80002600:	00013403          	ld	s0,0(sp)
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00008067          	ret

000000008000260c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00113423          	sd	ra,8(sp)
    80002614:	00813023          	sd	s0,0(sp)
    80002618:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000261c:	00002097          	auipc	ra,0x2
    80002620:	ae0080e7          	jalr	-1312(ra) # 800040fc <_ZN15MemoryAllocator5kfreeEPv>
}
    80002624:	00813083          	ld	ra,8(sp)
    80002628:	00013403          	ld	s0,0(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00113423          	sd	ra,8(sp)
    8000263c:	00813023          	sd	s0,0(sp)
    80002640:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002644:	03853503          	ld	a0,56(a0)
    80002648:	00002097          	auipc	ra,0x2
    8000264c:	ab4080e7          	jalr	-1356(ra) # 800040fc <_ZN15MemoryAllocator5kfreeEPv>
}
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00013403          	ld	s0,0(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002660:	fd010113          	addi	sp,sp,-48
    80002664:	02113423          	sd	ra,40(sp)
    80002668:	02813023          	sd	s0,32(sp)
    8000266c:	00913c23          	sd	s1,24(sp)
    80002670:	01213823          	sd	s2,16(sp)
    80002674:	01313423          	sd	s3,8(sp)
    80002678:	01413023          	sd	s4,0(sp)
    8000267c:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002680:	06000513          	li	a0,96
    80002684:	00000097          	auipc	ra,0x0
    80002688:	f60080e7          	jalr	-160(ra) # 800025e4 <_ZN3PCBnwEm>
    8000268c:	00050493          	mv	s1,a0
    80002690:	00000713          	li	a4,0
    80002694:	00000693          	li	a3,0
    80002698:	00000613          	li	a2,0
    8000269c:	00000593          	li	a1,0
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	e28080e7          	jalr	-472(ra) # 800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800026a8:	00100793          	li	a5,1
    800026ac:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800026b0:	00008917          	auipc	s2,0x8
    800026b4:	a1090913          	addi	s2,s2,-1520 # 8000a0c0 <_ZN3PCB7runningE>
    800026b8:	00993023          	sd	s1,0(s2)
    800026bc:	00100a13          	li	s4,1
    800026c0:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800026c4:	00001537          	lui	a0,0x1
    800026c8:	00002097          	auipc	ra,0x2
    800026cc:	9d0080e7          	jalr	-1584(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
    800026d0:	00050993          	mv	s3,a0
    800026d4:	06000513          	li	a0,96
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	f0c080e7          	jalr	-244(ra) # 800025e4 <_ZN3PCBnwEm>
    800026e0:	00050493          	mv	s1,a0
    800026e4:	00200713          	li	a4,2
    800026e8:	00098693          	mv	a3,s3
    800026ec:	00000613          	li	a2,0
    800026f0:	00008597          	auipc	a1,0x8
    800026f4:	9185b583          	ld	a1,-1768(a1) # 8000a008 <_GLOBAL_OFFSET_TABLE_+0x50>
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	dd0080e7          	jalr	-560(ra) # 800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002700:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002704:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002708:	00893503          	ld	a0,8(s2)
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	e24080e7          	jalr	-476(ra) # 80002530 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002714:	00001537          	lui	a0,0x1
    80002718:	00002097          	auipc	ra,0x2
    8000271c:	980080e7          	jalr	-1664(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
    80002720:	00050993          	mv	s3,a0
    80002724:	06000513          	li	a0,96
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	ebc080e7          	jalr	-324(ra) # 800025e4 <_ZN3PCBnwEm>
    80002730:	00050493          	mv	s1,a0
    80002734:	00200713          	li	a4,2
    80002738:	00098693          	mv	a3,s3
    8000273c:	00000613          	li	a2,0
    80002740:	00008597          	auipc	a1,0x8
    80002744:	8f85b583          	ld	a1,-1800(a1) # 8000a038 <_GLOBAL_OFFSET_TABLE_+0x80>
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	d80080e7          	jalr	-640(ra) # 800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002750:	00993823          	sd	s1,16(s2)
    //PCB::userPCB = new PCB(&Riscv::myTestsWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    PCB::userPCB->start();
    80002754:	00048513          	mv	a0,s1
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	dd8080e7          	jalr	-552(ra) # 80002530 <_ZN3PCB5startEv>
}
    80002760:	02813083          	ld	ra,40(sp)
    80002764:	02013403          	ld	s0,32(sp)
    80002768:	01813483          	ld	s1,24(sp)
    8000276c:	01013903          	ld	s2,16(sp)
    80002770:	00813983          	ld	s3,8(sp)
    80002774:	00013a03          	ld	s4,0(sp)
    80002778:	03010113          	addi	sp,sp,48
    8000277c:	00008067          	ret

0000000080002780 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00813423          	sd	s0,8(sp)
    80002788:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    8000278c:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002790:	ffd50513          	addi	a0,a0,-3
}
    80002794:	00153513          	seqz	a0,a0
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00113423          	sd	ra,8(sp)
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    800027b4:	00008797          	auipc	a5,0x8
    800027b8:	90c78793          	addi	a5,a5,-1780 # 8000a0c0 <_ZN3PCB7runningE>
    800027bc:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800027c0:	0007b783          	ld	a5,0(a5)
    800027c4:	00300713          	li	a4,3
    800027c8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	d8c080e7          	jalr	-628(ra) # 80002558 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800027d4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	0fc080e7          	jalr	252(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027e0:	00813083          	ld	ra,8(sp)
    800027e4:	00013403          	ld	s0,0(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret

00000000800027f0 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002800:	00008797          	auipc	a5,0x8
    80002804:	8c07bc23          	sd	zero,-1832(a5) # 8000a0d8 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	d50080e7          	jalr	-688(ra) # 80002558 <_ZN3PCB8dispatchEv>
}
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002830:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002834:	00008717          	auipc	a4,0x8
    80002838:	88c70713          	addi	a4,a4,-1908 # 8000a0c0 <_ZN3PCB7runningE>
    8000283c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002840:	00073703          	ld	a4,0(a4)
    80002844:	00007697          	auipc	a3,0x7
    80002848:	7bc6b683          	ld	a3,1980(a3) # 8000a000 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000284c:	0006b683          	ld	a3,0(a3)
    80002850:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002854:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	7b8080e7          	jalr	1976(ra) # 80003010 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002860:	00000097          	auipc	ra,0x0
    80002864:	cf8080e7          	jalr	-776(ra) # 80002558 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002868:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	068080e7          	jalr	104(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002884:	fd010113          	addi	sp,sp,-48
    80002888:	02113423          	sd	ra,40(sp)
    8000288c:	02813023          	sd	s0,32(sp)
    80002890:	00913c23          	sd	s1,24(sp)
    80002894:	01213823          	sd	s2,16(sp)
    80002898:	01313423          	sd	s3,8(sp)
    8000289c:	01413023          	sd	s4,0(sp)
    800028a0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028a4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028a8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028ac:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800028b0:	06000513          	li	a0,96
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	d30080e7          	jalr	-720(ra) # 800025e4 <_ZN3PCBnwEm>
    800028bc:	00050493          	mv	s1,a0
    800028c0:	00200713          	li	a4,2
    800028c4:	00008697          	auipc	a3,0x8
    800028c8:	81c6b683          	ld	a3,-2020(a3) # 8000a0e0 <_ZN3PCB10savedRegA4E>
    800028cc:	000a0613          	mv	a2,s4
    800028d0:	00098593          	mv	a1,s3
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	bf4080e7          	jalr	-1036(ra) # 800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028dc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800028e0:	02048e63          	beqz	s1,8000291c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    800028e4:	00048513          	mv	a0,s1
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	c48080e7          	jalr	-952(ra) # 80002530 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800028f0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800028f4:	00001097          	auipc	ra,0x1
    800028f8:	fe0080e7          	jalr	-32(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028fc:	02813083          	ld	ra,40(sp)
    80002900:	02013403          	ld	s0,32(sp)
    80002904:	01813483          	ld	s1,24(sp)
    80002908:	01013903          	ld	s2,16(sp)
    8000290c:	00813983          	ld	s3,8(sp)
    80002910:	00013a03          	ld	s4,0(sp)
    80002914:	03010113          	addi	sp,sp,48
    80002918:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000291c:	fff00513          	li	a0,-1
    80002920:	fd5ff06f          	j	800028f4 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002924 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002934:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002938:	02050463          	beqz	a0,80002960 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	bf4080e7          	jalr	-1036(ra) # 80002530 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002944:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002948:	00001097          	auipc	ra,0x1
    8000294c:	f8c080e7          	jalr	-116(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002950:	00813083          	ld	ra,8(sp)
    80002954:	00013403          	ld	s0,0(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002960:	fff00513          	li	a0,-1
    80002964:	fe5ff06f          	j	80002948 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002968 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002968:	fd010113          	addi	sp,sp,-48
    8000296c:	02113423          	sd	ra,40(sp)
    80002970:	02813023          	sd	s0,32(sp)
    80002974:	00913c23          	sd	s1,24(sp)
    80002978:	01213823          	sd	s2,16(sp)
    8000297c:	01313423          	sd	s3,8(sp)
    80002980:	01413023          	sd	s4,0(sp)
    80002984:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002988:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000298c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002990:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002994:	06000513          	li	a0,96
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	c4c080e7          	jalr	-948(ra) # 800025e4 <_ZN3PCBnwEm>
    800029a0:	00050493          	mv	s1,a0
    800029a4:	00200713          	li	a4,2
    800029a8:	00007697          	auipc	a3,0x7
    800029ac:	7386b683          	ld	a3,1848(a3) # 8000a0e0 <_ZN3PCB10savedRegA4E>
    800029b0:	000a0613          	mv	a2,s4
    800029b4:	00098593          	mv	a1,s3
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	b10080e7          	jalr	-1264(ra) # 800024c8 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029c0:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029c4:	02048863          	beqz	s1,800029f4 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800029c8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	f08080e7          	jalr	-248(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
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
    800029f8:	fd5ff06f          	j	800029cc <_ZN3PCB20threadMakePCBHandlerEv+0x64>

00000000800029fc <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	01213023          	sd	s2,0(sp)
    80002a10:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a14:	01800513          	li	a0,24
    80002a18:	00002097          	auipc	ra,0x2
    80002a1c:	9ac080e7          	jalr	-1620(ra) # 800043c4 <_ZN10KSemaphorenwEm>
    80002a20:	00050493          	mv	s1,a0
    80002a24:	00000593          	li	a1,0
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	734080e7          	jalr	1844(ra) # 8000415c <_ZN10KSemaphoreC1Ei>
    80002a30:	00007797          	auipc	a5,0x7
    80002a34:	6a97bc23          	sd	s1,1720(a5) # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a38:	01800513          	li	a0,24
    80002a3c:	00002097          	auipc	ra,0x2
    80002a40:	988080e7          	jalr	-1656(ra) # 800043c4 <_ZN10KSemaphorenwEm>
    80002a44:	00050493          	mv	s1,a0
    80002a48:	00000593          	li	a1,0
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	710080e7          	jalr	1808(ra) # 8000415c <_ZN10KSemaphoreC1Ei>
    80002a54:	00007797          	auipc	a5,0x7
    80002a58:	6897be23          	sd	s1,1692(a5) # 8000a0f0 <_ZN8KConsole19hasCharactersOutputE>
}
    80002a5c:	01813083          	ld	ra,24(sp)
    80002a60:	01013403          	ld	s0,16(sp)
    80002a64:	00813483          	ld	s1,8(sp)
    80002a68:	00013903          	ld	s2,0(sp)
    80002a6c:	02010113          	addi	sp,sp,32
    80002a70:	00008067          	ret
    80002a74:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002a78:	00048513          	mv	a0,s1
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	9e8080e7          	jalr	-1560(ra) # 80004464 <_ZN10KSemaphoredlEPv>
    80002a84:	00090513          	mv	a0,s2
    80002a88:	0000c097          	auipc	ra,0xc
    80002a8c:	7b0080e7          	jalr	1968(ra) # 8000f238 <_Unwind_Resume>
    80002a90:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002a94:	00048513          	mv	a0,s1
    80002a98:	00002097          	auipc	ra,0x2
    80002a9c:	9cc080e7          	jalr	-1588(ra) # 80004464 <_ZN10KSemaphoredlEPv>
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	0000c097          	auipc	ra,0xc
    80002aa8:	794080e7          	jalr	1940(ra) # 8000f238 <_Unwind_Resume>

0000000080002aac <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002aac:	00007697          	auipc	a3,0x7
    80002ab0:	63c68693          	addi	a3,a3,1596 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002ab4:	0106b603          	ld	a2,16(a3)
    80002ab8:	00160793          	addi	a5,a2,1
    80002abc:	00002737          	lui	a4,0x2
    80002ac0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002ac4:	00e7f7b3          	and	a5,a5,a4
    80002ac8:	0186b703          	ld	a4,24(a3)
    80002acc:	04e78263          	beq	a5,a4,80002b10 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00113423          	sd	ra,8(sp)
    80002ad8:	00813023          	sd	s0,0(sp)
    80002adc:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002ae0:	00009717          	auipc	a4,0x9
    80002ae4:	64870713          	addi	a4,a4,1608 # 8000c128 <_ZN8KConsole11inputBufferE>
    80002ae8:	00c70633          	add	a2,a4,a2
    80002aec:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002af0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002af4:	0006b503          	ld	a0,0(a3)
    80002af8:	00002097          	auipc	ra,0x2
    80002afc:	884080e7          	jalr	-1916(ra) # 8000437c <_ZN10KSemaphore6signalEv>
}
    80002b00:	00813083          	ld	ra,8(sp)
    80002b04:	00013403          	ld	s0,0(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret
    80002b10:	00008067          	ret

0000000080002b14 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b14:	fe010113          	addi	sp,sp,-32
    80002b18:	00113c23          	sd	ra,24(sp)
    80002b1c:	00813823          	sd	s0,16(sp)
    80002b20:	00913423          	sd	s1,8(sp)
    80002b24:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002b28:	00007497          	auipc	s1,0x7
    80002b2c:	5c048493          	addi	s1,s1,1472 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002b30:	0004b503          	ld	a0,0(s1)
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	6d0080e7          	jalr	1744(ra) # 80004204 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b3c:	0184b783          	ld	a5,24(s1)
    80002b40:	0104b703          	ld	a4,16(s1)
    80002b44:	04e78063          	beq	a5,a4,80002b84 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b48:	00009717          	auipc	a4,0x9
    80002b4c:	5e070713          	addi	a4,a4,1504 # 8000c128 <_ZN8KConsole11inputBufferE>
    80002b50:	00f70733          	add	a4,a4,a5
    80002b54:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b58:	00178793          	addi	a5,a5,1
    80002b5c:	00002737          	lui	a4,0x2
    80002b60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b64:	00e7f7b3          	and	a5,a5,a4
    80002b68:	00007717          	auipc	a4,0x7
    80002b6c:	58f73c23          	sd	a5,1432(a4) # 8000a100 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	02010113          	addi	sp,sp,32
    80002b80:	00008067          	ret
        return -1;
    80002b84:	0ff00513          	li	a0,255
    80002b88:	fe9ff06f          	j	80002b70 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002b8c <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002b8c:	00007697          	auipc	a3,0x7
    80002b90:	55c68693          	addi	a3,a3,1372 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002b94:	0206b603          	ld	a2,32(a3)
    80002b98:	00160793          	addi	a5,a2,1
    80002b9c:	00002737          	lui	a4,0x2
    80002ba0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002ba4:	00e7f7b3          	and	a5,a5,a4
    80002ba8:	0286b703          	ld	a4,40(a3)
    80002bac:	04e78a63          	beq	a5,a4,80002c00 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002bc0:	00068713          	mv	a4,a3
    80002bc4:	0306b683          	ld	a3,48(a3)
    80002bc8:	00168693          	addi	a3,a3,1
    80002bcc:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002bd0:	00007697          	auipc	a3,0x7
    80002bd4:	55868693          	addi	a3,a3,1368 # 8000a128 <_ZN8KConsole12outputBufferE>
    80002bd8:	00c68633          	add	a2,a3,a2
    80002bdc:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002be0:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002be4:	00873503          	ld	a0,8(a4)
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	794080e7          	jalr	1940(ra) # 8000437c <_ZN10KSemaphore6signalEv>
}
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret
    80002c00:	00008067          	ret

0000000080002c04 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c04:	00007797          	auipc	a5,0x7
    80002c08:	3c47b783          	ld	a5,964(a5) # 80009fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c0c:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002c10:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002c14:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002c18:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002c1c:	0017f793          	andi	a5,a5,1
    80002c20:	08078063          	beqz	a5,80002ca0 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002c24:	fe010113          	addi	sp,sp,-32
    80002c28:	00113c23          	sd	ra,24(sp)
    80002c2c:	00813823          	sd	s0,16(sp)
    80002c30:	00913423          	sd	s1,8(sp)
    80002c34:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002c38:	00007797          	auipc	a5,0x7
    80002c3c:	3b07b783          	ld	a5,944(a5) # 80009fe8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c40:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002c44:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002c48:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002c4c:	00058493          	mv	s1,a1
    80002c50:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002c54:	00048513          	mv	a0,s1
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	e54080e7          	jalr	-428(ra) # 80002aac <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002c60:	00048513          	mv	a0,s1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f28080e7          	jalr	-216(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002c6c:	00007797          	auipc	a5,0x7
    80002c70:	35c7b783          	ld	a5,860(a5) # 80009fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c74:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002c78:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002c7c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002c80:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002c84:	0017f793          	andi	a5,a5,1
    80002c88:	fa0798e3          	bnez	a5,80002c38 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002c8c:	01813083          	ld	ra,24(sp)
    80002c90:	01013403          	ld	s0,16(sp)
    80002c94:	00813483          	ld	s1,8(sp)
    80002c98:	02010113          	addi	sp,sp,32
    80002c9c:	00008067          	ret
    80002ca0:	00008067          	ret

0000000080002ca4 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002ca4:	fe010113          	addi	sp,sp,-32
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	00813823          	sd	s0,16(sp)
    80002cb0:	00913423          	sd	s1,8(sp)
    80002cb4:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002cb8:	00007497          	auipc	s1,0x7
    80002cbc:	43048493          	addi	s1,s1,1072 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002cc0:	0084b503          	ld	a0,8(s1)
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	540080e7          	jalr	1344(ra) # 80004204 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002ccc:	0284b783          	ld	a5,40(s1)
    80002cd0:	0204b703          	ld	a4,32(s1)
    80002cd4:	04e78063          	beq	a5,a4,80002d14 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002cd8:	00007717          	auipc	a4,0x7
    80002cdc:	45070713          	addi	a4,a4,1104 # 8000a128 <_ZN8KConsole12outputBufferE>
    80002ce0:	00f70733          	add	a4,a4,a5
    80002ce4:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002ce8:	00178793          	addi	a5,a5,1
    80002cec:	00002737          	lui	a4,0x2
    80002cf0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002cf4:	00e7f7b3          	and	a5,a5,a4
    80002cf8:	00007717          	auipc	a4,0x7
    80002cfc:	40f73c23          	sd	a5,1048(a4) # 8000a110 <_ZN8KConsole10outputHeadE>

    return c;
}
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	01013403          	ld	s0,16(sp)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret
        return -1;
    80002d14:	0ff00513          	li	a0,255
    80002d18:	fe9ff06f          	j	80002d00 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002d1c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002d1c:	ff010113          	addi	sp,sp,-16
    80002d20:	00113423          	sd	ra,8(sp)
    80002d24:	00813023          	sd	s0,0(sp)
    80002d28:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002d2c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002d30:	0ff57513          	andi	a0,a0,255
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	e58080e7          	jalr	-424(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
}
    80002d3c:	00813083          	ld	ra,8(sp)
    80002d40:	00013403          	ld	s0,0(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret

0000000080002d4c <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00113c23          	sd	ra,24(sp)
    80002d54:	00813823          	sd	s0,16(sp)
    80002d58:	00913423          	sd	s1,8(sp)
    80002d5c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002d60:	00007717          	auipc	a4,0x7
    80002d64:	38870713          	addi	a4,a4,904 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002d68:	03873783          	ld	a5,56(a4)
    80002d6c:	00178793          	addi	a5,a5,1
    80002d70:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	da0080e7          	jalr	-608(ra) # 80002b14 <_ZN8KConsole17getCharacterInputEv>
    80002d7c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002d80:	01b00793          	li	a5,27
    80002d84:	02f51663          	bne	a0,a5,80002db0 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002d88:	00d00793          	li	a5,13
    80002d8c:	02f48863          	beq	s1,a5,80002dbc <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002d90:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	b40080e7          	jalr	-1216(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d9c:	01813083          	ld	ra,24(sp)
    80002da0:	01013403          	ld	s0,16(sp)
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret
        putCharacterOutput(ch);
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	ddc080e7          	jalr	-548(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
    80002db8:	fd1ff06f          	j	80002d88 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002dbc:	00d00513          	li	a0,13
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	dcc080e7          	jalr	-564(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002dc8:	00a00513          	li	a0,10
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	dc0080e7          	jalr	-576(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
    80002dd4:	fbdff06f          	j	80002d90 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002dd8 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00813423          	sd	s0,8(sp)
    80002de0:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002de4:	00007517          	auipc	a0,0x7
    80002de8:	33453503          	ld	a0,820(a0) # 8000a118 <_ZN8KConsole11pendingPutcE>
    80002dec:	00153513          	seqz	a0,a0
    80002df0:	00813403          	ld	s0,8(sp)
    80002df4:	01010113          	addi	sp,sp,16
    80002df8:	00008067          	ret

0000000080002dfc <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002dfc:	fe010113          	addi	sp,sp,-32
    80002e00:	00113c23          	sd	ra,24(sp)
    80002e04:	00813823          	sd	s0,16(sp)
    80002e08:	02010413          	addi	s0,sp,32
    80002e0c:	0180006f          	j	80002e24 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	544080e7          	jalr	1348(ra) # 80001354 <thread_exit>
    80002e18:	0340006f          	j	80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002e1c:	ffffe097          	auipc	ra,0xffffe
    80002e20:	518080e7          	jalr	1304(ra) # 80001334 <thread_dispatch>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002e24:	00007797          	auipc	a5,0x7
    80002e28:	1fc7b783          	ld	a5,508(a5) # 8000a020 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e2c:	0007c783          	lbu	a5,0(a5)
    80002e30:	00078e63          	beqz	a5,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	fa4080e7          	jalr	-92(ra) # 80002dd8 <_ZN8KConsole17outputBufferEmptyEv>
    80002e3c:	00050863          	beqz	a0,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e40:	00007797          	auipc	a5,0x7
    80002e44:	2e07b783          	ld	a5,736(a5) # 8000a120 <_ZN8KConsole11pendingGetcE>
    80002e48:	fc0784e3          	beqz	a5,80002e10 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e4c:	00007797          	auipc	a5,0x7
    80002e50:	17c7b783          	ld	a5,380(a5) # 80009fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e54:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002e58:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002e5c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002e60:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002e64:	0207f793          	andi	a5,a5,32
    80002e68:	fa078ae3          	beqz	a5,80002e1c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80002e6c:	00007797          	auipc	a5,0x7
    80002e70:	2ac7b783          	ld	a5,684(a5) # 8000a118 <_ZN8KConsole11pendingPutcE>
    80002e74:	fa0784e3          	beqz	a5,80002e1c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	6e4080e7          	jalr	1764(ra) # 8000155c <sysCallGetCharOutput>
    80002e80:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002e84:	00007717          	auipc	a4,0x7
    80002e88:	26470713          	addi	a4,a4,612 # 8000a0e8 <_ZN8KConsole18hasCharactersInputE>
    80002e8c:	03073783          	ld	a5,48(a4)
    80002e90:	fff78793          	addi	a5,a5,-1
    80002e94:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002e98:	00007797          	auipc	a5,0x7
    80002e9c:	1287b783          	ld	a5,296(a5) # 80009fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ea0:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002ea4:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002ea8:	fef44783          	lbu	a5,-17(s0)
    80002eac:	0ff7f793          	andi	a5,a5,255
    80002eb0:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002eb4:	00b50023          	sb	a1,0(a0)
    80002eb8:	f6dff06f          	j	80002e24 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002ebc <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00113423          	sd	ra,8(sp)
    80002ec4:	00813023          	sd	s0,0(sp)
    80002ec8:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	dd8080e7          	jalr	-552(ra) # 80002ca4 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002ed4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002ed8:	00001097          	auipc	ra,0x1
    80002edc:	9fc080e7          	jalr	-1540(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ee0:	00813083          	ld	ra,8(sp)
    80002ee4:	00013403          	ld	s0,0(sp)
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret

0000000080002ef0 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80002ef0:	fe010113          	addi	sp,sp,-32
    80002ef4:	00113c23          	sd	ra,24(sp)
    80002ef8:	00813823          	sd	s0,16(sp)
    80002efc:	00913423          	sd	s1,8(sp)
    80002f00:	02010413          	addi	s0,sp,32
    80002f04:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002f08:	0004c503          	lbu	a0,0(s1)
    80002f0c:	00050a63          	beqz	a0,80002f20 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	c7c080e7          	jalr	-900(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80002f18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f1c:	fedff06f          	j	80002f08 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret

0000000080002f34 <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    80002f34:	fb010113          	addi	sp,sp,-80
    80002f38:	04113423          	sd	ra,72(sp)
    80002f3c:	04813023          	sd	s0,64(sp)
    80002f40:	02913c23          	sd	s1,56(sp)
    80002f44:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80002f48:	00005797          	auipc	a5,0x5
    80002f4c:	27078793          	addi	a5,a5,624 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002f50:	0007b703          	ld	a4,0(a5)
    80002f54:	fce43423          	sd	a4,-56(s0)
    80002f58:	0087b703          	ld	a4,8(a5)
    80002f5c:	fce43823          	sd	a4,-48(s0)
    80002f60:	0107c783          	lbu	a5,16(a5)
    80002f64:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002f68:	00060463          	beqz	a2,80002f70 <_ZN8KConsole8printIntEiii+0x3c>
    80002f6c:	08054263          	bltz	a0,80002ff0 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002f70:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002f74:	00000813          	li	a6,0
    }

    i = 0;
    80002f78:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002f7c:	0005871b          	sext.w	a4,a1
    80002f80:	02b577bb          	remuw	a5,a0,a1
    80002f84:	00048693          	mv	a3,s1
    80002f88:	0014849b          	addiw	s1,s1,1
    80002f8c:	02079793          	slli	a5,a5,0x20
    80002f90:	0207d793          	srli	a5,a5,0x20
    80002f94:	fe040613          	addi	a2,s0,-32
    80002f98:	00f607b3          	add	a5,a2,a5
    80002f9c:	fe87c603          	lbu	a2,-24(a5)
    80002fa0:	fe040793          	addi	a5,s0,-32
    80002fa4:	00d787b3          	add	a5,a5,a3
    80002fa8:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    80002fac:	0005061b          	sext.w	a2,a0
    80002fb0:	02b5553b          	divuw	a0,a0,a1
    80002fb4:	fce674e3          	bgeu	a2,a4,80002f7c <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80002fb8:	00080c63          	beqz	a6,80002fd0 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    80002fbc:	fe040793          	addi	a5,s0,-32
    80002fc0:	009784b3          	add	s1,a5,s1
    80002fc4:	02d00793          	li	a5,45
    80002fc8:	fcf48c23          	sb	a5,-40(s1)
    80002fcc:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80002fd0:	fff4849b          	addiw	s1,s1,-1
    80002fd4:	0204c463          	bltz	s1,80002ffc <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80002fd8:	fe040793          	addi	a5,s0,-32
    80002fdc:	009787b3          	add	a5,a5,s1
    80002fe0:	fd87c503          	lbu	a0,-40(a5)
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	ba8080e7          	jalr	-1112(ra) # 80002b8c <_ZN8KConsole18putCharacterOutputEc>
    80002fec:	fe5ff06f          	j	80002fd0 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    80002ff0:	40a0053b          	negw	a0,a0
        neg = 1;
    80002ff4:	00100813          	li	a6,1
        x = -xx;
    80002ff8:	f81ff06f          	j	80002f78 <_ZN8KConsole8printIntEiii+0x44>
}
    80002ffc:	04813083          	ld	ra,72(sp)
    80003000:	04013403          	ld	s0,64(sp)
    80003004:	03813483          	ld	s1,56(sp)
    80003008:	05010113          	addi	sp,sp,80
    8000300c:	00008067          	ret

0000000080003010 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003010:	ff010113          	addi	sp,sp,-16
    80003014:	00813423          	sd	s0,8(sp)
    80003018:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000301c:	00007797          	auipc	a5,0x7
    80003020:	00c7b783          	ld	a5,12(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003024:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003028:	00500793          	li	a5,5
    8000302c:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003030:	0000b797          	auipc	a5,0xb
    80003034:	0f87b783          	ld	a5,248(a5) # 8000e128 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003038:	00000593          	li	a1,0
    while(curr != 0)
    8000303c:	02078063          	beqz	a5,8000305c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003040:	02063683          	ld	a3,32(a2)
    80003044:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003048:	00e6e863          	bltu	a3,a4,80003058 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000304c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003050:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003054:	fe9ff06f          	j	8000303c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003058:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000305c:	00058a63          	beqz	a1,80003070 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003060:	00c5b423          	sd	a2,8(a1)
}
    80003064:	00813403          	ld	s0,8(sp)
    80003068:	01010113          	addi	sp,sp,16
    8000306c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003070:	0000b797          	auipc	a5,0xb
    80003074:	0ac7bc23          	sd	a2,184(a5) # 8000e128 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003078:	fedff06f          	j	80003064 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000307c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    8000307c:	0000b517          	auipc	a0,0xb
    80003080:	0ac53503          	ld	a0,172(a0) # 8000e128 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003084:	06050e63          	beqz	a0,80003100 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003088:	06050c63          	beqz	a0,80003100 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000308c:	02053783          	ld	a5,32(a0)
    80003090:	00007717          	auipc	a4,0x7
    80003094:	f7073703          	ld	a4,-144(a4) # 8000a000 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003098:	00073703          	ld	a4,0(a4)
    8000309c:	06f76263          	bltu	a4,a5,80003100 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800030a0:	fe010113          	addi	sp,sp,-32
    800030a4:	00113c23          	sd	ra,24(sp)
    800030a8:	00813823          	sd	s0,16(sp)
    800030ac:	00913423          	sd	s1,8(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	0180006f          	j	800030cc <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800030b8:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030bc:	00007717          	auipc	a4,0x7
    800030c0:	f4473703          	ld	a4,-188(a4) # 8000a000 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030c4:	00073703          	ld	a4,0(a4)
    800030c8:	02f76263          	bltu	a4,a5,800030ec <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800030cc:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800030d0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	0b8080e7          	jalr	184(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800030dc:	0000b797          	auipc	a5,0xb
    800030e0:	0497b623          	sd	s1,76(a5) # 8000e128 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800030e4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030e8:	fc0498e3          	bnez	s1,800030b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret
    80003100:	00008067          	ret

0000000080003104 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00113423          	sd	ra,8(sp)
    8000310c:	00813023          	sd	s0,0(sp)
    80003110:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003114:	00001097          	auipc	ra,0x1
    80003118:	f84080e7          	jalr	-124(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
}
    8000311c:	00813083          	ld	ra,8(sp)
    80003120:	00013403          	ld	s0,0(sp)
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00008067          	ret

000000008000312c <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    8000312c:	ff010113          	addi	sp,sp,-16
    80003130:	00113423          	sd	ra,8(sp)
    80003134:	00813023          	sd	s0,0(sp)
    80003138:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	fc0080e7          	jalr	-64(ra) # 800040fc <_ZN15MemoryAllocator5kfreeEPv>
}
    80003144:	00813083          	ld	ra,8(sp)
    80003148:	00013403          	ld	s0,0(sp)
    8000314c:	01010113          	addi	sp,sp,16
    80003150:	00008067          	ret

0000000080003154 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003154:	ff010113          	addi	sp,sp,-16
    80003158:	00813423          	sd	s0,8(sp)
    8000315c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003160:	0000b797          	auipc	a5,0xb
    80003164:	fd07b783          	ld	a5,-48(a5) # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003168:	00000513          	li	a0,0
    while(curr != 0)
    8000316c:	00078863          	beqz	a5,8000317c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003170:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003174:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003178:	ff5ff06f          	j	8000316c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000317c:	0005051b          	sext.w	a0,a0
    80003180:	00813403          	ld	s0,8(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret

000000008000318c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003198:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000319c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800031a0:	0000b797          	auipc	a5,0xb
    800031a4:	f907b783          	ld	a5,-112(a5) # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    800031a8:	02078263          	beqz	a5,800031cc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031ac:	0000b797          	auipc	a5,0xb
    800031b0:	f8478793          	addi	a5,a5,-124 # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    800031b4:	0087b703          	ld	a4,8(a5)
    800031b8:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800031bc:	00a7b423          	sd	a0,8(a5)
    }
}
    800031c0:	00813403          	ld	s0,8(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800031cc:	0000b797          	auipc	a5,0xb
    800031d0:	f6478793          	addi	a5,a5,-156 # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    800031d4:	00a7b423          	sd	a0,8(a5)
    800031d8:	00a7b023          	sd	a0,0(a5)
    800031dc:	fe5ff06f          	j	800031c0 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800031e0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800031e0:	ff010113          	addi	sp,sp,-16
    800031e4:	00813423          	sd	s0,8(sp)
    800031e8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800031ec:	0000b517          	auipc	a0,0xb
    800031f0:	f4453503          	ld	a0,-188(a0) # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    800031f4:	00050c63          	beqz	a0,8000320c <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800031f8:	00853783          	ld	a5,8(a0)
    800031fc:	00078e63          	beqz	a5,80003218 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003200:	0000b717          	auipc	a4,0xb
    80003204:	f2f73823          	sd	a5,-208(a4) # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003208:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000320c:	00813403          	ld	s0,8(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003218:	0000b797          	auipc	a5,0xb
    8000321c:	f1878793          	addi	a5,a5,-232 # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    80003220:	0007b423          	sd	zero,8(a5)
    80003224:	0007b023          	sd	zero,0(a5)
    80003228:	fe1ff06f          	j	80003208 <_ZN9Scheduler3getEv+0x28>

000000008000322c <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003240:	0000b497          	auipc	s1,0xb
    80003244:	ef04b483          	ld	s1,-272(s1) # 8000e130 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003248:	02048863          	beqz	s1,80003278 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    8000324c:	00000613          	li	a2,0
    80003250:	01000593          	li	a1,16
    80003254:	0004851b          	sext.w	a0,s1
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	4b8080e7          	jalr	1208(ra) # 80004710 <_Z8printIntiii>
        printString("\n");
    80003260:	00005517          	auipc	a0,0x5
    80003264:	e8050513          	addi	a0,a0,-384 # 800080e0 <CONSOLE_STATUS+0xd0>
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	310080e7          	jalr	784(ra) # 80004578 <_Z11printStringPKc>
        curr = curr->nextPCB;
    80003270:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003274:	fd5ff06f          	j	80003248 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000328c:	ff010113          	addi	sp,sp,-16
    80003290:	00113423          	sd	ra,8(sp)
    80003294:	00813023          	sd	s0,0(sp)
    80003298:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	508080e7          	jalr	1288(ra) # 800037a4 <_ZN5Riscv10kernelMainEv>
    800032a4:	00813083          	ld	ra,8(sp)
    800032a8:	00013403          	ld	s0,0(sp)
    800032ac:	01010113          	addi	sp,sp,16
    800032b0:	00008067          	ret

00000000800032b4 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800032c4:	00053783          	ld	a5,0(a0)
    800032c8:	0107b783          	ld	a5,16(a5)
    800032cc:	000780e7          	jalr	a5
}
    800032d0:	00813083          	ld	ra,8(sp)
    800032d4:	00013403          	ld	s0,0(sp)
    800032d8:	01010113          	addi	sp,sp,16
    800032dc:	00008067          	ret

00000000800032e0 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800032e0:	ff010113          	addi	sp,sp,-16
    800032e4:	00113423          	sd	ra,8(sp)
    800032e8:	00813023          	sd	s0,0(sp)
    800032ec:	01010413          	addi	s0,sp,16
    800032f0:	00007797          	auipc	a5,0x7
    800032f4:	c7878793          	addi	a5,a5,-904 # 80009f68 <_ZTV6Thread+0x10>
    800032f8:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800032fc:	00853503          	ld	a0,8(a0)
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	f88080e7          	jalr	-120(ra) # 80001288 <mem_free>
}
    80003308:	00813083          	ld	ra,8(sp)
    8000330c:	00013403          	ld	s0,0(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret

0000000080003318 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    80003328:	00007797          	auipc	a5,0x7
    8000332c:	c6878793          	addi	a5,a5,-920 # 80009f90 <_ZTV9Semaphore+0x10>
    80003330:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003334:	00853503          	ld	a0,8(a0)
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	f50080e7          	jalr	-176(ra) # 80001288 <mem_free>
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_Znwm>:
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	ef8080e7          	jalr	-264(ra) # 80001258 <mem_alloc>
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
    8000338c:	f00080e7          	jalr	-256(ra) # 80001288 <mem_free>
}
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0
}
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	f28080e7          	jalr	-216(ra) # 800032e0 <_ZN6ThreadD1Ev>
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
    800033fc:	f20080e7          	jalr	-224(ra) # 80003318 <_ZN9SemaphoreD1Ev>
    80003400:	00048513          	mv	a0,s1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	f74080e7          	jalr	-140(ra) # 80003378 <_ZdlPv>
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	02010113          	addi	sp,sp,32
    8000341c:	00008067          	ret

0000000080003420 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003420:	00853503          	ld	a0,8(a0)
    80003424:	02050663          	beqz	a0,80003450 <_ZN6Thread5startEv+0x30>
{
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00113423          	sd	ra,8(sp)
    80003430:	00813023          	sd	s0,0(sp)
    80003434:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	02c080e7          	jalr	44(ra) # 80001464 <thread_start>
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret
        return -1;
    80003450:	fff00513          	li	a0,-1
}
    80003454:	00008067          	ret

0000000080003458 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003458:	ff010113          	addi	sp,sp,-16
    8000345c:	00113423          	sd	ra,8(sp)
    80003460:	00813023          	sd	s0,0(sp)
    80003464:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	ecc080e7          	jalr	-308(ra) # 80001334 <thread_dispatch>
}
    80003470:	00813083          	ld	ra,8(sp)
    80003474:	00013403          	ld	s0,0(sp)
    80003478:	01010113          	addi	sp,sp,16
    8000347c:	00008067          	ret

0000000080003480 <_ZN6Thread5sleepEm>:
{
    80003480:	ff010113          	addi	sp,sp,-16
    80003484:	00113423          	sd	ra,8(sp)
    80003488:	00813023          	sd	s0,0(sp)
    8000348c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	fa8080e7          	jalr	-88(ra) # 80001438 <time_sleep>
}
    80003498:	00813083          	ld	ra,8(sp)
    8000349c:	00013403          	ld	s0,0(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret

00000000800034a8 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800034a8:	fe010113          	addi	sp,sp,-32
    800034ac:	00113c23          	sd	ra,24(sp)
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	01213023          	sd	s2,0(sp)
    800034bc:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800034c0:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800034c4:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800034c8:	0004b783          	ld	a5,0(s1)
    800034cc:	0187b783          	ld	a5,24(a5)
    800034d0:	00048513          	mv	a0,s1
    800034d4:	000780e7          	jalr	a5
        Thread::sleep(time);
    800034d8:	00090513          	mv	a0,s2
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	fa4080e7          	jalr	-92(ra) # 80003480 <_ZN6Thread5sleepEm>
    while(true)
    800034e4:	fe5ff06f          	j	800034c8 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800034e8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00113423          	sd	ra,8(sp)
    800034f0:	00813023          	sd	s0,0(sp)
    800034f4:	01010413          	addi	s0,sp,16
    800034f8:	00007797          	auipc	a5,0x7
    800034fc:	a7078793          	addi	a5,a5,-1424 # 80009f68 <_ZTV6Thread+0x10>
    80003500:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003504:	00850513          	addi	a0,a0,8
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	f88080e7          	jalr	-120(ra) # 80001490 <thread_make_pcb>
}
    80003510:	00813083          	ld	ra,8(sp)
    80003514:	00013403          	ld	s0,0(sp)
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00008067          	ret

0000000080003520 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003520:	ff010113          	addi	sp,sp,-16
    80003524:	00113423          	sd	ra,8(sp)
    80003528:	00813023          	sd	s0,0(sp)
    8000352c:	01010413          	addi	s0,sp,16
    80003530:	00007797          	auipc	a5,0x7
    80003534:	a3878793          	addi	a5,a5,-1480 # 80009f68 <_ZTV6Thread+0x10>
    80003538:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000353c:	00050613          	mv	a2,a0
    80003540:	00000597          	auipc	a1,0x0
    80003544:	d7458593          	addi	a1,a1,-652 # 800032b4 <_ZN6Thread6runnerEPv>
    80003548:	00850513          	addi	a0,a0,8
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	f44080e7          	jalr	-188(ra) # 80001490 <thread_make_pcb>
}
    80003554:	00813083          	ld	ra,8(sp)
    80003558:	00013403          	ld	s0,0(sp)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003564:	00853503          	ld	a0,8(a0)
    80003568:	02050663          	beqz	a0,80003594 <_ZN9Semaphore4waitEv+0x30>
{
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	e64080e7          	jalr	-412(ra) # 800013e0 <sem_wait>
}
    80003584:	00813083          	ld	ra,8(sp)
    80003588:	00013403          	ld	s0,0(sp)
    8000358c:	01010113          	addi	sp,sp,16
    80003590:	00008067          	ret
        return -1;
    80003594:	fff00513          	li	a0,-1
}
    80003598:	00008067          	ret

000000008000359c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	00050493          	mv	s1,a0
    800035b4:	00007797          	auipc	a5,0x7
    800035b8:	9dc78793          	addi	a5,a5,-1572 # 80009f90 <_ZTV9Semaphore+0x10>
    800035bc:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800035c0:	00850513          	addi	a0,a0,8
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	db8080e7          	jalr	-584(ra) # 8000137c <sem_open>
    if(retval != 0)
    800035cc:	00050463          	beqz	a0,800035d4 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800035d0:	0004b423          	sd	zero,8(s1)
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	02010113          	addi	sp,sp,32
    800035e4:	00008067          	ret

00000000800035e8 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800035e8:	00853503          	ld	a0,8(a0)
    800035ec:	02050663          	beqz	a0,80003618 <_ZN9Semaphore6signalEv+0x30>
{
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00113423          	sd	ra,8(sp)
    800035f8:	00813023          	sd	s0,0(sp)
    800035fc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	e0c080e7          	jalr	-500(ra) # 8000140c <sem_signal>
}
    80003608:	00813083          	ld	ra,8(sp)
    8000360c:	00013403          	ld	s0,0(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
        return -1;
    80003618:	fff00513          	li	a0,-1
}
    8000361c:	00008067          	ret

0000000080003620 <_ZN7Console4getcEv>:
{
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00113423          	sd	ra,8(sp)
    80003628:	00813023          	sd	s0,0(sp)
    8000362c:	01010413          	addi	s0,sp,16
    return ::getc();
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	ee0080e7          	jalr	-288(ra) # 80001510 <getc>
}
    80003638:	00813083          	ld	ra,8(sp)
    8000363c:	00013403          	ld	s0,0(sp)
    80003640:	01010113          	addi	sp,sp,16
    80003644:	00008067          	ret

0000000080003648 <_ZN7Console4putcEc>:
{
    80003648:	ff010113          	addi	sp,sp,-16
    8000364c:	00113423          	sd	ra,8(sp)
    80003650:	00813023          	sd	s0,0(sp)
    80003654:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	ee0080e7          	jalr	-288(ra) # 80001538 <putc>
}
    80003660:	00813083          	ld	ra,8(sp)
    80003664:	00013403          	ld	s0,0(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	01213023          	sd	s2,0(sp)
    80003684:	02010413          	addi	s0,sp,32
    80003688:	00050493          	mv	s1,a0
    8000368c:	00058913          	mv	s2,a1
    80003690:	01000513          	li	a0,16
    80003694:	00000097          	auipc	ra,0x0
    80003698:	cbc080e7          	jalr	-836(ra) # 80003350 <_Znwm>
    8000369c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800036a0:	00953023          	sd	s1,0(a0)
    800036a4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800036a8:	00000597          	auipc	a1,0x0
    800036ac:	e0058593          	addi	a1,a1,-512 # 800034a8 <_ZN14PeriodicThread6runnerEPv>
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00000097          	auipc	ra,0x0
    800036b8:	e34080e7          	jalr	-460(ra) # 800034e8 <_ZN6ThreadC1EPFvPvES0_>
    800036bc:	00007797          	auipc	a5,0x7
    800036c0:	84478793          	addi	a5,a5,-1980 # 80009f00 <_ZTV14PeriodicThread+0x10>
    800036c4:	00f4b023          	sd	a5,0(s1)
}
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	00013903          	ld	s2,0(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret

00000000800036e0 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00113423          	sd	ra,8(sp)
    800036e8:	00813023          	sd	s0,0(sp)
    800036ec:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800036f0:	00007797          	auipc	a5,0x7
    800036f4:	8e87b783          	ld	a5,-1816(a5) # 80009fd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800036f8:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	f64080e7          	jalr	-156(ra) # 80002660 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	2f8080e7          	jalr	760(ra) # 800029fc <_ZN8KConsole10initializeEv>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN5Riscv16enableInterruptsEv>:
void Riscv::endSystem()
{
    Riscv::disableInterrupts();
}

void Riscv::enableInterrupts() {
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00813423          	sd	s0,8(sp)
    80003724:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003728:	00200793          	li	a5,2
    8000372c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003730:	00813403          	ld	s0,8(sp)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret

000000008000373c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00813423          	sd	s0,8(sp)
    80003744:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003748:	00200793          	li	a5,2
    8000374c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003750:	00813403          	ld	s0,8(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <_ZN5Riscv9endSystemEv>:
{
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	fd0080e7          	jalr	-48(ra) # 8000373c <_ZN5Riscv17disableInterruptsEv>
}
    80003774:	00813083          	ld	ra,8(sp)
    80003778:	00013403          	ld	s0,0(sp)
    8000377c:	01010113          	addi	sp,sp,16
    80003780:	00008067          	ret

0000000080003784 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00813423          	sd	s0,8(sp)
    8000378c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003790:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003794:	10200073          	sret
}
    80003798:	00813403          	ld	s0,8(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    800037a4:	0000b797          	auipc	a5,0xb
    800037a8:	99c7c783          	lbu	a5,-1636(a5) # 8000e140 <_ZN5Riscv16kernelMainCalledE>
    800037ac:	00078463          	beqz	a5,800037b4 <_ZN5Riscv10kernelMainEv+0x10>
    800037b0:	00008067          	ret
{
    800037b4:	ff010113          	addi	sp,sp,-16
    800037b8:	00113423          	sd	ra,8(sp)
    800037bc:	00813023          	sd	s0,0(sp)
    800037c0:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800037c4:	00100793          	li	a5,1
    800037c8:	0000b717          	auipc	a4,0xb
    800037cc:	96f70c23          	sb	a5,-1672(a4) # 8000e140 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	f10080e7          	jalr	-240(ra) # 800036e0 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	f44080e7          	jalr	-188(ra) # 8000371c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800037e0:	00007797          	auipc	a5,0x7
    800037e4:	8387b783          	ld	a5,-1992(a5) # 8000a018 <_GLOBAL_OFFSET_TABLE_+0x60>
    800037e8:	0007b503          	ld	a0,0(a5)
    800037ec:	fffff097          	auipc	ra,0xfffff
    800037f0:	f94080e7          	jalr	-108(ra) # 80002780 <_ZN3PCB10isFinishedEv>
    800037f4:	00051863          	bnez	a0,80003804 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	b3c080e7          	jalr	-1220(ra) # 80001334 <thread_dispatch>
    while(!PCB::userPCB->isFinished())
    80003800:	fe1ff06f          	j	800037e0 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    finishSystem = true;
    80003804:	00100793          	li	a5,1
    80003808:	0000b717          	auipc	a4,0xb
    8000380c:	92f70ca3          	sb	a5,-1735(a4) # 8000e141 <_ZN5Riscv12finishSystemE>
    80003810:	00c0006f          	j	8000381c <_ZN5Riscv10kernelMainEv+0x78>
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	b20080e7          	jalr	-1248(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    8000381c:	00006797          	auipc	a5,0x6
    80003820:	7f47b783          	ld	a5,2036(a5) # 8000a010 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003824:	0007b503          	ld	a0,0(a5)
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	f58080e7          	jalr	-168(ra) # 80002780 <_ZN3PCB10isFinishedEv>
    80003830:	fe0502e3          	beqz	a0,80003814 <_ZN5Riscv10kernelMainEv+0x70>
    }
    disableInterrupts();
    80003834:	00000097          	auipc	ra,0x0
    80003838:	f08080e7          	jalr	-248(ra) # 8000373c <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    8000383c:	00000097          	auipc	ra,0x0
    80003840:	f20080e7          	jalr	-224(ra) # 8000375c <_ZN5Riscv9endSystemEv>
}
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	00813023          	sd	s0,0(sp)
    80003860:	01010413          	addi	s0,sp,16
    userMain();
    80003864:	00001097          	auipc	ra,0x1
    80003868:	3b8080e7          	jalr	952(ra) # 80004c1c <_Z8userMainv>
}
    8000386c:	00813083          	ld	ra,8(sp)
    80003870:	00013403          	ld	s0,0(sp)
    80003874:	01010113          	addi	sp,sp,16
    80003878:	00008067          	ret

000000008000387c <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    myTests();
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	44c080e7          	jalr	1100(ra) # 80001cd8 <_Z7myTestsv>
}
    80003894:	00813083          	ld	ra,8(sp)
    80003898:	00013403          	ld	s0,0(sp)
    8000389c:	01010113          	addi	sp,sp,16
    800038a0:	00008067          	ret

00000000800038a4 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800038a4:	ff010113          	addi	sp,sp,-16
    800038a8:	00813423          	sd	s0,8(sp)
    800038ac:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800038b0:	00200793          	li	a5,2
    800038b4:	1047b073          	csrc	sie,a5
}
    800038b8:	00813403          	ld	s0,8(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813423          	sd	s0,8(sp)
    800038cc:	01010413          	addi	s0,sp,16
    while(true)
    800038d0:	0000006f          	j	800038d0 <_ZN5Riscv9idleRiscvEPv+0xc>

00000000800038d4 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    800038d4:	ff010113          	addi	sp,sp,-16
    800038d8:	00813423          	sd	s0,8(sp)
    800038dc:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800038e0:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800038e4:	00006717          	auipc	a4,0x6
    800038e8:	74473703          	ld	a4,1860(a4) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    800038ec:	00073703          	ld	a4,0(a4)
    800038f0:	01073703          	ld	a4,16(a4)
    800038f4:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800038f8:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800038fc:	00078593          	mv	a1,a5
}
    80003900:	00813403          	ld	s0,8(sp)
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00008067          	ret

000000008000390c <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00813423          	sd	s0,8(sp)
    80003914:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003918:	00006797          	auipc	a5,0x6
    8000391c:	7107b783          	ld	a5,1808(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003920:	0007b783          	ld	a5,0(a5)
    80003924:	0007c783          	lbu	a5,0(a5)
    80003928:	00078c63          	beqz	a5,80003940 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000392c:	10000793          	li	a5,256
    80003930:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003934:	00813403          	ld	s0,8(sp)
    80003938:	01010113          	addi	sp,sp,16
    8000393c:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003940:	10000793          	li	a5,256
    80003944:	1007b073          	csrc	sstatus,a5
    80003948:	fedff06f          	j	80003934 <_ZN5Riscv14changePrivModeEv+0x28>

000000008000394c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    8000394c:	f9010113          	addi	sp,sp,-112
    80003950:	06113423          	sd	ra,104(sp)
    80003954:	06813023          	sd	s0,96(sp)
    80003958:	04913c23          	sd	s1,88(sp)
    8000395c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003960:	00070713          	mv	a4,a4
    80003964:	00006797          	auipc	a5,0x6
    80003968:	6dc7b783          	ld	a5,1756(a5) # 8000a040 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000396c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003970:	00006797          	auipc	a5,0x6
    80003974:	6b87b783          	ld	a5,1720(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003978:	0007b783          	ld	a5,0(a5)
    8000397c:	14002773          	csrr	a4,sscratch
    80003980:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003984:	142027f3          	csrr	a5,scause
    80003988:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000398c:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003990:	00900713          	li	a4,9
    80003994:	02f76e63          	bltu	a4,a5,800039d0 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003998:	00800713          	li	a4,8
    8000399c:	18e7f463          	bgeu	a5,a4,80003b24 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    800039a0:	00500713          	li	a4,5
    800039a4:	16e78a63          	beq	a5,a4,80003b18 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    800039a8:	00700713          	li	a4,7
    800039ac:	00e79863          	bne	a5,a4,800039bc <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	df4080e7          	jalr	-524(ra) # 800027a4 <_ZN3PCB17threadExitHandlerEv>
            break;
    800039b8:	1200006f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    800039bc:	00200713          	li	a4,2
    800039c0:	10e79c63          	bne	a5,a4,80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	de0080e7          	jalr	-544(ra) # 800027a4 <_ZN3PCB17threadExitHandlerEv>
            break;
    800039cc:	10c0006f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    800039d0:	fff00713          	li	a4,-1
    800039d4:	03f71713          	slli	a4,a4,0x3f
    800039d8:	00170713          	addi	a4,a4,1
    800039dc:	06e78a63          	beq	a5,a4,80003a50 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    800039e0:	fff00713          	li	a4,-1
    800039e4:	03f71713          	slli	a4,a4,0x3f
    800039e8:	00970713          	addi	a4,a4,9
    800039ec:	0ee79663          	bne	a5,a4,80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    800039f0:	00006797          	auipc	a5,0x6
    800039f4:	5d87b783          	ld	a5,1496(a5) # 80009fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800039f8:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    800039fc:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003a00:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003a04:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003a08:	0017f793          	andi	a5,a5,1
    80003a0c:	02078863          	beqz	a5,80003a3c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003a10:	00006797          	auipc	a5,0x6
    80003a14:	5d87b783          	ld	a5,1496(a5) # 80009fe8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a18:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003a1c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003a20:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003a24:	00058513          	mv	a0,a1
    80003a28:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003a2c:	00006797          	auipc	a5,0x6
    80003a30:	5b47b783          	ld	a5,1460(a5) # 80009fe0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a34:	0007b783          	ld	a5,0(a5)
    80003a38:	0c079263          	bnez	a5,80003afc <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	d78080e7          	jalr	-648(ra) # 800057b4 <plic_claim>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	da8080e7          	jalr	-600(ra) # 800057ec <plic_complete>
            break;
    80003a4c:	08c0006f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003a50:	141027f3          	csrr	a5,sepc
    80003a54:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003a58:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003a5c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003a60:	100027f3          	csrr	a5,sstatus
    80003a64:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003a68:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003a6c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003a70:	00200793          	li	a5,2
    80003a74:	1447b073          	csrc	sip,a5
            totalTime++;
    80003a78:	0000a717          	auipc	a4,0xa
    80003a7c:	6c870713          	addi	a4,a4,1736 # 8000e140 <_ZN5Riscv16kernelMainCalledE>
    80003a80:	00873783          	ld	a5,8(a4)
    80003a84:	00178793          	addi	a5,a5,1
    80003a88:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003a8c:	00006497          	auipc	s1,0x6
    80003a90:	5644b483          	ld	s1,1380(s1) # 80009ff0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003a94:	0004b783          	ld	a5,0(s1)
    80003a98:	00178793          	addi	a5,a5,1
    80003a9c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	5dc080e7          	jalr	1500(ra) # 8000307c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003aa8:	00006797          	auipc	a5,0x6
    80003aac:	5807b783          	ld	a5,1408(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003ab0:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003ab4:	0187b783          	ld	a5,24(a5)
    80003ab8:	0004b703          	ld	a4,0(s1)
    80003abc:	02f77863          	bgeu	a4,a5,80003aec <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003ac0:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003ac4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003ac8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003acc:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	e3c080e7          	jalr	-452(ra) # 8000390c <_ZN5Riscv14changePrivModeEv>
}
    80003ad8:	06813083          	ld	ra,104(sp)
    80003adc:	06013403          	ld	s0,96(sp)
    80003ae0:	05813483          	ld	s1,88(sp)
    80003ae4:	07010113          	addi	sp,sp,112
    80003ae8:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003aec:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	a68080e7          	jalr	-1432(ra) # 80002558 <_ZN3PCB8dispatchEv>
    80003af8:	fc9ff06f          	j	80003ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003afc:	fff78793          	addi	a5,a5,-1
    80003b00:	00006717          	auipc	a4,0x6
    80003b04:	4e073703          	ld	a4,1248(a4) # 80009fe0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b08:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003b0c:	fffff097          	auipc	ra,0xfffff
    80003b10:	fa0080e7          	jalr	-96(ra) # 80002aac <_ZN8KConsole17putCharacterInputEc>
    80003b14:	f29ff06f          	j	80003a3c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	c8c080e7          	jalr	-884(ra) # 800027a4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003b20:	fb9ff06f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003b24:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003b28:	14102773          	csrr	a4,sepc
    80003b2c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003b30:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003b34:	00470713          	addi	a4,a4,4
    80003b38:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b3c:	10002773          	csrr	a4,sstatus
    80003b40:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003b44:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003b48:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003b4c:	04300713          	li	a4,67
    80003b50:	02f76463          	bltu	a4,a5,80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003b54:	00279793          	slli	a5,a5,0x2
    80003b58:	00004717          	auipc	a4,0x4
    80003b5c:	67470713          	addi	a4,a4,1652 # 800081cc <CONSOLE_STATUS+0x1bc>
    80003b60:	00e787b3          	add	a5,a5,a4
    80003b64:	0007a783          	lw	a5,0(a5)
    80003b68:	00e787b3          	add	a5,a5,a4
    80003b6c:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	550080e7          	jalr	1360(ra) # 800040c0 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003b78:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b7c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b80:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b84:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	d84080e7          	jalr	-636(ra) # 8000390c <_ZN5Riscv14changePrivModeEv>
}
    80003b90:	f49ff06f          	j	80003ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	590080e7          	jalr	1424(ra) # 80004124 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003b9c:	fddff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003ba0:	fffff097          	auipc	ra,0xfffff
    80003ba4:	dc8080e7          	jalr	-568(ra) # 80002968 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003ba8:	fd1ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003bac:	fffff097          	auipc	ra,0xfffff
    80003bb0:	cd8080e7          	jalr	-808(ra) # 80002884 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003bb4:	fc5ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	d6c080e7          	jalr	-660(ra) # 80002924 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003bc0:	fb9ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	c2c080e7          	jalr	-980(ra) # 800027f0 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003bcc:	fadff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	bd4080e7          	jalr	-1068(ra) # 800027a4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003bd8:	fa1ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	c44080e7          	jalr	-956(ra) # 80002820 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003be4:	f95ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	804080e7          	jalr	-2044(ra) # 800043ec <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003bf0:	f89ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	898080e7          	jalr	-1896(ra) # 8000448c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003bfc:	f7dff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	8e0080e7          	jalr	-1824(ra) # 800044e0 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003c08:	f71ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	918080e7          	jalr	-1768(ra) # 80004524 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003c14:	f65ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	134080e7          	jalr	308(ra) # 80002d4c <_ZN8KConsole11getcHandlerEv>
                    break;
    80003c20:	f59ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	0f8080e7          	jalr	248(ra) # 80002d1c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003c2c:	f4dff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	28c080e7          	jalr	652(ra) # 80002ebc <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003c38:	f41ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003c3c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003c3c:	ff010113          	addi	sp,sp,-16
    80003c40:	00813423          	sd	s0,8(sp)
    80003c44:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003c48:	0000a717          	auipc	a4,0xa
    80003c4c:	50872703          	lw	a4,1288(a4) # 8000e150 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c50:	00100793          	li	a5,1
    80003c54:	04f70263          	beq	a4,a5,80003c98 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003c58:	0000a797          	auipc	a5,0xa
    80003c5c:	4f878793          	addi	a5,a5,1272 # 8000e150 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c60:	00100713          	li	a4,1
    80003c64:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003c68:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c6c:	00006717          	auipc	a4,0x6
    80003c70:	36473703          	ld	a4,868(a4) # 80009fd0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c74:	00073703          	ld	a4,0(a4)
    80003c78:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c7c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c80:	00006797          	auipc	a5,0x6
    80003c84:	3b07b783          	ld	a5,944(a5) # 8000a030 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003c88:	0007b783          	ld	a5,0(a5)
    80003c8c:	40e787b3          	sub	a5,a5,a4
    80003c90:	ff178793          	addi	a5,a5,-15
    80003c94:	00f73023          	sd	a5,0(a4)
}
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret

0000000080003ca4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80003ca4:	fd010113          	addi	sp,sp,-48
    80003ca8:	02113423          	sd	ra,40(sp)
    80003cac:	02813023          	sd	s0,32(sp)
    80003cb0:	00913c23          	sd	s1,24(sp)
    80003cb4:	01213823          	sd	s2,16(sp)
    80003cb8:	01313423          	sd	s3,8(sp)
    80003cbc:	03010413          	addi	s0,sp,48
    80003cc0:	00050493          	mv	s1,a0
    80003cc4:	00058993          	mv	s3,a1
    80003cc8:	00060913          	mv	s2,a2
    initMemory();
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	f70080e7          	jalr	-144(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003cd4:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003cd8:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80003cdc:	0000a797          	auipc	a5,0xa
    80003ce0:	47c7b783          	ld	a5,1148(a5) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    80003ce4:	02078e63          	beqz	a5,80003d20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003ce8:	00006717          	auipc	a4,0x6
    80003cec:	34873703          	ld	a4,840(a4) # 8000a030 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003cf0:	00073703          	ld	a4,0(a4)
    80003cf4:	03276c63          	bltu	a4,s2,80003d2c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80003cf8:	00893783          	ld	a5,8(s2)
    80003cfc:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80003d00:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80003d04:	02813083          	ld	ra,40(sp)
    80003d08:	02013403          	ld	s0,32(sp)
    80003d0c:	01813483          	ld	s1,24(sp)
    80003d10:	01013903          	ld	s2,16(sp)
    80003d14:	00813983          	ld	s3,8(sp)
    80003d18:	03010113          	addi	sp,sp,48
    80003d1c:	00008067          	ret
        headAllocated = newAllocated;
    80003d20:	0000a797          	auipc	a5,0xa
    80003d24:	4297bc23          	sd	s1,1080(a5) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    80003d28:	fddff06f          	j	80003d04 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003d2c:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80003d30:	0000a797          	auipc	a5,0xa
    80003d34:	4297b423          	sd	s1,1064(a5) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
}
    80003d38:	fcdff06f          	j	80003d04 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080003d3c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	01213023          	sd	s2,0(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	00050493          	mv	s1,a0
    80003d58:	00058913          	mv	s2,a1
    initMemory();
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	ee0080e7          	jalr	-288(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003d64:	0000a797          	auipc	a5,0xa
    80003d68:	3f47b783          	ld	a5,1012(a5) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003d6c:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003d70:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003d74:	00000713          	li	a4,0
    while(curr != 0)
    80003d78:	00078c63          	beqz	a5,80003d90 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003d7c:	00f4e863          	bltu	s1,a5,80003d8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003d80:	00078713          	mv	a4,a5
        curr = curr->next;
    80003d84:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d88:	ff1ff06f          	j	80003d78 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003d8c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003d90:	02070063          	beqz	a4,80003db0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003d94:	00973423          	sd	s1,8(a4)
}
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	00013903          	ld	s2,0(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
        headAllocated = newAllocated;
    80003db0:	0000a797          	auipc	a5,0xa
    80003db4:	3a97b423          	sd	s1,936(a5) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    80003db8:	fe1ff06f          	j	80003d98 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003dbc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	01213023          	sd	s2,0(sp)
    80003dd0:	02010413          	addi	s0,sp,32
    80003dd4:	00050913          	mv	s2,a0
    initMemory();
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	e64080e7          	jalr	-412(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003de0:	0000a497          	auipc	s1,0xa
    80003de4:	3804b483          	ld	s1,896(s1) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003de8:	00000713          	li	a4,0
    while(curr != 0)
    80003dec:	0c048063          	beqz	s1,80003eac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80003df0:	0004b783          	ld	a5,0(s1)
    80003df4:	0127f863          	bgeu	a5,s2,80003e04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003df8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003dfc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003e00:	fedff06f          	j	80003dec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003e04:	01090693          	addi	a3,s2,16
    80003e08:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80003e0c:	01078613          	addi	a2,a5,16
    80003e10:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80003e14:	00006597          	auipc	a1,0x6
    80003e18:	21c5b583          	ld	a1,540(a1) # 8000a030 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003e1c:	0005b583          	ld	a1,0(a1)
    80003e20:	06d5e063          	bltu	a1,a3,80003e80 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80003e24:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003e28:	01000513          	li	a0,16
    80003e2c:	02b57663          	bgeu	a0,a1,80003e58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80003e30:	0084b783          	ld	a5,8(s1)
    80003e34:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e38:	ff058593          	addi	a1,a1,-16
    80003e3c:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    80003e40:	00070663          	beqz	a4,80003e4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80003e44:	00d73423          	sd	a3,8(a4)
    80003e48:	0400006f          	j	80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80003e4c:	0000a797          	auipc	a5,0xa
    80003e50:	30d7ba23          	sd	a3,788(a5) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
    80003e54:	0340006f          	j	80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80003e58:	00070a63          	beqz	a4,80003e6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80003e5c:	0084b683          	ld	a3,8(s1)
    80003e60:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80003e64:	00078913          	mv	s2,a5
    80003e68:	0200006f          	j	80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80003e6c:	0084b703          	ld	a4,8(s1)
    80003e70:	0000a697          	auipc	a3,0xa
    80003e74:	2ee6b823          	sd	a4,752(a3) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80003e78:	00078913          	mv	s2,a5
    80003e7c:	00c0006f          	j	80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80003e80:	02070063          	beqz	a4,80003ea0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80003e84:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80003e88:	00090593          	mv	a1,s2
    80003e8c:	00048513          	mv	a0,s1
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	e14080e7          	jalr	-492(ra) # 80003ca4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e98:	01048513          	addi	a0,s1,16
            break;
    80003e9c:	0140006f          	j	80003eb0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80003ea0:	0000a797          	auipc	a5,0xa
    80003ea4:	2c07b023          	sd	zero,704(a5) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
    80003ea8:	fe1ff06f          	j	80003e88 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80003eac:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003eb0:	01813083          	ld	ra,24(sp)
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	00813483          	ld	s1,8(sp)
    80003ebc:	00013903          	ld	s2,0(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret

0000000080003ec8 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003ec8:	ff010113          	addi	sp,sp,-16
    80003ecc:	00113423          	sd	ra,8(sp)
    80003ed0:	00813023          	sd	s0,0(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	ee4080e7          	jalr	-284(ra) # 80003dbc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003ee0:	00813083          	ld	ra,8(sp)
    80003ee4:	00013403          	ld	s0,0(sp)
    80003ee8:	01010113          	addi	sp,sp,16
    80003eec:	00008067          	ret

0000000080003ef0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
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
    80003f14:	d2c080e7          	jalr	-724(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003f18:	0000a797          	auipc	a5,0xa
    80003f1c:	2487b783          	ld	a5,584(a5) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003f20:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003f24:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003f28:	00000713          	li	a4,0
    while(curr != 0)
    80003f2c:	00078c63          	beqz	a5,80003f44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f30:	00f4e863          	bltu	s1,a5,80003f40 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003f34:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f38:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f3c:	ff1ff06f          	j	80003f2c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003f40:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f44:	04070663          	beqz	a4,80003f90 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003f48:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003f4c:	0084b783          	ld	a5,8(s1)
    80003f50:	00078a63          	beqz	a5,80003f64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003f54:	0004b603          	ld	a2,0(s1)
    80003f58:	01060693          	addi	a3,a2,16
    80003f5c:	00d486b3          	add	a3,s1,a3
    80003f60:	02d78e63          	beq	a5,a3,80003f9c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003f64:	00070a63          	beqz	a4,80003f78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003f68:	00073683          	ld	a3,0(a4)
    80003f6c:	01068793          	addi	a5,a3,16
    80003f70:	00f707b3          	add	a5,a4,a5
    80003f74:	04978263          	beq	a5,s1,80003fb8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003f78:	01813083          	ld	ra,24(sp)
    80003f7c:	01013403          	ld	s0,16(sp)
    80003f80:	00813483          	ld	s1,8(sp)
    80003f84:	00013903          	ld	s2,0(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret
        headFree = newSegment;
    80003f90:	0000a797          	auipc	a5,0xa
    80003f94:	1c97b823          	sd	s1,464(a5) # 8000e160 <_ZN15MemoryAllocator8headFreeE>
    80003f98:	fb5ff06f          	j	80003f4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003f9c:	0007b683          	ld	a3,0(a5)
    80003fa0:	00d60633          	add	a2,a2,a3
    80003fa4:	01060613          	addi	a2,a2,16
    80003fa8:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003fac:	0087b783          	ld	a5,8(a5)
    80003fb0:	00f4b423          	sd	a5,8(s1)
    80003fb4:	fb1ff06f          	j	80003f64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003fb8:	0004b783          	ld	a5,0(s1)
    80003fbc:	00f686b3          	add	a3,a3,a5
    80003fc0:	01068693          	addi	a3,a3,16
    80003fc4:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003fc8:	0084b783          	ld	a5,8(s1)
    80003fcc:	00f73423          	sd	a5,8(a4)
}
    80003fd0:	fa9ff06f          	j	80003f78 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003fd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003fd4:	fe010113          	addi	sp,sp,-32
    80003fd8:	00113c23          	sd	ra,24(sp)
    80003fdc:	00813823          	sd	s0,16(sp)
    80003fe0:	00913423          	sd	s1,8(sp)
    80003fe4:	01213023          	sd	s2,0(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	00050913          	mv	s2,a0
    initMemory();
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	c4c080e7          	jalr	-948(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ff8:	0000a497          	auipc	s1,0xa
    80003ffc:	1604b483          	ld	s1,352(s1) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004000:	00000713          	li	a4,0
    while(curr != 0)
    80004004:	02048a63          	beqz	s1,80004038 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004008:	01048793          	addi	a5,s1,16
    8000400c:	01278863          	beq	a5,s2,8000401c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004010:	00048713          	mv	a4,s1
        curr = curr->next;
    80004014:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004018:	fedff06f          	j	80004004 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    8000401c:	02070e63          	beqz	a4,80004058 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004020:	0084b783          	ld	a5,8(s1)
    80004024:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004028:	0004b583          	ld	a1,0(s1)
    8000402c:	00048513          	mv	a0,s1
    80004030:	00000097          	auipc	ra,0x0
    80004034:	ec0080e7          	jalr	-320(ra) # 80003ef0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004038:	02048863          	beqz	s1,80004068 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000403c:	00000513          	li	a0,0
    else
        return 1;
}
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	00013903          	ld	s2,0(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret
                headAllocated = curr->next;
    80004058:	0084b783          	ld	a5,8(s1)
    8000405c:	0000a717          	auipc	a4,0xa
    80004060:	0ef73e23          	sd	a5,252(a4) # 8000e158 <_ZN15MemoryAllocator13headAllocatedE>
    80004064:	fc5ff06f          	j	80004028 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004068:	00100513          	li	a0,1
    8000406c:	fd5ff06f          	j	80004040 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004070 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00113423          	sd	ra,8(sp)
    80004078:	00813023          	sd	s0,0(sp)
    8000407c:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004080:	00000097          	auipc	ra,0x0
    80004084:	f54080e7          	jalr	-172(ra) # 80003fd4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004088:	00813083          	ld	ra,8(sp)
    8000408c:	00013403          	ld	s0,0(sp)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00113423          	sd	ra,8(sp)
    800040a0:	00813023          	sd	s0,0(sp)
    800040a4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	e20080e7          	jalr	-480(ra) # 80003ec8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800040b0:	00813083          	ld	ra,8(sp)
    800040b4:	00013403          	ld	s0,0(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret

00000000800040c0 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00113423          	sd	ra,8(sp)
    800040c8:	00813023          	sd	s0,0(sp)
    800040cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800040d0:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800040d4:	00651513          	slli	a0,a0,0x6
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	fc0080e7          	jalr	-64(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800040e0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800040e4:	fffff097          	auipc	ra,0xfffff
    800040e8:	7f0080e7          	jalr	2032(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00113423          	sd	ra,8(sp)
    80004104:	00813023          	sd	s0,0(sp)
    80004108:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	f64080e7          	jalr	-156(ra) # 80004070 <_ZN15MemoryAllocator8mem_freeEPv>
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004124:	ff010113          	addi	sp,sp,-16
    80004128:	00113423          	sd	ra,8(sp)
    8000412c:	00813023          	sd	s0,0(sp)
    80004130:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004134:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	fc4080e7          	jalr	-60(ra) # 800040fc <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004140:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	790080e7          	jalr	1936(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    8000415c:	ff010113          	addi	sp,sp,-16
    80004160:	00813423          	sd	s0,8(sp)
    80004164:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004168:	00b52a23          	sw	a1,20(a0)
    8000416c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004170:	00053423          	sd	zero,8(a0)
    80004174:	00053023          	sd	zero,0(a0)
}
    80004178:	00813403          	ld	s0,8(sp)
    8000417c:	01010113          	addi	sp,sp,16
    80004180:	00008067          	ret

0000000080004184 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00813423          	sd	s0,8(sp)
    8000418c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004190:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004194:	00053783          	ld	a5,0(a0)
    80004198:	00078e63          	beqz	a5,800041b4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000419c:	00853783          	ld	a5,8(a0)
    800041a0:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800041a4:	00b53423          	sd	a1,8(a0)
    }
}
    800041a8:	00813403          	ld	s0,8(sp)
    800041ac:	01010113          	addi	sp,sp,16
    800041b0:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800041b4:	00b53423          	sd	a1,8(a0)
    800041b8:	00b53023          	sd	a1,0(a0)
    800041bc:	fedff06f          	j	800041a8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800041c0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00113423          	sd	ra,8(sp)
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800041d0:	00006797          	auipc	a5,0x6
    800041d4:	e587b783          	ld	a5,-424(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041d8:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800041dc:	00200793          	li	a5,2
    800041e0:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	fa0080e7          	jalr	-96(ra) # 80004184 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	36c080e7          	jalr	876(ra) # 80002558 <_ZN3PCB8dispatchEv>
}
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret

0000000080004204 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004204:	00006797          	auipc	a5,0x6
    80004208:	e247b783          	ld	a5,-476(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000420c:	0007b783          	ld	a5,0(a5)
    80004210:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004214:	01052783          	lw	a5,16(a0)
    80004218:	fff7879b          	addiw	a5,a5,-1
    8000421c:	00f52823          	sw	a5,16(a0)
    80004220:	02079713          	slli	a4,a5,0x20
    80004224:	00074663          	bltz	a4,80004230 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004228:	00000513          	li	a0,0
    8000422c:	00008067          	ret
{
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00113423          	sd	ra,8(sp)
    80004238:	00813023          	sd	s0,0(sp)
    8000423c:	01010413          	addi	s0,sp,16
        block();
    80004240:	00000097          	auipc	ra,0x0
    80004244:	f80080e7          	jalr	-128(ra) # 800041c0 <_ZN10KSemaphore5blockEv>
}
    80004248:	00000513          	li	a0,0
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000425c:	ff010113          	addi	sp,sp,-16
    80004260:	00813423          	sd	s0,8(sp)
    80004264:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004268:	00053503          	ld	a0,0(a0)
    8000426c:	00813403          	ld	s0,8(sp)
    80004270:	01010113          	addi	sp,sp,16
    80004274:	00008067          	ret

0000000080004278 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004278:	ff010113          	addi	sp,sp,-16
    8000427c:	00813423          	sd	s0,8(sp)
    80004280:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004284:	00053783          	ld	a5,0(a0)
    80004288:	00078c63          	beqz	a5,800042a0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000428c:	0087b703          	ld	a4,8(a5)
    80004290:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004294:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004298:	00053783          	ld	a5,0(a0)
    8000429c:	00078863          	beqz	a5,800042ac <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800042a0:	00813403          	ld	s0,8(sp)
    800042a4:	01010113          	addi	sp,sp,16
    800042a8:	00008067          	ret
        tailBlocked =0;
    800042ac:	00053423          	sd	zero,8(a0)
    800042b0:	ff1ff06f          	j	800042a0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800042b4 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800042b4:	fe010113          	addi	sp,sp,-32
    800042b8:	00113c23          	sd	ra,24(sp)
    800042bc:	00813823          	sd	s0,16(sp)
    800042c0:	00913423          	sd	s1,8(sp)
    800042c4:	01213023          	sd	s2,0(sp)
    800042c8:	02010413          	addi	s0,sp,32
    800042cc:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800042d0:	00090513          	mv	a0,s2
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	f88080e7          	jalr	-120(ra) # 8000425c <_ZN10KSemaphore15getFirstBlockedEv>
    800042dc:	00050493          	mv	s1,a0
    800042e0:	02050463          	beqz	a0,80004308 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800042e4:	00090513          	mv	a0,s2
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	f90080e7          	jalr	-112(ra) # 80004278 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800042f0:	00100793          	li	a5,1
    800042f4:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800042f8:	00048513          	mv	a0,s1
    800042fc:	fffff097          	auipc	ra,0xfffff
    80004300:	e90080e7          	jalr	-368(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004304:	fcdff06f          	j	800042d0 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00813823          	sd	s0,16(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	01213023          	sd	s2,0(sp)
    80004334:	02010413          	addi	s0,sp,32
    80004338:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	f20080e7          	jalr	-224(ra) # 8000425c <_ZN10KSemaphore15getFirstBlockedEv>
    80004344:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004348:	00090513          	mv	a0,s2
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	f2c080e7          	jalr	-212(ra) # 80004278 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004354:	00048863          	beqz	s1,80004364 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004358:	00048513          	mv	a0,s1
    8000435c:	fffff097          	auipc	ra,0xfffff
    80004360:	e30080e7          	jalr	-464(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
    }
}
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	00013903          	ld	s2,0(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000437c:	01052783          	lw	a5,16(a0)
    80004380:	0017879b          	addiw	a5,a5,1
    80004384:	0007871b          	sext.w	a4,a5
    80004388:	00f52823          	sw	a5,16(a0)
    8000438c:	00e05663          	blez	a4,80004398 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004390:	00000513          	li	a0,0
    80004394:	00008067          	ret
uint64 KSemaphore::signal() {
    80004398:	ff010113          	addi	sp,sp,-16
    8000439c:	00113423          	sd	ra,8(sp)
    800043a0:	00813023          	sd	s0,0(sp)
    800043a4:	01010413          	addi	s0,sp,16
        unblock();
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	f78080e7          	jalr	-136(ra) # 80004320 <_ZN10KSemaphore7unblockEv>
}
    800043b0:	00000513          	li	a0,0
    800043b4:	00813083          	ld	ra,8(sp)
    800043b8:	00013403          	ld	s0,0(sp)
    800043bc:	01010113          	addi	sp,sp,16
    800043c0:	00008067          	ret

00000000800043c4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00113423          	sd	ra,8(sp)
    800043cc:	00813023          	sd	s0,0(sp)
    800043d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	cc4080e7          	jalr	-828(ra) # 80004098 <_ZN15MemoryAllocator7kmallocEm>
}
    800043dc:	00813083          	ld	ra,8(sp)
    800043e0:	00013403          	ld	s0,0(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret

00000000800043ec <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800043ec:	fd010113          	addi	sp,sp,-48
    800043f0:	02113423          	sd	ra,40(sp)
    800043f4:	02813023          	sd	s0,32(sp)
    800043f8:	00913c23          	sd	s1,24(sp)
    800043fc:	01213823          	sd	s2,16(sp)
    80004400:	01313423          	sd	s3,8(sp)
    80004404:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004408:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000440c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004410:	01800513          	li	a0,24
    80004414:	00000097          	auipc	ra,0x0
    80004418:	fb0080e7          	jalr	-80(ra) # 800043c4 <_ZN10KSemaphorenwEm>
    8000441c:	00050493          	mv	s1,a0
    80004420:	0009859b          	sext.w	a1,s3
    80004424:	00000097          	auipc	ra,0x0
    80004428:	d38080e7          	jalr	-712(ra) # 8000415c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000442c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004430:	02048663          	beqz	s1,8000445c <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004434:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	49c080e7          	jalr	1180(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004440:	02813083          	ld	ra,40(sp)
    80004444:	02013403          	ld	s0,32(sp)
    80004448:	01813483          	ld	s1,24(sp)
    8000444c:	01013903          	ld	s2,16(sp)
    80004450:	00813983          	ld	s3,8(sp)
    80004454:	03010113          	addi	sp,sp,48
    80004458:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000445c:	fff00513          	li	a0,-1
    80004460:	fd9ff06f          	j	80004438 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004464 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00113423          	sd	ra,8(sp)
    8000446c:	00813023          	sd	s0,0(sp)
    80004470:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004474:	00000097          	auipc	ra,0x0
    80004478:	c88080e7          	jalr	-888(ra) # 800040fc <_ZN15MemoryAllocator5kfreeEPv>
}
    8000447c:	00813083          	ld	ra,8(sp)
    80004480:	00013403          	ld	s0,0(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret

000000008000448c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00113423          	sd	ra,8(sp)
    80004494:	00813023          	sd	s0,0(sp)
    80004498:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000449c:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	d64080e7          	jalr	-668(ra) # 80004204 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800044a8:	00006797          	auipc	a5,0x6
    800044ac:	b807b783          	ld	a5,-1152(a5) # 8000a028 <_GLOBAL_OFFSET_TABLE_+0x70>
    800044b0:	0007b783          	ld	a5,0(a5)
    800044b4:	0587c783          	lbu	a5,88(a5)
    800044b8:	02078063          	beqz	a5,800044d8 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800044bc:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	414080e7          	jalr	1044(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800044d8:	00000513          	li	a0,0
    800044dc:	fe5ff06f          	j	800044c0 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800044e0 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00113423          	sd	ra,8(sp)
    800044e8:	00813023          	sd	s0,0(sp)
    800044ec:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044f0:	00058513          	mv	a0,a1
    if (kSem == 0)
    800044f4:	02050463          	beqz	a0,8000451c <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	e84080e7          	jalr	-380(ra) # 8000437c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80004500:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	3d0080e7          	jalr	976(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000450c:	00813083          	ld	ra,8(sp)
    80004510:	00013403          	ld	s0,0(sp)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000451c:	00100513          	li	a0,1
    80004520:	fe5ff06f          	j	80004504 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080004524 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004524:	fe010113          	addi	sp,sp,-32
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	00813823          	sd	s0,16(sp)
    80004530:	00913423          	sd	s1,8(sp)
    80004534:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004538:	00058493          	mv	s1,a1
    delete kSem;
    8000453c:	00048e63          	beqz	s1,80004558 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004540:	00048513          	mv	a0,s1
    80004544:	00000097          	auipc	ra,0x0
    80004548:	d70080e7          	jalr	-656(ra) # 800042b4 <_ZN10KSemaphoreD1Ev>
    8000454c:	00048513          	mv	a0,s1
    80004550:	00000097          	auipc	ra,0x0
    80004554:	f14080e7          	jalr	-236(ra) # 80004464 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004558:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000455c:	fffff097          	auipc	ra,0xfffff
    80004560:	378080e7          	jalr	888(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004564:	01813083          	ld	ra,24(sp)
    80004568:	01013403          	ld	s0,16(sp)
    8000456c:	00813483          	ld	s1,8(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret

0000000080004578 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00113c23          	sd	ra,24(sp)
    80004580:	00813823          	sd	s0,16(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	02010413          	addi	s0,sp,32
    8000458c:	00050493          	mv	s1,a0
    LOCK();
    80004590:	00100613          	li	a2,1
    80004594:	00000593          	li	a1,0
    80004598:	0000a517          	auipc	a0,0xa
    8000459c:	bd050513          	addi	a0,a0,-1072 # 8000e168 <lockPrint>
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	c78080e7          	jalr	-904(ra) # 80001218 <copy_and_swap>
    800045a8:	fe0514e3          	bnez	a0,80004590 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800045ac:	0004c503          	lbu	a0,0(s1)
    800045b0:	00050a63          	beqz	a0,800045c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800045b4:	ffffd097          	auipc	ra,0xffffd
    800045b8:	f84080e7          	jalr	-124(ra) # 80001538 <putc>
        string++;
    800045bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800045c0:	fedff06f          	j	800045ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800045c4:	00000613          	li	a2,0
    800045c8:	00100593          	li	a1,1
    800045cc:	0000a517          	auipc	a0,0xa
    800045d0:	b9c50513          	addi	a0,a0,-1124 # 8000e168 <lockPrint>
    800045d4:	ffffd097          	auipc	ra,0xffffd
    800045d8:	c44080e7          	jalr	-956(ra) # 80001218 <copy_and_swap>
    800045dc:	fe0514e3          	bnez	a0,800045c4 <_Z11printStringPKc+0x4c>
}
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	00813483          	ld	s1,8(sp)
    800045ec:	02010113          	addi	sp,sp,32
    800045f0:	00008067          	ret

00000000800045f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800045f4:	fd010113          	addi	sp,sp,-48
    800045f8:	02113423          	sd	ra,40(sp)
    800045fc:	02813023          	sd	s0,32(sp)
    80004600:	00913c23          	sd	s1,24(sp)
    80004604:	01213823          	sd	s2,16(sp)
    80004608:	01313423          	sd	s3,8(sp)
    8000460c:	01413023          	sd	s4,0(sp)
    80004610:	03010413          	addi	s0,sp,48
    80004614:	00050993          	mv	s3,a0
    80004618:	00058a13          	mv	s4,a1
    LOCK();
    8000461c:	00100613          	li	a2,1
    80004620:	00000593          	li	a1,0
    80004624:	0000a517          	auipc	a0,0xa
    80004628:	b4450513          	addi	a0,a0,-1212 # 8000e168 <lockPrint>
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	bec080e7          	jalr	-1044(ra) # 80001218 <copy_and_swap>
    80004634:	fe0514e3          	bnez	a0,8000461c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004638:	00000913          	li	s2,0
    8000463c:	00090493          	mv	s1,s2
    80004640:	0019091b          	addiw	s2,s2,1
    80004644:	03495a63          	bge	s2,s4,80004678 <_Z9getStringPci+0x84>
        cc = getc();
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	ec8080e7          	jalr	-312(ra) # 80001510 <getc>
        if(cc < 1)
    80004650:	02050463          	beqz	a0,80004678 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004654:	009984b3          	add	s1,s3,s1
    80004658:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000465c:	00a00793          	li	a5,10
    80004660:	00f50a63          	beq	a0,a5,80004674 <_Z9getStringPci+0x80>
    80004664:	00d00793          	li	a5,13
    80004668:	fcf51ae3          	bne	a0,a5,8000463c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000466c:	00090493          	mv	s1,s2
    80004670:	0080006f          	j	80004678 <_Z9getStringPci+0x84>
    80004674:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004678:	009984b3          	add	s1,s3,s1
    8000467c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004680:	00000613          	li	a2,0
    80004684:	00100593          	li	a1,1
    80004688:	0000a517          	auipc	a0,0xa
    8000468c:	ae050513          	addi	a0,a0,-1312 # 8000e168 <lockPrint>
    80004690:	ffffd097          	auipc	ra,0xffffd
    80004694:	b88080e7          	jalr	-1144(ra) # 80001218 <copy_and_swap>
    80004698:	fe0514e3          	bnez	a0,80004680 <_Z9getStringPci+0x8c>
    return buf;
}
    8000469c:	00098513          	mv	a0,s3
    800046a0:	02813083          	ld	ra,40(sp)
    800046a4:	02013403          	ld	s0,32(sp)
    800046a8:	01813483          	ld	s1,24(sp)
    800046ac:	01013903          	ld	s2,16(sp)
    800046b0:	00813983          	ld	s3,8(sp)
    800046b4:	00013a03          	ld	s4,0(sp)
    800046b8:	03010113          	addi	sp,sp,48
    800046bc:	00008067          	ret

00000000800046c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800046c0:	ff010113          	addi	sp,sp,-16
    800046c4:	00813423          	sd	s0,8(sp)
    800046c8:	01010413          	addi	s0,sp,16
    800046cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800046d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800046d4:	0006c603          	lbu	a2,0(a3)
    800046d8:	fd06071b          	addiw	a4,a2,-48
    800046dc:	0ff77713          	andi	a4,a4,255
    800046e0:	00900793          	li	a5,9
    800046e4:	02e7e063          	bltu	a5,a4,80004704 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800046e8:	0025179b          	slliw	a5,a0,0x2
    800046ec:	00a787bb          	addw	a5,a5,a0
    800046f0:	0017979b          	slliw	a5,a5,0x1
    800046f4:	00168693          	addi	a3,a3,1
    800046f8:	00c787bb          	addw	a5,a5,a2
    800046fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004700:	fd5ff06f          	j	800046d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004704:	00813403          	ld	s0,8(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret

0000000080004710 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004710:	fc010113          	addi	sp,sp,-64
    80004714:	02113c23          	sd	ra,56(sp)
    80004718:	02813823          	sd	s0,48(sp)
    8000471c:	02913423          	sd	s1,40(sp)
    80004720:	03213023          	sd	s2,32(sp)
    80004724:	01313c23          	sd	s3,24(sp)
    80004728:	04010413          	addi	s0,sp,64
    8000472c:	00050493          	mv	s1,a0
    80004730:	00058913          	mv	s2,a1
    80004734:	00060993          	mv	s3,a2
    LOCK();
    80004738:	00100613          	li	a2,1
    8000473c:	00000593          	li	a1,0
    80004740:	0000a517          	auipc	a0,0xa
    80004744:	a2850513          	addi	a0,a0,-1496 # 8000e168 <lockPrint>
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	ad0080e7          	jalr	-1328(ra) # 80001218 <copy_and_swap>
    80004750:	fe0514e3          	bnez	a0,80004738 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004754:	00098463          	beqz	s3,8000475c <_Z8printIntiii+0x4c>
    80004758:	0804c463          	bltz	s1,800047e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000475c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004760:	00000593          	li	a1,0
    }

    i = 0;
    80004764:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004768:	0009079b          	sext.w	a5,s2
    8000476c:	0325773b          	remuw	a4,a0,s2
    80004770:	00048613          	mv	a2,s1
    80004774:	0014849b          	addiw	s1,s1,1
    80004778:	02071693          	slli	a3,a4,0x20
    8000477c:	0206d693          	srli	a3,a3,0x20
    80004780:	00006717          	auipc	a4,0x6
    80004784:	82070713          	addi	a4,a4,-2016 # 80009fa0 <digits>
    80004788:	00d70733          	add	a4,a4,a3
    8000478c:	00074683          	lbu	a3,0(a4)
    80004790:	fd040713          	addi	a4,s0,-48
    80004794:	00c70733          	add	a4,a4,a2
    80004798:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000479c:	0005071b          	sext.w	a4,a0
    800047a0:	0325553b          	divuw	a0,a0,s2
    800047a4:	fcf772e3          	bgeu	a4,a5,80004768 <_Z8printIntiii+0x58>
    if(neg)
    800047a8:	00058c63          	beqz	a1,800047c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800047ac:	fd040793          	addi	a5,s0,-48
    800047b0:	009784b3          	add	s1,a5,s1
    800047b4:	02d00793          	li	a5,45
    800047b8:	fef48823          	sb	a5,-16(s1)
    800047bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800047c0:	fff4849b          	addiw	s1,s1,-1
    800047c4:	0204c463          	bltz	s1,800047ec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800047c8:	fd040793          	addi	a5,s0,-48
    800047cc:	009787b3          	add	a5,a5,s1
    800047d0:	ff07c503          	lbu	a0,-16(a5)
    800047d4:	ffffd097          	auipc	ra,0xffffd
    800047d8:	d64080e7          	jalr	-668(ra) # 80001538 <putc>
    800047dc:	fe5ff06f          	j	800047c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800047e0:	4090053b          	negw	a0,s1
        neg = 1;
    800047e4:	00100593          	li	a1,1
        x = -xx;
    800047e8:	f7dff06f          	j	80004764 <_Z8printIntiii+0x54>

    UNLOCK();
    800047ec:	00000613          	li	a2,0
    800047f0:	00100593          	li	a1,1
    800047f4:	0000a517          	auipc	a0,0xa
    800047f8:	97450513          	addi	a0,a0,-1676 # 8000e168 <lockPrint>
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	a1c080e7          	jalr	-1508(ra) # 80001218 <copy_and_swap>
    80004804:	fe0514e3          	bnez	a0,800047ec <_Z8printIntiii+0xdc>
}
    80004808:	03813083          	ld	ra,56(sp)
    8000480c:	03013403          	ld	s0,48(sp)
    80004810:	02813483          	ld	s1,40(sp)
    80004814:	02013903          	ld	s2,32(sp)
    80004818:	01813983          	ld	s3,24(sp)
    8000481c:	04010113          	addi	sp,sp,64
    80004820:	00008067          	ret

0000000080004824 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004824:	fd010113          	addi	sp,sp,-48
    80004828:	02113423          	sd	ra,40(sp)
    8000482c:	02813023          	sd	s0,32(sp)
    80004830:	00913c23          	sd	s1,24(sp)
    80004834:	01213823          	sd	s2,16(sp)
    80004838:	01313423          	sd	s3,8(sp)
    8000483c:	03010413          	addi	s0,sp,48
    80004840:	00050493          	mv	s1,a0
    80004844:	00058913          	mv	s2,a1
    80004848:	0015879b          	addiw	a5,a1,1
    8000484c:	0007851b          	sext.w	a0,a5
    80004850:	00f4a023          	sw	a5,0(s1)
    80004854:	0004a823          	sw	zero,16(s1)
    80004858:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000485c:	00251513          	slli	a0,a0,0x2
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	9f8080e7          	jalr	-1544(ra) # 80001258 <mem_alloc>
    80004868:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000486c:	01000513          	li	a0,16
    80004870:	fffff097          	auipc	ra,0xfffff
    80004874:	ae0080e7          	jalr	-1312(ra) # 80003350 <_Znwm>
    80004878:	00050993          	mv	s3,a0
    8000487c:	00000593          	li	a1,0
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	d1c080e7          	jalr	-740(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004888:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000488c:	01000513          	li	a0,16
    80004890:	fffff097          	auipc	ra,0xfffff
    80004894:	ac0080e7          	jalr	-1344(ra) # 80003350 <_Znwm>
    80004898:	00050993          	mv	s3,a0
    8000489c:	00090593          	mv	a1,s2
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	cfc080e7          	jalr	-772(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    800048a8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800048ac:	01000513          	li	a0,16
    800048b0:	fffff097          	auipc	ra,0xfffff
    800048b4:	aa0080e7          	jalr	-1376(ra) # 80003350 <_Znwm>
    800048b8:	00050913          	mv	s2,a0
    800048bc:	00100593          	li	a1,1
    800048c0:	fffff097          	auipc	ra,0xfffff
    800048c4:	cdc080e7          	jalr	-804(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    800048c8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800048cc:	01000513          	li	a0,16
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	a80080e7          	jalr	-1408(ra) # 80003350 <_Znwm>
    800048d8:	00050913          	mv	s2,a0
    800048dc:	00100593          	li	a1,1
    800048e0:	fffff097          	auipc	ra,0xfffff
    800048e4:	cbc080e7          	jalr	-836(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    800048e8:	0324b823          	sd	s2,48(s1)
}
    800048ec:	02813083          	ld	ra,40(sp)
    800048f0:	02013403          	ld	s0,32(sp)
    800048f4:	01813483          	ld	s1,24(sp)
    800048f8:	01013903          	ld	s2,16(sp)
    800048fc:	00813983          	ld	s3,8(sp)
    80004900:	03010113          	addi	sp,sp,48
    80004904:	00008067          	ret
    80004908:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000490c:	00098513          	mv	a0,s3
    80004910:	fffff097          	auipc	ra,0xfffff
    80004914:	a68080e7          	jalr	-1432(ra) # 80003378 <_ZdlPv>
    80004918:	00048513          	mv	a0,s1
    8000491c:	0000b097          	auipc	ra,0xb
    80004920:	91c080e7          	jalr	-1764(ra) # 8000f238 <_Unwind_Resume>
    80004924:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004928:	00098513          	mv	a0,s3
    8000492c:	fffff097          	auipc	ra,0xfffff
    80004930:	a4c080e7          	jalr	-1460(ra) # 80003378 <_ZdlPv>
    80004934:	00048513          	mv	a0,s1
    80004938:	0000b097          	auipc	ra,0xb
    8000493c:	900080e7          	jalr	-1792(ra) # 8000f238 <_Unwind_Resume>
    80004940:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004944:	00090513          	mv	a0,s2
    80004948:	fffff097          	auipc	ra,0xfffff
    8000494c:	a30080e7          	jalr	-1488(ra) # 80003378 <_ZdlPv>
    80004950:	00048513          	mv	a0,s1
    80004954:	0000b097          	auipc	ra,0xb
    80004958:	8e4080e7          	jalr	-1820(ra) # 8000f238 <_Unwind_Resume>
    8000495c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004960:	00090513          	mv	a0,s2
    80004964:	fffff097          	auipc	ra,0xfffff
    80004968:	a14080e7          	jalr	-1516(ra) # 80003378 <_ZdlPv>
    8000496c:	00048513          	mv	a0,s1
    80004970:	0000b097          	auipc	ra,0xb
    80004974:	8c8080e7          	jalr	-1848(ra) # 8000f238 <_Unwind_Resume>

0000000080004978 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004978:	fe010113          	addi	sp,sp,-32
    8000497c:	00113c23          	sd	ra,24(sp)
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00913423          	sd	s1,8(sp)
    80004988:	01213023          	sd	s2,0(sp)
    8000498c:	02010413          	addi	s0,sp,32
    80004990:	00050493          	mv	s1,a0
    80004994:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004998:	01853503          	ld	a0,24(a0)
    8000499c:	fffff097          	auipc	ra,0xfffff
    800049a0:	bc8080e7          	jalr	-1080(ra) # 80003564 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800049a4:	0304b503          	ld	a0,48(s1)
    800049a8:	fffff097          	auipc	ra,0xfffff
    800049ac:	bbc080e7          	jalr	-1092(ra) # 80003564 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800049b0:	0084b783          	ld	a5,8(s1)
    800049b4:	0144a703          	lw	a4,20(s1)
    800049b8:	00271713          	slli	a4,a4,0x2
    800049bc:	00e787b3          	add	a5,a5,a4
    800049c0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800049c4:	0144a783          	lw	a5,20(s1)
    800049c8:	0017879b          	addiw	a5,a5,1
    800049cc:	0004a703          	lw	a4,0(s1)
    800049d0:	02e7e7bb          	remw	a5,a5,a4
    800049d4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800049d8:	0304b503          	ld	a0,48(s1)
    800049dc:	fffff097          	auipc	ra,0xfffff
    800049e0:	c0c080e7          	jalr	-1012(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800049e4:	0204b503          	ld	a0,32(s1)
    800049e8:	fffff097          	auipc	ra,0xfffff
    800049ec:	c00080e7          	jalr	-1024(ra) # 800035e8 <_ZN9Semaphore6signalEv>

}
    800049f0:	01813083          	ld	ra,24(sp)
    800049f4:	01013403          	ld	s0,16(sp)
    800049f8:	00813483          	ld	s1,8(sp)
    800049fc:	00013903          	ld	s2,0(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret

0000000080004a08 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	01213023          	sd	s2,0(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    80004a20:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004a24:	02053503          	ld	a0,32(a0)
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	b3c080e7          	jalr	-1220(ra) # 80003564 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004a30:	0284b503          	ld	a0,40(s1)
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	b30080e7          	jalr	-1232(ra) # 80003564 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004a3c:	0084b703          	ld	a4,8(s1)
    80004a40:	0104a783          	lw	a5,16(s1)
    80004a44:	00279693          	slli	a3,a5,0x2
    80004a48:	00d70733          	add	a4,a4,a3
    80004a4c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004a50:	0017879b          	addiw	a5,a5,1
    80004a54:	0004a703          	lw	a4,0(s1)
    80004a58:	02e7e7bb          	remw	a5,a5,a4
    80004a5c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004a60:	0284b503          	ld	a0,40(s1)
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	b84080e7          	jalr	-1148(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004a6c:	0184b503          	ld	a0,24(s1)
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	b78080e7          	jalr	-1160(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004a78:	00090513          	mv	a0,s2
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	00013903          	ld	s2,0(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret

0000000080004a94 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004ab0:	02853503          	ld	a0,40(a0)
    80004ab4:	fffff097          	auipc	ra,0xfffff
    80004ab8:	ab0080e7          	jalr	-1360(ra) # 80003564 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004abc:	0304b503          	ld	a0,48(s1)
    80004ac0:	fffff097          	auipc	ra,0xfffff
    80004ac4:	aa4080e7          	jalr	-1372(ra) # 80003564 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004ac8:	0144a783          	lw	a5,20(s1)
    80004acc:	0104a903          	lw	s2,16(s1)
    80004ad0:	0327ce63          	blt	a5,s2,80004b0c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004ad4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004ad8:	0304b503          	ld	a0,48(s1)
    80004adc:	fffff097          	auipc	ra,0xfffff
    80004ae0:	b0c080e7          	jalr	-1268(ra) # 800035e8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ae4:	0284b503          	ld	a0,40(s1)
    80004ae8:	fffff097          	auipc	ra,0xfffff
    80004aec:	b00080e7          	jalr	-1280(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004af0:	00090513          	mv	a0,s2
    80004af4:	01813083          	ld	ra,24(sp)
    80004af8:	01013403          	ld	s0,16(sp)
    80004afc:	00813483          	ld	s1,8(sp)
    80004b00:	00013903          	ld	s2,0(sp)
    80004b04:	02010113          	addi	sp,sp,32
    80004b08:	00008067          	ret
        ret = cap - head + tail;
    80004b0c:	0004a703          	lw	a4,0(s1)
    80004b10:	4127093b          	subw	s2,a4,s2
    80004b14:	00f9093b          	addw	s2,s2,a5
    80004b18:	fc1ff06f          	j	80004ad8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004b1c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004b1c:	fe010113          	addi	sp,sp,-32
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004b34:	00a00513          	li	a0,10
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	b10080e7          	jalr	-1264(ra) # 80003648 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004b40:	00003517          	auipc	a0,0x3
    80004b44:	7a050513          	addi	a0,a0,1952 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80004b48:	00000097          	auipc	ra,0x0
    80004b4c:	a30080e7          	jalr	-1488(ra) # 80004578 <_Z11printStringPKc>
    while (getCnt()) {
    80004b50:	00048513          	mv	a0,s1
    80004b54:	00000097          	auipc	ra,0x0
    80004b58:	f40080e7          	jalr	-192(ra) # 80004a94 <_ZN9BufferCPP6getCntEv>
    80004b5c:	02050c63          	beqz	a0,80004b94 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004b60:	0084b783          	ld	a5,8(s1)
    80004b64:	0104a703          	lw	a4,16(s1)
    80004b68:	00271713          	slli	a4,a4,0x2
    80004b6c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004b70:	0007c503          	lbu	a0,0(a5)
    80004b74:	fffff097          	auipc	ra,0xfffff
    80004b78:	ad4080e7          	jalr	-1324(ra) # 80003648 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004b7c:	0104a783          	lw	a5,16(s1)
    80004b80:	0017879b          	addiw	a5,a5,1
    80004b84:	0004a703          	lw	a4,0(s1)
    80004b88:	02e7e7bb          	remw	a5,a5,a4
    80004b8c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004b90:	fc1ff06f          	j	80004b50 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004b94:	02100513          	li	a0,33
    80004b98:	fffff097          	auipc	ra,0xfffff
    80004b9c:	ab0080e7          	jalr	-1360(ra) # 80003648 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004ba0:	00a00513          	li	a0,10
    80004ba4:	fffff097          	auipc	ra,0xfffff
    80004ba8:	aa4080e7          	jalr	-1372(ra) # 80003648 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004bac:	0084b503          	ld	a0,8(s1)
    80004bb0:	ffffc097          	auipc	ra,0xffffc
    80004bb4:	6d8080e7          	jalr	1752(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80004bb8:	0204b503          	ld	a0,32(s1)
    80004bbc:	00050863          	beqz	a0,80004bcc <_ZN9BufferCPPD1Ev+0xb0>
    80004bc0:	00053783          	ld	a5,0(a0)
    80004bc4:	0087b783          	ld	a5,8(a5)
    80004bc8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004bcc:	0184b503          	ld	a0,24(s1)
    80004bd0:	00050863          	beqz	a0,80004be0 <_ZN9BufferCPPD1Ev+0xc4>
    80004bd4:	00053783          	ld	a5,0(a0)
    80004bd8:	0087b783          	ld	a5,8(a5)
    80004bdc:	000780e7          	jalr	a5
    delete mutexTail;
    80004be0:	0304b503          	ld	a0,48(s1)
    80004be4:	00050863          	beqz	a0,80004bf4 <_ZN9BufferCPPD1Ev+0xd8>
    80004be8:	00053783          	ld	a5,0(a0)
    80004bec:	0087b783          	ld	a5,8(a5)
    80004bf0:	000780e7          	jalr	a5
    delete mutexHead;
    80004bf4:	0284b503          	ld	a0,40(s1)
    80004bf8:	00050863          	beqz	a0,80004c08 <_ZN9BufferCPPD1Ev+0xec>
    80004bfc:	00053783          	ld	a5,0(a0)
    80004c00:	0087b783          	ld	a5,8(a5)
    80004c04:	000780e7          	jalr	a5
}
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	02010113          	addi	sp,sp,32
    80004c18:	00008067          	ret

0000000080004c1c <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80004c1c:	ff010113          	addi	sp,sp,-16
    80004c20:	00813423          	sd	s0,8(sp)
    80004c24:	01010413          	addi	s0,sp,16
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80004c28:	00813403          	ld	s0,8(sp)
    80004c2c:	01010113          	addi	sp,sp,16
    80004c30:	00008067          	ret

0000000080004c34 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c34:	fe010113          	addi	sp,sp,-32
    80004c38:	00113c23          	sd	ra,24(sp)
    80004c3c:	00813823          	sd	s0,16(sp)
    80004c40:	00913423          	sd	s1,8(sp)
    80004c44:	01213023          	sd	s2,0(sp)
    80004c48:	02010413          	addi	s0,sp,32
    80004c4c:	00050493          	mv	s1,a0
    80004c50:	00058913          	mv	s2,a1
    80004c54:	0015879b          	addiw	a5,a1,1
    80004c58:	0007851b          	sext.w	a0,a5
    80004c5c:	00f4a023          	sw	a5,0(s1)
    80004c60:	0004a823          	sw	zero,16(s1)
    80004c64:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c68:	00251513          	slli	a0,a0,0x2
    80004c6c:	ffffc097          	auipc	ra,0xffffc
    80004c70:	5ec080e7          	jalr	1516(ra) # 80001258 <mem_alloc>
    80004c74:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004c78:	00000593          	li	a1,0
    80004c7c:	02048513          	addi	a0,s1,32
    80004c80:	ffffc097          	auipc	ra,0xffffc
    80004c84:	6fc080e7          	jalr	1788(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80004c88:	00090593          	mv	a1,s2
    80004c8c:	01848513          	addi	a0,s1,24
    80004c90:	ffffc097          	auipc	ra,0xffffc
    80004c94:	6ec080e7          	jalr	1772(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80004c98:	00100593          	li	a1,1
    80004c9c:	02848513          	addi	a0,s1,40
    80004ca0:	ffffc097          	auipc	ra,0xffffc
    80004ca4:	6dc080e7          	jalr	1756(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80004ca8:	00100593          	li	a1,1
    80004cac:	03048513          	addi	a0,s1,48
    80004cb0:	ffffc097          	auipc	ra,0xffffc
    80004cb4:	6cc080e7          	jalr	1740(ra) # 8000137c <sem_open>
}
    80004cb8:	01813083          	ld	ra,24(sp)
    80004cbc:	01013403          	ld	s0,16(sp)
    80004cc0:	00813483          	ld	s1,8(sp)
    80004cc4:	00013903          	ld	s2,0(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	01213023          	sd	s2,0(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    80004ce8:	00050493          	mv	s1,a0
    80004cec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004cf0:	01853503          	ld	a0,24(a0)
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	6ec080e7          	jalr	1772(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80004cfc:	0304b503          	ld	a0,48(s1)
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	6e0080e7          	jalr	1760(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80004d08:	0084b783          	ld	a5,8(s1)
    80004d0c:	0144a703          	lw	a4,20(s1)
    80004d10:	00271713          	slli	a4,a4,0x2
    80004d14:	00e787b3          	add	a5,a5,a4
    80004d18:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004d1c:	0144a783          	lw	a5,20(s1)
    80004d20:	0017879b          	addiw	a5,a5,1
    80004d24:	0004a703          	lw	a4,0(s1)
    80004d28:	02e7e7bb          	remw	a5,a5,a4
    80004d2c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004d30:	0304b503          	ld	a0,48(s1)
    80004d34:	ffffc097          	auipc	ra,0xffffc
    80004d38:	6d8080e7          	jalr	1752(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80004d3c:	0204b503          	ld	a0,32(s1)
    80004d40:	ffffc097          	auipc	ra,0xffffc
    80004d44:	6cc080e7          	jalr	1740(ra) # 8000140c <sem_signal>

}
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	00013903          	ld	s2,0(sp)
    80004d58:	02010113          	addi	sp,sp,32
    80004d5c:	00008067          	ret

0000000080004d60 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004d60:	fe010113          	addi	sp,sp,-32
    80004d64:	00113c23          	sd	ra,24(sp)
    80004d68:	00813823          	sd	s0,16(sp)
    80004d6c:	00913423          	sd	s1,8(sp)
    80004d70:	01213023          	sd	s2,0(sp)
    80004d74:	02010413          	addi	s0,sp,32
    80004d78:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004d7c:	02053503          	ld	a0,32(a0)
    80004d80:	ffffc097          	auipc	ra,0xffffc
    80004d84:	660080e7          	jalr	1632(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80004d88:	0284b503          	ld	a0,40(s1)
    80004d8c:	ffffc097          	auipc	ra,0xffffc
    80004d90:	654080e7          	jalr	1620(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80004d94:	0084b703          	ld	a4,8(s1)
    80004d98:	0104a783          	lw	a5,16(s1)
    80004d9c:	00279693          	slli	a3,a5,0x2
    80004da0:	00d70733          	add	a4,a4,a3
    80004da4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004da8:	0017879b          	addiw	a5,a5,1
    80004dac:	0004a703          	lw	a4,0(s1)
    80004db0:	02e7e7bb          	remw	a5,a5,a4
    80004db4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004db8:	0284b503          	ld	a0,40(s1)
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	650080e7          	jalr	1616(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80004dc4:	0184b503          	ld	a0,24(s1)
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	644080e7          	jalr	1604(ra) # 8000140c <sem_signal>

    return ret;
}
    80004dd0:	00090513          	mv	a0,s2
    80004dd4:	01813083          	ld	ra,24(sp)
    80004dd8:	01013403          	ld	s0,16(sp)
    80004ddc:	00813483          	ld	s1,8(sp)
    80004de0:	00013903          	ld	s2,0(sp)
    80004de4:	02010113          	addi	sp,sp,32
    80004de8:	00008067          	ret

0000000080004dec <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004dec:	fe010113          	addi	sp,sp,-32
    80004df0:	00113c23          	sd	ra,24(sp)
    80004df4:	00813823          	sd	s0,16(sp)
    80004df8:	00913423          	sd	s1,8(sp)
    80004dfc:	01213023          	sd	s2,0(sp)
    80004e00:	02010413          	addi	s0,sp,32
    80004e04:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004e08:	02853503          	ld	a0,40(a0)
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	5d4080e7          	jalr	1492(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80004e14:	0304b503          	ld	a0,48(s1)
    80004e18:	ffffc097          	auipc	ra,0xffffc
    80004e1c:	5c8080e7          	jalr	1480(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    80004e20:	0144a783          	lw	a5,20(s1)
    80004e24:	0104a903          	lw	s2,16(s1)
    80004e28:	0327ce63          	blt	a5,s2,80004e64 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004e2c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004e30:	0304b503          	ld	a0,48(s1)
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	5d8080e7          	jalr	1496(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80004e3c:	0284b503          	ld	a0,40(s1)
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	5cc080e7          	jalr	1484(ra) # 8000140c <sem_signal>

    return ret;
    80004e48:	00090513          	mv	a0,s2
    80004e4c:	01813083          	ld	ra,24(sp)
    80004e50:	01013403          	ld	s0,16(sp)
    80004e54:	00813483          	ld	s1,8(sp)
    80004e58:	00013903          	ld	s2,0(sp)
    80004e5c:	02010113          	addi	sp,sp,32
    80004e60:	00008067          	ret
        ret = cap - head + tail;
    80004e64:	0004a703          	lw	a4,0(s1)
    80004e68:	4127093b          	subw	s2,a4,s2
    80004e6c:	00f9093b          	addw	s2,s2,a5
    80004e70:	fc1ff06f          	j	80004e30 <_ZN6Buffer6getCntEv+0x44>

0000000080004e74 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	02010413          	addi	s0,sp,32
    80004e88:	00050493          	mv	s1,a0
    putc('\n');
    80004e8c:	00a00513          	li	a0,10
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	6a8080e7          	jalr	1704(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80004e98:	00003517          	auipc	a0,0x3
    80004e9c:	44850513          	addi	a0,a0,1096 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80004ea0:	fffff097          	auipc	ra,0xfffff
    80004ea4:	6d8080e7          	jalr	1752(ra) # 80004578 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004ea8:	00048513          	mv	a0,s1
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	f40080e7          	jalr	-192(ra) # 80004dec <_ZN6Buffer6getCntEv>
    80004eb4:	02a05c63          	blez	a0,80004eec <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004eb8:	0084b783          	ld	a5,8(s1)
    80004ebc:	0104a703          	lw	a4,16(s1)
    80004ec0:	00271713          	slli	a4,a4,0x2
    80004ec4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004ec8:	0007c503          	lbu	a0,0(a5)
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	66c080e7          	jalr	1644(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80004ed4:	0104a783          	lw	a5,16(s1)
    80004ed8:	0017879b          	addiw	a5,a5,1
    80004edc:	0004a703          	lw	a4,0(s1)
    80004ee0:	02e7e7bb          	remw	a5,a5,a4
    80004ee4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ee8:	fc1ff06f          	j	80004ea8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004eec:	02100513          	li	a0,33
    80004ef0:	ffffc097          	auipc	ra,0xffffc
    80004ef4:	648080e7          	jalr	1608(ra) # 80001538 <putc>
    putc('\n');
    80004ef8:	00a00513          	li	a0,10
    80004efc:	ffffc097          	auipc	ra,0xffffc
    80004f00:	63c080e7          	jalr	1596(ra) # 80001538 <putc>
    mem_free(buffer);
    80004f04:	0084b503          	ld	a0,8(s1)
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	380080e7          	jalr	896(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80004f10:	0204b503          	ld	a0,32(s1)
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	4a0080e7          	jalr	1184(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80004f1c:	0184b503          	ld	a0,24(s1)
    80004f20:	ffffc097          	auipc	ra,0xffffc
    80004f24:	494080e7          	jalr	1172(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80004f28:	0304b503          	ld	a0,48(s1)
    80004f2c:	ffffc097          	auipc	ra,0xffffc
    80004f30:	488080e7          	jalr	1160(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80004f34:	0284b503          	ld	a0,40(s1)
    80004f38:	ffffc097          	auipc	ra,0xffffc
    80004f3c:	47c080e7          	jalr	1148(ra) # 800013b4 <sem_close>
}
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret

0000000080004f54 <start>:
    80004f54:	ff010113          	addi	sp,sp,-16
    80004f58:	00813423          	sd	s0,8(sp)
    80004f5c:	01010413          	addi	s0,sp,16
    80004f60:	300027f3          	csrr	a5,mstatus
    80004f64:	ffffe737          	lui	a4,0xffffe
    80004f68:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef42f>
    80004f6c:	00e7f7b3          	and	a5,a5,a4
    80004f70:	00001737          	lui	a4,0x1
    80004f74:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004f78:	00e7e7b3          	or	a5,a5,a4
    80004f7c:	30079073          	csrw	mstatus,a5
    80004f80:	00000797          	auipc	a5,0x0
    80004f84:	16078793          	addi	a5,a5,352 # 800050e0 <system_main>
    80004f88:	34179073          	csrw	mepc,a5
    80004f8c:	00000793          	li	a5,0
    80004f90:	18079073          	csrw	satp,a5
    80004f94:	000107b7          	lui	a5,0x10
    80004f98:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004f9c:	30279073          	csrw	medeleg,a5
    80004fa0:	30379073          	csrw	mideleg,a5
    80004fa4:	104027f3          	csrr	a5,sie
    80004fa8:	2227e793          	ori	a5,a5,546
    80004fac:	10479073          	csrw	sie,a5
    80004fb0:	fff00793          	li	a5,-1
    80004fb4:	00a7d793          	srli	a5,a5,0xa
    80004fb8:	3b079073          	csrw	pmpaddr0,a5
    80004fbc:	00f00793          	li	a5,15
    80004fc0:	3a079073          	csrw	pmpcfg0,a5
    80004fc4:	f14027f3          	csrr	a5,mhartid
    80004fc8:	0200c737          	lui	a4,0x200c
    80004fcc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004fd0:	0007869b          	sext.w	a3,a5
    80004fd4:	00269713          	slli	a4,a3,0x2
    80004fd8:	000f4637          	lui	a2,0xf4
    80004fdc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004fe0:	00d70733          	add	a4,a4,a3
    80004fe4:	0037979b          	slliw	a5,a5,0x3
    80004fe8:	020046b7          	lui	a3,0x2004
    80004fec:	00d787b3          	add	a5,a5,a3
    80004ff0:	00c585b3          	add	a1,a1,a2
    80004ff4:	00371693          	slli	a3,a4,0x3
    80004ff8:	00009717          	auipc	a4,0x9
    80004ffc:	17870713          	addi	a4,a4,376 # 8000e170 <timer_scratch>
    80005000:	00b7b023          	sd	a1,0(a5)
    80005004:	00d70733          	add	a4,a4,a3
    80005008:	00f73c23          	sd	a5,24(a4)
    8000500c:	02c73023          	sd	a2,32(a4)
    80005010:	34071073          	csrw	mscratch,a4
    80005014:	00000797          	auipc	a5,0x0
    80005018:	6ec78793          	addi	a5,a5,1772 # 80005700 <timervec>
    8000501c:	30579073          	csrw	mtvec,a5
    80005020:	300027f3          	csrr	a5,mstatus
    80005024:	0087e793          	ori	a5,a5,8
    80005028:	30079073          	csrw	mstatus,a5
    8000502c:	304027f3          	csrr	a5,mie
    80005030:	0807e793          	ori	a5,a5,128
    80005034:	30479073          	csrw	mie,a5
    80005038:	f14027f3          	csrr	a5,mhartid
    8000503c:	0007879b          	sext.w	a5,a5
    80005040:	00078213          	mv	tp,a5
    80005044:	30200073          	mret
    80005048:	00813403          	ld	s0,8(sp)
    8000504c:	01010113          	addi	sp,sp,16
    80005050:	00008067          	ret

0000000080005054 <timerinit>:
    80005054:	ff010113          	addi	sp,sp,-16
    80005058:	00813423          	sd	s0,8(sp)
    8000505c:	01010413          	addi	s0,sp,16
    80005060:	f14027f3          	csrr	a5,mhartid
    80005064:	0200c737          	lui	a4,0x200c
    80005068:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000506c:	0007869b          	sext.w	a3,a5
    80005070:	00269713          	slli	a4,a3,0x2
    80005074:	000f4637          	lui	a2,0xf4
    80005078:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000507c:	00d70733          	add	a4,a4,a3
    80005080:	0037979b          	slliw	a5,a5,0x3
    80005084:	020046b7          	lui	a3,0x2004
    80005088:	00d787b3          	add	a5,a5,a3
    8000508c:	00c585b3          	add	a1,a1,a2
    80005090:	00371693          	slli	a3,a4,0x3
    80005094:	00009717          	auipc	a4,0x9
    80005098:	0dc70713          	addi	a4,a4,220 # 8000e170 <timer_scratch>
    8000509c:	00b7b023          	sd	a1,0(a5)
    800050a0:	00d70733          	add	a4,a4,a3
    800050a4:	00f73c23          	sd	a5,24(a4)
    800050a8:	02c73023          	sd	a2,32(a4)
    800050ac:	34071073          	csrw	mscratch,a4
    800050b0:	00000797          	auipc	a5,0x0
    800050b4:	65078793          	addi	a5,a5,1616 # 80005700 <timervec>
    800050b8:	30579073          	csrw	mtvec,a5
    800050bc:	300027f3          	csrr	a5,mstatus
    800050c0:	0087e793          	ori	a5,a5,8
    800050c4:	30079073          	csrw	mstatus,a5
    800050c8:	304027f3          	csrr	a5,mie
    800050cc:	0807e793          	ori	a5,a5,128
    800050d0:	30479073          	csrw	mie,a5
    800050d4:	00813403          	ld	s0,8(sp)
    800050d8:	01010113          	addi	sp,sp,16
    800050dc:	00008067          	ret

00000000800050e0 <system_main>:
    800050e0:	fe010113          	addi	sp,sp,-32
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	02010413          	addi	s0,sp,32
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	0c4080e7          	jalr	196(ra) # 800051b8 <cpuid>
    800050fc:	00005497          	auipc	s1,0x5
    80005100:	f6448493          	addi	s1,s1,-156 # 8000a060 <started>
    80005104:	02050263          	beqz	a0,80005128 <system_main+0x48>
    80005108:	0004a783          	lw	a5,0(s1)
    8000510c:	0007879b          	sext.w	a5,a5
    80005110:	fe078ce3          	beqz	a5,80005108 <system_main+0x28>
    80005114:	0ff0000f          	fence
    80005118:	00003517          	auipc	a0,0x3
    8000511c:	21050513          	addi	a0,a0,528 # 80008328 <CONSOLE_STATUS+0x318>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	a7c080e7          	jalr	-1412(ra) # 80005b9c <panic>
    80005128:	00001097          	auipc	ra,0x1
    8000512c:	9d0080e7          	jalr	-1584(ra) # 80005af8 <consoleinit>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	15c080e7          	jalr	348(ra) # 8000628c <printfinit>
    80005138:	00003517          	auipc	a0,0x3
    8000513c:	fa850513          	addi	a0,a0,-88 # 800080e0 <CONSOLE_STATUS+0xd0>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	ab8080e7          	jalr	-1352(ra) # 80005bf8 <__printf>
    80005148:	00003517          	auipc	a0,0x3
    8000514c:	1b050513          	addi	a0,a0,432 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005150:	00001097          	auipc	ra,0x1
    80005154:	aa8080e7          	jalr	-1368(ra) # 80005bf8 <__printf>
    80005158:	00003517          	auipc	a0,0x3
    8000515c:	f8850513          	addi	a0,a0,-120 # 800080e0 <CONSOLE_STATUS+0xd0>
    80005160:	00001097          	auipc	ra,0x1
    80005164:	a98080e7          	jalr	-1384(ra) # 80005bf8 <__printf>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	4b0080e7          	jalr	1200(ra) # 80006618 <kinit>
    80005170:	00000097          	auipc	ra,0x0
    80005174:	148080e7          	jalr	328(ra) # 800052b8 <trapinit>
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	16c080e7          	jalr	364(ra) # 800052e4 <trapinithart>
    80005180:	00000097          	auipc	ra,0x0
    80005184:	5c0080e7          	jalr	1472(ra) # 80005740 <plicinit>
    80005188:	00000097          	auipc	ra,0x0
    8000518c:	5e0080e7          	jalr	1504(ra) # 80005768 <plicinithart>
    80005190:	00000097          	auipc	ra,0x0
    80005194:	078080e7          	jalr	120(ra) # 80005208 <userinit>
    80005198:	0ff0000f          	fence
    8000519c:	00100793          	li	a5,1
    800051a0:	00003517          	auipc	a0,0x3
    800051a4:	17050513          	addi	a0,a0,368 # 80008310 <CONSOLE_STATUS+0x300>
    800051a8:	00f4a023          	sw	a5,0(s1)
    800051ac:	00001097          	auipc	ra,0x1
    800051b0:	a4c080e7          	jalr	-1460(ra) # 80005bf8 <__printf>
    800051b4:	0000006f          	j	800051b4 <system_main+0xd4>

00000000800051b8 <cpuid>:
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00813423          	sd	s0,8(sp)
    800051c0:	01010413          	addi	s0,sp,16
    800051c4:	00020513          	mv	a0,tp
    800051c8:	00813403          	ld	s0,8(sp)
    800051cc:	0005051b          	sext.w	a0,a0
    800051d0:	01010113          	addi	sp,sp,16
    800051d4:	00008067          	ret

00000000800051d8 <mycpu>:
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00813423          	sd	s0,8(sp)
    800051e0:	01010413          	addi	s0,sp,16
    800051e4:	00020793          	mv	a5,tp
    800051e8:	00813403          	ld	s0,8(sp)
    800051ec:	0007879b          	sext.w	a5,a5
    800051f0:	00779793          	slli	a5,a5,0x7
    800051f4:	0000a517          	auipc	a0,0xa
    800051f8:	fac50513          	addi	a0,a0,-84 # 8000f1a0 <cpus>
    800051fc:	00f50533          	add	a0,a0,a5
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret

0000000080005208 <userinit>:
    80005208:	ff010113          	addi	sp,sp,-16
    8000520c:	00813423          	sd	s0,8(sp)
    80005210:	01010413          	addi	s0,sp,16
    80005214:	00813403          	ld	s0,8(sp)
    80005218:	01010113          	addi	sp,sp,16
    8000521c:	ffffe317          	auipc	t1,0xffffe
    80005220:	07030067          	jr	112(t1) # 8000328c <main>

0000000080005224 <either_copyout>:
    80005224:	ff010113          	addi	sp,sp,-16
    80005228:	00813023          	sd	s0,0(sp)
    8000522c:	00113423          	sd	ra,8(sp)
    80005230:	01010413          	addi	s0,sp,16
    80005234:	02051663          	bnez	a0,80005260 <either_copyout+0x3c>
    80005238:	00058513          	mv	a0,a1
    8000523c:	00060593          	mv	a1,a2
    80005240:	0006861b          	sext.w	a2,a3
    80005244:	00002097          	auipc	ra,0x2
    80005248:	c60080e7          	jalr	-928(ra) # 80006ea4 <__memmove>
    8000524c:	00813083          	ld	ra,8(sp)
    80005250:	00013403          	ld	s0,0(sp)
    80005254:	00000513          	li	a0,0
    80005258:	01010113          	addi	sp,sp,16
    8000525c:	00008067          	ret
    80005260:	00003517          	auipc	a0,0x3
    80005264:	0f050513          	addi	a0,a0,240 # 80008350 <CONSOLE_STATUS+0x340>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	934080e7          	jalr	-1740(ra) # 80005b9c <panic>

0000000080005270 <either_copyin>:
    80005270:	ff010113          	addi	sp,sp,-16
    80005274:	00813023          	sd	s0,0(sp)
    80005278:	00113423          	sd	ra,8(sp)
    8000527c:	01010413          	addi	s0,sp,16
    80005280:	02059463          	bnez	a1,800052a8 <either_copyin+0x38>
    80005284:	00060593          	mv	a1,a2
    80005288:	0006861b          	sext.w	a2,a3
    8000528c:	00002097          	auipc	ra,0x2
    80005290:	c18080e7          	jalr	-1000(ra) # 80006ea4 <__memmove>
    80005294:	00813083          	ld	ra,8(sp)
    80005298:	00013403          	ld	s0,0(sp)
    8000529c:	00000513          	li	a0,0
    800052a0:	01010113          	addi	sp,sp,16
    800052a4:	00008067          	ret
    800052a8:	00003517          	auipc	a0,0x3
    800052ac:	0d050513          	addi	a0,a0,208 # 80008378 <CONSOLE_STATUS+0x368>
    800052b0:	00001097          	auipc	ra,0x1
    800052b4:	8ec080e7          	jalr	-1812(ra) # 80005b9c <panic>

00000000800052b8 <trapinit>:
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00813423          	sd	s0,8(sp)
    800052c0:	01010413          	addi	s0,sp,16
    800052c4:	00813403          	ld	s0,8(sp)
    800052c8:	00003597          	auipc	a1,0x3
    800052cc:	0d858593          	addi	a1,a1,216 # 800083a0 <CONSOLE_STATUS+0x390>
    800052d0:	0000a517          	auipc	a0,0xa
    800052d4:	f5050513          	addi	a0,a0,-176 # 8000f220 <tickslock>
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00001317          	auipc	t1,0x1
    800052e0:	5cc30067          	jr	1484(t1) # 800068a8 <initlock>

00000000800052e4 <trapinithart>:
    800052e4:	ff010113          	addi	sp,sp,-16
    800052e8:	00813423          	sd	s0,8(sp)
    800052ec:	01010413          	addi	s0,sp,16
    800052f0:	00000797          	auipc	a5,0x0
    800052f4:	30078793          	addi	a5,a5,768 # 800055f0 <kernelvec>
    800052f8:	10579073          	csrw	stvec,a5
    800052fc:	00813403          	ld	s0,8(sp)
    80005300:	01010113          	addi	sp,sp,16
    80005304:	00008067          	ret

0000000080005308 <usertrap>:
    80005308:	ff010113          	addi	sp,sp,-16
    8000530c:	00813423          	sd	s0,8(sp)
    80005310:	01010413          	addi	s0,sp,16
    80005314:	00813403          	ld	s0,8(sp)
    80005318:	01010113          	addi	sp,sp,16
    8000531c:	00008067          	ret

0000000080005320 <usertrapret>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813423          	sd	s0,8(sp)
    80005328:	01010413          	addi	s0,sp,16
    8000532c:	00813403          	ld	s0,8(sp)
    80005330:	01010113          	addi	sp,sp,16
    80005334:	00008067          	ret

0000000080005338 <kerneltrap>:
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00813823          	sd	s0,16(sp)
    80005340:	00113c23          	sd	ra,24(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	02010413          	addi	s0,sp,32
    8000534c:	142025f3          	csrr	a1,scause
    80005350:	100027f3          	csrr	a5,sstatus
    80005354:	0027f793          	andi	a5,a5,2
    80005358:	10079c63          	bnez	a5,80005470 <kerneltrap+0x138>
    8000535c:	142027f3          	csrr	a5,scause
    80005360:	0207ce63          	bltz	a5,8000539c <kerneltrap+0x64>
    80005364:	00003517          	auipc	a0,0x3
    80005368:	08450513          	addi	a0,a0,132 # 800083e8 <CONSOLE_STATUS+0x3d8>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	88c080e7          	jalr	-1908(ra) # 80005bf8 <__printf>
    80005374:	141025f3          	csrr	a1,sepc
    80005378:	14302673          	csrr	a2,stval
    8000537c:	00003517          	auipc	a0,0x3
    80005380:	07c50513          	addi	a0,a0,124 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80005384:	00001097          	auipc	ra,0x1
    80005388:	874080e7          	jalr	-1932(ra) # 80005bf8 <__printf>
    8000538c:	00003517          	auipc	a0,0x3
    80005390:	08450513          	addi	a0,a0,132 # 80008410 <CONSOLE_STATUS+0x400>
    80005394:	00001097          	auipc	ra,0x1
    80005398:	808080e7          	jalr	-2040(ra) # 80005b9c <panic>
    8000539c:	0ff7f713          	andi	a4,a5,255
    800053a0:	00900693          	li	a3,9
    800053a4:	04d70063          	beq	a4,a3,800053e4 <kerneltrap+0xac>
    800053a8:	fff00713          	li	a4,-1
    800053ac:	03f71713          	slli	a4,a4,0x3f
    800053b0:	00170713          	addi	a4,a4,1
    800053b4:	fae798e3          	bne	a5,a4,80005364 <kerneltrap+0x2c>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	e00080e7          	jalr	-512(ra) # 800051b8 <cpuid>
    800053c0:	06050663          	beqz	a0,8000542c <kerneltrap+0xf4>
    800053c4:	144027f3          	csrr	a5,sip
    800053c8:	ffd7f793          	andi	a5,a5,-3
    800053cc:	14479073          	csrw	sip,a5
    800053d0:	01813083          	ld	ra,24(sp)
    800053d4:	01013403          	ld	s0,16(sp)
    800053d8:	00813483          	ld	s1,8(sp)
    800053dc:	02010113          	addi	sp,sp,32
    800053e0:	00008067          	ret
    800053e4:	00000097          	auipc	ra,0x0
    800053e8:	3d0080e7          	jalr	976(ra) # 800057b4 <plic_claim>
    800053ec:	00a00793          	li	a5,10
    800053f0:	00050493          	mv	s1,a0
    800053f4:	06f50863          	beq	a0,a5,80005464 <kerneltrap+0x12c>
    800053f8:	fc050ce3          	beqz	a0,800053d0 <kerneltrap+0x98>
    800053fc:	00050593          	mv	a1,a0
    80005400:	00003517          	auipc	a0,0x3
    80005404:	fc850513          	addi	a0,a0,-56 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	7f0080e7          	jalr	2032(ra) # 80005bf8 <__printf>
    80005410:	01013403          	ld	s0,16(sp)
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	00048513          	mv	a0,s1
    8000541c:	00813483          	ld	s1,8(sp)
    80005420:	02010113          	addi	sp,sp,32
    80005424:	00000317          	auipc	t1,0x0
    80005428:	3c830067          	jr	968(t1) # 800057ec <plic_complete>
    8000542c:	0000a517          	auipc	a0,0xa
    80005430:	df450513          	addi	a0,a0,-524 # 8000f220 <tickslock>
    80005434:	00001097          	auipc	ra,0x1
    80005438:	498080e7          	jalr	1176(ra) # 800068cc <acquire>
    8000543c:	00005717          	auipc	a4,0x5
    80005440:	c2870713          	addi	a4,a4,-984 # 8000a064 <ticks>
    80005444:	00072783          	lw	a5,0(a4)
    80005448:	0000a517          	auipc	a0,0xa
    8000544c:	dd850513          	addi	a0,a0,-552 # 8000f220 <tickslock>
    80005450:	0017879b          	addiw	a5,a5,1
    80005454:	00f72023          	sw	a5,0(a4)
    80005458:	00001097          	auipc	ra,0x1
    8000545c:	540080e7          	jalr	1344(ra) # 80006998 <release>
    80005460:	f65ff06f          	j	800053c4 <kerneltrap+0x8c>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	09c080e7          	jalr	156(ra) # 80006500 <uartintr>
    8000546c:	fa5ff06f          	j	80005410 <kerneltrap+0xd8>
    80005470:	00003517          	auipc	a0,0x3
    80005474:	f3850513          	addi	a0,a0,-200 # 800083a8 <CONSOLE_STATUS+0x398>
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	724080e7          	jalr	1828(ra) # 80005b9c <panic>

0000000080005480 <clockintr>:
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	00113c23          	sd	ra,24(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	0000a497          	auipc	s1,0xa
    80005498:	d8c48493          	addi	s1,s1,-628 # 8000f220 <tickslock>
    8000549c:	00048513          	mv	a0,s1
    800054a0:	00001097          	auipc	ra,0x1
    800054a4:	42c080e7          	jalr	1068(ra) # 800068cc <acquire>
    800054a8:	00005717          	auipc	a4,0x5
    800054ac:	bbc70713          	addi	a4,a4,-1092 # 8000a064 <ticks>
    800054b0:	00072783          	lw	a5,0(a4)
    800054b4:	01013403          	ld	s0,16(sp)
    800054b8:	01813083          	ld	ra,24(sp)
    800054bc:	00048513          	mv	a0,s1
    800054c0:	0017879b          	addiw	a5,a5,1
    800054c4:	00813483          	ld	s1,8(sp)
    800054c8:	00f72023          	sw	a5,0(a4)
    800054cc:	02010113          	addi	sp,sp,32
    800054d0:	00001317          	auipc	t1,0x1
    800054d4:	4c830067          	jr	1224(t1) # 80006998 <release>

00000000800054d8 <devintr>:
    800054d8:	142027f3          	csrr	a5,scause
    800054dc:	00000513          	li	a0,0
    800054e0:	0007c463          	bltz	a5,800054e8 <devintr+0x10>
    800054e4:	00008067          	ret
    800054e8:	fe010113          	addi	sp,sp,-32
    800054ec:	00813823          	sd	s0,16(sp)
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	00913423          	sd	s1,8(sp)
    800054f8:	02010413          	addi	s0,sp,32
    800054fc:	0ff7f713          	andi	a4,a5,255
    80005500:	00900693          	li	a3,9
    80005504:	04d70c63          	beq	a4,a3,8000555c <devintr+0x84>
    80005508:	fff00713          	li	a4,-1
    8000550c:	03f71713          	slli	a4,a4,0x3f
    80005510:	00170713          	addi	a4,a4,1
    80005514:	00e78c63          	beq	a5,a4,8000552c <devintr+0x54>
    80005518:	01813083          	ld	ra,24(sp)
    8000551c:	01013403          	ld	s0,16(sp)
    80005520:	00813483          	ld	s1,8(sp)
    80005524:	02010113          	addi	sp,sp,32
    80005528:	00008067          	ret
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	c8c080e7          	jalr	-884(ra) # 800051b8 <cpuid>
    80005534:	06050663          	beqz	a0,800055a0 <devintr+0xc8>
    80005538:	144027f3          	csrr	a5,sip
    8000553c:	ffd7f793          	andi	a5,a5,-3
    80005540:	14479073          	csrw	sip,a5
    80005544:	01813083          	ld	ra,24(sp)
    80005548:	01013403          	ld	s0,16(sp)
    8000554c:	00813483          	ld	s1,8(sp)
    80005550:	00200513          	li	a0,2
    80005554:	02010113          	addi	sp,sp,32
    80005558:	00008067          	ret
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	258080e7          	jalr	600(ra) # 800057b4 <plic_claim>
    80005564:	00a00793          	li	a5,10
    80005568:	00050493          	mv	s1,a0
    8000556c:	06f50663          	beq	a0,a5,800055d8 <devintr+0x100>
    80005570:	00100513          	li	a0,1
    80005574:	fa0482e3          	beqz	s1,80005518 <devintr+0x40>
    80005578:	00048593          	mv	a1,s1
    8000557c:	00003517          	auipc	a0,0x3
    80005580:	e4c50513          	addi	a0,a0,-436 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80005584:	00000097          	auipc	ra,0x0
    80005588:	674080e7          	jalr	1652(ra) # 80005bf8 <__printf>
    8000558c:	00048513          	mv	a0,s1
    80005590:	00000097          	auipc	ra,0x0
    80005594:	25c080e7          	jalr	604(ra) # 800057ec <plic_complete>
    80005598:	00100513          	li	a0,1
    8000559c:	f7dff06f          	j	80005518 <devintr+0x40>
    800055a0:	0000a517          	auipc	a0,0xa
    800055a4:	c8050513          	addi	a0,a0,-896 # 8000f220 <tickslock>
    800055a8:	00001097          	auipc	ra,0x1
    800055ac:	324080e7          	jalr	804(ra) # 800068cc <acquire>
    800055b0:	00005717          	auipc	a4,0x5
    800055b4:	ab470713          	addi	a4,a4,-1356 # 8000a064 <ticks>
    800055b8:	00072783          	lw	a5,0(a4)
    800055bc:	0000a517          	auipc	a0,0xa
    800055c0:	c6450513          	addi	a0,a0,-924 # 8000f220 <tickslock>
    800055c4:	0017879b          	addiw	a5,a5,1
    800055c8:	00f72023          	sw	a5,0(a4)
    800055cc:	00001097          	auipc	ra,0x1
    800055d0:	3cc080e7          	jalr	972(ra) # 80006998 <release>
    800055d4:	f65ff06f          	j	80005538 <devintr+0x60>
    800055d8:	00001097          	auipc	ra,0x1
    800055dc:	f28080e7          	jalr	-216(ra) # 80006500 <uartintr>
    800055e0:	fadff06f          	j	8000558c <devintr+0xb4>
	...

00000000800055f0 <kernelvec>:
    800055f0:	f0010113          	addi	sp,sp,-256
    800055f4:	00113023          	sd	ra,0(sp)
    800055f8:	00213423          	sd	sp,8(sp)
    800055fc:	00313823          	sd	gp,16(sp)
    80005600:	00413c23          	sd	tp,24(sp)
    80005604:	02513023          	sd	t0,32(sp)
    80005608:	02613423          	sd	t1,40(sp)
    8000560c:	02713823          	sd	t2,48(sp)
    80005610:	02813c23          	sd	s0,56(sp)
    80005614:	04913023          	sd	s1,64(sp)
    80005618:	04a13423          	sd	a0,72(sp)
    8000561c:	04b13823          	sd	a1,80(sp)
    80005620:	04c13c23          	sd	a2,88(sp)
    80005624:	06d13023          	sd	a3,96(sp)
    80005628:	06e13423          	sd	a4,104(sp)
    8000562c:	06f13823          	sd	a5,112(sp)
    80005630:	07013c23          	sd	a6,120(sp)
    80005634:	09113023          	sd	a7,128(sp)
    80005638:	09213423          	sd	s2,136(sp)
    8000563c:	09313823          	sd	s3,144(sp)
    80005640:	09413c23          	sd	s4,152(sp)
    80005644:	0b513023          	sd	s5,160(sp)
    80005648:	0b613423          	sd	s6,168(sp)
    8000564c:	0b713823          	sd	s7,176(sp)
    80005650:	0b813c23          	sd	s8,184(sp)
    80005654:	0d913023          	sd	s9,192(sp)
    80005658:	0da13423          	sd	s10,200(sp)
    8000565c:	0db13823          	sd	s11,208(sp)
    80005660:	0dc13c23          	sd	t3,216(sp)
    80005664:	0fd13023          	sd	t4,224(sp)
    80005668:	0fe13423          	sd	t5,232(sp)
    8000566c:	0ff13823          	sd	t6,240(sp)
    80005670:	cc9ff0ef          	jal	ra,80005338 <kerneltrap>
    80005674:	00013083          	ld	ra,0(sp)
    80005678:	00813103          	ld	sp,8(sp)
    8000567c:	01013183          	ld	gp,16(sp)
    80005680:	02013283          	ld	t0,32(sp)
    80005684:	02813303          	ld	t1,40(sp)
    80005688:	03013383          	ld	t2,48(sp)
    8000568c:	03813403          	ld	s0,56(sp)
    80005690:	04013483          	ld	s1,64(sp)
    80005694:	04813503          	ld	a0,72(sp)
    80005698:	05013583          	ld	a1,80(sp)
    8000569c:	05813603          	ld	a2,88(sp)
    800056a0:	06013683          	ld	a3,96(sp)
    800056a4:	06813703          	ld	a4,104(sp)
    800056a8:	07013783          	ld	a5,112(sp)
    800056ac:	07813803          	ld	a6,120(sp)
    800056b0:	08013883          	ld	a7,128(sp)
    800056b4:	08813903          	ld	s2,136(sp)
    800056b8:	09013983          	ld	s3,144(sp)
    800056bc:	09813a03          	ld	s4,152(sp)
    800056c0:	0a013a83          	ld	s5,160(sp)
    800056c4:	0a813b03          	ld	s6,168(sp)
    800056c8:	0b013b83          	ld	s7,176(sp)
    800056cc:	0b813c03          	ld	s8,184(sp)
    800056d0:	0c013c83          	ld	s9,192(sp)
    800056d4:	0c813d03          	ld	s10,200(sp)
    800056d8:	0d013d83          	ld	s11,208(sp)
    800056dc:	0d813e03          	ld	t3,216(sp)
    800056e0:	0e013e83          	ld	t4,224(sp)
    800056e4:	0e813f03          	ld	t5,232(sp)
    800056e8:	0f013f83          	ld	t6,240(sp)
    800056ec:	10010113          	addi	sp,sp,256
    800056f0:	10200073          	sret
    800056f4:	00000013          	nop
    800056f8:	00000013          	nop
    800056fc:	00000013          	nop

0000000080005700 <timervec>:
    80005700:	34051573          	csrrw	a0,mscratch,a0
    80005704:	00b53023          	sd	a1,0(a0)
    80005708:	00c53423          	sd	a2,8(a0)
    8000570c:	00d53823          	sd	a3,16(a0)
    80005710:	01853583          	ld	a1,24(a0)
    80005714:	02053603          	ld	a2,32(a0)
    80005718:	0005b683          	ld	a3,0(a1)
    8000571c:	00c686b3          	add	a3,a3,a2
    80005720:	00d5b023          	sd	a3,0(a1)
    80005724:	00200593          	li	a1,2
    80005728:	14459073          	csrw	sip,a1
    8000572c:	01053683          	ld	a3,16(a0)
    80005730:	00853603          	ld	a2,8(a0)
    80005734:	00053583          	ld	a1,0(a0)
    80005738:	34051573          	csrrw	a0,mscratch,a0
    8000573c:	30200073          	mret

0000000080005740 <plicinit>:
    80005740:	ff010113          	addi	sp,sp,-16
    80005744:	00813423          	sd	s0,8(sp)
    80005748:	01010413          	addi	s0,sp,16
    8000574c:	00813403          	ld	s0,8(sp)
    80005750:	0c0007b7          	lui	a5,0xc000
    80005754:	00100713          	li	a4,1
    80005758:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000575c:	00e7a223          	sw	a4,4(a5)
    80005760:	01010113          	addi	sp,sp,16
    80005764:	00008067          	ret

0000000080005768 <plicinithart>:
    80005768:	ff010113          	addi	sp,sp,-16
    8000576c:	00813023          	sd	s0,0(sp)
    80005770:	00113423          	sd	ra,8(sp)
    80005774:	01010413          	addi	s0,sp,16
    80005778:	00000097          	auipc	ra,0x0
    8000577c:	a40080e7          	jalr	-1472(ra) # 800051b8 <cpuid>
    80005780:	0085171b          	slliw	a4,a0,0x8
    80005784:	0c0027b7          	lui	a5,0xc002
    80005788:	00e787b3          	add	a5,a5,a4
    8000578c:	40200713          	li	a4,1026
    80005790:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005794:	00813083          	ld	ra,8(sp)
    80005798:	00013403          	ld	s0,0(sp)
    8000579c:	00d5151b          	slliw	a0,a0,0xd
    800057a0:	0c2017b7          	lui	a5,0xc201
    800057a4:	00a78533          	add	a0,a5,a0
    800057a8:	00052023          	sw	zero,0(a0)
    800057ac:	01010113          	addi	sp,sp,16
    800057b0:	00008067          	ret

00000000800057b4 <plic_claim>:
    800057b4:	ff010113          	addi	sp,sp,-16
    800057b8:	00813023          	sd	s0,0(sp)
    800057bc:	00113423          	sd	ra,8(sp)
    800057c0:	01010413          	addi	s0,sp,16
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	9f4080e7          	jalr	-1548(ra) # 800051b8 <cpuid>
    800057cc:	00813083          	ld	ra,8(sp)
    800057d0:	00013403          	ld	s0,0(sp)
    800057d4:	00d5151b          	slliw	a0,a0,0xd
    800057d8:	0c2017b7          	lui	a5,0xc201
    800057dc:	00a78533          	add	a0,a5,a0
    800057e0:	00452503          	lw	a0,4(a0)
    800057e4:	01010113          	addi	sp,sp,16
    800057e8:	00008067          	ret

00000000800057ec <plic_complete>:
    800057ec:	fe010113          	addi	sp,sp,-32
    800057f0:	00813823          	sd	s0,16(sp)
    800057f4:	00913423          	sd	s1,8(sp)
    800057f8:	00113c23          	sd	ra,24(sp)
    800057fc:	02010413          	addi	s0,sp,32
    80005800:	00050493          	mv	s1,a0
    80005804:	00000097          	auipc	ra,0x0
    80005808:	9b4080e7          	jalr	-1612(ra) # 800051b8 <cpuid>
    8000580c:	01813083          	ld	ra,24(sp)
    80005810:	01013403          	ld	s0,16(sp)
    80005814:	00d5179b          	slliw	a5,a0,0xd
    80005818:	0c201737          	lui	a4,0xc201
    8000581c:	00f707b3          	add	a5,a4,a5
    80005820:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005824:	00813483          	ld	s1,8(sp)
    80005828:	02010113          	addi	sp,sp,32
    8000582c:	00008067          	ret

0000000080005830 <consolewrite>:
    80005830:	fb010113          	addi	sp,sp,-80
    80005834:	04813023          	sd	s0,64(sp)
    80005838:	04113423          	sd	ra,72(sp)
    8000583c:	02913c23          	sd	s1,56(sp)
    80005840:	03213823          	sd	s2,48(sp)
    80005844:	03313423          	sd	s3,40(sp)
    80005848:	03413023          	sd	s4,32(sp)
    8000584c:	01513c23          	sd	s5,24(sp)
    80005850:	05010413          	addi	s0,sp,80
    80005854:	06c05c63          	blez	a2,800058cc <consolewrite+0x9c>
    80005858:	00060993          	mv	s3,a2
    8000585c:	00050a13          	mv	s4,a0
    80005860:	00058493          	mv	s1,a1
    80005864:	00000913          	li	s2,0
    80005868:	fff00a93          	li	s5,-1
    8000586c:	01c0006f          	j	80005888 <consolewrite+0x58>
    80005870:	fbf44503          	lbu	a0,-65(s0)
    80005874:	0019091b          	addiw	s2,s2,1
    80005878:	00148493          	addi	s1,s1,1
    8000587c:	00001097          	auipc	ra,0x1
    80005880:	a9c080e7          	jalr	-1380(ra) # 80006318 <uartputc>
    80005884:	03298063          	beq	s3,s2,800058a4 <consolewrite+0x74>
    80005888:	00048613          	mv	a2,s1
    8000588c:	00100693          	li	a3,1
    80005890:	000a0593          	mv	a1,s4
    80005894:	fbf40513          	addi	a0,s0,-65
    80005898:	00000097          	auipc	ra,0x0
    8000589c:	9d8080e7          	jalr	-1576(ra) # 80005270 <either_copyin>
    800058a0:	fd5518e3          	bne	a0,s5,80005870 <consolewrite+0x40>
    800058a4:	04813083          	ld	ra,72(sp)
    800058a8:	04013403          	ld	s0,64(sp)
    800058ac:	03813483          	ld	s1,56(sp)
    800058b0:	02813983          	ld	s3,40(sp)
    800058b4:	02013a03          	ld	s4,32(sp)
    800058b8:	01813a83          	ld	s5,24(sp)
    800058bc:	00090513          	mv	a0,s2
    800058c0:	03013903          	ld	s2,48(sp)
    800058c4:	05010113          	addi	sp,sp,80
    800058c8:	00008067          	ret
    800058cc:	00000913          	li	s2,0
    800058d0:	fd5ff06f          	j	800058a4 <consolewrite+0x74>

00000000800058d4 <consoleread>:
    800058d4:	f9010113          	addi	sp,sp,-112
    800058d8:	06813023          	sd	s0,96(sp)
    800058dc:	04913c23          	sd	s1,88(sp)
    800058e0:	05213823          	sd	s2,80(sp)
    800058e4:	05313423          	sd	s3,72(sp)
    800058e8:	05413023          	sd	s4,64(sp)
    800058ec:	03513c23          	sd	s5,56(sp)
    800058f0:	03613823          	sd	s6,48(sp)
    800058f4:	03713423          	sd	s7,40(sp)
    800058f8:	03813023          	sd	s8,32(sp)
    800058fc:	06113423          	sd	ra,104(sp)
    80005900:	01913c23          	sd	s9,24(sp)
    80005904:	07010413          	addi	s0,sp,112
    80005908:	00060b93          	mv	s7,a2
    8000590c:	00050913          	mv	s2,a0
    80005910:	00058c13          	mv	s8,a1
    80005914:	00060b1b          	sext.w	s6,a2
    80005918:	0000a497          	auipc	s1,0xa
    8000591c:	93048493          	addi	s1,s1,-1744 # 8000f248 <cons>
    80005920:	00400993          	li	s3,4
    80005924:	fff00a13          	li	s4,-1
    80005928:	00a00a93          	li	s5,10
    8000592c:	05705e63          	blez	s7,80005988 <consoleread+0xb4>
    80005930:	09c4a703          	lw	a4,156(s1)
    80005934:	0984a783          	lw	a5,152(s1)
    80005938:	0007071b          	sext.w	a4,a4
    8000593c:	08e78463          	beq	a5,a4,800059c4 <consoleread+0xf0>
    80005940:	07f7f713          	andi	a4,a5,127
    80005944:	00e48733          	add	a4,s1,a4
    80005948:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000594c:	0017869b          	addiw	a3,a5,1
    80005950:	08d4ac23          	sw	a3,152(s1)
    80005954:	00070c9b          	sext.w	s9,a4
    80005958:	0b370663          	beq	a4,s3,80005a04 <consoleread+0x130>
    8000595c:	00100693          	li	a3,1
    80005960:	f9f40613          	addi	a2,s0,-97
    80005964:	000c0593          	mv	a1,s8
    80005968:	00090513          	mv	a0,s2
    8000596c:	f8e40fa3          	sb	a4,-97(s0)
    80005970:	00000097          	auipc	ra,0x0
    80005974:	8b4080e7          	jalr	-1868(ra) # 80005224 <either_copyout>
    80005978:	01450863          	beq	a0,s4,80005988 <consoleread+0xb4>
    8000597c:	001c0c13          	addi	s8,s8,1
    80005980:	fffb8b9b          	addiw	s7,s7,-1
    80005984:	fb5c94e3          	bne	s9,s5,8000592c <consoleread+0x58>
    80005988:	000b851b          	sext.w	a0,s7
    8000598c:	06813083          	ld	ra,104(sp)
    80005990:	06013403          	ld	s0,96(sp)
    80005994:	05813483          	ld	s1,88(sp)
    80005998:	05013903          	ld	s2,80(sp)
    8000599c:	04813983          	ld	s3,72(sp)
    800059a0:	04013a03          	ld	s4,64(sp)
    800059a4:	03813a83          	ld	s5,56(sp)
    800059a8:	02813b83          	ld	s7,40(sp)
    800059ac:	02013c03          	ld	s8,32(sp)
    800059b0:	01813c83          	ld	s9,24(sp)
    800059b4:	40ab053b          	subw	a0,s6,a0
    800059b8:	03013b03          	ld	s6,48(sp)
    800059bc:	07010113          	addi	sp,sp,112
    800059c0:	00008067          	ret
    800059c4:	00001097          	auipc	ra,0x1
    800059c8:	1d8080e7          	jalr	472(ra) # 80006b9c <push_on>
    800059cc:	0984a703          	lw	a4,152(s1)
    800059d0:	09c4a783          	lw	a5,156(s1)
    800059d4:	0007879b          	sext.w	a5,a5
    800059d8:	fef70ce3          	beq	a4,a5,800059d0 <consoleread+0xfc>
    800059dc:	00001097          	auipc	ra,0x1
    800059e0:	234080e7          	jalr	564(ra) # 80006c10 <pop_on>
    800059e4:	0984a783          	lw	a5,152(s1)
    800059e8:	07f7f713          	andi	a4,a5,127
    800059ec:	00e48733          	add	a4,s1,a4
    800059f0:	01874703          	lbu	a4,24(a4)
    800059f4:	0017869b          	addiw	a3,a5,1
    800059f8:	08d4ac23          	sw	a3,152(s1)
    800059fc:	00070c9b          	sext.w	s9,a4
    80005a00:	f5371ee3          	bne	a4,s3,8000595c <consoleread+0x88>
    80005a04:	000b851b          	sext.w	a0,s7
    80005a08:	f96bf2e3          	bgeu	s7,s6,8000598c <consoleread+0xb8>
    80005a0c:	08f4ac23          	sw	a5,152(s1)
    80005a10:	f7dff06f          	j	8000598c <consoleread+0xb8>

0000000080005a14 <consputc>:
    80005a14:	10000793          	li	a5,256
    80005a18:	00f50663          	beq	a0,a5,80005a24 <consputc+0x10>
    80005a1c:	00001317          	auipc	t1,0x1
    80005a20:	9f430067          	jr	-1548(t1) # 80006410 <uartputc_sync>
    80005a24:	ff010113          	addi	sp,sp,-16
    80005a28:	00113423          	sd	ra,8(sp)
    80005a2c:	00813023          	sd	s0,0(sp)
    80005a30:	01010413          	addi	s0,sp,16
    80005a34:	00800513          	li	a0,8
    80005a38:	00001097          	auipc	ra,0x1
    80005a3c:	9d8080e7          	jalr	-1576(ra) # 80006410 <uartputc_sync>
    80005a40:	02000513          	li	a0,32
    80005a44:	00001097          	auipc	ra,0x1
    80005a48:	9cc080e7          	jalr	-1588(ra) # 80006410 <uartputc_sync>
    80005a4c:	00013403          	ld	s0,0(sp)
    80005a50:	00813083          	ld	ra,8(sp)
    80005a54:	00800513          	li	a0,8
    80005a58:	01010113          	addi	sp,sp,16
    80005a5c:	00001317          	auipc	t1,0x1
    80005a60:	9b430067          	jr	-1612(t1) # 80006410 <uartputc_sync>

0000000080005a64 <consoleintr>:
    80005a64:	fe010113          	addi	sp,sp,-32
    80005a68:	00813823          	sd	s0,16(sp)
    80005a6c:	00913423          	sd	s1,8(sp)
    80005a70:	01213023          	sd	s2,0(sp)
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	02010413          	addi	s0,sp,32
    80005a7c:	00009917          	auipc	s2,0x9
    80005a80:	7cc90913          	addi	s2,s2,1996 # 8000f248 <cons>
    80005a84:	00050493          	mv	s1,a0
    80005a88:	00090513          	mv	a0,s2
    80005a8c:	00001097          	auipc	ra,0x1
    80005a90:	e40080e7          	jalr	-448(ra) # 800068cc <acquire>
    80005a94:	02048c63          	beqz	s1,80005acc <consoleintr+0x68>
    80005a98:	0a092783          	lw	a5,160(s2)
    80005a9c:	09892703          	lw	a4,152(s2)
    80005aa0:	07f00693          	li	a3,127
    80005aa4:	40e7873b          	subw	a4,a5,a4
    80005aa8:	02e6e263          	bltu	a3,a4,80005acc <consoleintr+0x68>
    80005aac:	00d00713          	li	a4,13
    80005ab0:	04e48063          	beq	s1,a4,80005af0 <consoleintr+0x8c>
    80005ab4:	07f7f713          	andi	a4,a5,127
    80005ab8:	00e90733          	add	a4,s2,a4
    80005abc:	0017879b          	addiw	a5,a5,1
    80005ac0:	0af92023          	sw	a5,160(s2)
    80005ac4:	00970c23          	sb	s1,24(a4)
    80005ac8:	08f92e23          	sw	a5,156(s2)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	01813083          	ld	ra,24(sp)
    80005ad4:	00813483          	ld	s1,8(sp)
    80005ad8:	00013903          	ld	s2,0(sp)
    80005adc:	00009517          	auipc	a0,0x9
    80005ae0:	76c50513          	addi	a0,a0,1900 # 8000f248 <cons>
    80005ae4:	02010113          	addi	sp,sp,32
    80005ae8:	00001317          	auipc	t1,0x1
    80005aec:	eb030067          	jr	-336(t1) # 80006998 <release>
    80005af0:	00a00493          	li	s1,10
    80005af4:	fc1ff06f          	j	80005ab4 <consoleintr+0x50>

0000000080005af8 <consoleinit>:
    80005af8:	fe010113          	addi	sp,sp,-32
    80005afc:	00113c23          	sd	ra,24(sp)
    80005b00:	00813823          	sd	s0,16(sp)
    80005b04:	00913423          	sd	s1,8(sp)
    80005b08:	02010413          	addi	s0,sp,32
    80005b0c:	00009497          	auipc	s1,0x9
    80005b10:	73c48493          	addi	s1,s1,1852 # 8000f248 <cons>
    80005b14:	00048513          	mv	a0,s1
    80005b18:	00003597          	auipc	a1,0x3
    80005b1c:	90858593          	addi	a1,a1,-1784 # 80008420 <CONSOLE_STATUS+0x410>
    80005b20:	00001097          	auipc	ra,0x1
    80005b24:	d88080e7          	jalr	-632(ra) # 800068a8 <initlock>
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	7ac080e7          	jalr	1964(ra) # 800062d4 <uartinit>
    80005b30:	01813083          	ld	ra,24(sp)
    80005b34:	01013403          	ld	s0,16(sp)
    80005b38:	00000797          	auipc	a5,0x0
    80005b3c:	d9c78793          	addi	a5,a5,-612 # 800058d4 <consoleread>
    80005b40:	0af4bc23          	sd	a5,184(s1)
    80005b44:	00000797          	auipc	a5,0x0
    80005b48:	cec78793          	addi	a5,a5,-788 # 80005830 <consolewrite>
    80005b4c:	0cf4b023          	sd	a5,192(s1)
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	02010113          	addi	sp,sp,32
    80005b58:	00008067          	ret

0000000080005b5c <console_read>:
    80005b5c:	ff010113          	addi	sp,sp,-16
    80005b60:	00813423          	sd	s0,8(sp)
    80005b64:	01010413          	addi	s0,sp,16
    80005b68:	00813403          	ld	s0,8(sp)
    80005b6c:	00009317          	auipc	t1,0x9
    80005b70:	79433303          	ld	t1,1940(t1) # 8000f300 <devsw+0x10>
    80005b74:	01010113          	addi	sp,sp,16
    80005b78:	00030067          	jr	t1

0000000080005b7c <console_write>:
    80005b7c:	ff010113          	addi	sp,sp,-16
    80005b80:	00813423          	sd	s0,8(sp)
    80005b84:	01010413          	addi	s0,sp,16
    80005b88:	00813403          	ld	s0,8(sp)
    80005b8c:	00009317          	auipc	t1,0x9
    80005b90:	77c33303          	ld	t1,1916(t1) # 8000f308 <devsw+0x18>
    80005b94:	01010113          	addi	sp,sp,16
    80005b98:	00030067          	jr	t1

0000000080005b9c <panic>:
    80005b9c:	fe010113          	addi	sp,sp,-32
    80005ba0:	00113c23          	sd	ra,24(sp)
    80005ba4:	00813823          	sd	s0,16(sp)
    80005ba8:	00913423          	sd	s1,8(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	00050493          	mv	s1,a0
    80005bb4:	00003517          	auipc	a0,0x3
    80005bb8:	87450513          	addi	a0,a0,-1932 # 80008428 <CONSOLE_STATUS+0x418>
    80005bbc:	00009797          	auipc	a5,0x9
    80005bc0:	7e07a623          	sw	zero,2028(a5) # 8000f3a8 <pr+0x18>
    80005bc4:	00000097          	auipc	ra,0x0
    80005bc8:	034080e7          	jalr	52(ra) # 80005bf8 <__printf>
    80005bcc:	00048513          	mv	a0,s1
    80005bd0:	00000097          	auipc	ra,0x0
    80005bd4:	028080e7          	jalr	40(ra) # 80005bf8 <__printf>
    80005bd8:	00002517          	auipc	a0,0x2
    80005bdc:	50850513          	addi	a0,a0,1288 # 800080e0 <CONSOLE_STATUS+0xd0>
    80005be0:	00000097          	auipc	ra,0x0
    80005be4:	018080e7          	jalr	24(ra) # 80005bf8 <__printf>
    80005be8:	00100793          	li	a5,1
    80005bec:	00004717          	auipc	a4,0x4
    80005bf0:	46f72e23          	sw	a5,1148(a4) # 8000a068 <panicked>
    80005bf4:	0000006f          	j	80005bf4 <panic+0x58>

0000000080005bf8 <__printf>:
    80005bf8:	f3010113          	addi	sp,sp,-208
    80005bfc:	08813023          	sd	s0,128(sp)
    80005c00:	07313423          	sd	s3,104(sp)
    80005c04:	09010413          	addi	s0,sp,144
    80005c08:	05813023          	sd	s8,64(sp)
    80005c0c:	08113423          	sd	ra,136(sp)
    80005c10:	06913c23          	sd	s1,120(sp)
    80005c14:	07213823          	sd	s2,112(sp)
    80005c18:	07413023          	sd	s4,96(sp)
    80005c1c:	05513c23          	sd	s5,88(sp)
    80005c20:	05613823          	sd	s6,80(sp)
    80005c24:	05713423          	sd	s7,72(sp)
    80005c28:	03913c23          	sd	s9,56(sp)
    80005c2c:	03a13823          	sd	s10,48(sp)
    80005c30:	03b13423          	sd	s11,40(sp)
    80005c34:	00009317          	auipc	t1,0x9
    80005c38:	75c30313          	addi	t1,t1,1884 # 8000f390 <pr>
    80005c3c:	01832c03          	lw	s8,24(t1)
    80005c40:	00b43423          	sd	a1,8(s0)
    80005c44:	00c43823          	sd	a2,16(s0)
    80005c48:	00d43c23          	sd	a3,24(s0)
    80005c4c:	02e43023          	sd	a4,32(s0)
    80005c50:	02f43423          	sd	a5,40(s0)
    80005c54:	03043823          	sd	a6,48(s0)
    80005c58:	03143c23          	sd	a7,56(s0)
    80005c5c:	00050993          	mv	s3,a0
    80005c60:	4a0c1663          	bnez	s8,8000610c <__printf+0x514>
    80005c64:	60098c63          	beqz	s3,8000627c <__printf+0x684>
    80005c68:	0009c503          	lbu	a0,0(s3)
    80005c6c:	00840793          	addi	a5,s0,8
    80005c70:	f6f43c23          	sd	a5,-136(s0)
    80005c74:	00000493          	li	s1,0
    80005c78:	22050063          	beqz	a0,80005e98 <__printf+0x2a0>
    80005c7c:	00002a37          	lui	s4,0x2
    80005c80:	00018ab7          	lui	s5,0x18
    80005c84:	000f4b37          	lui	s6,0xf4
    80005c88:	00989bb7          	lui	s7,0x989
    80005c8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005c90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005c94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005c98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005c9c:	00148c9b          	addiw	s9,s1,1
    80005ca0:	02500793          	li	a5,37
    80005ca4:	01998933          	add	s2,s3,s9
    80005ca8:	38f51263          	bne	a0,a5,8000602c <__printf+0x434>
    80005cac:	00094783          	lbu	a5,0(s2)
    80005cb0:	00078c9b          	sext.w	s9,a5
    80005cb4:	1e078263          	beqz	a5,80005e98 <__printf+0x2a0>
    80005cb8:	0024849b          	addiw	s1,s1,2
    80005cbc:	07000713          	li	a4,112
    80005cc0:	00998933          	add	s2,s3,s1
    80005cc4:	38e78a63          	beq	a5,a4,80006058 <__printf+0x460>
    80005cc8:	20f76863          	bltu	a4,a5,80005ed8 <__printf+0x2e0>
    80005ccc:	42a78863          	beq	a5,a0,800060fc <__printf+0x504>
    80005cd0:	06400713          	li	a4,100
    80005cd4:	40e79663          	bne	a5,a4,800060e0 <__printf+0x4e8>
    80005cd8:	f7843783          	ld	a5,-136(s0)
    80005cdc:	0007a603          	lw	a2,0(a5)
    80005ce0:	00878793          	addi	a5,a5,8
    80005ce4:	f6f43c23          	sd	a5,-136(s0)
    80005ce8:	42064a63          	bltz	a2,8000611c <__printf+0x524>
    80005cec:	00a00713          	li	a4,10
    80005cf0:	02e677bb          	remuw	a5,a2,a4
    80005cf4:	00002d97          	auipc	s11,0x2
    80005cf8:	75cd8d93          	addi	s11,s11,1884 # 80008450 <digits>
    80005cfc:	00900593          	li	a1,9
    80005d00:	0006051b          	sext.w	a0,a2
    80005d04:	00000c93          	li	s9,0
    80005d08:	02079793          	slli	a5,a5,0x20
    80005d0c:	0207d793          	srli	a5,a5,0x20
    80005d10:	00fd87b3          	add	a5,s11,a5
    80005d14:	0007c783          	lbu	a5,0(a5)
    80005d18:	02e656bb          	divuw	a3,a2,a4
    80005d1c:	f8f40023          	sb	a5,-128(s0)
    80005d20:	14c5d863          	bge	a1,a2,80005e70 <__printf+0x278>
    80005d24:	06300593          	li	a1,99
    80005d28:	00100c93          	li	s9,1
    80005d2c:	02e6f7bb          	remuw	a5,a3,a4
    80005d30:	02079793          	slli	a5,a5,0x20
    80005d34:	0207d793          	srli	a5,a5,0x20
    80005d38:	00fd87b3          	add	a5,s11,a5
    80005d3c:	0007c783          	lbu	a5,0(a5)
    80005d40:	02e6d73b          	divuw	a4,a3,a4
    80005d44:	f8f400a3          	sb	a5,-127(s0)
    80005d48:	12a5f463          	bgeu	a1,a0,80005e70 <__printf+0x278>
    80005d4c:	00a00693          	li	a3,10
    80005d50:	00900593          	li	a1,9
    80005d54:	02d777bb          	remuw	a5,a4,a3
    80005d58:	02079793          	slli	a5,a5,0x20
    80005d5c:	0207d793          	srli	a5,a5,0x20
    80005d60:	00fd87b3          	add	a5,s11,a5
    80005d64:	0007c503          	lbu	a0,0(a5)
    80005d68:	02d757bb          	divuw	a5,a4,a3
    80005d6c:	f8a40123          	sb	a0,-126(s0)
    80005d70:	48e5f263          	bgeu	a1,a4,800061f4 <__printf+0x5fc>
    80005d74:	06300513          	li	a0,99
    80005d78:	02d7f5bb          	remuw	a1,a5,a3
    80005d7c:	02059593          	slli	a1,a1,0x20
    80005d80:	0205d593          	srli	a1,a1,0x20
    80005d84:	00bd85b3          	add	a1,s11,a1
    80005d88:	0005c583          	lbu	a1,0(a1)
    80005d8c:	02d7d7bb          	divuw	a5,a5,a3
    80005d90:	f8b401a3          	sb	a1,-125(s0)
    80005d94:	48e57263          	bgeu	a0,a4,80006218 <__printf+0x620>
    80005d98:	3e700513          	li	a0,999
    80005d9c:	02d7f5bb          	remuw	a1,a5,a3
    80005da0:	02059593          	slli	a1,a1,0x20
    80005da4:	0205d593          	srli	a1,a1,0x20
    80005da8:	00bd85b3          	add	a1,s11,a1
    80005dac:	0005c583          	lbu	a1,0(a1)
    80005db0:	02d7d7bb          	divuw	a5,a5,a3
    80005db4:	f8b40223          	sb	a1,-124(s0)
    80005db8:	46e57663          	bgeu	a0,a4,80006224 <__printf+0x62c>
    80005dbc:	02d7f5bb          	remuw	a1,a5,a3
    80005dc0:	02059593          	slli	a1,a1,0x20
    80005dc4:	0205d593          	srli	a1,a1,0x20
    80005dc8:	00bd85b3          	add	a1,s11,a1
    80005dcc:	0005c583          	lbu	a1,0(a1)
    80005dd0:	02d7d7bb          	divuw	a5,a5,a3
    80005dd4:	f8b402a3          	sb	a1,-123(s0)
    80005dd8:	46ea7863          	bgeu	s4,a4,80006248 <__printf+0x650>
    80005ddc:	02d7f5bb          	remuw	a1,a5,a3
    80005de0:	02059593          	slli	a1,a1,0x20
    80005de4:	0205d593          	srli	a1,a1,0x20
    80005de8:	00bd85b3          	add	a1,s11,a1
    80005dec:	0005c583          	lbu	a1,0(a1)
    80005df0:	02d7d7bb          	divuw	a5,a5,a3
    80005df4:	f8b40323          	sb	a1,-122(s0)
    80005df8:	3eeaf863          	bgeu	s5,a4,800061e8 <__printf+0x5f0>
    80005dfc:	02d7f5bb          	remuw	a1,a5,a3
    80005e00:	02059593          	slli	a1,a1,0x20
    80005e04:	0205d593          	srli	a1,a1,0x20
    80005e08:	00bd85b3          	add	a1,s11,a1
    80005e0c:	0005c583          	lbu	a1,0(a1)
    80005e10:	02d7d7bb          	divuw	a5,a5,a3
    80005e14:	f8b403a3          	sb	a1,-121(s0)
    80005e18:	42eb7e63          	bgeu	s6,a4,80006254 <__printf+0x65c>
    80005e1c:	02d7f5bb          	remuw	a1,a5,a3
    80005e20:	02059593          	slli	a1,a1,0x20
    80005e24:	0205d593          	srli	a1,a1,0x20
    80005e28:	00bd85b3          	add	a1,s11,a1
    80005e2c:	0005c583          	lbu	a1,0(a1)
    80005e30:	02d7d7bb          	divuw	a5,a5,a3
    80005e34:	f8b40423          	sb	a1,-120(s0)
    80005e38:	42ebfc63          	bgeu	s7,a4,80006270 <__printf+0x678>
    80005e3c:	02079793          	slli	a5,a5,0x20
    80005e40:	0207d793          	srli	a5,a5,0x20
    80005e44:	00fd8db3          	add	s11,s11,a5
    80005e48:	000dc703          	lbu	a4,0(s11)
    80005e4c:	00a00793          	li	a5,10
    80005e50:	00900c93          	li	s9,9
    80005e54:	f8e404a3          	sb	a4,-119(s0)
    80005e58:	00065c63          	bgez	a2,80005e70 <__printf+0x278>
    80005e5c:	f9040713          	addi	a4,s0,-112
    80005e60:	00f70733          	add	a4,a4,a5
    80005e64:	02d00693          	li	a3,45
    80005e68:	fed70823          	sb	a3,-16(a4)
    80005e6c:	00078c93          	mv	s9,a5
    80005e70:	f8040793          	addi	a5,s0,-128
    80005e74:	01978cb3          	add	s9,a5,s9
    80005e78:	f7f40d13          	addi	s10,s0,-129
    80005e7c:	000cc503          	lbu	a0,0(s9)
    80005e80:	fffc8c93          	addi	s9,s9,-1
    80005e84:	00000097          	auipc	ra,0x0
    80005e88:	b90080e7          	jalr	-1136(ra) # 80005a14 <consputc>
    80005e8c:	ffac98e3          	bne	s9,s10,80005e7c <__printf+0x284>
    80005e90:	00094503          	lbu	a0,0(s2)
    80005e94:	e00514e3          	bnez	a0,80005c9c <__printf+0xa4>
    80005e98:	1a0c1663          	bnez	s8,80006044 <__printf+0x44c>
    80005e9c:	08813083          	ld	ra,136(sp)
    80005ea0:	08013403          	ld	s0,128(sp)
    80005ea4:	07813483          	ld	s1,120(sp)
    80005ea8:	07013903          	ld	s2,112(sp)
    80005eac:	06813983          	ld	s3,104(sp)
    80005eb0:	06013a03          	ld	s4,96(sp)
    80005eb4:	05813a83          	ld	s5,88(sp)
    80005eb8:	05013b03          	ld	s6,80(sp)
    80005ebc:	04813b83          	ld	s7,72(sp)
    80005ec0:	04013c03          	ld	s8,64(sp)
    80005ec4:	03813c83          	ld	s9,56(sp)
    80005ec8:	03013d03          	ld	s10,48(sp)
    80005ecc:	02813d83          	ld	s11,40(sp)
    80005ed0:	0d010113          	addi	sp,sp,208
    80005ed4:	00008067          	ret
    80005ed8:	07300713          	li	a4,115
    80005edc:	1ce78a63          	beq	a5,a4,800060b0 <__printf+0x4b8>
    80005ee0:	07800713          	li	a4,120
    80005ee4:	1ee79e63          	bne	a5,a4,800060e0 <__printf+0x4e8>
    80005ee8:	f7843783          	ld	a5,-136(s0)
    80005eec:	0007a703          	lw	a4,0(a5)
    80005ef0:	00878793          	addi	a5,a5,8
    80005ef4:	f6f43c23          	sd	a5,-136(s0)
    80005ef8:	28074263          	bltz	a4,8000617c <__printf+0x584>
    80005efc:	00002d97          	auipc	s11,0x2
    80005f00:	554d8d93          	addi	s11,s11,1364 # 80008450 <digits>
    80005f04:	00f77793          	andi	a5,a4,15
    80005f08:	00fd87b3          	add	a5,s11,a5
    80005f0c:	0007c683          	lbu	a3,0(a5)
    80005f10:	00f00613          	li	a2,15
    80005f14:	0007079b          	sext.w	a5,a4
    80005f18:	f8d40023          	sb	a3,-128(s0)
    80005f1c:	0047559b          	srliw	a1,a4,0x4
    80005f20:	0047569b          	srliw	a3,a4,0x4
    80005f24:	00000c93          	li	s9,0
    80005f28:	0ee65063          	bge	a2,a4,80006008 <__printf+0x410>
    80005f2c:	00f6f693          	andi	a3,a3,15
    80005f30:	00dd86b3          	add	a3,s11,a3
    80005f34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005f38:	0087d79b          	srliw	a5,a5,0x8
    80005f3c:	00100c93          	li	s9,1
    80005f40:	f8d400a3          	sb	a3,-127(s0)
    80005f44:	0cb67263          	bgeu	a2,a1,80006008 <__printf+0x410>
    80005f48:	00f7f693          	andi	a3,a5,15
    80005f4c:	00dd86b3          	add	a3,s11,a3
    80005f50:	0006c583          	lbu	a1,0(a3)
    80005f54:	00f00613          	li	a2,15
    80005f58:	0047d69b          	srliw	a3,a5,0x4
    80005f5c:	f8b40123          	sb	a1,-126(s0)
    80005f60:	0047d593          	srli	a1,a5,0x4
    80005f64:	28f67e63          	bgeu	a2,a5,80006200 <__printf+0x608>
    80005f68:	00f6f693          	andi	a3,a3,15
    80005f6c:	00dd86b3          	add	a3,s11,a3
    80005f70:	0006c503          	lbu	a0,0(a3)
    80005f74:	0087d813          	srli	a6,a5,0x8
    80005f78:	0087d69b          	srliw	a3,a5,0x8
    80005f7c:	f8a401a3          	sb	a0,-125(s0)
    80005f80:	28b67663          	bgeu	a2,a1,8000620c <__printf+0x614>
    80005f84:	00f6f693          	andi	a3,a3,15
    80005f88:	00dd86b3          	add	a3,s11,a3
    80005f8c:	0006c583          	lbu	a1,0(a3)
    80005f90:	00c7d513          	srli	a0,a5,0xc
    80005f94:	00c7d69b          	srliw	a3,a5,0xc
    80005f98:	f8b40223          	sb	a1,-124(s0)
    80005f9c:	29067a63          	bgeu	a2,a6,80006230 <__printf+0x638>
    80005fa0:	00f6f693          	andi	a3,a3,15
    80005fa4:	00dd86b3          	add	a3,s11,a3
    80005fa8:	0006c583          	lbu	a1,0(a3)
    80005fac:	0107d813          	srli	a6,a5,0x10
    80005fb0:	0107d69b          	srliw	a3,a5,0x10
    80005fb4:	f8b402a3          	sb	a1,-123(s0)
    80005fb8:	28a67263          	bgeu	a2,a0,8000623c <__printf+0x644>
    80005fbc:	00f6f693          	andi	a3,a3,15
    80005fc0:	00dd86b3          	add	a3,s11,a3
    80005fc4:	0006c683          	lbu	a3,0(a3)
    80005fc8:	0147d79b          	srliw	a5,a5,0x14
    80005fcc:	f8d40323          	sb	a3,-122(s0)
    80005fd0:	21067663          	bgeu	a2,a6,800061dc <__printf+0x5e4>
    80005fd4:	02079793          	slli	a5,a5,0x20
    80005fd8:	0207d793          	srli	a5,a5,0x20
    80005fdc:	00fd8db3          	add	s11,s11,a5
    80005fe0:	000dc683          	lbu	a3,0(s11)
    80005fe4:	00800793          	li	a5,8
    80005fe8:	00700c93          	li	s9,7
    80005fec:	f8d403a3          	sb	a3,-121(s0)
    80005ff0:	00075c63          	bgez	a4,80006008 <__printf+0x410>
    80005ff4:	f9040713          	addi	a4,s0,-112
    80005ff8:	00f70733          	add	a4,a4,a5
    80005ffc:	02d00693          	li	a3,45
    80006000:	fed70823          	sb	a3,-16(a4)
    80006004:	00078c93          	mv	s9,a5
    80006008:	f8040793          	addi	a5,s0,-128
    8000600c:	01978cb3          	add	s9,a5,s9
    80006010:	f7f40d13          	addi	s10,s0,-129
    80006014:	000cc503          	lbu	a0,0(s9)
    80006018:	fffc8c93          	addi	s9,s9,-1
    8000601c:	00000097          	auipc	ra,0x0
    80006020:	9f8080e7          	jalr	-1544(ra) # 80005a14 <consputc>
    80006024:	ff9d18e3          	bne	s10,s9,80006014 <__printf+0x41c>
    80006028:	0100006f          	j	80006038 <__printf+0x440>
    8000602c:	00000097          	auipc	ra,0x0
    80006030:	9e8080e7          	jalr	-1560(ra) # 80005a14 <consputc>
    80006034:	000c8493          	mv	s1,s9
    80006038:	00094503          	lbu	a0,0(s2)
    8000603c:	c60510e3          	bnez	a0,80005c9c <__printf+0xa4>
    80006040:	e40c0ee3          	beqz	s8,80005e9c <__printf+0x2a4>
    80006044:	00009517          	auipc	a0,0x9
    80006048:	34c50513          	addi	a0,a0,844 # 8000f390 <pr>
    8000604c:	00001097          	auipc	ra,0x1
    80006050:	94c080e7          	jalr	-1716(ra) # 80006998 <release>
    80006054:	e49ff06f          	j	80005e9c <__printf+0x2a4>
    80006058:	f7843783          	ld	a5,-136(s0)
    8000605c:	03000513          	li	a0,48
    80006060:	01000d13          	li	s10,16
    80006064:	00878713          	addi	a4,a5,8
    80006068:	0007bc83          	ld	s9,0(a5)
    8000606c:	f6e43c23          	sd	a4,-136(s0)
    80006070:	00000097          	auipc	ra,0x0
    80006074:	9a4080e7          	jalr	-1628(ra) # 80005a14 <consputc>
    80006078:	07800513          	li	a0,120
    8000607c:	00000097          	auipc	ra,0x0
    80006080:	998080e7          	jalr	-1640(ra) # 80005a14 <consputc>
    80006084:	00002d97          	auipc	s11,0x2
    80006088:	3ccd8d93          	addi	s11,s11,972 # 80008450 <digits>
    8000608c:	03ccd793          	srli	a5,s9,0x3c
    80006090:	00fd87b3          	add	a5,s11,a5
    80006094:	0007c503          	lbu	a0,0(a5)
    80006098:	fffd0d1b          	addiw	s10,s10,-1
    8000609c:	004c9c93          	slli	s9,s9,0x4
    800060a0:	00000097          	auipc	ra,0x0
    800060a4:	974080e7          	jalr	-1676(ra) # 80005a14 <consputc>
    800060a8:	fe0d12e3          	bnez	s10,8000608c <__printf+0x494>
    800060ac:	f8dff06f          	j	80006038 <__printf+0x440>
    800060b0:	f7843783          	ld	a5,-136(s0)
    800060b4:	0007bc83          	ld	s9,0(a5)
    800060b8:	00878793          	addi	a5,a5,8
    800060bc:	f6f43c23          	sd	a5,-136(s0)
    800060c0:	000c9a63          	bnez	s9,800060d4 <__printf+0x4dc>
    800060c4:	1080006f          	j	800061cc <__printf+0x5d4>
    800060c8:	001c8c93          	addi	s9,s9,1
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	948080e7          	jalr	-1720(ra) # 80005a14 <consputc>
    800060d4:	000cc503          	lbu	a0,0(s9)
    800060d8:	fe0518e3          	bnez	a0,800060c8 <__printf+0x4d0>
    800060dc:	f5dff06f          	j	80006038 <__printf+0x440>
    800060e0:	02500513          	li	a0,37
    800060e4:	00000097          	auipc	ra,0x0
    800060e8:	930080e7          	jalr	-1744(ra) # 80005a14 <consputc>
    800060ec:	000c8513          	mv	a0,s9
    800060f0:	00000097          	auipc	ra,0x0
    800060f4:	924080e7          	jalr	-1756(ra) # 80005a14 <consputc>
    800060f8:	f41ff06f          	j	80006038 <__printf+0x440>
    800060fc:	02500513          	li	a0,37
    80006100:	00000097          	auipc	ra,0x0
    80006104:	914080e7          	jalr	-1772(ra) # 80005a14 <consputc>
    80006108:	f31ff06f          	j	80006038 <__printf+0x440>
    8000610c:	00030513          	mv	a0,t1
    80006110:	00000097          	auipc	ra,0x0
    80006114:	7bc080e7          	jalr	1980(ra) # 800068cc <acquire>
    80006118:	b4dff06f          	j	80005c64 <__printf+0x6c>
    8000611c:	40c0053b          	negw	a0,a2
    80006120:	00a00713          	li	a4,10
    80006124:	02e576bb          	remuw	a3,a0,a4
    80006128:	00002d97          	auipc	s11,0x2
    8000612c:	328d8d93          	addi	s11,s11,808 # 80008450 <digits>
    80006130:	ff700593          	li	a1,-9
    80006134:	02069693          	slli	a3,a3,0x20
    80006138:	0206d693          	srli	a3,a3,0x20
    8000613c:	00dd86b3          	add	a3,s11,a3
    80006140:	0006c683          	lbu	a3,0(a3)
    80006144:	02e557bb          	divuw	a5,a0,a4
    80006148:	f8d40023          	sb	a3,-128(s0)
    8000614c:	10b65e63          	bge	a2,a1,80006268 <__printf+0x670>
    80006150:	06300593          	li	a1,99
    80006154:	02e7f6bb          	remuw	a3,a5,a4
    80006158:	02069693          	slli	a3,a3,0x20
    8000615c:	0206d693          	srli	a3,a3,0x20
    80006160:	00dd86b3          	add	a3,s11,a3
    80006164:	0006c683          	lbu	a3,0(a3)
    80006168:	02e7d73b          	divuw	a4,a5,a4
    8000616c:	00200793          	li	a5,2
    80006170:	f8d400a3          	sb	a3,-127(s0)
    80006174:	bca5ece3          	bltu	a1,a0,80005d4c <__printf+0x154>
    80006178:	ce5ff06f          	j	80005e5c <__printf+0x264>
    8000617c:	40e007bb          	negw	a5,a4
    80006180:	00002d97          	auipc	s11,0x2
    80006184:	2d0d8d93          	addi	s11,s11,720 # 80008450 <digits>
    80006188:	00f7f693          	andi	a3,a5,15
    8000618c:	00dd86b3          	add	a3,s11,a3
    80006190:	0006c583          	lbu	a1,0(a3)
    80006194:	ff100613          	li	a2,-15
    80006198:	0047d69b          	srliw	a3,a5,0x4
    8000619c:	f8b40023          	sb	a1,-128(s0)
    800061a0:	0047d59b          	srliw	a1,a5,0x4
    800061a4:	0ac75e63          	bge	a4,a2,80006260 <__printf+0x668>
    800061a8:	00f6f693          	andi	a3,a3,15
    800061ac:	00dd86b3          	add	a3,s11,a3
    800061b0:	0006c603          	lbu	a2,0(a3)
    800061b4:	00f00693          	li	a3,15
    800061b8:	0087d79b          	srliw	a5,a5,0x8
    800061bc:	f8c400a3          	sb	a2,-127(s0)
    800061c0:	d8b6e4e3          	bltu	a3,a1,80005f48 <__printf+0x350>
    800061c4:	00200793          	li	a5,2
    800061c8:	e2dff06f          	j	80005ff4 <__printf+0x3fc>
    800061cc:	00002c97          	auipc	s9,0x2
    800061d0:	264c8c93          	addi	s9,s9,612 # 80008430 <CONSOLE_STATUS+0x420>
    800061d4:	02800513          	li	a0,40
    800061d8:	ef1ff06f          	j	800060c8 <__printf+0x4d0>
    800061dc:	00700793          	li	a5,7
    800061e0:	00600c93          	li	s9,6
    800061e4:	e0dff06f          	j	80005ff0 <__printf+0x3f8>
    800061e8:	00700793          	li	a5,7
    800061ec:	00600c93          	li	s9,6
    800061f0:	c69ff06f          	j	80005e58 <__printf+0x260>
    800061f4:	00300793          	li	a5,3
    800061f8:	00200c93          	li	s9,2
    800061fc:	c5dff06f          	j	80005e58 <__printf+0x260>
    80006200:	00300793          	li	a5,3
    80006204:	00200c93          	li	s9,2
    80006208:	de9ff06f          	j	80005ff0 <__printf+0x3f8>
    8000620c:	00400793          	li	a5,4
    80006210:	00300c93          	li	s9,3
    80006214:	dddff06f          	j	80005ff0 <__printf+0x3f8>
    80006218:	00400793          	li	a5,4
    8000621c:	00300c93          	li	s9,3
    80006220:	c39ff06f          	j	80005e58 <__printf+0x260>
    80006224:	00500793          	li	a5,5
    80006228:	00400c93          	li	s9,4
    8000622c:	c2dff06f          	j	80005e58 <__printf+0x260>
    80006230:	00500793          	li	a5,5
    80006234:	00400c93          	li	s9,4
    80006238:	db9ff06f          	j	80005ff0 <__printf+0x3f8>
    8000623c:	00600793          	li	a5,6
    80006240:	00500c93          	li	s9,5
    80006244:	dadff06f          	j	80005ff0 <__printf+0x3f8>
    80006248:	00600793          	li	a5,6
    8000624c:	00500c93          	li	s9,5
    80006250:	c09ff06f          	j	80005e58 <__printf+0x260>
    80006254:	00800793          	li	a5,8
    80006258:	00700c93          	li	s9,7
    8000625c:	bfdff06f          	j	80005e58 <__printf+0x260>
    80006260:	00100793          	li	a5,1
    80006264:	d91ff06f          	j	80005ff4 <__printf+0x3fc>
    80006268:	00100793          	li	a5,1
    8000626c:	bf1ff06f          	j	80005e5c <__printf+0x264>
    80006270:	00900793          	li	a5,9
    80006274:	00800c93          	li	s9,8
    80006278:	be1ff06f          	j	80005e58 <__printf+0x260>
    8000627c:	00002517          	auipc	a0,0x2
    80006280:	1bc50513          	addi	a0,a0,444 # 80008438 <CONSOLE_STATUS+0x428>
    80006284:	00000097          	auipc	ra,0x0
    80006288:	918080e7          	jalr	-1768(ra) # 80005b9c <panic>

000000008000628c <printfinit>:
    8000628c:	fe010113          	addi	sp,sp,-32
    80006290:	00813823          	sd	s0,16(sp)
    80006294:	00913423          	sd	s1,8(sp)
    80006298:	00113c23          	sd	ra,24(sp)
    8000629c:	02010413          	addi	s0,sp,32
    800062a0:	00009497          	auipc	s1,0x9
    800062a4:	0f048493          	addi	s1,s1,240 # 8000f390 <pr>
    800062a8:	00048513          	mv	a0,s1
    800062ac:	00002597          	auipc	a1,0x2
    800062b0:	19c58593          	addi	a1,a1,412 # 80008448 <CONSOLE_STATUS+0x438>
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	5f4080e7          	jalr	1524(ra) # 800068a8 <initlock>
    800062bc:	01813083          	ld	ra,24(sp)
    800062c0:	01013403          	ld	s0,16(sp)
    800062c4:	0004ac23          	sw	zero,24(s1)
    800062c8:	00813483          	ld	s1,8(sp)
    800062cc:	02010113          	addi	sp,sp,32
    800062d0:	00008067          	ret

00000000800062d4 <uartinit>:
    800062d4:	ff010113          	addi	sp,sp,-16
    800062d8:	00813423          	sd	s0,8(sp)
    800062dc:	01010413          	addi	s0,sp,16
    800062e0:	100007b7          	lui	a5,0x10000
    800062e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800062e8:	f8000713          	li	a4,-128
    800062ec:	00e781a3          	sb	a4,3(a5)
    800062f0:	00300713          	li	a4,3
    800062f4:	00e78023          	sb	a4,0(a5)
    800062f8:	000780a3          	sb	zero,1(a5)
    800062fc:	00e781a3          	sb	a4,3(a5)
    80006300:	00700693          	li	a3,7
    80006304:	00d78123          	sb	a3,2(a5)
    80006308:	00e780a3          	sb	a4,1(a5)
    8000630c:	00813403          	ld	s0,8(sp)
    80006310:	01010113          	addi	sp,sp,16
    80006314:	00008067          	ret

0000000080006318 <uartputc>:
    80006318:	00004797          	auipc	a5,0x4
    8000631c:	d507a783          	lw	a5,-688(a5) # 8000a068 <panicked>
    80006320:	00078463          	beqz	a5,80006328 <uartputc+0x10>
    80006324:	0000006f          	j	80006324 <uartputc+0xc>
    80006328:	fd010113          	addi	sp,sp,-48
    8000632c:	02813023          	sd	s0,32(sp)
    80006330:	00913c23          	sd	s1,24(sp)
    80006334:	01213823          	sd	s2,16(sp)
    80006338:	01313423          	sd	s3,8(sp)
    8000633c:	02113423          	sd	ra,40(sp)
    80006340:	03010413          	addi	s0,sp,48
    80006344:	00004917          	auipc	s2,0x4
    80006348:	d2c90913          	addi	s2,s2,-724 # 8000a070 <uart_tx_r>
    8000634c:	00093783          	ld	a5,0(s2)
    80006350:	00004497          	auipc	s1,0x4
    80006354:	d2848493          	addi	s1,s1,-728 # 8000a078 <uart_tx_w>
    80006358:	0004b703          	ld	a4,0(s1)
    8000635c:	02078693          	addi	a3,a5,32
    80006360:	00050993          	mv	s3,a0
    80006364:	02e69c63          	bne	a3,a4,8000639c <uartputc+0x84>
    80006368:	00001097          	auipc	ra,0x1
    8000636c:	834080e7          	jalr	-1996(ra) # 80006b9c <push_on>
    80006370:	00093783          	ld	a5,0(s2)
    80006374:	0004b703          	ld	a4,0(s1)
    80006378:	02078793          	addi	a5,a5,32
    8000637c:	00e79463          	bne	a5,a4,80006384 <uartputc+0x6c>
    80006380:	0000006f          	j	80006380 <uartputc+0x68>
    80006384:	00001097          	auipc	ra,0x1
    80006388:	88c080e7          	jalr	-1908(ra) # 80006c10 <pop_on>
    8000638c:	00093783          	ld	a5,0(s2)
    80006390:	0004b703          	ld	a4,0(s1)
    80006394:	02078693          	addi	a3,a5,32
    80006398:	fce688e3          	beq	a3,a4,80006368 <uartputc+0x50>
    8000639c:	01f77693          	andi	a3,a4,31
    800063a0:	00009597          	auipc	a1,0x9
    800063a4:	01058593          	addi	a1,a1,16 # 8000f3b0 <uart_tx_buf>
    800063a8:	00d586b3          	add	a3,a1,a3
    800063ac:	00170713          	addi	a4,a4,1
    800063b0:	01368023          	sb	s3,0(a3)
    800063b4:	00e4b023          	sd	a4,0(s1)
    800063b8:	10000637          	lui	a2,0x10000
    800063bc:	02f71063          	bne	a4,a5,800063dc <uartputc+0xc4>
    800063c0:	0340006f          	j	800063f4 <uartputc+0xdc>
    800063c4:	00074703          	lbu	a4,0(a4)
    800063c8:	00f93023          	sd	a5,0(s2)
    800063cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800063d0:	00093783          	ld	a5,0(s2)
    800063d4:	0004b703          	ld	a4,0(s1)
    800063d8:	00f70e63          	beq	a4,a5,800063f4 <uartputc+0xdc>
    800063dc:	00564683          	lbu	a3,5(a2)
    800063e0:	01f7f713          	andi	a4,a5,31
    800063e4:	00e58733          	add	a4,a1,a4
    800063e8:	0206f693          	andi	a3,a3,32
    800063ec:	00178793          	addi	a5,a5,1
    800063f0:	fc069ae3          	bnez	a3,800063c4 <uartputc+0xac>
    800063f4:	02813083          	ld	ra,40(sp)
    800063f8:	02013403          	ld	s0,32(sp)
    800063fc:	01813483          	ld	s1,24(sp)
    80006400:	01013903          	ld	s2,16(sp)
    80006404:	00813983          	ld	s3,8(sp)
    80006408:	03010113          	addi	sp,sp,48
    8000640c:	00008067          	ret

0000000080006410 <uartputc_sync>:
    80006410:	ff010113          	addi	sp,sp,-16
    80006414:	00813423          	sd	s0,8(sp)
    80006418:	01010413          	addi	s0,sp,16
    8000641c:	00004717          	auipc	a4,0x4
    80006420:	c4c72703          	lw	a4,-948(a4) # 8000a068 <panicked>
    80006424:	02071663          	bnez	a4,80006450 <uartputc_sync+0x40>
    80006428:	00050793          	mv	a5,a0
    8000642c:	100006b7          	lui	a3,0x10000
    80006430:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006434:	02077713          	andi	a4,a4,32
    80006438:	fe070ce3          	beqz	a4,80006430 <uartputc_sync+0x20>
    8000643c:	0ff7f793          	andi	a5,a5,255
    80006440:	00f68023          	sb	a5,0(a3)
    80006444:	00813403          	ld	s0,8(sp)
    80006448:	01010113          	addi	sp,sp,16
    8000644c:	00008067          	ret
    80006450:	0000006f          	j	80006450 <uartputc_sync+0x40>

0000000080006454 <uartstart>:
    80006454:	ff010113          	addi	sp,sp,-16
    80006458:	00813423          	sd	s0,8(sp)
    8000645c:	01010413          	addi	s0,sp,16
    80006460:	00004617          	auipc	a2,0x4
    80006464:	c1060613          	addi	a2,a2,-1008 # 8000a070 <uart_tx_r>
    80006468:	00004517          	auipc	a0,0x4
    8000646c:	c1050513          	addi	a0,a0,-1008 # 8000a078 <uart_tx_w>
    80006470:	00063783          	ld	a5,0(a2)
    80006474:	00053703          	ld	a4,0(a0)
    80006478:	04f70263          	beq	a4,a5,800064bc <uartstart+0x68>
    8000647c:	100005b7          	lui	a1,0x10000
    80006480:	00009817          	auipc	a6,0x9
    80006484:	f3080813          	addi	a6,a6,-208 # 8000f3b0 <uart_tx_buf>
    80006488:	01c0006f          	j	800064a4 <uartstart+0x50>
    8000648c:	0006c703          	lbu	a4,0(a3)
    80006490:	00f63023          	sd	a5,0(a2)
    80006494:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006498:	00063783          	ld	a5,0(a2)
    8000649c:	00053703          	ld	a4,0(a0)
    800064a0:	00f70e63          	beq	a4,a5,800064bc <uartstart+0x68>
    800064a4:	01f7f713          	andi	a4,a5,31
    800064a8:	00e806b3          	add	a3,a6,a4
    800064ac:	0055c703          	lbu	a4,5(a1)
    800064b0:	00178793          	addi	a5,a5,1
    800064b4:	02077713          	andi	a4,a4,32
    800064b8:	fc071ae3          	bnez	a4,8000648c <uartstart+0x38>
    800064bc:	00813403          	ld	s0,8(sp)
    800064c0:	01010113          	addi	sp,sp,16
    800064c4:	00008067          	ret

00000000800064c8 <uartgetc>:
    800064c8:	ff010113          	addi	sp,sp,-16
    800064cc:	00813423          	sd	s0,8(sp)
    800064d0:	01010413          	addi	s0,sp,16
    800064d4:	10000737          	lui	a4,0x10000
    800064d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800064dc:	0017f793          	andi	a5,a5,1
    800064e0:	00078c63          	beqz	a5,800064f8 <uartgetc+0x30>
    800064e4:	00074503          	lbu	a0,0(a4)
    800064e8:	0ff57513          	andi	a0,a0,255
    800064ec:	00813403          	ld	s0,8(sp)
    800064f0:	01010113          	addi	sp,sp,16
    800064f4:	00008067          	ret
    800064f8:	fff00513          	li	a0,-1
    800064fc:	ff1ff06f          	j	800064ec <uartgetc+0x24>

0000000080006500 <uartintr>:
    80006500:	100007b7          	lui	a5,0x10000
    80006504:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006508:	0017f793          	andi	a5,a5,1
    8000650c:	0a078463          	beqz	a5,800065b4 <uartintr+0xb4>
    80006510:	fe010113          	addi	sp,sp,-32
    80006514:	00813823          	sd	s0,16(sp)
    80006518:	00913423          	sd	s1,8(sp)
    8000651c:	00113c23          	sd	ra,24(sp)
    80006520:	02010413          	addi	s0,sp,32
    80006524:	100004b7          	lui	s1,0x10000
    80006528:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000652c:	0ff57513          	andi	a0,a0,255
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	534080e7          	jalr	1332(ra) # 80005a64 <consoleintr>
    80006538:	0054c783          	lbu	a5,5(s1)
    8000653c:	0017f793          	andi	a5,a5,1
    80006540:	fe0794e3          	bnez	a5,80006528 <uartintr+0x28>
    80006544:	00004617          	auipc	a2,0x4
    80006548:	b2c60613          	addi	a2,a2,-1236 # 8000a070 <uart_tx_r>
    8000654c:	00004517          	auipc	a0,0x4
    80006550:	b2c50513          	addi	a0,a0,-1236 # 8000a078 <uart_tx_w>
    80006554:	00063783          	ld	a5,0(a2)
    80006558:	00053703          	ld	a4,0(a0)
    8000655c:	04f70263          	beq	a4,a5,800065a0 <uartintr+0xa0>
    80006560:	100005b7          	lui	a1,0x10000
    80006564:	00009817          	auipc	a6,0x9
    80006568:	e4c80813          	addi	a6,a6,-436 # 8000f3b0 <uart_tx_buf>
    8000656c:	01c0006f          	j	80006588 <uartintr+0x88>
    80006570:	0006c703          	lbu	a4,0(a3)
    80006574:	00f63023          	sd	a5,0(a2)
    80006578:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000657c:	00063783          	ld	a5,0(a2)
    80006580:	00053703          	ld	a4,0(a0)
    80006584:	00f70e63          	beq	a4,a5,800065a0 <uartintr+0xa0>
    80006588:	01f7f713          	andi	a4,a5,31
    8000658c:	00e806b3          	add	a3,a6,a4
    80006590:	0055c703          	lbu	a4,5(a1)
    80006594:	00178793          	addi	a5,a5,1
    80006598:	02077713          	andi	a4,a4,32
    8000659c:	fc071ae3          	bnez	a4,80006570 <uartintr+0x70>
    800065a0:	01813083          	ld	ra,24(sp)
    800065a4:	01013403          	ld	s0,16(sp)
    800065a8:	00813483          	ld	s1,8(sp)
    800065ac:	02010113          	addi	sp,sp,32
    800065b0:	00008067          	ret
    800065b4:	00004617          	auipc	a2,0x4
    800065b8:	abc60613          	addi	a2,a2,-1348 # 8000a070 <uart_tx_r>
    800065bc:	00004517          	auipc	a0,0x4
    800065c0:	abc50513          	addi	a0,a0,-1348 # 8000a078 <uart_tx_w>
    800065c4:	00063783          	ld	a5,0(a2)
    800065c8:	00053703          	ld	a4,0(a0)
    800065cc:	04f70263          	beq	a4,a5,80006610 <uartintr+0x110>
    800065d0:	100005b7          	lui	a1,0x10000
    800065d4:	00009817          	auipc	a6,0x9
    800065d8:	ddc80813          	addi	a6,a6,-548 # 8000f3b0 <uart_tx_buf>
    800065dc:	01c0006f          	j	800065f8 <uartintr+0xf8>
    800065e0:	0006c703          	lbu	a4,0(a3)
    800065e4:	00f63023          	sd	a5,0(a2)
    800065e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800065ec:	00063783          	ld	a5,0(a2)
    800065f0:	00053703          	ld	a4,0(a0)
    800065f4:	02f70063          	beq	a4,a5,80006614 <uartintr+0x114>
    800065f8:	01f7f713          	andi	a4,a5,31
    800065fc:	00e806b3          	add	a3,a6,a4
    80006600:	0055c703          	lbu	a4,5(a1)
    80006604:	00178793          	addi	a5,a5,1
    80006608:	02077713          	andi	a4,a4,32
    8000660c:	fc071ae3          	bnez	a4,800065e0 <uartintr+0xe0>
    80006610:	00008067          	ret
    80006614:	00008067          	ret

0000000080006618 <kinit>:
    80006618:	fc010113          	addi	sp,sp,-64
    8000661c:	02913423          	sd	s1,40(sp)
    80006620:	fffff7b7          	lui	a5,0xfffff
    80006624:	0000a497          	auipc	s1,0xa
    80006628:	dab48493          	addi	s1,s1,-597 # 800103cf <end+0xfff>
    8000662c:	02813823          	sd	s0,48(sp)
    80006630:	01313c23          	sd	s3,24(sp)
    80006634:	00f4f4b3          	and	s1,s1,a5
    80006638:	02113c23          	sd	ra,56(sp)
    8000663c:	03213023          	sd	s2,32(sp)
    80006640:	01413823          	sd	s4,16(sp)
    80006644:	01513423          	sd	s5,8(sp)
    80006648:	04010413          	addi	s0,sp,64
    8000664c:	000017b7          	lui	a5,0x1
    80006650:	01100993          	li	s3,17
    80006654:	00f487b3          	add	a5,s1,a5
    80006658:	01b99993          	slli	s3,s3,0x1b
    8000665c:	06f9e063          	bltu	s3,a5,800066bc <kinit+0xa4>
    80006660:	00009a97          	auipc	s5,0x9
    80006664:	d70a8a93          	addi	s5,s5,-656 # 8000f3d0 <end>
    80006668:	0754ec63          	bltu	s1,s5,800066e0 <kinit+0xc8>
    8000666c:	0734fa63          	bgeu	s1,s3,800066e0 <kinit+0xc8>
    80006670:	00088a37          	lui	s4,0x88
    80006674:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006678:	00004917          	auipc	s2,0x4
    8000667c:	a0890913          	addi	s2,s2,-1528 # 8000a080 <kmem>
    80006680:	00ca1a13          	slli	s4,s4,0xc
    80006684:	0140006f          	j	80006698 <kinit+0x80>
    80006688:	000017b7          	lui	a5,0x1
    8000668c:	00f484b3          	add	s1,s1,a5
    80006690:	0554e863          	bltu	s1,s5,800066e0 <kinit+0xc8>
    80006694:	0534f663          	bgeu	s1,s3,800066e0 <kinit+0xc8>
    80006698:	00001637          	lui	a2,0x1
    8000669c:	00100593          	li	a1,1
    800066a0:	00048513          	mv	a0,s1
    800066a4:	00000097          	auipc	ra,0x0
    800066a8:	5e4080e7          	jalr	1508(ra) # 80006c88 <__memset>
    800066ac:	00093783          	ld	a5,0(s2)
    800066b0:	00f4b023          	sd	a5,0(s1)
    800066b4:	00993023          	sd	s1,0(s2)
    800066b8:	fd4498e3          	bne	s1,s4,80006688 <kinit+0x70>
    800066bc:	03813083          	ld	ra,56(sp)
    800066c0:	03013403          	ld	s0,48(sp)
    800066c4:	02813483          	ld	s1,40(sp)
    800066c8:	02013903          	ld	s2,32(sp)
    800066cc:	01813983          	ld	s3,24(sp)
    800066d0:	01013a03          	ld	s4,16(sp)
    800066d4:	00813a83          	ld	s5,8(sp)
    800066d8:	04010113          	addi	sp,sp,64
    800066dc:	00008067          	ret
    800066e0:	00002517          	auipc	a0,0x2
    800066e4:	d8850513          	addi	a0,a0,-632 # 80008468 <digits+0x18>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	4b4080e7          	jalr	1204(ra) # 80005b9c <panic>

00000000800066f0 <freerange>:
    800066f0:	fc010113          	addi	sp,sp,-64
    800066f4:	000017b7          	lui	a5,0x1
    800066f8:	02913423          	sd	s1,40(sp)
    800066fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006700:	009504b3          	add	s1,a0,s1
    80006704:	fffff537          	lui	a0,0xfffff
    80006708:	02813823          	sd	s0,48(sp)
    8000670c:	02113c23          	sd	ra,56(sp)
    80006710:	03213023          	sd	s2,32(sp)
    80006714:	01313c23          	sd	s3,24(sp)
    80006718:	01413823          	sd	s4,16(sp)
    8000671c:	01513423          	sd	s5,8(sp)
    80006720:	01613023          	sd	s6,0(sp)
    80006724:	04010413          	addi	s0,sp,64
    80006728:	00a4f4b3          	and	s1,s1,a0
    8000672c:	00f487b3          	add	a5,s1,a5
    80006730:	06f5e463          	bltu	a1,a5,80006798 <freerange+0xa8>
    80006734:	00009a97          	auipc	s5,0x9
    80006738:	c9ca8a93          	addi	s5,s5,-868 # 8000f3d0 <end>
    8000673c:	0954e263          	bltu	s1,s5,800067c0 <freerange+0xd0>
    80006740:	01100993          	li	s3,17
    80006744:	01b99993          	slli	s3,s3,0x1b
    80006748:	0734fc63          	bgeu	s1,s3,800067c0 <freerange+0xd0>
    8000674c:	00058a13          	mv	s4,a1
    80006750:	00004917          	auipc	s2,0x4
    80006754:	93090913          	addi	s2,s2,-1744 # 8000a080 <kmem>
    80006758:	00002b37          	lui	s6,0x2
    8000675c:	0140006f          	j	80006770 <freerange+0x80>
    80006760:	000017b7          	lui	a5,0x1
    80006764:	00f484b3          	add	s1,s1,a5
    80006768:	0554ec63          	bltu	s1,s5,800067c0 <freerange+0xd0>
    8000676c:	0534fa63          	bgeu	s1,s3,800067c0 <freerange+0xd0>
    80006770:	00001637          	lui	a2,0x1
    80006774:	00100593          	li	a1,1
    80006778:	00048513          	mv	a0,s1
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	50c080e7          	jalr	1292(ra) # 80006c88 <__memset>
    80006784:	00093703          	ld	a4,0(s2)
    80006788:	016487b3          	add	a5,s1,s6
    8000678c:	00e4b023          	sd	a4,0(s1)
    80006790:	00993023          	sd	s1,0(s2)
    80006794:	fcfa76e3          	bgeu	s4,a5,80006760 <freerange+0x70>
    80006798:	03813083          	ld	ra,56(sp)
    8000679c:	03013403          	ld	s0,48(sp)
    800067a0:	02813483          	ld	s1,40(sp)
    800067a4:	02013903          	ld	s2,32(sp)
    800067a8:	01813983          	ld	s3,24(sp)
    800067ac:	01013a03          	ld	s4,16(sp)
    800067b0:	00813a83          	ld	s5,8(sp)
    800067b4:	00013b03          	ld	s6,0(sp)
    800067b8:	04010113          	addi	sp,sp,64
    800067bc:	00008067          	ret
    800067c0:	00002517          	auipc	a0,0x2
    800067c4:	ca850513          	addi	a0,a0,-856 # 80008468 <digits+0x18>
    800067c8:	fffff097          	auipc	ra,0xfffff
    800067cc:	3d4080e7          	jalr	980(ra) # 80005b9c <panic>

00000000800067d0 <kfree>:
    800067d0:	fe010113          	addi	sp,sp,-32
    800067d4:	00813823          	sd	s0,16(sp)
    800067d8:	00113c23          	sd	ra,24(sp)
    800067dc:	00913423          	sd	s1,8(sp)
    800067e0:	02010413          	addi	s0,sp,32
    800067e4:	03451793          	slli	a5,a0,0x34
    800067e8:	04079c63          	bnez	a5,80006840 <kfree+0x70>
    800067ec:	00009797          	auipc	a5,0x9
    800067f0:	be478793          	addi	a5,a5,-1052 # 8000f3d0 <end>
    800067f4:	00050493          	mv	s1,a0
    800067f8:	04f56463          	bltu	a0,a5,80006840 <kfree+0x70>
    800067fc:	01100793          	li	a5,17
    80006800:	01b79793          	slli	a5,a5,0x1b
    80006804:	02f57e63          	bgeu	a0,a5,80006840 <kfree+0x70>
    80006808:	00001637          	lui	a2,0x1
    8000680c:	00100593          	li	a1,1
    80006810:	00000097          	auipc	ra,0x0
    80006814:	478080e7          	jalr	1144(ra) # 80006c88 <__memset>
    80006818:	00004797          	auipc	a5,0x4
    8000681c:	86878793          	addi	a5,a5,-1944 # 8000a080 <kmem>
    80006820:	0007b703          	ld	a4,0(a5)
    80006824:	01813083          	ld	ra,24(sp)
    80006828:	01013403          	ld	s0,16(sp)
    8000682c:	00e4b023          	sd	a4,0(s1)
    80006830:	0097b023          	sd	s1,0(a5)
    80006834:	00813483          	ld	s1,8(sp)
    80006838:	02010113          	addi	sp,sp,32
    8000683c:	00008067          	ret
    80006840:	00002517          	auipc	a0,0x2
    80006844:	c2850513          	addi	a0,a0,-984 # 80008468 <digits+0x18>
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	354080e7          	jalr	852(ra) # 80005b9c <panic>

0000000080006850 <kalloc>:
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00004797          	auipc	a5,0x4
    80006868:	81c78793          	addi	a5,a5,-2020 # 8000a080 <kmem>
    8000686c:	0007b483          	ld	s1,0(a5)
    80006870:	02048063          	beqz	s1,80006890 <kalloc+0x40>
    80006874:	0004b703          	ld	a4,0(s1)
    80006878:	00001637          	lui	a2,0x1
    8000687c:	00500593          	li	a1,5
    80006880:	00048513          	mv	a0,s1
    80006884:	00e7b023          	sd	a4,0(a5)
    80006888:	00000097          	auipc	ra,0x0
    8000688c:	400080e7          	jalr	1024(ra) # 80006c88 <__memset>
    80006890:	01813083          	ld	ra,24(sp)
    80006894:	01013403          	ld	s0,16(sp)
    80006898:	00048513          	mv	a0,s1
    8000689c:	00813483          	ld	s1,8(sp)
    800068a0:	02010113          	addi	sp,sp,32
    800068a4:	00008067          	ret

00000000800068a8 <initlock>:
    800068a8:	ff010113          	addi	sp,sp,-16
    800068ac:	00813423          	sd	s0,8(sp)
    800068b0:	01010413          	addi	s0,sp,16
    800068b4:	00813403          	ld	s0,8(sp)
    800068b8:	00b53423          	sd	a1,8(a0)
    800068bc:	00052023          	sw	zero,0(a0)
    800068c0:	00053823          	sd	zero,16(a0)
    800068c4:	01010113          	addi	sp,sp,16
    800068c8:	00008067          	ret

00000000800068cc <acquire>:
    800068cc:	fe010113          	addi	sp,sp,-32
    800068d0:	00813823          	sd	s0,16(sp)
    800068d4:	00913423          	sd	s1,8(sp)
    800068d8:	00113c23          	sd	ra,24(sp)
    800068dc:	01213023          	sd	s2,0(sp)
    800068e0:	02010413          	addi	s0,sp,32
    800068e4:	00050493          	mv	s1,a0
    800068e8:	10002973          	csrr	s2,sstatus
    800068ec:	100027f3          	csrr	a5,sstatus
    800068f0:	ffd7f793          	andi	a5,a5,-3
    800068f4:	10079073          	csrw	sstatus,a5
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	8e0080e7          	jalr	-1824(ra) # 800051d8 <mycpu>
    80006900:	07852783          	lw	a5,120(a0)
    80006904:	06078e63          	beqz	a5,80006980 <acquire+0xb4>
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	8d0080e7          	jalr	-1840(ra) # 800051d8 <mycpu>
    80006910:	07852783          	lw	a5,120(a0)
    80006914:	0004a703          	lw	a4,0(s1)
    80006918:	0017879b          	addiw	a5,a5,1
    8000691c:	06f52c23          	sw	a5,120(a0)
    80006920:	04071063          	bnez	a4,80006960 <acquire+0x94>
    80006924:	00100713          	li	a4,1
    80006928:	00070793          	mv	a5,a4
    8000692c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006930:	0007879b          	sext.w	a5,a5
    80006934:	fe079ae3          	bnez	a5,80006928 <acquire+0x5c>
    80006938:	0ff0000f          	fence
    8000693c:	fffff097          	auipc	ra,0xfffff
    80006940:	89c080e7          	jalr	-1892(ra) # 800051d8 <mycpu>
    80006944:	01813083          	ld	ra,24(sp)
    80006948:	01013403          	ld	s0,16(sp)
    8000694c:	00a4b823          	sd	a0,16(s1)
    80006950:	00013903          	ld	s2,0(sp)
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	02010113          	addi	sp,sp,32
    8000695c:	00008067          	ret
    80006960:	0104b903          	ld	s2,16(s1)
    80006964:	fffff097          	auipc	ra,0xfffff
    80006968:	874080e7          	jalr	-1932(ra) # 800051d8 <mycpu>
    8000696c:	faa91ce3          	bne	s2,a0,80006924 <acquire+0x58>
    80006970:	00002517          	auipc	a0,0x2
    80006974:	b0050513          	addi	a0,a0,-1280 # 80008470 <digits+0x20>
    80006978:	fffff097          	auipc	ra,0xfffff
    8000697c:	224080e7          	jalr	548(ra) # 80005b9c <panic>
    80006980:	00195913          	srli	s2,s2,0x1
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	854080e7          	jalr	-1964(ra) # 800051d8 <mycpu>
    8000698c:	00197913          	andi	s2,s2,1
    80006990:	07252e23          	sw	s2,124(a0)
    80006994:	f75ff06f          	j	80006908 <acquire+0x3c>

0000000080006998 <release>:
    80006998:	fe010113          	addi	sp,sp,-32
    8000699c:	00813823          	sd	s0,16(sp)
    800069a0:	00113c23          	sd	ra,24(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	01213023          	sd	s2,0(sp)
    800069ac:	02010413          	addi	s0,sp,32
    800069b0:	00052783          	lw	a5,0(a0)
    800069b4:	00079a63          	bnez	a5,800069c8 <release+0x30>
    800069b8:	00002517          	auipc	a0,0x2
    800069bc:	ac050513          	addi	a0,a0,-1344 # 80008478 <digits+0x28>
    800069c0:	fffff097          	auipc	ra,0xfffff
    800069c4:	1dc080e7          	jalr	476(ra) # 80005b9c <panic>
    800069c8:	01053903          	ld	s2,16(a0)
    800069cc:	00050493          	mv	s1,a0
    800069d0:	fffff097          	auipc	ra,0xfffff
    800069d4:	808080e7          	jalr	-2040(ra) # 800051d8 <mycpu>
    800069d8:	fea910e3          	bne	s2,a0,800069b8 <release+0x20>
    800069dc:	0004b823          	sd	zero,16(s1)
    800069e0:	0ff0000f          	fence
    800069e4:	0f50000f          	fence	iorw,ow
    800069e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800069ec:	ffffe097          	auipc	ra,0xffffe
    800069f0:	7ec080e7          	jalr	2028(ra) # 800051d8 <mycpu>
    800069f4:	100027f3          	csrr	a5,sstatus
    800069f8:	0027f793          	andi	a5,a5,2
    800069fc:	04079a63          	bnez	a5,80006a50 <release+0xb8>
    80006a00:	07852783          	lw	a5,120(a0)
    80006a04:	02f05e63          	blez	a5,80006a40 <release+0xa8>
    80006a08:	fff7871b          	addiw	a4,a5,-1
    80006a0c:	06e52c23          	sw	a4,120(a0)
    80006a10:	00071c63          	bnez	a4,80006a28 <release+0x90>
    80006a14:	07c52783          	lw	a5,124(a0)
    80006a18:	00078863          	beqz	a5,80006a28 <release+0x90>
    80006a1c:	100027f3          	csrr	a5,sstatus
    80006a20:	0027e793          	ori	a5,a5,2
    80006a24:	10079073          	csrw	sstatus,a5
    80006a28:	01813083          	ld	ra,24(sp)
    80006a2c:	01013403          	ld	s0,16(sp)
    80006a30:	00813483          	ld	s1,8(sp)
    80006a34:	00013903          	ld	s2,0(sp)
    80006a38:	02010113          	addi	sp,sp,32
    80006a3c:	00008067          	ret
    80006a40:	00002517          	auipc	a0,0x2
    80006a44:	a5850513          	addi	a0,a0,-1448 # 80008498 <digits+0x48>
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	154080e7          	jalr	340(ra) # 80005b9c <panic>
    80006a50:	00002517          	auipc	a0,0x2
    80006a54:	a3050513          	addi	a0,a0,-1488 # 80008480 <digits+0x30>
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	144080e7          	jalr	324(ra) # 80005b9c <panic>

0000000080006a60 <holding>:
    80006a60:	00052783          	lw	a5,0(a0)
    80006a64:	00079663          	bnez	a5,80006a70 <holding+0x10>
    80006a68:	00000513          	li	a0,0
    80006a6c:	00008067          	ret
    80006a70:	fe010113          	addi	sp,sp,-32
    80006a74:	00813823          	sd	s0,16(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	00113c23          	sd	ra,24(sp)
    80006a80:	02010413          	addi	s0,sp,32
    80006a84:	01053483          	ld	s1,16(a0)
    80006a88:	ffffe097          	auipc	ra,0xffffe
    80006a8c:	750080e7          	jalr	1872(ra) # 800051d8 <mycpu>
    80006a90:	01813083          	ld	ra,24(sp)
    80006a94:	01013403          	ld	s0,16(sp)
    80006a98:	40a48533          	sub	a0,s1,a0
    80006a9c:	00153513          	seqz	a0,a0
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	02010113          	addi	sp,sp,32
    80006aa8:	00008067          	ret

0000000080006aac <push_off>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00113c23          	sd	ra,24(sp)
    80006ab8:	00913423          	sd	s1,8(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	100024f3          	csrr	s1,sstatus
    80006ac4:	100027f3          	csrr	a5,sstatus
    80006ac8:	ffd7f793          	andi	a5,a5,-3
    80006acc:	10079073          	csrw	sstatus,a5
    80006ad0:	ffffe097          	auipc	ra,0xffffe
    80006ad4:	708080e7          	jalr	1800(ra) # 800051d8 <mycpu>
    80006ad8:	07852783          	lw	a5,120(a0)
    80006adc:	02078663          	beqz	a5,80006b08 <push_off+0x5c>
    80006ae0:	ffffe097          	auipc	ra,0xffffe
    80006ae4:	6f8080e7          	jalr	1784(ra) # 800051d8 <mycpu>
    80006ae8:	07852783          	lw	a5,120(a0)
    80006aec:	01813083          	ld	ra,24(sp)
    80006af0:	01013403          	ld	s0,16(sp)
    80006af4:	0017879b          	addiw	a5,a5,1
    80006af8:	06f52c23          	sw	a5,120(a0)
    80006afc:	00813483          	ld	s1,8(sp)
    80006b00:	02010113          	addi	sp,sp,32
    80006b04:	00008067          	ret
    80006b08:	0014d493          	srli	s1,s1,0x1
    80006b0c:	ffffe097          	auipc	ra,0xffffe
    80006b10:	6cc080e7          	jalr	1740(ra) # 800051d8 <mycpu>
    80006b14:	0014f493          	andi	s1,s1,1
    80006b18:	06952e23          	sw	s1,124(a0)
    80006b1c:	fc5ff06f          	j	80006ae0 <push_off+0x34>

0000000080006b20 <pop_off>:
    80006b20:	ff010113          	addi	sp,sp,-16
    80006b24:	00813023          	sd	s0,0(sp)
    80006b28:	00113423          	sd	ra,8(sp)
    80006b2c:	01010413          	addi	s0,sp,16
    80006b30:	ffffe097          	auipc	ra,0xffffe
    80006b34:	6a8080e7          	jalr	1704(ra) # 800051d8 <mycpu>
    80006b38:	100027f3          	csrr	a5,sstatus
    80006b3c:	0027f793          	andi	a5,a5,2
    80006b40:	04079663          	bnez	a5,80006b8c <pop_off+0x6c>
    80006b44:	07852783          	lw	a5,120(a0)
    80006b48:	02f05a63          	blez	a5,80006b7c <pop_off+0x5c>
    80006b4c:	fff7871b          	addiw	a4,a5,-1
    80006b50:	06e52c23          	sw	a4,120(a0)
    80006b54:	00071c63          	bnez	a4,80006b6c <pop_off+0x4c>
    80006b58:	07c52783          	lw	a5,124(a0)
    80006b5c:	00078863          	beqz	a5,80006b6c <pop_off+0x4c>
    80006b60:	100027f3          	csrr	a5,sstatus
    80006b64:	0027e793          	ori	a5,a5,2
    80006b68:	10079073          	csrw	sstatus,a5
    80006b6c:	00813083          	ld	ra,8(sp)
    80006b70:	00013403          	ld	s0,0(sp)
    80006b74:	01010113          	addi	sp,sp,16
    80006b78:	00008067          	ret
    80006b7c:	00002517          	auipc	a0,0x2
    80006b80:	91c50513          	addi	a0,a0,-1764 # 80008498 <digits+0x48>
    80006b84:	fffff097          	auipc	ra,0xfffff
    80006b88:	018080e7          	jalr	24(ra) # 80005b9c <panic>
    80006b8c:	00002517          	auipc	a0,0x2
    80006b90:	8f450513          	addi	a0,a0,-1804 # 80008480 <digits+0x30>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	008080e7          	jalr	8(ra) # 80005b9c <panic>

0000000080006b9c <push_on>:
    80006b9c:	fe010113          	addi	sp,sp,-32
    80006ba0:	00813823          	sd	s0,16(sp)
    80006ba4:	00113c23          	sd	ra,24(sp)
    80006ba8:	00913423          	sd	s1,8(sp)
    80006bac:	02010413          	addi	s0,sp,32
    80006bb0:	100024f3          	csrr	s1,sstatus
    80006bb4:	100027f3          	csrr	a5,sstatus
    80006bb8:	0027e793          	ori	a5,a5,2
    80006bbc:	10079073          	csrw	sstatus,a5
    80006bc0:	ffffe097          	auipc	ra,0xffffe
    80006bc4:	618080e7          	jalr	1560(ra) # 800051d8 <mycpu>
    80006bc8:	07852783          	lw	a5,120(a0)
    80006bcc:	02078663          	beqz	a5,80006bf8 <push_on+0x5c>
    80006bd0:	ffffe097          	auipc	ra,0xffffe
    80006bd4:	608080e7          	jalr	1544(ra) # 800051d8 <mycpu>
    80006bd8:	07852783          	lw	a5,120(a0)
    80006bdc:	01813083          	ld	ra,24(sp)
    80006be0:	01013403          	ld	s0,16(sp)
    80006be4:	0017879b          	addiw	a5,a5,1
    80006be8:	06f52c23          	sw	a5,120(a0)
    80006bec:	00813483          	ld	s1,8(sp)
    80006bf0:	02010113          	addi	sp,sp,32
    80006bf4:	00008067          	ret
    80006bf8:	0014d493          	srli	s1,s1,0x1
    80006bfc:	ffffe097          	auipc	ra,0xffffe
    80006c00:	5dc080e7          	jalr	1500(ra) # 800051d8 <mycpu>
    80006c04:	0014f493          	andi	s1,s1,1
    80006c08:	06952e23          	sw	s1,124(a0)
    80006c0c:	fc5ff06f          	j	80006bd0 <push_on+0x34>

0000000080006c10 <pop_on>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813023          	sd	s0,0(sp)
    80006c18:	00113423          	sd	ra,8(sp)
    80006c1c:	01010413          	addi	s0,sp,16
    80006c20:	ffffe097          	auipc	ra,0xffffe
    80006c24:	5b8080e7          	jalr	1464(ra) # 800051d8 <mycpu>
    80006c28:	100027f3          	csrr	a5,sstatus
    80006c2c:	0027f793          	andi	a5,a5,2
    80006c30:	04078463          	beqz	a5,80006c78 <pop_on+0x68>
    80006c34:	07852783          	lw	a5,120(a0)
    80006c38:	02f05863          	blez	a5,80006c68 <pop_on+0x58>
    80006c3c:	fff7879b          	addiw	a5,a5,-1
    80006c40:	06f52c23          	sw	a5,120(a0)
    80006c44:	07853783          	ld	a5,120(a0)
    80006c48:	00079863          	bnez	a5,80006c58 <pop_on+0x48>
    80006c4c:	100027f3          	csrr	a5,sstatus
    80006c50:	ffd7f793          	andi	a5,a5,-3
    80006c54:	10079073          	csrw	sstatus,a5
    80006c58:	00813083          	ld	ra,8(sp)
    80006c5c:	00013403          	ld	s0,0(sp)
    80006c60:	01010113          	addi	sp,sp,16
    80006c64:	00008067          	ret
    80006c68:	00002517          	auipc	a0,0x2
    80006c6c:	85850513          	addi	a0,a0,-1960 # 800084c0 <digits+0x70>
    80006c70:	fffff097          	auipc	ra,0xfffff
    80006c74:	f2c080e7          	jalr	-212(ra) # 80005b9c <panic>
    80006c78:	00002517          	auipc	a0,0x2
    80006c7c:	82850513          	addi	a0,a0,-2008 # 800084a0 <digits+0x50>
    80006c80:	fffff097          	auipc	ra,0xfffff
    80006c84:	f1c080e7          	jalr	-228(ra) # 80005b9c <panic>

0000000080006c88 <__memset>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813423          	sd	s0,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	1a060e63          	beqz	a2,80006e50 <__memset+0x1c8>
    80006c98:	40a007b3          	neg	a5,a0
    80006c9c:	0077f793          	andi	a5,a5,7
    80006ca0:	00778693          	addi	a3,a5,7
    80006ca4:	00b00813          	li	a6,11
    80006ca8:	0ff5f593          	andi	a1,a1,255
    80006cac:	fff6071b          	addiw	a4,a2,-1
    80006cb0:	1b06e663          	bltu	a3,a6,80006e5c <__memset+0x1d4>
    80006cb4:	1cd76463          	bltu	a4,a3,80006e7c <__memset+0x1f4>
    80006cb8:	1a078e63          	beqz	a5,80006e74 <__memset+0x1ec>
    80006cbc:	00b50023          	sb	a1,0(a0)
    80006cc0:	00100713          	li	a4,1
    80006cc4:	1ae78463          	beq	a5,a4,80006e6c <__memset+0x1e4>
    80006cc8:	00b500a3          	sb	a1,1(a0)
    80006ccc:	00200713          	li	a4,2
    80006cd0:	1ae78a63          	beq	a5,a4,80006e84 <__memset+0x1fc>
    80006cd4:	00b50123          	sb	a1,2(a0)
    80006cd8:	00300713          	li	a4,3
    80006cdc:	18e78463          	beq	a5,a4,80006e64 <__memset+0x1dc>
    80006ce0:	00b501a3          	sb	a1,3(a0)
    80006ce4:	00400713          	li	a4,4
    80006ce8:	1ae78263          	beq	a5,a4,80006e8c <__memset+0x204>
    80006cec:	00b50223          	sb	a1,4(a0)
    80006cf0:	00500713          	li	a4,5
    80006cf4:	1ae78063          	beq	a5,a4,80006e94 <__memset+0x20c>
    80006cf8:	00b502a3          	sb	a1,5(a0)
    80006cfc:	00700713          	li	a4,7
    80006d00:	18e79e63          	bne	a5,a4,80006e9c <__memset+0x214>
    80006d04:	00b50323          	sb	a1,6(a0)
    80006d08:	00700e93          	li	t4,7
    80006d0c:	00859713          	slli	a4,a1,0x8
    80006d10:	00e5e733          	or	a4,a1,a4
    80006d14:	01059e13          	slli	t3,a1,0x10
    80006d18:	01c76e33          	or	t3,a4,t3
    80006d1c:	01859313          	slli	t1,a1,0x18
    80006d20:	006e6333          	or	t1,t3,t1
    80006d24:	02059893          	slli	a7,a1,0x20
    80006d28:	40f60e3b          	subw	t3,a2,a5
    80006d2c:	011368b3          	or	a7,t1,a7
    80006d30:	02859813          	slli	a6,a1,0x28
    80006d34:	0108e833          	or	a6,a7,a6
    80006d38:	03059693          	slli	a3,a1,0x30
    80006d3c:	003e589b          	srliw	a7,t3,0x3
    80006d40:	00d866b3          	or	a3,a6,a3
    80006d44:	03859713          	slli	a4,a1,0x38
    80006d48:	00389813          	slli	a6,a7,0x3
    80006d4c:	00f507b3          	add	a5,a0,a5
    80006d50:	00e6e733          	or	a4,a3,a4
    80006d54:	000e089b          	sext.w	a7,t3
    80006d58:	00f806b3          	add	a3,a6,a5
    80006d5c:	00e7b023          	sd	a4,0(a5)
    80006d60:	00878793          	addi	a5,a5,8
    80006d64:	fed79ce3          	bne	a5,a3,80006d5c <__memset+0xd4>
    80006d68:	ff8e7793          	andi	a5,t3,-8
    80006d6c:	0007871b          	sext.w	a4,a5
    80006d70:	01d787bb          	addw	a5,a5,t4
    80006d74:	0ce88e63          	beq	a7,a4,80006e50 <__memset+0x1c8>
    80006d78:	00f50733          	add	a4,a0,a5
    80006d7c:	00b70023          	sb	a1,0(a4)
    80006d80:	0017871b          	addiw	a4,a5,1
    80006d84:	0cc77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006d88:	00e50733          	add	a4,a0,a4
    80006d8c:	00b70023          	sb	a1,0(a4)
    80006d90:	0027871b          	addiw	a4,a5,2
    80006d94:	0ac77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006d98:	00e50733          	add	a4,a0,a4
    80006d9c:	00b70023          	sb	a1,0(a4)
    80006da0:	0037871b          	addiw	a4,a5,3
    80006da4:	0ac77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006da8:	00e50733          	add	a4,a0,a4
    80006dac:	00b70023          	sb	a1,0(a4)
    80006db0:	0047871b          	addiw	a4,a5,4
    80006db4:	08c77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006db8:	00e50733          	add	a4,a0,a4
    80006dbc:	00b70023          	sb	a1,0(a4)
    80006dc0:	0057871b          	addiw	a4,a5,5
    80006dc4:	08c77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006dc8:	00e50733          	add	a4,a0,a4
    80006dcc:	00b70023          	sb	a1,0(a4)
    80006dd0:	0067871b          	addiw	a4,a5,6
    80006dd4:	06c77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006dd8:	00e50733          	add	a4,a0,a4
    80006ddc:	00b70023          	sb	a1,0(a4)
    80006de0:	0077871b          	addiw	a4,a5,7
    80006de4:	06c77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006de8:	00e50733          	add	a4,a0,a4
    80006dec:	00b70023          	sb	a1,0(a4)
    80006df0:	0087871b          	addiw	a4,a5,8
    80006df4:	04c77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006df8:	00e50733          	add	a4,a0,a4
    80006dfc:	00b70023          	sb	a1,0(a4)
    80006e00:	0097871b          	addiw	a4,a5,9
    80006e04:	04c77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006e08:	00e50733          	add	a4,a0,a4
    80006e0c:	00b70023          	sb	a1,0(a4)
    80006e10:	00a7871b          	addiw	a4,a5,10
    80006e14:	02c77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006e18:	00e50733          	add	a4,a0,a4
    80006e1c:	00b70023          	sb	a1,0(a4)
    80006e20:	00b7871b          	addiw	a4,a5,11
    80006e24:	02c77663          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006e28:	00e50733          	add	a4,a0,a4
    80006e2c:	00b70023          	sb	a1,0(a4)
    80006e30:	00c7871b          	addiw	a4,a5,12
    80006e34:	00c77e63          	bgeu	a4,a2,80006e50 <__memset+0x1c8>
    80006e38:	00e50733          	add	a4,a0,a4
    80006e3c:	00b70023          	sb	a1,0(a4)
    80006e40:	00d7879b          	addiw	a5,a5,13
    80006e44:	00c7f663          	bgeu	a5,a2,80006e50 <__memset+0x1c8>
    80006e48:	00f507b3          	add	a5,a0,a5
    80006e4c:	00b78023          	sb	a1,0(a5)
    80006e50:	00813403          	ld	s0,8(sp)
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret
    80006e5c:	00b00693          	li	a3,11
    80006e60:	e55ff06f          	j	80006cb4 <__memset+0x2c>
    80006e64:	00300e93          	li	t4,3
    80006e68:	ea5ff06f          	j	80006d0c <__memset+0x84>
    80006e6c:	00100e93          	li	t4,1
    80006e70:	e9dff06f          	j	80006d0c <__memset+0x84>
    80006e74:	00000e93          	li	t4,0
    80006e78:	e95ff06f          	j	80006d0c <__memset+0x84>
    80006e7c:	00000793          	li	a5,0
    80006e80:	ef9ff06f          	j	80006d78 <__memset+0xf0>
    80006e84:	00200e93          	li	t4,2
    80006e88:	e85ff06f          	j	80006d0c <__memset+0x84>
    80006e8c:	00400e93          	li	t4,4
    80006e90:	e7dff06f          	j	80006d0c <__memset+0x84>
    80006e94:	00500e93          	li	t4,5
    80006e98:	e75ff06f          	j	80006d0c <__memset+0x84>
    80006e9c:	00600e93          	li	t4,6
    80006ea0:	e6dff06f          	j	80006d0c <__memset+0x84>

0000000080006ea4 <__memmove>:
    80006ea4:	ff010113          	addi	sp,sp,-16
    80006ea8:	00813423          	sd	s0,8(sp)
    80006eac:	01010413          	addi	s0,sp,16
    80006eb0:	0e060863          	beqz	a2,80006fa0 <__memmove+0xfc>
    80006eb4:	fff6069b          	addiw	a3,a2,-1
    80006eb8:	0006881b          	sext.w	a6,a3
    80006ebc:	0ea5e863          	bltu	a1,a0,80006fac <__memmove+0x108>
    80006ec0:	00758713          	addi	a4,a1,7
    80006ec4:	00a5e7b3          	or	a5,a1,a0
    80006ec8:	40a70733          	sub	a4,a4,a0
    80006ecc:	0077f793          	andi	a5,a5,7
    80006ed0:	00f73713          	sltiu	a4,a4,15
    80006ed4:	00174713          	xori	a4,a4,1
    80006ed8:	0017b793          	seqz	a5,a5
    80006edc:	00e7f7b3          	and	a5,a5,a4
    80006ee0:	10078863          	beqz	a5,80006ff0 <__memmove+0x14c>
    80006ee4:	00900793          	li	a5,9
    80006ee8:	1107f463          	bgeu	a5,a6,80006ff0 <__memmove+0x14c>
    80006eec:	0036581b          	srliw	a6,a2,0x3
    80006ef0:	fff8081b          	addiw	a6,a6,-1
    80006ef4:	02081813          	slli	a6,a6,0x20
    80006ef8:	01d85893          	srli	a7,a6,0x1d
    80006efc:	00858813          	addi	a6,a1,8
    80006f00:	00058793          	mv	a5,a1
    80006f04:	00050713          	mv	a4,a0
    80006f08:	01088833          	add	a6,a7,a6
    80006f0c:	0007b883          	ld	a7,0(a5)
    80006f10:	00878793          	addi	a5,a5,8
    80006f14:	00870713          	addi	a4,a4,8
    80006f18:	ff173c23          	sd	a7,-8(a4)
    80006f1c:	ff0798e3          	bne	a5,a6,80006f0c <__memmove+0x68>
    80006f20:	ff867713          	andi	a4,a2,-8
    80006f24:	02071793          	slli	a5,a4,0x20
    80006f28:	0207d793          	srli	a5,a5,0x20
    80006f2c:	00f585b3          	add	a1,a1,a5
    80006f30:	40e686bb          	subw	a3,a3,a4
    80006f34:	00f507b3          	add	a5,a0,a5
    80006f38:	06e60463          	beq	a2,a4,80006fa0 <__memmove+0xfc>
    80006f3c:	0005c703          	lbu	a4,0(a1)
    80006f40:	00e78023          	sb	a4,0(a5)
    80006f44:	04068e63          	beqz	a3,80006fa0 <__memmove+0xfc>
    80006f48:	0015c603          	lbu	a2,1(a1)
    80006f4c:	00100713          	li	a4,1
    80006f50:	00c780a3          	sb	a2,1(a5)
    80006f54:	04e68663          	beq	a3,a4,80006fa0 <__memmove+0xfc>
    80006f58:	0025c603          	lbu	a2,2(a1)
    80006f5c:	00200713          	li	a4,2
    80006f60:	00c78123          	sb	a2,2(a5)
    80006f64:	02e68e63          	beq	a3,a4,80006fa0 <__memmove+0xfc>
    80006f68:	0035c603          	lbu	a2,3(a1)
    80006f6c:	00300713          	li	a4,3
    80006f70:	00c781a3          	sb	a2,3(a5)
    80006f74:	02e68663          	beq	a3,a4,80006fa0 <__memmove+0xfc>
    80006f78:	0045c603          	lbu	a2,4(a1)
    80006f7c:	00400713          	li	a4,4
    80006f80:	00c78223          	sb	a2,4(a5)
    80006f84:	00e68e63          	beq	a3,a4,80006fa0 <__memmove+0xfc>
    80006f88:	0055c603          	lbu	a2,5(a1)
    80006f8c:	00500713          	li	a4,5
    80006f90:	00c782a3          	sb	a2,5(a5)
    80006f94:	00e68663          	beq	a3,a4,80006fa0 <__memmove+0xfc>
    80006f98:	0065c703          	lbu	a4,6(a1)
    80006f9c:	00e78323          	sb	a4,6(a5)
    80006fa0:	00813403          	ld	s0,8(sp)
    80006fa4:	01010113          	addi	sp,sp,16
    80006fa8:	00008067          	ret
    80006fac:	02061713          	slli	a4,a2,0x20
    80006fb0:	02075713          	srli	a4,a4,0x20
    80006fb4:	00e587b3          	add	a5,a1,a4
    80006fb8:	f0f574e3          	bgeu	a0,a5,80006ec0 <__memmove+0x1c>
    80006fbc:	02069613          	slli	a2,a3,0x20
    80006fc0:	02065613          	srli	a2,a2,0x20
    80006fc4:	fff64613          	not	a2,a2
    80006fc8:	00e50733          	add	a4,a0,a4
    80006fcc:	00c78633          	add	a2,a5,a2
    80006fd0:	fff7c683          	lbu	a3,-1(a5)
    80006fd4:	fff78793          	addi	a5,a5,-1
    80006fd8:	fff70713          	addi	a4,a4,-1
    80006fdc:	00d70023          	sb	a3,0(a4)
    80006fe0:	fec798e3          	bne	a5,a2,80006fd0 <__memmove+0x12c>
    80006fe4:	00813403          	ld	s0,8(sp)
    80006fe8:	01010113          	addi	sp,sp,16
    80006fec:	00008067          	ret
    80006ff0:	02069713          	slli	a4,a3,0x20
    80006ff4:	02075713          	srli	a4,a4,0x20
    80006ff8:	00170713          	addi	a4,a4,1
    80006ffc:	00e50733          	add	a4,a0,a4
    80007000:	00050793          	mv	a5,a0
    80007004:	0005c683          	lbu	a3,0(a1)
    80007008:	00178793          	addi	a5,a5,1
    8000700c:	00158593          	addi	a1,a1,1
    80007010:	fed78fa3          	sb	a3,-1(a5)
    80007014:	fee798e3          	bne	a5,a4,80007004 <__memmove+0x160>
    80007018:	f89ff06f          	j	80006fa0 <__memmove+0xfc>
	...
