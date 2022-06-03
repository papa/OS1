
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	41013103          	ld	sp,1040(sp) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6d4050ef          	jal	ra,800056f0 <start>

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
    800019b8:	00009797          	auipc	a5,0x9
    800019bc:	a907b783          	ld	a5,-1392(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	00009797          	auipc	a5,0x9
    800019c8:	a247b783          	ld	a5,-1500(a5) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001d24:	5b078793          	addi	a5,a5,1456 # 8000a2d0 <_ZTV12TestPeriodic+0x10>
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
    80001d98:	0000e097          	auipc	ra,0xe
    80001d9c:	8c0080e7          	jalr	-1856(ra) # 8000f658 <_Unwind_Resume>

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
    80002178:	32c72703          	lw	a4,812(a4) # 8000a4a0 <head>
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
    8000219c:	30848493          	addi	s1,s1,776 # 8000a4a0 <head>
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
    800021d8:	2cc72703          	lw	a4,716(a4) # 8000a4a0 <head>
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
    80002200:	2cc72703          	lw	a4,716(a4) # 8000a4c8 <tail>
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
    80002224:	28048493          	addi	s1,s1,640 # 8000a4a0 <head>
    80002228:	0204b503          	ld	a0,32(s1)
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	1b4080e7          	jalr	436(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    80002234:	0284a783          	lw	a5,40(s1)
    80002238:	00008717          	auipc	a4,0x8
    8000223c:	04870713          	addi	a4,a4,72 # 8000a280 <string>
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
    80002268:	26472703          	lw	a4,612(a4) # 8000a4c8 <tail>
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
    80002398:	f0c78793          	addi	a5,a5,-244 # 8000a2a0 <_ZTV14PeriodicThread+0x10>
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
    800023d4:	ed078793          	addi	a5,a5,-304 # 8000a2a0 <_ZTV14PeriodicThread+0x10>
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
    80002418:	e8c78793          	addi	a5,a5,-372 # 8000a2a0 <_ZTV14PeriodicThread+0x10>
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
    80002454:	e5078793          	addi	a5,a5,-432 # 8000a2a0 <_ZTV14PeriodicThread+0x10>
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
    800024a0:	0347b783          	ld	a5,52(a5) # 8000a4d0 <_ZN3PCB7runningE>
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
    80002574:	f604b483          	ld	s1,-160(s1) # 8000a4d0 <_ZN3PCB7runningE>

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
    80002590:	f4490913          	addi	s2,s2,-188 # 8000a4d0 <_ZN3PCB7runningE>
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
    800026b4:	e2090913          	addi	s2,s2,-480 # 8000a4d0 <_ZN3PCB7runningE>
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
    800026f4:	d305b583          	ld	a1,-720(a1) # 8000a420 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80002744:	d105b583          	ld	a1,-752(a1) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x80>
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
    800027b8:	d1c78793          	addi	a5,a5,-740 # 8000a4d0 <_ZN3PCB7runningE>
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
    80002804:	ce07b423          	sd	zero,-792(a5) # 8000a4e8 <_ZN3PCB16timeSliceCounterE>
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
    80002838:	c9c70713          	addi	a4,a4,-868 # 8000a4d0 <_ZN3PCB7runningE>
    8000283c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002840:	00073703          	ld	a4,0(a4)
    80002844:	00008697          	auipc	a3,0x8
    80002848:	bd46b683          	ld	a3,-1068(a3) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800028c8:	c2c6b683          	ld	a3,-980(a3) # 8000a4f0 <_ZN3PCB10savedRegA4E>
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
    800029a8:	00008697          	auipc	a3,0x8
    800029ac:	b486b683          	ld	a3,-1208(a3) # 8000a4f0 <_ZN3PCB10savedRegA4E>
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
    80002a30:	00008797          	auipc	a5,0x8
    80002a34:	ac97b423          	sd	s1,-1336(a5) # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a38:	01800513          	li	a0,24
    80002a3c:	00002097          	auipc	ra,0x2
    80002a40:	988080e7          	jalr	-1656(ra) # 800043c4 <_ZN10KSemaphorenwEm>
    80002a44:	00050493          	mv	s1,a0
    80002a48:	00000593          	li	a1,0
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	710080e7          	jalr	1808(ra) # 8000415c <_ZN10KSemaphoreC1Ei>
    80002a54:	00008797          	auipc	a5,0x8
    80002a58:	aa97b623          	sd	s1,-1364(a5) # 8000a500 <_ZN8KConsole19hasCharactersOutputE>
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
    80002a88:	0000d097          	auipc	ra,0xd
    80002a8c:	bd0080e7          	jalr	-1072(ra) # 8000f658 <_Unwind_Resume>
    80002a90:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002a94:	00048513          	mv	a0,s1
    80002a98:	00002097          	auipc	ra,0x2
    80002a9c:	9cc080e7          	jalr	-1588(ra) # 80004464 <_ZN10KSemaphoredlEPv>
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	0000d097          	auipc	ra,0xd
    80002aa8:	bb4080e7          	jalr	-1100(ra) # 8000f658 <_Unwind_Resume>

0000000080002aac <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002aac:	00008697          	auipc	a3,0x8
    80002ab0:	a4c68693          	addi	a3,a3,-1460 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
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
    80002ae0:	0000a717          	auipc	a4,0xa
    80002ae4:	a5870713          	addi	a4,a4,-1448 # 8000c538 <_ZN8KConsole11inputBufferE>
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
    80002b28:	00008497          	auipc	s1,0x8
    80002b2c:	9d048493          	addi	s1,s1,-1584 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
    80002b30:	0004b503          	ld	a0,0(s1)
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	6d0080e7          	jalr	1744(ra) # 80004204 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b3c:	0184b783          	ld	a5,24(s1)
    80002b40:	0104b703          	ld	a4,16(s1)
    80002b44:	04e78063          	beq	a5,a4,80002b84 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b48:	0000a717          	auipc	a4,0xa
    80002b4c:	9f070713          	addi	a4,a4,-1552 # 8000c538 <_ZN8KConsole11inputBufferE>
    80002b50:	00f70733          	add	a4,a4,a5
    80002b54:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b58:	00178793          	addi	a5,a5,1
    80002b5c:	00002737          	lui	a4,0x2
    80002b60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b64:	00e7f7b3          	and	a5,a5,a4
    80002b68:	00008717          	auipc	a4,0x8
    80002b6c:	9af73423          	sd	a5,-1624(a4) # 8000a510 <_ZN8KConsole9inputHeadE>

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
    80002b8c:	00008697          	auipc	a3,0x8
    80002b90:	96c68693          	addi	a3,a3,-1684 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
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
    80002bd0:	00008697          	auipc	a3,0x8
    80002bd4:	96868693          	addi	a3,a3,-1688 # 8000a538 <_ZN8KConsole12outputBufferE>
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
    80002c08:	7dc7b783          	ld	a5,2012(a5) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002c3c:	7c87b783          	ld	a5,1992(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002c70:	7747b783          	ld	a5,1908(a5) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002cb8:	00008497          	auipc	s1,0x8
    80002cbc:	84048493          	addi	s1,s1,-1984 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
    80002cc0:	0084b503          	ld	a0,8(s1)
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	540080e7          	jalr	1344(ra) # 80004204 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002ccc:	0284b783          	ld	a5,40(s1)
    80002cd0:	0204b703          	ld	a4,32(s1)
    80002cd4:	04e78063          	beq	a5,a4,80002d14 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002cd8:	00008717          	auipc	a4,0x8
    80002cdc:	86070713          	addi	a4,a4,-1952 # 8000a538 <_ZN8KConsole12outputBufferE>
    80002ce0:	00f70733          	add	a4,a4,a5
    80002ce4:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002ce8:	00178793          	addi	a5,a5,1
    80002cec:	00002737          	lui	a4,0x2
    80002cf0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002cf4:	00e7f7b3          	and	a5,a5,a4
    80002cf8:	00008717          	auipc	a4,0x8
    80002cfc:	82f73423          	sd	a5,-2008(a4) # 8000a520 <_ZN8KConsole10outputHeadE>

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
    80002d64:	79870713          	addi	a4,a4,1944 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
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
    80002de8:	74453503          	ld	a0,1860(a0) # 8000a528 <_ZN8KConsole11pendingPutcE>
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
    80002e28:	6147b783          	ld	a5,1556(a5) # 8000a438 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e2c:	0007c783          	lbu	a5,0(a5)
    80002e30:	00078e63          	beqz	a5,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	fa4080e7          	jalr	-92(ra) # 80002dd8 <_ZN8KConsole17outputBufferEmptyEv>
    80002e3c:	00050863          	beqz	a0,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e40:	00007797          	auipc	a5,0x7
    80002e44:	6f07b783          	ld	a5,1776(a5) # 8000a530 <_ZN8KConsole11pendingGetcE>
    80002e48:	fc0784e3          	beqz	a5,80002e10 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e4c:	00007797          	auipc	a5,0x7
    80002e50:	5947b783          	ld	a5,1428(a5) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002e70:	6bc7b783          	ld	a5,1724(a5) # 8000a528 <_ZN8KConsole11pendingPutcE>
    80002e74:	fa0784e3          	beqz	a5,80002e1c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	6e4080e7          	jalr	1764(ra) # 8000155c <sysCallGetCharOutput>
    80002e80:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002e84:	00007717          	auipc	a4,0x7
    80002e88:	67470713          	addi	a4,a4,1652 # 8000a4f8 <_ZN8KConsole18hasCharactersInputE>
    80002e8c:	03073783          	ld	a5,48(a4)
    80002e90:	fff78793          	addi	a5,a5,-1
    80002e94:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002e98:	00007797          	auipc	a5,0x7
    80002e9c:	5407b783          	ld	a5,1344(a5) # 8000a3d8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80003020:	4247b783          	ld	a5,1060(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003024:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003028:	00500793          	li	a5,5
    8000302c:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003030:	0000b797          	auipc	a5,0xb
    80003034:	5087b783          	ld	a5,1288(a5) # 8000e538 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003074:	4cc7b423          	sd	a2,1224(a5) # 8000e538 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003078:	fedff06f          	j	80003064 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000307c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    8000307c:	0000b517          	auipc	a0,0xb
    80003080:	4bc53503          	ld	a0,1212(a0) # 8000e538 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003094:	38873703          	ld	a4,904(a4) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800030c0:	35c73703          	ld	a4,860(a4) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800030e0:	4497be23          	sd	s1,1116(a5) # 8000e538 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003164:	3e07b783          	ld	a5,992(a5) # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031a4:	3a07b783          	ld	a5,928(a5) # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
    800031a8:	02078263          	beqz	a5,800031cc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031ac:	0000b797          	auipc	a5,0xb
    800031b0:	39478793          	addi	a5,a5,916 # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031d0:	37478793          	addi	a5,a5,884 # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031f0:	35453503          	ld	a0,852(a0) # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003204:	34f73023          	sd	a5,832(a4) # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003208:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000320c:	00813403          	ld	s0,8(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003218:	0000b797          	auipc	a5,0xb
    8000321c:	32878793          	addi	a5,a5,808 # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003244:	3004b483          	ld	s1,768(s1) # 8000e540 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800032f4:	01878793          	addi	a5,a5,24 # 8000a308 <_ZTV6Thread+0x10>
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
    8000332c:	00878793          	addi	a5,a5,8 # 8000a330 <_ZTV9Semaphore+0x10>
    80003330:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80003334:	00853503          	ld	a0,8(a0)
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	07c080e7          	jalr	124(ra) # 800013b4 <sem_close>
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
    800034fc:	e1078793          	addi	a5,a5,-496 # 8000a308 <_ZTV6Thread+0x10>
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
    80003534:	dd878793          	addi	a5,a5,-552 # 8000a308 <_ZTV6Thread+0x10>
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
    800035b8:	d7c78793          	addi	a5,a5,-644 # 8000a330 <_ZTV9Semaphore+0x10>
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
    800036c0:	be478793          	addi	a5,a5,-1052 # 8000a2a0 <_ZTV14PeriodicThread+0x10>
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
    800036f4:	d007b783          	ld	a5,-768(a5) # 8000a3f0 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800037a8:	dac7c783          	lbu	a5,-596(a5) # 8000e550 <_ZN5Riscv16kernelMainCalledE>
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
    800037cc:	d8f70423          	sb	a5,-632(a4) # 8000e550 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	f10080e7          	jalr	-240(ra) # 800036e0 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	f44080e7          	jalr	-188(ra) # 8000371c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800037e0:	00007797          	auipc	a5,0x7
    800037e4:	c507b783          	ld	a5,-944(a5) # 8000a430 <_GLOBAL_OFFSET_TABLE_+0x60>
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
    8000380c:	d4f704a3          	sb	a5,-695(a4) # 8000e551 <_ZN5Riscv12finishSystemE>
    80003810:	00c0006f          	j	8000381c <_ZN5Riscv10kernelMainEv+0x78>
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	b20080e7          	jalr	-1248(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    8000381c:	00007797          	auipc	a5,0x7
    80003820:	c0c7b783          	ld	a5,-1012(a5) # 8000a428 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80003868:	7dc080e7          	jalr	2012(ra) # 80005040 <_Z8userMainv>
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
    800038e4:	00007717          	auipc	a4,0x7
    800038e8:	b5c73703          	ld	a4,-1188(a4) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003918:	00007797          	auipc	a5,0x7
    8000391c:	b287b783          	ld	a5,-1240(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003964:	00007797          	auipc	a5,0x7
    80003968:	af47b783          	ld	a5,-1292(a5) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000396c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003970:	00007797          	auipc	a5,0x7
    80003974:	ad07b783          	ld	a5,-1328(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    800039f0:	00007797          	auipc	a5,0x7
    800039f4:	9f07b783          	ld	a5,-1552(a5) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80003a10:	00007797          	auipc	a5,0x7
    80003a14:	9f07b783          	ld	a5,-1552(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003a18:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003a1c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003a20:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003a24:	00058513          	mv	a0,a1
    80003a28:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003a2c:	00007797          	auipc	a5,0x7
    80003a30:	9cc7b783          	ld	a5,-1588(a5) # 8000a3f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a34:	0007b783          	ld	a5,0(a5)
    80003a38:	0c079263          	bnez	a5,80003afc <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	508080e7          	jalr	1288(ra) # 80005f44 <plic_claim>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	538080e7          	jalr	1336(ra) # 80005f7c <plic_complete>
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
    80003a78:	0000b717          	auipc	a4,0xb
    80003a7c:	ad870713          	addi	a4,a4,-1320 # 8000e550 <_ZN5Riscv16kernelMainCalledE>
    80003a80:	00873783          	ld	a5,8(a4)
    80003a84:	00178793          	addi	a5,a5,1
    80003a88:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003a8c:	00007497          	auipc	s1,0x7
    80003a90:	97c4b483          	ld	s1,-1668(s1) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003a94:	0004b783          	ld	a5,0(s1)
    80003a98:	00178793          	addi	a5,a5,1
    80003a9c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	5dc080e7          	jalr	1500(ra) # 8000307c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003aa8:	00007797          	auipc	a5,0x7
    80003aac:	9987b783          	ld	a5,-1640(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003b00:	00007717          	auipc	a4,0x7
    80003b04:	8f873703          	ld	a4,-1800(a4) # 8000a3f8 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80003c48:	0000b717          	auipc	a4,0xb
    80003c4c:	91872703          	lw	a4,-1768(a4) # 8000e560 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c50:	00100793          	li	a5,1
    80003c54:	04f70263          	beq	a4,a5,80003c98 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003c58:	0000b797          	auipc	a5,0xb
    80003c5c:	90878793          	addi	a5,a5,-1784 # 8000e560 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c60:	00100713          	li	a4,1
    80003c64:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003c68:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c6c:	00006717          	auipc	a4,0x6
    80003c70:	77c73703          	ld	a4,1916(a4) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c74:	00073703          	ld	a4,0(a4)
    80003c78:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003c7c:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c80:	00006797          	auipc	a5,0x6
    80003c84:	7c87b783          	ld	a5,1992(a5) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x78>
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
    80003cdc:	0000b797          	auipc	a5,0xb
    80003ce0:	88c7b783          	ld	a5,-1908(a5) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
    80003ce4:	02078e63          	beqz	a5,80003d20 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003ce8:	00006717          	auipc	a4,0x6
    80003cec:	76073703          	ld	a4,1888(a4) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x78>
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
    80003d20:	0000b797          	auipc	a5,0xb
    80003d24:	8497b423          	sd	s1,-1976(a5) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
    80003d28:	fddff06f          	j	80003d04 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003d2c:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    80003d30:	0000b797          	auipc	a5,0xb
    80003d34:	8297bc23          	sd	s1,-1992(a5) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
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
    80003d64:	0000b797          	auipc	a5,0xb
    80003d68:	8047b783          	ld	a5,-2044(a5) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
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
    80003db4:	7a97bc23          	sd	s1,1976(a5) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
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
    80003de4:	7904b483          	ld	s1,1936(s1) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003e18:	6345b583          	ld	a1,1588(a1) # 8000a448 <_GLOBAL_OFFSET_TABLE_+0x78>
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
    80003e50:	72d7b223          	sd	a3,1828(a5) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003e74:	70e6b023          	sd	a4,1792(a3) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003ea4:	6c07b823          	sd	zero,1744(a5) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003f1c:	6587b783          	ld	a5,1624(a5) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003f94:	5e97b023          	sd	s1,1504(a5) # 8000e570 <_ZN15MemoryAllocator8headFreeE>
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
    80003ffc:	5704b483          	ld	s1,1392(s1) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
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
    80004060:	50f73623          	sd	a5,1292(a4) # 8000e568 <_ZN15MemoryAllocator13headAllocatedE>
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
    800041d4:	2707b783          	ld	a5,624(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80004208:	23c7b783          	ld	a5,572(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    800044ac:	f987b783          	ld	a5,-104(a5) # 8000a440 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    8000459c:	fe050513          	addi	a0,a0,-32 # 8000e578 <lockPrint>
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
    800045d0:	fac50513          	addi	a0,a0,-84 # 8000e578 <lockPrint>
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
    80004628:	f5450513          	addi	a0,a0,-172 # 8000e578 <lockPrint>
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
    8000468c:	ef050513          	addi	a0,a0,-272 # 8000e578 <lockPrint>
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
    80004744:	e3850513          	addi	a0,a0,-456 # 8000e578 <lockPrint>
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
    80004784:	bc070713          	addi	a4,a4,-1088 # 8000a340 <digits>
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
    800047f8:	d8450513          	addi	a0,a0,-636 # 8000e578 <lockPrint>
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
    80004920:	d3c080e7          	jalr	-708(ra) # 8000f658 <_Unwind_Resume>
    80004924:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004928:	00098513          	mv	a0,s3
    8000492c:	fffff097          	auipc	ra,0xfffff
    80004930:	a4c080e7          	jalr	-1460(ra) # 80003378 <_ZdlPv>
    80004934:	00048513          	mv	a0,s1
    80004938:	0000b097          	auipc	ra,0xb
    8000493c:	d20080e7          	jalr	-736(ra) # 8000f658 <_Unwind_Resume>
    80004940:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004944:	00090513          	mv	a0,s2
    80004948:	fffff097          	auipc	ra,0xfffff
    8000494c:	a30080e7          	jalr	-1488(ra) # 80003378 <_ZdlPv>
    80004950:	00048513          	mv	a0,s1
    80004954:	0000b097          	auipc	ra,0xb
    80004958:	d04080e7          	jalr	-764(ra) # 8000f658 <_Unwind_Resume>
    8000495c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004960:	00090513          	mv	a0,s2
    80004964:	fffff097          	auipc	ra,0xfffff
    80004968:	a14080e7          	jalr	-1516(ra) # 80003378 <_ZdlPv>
    8000496c:	00048513          	mv	a0,s1
    80004970:	0000b097          	auipc	ra,0xb
    80004974:	ce8080e7          	jalr	-792(ra) # 8000f658 <_Unwind_Resume>

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

0000000080004c1c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80004c1c:	f8010113          	addi	sp,sp,-128
    80004c20:	06113c23          	sd	ra,120(sp)
    80004c24:	06813823          	sd	s0,112(sp)
    80004c28:	06913423          	sd	s1,104(sp)
    80004c2c:	07213023          	sd	s2,96(sp)
    80004c30:	05313c23          	sd	s3,88(sp)
    80004c34:	05413823          	sd	s4,80(sp)
    80004c38:	05513423          	sd	s5,72(sp)
    80004c3c:	05613023          	sd	s6,64(sp)
    80004c40:	03713c23          	sd	s7,56(sp)
    80004c44:	03813823          	sd	s8,48(sp)
    80004c48:	03913423          	sd	s9,40(sp)
    80004c4c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80004c50:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80004c54:	00003517          	auipc	a0,0x3
    80004c58:	6a450513          	addi	a0,a0,1700 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	91c080e7          	jalr	-1764(ra) # 80004578 <_Z11printStringPKc>
        getString(input, 30);
    80004c64:	01e00593          	li	a1,30
    80004c68:	f8040493          	addi	s1,s0,-128
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	984080e7          	jalr	-1660(ra) # 800045f4 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80004c78:	00048513          	mv	a0,s1
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	a44080e7          	jalr	-1468(ra) # 800046c0 <_Z11stringToIntPKc>
    80004c84:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80004c88:	00003517          	auipc	a0,0x3
    80004c8c:	69050513          	addi	a0,a0,1680 # 80008318 <CONSOLE_STATUS+0x308>
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	8e8080e7          	jalr	-1816(ra) # 80004578 <_Z11printStringPKc>
        getString(input, 30);
    80004c98:	01e00593          	li	a1,30
    80004c9c:	00048513          	mv	a0,s1
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	954080e7          	jalr	-1708(ra) # 800045f4 <_Z9getStringPci>
        n = stringToInt(input);
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	00000097          	auipc	ra,0x0
    80004cb0:	a14080e7          	jalr	-1516(ra) # 800046c0 <_Z11stringToIntPKc>
    80004cb4:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004cb8:	00003517          	auipc	a0,0x3
    80004cbc:	68050513          	addi	a0,a0,1664 # 80008338 <CONSOLE_STATUS+0x328>
    80004cc0:	00000097          	auipc	ra,0x0
    80004cc4:	8b8080e7          	jalr	-1864(ra) # 80004578 <_Z11printStringPKc>
    80004cc8:	00000613          	li	a2,0
    80004ccc:	00a00593          	li	a1,10
    80004cd0:	00098513          	mv	a0,s3
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	a3c080e7          	jalr	-1476(ra) # 80004710 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004cdc:	00003517          	auipc	a0,0x3
    80004ce0:	67450513          	addi	a0,a0,1652 # 80008350 <CONSOLE_STATUS+0x340>
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	894080e7          	jalr	-1900(ra) # 80004578 <_Z11printStringPKc>
    80004cec:	00000613          	li	a2,0
    80004cf0:	00a00593          	li	a1,10
    80004cf4:	00048513          	mv	a0,s1
    80004cf8:	00000097          	auipc	ra,0x0
    80004cfc:	a18080e7          	jalr	-1512(ra) # 80004710 <_Z8printIntiii>
        printString(".\n");
    80004d00:	00003517          	auipc	a0,0x3
    80004d04:	66850513          	addi	a0,a0,1640 # 80008368 <CONSOLE_STATUS+0x358>
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	870080e7          	jalr	-1936(ra) # 80004578 <_Z11printStringPKc>
        if(threadNum > n) {
    80004d10:	0334c463          	blt	s1,s3,80004d38 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80004d14:	03305c63          	blez	s3,80004d4c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80004d18:	03800513          	li	a0,56
    80004d1c:	ffffe097          	auipc	ra,0xffffe
    80004d20:	634080e7          	jalr	1588(ra) # 80003350 <_Znwm>
    80004d24:	00050a93          	mv	s5,a0
    80004d28:	00048593          	mv	a1,s1
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	af8080e7          	jalr	-1288(ra) # 80004824 <_ZN9BufferCPPC1Ei>
    80004d34:	0300006f          	j	80004d64 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d38:	00003517          	auipc	a0,0x3
    80004d3c:	63850513          	addi	a0,a0,1592 # 80008370 <CONSOLE_STATUS+0x360>
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	838080e7          	jalr	-1992(ra) # 80004578 <_Z11printStringPKc>
            return;
    80004d48:	0140006f          	j	80004d5c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d4c:	00003517          	auipc	a0,0x3
    80004d50:	66450513          	addi	a0,a0,1636 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	824080e7          	jalr	-2012(ra) # 80004578 <_Z11printStringPKc>
            return;
    80004d5c:	000c0113          	mv	sp,s8
    80004d60:	21c0006f          	j	80004f7c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80004d64:	01000513          	li	a0,16
    80004d68:	ffffe097          	auipc	ra,0xffffe
    80004d6c:	5e8080e7          	jalr	1512(ra) # 80003350 <_Znwm>
    80004d70:	00050493          	mv	s1,a0
    80004d74:	00000593          	li	a1,0
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	824080e7          	jalr	-2012(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004d80:	0000a717          	auipc	a4,0xa
    80004d84:	80070713          	addi	a4,a4,-2048 # 8000e580 <_ZN19ConsumerProducerCPP9threadEndE>
    80004d88:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80004d8c:	00399793          	slli	a5,s3,0x3
    80004d90:	00f78793          	addi	a5,a5,15
    80004d94:	ff07f793          	andi	a5,a5,-16
    80004d98:	40f10133          	sub	sp,sp,a5
    80004d9c:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80004da0:	0019869b          	addiw	a3,s3,1
    80004da4:	00169793          	slli	a5,a3,0x1
    80004da8:	00d787b3          	add	a5,a5,a3
    80004dac:	00379793          	slli	a5,a5,0x3
    80004db0:	00f78793          	addi	a5,a5,15
    80004db4:	ff07f793          	andi	a5,a5,-16
    80004db8:	40f10133          	sub	sp,sp,a5
    80004dbc:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80004dc0:	00199493          	slli	s1,s3,0x1
    80004dc4:	013484b3          	add	s1,s1,s3
    80004dc8:	00349493          	slli	s1,s1,0x3
    80004dcc:	009b04b3          	add	s1,s6,s1
    80004dd0:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004dd4:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004dd8:	00873783          	ld	a5,8(a4)
    80004ddc:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004de0:	01800513          	li	a0,24
    80004de4:	ffffe097          	auipc	ra,0xffffe
    80004de8:	56c080e7          	jalr	1388(ra) # 80003350 <_Znwm>
    80004dec:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004df0:	ffffe097          	auipc	ra,0xffffe
    80004df4:	730080e7          	jalr	1840(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004df8:	00005797          	auipc	a5,0x5
    80004dfc:	5c078793          	addi	a5,a5,1472 # 8000a3b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004e00:	00fbb023          	sd	a5,0(s7)
    80004e04:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80004e08:	000b8513          	mv	a0,s7
    80004e0c:	ffffe097          	auipc	ra,0xffffe
    80004e10:	614080e7          	jalr	1556(ra) # 80003420 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004e14:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80004e18:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80004e1c:	00009797          	auipc	a5,0x9
    80004e20:	76c7b783          	ld	a5,1900(a5) # 8000e588 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004e24:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004e28:	01800513          	li	a0,24
    80004e2c:	ffffe097          	auipc	ra,0xffffe
    80004e30:	524080e7          	jalr	1316(ra) # 80003350 <_Znwm>
    80004e34:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004e38:	ffffe097          	auipc	ra,0xffffe
    80004e3c:	6e8080e7          	jalr	1768(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004e40:	00005797          	auipc	a5,0x5
    80004e44:	52878793          	addi	a5,a5,1320 # 8000a368 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004e48:	00f4b023          	sd	a5,0(s1)
    80004e4c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004e50:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80004e54:	00048513          	mv	a0,s1
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	5c8080e7          	jalr	1480(ra) # 80003420 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004e60:	00100913          	li	s2,1
    80004e64:	0300006f          	j	80004e94 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004e68:	00005797          	auipc	a5,0x5
    80004e6c:	52878793          	addi	a5,a5,1320 # 8000a390 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004e70:	00fcb023          	sd	a5,0(s9)
    80004e74:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80004e78:	00391793          	slli	a5,s2,0x3
    80004e7c:	00fa07b3          	add	a5,s4,a5
    80004e80:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80004e84:	000c8513          	mv	a0,s9
    80004e88:	ffffe097          	auipc	ra,0xffffe
    80004e8c:	598080e7          	jalr	1432(ra) # 80003420 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004e90:	0019091b          	addiw	s2,s2,1
    80004e94:	05395263          	bge	s2,s3,80004ed8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004e98:	00191493          	slli	s1,s2,0x1
    80004e9c:	012484b3          	add	s1,s1,s2
    80004ea0:	00349493          	slli	s1,s1,0x3
    80004ea4:	009b04b3          	add	s1,s6,s1
    80004ea8:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80004eac:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80004eb0:	00009797          	auipc	a5,0x9
    80004eb4:	6d87b783          	ld	a5,1752(a5) # 8000e588 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004eb8:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004ebc:	01800513          	li	a0,24
    80004ec0:	ffffe097          	auipc	ra,0xffffe
    80004ec4:	490080e7          	jalr	1168(ra) # 80003350 <_Znwm>
    80004ec8:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004ecc:	ffffe097          	auipc	ra,0xffffe
    80004ed0:	654080e7          	jalr	1620(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004ed4:	f95ff06f          	j	80004e68 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80004ed8:	ffffe097          	auipc	ra,0xffffe
    80004edc:	580080e7          	jalr	1408(ra) # 80003458 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80004ee0:	00000493          	li	s1,0
    80004ee4:	0099ce63          	blt	s3,s1,80004f00 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80004ee8:	00009517          	auipc	a0,0x9
    80004eec:	6a053503          	ld	a0,1696(a0) # 8000e588 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	674080e7          	jalr	1652(ra) # 80003564 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80004ef8:	0014849b          	addiw	s1,s1,1
    80004efc:	fe9ff06f          	j	80004ee4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80004f00:	00009517          	auipc	a0,0x9
    80004f04:	68853503          	ld	a0,1672(a0) # 8000e588 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004f08:	00050863          	beqz	a0,80004f18 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80004f0c:	00053783          	ld	a5,0(a0)
    80004f10:	0087b783          	ld	a5,8(a5)
    80004f14:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80004f18:	00000493          	li	s1,0
    80004f1c:	0080006f          	j	80004f24 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80004f20:	0014849b          	addiw	s1,s1,1
    80004f24:	0334d263          	bge	s1,s3,80004f48 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80004f28:	00349793          	slli	a5,s1,0x3
    80004f2c:	00fa07b3          	add	a5,s4,a5
    80004f30:	0007b503          	ld	a0,0(a5)
    80004f34:	fe0506e3          	beqz	a0,80004f20 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80004f38:	00053783          	ld	a5,0(a0)
    80004f3c:	0087b783          	ld	a5,8(a5)
    80004f40:	000780e7          	jalr	a5
    80004f44:	fddff06f          	j	80004f20 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80004f48:	000b8a63          	beqz	s7,80004f5c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80004f4c:	000bb783          	ld	a5,0(s7)
    80004f50:	0087b783          	ld	a5,8(a5)
    80004f54:	000b8513          	mv	a0,s7
    80004f58:	000780e7          	jalr	a5
        delete buffer;
    80004f5c:	000a8e63          	beqz	s5,80004f78 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80004f60:	000a8513          	mv	a0,s5
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	bb8080e7          	jalr	-1096(ra) # 80004b1c <_ZN9BufferCPPD1Ev>
    80004f6c:	000a8513          	mv	a0,s5
    80004f70:	ffffe097          	auipc	ra,0xffffe
    80004f74:	408080e7          	jalr	1032(ra) # 80003378 <_ZdlPv>
    80004f78:	000c0113          	mv	sp,s8
    }
    80004f7c:	f8040113          	addi	sp,s0,-128
    80004f80:	07813083          	ld	ra,120(sp)
    80004f84:	07013403          	ld	s0,112(sp)
    80004f88:	06813483          	ld	s1,104(sp)
    80004f8c:	06013903          	ld	s2,96(sp)
    80004f90:	05813983          	ld	s3,88(sp)
    80004f94:	05013a03          	ld	s4,80(sp)
    80004f98:	04813a83          	ld	s5,72(sp)
    80004f9c:	04013b03          	ld	s6,64(sp)
    80004fa0:	03813b83          	ld	s7,56(sp)
    80004fa4:	03013c03          	ld	s8,48(sp)
    80004fa8:	02813c83          	ld	s9,40(sp)
    80004fac:	08010113          	addi	sp,sp,128
    80004fb0:	00008067          	ret
    80004fb4:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004fb8:	000a8513          	mv	a0,s5
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	3bc080e7          	jalr	956(ra) # 80003378 <_ZdlPv>
    80004fc4:	00048513          	mv	a0,s1
    80004fc8:	0000a097          	auipc	ra,0xa
    80004fcc:	690080e7          	jalr	1680(ra) # 8000f658 <_Unwind_Resume>
    80004fd0:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80004fd4:	00048513          	mv	a0,s1
    80004fd8:	ffffe097          	auipc	ra,0xffffe
    80004fdc:	3a0080e7          	jalr	928(ra) # 80003378 <_ZdlPv>
    80004fe0:	00090513          	mv	a0,s2
    80004fe4:	0000a097          	auipc	ra,0xa
    80004fe8:	674080e7          	jalr	1652(ra) # 8000f658 <_Unwind_Resume>
    80004fec:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ff0:	000b8513          	mv	a0,s7
    80004ff4:	ffffe097          	auipc	ra,0xffffe
    80004ff8:	384080e7          	jalr	900(ra) # 80003378 <_ZdlPv>
    80004ffc:	00048513          	mv	a0,s1
    80005000:	0000a097          	auipc	ra,0xa
    80005004:	658080e7          	jalr	1624(ra) # 8000f658 <_Unwind_Resume>
    80005008:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000500c:	00048513          	mv	a0,s1
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	368080e7          	jalr	872(ra) # 80003378 <_ZdlPv>
    80005018:	00090513          	mv	a0,s2
    8000501c:	0000a097          	auipc	ra,0xa
    80005020:	63c080e7          	jalr	1596(ra) # 8000f658 <_Unwind_Resume>
    80005024:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80005028:	000c8513          	mv	a0,s9
    8000502c:	ffffe097          	auipc	ra,0xffffe
    80005030:	34c080e7          	jalr	844(ra) # 80003378 <_ZdlPv>
    80005034:	00048513          	mv	a0,s1
    80005038:	0000a097          	auipc	ra,0xa
    8000503c:	620080e7          	jalr	1568(ra) # 8000f658 <_Unwind_Resume>

0000000080005040 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005040:	ff010113          	addi	sp,sp,-16
    80005044:	00113423          	sd	ra,8(sp)
    80005048:	00813023          	sd	s0,0(sp)
    8000504c:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005050:	00000097          	auipc	ra,0x0
    80005054:	bcc080e7          	jalr	-1076(ra) # 80004c1c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80005068:	fd010113          	addi	sp,sp,-48
    8000506c:	02113423          	sd	ra,40(sp)
    80005070:	02813023          	sd	s0,32(sp)
    80005074:	00913c23          	sd	s1,24(sp)
    80005078:	01213823          	sd	s2,16(sp)
    8000507c:	01313423          	sd	s3,8(sp)
    80005080:	03010413          	addi	s0,sp,48
    80005084:	00050913          	mv	s2,a0
            int i = 0;
    80005088:	00000993          	li	s3,0
    8000508c:	0100006f          	j	8000509c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80005090:	00a00513          	li	a0,10
    80005094:	ffffe097          	auipc	ra,0xffffe
    80005098:	5b4080e7          	jalr	1460(ra) # 80003648 <_ZN7Console4putcEc>
            while (!threadEnd) {
    8000509c:	00009797          	auipc	a5,0x9
    800050a0:	4e47a783          	lw	a5,1252(a5) # 8000e580 <_ZN19ConsumerProducerCPP9threadEndE>
    800050a4:	04079a63          	bnez	a5,800050f8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800050a8:	01093783          	ld	a5,16(s2)
    800050ac:	0087b503          	ld	a0,8(a5)
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	958080e7          	jalr	-1704(ra) # 80004a08 <_ZN9BufferCPP3getEv>
                i++;
    800050b8:	0019849b          	addiw	s1,s3,1
    800050bc:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    800050c0:	0ff57513          	andi	a0,a0,255
    800050c4:	ffffe097          	auipc	ra,0xffffe
    800050c8:	584080e7          	jalr	1412(ra) # 80003648 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    800050cc:	05000793          	li	a5,80
    800050d0:	02f4e4bb          	remw	s1,s1,a5
    800050d4:	fc0494e3          	bnez	s1,8000509c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    800050d8:	fb9ff06f          	j	80005090 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800050dc:	01093783          	ld	a5,16(s2)
    800050e0:	0087b503          	ld	a0,8(a5)
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	924080e7          	jalr	-1756(ra) # 80004a08 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800050ec:	0ff57513          	andi	a0,a0,255
    800050f0:	ffffe097          	auipc	ra,0xffffe
    800050f4:	558080e7          	jalr	1368(ra) # 80003648 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800050f8:	01093783          	ld	a5,16(s2)
    800050fc:	0087b503          	ld	a0,8(a5)
    80005100:	00000097          	auipc	ra,0x0
    80005104:	994080e7          	jalr	-1644(ra) # 80004a94 <_ZN9BufferCPP6getCntEv>
    80005108:	fca04ae3          	bgtz	a0,800050dc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    8000510c:	01093783          	ld	a5,16(s2)
    80005110:	0107b503          	ld	a0,16(a5)
    80005114:	ffffe097          	auipc	ra,0xffffe
    80005118:	4d4080e7          	jalr	1236(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    8000511c:	02813083          	ld	ra,40(sp)
    80005120:	02013403          	ld	s0,32(sp)
    80005124:	01813483          	ld	s1,24(sp)
    80005128:	01013903          	ld	s2,16(sp)
    8000512c:	00813983          	ld	s3,8(sp)
    80005130:	03010113          	addi	sp,sp,48
    80005134:	00008067          	ret

0000000080005138 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80005138:	ff010113          	addi	sp,sp,-16
    8000513c:	00113423          	sd	ra,8(sp)
    80005140:	00813023          	sd	s0,0(sp)
    80005144:	01010413          	addi	s0,sp,16
    80005148:	00005797          	auipc	a5,0x5
    8000514c:	27078793          	addi	a5,a5,624 # 8000a3b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005150:	00f53023          	sd	a5,0(a0)
    80005154:	ffffe097          	auipc	ra,0xffffe
    80005158:	18c080e7          	jalr	396(ra) # 800032e0 <_ZN6ThreadD1Ev>
    8000515c:	00813083          	ld	ra,8(sp)
    80005160:	00013403          	ld	s0,0(sp)
    80005164:	01010113          	addi	sp,sp,16
    80005168:	00008067          	ret

000000008000516c <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    8000516c:	fe010113          	addi	sp,sp,-32
    80005170:	00113c23          	sd	ra,24(sp)
    80005174:	00813823          	sd	s0,16(sp)
    80005178:	00913423          	sd	s1,8(sp)
    8000517c:	02010413          	addi	s0,sp,32
    80005180:	00050493          	mv	s1,a0
    80005184:	00005797          	auipc	a5,0x5
    80005188:	23478793          	addi	a5,a5,564 # 8000a3b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000518c:	00f53023          	sd	a5,0(a0)
    80005190:	ffffe097          	auipc	ra,0xffffe
    80005194:	150080e7          	jalr	336(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005198:	00048513          	mv	a0,s1
    8000519c:	ffffe097          	auipc	ra,0xffffe
    800051a0:	1dc080e7          	jalr	476(ra) # 80003378 <_ZdlPv>
    800051a4:	01813083          	ld	ra,24(sp)
    800051a8:	01013403          	ld	s0,16(sp)
    800051ac:	00813483          	ld	s1,8(sp)
    800051b0:	02010113          	addi	sp,sp,32
    800051b4:	00008067          	ret

00000000800051b8 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800051b8:	ff010113          	addi	sp,sp,-16
    800051bc:	00113423          	sd	ra,8(sp)
    800051c0:	00813023          	sd	s0,0(sp)
    800051c4:	01010413          	addi	s0,sp,16
    800051c8:	00005797          	auipc	a5,0x5
    800051cc:	1a078793          	addi	a5,a5,416 # 8000a368 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800051d0:	00f53023          	sd	a5,0(a0)
    800051d4:	ffffe097          	auipc	ra,0xffffe
    800051d8:	10c080e7          	jalr	268(ra) # 800032e0 <_ZN6ThreadD1Ev>
    800051dc:	00813083          	ld	ra,8(sp)
    800051e0:	00013403          	ld	s0,0(sp)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret

00000000800051ec <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800051ec:	fe010113          	addi	sp,sp,-32
    800051f0:	00113c23          	sd	ra,24(sp)
    800051f4:	00813823          	sd	s0,16(sp)
    800051f8:	00913423          	sd	s1,8(sp)
    800051fc:	02010413          	addi	s0,sp,32
    80005200:	00050493          	mv	s1,a0
    80005204:	00005797          	auipc	a5,0x5
    80005208:	16478793          	addi	a5,a5,356 # 8000a368 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    8000520c:	00f53023          	sd	a5,0(a0)
    80005210:	ffffe097          	auipc	ra,0xffffe
    80005214:	0d0080e7          	jalr	208(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005218:	00048513          	mv	a0,s1
    8000521c:	ffffe097          	auipc	ra,0xffffe
    80005220:	15c080e7          	jalr	348(ra) # 80003378 <_ZdlPv>
    80005224:	01813083          	ld	ra,24(sp)
    80005228:	01013403          	ld	s0,16(sp)
    8000522c:	00813483          	ld	s1,8(sp)
    80005230:	02010113          	addi	sp,sp,32
    80005234:	00008067          	ret

0000000080005238 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80005238:	ff010113          	addi	sp,sp,-16
    8000523c:	00113423          	sd	ra,8(sp)
    80005240:	00813023          	sd	s0,0(sp)
    80005244:	01010413          	addi	s0,sp,16
    80005248:	00005797          	auipc	a5,0x5
    8000524c:	14878793          	addi	a5,a5,328 # 8000a390 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005250:	00f53023          	sd	a5,0(a0)
    80005254:	ffffe097          	auipc	ra,0xffffe
    80005258:	08c080e7          	jalr	140(ra) # 800032e0 <_ZN6ThreadD1Ev>
    8000525c:	00813083          	ld	ra,8(sp)
    80005260:	00013403          	ld	s0,0(sp)
    80005264:	01010113          	addi	sp,sp,16
    80005268:	00008067          	ret

000000008000526c <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    8000526c:	fe010113          	addi	sp,sp,-32
    80005270:	00113c23          	sd	ra,24(sp)
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	02010413          	addi	s0,sp,32
    80005280:	00050493          	mv	s1,a0
    80005284:	00005797          	auipc	a5,0x5
    80005288:	10c78793          	addi	a5,a5,268 # 8000a390 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    8000528c:	00f53023          	sd	a5,0(a0)
    80005290:	ffffe097          	auipc	ra,0xffffe
    80005294:	050080e7          	jalr	80(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005298:	00048513          	mv	a0,s1
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	0dc080e7          	jalr	220(ra) # 80003378 <_ZdlPv>
    800052a4:	01813083          	ld	ra,24(sp)
    800052a8:	01013403          	ld	s0,16(sp)
    800052ac:	00813483          	ld	s1,8(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret

00000000800052b8 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    800052b8:	fe010113          	addi	sp,sp,-32
    800052bc:	00113c23          	sd	ra,24(sp)
    800052c0:	00813823          	sd	s0,16(sp)
    800052c4:	00913423          	sd	s1,8(sp)
    800052c8:	02010413          	addi	s0,sp,32
    800052cc:	00050493          	mv	s1,a0
            while ((key = getc()) != 'q') {
    800052d0:	ffffc097          	auipc	ra,0xffffc
    800052d4:	240080e7          	jalr	576(ra) # 80001510 <getc>
    800052d8:	0005059b          	sext.w	a1,a0
    800052dc:	07100793          	li	a5,113
    800052e0:	00f58c63          	beq	a1,a5,800052f8 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800052e4:	0104b783          	ld	a5,16(s1)
    800052e8:	0087b503          	ld	a0,8(a5)
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	68c080e7          	jalr	1676(ra) # 80004978 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 'q') {
    800052f4:	fddff06f          	j	800052d0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800052f8:	00100793          	li	a5,1
    800052fc:	00009717          	auipc	a4,0x9
    80005300:	28f72223          	sw	a5,644(a4) # 8000e580 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80005304:	0104b783          	ld	a5,16(s1)
    80005308:	02100593          	li	a1,33
    8000530c:	0087b503          	ld	a0,8(a5)
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	668080e7          	jalr	1640(ra) # 80004978 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80005318:	0104b783          	ld	a5,16(s1)
    8000531c:	0107b503          	ld	a0,16(a5)
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	2c8080e7          	jalr	712(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    80005328:	01813083          	ld	ra,24(sp)
    8000532c:	01013403          	ld	s0,16(sp)
    80005330:	00813483          	ld	s1,8(sp)
    80005334:	02010113          	addi	sp,sp,32
    80005338:	00008067          	ret

000000008000533c <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    8000533c:	fe010113          	addi	sp,sp,-32
    80005340:	00113c23          	sd	ra,24(sp)
    80005344:	00813823          	sd	s0,16(sp)
    80005348:	00913423          	sd	s1,8(sp)
    8000534c:	01213023          	sd	s2,0(sp)
    80005350:	02010413          	addi	s0,sp,32
    80005354:	00050493          	mv	s1,a0
            int i = 0;
    80005358:	00000913          	li	s2,0
            while (!threadEnd) {
    8000535c:	00009797          	auipc	a5,0x9
    80005360:	2247a783          	lw	a5,548(a5) # 8000e580 <_ZN19ConsumerProducerCPP9threadEndE>
    80005364:	04079263          	bnez	a5,800053a8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80005368:	0104b783          	ld	a5,16(s1)
    8000536c:	0007a583          	lw	a1,0(a5)
    80005370:	0305859b          	addiw	a1,a1,48
    80005374:	0087b503          	ld	a0,8(a5)
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	600080e7          	jalr	1536(ra) # 80004978 <_ZN9BufferCPP3putEi>
                i++;
    80005380:	0019071b          	addiw	a4,s2,1
    80005384:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80005388:	0104b783          	ld	a5,16(s1)
    8000538c:	0007a783          	lw	a5,0(a5)
    80005390:	00e787bb          	addw	a5,a5,a4
    80005394:	00500513          	li	a0,5
    80005398:	02a7e53b          	remw	a0,a5,a0
    8000539c:	ffffe097          	auipc	ra,0xffffe
    800053a0:	0e4080e7          	jalr	228(ra) # 80003480 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    800053a4:	fb9ff06f          	j	8000535c <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    800053a8:	0104b783          	ld	a5,16(s1)
    800053ac:	0107b503          	ld	a0,16(a5)
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	238080e7          	jalr	568(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    800053b8:	01813083          	ld	ra,24(sp)
    800053bc:	01013403          	ld	s0,16(sp)
    800053c0:	00813483          	ld	s1,8(sp)
    800053c4:	00013903          	ld	s2,0(sp)
    800053c8:	02010113          	addi	sp,sp,32
    800053cc:	00008067          	ret

00000000800053d0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00813823          	sd	s0,16(sp)
    800053dc:	00913423          	sd	s1,8(sp)
    800053e0:	01213023          	sd	s2,0(sp)
    800053e4:	02010413          	addi	s0,sp,32
    800053e8:	00050493          	mv	s1,a0
    800053ec:	00058913          	mv	s2,a1
    800053f0:	0015879b          	addiw	a5,a1,1
    800053f4:	0007851b          	sext.w	a0,a5
    800053f8:	00f4a023          	sw	a5,0(s1)
    800053fc:	0004a823          	sw	zero,16(s1)
    80005400:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005404:	00251513          	slli	a0,a0,0x2
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	e50080e7          	jalr	-432(ra) # 80001258 <mem_alloc>
    80005410:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005414:	00000593          	li	a1,0
    80005418:	02048513          	addi	a0,s1,32
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	f60080e7          	jalr	-160(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80005424:	00090593          	mv	a1,s2
    80005428:	01848513          	addi	a0,s1,24
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	f50080e7          	jalr	-176(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80005434:	00100593          	li	a1,1
    80005438:	02848513          	addi	a0,s1,40
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	f40080e7          	jalr	-192(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80005444:	00100593          	li	a1,1
    80005448:	03048513          	addi	a0,s1,48
    8000544c:	ffffc097          	auipc	ra,0xffffc
    80005450:	f30080e7          	jalr	-208(ra) # 8000137c <sem_open>
}
    80005454:	01813083          	ld	ra,24(sp)
    80005458:	01013403          	ld	s0,16(sp)
    8000545c:	00813483          	ld	s1,8(sp)
    80005460:	00013903          	ld	s2,0(sp)
    80005464:	02010113          	addi	sp,sp,32
    80005468:	00008067          	ret

000000008000546c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00813823          	sd	s0,16(sp)
    80005478:	00913423          	sd	s1,8(sp)
    8000547c:	01213023          	sd	s2,0(sp)
    80005480:	02010413          	addi	s0,sp,32
    80005484:	00050493          	mv	s1,a0
    80005488:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000548c:	01853503          	ld	a0,24(a0)
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	f50080e7          	jalr	-176(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80005498:	0304b503          	ld	a0,48(s1)
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	f44080e7          	jalr	-188(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    800054a4:	0084b783          	ld	a5,8(s1)
    800054a8:	0144a703          	lw	a4,20(s1)
    800054ac:	00271713          	slli	a4,a4,0x2
    800054b0:	00e787b3          	add	a5,a5,a4
    800054b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800054b8:	0144a783          	lw	a5,20(s1)
    800054bc:	0017879b          	addiw	a5,a5,1
    800054c0:	0004a703          	lw	a4,0(s1)
    800054c4:	02e7e7bb          	remw	a5,a5,a4
    800054c8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800054cc:	0304b503          	ld	a0,48(s1)
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	f3c080e7          	jalr	-196(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800054d8:	0204b503          	ld	a0,32(s1)
    800054dc:	ffffc097          	auipc	ra,0xffffc
    800054e0:	f30080e7          	jalr	-208(ra) # 8000140c <sem_signal>

}
    800054e4:	01813083          	ld	ra,24(sp)
    800054e8:	01013403          	ld	s0,16(sp)
    800054ec:	00813483          	ld	s1,8(sp)
    800054f0:	00013903          	ld	s2,0(sp)
    800054f4:	02010113          	addi	sp,sp,32
    800054f8:	00008067          	ret

00000000800054fc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	01213023          	sd	s2,0(sp)
    80005510:	02010413          	addi	s0,sp,32
    80005514:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005518:	02053503          	ld	a0,32(a0)
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	ec4080e7          	jalr	-316(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80005524:	0284b503          	ld	a0,40(s1)
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	eb8080e7          	jalr	-328(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80005530:	0084b703          	ld	a4,8(s1)
    80005534:	0104a783          	lw	a5,16(s1)
    80005538:	00279693          	slli	a3,a5,0x2
    8000553c:	00d70733          	add	a4,a4,a3
    80005540:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005544:	0017879b          	addiw	a5,a5,1
    80005548:	0004a703          	lw	a4,0(s1)
    8000554c:	02e7e7bb          	remw	a5,a5,a4
    80005550:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005554:	0284b503          	ld	a0,40(s1)
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	eb4080e7          	jalr	-332(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80005560:	0184b503          	ld	a0,24(s1)
    80005564:	ffffc097          	auipc	ra,0xffffc
    80005568:	ea8080e7          	jalr	-344(ra) # 8000140c <sem_signal>

    return ret;
}
    8000556c:	00090513          	mv	a0,s2
    80005570:	01813083          	ld	ra,24(sp)
    80005574:	01013403          	ld	s0,16(sp)
    80005578:	00813483          	ld	s1,8(sp)
    8000557c:	00013903          	ld	s2,0(sp)
    80005580:	02010113          	addi	sp,sp,32
    80005584:	00008067          	ret

0000000080005588 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00113c23          	sd	ra,24(sp)
    80005590:	00813823          	sd	s0,16(sp)
    80005594:	00913423          	sd	s1,8(sp)
    80005598:	01213023          	sd	s2,0(sp)
    8000559c:	02010413          	addi	s0,sp,32
    800055a0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800055a4:	02853503          	ld	a0,40(a0)
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	e38080e7          	jalr	-456(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    800055b0:	0304b503          	ld	a0,48(s1)
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	e2c080e7          	jalr	-468(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    800055bc:	0144a783          	lw	a5,20(s1)
    800055c0:	0104a903          	lw	s2,16(s1)
    800055c4:	0327ce63          	blt	a5,s2,80005600 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800055c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800055cc:	0304b503          	ld	a0,48(s1)
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	e3c080e7          	jalr	-452(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    800055d8:	0284b503          	ld	a0,40(s1)
    800055dc:	ffffc097          	auipc	ra,0xffffc
    800055e0:	e30080e7          	jalr	-464(ra) # 8000140c <sem_signal>

    return ret;
    800055e4:	00090513          	mv	a0,s2
    800055e8:	01813083          	ld	ra,24(sp)
    800055ec:	01013403          	ld	s0,16(sp)
    800055f0:	00813483          	ld	s1,8(sp)
    800055f4:	00013903          	ld	s2,0(sp)
    800055f8:	02010113          	addi	sp,sp,32
    800055fc:	00008067          	ret
        ret = cap - head + tail;
    80005600:	0004a703          	lw	a4,0(s1)
    80005604:	4127093b          	subw	s2,a4,s2
    80005608:	00f9093b          	addw	s2,s2,a5
    8000560c:	fc1ff06f          	j	800055cc <_ZN6Buffer6getCntEv+0x44>

0000000080005610 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	00813823          	sd	s0,16(sp)
    8000561c:	00913423          	sd	s1,8(sp)
    80005620:	02010413          	addi	s0,sp,32
    80005624:	00050493          	mv	s1,a0
    putc('\n');
    80005628:	00a00513          	li	a0,10
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	f0c080e7          	jalr	-244(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80005634:	00003517          	auipc	a0,0x3
    80005638:	cac50513          	addi	a0,a0,-852 # 800082e0 <CONSOLE_STATUS+0x2d0>
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	f3c080e7          	jalr	-196(ra) # 80004578 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005644:	00048513          	mv	a0,s1
    80005648:	00000097          	auipc	ra,0x0
    8000564c:	f40080e7          	jalr	-192(ra) # 80005588 <_ZN6Buffer6getCntEv>
    80005650:	02a05c63          	blez	a0,80005688 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005654:	0084b783          	ld	a5,8(s1)
    80005658:	0104a703          	lw	a4,16(s1)
    8000565c:	00271713          	slli	a4,a4,0x2
    80005660:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005664:	0007c503          	lbu	a0,0(a5)
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	ed0080e7          	jalr	-304(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80005670:	0104a783          	lw	a5,16(s1)
    80005674:	0017879b          	addiw	a5,a5,1
    80005678:	0004a703          	lw	a4,0(s1)
    8000567c:	02e7e7bb          	remw	a5,a5,a4
    80005680:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005684:	fc1ff06f          	j	80005644 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005688:	02100513          	li	a0,33
    8000568c:	ffffc097          	auipc	ra,0xffffc
    80005690:	eac080e7          	jalr	-340(ra) # 80001538 <putc>
    putc('\n');
    80005694:	00a00513          	li	a0,10
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	ea0080e7          	jalr	-352(ra) # 80001538 <putc>
    mem_free(buffer);
    800056a0:	0084b503          	ld	a0,8(s1)
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	be4080e7          	jalr	-1052(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800056ac:	0204b503          	ld	a0,32(s1)
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	d04080e7          	jalr	-764(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800056b8:	0184b503          	ld	a0,24(s1)
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	cf8080e7          	jalr	-776(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800056c4:	0304b503          	ld	a0,48(s1)
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	cec080e7          	jalr	-788(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800056d0:	0284b503          	ld	a0,40(s1)
    800056d4:	ffffc097          	auipc	ra,0xffffc
    800056d8:	ce0080e7          	jalr	-800(ra) # 800013b4 <sem_close>
}
    800056dc:	01813083          	ld	ra,24(sp)
    800056e0:	01013403          	ld	s0,16(sp)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	02010113          	addi	sp,sp,32
    800056ec:	00008067          	ret

00000000800056f0 <start>:
    800056f0:	ff010113          	addi	sp,sp,-16
    800056f4:	00813423          	sd	s0,8(sp)
    800056f8:	01010413          	addi	s0,sp,16
    800056fc:	300027f3          	csrr	a5,mstatus
    80005700:	ffffe737          	lui	a4,0xffffe
    80005704:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef00f>
    80005708:	00e7f7b3          	and	a5,a5,a4
    8000570c:	00001737          	lui	a4,0x1
    80005710:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005714:	00e7e7b3          	or	a5,a5,a4
    80005718:	30079073          	csrw	mstatus,a5
    8000571c:	00000797          	auipc	a5,0x0
    80005720:	16078793          	addi	a5,a5,352 # 8000587c <system_main>
    80005724:	34179073          	csrw	mepc,a5
    80005728:	00000793          	li	a5,0
    8000572c:	18079073          	csrw	satp,a5
    80005730:	000107b7          	lui	a5,0x10
    80005734:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005738:	30279073          	csrw	medeleg,a5
    8000573c:	30379073          	csrw	mideleg,a5
    80005740:	104027f3          	csrr	a5,sie
    80005744:	2227e793          	ori	a5,a5,546
    80005748:	10479073          	csrw	sie,a5
    8000574c:	fff00793          	li	a5,-1
    80005750:	00a7d793          	srli	a5,a5,0xa
    80005754:	3b079073          	csrw	pmpaddr0,a5
    80005758:	00f00793          	li	a5,15
    8000575c:	3a079073          	csrw	pmpcfg0,a5
    80005760:	f14027f3          	csrr	a5,mhartid
    80005764:	0200c737          	lui	a4,0x200c
    80005768:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000576c:	0007869b          	sext.w	a3,a5
    80005770:	00269713          	slli	a4,a3,0x2
    80005774:	000f4637          	lui	a2,0xf4
    80005778:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000577c:	00d70733          	add	a4,a4,a3
    80005780:	0037979b          	slliw	a5,a5,0x3
    80005784:	020046b7          	lui	a3,0x2004
    80005788:	00d787b3          	add	a5,a5,a3
    8000578c:	00c585b3          	add	a1,a1,a2
    80005790:	00371693          	slli	a3,a4,0x3
    80005794:	00009717          	auipc	a4,0x9
    80005798:	dfc70713          	addi	a4,a4,-516 # 8000e590 <timer_scratch>
    8000579c:	00b7b023          	sd	a1,0(a5)
    800057a0:	00d70733          	add	a4,a4,a3
    800057a4:	00f73c23          	sd	a5,24(a4)
    800057a8:	02c73023          	sd	a2,32(a4)
    800057ac:	34071073          	csrw	mscratch,a4
    800057b0:	00000797          	auipc	a5,0x0
    800057b4:	6e078793          	addi	a5,a5,1760 # 80005e90 <timervec>
    800057b8:	30579073          	csrw	mtvec,a5
    800057bc:	300027f3          	csrr	a5,mstatus
    800057c0:	0087e793          	ori	a5,a5,8
    800057c4:	30079073          	csrw	mstatus,a5
    800057c8:	304027f3          	csrr	a5,mie
    800057cc:	0807e793          	ori	a5,a5,128
    800057d0:	30479073          	csrw	mie,a5
    800057d4:	f14027f3          	csrr	a5,mhartid
    800057d8:	0007879b          	sext.w	a5,a5
    800057dc:	00078213          	mv	tp,a5
    800057e0:	30200073          	mret
    800057e4:	00813403          	ld	s0,8(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret

00000000800057f0 <timerinit>:
    800057f0:	ff010113          	addi	sp,sp,-16
    800057f4:	00813423          	sd	s0,8(sp)
    800057f8:	01010413          	addi	s0,sp,16
    800057fc:	f14027f3          	csrr	a5,mhartid
    80005800:	0200c737          	lui	a4,0x200c
    80005804:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005808:	0007869b          	sext.w	a3,a5
    8000580c:	00269713          	slli	a4,a3,0x2
    80005810:	000f4637          	lui	a2,0xf4
    80005814:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005818:	00d70733          	add	a4,a4,a3
    8000581c:	0037979b          	slliw	a5,a5,0x3
    80005820:	020046b7          	lui	a3,0x2004
    80005824:	00d787b3          	add	a5,a5,a3
    80005828:	00c585b3          	add	a1,a1,a2
    8000582c:	00371693          	slli	a3,a4,0x3
    80005830:	00009717          	auipc	a4,0x9
    80005834:	d6070713          	addi	a4,a4,-672 # 8000e590 <timer_scratch>
    80005838:	00b7b023          	sd	a1,0(a5)
    8000583c:	00d70733          	add	a4,a4,a3
    80005840:	00f73c23          	sd	a5,24(a4)
    80005844:	02c73023          	sd	a2,32(a4)
    80005848:	34071073          	csrw	mscratch,a4
    8000584c:	00000797          	auipc	a5,0x0
    80005850:	64478793          	addi	a5,a5,1604 # 80005e90 <timervec>
    80005854:	30579073          	csrw	mtvec,a5
    80005858:	300027f3          	csrr	a5,mstatus
    8000585c:	0087e793          	ori	a5,a5,8
    80005860:	30079073          	csrw	mstatus,a5
    80005864:	304027f3          	csrr	a5,mie
    80005868:	0807e793          	ori	a5,a5,128
    8000586c:	30479073          	csrw	mie,a5
    80005870:	00813403          	ld	s0,8(sp)
    80005874:	01010113          	addi	sp,sp,16
    80005878:	00008067          	ret

000000008000587c <system_main>:
    8000587c:	fe010113          	addi	sp,sp,-32
    80005880:	00813823          	sd	s0,16(sp)
    80005884:	00913423          	sd	s1,8(sp)
    80005888:	00113c23          	sd	ra,24(sp)
    8000588c:	02010413          	addi	s0,sp,32
    80005890:	00000097          	auipc	ra,0x0
    80005894:	0c4080e7          	jalr	196(ra) # 80005954 <cpuid>
    80005898:	00005497          	auipc	s1,0x5
    8000589c:	bd848493          	addi	s1,s1,-1064 # 8000a470 <started>
    800058a0:	02050263          	beqz	a0,800058c4 <system_main+0x48>
    800058a4:	0004a783          	lw	a5,0(s1)
    800058a8:	0007879b          	sext.w	a5,a5
    800058ac:	fe078ce3          	beqz	a5,800058a4 <system_main+0x28>
    800058b0:	0ff0000f          	fence
    800058b4:	00003517          	auipc	a0,0x3
    800058b8:	b5c50513          	addi	a0,a0,-1188 # 80008410 <CONSOLE_STATUS+0x400>
    800058bc:	00001097          	auipc	ra,0x1
    800058c0:	a70080e7          	jalr	-1424(ra) # 8000632c <panic>
    800058c4:	00001097          	auipc	ra,0x1
    800058c8:	9c4080e7          	jalr	-1596(ra) # 80006288 <consoleinit>
    800058cc:	00001097          	auipc	ra,0x1
    800058d0:	150080e7          	jalr	336(ra) # 80006a1c <printfinit>
    800058d4:	00003517          	auipc	a0,0x3
    800058d8:	80c50513          	addi	a0,a0,-2036 # 800080e0 <CONSOLE_STATUS+0xd0>
    800058dc:	00001097          	auipc	ra,0x1
    800058e0:	aac080e7          	jalr	-1364(ra) # 80006388 <__printf>
    800058e4:	00003517          	auipc	a0,0x3
    800058e8:	afc50513          	addi	a0,a0,-1284 # 800083e0 <CONSOLE_STATUS+0x3d0>
    800058ec:	00001097          	auipc	ra,0x1
    800058f0:	a9c080e7          	jalr	-1380(ra) # 80006388 <__printf>
    800058f4:	00002517          	auipc	a0,0x2
    800058f8:	7ec50513          	addi	a0,a0,2028 # 800080e0 <CONSOLE_STATUS+0xd0>
    800058fc:	00001097          	auipc	ra,0x1
    80005900:	a8c080e7          	jalr	-1396(ra) # 80006388 <__printf>
    80005904:	00001097          	auipc	ra,0x1
    80005908:	4a4080e7          	jalr	1188(ra) # 80006da8 <kinit>
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	148080e7          	jalr	328(ra) # 80005a54 <trapinit>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	16c080e7          	jalr	364(ra) # 80005a80 <trapinithart>
    8000591c:	00000097          	auipc	ra,0x0
    80005920:	5b4080e7          	jalr	1460(ra) # 80005ed0 <plicinit>
    80005924:	00000097          	auipc	ra,0x0
    80005928:	5d4080e7          	jalr	1492(ra) # 80005ef8 <plicinithart>
    8000592c:	00000097          	auipc	ra,0x0
    80005930:	078080e7          	jalr	120(ra) # 800059a4 <userinit>
    80005934:	0ff0000f          	fence
    80005938:	00100793          	li	a5,1
    8000593c:	00003517          	auipc	a0,0x3
    80005940:	abc50513          	addi	a0,a0,-1348 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80005944:	00f4a023          	sw	a5,0(s1)
    80005948:	00001097          	auipc	ra,0x1
    8000594c:	a40080e7          	jalr	-1472(ra) # 80006388 <__printf>
    80005950:	0000006f          	j	80005950 <system_main+0xd4>

0000000080005954 <cpuid>:
    80005954:	ff010113          	addi	sp,sp,-16
    80005958:	00813423          	sd	s0,8(sp)
    8000595c:	01010413          	addi	s0,sp,16
    80005960:	00020513          	mv	a0,tp
    80005964:	00813403          	ld	s0,8(sp)
    80005968:	0005051b          	sext.w	a0,a0
    8000596c:	01010113          	addi	sp,sp,16
    80005970:	00008067          	ret

0000000080005974 <mycpu>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	00020793          	mv	a5,tp
    80005984:	00813403          	ld	s0,8(sp)
    80005988:	0007879b          	sext.w	a5,a5
    8000598c:	00779793          	slli	a5,a5,0x7
    80005990:	0000a517          	auipc	a0,0xa
    80005994:	c3050513          	addi	a0,a0,-976 # 8000f5c0 <cpus>
    80005998:	00f50533          	add	a0,a0,a5
    8000599c:	01010113          	addi	sp,sp,16
    800059a0:	00008067          	ret

00000000800059a4 <userinit>:
    800059a4:	ff010113          	addi	sp,sp,-16
    800059a8:	00813423          	sd	s0,8(sp)
    800059ac:	01010413          	addi	s0,sp,16
    800059b0:	00813403          	ld	s0,8(sp)
    800059b4:	01010113          	addi	sp,sp,16
    800059b8:	ffffe317          	auipc	t1,0xffffe
    800059bc:	8d430067          	jr	-1836(t1) # 8000328c <main>

00000000800059c0 <either_copyout>:
    800059c0:	ff010113          	addi	sp,sp,-16
    800059c4:	00813023          	sd	s0,0(sp)
    800059c8:	00113423          	sd	ra,8(sp)
    800059cc:	01010413          	addi	s0,sp,16
    800059d0:	02051663          	bnez	a0,800059fc <either_copyout+0x3c>
    800059d4:	00058513          	mv	a0,a1
    800059d8:	00060593          	mv	a1,a2
    800059dc:	0006861b          	sext.w	a2,a3
    800059e0:	00002097          	auipc	ra,0x2
    800059e4:	c54080e7          	jalr	-940(ra) # 80007634 <__memmove>
    800059e8:	00813083          	ld	ra,8(sp)
    800059ec:	00013403          	ld	s0,0(sp)
    800059f0:	00000513          	li	a0,0
    800059f4:	01010113          	addi	sp,sp,16
    800059f8:	00008067          	ret
    800059fc:	00003517          	auipc	a0,0x3
    80005a00:	a3c50513          	addi	a0,a0,-1476 # 80008438 <CONSOLE_STATUS+0x428>
    80005a04:	00001097          	auipc	ra,0x1
    80005a08:	928080e7          	jalr	-1752(ra) # 8000632c <panic>

0000000080005a0c <either_copyin>:
    80005a0c:	ff010113          	addi	sp,sp,-16
    80005a10:	00813023          	sd	s0,0(sp)
    80005a14:	00113423          	sd	ra,8(sp)
    80005a18:	01010413          	addi	s0,sp,16
    80005a1c:	02059463          	bnez	a1,80005a44 <either_copyin+0x38>
    80005a20:	00060593          	mv	a1,a2
    80005a24:	0006861b          	sext.w	a2,a3
    80005a28:	00002097          	auipc	ra,0x2
    80005a2c:	c0c080e7          	jalr	-1012(ra) # 80007634 <__memmove>
    80005a30:	00813083          	ld	ra,8(sp)
    80005a34:	00013403          	ld	s0,0(sp)
    80005a38:	00000513          	li	a0,0
    80005a3c:	01010113          	addi	sp,sp,16
    80005a40:	00008067          	ret
    80005a44:	00003517          	auipc	a0,0x3
    80005a48:	a1c50513          	addi	a0,a0,-1508 # 80008460 <CONSOLE_STATUS+0x450>
    80005a4c:	00001097          	auipc	ra,0x1
    80005a50:	8e0080e7          	jalr	-1824(ra) # 8000632c <panic>

0000000080005a54 <trapinit>:
    80005a54:	ff010113          	addi	sp,sp,-16
    80005a58:	00813423          	sd	s0,8(sp)
    80005a5c:	01010413          	addi	s0,sp,16
    80005a60:	00813403          	ld	s0,8(sp)
    80005a64:	00003597          	auipc	a1,0x3
    80005a68:	a2458593          	addi	a1,a1,-1500 # 80008488 <CONSOLE_STATUS+0x478>
    80005a6c:	0000a517          	auipc	a0,0xa
    80005a70:	bd450513          	addi	a0,a0,-1068 # 8000f640 <tickslock>
    80005a74:	01010113          	addi	sp,sp,16
    80005a78:	00001317          	auipc	t1,0x1
    80005a7c:	5c030067          	jr	1472(t1) # 80007038 <initlock>

0000000080005a80 <trapinithart>:
    80005a80:	ff010113          	addi	sp,sp,-16
    80005a84:	00813423          	sd	s0,8(sp)
    80005a88:	01010413          	addi	s0,sp,16
    80005a8c:	00000797          	auipc	a5,0x0
    80005a90:	2f478793          	addi	a5,a5,756 # 80005d80 <kernelvec>
    80005a94:	10579073          	csrw	stvec,a5
    80005a98:	00813403          	ld	s0,8(sp)
    80005a9c:	01010113          	addi	sp,sp,16
    80005aa0:	00008067          	ret

0000000080005aa4 <usertrap>:
    80005aa4:	ff010113          	addi	sp,sp,-16
    80005aa8:	00813423          	sd	s0,8(sp)
    80005aac:	01010413          	addi	s0,sp,16
    80005ab0:	00813403          	ld	s0,8(sp)
    80005ab4:	01010113          	addi	sp,sp,16
    80005ab8:	00008067          	ret

0000000080005abc <usertrapret>:
    80005abc:	ff010113          	addi	sp,sp,-16
    80005ac0:	00813423          	sd	s0,8(sp)
    80005ac4:	01010413          	addi	s0,sp,16
    80005ac8:	00813403          	ld	s0,8(sp)
    80005acc:	01010113          	addi	sp,sp,16
    80005ad0:	00008067          	ret

0000000080005ad4 <kerneltrap>:
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00813823          	sd	s0,16(sp)
    80005adc:	00113c23          	sd	ra,24(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	02010413          	addi	s0,sp,32
    80005ae8:	142025f3          	csrr	a1,scause
    80005aec:	100027f3          	csrr	a5,sstatus
    80005af0:	0027f793          	andi	a5,a5,2
    80005af4:	10079c63          	bnez	a5,80005c0c <kerneltrap+0x138>
    80005af8:	142027f3          	csrr	a5,scause
    80005afc:	0207ce63          	bltz	a5,80005b38 <kerneltrap+0x64>
    80005b00:	00003517          	auipc	a0,0x3
    80005b04:	9d050513          	addi	a0,a0,-1584 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005b08:	00001097          	auipc	ra,0x1
    80005b0c:	880080e7          	jalr	-1920(ra) # 80006388 <__printf>
    80005b10:	141025f3          	csrr	a1,sepc
    80005b14:	14302673          	csrr	a2,stval
    80005b18:	00003517          	auipc	a0,0x3
    80005b1c:	9c850513          	addi	a0,a0,-1592 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005b20:	00001097          	auipc	ra,0x1
    80005b24:	868080e7          	jalr	-1944(ra) # 80006388 <__printf>
    80005b28:	00003517          	auipc	a0,0x3
    80005b2c:	9d050513          	addi	a0,a0,-1584 # 800084f8 <CONSOLE_STATUS+0x4e8>
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	7fc080e7          	jalr	2044(ra) # 8000632c <panic>
    80005b38:	0ff7f713          	andi	a4,a5,255
    80005b3c:	00900693          	li	a3,9
    80005b40:	04d70063          	beq	a4,a3,80005b80 <kerneltrap+0xac>
    80005b44:	fff00713          	li	a4,-1
    80005b48:	03f71713          	slli	a4,a4,0x3f
    80005b4c:	00170713          	addi	a4,a4,1
    80005b50:	fae798e3          	bne	a5,a4,80005b00 <kerneltrap+0x2c>
    80005b54:	00000097          	auipc	ra,0x0
    80005b58:	e00080e7          	jalr	-512(ra) # 80005954 <cpuid>
    80005b5c:	06050663          	beqz	a0,80005bc8 <kerneltrap+0xf4>
    80005b60:	144027f3          	csrr	a5,sip
    80005b64:	ffd7f793          	andi	a5,a5,-3
    80005b68:	14479073          	csrw	sip,a5
    80005b6c:	01813083          	ld	ra,24(sp)
    80005b70:	01013403          	ld	s0,16(sp)
    80005b74:	00813483          	ld	s1,8(sp)
    80005b78:	02010113          	addi	sp,sp,32
    80005b7c:	00008067          	ret
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	3c4080e7          	jalr	964(ra) # 80005f44 <plic_claim>
    80005b88:	00a00793          	li	a5,10
    80005b8c:	00050493          	mv	s1,a0
    80005b90:	06f50863          	beq	a0,a5,80005c00 <kerneltrap+0x12c>
    80005b94:	fc050ce3          	beqz	a0,80005b6c <kerneltrap+0x98>
    80005b98:	00050593          	mv	a1,a0
    80005b9c:	00003517          	auipc	a0,0x3
    80005ba0:	91450513          	addi	a0,a0,-1772 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	7e4080e7          	jalr	2020(ra) # 80006388 <__printf>
    80005bac:	01013403          	ld	s0,16(sp)
    80005bb0:	01813083          	ld	ra,24(sp)
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	00813483          	ld	s1,8(sp)
    80005bbc:	02010113          	addi	sp,sp,32
    80005bc0:	00000317          	auipc	t1,0x0
    80005bc4:	3bc30067          	jr	956(t1) # 80005f7c <plic_complete>
    80005bc8:	0000a517          	auipc	a0,0xa
    80005bcc:	a7850513          	addi	a0,a0,-1416 # 8000f640 <tickslock>
    80005bd0:	00001097          	auipc	ra,0x1
    80005bd4:	48c080e7          	jalr	1164(ra) # 8000705c <acquire>
    80005bd8:	00005717          	auipc	a4,0x5
    80005bdc:	89c70713          	addi	a4,a4,-1892 # 8000a474 <ticks>
    80005be0:	00072783          	lw	a5,0(a4)
    80005be4:	0000a517          	auipc	a0,0xa
    80005be8:	a5c50513          	addi	a0,a0,-1444 # 8000f640 <tickslock>
    80005bec:	0017879b          	addiw	a5,a5,1
    80005bf0:	00f72023          	sw	a5,0(a4)
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	534080e7          	jalr	1332(ra) # 80007128 <release>
    80005bfc:	f65ff06f          	j	80005b60 <kerneltrap+0x8c>
    80005c00:	00001097          	auipc	ra,0x1
    80005c04:	090080e7          	jalr	144(ra) # 80006c90 <uartintr>
    80005c08:	fa5ff06f          	j	80005bac <kerneltrap+0xd8>
    80005c0c:	00003517          	auipc	a0,0x3
    80005c10:	88450513          	addi	a0,a0,-1916 # 80008490 <CONSOLE_STATUS+0x480>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	718080e7          	jalr	1816(ra) # 8000632c <panic>

0000000080005c1c <clockintr>:
    80005c1c:	fe010113          	addi	sp,sp,-32
    80005c20:	00813823          	sd	s0,16(sp)
    80005c24:	00913423          	sd	s1,8(sp)
    80005c28:	00113c23          	sd	ra,24(sp)
    80005c2c:	02010413          	addi	s0,sp,32
    80005c30:	0000a497          	auipc	s1,0xa
    80005c34:	a1048493          	addi	s1,s1,-1520 # 8000f640 <tickslock>
    80005c38:	00048513          	mv	a0,s1
    80005c3c:	00001097          	auipc	ra,0x1
    80005c40:	420080e7          	jalr	1056(ra) # 8000705c <acquire>
    80005c44:	00005717          	auipc	a4,0x5
    80005c48:	83070713          	addi	a4,a4,-2000 # 8000a474 <ticks>
    80005c4c:	00072783          	lw	a5,0(a4)
    80005c50:	01013403          	ld	s0,16(sp)
    80005c54:	01813083          	ld	ra,24(sp)
    80005c58:	00048513          	mv	a0,s1
    80005c5c:	0017879b          	addiw	a5,a5,1
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	00f72023          	sw	a5,0(a4)
    80005c68:	02010113          	addi	sp,sp,32
    80005c6c:	00001317          	auipc	t1,0x1
    80005c70:	4bc30067          	jr	1212(t1) # 80007128 <release>

0000000080005c74 <devintr>:
    80005c74:	142027f3          	csrr	a5,scause
    80005c78:	00000513          	li	a0,0
    80005c7c:	0007c463          	bltz	a5,80005c84 <devintr+0x10>
    80005c80:	00008067          	ret
    80005c84:	fe010113          	addi	sp,sp,-32
    80005c88:	00813823          	sd	s0,16(sp)
    80005c8c:	00113c23          	sd	ra,24(sp)
    80005c90:	00913423          	sd	s1,8(sp)
    80005c94:	02010413          	addi	s0,sp,32
    80005c98:	0ff7f713          	andi	a4,a5,255
    80005c9c:	00900693          	li	a3,9
    80005ca0:	04d70c63          	beq	a4,a3,80005cf8 <devintr+0x84>
    80005ca4:	fff00713          	li	a4,-1
    80005ca8:	03f71713          	slli	a4,a4,0x3f
    80005cac:	00170713          	addi	a4,a4,1
    80005cb0:	00e78c63          	beq	a5,a4,80005cc8 <devintr+0x54>
    80005cb4:	01813083          	ld	ra,24(sp)
    80005cb8:	01013403          	ld	s0,16(sp)
    80005cbc:	00813483          	ld	s1,8(sp)
    80005cc0:	02010113          	addi	sp,sp,32
    80005cc4:	00008067          	ret
    80005cc8:	00000097          	auipc	ra,0x0
    80005ccc:	c8c080e7          	jalr	-884(ra) # 80005954 <cpuid>
    80005cd0:	06050663          	beqz	a0,80005d3c <devintr+0xc8>
    80005cd4:	144027f3          	csrr	a5,sip
    80005cd8:	ffd7f793          	andi	a5,a5,-3
    80005cdc:	14479073          	csrw	sip,a5
    80005ce0:	01813083          	ld	ra,24(sp)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	00813483          	ld	s1,8(sp)
    80005cec:	00200513          	li	a0,2
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	24c080e7          	jalr	588(ra) # 80005f44 <plic_claim>
    80005d00:	00a00793          	li	a5,10
    80005d04:	00050493          	mv	s1,a0
    80005d08:	06f50663          	beq	a0,a5,80005d74 <devintr+0x100>
    80005d0c:	00100513          	li	a0,1
    80005d10:	fa0482e3          	beqz	s1,80005cb4 <devintr+0x40>
    80005d14:	00048593          	mv	a1,s1
    80005d18:	00002517          	auipc	a0,0x2
    80005d1c:	79850513          	addi	a0,a0,1944 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	668080e7          	jalr	1640(ra) # 80006388 <__printf>
    80005d28:	00048513          	mv	a0,s1
    80005d2c:	00000097          	auipc	ra,0x0
    80005d30:	250080e7          	jalr	592(ra) # 80005f7c <plic_complete>
    80005d34:	00100513          	li	a0,1
    80005d38:	f7dff06f          	j	80005cb4 <devintr+0x40>
    80005d3c:	0000a517          	auipc	a0,0xa
    80005d40:	90450513          	addi	a0,a0,-1788 # 8000f640 <tickslock>
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	318080e7          	jalr	792(ra) # 8000705c <acquire>
    80005d4c:	00004717          	auipc	a4,0x4
    80005d50:	72870713          	addi	a4,a4,1832 # 8000a474 <ticks>
    80005d54:	00072783          	lw	a5,0(a4)
    80005d58:	0000a517          	auipc	a0,0xa
    80005d5c:	8e850513          	addi	a0,a0,-1816 # 8000f640 <tickslock>
    80005d60:	0017879b          	addiw	a5,a5,1
    80005d64:	00f72023          	sw	a5,0(a4)
    80005d68:	00001097          	auipc	ra,0x1
    80005d6c:	3c0080e7          	jalr	960(ra) # 80007128 <release>
    80005d70:	f65ff06f          	j	80005cd4 <devintr+0x60>
    80005d74:	00001097          	auipc	ra,0x1
    80005d78:	f1c080e7          	jalr	-228(ra) # 80006c90 <uartintr>
    80005d7c:	fadff06f          	j	80005d28 <devintr+0xb4>

0000000080005d80 <kernelvec>:
    80005d80:	f0010113          	addi	sp,sp,-256
    80005d84:	00113023          	sd	ra,0(sp)
    80005d88:	00213423          	sd	sp,8(sp)
    80005d8c:	00313823          	sd	gp,16(sp)
    80005d90:	00413c23          	sd	tp,24(sp)
    80005d94:	02513023          	sd	t0,32(sp)
    80005d98:	02613423          	sd	t1,40(sp)
    80005d9c:	02713823          	sd	t2,48(sp)
    80005da0:	02813c23          	sd	s0,56(sp)
    80005da4:	04913023          	sd	s1,64(sp)
    80005da8:	04a13423          	sd	a0,72(sp)
    80005dac:	04b13823          	sd	a1,80(sp)
    80005db0:	04c13c23          	sd	a2,88(sp)
    80005db4:	06d13023          	sd	a3,96(sp)
    80005db8:	06e13423          	sd	a4,104(sp)
    80005dbc:	06f13823          	sd	a5,112(sp)
    80005dc0:	07013c23          	sd	a6,120(sp)
    80005dc4:	09113023          	sd	a7,128(sp)
    80005dc8:	09213423          	sd	s2,136(sp)
    80005dcc:	09313823          	sd	s3,144(sp)
    80005dd0:	09413c23          	sd	s4,152(sp)
    80005dd4:	0b513023          	sd	s5,160(sp)
    80005dd8:	0b613423          	sd	s6,168(sp)
    80005ddc:	0b713823          	sd	s7,176(sp)
    80005de0:	0b813c23          	sd	s8,184(sp)
    80005de4:	0d913023          	sd	s9,192(sp)
    80005de8:	0da13423          	sd	s10,200(sp)
    80005dec:	0db13823          	sd	s11,208(sp)
    80005df0:	0dc13c23          	sd	t3,216(sp)
    80005df4:	0fd13023          	sd	t4,224(sp)
    80005df8:	0fe13423          	sd	t5,232(sp)
    80005dfc:	0ff13823          	sd	t6,240(sp)
    80005e00:	cd5ff0ef          	jal	ra,80005ad4 <kerneltrap>
    80005e04:	00013083          	ld	ra,0(sp)
    80005e08:	00813103          	ld	sp,8(sp)
    80005e0c:	01013183          	ld	gp,16(sp)
    80005e10:	02013283          	ld	t0,32(sp)
    80005e14:	02813303          	ld	t1,40(sp)
    80005e18:	03013383          	ld	t2,48(sp)
    80005e1c:	03813403          	ld	s0,56(sp)
    80005e20:	04013483          	ld	s1,64(sp)
    80005e24:	04813503          	ld	a0,72(sp)
    80005e28:	05013583          	ld	a1,80(sp)
    80005e2c:	05813603          	ld	a2,88(sp)
    80005e30:	06013683          	ld	a3,96(sp)
    80005e34:	06813703          	ld	a4,104(sp)
    80005e38:	07013783          	ld	a5,112(sp)
    80005e3c:	07813803          	ld	a6,120(sp)
    80005e40:	08013883          	ld	a7,128(sp)
    80005e44:	08813903          	ld	s2,136(sp)
    80005e48:	09013983          	ld	s3,144(sp)
    80005e4c:	09813a03          	ld	s4,152(sp)
    80005e50:	0a013a83          	ld	s5,160(sp)
    80005e54:	0a813b03          	ld	s6,168(sp)
    80005e58:	0b013b83          	ld	s7,176(sp)
    80005e5c:	0b813c03          	ld	s8,184(sp)
    80005e60:	0c013c83          	ld	s9,192(sp)
    80005e64:	0c813d03          	ld	s10,200(sp)
    80005e68:	0d013d83          	ld	s11,208(sp)
    80005e6c:	0d813e03          	ld	t3,216(sp)
    80005e70:	0e013e83          	ld	t4,224(sp)
    80005e74:	0e813f03          	ld	t5,232(sp)
    80005e78:	0f013f83          	ld	t6,240(sp)
    80005e7c:	10010113          	addi	sp,sp,256
    80005e80:	10200073          	sret
    80005e84:	00000013          	nop
    80005e88:	00000013          	nop
    80005e8c:	00000013          	nop

0000000080005e90 <timervec>:
    80005e90:	34051573          	csrrw	a0,mscratch,a0
    80005e94:	00b53023          	sd	a1,0(a0)
    80005e98:	00c53423          	sd	a2,8(a0)
    80005e9c:	00d53823          	sd	a3,16(a0)
    80005ea0:	01853583          	ld	a1,24(a0)
    80005ea4:	02053603          	ld	a2,32(a0)
    80005ea8:	0005b683          	ld	a3,0(a1)
    80005eac:	00c686b3          	add	a3,a3,a2
    80005eb0:	00d5b023          	sd	a3,0(a1)
    80005eb4:	00200593          	li	a1,2
    80005eb8:	14459073          	csrw	sip,a1
    80005ebc:	01053683          	ld	a3,16(a0)
    80005ec0:	00853603          	ld	a2,8(a0)
    80005ec4:	00053583          	ld	a1,0(a0)
    80005ec8:	34051573          	csrrw	a0,mscratch,a0
    80005ecc:	30200073          	mret

0000000080005ed0 <plicinit>:
    80005ed0:	ff010113          	addi	sp,sp,-16
    80005ed4:	00813423          	sd	s0,8(sp)
    80005ed8:	01010413          	addi	s0,sp,16
    80005edc:	00813403          	ld	s0,8(sp)
    80005ee0:	0c0007b7          	lui	a5,0xc000
    80005ee4:	00100713          	li	a4,1
    80005ee8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005eec:	00e7a223          	sw	a4,4(a5)
    80005ef0:	01010113          	addi	sp,sp,16
    80005ef4:	00008067          	ret

0000000080005ef8 <plicinithart>:
    80005ef8:	ff010113          	addi	sp,sp,-16
    80005efc:	00813023          	sd	s0,0(sp)
    80005f00:	00113423          	sd	ra,8(sp)
    80005f04:	01010413          	addi	s0,sp,16
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	a4c080e7          	jalr	-1460(ra) # 80005954 <cpuid>
    80005f10:	0085171b          	slliw	a4,a0,0x8
    80005f14:	0c0027b7          	lui	a5,0xc002
    80005f18:	00e787b3          	add	a5,a5,a4
    80005f1c:	40200713          	li	a4,1026
    80005f20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005f24:	00813083          	ld	ra,8(sp)
    80005f28:	00013403          	ld	s0,0(sp)
    80005f2c:	00d5151b          	slliw	a0,a0,0xd
    80005f30:	0c2017b7          	lui	a5,0xc201
    80005f34:	00a78533          	add	a0,a5,a0
    80005f38:	00052023          	sw	zero,0(a0)
    80005f3c:	01010113          	addi	sp,sp,16
    80005f40:	00008067          	ret

0000000080005f44 <plic_claim>:
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00813023          	sd	s0,0(sp)
    80005f4c:	00113423          	sd	ra,8(sp)
    80005f50:	01010413          	addi	s0,sp,16
    80005f54:	00000097          	auipc	ra,0x0
    80005f58:	a00080e7          	jalr	-1536(ra) # 80005954 <cpuid>
    80005f5c:	00813083          	ld	ra,8(sp)
    80005f60:	00013403          	ld	s0,0(sp)
    80005f64:	00d5151b          	slliw	a0,a0,0xd
    80005f68:	0c2017b7          	lui	a5,0xc201
    80005f6c:	00a78533          	add	a0,a5,a0
    80005f70:	00452503          	lw	a0,4(a0)
    80005f74:	01010113          	addi	sp,sp,16
    80005f78:	00008067          	ret

0000000080005f7c <plic_complete>:
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00913423          	sd	s1,8(sp)
    80005f88:	00113c23          	sd	ra,24(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	00050493          	mv	s1,a0
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	9c0080e7          	jalr	-1600(ra) # 80005954 <cpuid>
    80005f9c:	01813083          	ld	ra,24(sp)
    80005fa0:	01013403          	ld	s0,16(sp)
    80005fa4:	00d5179b          	slliw	a5,a0,0xd
    80005fa8:	0c201737          	lui	a4,0xc201
    80005fac:	00f707b3          	add	a5,a4,a5
    80005fb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005fb4:	00813483          	ld	s1,8(sp)
    80005fb8:	02010113          	addi	sp,sp,32
    80005fbc:	00008067          	ret

0000000080005fc0 <consolewrite>:
    80005fc0:	fb010113          	addi	sp,sp,-80
    80005fc4:	04813023          	sd	s0,64(sp)
    80005fc8:	04113423          	sd	ra,72(sp)
    80005fcc:	02913c23          	sd	s1,56(sp)
    80005fd0:	03213823          	sd	s2,48(sp)
    80005fd4:	03313423          	sd	s3,40(sp)
    80005fd8:	03413023          	sd	s4,32(sp)
    80005fdc:	01513c23          	sd	s5,24(sp)
    80005fe0:	05010413          	addi	s0,sp,80
    80005fe4:	06c05c63          	blez	a2,8000605c <consolewrite+0x9c>
    80005fe8:	00060993          	mv	s3,a2
    80005fec:	00050a13          	mv	s4,a0
    80005ff0:	00058493          	mv	s1,a1
    80005ff4:	00000913          	li	s2,0
    80005ff8:	fff00a93          	li	s5,-1
    80005ffc:	01c0006f          	j	80006018 <consolewrite+0x58>
    80006000:	fbf44503          	lbu	a0,-65(s0)
    80006004:	0019091b          	addiw	s2,s2,1
    80006008:	00148493          	addi	s1,s1,1
    8000600c:	00001097          	auipc	ra,0x1
    80006010:	a9c080e7          	jalr	-1380(ra) # 80006aa8 <uartputc>
    80006014:	03298063          	beq	s3,s2,80006034 <consolewrite+0x74>
    80006018:	00048613          	mv	a2,s1
    8000601c:	00100693          	li	a3,1
    80006020:	000a0593          	mv	a1,s4
    80006024:	fbf40513          	addi	a0,s0,-65
    80006028:	00000097          	auipc	ra,0x0
    8000602c:	9e4080e7          	jalr	-1564(ra) # 80005a0c <either_copyin>
    80006030:	fd5518e3          	bne	a0,s5,80006000 <consolewrite+0x40>
    80006034:	04813083          	ld	ra,72(sp)
    80006038:	04013403          	ld	s0,64(sp)
    8000603c:	03813483          	ld	s1,56(sp)
    80006040:	02813983          	ld	s3,40(sp)
    80006044:	02013a03          	ld	s4,32(sp)
    80006048:	01813a83          	ld	s5,24(sp)
    8000604c:	00090513          	mv	a0,s2
    80006050:	03013903          	ld	s2,48(sp)
    80006054:	05010113          	addi	sp,sp,80
    80006058:	00008067          	ret
    8000605c:	00000913          	li	s2,0
    80006060:	fd5ff06f          	j	80006034 <consolewrite+0x74>

0000000080006064 <consoleread>:
    80006064:	f9010113          	addi	sp,sp,-112
    80006068:	06813023          	sd	s0,96(sp)
    8000606c:	04913c23          	sd	s1,88(sp)
    80006070:	05213823          	sd	s2,80(sp)
    80006074:	05313423          	sd	s3,72(sp)
    80006078:	05413023          	sd	s4,64(sp)
    8000607c:	03513c23          	sd	s5,56(sp)
    80006080:	03613823          	sd	s6,48(sp)
    80006084:	03713423          	sd	s7,40(sp)
    80006088:	03813023          	sd	s8,32(sp)
    8000608c:	06113423          	sd	ra,104(sp)
    80006090:	01913c23          	sd	s9,24(sp)
    80006094:	07010413          	addi	s0,sp,112
    80006098:	00060b93          	mv	s7,a2
    8000609c:	00050913          	mv	s2,a0
    800060a0:	00058c13          	mv	s8,a1
    800060a4:	00060b1b          	sext.w	s6,a2
    800060a8:	00009497          	auipc	s1,0x9
    800060ac:	5c048493          	addi	s1,s1,1472 # 8000f668 <cons>
    800060b0:	00400993          	li	s3,4
    800060b4:	fff00a13          	li	s4,-1
    800060b8:	00a00a93          	li	s5,10
    800060bc:	05705e63          	blez	s7,80006118 <consoleread+0xb4>
    800060c0:	09c4a703          	lw	a4,156(s1)
    800060c4:	0984a783          	lw	a5,152(s1)
    800060c8:	0007071b          	sext.w	a4,a4
    800060cc:	08e78463          	beq	a5,a4,80006154 <consoleread+0xf0>
    800060d0:	07f7f713          	andi	a4,a5,127
    800060d4:	00e48733          	add	a4,s1,a4
    800060d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800060dc:	0017869b          	addiw	a3,a5,1
    800060e0:	08d4ac23          	sw	a3,152(s1)
    800060e4:	00070c9b          	sext.w	s9,a4
    800060e8:	0b370663          	beq	a4,s3,80006194 <consoleread+0x130>
    800060ec:	00100693          	li	a3,1
    800060f0:	f9f40613          	addi	a2,s0,-97
    800060f4:	000c0593          	mv	a1,s8
    800060f8:	00090513          	mv	a0,s2
    800060fc:	f8e40fa3          	sb	a4,-97(s0)
    80006100:	00000097          	auipc	ra,0x0
    80006104:	8c0080e7          	jalr	-1856(ra) # 800059c0 <either_copyout>
    80006108:	01450863          	beq	a0,s4,80006118 <consoleread+0xb4>
    8000610c:	001c0c13          	addi	s8,s8,1
    80006110:	fffb8b9b          	addiw	s7,s7,-1
    80006114:	fb5c94e3          	bne	s9,s5,800060bc <consoleread+0x58>
    80006118:	000b851b          	sext.w	a0,s7
    8000611c:	06813083          	ld	ra,104(sp)
    80006120:	06013403          	ld	s0,96(sp)
    80006124:	05813483          	ld	s1,88(sp)
    80006128:	05013903          	ld	s2,80(sp)
    8000612c:	04813983          	ld	s3,72(sp)
    80006130:	04013a03          	ld	s4,64(sp)
    80006134:	03813a83          	ld	s5,56(sp)
    80006138:	02813b83          	ld	s7,40(sp)
    8000613c:	02013c03          	ld	s8,32(sp)
    80006140:	01813c83          	ld	s9,24(sp)
    80006144:	40ab053b          	subw	a0,s6,a0
    80006148:	03013b03          	ld	s6,48(sp)
    8000614c:	07010113          	addi	sp,sp,112
    80006150:	00008067          	ret
    80006154:	00001097          	auipc	ra,0x1
    80006158:	1d8080e7          	jalr	472(ra) # 8000732c <push_on>
    8000615c:	0984a703          	lw	a4,152(s1)
    80006160:	09c4a783          	lw	a5,156(s1)
    80006164:	0007879b          	sext.w	a5,a5
    80006168:	fef70ce3          	beq	a4,a5,80006160 <consoleread+0xfc>
    8000616c:	00001097          	auipc	ra,0x1
    80006170:	234080e7          	jalr	564(ra) # 800073a0 <pop_on>
    80006174:	0984a783          	lw	a5,152(s1)
    80006178:	07f7f713          	andi	a4,a5,127
    8000617c:	00e48733          	add	a4,s1,a4
    80006180:	01874703          	lbu	a4,24(a4)
    80006184:	0017869b          	addiw	a3,a5,1
    80006188:	08d4ac23          	sw	a3,152(s1)
    8000618c:	00070c9b          	sext.w	s9,a4
    80006190:	f5371ee3          	bne	a4,s3,800060ec <consoleread+0x88>
    80006194:	000b851b          	sext.w	a0,s7
    80006198:	f96bf2e3          	bgeu	s7,s6,8000611c <consoleread+0xb8>
    8000619c:	08f4ac23          	sw	a5,152(s1)
    800061a0:	f7dff06f          	j	8000611c <consoleread+0xb8>

00000000800061a4 <consputc>:
    800061a4:	10000793          	li	a5,256
    800061a8:	00f50663          	beq	a0,a5,800061b4 <consputc+0x10>
    800061ac:	00001317          	auipc	t1,0x1
    800061b0:	9f430067          	jr	-1548(t1) # 80006ba0 <uartputc_sync>
    800061b4:	ff010113          	addi	sp,sp,-16
    800061b8:	00113423          	sd	ra,8(sp)
    800061bc:	00813023          	sd	s0,0(sp)
    800061c0:	01010413          	addi	s0,sp,16
    800061c4:	00800513          	li	a0,8
    800061c8:	00001097          	auipc	ra,0x1
    800061cc:	9d8080e7          	jalr	-1576(ra) # 80006ba0 <uartputc_sync>
    800061d0:	02000513          	li	a0,32
    800061d4:	00001097          	auipc	ra,0x1
    800061d8:	9cc080e7          	jalr	-1588(ra) # 80006ba0 <uartputc_sync>
    800061dc:	00013403          	ld	s0,0(sp)
    800061e0:	00813083          	ld	ra,8(sp)
    800061e4:	00800513          	li	a0,8
    800061e8:	01010113          	addi	sp,sp,16
    800061ec:	00001317          	auipc	t1,0x1
    800061f0:	9b430067          	jr	-1612(t1) # 80006ba0 <uartputc_sync>

00000000800061f4 <consoleintr>:
    800061f4:	fe010113          	addi	sp,sp,-32
    800061f8:	00813823          	sd	s0,16(sp)
    800061fc:	00913423          	sd	s1,8(sp)
    80006200:	01213023          	sd	s2,0(sp)
    80006204:	00113c23          	sd	ra,24(sp)
    80006208:	02010413          	addi	s0,sp,32
    8000620c:	00009917          	auipc	s2,0x9
    80006210:	45c90913          	addi	s2,s2,1116 # 8000f668 <cons>
    80006214:	00050493          	mv	s1,a0
    80006218:	00090513          	mv	a0,s2
    8000621c:	00001097          	auipc	ra,0x1
    80006220:	e40080e7          	jalr	-448(ra) # 8000705c <acquire>
    80006224:	02048c63          	beqz	s1,8000625c <consoleintr+0x68>
    80006228:	0a092783          	lw	a5,160(s2)
    8000622c:	09892703          	lw	a4,152(s2)
    80006230:	07f00693          	li	a3,127
    80006234:	40e7873b          	subw	a4,a5,a4
    80006238:	02e6e263          	bltu	a3,a4,8000625c <consoleintr+0x68>
    8000623c:	00d00713          	li	a4,13
    80006240:	04e48063          	beq	s1,a4,80006280 <consoleintr+0x8c>
    80006244:	07f7f713          	andi	a4,a5,127
    80006248:	00e90733          	add	a4,s2,a4
    8000624c:	0017879b          	addiw	a5,a5,1
    80006250:	0af92023          	sw	a5,160(s2)
    80006254:	00970c23          	sb	s1,24(a4)
    80006258:	08f92e23          	sw	a5,156(s2)
    8000625c:	01013403          	ld	s0,16(sp)
    80006260:	01813083          	ld	ra,24(sp)
    80006264:	00813483          	ld	s1,8(sp)
    80006268:	00013903          	ld	s2,0(sp)
    8000626c:	00009517          	auipc	a0,0x9
    80006270:	3fc50513          	addi	a0,a0,1020 # 8000f668 <cons>
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00001317          	auipc	t1,0x1
    8000627c:	eb030067          	jr	-336(t1) # 80007128 <release>
    80006280:	00a00493          	li	s1,10
    80006284:	fc1ff06f          	j	80006244 <consoleintr+0x50>

0000000080006288 <consoleinit>:
    80006288:	fe010113          	addi	sp,sp,-32
    8000628c:	00113c23          	sd	ra,24(sp)
    80006290:	00813823          	sd	s0,16(sp)
    80006294:	00913423          	sd	s1,8(sp)
    80006298:	02010413          	addi	s0,sp,32
    8000629c:	00009497          	auipc	s1,0x9
    800062a0:	3cc48493          	addi	s1,s1,972 # 8000f668 <cons>
    800062a4:	00048513          	mv	a0,s1
    800062a8:	00002597          	auipc	a1,0x2
    800062ac:	26058593          	addi	a1,a1,608 # 80008508 <CONSOLE_STATUS+0x4f8>
    800062b0:	00001097          	auipc	ra,0x1
    800062b4:	d88080e7          	jalr	-632(ra) # 80007038 <initlock>
    800062b8:	00000097          	auipc	ra,0x0
    800062bc:	7ac080e7          	jalr	1964(ra) # 80006a64 <uartinit>
    800062c0:	01813083          	ld	ra,24(sp)
    800062c4:	01013403          	ld	s0,16(sp)
    800062c8:	00000797          	auipc	a5,0x0
    800062cc:	d9c78793          	addi	a5,a5,-612 # 80006064 <consoleread>
    800062d0:	0af4bc23          	sd	a5,184(s1)
    800062d4:	00000797          	auipc	a5,0x0
    800062d8:	cec78793          	addi	a5,a5,-788 # 80005fc0 <consolewrite>
    800062dc:	0cf4b023          	sd	a5,192(s1)
    800062e0:	00813483          	ld	s1,8(sp)
    800062e4:	02010113          	addi	sp,sp,32
    800062e8:	00008067          	ret

00000000800062ec <console_read>:
    800062ec:	ff010113          	addi	sp,sp,-16
    800062f0:	00813423          	sd	s0,8(sp)
    800062f4:	01010413          	addi	s0,sp,16
    800062f8:	00813403          	ld	s0,8(sp)
    800062fc:	00009317          	auipc	t1,0x9
    80006300:	42433303          	ld	t1,1060(t1) # 8000f720 <devsw+0x10>
    80006304:	01010113          	addi	sp,sp,16
    80006308:	00030067          	jr	t1

000000008000630c <console_write>:
    8000630c:	ff010113          	addi	sp,sp,-16
    80006310:	00813423          	sd	s0,8(sp)
    80006314:	01010413          	addi	s0,sp,16
    80006318:	00813403          	ld	s0,8(sp)
    8000631c:	00009317          	auipc	t1,0x9
    80006320:	40c33303          	ld	t1,1036(t1) # 8000f728 <devsw+0x18>
    80006324:	01010113          	addi	sp,sp,16
    80006328:	00030067          	jr	t1

000000008000632c <panic>:
    8000632c:	fe010113          	addi	sp,sp,-32
    80006330:	00113c23          	sd	ra,24(sp)
    80006334:	00813823          	sd	s0,16(sp)
    80006338:	00913423          	sd	s1,8(sp)
    8000633c:	02010413          	addi	s0,sp,32
    80006340:	00050493          	mv	s1,a0
    80006344:	00002517          	auipc	a0,0x2
    80006348:	1cc50513          	addi	a0,a0,460 # 80008510 <CONSOLE_STATUS+0x500>
    8000634c:	00009797          	auipc	a5,0x9
    80006350:	4607ae23          	sw	zero,1148(a5) # 8000f7c8 <pr+0x18>
    80006354:	00000097          	auipc	ra,0x0
    80006358:	034080e7          	jalr	52(ra) # 80006388 <__printf>
    8000635c:	00048513          	mv	a0,s1
    80006360:	00000097          	auipc	ra,0x0
    80006364:	028080e7          	jalr	40(ra) # 80006388 <__printf>
    80006368:	00002517          	auipc	a0,0x2
    8000636c:	d7850513          	addi	a0,a0,-648 # 800080e0 <CONSOLE_STATUS+0xd0>
    80006370:	00000097          	auipc	ra,0x0
    80006374:	018080e7          	jalr	24(ra) # 80006388 <__printf>
    80006378:	00100793          	li	a5,1
    8000637c:	00004717          	auipc	a4,0x4
    80006380:	0ef72e23          	sw	a5,252(a4) # 8000a478 <panicked>
    80006384:	0000006f          	j	80006384 <panic+0x58>

0000000080006388 <__printf>:
    80006388:	f3010113          	addi	sp,sp,-208
    8000638c:	08813023          	sd	s0,128(sp)
    80006390:	07313423          	sd	s3,104(sp)
    80006394:	09010413          	addi	s0,sp,144
    80006398:	05813023          	sd	s8,64(sp)
    8000639c:	08113423          	sd	ra,136(sp)
    800063a0:	06913c23          	sd	s1,120(sp)
    800063a4:	07213823          	sd	s2,112(sp)
    800063a8:	07413023          	sd	s4,96(sp)
    800063ac:	05513c23          	sd	s5,88(sp)
    800063b0:	05613823          	sd	s6,80(sp)
    800063b4:	05713423          	sd	s7,72(sp)
    800063b8:	03913c23          	sd	s9,56(sp)
    800063bc:	03a13823          	sd	s10,48(sp)
    800063c0:	03b13423          	sd	s11,40(sp)
    800063c4:	00009317          	auipc	t1,0x9
    800063c8:	3ec30313          	addi	t1,t1,1004 # 8000f7b0 <pr>
    800063cc:	01832c03          	lw	s8,24(t1)
    800063d0:	00b43423          	sd	a1,8(s0)
    800063d4:	00c43823          	sd	a2,16(s0)
    800063d8:	00d43c23          	sd	a3,24(s0)
    800063dc:	02e43023          	sd	a4,32(s0)
    800063e0:	02f43423          	sd	a5,40(s0)
    800063e4:	03043823          	sd	a6,48(s0)
    800063e8:	03143c23          	sd	a7,56(s0)
    800063ec:	00050993          	mv	s3,a0
    800063f0:	4a0c1663          	bnez	s8,8000689c <__printf+0x514>
    800063f4:	60098c63          	beqz	s3,80006a0c <__printf+0x684>
    800063f8:	0009c503          	lbu	a0,0(s3)
    800063fc:	00840793          	addi	a5,s0,8
    80006400:	f6f43c23          	sd	a5,-136(s0)
    80006404:	00000493          	li	s1,0
    80006408:	22050063          	beqz	a0,80006628 <__printf+0x2a0>
    8000640c:	00002a37          	lui	s4,0x2
    80006410:	00018ab7          	lui	s5,0x18
    80006414:	000f4b37          	lui	s6,0xf4
    80006418:	00989bb7          	lui	s7,0x989
    8000641c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006420:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006424:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006428:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000642c:	00148c9b          	addiw	s9,s1,1
    80006430:	02500793          	li	a5,37
    80006434:	01998933          	add	s2,s3,s9
    80006438:	38f51263          	bne	a0,a5,800067bc <__printf+0x434>
    8000643c:	00094783          	lbu	a5,0(s2)
    80006440:	00078c9b          	sext.w	s9,a5
    80006444:	1e078263          	beqz	a5,80006628 <__printf+0x2a0>
    80006448:	0024849b          	addiw	s1,s1,2
    8000644c:	07000713          	li	a4,112
    80006450:	00998933          	add	s2,s3,s1
    80006454:	38e78a63          	beq	a5,a4,800067e8 <__printf+0x460>
    80006458:	20f76863          	bltu	a4,a5,80006668 <__printf+0x2e0>
    8000645c:	42a78863          	beq	a5,a0,8000688c <__printf+0x504>
    80006460:	06400713          	li	a4,100
    80006464:	40e79663          	bne	a5,a4,80006870 <__printf+0x4e8>
    80006468:	f7843783          	ld	a5,-136(s0)
    8000646c:	0007a603          	lw	a2,0(a5)
    80006470:	00878793          	addi	a5,a5,8
    80006474:	f6f43c23          	sd	a5,-136(s0)
    80006478:	42064a63          	bltz	a2,800068ac <__printf+0x524>
    8000647c:	00a00713          	li	a4,10
    80006480:	02e677bb          	remuw	a5,a2,a4
    80006484:	00002d97          	auipc	s11,0x2
    80006488:	0b4d8d93          	addi	s11,s11,180 # 80008538 <digits>
    8000648c:	00900593          	li	a1,9
    80006490:	0006051b          	sext.w	a0,a2
    80006494:	00000c93          	li	s9,0
    80006498:	02079793          	slli	a5,a5,0x20
    8000649c:	0207d793          	srli	a5,a5,0x20
    800064a0:	00fd87b3          	add	a5,s11,a5
    800064a4:	0007c783          	lbu	a5,0(a5)
    800064a8:	02e656bb          	divuw	a3,a2,a4
    800064ac:	f8f40023          	sb	a5,-128(s0)
    800064b0:	14c5d863          	bge	a1,a2,80006600 <__printf+0x278>
    800064b4:	06300593          	li	a1,99
    800064b8:	00100c93          	li	s9,1
    800064bc:	02e6f7bb          	remuw	a5,a3,a4
    800064c0:	02079793          	slli	a5,a5,0x20
    800064c4:	0207d793          	srli	a5,a5,0x20
    800064c8:	00fd87b3          	add	a5,s11,a5
    800064cc:	0007c783          	lbu	a5,0(a5)
    800064d0:	02e6d73b          	divuw	a4,a3,a4
    800064d4:	f8f400a3          	sb	a5,-127(s0)
    800064d8:	12a5f463          	bgeu	a1,a0,80006600 <__printf+0x278>
    800064dc:	00a00693          	li	a3,10
    800064e0:	00900593          	li	a1,9
    800064e4:	02d777bb          	remuw	a5,a4,a3
    800064e8:	02079793          	slli	a5,a5,0x20
    800064ec:	0207d793          	srli	a5,a5,0x20
    800064f0:	00fd87b3          	add	a5,s11,a5
    800064f4:	0007c503          	lbu	a0,0(a5)
    800064f8:	02d757bb          	divuw	a5,a4,a3
    800064fc:	f8a40123          	sb	a0,-126(s0)
    80006500:	48e5f263          	bgeu	a1,a4,80006984 <__printf+0x5fc>
    80006504:	06300513          	li	a0,99
    80006508:	02d7f5bb          	remuw	a1,a5,a3
    8000650c:	02059593          	slli	a1,a1,0x20
    80006510:	0205d593          	srli	a1,a1,0x20
    80006514:	00bd85b3          	add	a1,s11,a1
    80006518:	0005c583          	lbu	a1,0(a1)
    8000651c:	02d7d7bb          	divuw	a5,a5,a3
    80006520:	f8b401a3          	sb	a1,-125(s0)
    80006524:	48e57263          	bgeu	a0,a4,800069a8 <__printf+0x620>
    80006528:	3e700513          	li	a0,999
    8000652c:	02d7f5bb          	remuw	a1,a5,a3
    80006530:	02059593          	slli	a1,a1,0x20
    80006534:	0205d593          	srli	a1,a1,0x20
    80006538:	00bd85b3          	add	a1,s11,a1
    8000653c:	0005c583          	lbu	a1,0(a1)
    80006540:	02d7d7bb          	divuw	a5,a5,a3
    80006544:	f8b40223          	sb	a1,-124(s0)
    80006548:	46e57663          	bgeu	a0,a4,800069b4 <__printf+0x62c>
    8000654c:	02d7f5bb          	remuw	a1,a5,a3
    80006550:	02059593          	slli	a1,a1,0x20
    80006554:	0205d593          	srli	a1,a1,0x20
    80006558:	00bd85b3          	add	a1,s11,a1
    8000655c:	0005c583          	lbu	a1,0(a1)
    80006560:	02d7d7bb          	divuw	a5,a5,a3
    80006564:	f8b402a3          	sb	a1,-123(s0)
    80006568:	46ea7863          	bgeu	s4,a4,800069d8 <__printf+0x650>
    8000656c:	02d7f5bb          	remuw	a1,a5,a3
    80006570:	02059593          	slli	a1,a1,0x20
    80006574:	0205d593          	srli	a1,a1,0x20
    80006578:	00bd85b3          	add	a1,s11,a1
    8000657c:	0005c583          	lbu	a1,0(a1)
    80006580:	02d7d7bb          	divuw	a5,a5,a3
    80006584:	f8b40323          	sb	a1,-122(s0)
    80006588:	3eeaf863          	bgeu	s5,a4,80006978 <__printf+0x5f0>
    8000658c:	02d7f5bb          	remuw	a1,a5,a3
    80006590:	02059593          	slli	a1,a1,0x20
    80006594:	0205d593          	srli	a1,a1,0x20
    80006598:	00bd85b3          	add	a1,s11,a1
    8000659c:	0005c583          	lbu	a1,0(a1)
    800065a0:	02d7d7bb          	divuw	a5,a5,a3
    800065a4:	f8b403a3          	sb	a1,-121(s0)
    800065a8:	42eb7e63          	bgeu	s6,a4,800069e4 <__printf+0x65c>
    800065ac:	02d7f5bb          	remuw	a1,a5,a3
    800065b0:	02059593          	slli	a1,a1,0x20
    800065b4:	0205d593          	srli	a1,a1,0x20
    800065b8:	00bd85b3          	add	a1,s11,a1
    800065bc:	0005c583          	lbu	a1,0(a1)
    800065c0:	02d7d7bb          	divuw	a5,a5,a3
    800065c4:	f8b40423          	sb	a1,-120(s0)
    800065c8:	42ebfc63          	bgeu	s7,a4,80006a00 <__printf+0x678>
    800065cc:	02079793          	slli	a5,a5,0x20
    800065d0:	0207d793          	srli	a5,a5,0x20
    800065d4:	00fd8db3          	add	s11,s11,a5
    800065d8:	000dc703          	lbu	a4,0(s11)
    800065dc:	00a00793          	li	a5,10
    800065e0:	00900c93          	li	s9,9
    800065e4:	f8e404a3          	sb	a4,-119(s0)
    800065e8:	00065c63          	bgez	a2,80006600 <__printf+0x278>
    800065ec:	f9040713          	addi	a4,s0,-112
    800065f0:	00f70733          	add	a4,a4,a5
    800065f4:	02d00693          	li	a3,45
    800065f8:	fed70823          	sb	a3,-16(a4)
    800065fc:	00078c93          	mv	s9,a5
    80006600:	f8040793          	addi	a5,s0,-128
    80006604:	01978cb3          	add	s9,a5,s9
    80006608:	f7f40d13          	addi	s10,s0,-129
    8000660c:	000cc503          	lbu	a0,0(s9)
    80006610:	fffc8c93          	addi	s9,s9,-1
    80006614:	00000097          	auipc	ra,0x0
    80006618:	b90080e7          	jalr	-1136(ra) # 800061a4 <consputc>
    8000661c:	ffac98e3          	bne	s9,s10,8000660c <__printf+0x284>
    80006620:	00094503          	lbu	a0,0(s2)
    80006624:	e00514e3          	bnez	a0,8000642c <__printf+0xa4>
    80006628:	1a0c1663          	bnez	s8,800067d4 <__printf+0x44c>
    8000662c:	08813083          	ld	ra,136(sp)
    80006630:	08013403          	ld	s0,128(sp)
    80006634:	07813483          	ld	s1,120(sp)
    80006638:	07013903          	ld	s2,112(sp)
    8000663c:	06813983          	ld	s3,104(sp)
    80006640:	06013a03          	ld	s4,96(sp)
    80006644:	05813a83          	ld	s5,88(sp)
    80006648:	05013b03          	ld	s6,80(sp)
    8000664c:	04813b83          	ld	s7,72(sp)
    80006650:	04013c03          	ld	s8,64(sp)
    80006654:	03813c83          	ld	s9,56(sp)
    80006658:	03013d03          	ld	s10,48(sp)
    8000665c:	02813d83          	ld	s11,40(sp)
    80006660:	0d010113          	addi	sp,sp,208
    80006664:	00008067          	ret
    80006668:	07300713          	li	a4,115
    8000666c:	1ce78a63          	beq	a5,a4,80006840 <__printf+0x4b8>
    80006670:	07800713          	li	a4,120
    80006674:	1ee79e63          	bne	a5,a4,80006870 <__printf+0x4e8>
    80006678:	f7843783          	ld	a5,-136(s0)
    8000667c:	0007a703          	lw	a4,0(a5)
    80006680:	00878793          	addi	a5,a5,8
    80006684:	f6f43c23          	sd	a5,-136(s0)
    80006688:	28074263          	bltz	a4,8000690c <__printf+0x584>
    8000668c:	00002d97          	auipc	s11,0x2
    80006690:	eacd8d93          	addi	s11,s11,-340 # 80008538 <digits>
    80006694:	00f77793          	andi	a5,a4,15
    80006698:	00fd87b3          	add	a5,s11,a5
    8000669c:	0007c683          	lbu	a3,0(a5)
    800066a0:	00f00613          	li	a2,15
    800066a4:	0007079b          	sext.w	a5,a4
    800066a8:	f8d40023          	sb	a3,-128(s0)
    800066ac:	0047559b          	srliw	a1,a4,0x4
    800066b0:	0047569b          	srliw	a3,a4,0x4
    800066b4:	00000c93          	li	s9,0
    800066b8:	0ee65063          	bge	a2,a4,80006798 <__printf+0x410>
    800066bc:	00f6f693          	andi	a3,a3,15
    800066c0:	00dd86b3          	add	a3,s11,a3
    800066c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800066c8:	0087d79b          	srliw	a5,a5,0x8
    800066cc:	00100c93          	li	s9,1
    800066d0:	f8d400a3          	sb	a3,-127(s0)
    800066d4:	0cb67263          	bgeu	a2,a1,80006798 <__printf+0x410>
    800066d8:	00f7f693          	andi	a3,a5,15
    800066dc:	00dd86b3          	add	a3,s11,a3
    800066e0:	0006c583          	lbu	a1,0(a3)
    800066e4:	00f00613          	li	a2,15
    800066e8:	0047d69b          	srliw	a3,a5,0x4
    800066ec:	f8b40123          	sb	a1,-126(s0)
    800066f0:	0047d593          	srli	a1,a5,0x4
    800066f4:	28f67e63          	bgeu	a2,a5,80006990 <__printf+0x608>
    800066f8:	00f6f693          	andi	a3,a3,15
    800066fc:	00dd86b3          	add	a3,s11,a3
    80006700:	0006c503          	lbu	a0,0(a3)
    80006704:	0087d813          	srli	a6,a5,0x8
    80006708:	0087d69b          	srliw	a3,a5,0x8
    8000670c:	f8a401a3          	sb	a0,-125(s0)
    80006710:	28b67663          	bgeu	a2,a1,8000699c <__printf+0x614>
    80006714:	00f6f693          	andi	a3,a3,15
    80006718:	00dd86b3          	add	a3,s11,a3
    8000671c:	0006c583          	lbu	a1,0(a3)
    80006720:	00c7d513          	srli	a0,a5,0xc
    80006724:	00c7d69b          	srliw	a3,a5,0xc
    80006728:	f8b40223          	sb	a1,-124(s0)
    8000672c:	29067a63          	bgeu	a2,a6,800069c0 <__printf+0x638>
    80006730:	00f6f693          	andi	a3,a3,15
    80006734:	00dd86b3          	add	a3,s11,a3
    80006738:	0006c583          	lbu	a1,0(a3)
    8000673c:	0107d813          	srli	a6,a5,0x10
    80006740:	0107d69b          	srliw	a3,a5,0x10
    80006744:	f8b402a3          	sb	a1,-123(s0)
    80006748:	28a67263          	bgeu	a2,a0,800069cc <__printf+0x644>
    8000674c:	00f6f693          	andi	a3,a3,15
    80006750:	00dd86b3          	add	a3,s11,a3
    80006754:	0006c683          	lbu	a3,0(a3)
    80006758:	0147d79b          	srliw	a5,a5,0x14
    8000675c:	f8d40323          	sb	a3,-122(s0)
    80006760:	21067663          	bgeu	a2,a6,8000696c <__printf+0x5e4>
    80006764:	02079793          	slli	a5,a5,0x20
    80006768:	0207d793          	srli	a5,a5,0x20
    8000676c:	00fd8db3          	add	s11,s11,a5
    80006770:	000dc683          	lbu	a3,0(s11)
    80006774:	00800793          	li	a5,8
    80006778:	00700c93          	li	s9,7
    8000677c:	f8d403a3          	sb	a3,-121(s0)
    80006780:	00075c63          	bgez	a4,80006798 <__printf+0x410>
    80006784:	f9040713          	addi	a4,s0,-112
    80006788:	00f70733          	add	a4,a4,a5
    8000678c:	02d00693          	li	a3,45
    80006790:	fed70823          	sb	a3,-16(a4)
    80006794:	00078c93          	mv	s9,a5
    80006798:	f8040793          	addi	a5,s0,-128
    8000679c:	01978cb3          	add	s9,a5,s9
    800067a0:	f7f40d13          	addi	s10,s0,-129
    800067a4:	000cc503          	lbu	a0,0(s9)
    800067a8:	fffc8c93          	addi	s9,s9,-1
    800067ac:	00000097          	auipc	ra,0x0
    800067b0:	9f8080e7          	jalr	-1544(ra) # 800061a4 <consputc>
    800067b4:	ff9d18e3          	bne	s10,s9,800067a4 <__printf+0x41c>
    800067b8:	0100006f          	j	800067c8 <__printf+0x440>
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	9e8080e7          	jalr	-1560(ra) # 800061a4 <consputc>
    800067c4:	000c8493          	mv	s1,s9
    800067c8:	00094503          	lbu	a0,0(s2)
    800067cc:	c60510e3          	bnez	a0,8000642c <__printf+0xa4>
    800067d0:	e40c0ee3          	beqz	s8,8000662c <__printf+0x2a4>
    800067d4:	00009517          	auipc	a0,0x9
    800067d8:	fdc50513          	addi	a0,a0,-36 # 8000f7b0 <pr>
    800067dc:	00001097          	auipc	ra,0x1
    800067e0:	94c080e7          	jalr	-1716(ra) # 80007128 <release>
    800067e4:	e49ff06f          	j	8000662c <__printf+0x2a4>
    800067e8:	f7843783          	ld	a5,-136(s0)
    800067ec:	03000513          	li	a0,48
    800067f0:	01000d13          	li	s10,16
    800067f4:	00878713          	addi	a4,a5,8
    800067f8:	0007bc83          	ld	s9,0(a5)
    800067fc:	f6e43c23          	sd	a4,-136(s0)
    80006800:	00000097          	auipc	ra,0x0
    80006804:	9a4080e7          	jalr	-1628(ra) # 800061a4 <consputc>
    80006808:	07800513          	li	a0,120
    8000680c:	00000097          	auipc	ra,0x0
    80006810:	998080e7          	jalr	-1640(ra) # 800061a4 <consputc>
    80006814:	00002d97          	auipc	s11,0x2
    80006818:	d24d8d93          	addi	s11,s11,-732 # 80008538 <digits>
    8000681c:	03ccd793          	srli	a5,s9,0x3c
    80006820:	00fd87b3          	add	a5,s11,a5
    80006824:	0007c503          	lbu	a0,0(a5)
    80006828:	fffd0d1b          	addiw	s10,s10,-1
    8000682c:	004c9c93          	slli	s9,s9,0x4
    80006830:	00000097          	auipc	ra,0x0
    80006834:	974080e7          	jalr	-1676(ra) # 800061a4 <consputc>
    80006838:	fe0d12e3          	bnez	s10,8000681c <__printf+0x494>
    8000683c:	f8dff06f          	j	800067c8 <__printf+0x440>
    80006840:	f7843783          	ld	a5,-136(s0)
    80006844:	0007bc83          	ld	s9,0(a5)
    80006848:	00878793          	addi	a5,a5,8
    8000684c:	f6f43c23          	sd	a5,-136(s0)
    80006850:	000c9a63          	bnez	s9,80006864 <__printf+0x4dc>
    80006854:	1080006f          	j	8000695c <__printf+0x5d4>
    80006858:	001c8c93          	addi	s9,s9,1
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	948080e7          	jalr	-1720(ra) # 800061a4 <consputc>
    80006864:	000cc503          	lbu	a0,0(s9)
    80006868:	fe0518e3          	bnez	a0,80006858 <__printf+0x4d0>
    8000686c:	f5dff06f          	j	800067c8 <__printf+0x440>
    80006870:	02500513          	li	a0,37
    80006874:	00000097          	auipc	ra,0x0
    80006878:	930080e7          	jalr	-1744(ra) # 800061a4 <consputc>
    8000687c:	000c8513          	mv	a0,s9
    80006880:	00000097          	auipc	ra,0x0
    80006884:	924080e7          	jalr	-1756(ra) # 800061a4 <consputc>
    80006888:	f41ff06f          	j	800067c8 <__printf+0x440>
    8000688c:	02500513          	li	a0,37
    80006890:	00000097          	auipc	ra,0x0
    80006894:	914080e7          	jalr	-1772(ra) # 800061a4 <consputc>
    80006898:	f31ff06f          	j	800067c8 <__printf+0x440>
    8000689c:	00030513          	mv	a0,t1
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	7bc080e7          	jalr	1980(ra) # 8000705c <acquire>
    800068a8:	b4dff06f          	j	800063f4 <__printf+0x6c>
    800068ac:	40c0053b          	negw	a0,a2
    800068b0:	00a00713          	li	a4,10
    800068b4:	02e576bb          	remuw	a3,a0,a4
    800068b8:	00002d97          	auipc	s11,0x2
    800068bc:	c80d8d93          	addi	s11,s11,-896 # 80008538 <digits>
    800068c0:	ff700593          	li	a1,-9
    800068c4:	02069693          	slli	a3,a3,0x20
    800068c8:	0206d693          	srli	a3,a3,0x20
    800068cc:	00dd86b3          	add	a3,s11,a3
    800068d0:	0006c683          	lbu	a3,0(a3)
    800068d4:	02e557bb          	divuw	a5,a0,a4
    800068d8:	f8d40023          	sb	a3,-128(s0)
    800068dc:	10b65e63          	bge	a2,a1,800069f8 <__printf+0x670>
    800068e0:	06300593          	li	a1,99
    800068e4:	02e7f6bb          	remuw	a3,a5,a4
    800068e8:	02069693          	slli	a3,a3,0x20
    800068ec:	0206d693          	srli	a3,a3,0x20
    800068f0:	00dd86b3          	add	a3,s11,a3
    800068f4:	0006c683          	lbu	a3,0(a3)
    800068f8:	02e7d73b          	divuw	a4,a5,a4
    800068fc:	00200793          	li	a5,2
    80006900:	f8d400a3          	sb	a3,-127(s0)
    80006904:	bca5ece3          	bltu	a1,a0,800064dc <__printf+0x154>
    80006908:	ce5ff06f          	j	800065ec <__printf+0x264>
    8000690c:	40e007bb          	negw	a5,a4
    80006910:	00002d97          	auipc	s11,0x2
    80006914:	c28d8d93          	addi	s11,s11,-984 # 80008538 <digits>
    80006918:	00f7f693          	andi	a3,a5,15
    8000691c:	00dd86b3          	add	a3,s11,a3
    80006920:	0006c583          	lbu	a1,0(a3)
    80006924:	ff100613          	li	a2,-15
    80006928:	0047d69b          	srliw	a3,a5,0x4
    8000692c:	f8b40023          	sb	a1,-128(s0)
    80006930:	0047d59b          	srliw	a1,a5,0x4
    80006934:	0ac75e63          	bge	a4,a2,800069f0 <__printf+0x668>
    80006938:	00f6f693          	andi	a3,a3,15
    8000693c:	00dd86b3          	add	a3,s11,a3
    80006940:	0006c603          	lbu	a2,0(a3)
    80006944:	00f00693          	li	a3,15
    80006948:	0087d79b          	srliw	a5,a5,0x8
    8000694c:	f8c400a3          	sb	a2,-127(s0)
    80006950:	d8b6e4e3          	bltu	a3,a1,800066d8 <__printf+0x350>
    80006954:	00200793          	li	a5,2
    80006958:	e2dff06f          	j	80006784 <__printf+0x3fc>
    8000695c:	00002c97          	auipc	s9,0x2
    80006960:	bbcc8c93          	addi	s9,s9,-1092 # 80008518 <CONSOLE_STATUS+0x508>
    80006964:	02800513          	li	a0,40
    80006968:	ef1ff06f          	j	80006858 <__printf+0x4d0>
    8000696c:	00700793          	li	a5,7
    80006970:	00600c93          	li	s9,6
    80006974:	e0dff06f          	j	80006780 <__printf+0x3f8>
    80006978:	00700793          	li	a5,7
    8000697c:	00600c93          	li	s9,6
    80006980:	c69ff06f          	j	800065e8 <__printf+0x260>
    80006984:	00300793          	li	a5,3
    80006988:	00200c93          	li	s9,2
    8000698c:	c5dff06f          	j	800065e8 <__printf+0x260>
    80006990:	00300793          	li	a5,3
    80006994:	00200c93          	li	s9,2
    80006998:	de9ff06f          	j	80006780 <__printf+0x3f8>
    8000699c:	00400793          	li	a5,4
    800069a0:	00300c93          	li	s9,3
    800069a4:	dddff06f          	j	80006780 <__printf+0x3f8>
    800069a8:	00400793          	li	a5,4
    800069ac:	00300c93          	li	s9,3
    800069b0:	c39ff06f          	j	800065e8 <__printf+0x260>
    800069b4:	00500793          	li	a5,5
    800069b8:	00400c93          	li	s9,4
    800069bc:	c2dff06f          	j	800065e8 <__printf+0x260>
    800069c0:	00500793          	li	a5,5
    800069c4:	00400c93          	li	s9,4
    800069c8:	db9ff06f          	j	80006780 <__printf+0x3f8>
    800069cc:	00600793          	li	a5,6
    800069d0:	00500c93          	li	s9,5
    800069d4:	dadff06f          	j	80006780 <__printf+0x3f8>
    800069d8:	00600793          	li	a5,6
    800069dc:	00500c93          	li	s9,5
    800069e0:	c09ff06f          	j	800065e8 <__printf+0x260>
    800069e4:	00800793          	li	a5,8
    800069e8:	00700c93          	li	s9,7
    800069ec:	bfdff06f          	j	800065e8 <__printf+0x260>
    800069f0:	00100793          	li	a5,1
    800069f4:	d91ff06f          	j	80006784 <__printf+0x3fc>
    800069f8:	00100793          	li	a5,1
    800069fc:	bf1ff06f          	j	800065ec <__printf+0x264>
    80006a00:	00900793          	li	a5,9
    80006a04:	00800c93          	li	s9,8
    80006a08:	be1ff06f          	j	800065e8 <__printf+0x260>
    80006a0c:	00002517          	auipc	a0,0x2
    80006a10:	b1450513          	addi	a0,a0,-1260 # 80008520 <CONSOLE_STATUS+0x510>
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	918080e7          	jalr	-1768(ra) # 8000632c <panic>

0000000080006a1c <printfinit>:
    80006a1c:	fe010113          	addi	sp,sp,-32
    80006a20:	00813823          	sd	s0,16(sp)
    80006a24:	00913423          	sd	s1,8(sp)
    80006a28:	00113c23          	sd	ra,24(sp)
    80006a2c:	02010413          	addi	s0,sp,32
    80006a30:	00009497          	auipc	s1,0x9
    80006a34:	d8048493          	addi	s1,s1,-640 # 8000f7b0 <pr>
    80006a38:	00048513          	mv	a0,s1
    80006a3c:	00002597          	auipc	a1,0x2
    80006a40:	af458593          	addi	a1,a1,-1292 # 80008530 <CONSOLE_STATUS+0x520>
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	5f4080e7          	jalr	1524(ra) # 80007038 <initlock>
    80006a4c:	01813083          	ld	ra,24(sp)
    80006a50:	01013403          	ld	s0,16(sp)
    80006a54:	0004ac23          	sw	zero,24(s1)
    80006a58:	00813483          	ld	s1,8(sp)
    80006a5c:	02010113          	addi	sp,sp,32
    80006a60:	00008067          	ret

0000000080006a64 <uartinit>:
    80006a64:	ff010113          	addi	sp,sp,-16
    80006a68:	00813423          	sd	s0,8(sp)
    80006a6c:	01010413          	addi	s0,sp,16
    80006a70:	100007b7          	lui	a5,0x10000
    80006a74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006a78:	f8000713          	li	a4,-128
    80006a7c:	00e781a3          	sb	a4,3(a5)
    80006a80:	00300713          	li	a4,3
    80006a84:	00e78023          	sb	a4,0(a5)
    80006a88:	000780a3          	sb	zero,1(a5)
    80006a8c:	00e781a3          	sb	a4,3(a5)
    80006a90:	00700693          	li	a3,7
    80006a94:	00d78123          	sb	a3,2(a5)
    80006a98:	00e780a3          	sb	a4,1(a5)
    80006a9c:	00813403          	ld	s0,8(sp)
    80006aa0:	01010113          	addi	sp,sp,16
    80006aa4:	00008067          	ret

0000000080006aa8 <uartputc>:
    80006aa8:	00004797          	auipc	a5,0x4
    80006aac:	9d07a783          	lw	a5,-1584(a5) # 8000a478 <panicked>
    80006ab0:	00078463          	beqz	a5,80006ab8 <uartputc+0x10>
    80006ab4:	0000006f          	j	80006ab4 <uartputc+0xc>
    80006ab8:	fd010113          	addi	sp,sp,-48
    80006abc:	02813023          	sd	s0,32(sp)
    80006ac0:	00913c23          	sd	s1,24(sp)
    80006ac4:	01213823          	sd	s2,16(sp)
    80006ac8:	01313423          	sd	s3,8(sp)
    80006acc:	02113423          	sd	ra,40(sp)
    80006ad0:	03010413          	addi	s0,sp,48
    80006ad4:	00004917          	auipc	s2,0x4
    80006ad8:	9ac90913          	addi	s2,s2,-1620 # 8000a480 <uart_tx_r>
    80006adc:	00093783          	ld	a5,0(s2)
    80006ae0:	00004497          	auipc	s1,0x4
    80006ae4:	9a848493          	addi	s1,s1,-1624 # 8000a488 <uart_tx_w>
    80006ae8:	0004b703          	ld	a4,0(s1)
    80006aec:	02078693          	addi	a3,a5,32
    80006af0:	00050993          	mv	s3,a0
    80006af4:	02e69c63          	bne	a3,a4,80006b2c <uartputc+0x84>
    80006af8:	00001097          	auipc	ra,0x1
    80006afc:	834080e7          	jalr	-1996(ra) # 8000732c <push_on>
    80006b00:	00093783          	ld	a5,0(s2)
    80006b04:	0004b703          	ld	a4,0(s1)
    80006b08:	02078793          	addi	a5,a5,32
    80006b0c:	00e79463          	bne	a5,a4,80006b14 <uartputc+0x6c>
    80006b10:	0000006f          	j	80006b10 <uartputc+0x68>
    80006b14:	00001097          	auipc	ra,0x1
    80006b18:	88c080e7          	jalr	-1908(ra) # 800073a0 <pop_on>
    80006b1c:	00093783          	ld	a5,0(s2)
    80006b20:	0004b703          	ld	a4,0(s1)
    80006b24:	02078693          	addi	a3,a5,32
    80006b28:	fce688e3          	beq	a3,a4,80006af8 <uartputc+0x50>
    80006b2c:	01f77693          	andi	a3,a4,31
    80006b30:	00009597          	auipc	a1,0x9
    80006b34:	ca058593          	addi	a1,a1,-864 # 8000f7d0 <uart_tx_buf>
    80006b38:	00d586b3          	add	a3,a1,a3
    80006b3c:	00170713          	addi	a4,a4,1
    80006b40:	01368023          	sb	s3,0(a3)
    80006b44:	00e4b023          	sd	a4,0(s1)
    80006b48:	10000637          	lui	a2,0x10000
    80006b4c:	02f71063          	bne	a4,a5,80006b6c <uartputc+0xc4>
    80006b50:	0340006f          	j	80006b84 <uartputc+0xdc>
    80006b54:	00074703          	lbu	a4,0(a4)
    80006b58:	00f93023          	sd	a5,0(s2)
    80006b5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006b60:	00093783          	ld	a5,0(s2)
    80006b64:	0004b703          	ld	a4,0(s1)
    80006b68:	00f70e63          	beq	a4,a5,80006b84 <uartputc+0xdc>
    80006b6c:	00564683          	lbu	a3,5(a2)
    80006b70:	01f7f713          	andi	a4,a5,31
    80006b74:	00e58733          	add	a4,a1,a4
    80006b78:	0206f693          	andi	a3,a3,32
    80006b7c:	00178793          	addi	a5,a5,1
    80006b80:	fc069ae3          	bnez	a3,80006b54 <uartputc+0xac>
    80006b84:	02813083          	ld	ra,40(sp)
    80006b88:	02013403          	ld	s0,32(sp)
    80006b8c:	01813483          	ld	s1,24(sp)
    80006b90:	01013903          	ld	s2,16(sp)
    80006b94:	00813983          	ld	s3,8(sp)
    80006b98:	03010113          	addi	sp,sp,48
    80006b9c:	00008067          	ret

0000000080006ba0 <uartputc_sync>:
    80006ba0:	ff010113          	addi	sp,sp,-16
    80006ba4:	00813423          	sd	s0,8(sp)
    80006ba8:	01010413          	addi	s0,sp,16
    80006bac:	00004717          	auipc	a4,0x4
    80006bb0:	8cc72703          	lw	a4,-1844(a4) # 8000a478 <panicked>
    80006bb4:	02071663          	bnez	a4,80006be0 <uartputc_sync+0x40>
    80006bb8:	00050793          	mv	a5,a0
    80006bbc:	100006b7          	lui	a3,0x10000
    80006bc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006bc4:	02077713          	andi	a4,a4,32
    80006bc8:	fe070ce3          	beqz	a4,80006bc0 <uartputc_sync+0x20>
    80006bcc:	0ff7f793          	andi	a5,a5,255
    80006bd0:	00f68023          	sb	a5,0(a3)
    80006bd4:	00813403          	ld	s0,8(sp)
    80006bd8:	01010113          	addi	sp,sp,16
    80006bdc:	00008067          	ret
    80006be0:	0000006f          	j	80006be0 <uartputc_sync+0x40>

0000000080006be4 <uartstart>:
    80006be4:	ff010113          	addi	sp,sp,-16
    80006be8:	00813423          	sd	s0,8(sp)
    80006bec:	01010413          	addi	s0,sp,16
    80006bf0:	00004617          	auipc	a2,0x4
    80006bf4:	89060613          	addi	a2,a2,-1904 # 8000a480 <uart_tx_r>
    80006bf8:	00004517          	auipc	a0,0x4
    80006bfc:	89050513          	addi	a0,a0,-1904 # 8000a488 <uart_tx_w>
    80006c00:	00063783          	ld	a5,0(a2)
    80006c04:	00053703          	ld	a4,0(a0)
    80006c08:	04f70263          	beq	a4,a5,80006c4c <uartstart+0x68>
    80006c0c:	100005b7          	lui	a1,0x10000
    80006c10:	00009817          	auipc	a6,0x9
    80006c14:	bc080813          	addi	a6,a6,-1088 # 8000f7d0 <uart_tx_buf>
    80006c18:	01c0006f          	j	80006c34 <uartstart+0x50>
    80006c1c:	0006c703          	lbu	a4,0(a3)
    80006c20:	00f63023          	sd	a5,0(a2)
    80006c24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006c28:	00063783          	ld	a5,0(a2)
    80006c2c:	00053703          	ld	a4,0(a0)
    80006c30:	00f70e63          	beq	a4,a5,80006c4c <uartstart+0x68>
    80006c34:	01f7f713          	andi	a4,a5,31
    80006c38:	00e806b3          	add	a3,a6,a4
    80006c3c:	0055c703          	lbu	a4,5(a1)
    80006c40:	00178793          	addi	a5,a5,1
    80006c44:	02077713          	andi	a4,a4,32
    80006c48:	fc071ae3          	bnez	a4,80006c1c <uartstart+0x38>
    80006c4c:	00813403          	ld	s0,8(sp)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <uartgetc>:
    80006c58:	ff010113          	addi	sp,sp,-16
    80006c5c:	00813423          	sd	s0,8(sp)
    80006c60:	01010413          	addi	s0,sp,16
    80006c64:	10000737          	lui	a4,0x10000
    80006c68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006c6c:	0017f793          	andi	a5,a5,1
    80006c70:	00078c63          	beqz	a5,80006c88 <uartgetc+0x30>
    80006c74:	00074503          	lbu	a0,0(a4)
    80006c78:	0ff57513          	andi	a0,a0,255
    80006c7c:	00813403          	ld	s0,8(sp)
    80006c80:	01010113          	addi	sp,sp,16
    80006c84:	00008067          	ret
    80006c88:	fff00513          	li	a0,-1
    80006c8c:	ff1ff06f          	j	80006c7c <uartgetc+0x24>

0000000080006c90 <uartintr>:
    80006c90:	100007b7          	lui	a5,0x10000
    80006c94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006c98:	0017f793          	andi	a5,a5,1
    80006c9c:	0a078463          	beqz	a5,80006d44 <uartintr+0xb4>
    80006ca0:	fe010113          	addi	sp,sp,-32
    80006ca4:	00813823          	sd	s0,16(sp)
    80006ca8:	00913423          	sd	s1,8(sp)
    80006cac:	00113c23          	sd	ra,24(sp)
    80006cb0:	02010413          	addi	s0,sp,32
    80006cb4:	100004b7          	lui	s1,0x10000
    80006cb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006cbc:	0ff57513          	andi	a0,a0,255
    80006cc0:	fffff097          	auipc	ra,0xfffff
    80006cc4:	534080e7          	jalr	1332(ra) # 800061f4 <consoleintr>
    80006cc8:	0054c783          	lbu	a5,5(s1)
    80006ccc:	0017f793          	andi	a5,a5,1
    80006cd0:	fe0794e3          	bnez	a5,80006cb8 <uartintr+0x28>
    80006cd4:	00003617          	auipc	a2,0x3
    80006cd8:	7ac60613          	addi	a2,a2,1964 # 8000a480 <uart_tx_r>
    80006cdc:	00003517          	auipc	a0,0x3
    80006ce0:	7ac50513          	addi	a0,a0,1964 # 8000a488 <uart_tx_w>
    80006ce4:	00063783          	ld	a5,0(a2)
    80006ce8:	00053703          	ld	a4,0(a0)
    80006cec:	04f70263          	beq	a4,a5,80006d30 <uartintr+0xa0>
    80006cf0:	100005b7          	lui	a1,0x10000
    80006cf4:	00009817          	auipc	a6,0x9
    80006cf8:	adc80813          	addi	a6,a6,-1316 # 8000f7d0 <uart_tx_buf>
    80006cfc:	01c0006f          	j	80006d18 <uartintr+0x88>
    80006d00:	0006c703          	lbu	a4,0(a3)
    80006d04:	00f63023          	sd	a5,0(a2)
    80006d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006d0c:	00063783          	ld	a5,0(a2)
    80006d10:	00053703          	ld	a4,0(a0)
    80006d14:	00f70e63          	beq	a4,a5,80006d30 <uartintr+0xa0>
    80006d18:	01f7f713          	andi	a4,a5,31
    80006d1c:	00e806b3          	add	a3,a6,a4
    80006d20:	0055c703          	lbu	a4,5(a1)
    80006d24:	00178793          	addi	a5,a5,1
    80006d28:	02077713          	andi	a4,a4,32
    80006d2c:	fc071ae3          	bnez	a4,80006d00 <uartintr+0x70>
    80006d30:	01813083          	ld	ra,24(sp)
    80006d34:	01013403          	ld	s0,16(sp)
    80006d38:	00813483          	ld	s1,8(sp)
    80006d3c:	02010113          	addi	sp,sp,32
    80006d40:	00008067          	ret
    80006d44:	00003617          	auipc	a2,0x3
    80006d48:	73c60613          	addi	a2,a2,1852 # 8000a480 <uart_tx_r>
    80006d4c:	00003517          	auipc	a0,0x3
    80006d50:	73c50513          	addi	a0,a0,1852 # 8000a488 <uart_tx_w>
    80006d54:	00063783          	ld	a5,0(a2)
    80006d58:	00053703          	ld	a4,0(a0)
    80006d5c:	04f70263          	beq	a4,a5,80006da0 <uartintr+0x110>
    80006d60:	100005b7          	lui	a1,0x10000
    80006d64:	00009817          	auipc	a6,0x9
    80006d68:	a6c80813          	addi	a6,a6,-1428 # 8000f7d0 <uart_tx_buf>
    80006d6c:	01c0006f          	j	80006d88 <uartintr+0xf8>
    80006d70:	0006c703          	lbu	a4,0(a3)
    80006d74:	00f63023          	sd	a5,0(a2)
    80006d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006d7c:	00063783          	ld	a5,0(a2)
    80006d80:	00053703          	ld	a4,0(a0)
    80006d84:	02f70063          	beq	a4,a5,80006da4 <uartintr+0x114>
    80006d88:	01f7f713          	andi	a4,a5,31
    80006d8c:	00e806b3          	add	a3,a6,a4
    80006d90:	0055c703          	lbu	a4,5(a1)
    80006d94:	00178793          	addi	a5,a5,1
    80006d98:	02077713          	andi	a4,a4,32
    80006d9c:	fc071ae3          	bnez	a4,80006d70 <uartintr+0xe0>
    80006da0:	00008067          	ret
    80006da4:	00008067          	ret

0000000080006da8 <kinit>:
    80006da8:	fc010113          	addi	sp,sp,-64
    80006dac:	02913423          	sd	s1,40(sp)
    80006db0:	fffff7b7          	lui	a5,0xfffff
    80006db4:	0000a497          	auipc	s1,0xa
    80006db8:	a3b48493          	addi	s1,s1,-1477 # 800107ef <end+0xfff>
    80006dbc:	02813823          	sd	s0,48(sp)
    80006dc0:	01313c23          	sd	s3,24(sp)
    80006dc4:	00f4f4b3          	and	s1,s1,a5
    80006dc8:	02113c23          	sd	ra,56(sp)
    80006dcc:	03213023          	sd	s2,32(sp)
    80006dd0:	01413823          	sd	s4,16(sp)
    80006dd4:	01513423          	sd	s5,8(sp)
    80006dd8:	04010413          	addi	s0,sp,64
    80006ddc:	000017b7          	lui	a5,0x1
    80006de0:	01100993          	li	s3,17
    80006de4:	00f487b3          	add	a5,s1,a5
    80006de8:	01b99993          	slli	s3,s3,0x1b
    80006dec:	06f9e063          	bltu	s3,a5,80006e4c <kinit+0xa4>
    80006df0:	00009a97          	auipc	s5,0x9
    80006df4:	a00a8a93          	addi	s5,s5,-1536 # 8000f7f0 <end>
    80006df8:	0754ec63          	bltu	s1,s5,80006e70 <kinit+0xc8>
    80006dfc:	0734fa63          	bgeu	s1,s3,80006e70 <kinit+0xc8>
    80006e00:	00088a37          	lui	s4,0x88
    80006e04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006e08:	00003917          	auipc	s2,0x3
    80006e0c:	68890913          	addi	s2,s2,1672 # 8000a490 <kmem>
    80006e10:	00ca1a13          	slli	s4,s4,0xc
    80006e14:	0140006f          	j	80006e28 <kinit+0x80>
    80006e18:	000017b7          	lui	a5,0x1
    80006e1c:	00f484b3          	add	s1,s1,a5
    80006e20:	0554e863          	bltu	s1,s5,80006e70 <kinit+0xc8>
    80006e24:	0534f663          	bgeu	s1,s3,80006e70 <kinit+0xc8>
    80006e28:	00001637          	lui	a2,0x1
    80006e2c:	00100593          	li	a1,1
    80006e30:	00048513          	mv	a0,s1
    80006e34:	00000097          	auipc	ra,0x0
    80006e38:	5e4080e7          	jalr	1508(ra) # 80007418 <__memset>
    80006e3c:	00093783          	ld	a5,0(s2)
    80006e40:	00f4b023          	sd	a5,0(s1)
    80006e44:	00993023          	sd	s1,0(s2)
    80006e48:	fd4498e3          	bne	s1,s4,80006e18 <kinit+0x70>
    80006e4c:	03813083          	ld	ra,56(sp)
    80006e50:	03013403          	ld	s0,48(sp)
    80006e54:	02813483          	ld	s1,40(sp)
    80006e58:	02013903          	ld	s2,32(sp)
    80006e5c:	01813983          	ld	s3,24(sp)
    80006e60:	01013a03          	ld	s4,16(sp)
    80006e64:	00813a83          	ld	s5,8(sp)
    80006e68:	04010113          	addi	sp,sp,64
    80006e6c:	00008067          	ret
    80006e70:	00001517          	auipc	a0,0x1
    80006e74:	6e050513          	addi	a0,a0,1760 # 80008550 <digits+0x18>
    80006e78:	fffff097          	auipc	ra,0xfffff
    80006e7c:	4b4080e7          	jalr	1204(ra) # 8000632c <panic>

0000000080006e80 <freerange>:
    80006e80:	fc010113          	addi	sp,sp,-64
    80006e84:	000017b7          	lui	a5,0x1
    80006e88:	02913423          	sd	s1,40(sp)
    80006e8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006e90:	009504b3          	add	s1,a0,s1
    80006e94:	fffff537          	lui	a0,0xfffff
    80006e98:	02813823          	sd	s0,48(sp)
    80006e9c:	02113c23          	sd	ra,56(sp)
    80006ea0:	03213023          	sd	s2,32(sp)
    80006ea4:	01313c23          	sd	s3,24(sp)
    80006ea8:	01413823          	sd	s4,16(sp)
    80006eac:	01513423          	sd	s5,8(sp)
    80006eb0:	01613023          	sd	s6,0(sp)
    80006eb4:	04010413          	addi	s0,sp,64
    80006eb8:	00a4f4b3          	and	s1,s1,a0
    80006ebc:	00f487b3          	add	a5,s1,a5
    80006ec0:	06f5e463          	bltu	a1,a5,80006f28 <freerange+0xa8>
    80006ec4:	00009a97          	auipc	s5,0x9
    80006ec8:	92ca8a93          	addi	s5,s5,-1748 # 8000f7f0 <end>
    80006ecc:	0954e263          	bltu	s1,s5,80006f50 <freerange+0xd0>
    80006ed0:	01100993          	li	s3,17
    80006ed4:	01b99993          	slli	s3,s3,0x1b
    80006ed8:	0734fc63          	bgeu	s1,s3,80006f50 <freerange+0xd0>
    80006edc:	00058a13          	mv	s4,a1
    80006ee0:	00003917          	auipc	s2,0x3
    80006ee4:	5b090913          	addi	s2,s2,1456 # 8000a490 <kmem>
    80006ee8:	00002b37          	lui	s6,0x2
    80006eec:	0140006f          	j	80006f00 <freerange+0x80>
    80006ef0:	000017b7          	lui	a5,0x1
    80006ef4:	00f484b3          	add	s1,s1,a5
    80006ef8:	0554ec63          	bltu	s1,s5,80006f50 <freerange+0xd0>
    80006efc:	0534fa63          	bgeu	s1,s3,80006f50 <freerange+0xd0>
    80006f00:	00001637          	lui	a2,0x1
    80006f04:	00100593          	li	a1,1
    80006f08:	00048513          	mv	a0,s1
    80006f0c:	00000097          	auipc	ra,0x0
    80006f10:	50c080e7          	jalr	1292(ra) # 80007418 <__memset>
    80006f14:	00093703          	ld	a4,0(s2)
    80006f18:	016487b3          	add	a5,s1,s6
    80006f1c:	00e4b023          	sd	a4,0(s1)
    80006f20:	00993023          	sd	s1,0(s2)
    80006f24:	fcfa76e3          	bgeu	s4,a5,80006ef0 <freerange+0x70>
    80006f28:	03813083          	ld	ra,56(sp)
    80006f2c:	03013403          	ld	s0,48(sp)
    80006f30:	02813483          	ld	s1,40(sp)
    80006f34:	02013903          	ld	s2,32(sp)
    80006f38:	01813983          	ld	s3,24(sp)
    80006f3c:	01013a03          	ld	s4,16(sp)
    80006f40:	00813a83          	ld	s5,8(sp)
    80006f44:	00013b03          	ld	s6,0(sp)
    80006f48:	04010113          	addi	sp,sp,64
    80006f4c:	00008067          	ret
    80006f50:	00001517          	auipc	a0,0x1
    80006f54:	60050513          	addi	a0,a0,1536 # 80008550 <digits+0x18>
    80006f58:	fffff097          	auipc	ra,0xfffff
    80006f5c:	3d4080e7          	jalr	980(ra) # 8000632c <panic>

0000000080006f60 <kfree>:
    80006f60:	fe010113          	addi	sp,sp,-32
    80006f64:	00813823          	sd	s0,16(sp)
    80006f68:	00113c23          	sd	ra,24(sp)
    80006f6c:	00913423          	sd	s1,8(sp)
    80006f70:	02010413          	addi	s0,sp,32
    80006f74:	03451793          	slli	a5,a0,0x34
    80006f78:	04079c63          	bnez	a5,80006fd0 <kfree+0x70>
    80006f7c:	00009797          	auipc	a5,0x9
    80006f80:	87478793          	addi	a5,a5,-1932 # 8000f7f0 <end>
    80006f84:	00050493          	mv	s1,a0
    80006f88:	04f56463          	bltu	a0,a5,80006fd0 <kfree+0x70>
    80006f8c:	01100793          	li	a5,17
    80006f90:	01b79793          	slli	a5,a5,0x1b
    80006f94:	02f57e63          	bgeu	a0,a5,80006fd0 <kfree+0x70>
    80006f98:	00001637          	lui	a2,0x1
    80006f9c:	00100593          	li	a1,1
    80006fa0:	00000097          	auipc	ra,0x0
    80006fa4:	478080e7          	jalr	1144(ra) # 80007418 <__memset>
    80006fa8:	00003797          	auipc	a5,0x3
    80006fac:	4e878793          	addi	a5,a5,1256 # 8000a490 <kmem>
    80006fb0:	0007b703          	ld	a4,0(a5)
    80006fb4:	01813083          	ld	ra,24(sp)
    80006fb8:	01013403          	ld	s0,16(sp)
    80006fbc:	00e4b023          	sd	a4,0(s1)
    80006fc0:	0097b023          	sd	s1,0(a5)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	02010113          	addi	sp,sp,32
    80006fcc:	00008067          	ret
    80006fd0:	00001517          	auipc	a0,0x1
    80006fd4:	58050513          	addi	a0,a0,1408 # 80008550 <digits+0x18>
    80006fd8:	fffff097          	auipc	ra,0xfffff
    80006fdc:	354080e7          	jalr	852(ra) # 8000632c <panic>

0000000080006fe0 <kalloc>:
    80006fe0:	fe010113          	addi	sp,sp,-32
    80006fe4:	00813823          	sd	s0,16(sp)
    80006fe8:	00913423          	sd	s1,8(sp)
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	02010413          	addi	s0,sp,32
    80006ff4:	00003797          	auipc	a5,0x3
    80006ff8:	49c78793          	addi	a5,a5,1180 # 8000a490 <kmem>
    80006ffc:	0007b483          	ld	s1,0(a5)
    80007000:	02048063          	beqz	s1,80007020 <kalloc+0x40>
    80007004:	0004b703          	ld	a4,0(s1)
    80007008:	00001637          	lui	a2,0x1
    8000700c:	00500593          	li	a1,5
    80007010:	00048513          	mv	a0,s1
    80007014:	00e7b023          	sd	a4,0(a5)
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	400080e7          	jalr	1024(ra) # 80007418 <__memset>
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	01013403          	ld	s0,16(sp)
    80007028:	00048513          	mv	a0,s1
    8000702c:	00813483          	ld	s1,8(sp)
    80007030:	02010113          	addi	sp,sp,32
    80007034:	00008067          	ret

0000000080007038 <initlock>:
    80007038:	ff010113          	addi	sp,sp,-16
    8000703c:	00813423          	sd	s0,8(sp)
    80007040:	01010413          	addi	s0,sp,16
    80007044:	00813403          	ld	s0,8(sp)
    80007048:	00b53423          	sd	a1,8(a0)
    8000704c:	00052023          	sw	zero,0(a0)
    80007050:	00053823          	sd	zero,16(a0)
    80007054:	01010113          	addi	sp,sp,16
    80007058:	00008067          	ret

000000008000705c <acquire>:
    8000705c:	fe010113          	addi	sp,sp,-32
    80007060:	00813823          	sd	s0,16(sp)
    80007064:	00913423          	sd	s1,8(sp)
    80007068:	00113c23          	sd	ra,24(sp)
    8000706c:	01213023          	sd	s2,0(sp)
    80007070:	02010413          	addi	s0,sp,32
    80007074:	00050493          	mv	s1,a0
    80007078:	10002973          	csrr	s2,sstatus
    8000707c:	100027f3          	csrr	a5,sstatus
    80007080:	ffd7f793          	andi	a5,a5,-3
    80007084:	10079073          	csrw	sstatus,a5
    80007088:	fffff097          	auipc	ra,0xfffff
    8000708c:	8ec080e7          	jalr	-1812(ra) # 80005974 <mycpu>
    80007090:	07852783          	lw	a5,120(a0)
    80007094:	06078e63          	beqz	a5,80007110 <acquire+0xb4>
    80007098:	fffff097          	auipc	ra,0xfffff
    8000709c:	8dc080e7          	jalr	-1828(ra) # 80005974 <mycpu>
    800070a0:	07852783          	lw	a5,120(a0)
    800070a4:	0004a703          	lw	a4,0(s1)
    800070a8:	0017879b          	addiw	a5,a5,1
    800070ac:	06f52c23          	sw	a5,120(a0)
    800070b0:	04071063          	bnez	a4,800070f0 <acquire+0x94>
    800070b4:	00100713          	li	a4,1
    800070b8:	00070793          	mv	a5,a4
    800070bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800070c0:	0007879b          	sext.w	a5,a5
    800070c4:	fe079ae3          	bnez	a5,800070b8 <acquire+0x5c>
    800070c8:	0ff0000f          	fence
    800070cc:	fffff097          	auipc	ra,0xfffff
    800070d0:	8a8080e7          	jalr	-1880(ra) # 80005974 <mycpu>
    800070d4:	01813083          	ld	ra,24(sp)
    800070d8:	01013403          	ld	s0,16(sp)
    800070dc:	00a4b823          	sd	a0,16(s1)
    800070e0:	00013903          	ld	s2,0(sp)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret
    800070f0:	0104b903          	ld	s2,16(s1)
    800070f4:	fffff097          	auipc	ra,0xfffff
    800070f8:	880080e7          	jalr	-1920(ra) # 80005974 <mycpu>
    800070fc:	faa91ce3          	bne	s2,a0,800070b4 <acquire+0x58>
    80007100:	00001517          	auipc	a0,0x1
    80007104:	45850513          	addi	a0,a0,1112 # 80008558 <digits+0x20>
    80007108:	fffff097          	auipc	ra,0xfffff
    8000710c:	224080e7          	jalr	548(ra) # 8000632c <panic>
    80007110:	00195913          	srli	s2,s2,0x1
    80007114:	fffff097          	auipc	ra,0xfffff
    80007118:	860080e7          	jalr	-1952(ra) # 80005974 <mycpu>
    8000711c:	00197913          	andi	s2,s2,1
    80007120:	07252e23          	sw	s2,124(a0)
    80007124:	f75ff06f          	j	80007098 <acquire+0x3c>

0000000080007128 <release>:
    80007128:	fe010113          	addi	sp,sp,-32
    8000712c:	00813823          	sd	s0,16(sp)
    80007130:	00113c23          	sd	ra,24(sp)
    80007134:	00913423          	sd	s1,8(sp)
    80007138:	01213023          	sd	s2,0(sp)
    8000713c:	02010413          	addi	s0,sp,32
    80007140:	00052783          	lw	a5,0(a0)
    80007144:	00079a63          	bnez	a5,80007158 <release+0x30>
    80007148:	00001517          	auipc	a0,0x1
    8000714c:	41850513          	addi	a0,a0,1048 # 80008560 <digits+0x28>
    80007150:	fffff097          	auipc	ra,0xfffff
    80007154:	1dc080e7          	jalr	476(ra) # 8000632c <panic>
    80007158:	01053903          	ld	s2,16(a0)
    8000715c:	00050493          	mv	s1,a0
    80007160:	fffff097          	auipc	ra,0xfffff
    80007164:	814080e7          	jalr	-2028(ra) # 80005974 <mycpu>
    80007168:	fea910e3          	bne	s2,a0,80007148 <release+0x20>
    8000716c:	0004b823          	sd	zero,16(s1)
    80007170:	0ff0000f          	fence
    80007174:	0f50000f          	fence	iorw,ow
    80007178:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000717c:	ffffe097          	auipc	ra,0xffffe
    80007180:	7f8080e7          	jalr	2040(ra) # 80005974 <mycpu>
    80007184:	100027f3          	csrr	a5,sstatus
    80007188:	0027f793          	andi	a5,a5,2
    8000718c:	04079a63          	bnez	a5,800071e0 <release+0xb8>
    80007190:	07852783          	lw	a5,120(a0)
    80007194:	02f05e63          	blez	a5,800071d0 <release+0xa8>
    80007198:	fff7871b          	addiw	a4,a5,-1
    8000719c:	06e52c23          	sw	a4,120(a0)
    800071a0:	00071c63          	bnez	a4,800071b8 <release+0x90>
    800071a4:	07c52783          	lw	a5,124(a0)
    800071a8:	00078863          	beqz	a5,800071b8 <release+0x90>
    800071ac:	100027f3          	csrr	a5,sstatus
    800071b0:	0027e793          	ori	a5,a5,2
    800071b4:	10079073          	csrw	sstatus,a5
    800071b8:	01813083          	ld	ra,24(sp)
    800071bc:	01013403          	ld	s0,16(sp)
    800071c0:	00813483          	ld	s1,8(sp)
    800071c4:	00013903          	ld	s2,0(sp)
    800071c8:	02010113          	addi	sp,sp,32
    800071cc:	00008067          	ret
    800071d0:	00001517          	auipc	a0,0x1
    800071d4:	3b050513          	addi	a0,a0,944 # 80008580 <digits+0x48>
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	154080e7          	jalr	340(ra) # 8000632c <panic>
    800071e0:	00001517          	auipc	a0,0x1
    800071e4:	38850513          	addi	a0,a0,904 # 80008568 <digits+0x30>
    800071e8:	fffff097          	auipc	ra,0xfffff
    800071ec:	144080e7          	jalr	324(ra) # 8000632c <panic>

00000000800071f0 <holding>:
    800071f0:	00052783          	lw	a5,0(a0)
    800071f4:	00079663          	bnez	a5,80007200 <holding+0x10>
    800071f8:	00000513          	li	a0,0
    800071fc:	00008067          	ret
    80007200:	fe010113          	addi	sp,sp,-32
    80007204:	00813823          	sd	s0,16(sp)
    80007208:	00913423          	sd	s1,8(sp)
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	02010413          	addi	s0,sp,32
    80007214:	01053483          	ld	s1,16(a0)
    80007218:	ffffe097          	auipc	ra,0xffffe
    8000721c:	75c080e7          	jalr	1884(ra) # 80005974 <mycpu>
    80007220:	01813083          	ld	ra,24(sp)
    80007224:	01013403          	ld	s0,16(sp)
    80007228:	40a48533          	sub	a0,s1,a0
    8000722c:	00153513          	seqz	a0,a0
    80007230:	00813483          	ld	s1,8(sp)
    80007234:	02010113          	addi	sp,sp,32
    80007238:	00008067          	ret

000000008000723c <push_off>:
    8000723c:	fe010113          	addi	sp,sp,-32
    80007240:	00813823          	sd	s0,16(sp)
    80007244:	00113c23          	sd	ra,24(sp)
    80007248:	00913423          	sd	s1,8(sp)
    8000724c:	02010413          	addi	s0,sp,32
    80007250:	100024f3          	csrr	s1,sstatus
    80007254:	100027f3          	csrr	a5,sstatus
    80007258:	ffd7f793          	andi	a5,a5,-3
    8000725c:	10079073          	csrw	sstatus,a5
    80007260:	ffffe097          	auipc	ra,0xffffe
    80007264:	714080e7          	jalr	1812(ra) # 80005974 <mycpu>
    80007268:	07852783          	lw	a5,120(a0)
    8000726c:	02078663          	beqz	a5,80007298 <push_off+0x5c>
    80007270:	ffffe097          	auipc	ra,0xffffe
    80007274:	704080e7          	jalr	1796(ra) # 80005974 <mycpu>
    80007278:	07852783          	lw	a5,120(a0)
    8000727c:	01813083          	ld	ra,24(sp)
    80007280:	01013403          	ld	s0,16(sp)
    80007284:	0017879b          	addiw	a5,a5,1
    80007288:	06f52c23          	sw	a5,120(a0)
    8000728c:	00813483          	ld	s1,8(sp)
    80007290:	02010113          	addi	sp,sp,32
    80007294:	00008067          	ret
    80007298:	0014d493          	srli	s1,s1,0x1
    8000729c:	ffffe097          	auipc	ra,0xffffe
    800072a0:	6d8080e7          	jalr	1752(ra) # 80005974 <mycpu>
    800072a4:	0014f493          	andi	s1,s1,1
    800072a8:	06952e23          	sw	s1,124(a0)
    800072ac:	fc5ff06f          	j	80007270 <push_off+0x34>

00000000800072b0 <pop_off>:
    800072b0:	ff010113          	addi	sp,sp,-16
    800072b4:	00813023          	sd	s0,0(sp)
    800072b8:	00113423          	sd	ra,8(sp)
    800072bc:	01010413          	addi	s0,sp,16
    800072c0:	ffffe097          	auipc	ra,0xffffe
    800072c4:	6b4080e7          	jalr	1716(ra) # 80005974 <mycpu>
    800072c8:	100027f3          	csrr	a5,sstatus
    800072cc:	0027f793          	andi	a5,a5,2
    800072d0:	04079663          	bnez	a5,8000731c <pop_off+0x6c>
    800072d4:	07852783          	lw	a5,120(a0)
    800072d8:	02f05a63          	blez	a5,8000730c <pop_off+0x5c>
    800072dc:	fff7871b          	addiw	a4,a5,-1
    800072e0:	06e52c23          	sw	a4,120(a0)
    800072e4:	00071c63          	bnez	a4,800072fc <pop_off+0x4c>
    800072e8:	07c52783          	lw	a5,124(a0)
    800072ec:	00078863          	beqz	a5,800072fc <pop_off+0x4c>
    800072f0:	100027f3          	csrr	a5,sstatus
    800072f4:	0027e793          	ori	a5,a5,2
    800072f8:	10079073          	csrw	sstatus,a5
    800072fc:	00813083          	ld	ra,8(sp)
    80007300:	00013403          	ld	s0,0(sp)
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00008067          	ret
    8000730c:	00001517          	auipc	a0,0x1
    80007310:	27450513          	addi	a0,a0,628 # 80008580 <digits+0x48>
    80007314:	fffff097          	auipc	ra,0xfffff
    80007318:	018080e7          	jalr	24(ra) # 8000632c <panic>
    8000731c:	00001517          	auipc	a0,0x1
    80007320:	24c50513          	addi	a0,a0,588 # 80008568 <digits+0x30>
    80007324:	fffff097          	auipc	ra,0xfffff
    80007328:	008080e7          	jalr	8(ra) # 8000632c <panic>

000000008000732c <push_on>:
    8000732c:	fe010113          	addi	sp,sp,-32
    80007330:	00813823          	sd	s0,16(sp)
    80007334:	00113c23          	sd	ra,24(sp)
    80007338:	00913423          	sd	s1,8(sp)
    8000733c:	02010413          	addi	s0,sp,32
    80007340:	100024f3          	csrr	s1,sstatus
    80007344:	100027f3          	csrr	a5,sstatus
    80007348:	0027e793          	ori	a5,a5,2
    8000734c:	10079073          	csrw	sstatus,a5
    80007350:	ffffe097          	auipc	ra,0xffffe
    80007354:	624080e7          	jalr	1572(ra) # 80005974 <mycpu>
    80007358:	07852783          	lw	a5,120(a0)
    8000735c:	02078663          	beqz	a5,80007388 <push_on+0x5c>
    80007360:	ffffe097          	auipc	ra,0xffffe
    80007364:	614080e7          	jalr	1556(ra) # 80005974 <mycpu>
    80007368:	07852783          	lw	a5,120(a0)
    8000736c:	01813083          	ld	ra,24(sp)
    80007370:	01013403          	ld	s0,16(sp)
    80007374:	0017879b          	addiw	a5,a5,1
    80007378:	06f52c23          	sw	a5,120(a0)
    8000737c:	00813483          	ld	s1,8(sp)
    80007380:	02010113          	addi	sp,sp,32
    80007384:	00008067          	ret
    80007388:	0014d493          	srli	s1,s1,0x1
    8000738c:	ffffe097          	auipc	ra,0xffffe
    80007390:	5e8080e7          	jalr	1512(ra) # 80005974 <mycpu>
    80007394:	0014f493          	andi	s1,s1,1
    80007398:	06952e23          	sw	s1,124(a0)
    8000739c:	fc5ff06f          	j	80007360 <push_on+0x34>

00000000800073a0 <pop_on>:
    800073a0:	ff010113          	addi	sp,sp,-16
    800073a4:	00813023          	sd	s0,0(sp)
    800073a8:	00113423          	sd	ra,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	ffffe097          	auipc	ra,0xffffe
    800073b4:	5c4080e7          	jalr	1476(ra) # 80005974 <mycpu>
    800073b8:	100027f3          	csrr	a5,sstatus
    800073bc:	0027f793          	andi	a5,a5,2
    800073c0:	04078463          	beqz	a5,80007408 <pop_on+0x68>
    800073c4:	07852783          	lw	a5,120(a0)
    800073c8:	02f05863          	blez	a5,800073f8 <pop_on+0x58>
    800073cc:	fff7879b          	addiw	a5,a5,-1
    800073d0:	06f52c23          	sw	a5,120(a0)
    800073d4:	07853783          	ld	a5,120(a0)
    800073d8:	00079863          	bnez	a5,800073e8 <pop_on+0x48>
    800073dc:	100027f3          	csrr	a5,sstatus
    800073e0:	ffd7f793          	andi	a5,a5,-3
    800073e4:	10079073          	csrw	sstatus,a5
    800073e8:	00813083          	ld	ra,8(sp)
    800073ec:	00013403          	ld	s0,0(sp)
    800073f0:	01010113          	addi	sp,sp,16
    800073f4:	00008067          	ret
    800073f8:	00001517          	auipc	a0,0x1
    800073fc:	1b050513          	addi	a0,a0,432 # 800085a8 <digits+0x70>
    80007400:	fffff097          	auipc	ra,0xfffff
    80007404:	f2c080e7          	jalr	-212(ra) # 8000632c <panic>
    80007408:	00001517          	auipc	a0,0x1
    8000740c:	18050513          	addi	a0,a0,384 # 80008588 <digits+0x50>
    80007410:	fffff097          	auipc	ra,0xfffff
    80007414:	f1c080e7          	jalr	-228(ra) # 8000632c <panic>

0000000080007418 <__memset>:
    80007418:	ff010113          	addi	sp,sp,-16
    8000741c:	00813423          	sd	s0,8(sp)
    80007420:	01010413          	addi	s0,sp,16
    80007424:	1a060e63          	beqz	a2,800075e0 <__memset+0x1c8>
    80007428:	40a007b3          	neg	a5,a0
    8000742c:	0077f793          	andi	a5,a5,7
    80007430:	00778693          	addi	a3,a5,7
    80007434:	00b00813          	li	a6,11
    80007438:	0ff5f593          	andi	a1,a1,255
    8000743c:	fff6071b          	addiw	a4,a2,-1
    80007440:	1b06e663          	bltu	a3,a6,800075ec <__memset+0x1d4>
    80007444:	1cd76463          	bltu	a4,a3,8000760c <__memset+0x1f4>
    80007448:	1a078e63          	beqz	a5,80007604 <__memset+0x1ec>
    8000744c:	00b50023          	sb	a1,0(a0)
    80007450:	00100713          	li	a4,1
    80007454:	1ae78463          	beq	a5,a4,800075fc <__memset+0x1e4>
    80007458:	00b500a3          	sb	a1,1(a0)
    8000745c:	00200713          	li	a4,2
    80007460:	1ae78a63          	beq	a5,a4,80007614 <__memset+0x1fc>
    80007464:	00b50123          	sb	a1,2(a0)
    80007468:	00300713          	li	a4,3
    8000746c:	18e78463          	beq	a5,a4,800075f4 <__memset+0x1dc>
    80007470:	00b501a3          	sb	a1,3(a0)
    80007474:	00400713          	li	a4,4
    80007478:	1ae78263          	beq	a5,a4,8000761c <__memset+0x204>
    8000747c:	00b50223          	sb	a1,4(a0)
    80007480:	00500713          	li	a4,5
    80007484:	1ae78063          	beq	a5,a4,80007624 <__memset+0x20c>
    80007488:	00b502a3          	sb	a1,5(a0)
    8000748c:	00700713          	li	a4,7
    80007490:	18e79e63          	bne	a5,a4,8000762c <__memset+0x214>
    80007494:	00b50323          	sb	a1,6(a0)
    80007498:	00700e93          	li	t4,7
    8000749c:	00859713          	slli	a4,a1,0x8
    800074a0:	00e5e733          	or	a4,a1,a4
    800074a4:	01059e13          	slli	t3,a1,0x10
    800074a8:	01c76e33          	or	t3,a4,t3
    800074ac:	01859313          	slli	t1,a1,0x18
    800074b0:	006e6333          	or	t1,t3,t1
    800074b4:	02059893          	slli	a7,a1,0x20
    800074b8:	40f60e3b          	subw	t3,a2,a5
    800074bc:	011368b3          	or	a7,t1,a7
    800074c0:	02859813          	slli	a6,a1,0x28
    800074c4:	0108e833          	or	a6,a7,a6
    800074c8:	03059693          	slli	a3,a1,0x30
    800074cc:	003e589b          	srliw	a7,t3,0x3
    800074d0:	00d866b3          	or	a3,a6,a3
    800074d4:	03859713          	slli	a4,a1,0x38
    800074d8:	00389813          	slli	a6,a7,0x3
    800074dc:	00f507b3          	add	a5,a0,a5
    800074e0:	00e6e733          	or	a4,a3,a4
    800074e4:	000e089b          	sext.w	a7,t3
    800074e8:	00f806b3          	add	a3,a6,a5
    800074ec:	00e7b023          	sd	a4,0(a5)
    800074f0:	00878793          	addi	a5,a5,8
    800074f4:	fed79ce3          	bne	a5,a3,800074ec <__memset+0xd4>
    800074f8:	ff8e7793          	andi	a5,t3,-8
    800074fc:	0007871b          	sext.w	a4,a5
    80007500:	01d787bb          	addw	a5,a5,t4
    80007504:	0ce88e63          	beq	a7,a4,800075e0 <__memset+0x1c8>
    80007508:	00f50733          	add	a4,a0,a5
    8000750c:	00b70023          	sb	a1,0(a4)
    80007510:	0017871b          	addiw	a4,a5,1
    80007514:	0cc77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007518:	00e50733          	add	a4,a0,a4
    8000751c:	00b70023          	sb	a1,0(a4)
    80007520:	0027871b          	addiw	a4,a5,2
    80007524:	0ac77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007528:	00e50733          	add	a4,a0,a4
    8000752c:	00b70023          	sb	a1,0(a4)
    80007530:	0037871b          	addiw	a4,a5,3
    80007534:	0ac77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007538:	00e50733          	add	a4,a0,a4
    8000753c:	00b70023          	sb	a1,0(a4)
    80007540:	0047871b          	addiw	a4,a5,4
    80007544:	08c77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007548:	00e50733          	add	a4,a0,a4
    8000754c:	00b70023          	sb	a1,0(a4)
    80007550:	0057871b          	addiw	a4,a5,5
    80007554:	08c77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007558:	00e50733          	add	a4,a0,a4
    8000755c:	00b70023          	sb	a1,0(a4)
    80007560:	0067871b          	addiw	a4,a5,6
    80007564:	06c77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007568:	00e50733          	add	a4,a0,a4
    8000756c:	00b70023          	sb	a1,0(a4)
    80007570:	0077871b          	addiw	a4,a5,7
    80007574:	06c77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007578:	00e50733          	add	a4,a0,a4
    8000757c:	00b70023          	sb	a1,0(a4)
    80007580:	0087871b          	addiw	a4,a5,8
    80007584:	04c77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007588:	00e50733          	add	a4,a0,a4
    8000758c:	00b70023          	sb	a1,0(a4)
    80007590:	0097871b          	addiw	a4,a5,9
    80007594:	04c77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    80007598:	00e50733          	add	a4,a0,a4
    8000759c:	00b70023          	sb	a1,0(a4)
    800075a0:	00a7871b          	addiw	a4,a5,10
    800075a4:	02c77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    800075a8:	00e50733          	add	a4,a0,a4
    800075ac:	00b70023          	sb	a1,0(a4)
    800075b0:	00b7871b          	addiw	a4,a5,11
    800075b4:	02c77663          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    800075b8:	00e50733          	add	a4,a0,a4
    800075bc:	00b70023          	sb	a1,0(a4)
    800075c0:	00c7871b          	addiw	a4,a5,12
    800075c4:	00c77e63          	bgeu	a4,a2,800075e0 <__memset+0x1c8>
    800075c8:	00e50733          	add	a4,a0,a4
    800075cc:	00b70023          	sb	a1,0(a4)
    800075d0:	00d7879b          	addiw	a5,a5,13
    800075d4:	00c7f663          	bgeu	a5,a2,800075e0 <__memset+0x1c8>
    800075d8:	00f507b3          	add	a5,a0,a5
    800075dc:	00b78023          	sb	a1,0(a5)
    800075e0:	00813403          	ld	s0,8(sp)
    800075e4:	01010113          	addi	sp,sp,16
    800075e8:	00008067          	ret
    800075ec:	00b00693          	li	a3,11
    800075f0:	e55ff06f          	j	80007444 <__memset+0x2c>
    800075f4:	00300e93          	li	t4,3
    800075f8:	ea5ff06f          	j	8000749c <__memset+0x84>
    800075fc:	00100e93          	li	t4,1
    80007600:	e9dff06f          	j	8000749c <__memset+0x84>
    80007604:	00000e93          	li	t4,0
    80007608:	e95ff06f          	j	8000749c <__memset+0x84>
    8000760c:	00000793          	li	a5,0
    80007610:	ef9ff06f          	j	80007508 <__memset+0xf0>
    80007614:	00200e93          	li	t4,2
    80007618:	e85ff06f          	j	8000749c <__memset+0x84>
    8000761c:	00400e93          	li	t4,4
    80007620:	e7dff06f          	j	8000749c <__memset+0x84>
    80007624:	00500e93          	li	t4,5
    80007628:	e75ff06f          	j	8000749c <__memset+0x84>
    8000762c:	00600e93          	li	t4,6
    80007630:	e6dff06f          	j	8000749c <__memset+0x84>

0000000080007634 <__memmove>:
    80007634:	ff010113          	addi	sp,sp,-16
    80007638:	00813423          	sd	s0,8(sp)
    8000763c:	01010413          	addi	s0,sp,16
    80007640:	0e060863          	beqz	a2,80007730 <__memmove+0xfc>
    80007644:	fff6069b          	addiw	a3,a2,-1
    80007648:	0006881b          	sext.w	a6,a3
    8000764c:	0ea5e863          	bltu	a1,a0,8000773c <__memmove+0x108>
    80007650:	00758713          	addi	a4,a1,7
    80007654:	00a5e7b3          	or	a5,a1,a0
    80007658:	40a70733          	sub	a4,a4,a0
    8000765c:	0077f793          	andi	a5,a5,7
    80007660:	00f73713          	sltiu	a4,a4,15
    80007664:	00174713          	xori	a4,a4,1
    80007668:	0017b793          	seqz	a5,a5
    8000766c:	00e7f7b3          	and	a5,a5,a4
    80007670:	10078863          	beqz	a5,80007780 <__memmove+0x14c>
    80007674:	00900793          	li	a5,9
    80007678:	1107f463          	bgeu	a5,a6,80007780 <__memmove+0x14c>
    8000767c:	0036581b          	srliw	a6,a2,0x3
    80007680:	fff8081b          	addiw	a6,a6,-1
    80007684:	02081813          	slli	a6,a6,0x20
    80007688:	01d85893          	srli	a7,a6,0x1d
    8000768c:	00858813          	addi	a6,a1,8
    80007690:	00058793          	mv	a5,a1
    80007694:	00050713          	mv	a4,a0
    80007698:	01088833          	add	a6,a7,a6
    8000769c:	0007b883          	ld	a7,0(a5)
    800076a0:	00878793          	addi	a5,a5,8
    800076a4:	00870713          	addi	a4,a4,8
    800076a8:	ff173c23          	sd	a7,-8(a4)
    800076ac:	ff0798e3          	bne	a5,a6,8000769c <__memmove+0x68>
    800076b0:	ff867713          	andi	a4,a2,-8
    800076b4:	02071793          	slli	a5,a4,0x20
    800076b8:	0207d793          	srli	a5,a5,0x20
    800076bc:	00f585b3          	add	a1,a1,a5
    800076c0:	40e686bb          	subw	a3,a3,a4
    800076c4:	00f507b3          	add	a5,a0,a5
    800076c8:	06e60463          	beq	a2,a4,80007730 <__memmove+0xfc>
    800076cc:	0005c703          	lbu	a4,0(a1)
    800076d0:	00e78023          	sb	a4,0(a5)
    800076d4:	04068e63          	beqz	a3,80007730 <__memmove+0xfc>
    800076d8:	0015c603          	lbu	a2,1(a1)
    800076dc:	00100713          	li	a4,1
    800076e0:	00c780a3          	sb	a2,1(a5)
    800076e4:	04e68663          	beq	a3,a4,80007730 <__memmove+0xfc>
    800076e8:	0025c603          	lbu	a2,2(a1)
    800076ec:	00200713          	li	a4,2
    800076f0:	00c78123          	sb	a2,2(a5)
    800076f4:	02e68e63          	beq	a3,a4,80007730 <__memmove+0xfc>
    800076f8:	0035c603          	lbu	a2,3(a1)
    800076fc:	00300713          	li	a4,3
    80007700:	00c781a3          	sb	a2,3(a5)
    80007704:	02e68663          	beq	a3,a4,80007730 <__memmove+0xfc>
    80007708:	0045c603          	lbu	a2,4(a1)
    8000770c:	00400713          	li	a4,4
    80007710:	00c78223          	sb	a2,4(a5)
    80007714:	00e68e63          	beq	a3,a4,80007730 <__memmove+0xfc>
    80007718:	0055c603          	lbu	a2,5(a1)
    8000771c:	00500713          	li	a4,5
    80007720:	00c782a3          	sb	a2,5(a5)
    80007724:	00e68663          	beq	a3,a4,80007730 <__memmove+0xfc>
    80007728:	0065c703          	lbu	a4,6(a1)
    8000772c:	00e78323          	sb	a4,6(a5)
    80007730:	00813403          	ld	s0,8(sp)
    80007734:	01010113          	addi	sp,sp,16
    80007738:	00008067          	ret
    8000773c:	02061713          	slli	a4,a2,0x20
    80007740:	02075713          	srli	a4,a4,0x20
    80007744:	00e587b3          	add	a5,a1,a4
    80007748:	f0f574e3          	bgeu	a0,a5,80007650 <__memmove+0x1c>
    8000774c:	02069613          	slli	a2,a3,0x20
    80007750:	02065613          	srli	a2,a2,0x20
    80007754:	fff64613          	not	a2,a2
    80007758:	00e50733          	add	a4,a0,a4
    8000775c:	00c78633          	add	a2,a5,a2
    80007760:	fff7c683          	lbu	a3,-1(a5)
    80007764:	fff78793          	addi	a5,a5,-1
    80007768:	fff70713          	addi	a4,a4,-1
    8000776c:	00d70023          	sb	a3,0(a4)
    80007770:	fec798e3          	bne	a5,a2,80007760 <__memmove+0x12c>
    80007774:	00813403          	ld	s0,8(sp)
    80007778:	01010113          	addi	sp,sp,16
    8000777c:	00008067          	ret
    80007780:	02069713          	slli	a4,a3,0x20
    80007784:	02075713          	srli	a4,a4,0x20
    80007788:	00170713          	addi	a4,a4,1
    8000778c:	00e50733          	add	a4,a0,a4
    80007790:	00050793          	mv	a5,a0
    80007794:	0005c683          	lbu	a3,0(a1)
    80007798:	00178793          	addi	a5,a5,1
    8000779c:	00158593          	addi	a1,a1,1
    800077a0:	fed78fa3          	sb	a3,-1(a5)
    800077a4:	fee798e3          	bne	a5,a4,80007794 <__memmove+0x160>
    800077a8:	f89ff06f          	j	80007730 <__memmove+0xfc>
	...
