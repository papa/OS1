
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	3e013103          	ld	sp,992(sp) # 8000a3e0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	79c050ef          	jal	ra,800057b8 <start>

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
    800015b4:	090080e7          	jalr	144(ra) # 80004640 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00003097          	auipc	ra,0x3
    800015c8:	214080e7          	jalr	532(ra) # 800047d8 <_Z8printIntiii>
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
    80001604:	040080e7          	jalr	64(ra) # 80004640 <_Z11printStringPKc>
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
    80001634:	010080e7          	jalr	16(ra) # 80004640 <_Z11printStringPKc>
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
    80001654:	ff0080e7          	jalr	-16(ra) # 80004640 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00003097          	auipc	ra,0x3
    80001668:	174080e7          	jalr	372(ra) # 800047d8 <_Z8printIntiii>
        printString("\n");
    8000166c:	00007517          	auipc	a0,0x7
    80001670:	a7450513          	addi	a0,a0,-1420 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001674:	00003097          	auipc	ra,0x3
    80001678:	fcc080e7          	jalr	-52(ra) # 80004640 <_Z11printStringPKc>
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
    800016d4:	f70080e7          	jalr	-144(ra) # 80004640 <_Z11printStringPKc>
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
    800016f4:	f50080e7          	jalr	-176(ra) # 80004640 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00003097          	auipc	ra,0x3
    80001708:	0d4080e7          	jalr	212(ra) # 800047d8 <_Z8printIntiii>
        printString("\n");
    8000170c:	00007517          	auipc	a0,0x7
    80001710:	9d450513          	addi	a0,a0,-1580 # 800080e0 <CONSOLE_STATUS+0xd0>
    80001714:	00003097          	auipc	ra,0x3
    80001718:	f2c080e7          	jalr	-212(ra) # 80004640 <_Z11printStringPKc>
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
    80001774:	ed0080e7          	jalr	-304(ra) # 80004640 <_Z11printStringPKc>
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
    800017a0:	ea4080e7          	jalr	-348(ra) # 80004640 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00003097          	auipc	ra,0x3
    800017b4:	028080e7          	jalr	40(ra) # 800047d8 <_Z8printIntiii>
        printString("\n");
    800017b8:	00007517          	auipc	a0,0x7
    800017bc:	92850513          	addi	a0,a0,-1752 # 800080e0 <CONSOLE_STATUS+0xd0>
    800017c0:	00003097          	auipc	ra,0x3
    800017c4:	e80080e7          	jalr	-384(ra) # 80004640 <_Z11printStringPKc>
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
    80001858:	dec080e7          	jalr	-532(ra) # 80004640 <_Z11printStringPKc>
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
    8000189c:	da8080e7          	jalr	-600(ra) # 80004640 <_Z11printStringPKc>
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
    800018f0:	d54080e7          	jalr	-684(ra) # 80004640 <_Z11printStringPKc>
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
    80001938:	d0c080e7          	jalr	-756(ra) # 80004640 <_Z11printStringPKc>
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
    8000197c:	cc8080e7          	jalr	-824(ra) # 80004640 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00006517          	auipc	a0,0x6
    80001988:	6fc50513          	addi	a0,a0,1788 # 80008080 <CONSOLE_STATUS+0x70>
    8000198c:	00003097          	auipc	ra,0x3
    80001990:	cb4080e7          	jalr	-844(ra) # 80004640 <_Z11printStringPKc>
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
    800019b4:	c90080e7          	jalr	-880(ra) # 80004640 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	00009797          	auipc	a5,0x9
    800019bc:	a607b783          	ld	a5,-1440(a5) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	00009797          	auipc	a5,0x9
    800019c8:	9f47b783          	ld	a5,-1548(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    800019f0:	c54080e7          	jalr	-940(ra) # 80004640 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00006517          	auipc	a0,0x6
    80001a08:	67c50513          	addi	a0,a0,1660 # 80008080 <CONSOLE_STATUS+0x70>
    80001a0c:	00003097          	auipc	ra,0x3
    80001a10:	c34080e7          	jalr	-972(ra) # 80004640 <_Z11printStringPKc>
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
    80001a60:	be4080e7          	jalr	-1052(ra) # 80004640 <_Z11printStringPKc>
    printString("OK\n");
    80001a64:	00006517          	auipc	a0,0x6
    80001a68:	61c50513          	addi	a0,a0,1564 # 80008080 <CONSOLE_STATUS+0x70>
    80001a6c:	00003097          	auipc	ra,0x3
    80001a70:	bd4080e7          	jalr	-1068(ra) # 80004640 <_Z11printStringPKc>
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
    80001aa4:	ba0080e7          	jalr	-1120(ra) # 80004640 <_Z11printStringPKc>
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
    80001ad0:	b74080e7          	jalr	-1164(ra) # 80004640 <_Z11printStringPKc>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret
         printString("OK\n");
    80001ae4:	00006517          	auipc	a0,0x6
    80001ae8:	59c50513          	addi	a0,a0,1436 # 80008080 <CONSOLE_STATUS+0x70>
    80001aec:	00003097          	auipc	ra,0x3
    80001af0:	b54080e7          	jalr	-1196(ra) # 80004640 <_Z11printStringPKc>
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
    80001b1c:	b28080e7          	jalr	-1240(ra) # 80004640 <_Z11printStringPKc>
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
    80001b60:	ae4080e7          	jalr	-1308(ra) # 80004640 <_Z11printStringPKc>
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
    80001be8:	a5c080e7          	jalr	-1444(ra) # 80004640 <_Z11printStringPKc>
                return;
    80001bec:	f79ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001bf0:	00006517          	auipc	a0,0x6
    80001bf4:	4c850513          	addi	a0,a0,1224 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001bf8:	00003097          	auipc	ra,0x3
    80001bfc:	a48080e7          	jalr	-1464(ra) # 80004640 <_Z11printStringPKc>
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
    80001c60:	9e4080e7          	jalr	-1564(ra) # 80004640 <_Z11printStringPKc>
                return;
    80001c64:	f01ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c68:	00006517          	auipc	a0,0x6
    80001c6c:	45050513          	addi	a0,a0,1104 # 800080b8 <CONSOLE_STATUS+0xa8>
    80001c70:	00003097          	auipc	ra,0x3
    80001c74:	9d0080e7          	jalr	-1584(ra) # 80004640 <_Z11printStringPKc>
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
    80001c90:	9b4080e7          	jalr	-1612(ra) # 80004640 <_Z11printStringPKc>
    80001c94:	ed1ff06f          	j	80001b64 <_Z13stressTestingv+0x6c>

0000000080001c98 <_Z21memoryAllocationTestsv>:
{
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    stressTesting();
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	e50080e7          	jalr	-432(ra) # 80001af8 <_Z13stressTestingv>
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
    80001d24:	58078793          	addi	a5,a5,1408 # 8000a2a0 <_ZTV12TestPeriodic+0x10>
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
    80001d9c:	8a0080e7          	jalr	-1888(ra) # 8000f638 <_Unwind_Resume>

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
    80001de8:	00003097          	auipc	ra,0x3
    80001dec:	858080e7          	jalr	-1960(ra) # 80004640 <_Z11printStringPKc>

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
    80001ec8:	77c080e7          	jalr	1916(ra) # 80004640 <_Z11printStringPKc>
    80001ecc:	0140006f          	j	80001ee0 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ed0:	00006517          	auipc	a0,0x6
    80001ed4:	1a850513          	addi	a0,a0,424 # 80008078 <CONSOLE_STATUS+0x68>
    80001ed8:	00002097          	auipc	ra,0x2
    80001edc:	768080e7          	jalr	1896(ra) # 80004640 <_Z11printStringPKc>
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
    80001f5c:	6e8080e7          	jalr	1768(ra) # 80004640 <_Z11printStringPKc>

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
    80001fa4:	6a0080e7          	jalr	1696(ra) # 80004640 <_Z11printStringPKc>
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
    800020b4:	590080e7          	jalr	1424(ra) # 80004640 <_Z11printStringPKc>
        return;
    800020b8:	ef1ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020bc:	00006517          	auipc	a0,0x6
    800020c0:	fbc50513          	addi	a0,a0,-68 # 80008078 <CONSOLE_STATUS+0x68>
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	57c080e7          	jalr	1404(ra) # 80004640 <_Z11printStringPKc>
        return;
    800020cc:	eddff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020d0:	00006517          	auipc	a0,0x6
    800020d4:	fa850513          	addi	a0,a0,-88 # 80008078 <CONSOLE_STATUS+0x68>
    800020d8:	00002097          	auipc	ra,0x2
    800020dc:	568080e7          	jalr	1384(ra) # 80004640 <_Z11printStringPKc>
        return;
    800020e0:	ec9ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020e4:	00006517          	auipc	a0,0x6
    800020e8:	f9450513          	addi	a0,a0,-108 # 80008078 <CONSOLE_STATUS+0x68>
    800020ec:	00002097          	auipc	ra,0x2
    800020f0:	554080e7          	jalr	1364(ra) # 80004640 <_Z11printStringPKc>
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
    8000216c:	4d8080e7          	jalr	1240(ra) # 80004640 <_Z11printStringPKc>
    80002170:	e39ff06f          	j	80001fa8 <_Z17mallocGapFillTestv+0x88>

0000000080002174 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    80002174:	00008717          	auipc	a4,0x8
    80002178:	2fc72703          	lw	a4,764(a4) # 8000a470 <head>
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
    8000219c:	2d848493          	addi	s1,s1,728 # 8000a470 <head>
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
    800021d8:	29c72703          	lw	a4,668(a4) # 8000a470 <head>
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
    80002200:	29c72703          	lw	a4,668(a4) # 8000a498 <tail>
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
    80002224:	25048493          	addi	s1,s1,592 # 8000a470 <head>
    80002228:	0204b503          	ld	a0,32(s1)
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	1b4080e7          	jalr	436(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    80002234:	0284a783          	lw	a5,40(s1)
    80002238:	00008717          	auipc	a4,0x8
    8000223c:	01870713          	addi	a4,a4,24 # 8000a250 <string>
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
    80002268:	23472703          	lw	a4,564(a4) # 8000a498 <tail>
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
    80002398:	edc78793          	addi	a5,a5,-292 # 8000a270 <_ZTV14PeriodicThread+0x10>
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
    800023d4:	ea078793          	addi	a5,a5,-352 # 8000a270 <_ZTV14PeriodicThread+0x10>
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
    80002418:	e5c78793          	addi	a5,a5,-420 # 8000a270 <_ZTV14PeriodicThread+0x10>
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
    80002454:	e2078793          	addi	a5,a5,-480 # 8000a270 <_ZTV14PeriodicThread+0x10>
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
    800024a0:	0047b783          	ld	a5,4(a5) # 8000a4a0 <_ZN3PCB7runningE>
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
    80002574:	f304b483          	ld	s1,-208(s1) # 8000a4a0 <_ZN3PCB7runningE>

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
    80002590:	f1490913          	addi	s2,s2,-236 # 8000a4a0 <_ZN3PCB7runningE>
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
    800025f8:	b6c080e7          	jalr	-1172(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
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
    80002620:	ba8080e7          	jalr	-1112(ra) # 800041c4 <_ZN15MemoryAllocator5kfreeEPv>
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
    8000264c:	b7c080e7          	jalr	-1156(ra) # 800041c4 <_ZN15MemoryAllocator5kfreeEPv>
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
    800026b4:	df090913          	addi	s2,s2,-528 # 8000a4a0 <_ZN3PCB7runningE>
    800026b8:	00993023          	sd	s1,0(s2)
    800026bc:	00100a13          	li	s4,1
    800026c0:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800026c4:	00001537          	lui	a0,0x1
    800026c8:	00002097          	auipc	ra,0x2
    800026cc:	a98080e7          	jalr	-1384(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
    800026d0:	00050993          	mv	s3,a0
    800026d4:	06000513          	li	a0,96
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	f0c080e7          	jalr	-244(ra) # 800025e4 <_ZN3PCBnwEm>
    800026e0:	00050493          	mv	s1,a0
    800026e4:	00200713          	li	a4,2
    800026e8:	00098693          	mv	a3,s3
    800026ec:	00000613          	li	a2,0
    800026f0:	00008597          	auipc	a1,0x8
    800026f4:	d005b583          	ld	a1,-768(a1) # 8000a3f0 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    8000271c:	a48080e7          	jalr	-1464(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
    80002720:	00050993          	mv	s3,a0
    80002724:	06000513          	li	a0,96
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	ebc080e7          	jalr	-324(ra) # 800025e4 <_ZN3PCBnwEm>
    80002730:	00050493          	mv	s1,a0
    80002734:	00200713          	li	a4,2
    80002738:	00098693          	mv	a3,s3
    8000273c:	00000613          	li	a2,0
    80002740:	00008597          	auipc	a1,0x8
    80002744:	ce05b583          	ld	a1,-800(a1) # 8000a420 <_GLOBAL_OFFSET_TABLE_+0x80>
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
    800027b8:	cec78793          	addi	a5,a5,-788 # 8000a4a0 <_ZN3PCB7runningE>
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
    80002804:	ca07bc23          	sd	zero,-840(a5) # 8000a4b8 <_ZN3PCB16timeSliceCounterE>
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
    80002838:	c6c70713          	addi	a4,a4,-916 # 8000a4a0 <_ZN3PCB7runningE>
    8000283c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002840:	00073703          	ld	a4,0(a4)
    80002844:	00008697          	auipc	a3,0x8
    80002848:	ba46b683          	ld	a3,-1116(a3) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800028c8:	bfc6b683          	ld	a3,-1028(a3) # 8000a4c0 <_ZN3PCB10savedRegA4E>
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
    800029ac:	b186b683          	ld	a3,-1256(a3) # 8000a4c0 <_ZN3PCB10savedRegA4E>
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
    80002a1c:	a74080e7          	jalr	-1420(ra) # 8000448c <_ZN10KSemaphorenwEm>
    80002a20:	00050493          	mv	s1,a0
    80002a24:	00000593          	li	a1,0
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	7fc080e7          	jalr	2044(ra) # 80004224 <_ZN10KSemaphoreC1Ei>
    80002a30:	00008797          	auipc	a5,0x8
    80002a34:	a897bc23          	sd	s1,-1384(a5) # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a38:	01800513          	li	a0,24
    80002a3c:	00002097          	auipc	ra,0x2
    80002a40:	a50080e7          	jalr	-1456(ra) # 8000448c <_ZN10KSemaphorenwEm>
    80002a44:	00050493          	mv	s1,a0
    80002a48:	00000593          	li	a1,0
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	7d8080e7          	jalr	2008(ra) # 80004224 <_ZN10KSemaphoreC1Ei>
    80002a54:	00008797          	auipc	a5,0x8
    80002a58:	a697be23          	sd	s1,-1412(a5) # 8000a4d0 <_ZN8KConsole19hasCharactersOutputE>
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
    80002a80:	ab0080e7          	jalr	-1360(ra) # 8000452c <_ZN10KSemaphoredlEPv>
    80002a84:	00090513          	mv	a0,s2
    80002a88:	0000d097          	auipc	ra,0xd
    80002a8c:	bb0080e7          	jalr	-1104(ra) # 8000f638 <_Unwind_Resume>
    80002a90:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002a94:	00048513          	mv	a0,s1
    80002a98:	00002097          	auipc	ra,0x2
    80002a9c:	a94080e7          	jalr	-1388(ra) # 8000452c <_ZN10KSemaphoredlEPv>
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	0000d097          	auipc	ra,0xd
    80002aa8:	b94080e7          	jalr	-1132(ra) # 8000f638 <_Unwind_Resume>

0000000080002aac <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002aac:	00008697          	auipc	a3,0x8
    80002ab0:	a1c68693          	addi	a3,a3,-1508 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
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
    80002ae4:	a2870713          	addi	a4,a4,-1496 # 8000c508 <_ZN8KConsole11inputBufferE>
    80002ae8:	00c70633          	add	a2,a4,a2
    80002aec:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002af0:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002af4:	0006b503          	ld	a0,0(a3)
    80002af8:	00002097          	auipc	ra,0x2
    80002afc:	94c080e7          	jalr	-1716(ra) # 80004444 <_ZN10KSemaphore6signalEv>
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
    80002b2c:	9a048493          	addi	s1,s1,-1632 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
    80002b30:	0004b503          	ld	a0,0(s1)
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	798080e7          	jalr	1944(ra) # 800042cc <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b3c:	0184b783          	ld	a5,24(s1)
    80002b40:	0104b703          	ld	a4,16(s1)
    80002b44:	04e78063          	beq	a5,a4,80002b84 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b48:	0000a717          	auipc	a4,0xa
    80002b4c:	9c070713          	addi	a4,a4,-1600 # 8000c508 <_ZN8KConsole11inputBufferE>
    80002b50:	00f70733          	add	a4,a4,a5
    80002b54:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b58:	00178793          	addi	a5,a5,1
    80002b5c:	00002737          	lui	a4,0x2
    80002b60:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b64:	00e7f7b3          	and	a5,a5,a4
    80002b68:	00008717          	auipc	a4,0x8
    80002b6c:	96f73c23          	sd	a5,-1672(a4) # 8000a4e0 <_ZN8KConsole9inputHeadE>

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
    80002b90:	93c68693          	addi	a3,a3,-1732 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
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
    80002bd4:	93868693          	addi	a3,a3,-1736 # 8000a508 <_ZN8KConsole12outputBufferE>
    80002bd8:	00c68633          	add	a2,a3,a2
    80002bdc:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002be0:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002be4:	00873503          	ld	a0,8(a4)
    80002be8:	00002097          	auipc	ra,0x2
    80002bec:	85c080e7          	jalr	-1956(ra) # 80004444 <_ZN10KSemaphore6signalEv>
}
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret
    80002c00:	00008067          	ret

0000000080002c04 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c04:	00007797          	auipc	a5,0x7
    80002c08:	7ac7b783          	ld	a5,1964(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002c3c:	7987b783          	ld	a5,1944(a5) # 8000a3d0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002c70:	7447b783          	ld	a5,1860(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002cbc:	81048493          	addi	s1,s1,-2032 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
    80002cc0:	0084b503          	ld	a0,8(s1)
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	608080e7          	jalr	1544(ra) # 800042cc <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002ccc:	0284b783          	ld	a5,40(s1)
    80002cd0:	0204b703          	ld	a4,32(s1)
    80002cd4:	04e78063          	beq	a5,a4,80002d14 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002cd8:	00008717          	auipc	a4,0x8
    80002cdc:	83070713          	addi	a4,a4,-2000 # 8000a508 <_ZN8KConsole12outputBufferE>
    80002ce0:	00f70733          	add	a4,a4,a5
    80002ce4:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002ce8:	00178793          	addi	a5,a5,1
    80002cec:	00002737          	lui	a4,0x2
    80002cf0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002cf4:	00e7f7b3          	and	a5,a5,a4
    80002cf8:	00007717          	auipc	a4,0x7
    80002cfc:	7ef73c23          	sd	a5,2040(a4) # 8000a4f0 <_ZN8KConsole10outputHeadE>

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
    80002d64:	76870713          	addi	a4,a4,1896 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
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
    80002de8:	71453503          	ld	a0,1812(a0) # 8000a4f8 <_ZN8KConsole11pendingPutcE>
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
    80002e28:	5e47b783          	ld	a5,1508(a5) # 8000a408 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e2c:	0007c783          	lbu	a5,0(a5)
    80002e30:	00078e63          	beqz	a5,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	fa4080e7          	jalr	-92(ra) # 80002dd8 <_ZN8KConsole17outputBufferEmptyEv>
    80002e3c:	00050863          	beqz	a0,80002e4c <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e40:	00007797          	auipc	a5,0x7
    80002e44:	6c07b783          	ld	a5,1728(a5) # 8000a500 <_ZN8KConsole11pendingGetcE>
    80002e48:	fc0784e3          	beqz	a5,80002e10 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e4c:	00007797          	auipc	a5,0x7
    80002e50:	5647b783          	ld	a5,1380(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80002e70:	68c7b783          	ld	a5,1676(a5) # 8000a4f8 <_ZN8KConsole11pendingPutcE>
    80002e74:	fa0784e3          	beqz	a5,80002e1c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	6e4080e7          	jalr	1764(ra) # 8000155c <sysCallGetCharOutput>
    80002e80:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002e84:	00007717          	auipc	a4,0x7
    80002e88:	64470713          	addi	a4,a4,1604 # 8000a4c8 <_ZN8KConsole18hasCharactersInputE>
    80002e8c:	03073783          	ld	a5,48(a4)
    80002e90:	fff78793          	addi	a5,a5,-1
    80002e94:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002e98:	00007797          	auipc	a5,0x7
    80002e9c:	5107b783          	ld	a5,1296(a5) # 8000a3a8 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80003020:	3f47b783          	ld	a5,1012(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003024:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003028:	00500793          	li	a5,5
    8000302c:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003030:	0000b797          	auipc	a5,0xb
    80003034:	4d87b783          	ld	a5,1240(a5) # 8000e508 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003074:	48c7bc23          	sd	a2,1176(a5) # 8000e508 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003078:	fedff06f          	j	80003064 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000307c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    8000307c:	0000b517          	auipc	a0,0xb
    80003080:	48c53503          	ld	a0,1164(a0) # 8000e508 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003094:	35873703          	ld	a4,856(a4) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800030c0:	32c73703          	ld	a4,812(a4) # 8000a3e8 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    800030e0:	4297b623          	sd	s1,1068(a5) # 8000e508 <_ZN12SleepPCBList15sleepingPCBHeadE>
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
    80003118:	04c080e7          	jalr	76(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
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
    80003140:	088080e7          	jalr	136(ra) # 800041c4 <_ZN15MemoryAllocator5kfreeEPv>
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
    80003164:	3b07b783          	ld	a5,944(a5) # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031a4:	3707b783          	ld	a5,880(a5) # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
    800031a8:	02078263          	beqz	a5,800031cc <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031ac:	0000b797          	auipc	a5,0xb
    800031b0:	36478793          	addi	a5,a5,868 # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031d0:	34478793          	addi	a5,a5,836 # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
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
    800031f0:	32453503          	ld	a0,804(a0) # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003204:	30f73823          	sd	a5,784(a4) # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003208:	00053423          	sd	zero,8(a0)
    return retval;
}
    8000320c:	00813403          	ld	s0,8(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003218:	0000b797          	auipc	a5,0xb
    8000321c:	2f878793          	addi	a5,a5,760 # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
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
    80003244:	2d04b483          	ld	s1,720(s1) # 8000e510 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003248:	02048863          	beqz	s1,80003278 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    8000324c:	00000613          	li	a2,0
    80003250:	01000593          	li	a1,16
    80003254:	0004851b          	sext.w	a0,s1
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	580080e7          	jalr	1408(ra) # 800047d8 <_Z8printIntiii>
        printString("\n");
    80003260:	00005517          	auipc	a0,0x5
    80003264:	e8050513          	addi	a0,a0,-384 # 800080e0 <CONSOLE_STATUS+0xd0>
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	3d8080e7          	jalr	984(ra) # 80004640 <_Z11printStringPKc>
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
    800032f4:	fe878793          	addi	a5,a5,-24 # 8000a2d8 <_ZTV6Thread+0x10>
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
    8000332c:	fd878793          	addi	a5,a5,-40 # 8000a300 <_ZTV9Semaphore+0x10>
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
    800034fc:	de078793          	addi	a5,a5,-544 # 8000a2d8 <_ZTV6Thread+0x10>
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
    80003534:	da878793          	addi	a5,a5,-600 # 8000a2d8 <_ZTV6Thread+0x10>
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
    800035b8:	d4c78793          	addi	a5,a5,-692 # 8000a300 <_ZTV9Semaphore+0x10>
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
    800036c0:	bb478793          	addi	a5,a5,-1100 # 8000a270 <_ZTV14PeriodicThread+0x10>
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
    800036f4:	cd07b783          	ld	a5,-816(a5) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800037a8:	d7c7c783          	lbu	a5,-644(a5) # 8000e520 <_ZN5Riscv16kernelMainCalledE>
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
    800037cc:	d4f70c23          	sb	a5,-680(a4) # 8000e520 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	f10080e7          	jalr	-240(ra) # 800036e0 <_ZN5Riscv10initSystemEv>

    enableInterrupts();
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	f44080e7          	jalr	-188(ra) # 8000371c <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800037e0:	00007797          	auipc	a5,0x7
    800037e4:	c207b783          	ld	a5,-992(a5) # 8000a400 <_GLOBAL_OFFSET_TABLE_+0x60>
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
    8000380c:	d0f70ca3          	sb	a5,-743(a4) # 8000e521 <_ZN5Riscv12finishSystemE>
    80003810:	00c0006f          	j	8000381c <_ZN5Riscv10kernelMainEv+0x78>
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	b20080e7          	jalr	-1248(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    8000381c:	00007797          	auipc	a5,0x7
    80003820:	bdc7b783          	ld	a5,-1060(a5) # 8000a3f8 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80003864:	00002097          	auipc	ra,0x2
    80003868:	8a4080e7          	jalr	-1884(ra) # 80005108 <_Z8userMainv>
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
    800038e8:	b2c73703          	ld	a4,-1236(a4) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    8000391c:	af87b783          	ld	a5,-1288(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003968:	ac47b783          	ld	a5,-1340(a5) # 8000a428 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000396c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003970:	00007797          	auipc	a5,0x7
    80003974:	aa07b783          	ld	a5,-1376(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    800039f4:	9c07b783          	ld	a5,-1600(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80003a14:	9c07b783          	ld	a5,-1600(a5) # 8000a3d0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80003a30:	99c7b783          	ld	a5,-1636(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003a34:	0007b783          	ld	a5,0(a5)
    80003a38:	0c079263          	bnez	a5,80003afc <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	5d8080e7          	jalr	1496(ra) # 80006014 <plic_claim>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	608080e7          	jalr	1544(ra) # 8000604c <plic_complete>
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
    80003a7c:	aa870713          	addi	a4,a4,-1368 # 8000e520 <_ZN5Riscv16kernelMainCalledE>
    80003a80:	00873783          	ld	a5,8(a4)
    80003a84:	00178793          	addi	a5,a5,1
    80003a88:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003a8c:	00007497          	auipc	s1,0x7
    80003a90:	94c4b483          	ld	s1,-1716(s1) # 8000a3d8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003a94:	0004b783          	ld	a5,0(s1)
    80003a98:	00178793          	addi	a5,a5,1
    80003a9c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	5dc080e7          	jalr	1500(ra) # 8000307c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003aa8:	00007797          	auipc	a5,0x7
    80003aac:	9687b783          	ld	a5,-1688(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
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
    80003b04:	8c873703          	ld	a4,-1848(a4) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80003b74:	618080e7          	jalr	1560(ra) # 80004188 <_ZN15MemoryAllocator15memAllocHandlerEv>
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
    80003b98:	658080e7          	jalr	1624(ra) # 800041ec <_ZN15MemoryAllocator14memFreeHandlerEv>
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
    80003bec:	8cc080e7          	jalr	-1844(ra) # 800044b4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003bf0:	f89ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	960080e7          	jalr	-1696(ra) # 80004554 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003bfc:	f7dff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	9a8080e7          	jalr	-1624(ra) # 800045a8 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003c08:	f71ff06f          	j	80003b78 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	9e0080e7          	jalr	-1568(ra) # 800045ec <_ZN10KSemaphore15semCloseHandlerEv>
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
    80003c4c:	8e872703          	lw	a4,-1816(a4) # 8000e530 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c50:	00100793          	li	a5,1
    80003c54:	04f70a63          	beq	a4,a5,80003ca8 <_ZN15MemoryAllocator10initMemoryEv+0x6c>
        return;
    memoryInitiliaized = 1;
    80003c58:	0000b797          	auipc	a5,0xb
    80003c5c:	8d878793          	addi	a5,a5,-1832 # 8000e530 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003c60:	00100713          	li	a4,1
    80003c64:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003c68:	0007b423          	sd	zero,8(a5)
    tailAllocated = 0;
    80003c6c:	0007b823          	sd	zero,16(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003c70:	00006717          	auipc	a4,0x6
    80003c74:	74873703          	ld	a4,1864(a4) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c78:	00073703          	ld	a4,0(a4)
    80003c7c:	00e7bc23          	sd	a4,24(a5)
    headFree->next = 0;
    80003c80:	00073423          	sd	zero,8(a4)
    headFree->prev = 0;
    80003c84:	00073823          	sd	zero,16(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003c88:	00006697          	auipc	a3,0x6
    80003c8c:	7906b683          	ld	a3,1936(a3) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003c90:	0006b683          	ld	a3,0(a3)
    80003c94:	40e686b3          	sub	a3,a3,a4
    80003c98:	fe968693          	addi	a3,a3,-23
    80003c9c:	00d73023          	sd	a3,0(a4)
    tailFree = headFree;
    80003ca0:	0187b703          	ld	a4,24(a5)
    80003ca4:	02e7b023          	sd	a4,32(a5)
}
    80003ca8:	00813403          	ld	s0,8(sp)
    80003cac:	01010113          	addi	sp,sp,16
    80003cb0:	00008067          	ret

0000000080003cb4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80003cb4:	fd010113          	addi	sp,sp,-48
    80003cb8:	02113423          	sd	ra,40(sp)
    80003cbc:	02813023          	sd	s0,32(sp)
    80003cc0:	00913c23          	sd	s1,24(sp)
    80003cc4:	01213823          	sd	s2,16(sp)
    80003cc8:	01313423          	sd	s3,8(sp)
    80003ccc:	03010413          	addi	s0,sp,48
    80003cd0:	00050493          	mv	s1,a0
    80003cd4:	00058993          	mv	s3,a1
    80003cd8:	00060913          	mv	s2,a2
    initMemory();
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	f60080e7          	jalr	-160(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003ce4:	0004b423          	sd	zero,8(s1)
    newAllocated->prev = 0;
    80003ce8:	0004b823          	sd	zero,16(s1)
    newAllocated->size = size;
    80003cec:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80003cf0:	0000b797          	auipc	a5,0xb
    80003cf4:	8487b783          	ld	a5,-1976(a5) # 8000e538 <_ZN15MemoryAllocator13headAllocatedE>
    80003cf8:	02078e63          	beqz	a5,80003d34 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x80>
    {
        headAllocated = tailAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003cfc:	00006717          	auipc	a4,0x6
    80003d00:	71c73703          	ld	a4,1820(a4) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d04:	00073703          	ld	a4,0(a4)
    80003d08:	05276063          	bltu	a4,s2,80003d48 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x94>
    {
        BlockHeader* allFrag = (BlockHeader*)nxtAddr;
        newAllocated->prev = allFrag->prev;
    80003d0c:	01093703          	ld	a4,16(s2)
    80003d10:	00e4b823          	sd	a4,16(s1)
        if(allFrag->prev) allFrag->prev->next = newAllocated;
    80003d14:	00070463          	beqz	a4,80003d1c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x68>
    80003d18:	00973423          	sd	s1,8(a4)
        newAllocated->next = allFrag;
    80003d1c:	0124b423          	sd	s2,8(s1)
        allFrag->prev = newAllocated;
    80003d20:	00993823          	sd	s1,16(s2)
        if(allFrag == headAllocated)
    80003d24:	03279e63          	bne	a5,s2,80003d60 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0xac>
            headAllocated = newAllocated;
    80003d28:	0000b797          	auipc	a5,0xb
    80003d2c:	8097b823          	sd	s1,-2032(a5) # 8000e538 <_ZN15MemoryAllocator13headAllocatedE>
    80003d30:	0300006f          	j	80003d60 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0xac>
        headAllocated = tailAllocated = newAllocated;
    80003d34:	0000a797          	auipc	a5,0xa
    80003d38:	7fc78793          	addi	a5,a5,2044 # 8000e530 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d3c:	0097b823          	sd	s1,16(a5)
    80003d40:	0097b423          	sd	s1,8(a5)
    80003d44:	01c0006f          	j	80003d60 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0xac>
    }
    else
    {
        tailAllocated->next = newAllocated;
    80003d48:	0000a797          	auipc	a5,0xa
    80003d4c:	7e878793          	addi	a5,a5,2024 # 8000e530 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d50:	0107b703          	ld	a4,16(a5)
    80003d54:	00973423          	sd	s1,8(a4)
        newAllocated->prev = tailAllocated;
    80003d58:	00e4b823          	sd	a4,16(s1)
        tailAllocated = newAllocated;
    80003d5c:	0097b823          	sd	s1,16(a5)
    }
}
    80003d60:	02813083          	ld	ra,40(sp)
    80003d64:	02013403          	ld	s0,32(sp)
    80003d68:	01813483          	ld	s1,24(sp)
    80003d6c:	01013903          	ld	s2,16(sp)
    80003d70:	00813983          	ld	s3,8(sp)
    80003d74:	03010113          	addi	sp,sp,48
    80003d78:	00008067          	ret

0000000080003d7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003d7c:	fe010113          	addi	sp,sp,-32
    80003d80:	00113c23          	sd	ra,24(sp)
    80003d84:	00813823          	sd	s0,16(sp)
    80003d88:	00913423          	sd	s1,8(sp)
    80003d8c:	01213023          	sd	s2,0(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	00050913          	mv	s2,a0
    initMemory();
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	ea4080e7          	jalr	-348(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003da0:	0000a497          	auipc	s1,0xa
    80003da4:	7a84b483          	ld	s1,1960(s1) # 8000e548 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003da8:	00000713          	li	a4,0
    while(curr != 0)
    80003dac:	14048663          	beqz	s1,80003ef8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x17c>
    {
        if(curr->size >= size)
    80003db0:	0004b783          	ld	a5,0(s1)
    80003db4:	0127f863          	bgeu	a5,s2,80003dc4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003db8:	00048713          	mv	a4,s1
        curr = curr->next;
    80003dbc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003dc0:	fedff06f          	j	80003dac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003dc4:	01890693          	addi	a3,s2,24
    80003dc8:	00d486b3          	add	a3,s1,a3
            void* nxtAllocatedAdr = ((char*)curr + curr->size + sizeof(BlockHeader));
    80003dcc:	01878613          	addi	a2,a5,24
    80003dd0:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80003dd4:	00006597          	auipc	a1,0x6
    80003dd8:	6445b583          	ld	a1,1604(a1) # 8000a418 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003ddc:	0005b583          	ld	a1,0(a1)
    80003de0:	0cd5ee63          	bltu	a1,a3,80003ebc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x140>
                uint64 size2 = curr->size - size;
    80003de4:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003de8:	01800513          	li	a0,24
    80003dec:	04b57c63          	bgeu	a0,a1,80003e44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc8>
                    if(curr == tailFree) tailFree = newFree;
    80003df0:	0000a797          	auipc	a5,0xa
    80003df4:	7607b783          	ld	a5,1888(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80003df8:	02978663          	beq	a5,s1,80003e24 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa8>
                    newFree->next = curr->next;
    80003dfc:	0084b783          	ld	a5,8(s1)
    80003e00:	00f6b423          	sd	a5,8(a3)
                    if(newFree->next) newFree->next->prev = newFree;
    80003e04:	00078463          	beqz	a5,80003e0c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
    80003e08:	00d7b823          	sd	a3,16(a5)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e0c:	fe858593          	addi	a1,a1,-24
    80003e10:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    80003e14:	00070e63          	beqz	a4,80003e30 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                        prev->next = newFree;
    80003e18:	00d73423          	sd	a3,8(a4)
                        newFree->prev = prev;
    80003e1c:	00e6b823          	sd	a4,16(a3)
    80003e20:	0ac0006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                    if(curr == tailFree) tailFree = newFree;
    80003e24:	0000a797          	auipc	a5,0xa
    80003e28:	72d7b623          	sd	a3,1836(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80003e2c:	fd1ff06f          	j	80003dfc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x80>
                        headFree = newFree;
    80003e30:	0000a797          	auipc	a5,0xa
    80003e34:	70d7bc23          	sd	a3,1816(a5) # 8000e548 <_ZN15MemoryAllocator8headFreeE>
                        if(headFree) headFree->prev = 0;
    80003e38:	08068a63          	beqz	a3,80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
    80003e3c:	0006b823          	sd	zero,16(a3)
    80003e40:	08c0006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                    if(prev != 0)
    80003e44:	04070663          	beqz	a4,80003e90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x114>
                        prev->next = curr->next;
    80003e48:	0084b683          	ld	a3,8(s1)
    80003e4c:	00d73423          	sd	a3,8(a4)
                        if(prev->next)
    80003e50:	02068863          	beqz	a3,80003e80 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
                            prev->next->prev = prev;
    80003e54:	00e6b823          	sd	a4,16(a3)
                            if(curr == tailFree) tailFree = prev->next;
    80003e58:	0000a697          	auipc	a3,0xa
    80003e5c:	6f86b683          	ld	a3,1784(a3) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80003e60:	00968663          	beq	a3,s1,80003e6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    size+=size2;
    80003e64:	00078913          	mv	s2,a5
    80003e68:	0640006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                            if(curr == tailFree) tailFree = prev->next;
    80003e6c:	00873703          	ld	a4,8(a4)
    80003e70:	0000a697          	auipc	a3,0xa
    80003e74:	6ee6b023          	sd	a4,1760(a3) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
                    size+=size2;
    80003e78:	00078913          	mv	s2,a5
    80003e7c:	0500006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                            tailFree = prev;
    80003e80:	0000a697          	auipc	a3,0xa
    80003e84:	6ce6b823          	sd	a4,1744(a3) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
                    size+=size2;
    80003e88:	00078913          	mv	s2,a5
    80003e8c:	0400006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                        headFree = curr->next;
    80003e90:	0084b703          	ld	a4,8(s1)
    80003e94:	0000a697          	auipc	a3,0xa
    80003e98:	6ae6ba23          	sd	a4,1716(a3) # 8000e548 <_ZN15MemoryAllocator8headFreeE>
                        if(headFree) headFree->prev = 0;
    80003e9c:	00070863          	beqz	a4,80003eac <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x130>
    80003ea0:	00073823          	sd	zero,16(a4)
                    size+=size2;
    80003ea4:	00078913          	mv	s2,a5
    80003ea8:	0240006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                        else tailFree = headFree;
    80003eac:	0000a697          	auipc	a3,0xa
    80003eb0:	6ae6b223          	sd	a4,1700(a3) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
                    size+=size2;
    80003eb4:	00078913          	mv	s2,a5
    80003eb8:	0140006f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
                if(prev != 0)
    80003ebc:	02070463          	beqz	a4,80003ee4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x168>
                    prev->next = 0;
    80003ec0:	00073423          	sd	zero,8(a4)
                    tailFree = prev;
    80003ec4:	0000a797          	auipc	a5,0xa
    80003ec8:	68e7b623          	sd	a4,1676(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
            insertAllFragment(oldAddr,size,nxtAllocatedAdr);
    80003ecc:	00090593          	mv	a1,s2
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	de0080e7          	jalr	-544(ra) # 80003cb4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003edc:	01848513          	addi	a0,s1,24
            break;
    80003ee0:	01c0006f          	j	80003efc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x180>
                    headFree = tailFree = 0;
    80003ee4:	0000a797          	auipc	a5,0xa
    80003ee8:	64c78793          	addi	a5,a5,1612 # 8000e530 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003eec:	0207b023          	sd	zero,32(a5)
    80003ef0:	0007bc23          	sd	zero,24(a5)
    80003ef4:	fd9ff06f          	j	80003ecc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x150>
    uint64 retval = 0;
    80003ef8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003efc:	01813083          	ld	ra,24(sp)
    80003f00:	01013403          	ld	s0,16(sp)
    80003f04:	00813483          	ld	s1,8(sp)
    80003f08:	00013903          	ld	s2,0(sp)
    80003f0c:	02010113          	addi	sp,sp,32
    80003f10:	00008067          	ret

0000000080003f14 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003f14:	ff010113          	addi	sp,sp,-16
    80003f18:	00113423          	sd	ra,8(sp)
    80003f1c:	00813023          	sd	s0,0(sp)
    80003f20:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	e58080e7          	jalr	-424(ra) # 80003d7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003f2c:	00813083          	ld	ra,8(sp)
    80003f30:	00013403          	ld	s0,0(sp)
    80003f34:	01010113          	addi	sp,sp,16
    80003f38:	00008067          	ret

0000000080003f3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003f3c:	fe010113          	addi	sp,sp,-32
    80003f40:	00113c23          	sd	ra,24(sp)
    80003f44:	00813823          	sd	s0,16(sp)
    80003f48:	00913423          	sd	s1,8(sp)
    80003f4c:	01213023          	sd	s2,0(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	00050493          	mv	s1,a0
    80003f58:	00058913          	mv	s2,a1
    initMemory();
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	ce0080e7          	jalr	-800(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003f64:	0000a797          	auipc	a5,0xa
    80003f68:	5e47b783          	ld	a5,1508(a5) # 8000e548 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003f6c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003f70:	0004b423          	sd	zero,8(s1)
    newSegment->prev = 0;
    80003f74:	0004b823          	sd	zero,16(s1)
    BlockHeader* prev = 0;
    80003f78:	00000713          	li	a4,0
    while(curr != 0)
    80003f7c:	00078e63          	beqz	a5,80003f98 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
    {
        if((void*)curr > addr)
    80003f80:	00f4e863          	bltu	s1,a5,80003f90 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
            newSegment->next = curr;
            curr->prev = newSegment;
            break;
        }

        prev = curr;
    80003f84:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f88:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f8c:	ff1ff06f          	j	80003f7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
            newSegment->next = curr;
    80003f90:	00f4b423          	sd	a5,8(s1)
            curr->prev = newSegment;
    80003f94:	0097b823          	sd	s1,16(a5)
    }

    if(prev == 0)
    80003f98:	04070a63          	beqz	a4,80003fec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xb0>
        newSegment->prev = 0;
        if(curr == 0) tailFree = headFree;
    }
    else
    {
        prev->next = newSegment;
    80003f9c:	00973423          	sd	s1,8(a4)
        newSegment->prev = prev;
    80003fa0:	00e4b823          	sd	a4,16(s1)
        if(curr == 0) tailFree = newSegment;
    80003fa4:	06078263          	beqz	a5,80004008 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xcc>
    }

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003fa8:	0084b783          	ld	a5,8(s1)
    80003fac:	00078a63          	beqz	a5,80003fc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
    80003fb0:	0004b603          	ld	a2,0(s1)
    80003fb4:	01860693          	addi	a3,a2,24
    80003fb8:	00d486b3          	add	a3,s1,a3
    80003fbc:	04d78c63          	beq	a5,a3,80004014 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xd8>
        {
            tailFree = newSegment;
        }
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003fc0:	00070a63          	beqz	a4,80003fd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x98>
    80003fc4:	00073683          	ld	a3,0(a4)
    80003fc8:	01868793          	addi	a5,a3,24
    80003fcc:	00f707b3          	add	a5,a4,a5
    80003fd0:	06978a63          	beq	a5,s1,80004044 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x108>
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
        if(prev->next) prev->next->prev = prev;
        else tailFree = prev;
    }
}
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00813483          	ld	s1,8(sp)
    80003fe0:	00013903          	ld	s2,0(sp)
    80003fe4:	02010113          	addi	sp,sp,32
    80003fe8:	00008067          	ret
        headFree = newSegment;
    80003fec:	0000a697          	auipc	a3,0xa
    80003ff0:	5496be23          	sd	s1,1372(a3) # 8000e548 <_ZN15MemoryAllocator8headFreeE>
        newSegment->prev = 0;
    80003ff4:	0004b823          	sd	zero,16(s1)
        if(curr == 0) tailFree = headFree;
    80003ff8:	fa0798e3          	bnez	a5,80003fa8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x6c>
    80003ffc:	0000a797          	auipc	a5,0xa
    80004000:	5497ba23          	sd	s1,1364(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80004004:	fa5ff06f          	j	80003fa8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x6c>
        if(curr == 0) tailFree = newSegment;
    80004008:	0000a797          	auipc	a5,0xa
    8000400c:	5497b423          	sd	s1,1352(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80004010:	f99ff06f          	j	80003fa8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x6c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004014:	0007b683          	ld	a3,0(a5)
    80004018:	00d60633          	add	a2,a2,a3
    8000401c:	01860613          	addi	a2,a2,24
    80004020:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004024:	0087b783          	ld	a5,8(a5)
    80004028:	00f4b423          	sd	a5,8(s1)
        if(newSegment->next)
    8000402c:	00078663          	beqz	a5,80004038 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xfc>
            newSegment->next->prev = newSegment;
    80004030:	0097b823          	sd	s1,16(a5)
    80004034:	f8dff06f          	j	80003fc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
            tailFree = newSegment;
    80004038:	0000a797          	auipc	a5,0xa
    8000403c:	5097bc23          	sd	s1,1304(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
    80004040:	f81ff06f          	j	80003fc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004044:	0004b783          	ld	a5,0(s1)
    80004048:	00f686b3          	add	a3,a3,a5
    8000404c:	01868693          	addi	a3,a3,24
    80004050:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004054:	0084b783          	ld	a5,8(s1)
    80004058:	00f73423          	sd	a5,8(a4)
        if(prev->next) prev->next->prev = prev;
    8000405c:	00078663          	beqz	a5,80004068 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x12c>
    80004060:	00e7b823          	sd	a4,16(a5)
    80004064:	f71ff06f          	j	80003fd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x98>
        else tailFree = prev;
    80004068:	0000a797          	auipc	a5,0xa
    8000406c:	4ee7b423          	sd	a4,1256(a5) # 8000e550 <_ZN15MemoryAllocator8tailFreeE>
}
    80004070:	f65ff06f          	j	80003fd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x98>

0000000080004074 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004074:	fe010113          	addi	sp,sp,-32
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	00813823          	sd	s0,16(sp)
    80004080:	00913423          	sd	s1,8(sp)
    80004084:	01213023          	sd	s2,0(sp)
    80004088:	02010413          	addi	s0,sp,32
    8000408c:	00050913          	mv	s2,a0
    initMemory();
    80004090:	00000097          	auipc	ra,0x0
    80004094:	bac080e7          	jalr	-1108(ra) # 80003c3c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004098:	0000a497          	auipc	s1,0xa
    8000409c:	4a04b483          	ld	s1,1184(s1) # 8000e538 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800040a0:	00000713          	li	a4,0
    while(curr != 0)
    800040a4:	02048e63          	beqz	s1,800040e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800040a8:	01848793          	addi	a5,s1,24
    800040ac:	01278863          	beq	a5,s2,800040bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800040b0:	00048713          	mv	a4,s1
        curr = curr->next;
    800040b4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800040b8:	fedff06f          	j	800040a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800040bc:	04070863          	beqz	a4,8000410c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x98>
                prev->next = curr->next;
    800040c0:	0084b783          	ld	a5,8(s1)
    800040c4:	00f73423          	sd	a5,8(a4)
                if(prev->next) prev->next->prev = prev;
    800040c8:	02078c63          	beqz	a5,80004100 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
    800040cc:	00e7b823          	sd	a4,16(a5)
            insertNewFreeSegment((void*)curr, curr->size);
    800040d0:	0004b583          	ld	a1,0(s1)
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	e64080e7          	jalr	-412(ra) # 80003f3c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800040e0:	04048863          	beqz	s1,80004130 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xbc>
        return 0;
    800040e4:	00000513          	li	a0,0
    else
        return 1;
}
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	01013403          	ld	s0,16(sp)
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	00013903          	ld	s2,0(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret
                else tailAllocated = prev;
    80004100:	0000a797          	auipc	a5,0xa
    80004104:	44e7b023          	sd	a4,1088(a5) # 8000e540 <_ZN15MemoryAllocator13tailAllocatedE>
    80004108:	fc9ff06f          	j	800040d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
                headAllocated = curr->next;
    8000410c:	0084b783          	ld	a5,8(s1)
    80004110:	0000a717          	auipc	a4,0xa
    80004114:	42f73423          	sd	a5,1064(a4) # 8000e538 <_ZN15MemoryAllocator13headAllocatedE>
                if(headAllocated)
    80004118:	00078663          	beqz	a5,80004124 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0xb0>
                    headAllocated->prev = 0;
    8000411c:	0007b823          	sd	zero,16(a5)
    80004120:	fb1ff06f          	j	800040d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
                else tailAllocated = headAllocated;
    80004124:	0000a717          	auipc	a4,0xa
    80004128:	40f73e23          	sd	a5,1052(a4) # 8000e540 <_ZN15MemoryAllocator13tailAllocatedE>
    8000412c:	fa5ff06f          	j	800040d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x5c>
        return 1;
    80004130:	00100513          	li	a0,1
    80004134:	fb5ff06f          	j	800040e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x74>

0000000080004138 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	00813023          	sd	s0,0(sp)
    80004144:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	f2c080e7          	jalr	-212(ra) # 80004074 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004150:	00813083          	ld	ra,8(sp)
    80004154:	00013403          	ld	s0,0(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret

0000000080004160 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004170:	00000097          	auipc	ra,0x0
    80004174:	da4080e7          	jalr	-604(ra) # 80003f14 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004198:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000419c:	00651513          	slli	a0,a0,0x6
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	fc0080e7          	jalr	-64(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800041a8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800041ac:	fffff097          	auipc	ra,0xfffff
    800041b0:	728080e7          	jalr	1832(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800041b4:	00813083          	ld	ra,8(sp)
    800041b8:	00013403          	ld	s0,0(sp)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret

00000000800041c4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00113423          	sd	ra,8(sp)
    800041cc:	00813023          	sd	s0,0(sp)
    800041d0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	f64080e7          	jalr	-156(ra) # 80004138 <_ZN15MemoryAllocator8mem_freeEPv>
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret

00000000800041ec <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800041ec:	ff010113          	addi	sp,sp,-16
    800041f0:	00113423          	sd	ra,8(sp)
    800041f4:	00813023          	sd	s0,0(sp)
    800041f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800041fc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004200:	00000097          	auipc	ra,0x0
    80004204:	fc4080e7          	jalr	-60(ra) # 800041c4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004208:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	6c8080e7          	jalr	1736(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00813423          	sd	s0,8(sp)
    8000422c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004230:	00b52a23          	sw	a1,20(a0)
    80004234:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004238:	00053423          	sd	zero,8(a0)
    8000423c:	00053023          	sd	zero,0(a0)
}
    80004240:	00813403          	ld	s0,8(sp)
    80004244:	01010113          	addi	sp,sp,16
    80004248:	00008067          	ret

000000008000424c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000424c:	ff010113          	addi	sp,sp,-16
    80004250:	00813423          	sd	s0,8(sp)
    80004254:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004258:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000425c:	00053783          	ld	a5,0(a0)
    80004260:	00078e63          	beqz	a5,8000427c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004264:	00853783          	ld	a5,8(a0)
    80004268:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000426c:	00b53423          	sd	a1,8(a0)
    }
}
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000427c:	00b53423          	sd	a1,8(a0)
    80004280:	00b53023          	sd	a1,0(a0)
    80004284:	fedff06f          	j	80004270 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004288 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004288:	ff010113          	addi	sp,sp,-16
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	00813023          	sd	s0,0(sp)
    80004294:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004298:	00006797          	auipc	a5,0x6
    8000429c:	1787b783          	ld	a5,376(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
    800042a0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800042a4:	00200793          	li	a5,2
    800042a8:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800042ac:	00000097          	auipc	ra,0x0
    800042b0:	fa0080e7          	jalr	-96(ra) # 8000424c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	2a4080e7          	jalr	676(ra) # 80002558 <_ZN3PCB8dispatchEv>
}
    800042bc:	00813083          	ld	ra,8(sp)
    800042c0:	00013403          	ld	s0,0(sp)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret

00000000800042cc <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800042cc:	00006797          	auipc	a5,0x6
    800042d0:	1447b783          	ld	a5,324(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
    800042d4:	0007b783          	ld	a5,0(a5)
    800042d8:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800042dc:	01052783          	lw	a5,16(a0)
    800042e0:	fff7879b          	addiw	a5,a5,-1
    800042e4:	00f52823          	sw	a5,16(a0)
    800042e8:	02079713          	slli	a4,a5,0x20
    800042ec:	00074663          	bltz	a4,800042f8 <_ZN10KSemaphore4waitEv+0x2c>
}
    800042f0:	00000513          	li	a0,0
    800042f4:	00008067          	ret
{
    800042f8:	ff010113          	addi	sp,sp,-16
    800042fc:	00113423          	sd	ra,8(sp)
    80004300:	00813023          	sd	s0,0(sp)
    80004304:	01010413          	addi	s0,sp,16
        block();
    80004308:	00000097          	auipc	ra,0x0
    8000430c:	f80080e7          	jalr	-128(ra) # 80004288 <_ZN10KSemaphore5blockEv>
}
    80004310:	00000513          	li	a0,0
    80004314:	00813083          	ld	ra,8(sp)
    80004318:	00013403          	ld	s0,0(sp)
    8000431c:	01010113          	addi	sp,sp,16
    80004320:	00008067          	ret

0000000080004324 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00813423          	sd	s0,8(sp)
    8000432c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004330:	00053503          	ld	a0,0(a0)
    80004334:	00813403          	ld	s0,8(sp)
    80004338:	01010113          	addi	sp,sp,16
    8000433c:	00008067          	ret

0000000080004340 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004340:	ff010113          	addi	sp,sp,-16
    80004344:	00813423          	sd	s0,8(sp)
    80004348:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000434c:	00053783          	ld	a5,0(a0)
    80004350:	00078c63          	beqz	a5,80004368 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004354:	0087b703          	ld	a4,8(a5)
    80004358:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000435c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004360:	00053783          	ld	a5,0(a0)
    80004364:	00078863          	beqz	a5,80004374 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	01010113          	addi	sp,sp,16
    80004370:	00008067          	ret
        tailBlocked =0;
    80004374:	00053423          	sd	zero,8(a0)
    80004378:	ff1ff06f          	j	80004368 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000437c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004398:	00090513          	mv	a0,s2
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	f88080e7          	jalr	-120(ra) # 80004324 <_ZN10KSemaphore15getFirstBlockedEv>
    800043a4:	00050493          	mv	s1,a0
    800043a8:	02050463          	beqz	a0,800043d0 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800043ac:	00090513          	mv	a0,s2
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	f90080e7          	jalr	-112(ra) # 80004340 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800043b8:	00100793          	li	a5,1
    800043bc:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800043c0:	00048513          	mv	a0,s1
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	dc8080e7          	jalr	-568(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800043cc:	fcdff06f          	j	80004398 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800043d0:	01813083          	ld	ra,24(sp)
    800043d4:	01013403          	ld	s0,16(sp)
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	00013903          	ld	s2,0(sp)
    800043e0:	02010113          	addi	sp,sp,32
    800043e4:	00008067          	ret

00000000800043e8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	01213023          	sd	s2,0(sp)
    800043fc:	02010413          	addi	s0,sp,32
    80004400:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004404:	00000097          	auipc	ra,0x0
    80004408:	f20080e7          	jalr	-224(ra) # 80004324 <_ZN10KSemaphore15getFirstBlockedEv>
    8000440c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004410:	00090513          	mv	a0,s2
    80004414:	00000097          	auipc	ra,0x0
    80004418:	f2c080e7          	jalr	-212(ra) # 80004340 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    8000441c:	00048863          	beqz	s1,8000442c <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    80004420:	00048513          	mv	a0,s1
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	d68080e7          	jalr	-664(ra) # 8000318c <_ZN9Scheduler3putEP3PCB>
    }
}
    8000442c:	01813083          	ld	ra,24(sp)
    80004430:	01013403          	ld	s0,16(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	00013903          	ld	s2,0(sp)
    8000443c:	02010113          	addi	sp,sp,32
    80004440:	00008067          	ret

0000000080004444 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004444:	01052783          	lw	a5,16(a0)
    80004448:	0017879b          	addiw	a5,a5,1
    8000444c:	0007871b          	sext.w	a4,a5
    80004450:	00f52823          	sw	a5,16(a0)
    80004454:	00e05663          	blez	a4,80004460 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004458:	00000513          	li	a0,0
    8000445c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004460:	ff010113          	addi	sp,sp,-16
    80004464:	00113423          	sd	ra,8(sp)
    80004468:	00813023          	sd	s0,0(sp)
    8000446c:	01010413          	addi	s0,sp,16
        unblock();
    80004470:	00000097          	auipc	ra,0x0
    80004474:	f78080e7          	jalr	-136(ra) # 800043e8 <_ZN10KSemaphore7unblockEv>
}
    80004478:	00000513          	li	a0,0
    8000447c:	00813083          	ld	ra,8(sp)
    80004480:	00013403          	ld	s0,0(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret

000000008000448c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00113423          	sd	ra,8(sp)
    80004494:	00813023          	sd	s0,0(sp)
    80004498:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000449c:	00000097          	auipc	ra,0x0
    800044a0:	cc4080e7          	jalr	-828(ra) # 80004160 <_ZN15MemoryAllocator7kmallocEm>
}
    800044a4:	00813083          	ld	ra,8(sp)
    800044a8:	00013403          	ld	s0,0(sp)
    800044ac:	01010113          	addi	sp,sp,16
    800044b0:	00008067          	ret

00000000800044b4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800044b4:	fd010113          	addi	sp,sp,-48
    800044b8:	02113423          	sd	ra,40(sp)
    800044bc:	02813023          	sd	s0,32(sp)
    800044c0:	00913c23          	sd	s1,24(sp)
    800044c4:	01213823          	sd	s2,16(sp)
    800044c8:	01313423          	sd	s3,8(sp)
    800044cc:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800044d0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800044d4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800044d8:	01800513          	li	a0,24
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	fb0080e7          	jalr	-80(ra) # 8000448c <_ZN10KSemaphorenwEm>
    800044e4:	00050493          	mv	s1,a0
    800044e8:	0009859b          	sext.w	a1,s3
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	d38080e7          	jalr	-712(ra) # 80004224 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800044f4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800044f8:	02048663          	beqz	s1,80004524 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800044fc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004500:	fffff097          	auipc	ra,0xfffff
    80004504:	3d4080e7          	jalr	980(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004508:	02813083          	ld	ra,40(sp)
    8000450c:	02013403          	ld	s0,32(sp)
    80004510:	01813483          	ld	s1,24(sp)
    80004514:	01013903          	ld	s2,16(sp)
    80004518:	00813983          	ld	s3,8(sp)
    8000451c:	03010113          	addi	sp,sp,48
    80004520:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004524:	fff00513          	li	a0,-1
    80004528:	fd9ff06f          	j	80004500 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000452c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000452c:	ff010113          	addi	sp,sp,-16
    80004530:	00113423          	sd	ra,8(sp)
    80004534:	00813023          	sd	s0,0(sp)
    80004538:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000453c:	00000097          	auipc	ra,0x0
    80004540:	c88080e7          	jalr	-888(ra) # 800041c4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004544:	00813083          	ld	ra,8(sp)
    80004548:	00013403          	ld	s0,0(sp)
    8000454c:	01010113          	addi	sp,sp,16
    80004550:	00008067          	ret

0000000080004554 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004564:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	d64080e7          	jalr	-668(ra) # 800042cc <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004570:	00006797          	auipc	a5,0x6
    80004574:	ea07b783          	ld	a5,-352(a5) # 8000a410 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004578:	0007b783          	ld	a5,0(a5)
    8000457c:	0587c783          	lbu	a5,88(a5)
    80004580:	02078063          	beqz	a5,800045a0 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004584:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004588:	fffff097          	auipc	ra,0xfffff
    8000458c:	34c080e7          	jalr	844(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004590:	00813083          	ld	ra,8(sp)
    80004594:	00013403          	ld	s0,0(sp)
    80004598:	01010113          	addi	sp,sp,16
    8000459c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800045a0:	00000513          	li	a0,0
    800045a4:	fe5ff06f          	j	80004588 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800045a8 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800045a8:	ff010113          	addi	sp,sp,-16
    800045ac:	00113423          	sd	ra,8(sp)
    800045b0:	00813023          	sd	s0,0(sp)
    800045b4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800045b8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800045bc:	02050463          	beqz	a0,800045e4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800045c0:	00000097          	auipc	ra,0x0
    800045c4:	e84080e7          	jalr	-380(ra) # 80004444 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800045c8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800045cc:	fffff097          	auipc	ra,0xfffff
    800045d0:	308080e7          	jalr	776(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    800045d4:	00813083          	ld	ra,8(sp)
    800045d8:	00013403          	ld	s0,0(sp)
    800045dc:	01010113          	addi	sp,sp,16
    800045e0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800045e4:	00100513          	li	a0,1
    800045e8:	fe5ff06f          	j	800045cc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800045ec <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800045ec:	fe010113          	addi	sp,sp,-32
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00913423          	sd	s1,8(sp)
    800045fc:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004600:	00058493          	mv	s1,a1
    delete kSem;
    80004604:	00048e63          	beqz	s1,80004620 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004608:	00048513          	mv	a0,s1
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	d70080e7          	jalr	-656(ra) # 8000437c <_ZN10KSemaphoreD1Ev>
    80004614:	00048513          	mv	a0,s1
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	f14080e7          	jalr	-236(ra) # 8000452c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004620:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	2b0080e7          	jalr	688(ra) # 800038d4 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	02010113          	addi	sp,sp,32
    8000463c:	00008067          	ret

0000000080004640 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004640:	fe010113          	addi	sp,sp,-32
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00813823          	sd	s0,16(sp)
    8000464c:	00913423          	sd	s1,8(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	00050493          	mv	s1,a0
    LOCK();
    80004658:	00100613          	li	a2,1
    8000465c:	00000593          	li	a1,0
    80004660:	0000a517          	auipc	a0,0xa
    80004664:	ef850513          	addi	a0,a0,-264 # 8000e558 <lockPrint>
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	bb0080e7          	jalr	-1104(ra) # 80001218 <copy_and_swap>
    80004670:	fe0514e3          	bnez	a0,80004658 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004674:	0004c503          	lbu	a0,0(s1)
    80004678:	00050a63          	beqz	a0,8000468c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	ebc080e7          	jalr	-324(ra) # 80001538 <putc>
        string++;
    80004684:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004688:	fedff06f          	j	80004674 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000468c:	00000613          	li	a2,0
    80004690:	00100593          	li	a1,1
    80004694:	0000a517          	auipc	a0,0xa
    80004698:	ec450513          	addi	a0,a0,-316 # 8000e558 <lockPrint>
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	b7c080e7          	jalr	-1156(ra) # 80001218 <copy_and_swap>
    800046a4:	fe0514e3          	bnez	a0,8000468c <_Z11printStringPKc+0x4c>
}
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	00813483          	ld	s1,8(sp)
    800046b4:	02010113          	addi	sp,sp,32
    800046b8:	00008067          	ret

00000000800046bc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800046bc:	fd010113          	addi	sp,sp,-48
    800046c0:	02113423          	sd	ra,40(sp)
    800046c4:	02813023          	sd	s0,32(sp)
    800046c8:	00913c23          	sd	s1,24(sp)
    800046cc:	01213823          	sd	s2,16(sp)
    800046d0:	01313423          	sd	s3,8(sp)
    800046d4:	01413023          	sd	s4,0(sp)
    800046d8:	03010413          	addi	s0,sp,48
    800046dc:	00050993          	mv	s3,a0
    800046e0:	00058a13          	mv	s4,a1
    LOCK();
    800046e4:	00100613          	li	a2,1
    800046e8:	00000593          	li	a1,0
    800046ec:	0000a517          	auipc	a0,0xa
    800046f0:	e6c50513          	addi	a0,a0,-404 # 8000e558 <lockPrint>
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	b24080e7          	jalr	-1244(ra) # 80001218 <copy_and_swap>
    800046fc:	fe0514e3          	bnez	a0,800046e4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004700:	00000913          	li	s2,0
    80004704:	00090493          	mv	s1,s2
    80004708:	0019091b          	addiw	s2,s2,1
    8000470c:	03495a63          	bge	s2,s4,80004740 <_Z9getStringPci+0x84>
        cc = getc();
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	e00080e7          	jalr	-512(ra) # 80001510 <getc>
        if(cc < 1)
    80004718:	02050463          	beqz	a0,80004740 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000471c:	009984b3          	add	s1,s3,s1
    80004720:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004724:	00a00793          	li	a5,10
    80004728:	00f50a63          	beq	a0,a5,8000473c <_Z9getStringPci+0x80>
    8000472c:	00d00793          	li	a5,13
    80004730:	fcf51ae3          	bne	a0,a5,80004704 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004734:	00090493          	mv	s1,s2
    80004738:	0080006f          	j	80004740 <_Z9getStringPci+0x84>
    8000473c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004740:	009984b3          	add	s1,s3,s1
    80004744:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004748:	00000613          	li	a2,0
    8000474c:	00100593          	li	a1,1
    80004750:	0000a517          	auipc	a0,0xa
    80004754:	e0850513          	addi	a0,a0,-504 # 8000e558 <lockPrint>
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	ac0080e7          	jalr	-1344(ra) # 80001218 <copy_and_swap>
    80004760:	fe0514e3          	bnez	a0,80004748 <_Z9getStringPci+0x8c>
    return buf;
}
    80004764:	00098513          	mv	a0,s3
    80004768:	02813083          	ld	ra,40(sp)
    8000476c:	02013403          	ld	s0,32(sp)
    80004770:	01813483          	ld	s1,24(sp)
    80004774:	01013903          	ld	s2,16(sp)
    80004778:	00813983          	ld	s3,8(sp)
    8000477c:	00013a03          	ld	s4,0(sp)
    80004780:	03010113          	addi	sp,sp,48
    80004784:	00008067          	ret

0000000080004788 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004788:	ff010113          	addi	sp,sp,-16
    8000478c:	00813423          	sd	s0,8(sp)
    80004790:	01010413          	addi	s0,sp,16
    80004794:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004798:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000479c:	0006c603          	lbu	a2,0(a3)
    800047a0:	fd06071b          	addiw	a4,a2,-48
    800047a4:	0ff77713          	andi	a4,a4,255
    800047a8:	00900793          	li	a5,9
    800047ac:	02e7e063          	bltu	a5,a4,800047cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800047b0:	0025179b          	slliw	a5,a0,0x2
    800047b4:	00a787bb          	addw	a5,a5,a0
    800047b8:	0017979b          	slliw	a5,a5,0x1
    800047bc:	00168693          	addi	a3,a3,1
    800047c0:	00c787bb          	addw	a5,a5,a2
    800047c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800047c8:	fd5ff06f          	j	8000479c <_Z11stringToIntPKc+0x14>
    return n;
}
    800047cc:	00813403          	ld	s0,8(sp)
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800047d8:	fc010113          	addi	sp,sp,-64
    800047dc:	02113c23          	sd	ra,56(sp)
    800047e0:	02813823          	sd	s0,48(sp)
    800047e4:	02913423          	sd	s1,40(sp)
    800047e8:	03213023          	sd	s2,32(sp)
    800047ec:	01313c23          	sd	s3,24(sp)
    800047f0:	04010413          	addi	s0,sp,64
    800047f4:	00050493          	mv	s1,a0
    800047f8:	00058913          	mv	s2,a1
    800047fc:	00060993          	mv	s3,a2
    LOCK();
    80004800:	00100613          	li	a2,1
    80004804:	00000593          	li	a1,0
    80004808:	0000a517          	auipc	a0,0xa
    8000480c:	d5050513          	addi	a0,a0,-688 # 8000e558 <lockPrint>
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	a08080e7          	jalr	-1528(ra) # 80001218 <copy_and_swap>
    80004818:	fe0514e3          	bnez	a0,80004800 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000481c:	00098463          	beqz	s3,80004824 <_Z8printIntiii+0x4c>
    80004820:	0804c463          	bltz	s1,800048a8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004824:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004828:	00000593          	li	a1,0
    }

    i = 0;
    8000482c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004830:	0009079b          	sext.w	a5,s2
    80004834:	0325773b          	remuw	a4,a0,s2
    80004838:	00048613          	mv	a2,s1
    8000483c:	0014849b          	addiw	s1,s1,1
    80004840:	02071693          	slli	a3,a4,0x20
    80004844:	0206d693          	srli	a3,a3,0x20
    80004848:	00006717          	auipc	a4,0x6
    8000484c:	ac870713          	addi	a4,a4,-1336 # 8000a310 <digits>
    80004850:	00d70733          	add	a4,a4,a3
    80004854:	00074683          	lbu	a3,0(a4)
    80004858:	fd040713          	addi	a4,s0,-48
    8000485c:	00c70733          	add	a4,a4,a2
    80004860:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004864:	0005071b          	sext.w	a4,a0
    80004868:	0325553b          	divuw	a0,a0,s2
    8000486c:	fcf772e3          	bgeu	a4,a5,80004830 <_Z8printIntiii+0x58>
    if(neg)
    80004870:	00058c63          	beqz	a1,80004888 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004874:	fd040793          	addi	a5,s0,-48
    80004878:	009784b3          	add	s1,a5,s1
    8000487c:	02d00793          	li	a5,45
    80004880:	fef48823          	sb	a5,-16(s1)
    80004884:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004888:	fff4849b          	addiw	s1,s1,-1
    8000488c:	0204c463          	bltz	s1,800048b4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004890:	fd040793          	addi	a5,s0,-48
    80004894:	009787b3          	add	a5,a5,s1
    80004898:	ff07c503          	lbu	a0,-16(a5)
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	c9c080e7          	jalr	-868(ra) # 80001538 <putc>
    800048a4:	fe5ff06f          	j	80004888 <_Z8printIntiii+0xb0>
        x = -xx;
    800048a8:	4090053b          	negw	a0,s1
        neg = 1;
    800048ac:	00100593          	li	a1,1
        x = -xx;
    800048b0:	f7dff06f          	j	8000482c <_Z8printIntiii+0x54>

    UNLOCK();
    800048b4:	00000613          	li	a2,0
    800048b8:	00100593          	li	a1,1
    800048bc:	0000a517          	auipc	a0,0xa
    800048c0:	c9c50513          	addi	a0,a0,-868 # 8000e558 <lockPrint>
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	954080e7          	jalr	-1708(ra) # 80001218 <copy_and_swap>
    800048cc:	fe0514e3          	bnez	a0,800048b4 <_Z8printIntiii+0xdc>
}
    800048d0:	03813083          	ld	ra,56(sp)
    800048d4:	03013403          	ld	s0,48(sp)
    800048d8:	02813483          	ld	s1,40(sp)
    800048dc:	02013903          	ld	s2,32(sp)
    800048e0:	01813983          	ld	s3,24(sp)
    800048e4:	04010113          	addi	sp,sp,64
    800048e8:	00008067          	ret

00000000800048ec <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800048ec:	fd010113          	addi	sp,sp,-48
    800048f0:	02113423          	sd	ra,40(sp)
    800048f4:	02813023          	sd	s0,32(sp)
    800048f8:	00913c23          	sd	s1,24(sp)
    800048fc:	01213823          	sd	s2,16(sp)
    80004900:	01313423          	sd	s3,8(sp)
    80004904:	03010413          	addi	s0,sp,48
    80004908:	00050493          	mv	s1,a0
    8000490c:	00058913          	mv	s2,a1
    80004910:	0015879b          	addiw	a5,a1,1
    80004914:	0007851b          	sext.w	a0,a5
    80004918:	00f4a023          	sw	a5,0(s1)
    8000491c:	0004a823          	sw	zero,16(s1)
    80004920:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004924:	00251513          	slli	a0,a0,0x2
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	930080e7          	jalr	-1744(ra) # 80001258 <mem_alloc>
    80004930:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004934:	01000513          	li	a0,16
    80004938:	fffff097          	auipc	ra,0xfffff
    8000493c:	a18080e7          	jalr	-1512(ra) # 80003350 <_Znwm>
    80004940:	00050993          	mv	s3,a0
    80004944:	00000593          	li	a1,0
    80004948:	fffff097          	auipc	ra,0xfffff
    8000494c:	c54080e7          	jalr	-940(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004950:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004954:	01000513          	li	a0,16
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	9f8080e7          	jalr	-1544(ra) # 80003350 <_Znwm>
    80004960:	00050993          	mv	s3,a0
    80004964:	00090593          	mv	a1,s2
    80004968:	fffff097          	auipc	ra,0xfffff
    8000496c:	c34080e7          	jalr	-972(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004970:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004974:	01000513          	li	a0,16
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	9d8080e7          	jalr	-1576(ra) # 80003350 <_Znwm>
    80004980:	00050913          	mv	s2,a0
    80004984:	00100593          	li	a1,1
    80004988:	fffff097          	auipc	ra,0xfffff
    8000498c:	c14080e7          	jalr	-1004(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004990:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004994:	01000513          	li	a0,16
    80004998:	fffff097          	auipc	ra,0xfffff
    8000499c:	9b8080e7          	jalr	-1608(ra) # 80003350 <_Znwm>
    800049a0:	00050913          	mv	s2,a0
    800049a4:	00100593          	li	a1,1
    800049a8:	fffff097          	auipc	ra,0xfffff
    800049ac:	bf4080e7          	jalr	-1036(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    800049b0:	0324b823          	sd	s2,48(s1)
}
    800049b4:	02813083          	ld	ra,40(sp)
    800049b8:	02013403          	ld	s0,32(sp)
    800049bc:	01813483          	ld	s1,24(sp)
    800049c0:	01013903          	ld	s2,16(sp)
    800049c4:	00813983          	ld	s3,8(sp)
    800049c8:	03010113          	addi	sp,sp,48
    800049cc:	00008067          	ret
    800049d0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800049d4:	00098513          	mv	a0,s3
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	9a0080e7          	jalr	-1632(ra) # 80003378 <_ZdlPv>
    800049e0:	00048513          	mv	a0,s1
    800049e4:	0000b097          	auipc	ra,0xb
    800049e8:	c54080e7          	jalr	-940(ra) # 8000f638 <_Unwind_Resume>
    800049ec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800049f0:	00098513          	mv	a0,s3
    800049f4:	fffff097          	auipc	ra,0xfffff
    800049f8:	984080e7          	jalr	-1660(ra) # 80003378 <_ZdlPv>
    800049fc:	00048513          	mv	a0,s1
    80004a00:	0000b097          	auipc	ra,0xb
    80004a04:	c38080e7          	jalr	-968(ra) # 8000f638 <_Unwind_Resume>
    80004a08:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004a0c:	00090513          	mv	a0,s2
    80004a10:	fffff097          	auipc	ra,0xfffff
    80004a14:	968080e7          	jalr	-1688(ra) # 80003378 <_ZdlPv>
    80004a18:	00048513          	mv	a0,s1
    80004a1c:	0000b097          	auipc	ra,0xb
    80004a20:	c1c080e7          	jalr	-996(ra) # 8000f638 <_Unwind_Resume>
    80004a24:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004a28:	00090513          	mv	a0,s2
    80004a2c:	fffff097          	auipc	ra,0xfffff
    80004a30:	94c080e7          	jalr	-1716(ra) # 80003378 <_ZdlPv>
    80004a34:	00048513          	mv	a0,s1
    80004a38:	0000b097          	auipc	ra,0xb
    80004a3c:	c00080e7          	jalr	-1024(ra) # 8000f638 <_Unwind_Resume>

0000000080004a40 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004a40:	fe010113          	addi	sp,sp,-32
    80004a44:	00113c23          	sd	ra,24(sp)
    80004a48:	00813823          	sd	s0,16(sp)
    80004a4c:	00913423          	sd	s1,8(sp)
    80004a50:	01213023          	sd	s2,0(sp)
    80004a54:	02010413          	addi	s0,sp,32
    80004a58:	00050493          	mv	s1,a0
    80004a5c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004a60:	01853503          	ld	a0,24(a0)
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	b00080e7          	jalr	-1280(ra) # 80003564 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004a6c:	0304b503          	ld	a0,48(s1)
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	af4080e7          	jalr	-1292(ra) # 80003564 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004a78:	0084b783          	ld	a5,8(s1)
    80004a7c:	0144a703          	lw	a4,20(s1)
    80004a80:	00271713          	slli	a4,a4,0x2
    80004a84:	00e787b3          	add	a5,a5,a4
    80004a88:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004a8c:	0144a783          	lw	a5,20(s1)
    80004a90:	0017879b          	addiw	a5,a5,1
    80004a94:	0004a703          	lw	a4,0(s1)
    80004a98:	02e7e7bb          	remw	a5,a5,a4
    80004a9c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004aa0:	0304b503          	ld	a0,48(s1)
    80004aa4:	fffff097          	auipc	ra,0xfffff
    80004aa8:	b44080e7          	jalr	-1212(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004aac:	0204b503          	ld	a0,32(s1)
    80004ab0:	fffff097          	auipc	ra,0xfffff
    80004ab4:	b38080e7          	jalr	-1224(ra) # 800035e8 <_ZN9Semaphore6signalEv>

}
    80004ab8:	01813083          	ld	ra,24(sp)
    80004abc:	01013403          	ld	s0,16(sp)
    80004ac0:	00813483          	ld	s1,8(sp)
    80004ac4:	00013903          	ld	s2,0(sp)
    80004ac8:	02010113          	addi	sp,sp,32
    80004acc:	00008067          	ret

0000000080004ad0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004ad0:	fe010113          	addi	sp,sp,-32
    80004ad4:	00113c23          	sd	ra,24(sp)
    80004ad8:	00813823          	sd	s0,16(sp)
    80004adc:	00913423          	sd	s1,8(sp)
    80004ae0:	01213023          	sd	s2,0(sp)
    80004ae4:	02010413          	addi	s0,sp,32
    80004ae8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004aec:	02053503          	ld	a0,32(a0)
    80004af0:	fffff097          	auipc	ra,0xfffff
    80004af4:	a74080e7          	jalr	-1420(ra) # 80003564 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004af8:	0284b503          	ld	a0,40(s1)
    80004afc:	fffff097          	auipc	ra,0xfffff
    80004b00:	a68080e7          	jalr	-1432(ra) # 80003564 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004b04:	0084b703          	ld	a4,8(s1)
    80004b08:	0104a783          	lw	a5,16(s1)
    80004b0c:	00279693          	slli	a3,a5,0x2
    80004b10:	00d70733          	add	a4,a4,a3
    80004b14:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004b18:	0017879b          	addiw	a5,a5,1
    80004b1c:	0004a703          	lw	a4,0(s1)
    80004b20:	02e7e7bb          	remw	a5,a5,a4
    80004b24:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004b28:	0284b503          	ld	a0,40(s1)
    80004b2c:	fffff097          	auipc	ra,0xfffff
    80004b30:	abc080e7          	jalr	-1348(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004b34:	0184b503          	ld	a0,24(s1)
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	ab0080e7          	jalr	-1360(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004b40:	00090513          	mv	a0,s2
    80004b44:	01813083          	ld	ra,24(sp)
    80004b48:	01013403          	ld	s0,16(sp)
    80004b4c:	00813483          	ld	s1,8(sp)
    80004b50:	00013903          	ld	s2,0(sp)
    80004b54:	02010113          	addi	sp,sp,32
    80004b58:	00008067          	ret

0000000080004b5c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004b5c:	fe010113          	addi	sp,sp,-32
    80004b60:	00113c23          	sd	ra,24(sp)
    80004b64:	00813823          	sd	s0,16(sp)
    80004b68:	00913423          	sd	s1,8(sp)
    80004b6c:	01213023          	sd	s2,0(sp)
    80004b70:	02010413          	addi	s0,sp,32
    80004b74:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004b78:	02853503          	ld	a0,40(a0)
    80004b7c:	fffff097          	auipc	ra,0xfffff
    80004b80:	9e8080e7          	jalr	-1560(ra) # 80003564 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004b84:	0304b503          	ld	a0,48(s1)
    80004b88:	fffff097          	auipc	ra,0xfffff
    80004b8c:	9dc080e7          	jalr	-1572(ra) # 80003564 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004b90:	0144a783          	lw	a5,20(s1)
    80004b94:	0104a903          	lw	s2,16(s1)
    80004b98:	0327ce63          	blt	a5,s2,80004bd4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004b9c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004ba0:	0304b503          	ld	a0,48(s1)
    80004ba4:	fffff097          	auipc	ra,0xfffff
    80004ba8:	a44080e7          	jalr	-1468(ra) # 800035e8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004bac:	0284b503          	ld	a0,40(s1)
    80004bb0:	fffff097          	auipc	ra,0xfffff
    80004bb4:	a38080e7          	jalr	-1480(ra) # 800035e8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004bb8:	00090513          	mv	a0,s2
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	01013403          	ld	s0,16(sp)
    80004bc4:	00813483          	ld	s1,8(sp)
    80004bc8:	00013903          	ld	s2,0(sp)
    80004bcc:	02010113          	addi	sp,sp,32
    80004bd0:	00008067          	ret
        ret = cap - head + tail;
    80004bd4:	0004a703          	lw	a4,0(s1)
    80004bd8:	4127093b          	subw	s2,a4,s2
    80004bdc:	00f9093b          	addw	s2,s2,a5
    80004be0:	fc1ff06f          	j	80004ba0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004be4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004be4:	fe010113          	addi	sp,sp,-32
    80004be8:	00113c23          	sd	ra,24(sp)
    80004bec:	00813823          	sd	s0,16(sp)
    80004bf0:	00913423          	sd	s1,8(sp)
    80004bf4:	02010413          	addi	s0,sp,32
    80004bf8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004bfc:	00a00513          	li	a0,10
    80004c00:	fffff097          	auipc	ra,0xfffff
    80004c04:	a48080e7          	jalr	-1464(ra) # 80003648 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004c08:	00003517          	auipc	a0,0x3
    80004c0c:	6d850513          	addi	a0,a0,1752 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	a30080e7          	jalr	-1488(ra) # 80004640 <_Z11printStringPKc>
    while (getCnt()) {
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	f40080e7          	jalr	-192(ra) # 80004b5c <_ZN9BufferCPP6getCntEv>
    80004c24:	02050c63          	beqz	a0,80004c5c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004c28:	0084b783          	ld	a5,8(s1)
    80004c2c:	0104a703          	lw	a4,16(s1)
    80004c30:	00271713          	slli	a4,a4,0x2
    80004c34:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004c38:	0007c503          	lbu	a0,0(a5)
    80004c3c:	fffff097          	auipc	ra,0xfffff
    80004c40:	a0c080e7          	jalr	-1524(ra) # 80003648 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004c44:	0104a783          	lw	a5,16(s1)
    80004c48:	0017879b          	addiw	a5,a5,1
    80004c4c:	0004a703          	lw	a4,0(s1)
    80004c50:	02e7e7bb          	remw	a5,a5,a4
    80004c54:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004c58:	fc1ff06f          	j	80004c18 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004c5c:	02100513          	li	a0,33
    80004c60:	fffff097          	auipc	ra,0xfffff
    80004c64:	9e8080e7          	jalr	-1560(ra) # 80003648 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004c68:	00a00513          	li	a0,10
    80004c6c:	fffff097          	auipc	ra,0xfffff
    80004c70:	9dc080e7          	jalr	-1572(ra) # 80003648 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004c74:	0084b503          	ld	a0,8(s1)
    80004c78:	ffffc097          	auipc	ra,0xffffc
    80004c7c:	610080e7          	jalr	1552(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80004c80:	0204b503          	ld	a0,32(s1)
    80004c84:	00050863          	beqz	a0,80004c94 <_ZN9BufferCPPD1Ev+0xb0>
    80004c88:	00053783          	ld	a5,0(a0)
    80004c8c:	0087b783          	ld	a5,8(a5)
    80004c90:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004c94:	0184b503          	ld	a0,24(s1)
    80004c98:	00050863          	beqz	a0,80004ca8 <_ZN9BufferCPPD1Ev+0xc4>
    80004c9c:	00053783          	ld	a5,0(a0)
    80004ca0:	0087b783          	ld	a5,8(a5)
    80004ca4:	000780e7          	jalr	a5
    delete mutexTail;
    80004ca8:	0304b503          	ld	a0,48(s1)
    80004cac:	00050863          	beqz	a0,80004cbc <_ZN9BufferCPPD1Ev+0xd8>
    80004cb0:	00053783          	ld	a5,0(a0)
    80004cb4:	0087b783          	ld	a5,8(a5)
    80004cb8:	000780e7          	jalr	a5
    delete mutexHead;
    80004cbc:	0284b503          	ld	a0,40(s1)
    80004cc0:	00050863          	beqz	a0,80004cd0 <_ZN9BufferCPPD1Ev+0xec>
    80004cc4:	00053783          	ld	a5,0(a0)
    80004cc8:	0087b783          	ld	a5,8(a5)
    80004ccc:	000780e7          	jalr	a5
}
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	02010113          	addi	sp,sp,32
    80004ce0:	00008067          	ret

0000000080004ce4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80004ce4:	f8010113          	addi	sp,sp,-128
    80004ce8:	06113c23          	sd	ra,120(sp)
    80004cec:	06813823          	sd	s0,112(sp)
    80004cf0:	06913423          	sd	s1,104(sp)
    80004cf4:	07213023          	sd	s2,96(sp)
    80004cf8:	05313c23          	sd	s3,88(sp)
    80004cfc:	05413823          	sd	s4,80(sp)
    80004d00:	05513423          	sd	s5,72(sp)
    80004d04:	05613023          	sd	s6,64(sp)
    80004d08:	03713c23          	sd	s7,56(sp)
    80004d0c:	03813823          	sd	s8,48(sp)
    80004d10:	03913423          	sd	s9,40(sp)
    80004d14:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80004d18:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80004d1c:	00003517          	auipc	a0,0x3
    80004d20:	5dc50513          	addi	a0,a0,1500 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	91c080e7          	jalr	-1764(ra) # 80004640 <_Z11printStringPKc>
        getString(input, 30);
    80004d2c:	01e00593          	li	a1,30
    80004d30:	f8040493          	addi	s1,s0,-128
    80004d34:	00048513          	mv	a0,s1
    80004d38:	00000097          	auipc	ra,0x0
    80004d3c:	984080e7          	jalr	-1660(ra) # 800046bc <_Z9getStringPci>
        threadNum = stringToInt(input);
    80004d40:	00048513          	mv	a0,s1
    80004d44:	00000097          	auipc	ra,0x0
    80004d48:	a44080e7          	jalr	-1468(ra) # 80004788 <_Z11stringToIntPKc>
    80004d4c:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80004d50:	00003517          	auipc	a0,0x3
    80004d54:	5c850513          	addi	a0,a0,1480 # 80008318 <CONSOLE_STATUS+0x308>
    80004d58:	00000097          	auipc	ra,0x0
    80004d5c:	8e8080e7          	jalr	-1816(ra) # 80004640 <_Z11printStringPKc>
        getString(input, 30);
    80004d60:	01e00593          	li	a1,30
    80004d64:	00048513          	mv	a0,s1
    80004d68:	00000097          	auipc	ra,0x0
    80004d6c:	954080e7          	jalr	-1708(ra) # 800046bc <_Z9getStringPci>
        n = stringToInt(input);
    80004d70:	00048513          	mv	a0,s1
    80004d74:	00000097          	auipc	ra,0x0
    80004d78:	a14080e7          	jalr	-1516(ra) # 80004788 <_Z11stringToIntPKc>
    80004d7c:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004d80:	00003517          	auipc	a0,0x3
    80004d84:	5b850513          	addi	a0,a0,1464 # 80008338 <CONSOLE_STATUS+0x328>
    80004d88:	00000097          	auipc	ra,0x0
    80004d8c:	8b8080e7          	jalr	-1864(ra) # 80004640 <_Z11printStringPKc>
    80004d90:	00000613          	li	a2,0
    80004d94:	00a00593          	li	a1,10
    80004d98:	00098513          	mv	a0,s3
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	a3c080e7          	jalr	-1476(ra) # 800047d8 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004da4:	00003517          	auipc	a0,0x3
    80004da8:	5ac50513          	addi	a0,a0,1452 # 80008350 <CONSOLE_STATUS+0x340>
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	894080e7          	jalr	-1900(ra) # 80004640 <_Z11printStringPKc>
    80004db4:	00000613          	li	a2,0
    80004db8:	00a00593          	li	a1,10
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	a18080e7          	jalr	-1512(ra) # 800047d8 <_Z8printIntiii>
        printString(".\n");
    80004dc8:	00003517          	auipc	a0,0x3
    80004dcc:	5a050513          	addi	a0,a0,1440 # 80008368 <CONSOLE_STATUS+0x358>
    80004dd0:	00000097          	auipc	ra,0x0
    80004dd4:	870080e7          	jalr	-1936(ra) # 80004640 <_Z11printStringPKc>
        if(threadNum > n) {
    80004dd8:	0334c463          	blt	s1,s3,80004e00 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80004ddc:	03305c63          	blez	s3,80004e14 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80004de0:	03800513          	li	a0,56
    80004de4:	ffffe097          	auipc	ra,0xffffe
    80004de8:	56c080e7          	jalr	1388(ra) # 80003350 <_Znwm>
    80004dec:	00050a93          	mv	s5,a0
    80004df0:	00048593          	mv	a1,s1
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	af8080e7          	jalr	-1288(ra) # 800048ec <_ZN9BufferCPPC1Ei>
    80004dfc:	0300006f          	j	80004e2c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004e00:	00003517          	auipc	a0,0x3
    80004e04:	57050513          	addi	a0,a0,1392 # 80008370 <CONSOLE_STATUS+0x360>
    80004e08:	00000097          	auipc	ra,0x0
    80004e0c:	838080e7          	jalr	-1992(ra) # 80004640 <_Z11printStringPKc>
            return;
    80004e10:	0140006f          	j	80004e24 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e14:	00003517          	auipc	a0,0x3
    80004e18:	59c50513          	addi	a0,a0,1436 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80004e1c:	00000097          	auipc	ra,0x0
    80004e20:	824080e7          	jalr	-2012(ra) # 80004640 <_Z11printStringPKc>
            return;
    80004e24:	000c0113          	mv	sp,s8
    80004e28:	21c0006f          	j	80005044 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80004e2c:	01000513          	li	a0,16
    80004e30:	ffffe097          	auipc	ra,0xffffe
    80004e34:	520080e7          	jalr	1312(ra) # 80003350 <_Znwm>
    80004e38:	00050493          	mv	s1,a0
    80004e3c:	00000593          	li	a1,0
    80004e40:	ffffe097          	auipc	ra,0xffffe
    80004e44:	75c080e7          	jalr	1884(ra) # 8000359c <_ZN9SemaphoreC1Ej>
    80004e48:	00009717          	auipc	a4,0x9
    80004e4c:	71870713          	addi	a4,a4,1816 # 8000e560 <_ZN19ConsumerProducerCPP9threadEndE>
    80004e50:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80004e54:	00399793          	slli	a5,s3,0x3
    80004e58:	00f78793          	addi	a5,a5,15
    80004e5c:	ff07f793          	andi	a5,a5,-16
    80004e60:	40f10133          	sub	sp,sp,a5
    80004e64:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80004e68:	0019869b          	addiw	a3,s3,1
    80004e6c:	00169793          	slli	a5,a3,0x1
    80004e70:	00d787b3          	add	a5,a5,a3
    80004e74:	00379793          	slli	a5,a5,0x3
    80004e78:	00f78793          	addi	a5,a5,15
    80004e7c:	ff07f793          	andi	a5,a5,-16
    80004e80:	40f10133          	sub	sp,sp,a5
    80004e84:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80004e88:	00199493          	slli	s1,s3,0x1
    80004e8c:	013484b3          	add	s1,s1,s3
    80004e90:	00349493          	slli	s1,s1,0x3
    80004e94:	009b04b3          	add	s1,s6,s1
    80004e98:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004e9c:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004ea0:	00873783          	ld	a5,8(a4)
    80004ea4:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ea8:	01800513          	li	a0,24
    80004eac:	ffffe097          	auipc	ra,0xffffe
    80004eb0:	4a4080e7          	jalr	1188(ra) # 80003350 <_Znwm>
    80004eb4:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004eb8:	ffffe097          	auipc	ra,0xffffe
    80004ebc:	668080e7          	jalr	1640(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004ec0:	00005797          	auipc	a5,0x5
    80004ec4:	4c878793          	addi	a5,a5,1224 # 8000a388 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004ec8:	00fbb023          	sd	a5,0(s7)
    80004ecc:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80004ed0:	000b8513          	mv	a0,s7
    80004ed4:	ffffe097          	auipc	ra,0xffffe
    80004ed8:	54c080e7          	jalr	1356(ra) # 80003420 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004edc:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80004ee0:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80004ee4:	00009797          	auipc	a5,0x9
    80004ee8:	6847b783          	ld	a5,1668(a5) # 8000e568 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004eec:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ef0:	01800513          	li	a0,24
    80004ef4:	ffffe097          	auipc	ra,0xffffe
    80004ef8:	45c080e7          	jalr	1116(ra) # 80003350 <_Znwm>
    80004efc:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004f00:	ffffe097          	auipc	ra,0xffffe
    80004f04:	620080e7          	jalr	1568(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004f08:	00005797          	auipc	a5,0x5
    80004f0c:	43078793          	addi	a5,a5,1072 # 8000a338 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004f10:	00f4b023          	sd	a5,0(s1)
    80004f14:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f18:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80004f1c:	00048513          	mv	a0,s1
    80004f20:	ffffe097          	auipc	ra,0xffffe
    80004f24:	500080e7          	jalr	1280(ra) # 80003420 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004f28:	00100913          	li	s2,1
    80004f2c:	0300006f          	j	80004f5c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004f30:	00005797          	auipc	a5,0x5
    80004f34:	43078793          	addi	a5,a5,1072 # 8000a360 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004f38:	00fcb023          	sd	a5,0(s9)
    80004f3c:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80004f40:	00391793          	slli	a5,s2,0x3
    80004f44:	00fa07b3          	add	a5,s4,a5
    80004f48:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80004f4c:	000c8513          	mv	a0,s9
    80004f50:	ffffe097          	auipc	ra,0xffffe
    80004f54:	4d0080e7          	jalr	1232(ra) # 80003420 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004f58:	0019091b          	addiw	s2,s2,1
    80004f5c:	05395263          	bge	s2,s3,80004fa0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004f60:	00191493          	slli	s1,s2,0x1
    80004f64:	012484b3          	add	s1,s1,s2
    80004f68:	00349493          	slli	s1,s1,0x3
    80004f6c:	009b04b3          	add	s1,s6,s1
    80004f70:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80004f74:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80004f78:	00009797          	auipc	a5,0x9
    80004f7c:	5f07b783          	ld	a5,1520(a5) # 8000e568 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004f80:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004f84:	01800513          	li	a0,24
    80004f88:	ffffe097          	auipc	ra,0xffffe
    80004f8c:	3c8080e7          	jalr	968(ra) # 80003350 <_Znwm>
    80004f90:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004f94:	ffffe097          	auipc	ra,0xffffe
    80004f98:	58c080e7          	jalr	1420(ra) # 80003520 <_ZN6ThreadC1Ev>
    80004f9c:	f95ff06f          	j	80004f30 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80004fa0:	ffffe097          	auipc	ra,0xffffe
    80004fa4:	4b8080e7          	jalr	1208(ra) # 80003458 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80004fa8:	00000493          	li	s1,0
    80004fac:	0099ce63          	blt	s3,s1,80004fc8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80004fb0:	00009517          	auipc	a0,0x9
    80004fb4:	5b853503          	ld	a0,1464(a0) # 8000e568 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004fb8:	ffffe097          	auipc	ra,0xffffe
    80004fbc:	5ac080e7          	jalr	1452(ra) # 80003564 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80004fc0:	0014849b          	addiw	s1,s1,1
    80004fc4:	fe9ff06f          	j	80004fac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80004fc8:	00009517          	auipc	a0,0x9
    80004fcc:	5a053503          	ld	a0,1440(a0) # 8000e568 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004fd0:	00050863          	beqz	a0,80004fe0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80004fd4:	00053783          	ld	a5,0(a0)
    80004fd8:	0087b783          	ld	a5,8(a5)
    80004fdc:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80004fe0:	00000493          	li	s1,0
    80004fe4:	0080006f          	j	80004fec <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80004fe8:	0014849b          	addiw	s1,s1,1
    80004fec:	0334d263          	bge	s1,s3,80005010 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80004ff0:	00349793          	slli	a5,s1,0x3
    80004ff4:	00fa07b3          	add	a5,s4,a5
    80004ff8:	0007b503          	ld	a0,0(a5)
    80004ffc:	fe0506e3          	beqz	a0,80004fe8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80005000:	00053783          	ld	a5,0(a0)
    80005004:	0087b783          	ld	a5,8(a5)
    80005008:	000780e7          	jalr	a5
    8000500c:	fddff06f          	j	80004fe8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80005010:	000b8a63          	beqz	s7,80005024 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80005014:	000bb783          	ld	a5,0(s7)
    80005018:	0087b783          	ld	a5,8(a5)
    8000501c:	000b8513          	mv	a0,s7
    80005020:	000780e7          	jalr	a5
        delete buffer;
    80005024:	000a8e63          	beqz	s5,80005040 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80005028:	000a8513          	mv	a0,s5
    8000502c:	00000097          	auipc	ra,0x0
    80005030:	bb8080e7          	jalr	-1096(ra) # 80004be4 <_ZN9BufferCPPD1Ev>
    80005034:	000a8513          	mv	a0,s5
    80005038:	ffffe097          	auipc	ra,0xffffe
    8000503c:	340080e7          	jalr	832(ra) # 80003378 <_ZdlPv>
    80005040:	000c0113          	mv	sp,s8
    }
    80005044:	f8040113          	addi	sp,s0,-128
    80005048:	07813083          	ld	ra,120(sp)
    8000504c:	07013403          	ld	s0,112(sp)
    80005050:	06813483          	ld	s1,104(sp)
    80005054:	06013903          	ld	s2,96(sp)
    80005058:	05813983          	ld	s3,88(sp)
    8000505c:	05013a03          	ld	s4,80(sp)
    80005060:	04813a83          	ld	s5,72(sp)
    80005064:	04013b03          	ld	s6,64(sp)
    80005068:	03813b83          	ld	s7,56(sp)
    8000506c:	03013c03          	ld	s8,48(sp)
    80005070:	02813c83          	ld	s9,40(sp)
    80005074:	08010113          	addi	sp,sp,128
    80005078:	00008067          	ret
    8000507c:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80005080:	000a8513          	mv	a0,s5
    80005084:	ffffe097          	auipc	ra,0xffffe
    80005088:	2f4080e7          	jalr	756(ra) # 80003378 <_ZdlPv>
    8000508c:	00048513          	mv	a0,s1
    80005090:	0000a097          	auipc	ra,0xa
    80005094:	5a8080e7          	jalr	1448(ra) # 8000f638 <_Unwind_Resume>
    80005098:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    8000509c:	00048513          	mv	a0,s1
    800050a0:	ffffe097          	auipc	ra,0xffffe
    800050a4:	2d8080e7          	jalr	728(ra) # 80003378 <_ZdlPv>
    800050a8:	00090513          	mv	a0,s2
    800050ac:	0000a097          	auipc	ra,0xa
    800050b0:	58c080e7          	jalr	1420(ra) # 8000f638 <_Unwind_Resume>
    800050b4:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800050b8:	000b8513          	mv	a0,s7
    800050bc:	ffffe097          	auipc	ra,0xffffe
    800050c0:	2bc080e7          	jalr	700(ra) # 80003378 <_ZdlPv>
    800050c4:	00048513          	mv	a0,s1
    800050c8:	0000a097          	auipc	ra,0xa
    800050cc:	570080e7          	jalr	1392(ra) # 8000f638 <_Unwind_Resume>
    800050d0:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800050d4:	00048513          	mv	a0,s1
    800050d8:	ffffe097          	auipc	ra,0xffffe
    800050dc:	2a0080e7          	jalr	672(ra) # 80003378 <_ZdlPv>
    800050e0:	00090513          	mv	a0,s2
    800050e4:	0000a097          	auipc	ra,0xa
    800050e8:	554080e7          	jalr	1364(ra) # 8000f638 <_Unwind_Resume>
    800050ec:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800050f0:	000c8513          	mv	a0,s9
    800050f4:	ffffe097          	auipc	ra,0xffffe
    800050f8:	284080e7          	jalr	644(ra) # 80003378 <_ZdlPv>
    800050fc:	00048513          	mv	a0,s1
    80005100:	0000a097          	auipc	ra,0xa
    80005104:	538080e7          	jalr	1336(ra) # 8000f638 <_Unwind_Resume>

0000000080005108 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005108:	ff010113          	addi	sp,sp,-16
    8000510c:	00113423          	sd	ra,8(sp)
    80005110:	00813023          	sd	s0,0(sp)
    80005114:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005118:	00000097          	auipc	ra,0x0
    8000511c:	bcc080e7          	jalr	-1076(ra) # 80004ce4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>
    80005120:	00813083          	ld	ra,8(sp)
    80005124:	00013403          	ld	s0,0(sp)
    80005128:	01010113          	addi	sp,sp,16
    8000512c:	00008067          	ret

0000000080005130 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80005130:	fd010113          	addi	sp,sp,-48
    80005134:	02113423          	sd	ra,40(sp)
    80005138:	02813023          	sd	s0,32(sp)
    8000513c:	00913c23          	sd	s1,24(sp)
    80005140:	01213823          	sd	s2,16(sp)
    80005144:	01313423          	sd	s3,8(sp)
    80005148:	03010413          	addi	s0,sp,48
    8000514c:	00050913          	mv	s2,a0
            int i = 0;
    80005150:	00000993          	li	s3,0
    80005154:	0100006f          	j	80005164 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80005158:	00a00513          	li	a0,10
    8000515c:	ffffe097          	auipc	ra,0xffffe
    80005160:	4ec080e7          	jalr	1260(ra) # 80003648 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80005164:	00009797          	auipc	a5,0x9
    80005168:	3fc7a783          	lw	a5,1020(a5) # 8000e560 <_ZN19ConsumerProducerCPP9threadEndE>
    8000516c:	04079a63          	bnez	a5,800051c0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80005170:	01093783          	ld	a5,16(s2)
    80005174:	0087b503          	ld	a0,8(a5)
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	958080e7          	jalr	-1704(ra) # 80004ad0 <_ZN9BufferCPP3getEv>
                i++;
    80005180:	0019849b          	addiw	s1,s3,1
    80005184:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80005188:	0ff57513          	andi	a0,a0,255
    8000518c:	ffffe097          	auipc	ra,0xffffe
    80005190:	4bc080e7          	jalr	1212(ra) # 80003648 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80005194:	05000793          	li	a5,80
    80005198:	02f4e4bb          	remw	s1,s1,a5
    8000519c:	fc0494e3          	bnez	s1,80005164 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    800051a0:	fb9ff06f          	j	80005158 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800051a4:	01093783          	ld	a5,16(s2)
    800051a8:	0087b503          	ld	a0,8(a5)
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	924080e7          	jalr	-1756(ra) # 80004ad0 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800051b4:	0ff57513          	andi	a0,a0,255
    800051b8:	ffffe097          	auipc	ra,0xffffe
    800051bc:	490080e7          	jalr	1168(ra) # 80003648 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800051c0:	01093783          	ld	a5,16(s2)
    800051c4:	0087b503          	ld	a0,8(a5)
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	994080e7          	jalr	-1644(ra) # 80004b5c <_ZN9BufferCPP6getCntEv>
    800051d0:	fca04ae3          	bgtz	a0,800051a4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800051d4:	01093783          	ld	a5,16(s2)
    800051d8:	0107b503          	ld	a0,16(a5)
    800051dc:	ffffe097          	auipc	ra,0xffffe
    800051e0:	40c080e7          	jalr	1036(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    800051e4:	02813083          	ld	ra,40(sp)
    800051e8:	02013403          	ld	s0,32(sp)
    800051ec:	01813483          	ld	s1,24(sp)
    800051f0:	01013903          	ld	s2,16(sp)
    800051f4:	00813983          	ld	s3,8(sp)
    800051f8:	03010113          	addi	sp,sp,48
    800051fc:	00008067          	ret

0000000080005200 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80005200:	ff010113          	addi	sp,sp,-16
    80005204:	00113423          	sd	ra,8(sp)
    80005208:	00813023          	sd	s0,0(sp)
    8000520c:	01010413          	addi	s0,sp,16
    80005210:	00005797          	auipc	a5,0x5
    80005214:	17878793          	addi	a5,a5,376 # 8000a388 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005218:	00f53023          	sd	a5,0(a0)
    8000521c:	ffffe097          	auipc	ra,0xffffe
    80005220:	0c4080e7          	jalr	196(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005224:	00813083          	ld	ra,8(sp)
    80005228:	00013403          	ld	s0,0(sp)
    8000522c:	01010113          	addi	sp,sp,16
    80005230:	00008067          	ret

0000000080005234 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80005234:	fe010113          	addi	sp,sp,-32
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00913423          	sd	s1,8(sp)
    80005244:	02010413          	addi	s0,sp,32
    80005248:	00050493          	mv	s1,a0
    8000524c:	00005797          	auipc	a5,0x5
    80005250:	13c78793          	addi	a5,a5,316 # 8000a388 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005254:	00f53023          	sd	a5,0(a0)
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	088080e7          	jalr	136(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005260:	00048513          	mv	a0,s1
    80005264:	ffffe097          	auipc	ra,0xffffe
    80005268:	114080e7          	jalr	276(ra) # 80003378 <_ZdlPv>
    8000526c:	01813083          	ld	ra,24(sp)
    80005270:	01013403          	ld	s0,16(sp)
    80005274:	00813483          	ld	s1,8(sp)
    80005278:	02010113          	addi	sp,sp,32
    8000527c:	00008067          	ret

0000000080005280 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80005280:	ff010113          	addi	sp,sp,-16
    80005284:	00113423          	sd	ra,8(sp)
    80005288:	00813023          	sd	s0,0(sp)
    8000528c:	01010413          	addi	s0,sp,16
    80005290:	00005797          	auipc	a5,0x5
    80005294:	0a878793          	addi	a5,a5,168 # 8000a338 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80005298:	00f53023          	sd	a5,0(a0)
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	044080e7          	jalr	68(ra) # 800032e0 <_ZN6ThreadD1Ev>
    800052a4:	00813083          	ld	ra,8(sp)
    800052a8:	00013403          	ld	s0,0(sp)
    800052ac:	01010113          	addi	sp,sp,16
    800052b0:	00008067          	ret

00000000800052b4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800052b4:	fe010113          	addi	sp,sp,-32
    800052b8:	00113c23          	sd	ra,24(sp)
    800052bc:	00813823          	sd	s0,16(sp)
    800052c0:	00913423          	sd	s1,8(sp)
    800052c4:	02010413          	addi	s0,sp,32
    800052c8:	00050493          	mv	s1,a0
    800052cc:	00005797          	auipc	a5,0x5
    800052d0:	06c78793          	addi	a5,a5,108 # 8000a338 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800052d4:	00f53023          	sd	a5,0(a0)
    800052d8:	ffffe097          	auipc	ra,0xffffe
    800052dc:	008080e7          	jalr	8(ra) # 800032e0 <_ZN6ThreadD1Ev>
    800052e0:	00048513          	mv	a0,s1
    800052e4:	ffffe097          	auipc	ra,0xffffe
    800052e8:	094080e7          	jalr	148(ra) # 80003378 <_ZdlPv>
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	02010113          	addi	sp,sp,32
    800052fc:	00008067          	ret

0000000080005300 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80005300:	ff010113          	addi	sp,sp,-16
    80005304:	00113423          	sd	ra,8(sp)
    80005308:	00813023          	sd	s0,0(sp)
    8000530c:	01010413          	addi	s0,sp,16
    80005310:	00005797          	auipc	a5,0x5
    80005314:	05078793          	addi	a5,a5,80 # 8000a360 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005318:	00f53023          	sd	a5,0(a0)
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	fc4080e7          	jalr	-60(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005324:	00813083          	ld	ra,8(sp)
    80005328:	00013403          	ld	s0,0(sp)
    8000532c:	01010113          	addi	sp,sp,16
    80005330:	00008067          	ret

0000000080005334 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80005334:	fe010113          	addi	sp,sp,-32
    80005338:	00113c23          	sd	ra,24(sp)
    8000533c:	00813823          	sd	s0,16(sp)
    80005340:	00913423          	sd	s1,8(sp)
    80005344:	02010413          	addi	s0,sp,32
    80005348:	00050493          	mv	s1,a0
    8000534c:	00005797          	auipc	a5,0x5
    80005350:	01478793          	addi	a5,a5,20 # 8000a360 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005354:	00f53023          	sd	a5,0(a0)
    80005358:	ffffe097          	auipc	ra,0xffffe
    8000535c:	f88080e7          	jalr	-120(ra) # 800032e0 <_ZN6ThreadD1Ev>
    80005360:	00048513          	mv	a0,s1
    80005364:	ffffe097          	auipc	ra,0xffffe
    80005368:	014080e7          	jalr	20(ra) # 80003378 <_ZdlPv>
    8000536c:	01813083          	ld	ra,24(sp)
    80005370:	01013403          	ld	s0,16(sp)
    80005374:	00813483          	ld	s1,8(sp)
    80005378:	02010113          	addi	sp,sp,32
    8000537c:	00008067          	ret

0000000080005380 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80005380:	fe010113          	addi	sp,sp,-32
    80005384:	00113c23          	sd	ra,24(sp)
    80005388:	00813823          	sd	s0,16(sp)
    8000538c:	00913423          	sd	s1,8(sp)
    80005390:	02010413          	addi	s0,sp,32
    80005394:	00050493          	mv	s1,a0
            while ((key = getc()) != 'q') {
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	178080e7          	jalr	376(ra) # 80001510 <getc>
    800053a0:	0005059b          	sext.w	a1,a0
    800053a4:	07100793          	li	a5,113
    800053a8:	00f58c63          	beq	a1,a5,800053c0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800053ac:	0104b783          	ld	a5,16(s1)
    800053b0:	0087b503          	ld	a0,8(a5)
    800053b4:	fffff097          	auipc	ra,0xfffff
    800053b8:	68c080e7          	jalr	1676(ra) # 80004a40 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 'q') {
    800053bc:	fddff06f          	j	80005398 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800053c0:	00100793          	li	a5,1
    800053c4:	00009717          	auipc	a4,0x9
    800053c8:	18f72e23          	sw	a5,412(a4) # 8000e560 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800053cc:	0104b783          	ld	a5,16(s1)
    800053d0:	02100593          	li	a1,33
    800053d4:	0087b503          	ld	a0,8(a5)
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	668080e7          	jalr	1640(ra) # 80004a40 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800053e0:	0104b783          	ld	a5,16(s1)
    800053e4:	0107b503          	ld	a0,16(a5)
    800053e8:	ffffe097          	auipc	ra,0xffffe
    800053ec:	200080e7          	jalr	512(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    800053f0:	01813083          	ld	ra,24(sp)
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	00813483          	ld	s1,8(sp)
    800053fc:	02010113          	addi	sp,sp,32
    80005400:	00008067          	ret

0000000080005404 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80005404:	fe010113          	addi	sp,sp,-32
    80005408:	00113c23          	sd	ra,24(sp)
    8000540c:	00813823          	sd	s0,16(sp)
    80005410:	00913423          	sd	s1,8(sp)
    80005414:	01213023          	sd	s2,0(sp)
    80005418:	02010413          	addi	s0,sp,32
    8000541c:	00050493          	mv	s1,a0
            int i = 0;
    80005420:	00000913          	li	s2,0
            while (!threadEnd) {
    80005424:	00009797          	auipc	a5,0x9
    80005428:	13c7a783          	lw	a5,316(a5) # 8000e560 <_ZN19ConsumerProducerCPP9threadEndE>
    8000542c:	04079263          	bnez	a5,80005470 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80005430:	0104b783          	ld	a5,16(s1)
    80005434:	0007a583          	lw	a1,0(a5)
    80005438:	0305859b          	addiw	a1,a1,48
    8000543c:	0087b503          	ld	a0,8(a5)
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	600080e7          	jalr	1536(ra) # 80004a40 <_ZN9BufferCPP3putEi>
                i++;
    80005448:	0019071b          	addiw	a4,s2,1
    8000544c:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80005450:	0104b783          	ld	a5,16(s1)
    80005454:	0007a783          	lw	a5,0(a5)
    80005458:	00e787bb          	addw	a5,a5,a4
    8000545c:	00500513          	li	a0,5
    80005460:	02a7e53b          	remw	a0,a5,a0
    80005464:	ffffe097          	auipc	ra,0xffffe
    80005468:	01c080e7          	jalr	28(ra) # 80003480 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    8000546c:	fb9ff06f          	j	80005424 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80005470:	0104b783          	ld	a5,16(s1)
    80005474:	0107b503          	ld	a0,16(a5)
    80005478:	ffffe097          	auipc	ra,0xffffe
    8000547c:	170080e7          	jalr	368(ra) # 800035e8 <_ZN9Semaphore6signalEv>
        }
    80005480:	01813083          	ld	ra,24(sp)
    80005484:	01013403          	ld	s0,16(sp)
    80005488:	00813483          	ld	s1,8(sp)
    8000548c:	00013903          	ld	s2,0(sp)
    80005490:	02010113          	addi	sp,sp,32
    80005494:	00008067          	ret

0000000080005498 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005498:	fe010113          	addi	sp,sp,-32
    8000549c:	00113c23          	sd	ra,24(sp)
    800054a0:	00813823          	sd	s0,16(sp)
    800054a4:	00913423          	sd	s1,8(sp)
    800054a8:	01213023          	sd	s2,0(sp)
    800054ac:	02010413          	addi	s0,sp,32
    800054b0:	00050493          	mv	s1,a0
    800054b4:	00058913          	mv	s2,a1
    800054b8:	0015879b          	addiw	a5,a1,1
    800054bc:	0007851b          	sext.w	a0,a5
    800054c0:	00f4a023          	sw	a5,0(s1)
    800054c4:	0004a823          	sw	zero,16(s1)
    800054c8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054cc:	00251513          	slli	a0,a0,0x2
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	d88080e7          	jalr	-632(ra) # 80001258 <mem_alloc>
    800054d8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800054dc:	00000593          	li	a1,0
    800054e0:	02048513          	addi	a0,s1,32
    800054e4:	ffffc097          	auipc	ra,0xffffc
    800054e8:	e98080e7          	jalr	-360(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    800054ec:	00090593          	mv	a1,s2
    800054f0:	01848513          	addi	a0,s1,24
    800054f4:	ffffc097          	auipc	ra,0xffffc
    800054f8:	e88080e7          	jalr	-376(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    800054fc:	00100593          	li	a1,1
    80005500:	02848513          	addi	a0,s1,40
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	e78080e7          	jalr	-392(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    8000550c:	00100593          	li	a1,1
    80005510:	03048513          	addi	a0,s1,48
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	e68080e7          	jalr	-408(ra) # 8000137c <sem_open>
}
    8000551c:	01813083          	ld	ra,24(sp)
    80005520:	01013403          	ld	s0,16(sp)
    80005524:	00813483          	ld	s1,8(sp)
    80005528:	00013903          	ld	s2,0(sp)
    8000552c:	02010113          	addi	sp,sp,32
    80005530:	00008067          	ret

0000000080005534 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005534:	fe010113          	addi	sp,sp,-32
    80005538:	00113c23          	sd	ra,24(sp)
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00913423          	sd	s1,8(sp)
    80005544:	01213023          	sd	s2,0(sp)
    80005548:	02010413          	addi	s0,sp,32
    8000554c:	00050493          	mv	s1,a0
    80005550:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005554:	01853503          	ld	a0,24(a0)
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	e88080e7          	jalr	-376(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80005560:	0304b503          	ld	a0,48(s1)
    80005564:	ffffc097          	auipc	ra,0xffffc
    80005568:	e7c080e7          	jalr	-388(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    8000556c:	0084b783          	ld	a5,8(s1)
    80005570:	0144a703          	lw	a4,20(s1)
    80005574:	00271713          	slli	a4,a4,0x2
    80005578:	00e787b3          	add	a5,a5,a4
    8000557c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005580:	0144a783          	lw	a5,20(s1)
    80005584:	0017879b          	addiw	a5,a5,1
    80005588:	0004a703          	lw	a4,0(s1)
    8000558c:	02e7e7bb          	remw	a5,a5,a4
    80005590:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005594:	0304b503          	ld	a0,48(s1)
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	e74080e7          	jalr	-396(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    800055a0:	0204b503          	ld	a0,32(s1)
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	e68080e7          	jalr	-408(ra) # 8000140c <sem_signal>

}
    800055ac:	01813083          	ld	ra,24(sp)
    800055b0:	01013403          	ld	s0,16(sp)
    800055b4:	00813483          	ld	s1,8(sp)
    800055b8:	00013903          	ld	s2,0(sp)
    800055bc:	02010113          	addi	sp,sp,32
    800055c0:	00008067          	ret

00000000800055c4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800055c4:	fe010113          	addi	sp,sp,-32
    800055c8:	00113c23          	sd	ra,24(sp)
    800055cc:	00813823          	sd	s0,16(sp)
    800055d0:	00913423          	sd	s1,8(sp)
    800055d4:	01213023          	sd	s2,0(sp)
    800055d8:	02010413          	addi	s0,sp,32
    800055dc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800055e0:	02053503          	ld	a0,32(a0)
    800055e4:	ffffc097          	auipc	ra,0xffffc
    800055e8:	dfc080e7          	jalr	-516(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    800055ec:	0284b503          	ld	a0,40(s1)
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	df0080e7          	jalr	-528(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    800055f8:	0084b703          	ld	a4,8(s1)
    800055fc:	0104a783          	lw	a5,16(s1)
    80005600:	00279693          	slli	a3,a5,0x2
    80005604:	00d70733          	add	a4,a4,a3
    80005608:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000560c:	0017879b          	addiw	a5,a5,1
    80005610:	0004a703          	lw	a4,0(s1)
    80005614:	02e7e7bb          	remw	a5,a5,a4
    80005618:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000561c:	0284b503          	ld	a0,40(s1)
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	dec080e7          	jalr	-532(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80005628:	0184b503          	ld	a0,24(s1)
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	de0080e7          	jalr	-544(ra) # 8000140c <sem_signal>

    return ret;
}
    80005634:	00090513          	mv	a0,s2
    80005638:	01813083          	ld	ra,24(sp)
    8000563c:	01013403          	ld	s0,16(sp)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	00013903          	ld	s2,0(sp)
    80005648:	02010113          	addi	sp,sp,32
    8000564c:	00008067          	ret

0000000080005650 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005650:	fe010113          	addi	sp,sp,-32
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00813823          	sd	s0,16(sp)
    8000565c:	00913423          	sd	s1,8(sp)
    80005660:	01213023          	sd	s2,0(sp)
    80005664:	02010413          	addi	s0,sp,32
    80005668:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000566c:	02853503          	ld	a0,40(a0)
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	d70080e7          	jalr	-656(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80005678:	0304b503          	ld	a0,48(s1)
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	d64080e7          	jalr	-668(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    80005684:	0144a783          	lw	a5,20(s1)
    80005688:	0104a903          	lw	s2,16(s1)
    8000568c:	0327ce63          	blt	a5,s2,800056c8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005690:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005694:	0304b503          	ld	a0,48(s1)
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	d74080e7          	jalr	-652(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    800056a0:	0284b503          	ld	a0,40(s1)
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	d68080e7          	jalr	-664(ra) # 8000140c <sem_signal>

    return ret;
    800056ac:	00090513          	mv	a0,s2
    800056b0:	01813083          	ld	ra,24(sp)
    800056b4:	01013403          	ld	s0,16(sp)
    800056b8:	00813483          	ld	s1,8(sp)
    800056bc:	00013903          	ld	s2,0(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret
        ret = cap - head + tail;
    800056c8:	0004a703          	lw	a4,0(s1)
    800056cc:	4127093b          	subw	s2,a4,s2
    800056d0:	00f9093b          	addw	s2,s2,a5
    800056d4:	fc1ff06f          	j	80005694 <_ZN6Buffer6getCntEv+0x44>

00000000800056d8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800056d8:	fe010113          	addi	sp,sp,-32
    800056dc:	00113c23          	sd	ra,24(sp)
    800056e0:	00813823          	sd	s0,16(sp)
    800056e4:	00913423          	sd	s1,8(sp)
    800056e8:	02010413          	addi	s0,sp,32
    800056ec:	00050493          	mv	s1,a0
    putc('\n');
    800056f0:	00a00513          	li	a0,10
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	e44080e7          	jalr	-444(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    800056fc:	00003517          	auipc	a0,0x3
    80005700:	be450513          	addi	a0,a0,-1052 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80005704:	fffff097          	auipc	ra,0xfffff
    80005708:	f3c080e7          	jalr	-196(ra) # 80004640 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000570c:	00048513          	mv	a0,s1
    80005710:	00000097          	auipc	ra,0x0
    80005714:	f40080e7          	jalr	-192(ra) # 80005650 <_ZN6Buffer6getCntEv>
    80005718:	02a05c63          	blez	a0,80005750 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000571c:	0084b783          	ld	a5,8(s1)
    80005720:	0104a703          	lw	a4,16(s1)
    80005724:	00271713          	slli	a4,a4,0x2
    80005728:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000572c:	0007c503          	lbu	a0,0(a5)
    80005730:	ffffc097          	auipc	ra,0xffffc
    80005734:	e08080e7          	jalr	-504(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80005738:	0104a783          	lw	a5,16(s1)
    8000573c:	0017879b          	addiw	a5,a5,1
    80005740:	0004a703          	lw	a4,0(s1)
    80005744:	02e7e7bb          	remw	a5,a5,a4
    80005748:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000574c:	fc1ff06f          	j	8000570c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005750:	02100513          	li	a0,33
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	de4080e7          	jalr	-540(ra) # 80001538 <putc>
    putc('\n');
    8000575c:	00a00513          	li	a0,10
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	dd8080e7          	jalr	-552(ra) # 80001538 <putc>
    mem_free(buffer);
    80005768:	0084b503          	ld	a0,8(s1)
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	b1c080e7          	jalr	-1252(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80005774:	0204b503          	ld	a0,32(s1)
    80005778:	ffffc097          	auipc	ra,0xffffc
    8000577c:	c3c080e7          	jalr	-964(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80005780:	0184b503          	ld	a0,24(s1)
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	c30080e7          	jalr	-976(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    8000578c:	0304b503          	ld	a0,48(s1)
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	c24080e7          	jalr	-988(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80005798:	0284b503          	ld	a0,40(s1)
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	c18080e7          	jalr	-1000(ra) # 800013b4 <sem_close>
}
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <start>:
    800057b8:	ff010113          	addi	sp,sp,-16
    800057bc:	00813423          	sd	s0,8(sp)
    800057c0:	01010413          	addi	s0,sp,16
    800057c4:	300027f3          	csrr	a5,mstatus
    800057c8:	ffffe737          	lui	a4,0xffffe
    800057cc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef02f>
    800057d0:	00e7f7b3          	and	a5,a5,a4
    800057d4:	00001737          	lui	a4,0x1
    800057d8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800057dc:	00e7e7b3          	or	a5,a5,a4
    800057e0:	30079073          	csrw	mstatus,a5
    800057e4:	00000797          	auipc	a5,0x0
    800057e8:	16078793          	addi	a5,a5,352 # 80005944 <system_main>
    800057ec:	34179073          	csrw	mepc,a5
    800057f0:	00000793          	li	a5,0
    800057f4:	18079073          	csrw	satp,a5
    800057f8:	000107b7          	lui	a5,0x10
    800057fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005800:	30279073          	csrw	medeleg,a5
    80005804:	30379073          	csrw	mideleg,a5
    80005808:	104027f3          	csrr	a5,sie
    8000580c:	2227e793          	ori	a5,a5,546
    80005810:	10479073          	csrw	sie,a5
    80005814:	fff00793          	li	a5,-1
    80005818:	00a7d793          	srli	a5,a5,0xa
    8000581c:	3b079073          	csrw	pmpaddr0,a5
    80005820:	00f00793          	li	a5,15
    80005824:	3a079073          	csrw	pmpcfg0,a5
    80005828:	f14027f3          	csrr	a5,mhartid
    8000582c:	0200c737          	lui	a4,0x200c
    80005830:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005834:	0007869b          	sext.w	a3,a5
    80005838:	00269713          	slli	a4,a3,0x2
    8000583c:	000f4637          	lui	a2,0xf4
    80005840:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005844:	00d70733          	add	a4,a4,a3
    80005848:	0037979b          	slliw	a5,a5,0x3
    8000584c:	020046b7          	lui	a3,0x2004
    80005850:	00d787b3          	add	a5,a5,a3
    80005854:	00c585b3          	add	a1,a1,a2
    80005858:	00371693          	slli	a3,a4,0x3
    8000585c:	00009717          	auipc	a4,0x9
    80005860:	d1470713          	addi	a4,a4,-748 # 8000e570 <timer_scratch>
    80005864:	00b7b023          	sd	a1,0(a5)
    80005868:	00d70733          	add	a4,a4,a3
    8000586c:	00f73c23          	sd	a5,24(a4)
    80005870:	02c73023          	sd	a2,32(a4)
    80005874:	34071073          	csrw	mscratch,a4
    80005878:	00000797          	auipc	a5,0x0
    8000587c:	6e878793          	addi	a5,a5,1768 # 80005f60 <timervec>
    80005880:	30579073          	csrw	mtvec,a5
    80005884:	300027f3          	csrr	a5,mstatus
    80005888:	0087e793          	ori	a5,a5,8
    8000588c:	30079073          	csrw	mstatus,a5
    80005890:	304027f3          	csrr	a5,mie
    80005894:	0807e793          	ori	a5,a5,128
    80005898:	30479073          	csrw	mie,a5
    8000589c:	f14027f3          	csrr	a5,mhartid
    800058a0:	0007879b          	sext.w	a5,a5
    800058a4:	00078213          	mv	tp,a5
    800058a8:	30200073          	mret
    800058ac:	00813403          	ld	s0,8(sp)
    800058b0:	01010113          	addi	sp,sp,16
    800058b4:	00008067          	ret

00000000800058b8 <timerinit>:
    800058b8:	ff010113          	addi	sp,sp,-16
    800058bc:	00813423          	sd	s0,8(sp)
    800058c0:	01010413          	addi	s0,sp,16
    800058c4:	f14027f3          	csrr	a5,mhartid
    800058c8:	0200c737          	lui	a4,0x200c
    800058cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800058d0:	0007869b          	sext.w	a3,a5
    800058d4:	00269713          	slli	a4,a3,0x2
    800058d8:	000f4637          	lui	a2,0xf4
    800058dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800058e0:	00d70733          	add	a4,a4,a3
    800058e4:	0037979b          	slliw	a5,a5,0x3
    800058e8:	020046b7          	lui	a3,0x2004
    800058ec:	00d787b3          	add	a5,a5,a3
    800058f0:	00c585b3          	add	a1,a1,a2
    800058f4:	00371693          	slli	a3,a4,0x3
    800058f8:	00009717          	auipc	a4,0x9
    800058fc:	c7870713          	addi	a4,a4,-904 # 8000e570 <timer_scratch>
    80005900:	00b7b023          	sd	a1,0(a5)
    80005904:	00d70733          	add	a4,a4,a3
    80005908:	00f73c23          	sd	a5,24(a4)
    8000590c:	02c73023          	sd	a2,32(a4)
    80005910:	34071073          	csrw	mscratch,a4
    80005914:	00000797          	auipc	a5,0x0
    80005918:	64c78793          	addi	a5,a5,1612 # 80005f60 <timervec>
    8000591c:	30579073          	csrw	mtvec,a5
    80005920:	300027f3          	csrr	a5,mstatus
    80005924:	0087e793          	ori	a5,a5,8
    80005928:	30079073          	csrw	mstatus,a5
    8000592c:	304027f3          	csrr	a5,mie
    80005930:	0807e793          	ori	a5,a5,128
    80005934:	30479073          	csrw	mie,a5
    80005938:	00813403          	ld	s0,8(sp)
    8000593c:	01010113          	addi	sp,sp,16
    80005940:	00008067          	ret

0000000080005944 <system_main>:
    80005944:	fe010113          	addi	sp,sp,-32
    80005948:	00813823          	sd	s0,16(sp)
    8000594c:	00913423          	sd	s1,8(sp)
    80005950:	00113c23          	sd	ra,24(sp)
    80005954:	02010413          	addi	s0,sp,32
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	0c4080e7          	jalr	196(ra) # 80005a1c <cpuid>
    80005960:	00005497          	auipc	s1,0x5
    80005964:	ae048493          	addi	s1,s1,-1312 # 8000a440 <started>
    80005968:	02050263          	beqz	a0,8000598c <system_main+0x48>
    8000596c:	0004a783          	lw	a5,0(s1)
    80005970:	0007879b          	sext.w	a5,a5
    80005974:	fe078ce3          	beqz	a5,8000596c <system_main+0x28>
    80005978:	0ff0000f          	fence
    8000597c:	00003517          	auipc	a0,0x3
    80005980:	a9450513          	addi	a0,a0,-1388 # 80008410 <CONSOLE_STATUS+0x400>
    80005984:	00001097          	auipc	ra,0x1
    80005988:	a78080e7          	jalr	-1416(ra) # 800063fc <panic>
    8000598c:	00001097          	auipc	ra,0x1
    80005990:	9cc080e7          	jalr	-1588(ra) # 80006358 <consoleinit>
    80005994:	00001097          	auipc	ra,0x1
    80005998:	158080e7          	jalr	344(ra) # 80006aec <printfinit>
    8000599c:	00002517          	auipc	a0,0x2
    800059a0:	74450513          	addi	a0,a0,1860 # 800080e0 <CONSOLE_STATUS+0xd0>
    800059a4:	00001097          	auipc	ra,0x1
    800059a8:	ab4080e7          	jalr	-1356(ra) # 80006458 <__printf>
    800059ac:	00003517          	auipc	a0,0x3
    800059b0:	a3450513          	addi	a0,a0,-1484 # 800083e0 <CONSOLE_STATUS+0x3d0>
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	aa4080e7          	jalr	-1372(ra) # 80006458 <__printf>
    800059bc:	00002517          	auipc	a0,0x2
    800059c0:	72450513          	addi	a0,a0,1828 # 800080e0 <CONSOLE_STATUS+0xd0>
    800059c4:	00001097          	auipc	ra,0x1
    800059c8:	a94080e7          	jalr	-1388(ra) # 80006458 <__printf>
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	4ac080e7          	jalr	1196(ra) # 80006e78 <kinit>
    800059d4:	00000097          	auipc	ra,0x0
    800059d8:	148080e7          	jalr	328(ra) # 80005b1c <trapinit>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	16c080e7          	jalr	364(ra) # 80005b48 <trapinithart>
    800059e4:	00000097          	auipc	ra,0x0
    800059e8:	5bc080e7          	jalr	1468(ra) # 80005fa0 <plicinit>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	5dc080e7          	jalr	1500(ra) # 80005fc8 <plicinithart>
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	078080e7          	jalr	120(ra) # 80005a6c <userinit>
    800059fc:	0ff0000f          	fence
    80005a00:	00100793          	li	a5,1
    80005a04:	00003517          	auipc	a0,0x3
    80005a08:	9f450513          	addi	a0,a0,-1548 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80005a0c:	00f4a023          	sw	a5,0(s1)
    80005a10:	00001097          	auipc	ra,0x1
    80005a14:	a48080e7          	jalr	-1464(ra) # 80006458 <__printf>
    80005a18:	0000006f          	j	80005a18 <system_main+0xd4>

0000000080005a1c <cpuid>:
    80005a1c:	ff010113          	addi	sp,sp,-16
    80005a20:	00813423          	sd	s0,8(sp)
    80005a24:	01010413          	addi	s0,sp,16
    80005a28:	00020513          	mv	a0,tp
    80005a2c:	00813403          	ld	s0,8(sp)
    80005a30:	0005051b          	sext.w	a0,a0
    80005a34:	01010113          	addi	sp,sp,16
    80005a38:	00008067          	ret

0000000080005a3c <mycpu>:
    80005a3c:	ff010113          	addi	sp,sp,-16
    80005a40:	00813423          	sd	s0,8(sp)
    80005a44:	01010413          	addi	s0,sp,16
    80005a48:	00020793          	mv	a5,tp
    80005a4c:	00813403          	ld	s0,8(sp)
    80005a50:	0007879b          	sext.w	a5,a5
    80005a54:	00779793          	slli	a5,a5,0x7
    80005a58:	0000a517          	auipc	a0,0xa
    80005a5c:	b4850513          	addi	a0,a0,-1208 # 8000f5a0 <cpus>
    80005a60:	00f50533          	add	a0,a0,a5
    80005a64:	01010113          	addi	sp,sp,16
    80005a68:	00008067          	ret

0000000080005a6c <userinit>:
    80005a6c:	ff010113          	addi	sp,sp,-16
    80005a70:	00813423          	sd	s0,8(sp)
    80005a74:	01010413          	addi	s0,sp,16
    80005a78:	00813403          	ld	s0,8(sp)
    80005a7c:	01010113          	addi	sp,sp,16
    80005a80:	ffffe317          	auipc	t1,0xffffe
    80005a84:	80c30067          	jr	-2036(t1) # 8000328c <main>

0000000080005a88 <either_copyout>:
    80005a88:	ff010113          	addi	sp,sp,-16
    80005a8c:	00813023          	sd	s0,0(sp)
    80005a90:	00113423          	sd	ra,8(sp)
    80005a94:	01010413          	addi	s0,sp,16
    80005a98:	02051663          	bnez	a0,80005ac4 <either_copyout+0x3c>
    80005a9c:	00058513          	mv	a0,a1
    80005aa0:	00060593          	mv	a1,a2
    80005aa4:	0006861b          	sext.w	a2,a3
    80005aa8:	00002097          	auipc	ra,0x2
    80005aac:	c5c080e7          	jalr	-932(ra) # 80007704 <__memmove>
    80005ab0:	00813083          	ld	ra,8(sp)
    80005ab4:	00013403          	ld	s0,0(sp)
    80005ab8:	00000513          	li	a0,0
    80005abc:	01010113          	addi	sp,sp,16
    80005ac0:	00008067          	ret
    80005ac4:	00003517          	auipc	a0,0x3
    80005ac8:	97450513          	addi	a0,a0,-1676 # 80008438 <CONSOLE_STATUS+0x428>
    80005acc:	00001097          	auipc	ra,0x1
    80005ad0:	930080e7          	jalr	-1744(ra) # 800063fc <panic>

0000000080005ad4 <either_copyin>:
    80005ad4:	ff010113          	addi	sp,sp,-16
    80005ad8:	00813023          	sd	s0,0(sp)
    80005adc:	00113423          	sd	ra,8(sp)
    80005ae0:	01010413          	addi	s0,sp,16
    80005ae4:	02059463          	bnez	a1,80005b0c <either_copyin+0x38>
    80005ae8:	00060593          	mv	a1,a2
    80005aec:	0006861b          	sext.w	a2,a3
    80005af0:	00002097          	auipc	ra,0x2
    80005af4:	c14080e7          	jalr	-1004(ra) # 80007704 <__memmove>
    80005af8:	00813083          	ld	ra,8(sp)
    80005afc:	00013403          	ld	s0,0(sp)
    80005b00:	00000513          	li	a0,0
    80005b04:	01010113          	addi	sp,sp,16
    80005b08:	00008067          	ret
    80005b0c:	00003517          	auipc	a0,0x3
    80005b10:	95450513          	addi	a0,a0,-1708 # 80008460 <CONSOLE_STATUS+0x450>
    80005b14:	00001097          	auipc	ra,0x1
    80005b18:	8e8080e7          	jalr	-1816(ra) # 800063fc <panic>

0000000080005b1c <trapinit>:
    80005b1c:	ff010113          	addi	sp,sp,-16
    80005b20:	00813423          	sd	s0,8(sp)
    80005b24:	01010413          	addi	s0,sp,16
    80005b28:	00813403          	ld	s0,8(sp)
    80005b2c:	00003597          	auipc	a1,0x3
    80005b30:	95c58593          	addi	a1,a1,-1700 # 80008488 <CONSOLE_STATUS+0x478>
    80005b34:	0000a517          	auipc	a0,0xa
    80005b38:	aec50513          	addi	a0,a0,-1300 # 8000f620 <tickslock>
    80005b3c:	01010113          	addi	sp,sp,16
    80005b40:	00001317          	auipc	t1,0x1
    80005b44:	5c830067          	jr	1480(t1) # 80007108 <initlock>

0000000080005b48 <trapinithart>:
    80005b48:	ff010113          	addi	sp,sp,-16
    80005b4c:	00813423          	sd	s0,8(sp)
    80005b50:	01010413          	addi	s0,sp,16
    80005b54:	00000797          	auipc	a5,0x0
    80005b58:	2fc78793          	addi	a5,a5,764 # 80005e50 <kernelvec>
    80005b5c:	10579073          	csrw	stvec,a5
    80005b60:	00813403          	ld	s0,8(sp)
    80005b64:	01010113          	addi	sp,sp,16
    80005b68:	00008067          	ret

0000000080005b6c <usertrap>:
    80005b6c:	ff010113          	addi	sp,sp,-16
    80005b70:	00813423          	sd	s0,8(sp)
    80005b74:	01010413          	addi	s0,sp,16
    80005b78:	00813403          	ld	s0,8(sp)
    80005b7c:	01010113          	addi	sp,sp,16
    80005b80:	00008067          	ret

0000000080005b84 <usertrapret>:
    80005b84:	ff010113          	addi	sp,sp,-16
    80005b88:	00813423          	sd	s0,8(sp)
    80005b8c:	01010413          	addi	s0,sp,16
    80005b90:	00813403          	ld	s0,8(sp)
    80005b94:	01010113          	addi	sp,sp,16
    80005b98:	00008067          	ret

0000000080005b9c <kerneltrap>:
    80005b9c:	fe010113          	addi	sp,sp,-32
    80005ba0:	00813823          	sd	s0,16(sp)
    80005ba4:	00113c23          	sd	ra,24(sp)
    80005ba8:	00913423          	sd	s1,8(sp)
    80005bac:	02010413          	addi	s0,sp,32
    80005bb0:	142025f3          	csrr	a1,scause
    80005bb4:	100027f3          	csrr	a5,sstatus
    80005bb8:	0027f793          	andi	a5,a5,2
    80005bbc:	10079c63          	bnez	a5,80005cd4 <kerneltrap+0x138>
    80005bc0:	142027f3          	csrr	a5,scause
    80005bc4:	0207ce63          	bltz	a5,80005c00 <kerneltrap+0x64>
    80005bc8:	00003517          	auipc	a0,0x3
    80005bcc:	90850513          	addi	a0,a0,-1784 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005bd0:	00001097          	auipc	ra,0x1
    80005bd4:	888080e7          	jalr	-1912(ra) # 80006458 <__printf>
    80005bd8:	141025f3          	csrr	a1,sepc
    80005bdc:	14302673          	csrr	a2,stval
    80005be0:	00003517          	auipc	a0,0x3
    80005be4:	90050513          	addi	a0,a0,-1792 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005be8:	00001097          	auipc	ra,0x1
    80005bec:	870080e7          	jalr	-1936(ra) # 80006458 <__printf>
    80005bf0:	00003517          	auipc	a0,0x3
    80005bf4:	90850513          	addi	a0,a0,-1784 # 800084f8 <CONSOLE_STATUS+0x4e8>
    80005bf8:	00001097          	auipc	ra,0x1
    80005bfc:	804080e7          	jalr	-2044(ra) # 800063fc <panic>
    80005c00:	0ff7f713          	andi	a4,a5,255
    80005c04:	00900693          	li	a3,9
    80005c08:	04d70063          	beq	a4,a3,80005c48 <kerneltrap+0xac>
    80005c0c:	fff00713          	li	a4,-1
    80005c10:	03f71713          	slli	a4,a4,0x3f
    80005c14:	00170713          	addi	a4,a4,1
    80005c18:	fae798e3          	bne	a5,a4,80005bc8 <kerneltrap+0x2c>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	e00080e7          	jalr	-512(ra) # 80005a1c <cpuid>
    80005c24:	06050663          	beqz	a0,80005c90 <kerneltrap+0xf4>
    80005c28:	144027f3          	csrr	a5,sip
    80005c2c:	ffd7f793          	andi	a5,a5,-3
    80005c30:	14479073          	csrw	sip,a5
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	02010113          	addi	sp,sp,32
    80005c44:	00008067          	ret
    80005c48:	00000097          	auipc	ra,0x0
    80005c4c:	3cc080e7          	jalr	972(ra) # 80006014 <plic_claim>
    80005c50:	00a00793          	li	a5,10
    80005c54:	00050493          	mv	s1,a0
    80005c58:	06f50863          	beq	a0,a5,80005cc8 <kerneltrap+0x12c>
    80005c5c:	fc050ce3          	beqz	a0,80005c34 <kerneltrap+0x98>
    80005c60:	00050593          	mv	a1,a0
    80005c64:	00003517          	auipc	a0,0x3
    80005c68:	84c50513          	addi	a0,a0,-1972 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	7ec080e7          	jalr	2028(ra) # 80006458 <__printf>
    80005c74:	01013403          	ld	s0,16(sp)
    80005c78:	01813083          	ld	ra,24(sp)
    80005c7c:	00048513          	mv	a0,s1
    80005c80:	00813483          	ld	s1,8(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00000317          	auipc	t1,0x0
    80005c8c:	3c430067          	jr	964(t1) # 8000604c <plic_complete>
    80005c90:	0000a517          	auipc	a0,0xa
    80005c94:	99050513          	addi	a0,a0,-1648 # 8000f620 <tickslock>
    80005c98:	00001097          	auipc	ra,0x1
    80005c9c:	494080e7          	jalr	1172(ra) # 8000712c <acquire>
    80005ca0:	00004717          	auipc	a4,0x4
    80005ca4:	7a470713          	addi	a4,a4,1956 # 8000a444 <ticks>
    80005ca8:	00072783          	lw	a5,0(a4)
    80005cac:	0000a517          	auipc	a0,0xa
    80005cb0:	97450513          	addi	a0,a0,-1676 # 8000f620 <tickslock>
    80005cb4:	0017879b          	addiw	a5,a5,1
    80005cb8:	00f72023          	sw	a5,0(a4)
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	53c080e7          	jalr	1340(ra) # 800071f8 <release>
    80005cc4:	f65ff06f          	j	80005c28 <kerneltrap+0x8c>
    80005cc8:	00001097          	auipc	ra,0x1
    80005ccc:	098080e7          	jalr	152(ra) # 80006d60 <uartintr>
    80005cd0:	fa5ff06f          	j	80005c74 <kerneltrap+0xd8>
    80005cd4:	00002517          	auipc	a0,0x2
    80005cd8:	7bc50513          	addi	a0,a0,1980 # 80008490 <CONSOLE_STATUS+0x480>
    80005cdc:	00000097          	auipc	ra,0x0
    80005ce0:	720080e7          	jalr	1824(ra) # 800063fc <panic>

0000000080005ce4 <clockintr>:
    80005ce4:	fe010113          	addi	sp,sp,-32
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	02010413          	addi	s0,sp,32
    80005cf8:	0000a497          	auipc	s1,0xa
    80005cfc:	92848493          	addi	s1,s1,-1752 # 8000f620 <tickslock>
    80005d00:	00048513          	mv	a0,s1
    80005d04:	00001097          	auipc	ra,0x1
    80005d08:	428080e7          	jalr	1064(ra) # 8000712c <acquire>
    80005d0c:	00004717          	auipc	a4,0x4
    80005d10:	73870713          	addi	a4,a4,1848 # 8000a444 <ticks>
    80005d14:	00072783          	lw	a5,0(a4)
    80005d18:	01013403          	ld	s0,16(sp)
    80005d1c:	01813083          	ld	ra,24(sp)
    80005d20:	00048513          	mv	a0,s1
    80005d24:	0017879b          	addiw	a5,a5,1
    80005d28:	00813483          	ld	s1,8(sp)
    80005d2c:	00f72023          	sw	a5,0(a4)
    80005d30:	02010113          	addi	sp,sp,32
    80005d34:	00001317          	auipc	t1,0x1
    80005d38:	4c430067          	jr	1220(t1) # 800071f8 <release>

0000000080005d3c <devintr>:
    80005d3c:	142027f3          	csrr	a5,scause
    80005d40:	00000513          	li	a0,0
    80005d44:	0007c463          	bltz	a5,80005d4c <devintr+0x10>
    80005d48:	00008067          	ret
    80005d4c:	fe010113          	addi	sp,sp,-32
    80005d50:	00813823          	sd	s0,16(sp)
    80005d54:	00113c23          	sd	ra,24(sp)
    80005d58:	00913423          	sd	s1,8(sp)
    80005d5c:	02010413          	addi	s0,sp,32
    80005d60:	0ff7f713          	andi	a4,a5,255
    80005d64:	00900693          	li	a3,9
    80005d68:	04d70c63          	beq	a4,a3,80005dc0 <devintr+0x84>
    80005d6c:	fff00713          	li	a4,-1
    80005d70:	03f71713          	slli	a4,a4,0x3f
    80005d74:	00170713          	addi	a4,a4,1
    80005d78:	00e78c63          	beq	a5,a4,80005d90 <devintr+0x54>
    80005d7c:	01813083          	ld	ra,24(sp)
    80005d80:	01013403          	ld	s0,16(sp)
    80005d84:	00813483          	ld	s1,8(sp)
    80005d88:	02010113          	addi	sp,sp,32
    80005d8c:	00008067          	ret
    80005d90:	00000097          	auipc	ra,0x0
    80005d94:	c8c080e7          	jalr	-884(ra) # 80005a1c <cpuid>
    80005d98:	06050663          	beqz	a0,80005e04 <devintr+0xc8>
    80005d9c:	144027f3          	csrr	a5,sip
    80005da0:	ffd7f793          	andi	a5,a5,-3
    80005da4:	14479073          	csrw	sip,a5
    80005da8:	01813083          	ld	ra,24(sp)
    80005dac:	01013403          	ld	s0,16(sp)
    80005db0:	00813483          	ld	s1,8(sp)
    80005db4:	00200513          	li	a0,2
    80005db8:	02010113          	addi	sp,sp,32
    80005dbc:	00008067          	ret
    80005dc0:	00000097          	auipc	ra,0x0
    80005dc4:	254080e7          	jalr	596(ra) # 80006014 <plic_claim>
    80005dc8:	00a00793          	li	a5,10
    80005dcc:	00050493          	mv	s1,a0
    80005dd0:	06f50663          	beq	a0,a5,80005e3c <devintr+0x100>
    80005dd4:	00100513          	li	a0,1
    80005dd8:	fa0482e3          	beqz	s1,80005d7c <devintr+0x40>
    80005ddc:	00048593          	mv	a1,s1
    80005de0:	00002517          	auipc	a0,0x2
    80005de4:	6d050513          	addi	a0,a0,1744 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	670080e7          	jalr	1648(ra) # 80006458 <__printf>
    80005df0:	00048513          	mv	a0,s1
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	258080e7          	jalr	600(ra) # 8000604c <plic_complete>
    80005dfc:	00100513          	li	a0,1
    80005e00:	f7dff06f          	j	80005d7c <devintr+0x40>
    80005e04:	0000a517          	auipc	a0,0xa
    80005e08:	81c50513          	addi	a0,a0,-2020 # 8000f620 <tickslock>
    80005e0c:	00001097          	auipc	ra,0x1
    80005e10:	320080e7          	jalr	800(ra) # 8000712c <acquire>
    80005e14:	00004717          	auipc	a4,0x4
    80005e18:	63070713          	addi	a4,a4,1584 # 8000a444 <ticks>
    80005e1c:	00072783          	lw	a5,0(a4)
    80005e20:	0000a517          	auipc	a0,0xa
    80005e24:	80050513          	addi	a0,a0,-2048 # 8000f620 <tickslock>
    80005e28:	0017879b          	addiw	a5,a5,1
    80005e2c:	00f72023          	sw	a5,0(a4)
    80005e30:	00001097          	auipc	ra,0x1
    80005e34:	3c8080e7          	jalr	968(ra) # 800071f8 <release>
    80005e38:	f65ff06f          	j	80005d9c <devintr+0x60>
    80005e3c:	00001097          	auipc	ra,0x1
    80005e40:	f24080e7          	jalr	-220(ra) # 80006d60 <uartintr>
    80005e44:	fadff06f          	j	80005df0 <devintr+0xb4>
	...

0000000080005e50 <kernelvec>:
    80005e50:	f0010113          	addi	sp,sp,-256
    80005e54:	00113023          	sd	ra,0(sp)
    80005e58:	00213423          	sd	sp,8(sp)
    80005e5c:	00313823          	sd	gp,16(sp)
    80005e60:	00413c23          	sd	tp,24(sp)
    80005e64:	02513023          	sd	t0,32(sp)
    80005e68:	02613423          	sd	t1,40(sp)
    80005e6c:	02713823          	sd	t2,48(sp)
    80005e70:	02813c23          	sd	s0,56(sp)
    80005e74:	04913023          	sd	s1,64(sp)
    80005e78:	04a13423          	sd	a0,72(sp)
    80005e7c:	04b13823          	sd	a1,80(sp)
    80005e80:	04c13c23          	sd	a2,88(sp)
    80005e84:	06d13023          	sd	a3,96(sp)
    80005e88:	06e13423          	sd	a4,104(sp)
    80005e8c:	06f13823          	sd	a5,112(sp)
    80005e90:	07013c23          	sd	a6,120(sp)
    80005e94:	09113023          	sd	a7,128(sp)
    80005e98:	09213423          	sd	s2,136(sp)
    80005e9c:	09313823          	sd	s3,144(sp)
    80005ea0:	09413c23          	sd	s4,152(sp)
    80005ea4:	0b513023          	sd	s5,160(sp)
    80005ea8:	0b613423          	sd	s6,168(sp)
    80005eac:	0b713823          	sd	s7,176(sp)
    80005eb0:	0b813c23          	sd	s8,184(sp)
    80005eb4:	0d913023          	sd	s9,192(sp)
    80005eb8:	0da13423          	sd	s10,200(sp)
    80005ebc:	0db13823          	sd	s11,208(sp)
    80005ec0:	0dc13c23          	sd	t3,216(sp)
    80005ec4:	0fd13023          	sd	t4,224(sp)
    80005ec8:	0fe13423          	sd	t5,232(sp)
    80005ecc:	0ff13823          	sd	t6,240(sp)
    80005ed0:	ccdff0ef          	jal	ra,80005b9c <kerneltrap>
    80005ed4:	00013083          	ld	ra,0(sp)
    80005ed8:	00813103          	ld	sp,8(sp)
    80005edc:	01013183          	ld	gp,16(sp)
    80005ee0:	02013283          	ld	t0,32(sp)
    80005ee4:	02813303          	ld	t1,40(sp)
    80005ee8:	03013383          	ld	t2,48(sp)
    80005eec:	03813403          	ld	s0,56(sp)
    80005ef0:	04013483          	ld	s1,64(sp)
    80005ef4:	04813503          	ld	a0,72(sp)
    80005ef8:	05013583          	ld	a1,80(sp)
    80005efc:	05813603          	ld	a2,88(sp)
    80005f00:	06013683          	ld	a3,96(sp)
    80005f04:	06813703          	ld	a4,104(sp)
    80005f08:	07013783          	ld	a5,112(sp)
    80005f0c:	07813803          	ld	a6,120(sp)
    80005f10:	08013883          	ld	a7,128(sp)
    80005f14:	08813903          	ld	s2,136(sp)
    80005f18:	09013983          	ld	s3,144(sp)
    80005f1c:	09813a03          	ld	s4,152(sp)
    80005f20:	0a013a83          	ld	s5,160(sp)
    80005f24:	0a813b03          	ld	s6,168(sp)
    80005f28:	0b013b83          	ld	s7,176(sp)
    80005f2c:	0b813c03          	ld	s8,184(sp)
    80005f30:	0c013c83          	ld	s9,192(sp)
    80005f34:	0c813d03          	ld	s10,200(sp)
    80005f38:	0d013d83          	ld	s11,208(sp)
    80005f3c:	0d813e03          	ld	t3,216(sp)
    80005f40:	0e013e83          	ld	t4,224(sp)
    80005f44:	0e813f03          	ld	t5,232(sp)
    80005f48:	0f013f83          	ld	t6,240(sp)
    80005f4c:	10010113          	addi	sp,sp,256
    80005f50:	10200073          	sret
    80005f54:	00000013          	nop
    80005f58:	00000013          	nop
    80005f5c:	00000013          	nop

0000000080005f60 <timervec>:
    80005f60:	34051573          	csrrw	a0,mscratch,a0
    80005f64:	00b53023          	sd	a1,0(a0)
    80005f68:	00c53423          	sd	a2,8(a0)
    80005f6c:	00d53823          	sd	a3,16(a0)
    80005f70:	01853583          	ld	a1,24(a0)
    80005f74:	02053603          	ld	a2,32(a0)
    80005f78:	0005b683          	ld	a3,0(a1)
    80005f7c:	00c686b3          	add	a3,a3,a2
    80005f80:	00d5b023          	sd	a3,0(a1)
    80005f84:	00200593          	li	a1,2
    80005f88:	14459073          	csrw	sip,a1
    80005f8c:	01053683          	ld	a3,16(a0)
    80005f90:	00853603          	ld	a2,8(a0)
    80005f94:	00053583          	ld	a1,0(a0)
    80005f98:	34051573          	csrrw	a0,mscratch,a0
    80005f9c:	30200073          	mret

0000000080005fa0 <plicinit>:
    80005fa0:	ff010113          	addi	sp,sp,-16
    80005fa4:	00813423          	sd	s0,8(sp)
    80005fa8:	01010413          	addi	s0,sp,16
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	0c0007b7          	lui	a5,0xc000
    80005fb4:	00100713          	li	a4,1
    80005fb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005fbc:	00e7a223          	sw	a4,4(a5)
    80005fc0:	01010113          	addi	sp,sp,16
    80005fc4:	00008067          	ret

0000000080005fc8 <plicinithart>:
    80005fc8:	ff010113          	addi	sp,sp,-16
    80005fcc:	00813023          	sd	s0,0(sp)
    80005fd0:	00113423          	sd	ra,8(sp)
    80005fd4:	01010413          	addi	s0,sp,16
    80005fd8:	00000097          	auipc	ra,0x0
    80005fdc:	a44080e7          	jalr	-1468(ra) # 80005a1c <cpuid>
    80005fe0:	0085171b          	slliw	a4,a0,0x8
    80005fe4:	0c0027b7          	lui	a5,0xc002
    80005fe8:	00e787b3          	add	a5,a5,a4
    80005fec:	40200713          	li	a4,1026
    80005ff0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ff4:	00813083          	ld	ra,8(sp)
    80005ff8:	00013403          	ld	s0,0(sp)
    80005ffc:	00d5151b          	slliw	a0,a0,0xd
    80006000:	0c2017b7          	lui	a5,0xc201
    80006004:	00a78533          	add	a0,a5,a0
    80006008:	00052023          	sw	zero,0(a0)
    8000600c:	01010113          	addi	sp,sp,16
    80006010:	00008067          	ret

0000000080006014 <plic_claim>:
    80006014:	ff010113          	addi	sp,sp,-16
    80006018:	00813023          	sd	s0,0(sp)
    8000601c:	00113423          	sd	ra,8(sp)
    80006020:	01010413          	addi	s0,sp,16
    80006024:	00000097          	auipc	ra,0x0
    80006028:	9f8080e7          	jalr	-1544(ra) # 80005a1c <cpuid>
    8000602c:	00813083          	ld	ra,8(sp)
    80006030:	00013403          	ld	s0,0(sp)
    80006034:	00d5151b          	slliw	a0,a0,0xd
    80006038:	0c2017b7          	lui	a5,0xc201
    8000603c:	00a78533          	add	a0,a5,a0
    80006040:	00452503          	lw	a0,4(a0)
    80006044:	01010113          	addi	sp,sp,16
    80006048:	00008067          	ret

000000008000604c <plic_complete>:
    8000604c:	fe010113          	addi	sp,sp,-32
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	02010413          	addi	s0,sp,32
    80006060:	00050493          	mv	s1,a0
    80006064:	00000097          	auipc	ra,0x0
    80006068:	9b8080e7          	jalr	-1608(ra) # 80005a1c <cpuid>
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00d5179b          	slliw	a5,a0,0xd
    80006078:	0c201737          	lui	a4,0xc201
    8000607c:	00f707b3          	add	a5,a4,a5
    80006080:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006084:	00813483          	ld	s1,8(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <consolewrite>:
    80006090:	fb010113          	addi	sp,sp,-80
    80006094:	04813023          	sd	s0,64(sp)
    80006098:	04113423          	sd	ra,72(sp)
    8000609c:	02913c23          	sd	s1,56(sp)
    800060a0:	03213823          	sd	s2,48(sp)
    800060a4:	03313423          	sd	s3,40(sp)
    800060a8:	03413023          	sd	s4,32(sp)
    800060ac:	01513c23          	sd	s5,24(sp)
    800060b0:	05010413          	addi	s0,sp,80
    800060b4:	06c05c63          	blez	a2,8000612c <consolewrite+0x9c>
    800060b8:	00060993          	mv	s3,a2
    800060bc:	00050a13          	mv	s4,a0
    800060c0:	00058493          	mv	s1,a1
    800060c4:	00000913          	li	s2,0
    800060c8:	fff00a93          	li	s5,-1
    800060cc:	01c0006f          	j	800060e8 <consolewrite+0x58>
    800060d0:	fbf44503          	lbu	a0,-65(s0)
    800060d4:	0019091b          	addiw	s2,s2,1
    800060d8:	00148493          	addi	s1,s1,1
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	a9c080e7          	jalr	-1380(ra) # 80006b78 <uartputc>
    800060e4:	03298063          	beq	s3,s2,80006104 <consolewrite+0x74>
    800060e8:	00048613          	mv	a2,s1
    800060ec:	00100693          	li	a3,1
    800060f0:	000a0593          	mv	a1,s4
    800060f4:	fbf40513          	addi	a0,s0,-65
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	9dc080e7          	jalr	-1572(ra) # 80005ad4 <either_copyin>
    80006100:	fd5518e3          	bne	a0,s5,800060d0 <consolewrite+0x40>
    80006104:	04813083          	ld	ra,72(sp)
    80006108:	04013403          	ld	s0,64(sp)
    8000610c:	03813483          	ld	s1,56(sp)
    80006110:	02813983          	ld	s3,40(sp)
    80006114:	02013a03          	ld	s4,32(sp)
    80006118:	01813a83          	ld	s5,24(sp)
    8000611c:	00090513          	mv	a0,s2
    80006120:	03013903          	ld	s2,48(sp)
    80006124:	05010113          	addi	sp,sp,80
    80006128:	00008067          	ret
    8000612c:	00000913          	li	s2,0
    80006130:	fd5ff06f          	j	80006104 <consolewrite+0x74>

0000000080006134 <consoleread>:
    80006134:	f9010113          	addi	sp,sp,-112
    80006138:	06813023          	sd	s0,96(sp)
    8000613c:	04913c23          	sd	s1,88(sp)
    80006140:	05213823          	sd	s2,80(sp)
    80006144:	05313423          	sd	s3,72(sp)
    80006148:	05413023          	sd	s4,64(sp)
    8000614c:	03513c23          	sd	s5,56(sp)
    80006150:	03613823          	sd	s6,48(sp)
    80006154:	03713423          	sd	s7,40(sp)
    80006158:	03813023          	sd	s8,32(sp)
    8000615c:	06113423          	sd	ra,104(sp)
    80006160:	01913c23          	sd	s9,24(sp)
    80006164:	07010413          	addi	s0,sp,112
    80006168:	00060b93          	mv	s7,a2
    8000616c:	00050913          	mv	s2,a0
    80006170:	00058c13          	mv	s8,a1
    80006174:	00060b1b          	sext.w	s6,a2
    80006178:	00009497          	auipc	s1,0x9
    8000617c:	4d048493          	addi	s1,s1,1232 # 8000f648 <cons>
    80006180:	00400993          	li	s3,4
    80006184:	fff00a13          	li	s4,-1
    80006188:	00a00a93          	li	s5,10
    8000618c:	05705e63          	blez	s7,800061e8 <consoleread+0xb4>
    80006190:	09c4a703          	lw	a4,156(s1)
    80006194:	0984a783          	lw	a5,152(s1)
    80006198:	0007071b          	sext.w	a4,a4
    8000619c:	08e78463          	beq	a5,a4,80006224 <consoleread+0xf0>
    800061a0:	07f7f713          	andi	a4,a5,127
    800061a4:	00e48733          	add	a4,s1,a4
    800061a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800061ac:	0017869b          	addiw	a3,a5,1
    800061b0:	08d4ac23          	sw	a3,152(s1)
    800061b4:	00070c9b          	sext.w	s9,a4
    800061b8:	0b370663          	beq	a4,s3,80006264 <consoleread+0x130>
    800061bc:	00100693          	li	a3,1
    800061c0:	f9f40613          	addi	a2,s0,-97
    800061c4:	000c0593          	mv	a1,s8
    800061c8:	00090513          	mv	a0,s2
    800061cc:	f8e40fa3          	sb	a4,-97(s0)
    800061d0:	00000097          	auipc	ra,0x0
    800061d4:	8b8080e7          	jalr	-1864(ra) # 80005a88 <either_copyout>
    800061d8:	01450863          	beq	a0,s4,800061e8 <consoleread+0xb4>
    800061dc:	001c0c13          	addi	s8,s8,1
    800061e0:	fffb8b9b          	addiw	s7,s7,-1
    800061e4:	fb5c94e3          	bne	s9,s5,8000618c <consoleread+0x58>
    800061e8:	000b851b          	sext.w	a0,s7
    800061ec:	06813083          	ld	ra,104(sp)
    800061f0:	06013403          	ld	s0,96(sp)
    800061f4:	05813483          	ld	s1,88(sp)
    800061f8:	05013903          	ld	s2,80(sp)
    800061fc:	04813983          	ld	s3,72(sp)
    80006200:	04013a03          	ld	s4,64(sp)
    80006204:	03813a83          	ld	s5,56(sp)
    80006208:	02813b83          	ld	s7,40(sp)
    8000620c:	02013c03          	ld	s8,32(sp)
    80006210:	01813c83          	ld	s9,24(sp)
    80006214:	40ab053b          	subw	a0,s6,a0
    80006218:	03013b03          	ld	s6,48(sp)
    8000621c:	07010113          	addi	sp,sp,112
    80006220:	00008067          	ret
    80006224:	00001097          	auipc	ra,0x1
    80006228:	1d8080e7          	jalr	472(ra) # 800073fc <push_on>
    8000622c:	0984a703          	lw	a4,152(s1)
    80006230:	09c4a783          	lw	a5,156(s1)
    80006234:	0007879b          	sext.w	a5,a5
    80006238:	fef70ce3          	beq	a4,a5,80006230 <consoleread+0xfc>
    8000623c:	00001097          	auipc	ra,0x1
    80006240:	234080e7          	jalr	564(ra) # 80007470 <pop_on>
    80006244:	0984a783          	lw	a5,152(s1)
    80006248:	07f7f713          	andi	a4,a5,127
    8000624c:	00e48733          	add	a4,s1,a4
    80006250:	01874703          	lbu	a4,24(a4)
    80006254:	0017869b          	addiw	a3,a5,1
    80006258:	08d4ac23          	sw	a3,152(s1)
    8000625c:	00070c9b          	sext.w	s9,a4
    80006260:	f5371ee3          	bne	a4,s3,800061bc <consoleread+0x88>
    80006264:	000b851b          	sext.w	a0,s7
    80006268:	f96bf2e3          	bgeu	s7,s6,800061ec <consoleread+0xb8>
    8000626c:	08f4ac23          	sw	a5,152(s1)
    80006270:	f7dff06f          	j	800061ec <consoleread+0xb8>

0000000080006274 <consputc>:
    80006274:	10000793          	li	a5,256
    80006278:	00f50663          	beq	a0,a5,80006284 <consputc+0x10>
    8000627c:	00001317          	auipc	t1,0x1
    80006280:	9f430067          	jr	-1548(t1) # 80006c70 <uartputc_sync>
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00113423          	sd	ra,8(sp)
    8000628c:	00813023          	sd	s0,0(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	00800513          	li	a0,8
    80006298:	00001097          	auipc	ra,0x1
    8000629c:	9d8080e7          	jalr	-1576(ra) # 80006c70 <uartputc_sync>
    800062a0:	02000513          	li	a0,32
    800062a4:	00001097          	auipc	ra,0x1
    800062a8:	9cc080e7          	jalr	-1588(ra) # 80006c70 <uartputc_sync>
    800062ac:	00013403          	ld	s0,0(sp)
    800062b0:	00813083          	ld	ra,8(sp)
    800062b4:	00800513          	li	a0,8
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00001317          	auipc	t1,0x1
    800062c0:	9b430067          	jr	-1612(t1) # 80006c70 <uartputc_sync>

00000000800062c4 <consoleintr>:
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00813823          	sd	s0,16(sp)
    800062cc:	00913423          	sd	s1,8(sp)
    800062d0:	01213023          	sd	s2,0(sp)
    800062d4:	00113c23          	sd	ra,24(sp)
    800062d8:	02010413          	addi	s0,sp,32
    800062dc:	00009917          	auipc	s2,0x9
    800062e0:	36c90913          	addi	s2,s2,876 # 8000f648 <cons>
    800062e4:	00050493          	mv	s1,a0
    800062e8:	00090513          	mv	a0,s2
    800062ec:	00001097          	auipc	ra,0x1
    800062f0:	e40080e7          	jalr	-448(ra) # 8000712c <acquire>
    800062f4:	02048c63          	beqz	s1,8000632c <consoleintr+0x68>
    800062f8:	0a092783          	lw	a5,160(s2)
    800062fc:	09892703          	lw	a4,152(s2)
    80006300:	07f00693          	li	a3,127
    80006304:	40e7873b          	subw	a4,a5,a4
    80006308:	02e6e263          	bltu	a3,a4,8000632c <consoleintr+0x68>
    8000630c:	00d00713          	li	a4,13
    80006310:	04e48063          	beq	s1,a4,80006350 <consoleintr+0x8c>
    80006314:	07f7f713          	andi	a4,a5,127
    80006318:	00e90733          	add	a4,s2,a4
    8000631c:	0017879b          	addiw	a5,a5,1
    80006320:	0af92023          	sw	a5,160(s2)
    80006324:	00970c23          	sb	s1,24(a4)
    80006328:	08f92e23          	sw	a5,156(s2)
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	01813083          	ld	ra,24(sp)
    80006334:	00813483          	ld	s1,8(sp)
    80006338:	00013903          	ld	s2,0(sp)
    8000633c:	00009517          	auipc	a0,0x9
    80006340:	30c50513          	addi	a0,a0,780 # 8000f648 <cons>
    80006344:	02010113          	addi	sp,sp,32
    80006348:	00001317          	auipc	t1,0x1
    8000634c:	eb030067          	jr	-336(t1) # 800071f8 <release>
    80006350:	00a00493          	li	s1,10
    80006354:	fc1ff06f          	j	80006314 <consoleintr+0x50>

0000000080006358 <consoleinit>:
    80006358:	fe010113          	addi	sp,sp,-32
    8000635c:	00113c23          	sd	ra,24(sp)
    80006360:	00813823          	sd	s0,16(sp)
    80006364:	00913423          	sd	s1,8(sp)
    80006368:	02010413          	addi	s0,sp,32
    8000636c:	00009497          	auipc	s1,0x9
    80006370:	2dc48493          	addi	s1,s1,732 # 8000f648 <cons>
    80006374:	00048513          	mv	a0,s1
    80006378:	00002597          	auipc	a1,0x2
    8000637c:	19058593          	addi	a1,a1,400 # 80008508 <CONSOLE_STATUS+0x4f8>
    80006380:	00001097          	auipc	ra,0x1
    80006384:	d88080e7          	jalr	-632(ra) # 80007108 <initlock>
    80006388:	00000097          	auipc	ra,0x0
    8000638c:	7ac080e7          	jalr	1964(ra) # 80006b34 <uartinit>
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	01013403          	ld	s0,16(sp)
    80006398:	00000797          	auipc	a5,0x0
    8000639c:	d9c78793          	addi	a5,a5,-612 # 80006134 <consoleread>
    800063a0:	0af4bc23          	sd	a5,184(s1)
    800063a4:	00000797          	auipc	a5,0x0
    800063a8:	cec78793          	addi	a5,a5,-788 # 80006090 <consolewrite>
    800063ac:	0cf4b023          	sd	a5,192(s1)
    800063b0:	00813483          	ld	s1,8(sp)
    800063b4:	02010113          	addi	sp,sp,32
    800063b8:	00008067          	ret

00000000800063bc <console_read>:
    800063bc:	ff010113          	addi	sp,sp,-16
    800063c0:	00813423          	sd	s0,8(sp)
    800063c4:	01010413          	addi	s0,sp,16
    800063c8:	00813403          	ld	s0,8(sp)
    800063cc:	00009317          	auipc	t1,0x9
    800063d0:	33433303          	ld	t1,820(t1) # 8000f700 <devsw+0x10>
    800063d4:	01010113          	addi	sp,sp,16
    800063d8:	00030067          	jr	t1

00000000800063dc <console_write>:
    800063dc:	ff010113          	addi	sp,sp,-16
    800063e0:	00813423          	sd	s0,8(sp)
    800063e4:	01010413          	addi	s0,sp,16
    800063e8:	00813403          	ld	s0,8(sp)
    800063ec:	00009317          	auipc	t1,0x9
    800063f0:	31c33303          	ld	t1,796(t1) # 8000f708 <devsw+0x18>
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00030067          	jr	t1

00000000800063fc <panic>:
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	02010413          	addi	s0,sp,32
    80006410:	00050493          	mv	s1,a0
    80006414:	00002517          	auipc	a0,0x2
    80006418:	0fc50513          	addi	a0,a0,252 # 80008510 <CONSOLE_STATUS+0x500>
    8000641c:	00009797          	auipc	a5,0x9
    80006420:	3807a623          	sw	zero,908(a5) # 8000f7a8 <pr+0x18>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	034080e7          	jalr	52(ra) # 80006458 <__printf>
    8000642c:	00048513          	mv	a0,s1
    80006430:	00000097          	auipc	ra,0x0
    80006434:	028080e7          	jalr	40(ra) # 80006458 <__printf>
    80006438:	00002517          	auipc	a0,0x2
    8000643c:	ca850513          	addi	a0,a0,-856 # 800080e0 <CONSOLE_STATUS+0xd0>
    80006440:	00000097          	auipc	ra,0x0
    80006444:	018080e7          	jalr	24(ra) # 80006458 <__printf>
    80006448:	00100793          	li	a5,1
    8000644c:	00004717          	auipc	a4,0x4
    80006450:	fef72e23          	sw	a5,-4(a4) # 8000a448 <panicked>
    80006454:	0000006f          	j	80006454 <panic+0x58>

0000000080006458 <__printf>:
    80006458:	f3010113          	addi	sp,sp,-208
    8000645c:	08813023          	sd	s0,128(sp)
    80006460:	07313423          	sd	s3,104(sp)
    80006464:	09010413          	addi	s0,sp,144
    80006468:	05813023          	sd	s8,64(sp)
    8000646c:	08113423          	sd	ra,136(sp)
    80006470:	06913c23          	sd	s1,120(sp)
    80006474:	07213823          	sd	s2,112(sp)
    80006478:	07413023          	sd	s4,96(sp)
    8000647c:	05513c23          	sd	s5,88(sp)
    80006480:	05613823          	sd	s6,80(sp)
    80006484:	05713423          	sd	s7,72(sp)
    80006488:	03913c23          	sd	s9,56(sp)
    8000648c:	03a13823          	sd	s10,48(sp)
    80006490:	03b13423          	sd	s11,40(sp)
    80006494:	00009317          	auipc	t1,0x9
    80006498:	2fc30313          	addi	t1,t1,764 # 8000f790 <pr>
    8000649c:	01832c03          	lw	s8,24(t1)
    800064a0:	00b43423          	sd	a1,8(s0)
    800064a4:	00c43823          	sd	a2,16(s0)
    800064a8:	00d43c23          	sd	a3,24(s0)
    800064ac:	02e43023          	sd	a4,32(s0)
    800064b0:	02f43423          	sd	a5,40(s0)
    800064b4:	03043823          	sd	a6,48(s0)
    800064b8:	03143c23          	sd	a7,56(s0)
    800064bc:	00050993          	mv	s3,a0
    800064c0:	4a0c1663          	bnez	s8,8000696c <__printf+0x514>
    800064c4:	60098c63          	beqz	s3,80006adc <__printf+0x684>
    800064c8:	0009c503          	lbu	a0,0(s3)
    800064cc:	00840793          	addi	a5,s0,8
    800064d0:	f6f43c23          	sd	a5,-136(s0)
    800064d4:	00000493          	li	s1,0
    800064d8:	22050063          	beqz	a0,800066f8 <__printf+0x2a0>
    800064dc:	00002a37          	lui	s4,0x2
    800064e0:	00018ab7          	lui	s5,0x18
    800064e4:	000f4b37          	lui	s6,0xf4
    800064e8:	00989bb7          	lui	s7,0x989
    800064ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800064f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800064f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800064f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800064fc:	00148c9b          	addiw	s9,s1,1
    80006500:	02500793          	li	a5,37
    80006504:	01998933          	add	s2,s3,s9
    80006508:	38f51263          	bne	a0,a5,8000688c <__printf+0x434>
    8000650c:	00094783          	lbu	a5,0(s2)
    80006510:	00078c9b          	sext.w	s9,a5
    80006514:	1e078263          	beqz	a5,800066f8 <__printf+0x2a0>
    80006518:	0024849b          	addiw	s1,s1,2
    8000651c:	07000713          	li	a4,112
    80006520:	00998933          	add	s2,s3,s1
    80006524:	38e78a63          	beq	a5,a4,800068b8 <__printf+0x460>
    80006528:	20f76863          	bltu	a4,a5,80006738 <__printf+0x2e0>
    8000652c:	42a78863          	beq	a5,a0,8000695c <__printf+0x504>
    80006530:	06400713          	li	a4,100
    80006534:	40e79663          	bne	a5,a4,80006940 <__printf+0x4e8>
    80006538:	f7843783          	ld	a5,-136(s0)
    8000653c:	0007a603          	lw	a2,0(a5)
    80006540:	00878793          	addi	a5,a5,8
    80006544:	f6f43c23          	sd	a5,-136(s0)
    80006548:	42064a63          	bltz	a2,8000697c <__printf+0x524>
    8000654c:	00a00713          	li	a4,10
    80006550:	02e677bb          	remuw	a5,a2,a4
    80006554:	00002d97          	auipc	s11,0x2
    80006558:	fe4d8d93          	addi	s11,s11,-28 # 80008538 <digits>
    8000655c:	00900593          	li	a1,9
    80006560:	0006051b          	sext.w	a0,a2
    80006564:	00000c93          	li	s9,0
    80006568:	02079793          	slli	a5,a5,0x20
    8000656c:	0207d793          	srli	a5,a5,0x20
    80006570:	00fd87b3          	add	a5,s11,a5
    80006574:	0007c783          	lbu	a5,0(a5)
    80006578:	02e656bb          	divuw	a3,a2,a4
    8000657c:	f8f40023          	sb	a5,-128(s0)
    80006580:	14c5d863          	bge	a1,a2,800066d0 <__printf+0x278>
    80006584:	06300593          	li	a1,99
    80006588:	00100c93          	li	s9,1
    8000658c:	02e6f7bb          	remuw	a5,a3,a4
    80006590:	02079793          	slli	a5,a5,0x20
    80006594:	0207d793          	srli	a5,a5,0x20
    80006598:	00fd87b3          	add	a5,s11,a5
    8000659c:	0007c783          	lbu	a5,0(a5)
    800065a0:	02e6d73b          	divuw	a4,a3,a4
    800065a4:	f8f400a3          	sb	a5,-127(s0)
    800065a8:	12a5f463          	bgeu	a1,a0,800066d0 <__printf+0x278>
    800065ac:	00a00693          	li	a3,10
    800065b0:	00900593          	li	a1,9
    800065b4:	02d777bb          	remuw	a5,a4,a3
    800065b8:	02079793          	slli	a5,a5,0x20
    800065bc:	0207d793          	srli	a5,a5,0x20
    800065c0:	00fd87b3          	add	a5,s11,a5
    800065c4:	0007c503          	lbu	a0,0(a5)
    800065c8:	02d757bb          	divuw	a5,a4,a3
    800065cc:	f8a40123          	sb	a0,-126(s0)
    800065d0:	48e5f263          	bgeu	a1,a4,80006a54 <__printf+0x5fc>
    800065d4:	06300513          	li	a0,99
    800065d8:	02d7f5bb          	remuw	a1,a5,a3
    800065dc:	02059593          	slli	a1,a1,0x20
    800065e0:	0205d593          	srli	a1,a1,0x20
    800065e4:	00bd85b3          	add	a1,s11,a1
    800065e8:	0005c583          	lbu	a1,0(a1)
    800065ec:	02d7d7bb          	divuw	a5,a5,a3
    800065f0:	f8b401a3          	sb	a1,-125(s0)
    800065f4:	48e57263          	bgeu	a0,a4,80006a78 <__printf+0x620>
    800065f8:	3e700513          	li	a0,999
    800065fc:	02d7f5bb          	remuw	a1,a5,a3
    80006600:	02059593          	slli	a1,a1,0x20
    80006604:	0205d593          	srli	a1,a1,0x20
    80006608:	00bd85b3          	add	a1,s11,a1
    8000660c:	0005c583          	lbu	a1,0(a1)
    80006610:	02d7d7bb          	divuw	a5,a5,a3
    80006614:	f8b40223          	sb	a1,-124(s0)
    80006618:	46e57663          	bgeu	a0,a4,80006a84 <__printf+0x62c>
    8000661c:	02d7f5bb          	remuw	a1,a5,a3
    80006620:	02059593          	slli	a1,a1,0x20
    80006624:	0205d593          	srli	a1,a1,0x20
    80006628:	00bd85b3          	add	a1,s11,a1
    8000662c:	0005c583          	lbu	a1,0(a1)
    80006630:	02d7d7bb          	divuw	a5,a5,a3
    80006634:	f8b402a3          	sb	a1,-123(s0)
    80006638:	46ea7863          	bgeu	s4,a4,80006aa8 <__printf+0x650>
    8000663c:	02d7f5bb          	remuw	a1,a5,a3
    80006640:	02059593          	slli	a1,a1,0x20
    80006644:	0205d593          	srli	a1,a1,0x20
    80006648:	00bd85b3          	add	a1,s11,a1
    8000664c:	0005c583          	lbu	a1,0(a1)
    80006650:	02d7d7bb          	divuw	a5,a5,a3
    80006654:	f8b40323          	sb	a1,-122(s0)
    80006658:	3eeaf863          	bgeu	s5,a4,80006a48 <__printf+0x5f0>
    8000665c:	02d7f5bb          	remuw	a1,a5,a3
    80006660:	02059593          	slli	a1,a1,0x20
    80006664:	0205d593          	srli	a1,a1,0x20
    80006668:	00bd85b3          	add	a1,s11,a1
    8000666c:	0005c583          	lbu	a1,0(a1)
    80006670:	02d7d7bb          	divuw	a5,a5,a3
    80006674:	f8b403a3          	sb	a1,-121(s0)
    80006678:	42eb7e63          	bgeu	s6,a4,80006ab4 <__printf+0x65c>
    8000667c:	02d7f5bb          	remuw	a1,a5,a3
    80006680:	02059593          	slli	a1,a1,0x20
    80006684:	0205d593          	srli	a1,a1,0x20
    80006688:	00bd85b3          	add	a1,s11,a1
    8000668c:	0005c583          	lbu	a1,0(a1)
    80006690:	02d7d7bb          	divuw	a5,a5,a3
    80006694:	f8b40423          	sb	a1,-120(s0)
    80006698:	42ebfc63          	bgeu	s7,a4,80006ad0 <__printf+0x678>
    8000669c:	02079793          	slli	a5,a5,0x20
    800066a0:	0207d793          	srli	a5,a5,0x20
    800066a4:	00fd8db3          	add	s11,s11,a5
    800066a8:	000dc703          	lbu	a4,0(s11)
    800066ac:	00a00793          	li	a5,10
    800066b0:	00900c93          	li	s9,9
    800066b4:	f8e404a3          	sb	a4,-119(s0)
    800066b8:	00065c63          	bgez	a2,800066d0 <__printf+0x278>
    800066bc:	f9040713          	addi	a4,s0,-112
    800066c0:	00f70733          	add	a4,a4,a5
    800066c4:	02d00693          	li	a3,45
    800066c8:	fed70823          	sb	a3,-16(a4)
    800066cc:	00078c93          	mv	s9,a5
    800066d0:	f8040793          	addi	a5,s0,-128
    800066d4:	01978cb3          	add	s9,a5,s9
    800066d8:	f7f40d13          	addi	s10,s0,-129
    800066dc:	000cc503          	lbu	a0,0(s9)
    800066e0:	fffc8c93          	addi	s9,s9,-1
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	b90080e7          	jalr	-1136(ra) # 80006274 <consputc>
    800066ec:	ffac98e3          	bne	s9,s10,800066dc <__printf+0x284>
    800066f0:	00094503          	lbu	a0,0(s2)
    800066f4:	e00514e3          	bnez	a0,800064fc <__printf+0xa4>
    800066f8:	1a0c1663          	bnez	s8,800068a4 <__printf+0x44c>
    800066fc:	08813083          	ld	ra,136(sp)
    80006700:	08013403          	ld	s0,128(sp)
    80006704:	07813483          	ld	s1,120(sp)
    80006708:	07013903          	ld	s2,112(sp)
    8000670c:	06813983          	ld	s3,104(sp)
    80006710:	06013a03          	ld	s4,96(sp)
    80006714:	05813a83          	ld	s5,88(sp)
    80006718:	05013b03          	ld	s6,80(sp)
    8000671c:	04813b83          	ld	s7,72(sp)
    80006720:	04013c03          	ld	s8,64(sp)
    80006724:	03813c83          	ld	s9,56(sp)
    80006728:	03013d03          	ld	s10,48(sp)
    8000672c:	02813d83          	ld	s11,40(sp)
    80006730:	0d010113          	addi	sp,sp,208
    80006734:	00008067          	ret
    80006738:	07300713          	li	a4,115
    8000673c:	1ce78a63          	beq	a5,a4,80006910 <__printf+0x4b8>
    80006740:	07800713          	li	a4,120
    80006744:	1ee79e63          	bne	a5,a4,80006940 <__printf+0x4e8>
    80006748:	f7843783          	ld	a5,-136(s0)
    8000674c:	0007a703          	lw	a4,0(a5)
    80006750:	00878793          	addi	a5,a5,8
    80006754:	f6f43c23          	sd	a5,-136(s0)
    80006758:	28074263          	bltz	a4,800069dc <__printf+0x584>
    8000675c:	00002d97          	auipc	s11,0x2
    80006760:	ddcd8d93          	addi	s11,s11,-548 # 80008538 <digits>
    80006764:	00f77793          	andi	a5,a4,15
    80006768:	00fd87b3          	add	a5,s11,a5
    8000676c:	0007c683          	lbu	a3,0(a5)
    80006770:	00f00613          	li	a2,15
    80006774:	0007079b          	sext.w	a5,a4
    80006778:	f8d40023          	sb	a3,-128(s0)
    8000677c:	0047559b          	srliw	a1,a4,0x4
    80006780:	0047569b          	srliw	a3,a4,0x4
    80006784:	00000c93          	li	s9,0
    80006788:	0ee65063          	bge	a2,a4,80006868 <__printf+0x410>
    8000678c:	00f6f693          	andi	a3,a3,15
    80006790:	00dd86b3          	add	a3,s11,a3
    80006794:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006798:	0087d79b          	srliw	a5,a5,0x8
    8000679c:	00100c93          	li	s9,1
    800067a0:	f8d400a3          	sb	a3,-127(s0)
    800067a4:	0cb67263          	bgeu	a2,a1,80006868 <__printf+0x410>
    800067a8:	00f7f693          	andi	a3,a5,15
    800067ac:	00dd86b3          	add	a3,s11,a3
    800067b0:	0006c583          	lbu	a1,0(a3)
    800067b4:	00f00613          	li	a2,15
    800067b8:	0047d69b          	srliw	a3,a5,0x4
    800067bc:	f8b40123          	sb	a1,-126(s0)
    800067c0:	0047d593          	srli	a1,a5,0x4
    800067c4:	28f67e63          	bgeu	a2,a5,80006a60 <__printf+0x608>
    800067c8:	00f6f693          	andi	a3,a3,15
    800067cc:	00dd86b3          	add	a3,s11,a3
    800067d0:	0006c503          	lbu	a0,0(a3)
    800067d4:	0087d813          	srli	a6,a5,0x8
    800067d8:	0087d69b          	srliw	a3,a5,0x8
    800067dc:	f8a401a3          	sb	a0,-125(s0)
    800067e0:	28b67663          	bgeu	a2,a1,80006a6c <__printf+0x614>
    800067e4:	00f6f693          	andi	a3,a3,15
    800067e8:	00dd86b3          	add	a3,s11,a3
    800067ec:	0006c583          	lbu	a1,0(a3)
    800067f0:	00c7d513          	srli	a0,a5,0xc
    800067f4:	00c7d69b          	srliw	a3,a5,0xc
    800067f8:	f8b40223          	sb	a1,-124(s0)
    800067fc:	29067a63          	bgeu	a2,a6,80006a90 <__printf+0x638>
    80006800:	00f6f693          	andi	a3,a3,15
    80006804:	00dd86b3          	add	a3,s11,a3
    80006808:	0006c583          	lbu	a1,0(a3)
    8000680c:	0107d813          	srli	a6,a5,0x10
    80006810:	0107d69b          	srliw	a3,a5,0x10
    80006814:	f8b402a3          	sb	a1,-123(s0)
    80006818:	28a67263          	bgeu	a2,a0,80006a9c <__printf+0x644>
    8000681c:	00f6f693          	andi	a3,a3,15
    80006820:	00dd86b3          	add	a3,s11,a3
    80006824:	0006c683          	lbu	a3,0(a3)
    80006828:	0147d79b          	srliw	a5,a5,0x14
    8000682c:	f8d40323          	sb	a3,-122(s0)
    80006830:	21067663          	bgeu	a2,a6,80006a3c <__printf+0x5e4>
    80006834:	02079793          	slli	a5,a5,0x20
    80006838:	0207d793          	srli	a5,a5,0x20
    8000683c:	00fd8db3          	add	s11,s11,a5
    80006840:	000dc683          	lbu	a3,0(s11)
    80006844:	00800793          	li	a5,8
    80006848:	00700c93          	li	s9,7
    8000684c:	f8d403a3          	sb	a3,-121(s0)
    80006850:	00075c63          	bgez	a4,80006868 <__printf+0x410>
    80006854:	f9040713          	addi	a4,s0,-112
    80006858:	00f70733          	add	a4,a4,a5
    8000685c:	02d00693          	li	a3,45
    80006860:	fed70823          	sb	a3,-16(a4)
    80006864:	00078c93          	mv	s9,a5
    80006868:	f8040793          	addi	a5,s0,-128
    8000686c:	01978cb3          	add	s9,a5,s9
    80006870:	f7f40d13          	addi	s10,s0,-129
    80006874:	000cc503          	lbu	a0,0(s9)
    80006878:	fffc8c93          	addi	s9,s9,-1
    8000687c:	00000097          	auipc	ra,0x0
    80006880:	9f8080e7          	jalr	-1544(ra) # 80006274 <consputc>
    80006884:	ff9d18e3          	bne	s10,s9,80006874 <__printf+0x41c>
    80006888:	0100006f          	j	80006898 <__printf+0x440>
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	9e8080e7          	jalr	-1560(ra) # 80006274 <consputc>
    80006894:	000c8493          	mv	s1,s9
    80006898:	00094503          	lbu	a0,0(s2)
    8000689c:	c60510e3          	bnez	a0,800064fc <__printf+0xa4>
    800068a0:	e40c0ee3          	beqz	s8,800066fc <__printf+0x2a4>
    800068a4:	00009517          	auipc	a0,0x9
    800068a8:	eec50513          	addi	a0,a0,-276 # 8000f790 <pr>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	94c080e7          	jalr	-1716(ra) # 800071f8 <release>
    800068b4:	e49ff06f          	j	800066fc <__printf+0x2a4>
    800068b8:	f7843783          	ld	a5,-136(s0)
    800068bc:	03000513          	li	a0,48
    800068c0:	01000d13          	li	s10,16
    800068c4:	00878713          	addi	a4,a5,8
    800068c8:	0007bc83          	ld	s9,0(a5)
    800068cc:	f6e43c23          	sd	a4,-136(s0)
    800068d0:	00000097          	auipc	ra,0x0
    800068d4:	9a4080e7          	jalr	-1628(ra) # 80006274 <consputc>
    800068d8:	07800513          	li	a0,120
    800068dc:	00000097          	auipc	ra,0x0
    800068e0:	998080e7          	jalr	-1640(ra) # 80006274 <consputc>
    800068e4:	00002d97          	auipc	s11,0x2
    800068e8:	c54d8d93          	addi	s11,s11,-940 # 80008538 <digits>
    800068ec:	03ccd793          	srli	a5,s9,0x3c
    800068f0:	00fd87b3          	add	a5,s11,a5
    800068f4:	0007c503          	lbu	a0,0(a5)
    800068f8:	fffd0d1b          	addiw	s10,s10,-1
    800068fc:	004c9c93          	slli	s9,s9,0x4
    80006900:	00000097          	auipc	ra,0x0
    80006904:	974080e7          	jalr	-1676(ra) # 80006274 <consputc>
    80006908:	fe0d12e3          	bnez	s10,800068ec <__printf+0x494>
    8000690c:	f8dff06f          	j	80006898 <__printf+0x440>
    80006910:	f7843783          	ld	a5,-136(s0)
    80006914:	0007bc83          	ld	s9,0(a5)
    80006918:	00878793          	addi	a5,a5,8
    8000691c:	f6f43c23          	sd	a5,-136(s0)
    80006920:	000c9a63          	bnez	s9,80006934 <__printf+0x4dc>
    80006924:	1080006f          	j	80006a2c <__printf+0x5d4>
    80006928:	001c8c93          	addi	s9,s9,1
    8000692c:	00000097          	auipc	ra,0x0
    80006930:	948080e7          	jalr	-1720(ra) # 80006274 <consputc>
    80006934:	000cc503          	lbu	a0,0(s9)
    80006938:	fe0518e3          	bnez	a0,80006928 <__printf+0x4d0>
    8000693c:	f5dff06f          	j	80006898 <__printf+0x440>
    80006940:	02500513          	li	a0,37
    80006944:	00000097          	auipc	ra,0x0
    80006948:	930080e7          	jalr	-1744(ra) # 80006274 <consputc>
    8000694c:	000c8513          	mv	a0,s9
    80006950:	00000097          	auipc	ra,0x0
    80006954:	924080e7          	jalr	-1756(ra) # 80006274 <consputc>
    80006958:	f41ff06f          	j	80006898 <__printf+0x440>
    8000695c:	02500513          	li	a0,37
    80006960:	00000097          	auipc	ra,0x0
    80006964:	914080e7          	jalr	-1772(ra) # 80006274 <consputc>
    80006968:	f31ff06f          	j	80006898 <__printf+0x440>
    8000696c:	00030513          	mv	a0,t1
    80006970:	00000097          	auipc	ra,0x0
    80006974:	7bc080e7          	jalr	1980(ra) # 8000712c <acquire>
    80006978:	b4dff06f          	j	800064c4 <__printf+0x6c>
    8000697c:	40c0053b          	negw	a0,a2
    80006980:	00a00713          	li	a4,10
    80006984:	02e576bb          	remuw	a3,a0,a4
    80006988:	00002d97          	auipc	s11,0x2
    8000698c:	bb0d8d93          	addi	s11,s11,-1104 # 80008538 <digits>
    80006990:	ff700593          	li	a1,-9
    80006994:	02069693          	slli	a3,a3,0x20
    80006998:	0206d693          	srli	a3,a3,0x20
    8000699c:	00dd86b3          	add	a3,s11,a3
    800069a0:	0006c683          	lbu	a3,0(a3)
    800069a4:	02e557bb          	divuw	a5,a0,a4
    800069a8:	f8d40023          	sb	a3,-128(s0)
    800069ac:	10b65e63          	bge	a2,a1,80006ac8 <__printf+0x670>
    800069b0:	06300593          	li	a1,99
    800069b4:	02e7f6bb          	remuw	a3,a5,a4
    800069b8:	02069693          	slli	a3,a3,0x20
    800069bc:	0206d693          	srli	a3,a3,0x20
    800069c0:	00dd86b3          	add	a3,s11,a3
    800069c4:	0006c683          	lbu	a3,0(a3)
    800069c8:	02e7d73b          	divuw	a4,a5,a4
    800069cc:	00200793          	li	a5,2
    800069d0:	f8d400a3          	sb	a3,-127(s0)
    800069d4:	bca5ece3          	bltu	a1,a0,800065ac <__printf+0x154>
    800069d8:	ce5ff06f          	j	800066bc <__printf+0x264>
    800069dc:	40e007bb          	negw	a5,a4
    800069e0:	00002d97          	auipc	s11,0x2
    800069e4:	b58d8d93          	addi	s11,s11,-1192 # 80008538 <digits>
    800069e8:	00f7f693          	andi	a3,a5,15
    800069ec:	00dd86b3          	add	a3,s11,a3
    800069f0:	0006c583          	lbu	a1,0(a3)
    800069f4:	ff100613          	li	a2,-15
    800069f8:	0047d69b          	srliw	a3,a5,0x4
    800069fc:	f8b40023          	sb	a1,-128(s0)
    80006a00:	0047d59b          	srliw	a1,a5,0x4
    80006a04:	0ac75e63          	bge	a4,a2,80006ac0 <__printf+0x668>
    80006a08:	00f6f693          	andi	a3,a3,15
    80006a0c:	00dd86b3          	add	a3,s11,a3
    80006a10:	0006c603          	lbu	a2,0(a3)
    80006a14:	00f00693          	li	a3,15
    80006a18:	0087d79b          	srliw	a5,a5,0x8
    80006a1c:	f8c400a3          	sb	a2,-127(s0)
    80006a20:	d8b6e4e3          	bltu	a3,a1,800067a8 <__printf+0x350>
    80006a24:	00200793          	li	a5,2
    80006a28:	e2dff06f          	j	80006854 <__printf+0x3fc>
    80006a2c:	00002c97          	auipc	s9,0x2
    80006a30:	aecc8c93          	addi	s9,s9,-1300 # 80008518 <CONSOLE_STATUS+0x508>
    80006a34:	02800513          	li	a0,40
    80006a38:	ef1ff06f          	j	80006928 <__printf+0x4d0>
    80006a3c:	00700793          	li	a5,7
    80006a40:	00600c93          	li	s9,6
    80006a44:	e0dff06f          	j	80006850 <__printf+0x3f8>
    80006a48:	00700793          	li	a5,7
    80006a4c:	00600c93          	li	s9,6
    80006a50:	c69ff06f          	j	800066b8 <__printf+0x260>
    80006a54:	00300793          	li	a5,3
    80006a58:	00200c93          	li	s9,2
    80006a5c:	c5dff06f          	j	800066b8 <__printf+0x260>
    80006a60:	00300793          	li	a5,3
    80006a64:	00200c93          	li	s9,2
    80006a68:	de9ff06f          	j	80006850 <__printf+0x3f8>
    80006a6c:	00400793          	li	a5,4
    80006a70:	00300c93          	li	s9,3
    80006a74:	dddff06f          	j	80006850 <__printf+0x3f8>
    80006a78:	00400793          	li	a5,4
    80006a7c:	00300c93          	li	s9,3
    80006a80:	c39ff06f          	j	800066b8 <__printf+0x260>
    80006a84:	00500793          	li	a5,5
    80006a88:	00400c93          	li	s9,4
    80006a8c:	c2dff06f          	j	800066b8 <__printf+0x260>
    80006a90:	00500793          	li	a5,5
    80006a94:	00400c93          	li	s9,4
    80006a98:	db9ff06f          	j	80006850 <__printf+0x3f8>
    80006a9c:	00600793          	li	a5,6
    80006aa0:	00500c93          	li	s9,5
    80006aa4:	dadff06f          	j	80006850 <__printf+0x3f8>
    80006aa8:	00600793          	li	a5,6
    80006aac:	00500c93          	li	s9,5
    80006ab0:	c09ff06f          	j	800066b8 <__printf+0x260>
    80006ab4:	00800793          	li	a5,8
    80006ab8:	00700c93          	li	s9,7
    80006abc:	bfdff06f          	j	800066b8 <__printf+0x260>
    80006ac0:	00100793          	li	a5,1
    80006ac4:	d91ff06f          	j	80006854 <__printf+0x3fc>
    80006ac8:	00100793          	li	a5,1
    80006acc:	bf1ff06f          	j	800066bc <__printf+0x264>
    80006ad0:	00900793          	li	a5,9
    80006ad4:	00800c93          	li	s9,8
    80006ad8:	be1ff06f          	j	800066b8 <__printf+0x260>
    80006adc:	00002517          	auipc	a0,0x2
    80006ae0:	a4450513          	addi	a0,a0,-1468 # 80008520 <CONSOLE_STATUS+0x510>
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	918080e7          	jalr	-1768(ra) # 800063fc <panic>

0000000080006aec <printfinit>:
    80006aec:	fe010113          	addi	sp,sp,-32
    80006af0:	00813823          	sd	s0,16(sp)
    80006af4:	00913423          	sd	s1,8(sp)
    80006af8:	00113c23          	sd	ra,24(sp)
    80006afc:	02010413          	addi	s0,sp,32
    80006b00:	00009497          	auipc	s1,0x9
    80006b04:	c9048493          	addi	s1,s1,-880 # 8000f790 <pr>
    80006b08:	00048513          	mv	a0,s1
    80006b0c:	00002597          	auipc	a1,0x2
    80006b10:	a2458593          	addi	a1,a1,-1500 # 80008530 <CONSOLE_STATUS+0x520>
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	5f4080e7          	jalr	1524(ra) # 80007108 <initlock>
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	0004ac23          	sw	zero,24(s1)
    80006b28:	00813483          	ld	s1,8(sp)
    80006b2c:	02010113          	addi	sp,sp,32
    80006b30:	00008067          	ret

0000000080006b34 <uartinit>:
    80006b34:	ff010113          	addi	sp,sp,-16
    80006b38:	00813423          	sd	s0,8(sp)
    80006b3c:	01010413          	addi	s0,sp,16
    80006b40:	100007b7          	lui	a5,0x10000
    80006b44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006b48:	f8000713          	li	a4,-128
    80006b4c:	00e781a3          	sb	a4,3(a5)
    80006b50:	00300713          	li	a4,3
    80006b54:	00e78023          	sb	a4,0(a5)
    80006b58:	000780a3          	sb	zero,1(a5)
    80006b5c:	00e781a3          	sb	a4,3(a5)
    80006b60:	00700693          	li	a3,7
    80006b64:	00d78123          	sb	a3,2(a5)
    80006b68:	00e780a3          	sb	a4,1(a5)
    80006b6c:	00813403          	ld	s0,8(sp)
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00008067          	ret

0000000080006b78 <uartputc>:
    80006b78:	00004797          	auipc	a5,0x4
    80006b7c:	8d07a783          	lw	a5,-1840(a5) # 8000a448 <panicked>
    80006b80:	00078463          	beqz	a5,80006b88 <uartputc+0x10>
    80006b84:	0000006f          	j	80006b84 <uartputc+0xc>
    80006b88:	fd010113          	addi	sp,sp,-48
    80006b8c:	02813023          	sd	s0,32(sp)
    80006b90:	00913c23          	sd	s1,24(sp)
    80006b94:	01213823          	sd	s2,16(sp)
    80006b98:	01313423          	sd	s3,8(sp)
    80006b9c:	02113423          	sd	ra,40(sp)
    80006ba0:	03010413          	addi	s0,sp,48
    80006ba4:	00004917          	auipc	s2,0x4
    80006ba8:	8ac90913          	addi	s2,s2,-1876 # 8000a450 <uart_tx_r>
    80006bac:	00093783          	ld	a5,0(s2)
    80006bb0:	00004497          	auipc	s1,0x4
    80006bb4:	8a848493          	addi	s1,s1,-1880 # 8000a458 <uart_tx_w>
    80006bb8:	0004b703          	ld	a4,0(s1)
    80006bbc:	02078693          	addi	a3,a5,32
    80006bc0:	00050993          	mv	s3,a0
    80006bc4:	02e69c63          	bne	a3,a4,80006bfc <uartputc+0x84>
    80006bc8:	00001097          	auipc	ra,0x1
    80006bcc:	834080e7          	jalr	-1996(ra) # 800073fc <push_on>
    80006bd0:	00093783          	ld	a5,0(s2)
    80006bd4:	0004b703          	ld	a4,0(s1)
    80006bd8:	02078793          	addi	a5,a5,32
    80006bdc:	00e79463          	bne	a5,a4,80006be4 <uartputc+0x6c>
    80006be0:	0000006f          	j	80006be0 <uartputc+0x68>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	88c080e7          	jalr	-1908(ra) # 80007470 <pop_on>
    80006bec:	00093783          	ld	a5,0(s2)
    80006bf0:	0004b703          	ld	a4,0(s1)
    80006bf4:	02078693          	addi	a3,a5,32
    80006bf8:	fce688e3          	beq	a3,a4,80006bc8 <uartputc+0x50>
    80006bfc:	01f77693          	andi	a3,a4,31
    80006c00:	00009597          	auipc	a1,0x9
    80006c04:	bb058593          	addi	a1,a1,-1104 # 8000f7b0 <uart_tx_buf>
    80006c08:	00d586b3          	add	a3,a1,a3
    80006c0c:	00170713          	addi	a4,a4,1
    80006c10:	01368023          	sb	s3,0(a3)
    80006c14:	00e4b023          	sd	a4,0(s1)
    80006c18:	10000637          	lui	a2,0x10000
    80006c1c:	02f71063          	bne	a4,a5,80006c3c <uartputc+0xc4>
    80006c20:	0340006f          	j	80006c54 <uartputc+0xdc>
    80006c24:	00074703          	lbu	a4,0(a4)
    80006c28:	00f93023          	sd	a5,0(s2)
    80006c2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006c30:	00093783          	ld	a5,0(s2)
    80006c34:	0004b703          	ld	a4,0(s1)
    80006c38:	00f70e63          	beq	a4,a5,80006c54 <uartputc+0xdc>
    80006c3c:	00564683          	lbu	a3,5(a2)
    80006c40:	01f7f713          	andi	a4,a5,31
    80006c44:	00e58733          	add	a4,a1,a4
    80006c48:	0206f693          	andi	a3,a3,32
    80006c4c:	00178793          	addi	a5,a5,1
    80006c50:	fc069ae3          	bnez	a3,80006c24 <uartputc+0xac>
    80006c54:	02813083          	ld	ra,40(sp)
    80006c58:	02013403          	ld	s0,32(sp)
    80006c5c:	01813483          	ld	s1,24(sp)
    80006c60:	01013903          	ld	s2,16(sp)
    80006c64:	00813983          	ld	s3,8(sp)
    80006c68:	03010113          	addi	sp,sp,48
    80006c6c:	00008067          	ret

0000000080006c70 <uartputc_sync>:
    80006c70:	ff010113          	addi	sp,sp,-16
    80006c74:	00813423          	sd	s0,8(sp)
    80006c78:	01010413          	addi	s0,sp,16
    80006c7c:	00003717          	auipc	a4,0x3
    80006c80:	7cc72703          	lw	a4,1996(a4) # 8000a448 <panicked>
    80006c84:	02071663          	bnez	a4,80006cb0 <uartputc_sync+0x40>
    80006c88:	00050793          	mv	a5,a0
    80006c8c:	100006b7          	lui	a3,0x10000
    80006c90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006c94:	02077713          	andi	a4,a4,32
    80006c98:	fe070ce3          	beqz	a4,80006c90 <uartputc_sync+0x20>
    80006c9c:	0ff7f793          	andi	a5,a5,255
    80006ca0:	00f68023          	sb	a5,0(a3)
    80006ca4:	00813403          	ld	s0,8(sp)
    80006ca8:	01010113          	addi	sp,sp,16
    80006cac:	00008067          	ret
    80006cb0:	0000006f          	j	80006cb0 <uartputc_sync+0x40>

0000000080006cb4 <uartstart>:
    80006cb4:	ff010113          	addi	sp,sp,-16
    80006cb8:	00813423          	sd	s0,8(sp)
    80006cbc:	01010413          	addi	s0,sp,16
    80006cc0:	00003617          	auipc	a2,0x3
    80006cc4:	79060613          	addi	a2,a2,1936 # 8000a450 <uart_tx_r>
    80006cc8:	00003517          	auipc	a0,0x3
    80006ccc:	79050513          	addi	a0,a0,1936 # 8000a458 <uart_tx_w>
    80006cd0:	00063783          	ld	a5,0(a2)
    80006cd4:	00053703          	ld	a4,0(a0)
    80006cd8:	04f70263          	beq	a4,a5,80006d1c <uartstart+0x68>
    80006cdc:	100005b7          	lui	a1,0x10000
    80006ce0:	00009817          	auipc	a6,0x9
    80006ce4:	ad080813          	addi	a6,a6,-1328 # 8000f7b0 <uart_tx_buf>
    80006ce8:	01c0006f          	j	80006d04 <uartstart+0x50>
    80006cec:	0006c703          	lbu	a4,0(a3)
    80006cf0:	00f63023          	sd	a5,0(a2)
    80006cf4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006cf8:	00063783          	ld	a5,0(a2)
    80006cfc:	00053703          	ld	a4,0(a0)
    80006d00:	00f70e63          	beq	a4,a5,80006d1c <uartstart+0x68>
    80006d04:	01f7f713          	andi	a4,a5,31
    80006d08:	00e806b3          	add	a3,a6,a4
    80006d0c:	0055c703          	lbu	a4,5(a1)
    80006d10:	00178793          	addi	a5,a5,1
    80006d14:	02077713          	andi	a4,a4,32
    80006d18:	fc071ae3          	bnez	a4,80006cec <uartstart+0x38>
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <uartgetc>:
    80006d28:	ff010113          	addi	sp,sp,-16
    80006d2c:	00813423          	sd	s0,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	10000737          	lui	a4,0x10000
    80006d38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006d3c:	0017f793          	andi	a5,a5,1
    80006d40:	00078c63          	beqz	a5,80006d58 <uartgetc+0x30>
    80006d44:	00074503          	lbu	a0,0(a4)
    80006d48:	0ff57513          	andi	a0,a0,255
    80006d4c:	00813403          	ld	s0,8(sp)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret
    80006d58:	fff00513          	li	a0,-1
    80006d5c:	ff1ff06f          	j	80006d4c <uartgetc+0x24>

0000000080006d60 <uartintr>:
    80006d60:	100007b7          	lui	a5,0x10000
    80006d64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006d68:	0017f793          	andi	a5,a5,1
    80006d6c:	0a078463          	beqz	a5,80006e14 <uartintr+0xb4>
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00913423          	sd	s1,8(sp)
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	02010413          	addi	s0,sp,32
    80006d84:	100004b7          	lui	s1,0x10000
    80006d88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006d8c:	0ff57513          	andi	a0,a0,255
    80006d90:	fffff097          	auipc	ra,0xfffff
    80006d94:	534080e7          	jalr	1332(ra) # 800062c4 <consoleintr>
    80006d98:	0054c783          	lbu	a5,5(s1)
    80006d9c:	0017f793          	andi	a5,a5,1
    80006da0:	fe0794e3          	bnez	a5,80006d88 <uartintr+0x28>
    80006da4:	00003617          	auipc	a2,0x3
    80006da8:	6ac60613          	addi	a2,a2,1708 # 8000a450 <uart_tx_r>
    80006dac:	00003517          	auipc	a0,0x3
    80006db0:	6ac50513          	addi	a0,a0,1708 # 8000a458 <uart_tx_w>
    80006db4:	00063783          	ld	a5,0(a2)
    80006db8:	00053703          	ld	a4,0(a0)
    80006dbc:	04f70263          	beq	a4,a5,80006e00 <uartintr+0xa0>
    80006dc0:	100005b7          	lui	a1,0x10000
    80006dc4:	00009817          	auipc	a6,0x9
    80006dc8:	9ec80813          	addi	a6,a6,-1556 # 8000f7b0 <uart_tx_buf>
    80006dcc:	01c0006f          	j	80006de8 <uartintr+0x88>
    80006dd0:	0006c703          	lbu	a4,0(a3)
    80006dd4:	00f63023          	sd	a5,0(a2)
    80006dd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ddc:	00063783          	ld	a5,0(a2)
    80006de0:	00053703          	ld	a4,0(a0)
    80006de4:	00f70e63          	beq	a4,a5,80006e00 <uartintr+0xa0>
    80006de8:	01f7f713          	andi	a4,a5,31
    80006dec:	00e806b3          	add	a3,a6,a4
    80006df0:	0055c703          	lbu	a4,5(a1)
    80006df4:	00178793          	addi	a5,a5,1
    80006df8:	02077713          	andi	a4,a4,32
    80006dfc:	fc071ae3          	bnez	a4,80006dd0 <uartintr+0x70>
    80006e00:	01813083          	ld	ra,24(sp)
    80006e04:	01013403          	ld	s0,16(sp)
    80006e08:	00813483          	ld	s1,8(sp)
    80006e0c:	02010113          	addi	sp,sp,32
    80006e10:	00008067          	ret
    80006e14:	00003617          	auipc	a2,0x3
    80006e18:	63c60613          	addi	a2,a2,1596 # 8000a450 <uart_tx_r>
    80006e1c:	00003517          	auipc	a0,0x3
    80006e20:	63c50513          	addi	a0,a0,1596 # 8000a458 <uart_tx_w>
    80006e24:	00063783          	ld	a5,0(a2)
    80006e28:	00053703          	ld	a4,0(a0)
    80006e2c:	04f70263          	beq	a4,a5,80006e70 <uartintr+0x110>
    80006e30:	100005b7          	lui	a1,0x10000
    80006e34:	00009817          	auipc	a6,0x9
    80006e38:	97c80813          	addi	a6,a6,-1668 # 8000f7b0 <uart_tx_buf>
    80006e3c:	01c0006f          	j	80006e58 <uartintr+0xf8>
    80006e40:	0006c703          	lbu	a4,0(a3)
    80006e44:	00f63023          	sd	a5,0(a2)
    80006e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006e4c:	00063783          	ld	a5,0(a2)
    80006e50:	00053703          	ld	a4,0(a0)
    80006e54:	02f70063          	beq	a4,a5,80006e74 <uartintr+0x114>
    80006e58:	01f7f713          	andi	a4,a5,31
    80006e5c:	00e806b3          	add	a3,a6,a4
    80006e60:	0055c703          	lbu	a4,5(a1)
    80006e64:	00178793          	addi	a5,a5,1
    80006e68:	02077713          	andi	a4,a4,32
    80006e6c:	fc071ae3          	bnez	a4,80006e40 <uartintr+0xe0>
    80006e70:	00008067          	ret
    80006e74:	00008067          	ret

0000000080006e78 <kinit>:
    80006e78:	fc010113          	addi	sp,sp,-64
    80006e7c:	02913423          	sd	s1,40(sp)
    80006e80:	fffff7b7          	lui	a5,0xfffff
    80006e84:	0000a497          	auipc	s1,0xa
    80006e88:	94b48493          	addi	s1,s1,-1717 # 800107cf <end+0xfff>
    80006e8c:	02813823          	sd	s0,48(sp)
    80006e90:	01313c23          	sd	s3,24(sp)
    80006e94:	00f4f4b3          	and	s1,s1,a5
    80006e98:	02113c23          	sd	ra,56(sp)
    80006e9c:	03213023          	sd	s2,32(sp)
    80006ea0:	01413823          	sd	s4,16(sp)
    80006ea4:	01513423          	sd	s5,8(sp)
    80006ea8:	04010413          	addi	s0,sp,64
    80006eac:	000017b7          	lui	a5,0x1
    80006eb0:	01100993          	li	s3,17
    80006eb4:	00f487b3          	add	a5,s1,a5
    80006eb8:	01b99993          	slli	s3,s3,0x1b
    80006ebc:	06f9e063          	bltu	s3,a5,80006f1c <kinit+0xa4>
    80006ec0:	00009a97          	auipc	s5,0x9
    80006ec4:	910a8a93          	addi	s5,s5,-1776 # 8000f7d0 <end>
    80006ec8:	0754ec63          	bltu	s1,s5,80006f40 <kinit+0xc8>
    80006ecc:	0734fa63          	bgeu	s1,s3,80006f40 <kinit+0xc8>
    80006ed0:	00088a37          	lui	s4,0x88
    80006ed4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006ed8:	00003917          	auipc	s2,0x3
    80006edc:	58890913          	addi	s2,s2,1416 # 8000a460 <kmem>
    80006ee0:	00ca1a13          	slli	s4,s4,0xc
    80006ee4:	0140006f          	j	80006ef8 <kinit+0x80>
    80006ee8:	000017b7          	lui	a5,0x1
    80006eec:	00f484b3          	add	s1,s1,a5
    80006ef0:	0554e863          	bltu	s1,s5,80006f40 <kinit+0xc8>
    80006ef4:	0534f663          	bgeu	s1,s3,80006f40 <kinit+0xc8>
    80006ef8:	00001637          	lui	a2,0x1
    80006efc:	00100593          	li	a1,1
    80006f00:	00048513          	mv	a0,s1
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	5e4080e7          	jalr	1508(ra) # 800074e8 <__memset>
    80006f0c:	00093783          	ld	a5,0(s2)
    80006f10:	00f4b023          	sd	a5,0(s1)
    80006f14:	00993023          	sd	s1,0(s2)
    80006f18:	fd4498e3          	bne	s1,s4,80006ee8 <kinit+0x70>
    80006f1c:	03813083          	ld	ra,56(sp)
    80006f20:	03013403          	ld	s0,48(sp)
    80006f24:	02813483          	ld	s1,40(sp)
    80006f28:	02013903          	ld	s2,32(sp)
    80006f2c:	01813983          	ld	s3,24(sp)
    80006f30:	01013a03          	ld	s4,16(sp)
    80006f34:	00813a83          	ld	s5,8(sp)
    80006f38:	04010113          	addi	sp,sp,64
    80006f3c:	00008067          	ret
    80006f40:	00001517          	auipc	a0,0x1
    80006f44:	61050513          	addi	a0,a0,1552 # 80008550 <digits+0x18>
    80006f48:	fffff097          	auipc	ra,0xfffff
    80006f4c:	4b4080e7          	jalr	1204(ra) # 800063fc <panic>

0000000080006f50 <freerange>:
    80006f50:	fc010113          	addi	sp,sp,-64
    80006f54:	000017b7          	lui	a5,0x1
    80006f58:	02913423          	sd	s1,40(sp)
    80006f5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006f60:	009504b3          	add	s1,a0,s1
    80006f64:	fffff537          	lui	a0,0xfffff
    80006f68:	02813823          	sd	s0,48(sp)
    80006f6c:	02113c23          	sd	ra,56(sp)
    80006f70:	03213023          	sd	s2,32(sp)
    80006f74:	01313c23          	sd	s3,24(sp)
    80006f78:	01413823          	sd	s4,16(sp)
    80006f7c:	01513423          	sd	s5,8(sp)
    80006f80:	01613023          	sd	s6,0(sp)
    80006f84:	04010413          	addi	s0,sp,64
    80006f88:	00a4f4b3          	and	s1,s1,a0
    80006f8c:	00f487b3          	add	a5,s1,a5
    80006f90:	06f5e463          	bltu	a1,a5,80006ff8 <freerange+0xa8>
    80006f94:	00009a97          	auipc	s5,0x9
    80006f98:	83ca8a93          	addi	s5,s5,-1988 # 8000f7d0 <end>
    80006f9c:	0954e263          	bltu	s1,s5,80007020 <freerange+0xd0>
    80006fa0:	01100993          	li	s3,17
    80006fa4:	01b99993          	slli	s3,s3,0x1b
    80006fa8:	0734fc63          	bgeu	s1,s3,80007020 <freerange+0xd0>
    80006fac:	00058a13          	mv	s4,a1
    80006fb0:	00003917          	auipc	s2,0x3
    80006fb4:	4b090913          	addi	s2,s2,1200 # 8000a460 <kmem>
    80006fb8:	00002b37          	lui	s6,0x2
    80006fbc:	0140006f          	j	80006fd0 <freerange+0x80>
    80006fc0:	000017b7          	lui	a5,0x1
    80006fc4:	00f484b3          	add	s1,s1,a5
    80006fc8:	0554ec63          	bltu	s1,s5,80007020 <freerange+0xd0>
    80006fcc:	0534fa63          	bgeu	s1,s3,80007020 <freerange+0xd0>
    80006fd0:	00001637          	lui	a2,0x1
    80006fd4:	00100593          	li	a1,1
    80006fd8:	00048513          	mv	a0,s1
    80006fdc:	00000097          	auipc	ra,0x0
    80006fe0:	50c080e7          	jalr	1292(ra) # 800074e8 <__memset>
    80006fe4:	00093703          	ld	a4,0(s2)
    80006fe8:	016487b3          	add	a5,s1,s6
    80006fec:	00e4b023          	sd	a4,0(s1)
    80006ff0:	00993023          	sd	s1,0(s2)
    80006ff4:	fcfa76e3          	bgeu	s4,a5,80006fc0 <freerange+0x70>
    80006ff8:	03813083          	ld	ra,56(sp)
    80006ffc:	03013403          	ld	s0,48(sp)
    80007000:	02813483          	ld	s1,40(sp)
    80007004:	02013903          	ld	s2,32(sp)
    80007008:	01813983          	ld	s3,24(sp)
    8000700c:	01013a03          	ld	s4,16(sp)
    80007010:	00813a83          	ld	s5,8(sp)
    80007014:	00013b03          	ld	s6,0(sp)
    80007018:	04010113          	addi	sp,sp,64
    8000701c:	00008067          	ret
    80007020:	00001517          	auipc	a0,0x1
    80007024:	53050513          	addi	a0,a0,1328 # 80008550 <digits+0x18>
    80007028:	fffff097          	auipc	ra,0xfffff
    8000702c:	3d4080e7          	jalr	980(ra) # 800063fc <panic>

0000000080007030 <kfree>:
    80007030:	fe010113          	addi	sp,sp,-32
    80007034:	00813823          	sd	s0,16(sp)
    80007038:	00113c23          	sd	ra,24(sp)
    8000703c:	00913423          	sd	s1,8(sp)
    80007040:	02010413          	addi	s0,sp,32
    80007044:	03451793          	slli	a5,a0,0x34
    80007048:	04079c63          	bnez	a5,800070a0 <kfree+0x70>
    8000704c:	00008797          	auipc	a5,0x8
    80007050:	78478793          	addi	a5,a5,1924 # 8000f7d0 <end>
    80007054:	00050493          	mv	s1,a0
    80007058:	04f56463          	bltu	a0,a5,800070a0 <kfree+0x70>
    8000705c:	01100793          	li	a5,17
    80007060:	01b79793          	slli	a5,a5,0x1b
    80007064:	02f57e63          	bgeu	a0,a5,800070a0 <kfree+0x70>
    80007068:	00001637          	lui	a2,0x1
    8000706c:	00100593          	li	a1,1
    80007070:	00000097          	auipc	ra,0x0
    80007074:	478080e7          	jalr	1144(ra) # 800074e8 <__memset>
    80007078:	00003797          	auipc	a5,0x3
    8000707c:	3e878793          	addi	a5,a5,1000 # 8000a460 <kmem>
    80007080:	0007b703          	ld	a4,0(a5)
    80007084:	01813083          	ld	ra,24(sp)
    80007088:	01013403          	ld	s0,16(sp)
    8000708c:	00e4b023          	sd	a4,0(s1)
    80007090:	0097b023          	sd	s1,0(a5)
    80007094:	00813483          	ld	s1,8(sp)
    80007098:	02010113          	addi	sp,sp,32
    8000709c:	00008067          	ret
    800070a0:	00001517          	auipc	a0,0x1
    800070a4:	4b050513          	addi	a0,a0,1200 # 80008550 <digits+0x18>
    800070a8:	fffff097          	auipc	ra,0xfffff
    800070ac:	354080e7          	jalr	852(ra) # 800063fc <panic>

00000000800070b0 <kalloc>:
    800070b0:	fe010113          	addi	sp,sp,-32
    800070b4:	00813823          	sd	s0,16(sp)
    800070b8:	00913423          	sd	s1,8(sp)
    800070bc:	00113c23          	sd	ra,24(sp)
    800070c0:	02010413          	addi	s0,sp,32
    800070c4:	00003797          	auipc	a5,0x3
    800070c8:	39c78793          	addi	a5,a5,924 # 8000a460 <kmem>
    800070cc:	0007b483          	ld	s1,0(a5)
    800070d0:	02048063          	beqz	s1,800070f0 <kalloc+0x40>
    800070d4:	0004b703          	ld	a4,0(s1)
    800070d8:	00001637          	lui	a2,0x1
    800070dc:	00500593          	li	a1,5
    800070e0:	00048513          	mv	a0,s1
    800070e4:	00e7b023          	sd	a4,0(a5)
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	400080e7          	jalr	1024(ra) # 800074e8 <__memset>
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	01013403          	ld	s0,16(sp)
    800070f8:	00048513          	mv	a0,s1
    800070fc:	00813483          	ld	s1,8(sp)
    80007100:	02010113          	addi	sp,sp,32
    80007104:	00008067          	ret

0000000080007108 <initlock>:
    80007108:	ff010113          	addi	sp,sp,-16
    8000710c:	00813423          	sd	s0,8(sp)
    80007110:	01010413          	addi	s0,sp,16
    80007114:	00813403          	ld	s0,8(sp)
    80007118:	00b53423          	sd	a1,8(a0)
    8000711c:	00052023          	sw	zero,0(a0)
    80007120:	00053823          	sd	zero,16(a0)
    80007124:	01010113          	addi	sp,sp,16
    80007128:	00008067          	ret

000000008000712c <acquire>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00813823          	sd	s0,16(sp)
    80007134:	00913423          	sd	s1,8(sp)
    80007138:	00113c23          	sd	ra,24(sp)
    8000713c:	01213023          	sd	s2,0(sp)
    80007140:	02010413          	addi	s0,sp,32
    80007144:	00050493          	mv	s1,a0
    80007148:	10002973          	csrr	s2,sstatus
    8000714c:	100027f3          	csrr	a5,sstatus
    80007150:	ffd7f793          	andi	a5,a5,-3
    80007154:	10079073          	csrw	sstatus,a5
    80007158:	fffff097          	auipc	ra,0xfffff
    8000715c:	8e4080e7          	jalr	-1820(ra) # 80005a3c <mycpu>
    80007160:	07852783          	lw	a5,120(a0)
    80007164:	06078e63          	beqz	a5,800071e0 <acquire+0xb4>
    80007168:	fffff097          	auipc	ra,0xfffff
    8000716c:	8d4080e7          	jalr	-1836(ra) # 80005a3c <mycpu>
    80007170:	07852783          	lw	a5,120(a0)
    80007174:	0004a703          	lw	a4,0(s1)
    80007178:	0017879b          	addiw	a5,a5,1
    8000717c:	06f52c23          	sw	a5,120(a0)
    80007180:	04071063          	bnez	a4,800071c0 <acquire+0x94>
    80007184:	00100713          	li	a4,1
    80007188:	00070793          	mv	a5,a4
    8000718c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007190:	0007879b          	sext.w	a5,a5
    80007194:	fe079ae3          	bnez	a5,80007188 <acquire+0x5c>
    80007198:	0ff0000f          	fence
    8000719c:	fffff097          	auipc	ra,0xfffff
    800071a0:	8a0080e7          	jalr	-1888(ra) # 80005a3c <mycpu>
    800071a4:	01813083          	ld	ra,24(sp)
    800071a8:	01013403          	ld	s0,16(sp)
    800071ac:	00a4b823          	sd	a0,16(s1)
    800071b0:	00013903          	ld	s2,0(sp)
    800071b4:	00813483          	ld	s1,8(sp)
    800071b8:	02010113          	addi	sp,sp,32
    800071bc:	00008067          	ret
    800071c0:	0104b903          	ld	s2,16(s1)
    800071c4:	fffff097          	auipc	ra,0xfffff
    800071c8:	878080e7          	jalr	-1928(ra) # 80005a3c <mycpu>
    800071cc:	faa91ce3          	bne	s2,a0,80007184 <acquire+0x58>
    800071d0:	00001517          	auipc	a0,0x1
    800071d4:	38850513          	addi	a0,a0,904 # 80008558 <digits+0x20>
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	224080e7          	jalr	548(ra) # 800063fc <panic>
    800071e0:	00195913          	srli	s2,s2,0x1
    800071e4:	fffff097          	auipc	ra,0xfffff
    800071e8:	858080e7          	jalr	-1960(ra) # 80005a3c <mycpu>
    800071ec:	00197913          	andi	s2,s2,1
    800071f0:	07252e23          	sw	s2,124(a0)
    800071f4:	f75ff06f          	j	80007168 <acquire+0x3c>

00000000800071f8 <release>:
    800071f8:	fe010113          	addi	sp,sp,-32
    800071fc:	00813823          	sd	s0,16(sp)
    80007200:	00113c23          	sd	ra,24(sp)
    80007204:	00913423          	sd	s1,8(sp)
    80007208:	01213023          	sd	s2,0(sp)
    8000720c:	02010413          	addi	s0,sp,32
    80007210:	00052783          	lw	a5,0(a0)
    80007214:	00079a63          	bnez	a5,80007228 <release+0x30>
    80007218:	00001517          	auipc	a0,0x1
    8000721c:	34850513          	addi	a0,a0,840 # 80008560 <digits+0x28>
    80007220:	fffff097          	auipc	ra,0xfffff
    80007224:	1dc080e7          	jalr	476(ra) # 800063fc <panic>
    80007228:	01053903          	ld	s2,16(a0)
    8000722c:	00050493          	mv	s1,a0
    80007230:	fffff097          	auipc	ra,0xfffff
    80007234:	80c080e7          	jalr	-2036(ra) # 80005a3c <mycpu>
    80007238:	fea910e3          	bne	s2,a0,80007218 <release+0x20>
    8000723c:	0004b823          	sd	zero,16(s1)
    80007240:	0ff0000f          	fence
    80007244:	0f50000f          	fence	iorw,ow
    80007248:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000724c:	ffffe097          	auipc	ra,0xffffe
    80007250:	7f0080e7          	jalr	2032(ra) # 80005a3c <mycpu>
    80007254:	100027f3          	csrr	a5,sstatus
    80007258:	0027f793          	andi	a5,a5,2
    8000725c:	04079a63          	bnez	a5,800072b0 <release+0xb8>
    80007260:	07852783          	lw	a5,120(a0)
    80007264:	02f05e63          	blez	a5,800072a0 <release+0xa8>
    80007268:	fff7871b          	addiw	a4,a5,-1
    8000726c:	06e52c23          	sw	a4,120(a0)
    80007270:	00071c63          	bnez	a4,80007288 <release+0x90>
    80007274:	07c52783          	lw	a5,124(a0)
    80007278:	00078863          	beqz	a5,80007288 <release+0x90>
    8000727c:	100027f3          	csrr	a5,sstatus
    80007280:	0027e793          	ori	a5,a5,2
    80007284:	10079073          	csrw	sstatus,a5
    80007288:	01813083          	ld	ra,24(sp)
    8000728c:	01013403          	ld	s0,16(sp)
    80007290:	00813483          	ld	s1,8(sp)
    80007294:	00013903          	ld	s2,0(sp)
    80007298:	02010113          	addi	sp,sp,32
    8000729c:	00008067          	ret
    800072a0:	00001517          	auipc	a0,0x1
    800072a4:	2e050513          	addi	a0,a0,736 # 80008580 <digits+0x48>
    800072a8:	fffff097          	auipc	ra,0xfffff
    800072ac:	154080e7          	jalr	340(ra) # 800063fc <panic>
    800072b0:	00001517          	auipc	a0,0x1
    800072b4:	2b850513          	addi	a0,a0,696 # 80008568 <digits+0x30>
    800072b8:	fffff097          	auipc	ra,0xfffff
    800072bc:	144080e7          	jalr	324(ra) # 800063fc <panic>

00000000800072c0 <holding>:
    800072c0:	00052783          	lw	a5,0(a0)
    800072c4:	00079663          	bnez	a5,800072d0 <holding+0x10>
    800072c8:	00000513          	li	a0,0
    800072cc:	00008067          	ret
    800072d0:	fe010113          	addi	sp,sp,-32
    800072d4:	00813823          	sd	s0,16(sp)
    800072d8:	00913423          	sd	s1,8(sp)
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	02010413          	addi	s0,sp,32
    800072e4:	01053483          	ld	s1,16(a0)
    800072e8:	ffffe097          	auipc	ra,0xffffe
    800072ec:	754080e7          	jalr	1876(ra) # 80005a3c <mycpu>
    800072f0:	01813083          	ld	ra,24(sp)
    800072f4:	01013403          	ld	s0,16(sp)
    800072f8:	40a48533          	sub	a0,s1,a0
    800072fc:	00153513          	seqz	a0,a0
    80007300:	00813483          	ld	s1,8(sp)
    80007304:	02010113          	addi	sp,sp,32
    80007308:	00008067          	ret

000000008000730c <push_off>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00813823          	sd	s0,16(sp)
    80007314:	00113c23          	sd	ra,24(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	100024f3          	csrr	s1,sstatus
    80007324:	100027f3          	csrr	a5,sstatus
    80007328:	ffd7f793          	andi	a5,a5,-3
    8000732c:	10079073          	csrw	sstatus,a5
    80007330:	ffffe097          	auipc	ra,0xffffe
    80007334:	70c080e7          	jalr	1804(ra) # 80005a3c <mycpu>
    80007338:	07852783          	lw	a5,120(a0)
    8000733c:	02078663          	beqz	a5,80007368 <push_off+0x5c>
    80007340:	ffffe097          	auipc	ra,0xffffe
    80007344:	6fc080e7          	jalr	1788(ra) # 80005a3c <mycpu>
    80007348:	07852783          	lw	a5,120(a0)
    8000734c:	01813083          	ld	ra,24(sp)
    80007350:	01013403          	ld	s0,16(sp)
    80007354:	0017879b          	addiw	a5,a5,1
    80007358:	06f52c23          	sw	a5,120(a0)
    8000735c:	00813483          	ld	s1,8(sp)
    80007360:	02010113          	addi	sp,sp,32
    80007364:	00008067          	ret
    80007368:	0014d493          	srli	s1,s1,0x1
    8000736c:	ffffe097          	auipc	ra,0xffffe
    80007370:	6d0080e7          	jalr	1744(ra) # 80005a3c <mycpu>
    80007374:	0014f493          	andi	s1,s1,1
    80007378:	06952e23          	sw	s1,124(a0)
    8000737c:	fc5ff06f          	j	80007340 <push_off+0x34>

0000000080007380 <pop_off>:
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00813023          	sd	s0,0(sp)
    80007388:	00113423          	sd	ra,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	ffffe097          	auipc	ra,0xffffe
    80007394:	6ac080e7          	jalr	1708(ra) # 80005a3c <mycpu>
    80007398:	100027f3          	csrr	a5,sstatus
    8000739c:	0027f793          	andi	a5,a5,2
    800073a0:	04079663          	bnez	a5,800073ec <pop_off+0x6c>
    800073a4:	07852783          	lw	a5,120(a0)
    800073a8:	02f05a63          	blez	a5,800073dc <pop_off+0x5c>
    800073ac:	fff7871b          	addiw	a4,a5,-1
    800073b0:	06e52c23          	sw	a4,120(a0)
    800073b4:	00071c63          	bnez	a4,800073cc <pop_off+0x4c>
    800073b8:	07c52783          	lw	a5,124(a0)
    800073bc:	00078863          	beqz	a5,800073cc <pop_off+0x4c>
    800073c0:	100027f3          	csrr	a5,sstatus
    800073c4:	0027e793          	ori	a5,a5,2
    800073c8:	10079073          	csrw	sstatus,a5
    800073cc:	00813083          	ld	ra,8(sp)
    800073d0:	00013403          	ld	s0,0(sp)
    800073d4:	01010113          	addi	sp,sp,16
    800073d8:	00008067          	ret
    800073dc:	00001517          	auipc	a0,0x1
    800073e0:	1a450513          	addi	a0,a0,420 # 80008580 <digits+0x48>
    800073e4:	fffff097          	auipc	ra,0xfffff
    800073e8:	018080e7          	jalr	24(ra) # 800063fc <panic>
    800073ec:	00001517          	auipc	a0,0x1
    800073f0:	17c50513          	addi	a0,a0,380 # 80008568 <digits+0x30>
    800073f4:	fffff097          	auipc	ra,0xfffff
    800073f8:	008080e7          	jalr	8(ra) # 800063fc <panic>

00000000800073fc <push_on>:
    800073fc:	fe010113          	addi	sp,sp,-32
    80007400:	00813823          	sd	s0,16(sp)
    80007404:	00113c23          	sd	ra,24(sp)
    80007408:	00913423          	sd	s1,8(sp)
    8000740c:	02010413          	addi	s0,sp,32
    80007410:	100024f3          	csrr	s1,sstatus
    80007414:	100027f3          	csrr	a5,sstatus
    80007418:	0027e793          	ori	a5,a5,2
    8000741c:	10079073          	csrw	sstatus,a5
    80007420:	ffffe097          	auipc	ra,0xffffe
    80007424:	61c080e7          	jalr	1564(ra) # 80005a3c <mycpu>
    80007428:	07852783          	lw	a5,120(a0)
    8000742c:	02078663          	beqz	a5,80007458 <push_on+0x5c>
    80007430:	ffffe097          	auipc	ra,0xffffe
    80007434:	60c080e7          	jalr	1548(ra) # 80005a3c <mycpu>
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
    80007460:	5e0080e7          	jalr	1504(ra) # 80005a3c <mycpu>
    80007464:	0014f493          	andi	s1,s1,1
    80007468:	06952e23          	sw	s1,124(a0)
    8000746c:	fc5ff06f          	j	80007430 <push_on+0x34>

0000000080007470 <pop_on>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813023          	sd	s0,0(sp)
    80007478:	00113423          	sd	ra,8(sp)
    8000747c:	01010413          	addi	s0,sp,16
    80007480:	ffffe097          	auipc	ra,0xffffe
    80007484:	5bc080e7          	jalr	1468(ra) # 80005a3c <mycpu>
    80007488:	100027f3          	csrr	a5,sstatus
    8000748c:	0027f793          	andi	a5,a5,2
    80007490:	04078463          	beqz	a5,800074d8 <pop_on+0x68>
    80007494:	07852783          	lw	a5,120(a0)
    80007498:	02f05863          	blez	a5,800074c8 <pop_on+0x58>
    8000749c:	fff7879b          	addiw	a5,a5,-1
    800074a0:	06f52c23          	sw	a5,120(a0)
    800074a4:	07853783          	ld	a5,120(a0)
    800074a8:	00079863          	bnez	a5,800074b8 <pop_on+0x48>
    800074ac:	100027f3          	csrr	a5,sstatus
    800074b0:	ffd7f793          	andi	a5,a5,-3
    800074b4:	10079073          	csrw	sstatus,a5
    800074b8:	00813083          	ld	ra,8(sp)
    800074bc:	00013403          	ld	s0,0(sp)
    800074c0:	01010113          	addi	sp,sp,16
    800074c4:	00008067          	ret
    800074c8:	00001517          	auipc	a0,0x1
    800074cc:	0e050513          	addi	a0,a0,224 # 800085a8 <digits+0x70>
    800074d0:	fffff097          	auipc	ra,0xfffff
    800074d4:	f2c080e7          	jalr	-212(ra) # 800063fc <panic>
    800074d8:	00001517          	auipc	a0,0x1
    800074dc:	0b050513          	addi	a0,a0,176 # 80008588 <digits+0x50>
    800074e0:	fffff097          	auipc	ra,0xfffff
    800074e4:	f1c080e7          	jalr	-228(ra) # 800063fc <panic>

00000000800074e8 <__memset>:
    800074e8:	ff010113          	addi	sp,sp,-16
    800074ec:	00813423          	sd	s0,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	1a060e63          	beqz	a2,800076b0 <__memset+0x1c8>
    800074f8:	40a007b3          	neg	a5,a0
    800074fc:	0077f793          	andi	a5,a5,7
    80007500:	00778693          	addi	a3,a5,7
    80007504:	00b00813          	li	a6,11
    80007508:	0ff5f593          	andi	a1,a1,255
    8000750c:	fff6071b          	addiw	a4,a2,-1
    80007510:	1b06e663          	bltu	a3,a6,800076bc <__memset+0x1d4>
    80007514:	1cd76463          	bltu	a4,a3,800076dc <__memset+0x1f4>
    80007518:	1a078e63          	beqz	a5,800076d4 <__memset+0x1ec>
    8000751c:	00b50023          	sb	a1,0(a0)
    80007520:	00100713          	li	a4,1
    80007524:	1ae78463          	beq	a5,a4,800076cc <__memset+0x1e4>
    80007528:	00b500a3          	sb	a1,1(a0)
    8000752c:	00200713          	li	a4,2
    80007530:	1ae78a63          	beq	a5,a4,800076e4 <__memset+0x1fc>
    80007534:	00b50123          	sb	a1,2(a0)
    80007538:	00300713          	li	a4,3
    8000753c:	18e78463          	beq	a5,a4,800076c4 <__memset+0x1dc>
    80007540:	00b501a3          	sb	a1,3(a0)
    80007544:	00400713          	li	a4,4
    80007548:	1ae78263          	beq	a5,a4,800076ec <__memset+0x204>
    8000754c:	00b50223          	sb	a1,4(a0)
    80007550:	00500713          	li	a4,5
    80007554:	1ae78063          	beq	a5,a4,800076f4 <__memset+0x20c>
    80007558:	00b502a3          	sb	a1,5(a0)
    8000755c:	00700713          	li	a4,7
    80007560:	18e79e63          	bne	a5,a4,800076fc <__memset+0x214>
    80007564:	00b50323          	sb	a1,6(a0)
    80007568:	00700e93          	li	t4,7
    8000756c:	00859713          	slli	a4,a1,0x8
    80007570:	00e5e733          	or	a4,a1,a4
    80007574:	01059e13          	slli	t3,a1,0x10
    80007578:	01c76e33          	or	t3,a4,t3
    8000757c:	01859313          	slli	t1,a1,0x18
    80007580:	006e6333          	or	t1,t3,t1
    80007584:	02059893          	slli	a7,a1,0x20
    80007588:	40f60e3b          	subw	t3,a2,a5
    8000758c:	011368b3          	or	a7,t1,a7
    80007590:	02859813          	slli	a6,a1,0x28
    80007594:	0108e833          	or	a6,a7,a6
    80007598:	03059693          	slli	a3,a1,0x30
    8000759c:	003e589b          	srliw	a7,t3,0x3
    800075a0:	00d866b3          	or	a3,a6,a3
    800075a4:	03859713          	slli	a4,a1,0x38
    800075a8:	00389813          	slli	a6,a7,0x3
    800075ac:	00f507b3          	add	a5,a0,a5
    800075b0:	00e6e733          	or	a4,a3,a4
    800075b4:	000e089b          	sext.w	a7,t3
    800075b8:	00f806b3          	add	a3,a6,a5
    800075bc:	00e7b023          	sd	a4,0(a5)
    800075c0:	00878793          	addi	a5,a5,8
    800075c4:	fed79ce3          	bne	a5,a3,800075bc <__memset+0xd4>
    800075c8:	ff8e7793          	andi	a5,t3,-8
    800075cc:	0007871b          	sext.w	a4,a5
    800075d0:	01d787bb          	addw	a5,a5,t4
    800075d4:	0ce88e63          	beq	a7,a4,800076b0 <__memset+0x1c8>
    800075d8:	00f50733          	add	a4,a0,a5
    800075dc:	00b70023          	sb	a1,0(a4)
    800075e0:	0017871b          	addiw	a4,a5,1
    800075e4:	0cc77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    800075e8:	00e50733          	add	a4,a0,a4
    800075ec:	00b70023          	sb	a1,0(a4)
    800075f0:	0027871b          	addiw	a4,a5,2
    800075f4:	0ac77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    800075f8:	00e50733          	add	a4,a0,a4
    800075fc:	00b70023          	sb	a1,0(a4)
    80007600:	0037871b          	addiw	a4,a5,3
    80007604:	0ac77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007608:	00e50733          	add	a4,a0,a4
    8000760c:	00b70023          	sb	a1,0(a4)
    80007610:	0047871b          	addiw	a4,a5,4
    80007614:	08c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007618:	00e50733          	add	a4,a0,a4
    8000761c:	00b70023          	sb	a1,0(a4)
    80007620:	0057871b          	addiw	a4,a5,5
    80007624:	08c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007628:	00e50733          	add	a4,a0,a4
    8000762c:	00b70023          	sb	a1,0(a4)
    80007630:	0067871b          	addiw	a4,a5,6
    80007634:	06c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007638:	00e50733          	add	a4,a0,a4
    8000763c:	00b70023          	sb	a1,0(a4)
    80007640:	0077871b          	addiw	a4,a5,7
    80007644:	06c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00b70023          	sb	a1,0(a4)
    80007650:	0087871b          	addiw	a4,a5,8
    80007654:	04c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007658:	00e50733          	add	a4,a0,a4
    8000765c:	00b70023          	sb	a1,0(a4)
    80007660:	0097871b          	addiw	a4,a5,9
    80007664:	04c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007668:	00e50733          	add	a4,a0,a4
    8000766c:	00b70023          	sb	a1,0(a4)
    80007670:	00a7871b          	addiw	a4,a5,10
    80007674:	02c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007678:	00e50733          	add	a4,a0,a4
    8000767c:	00b70023          	sb	a1,0(a4)
    80007680:	00b7871b          	addiw	a4,a5,11
    80007684:	02c77663          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007688:	00e50733          	add	a4,a0,a4
    8000768c:	00b70023          	sb	a1,0(a4)
    80007690:	00c7871b          	addiw	a4,a5,12
    80007694:	00c77e63          	bgeu	a4,a2,800076b0 <__memset+0x1c8>
    80007698:	00e50733          	add	a4,a0,a4
    8000769c:	00b70023          	sb	a1,0(a4)
    800076a0:	00d7879b          	addiw	a5,a5,13
    800076a4:	00c7f663          	bgeu	a5,a2,800076b0 <__memset+0x1c8>
    800076a8:	00f507b3          	add	a5,a0,a5
    800076ac:	00b78023          	sb	a1,0(a5)
    800076b0:	00813403          	ld	s0,8(sp)
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00008067          	ret
    800076bc:	00b00693          	li	a3,11
    800076c0:	e55ff06f          	j	80007514 <__memset+0x2c>
    800076c4:	00300e93          	li	t4,3
    800076c8:	ea5ff06f          	j	8000756c <__memset+0x84>
    800076cc:	00100e93          	li	t4,1
    800076d0:	e9dff06f          	j	8000756c <__memset+0x84>
    800076d4:	00000e93          	li	t4,0
    800076d8:	e95ff06f          	j	8000756c <__memset+0x84>
    800076dc:	00000793          	li	a5,0
    800076e0:	ef9ff06f          	j	800075d8 <__memset+0xf0>
    800076e4:	00200e93          	li	t4,2
    800076e8:	e85ff06f          	j	8000756c <__memset+0x84>
    800076ec:	00400e93          	li	t4,4
    800076f0:	e7dff06f          	j	8000756c <__memset+0x84>
    800076f4:	00500e93          	li	t4,5
    800076f8:	e75ff06f          	j	8000756c <__memset+0x84>
    800076fc:	00600e93          	li	t4,6
    80007700:	e6dff06f          	j	8000756c <__memset+0x84>

0000000080007704 <__memmove>:
    80007704:	ff010113          	addi	sp,sp,-16
    80007708:	00813423          	sd	s0,8(sp)
    8000770c:	01010413          	addi	s0,sp,16
    80007710:	0e060863          	beqz	a2,80007800 <__memmove+0xfc>
    80007714:	fff6069b          	addiw	a3,a2,-1
    80007718:	0006881b          	sext.w	a6,a3
    8000771c:	0ea5e863          	bltu	a1,a0,8000780c <__memmove+0x108>
    80007720:	00758713          	addi	a4,a1,7
    80007724:	00a5e7b3          	or	a5,a1,a0
    80007728:	40a70733          	sub	a4,a4,a0
    8000772c:	0077f793          	andi	a5,a5,7
    80007730:	00f73713          	sltiu	a4,a4,15
    80007734:	00174713          	xori	a4,a4,1
    80007738:	0017b793          	seqz	a5,a5
    8000773c:	00e7f7b3          	and	a5,a5,a4
    80007740:	10078863          	beqz	a5,80007850 <__memmove+0x14c>
    80007744:	00900793          	li	a5,9
    80007748:	1107f463          	bgeu	a5,a6,80007850 <__memmove+0x14c>
    8000774c:	0036581b          	srliw	a6,a2,0x3
    80007750:	fff8081b          	addiw	a6,a6,-1
    80007754:	02081813          	slli	a6,a6,0x20
    80007758:	01d85893          	srli	a7,a6,0x1d
    8000775c:	00858813          	addi	a6,a1,8
    80007760:	00058793          	mv	a5,a1
    80007764:	00050713          	mv	a4,a0
    80007768:	01088833          	add	a6,a7,a6
    8000776c:	0007b883          	ld	a7,0(a5)
    80007770:	00878793          	addi	a5,a5,8
    80007774:	00870713          	addi	a4,a4,8
    80007778:	ff173c23          	sd	a7,-8(a4)
    8000777c:	ff0798e3          	bne	a5,a6,8000776c <__memmove+0x68>
    80007780:	ff867713          	andi	a4,a2,-8
    80007784:	02071793          	slli	a5,a4,0x20
    80007788:	0207d793          	srli	a5,a5,0x20
    8000778c:	00f585b3          	add	a1,a1,a5
    80007790:	40e686bb          	subw	a3,a3,a4
    80007794:	00f507b3          	add	a5,a0,a5
    80007798:	06e60463          	beq	a2,a4,80007800 <__memmove+0xfc>
    8000779c:	0005c703          	lbu	a4,0(a1)
    800077a0:	00e78023          	sb	a4,0(a5)
    800077a4:	04068e63          	beqz	a3,80007800 <__memmove+0xfc>
    800077a8:	0015c603          	lbu	a2,1(a1)
    800077ac:	00100713          	li	a4,1
    800077b0:	00c780a3          	sb	a2,1(a5)
    800077b4:	04e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077b8:	0025c603          	lbu	a2,2(a1)
    800077bc:	00200713          	li	a4,2
    800077c0:	00c78123          	sb	a2,2(a5)
    800077c4:	02e68e63          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077c8:	0035c603          	lbu	a2,3(a1)
    800077cc:	00300713          	li	a4,3
    800077d0:	00c781a3          	sb	a2,3(a5)
    800077d4:	02e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077d8:	0045c603          	lbu	a2,4(a1)
    800077dc:	00400713          	li	a4,4
    800077e0:	00c78223          	sb	a2,4(a5)
    800077e4:	00e68e63          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077e8:	0055c603          	lbu	a2,5(a1)
    800077ec:	00500713          	li	a4,5
    800077f0:	00c782a3          	sb	a2,5(a5)
    800077f4:	00e68663          	beq	a3,a4,80007800 <__memmove+0xfc>
    800077f8:	0065c703          	lbu	a4,6(a1)
    800077fc:	00e78323          	sb	a4,6(a5)
    80007800:	00813403          	ld	s0,8(sp)
    80007804:	01010113          	addi	sp,sp,16
    80007808:	00008067          	ret
    8000780c:	02061713          	slli	a4,a2,0x20
    80007810:	02075713          	srli	a4,a4,0x20
    80007814:	00e587b3          	add	a5,a1,a4
    80007818:	f0f574e3          	bgeu	a0,a5,80007720 <__memmove+0x1c>
    8000781c:	02069613          	slli	a2,a3,0x20
    80007820:	02065613          	srli	a2,a2,0x20
    80007824:	fff64613          	not	a2,a2
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00c78633          	add	a2,a5,a2
    80007830:	fff7c683          	lbu	a3,-1(a5)
    80007834:	fff78793          	addi	a5,a5,-1
    80007838:	fff70713          	addi	a4,a4,-1
    8000783c:	00d70023          	sb	a3,0(a4)
    80007840:	fec798e3          	bne	a5,a2,80007830 <__memmove+0x12c>
    80007844:	00813403          	ld	s0,8(sp)
    80007848:	01010113          	addi	sp,sp,16
    8000784c:	00008067          	ret
    80007850:	02069713          	slli	a4,a3,0x20
    80007854:	02075713          	srli	a4,a4,0x20
    80007858:	00170713          	addi	a4,a4,1
    8000785c:	00e50733          	add	a4,a0,a4
    80007860:	00050793          	mv	a5,a0
    80007864:	0005c683          	lbu	a3,0(a1)
    80007868:	00178793          	addi	a5,a5,1
    8000786c:	00158593          	addi	a1,a1,1
    80007870:	fed78fa3          	sb	a3,-1(a5)
    80007874:	fee798e3          	bne	a5,a4,80007864 <__memmove+0x160>
    80007878:	f89ff06f          	j	80007800 <__memmove+0xfc>
	...
