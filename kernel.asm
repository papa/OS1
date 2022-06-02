
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ce013103          	ld	sp,-800(sp) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5d1060ef          	jal	ra,80006dec <start>

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
    80001088:	171020ef          	jal	ra,800039f8 <_ZN5Riscv20handleSupervisorTrapEv>

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

typedef void* sem_t;
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
    800015a8:	00008517          	auipc	a0,0x8
    800015ac:	a7850513          	addi	a0,a0,-1416 # 80009020 <CONSOLE_STATUS+0x10>
    800015b0:	00005097          	auipc	ra,0x5
    800015b4:	d24080e7          	jalr	-732(ra) # 800062d4 <_Z11printStringPKc>
        printInt(i);
    800015b8:	00000613          	li	a2,0
    800015bc:	00a00593          	li	a1,10
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00005097          	auipc	ra,0x5
    800015c8:	ea8080e7          	jalr	-344(ra) # 8000646c <_Z8printIntiii>
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
    800015f8:	00008517          	auipc	a0,0x8
    800015fc:	a3050513          	addi	a0,a0,-1488 # 80009028 <CONSOLE_STATUS+0x18>
    80001600:	00005097          	auipc	ra,0x5
    80001604:	cd4080e7          	jalr	-812(ra) # 800062d4 <_Z11printStringPKc>
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
    80001628:	00008517          	auipc	a0,0x8
    8000162c:	a0850513          	addi	a0,a0,-1528 # 80009030 <CONSOLE_STATUS+0x20>
    80001630:	00005097          	auipc	ra,0x5
    80001634:	ca4080e7          	jalr	-860(ra) # 800062d4 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001638:	00000493          	li	s1,0
    8000163c:	0440006f          	j	80001680 <_Z15thread1FunctionPv+0x6c>
            thread_dispatch();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	cf4080e7          	jalr	-780(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    80001648:	00008517          	auipc	a0,0x8
    8000164c:	9d850513          	addi	a0,a0,-1576 # 80009020 <CONSOLE_STATUS+0x10>
    80001650:	00005097          	auipc	ra,0x5
    80001654:	c84080e7          	jalr	-892(ra) # 800062d4 <_Z11printStringPKc>
        printInt(i);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0004851b          	sext.w	a0,s1
    80001664:	00005097          	auipc	ra,0x5
    80001668:	e08080e7          	jalr	-504(ra) # 8000646c <_Z8printIntiii>
        printString("\n");
    8000166c:	00008517          	auipc	a0,0x8
    80001670:	a8c50513          	addi	a0,a0,-1396 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001674:	00005097          	auipc	ra,0x5
    80001678:	c60080e7          	jalr	-928(ra) # 800062d4 <_Z11printStringPKc>
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
    800016c8:	00008517          	auipc	a0,0x8
    800016cc:	98050513          	addi	a0,a0,-1664 # 80009048 <CONSOLE_STATUS+0x38>
    800016d0:	00005097          	auipc	ra,0x5
    800016d4:	c04080e7          	jalr	-1020(ra) # 800062d4 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016d8:	00000493          	li	s1,0
    800016dc:	0440006f          	j	80001720 <_Z15thread2FunctionPv+0x6c>
            thread_dispatch();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c54080e7          	jalr	-940(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    800016e8:	00008517          	auipc	a0,0x8
    800016ec:	97850513          	addi	a0,a0,-1672 # 80009060 <CONSOLE_STATUS+0x50>
    800016f0:	00005097          	auipc	ra,0x5
    800016f4:	be4080e7          	jalr	-1052(ra) # 800062d4 <_Z11printStringPKc>
        printInt(j);
    800016f8:	00000613          	li	a2,0
    800016fc:	00a00593          	li	a1,10
    80001700:	0004851b          	sext.w	a0,s1
    80001704:	00005097          	auipc	ra,0x5
    80001708:	d68080e7          	jalr	-664(ra) # 8000646c <_Z8printIntiii>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	9ec50513          	addi	a0,a0,-1556 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001714:	00005097          	auipc	ra,0x5
    80001718:	bc0080e7          	jalr	-1088(ra) # 800062d4 <_Z11printStringPKc>
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
    80001768:	00008517          	auipc	a0,0x8
    8000176c:	8e050513          	addi	a0,a0,-1824 # 80009048 <CONSOLE_STATUS+0x38>
    80001770:	00005097          	auipc	ra,0x5
    80001774:	b64080e7          	jalr	-1180(ra) # 800062d4 <_Z11printStringPKc>
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
    80001794:	00008517          	auipc	a0,0x8
    80001798:	8cc50513          	addi	a0,a0,-1844 # 80009060 <CONSOLE_STATUS+0x50>
    8000179c:	00005097          	auipc	ra,0x5
    800017a0:	b38080e7          	jalr	-1224(ra) # 800062d4 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00005097          	auipc	ra,0x5
    800017b4:	cbc080e7          	jalr	-836(ra) # 8000646c <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94050513          	addi	a0,a0,-1728 # 800090f8 <CONSOLE_STATUS+0xe8>
    800017c0:	00005097          	auipc	ra,0x5
    800017c4:	b14080e7          	jalr	-1260(ra) # 800062d4 <_Z11printStringPKc>
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
    8000184c:	00008517          	auipc	a0,0x8
    80001850:	81c50513          	addi	a0,a0,-2020 # 80009068 <CONSOLE_STATUS+0x58>
    80001854:	00005097          	auipc	ra,0x5
    80001858:	a80080e7          	jalr	-1408(ra) # 800062d4 <_Z11printStringPKc>
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
    80001890:	00007517          	auipc	a0,0x7
    80001894:	7e850513          	addi	a0,a0,2024 # 80009078 <CONSOLE_STATUS+0x68>
    80001898:	00005097          	auipc	ra,0x5
    8000189c:	a3c080e7          	jalr	-1476(ra) # 800062d4 <_Z11printStringPKc>
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
    800018e4:	00007517          	auipc	a0,0x7
    800018e8:	79450513          	addi	a0,a0,1940 # 80009078 <CONSOLE_STATUS+0x68>
    800018ec:	00005097          	auipc	ra,0x5
    800018f0:	9e8080e7          	jalr	-1560(ra) # 800062d4 <_Z11printStringPKc>
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
    8000192c:	00007517          	auipc	a0,0x7
    80001930:	74c50513          	addi	a0,a0,1868 # 80009078 <CONSOLE_STATUS+0x68>
    80001934:	00005097          	auipc	ra,0x5
    80001938:	9a0080e7          	jalr	-1632(ra) # 800062d4 <_Z11printStringPKc>
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
    80001970:	00007517          	auipc	a0,0x7
    80001974:	70850513          	addi	a0,a0,1800 # 80009078 <CONSOLE_STATUS+0x68>
    80001978:	00005097          	auipc	ra,0x5
    8000197c:	95c080e7          	jalr	-1700(ra) # 800062d4 <_Z11printStringPKc>
            return;
    80001980:	f21ff06f          	j	800018a0 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001984:	00007517          	auipc	a0,0x7
    80001988:	6fc50513          	addi	a0,a0,1788 # 80009080 <CONSOLE_STATUS+0x70>
    8000198c:	00005097          	auipc	ra,0x5
    80001990:	948080e7          	jalr	-1720(ra) # 800062d4 <_Z11printStringPKc>
    80001994:	f0dff06f          	j	800018a0 <_Z10mallocFreev+0x68>

0000000080001998 <_Z9bigMallocv>:
{
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00113423          	sd	ra,8(sp)
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    800019a8:	00007517          	auipc	a0,0x7
    800019ac:	6e050513          	addi	a0,a0,1760 # 80009088 <CONSOLE_STATUS+0x78>
    800019b0:	00005097          	auipc	ra,0x5
    800019b4:	924080e7          	jalr	-1756(ra) # 800062d4 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800019b8:	0000a797          	auipc	a5,0xa
    800019bc:	3607b783          	ld	a5,864(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	0000a797          	auipc	a5,0xa
    800019c8:	2f47b783          	ld	a5,756(a5) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019cc:	0007b783          	ld	a5,0(a5)
    800019d0:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    800019d4:	06450513          	addi	a0,a0,100
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	880080e7          	jalr	-1920(ra) # 80001258 <mem_alloc>
    if(p == 0)
    800019e0:	02050263          	beqz	a0,80001a04 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    800019e4:	00007517          	auipc	a0,0x7
    800019e8:	69450513          	addi	a0,a0,1684 # 80009078 <CONSOLE_STATUS+0x68>
    800019ec:	00005097          	auipc	ra,0x5
    800019f0:	8e8080e7          	jalr	-1816(ra) # 800062d4 <_Z11printStringPKc>
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        printString("OK\n");
    80001a04:	00007517          	auipc	a0,0x7
    80001a08:	67c50513          	addi	a0,a0,1660 # 80009080 <CONSOLE_STATUS+0x70>
    80001a0c:	00005097          	auipc	ra,0x5
    80001a10:	8c8080e7          	jalr	-1848(ra) # 800062d4 <_Z11printStringPKc>
    80001a14:	fe1ff06f          	j	800019f4 <_Z9bigMallocv+0x5c>

0000000080001a18 <_Z17lotOfSmallMallocsv>:
{
    80001a18:	fd010113          	addi	sp,sp,-48
    80001a1c:	02113423          	sd	ra,40(sp)
    80001a20:	02813023          	sd	s0,32(sp)
    80001a24:	00913c23          	sd	s1,24(sp)
    80001a28:	01213823          	sd	s2,16(sp)
    80001a2c:	01313423          	sd	s3,8(sp)
    80001a30:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001a34:	00007517          	auipc	a0,0x7
    80001a38:	66450513          	addi	a0,a0,1636 # 80009098 <CONSOLE_STATUS+0x88>
    80001a3c:	00005097          	auipc	ra,0x5
    80001a40:	898080e7          	jalr	-1896(ra) # 800062d4 <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001a44:	00000493          	li	s1,0
    uint64 sum = 0;
    80001a48:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001a4c:	00000913          	li	s2,0
    80001a50:	0180006f          	j	80001a68 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001a54:	00a00793          	li	a5,10
    80001a58:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001a5c:	00a98993          	addi	s3,s3,10
        cnt++;
    80001a60:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001a64:	00148493          	addi	s1,s1,1
    80001a68:	000027b7          	lui	a5,0x2
    80001a6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a70:	0097ea63          	bltu	a5,s1,80001a84 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001a74:	00800513          	li	a0,8
    80001a78:	fffff097          	auipc	ra,0xfffff
    80001a7c:	7e0080e7          	jalr	2016(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001a80:	fc051ae3          	bnez	a0,80001a54 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	0009051b          	sext.w	a0,s2
    80001a90:	00005097          	auipc	ra,0x5
    80001a94:	9dc080e7          	jalr	-1572(ra) # 8000646c <_Z8printIntiii>
    printString("\n");
    80001a98:	00007517          	auipc	a0,0x7
    80001a9c:	66050513          	addi	a0,a0,1632 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001aa0:	00005097          	auipc	ra,0x5
    80001aa4:	834080e7          	jalr	-1996(ra) # 800062d4 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001aa8:	00291793          	slli	a5,s2,0x2
    80001aac:	01278933          	add	s2,a5,s2
    80001ab0:	00191913          	slli	s2,s2,0x1
    80001ab4:	03390863          	beq	s2,s3,80001ae4 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5c050513          	addi	a0,a0,1472 # 80009078 <CONSOLE_STATUS+0x68>
    80001ac0:	00005097          	auipc	ra,0x5
    80001ac4:	814080e7          	jalr	-2028(ra) # 800062d4 <_Z11printStringPKc>
}
    80001ac8:	02813083          	ld	ra,40(sp)
    80001acc:	02013403          	ld	s0,32(sp)
    80001ad0:	01813483          	ld	s1,24(sp)
    80001ad4:	01013903          	ld	s2,16(sp)
    80001ad8:	00813983          	ld	s3,8(sp)
    80001adc:	03010113          	addi	sp,sp,48
    80001ae0:	00008067          	ret
        printString("OK\n");
    80001ae4:	00007517          	auipc	a0,0x7
    80001ae8:	59c50513          	addi	a0,a0,1436 # 80009080 <CONSOLE_STATUS+0x70>
    80001aec:	00004097          	auipc	ra,0x4
    80001af0:	7e8080e7          	jalr	2024(ra) # 800062d4 <_Z11printStringPKc>
    80001af4:	fd5ff06f          	j	80001ac8 <_Z17lotOfSmallMallocsv+0xb0>

0000000080001af8 <_Z7badFreev>:
{
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001b08:	00007517          	auipc	a0,0x7
    80001b0c:	5a850513          	addi	a0,a0,1448 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001b10:	00004097          	auipc	ra,0x4
    80001b14:	7c4080e7          	jalr	1988(ra) # 800062d4 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001b18:	00800513          	li	a0,8
    80001b1c:	fffff097          	auipc	ra,0xfffff
    80001b20:	73c080e7          	jalr	1852(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001b24:	00250513          	addi	a0,a0,2
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	760080e7          	jalr	1888(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001b30:	02051263          	bnez	a0,80001b54 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001b34:	00007517          	auipc	a0,0x7
    80001b38:	54450513          	addi	a0,a0,1348 # 80009078 <CONSOLE_STATUS+0x68>
    80001b3c:	00004097          	auipc	ra,0x4
    80001b40:	798080e7          	jalr	1944(ra) # 800062d4 <_Z11printStringPKc>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
         printString("OK\n");
    80001b54:	00007517          	auipc	a0,0x7
    80001b58:	52c50513          	addi	a0,a0,1324 # 80009080 <CONSOLE_STATUS+0x70>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	778080e7          	jalr	1912(ra) # 800062d4 <_Z11printStringPKc>
}
    80001b64:	fe1ff06f          	j	80001b44 <_Z7badFreev+0x4c>

0000000080001b68 <_Z13stressTestingv>:
{
    80001b68:	cc010113          	addi	sp,sp,-832
    80001b6c:	32113c23          	sd	ra,824(sp)
    80001b70:	32813823          	sd	s0,816(sp)
    80001b74:	32913423          	sd	s1,808(sp)
    80001b78:	33213023          	sd	s2,800(sp)
    80001b7c:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001b80:	00007517          	auipc	a0,0x7
    80001b84:	54050513          	addi	a0,a0,1344 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b88:	00004097          	auipc	ra,0x4
    80001b8c:	74c080e7          	jalr	1868(ra) # 800062d4 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b90:	00000493          	li	s1,0
    80001b94:	0080006f          	j	80001b9c <_Z13stressTestingv+0x34>
    80001b98:	0014849b          	addiw	s1,s1,1
    80001b9c:	06300793          	li	a5,99
    80001ba0:	0497c663          	blt	a5,s1,80001bec <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001ba4:	00100513          	li	a0,1
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	6b0080e7          	jalr	1712(ra) # 80001258 <mem_alloc>
    80001bb0:	00349793          	slli	a5,s1,0x3
    80001bb4:	fe040713          	addi	a4,s0,-32
    80001bb8:	00f707b3          	add	a5,a4,a5
    80001bbc:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001bc0:	fc051ce3          	bnez	a0,80001b98 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001bc4:	00007517          	auipc	a0,0x7
    80001bc8:	4b450513          	addi	a0,a0,1204 # 80009078 <CONSOLE_STATUS+0x68>
    80001bcc:	00004097          	auipc	ra,0x4
    80001bd0:	708080e7          	jalr	1800(ra) # 800062d4 <_Z11printStringPKc>
}
    80001bd4:	33813083          	ld	ra,824(sp)
    80001bd8:	33013403          	ld	s0,816(sp)
    80001bdc:	32813483          	ld	s1,808(sp)
    80001be0:	32013903          	ld	s2,800(sp)
    80001be4:	34010113          	addi	sp,sp,832
    80001be8:	00008067          	ret
    int sz = 300;
    80001bec:	12c00913          	li	s2,300
    while(sz > 0)
    80001bf0:	11205263          	blez	s2,80001cf4 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001bf4:	00000493          	li	s1,0
    80001bf8:	06300793          	li	a5,99
    80001bfc:	0697cc63          	blt	a5,s1,80001c74 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001c00:	00349793          	slli	a5,s1,0x3
    80001c04:	fe040713          	addi	a4,s0,-32
    80001c08:	00f707b3          	add	a5,a4,a5
    80001c0c:	ce07b503          	ld	a0,-800(a5)
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	678080e7          	jalr	1656(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001c18:	02051a63          	bnez	a0,80001c4c <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001c1c:	01f9551b          	srliw	a0,s2,0x1f
    80001c20:	0125053b          	addw	a0,a0,s2
    80001c24:	4015551b          	sraiw	a0,a0,0x1
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	630080e7          	jalr	1584(ra) # 80001258 <mem_alloc>
    80001c30:	00349793          	slli	a5,s1,0x3
    80001c34:	fe040713          	addi	a4,s0,-32
    80001c38:	00f707b3          	add	a5,a4,a5
    80001c3c:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001c40:	02050063          	beqz	a0,80001c60 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001c44:	0024849b          	addiw	s1,s1,2
    80001c48:	fb1ff06f          	j	80001bf8 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001c4c:	00007517          	auipc	a0,0x7
    80001c50:	42c50513          	addi	a0,a0,1068 # 80009078 <CONSOLE_STATUS+0x68>
    80001c54:	00004097          	auipc	ra,0x4
    80001c58:	680080e7          	jalr	1664(ra) # 800062d4 <_Z11printStringPKc>
                return;
    80001c5c:	f79ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	47050513          	addi	a0,a0,1136 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	66c080e7          	jalr	1644(ra) # 800062d4 <_Z11printStringPKc>
                return;
    80001c70:	f65ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001c74:	00100493          	li	s1,1
    80001c78:	06300793          	li	a5,99
    80001c7c:	0697c863          	blt	a5,s1,80001cec <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001c80:	00349793          	slli	a5,s1,0x3
    80001c84:	fe040713          	addi	a4,s0,-32
    80001c88:	00f707b3          	add	a5,a4,a5
    80001c8c:	ce07b503          	ld	a0,-800(a5)
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5f8080e7          	jalr	1528(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001c98:	02051663          	bnez	a0,80001cc4 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	5b8080e7          	jalr	1464(ra) # 80001258 <mem_alloc>
    80001ca8:	00349793          	slli	a5,s1,0x3
    80001cac:	fe040713          	addi	a4,s0,-32
    80001cb0:	00f707b3          	add	a5,a4,a5
    80001cb4:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001cb8:	02050063          	beqz	a0,80001cd8 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001cbc:	0024849b          	addiw	s1,s1,2
    80001cc0:	fb9ff06f          	j	80001c78 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001cc4:	00007517          	auipc	a0,0x7
    80001cc8:	3b450513          	addi	a0,a0,948 # 80009078 <CONSOLE_STATUS+0x68>
    80001ccc:	00004097          	auipc	ra,0x4
    80001cd0:	608080e7          	jalr	1544(ra) # 800062d4 <_Z11printStringPKc>
                return;
    80001cd4:	f01ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001cd8:	00007517          	auipc	a0,0x7
    80001cdc:	3f850513          	addi	a0,a0,1016 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	5f4080e7          	jalr	1524(ra) # 800062d4 <_Z11printStringPKc>
                return;
    80001ce8:	eedff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001cec:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001cf0:	f01ff06f          	j	80001bf0 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001cf4:	00007517          	auipc	a0,0x7
    80001cf8:	38c50513          	addi	a0,a0,908 # 80009080 <CONSOLE_STATUS+0x70>
    80001cfc:	00004097          	auipc	ra,0x4
    80001d00:	5d8080e7          	jalr	1496(ra) # 800062d4 <_Z11printStringPKc>
    80001d04:	ed1ff06f          	j	80001bd4 <_Z13stressTestingv+0x6c>

0000000080001d08 <_Z14semaphoreTestsv>:
{
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
}
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
    80001d34:	00050493          	mv	s1,a0
    80001d38:	00002097          	auipc	ra,0x2
    80001d3c:	970080e7          	jalr	-1680(ra) # 800036a8 <_ZN14PeriodicThreadC1Em>
    80001d40:	0000a797          	auipc	a5,0xa
    80001d44:	dc078793          	addi	a5,a5,-576 # 8000bb00 <_ZTV12TestPeriodic+0x10>
    80001d48:	00f4b023          	sd	a5,0(s1)
}
    80001d4c:	01813083          	ld	ra,24(sp)
    80001d50:	01013403          	ld	s0,16(sp)
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	02010113          	addi	sp,sp,32
    80001d5c:	00008067          	ret

0000000080001d60 <_Z11threadTest3v>:
{
    80001d60:	fe010113          	addi	sp,sp,-32
    80001d64:	00113c23          	sd	ra,24(sp)
    80001d68:	00813823          	sd	s0,16(sp)
    80001d6c:	00913423          	sd	s1,8(sp)
    80001d70:	01213023          	sd	s2,0(sp)
    80001d74:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80001d78:	01000513          	li	a0,16
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	60c080e7          	jalr	1548(ra) # 80003388 <_Znwm>
    80001d84:	00050913          	mv	s2,a0
    80001d88:	03200593          	li	a1,50
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	f94080e7          	jalr	-108(ra) # 80001d20 <_ZN12TestPeriodicC1Em>
    t->start();
    80001d94:	00090513          	mv	a0,s2
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	6c0080e7          	jalr	1728(ra) # 80003458 <_ZN6Thread5startEv>
    while(true)
    80001da0:	0000006f          	j	80001da0 <_Z11threadTest3v+0x40>
    80001da4:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80001da8:	00090513          	mv	a0,s2
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	604080e7          	jalr	1540(ra) # 800033b0 <_ZdlPv>
    80001db4:	00048513          	mv	a0,s1
    80001db8:	0000f097          	auipc	ra,0xf
    80001dbc:	180080e7          	jalr	384(ra) # 80010f38 <_Unwind_Resume>

0000000080001dc0 <_Z11threadTestsv>:
{
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    threadTest3();
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	f90080e7          	jalr	-112(ra) # 80001d60 <_Z11threadTest3v>

0000000080001dd8 <_Z10mallocTestv>:

void mallocTest()
{
    80001dd8:	fc010113          	addi	sp,sp,-64
    80001ddc:	02113c23          	sd	ra,56(sp)
    80001de0:	02813823          	sd	s0,48(sp)
    80001de4:	02913423          	sd	s1,40(sp)
    80001de8:	03213023          	sd	s2,32(sp)
    80001dec:	01313c23          	sd	s3,24(sp)
    80001df0:	01413823          	sd	s4,16(sp)
    80001df4:	01513423          	sd	s5,8(sp)
    80001df8:	01613023          	sd	s6,0(sp)
    80001dfc:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    80001e00:	00007517          	auipc	a0,0x7
    80001e04:	2d850513          	addi	a0,a0,728 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001e08:	00004097          	auipc	ra,0x4
    80001e0c:	4cc080e7          	jalr	1228(ra) # 800062d4 <_Z11printStringPKc>

    object* o = new object;
    80001e10:	02c00513          	li	a0,44
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	574080e7          	jalr	1396(ra) # 80003388 <_Znwm>
    80001e1c:	00050493          	mv	s1,a0
    o->a = 3;
    80001e20:	00300793          	li	a5,3
    80001e24:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80001e28:	00a00513          	li	a0,10
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	42c080e7          	jalr	1068(ra) # 80001258 <mem_alloc>
    80001e34:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80001e38:	06400513          	li	a0,100
    80001e3c:	fffff097          	auipc	ra,0xfffff
    80001e40:	41c080e7          	jalr	1052(ra) # 80001258 <mem_alloc>
    80001e44:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80001e48:	3e800513          	li	a0,1000
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	40c080e7          	jalr	1036(ra) # 80001258 <mem_alloc>
    80001e54:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80001e58:	00002537          	lui	a0,0x2
    80001e5c:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	3f8080e7          	jalr	1016(ra) # 80001258 <mem_alloc>
    80001e68:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80001e6c:	00100513          	li	a0,1
    80001e70:	fffff097          	auipc	ra,0xfffff
    80001e74:	3e8080e7          	jalr	1000(ra) # 80001258 <mem_alloc>

    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80001e78:	06090c63          	beqz	s2,80001ef0 <_Z10mallocTestv+0x118>
    80001e7c:	00050b13          	mv	s6,a0
    80001e80:	06098863          	beqz	s3,80001ef0 <_Z10mallocTestv+0x118>
    80001e84:	060a0663          	beqz	s4,80001ef0 <_Z10mallocTestv+0x118>
    80001e88:	060a8463          	beqz	s5,80001ef0 <_Z10mallocTestv+0x118>
    80001e8c:	06050263          	beqz	a0,80001ef0 <_Z10mallocTestv+0x118>
        printString("not OK\n");
        return;
    }

    delete (uint64*)m1;
    80001e90:	00090513          	mv	a0,s2
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	51c080e7          	jalr	1308(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)m3;
    80001e9c:	000a0513          	mv	a0,s4
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	510080e7          	jalr	1296(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)m4;
    80001ea8:	000a8513          	mv	a0,s5
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	504080e7          	jalr	1284(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)m2;
    80001eb4:	00098513          	mv	a0,s3
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	4f8080e7          	jalr	1272(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)m5;
    80001ec0:	000b0513          	mv	a0,s6
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	4ec080e7          	jalr	1260(ra) # 800033b0 <_ZdlPv>
    delete o;
    80001ecc:	00048863          	beqz	s1,80001edc <_Z10mallocTestv+0x104>
    80001ed0:	00048513          	mv	a0,s1
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	4dc080e7          	jalr	1244(ra) # 800033b0 <_ZdlPv>

    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    80001edc:	00007517          	auipc	a0,0x7
    80001ee0:	22450513          	addi	a0,a0,548 # 80009100 <CONSOLE_STATUS+0xf0>
    80001ee4:	00004097          	auipc	ra,0x4
    80001ee8:	3f0080e7          	jalr	1008(ra) # 800062d4 <_Z11printStringPKc>
    80001eec:	0140006f          	j	80001f00 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	18850513          	addi	a0,a0,392 # 80009078 <CONSOLE_STATUS+0x68>
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	3dc080e7          	jalr	988(ra) # 800062d4 <_Z11printStringPKc>
}
    80001f00:	03813083          	ld	ra,56(sp)
    80001f04:	03013403          	ld	s0,48(sp)
    80001f08:	02813483          	ld	s1,40(sp)
    80001f0c:	02013903          	ld	s2,32(sp)
    80001f10:	01813983          	ld	s3,24(sp)
    80001f14:	01013a03          	ld	s4,16(sp)
    80001f18:	00813a83          	ld	s5,8(sp)
    80001f1c:	00013b03          	ld	s6,0(sp)
    80001f20:	04010113          	addi	sp,sp,64
    80001f24:	00008067          	ret

0000000080001f28 <_Z16mallocEverythingv>:

void mallocEverything()
{
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16

    delete (uint64*)m;
    //delete (uint64*)small_chunk;

    printString("SUCCESSFUL: Testing allocating whole address space\n\n");*/
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_Z17mallocGapFillTestv>:

void mallocGapFillTest()
{
    80001f40:	f6010113          	addi	sp,sp,-160
    80001f44:	08113c23          	sd	ra,152(sp)
    80001f48:	08813823          	sd	s0,144(sp)
    80001f4c:	08913423          	sd	s1,136(sp)
    80001f50:	09213023          	sd	s2,128(sp)
    80001f54:	07313c23          	sd	s3,120(sp)
    80001f58:	07413823          	sd	s4,112(sp)
    80001f5c:	07513423          	sd	s5,104(sp)
    80001f60:	07613023          	sd	s6,96(sp)
    80001f64:	05713c23          	sd	s7,88(sp)
    80001f68:	05813823          	sd	s8,80(sp)
    80001f6c:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80001f70:	00007517          	auipc	a0,0x7
    80001f74:	1c050513          	addi	a0,a0,448 # 80009130 <CONSOLE_STATUS+0x120>
    80001f78:	00004097          	auipc	ra,0x4
    80001f7c:	35c080e7          	jalr	860(ra) # 800062d4 <_Z11printStringPKc>

    const int N = 10;

    void *m[N];

    for(int i=0;i<N;i++)
    80001f80:	00000493          	li	s1,0
    80001f84:	00900793          	li	a5,9
    80001f88:	0697c863          	blt	a5,s1,80001ff8 <_Z17mallocGapFillTestv+0xb8>
    {
        m[i] = mem_alloc((i<<6)+1);
    80001f8c:	0064951b          	slliw	a0,s1,0x6
    80001f90:	0015051b          	addiw	a0,a0,1
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	2c4080e7          	jalr	708(ra) # 80001258 <mem_alloc>
    80001f9c:	00349793          	slli	a5,s1,0x3
    80001fa0:	fb040713          	addi	a4,s0,-80
    80001fa4:	00f707b3          	add	a5,a4,a5
    80001fa8:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80001fac:	00050663          	beqz	a0,80001fb8 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80001fb0:	0014849b          	addiw	s1,s1,1
    80001fb4:	fd1ff06f          	j	80001f84 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80001fb8:	00007517          	auipc	a0,0x7
    80001fbc:	0c050513          	addi	a0,a0,192 # 80009078 <CONSOLE_STATUS+0x68>
    80001fc0:	00004097          	auipc	ra,0x4
    80001fc4:	314080e7          	jalr	788(ra) # 800062d4 <_Z11printStringPKc>
    delete (uint64*)tmp3;
    delete (uint64*)tmp4;
    delete (uint64*)tmp5;

    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
}
    80001fc8:	09813083          	ld	ra,152(sp)
    80001fcc:	09013403          	ld	s0,144(sp)
    80001fd0:	08813483          	ld	s1,136(sp)
    80001fd4:	08013903          	ld	s2,128(sp)
    80001fd8:	07813983          	ld	s3,120(sp)
    80001fdc:	07013a03          	ld	s4,112(sp)
    80001fe0:	06813a83          	ld	s5,104(sp)
    80001fe4:	06013b03          	ld	s6,96(sp)
    80001fe8:	05813b83          	ld	s7,88(sp)
    80001fec:	05013c03          	ld	s8,80(sp)
    80001ff0:	0a010113          	addi	sp,sp,160
    80001ff4:	00008067          	ret
    delete (uint64*)m[2];
    80001ff8:	f7043503          	ld	a0,-144(s0)
    80001ffc:	00050663          	beqz	a0,80002008 <_Z17mallocGapFillTestv+0xc8>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	3b0080e7          	jalr	944(ra) # 800033b0 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    80002008:	00100513          	li	a0,1
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	24c080e7          	jalr	588(ra) # 80001258 <mem_alloc>
    80002014:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    80002018:	00100513          	li	a0,1
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	23c080e7          	jalr	572(ra) # 80001258 <mem_alloc>
    80002024:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002028:	00100513          	li	a0,1
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	22c080e7          	jalr	556(ra) # 80001258 <mem_alloc>
    80002034:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002038:	08048863          	beqz	s1,800020c8 <_Z17mallocGapFillTestv+0x188>
    8000203c:	08090663          	beqz	s2,800020c8 <_Z17mallocGapFillTestv+0x188>
    80002040:	08050463          	beqz	a0,800020c8 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002044:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002048:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    8000204c:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002050:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002054:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002058:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    8000205c:	0897f063          	bgeu	a5,s1,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002060:	06a4fe63          	bgeu	s1,a0,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002064:	0727fc63          	bgeu	a5,s2,800020dc <_Z17mallocGapFillTestv+0x19c>
    80002068:	06a97a63          	bgeu	s2,a0,800020dc <_Z17mallocGapFillTestv+0x19c>
    8000206c:	07367863          	bgeu	a2,s3,800020dc <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002070:	00050663          	beqz	a0,8000207c <_Z17mallocGapFillTestv+0x13c>
    80002074:	00001097          	auipc	ra,0x1
    80002078:	33c080e7          	jalr	828(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)m[4];
    8000207c:	f8043503          	ld	a0,-128(s0)
    80002080:	00050663          	beqz	a0,8000208c <_Z17mallocGapFillTestv+0x14c>
    80002084:	00001097          	auipc	ra,0x1
    80002088:	32c080e7          	jalr	812(ra) # 800033b0 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    8000208c:	28000513          	li	a0,640
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	1c8080e7          	jalr	456(ra) # 80001258 <mem_alloc>
    80002098:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    8000209c:	24000513          	li	a0,576
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	1b8080e7          	jalr	440(ra) # 80001258 <mem_alloc>
    800020a8:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    800020ac:	040c0263          	beqz	s8,800020f0 <_Z17mallocGapFillTestv+0x1b0>
    800020b0:	04050063          	beqz	a0,800020f0 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    800020b4:	04aa7863          	bgeu	s4,a0,80002104 <_Z17mallocGapFillTestv+0x1c4>
    800020b8:	04ab7663          	bgeu	s6,a0,80002104 <_Z17mallocGapFillTestv+0x1c4>
    800020bc:	055c7463          	bgeu	s8,s5,80002104 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    800020c0:	00000a13          	li	s4,0
    800020c4:	0580006f          	j	8000211c <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    800020c8:	00007517          	auipc	a0,0x7
    800020cc:	fb050513          	addi	a0,a0,-80 # 80009078 <CONSOLE_STATUS+0x68>
    800020d0:	00004097          	auipc	ra,0x4
    800020d4:	204080e7          	jalr	516(ra) # 800062d4 <_Z11printStringPKc>
        return;
    800020d8:	ef1ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	f9c50513          	addi	a0,a0,-100 # 80009078 <CONSOLE_STATUS+0x68>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	1f0080e7          	jalr	496(ra) # 800062d4 <_Z11printStringPKc>
        return;
    800020ec:	eddff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800020f0:	00007517          	auipc	a0,0x7
    800020f4:	f8850513          	addi	a0,a0,-120 # 80009078 <CONSOLE_STATUS+0x68>
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	1dc080e7          	jalr	476(ra) # 800062d4 <_Z11printStringPKc>
        return;
    80002100:	ec9ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	f7450513          	addi	a0,a0,-140 # 80009078 <CONSOLE_STATUS+0x68>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	1c8080e7          	jalr	456(ra) # 800062d4 <_Z11printStringPKc>
        return;
    80002114:	eb5ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    80002118:	001a0a1b          	addiw	s4,s4,1
    8000211c:	00900793          	li	a5,9
    80002120:	0347c263          	blt	a5,s4,80002144 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002124:	003a1793          	slli	a5,s4,0x3
    80002128:	fb040713          	addi	a4,s0,-80
    8000212c:	00f707b3          	add	a5,a4,a5
    80002130:	fb07b503          	ld	a0,-80(a5)
    80002134:	fe0502e3          	beqz	a0,80002118 <_Z17mallocGapFillTestv+0x1d8>
    80002138:	00001097          	auipc	ra,0x1
    8000213c:	278080e7          	jalr	632(ra) # 800033b0 <_ZdlPv>
    80002140:	fd9ff06f          	j	80002118 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002144:	00048513          	mv	a0,s1
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	268080e7          	jalr	616(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)tmp2;
    80002150:	00090513          	mv	a0,s2
    80002154:	00001097          	auipc	ra,0x1
    80002158:	25c080e7          	jalr	604(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)tmp3;
    8000215c:	00098513          	mv	a0,s3
    80002160:	00001097          	auipc	ra,0x1
    80002164:	250080e7          	jalr	592(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)tmp4;
    80002168:	000c0513          	mv	a0,s8
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	244080e7          	jalr	580(ra) # 800033b0 <_ZdlPv>
    delete (uint64*)tmp5;
    80002174:	000b8513          	mv	a0,s7
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	238080e7          	jalr	568(ra) # 800033b0 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002180:	00007517          	auipc	a0,0x7
    80002184:	ff850513          	addi	a0,a0,-8 # 80009178 <CONSOLE_STATUS+0x168>
    80002188:	00004097          	auipc	ra,0x4
    8000218c:	14c080e7          	jalr	332(ra) # 800062d4 <_Z11printStringPKc>
    80002190:	e39ff06f          	j	80001fc8 <_Z17mallocGapFillTestv+0x88>

0000000080002194 <_Z21memoryAllocationTestsv>:
{
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	d9c080e7          	jalr	-612(ra) # 80001f40 <_Z17mallocGapFillTestv>
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800021bc:	0000a717          	auipc	a4,0xa
    800021c0:	bb472703          	lw	a4,-1100(a4) # 8000bd70 <head>
    800021c4:	00a00793          	li	a5,10
    800021c8:	06f70c63          	beq	a4,a5,80002240 <_Z9consumerAPv+0x84>
{
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    800021e0:	0000a497          	auipc	s1,0xa
    800021e4:	b9048493          	addi	s1,s1,-1136 # 8000bd70 <head>
    800021e8:	0084b503          	ld	a0,8(s1)
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	1f4080e7          	jalr	500(ra) # 800013e0 <sem_wait>
        putc(buffer[head++]);
    800021f4:	0004a783          	lw	a5,0(s1)
    800021f8:	0017871b          	addiw	a4,a5,1
    800021fc:	00e4a023          	sw	a4,0(s1)
    80002200:	00f487b3          	add	a5,s1,a5
    80002204:	0107c503          	lbu	a0,16(a5)
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	330080e7          	jalr	816(ra) # 80001538 <putc>
        sem_signal(spaceAvailable);
    80002210:	0204b503          	ld	a0,32(s1)
    80002214:	fffff097          	auipc	ra,0xfffff
    80002218:	1f8080e7          	jalr	504(ra) # 8000140c <sem_signal>
    while(head!=10)
    8000221c:	0000a717          	auipc	a4,0xa
    80002220:	b5472703          	lw	a4,-1196(a4) # 8000bd70 <head>
    80002224:	00a00793          	li	a5,10
    80002228:	faf71ce3          	bne	a4,a5,800021e0 <_Z9consumerAPv+0x24>
    }
}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret
    80002240:	00008067          	ret

0000000080002244 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80002244:	0000a717          	auipc	a4,0xa
    80002248:	b5472703          	lw	a4,-1196(a4) # 8000bd98 <tail>
    8000224c:	00a00793          	li	a5,10
    80002250:	08f70063          	beq	a4,a5,800022d0 <_Z9producerAPv+0x8c>
{
    80002254:	fe010113          	addi	sp,sp,-32
    80002258:	00113c23          	sd	ra,24(sp)
    8000225c:	00813823          	sd	s0,16(sp)
    80002260:	00913423          	sd	s1,8(sp)
    80002264:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    80002268:	0000a497          	auipc	s1,0xa
    8000226c:	b0848493          	addi	s1,s1,-1272 # 8000bd70 <head>
    80002270:	0204b503          	ld	a0,32(s1)
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	16c080e7          	jalr	364(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    8000227c:	0284a783          	lw	a5,40(s1)
    80002280:	0000a717          	auipc	a4,0xa
    80002284:	83070713          	addi	a4,a4,-2000 # 8000bab0 <string>
    80002288:	00f70733          	add	a4,a4,a5
    8000228c:	00074683          	lbu	a3,0(a4)
    80002290:	00f48733          	add	a4,s1,a5
    80002294:	00d70823          	sb	a3,16(a4)
        tail++;
    80002298:	0017879b          	addiw	a5,a5,1
    8000229c:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800022a0:	0084b503          	ld	a0,8(s1)
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	168080e7          	jalr	360(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800022ac:	0000a717          	auipc	a4,0xa
    800022b0:	aec72703          	lw	a4,-1300(a4) # 8000bd98 <tail>
    800022b4:	00a00793          	li	a5,10
    800022b8:	faf718e3          	bne	a4,a5,80002268 <_Z9producerAPv+0x24>
    }
}
    800022bc:	01813083          	ld	ra,24(sp)
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	00813483          	ld	s1,8(sp)
    800022c8:	02010113          	addi	sp,sp,32
    800022cc:	00008067          	ret
    800022d0:	00008067          	ret

00000000800022d4 <_Z8semTest1v>:

void semTest1()
{
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16

    thread_create(&threadB, consumerA, nullptr);

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();*/
}
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_Z12consoleTest1v>:

void consoleTest1()
{
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002300:	00000493          	li	s1,0
    80002304:	06300793          	li	a5,99
    80002308:	0097ca63          	blt	a5,s1,8000231c <_Z12consoleTest1v+0x30>
    {
        getc();
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	204080e7          	jalr	516(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    80002314:	0014849b          	addiw	s1,s1,1
    80002318:	fedff06f          	j	80002304 <_Z12consoleTest1v+0x18>
    }
}
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <_Z12consoleTestsv>:

void consoleTests()
{
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002340:	00000097          	auipc	ra,0x0
    80002344:	fac080e7          	jalr	-84(ra) # 800022ec <_Z12consoleTest1v>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_Z7myTestsv>:
{
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00113423          	sd	ra,8(sp)
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	01010413          	addi	s0,sp,16
    consoleTests();
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	fc8080e7          	jalr	-56(ra) # 80002330 <_Z12consoleTestsv>
}
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    8000238c:	10002573          	csrr	a0,sstatus
}
    80002390:	00813403          	ld	s0,8(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_Z15changeModeTestsv>:

void changeModeTests()
{
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    changeModeTest1();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	fd4080e7          	jalr	-44(ra) # 80002380 <_Z15changeModeTest1v>
}
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00009797          	auipc	a5,0x9
    80002408:	6cc78793          	addi	a5,a5,1740 # 8000bad0 <_ZTV14PeriodicThread+0x10>
    8000240c:	00f53023          	sd	a5,0(a0)
    80002410:	00001097          	auipc	ra,0x1
    80002414:	f08080e7          	jalr	-248(ra) # 80003318 <_ZN6ThreadD1Ev>
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN14PeriodicThreadD0Ev>:
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00113c23          	sd	ra,24(sp)
    80002430:	00813823          	sd	s0,16(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	02010413          	addi	s0,sp,32
    8000243c:	00050493          	mv	s1,a0
    80002440:	00009797          	auipc	a5,0x9
    80002444:	69078793          	addi	a5,a5,1680 # 8000bad0 <_ZTV14PeriodicThread+0x10>
    80002448:	00f53023          	sd	a5,0(a0)
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	ecc080e7          	jalr	-308(ra) # 80003318 <_ZN6ThreadD1Ev>
    80002454:	00048513          	mv	a0,s1
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	f58080e7          	jalr	-168(ra) # 800033b0 <_ZdlPv>
    80002460:	01813083          	ld	ra,24(sp)
    80002464:	01013403          	ld	s0,16(sp)
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	02010113          	addi	sp,sp,32
    80002470:	00008067          	ret

0000000080002474 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002474:	ff010113          	addi	sp,sp,-16
    80002478:	00113423          	sd	ra,8(sp)
    8000247c:	00813023          	sd	s0,0(sp)
    80002480:	01010413          	addi	s0,sp,16
    80002484:	00009797          	auipc	a5,0x9
    80002488:	64c78793          	addi	a5,a5,1612 # 8000bad0 <_ZTV14PeriodicThread+0x10>
    8000248c:	00f53023          	sd	a5,0(a0)
    80002490:	00001097          	auipc	ra,0x1
    80002494:	e88080e7          	jalr	-376(ra) # 80003318 <_ZN6ThreadD1Ev>
    80002498:	00813083          	ld	ra,8(sp)
    8000249c:	00013403          	ld	s0,0(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <_ZN12TestPeriodicD0Ev>:
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00050493          	mv	s1,a0
    800024c0:	00009797          	auipc	a5,0x9
    800024c4:	61078793          	addi	a5,a5,1552 # 8000bad0 <_ZTV14PeriodicThread+0x10>
    800024c8:	00f53023          	sd	a5,0(a0)
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	e4c080e7          	jalr	-436(ra) # 80003318 <_ZN6ThreadD1Ev>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	ed8080e7          	jalr	-296(ra) # 800033b0 <_ZdlPv>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    80002504:	00001097          	auipc	ra,0x1
    80002508:	2e0080e7          	jalr	736(ra) # 800037e4 <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    8000250c:	0000a797          	auipc	a5,0xa
    80002510:	8947b783          	ld	a5,-1900(a5) # 8000bda0 <_ZN3PCB7runningE>
    80002514:	0287b703          	ld	a4,40(a5)
    80002518:	0307b503          	ld	a0,48(a5)
    8000251c:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e34080e7          	jalr	-460(ra) # 80001354 <thread_exit>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00813423          	sd	s0,8(sp)
    80002540:	01010413          	addi	s0,sp,16
    })
    80002544:	00050023          	sb	zero,0(a0)
    80002548:	00e53c23          	sd	a4,24(a0)
    8000254c:	02053023          	sd	zero,32(a0)
    80002550:	02b53423          	sd	a1,40(a0)
    80002554:	02c53823          	sd	a2,48(a0)
    80002558:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000255c:	000017b7          	lui	a5,0x1
    80002560:	00f686b3          	add	a3,a3,a5
    })
    80002564:	04d53423          	sd	a3,72(a0)
    80002568:	00000797          	auipc	a5,0x0
    8000256c:	f8c78793          	addi	a5,a5,-116 # 800024f4 <_ZN3PCB6runnerEv>
    80002570:	04f53823          	sd	a5,80(a0)
    80002574:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002578:	00053423          	sd	zero,8(a0)
}
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <_ZN3PCB5sleepEm>:
{
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
}
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN3PCB5startEv>:
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800025b0:	00001097          	auipc	ra,0x1
    800025b4:	c14080e7          	jalr	-1004(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00113c23          	sd	ra,24(sp)
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	01213023          	sd	s2,0(sp)
    800025dc:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    800025e0:	00009497          	auipc	s1,0x9
    800025e4:	7c04b483          	ld	s1,1984(s1) # 8000bda0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800025e8:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800025ec:	00100793          	li	a5,1
    800025f0:	04f70a63          	beq	a4,a5,80002644 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	c24080e7          	jalr	-988(ra) # 80003218 <_ZN9Scheduler3getEv>
    800025fc:	00009917          	auipc	s2,0x9
    80002600:	7a490913          	addi	s2,s2,1956 # 8000bda0 <_ZN3PCB7runningE>
    80002604:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002608:	00100793          	li	a5,1
    8000260c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002610:	00001097          	auipc	ra,0x1
    80002614:	3a8080e7          	jalr	936(ra) # 800039b8 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002618:	00093583          	ld	a1,0(s2)
    8000261c:	04858593          	addi	a1,a1,72
    80002620:	04848513          	addi	a0,s1,72
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	c14080e7          	jalr	-1004(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00013903          	ld	s2,0(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret
        Scheduler::put(old);
    80002644:	00048513          	mv	a0,s1
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	b7c080e7          	jalr	-1156(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
    80002650:	fa5ff06f          	j	800025f4 <_ZN3PCB8dispatchEv+0x2c>

0000000080002654 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002664:	00002097          	auipc	ra,0x2
    80002668:	a38080e7          	jalr	-1480(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000268c:	00002097          	auipc	ra,0x2
    80002690:	a74080e7          	jalr	-1420(ra) # 80004100 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002694:	00813083          	ld	ra,8(sp)
    80002698:	00013403          	ld	s0,0(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    800026b4:	03853503          	ld	a0,56(a0)
    800026b8:	00002097          	auipc	ra,0x2
    800026bc:	a48080e7          	jalr	-1464(ra) # 80004100 <_ZN15MemoryAllocator5kfreeEPv>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800026d0:	fd010113          	addi	sp,sp,-48
    800026d4:	02113423          	sd	ra,40(sp)
    800026d8:	02813023          	sd	s0,32(sp)
    800026dc:	00913c23          	sd	s1,24(sp)
    800026e0:	01213823          	sd	s2,16(sp)
    800026e4:	01313423          	sd	s3,8(sp)
    800026e8:	01413023          	sd	s4,0(sp)
    800026ec:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800026f0:	06000513          	li	a0,96
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	f60080e7          	jalr	-160(ra) # 80002654 <_ZN3PCBnwEm>
    800026fc:	00050493          	mv	s1,a0
    80002700:	00000713          	li	a4,0
    80002704:	00000693          	li	a3,0
    80002708:	00000613          	li	a2,0
    8000270c:	00000593          	li	a1,0
    80002710:	00000097          	auipc	ra,0x0
    80002714:	e28080e7          	jalr	-472(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002718:	00048513          	mv	a0,s1
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	e84080e7          	jalr	-380(ra) # 800025a0 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002724:	00100793          	li	a5,1
    80002728:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	aec080e7          	jalr	-1300(ra) # 80003218 <_ZN9Scheduler3getEv>
    80002734:	00009917          	auipc	s2,0x9
    80002738:	66c90913          	addi	s2,s2,1644 # 8000bda0 <_ZN3PCB7runningE>
    8000273c:	00a93023          	sd	a0,0(s2)
    80002740:	00100a13          	li	s4,1
    80002744:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002748:	00001537          	lui	a0,0x1
    8000274c:	00002097          	auipc	ra,0x2
    80002750:	950080e7          	jalr	-1712(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
    80002754:	00050993          	mv	s3,a0
    80002758:	06000513          	li	a0,96
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	ef8080e7          	jalr	-264(ra) # 80002654 <_ZN3PCBnwEm>
    80002764:	00050493          	mv	s1,a0
    80002768:	00200713          	li	a4,2
    8000276c:	00098693          	mv	a3,s3
    80002770:	00000613          	li	a2,0
    80002774:	00009597          	auipc	a1,0x9
    80002778:	57c5b583          	ld	a1,1404(a1) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	dbc080e7          	jalr	-580(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002784:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002788:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    8000278c:	00893503          	ld	a0,8(s2)
    80002790:	00000097          	auipc	ra,0x0
    80002794:	e10080e7          	jalr	-496(ra) # 800025a0 <_ZN3PCB5startEv>
}
    80002798:	02813083          	ld	ra,40(sp)
    8000279c:	02013403          	ld	s0,32(sp)
    800027a0:	01813483          	ld	s1,24(sp)
    800027a4:	01013903          	ld	s2,16(sp)
    800027a8:	00813983          	ld	s3,8(sp)
    800027ac:	00013a03          	ld	s4,0(sp)
    800027b0:	03010113          	addi	sp,sp,48
    800027b4:	00008067          	ret

00000000800027b8 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00813423          	sd	s0,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800027c4:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800027c8:	ffd50513          	addi	a0,a0,-3
}
    800027cc:	00153513          	seqz	a0,a0
    800027d0:	00813403          	ld	s0,8(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00113423          	sd	ra,8(sp)
    800027e4:	00813023          	sd	s0,0(sp)
    800027e8:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    800027ec:	00009797          	auipc	a5,0x9
    800027f0:	5b478793          	addi	a5,a5,1460 # 8000bda0 <_ZN3PCB7runningE>
    800027f4:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    800027f8:	0007b783          	ld	a5,0(a5)
    800027fc:	00300713          	li	a4,3
    80002800:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002804:	00000097          	auipc	ra,0x0
    80002808:	dc4080e7          	jalr	-572(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    8000280c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002810:	00001097          	auipc	ra,0x1
    80002814:	170080e7          	jalr	368(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret

0000000080002828 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00113423          	sd	ra,8(sp)
    80002830:	00813023          	sd	s0,0(sp)
    80002834:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002838:	00009797          	auipc	a5,0x9
    8000283c:	5607bc23          	sd	zero,1400(a5) # 8000bdb0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002840:	00000097          	auipc	ra,0x0
    80002844:	d88080e7          	jalr	-632(ra) # 800025c8 <_ZN3PCB8dispatchEv>
}
    80002848:	00813083          	ld	ra,8(sp)
    8000284c:	00013403          	ld	s0,0(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00113423          	sd	ra,8(sp)
    80002860:	00813023          	sd	s0,0(sp)
    80002864:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002868:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    8000286c:	00009717          	auipc	a4,0x9
    80002870:	53470713          	addi	a4,a4,1332 # 8000bda0 <_ZN3PCB7runningE>
    80002874:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002878:	00073703          	ld	a4,0(a4)
    8000287c:	00009697          	auipc	a3,0x9
    80002880:	46c6b683          	ld	a3,1132(a3) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002884:	0006b683          	ld	a3,0(a3)
    80002888:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    8000288c:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002890:	00000097          	auipc	ra,0x0
    80002894:	7b8080e7          	jalr	1976(ra) # 80003048 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	d30080e7          	jalr	-720(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800028a0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	0dc080e7          	jalr	220(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800028bc:	fd010113          	addi	sp,sp,-48
    800028c0:	02113423          	sd	ra,40(sp)
    800028c4:	02813023          	sd	s0,32(sp)
    800028c8:	00913c23          	sd	s1,24(sp)
    800028cc:	01213823          	sd	s2,16(sp)
    800028d0:	01313423          	sd	s3,8(sp)
    800028d4:	01413023          	sd	s4,0(sp)
    800028d8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028dc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028e0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028e4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800028e8:	06000513          	li	a0,96
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	d68080e7          	jalr	-664(ra) # 80002654 <_ZN3PCBnwEm>
    800028f4:	00050493          	mv	s1,a0
    800028f8:	00200713          	li	a4,2
    800028fc:	00009697          	auipc	a3,0x9
    80002900:	4bc6b683          	ld	a3,1212(a3) # 8000bdb8 <_ZN3PCB10savedRegA4E>
    80002904:	000a0613          	mv	a2,s4
    80002908:	00098593          	mv	a1,s3
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	c2c080e7          	jalr	-980(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002914:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002918:	02048e63          	beqz	s1,80002954 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    8000291c:	00048513          	mv	a0,s1
    80002920:	00000097          	auipc	ra,0x0
    80002924:	c80080e7          	jalr	-896(ra) # 800025a0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002928:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	054080e7          	jalr	84(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002934:	02813083          	ld	ra,40(sp)
    80002938:	02013403          	ld	s0,32(sp)
    8000293c:	01813483          	ld	s1,24(sp)
    80002940:	01013903          	ld	s2,16(sp)
    80002944:	00813983          	ld	s3,8(sp)
    80002948:	00013a03          	ld	s4,0(sp)
    8000294c:	03010113          	addi	sp,sp,48
    80002950:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002954:	fff00513          	li	a0,-1
    80002958:	fd5ff06f          	j	8000292c <_ZN3PCB19threadCreateHandlerEv+0x70>

000000008000295c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000296c:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002970:	02050463          	beqz	a0,80002998 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002974:	00000097          	auipc	ra,0x0
    80002978:	c2c080e7          	jalr	-980(ra) # 800025a0 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    8000297c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002980:	00001097          	auipc	ra,0x1
    80002984:	000080e7          	jalr	ra # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002998:	fff00513          	li	a0,-1
    8000299c:	fe5ff06f          	j	80002980 <_ZN3PCB18threadStartHandlerEv+0x24>

00000000800029a0 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    800029a0:	fd010113          	addi	sp,sp,-48
    800029a4:	02113423          	sd	ra,40(sp)
    800029a8:	02813023          	sd	s0,32(sp)
    800029ac:	00913c23          	sd	s1,24(sp)
    800029b0:	01213823          	sd	s2,16(sp)
    800029b4:	01313423          	sd	s3,8(sp)
    800029b8:	01413023          	sd	s4,0(sp)
    800029bc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800029c0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800029c4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800029c8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800029cc:	06000513          	li	a0,96
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	c84080e7          	jalr	-892(ra) # 80002654 <_ZN3PCBnwEm>
    800029d8:	00050493          	mv	s1,a0
    800029dc:	00200713          	li	a4,2
    800029e0:	00009697          	auipc	a3,0x9
    800029e4:	3d86b683          	ld	a3,984(a3) # 8000bdb8 <_ZN3PCB10savedRegA4E>
    800029e8:	000a0613          	mv	a2,s4
    800029ec:	00098593          	mv	a1,s3
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	b48080e7          	jalr	-1208(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029f8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029fc:	02048863          	beqz	s1,80002a2c <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002a00:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	f7c080e7          	jalr	-132(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a0c:	02813083          	ld	ra,40(sp)
    80002a10:	02013403          	ld	s0,32(sp)
    80002a14:	01813483          	ld	s1,24(sp)
    80002a18:	01013903          	ld	s2,16(sp)
    80002a1c:	00813983          	ld	s3,8(sp)
    80002a20:	00013a03          	ld	s4,0(sp)
    80002a24:	03010113          	addi	sp,sp,48
    80002a28:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a2c:	fff00513          	li	a0,-1
    80002a30:	fd5ff06f          	j	80002a04 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002a34 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002a34:	fe010113          	addi	sp,sp,-32
    80002a38:	00113c23          	sd	ra,24(sp)
    80002a3c:	00813823          	sd	s0,16(sp)
    80002a40:	00913423          	sd	s1,8(sp)
    80002a44:	01213023          	sd	s2,0(sp)
    80002a48:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002a4c:	01800513          	li	a0,24
    80002a50:	00002097          	auipc	ra,0x2
    80002a54:	978080e7          	jalr	-1672(ra) # 800043c8 <_ZN10KSemaphorenwEm>
    80002a58:	00050493          	mv	s1,a0
    80002a5c:	00000593          	li	a1,0
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	700080e7          	jalr	1792(ra) # 80004160 <_ZN10KSemaphoreC1Ei>
    80002a68:	00009797          	auipc	a5,0x9
    80002a6c:	3497bc23          	sd	s1,856(a5) # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002a70:	01800513          	li	a0,24
    80002a74:	00002097          	auipc	ra,0x2
    80002a78:	954080e7          	jalr	-1708(ra) # 800043c8 <_ZN10KSemaphorenwEm>
    80002a7c:	00050493          	mv	s1,a0
    80002a80:	00000593          	li	a1,0
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	6dc080e7          	jalr	1756(ra) # 80004160 <_ZN10KSemaphoreC1Ei>
    80002a8c:	00009797          	auipc	a5,0x9
    80002a90:	3297be23          	sd	s1,828(a5) # 8000bdc8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret
    80002aac:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002ab0:	00048513          	mv	a0,s1
    80002ab4:	00002097          	auipc	ra,0x2
    80002ab8:	9b4080e7          	jalr	-1612(ra) # 80004468 <_ZN10KSemaphoredlEPv>
    80002abc:	00090513          	mv	a0,s2
    80002ac0:	0000e097          	auipc	ra,0xe
    80002ac4:	478080e7          	jalr	1144(ra) # 80010f38 <_Unwind_Resume>
    80002ac8:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002acc:	00048513          	mv	a0,s1
    80002ad0:	00002097          	auipc	ra,0x2
    80002ad4:	998080e7          	jalr	-1640(ra) # 80004468 <_ZN10KSemaphoredlEPv>
    80002ad8:	00090513          	mv	a0,s2
    80002adc:	0000e097          	auipc	ra,0xe
    80002ae0:	45c080e7          	jalr	1116(ra) # 80010f38 <_Unwind_Resume>

0000000080002ae4 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002ae4:	00009697          	auipc	a3,0x9
    80002ae8:	2dc68693          	addi	a3,a3,732 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002aec:	0106b603          	ld	a2,16(a3)
    80002af0:	00160793          	addi	a5,a2,1
    80002af4:	00002737          	lui	a4,0x2
    80002af8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002afc:	00e7f7b3          	and	a5,a5,a4
    80002b00:	0186b703          	ld	a4,24(a3)
    80002b04:	04e78263          	beq	a5,a4,80002b48 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00113423          	sd	ra,8(sp)
    80002b10:	00813023          	sd	s0,0(sp)
    80002b14:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002b18:	0000b717          	auipc	a4,0xb
    80002b1c:	2e870713          	addi	a4,a4,744 # 8000de00 <_ZN8KConsole11inputBufferE>
    80002b20:	00c70633          	add	a2,a4,a2
    80002b24:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002b28:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002b2c:	0006b503          	ld	a0,0(a3)
    80002b30:	00002097          	auipc	ra,0x2
    80002b34:	850080e7          	jalr	-1968(ra) # 80004380 <_ZN10KSemaphore6signalEv>
}
    80002b38:	00813083          	ld	ra,8(sp)
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00008067          	ret
    80002b48:	00008067          	ret

0000000080002b4c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002b60:	00009497          	auipc	s1,0x9
    80002b64:	26048493          	addi	s1,s1,608 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002b68:	0004b503          	ld	a0,0(s1)
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	69c080e7          	jalr	1692(ra) # 80004208 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002b74:	0184b783          	ld	a5,24(s1)
    80002b78:	0104b703          	ld	a4,16(s1)
    80002b7c:	04e78063          	beq	a5,a4,80002bbc <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002b80:	0000b717          	auipc	a4,0xb
    80002b84:	28070713          	addi	a4,a4,640 # 8000de00 <_ZN8KConsole11inputBufferE>
    80002b88:	00f70733          	add	a4,a4,a5
    80002b8c:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002b90:	00178793          	addi	a5,a5,1
    80002b94:	00002737          	lui	a4,0x2
    80002b98:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002b9c:	00e7f7b3          	and	a5,a5,a4
    80002ba0:	00009717          	auipc	a4,0x9
    80002ba4:	22f73c23          	sd	a5,568(a4) # 8000bdd8 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002ba8:	01813083          	ld	ra,24(sp)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	00813483          	ld	s1,8(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret
        return -1;
    80002bbc:	0ff00513          	li	a0,255
    80002bc0:	fe9ff06f          	j	80002ba8 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002bc4 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002bc4:	00009697          	auipc	a3,0x9
    80002bc8:	1fc68693          	addi	a3,a3,508 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002bcc:	0206b603          	ld	a2,32(a3)
    80002bd0:	00160793          	addi	a5,a2,1
    80002bd4:	00002737          	lui	a4,0x2
    80002bd8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002bdc:	00e7f7b3          	and	a5,a5,a4
    80002be0:	0286b703          	ld	a4,40(a3)
    80002be4:	04e78a63          	beq	a5,a4,80002c38 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00113423          	sd	ra,8(sp)
    80002bf0:	00813023          	sd	s0,0(sp)
    80002bf4:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002bf8:	00068713          	mv	a4,a3
    80002bfc:	0306b683          	ld	a3,48(a3)
    80002c00:	00168693          	addi	a3,a3,1
    80002c04:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002c08:	00009697          	auipc	a3,0x9
    80002c0c:	1f868693          	addi	a3,a3,504 # 8000be00 <_ZN8KConsole12outputBufferE>
    80002c10:	00c68633          	add	a2,a3,a2
    80002c14:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002c18:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002c1c:	00873503          	ld	a0,8(a4)
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	760080e7          	jalr	1888(ra) # 80004380 <_ZN10KSemaphore6signalEv>
}
    80002c28:	00813083          	ld	ra,8(sp)
    80002c2c:	00013403          	ld	s0,0(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret
    80002c38:	00008067          	ret

0000000080002c3c <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002c3c:	00009797          	auipc	a5,0x9
    80002c40:	0747b783          	ld	a5,116(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c44:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002c48:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002c4c:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002c50:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002c54:	0017f793          	andi	a5,a5,1
    80002c58:	08078063          	beqz	a5,80002cd8 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00113c23          	sd	ra,24(sp)
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002c70:	00009797          	auipc	a5,0x9
    80002c74:	0607b783          	ld	a5,96(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c78:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002c7c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002c80:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002c84:	00058493          	mv	s1,a1
    80002c88:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	e54080e7          	jalr	-428(ra) # 80002ae4 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	f28080e7          	jalr	-216(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002ca4:	00009797          	auipc	a5,0x9
    80002ca8:	00c7b783          	ld	a5,12(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002cac:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002cb0:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002cb4:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002cb8:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002cbc:	0017f793          	andi	a5,a5,1
    80002cc0:	fa0798e3          	bnez	a5,80002c70 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002cc4:	01813083          	ld	ra,24(sp)
    80002cc8:	01013403          	ld	s0,16(sp)
    80002ccc:	00813483          	ld	s1,8(sp)
    80002cd0:	02010113          	addi	sp,sp,32
    80002cd4:	00008067          	ret
    80002cd8:	00008067          	ret

0000000080002cdc <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002cdc:	fe010113          	addi	sp,sp,-32
    80002ce0:	00113c23          	sd	ra,24(sp)
    80002ce4:	00813823          	sd	s0,16(sp)
    80002ce8:	00913423          	sd	s1,8(sp)
    80002cec:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002cf0:	00009497          	auipc	s1,0x9
    80002cf4:	0d048493          	addi	s1,s1,208 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002cf8:	0084b503          	ld	a0,8(s1)
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	50c080e7          	jalr	1292(ra) # 80004208 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80002d04:	0284b783          	ld	a5,40(s1)
    80002d08:	0204b703          	ld	a4,32(s1)
    80002d0c:	04e78063          	beq	a5,a4,80002d4c <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80002d10:	00009717          	auipc	a4,0x9
    80002d14:	0f070713          	addi	a4,a4,240 # 8000be00 <_ZN8KConsole12outputBufferE>
    80002d18:	00f70733          	add	a4,a4,a5
    80002d1c:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80002d20:	00178793          	addi	a5,a5,1
    80002d24:	00002737          	lui	a4,0x2
    80002d28:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002d2c:	00e7f7b3          	and	a5,a5,a4
    80002d30:	00009717          	auipc	a4,0x9
    80002d34:	0af73c23          	sd	a5,184(a4) # 8000bde8 <_ZN8KConsole10outputHeadE>

    return c;
}
    80002d38:	01813083          	ld	ra,24(sp)
    80002d3c:	01013403          	ld	s0,16(sp)
    80002d40:	00813483          	ld	s1,8(sp)
    80002d44:	02010113          	addi	sp,sp,32
    80002d48:	00008067          	ret
        return -1;
    80002d4c:	0ff00513          	li	a0,255
    80002d50:	fe9ff06f          	j	80002d38 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080002d54 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80002d54:	ff010113          	addi	sp,sp,-16
    80002d58:	00113423          	sd	ra,8(sp)
    80002d5c:	00813023          	sd	s0,0(sp)
    80002d60:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002d64:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002d68:	0ff57513          	andi	a0,a0,255
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	e58080e7          	jalr	-424(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
}
    80002d74:	00813083          	ld	ra,8(sp)
    80002d78:	00013403          	ld	s0,0(sp)
    80002d7c:	01010113          	addi	sp,sp,16
    80002d80:	00008067          	ret

0000000080002d84 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	00813823          	sd	s0,16(sp)
    80002d90:	00913423          	sd	s1,8(sp)
    80002d94:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002d98:	00009717          	auipc	a4,0x9
    80002d9c:	02870713          	addi	a4,a4,40 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002da0:	03873783          	ld	a5,56(a4)
    80002da4:	00178793          	addi	a5,a5,1
    80002da8:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	da0080e7          	jalr	-608(ra) # 80002b4c <_ZN8KConsole17getCharacterInputEv>
    80002db4:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002db8:	01b00793          	li	a5,27
    80002dbc:	02f51663          	bne	a0,a5,80002de8 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002dc0:	00d00793          	li	a5,13
    80002dc4:	02f48863          	beq	s1,a5,80002df4 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002dc8:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	bb4080e7          	jalr	-1100(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	02010113          	addi	sp,sp,32
    80002de4:	00008067          	ret
        putCharacterOutput(ch);
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	ddc080e7          	jalr	-548(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
    80002df0:	fd1ff06f          	j	80002dc0 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002df4:	00d00513          	li	a0,13
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	dcc080e7          	jalr	-564(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80002e00:	00a00513          	li	a0,10
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	dc0080e7          	jalr	-576(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
    80002e0c:	fbdff06f          	j	80002dc8 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080002e10 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00813423          	sd	s0,8(sp)
    80002e18:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80002e1c:	00009517          	auipc	a0,0x9
    80002e20:	fd453503          	ld	a0,-44(a0) # 8000bdf0 <_ZN8KConsole11pendingPutcE>
    80002e24:	00153513          	seqz	a0,a0
    80002e28:	00813403          	ld	s0,8(sp)
    80002e2c:	01010113          	addi	sp,sp,16
    80002e30:	00008067          	ret

0000000080002e34 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80002e34:	fe010113          	addi	sp,sp,-32
    80002e38:	00113c23          	sd	ra,24(sp)
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	02010413          	addi	s0,sp,32
    80002e44:	0180006f          	j	80002e5c <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	50c080e7          	jalr	1292(ra) # 80001354 <thread_exit>
    80002e50:	0340006f          	j	80002e84 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	4e0080e7          	jalr	1248(ra) # 80001334 <thread_dispatch>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80002e5c:	00009797          	auipc	a5,0x9
    80002e60:	ea47b783          	ld	a5,-348(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002e64:	0007c783          	lbu	a5,0(a5)
    80002e68:	00078e63          	beqz	a5,80002e84 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	fa4080e7          	jalr	-92(ra) # 80002e10 <_ZN8KConsole17outputBufferEmptyEv>
    80002e74:	00050863          	beqz	a0,80002e84 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002e78:	00009797          	auipc	a5,0x9
    80002e7c:	f807b783          	ld	a5,-128(a5) # 8000bdf8 <_ZN8KConsole11pendingGetcE>
    80002e80:	fc0784e3          	beqz	a5,80002e48 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 x = CONSOLE_STATUS;
    80002e84:	00009797          	auipc	a5,0x9
    80002e88:	e2c7b783          	ld	a5,-468(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e8c:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002e90:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80002e94:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002e98:	00058793          	mv	a5,a1
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002e9c:	0207f793          	andi	a5,a5,32
    80002ea0:	fa078ae3          	beqz	a5,80002e54 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80002ea4:	00009797          	auipc	a5,0x9
    80002ea8:	f4c7b783          	ld	a5,-180(a5) # 8000bdf0 <_ZN8KConsole11pendingPutcE>
    80002eac:	fa0784e3          	beqz	a5,80002e54 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	6ac080e7          	jalr	1708(ra) # 8000155c <sysCallGetCharOutput>
    80002eb8:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002ebc:	00009717          	auipc	a4,0x9
    80002ec0:	f0470713          	addi	a4,a4,-252 # 8000bdc0 <_ZN8KConsole18hasCharactersInputE>
    80002ec4:	03073783          	ld	a5,48(a4)
    80002ec8:	fff78793          	addi	a5,a5,-1
    80002ecc:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    80002ed0:	00009797          	auipc	a5,0x9
    80002ed4:	dd87b783          	ld	a5,-552(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ed8:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80002edc:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80002ee0:	fef44783          	lbu	a5,-17(s0)
    80002ee4:	0ff7f793          	andi	a5,a5,255
    80002ee8:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80002eec:	00b50023          	sb	a1,0(a0)
    80002ef0:	f6dff06f          	j	80002e5c <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002ef4 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	dd8080e7          	jalr	-552(ra) # 80002cdc <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002f0c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80002f10:	00001097          	auipc	ra,0x1
    80002f14:	a70080e7          	jalr	-1424(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002f18:	00813083          	ld	ra,8(sp)
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	02010413          	addi	s0,sp,32
    80002f3c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002f40:	0004c503          	lbu	a0,0(s1)
    80002f44:	00050a63          	beqz	a0,80002f58 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	c7c080e7          	jalr	-900(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80002f50:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f54:	fedff06f          	j	80002f40 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80002f58:	01813083          	ld	ra,24(sp)
    80002f5c:	01013403          	ld	s0,16(sp)
    80002f60:	00813483          	ld	s1,8(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret

0000000080002f6c <_ZN8KConsole8printIntEiii>:

void KConsole::printInt(int xx, int base, int sgn)
{
    80002f6c:	fb010113          	addi	sp,sp,-80
    80002f70:	04113423          	sd	ra,72(sp)
    80002f74:	04813023          	sd	s0,64(sp)
    80002f78:	02913c23          	sd	s1,56(sp)
    80002f7c:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80002f80:	00006797          	auipc	a5,0x6
    80002f84:	25078793          	addi	a5,a5,592 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002f88:	0007b703          	ld	a4,0(a5)
    80002f8c:	fce43423          	sd	a4,-56(s0)
    80002f90:	0087b703          	ld	a4,8(a5)
    80002f94:	fce43823          	sd	a4,-48(s0)
    80002f98:	0107c783          	lbu	a5,16(a5)
    80002f9c:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002fa0:	00060463          	beqz	a2,80002fa8 <_ZN8KConsole8printIntEiii+0x3c>
    80002fa4:	08054263          	bltz	a0,80003028 <_ZN8KConsole8printIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002fa8:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002fac:	00000813          	li	a6,0
    }

    i = 0;
    80002fb0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002fb4:	0005871b          	sext.w	a4,a1
    80002fb8:	02b577bb          	remuw	a5,a0,a1
    80002fbc:	00048693          	mv	a3,s1
    80002fc0:	0014849b          	addiw	s1,s1,1
    80002fc4:	02079793          	slli	a5,a5,0x20
    80002fc8:	0207d793          	srli	a5,a5,0x20
    80002fcc:	fe040613          	addi	a2,s0,-32
    80002fd0:	00f607b3          	add	a5,a2,a5
    80002fd4:	fe87c603          	lbu	a2,-24(a5)
    80002fd8:	fe040793          	addi	a5,s0,-32
    80002fdc:	00d787b3          	add	a5,a5,a3
    80002fe0:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    80002fe4:	0005061b          	sext.w	a2,a0
    80002fe8:	02b5553b          	divuw	a0,a0,a1
    80002fec:	fce674e3          	bgeu	a2,a4,80002fb4 <_ZN8KConsole8printIntEiii+0x48>
    if(neg)
    80002ff0:	00080c63          	beqz	a6,80003008 <_ZN8KConsole8printIntEiii+0x9c>
        buf[i++] = '-';
    80002ff4:	fe040793          	addi	a5,s0,-32
    80002ff8:	009784b3          	add	s1,a5,s1
    80002ffc:	02d00793          	li	a5,45
    80003000:	fcf48c23          	sb	a5,-40(s1)
    80003004:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80003008:	fff4849b          	addiw	s1,s1,-1
    8000300c:	0204c463          	bltz	s1,80003034 <_ZN8KConsole8printIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    80003010:	fe040793          	addi	a5,s0,-32
    80003014:	009787b3          	add	a5,a5,s1
    80003018:	fd87c503          	lbu	a0,-40(a5)
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	ba8080e7          	jalr	-1112(ra) # 80002bc4 <_ZN8KConsole18putCharacterOutputEc>
    80003024:	fe5ff06f          	j	80003008 <_ZN8KConsole8printIntEiii+0x9c>
        x = -xx;
    80003028:	40a0053b          	negw	a0,a0
        neg = 1;
    8000302c:	00100813          	li	a6,1
        x = -xx;
    80003030:	f81ff06f          	j	80002fb0 <_ZN8KConsole8printIntEiii+0x44>
}
    80003034:	04813083          	ld	ra,72(sp)
    80003038:	04013403          	ld	s0,64(sp)
    8000303c:	03813483          	ld	s1,56(sp)
    80003040:	05010113          	addi	sp,sp,80
    80003044:	00008067          	ret

0000000080003048 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00813423          	sd	s0,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003054:	00009797          	auipc	a5,0x9
    80003058:	cbc7b783          	ld	a5,-836(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000305c:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003060:	00500793          	li	a5,5
    80003064:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003068:	0000d797          	auipc	a5,0xd
    8000306c:	d987b783          	ld	a5,-616(a5) # 8000fe00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003070:	00000593          	li	a1,0
    while(curr != 0)
    80003074:	02078063          	beqz	a5,80003094 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003078:	02063683          	ld	a3,32(a2)
    8000307c:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003080:	00e6e863          	bltu	a3,a4,80003090 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003084:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003088:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000308c:	fe9ff06f          	j	80003074 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003090:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003094:	00058a63          	beqz	a1,800030a8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003098:	00c5b423          	sd	a2,8(a1)
}
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800030a8:	0000d797          	auipc	a5,0xd
    800030ac:	d4c7bc23          	sd	a2,-680(a5) # 8000fe00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800030b0:	fedff06f          	j	8000309c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800030b4 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800030b4:	0000d517          	auipc	a0,0xd
    800030b8:	d4c53503          	ld	a0,-692(a0) # 8000fe00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800030bc:	06050e63          	beqz	a0,80003138 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030c0:	06050c63          	beqz	a0,80003138 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800030c4:	02053783          	ld	a5,32(a0)
    800030c8:	00009717          	auipc	a4,0x9
    800030cc:	c2073703          	ld	a4,-992(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030d0:	00073703          	ld	a4,0(a4)
    800030d4:	06f76263          	bltu	a4,a5,80003138 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800030d8:	fe010113          	addi	sp,sp,-32
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	00813823          	sd	s0,16(sp)
    800030e4:	00913423          	sd	s1,8(sp)
    800030e8:	02010413          	addi	s0,sp,32
    800030ec:	0180006f          	j	80003104 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800030f0:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800030f4:	00009717          	auipc	a4,0x9
    800030f8:	bf473703          	ld	a4,-1036(a4) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030fc:	00073703          	ld	a4,0(a4)
    80003100:	02f76263          	bltu	a4,a5,80003124 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003104:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003108:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	0b8080e7          	jalr	184(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003114:	0000d797          	auipc	a5,0xd
    80003118:	ce97b623          	sd	s1,-788(a5) # 8000fe00 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000311c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003120:	fc0498e3          	bnez	s1,800030f0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003124:	01813083          	ld	ra,24(sp)
    80003128:	01013403          	ld	s0,16(sp)
    8000312c:	00813483          	ld	s1,8(sp)
    80003130:	02010113          	addi	sp,sp,32
    80003134:	00008067          	ret
    80003138:	00008067          	ret

000000008000313c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00113423          	sd	ra,8(sp)
    80003144:	00813023          	sd	s0,0(sp)
    80003148:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000314c:	00001097          	auipc	ra,0x1
    80003150:	f50080e7          	jalr	-176(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
}
    80003154:	00813083          	ld	ra,8(sp)
    80003158:	00013403          	ld	s0,0(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00113423          	sd	ra,8(sp)
    8000316c:	00813023          	sd	s0,0(sp)
    80003170:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003174:	00001097          	auipc	ra,0x1
    80003178:	f8c080e7          	jalr	-116(ra) # 80004100 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000317c:	00813083          	ld	ra,8(sp)
    80003180:	00013403          	ld	s0,0(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret

000000008000318c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003198:	0000d797          	auipc	a5,0xd
    8000319c:	c707b783          	ld	a5,-912(a5) # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800031a0:	00000513          	li	a0,0
    while(curr != 0)
    800031a4:	00078863          	beqz	a5,800031b4 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800031a8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800031ac:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800031b0:	ff5ff06f          	j	800031a4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800031b4:	0005051b          	sext.w	a0,a0
    800031b8:	00813403          	ld	s0,8(sp)
    800031bc:	01010113          	addi	sp,sp,16
    800031c0:	00008067          	ret

00000000800031c4 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800031c4:	ff010113          	addi	sp,sp,-16
    800031c8:	00813423          	sd	s0,8(sp)
    800031cc:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800031d0:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800031d4:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800031d8:	0000d797          	auipc	a5,0xd
    800031dc:	c307b783          	ld	a5,-976(a5) # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    800031e0:	02078263          	beqz	a5,80003204 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800031e4:	0000d797          	auipc	a5,0xd
    800031e8:	c2478793          	addi	a5,a5,-988 # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    800031ec:	0087b703          	ld	a4,8(a5)
    800031f0:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800031f4:	00a7b423          	sd	a0,8(a5)
    }
}
    800031f8:	00813403          	ld	s0,8(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003204:	0000d797          	auipc	a5,0xd
    80003208:	c0478793          	addi	a5,a5,-1020 # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    8000320c:	00a7b423          	sd	a0,8(a5)
    80003210:	00a7b023          	sd	a0,0(a5)
    80003214:	fe5ff06f          	j	800031f8 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003218 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003218:	ff010113          	addi	sp,sp,-16
    8000321c:	00813423          	sd	s0,8(sp)
    80003220:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003224:	0000d517          	auipc	a0,0xd
    80003228:	be453503          	ld	a0,-1052(a0) # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    8000322c:	00050c63          	beqz	a0,80003244 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003230:	00853783          	ld	a5,8(a0)
    80003234:	00078e63          	beqz	a5,80003250 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003238:	0000d717          	auipc	a4,0xd
    8000323c:	bcf73823          	sd	a5,-1072(a4) # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003240:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003250:	0000d797          	auipc	a5,0xd
    80003254:	bb878793          	addi	a5,a5,-1096 # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    80003258:	0007b423          	sd	zero,8(a5)
    8000325c:	0007b023          	sd	zero,0(a5)
    80003260:	fe1ff06f          	j	80003240 <_ZN9Scheduler3getEv+0x28>

0000000080003264 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003278:	0000d497          	auipc	s1,0xd
    8000327c:	b904b483          	ld	s1,-1136(s1) # 8000fe08 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003280:	02048863          	beqz	s1,800032b0 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    80003284:	00000613          	li	a2,0
    80003288:	01000593          	li	a1,16
    8000328c:	0004851b          	sext.w	a0,s1
    80003290:	00003097          	auipc	ra,0x3
    80003294:	1dc080e7          	jalr	476(ra) # 8000646c <_Z8printIntiii>
        printString("\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	e6050513          	addi	a0,a0,-416 # 800090f8 <CONSOLE_STATUS+0xe8>
    800032a0:	00003097          	auipc	ra,0x3
    800032a4:	034080e7          	jalr	52(ra) # 800062d4 <_Z11printStringPKc>
        curr = curr->nextPCB;
    800032a8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800032ac:	fd5ff06f          	j	80003280 <_ZN9Scheduler5printEv+0x1c>
    }
}
    800032b0:	01813083          	ld	ra,24(sp)
    800032b4:	01013403          	ld	s0,16(sp)
    800032b8:	00813483          	ld	s1,8(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret

00000000800032c4 <main>:
#include "../h/Riscv.hpp"

void main()
{
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00113423          	sd	ra,8(sp)
    800032cc:	00813023          	sd	s0,0(sp)
    800032d0:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	578080e7          	jalr	1400(ra) # 8000384c <_ZN5Riscv10kernelMainEv>
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800032fc:	00053783          	ld	a5,0(a0)
    80003300:	0107b783          	ld	a5,16(a5)
    80003304:	000780e7          	jalr	a5
}
    80003308:	00813083          	ld	ra,8(sp)
    8000330c:	00013403          	ld	s0,0(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret

0000000080003318 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    80003328:	00009797          	auipc	a5,0x9
    8000332c:	81078793          	addi	a5,a5,-2032 # 8000bb38 <_ZTV6Thread+0x10>
    80003330:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    80003334:	00853503          	ld	a0,8(a0)
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	f50080e7          	jalr	-176(ra) # 80001288 <mem_free>
}
    80003340:	00813083          	ld	ra,8(sp)
    80003344:	00013403          	ld	s0,0(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	00009797          	auipc	a5,0x9
    80003364:	80078793          	addi	a5,a5,-2048 # 8000bb60 <_ZTV9Semaphore+0x10>
    80003368:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000336c:	00853503          	ld	a0,8(a0)
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	f18080e7          	jalr	-232(ra) # 80001288 <mem_free>
}
    80003378:	00813083          	ld	ra,8(sp)
    8000337c:	00013403          	ld	s0,0(sp)
    80003380:	01010113          	addi	sp,sp,16
    80003384:	00008067          	ret

0000000080003388 <_Znwm>:
{
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00113423          	sd	ra,8(sp)
    80003390:	00813023          	sd	s0,0(sp)
    80003394:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	ec0080e7          	jalr	-320(ra) # 80001258 <mem_alloc>
}
    800033a0:	00813083          	ld	ra,8(sp)
    800033a4:	00013403          	ld	s0,0(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZdlPv>:
{
    800033b0:	ff010113          	addi	sp,sp,-16
    800033b4:	00113423          	sd	ra,8(sp)
    800033b8:	00813023          	sd	s0,0(sp)
    800033bc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	ec8080e7          	jalr	-312(ra) # 80001288 <mem_free>
}
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00050493          	mv	s1,a0
}
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	f28080e7          	jalr	-216(ra) # 80003318 <_ZN6ThreadD1Ev>
    800033f8:	00048513          	mv	a0,s1
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	fb4080e7          	jalr	-76(ra) # 800033b0 <_ZdlPv>
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	02010113          	addi	sp,sp,32
    80003414:	00008067          	ret

0000000080003418 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003418:	fe010113          	addi	sp,sp,-32
    8000341c:	00113c23          	sd	ra,24(sp)
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00913423          	sd	s1,8(sp)
    80003428:	02010413          	addi	s0,sp,32
    8000342c:	00050493          	mv	s1,a0
}
    80003430:	00000097          	auipc	ra,0x0
    80003434:	f20080e7          	jalr	-224(ra) # 80003350 <_ZN9SemaphoreD1Ev>
    80003438:	00048513          	mv	a0,s1
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	f74080e7          	jalr	-140(ra) # 800033b0 <_ZdlPv>
    80003444:	01813083          	ld	ra,24(sp)
    80003448:	01013403          	ld	s0,16(sp)
    8000344c:	00813483          	ld	s1,8(sp)
    80003450:	02010113          	addi	sp,sp,32
    80003454:	00008067          	ret

0000000080003458 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003458:	00853503          	ld	a0,8(a0)
    8000345c:	02050663          	beqz	a0,80003488 <_ZN6Thread5startEv+0x30>
{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	ff4080e7          	jalr	-12(ra) # 80001464 <thread_start>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret
        return -1;
    80003488:	fff00513          	li	a0,-1
}
    8000348c:	00008067          	ret

0000000080003490 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00113423          	sd	ra,8(sp)
    80003498:	00813023          	sd	s0,0(sp)
    8000349c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	e94080e7          	jalr	-364(ra) # 80001334 <thread_dispatch>
}
    800034a8:	00813083          	ld	ra,8(sp)
    800034ac:	00013403          	ld	s0,0(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <_ZN6Thread5sleepEm>:
{
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00113423          	sd	ra,8(sp)
    800034c0:	00813023          	sd	s0,0(sp)
    800034c4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	f70080e7          	jalr	-144(ra) # 80001438 <time_sleep>
}
    800034d0:	00813083          	ld	ra,8(sp)
    800034d4:	00013403          	ld	s0,0(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	00813823          	sd	s0,16(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	01213023          	sd	s2,0(sp)
    800034f4:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800034f8:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800034fc:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003500:	0004b783          	ld	a5,0(s1)
    80003504:	0187b783          	ld	a5,24(a5)
    80003508:	00048513          	mv	a0,s1
    8000350c:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003510:	00090513          	mv	a0,s2
    80003514:	00000097          	auipc	ra,0x0
    80003518:	fa4080e7          	jalr	-92(ra) # 800034b8 <_ZN6Thread5sleepEm>
    while(true)
    8000351c:	fe5ff06f          	j	80003500 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003520 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003520:	ff010113          	addi	sp,sp,-16
    80003524:	00113423          	sd	ra,8(sp)
    80003528:	00813023          	sd	s0,0(sp)
    8000352c:	01010413          	addi	s0,sp,16
    80003530:	00008797          	auipc	a5,0x8
    80003534:	60878793          	addi	a5,a5,1544 # 8000bb38 <_ZTV6Thread+0x10>
    80003538:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    8000353c:	00850513          	addi	a0,a0,8
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	f50080e7          	jalr	-176(ra) # 80001490 <thread_make_pcb>
}
    80003548:	00813083          	ld	ra,8(sp)
    8000354c:	00013403          	ld	s0,0(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret

0000000080003558 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003558:	ff010113          	addi	sp,sp,-16
    8000355c:	00113423          	sd	ra,8(sp)
    80003560:	00813023          	sd	s0,0(sp)
    80003564:	01010413          	addi	s0,sp,16
    80003568:	00008797          	auipc	a5,0x8
    8000356c:	5d078793          	addi	a5,a5,1488 # 8000bb38 <_ZTV6Thread+0x10>
    80003570:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003574:	00050613          	mv	a2,a0
    80003578:	00000597          	auipc	a1,0x0
    8000357c:	d7458593          	addi	a1,a1,-652 # 800032ec <_ZN6Thread6runnerEPv>
    80003580:	00850513          	addi	a0,a0,8
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	f0c080e7          	jalr	-244(ra) # 80001490 <thread_make_pcb>
}
    8000358c:	00813083          	ld	ra,8(sp)
    80003590:	00013403          	ld	s0,0(sp)
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00008067          	ret

000000008000359c <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    8000359c:	00853503          	ld	a0,8(a0)
    800035a0:	02050663          	beqz	a0,800035cc <_ZN9Semaphore4waitEv+0x30>
{
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00113423          	sd	ra,8(sp)
    800035ac:	00813023          	sd	s0,0(sp)
    800035b0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800035b4:	ffffe097          	auipc	ra,0xffffe
    800035b8:	e2c080e7          	jalr	-468(ra) # 800013e0 <sem_wait>
}
    800035bc:	00813083          	ld	ra,8(sp)
    800035c0:	00013403          	ld	s0,0(sp)
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret
        return -1;
    800035cc:	fff00513          	li	a0,-1
}
    800035d0:	00008067          	ret

00000000800035d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800035d4:	fe010113          	addi	sp,sp,-32
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	00813823          	sd	s0,16(sp)
    800035e0:	00913423          	sd	s1,8(sp)
    800035e4:	02010413          	addi	s0,sp,32
    800035e8:	00050493          	mv	s1,a0
    800035ec:	00008797          	auipc	a5,0x8
    800035f0:	57478793          	addi	a5,a5,1396 # 8000bb60 <_ZTV9Semaphore+0x10>
    800035f4:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800035f8:	00850513          	addi	a0,a0,8
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	d80080e7          	jalr	-640(ra) # 8000137c <sem_open>
    if(retval != 0)
    80003604:	00050463          	beqz	a0,8000360c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003608:	0004b423          	sd	zero,8(s1)
}
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret

0000000080003620 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003620:	00853503          	ld	a0,8(a0)
    80003624:	02050663          	beqz	a0,80003650 <_ZN9Semaphore6signalEv+0x30>
{
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	00813023          	sd	s0,0(sp)
    80003634:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	dd4080e7          	jalr	-556(ra) # 8000140c <sem_signal>
}
    80003640:	00813083          	ld	ra,8(sp)
    80003644:	00013403          	ld	s0,0(sp)
    80003648:	01010113          	addi	sp,sp,16
    8000364c:	00008067          	ret
        return -1;
    80003650:	fff00513          	li	a0,-1
}
    80003654:	00008067          	ret

0000000080003658 <_ZN7Console4getcEv>:
{
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00113423          	sd	ra,8(sp)
    80003660:	00813023          	sd	s0,0(sp)
    80003664:	01010413          	addi	s0,sp,16
    return ::getc();
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	ea8080e7          	jalr	-344(ra) # 80001510 <getc>
}
    80003670:	00813083          	ld	ra,8(sp)
    80003674:	00013403          	ld	s0,0(sp)
    80003678:	01010113          	addi	sp,sp,16
    8000367c:	00008067          	ret

0000000080003680 <_ZN7Console4putcEc>:
{
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00113423          	sd	ra,8(sp)
    80003688:	00813023          	sd	s0,0(sp)
    8000368c:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	ea8080e7          	jalr	-344(ra) # 80001538 <putc>
}
    80003698:	00813083          	ld	ra,8(sp)
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800036a8:	fe010113          	addi	sp,sp,-32
    800036ac:	00113c23          	sd	ra,24(sp)
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	01213023          	sd	s2,0(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00050493          	mv	s1,a0
    800036c4:	00058913          	mv	s2,a1
    800036c8:	01000513          	li	a0,16
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	cbc080e7          	jalr	-836(ra) # 80003388 <_Znwm>
    800036d4:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800036d8:	00953023          	sd	s1,0(a0)
    800036dc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800036e0:	00000597          	auipc	a1,0x0
    800036e4:	e0058593          	addi	a1,a1,-512 # 800034e0 <_ZN14PeriodicThread6runnerEPv>
    800036e8:	00048513          	mv	a0,s1
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	e34080e7          	jalr	-460(ra) # 80003520 <_ZN6ThreadC1EPFvPvES0_>
    800036f4:	00008797          	auipc	a5,0x8
    800036f8:	3dc78793          	addi	a5,a5,988 # 8000bad0 <_ZTV14PeriodicThread+0x10>
    800036fc:	00f4b023          	sd	a5,0(s1)
}
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	01013403          	ld	s0,16(sp)
    80003708:	00813483          	ld	s1,8(sp)
    8000370c:	00013903          	ld	s2,0(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret

0000000080003718 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00113423          	sd	ra,8(sp)
    80003720:	00813023          	sd	s0,0(sp)
    80003724:	01010413          	addi	s0,sp,16
    userMain();
    80003728:	00003097          	auipc	ra,0x3
    8000372c:	250080e7          	jalr	592(ra) # 80006978 <_Z8userMainv>
}
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret

0000000080003740 <_ZN5Riscv10initSystemEv>:
{
    80003740:	ff010113          	addi	sp,sp,-16
    80003744:	00113423          	sd	ra,8(sp)
    80003748:	00813023          	sd	s0,0(sp)
    8000374c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003750:	00008797          	auipc	a5,0x8
    80003754:	5707b783          	ld	a5,1392(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003758:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	f74080e7          	jalr	-140(ra) # 800026d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	2d0080e7          	jalr	720(ra) # 80002a34 <_ZN8KConsole10initializeEv>
}
    8000376c:	00813083          	ld	ra,8(sp)
    80003770:	00013403          	ld	s0,0(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    8000377c:	ff010113          	addi	sp,sp,-16
    80003780:	00813423          	sd	s0,8(sp)
    80003784:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003788:	00200793          	li	a5,2
    8000378c:	1007a073          	csrs	sstatus,a5
}
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN5Riscv17disableInterruptsEv>:
{
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800037a8:	00200793          	li	a5,2
    800037ac:	1007b073          	csrc	sstatus,a5
}
    800037b0:	00813403          	ld	s0,8(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret

00000000800037bc <_ZN5Riscv9endSystemEv>:
{
    800037bc:	ff010113          	addi	sp,sp,-16
    800037c0:	00113423          	sd	ra,8(sp)
    800037c4:	00813023          	sd	s0,0(sp)
    800037c8:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	fd0080e7          	jalr	-48(ra) # 8000379c <_ZN5Riscv17disableInterruptsEv>
}
    800037d4:	00813083          	ld	ra,8(sp)
    800037d8:	00013403          	ld	s0,0(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret

00000000800037e4 <_ZN5Riscv10popSppSpieEv>:
{
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00813423          	sd	s0,8(sp)
    800037ec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800037f0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800037f4:	10200073          	sret
}
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	01010413          	addi	s0,sp,16
    myTests();
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	b44080e7          	jalr	-1212(ra) # 80002358 <_Z7myTestsv>
}
    8000381c:	00813083          	ld	ra,8(sp)
    80003820:	00013403          	ld	s0,0(sp)
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00008067          	ret

000000008000382c <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00813423          	sd	s0,8(sp)
    80003834:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003838:	00200793          	li	a5,2
    8000383c:	1047b073          	csrc	sie,a5
}
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    8000384c:	0000c797          	auipc	a5,0xc
    80003850:	5cc7c783          	lbu	a5,1484(a5) # 8000fe18 <_ZN5Riscv16kernelMainCalledE>
    80003854:	00078463          	beqz	a5,8000385c <_ZN5Riscv10kernelMainEv+0x10>
    80003858:	00008067          	ret
{
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	01213023          	sd	s2,0(sp)
    80003870:	02010413          	addi	s0,sp,32
    kernelMainCalled = true;
    80003874:	00100793          	li	a5,1
    80003878:	0000c717          	auipc	a4,0xc
    8000387c:	5af70023          	sb	a5,1440(a4) # 8000fe18 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80003880:	00000097          	auipc	ra,0x0
    80003884:	ec0080e7          	jalr	-320(ra) # 80003740 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003888:	00001537          	lui	a0,0x1
    8000388c:	00001097          	auipc	ra,0x1
    80003890:	810080e7          	jalr	-2032(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
    80003894:	00050913          	mv	s2,a0
    80003898:	06000513          	li	a0,96
    8000389c:	fffff097          	auipc	ra,0xfffff
    800038a0:	db8080e7          	jalr	-584(ra) # 80002654 <_ZN3PCBnwEm>
    800038a4:	00050493          	mv	s1,a0
    800038a8:	00200713          	li	a4,2
    800038ac:	00090693          	mv	a3,s2
    800038b0:	00000613          	li	a2,0
    800038b4:	00000597          	auipc	a1,0x0
    800038b8:	e6458593          	addi	a1,a1,-412 # 80003718 <_ZN5Riscv15userMainWrapperEPv>
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	c7c080e7          	jalr	-900(ra) # 80002538 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    800038c4:	00048513          	mv	a0,s1
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	cd8080e7          	jalr	-808(ra) # 800025a0 <_ZN3PCB5startEv>
    disableTimerInterrupts();
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	f5c080e7          	jalr	-164(ra) # 8000382c <_ZN5Riscv22disableTimerInterruptsEv>
    enableInterrupts();
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	ea4080e7          	jalr	-348(ra) # 8000377c <_ZN5Riscv16enableInterruptsEv>
    while(!userPCB->isFinished())
    800038e0:	00048513          	mv	a0,s1
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	ed4080e7          	jalr	-300(ra) # 800027b8 <_ZN3PCB10isFinishedEv>
    800038ec:	00051863          	bnez	a0,800038fc <_ZN5Riscv10kernelMainEv+0xb0>
        thread_dispatch();
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	a44080e7          	jalr	-1468(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    800038f8:	fe9ff06f          	j	800038e0 <_ZN5Riscv10kernelMainEv+0x94>
    finishSystem = true;
    800038fc:	00100793          	li	a5,1
    80003900:	0000c717          	auipc	a4,0xc
    80003904:	50f70ca3          	sb	a5,1305(a4) # 8000fe19 <_ZN5Riscv12finishSystemE>
    80003908:	00c0006f          	j	80003914 <_ZN5Riscv10kernelMainEv+0xc8>
        thread_dispatch();
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	a28080e7          	jalr	-1496(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003914:	00008797          	auipc	a5,0x8
    80003918:	3e47b783          	ld	a5,996(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000391c:	0007b503          	ld	a0,0(a5)
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	e98080e7          	jalr	-360(ra) # 800027b8 <_ZN3PCB10isFinishedEv>
    80003928:	fe0502e3          	beqz	a0,8000390c <_ZN5Riscv10kernelMainEv+0xc0>
    disableInterrupts();
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	e70080e7          	jalr	-400(ra) # 8000379c <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003934:	00000097          	auipc	ra,0x0
    80003938:	e88080e7          	jalr	-376(ra) # 800037bc <_ZN5Riscv9endSystemEv>
}
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	00013903          	ld	s2,0(sp)
    8000394c:	02010113          	addi	sp,sp,32
    80003950:	00008067          	ret
    80003954:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003958:	00048513          	mv	a0,s1
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	d20080e7          	jalr	-736(ra) # 8000267c <_ZN3PCBdlEPv>
    80003964:	00090513          	mv	a0,s2
    80003968:	0000d097          	auipc	ra,0xd
    8000396c:	5d0080e7          	jalr	1488(ra) # 80010f38 <_Unwind_Resume>

0000000080003970 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00813423          	sd	s0,8(sp)
    80003978:	01010413          	addi	s0,sp,16
    while(true)
    8000397c:	0000006f          	j	8000397c <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003980 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00813423          	sd	s0,8(sp)
    80003988:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000398c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003990:	00008717          	auipc	a4,0x8
    80003994:	38073703          	ld	a4,896(a4) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003998:	00073703          	ld	a4,0(a4)
    8000399c:	01073703          	ld	a4,16(a4)
    800039a0:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800039a4:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800039a8:	00078593          	mv	a1,a5
}
    800039ac:	00813403          	ld	s0,8(sp)
    800039b0:	01010113          	addi	sp,sp,16
    800039b4:	00008067          	ret

00000000800039b8 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00813423          	sd	s0,8(sp)
    800039c0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800039c4:	00008797          	auipc	a5,0x8
    800039c8:	34c7b783          	ld	a5,844(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    800039cc:	0007b783          	ld	a5,0(a5)
    800039d0:	0007c783          	lbu	a5,0(a5)
    800039d4:	00078c63          	beqz	a5,800039ec <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800039d8:	10000793          	li	a5,256
    800039dc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800039e0:	00813403          	ld	s0,8(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800039ec:	10000793          	li	a5,256
    800039f0:	1007b073          	csrc	sstatus,a5
    800039f4:	fedff06f          	j	800039e0 <_ZN5Riscv14changePrivModeEv+0x28>

00000000800039f8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800039f8:	f9010113          	addi	sp,sp,-112
    800039fc:	06113423          	sd	ra,104(sp)
    80003a00:	06813023          	sd	s0,96(sp)
    80003a04:	04913c23          	sd	s1,88(sp)
    80003a08:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003a0c:	00070713          	mv	a4,a4
    80003a10:	00008797          	auipc	a5,0x8
    80003a14:	3187b783          	ld	a5,792(a5) # 8000bd28 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003a18:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003a1c:	00008797          	auipc	a5,0x8
    80003a20:	2f47b783          	ld	a5,756(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003a24:	0007b783          	ld	a5,0(a5)
    80003a28:	14002773          	csrr	a4,sscratch
    80003a2c:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003a30:	142027f3          	csrr	a5,scause
    80003a34:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003a38:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003a3c:	00900713          	li	a4,9
    80003a40:	02f76e63          	bltu	a4,a5,80003a7c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003a44:	00800713          	li	a4,8
    80003a48:	18e7f463          	bgeu	a5,a4,80003bd0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003a4c:	00500713          	li	a4,5
    80003a50:	16e78a63          	beq	a5,a4,80003bc4 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003a54:	00700713          	li	a4,7
    80003a58:	00e79863          	bne	a5,a4,80003a68 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	d80080e7          	jalr	-640(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a64:	1200006f          	j	80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a68:	00200713          	li	a4,2
    80003a6c:	10e79c63          	bne	a5,a4,80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	d6c080e7          	jalr	-660(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003a78:	10c0006f          	j	80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003a7c:	fff00713          	li	a4,-1
    80003a80:	03f71713          	slli	a4,a4,0x3f
    80003a84:	00170713          	addi	a4,a4,1
    80003a88:	06e78a63          	beq	a5,a4,80003afc <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003a8c:	fff00713          	li	a4,-1
    80003a90:	03f71713          	slli	a4,a4,0x3f
    80003a94:	00970713          	addi	a4,a4,9
    80003a98:	0ee79663          	bne	a5,a4,80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003a9c:	00008797          	auipc	a5,0x8
    80003aa0:	2147b783          	ld	a5,532(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003aa4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003aa8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003aac:	00050583          	lb	a1,0(a0) # 1000 <_entry-0x7ffff000>
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003ab0:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003ab4:	0017f793          	andi	a5,a5,1
    80003ab8:	02078863          	beqz	a5,80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003abc:	00008797          	auipc	a5,0x8
    80003ac0:	2147b783          	ld	a5,532(a5) # 8000bcd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003ac4:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003ac8:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003acc:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003ad0:	00058513          	mv	a0,a1
    80003ad4:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	1f07b783          	ld	a5,496(a5) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003ae0:	0007b783          	ld	a5,0(a5)
    80003ae4:	0c079263          	bnez	a5,80003ba8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003ae8:	00004097          	auipc	ra,0x4
    80003aec:	b5c080e7          	jalr	-1188(ra) # 80007644 <plic_claim>
    80003af0:	00004097          	auipc	ra,0x4
    80003af4:	b8c080e7          	jalr	-1140(ra) # 8000767c <plic_complete>
            break;
    80003af8:	08c0006f          	j	80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003afc:	141027f3          	csrr	a5,sepc
    80003b00:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003b04:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003b08:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b0c:	100027f3          	csrr	a5,sstatus
    80003b10:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003b14:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003b18:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003b1c:	00200793          	li	a5,2
    80003b20:	1447b073          	csrc	sip,a5
            totalTime++;
    80003b24:	0000c717          	auipc	a4,0xc
    80003b28:	2f470713          	addi	a4,a4,756 # 8000fe18 <_ZN5Riscv16kernelMainCalledE>
    80003b2c:	00873783          	ld	a5,8(a4)
    80003b30:	00178793          	addi	a5,a5,1
    80003b34:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003b38:	00008497          	auipc	s1,0x8
    80003b3c:	1a04b483          	ld	s1,416(s1) # 8000bcd8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003b40:	0004b783          	ld	a5,0(s1)
    80003b44:	00178793          	addi	a5,a5,1
    80003b48:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	568080e7          	jalr	1384(ra) # 800030b4 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003b54:	00008797          	auipc	a5,0x8
    80003b58:	1bc7b783          	ld	a5,444(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003b5c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003b60:	0187b783          	ld	a5,24(a5)
    80003b64:	0004b703          	ld	a4,0(s1)
    80003b68:	02f77863          	bgeu	a4,a5,80003b98 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003b6c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003b70:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003b74:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003b78:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	e3c080e7          	jalr	-452(ra) # 800039b8 <_ZN5Riscv14changePrivModeEv>
}
    80003b84:	06813083          	ld	ra,104(sp)
    80003b88:	06013403          	ld	s0,96(sp)
    80003b8c:	05813483          	ld	s1,88(sp)
    80003b90:	07010113          	addi	sp,sp,112
    80003b94:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003b98:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	a2c080e7          	jalr	-1492(ra) # 800025c8 <_ZN3PCB8dispatchEv>
    80003ba4:	fc9ff06f          	j	80003b6c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003ba8:	fff78793          	addi	a5,a5,-1
    80003bac:	00008717          	auipc	a4,0x8
    80003bb0:	11c73703          	ld	a4,284(a4) # 8000bcc8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003bb4:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	f2c080e7          	jalr	-212(ra) # 80002ae4 <_ZN8KConsole17putCharacterInputEc>
    80003bc0:	f29ff06f          	j	80003ae8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	c18080e7          	jalr	-1000(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
            break;
    80003bcc:	fb9ff06f          	j	80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003bd0:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bd4:	14102773          	csrr	a4,sepc
    80003bd8:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003bdc:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003be0:	00470713          	addi	a4,a4,4
    80003be4:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003be8:	10002773          	csrr	a4,sstatus
    80003bec:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003bf0:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bf4:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003bf8:	04300713          	li	a4,67
    80003bfc:	02f76463          	bltu	a4,a5,80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003c00:	00279793          	slli	a5,a5,0x2
    80003c04:	00005717          	auipc	a4,0x5
    80003c08:	5e070713          	addi	a4,a4,1504 # 800091e4 <CONSOLE_STATUS+0x1d4>
    80003c0c:	00e787b3          	add	a5,a5,a4
    80003c10:	0007a783          	lw	a5,0(a5)
    80003c14:	00e787b3          	add	a5,a5,a4
    80003c18:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	4a8080e7          	jalr	1192(ra) # 800040c4 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003c24:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c28:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c2c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c30:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	d84080e7          	jalr	-636(ra) # 800039b8 <_ZN5Riscv14changePrivModeEv>
}
    80003c3c:	f49ff06f          	j	80003b84 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	4e8080e7          	jalr	1256(ra) # 80004128 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003c48:	fddff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003c4c:	fffff097          	auipc	ra,0xfffff
    80003c50:	d54080e7          	jalr	-684(ra) # 800029a0 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003c54:	fd1ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	c64080e7          	jalr	-924(ra) # 800028bc <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003c60:	fc5ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	cf8080e7          	jalr	-776(ra) # 8000295c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003c6c:	fb9ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	bb8080e7          	jalr	-1096(ra) # 80002828 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003c78:	fadff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	b60080e7          	jalr	-1184(ra) # 800027dc <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003c84:	fa1ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	bd0080e7          	jalr	-1072(ra) # 80002858 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003c90:	f95ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	75c080e7          	jalr	1884(ra) # 800043f0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003c9c:	f89ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	7f0080e7          	jalr	2032(ra) # 80004490 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003ca8:	f7dff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	838080e7          	jalr	-1992(ra) # 800044e4 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003cb4:	f71ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	870080e7          	jalr	-1936(ra) # 80004528 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003cc0:	f65ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	0c0080e7          	jalr	192(ra) # 80002d84 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003ccc:	f59ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80003cd0:	fffff097          	auipc	ra,0xfffff
    80003cd4:	084080e7          	jalr	132(ra) # 80002d54 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003cd8:	f4dff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80003cdc:	fffff097          	auipc	ra,0xfffff
    80003ce0:	218080e7          	jalr	536(ra) # 80002ef4 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003ce4:	f41ff06f          	j	80003c24 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

0000000080003ce8 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003ce8:	ff010113          	addi	sp,sp,-16
    80003cec:	00813423          	sd	s0,8(sp)
    80003cf0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003cf4:	0000c717          	auipc	a4,0xc
    80003cf8:	13472703          	lw	a4,308(a4) # 8000fe28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003cfc:	00100793          	li	a5,1
    80003d00:	04f70263          	beq	a4,a5,80003d44 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003d04:	0000c797          	auipc	a5,0xc
    80003d08:	12478793          	addi	a5,a5,292 # 8000fe28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003d0c:	00100713          	li	a4,1
    80003d10:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003d14:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003d18:	00008717          	auipc	a4,0x8
    80003d1c:	fa073703          	ld	a4,-96(a4) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003d20:	00073703          	ld	a4,0(a4)
    80003d24:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003d28:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003d2c:	00008797          	auipc	a5,0x8
    80003d30:	fec7b783          	ld	a5,-20(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003d34:	0007b783          	ld	a5,0(a5)
    80003d38:	40e787b3          	sub	a5,a5,a4
    80003d3c:	ff178793          	addi	a5,a5,-15
    80003d40:	00f73023          	sd	a5,0(a4)
}
    80003d44:	00813403          	ld	s0,8(sp)
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    80003d68:	00050493          	mv	s1,a0
    80003d6c:	00058913          	mv	s2,a1
    initMemory();
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	f78080e7          	jalr	-136(ra) # 80003ce8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003d78:	0000c797          	auipc	a5,0xc
    80003d7c:	0b87b783          	ld	a5,184(a5) # 8000fe30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003d80:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003d84:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003d88:	00000713          	li	a4,0
    while(curr != 0)
    80003d8c:	00078c63          	beqz	a5,80003da4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003d90:	00f4e863          	bltu	s1,a5,80003da0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003d94:	00078713          	mv	a4,a5
        curr = curr->next;
    80003d98:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003d9c:	ff1ff06f          	j	80003d8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003da0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003da4:	02070063          	beqz	a4,80003dc4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003da8:	00973423          	sd	s1,8(a4)
}
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	00013903          	ld	s2,0(sp)
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret
        headAllocated = newAllocated;
    80003dc4:	0000c797          	auipc	a5,0xc
    80003dc8:	0697b623          	sd	s1,108(a5) # 8000fe30 <_ZN15MemoryAllocator13headAllocatedE>
    80003dcc:	fe1ff06f          	j	80003dac <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003dd0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	00813823          	sd	s0,16(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	01213023          	sd	s2,0(sp)
    80003de4:	02010413          	addi	s0,sp,32
    80003de8:	00050913          	mv	s2,a0
    initMemory();
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	efc080e7          	jalr	-260(ra) # 80003ce8 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003df4:	0000c497          	auipc	s1,0xc
    80003df8:	0444b483          	ld	s1,68(s1) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003dfc:	00000713          	li	a4,0
    while(curr != 0)
    80003e00:	0a048863          	beqz	s1,80003eb0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003e04:	0004b783          	ld	a5,0(s1)
    80003e08:	0127f863          	bgeu	a5,s2,80003e18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003e0c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003e10:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003e14:	fedff06f          	j	80003e00 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003e18:	01090693          	addi	a3,s2,16
    80003e1c:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003e20:	00008617          	auipc	a2,0x8
    80003e24:	ef863603          	ld	a2,-264(a2) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003e28:	00063603          	ld	a2,0(a2)
    80003e2c:	04d66c63          	bltu	a2,a3,80003e84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003e30:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003e34:	01000613          	li	a2,16
    80003e38:	02f67663          	bgeu	a2,a5,80003e64 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80003e3c:	0084b603          	ld	a2,8(s1)
    80003e40:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003e44:	ff078793          	addi	a5,a5,-16
    80003e48:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80003e4c:	00070663          	beqz	a4,80003e58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80003e50:	00d73423          	sd	a3,8(a4)
    80003e54:	0380006f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80003e58:	0000c797          	auipc	a5,0xc
    80003e5c:	fed7b023          	sd	a3,-32(a5) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    80003e60:	02c0006f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80003e64:	00070863          	beqz	a4,80003e74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80003e68:	0084b783          	ld	a5,8(s1)
    80003e6c:	00f73423          	sd	a5,8(a4)
    80003e70:	01c0006f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80003e74:	0084b783          	ld	a5,8(s1)
    80003e78:	0000c717          	auipc	a4,0xc
    80003e7c:	fcf73023          	sd	a5,-64(a4) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    80003e80:	00c0006f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80003e84:	02070063          	beqz	a4,80003ea4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80003e88:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80003e8c:	00090593          	mv	a1,s2
    80003e90:	00048513          	mv	a0,s1
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	ebc080e7          	jalr	-324(ra) # 80003d50 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80003e9c:	01048513          	addi	a0,s1,16
            break;
    80003ea0:	0140006f          	j	80003eb4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80003ea4:	0000c797          	auipc	a5,0xc
    80003ea8:	f807ba23          	sd	zero,-108(a5) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    80003eac:	fe1ff06f          	j	80003e8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80003eb0:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80003eb4:	01813083          	ld	ra,24(sp)
    80003eb8:	01013403          	ld	s0,16(sp)
    80003ebc:	00813483          	ld	s1,8(sp)
    80003ec0:	00013903          	ld	s2,0(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	00008067          	ret

0000000080003ecc <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00113423          	sd	ra,8(sp)
    80003ed4:	00813023          	sd	s0,0(sp)
    80003ed8:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	ef4080e7          	jalr	-268(ra) # 80003dd0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80003ee4:	00813083          	ld	ra,8(sp)
    80003ee8:	00013403          	ld	s0,0(sp)
    80003eec:	01010113          	addi	sp,sp,16
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80003ef4:	fe010113          	addi	sp,sp,-32
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	00813823          	sd	s0,16(sp)
    80003f00:	00913423          	sd	s1,8(sp)
    80003f04:	01213023          	sd	s2,0(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00050493          	mv	s1,a0
    80003f10:	00058913          	mv	s2,a1
    initMemory();
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	dd4080e7          	jalr	-556(ra) # 80003ce8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003f1c:	0000c797          	auipc	a5,0xc
    80003f20:	f1c7b783          	ld	a5,-228(a5) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80003f24:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003f28:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003f2c:	00000713          	li	a4,0
    while(curr != 0)
    80003f30:	00078c63          	beqz	a5,80003f48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f34:	00f4e863          	bltu	s1,a5,80003f44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003f38:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f3c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f40:	ff1ff06f          	j	80003f30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80003f44:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f48:	04070663          	beqz	a4,80003f94 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80003f4c:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80003f50:	0084b783          	ld	a5,8(s1)
    80003f54:	00078a63          	beqz	a5,80003f68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80003f58:	0004b603          	ld	a2,0(s1)
    80003f5c:	01060693          	addi	a3,a2,16
    80003f60:	00d486b3          	add	a3,s1,a3
    80003f64:	02d78e63          	beq	a5,a3,80003fa0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80003f68:	00070a63          	beqz	a4,80003f7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80003f6c:	00073683          	ld	a3,0(a4)
    80003f70:	01068793          	addi	a5,a3,16
    80003f74:	00f707b3          	add	a5,a4,a5
    80003f78:	04978263          	beq	a5,s1,80003fbc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	00013903          	ld	s2,0(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret
        headFree = newSegment;
    80003f94:	0000c797          	auipc	a5,0xc
    80003f98:	ea97b223          	sd	s1,-348(a5) # 8000fe38 <_ZN15MemoryAllocator8headFreeE>
    80003f9c:	fb5ff06f          	j	80003f50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80003fa0:	0007b683          	ld	a3,0(a5)
    80003fa4:	00d60633          	add	a2,a2,a3
    80003fa8:	01060613          	addi	a2,a2,16
    80003fac:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003fb0:	0087b783          	ld	a5,8(a5)
    80003fb4:	00f4b423          	sd	a5,8(s1)
    80003fb8:	fb1ff06f          	j	80003f68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003fbc:	0004b783          	ld	a5,0(s1)
    80003fc0:	00f686b3          	add	a3,a3,a5
    80003fc4:	01068693          	addi	a3,a3,16
    80003fc8:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003fcc:	0084b783          	ld	a5,8(s1)
    80003fd0:	00f73423          	sd	a5,8(a4)
}
    80003fd4:	fa9ff06f          	j	80003f7c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003fd8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003fd8:	fe010113          	addi	sp,sp,-32
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	01213023          	sd	s2,0(sp)
    80003fec:	02010413          	addi	s0,sp,32
    80003ff0:	00050913          	mv	s2,a0
    initMemory();
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	cf4080e7          	jalr	-780(ra) # 80003ce8 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003ffc:	0000c497          	auipc	s1,0xc
    80004000:	e344b483          	ld	s1,-460(s1) # 8000fe30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004004:	00000713          	li	a4,0
    while(curr != 0)
    80004008:	02048a63          	beqz	s1,8000403c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    8000400c:	01048793          	addi	a5,s1,16
    80004010:	01278863          	beq	a5,s2,80004020 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004014:	00048713          	mv	a4,s1
        curr = curr->next;
    80004018:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000401c:	fedff06f          	j	80004008 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004020:	02070e63          	beqz	a4,8000405c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004024:	0084b783          	ld	a5,8(s1)
    80004028:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    8000402c:	0004b583          	ld	a1,0(s1)
    80004030:	00048513          	mv	a0,s1
    80004034:	00000097          	auipc	ra,0x0
    80004038:	ec0080e7          	jalr	-320(ra) # 80003ef4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    8000403c:	02048863          	beqz	s1,8000406c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004040:	00000513          	li	a0,0
    else
        return 1;
}
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	00013903          	ld	s2,0(sp)
    80004054:	02010113          	addi	sp,sp,32
    80004058:	00008067          	ret
                headAllocated = curr->next;
    8000405c:	0084b783          	ld	a5,8(s1)
    80004060:	0000c717          	auipc	a4,0xc
    80004064:	dcf73823          	sd	a5,-560(a4) # 8000fe30 <_ZN15MemoryAllocator13headAllocatedE>
    80004068:	fc5ff06f          	j	8000402c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000406c:	00100513          	li	a0,1
    80004070:	fd5ff06f          	j	80004044 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004074 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004074:	ff010113          	addi	sp,sp,-16
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	00813023          	sd	s0,0(sp)
    80004080:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004084:	00000097          	auipc	ra,0x0
    80004088:	f54080e7          	jalr	-172(ra) # 80003fd8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000408c:	00813083          	ld	ra,8(sp)
    80004090:	00013403          	ld	s0,0(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret

000000008000409c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	e20080e7          	jalr	-480(ra) # 80003ecc <_ZN15MemoryAllocator9mem_allocEm>
}
    800040b4:	00813083          	ld	ra,8(sp)
    800040b8:	00013403          	ld	s0,0(sp)
    800040bc:	01010113          	addi	sp,sp,16
    800040c0:	00008067          	ret

00000000800040c4 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800040c4:	ff010113          	addi	sp,sp,-16
    800040c8:	00113423          	sd	ra,8(sp)
    800040cc:	00813023          	sd	s0,0(sp)
    800040d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800040d4:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800040d8:	00651513          	slli	a0,a0,0x6
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	fc0080e7          	jalr	-64(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800040e4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	898080e7          	jalr	-1896(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    800040f0:	00813083          	ld	ra,8(sp)
    800040f4:	00013403          	ld	s0,0(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret

0000000080004100 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00113423          	sd	ra,8(sp)
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004110:	00000097          	auipc	ra,0x0
    80004114:	f64080e7          	jalr	-156(ra) # 80004074 <_ZN15MemoryAllocator8mem_freeEPv>
    80004118:	00813083          	ld	ra,8(sp)
    8000411c:	00013403          	ld	s0,0(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004138:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	fc4080e7          	jalr	-60(ra) # 80004100 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004144:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004148:	00000097          	auipc	ra,0x0
    8000414c:	838080e7          	jalr	-1992(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004150:	00813083          	ld	ra,8(sp)
    80004154:	00013403          	ld	s0,0(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret

0000000080004160 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00813423          	sd	s0,8(sp)
    80004168:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    8000416c:	00b52a23          	sw	a1,20(a0)
    80004170:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004174:	00053423          	sd	zero,8(a0)
    80004178:	00053023          	sd	zero,0(a0)
}
    8000417c:	00813403          	ld	s0,8(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00813423          	sd	s0,8(sp)
    80004190:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004194:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004198:	00053783          	ld	a5,0(a0)
    8000419c:	00078e63          	beqz	a5,800041b8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800041a0:	00853783          	ld	a5,8(a0)
    800041a4:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800041a8:	00b53423          	sd	a1,8(a0)
    }
}
    800041ac:	00813403          	ld	s0,8(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800041b8:	00b53423          	sd	a1,8(a0)
    800041bc:	00b53023          	sd	a1,0(a0)
    800041c0:	fedff06f          	j	800041ac <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800041c4 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00113423          	sd	ra,8(sp)
    800041cc:	00813023          	sd	s0,0(sp)
    800041d0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800041d4:	00008797          	auipc	a5,0x8
    800041d8:	b3c7b783          	ld	a5,-1220(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041dc:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800041e0:	00200793          	li	a5,2
    800041e4:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	fa0080e7          	jalr	-96(ra) # 80004188 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	3d8080e7          	jalr	984(ra) # 800025c8 <_ZN3PCB8dispatchEv>
}
    800041f8:	00813083          	ld	ra,8(sp)
    800041fc:	00013403          	ld	s0,0(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004208:	00008797          	auipc	a5,0x8
    8000420c:	b087b783          	ld	a5,-1272(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004210:	0007b783          	ld	a5,0(a5)
    80004214:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004218:	01052783          	lw	a5,16(a0)
    8000421c:	fff7879b          	addiw	a5,a5,-1
    80004220:	00f52823          	sw	a5,16(a0)
    80004224:	02079713          	slli	a4,a5,0x20
    80004228:	00074663          	bltz	a4,80004234 <_ZN10KSemaphore4waitEv+0x2c>
}
    8000422c:	00000513          	li	a0,0
    80004230:	00008067          	ret
{
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	01010413          	addi	s0,sp,16
        block();
    80004244:	00000097          	auipc	ra,0x0
    80004248:	f80080e7          	jalr	-128(ra) # 800041c4 <_ZN10KSemaphore5blockEv>
}
    8000424c:	00000513          	li	a0,0
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00013403          	ld	s0,0(sp)
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00008067          	ret

0000000080004260 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00813423          	sd	s0,8(sp)
    80004268:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    8000426c:	00053503          	ld	a0,0(a0)
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00813423          	sd	s0,8(sp)
    80004284:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004288:	00053783          	ld	a5,0(a0)
    8000428c:	00078c63          	beqz	a5,800042a4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004290:	0087b703          	ld	a4,8(a5)
    80004294:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004298:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    8000429c:	00053783          	ld	a5,0(a0)
    800042a0:	00078863          	beqz	a5,800042b0 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800042a4:	00813403          	ld	s0,8(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret
        tailBlocked =0;
    800042b0:	00053423          	sd	zero,8(a0)
    800042b4:	ff1ff06f          	j	800042a4 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800042b8 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800042b8:	fe010113          	addi	sp,sp,-32
    800042bc:	00113c23          	sd	ra,24(sp)
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	01213023          	sd	s2,0(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800042d4:	00090513          	mv	a0,s2
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	f88080e7          	jalr	-120(ra) # 80004260 <_ZN10KSemaphore15getFirstBlockedEv>
    800042e0:	00050493          	mv	s1,a0
    800042e4:	02050463          	beqz	a0,8000430c <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800042e8:	00090513          	mv	a0,s2
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	f90080e7          	jalr	-112(ra) # 8000427c <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800042f4:	00100793          	li	a5,1
    800042f8:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800042fc:	00048513          	mv	a0,s1
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	ec4080e7          	jalr	-316(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004308:	fcdff06f          	j	800042d4 <_ZN10KSemaphoreD1Ev+0x1c>
}
    8000430c:	01813083          	ld	ra,24(sp)
    80004310:	01013403          	ld	s0,16(sp)
    80004314:	00813483          	ld	s1,8(sp)
    80004318:	00013903          	ld	s2,0(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret

0000000080004324 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004324:	fe010113          	addi	sp,sp,-32
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	00813823          	sd	s0,16(sp)
    80004330:	00913423          	sd	s1,8(sp)
    80004334:	01213023          	sd	s2,0(sp)
    80004338:	02010413          	addi	s0,sp,32
    8000433c:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004340:	00000097          	auipc	ra,0x0
    80004344:	f20080e7          	jalr	-224(ra) # 80004260 <_ZN10KSemaphore15getFirstBlockedEv>
    80004348:	00050493          	mv	s1,a0
    removeFirstBlocked();
    8000434c:	00090513          	mv	a0,s2
    80004350:	00000097          	auipc	ra,0x0
    80004354:	f2c080e7          	jalr	-212(ra) # 8000427c <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004358:	00048863          	beqz	s1,80004368 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    8000435c:	00048513          	mv	a0,s1
    80004360:	fffff097          	auipc	ra,0xfffff
    80004364:	e64080e7          	jalr	-412(ra) # 800031c4 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004368:	01813083          	ld	ra,24(sp)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	00813483          	ld	s1,8(sp)
    80004374:	00013903          	ld	s2,0(sp)
    80004378:	02010113          	addi	sp,sp,32
    8000437c:	00008067          	ret

0000000080004380 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004380:	01052783          	lw	a5,16(a0)
    80004384:	0017879b          	addiw	a5,a5,1
    80004388:	0007871b          	sext.w	a4,a5
    8000438c:	00f52823          	sw	a5,16(a0)
    80004390:	00e05663          	blez	a4,8000439c <_ZN10KSemaphore6signalEv+0x1c>
}
    80004394:	00000513          	li	a0,0
    80004398:	00008067          	ret
uint64 KSemaphore::signal() {
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00113423          	sd	ra,8(sp)
    800043a4:	00813023          	sd	s0,0(sp)
    800043a8:	01010413          	addi	s0,sp,16
        unblock();
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	f78080e7          	jalr	-136(ra) # 80004324 <_ZN10KSemaphore7unblockEv>
}
    800043b4:	00000513          	li	a0,0
    800043b8:	00813083          	ld	ra,8(sp)
    800043bc:	00013403          	ld	s0,0(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret

00000000800043c8 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800043c8:	ff010113          	addi	sp,sp,-16
    800043cc:	00113423          	sd	ra,8(sp)
    800043d0:	00813023          	sd	s0,0(sp)
    800043d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	cc4080e7          	jalr	-828(ra) # 8000409c <_ZN15MemoryAllocator7kmallocEm>
}
    800043e0:	00813083          	ld	ra,8(sp)
    800043e4:	00013403          	ld	s0,0(sp)
    800043e8:	01010113          	addi	sp,sp,16
    800043ec:	00008067          	ret

00000000800043f0 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800043f0:	fd010113          	addi	sp,sp,-48
    800043f4:	02113423          	sd	ra,40(sp)
    800043f8:	02813023          	sd	s0,32(sp)
    800043fc:	00913c23          	sd	s1,24(sp)
    80004400:	01213823          	sd	s2,16(sp)
    80004404:	01313423          	sd	s3,8(sp)
    80004408:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    8000440c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004410:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004414:	01800513          	li	a0,24
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	fb0080e7          	jalr	-80(ra) # 800043c8 <_ZN10KSemaphorenwEm>
    80004420:	00050493          	mv	s1,a0
    80004424:	0009859b          	sext.w	a1,s3
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	d38080e7          	jalr	-712(ra) # 80004160 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004430:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004434:	02048663          	beqz	s1,80004460 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004438:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	544080e7          	jalr	1348(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004444:	02813083          	ld	ra,40(sp)
    80004448:	02013403          	ld	s0,32(sp)
    8000444c:	01813483          	ld	s1,24(sp)
    80004450:	01013903          	ld	s2,16(sp)
    80004454:	00813983          	ld	s3,8(sp)
    80004458:	03010113          	addi	sp,sp,48
    8000445c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004460:	fff00513          	li	a0,-1
    80004464:	fd9ff06f          	j	8000443c <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004468 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004468:	ff010113          	addi	sp,sp,-16
    8000446c:	00113423          	sd	ra,8(sp)
    80004470:	00813023          	sd	s0,0(sp)
    80004474:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004478:	00000097          	auipc	ra,0x0
    8000447c:	c88080e7          	jalr	-888(ra) # 80004100 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004480:	00813083          	ld	ra,8(sp)
    80004484:	00013403          	ld	s0,0(sp)
    80004488:	01010113          	addi	sp,sp,16
    8000448c:	00008067          	ret

0000000080004490 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004490:	ff010113          	addi	sp,sp,-16
    80004494:	00113423          	sd	ra,8(sp)
    80004498:	00813023          	sd	s0,0(sp)
    8000449c:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044a0:	00058513          	mv	a0,a1
    //uint64 volatile retval = kSem->wait();
    kSem->wait();
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	d64080e7          	jalr	-668(ra) # 80004208 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800044ac:	00008797          	auipc	a5,0x8
    800044b0:	8647b783          	ld	a5,-1948(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x70>
    800044b4:	0007b783          	ld	a5,0(a5)
    800044b8:	0587c783          	lbu	a5,88(a5)
    800044bc:	02078063          	beqz	a5,800044dc <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800044c0:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800044c4:	fffff097          	auipc	ra,0xfffff
    800044c8:	4bc080e7          	jalr	1212(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044cc:	00813083          	ld	ra,8(sp)
    800044d0:	00013403          	ld	s0,0(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800044dc:	00000513          	li	a0,0
    800044e0:	fe5ff06f          	j	800044c4 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800044e4 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800044e4:	ff010113          	addi	sp,sp,-16
    800044e8:	00113423          	sd	ra,8(sp)
    800044ec:	00813023          	sd	s0,0(sp)
    800044f0:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800044f4:	00058513          	mv	a0,a1
    if (kSem == 0)
    800044f8:	02050463          	beqz	a0,80004520 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        //uint64 volatile retval = kSem->signal();
        kSem->signal();
    800044fc:	00000097          	auipc	ra,0x0
    80004500:	e84080e7          	jalr	-380(ra) # 80004380 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80004504:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	478080e7          	jalr	1144(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004510:	00813083          	ld	ra,8(sp)
    80004514:	00013403          	ld	s0,0(sp)
    80004518:	01010113          	addi	sp,sp,16
    8000451c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80004520:	00100513          	li	a0,1
    80004524:	fe5ff06f          	j	80004508 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080004528 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004528:	fe010113          	addi	sp,sp,-32
    8000452c:	00113c23          	sd	ra,24(sp)
    80004530:	00813823          	sd	s0,16(sp)
    80004534:	00913423          	sd	s1,8(sp)
    80004538:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000453c:	00058493          	mv	s1,a1
    delete kSem;
    80004540:	00048e63          	beqz	s1,8000455c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004544:	00048513          	mv	a0,s1
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	d70080e7          	jalr	-656(ra) # 800042b8 <_ZN10KSemaphoreD1Ev>
    80004550:	00048513          	mv	a0,s1
    80004554:	00000097          	auipc	ra,0x0
    80004558:	f14080e7          	jalr	-236(ra) # 80004468 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    8000455c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004560:	fffff097          	auipc	ra,0xfffff
    80004564:	420080e7          	jalr	1056(ra) # 80003980 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004568:	01813083          	ld	ra,24(sp)
    8000456c:	01013403          	ld	s0,16(sp)
    80004570:	00813483          	ld	s1,8(sp)
    80004574:	02010113          	addi	sp,sp,32
    80004578:	00008067          	ret

000000008000457c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000457c:	fe010113          	addi	sp,sp,-32
    80004580:	00113c23          	sd	ra,24(sp)
    80004584:	00813823          	sd	s0,16(sp)
    80004588:	00913423          	sd	s1,8(sp)
    8000458c:	01213023          	sd	s2,0(sp)
    80004590:	02010413          	addi	s0,sp,32
    80004594:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004598:	00000913          	li	s2,0
    8000459c:	00c0006f          	j	800045a8 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	d94080e7          	jalr	-620(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	f68080e7          	jalr	-152(ra) # 80001510 <getc>
    800045b0:	0005059b          	sext.w	a1,a0
    800045b4:	07100793          	li	a5,113
    800045b8:	02f58a63          	beq	a1,a5,800045ec <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800045bc:	0084b503          	ld	a0,8(s1)
    800045c0:	00002097          	auipc	ra,0x2
    800045c4:	5a8080e7          	jalr	1448(ra) # 80006b68 <_ZN6Buffer3putEi>
        i++;
    800045c8:	0019071b          	addiw	a4,s2,1
    800045cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045d0:	0004a683          	lw	a3,0(s1)
    800045d4:	0026979b          	slliw	a5,a3,0x2
    800045d8:	00d787bb          	addw	a5,a5,a3
    800045dc:	0017979b          	slliw	a5,a5,0x1
    800045e0:	02f767bb          	remw	a5,a4,a5
    800045e4:	fc0792e3          	bnez	a5,800045a8 <_Z16producerKeyboardPv+0x2c>
    800045e8:	fb9ff06f          	j	800045a0 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800045ec:	00100793          	li	a5,1
    800045f0:	0000c717          	auipc	a4,0xc
    800045f4:	84f72823          	sw	a5,-1968(a4) # 8000fe40 <threadEnd>
    data->buffer->put('!');
    800045f8:	02100593          	li	a1,33
    800045fc:	0084b503          	ld	a0,8(s1)
    80004600:	00002097          	auipc	ra,0x2
    80004604:	568080e7          	jalr	1384(ra) # 80006b68 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80004608:	0104b503          	ld	a0,16(s1)
    8000460c:	ffffd097          	auipc	ra,0xffffd
    80004610:	e00080e7          	jalr	-512(ra) # 8000140c <sem_signal>
}
    80004614:	01813083          	ld	ra,24(sp)
    80004618:	01013403          	ld	s0,16(sp)
    8000461c:	00813483          	ld	s1,8(sp)
    80004620:	00013903          	ld	s2,0(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <_Z8producerPv>:

void producer(void *arg) {
    8000462c:	fe010113          	addi	sp,sp,-32
    80004630:	00113c23          	sd	ra,24(sp)
    80004634:	00813823          	sd	s0,16(sp)
    80004638:	00913423          	sd	s1,8(sp)
    8000463c:	01213023          	sd	s2,0(sp)
    80004640:	02010413          	addi	s0,sp,32
    80004644:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004648:	00000913          	li	s2,0
    8000464c:	00c0006f          	j	80004658 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	ce4080e7          	jalr	-796(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    80004658:	0000b797          	auipc	a5,0xb
    8000465c:	7e87a783          	lw	a5,2024(a5) # 8000fe40 <threadEnd>
    80004660:	02079e63          	bnez	a5,8000469c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004664:	0004a583          	lw	a1,0(s1)
    80004668:	0305859b          	addiw	a1,a1,48
    8000466c:	0084b503          	ld	a0,8(s1)
    80004670:	00002097          	auipc	ra,0x2
    80004674:	4f8080e7          	jalr	1272(ra) # 80006b68 <_ZN6Buffer3putEi>
        i++;
    80004678:	0019071b          	addiw	a4,s2,1
    8000467c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004680:	0004a683          	lw	a3,0(s1)
    80004684:	0026979b          	slliw	a5,a3,0x2
    80004688:	00d787bb          	addw	a5,a5,a3
    8000468c:	0017979b          	slliw	a5,a5,0x1
    80004690:	02f767bb          	remw	a5,a4,a5
    80004694:	fc0792e3          	bnez	a5,80004658 <_Z8producerPv+0x2c>
    80004698:	fb9ff06f          	j	80004650 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000469c:	0104b503          	ld	a0,16(s1)
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	d6c080e7          	jalr	-660(ra) # 8000140c <sem_signal>
}
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	00813483          	ld	s1,8(sp)
    800046b4:	00013903          	ld	s2,0(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret

00000000800046c0 <_Z8consumerPv>:

void consumer(void *arg) {
    800046c0:	fd010113          	addi	sp,sp,-48
    800046c4:	02113423          	sd	ra,40(sp)
    800046c8:	02813023          	sd	s0,32(sp)
    800046cc:	00913c23          	sd	s1,24(sp)
    800046d0:	01213823          	sd	s2,16(sp)
    800046d4:	01313423          	sd	s3,8(sp)
    800046d8:	03010413          	addi	s0,sp,48
    800046dc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046e0:	00000993          	li	s3,0
    800046e4:	01c0006f          	j	80004700 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	c4c080e7          	jalr	-948(ra) # 80001334 <thread_dispatch>
    800046f0:	0500006f          	j	80004740 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046f4:	00a00513          	li	a0,10
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	e40080e7          	jalr	-448(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004700:	0000b797          	auipc	a5,0xb
    80004704:	7407a783          	lw	a5,1856(a5) # 8000fe40 <threadEnd>
    80004708:	06079063          	bnez	a5,80004768 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    8000470c:	00893503          	ld	a0,8(s2)
    80004710:	00002097          	auipc	ra,0x2
    80004714:	4e8080e7          	jalr	1256(ra) # 80006bf8 <_ZN6Buffer3getEv>
        i++;
    80004718:	0019849b          	addiw	s1,s3,1
    8000471c:	0004899b          	sext.w	s3,s1
        putc(key);
    80004720:	0ff57513          	andi	a0,a0,255
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	e14080e7          	jalr	-492(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    8000472c:	00092703          	lw	a4,0(s2)
    80004730:	0027179b          	slliw	a5,a4,0x2
    80004734:	00e787bb          	addw	a5,a5,a4
    80004738:	02f4e7bb          	remw	a5,s1,a5
    8000473c:	fa0786e3          	beqz	a5,800046e8 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004740:	05000793          	li	a5,80
    80004744:	02f4e4bb          	remw	s1,s1,a5
    80004748:	fa049ce3          	bnez	s1,80004700 <_Z8consumerPv+0x40>
    8000474c:	fa9ff06f          	j	800046f4 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80004750:	00893503          	ld	a0,8(s2)
    80004754:	00002097          	auipc	ra,0x2
    80004758:	4a4080e7          	jalr	1188(ra) # 80006bf8 <_ZN6Buffer3getEv>
        putc(key);
    8000475c:	0ff57513          	andi	a0,a0,255
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	dd8080e7          	jalr	-552(ra) # 80001538 <putc>
    while (data->buffer->getCnt() > 0) {
    80004768:	00893503          	ld	a0,8(s2)
    8000476c:	00002097          	auipc	ra,0x2
    80004770:	518080e7          	jalr	1304(ra) # 80006c84 <_ZN6Buffer6getCntEv>
    80004774:	fca04ee3          	bgtz	a0,80004750 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80004778:	01093503          	ld	a0,16(s2)
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	c90080e7          	jalr	-880(ra) # 8000140c <sem_signal>
}
    80004784:	02813083          	ld	ra,40(sp)
    80004788:	02013403          	ld	s0,32(sp)
    8000478c:	01813483          	ld	s1,24(sp)
    80004790:	01013903          	ld	s2,16(sp)
    80004794:	00813983          	ld	s3,8(sp)
    80004798:	03010113          	addi	sp,sp,48
    8000479c:	00008067          	ret

00000000800047a0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800047a0:	f9010113          	addi	sp,sp,-112
    800047a4:	06113423          	sd	ra,104(sp)
    800047a8:	06813023          	sd	s0,96(sp)
    800047ac:	04913c23          	sd	s1,88(sp)
    800047b0:	05213823          	sd	s2,80(sp)
    800047b4:	05313423          	sd	s3,72(sp)
    800047b8:	05413023          	sd	s4,64(sp)
    800047bc:	03513c23          	sd	s5,56(sp)
    800047c0:	03613823          	sd	s6,48(sp)
    800047c4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800047c8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	b2c50513          	addi	a0,a0,-1236 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800047d4:	00002097          	auipc	ra,0x2
    800047d8:	b00080e7          	jalr	-1280(ra) # 800062d4 <_Z11printStringPKc>
    getString(input, 30);
    800047dc:	01e00593          	li	a1,30
    800047e0:	fa040493          	addi	s1,s0,-96
    800047e4:	00048513          	mv	a0,s1
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	b68080e7          	jalr	-1176(ra) # 80006350 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047f0:	00048513          	mv	a0,s1
    800047f4:	00002097          	auipc	ra,0x2
    800047f8:	c28080e7          	jalr	-984(ra) # 8000641c <_Z11stringToIntPKc>
    800047fc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004800:	00005517          	auipc	a0,0x5
    80004804:	b1850513          	addi	a0,a0,-1256 # 80009318 <CONSOLE_STATUS+0x308>
    80004808:	00002097          	auipc	ra,0x2
    8000480c:	acc080e7          	jalr	-1332(ra) # 800062d4 <_Z11printStringPKc>
    getString(input, 30);
    80004810:	01e00593          	li	a1,30
    80004814:	00048513          	mv	a0,s1
    80004818:	00002097          	auipc	ra,0x2
    8000481c:	b38080e7          	jalr	-1224(ra) # 80006350 <_Z9getStringPci>
    n = stringToInt(input);
    80004820:	00048513          	mv	a0,s1
    80004824:	00002097          	auipc	ra,0x2
    80004828:	bf8080e7          	jalr	-1032(ra) # 8000641c <_Z11stringToIntPKc>
    8000482c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004830:	00005517          	auipc	a0,0x5
    80004834:	b0850513          	addi	a0,a0,-1272 # 80009338 <CONSOLE_STATUS+0x328>
    80004838:	00002097          	auipc	ra,0x2
    8000483c:	a9c080e7          	jalr	-1380(ra) # 800062d4 <_Z11printStringPKc>
    80004840:	00000613          	li	a2,0
    80004844:	00a00593          	li	a1,10
    80004848:	00090513          	mv	a0,s2
    8000484c:	00002097          	auipc	ra,0x2
    80004850:	c20080e7          	jalr	-992(ra) # 8000646c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004854:	00005517          	auipc	a0,0x5
    80004858:	afc50513          	addi	a0,a0,-1284 # 80009350 <CONSOLE_STATUS+0x340>
    8000485c:	00002097          	auipc	ra,0x2
    80004860:	a78080e7          	jalr	-1416(ra) # 800062d4 <_Z11printStringPKc>
    80004864:	00000613          	li	a2,0
    80004868:	00a00593          	li	a1,10
    8000486c:	00048513          	mv	a0,s1
    80004870:	00002097          	auipc	ra,0x2
    80004874:	bfc080e7          	jalr	-1028(ra) # 8000646c <_Z8printIntiii>
    printString(".\n");
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	af050513          	addi	a0,a0,-1296 # 80009368 <CONSOLE_STATUS+0x358>
    80004880:	00002097          	auipc	ra,0x2
    80004884:	a54080e7          	jalr	-1452(ra) # 800062d4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004888:	0324c463          	blt	s1,s2,800048b0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000488c:	03205c63          	blez	s2,800048c4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80004890:	03800513          	li	a0,56
    80004894:	fffff097          	auipc	ra,0xfffff
    80004898:	af4080e7          	jalr	-1292(ra) # 80003388 <_Znwm>
    8000489c:	00050a13          	mv	s4,a0
    800048a0:	00048593          	mv	a1,s1
    800048a4:	00002097          	auipc	ra,0x2
    800048a8:	228080e7          	jalr	552(ra) # 80006acc <_ZN6BufferC1Ei>
    800048ac:	0300006f          	j	800048dc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	ac050513          	addi	a0,a0,-1344 # 80009370 <CONSOLE_STATUS+0x360>
    800048b8:	00002097          	auipc	ra,0x2
    800048bc:	a1c080e7          	jalr	-1508(ra) # 800062d4 <_Z11printStringPKc>
        return;
    800048c0:	0140006f          	j	800048d4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	aec50513          	addi	a0,a0,-1300 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800048cc:	00002097          	auipc	ra,0x2
    800048d0:	a08080e7          	jalr	-1528(ra) # 800062d4 <_Z11printStringPKc>
        return;
    800048d4:	000b0113          	mv	sp,s6
    800048d8:	1500006f          	j	80004a28 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800048dc:	00000593          	li	a1,0
    800048e0:	0000b517          	auipc	a0,0xb
    800048e4:	56850513          	addi	a0,a0,1384 # 8000fe48 <waitForAll>
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	a94080e7          	jalr	-1388(ra) # 8000137c <sem_open>
    thread_t threads[threadNum];
    800048f0:	00391793          	slli	a5,s2,0x3
    800048f4:	00f78793          	addi	a5,a5,15
    800048f8:	ff07f793          	andi	a5,a5,-16
    800048fc:	40f10133          	sub	sp,sp,a5
    80004900:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80004904:	0019071b          	addiw	a4,s2,1
    80004908:	00171793          	slli	a5,a4,0x1
    8000490c:	00e787b3          	add	a5,a5,a4
    80004910:	00379793          	slli	a5,a5,0x3
    80004914:	00f78793          	addi	a5,a5,15
    80004918:	ff07f793          	andi	a5,a5,-16
    8000491c:	40f10133          	sub	sp,sp,a5
    80004920:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80004924:	00191613          	slli	a2,s2,0x1
    80004928:	012607b3          	add	a5,a2,s2
    8000492c:	00379793          	slli	a5,a5,0x3
    80004930:	00f987b3          	add	a5,s3,a5
    80004934:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004938:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000493c:	0000b717          	auipc	a4,0xb
    80004940:	50c73703          	ld	a4,1292(a4) # 8000fe48 <waitForAll>
    80004944:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004948:	00078613          	mv	a2,a5
    8000494c:	00000597          	auipc	a1,0x0
    80004950:	d7458593          	addi	a1,a1,-652 # 800046c0 <_Z8consumerPv>
    80004954:	f9840513          	addi	a0,s0,-104
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	95c080e7          	jalr	-1700(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004960:	00000493          	li	s1,0
    80004964:	0280006f          	j	8000498c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80004968:	00000597          	auipc	a1,0x0
    8000496c:	c1458593          	addi	a1,a1,-1004 # 8000457c <_Z16producerKeyboardPv>
                      data + i);
    80004970:	00179613          	slli	a2,a5,0x1
    80004974:	00f60633          	add	a2,a2,a5
    80004978:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000497c:	00c98633          	add	a2,s3,a2
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	934080e7          	jalr	-1740(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004988:	0014849b          	addiw	s1,s1,1
    8000498c:	0524d263          	bge	s1,s2,800049d0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80004990:	00149793          	slli	a5,s1,0x1
    80004994:	009787b3          	add	a5,a5,s1
    80004998:	00379793          	slli	a5,a5,0x3
    8000499c:	00f987b3          	add	a5,s3,a5
    800049a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800049a4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800049a8:	0000b717          	auipc	a4,0xb
    800049ac:	4a073703          	ld	a4,1184(a4) # 8000fe48 <waitForAll>
    800049b0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800049b4:	00048793          	mv	a5,s1
    800049b8:	00349513          	slli	a0,s1,0x3
    800049bc:	00aa8533          	add	a0,s5,a0
    800049c0:	fa9054e3          	blez	s1,80004968 <_Z22producerConsumer_C_APIv+0x1c8>
    800049c4:	00000597          	auipc	a1,0x0
    800049c8:	c6858593          	addi	a1,a1,-920 # 8000462c <_Z8producerPv>
    800049cc:	fa5ff06f          	j	80004970 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	964080e7          	jalr	-1692(ra) # 80001334 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    800049d8:	00000493          	li	s1,0
    800049dc:	00994e63          	blt	s2,s1,800049f8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800049e0:	0000b517          	auipc	a0,0xb
    800049e4:	46853503          	ld	a0,1128(a0) # 8000fe48 <waitForAll>
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	9f8080e7          	jalr	-1544(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800049f0:	0014849b          	addiw	s1,s1,1
    800049f4:	fe9ff06f          	j	800049dc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800049f8:	0000b517          	auipc	a0,0xb
    800049fc:	45053503          	ld	a0,1104(a0) # 8000fe48 <waitForAll>
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	9b4080e7          	jalr	-1612(ra) # 800013b4 <sem_close>
    delete buffer;
    80004a08:	000a0e63          	beqz	s4,80004a24 <_Z22producerConsumer_C_APIv+0x284>
    80004a0c:	000a0513          	mv	a0,s4
    80004a10:	00002097          	auipc	ra,0x2
    80004a14:	2fc080e7          	jalr	764(ra) # 80006d0c <_ZN6BufferD1Ev>
    80004a18:	000a0513          	mv	a0,s4
    80004a1c:	fffff097          	auipc	ra,0xfffff
    80004a20:	994080e7          	jalr	-1644(ra) # 800033b0 <_ZdlPv>
    80004a24:	000b0113          	mv	sp,s6

    80004a28:	f9040113          	addi	sp,s0,-112
    80004a2c:	06813083          	ld	ra,104(sp)
    80004a30:	06013403          	ld	s0,96(sp)
    80004a34:	05813483          	ld	s1,88(sp)
    80004a38:	05013903          	ld	s2,80(sp)
    80004a3c:	04813983          	ld	s3,72(sp)
    80004a40:	04013a03          	ld	s4,64(sp)
    80004a44:	03813a83          	ld	s5,56(sp)
    80004a48:	03013b03          	ld	s6,48(sp)
    80004a4c:	07010113          	addi	sp,sp,112
    80004a50:	00008067          	ret
    80004a54:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004a58:	000a0513          	mv	a0,s4
    80004a5c:	fffff097          	auipc	ra,0xfffff
    80004a60:	954080e7          	jalr	-1708(ra) # 800033b0 <_ZdlPv>
    80004a64:	00048513          	mv	a0,s1
    80004a68:	0000c097          	auipc	ra,0xc
    80004a6c:	4d0080e7          	jalr	1232(ra) # 80010f38 <_Unwind_Resume>

0000000080004a70 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80004a70:	fe010113          	addi	sp,sp,-32
    80004a74:	00113c23          	sd	ra,24(sp)
    80004a78:	00813823          	sd	s0,16(sp)
    80004a7c:	00913423          	sd	s1,8(sp)
    80004a80:	01213023          	sd	s2,0(sp)
    80004a84:	02010413          	addi	s0,sp,32
    80004a88:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004a8c:	00100793          	li	a5,1
    80004a90:	02a7f863          	bgeu	a5,a0,80004ac0 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004a94:	00a00793          	li	a5,10
    80004a98:	02f577b3          	remu	a5,a0,a5
    80004a9c:	02078e63          	beqz	a5,80004ad8 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004aa0:	fff48513          	addi	a0,s1,-1
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	fcc080e7          	jalr	-52(ra) # 80004a70 <_Z9fibonaccim>
    80004aac:	00050913          	mv	s2,a0
    80004ab0:	ffe48513          	addi	a0,s1,-2
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	fbc080e7          	jalr	-68(ra) # 80004a70 <_Z9fibonaccim>
    80004abc:	00a90533          	add	a0,s2,a0
}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004ad8:	ffffd097          	auipc	ra,0xffffd
    80004adc:	85c080e7          	jalr	-1956(ra) # 80001334 <thread_dispatch>
    80004ae0:	fc1ff06f          	j	80004aa0 <_Z9fibonaccim+0x30>

0000000080004ae4 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	01213023          	sd	s2,0(sp)
    80004af8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004afc:	00000913          	li	s2,0
    80004b00:	0380006f          	j	80004b38 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	830080e7          	jalr	-2000(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004b0c:	00148493          	addi	s1,s1,1
    80004b10:	000027b7          	lui	a5,0x2
    80004b14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b18:	0097ee63          	bltu	a5,s1,80004b34 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b1c:	00000713          	li	a4,0
    80004b20:	000077b7          	lui	a5,0x7
    80004b24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b28:	fce7eee3          	bltu	a5,a4,80004b04 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004b2c:	00170713          	addi	a4,a4,1
    80004b30:	ff1ff06f          	j	80004b20 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004b34:	00190913          	addi	s2,s2,1
    80004b38:	00900793          	li	a5,9
    80004b3c:	0527e063          	bltu	a5,s2,80004b7c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004b40:	00005517          	auipc	a0,0x5
    80004b44:	8a050513          	addi	a0,a0,-1888 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	78c080e7          	jalr	1932(ra) # 800062d4 <_Z11printStringPKc>
    80004b50:	00000613          	li	a2,0
    80004b54:	00a00593          	li	a1,10
    80004b58:	0009051b          	sext.w	a0,s2
    80004b5c:	00002097          	auipc	ra,0x2
    80004b60:	910080e7          	jalr	-1776(ra) # 8000646c <_Z8printIntiii>
    80004b64:	00004517          	auipc	a0,0x4
    80004b68:	59450513          	addi	a0,a0,1428 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	768080e7          	jalr	1896(ra) # 800062d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b74:	00000493          	li	s1,0
    80004b78:	f99ff06f          	j	80004b10 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	86c50513          	addi	a0,a0,-1940 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	750080e7          	jalr	1872(ra) # 800062d4 <_Z11printStringPKc>
    finishedA = true;
    80004b8c:	00100793          	li	a5,1
    80004b90:	0000b717          	auipc	a4,0xb
    80004b94:	2cf70023          	sb	a5,704(a4) # 8000fe50 <finishedA>
}
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	01013403          	ld	s0,16(sp)
    80004ba0:	00813483          	ld	s1,8(sp)
    80004ba4:	00013903          	ld	s2,0(sp)
    80004ba8:	02010113          	addi	sp,sp,32
    80004bac:	00008067          	ret

0000000080004bb0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004bb0:	fe010113          	addi	sp,sp,-32
    80004bb4:	00113c23          	sd	ra,24(sp)
    80004bb8:	00813823          	sd	s0,16(sp)
    80004bbc:	00913423          	sd	s1,8(sp)
    80004bc0:	01213023          	sd	s2,0(sp)
    80004bc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004bc8:	00000913          	li	s2,0
    80004bcc:	0380006f          	j	80004c04 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004bd0:	ffffc097          	auipc	ra,0xffffc
    80004bd4:	764080e7          	jalr	1892(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004bd8:	00148493          	addi	s1,s1,1
    80004bdc:	000027b7          	lui	a5,0x2
    80004be0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004be4:	0097ee63          	bltu	a5,s1,80004c00 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004be8:	00000713          	li	a4,0
    80004bec:	000077b7          	lui	a5,0x7
    80004bf0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004bf4:	fce7eee3          	bltu	a5,a4,80004bd0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004bf8:	00170713          	addi	a4,a4,1
    80004bfc:	ff1ff06f          	j	80004bec <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c00:	00190913          	addi	s2,s2,1
    80004c04:	00f00793          	li	a5,15
    80004c08:	0527e063          	bltu	a5,s2,80004c48 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c0c:	00004517          	auipc	a0,0x4
    80004c10:	7ec50513          	addi	a0,a0,2028 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	6c0080e7          	jalr	1728(ra) # 800062d4 <_Z11printStringPKc>
    80004c1c:	00000613          	li	a2,0
    80004c20:	00a00593          	li	a1,10
    80004c24:	0009051b          	sext.w	a0,s2
    80004c28:	00002097          	auipc	ra,0x2
    80004c2c:	844080e7          	jalr	-1980(ra) # 8000646c <_Z8printIntiii>
    80004c30:	00004517          	auipc	a0,0x4
    80004c34:	4c850513          	addi	a0,a0,1224 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004c38:	00001097          	auipc	ra,0x1
    80004c3c:	69c080e7          	jalr	1692(ra) # 800062d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c40:	00000493          	li	s1,0
    80004c44:	f99ff06f          	j	80004bdc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004c48:	00004517          	auipc	a0,0x4
    80004c4c:	7b850513          	addi	a0,a0,1976 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	684080e7          	jalr	1668(ra) # 800062d4 <_Z11printStringPKc>
    finishedB = true;
    80004c58:	00100793          	li	a5,1
    80004c5c:	0000b717          	auipc	a4,0xb
    80004c60:	1ef70aa3          	sb	a5,501(a4) # 8000fe51 <finishedB>
    thread_dispatch();
    80004c64:	ffffc097          	auipc	ra,0xffffc
    80004c68:	6d0080e7          	jalr	1744(ra) # 80001334 <thread_dispatch>
}
    80004c6c:	01813083          	ld	ra,24(sp)
    80004c70:	01013403          	ld	s0,16(sp)
    80004c74:	00813483          	ld	s1,8(sp)
    80004c78:	00013903          	ld	s2,0(sp)
    80004c7c:	02010113          	addi	sp,sp,32
    80004c80:	00008067          	ret

0000000080004c84 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004c84:	fe010113          	addi	sp,sp,-32
    80004c88:	00113c23          	sd	ra,24(sp)
    80004c8c:	00813823          	sd	s0,16(sp)
    80004c90:	00913423          	sd	s1,8(sp)
    80004c94:	01213023          	sd	s2,0(sp)
    80004c98:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c9c:	00000493          	li	s1,0
    80004ca0:	0400006f          	j	80004ce0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004ca4:	00004517          	auipc	a0,0x4
    80004ca8:	76c50513          	addi	a0,a0,1900 # 80009410 <CONSOLE_STATUS+0x400>
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	628080e7          	jalr	1576(ra) # 800062d4 <_Z11printStringPKc>
    80004cb4:	00000613          	li	a2,0
    80004cb8:	00a00593          	li	a1,10
    80004cbc:	00048513          	mv	a0,s1
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	7ac080e7          	jalr	1964(ra) # 8000646c <_Z8printIntiii>
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	43050513          	addi	a0,a0,1072 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004cd0:	00001097          	auipc	ra,0x1
    80004cd4:	604080e7          	jalr	1540(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cd8:	0014849b          	addiw	s1,s1,1
    80004cdc:	0ff4f493          	andi	s1,s1,255
    80004ce0:	00200793          	li	a5,2
    80004ce4:	fc97f0e3          	bgeu	a5,s1,80004ca4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004ce8:	00004517          	auipc	a0,0x4
    80004cec:	73050513          	addi	a0,a0,1840 # 80009418 <CONSOLE_STATUS+0x408>
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	5e4080e7          	jalr	1508(ra) # 800062d4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004cf8:	00700313          	li	t1,7
    thread_dispatch();
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	638080e7          	jalr	1592(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d04:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004d08:	00004517          	auipc	a0,0x4
    80004d0c:	72050513          	addi	a0,a0,1824 # 80009428 <CONSOLE_STATUS+0x418>
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	5c4080e7          	jalr	1476(ra) # 800062d4 <_Z11printStringPKc>
    80004d18:	00000613          	li	a2,0
    80004d1c:	00a00593          	li	a1,10
    80004d20:	0009051b          	sext.w	a0,s2
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	748080e7          	jalr	1864(ra) # 8000646c <_Z8printIntiii>
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	3cc50513          	addi	a0,a0,972 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	5a0080e7          	jalr	1440(ra) # 800062d4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004d3c:	00c00513          	li	a0,12
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	d30080e7          	jalr	-720(ra) # 80004a70 <_Z9fibonaccim>
    80004d48:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d4c:	00004517          	auipc	a0,0x4
    80004d50:	6e450513          	addi	a0,a0,1764 # 80009430 <CONSOLE_STATUS+0x420>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	580080e7          	jalr	1408(ra) # 800062d4 <_Z11printStringPKc>
    80004d5c:	00000613          	li	a2,0
    80004d60:	00a00593          	li	a1,10
    80004d64:	0009051b          	sext.w	a0,s2
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	704080e7          	jalr	1796(ra) # 8000646c <_Z8printIntiii>
    80004d70:	00004517          	auipc	a0,0x4
    80004d74:	38850513          	addi	a0,a0,904 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	55c080e7          	jalr	1372(ra) # 800062d4 <_Z11printStringPKc>
    80004d80:	0400006f          	j	80004dc0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004d84:	00004517          	auipc	a0,0x4
    80004d88:	68c50513          	addi	a0,a0,1676 # 80009410 <CONSOLE_STATUS+0x400>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	548080e7          	jalr	1352(ra) # 800062d4 <_Z11printStringPKc>
    80004d94:	00000613          	li	a2,0
    80004d98:	00a00593          	li	a1,10
    80004d9c:	00048513          	mv	a0,s1
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	6cc080e7          	jalr	1740(ra) # 8000646c <_Z8printIntiii>
    80004da8:	00004517          	auipc	a0,0x4
    80004dac:	35050513          	addi	a0,a0,848 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	524080e7          	jalr	1316(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004db8:	0014849b          	addiw	s1,s1,1
    80004dbc:	0ff4f493          	andi	s1,s1,255
    80004dc0:	00500793          	li	a5,5
    80004dc4:	fc97f0e3          	bgeu	a5,s1,80004d84 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004dc8:	00004517          	auipc	a0,0x4
    80004dcc:	62050513          	addi	a0,a0,1568 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	504080e7          	jalr	1284(ra) # 800062d4 <_Z11printStringPKc>
    finishedC = true;
    80004dd8:	00100793          	li	a5,1
    80004ddc:	0000b717          	auipc	a4,0xb
    80004de0:	06f70b23          	sb	a5,118(a4) # 8000fe52 <finishedC>
    thread_dispatch();
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	550080e7          	jalr	1360(ra) # 80001334 <thread_dispatch>
}
    80004dec:	01813083          	ld	ra,24(sp)
    80004df0:	01013403          	ld	s0,16(sp)
    80004df4:	00813483          	ld	s1,8(sp)
    80004df8:	00013903          	ld	s2,0(sp)
    80004dfc:	02010113          	addi	sp,sp,32
    80004e00:	00008067          	ret

0000000080004e04 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004e04:	fe010113          	addi	sp,sp,-32
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	00813823          	sd	s0,16(sp)
    80004e10:	00913423          	sd	s1,8(sp)
    80004e14:	01213023          	sd	s2,0(sp)
    80004e18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004e1c:	00a00493          	li	s1,10
    80004e20:	0400006f          	j	80004e60 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	61c50513          	addi	a0,a0,1564 # 80009440 <CONSOLE_STATUS+0x430>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	4a8080e7          	jalr	1192(ra) # 800062d4 <_Z11printStringPKc>
    80004e34:	00000613          	li	a2,0
    80004e38:	00a00593          	li	a1,10
    80004e3c:	00048513          	mv	a0,s1
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	62c080e7          	jalr	1580(ra) # 8000646c <_Z8printIntiii>
    80004e48:	00004517          	auipc	a0,0x4
    80004e4c:	2b050513          	addi	a0,a0,688 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	484080e7          	jalr	1156(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e58:	0014849b          	addiw	s1,s1,1
    80004e5c:	0ff4f493          	andi	s1,s1,255
    80004e60:	00c00793          	li	a5,12
    80004e64:	fc97f0e3          	bgeu	a5,s1,80004e24 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004e68:	00004517          	auipc	a0,0x4
    80004e6c:	5e050513          	addi	a0,a0,1504 # 80009448 <CONSOLE_STATUS+0x438>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	464080e7          	jalr	1124(ra) # 800062d4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e78:	00500313          	li	t1,5
    thread_dispatch();
    80004e7c:	ffffc097          	auipc	ra,0xffffc
    80004e80:	4b8080e7          	jalr	1208(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004e84:	01000513          	li	a0,16
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	be8080e7          	jalr	-1048(ra) # 80004a70 <_Z9fibonaccim>
    80004e90:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e94:	00004517          	auipc	a0,0x4
    80004e98:	5c450513          	addi	a0,a0,1476 # 80009458 <CONSOLE_STATUS+0x448>
    80004e9c:	00001097          	auipc	ra,0x1
    80004ea0:	438080e7          	jalr	1080(ra) # 800062d4 <_Z11printStringPKc>
    80004ea4:	00000613          	li	a2,0
    80004ea8:	00a00593          	li	a1,10
    80004eac:	0009051b          	sext.w	a0,s2
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	5bc080e7          	jalr	1468(ra) # 8000646c <_Z8printIntiii>
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	24050513          	addi	a0,a0,576 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	414080e7          	jalr	1044(ra) # 800062d4 <_Z11printStringPKc>
    80004ec8:	0400006f          	j	80004f08 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ecc:	00004517          	auipc	a0,0x4
    80004ed0:	57450513          	addi	a0,a0,1396 # 80009440 <CONSOLE_STATUS+0x430>
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	400080e7          	jalr	1024(ra) # 800062d4 <_Z11printStringPKc>
    80004edc:	00000613          	li	a2,0
    80004ee0:	00a00593          	li	a1,10
    80004ee4:	00048513          	mv	a0,s1
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	584080e7          	jalr	1412(ra) # 8000646c <_Z8printIntiii>
    80004ef0:	00004517          	auipc	a0,0x4
    80004ef4:	20850513          	addi	a0,a0,520 # 800090f8 <CONSOLE_STATUS+0xe8>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	3dc080e7          	jalr	988(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004f00:	0014849b          	addiw	s1,s1,1
    80004f04:	0ff4f493          	andi	s1,s1,255
    80004f08:	00f00793          	li	a5,15
    80004f0c:	fc97f0e3          	bgeu	a5,s1,80004ecc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004f10:	00004517          	auipc	a0,0x4
    80004f14:	55850513          	addi	a0,a0,1368 # 80009468 <CONSOLE_STATUS+0x458>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	3bc080e7          	jalr	956(ra) # 800062d4 <_Z11printStringPKc>
    finishedD = true;
    80004f20:	00100793          	li	a5,1
    80004f24:	0000b717          	auipc	a4,0xb
    80004f28:	f2f707a3          	sb	a5,-209(a4) # 8000fe53 <finishedD>
    thread_dispatch();
    80004f2c:	ffffc097          	auipc	ra,0xffffc
    80004f30:	408080e7          	jalr	1032(ra) # 80001334 <thread_dispatch>
}
    80004f34:	01813083          	ld	ra,24(sp)
    80004f38:	01013403          	ld	s0,16(sp)
    80004f3c:	00813483          	ld	s1,8(sp)
    80004f40:	00013903          	ld	s2,0(sp)
    80004f44:	02010113          	addi	sp,sp,32
    80004f48:	00008067          	ret

0000000080004f4c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004f4c:	fc010113          	addi	sp,sp,-64
    80004f50:	02113c23          	sd	ra,56(sp)
    80004f54:	02813823          	sd	s0,48(sp)
    80004f58:	02913423          	sd	s1,40(sp)
    80004f5c:	03213023          	sd	s2,32(sp)
    80004f60:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004f64:	01000513          	li	a0,16
    80004f68:	ffffe097          	auipc	ra,0xffffe
    80004f6c:	420080e7          	jalr	1056(ra) # 80003388 <_Znwm>
    80004f70:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80004f74:	ffffe097          	auipc	ra,0xffffe
    80004f78:	5e4080e7          	jalr	1508(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004f7c:	00007797          	auipc	a5,0x7
    80004f80:	c0478793          	addi	a5,a5,-1020 # 8000bb80 <_ZTV7WorkerA+0x10>
    80004f84:	00f4b023          	sd	a5,0(s1)
    80004f88:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004f8c:	00004517          	auipc	a0,0x4
    80004f90:	4ec50513          	addi	a0,a0,1260 # 80009478 <CONSOLE_STATUS+0x468>
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	340080e7          	jalr	832(ra) # 800062d4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004f9c:	01000513          	li	a0,16
    80004fa0:	ffffe097          	auipc	ra,0xffffe
    80004fa4:	3e8080e7          	jalr	1000(ra) # 80003388 <_Znwm>
    80004fa8:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    80004fac:	ffffe097          	auipc	ra,0xffffe
    80004fb0:	5ac080e7          	jalr	1452(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004fb4:	00007797          	auipc	a5,0x7
    80004fb8:	bf478793          	addi	a5,a5,-1036 # 8000bba8 <_ZTV7WorkerB+0x10>
    80004fbc:	00f4b023          	sd	a5,0(s1)
    80004fc0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	4cc50513          	addi	a0,a0,1228 # 80009490 <CONSOLE_STATUS+0x480>
    80004fcc:	00001097          	auipc	ra,0x1
    80004fd0:	308080e7          	jalr	776(ra) # 800062d4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004fd4:	01000513          	li	a0,16
    80004fd8:	ffffe097          	auipc	ra,0xffffe
    80004fdc:	3b0080e7          	jalr	944(ra) # 80003388 <_Znwm>
    80004fe0:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    80004fe4:	ffffe097          	auipc	ra,0xffffe
    80004fe8:	574080e7          	jalr	1396(ra) # 80003558 <_ZN6ThreadC1Ev>
    80004fec:	00007797          	auipc	a5,0x7
    80004ff0:	be478793          	addi	a5,a5,-1052 # 8000bbd0 <_ZTV7WorkerC+0x10>
    80004ff4:	00f4b023          	sd	a5,0(s1)
    80004ff8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004ffc:	00004517          	auipc	a0,0x4
    80005000:	4ac50513          	addi	a0,a0,1196 # 800094a8 <CONSOLE_STATUS+0x498>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	2d0080e7          	jalr	720(ra) # 800062d4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000500c:	01000513          	li	a0,16
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	378080e7          	jalr	888(ra) # 80003388 <_Znwm>
    80005018:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000501c:	ffffe097          	auipc	ra,0xffffe
    80005020:	53c080e7          	jalr	1340(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005024:	00007797          	auipc	a5,0x7
    80005028:	bd478793          	addi	a5,a5,-1068 # 8000bbf8 <_ZTV7WorkerD+0x10>
    8000502c:	00f4b023          	sd	a5,0(s1)
    80005030:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	48c50513          	addi	a0,a0,1164 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000503c:	00001097          	auipc	ra,0x1
    80005040:	298080e7          	jalr	664(ra) # 800062d4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005044:	00000493          	li	s1,0
    80005048:	00300793          	li	a5,3
    8000504c:	0297c663          	blt	a5,s1,80005078 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80005050:	00349793          	slli	a5,s1,0x3
    80005054:	fe040713          	addi	a4,s0,-32
    80005058:	00f707b3          	add	a5,a4,a5
    8000505c:	fe07b503          	ld	a0,-32(a5)
    80005060:	ffffe097          	auipc	ra,0xffffe
    80005064:	3f8080e7          	jalr	1016(ra) # 80003458 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005068:	0014849b          	addiw	s1,s1,1
    8000506c:	fddff06f          	j	80005048 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005070:	ffffe097          	auipc	ra,0xffffe
    80005074:	420080e7          	jalr	1056(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005078:	0000b797          	auipc	a5,0xb
    8000507c:	dd87c783          	lbu	a5,-552(a5) # 8000fe50 <finishedA>
    80005080:	fe0788e3          	beqz	a5,80005070 <_Z20Threads_CPP_API_testv+0x124>
    80005084:	0000b797          	auipc	a5,0xb
    80005088:	dcd7c783          	lbu	a5,-563(a5) # 8000fe51 <finishedB>
    8000508c:	fe0782e3          	beqz	a5,80005070 <_Z20Threads_CPP_API_testv+0x124>
    80005090:	0000b797          	auipc	a5,0xb
    80005094:	dc27c783          	lbu	a5,-574(a5) # 8000fe52 <finishedC>
    80005098:	fc078ce3          	beqz	a5,80005070 <_Z20Threads_CPP_API_testv+0x124>
    8000509c:	0000b797          	auipc	a5,0xb
    800050a0:	db77c783          	lbu	a5,-585(a5) # 8000fe53 <finishedD>
    800050a4:	fc0786e3          	beqz	a5,80005070 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    800050a8:	fc040493          	addi	s1,s0,-64
    800050ac:	0080006f          	j	800050b4 <_Z20Threads_CPP_API_testv+0x168>
    800050b0:	00848493          	addi	s1,s1,8
    800050b4:	fe040793          	addi	a5,s0,-32
    800050b8:	08f48663          	beq	s1,a5,80005144 <_Z20Threads_CPP_API_testv+0x1f8>
    800050bc:	0004b503          	ld	a0,0(s1)
    800050c0:	fe0508e3          	beqz	a0,800050b0 <_Z20Threads_CPP_API_testv+0x164>
    800050c4:	00053783          	ld	a5,0(a0)
    800050c8:	0087b783          	ld	a5,8(a5)
    800050cc:	000780e7          	jalr	a5
    800050d0:	fe1ff06f          	j	800050b0 <_Z20Threads_CPP_API_testv+0x164>
    800050d4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800050d8:	00048513          	mv	a0,s1
    800050dc:	ffffe097          	auipc	ra,0xffffe
    800050e0:	2d4080e7          	jalr	724(ra) # 800033b0 <_ZdlPv>
    800050e4:	00090513          	mv	a0,s2
    800050e8:	0000c097          	auipc	ra,0xc
    800050ec:	e50080e7          	jalr	-432(ra) # 80010f38 <_Unwind_Resume>
    800050f0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800050f4:	00048513          	mv	a0,s1
    800050f8:	ffffe097          	auipc	ra,0xffffe
    800050fc:	2b8080e7          	jalr	696(ra) # 800033b0 <_ZdlPv>
    80005100:	00090513          	mv	a0,s2
    80005104:	0000c097          	auipc	ra,0xc
    80005108:	e34080e7          	jalr	-460(ra) # 80010f38 <_Unwind_Resume>
    8000510c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005110:	00048513          	mv	a0,s1
    80005114:	ffffe097          	auipc	ra,0xffffe
    80005118:	29c080e7          	jalr	668(ra) # 800033b0 <_ZdlPv>
    8000511c:	00090513          	mv	a0,s2
    80005120:	0000c097          	auipc	ra,0xc
    80005124:	e18080e7          	jalr	-488(ra) # 80010f38 <_Unwind_Resume>
    80005128:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000512c:	00048513          	mv	a0,s1
    80005130:	ffffe097          	auipc	ra,0xffffe
    80005134:	280080e7          	jalr	640(ra) # 800033b0 <_ZdlPv>
    80005138:	00090513          	mv	a0,s2
    8000513c:	0000c097          	auipc	ra,0xc
    80005140:	dfc080e7          	jalr	-516(ra) # 80010f38 <_Unwind_Resume>
    80005144:	03813083          	ld	ra,56(sp)
    80005148:	03013403          	ld	s0,48(sp)
    8000514c:	02813483          	ld	s1,40(sp)
    80005150:	02013903          	ld	s2,32(sp)
    80005154:	04010113          	addi	sp,sp,64
    80005158:	00008067          	ret

000000008000515c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000515c:	ff010113          	addi	sp,sp,-16
    80005160:	00113423          	sd	ra,8(sp)
    80005164:	00813023          	sd	s0,0(sp)
    80005168:	01010413          	addi	s0,sp,16
    8000516c:	00007797          	auipc	a5,0x7
    80005170:	a1478793          	addi	a5,a5,-1516 # 8000bb80 <_ZTV7WorkerA+0x10>
    80005174:	00f53023          	sd	a5,0(a0)
    80005178:	ffffe097          	auipc	ra,0xffffe
    8000517c:	1a0080e7          	jalr	416(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005180:	00813083          	ld	ra,8(sp)
    80005184:	00013403          	ld	s0,0(sp)
    80005188:	01010113          	addi	sp,sp,16
    8000518c:	00008067          	ret

0000000080005190 <_ZN7WorkerAD0Ev>:
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	02010413          	addi	s0,sp,32
    800051a4:	00050493          	mv	s1,a0
    800051a8:	00007797          	auipc	a5,0x7
    800051ac:	9d878793          	addi	a5,a5,-1576 # 8000bb80 <_ZTV7WorkerA+0x10>
    800051b0:	00f53023          	sd	a5,0(a0)
    800051b4:	ffffe097          	auipc	ra,0xffffe
    800051b8:	164080e7          	jalr	356(ra) # 80003318 <_ZN6ThreadD1Ev>
    800051bc:	00048513          	mv	a0,s1
    800051c0:	ffffe097          	auipc	ra,0xffffe
    800051c4:	1f0080e7          	jalr	496(ra) # 800033b0 <_ZdlPv>
    800051c8:	01813083          	ld	ra,24(sp)
    800051cc:	01013403          	ld	s0,16(sp)
    800051d0:	00813483          	ld	s1,8(sp)
    800051d4:	02010113          	addi	sp,sp,32
    800051d8:	00008067          	ret

00000000800051dc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800051dc:	ff010113          	addi	sp,sp,-16
    800051e0:	00113423          	sd	ra,8(sp)
    800051e4:	00813023          	sd	s0,0(sp)
    800051e8:	01010413          	addi	s0,sp,16
    800051ec:	00007797          	auipc	a5,0x7
    800051f0:	9bc78793          	addi	a5,a5,-1604 # 8000bba8 <_ZTV7WorkerB+0x10>
    800051f4:	00f53023          	sd	a5,0(a0)
    800051f8:	ffffe097          	auipc	ra,0xffffe
    800051fc:	120080e7          	jalr	288(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005200:	00813083          	ld	ra,8(sp)
    80005204:	00013403          	ld	s0,0(sp)
    80005208:	01010113          	addi	sp,sp,16
    8000520c:	00008067          	ret

0000000080005210 <_ZN7WorkerBD0Ev>:
    80005210:	fe010113          	addi	sp,sp,-32
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	00813823          	sd	s0,16(sp)
    8000521c:	00913423          	sd	s1,8(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	00050493          	mv	s1,a0
    80005228:	00007797          	auipc	a5,0x7
    8000522c:	98078793          	addi	a5,a5,-1664 # 8000bba8 <_ZTV7WorkerB+0x10>
    80005230:	00f53023          	sd	a5,0(a0)
    80005234:	ffffe097          	auipc	ra,0xffffe
    80005238:	0e4080e7          	jalr	228(ra) # 80003318 <_ZN6ThreadD1Ev>
    8000523c:	00048513          	mv	a0,s1
    80005240:	ffffe097          	auipc	ra,0xffffe
    80005244:	170080e7          	jalr	368(ra) # 800033b0 <_ZdlPv>
    80005248:	01813083          	ld	ra,24(sp)
    8000524c:	01013403          	ld	s0,16(sp)
    80005250:	00813483          	ld	s1,8(sp)
    80005254:	02010113          	addi	sp,sp,32
    80005258:	00008067          	ret

000000008000525c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000525c:	ff010113          	addi	sp,sp,-16
    80005260:	00113423          	sd	ra,8(sp)
    80005264:	00813023          	sd	s0,0(sp)
    80005268:	01010413          	addi	s0,sp,16
    8000526c:	00007797          	auipc	a5,0x7
    80005270:	96478793          	addi	a5,a5,-1692 # 8000bbd0 <_ZTV7WorkerC+0x10>
    80005274:	00f53023          	sd	a5,0(a0)
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	0a0080e7          	jalr	160(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005280:	00813083          	ld	ra,8(sp)
    80005284:	00013403          	ld	s0,0(sp)
    80005288:	01010113          	addi	sp,sp,16
    8000528c:	00008067          	ret

0000000080005290 <_ZN7WorkerCD0Ev>:
    80005290:	fe010113          	addi	sp,sp,-32
    80005294:	00113c23          	sd	ra,24(sp)
    80005298:	00813823          	sd	s0,16(sp)
    8000529c:	00913423          	sd	s1,8(sp)
    800052a0:	02010413          	addi	s0,sp,32
    800052a4:	00050493          	mv	s1,a0
    800052a8:	00007797          	auipc	a5,0x7
    800052ac:	92878793          	addi	a5,a5,-1752 # 8000bbd0 <_ZTV7WorkerC+0x10>
    800052b0:	00f53023          	sd	a5,0(a0)
    800052b4:	ffffe097          	auipc	ra,0xffffe
    800052b8:	064080e7          	jalr	100(ra) # 80003318 <_ZN6ThreadD1Ev>
    800052bc:	00048513          	mv	a0,s1
    800052c0:	ffffe097          	auipc	ra,0xffffe
    800052c4:	0f0080e7          	jalr	240(ra) # 800033b0 <_ZdlPv>
    800052c8:	01813083          	ld	ra,24(sp)
    800052cc:	01013403          	ld	s0,16(sp)
    800052d0:	00813483          	ld	s1,8(sp)
    800052d4:	02010113          	addi	sp,sp,32
    800052d8:	00008067          	ret

00000000800052dc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800052dc:	ff010113          	addi	sp,sp,-16
    800052e0:	00113423          	sd	ra,8(sp)
    800052e4:	00813023          	sd	s0,0(sp)
    800052e8:	01010413          	addi	s0,sp,16
    800052ec:	00007797          	auipc	a5,0x7
    800052f0:	90c78793          	addi	a5,a5,-1780 # 8000bbf8 <_ZTV7WorkerD+0x10>
    800052f4:	00f53023          	sd	a5,0(a0)
    800052f8:	ffffe097          	auipc	ra,0xffffe
    800052fc:	020080e7          	jalr	32(ra) # 80003318 <_ZN6ThreadD1Ev>
    80005300:	00813083          	ld	ra,8(sp)
    80005304:	00013403          	ld	s0,0(sp)
    80005308:	01010113          	addi	sp,sp,16
    8000530c:	00008067          	ret

0000000080005310 <_ZN7WorkerDD0Ev>:
    80005310:	fe010113          	addi	sp,sp,-32
    80005314:	00113c23          	sd	ra,24(sp)
    80005318:	00813823          	sd	s0,16(sp)
    8000531c:	00913423          	sd	s1,8(sp)
    80005320:	02010413          	addi	s0,sp,32
    80005324:	00050493          	mv	s1,a0
    80005328:	00007797          	auipc	a5,0x7
    8000532c:	8d078793          	addi	a5,a5,-1840 # 8000bbf8 <_ZTV7WorkerD+0x10>
    80005330:	00f53023          	sd	a5,0(a0)
    80005334:	ffffe097          	auipc	ra,0xffffe
    80005338:	fe4080e7          	jalr	-28(ra) # 80003318 <_ZN6ThreadD1Ev>
    8000533c:	00048513          	mv	a0,s1
    80005340:	ffffe097          	auipc	ra,0xffffe
    80005344:	070080e7          	jalr	112(ra) # 800033b0 <_ZdlPv>
    80005348:	01813083          	ld	ra,24(sp)
    8000534c:	01013403          	ld	s0,16(sp)
    80005350:	00813483          	ld	s1,8(sp)
    80005354:	02010113          	addi	sp,sp,32
    80005358:	00008067          	ret

000000008000535c <_ZN7WorkerA3runEv>:
    void run() override {
    8000535c:	ff010113          	addi	sp,sp,-16
    80005360:	00113423          	sd	ra,8(sp)
    80005364:	00813023          	sd	s0,0(sp)
    80005368:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000536c:	00000593          	li	a1,0
    80005370:	fffff097          	auipc	ra,0xfffff
    80005374:	774080e7          	jalr	1908(ra) # 80004ae4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005378:	00813083          	ld	ra,8(sp)
    8000537c:	00013403          	ld	s0,0(sp)
    80005380:	01010113          	addi	sp,sp,16
    80005384:	00008067          	ret

0000000080005388 <_ZN7WorkerB3runEv>:
    void run() override {
    80005388:	ff010113          	addi	sp,sp,-16
    8000538c:	00113423          	sd	ra,8(sp)
    80005390:	00813023          	sd	s0,0(sp)
    80005394:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005398:	00000593          	li	a1,0
    8000539c:	00000097          	auipc	ra,0x0
    800053a0:	814080e7          	jalr	-2028(ra) # 80004bb0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800053a4:	00813083          	ld	ra,8(sp)
    800053a8:	00013403          	ld	s0,0(sp)
    800053ac:	01010113          	addi	sp,sp,16
    800053b0:	00008067          	ret

00000000800053b4 <_ZN7WorkerC3runEv>:
    void run() override {
    800053b4:	ff010113          	addi	sp,sp,-16
    800053b8:	00113423          	sd	ra,8(sp)
    800053bc:	00813023          	sd	s0,0(sp)
    800053c0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800053c4:	00000593          	li	a1,0
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	8bc080e7          	jalr	-1860(ra) # 80004c84 <_ZN7WorkerC11workerBodyCEPv>
    }
    800053d0:	00813083          	ld	ra,8(sp)
    800053d4:	00013403          	ld	s0,0(sp)
    800053d8:	01010113          	addi	sp,sp,16
    800053dc:	00008067          	ret

00000000800053e0 <_ZN7WorkerD3runEv>:

    void run() override {
    800053e0:	ff010113          	addi	sp,sp,-16
    800053e4:	00113423          	sd	ra,8(sp)
    800053e8:	00813023          	sd	s0,0(sp)
    800053ec:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800053f0:	00000593          	li	a1,0
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	a10080e7          	jalr	-1520(ra) # 80004e04 <_ZN7WorkerD11workerBodyDEPv>
    }
    800053fc:	00813083          	ld	ra,8(sp)
    80005400:	00013403          	ld	s0,0(sp)
    80005404:	01010113          	addi	sp,sp,16
    80005408:	00008067          	ret

000000008000540c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	01213023          	sd	s2,0(sp)
    80005420:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005424:	00000913          	li	s2,0
    80005428:	0380006f          	j	80005460 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	f08080e7          	jalr	-248(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005434:	00148493          	addi	s1,s1,1
    80005438:	000027b7          	lui	a5,0x2
    8000543c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005440:	0097ee63          	bltu	a5,s1,8000545c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005444:	00000713          	li	a4,0
    80005448:	000077b7          	lui	a5,0x7
    8000544c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005450:	fce7eee3          	bltu	a5,a4,8000542c <_Z11workerBodyAPv+0x20>
    80005454:	00170713          	addi	a4,a4,1
    80005458:	ff1ff06f          	j	80005448 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000545c:	00190913          	addi	s2,s2,1
    80005460:	00900793          	li	a5,9
    80005464:	0527e063          	bltu	a5,s2,800054a4 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005468:	00004517          	auipc	a0,0x4
    8000546c:	f7850513          	addi	a0,a0,-136 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	e64080e7          	jalr	-412(ra) # 800062d4 <_Z11printStringPKc>
    80005478:	00000613          	li	a2,0
    8000547c:	00a00593          	li	a1,10
    80005480:	0009051b          	sext.w	a0,s2
    80005484:	00001097          	auipc	ra,0x1
    80005488:	fe8080e7          	jalr	-24(ra) # 8000646c <_Z8printIntiii>
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	c6c50513          	addi	a0,a0,-916 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005494:	00001097          	auipc	ra,0x1
    80005498:	e40080e7          	jalr	-448(ra) # 800062d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000549c:	00000493          	li	s1,0
    800054a0:	f99ff06f          	j	80005438 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800054a4:	00004517          	auipc	a0,0x4
    800054a8:	f4450513          	addi	a0,a0,-188 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	e28080e7          	jalr	-472(ra) # 800062d4 <_Z11printStringPKc>
    finishedA = true;
    800054b4:	00100793          	li	a5,1
    800054b8:	0000b717          	auipc	a4,0xb
    800054bc:	98f70e23          	sb	a5,-1636(a4) # 8000fe54 <_ZL9finishedA>
}
    800054c0:	01813083          	ld	ra,24(sp)
    800054c4:	01013403          	ld	s0,16(sp)
    800054c8:	00813483          	ld	s1,8(sp)
    800054cc:	00013903          	ld	s2,0(sp)
    800054d0:	02010113          	addi	sp,sp,32
    800054d4:	00008067          	ret

00000000800054d8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	01213023          	sd	s2,0(sp)
    800054ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800054f0:	00000913          	li	s2,0
    800054f4:	0380006f          	j	8000552c <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	e3c080e7          	jalr	-452(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005500:	00148493          	addi	s1,s1,1
    80005504:	000027b7          	lui	a5,0x2
    80005508:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000550c:	0097ee63          	bltu	a5,s1,80005528 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005510:	00000713          	li	a4,0
    80005514:	000077b7          	lui	a5,0x7
    80005518:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000551c:	fce7eee3          	bltu	a5,a4,800054f8 <_Z11workerBodyBPv+0x20>
    80005520:	00170713          	addi	a4,a4,1
    80005524:	ff1ff06f          	j	80005514 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005528:	00190913          	addi	s2,s2,1
    8000552c:	00f00793          	li	a5,15
    80005530:	0527e063          	bltu	a5,s2,80005570 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005534:	00004517          	auipc	a0,0x4
    80005538:	ec450513          	addi	a0,a0,-316 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000553c:	00001097          	auipc	ra,0x1
    80005540:	d98080e7          	jalr	-616(ra) # 800062d4 <_Z11printStringPKc>
    80005544:	00000613          	li	a2,0
    80005548:	00a00593          	li	a1,10
    8000554c:	0009051b          	sext.w	a0,s2
    80005550:	00001097          	auipc	ra,0x1
    80005554:	f1c080e7          	jalr	-228(ra) # 8000646c <_Z8printIntiii>
    80005558:	00004517          	auipc	a0,0x4
    8000555c:	ba050513          	addi	a0,a0,-1120 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005560:	00001097          	auipc	ra,0x1
    80005564:	d74080e7          	jalr	-652(ra) # 800062d4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005568:	00000493          	li	s1,0
    8000556c:	f99ff06f          	j	80005504 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80005570:	00004517          	auipc	a0,0x4
    80005574:	e9050513          	addi	a0,a0,-368 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005578:	00001097          	auipc	ra,0x1
    8000557c:	d5c080e7          	jalr	-676(ra) # 800062d4 <_Z11printStringPKc>
    finishedB = true;
    80005580:	00100793          	li	a5,1
    80005584:	0000b717          	auipc	a4,0xb
    80005588:	8cf708a3          	sb	a5,-1839(a4) # 8000fe55 <_ZL9finishedB>
    thread_dispatch();
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	da8080e7          	jalr	-600(ra) # 80001334 <thread_dispatch>
}
    80005594:	01813083          	ld	ra,24(sp)
    80005598:	01013403          	ld	s0,16(sp)
    8000559c:	00813483          	ld	s1,8(sp)
    800055a0:	00013903          	ld	s2,0(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	00008067          	ret

00000000800055ac <_ZL9fibonaccim>:
static uint64 fibonacci(uint64 n) {
    800055ac:	fe010113          	addi	sp,sp,-32
    800055b0:	00113c23          	sd	ra,24(sp)
    800055b4:	00813823          	sd	s0,16(sp)
    800055b8:	00913423          	sd	s1,8(sp)
    800055bc:	01213023          	sd	s2,0(sp)
    800055c0:	02010413          	addi	s0,sp,32
    800055c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800055c8:	00100793          	li	a5,1
    800055cc:	02a7f863          	bgeu	a5,a0,800055fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800055d0:	00a00793          	li	a5,10
    800055d4:	02f577b3          	remu	a5,a0,a5
    800055d8:	02078e63          	beqz	a5,80005614 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800055dc:	fff48513          	addi	a0,s1,-1
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	fcc080e7          	jalr	-52(ra) # 800055ac <_ZL9fibonaccim>
    800055e8:	00050913          	mv	s2,a0
    800055ec:	ffe48513          	addi	a0,s1,-2
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	fbc080e7          	jalr	-68(ra) # 800055ac <_ZL9fibonaccim>
    800055f8:	00a90533          	add	a0,s2,a0
}
    800055fc:	01813083          	ld	ra,24(sp)
    80005600:	01013403          	ld	s0,16(sp)
    80005604:	00813483          	ld	s1,8(sp)
    80005608:	00013903          	ld	s2,0(sp)
    8000560c:	02010113          	addi	sp,sp,32
    80005610:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	d20080e7          	jalr	-736(ra) # 80001334 <thread_dispatch>
    8000561c:	fc1ff06f          	j	800055dc <_ZL9fibonaccim+0x30>

0000000080005620 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00913423          	sd	s1,8(sp)
    80005630:	01213023          	sd	s2,0(sp)
    80005634:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005638:	00000493          	li	s1,0
    8000563c:	0400006f          	j	8000567c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	dd050513          	addi	a0,a0,-560 # 80009410 <CONSOLE_STATUS+0x400>
    80005648:	00001097          	auipc	ra,0x1
    8000564c:	c8c080e7          	jalr	-884(ra) # 800062d4 <_Z11printStringPKc>
    80005650:	00000613          	li	a2,0
    80005654:	00a00593          	li	a1,10
    80005658:	00048513          	mv	a0,s1
    8000565c:	00001097          	auipc	ra,0x1
    80005660:	e10080e7          	jalr	-496(ra) # 8000646c <_Z8printIntiii>
    80005664:	00004517          	auipc	a0,0x4
    80005668:	a9450513          	addi	a0,a0,-1388 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000566c:	00001097          	auipc	ra,0x1
    80005670:	c68080e7          	jalr	-920(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005674:	0014849b          	addiw	s1,s1,1
    80005678:	0ff4f493          	andi	s1,s1,255
    8000567c:	00200793          	li	a5,2
    80005680:	fc97f0e3          	bgeu	a5,s1,80005640 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005684:	00004517          	auipc	a0,0x4
    80005688:	d9450513          	addi	a0,a0,-620 # 80009418 <CONSOLE_STATUS+0x408>
    8000568c:	00001097          	auipc	ra,0x1
    80005690:	c48080e7          	jalr	-952(ra) # 800062d4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005694:	00700313          	li	t1,7
    thread_dispatch();
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	c9c080e7          	jalr	-868(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800056a0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800056a4:	00004517          	auipc	a0,0x4
    800056a8:	d8450513          	addi	a0,a0,-636 # 80009428 <CONSOLE_STATUS+0x418>
    800056ac:	00001097          	auipc	ra,0x1
    800056b0:	c28080e7          	jalr	-984(ra) # 800062d4 <_Z11printStringPKc>
    800056b4:	00000613          	li	a2,0
    800056b8:	00a00593          	li	a1,10
    800056bc:	0009051b          	sext.w	a0,s2
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	dac080e7          	jalr	-596(ra) # 8000646c <_Z8printIntiii>
    800056c8:	00004517          	auipc	a0,0x4
    800056cc:	a3050513          	addi	a0,a0,-1488 # 800090f8 <CONSOLE_STATUS+0xe8>
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	c04080e7          	jalr	-1020(ra) # 800062d4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800056d8:	00c00513          	li	a0,12
    800056dc:	00000097          	auipc	ra,0x0
    800056e0:	ed0080e7          	jalr	-304(ra) # 800055ac <_ZL9fibonaccim>
    800056e4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	d4850513          	addi	a0,a0,-696 # 80009430 <CONSOLE_STATUS+0x420>
    800056f0:	00001097          	auipc	ra,0x1
    800056f4:	be4080e7          	jalr	-1052(ra) # 800062d4 <_Z11printStringPKc>
    800056f8:	00000613          	li	a2,0
    800056fc:	00a00593          	li	a1,10
    80005700:	0009051b          	sext.w	a0,s2
    80005704:	00001097          	auipc	ra,0x1
    80005708:	d68080e7          	jalr	-664(ra) # 8000646c <_Z8printIntiii>
    8000570c:	00004517          	auipc	a0,0x4
    80005710:	9ec50513          	addi	a0,a0,-1556 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005714:	00001097          	auipc	ra,0x1
    80005718:	bc0080e7          	jalr	-1088(ra) # 800062d4 <_Z11printStringPKc>
    8000571c:	0400006f          	j	8000575c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005720:	00004517          	auipc	a0,0x4
    80005724:	cf050513          	addi	a0,a0,-784 # 80009410 <CONSOLE_STATUS+0x400>
    80005728:	00001097          	auipc	ra,0x1
    8000572c:	bac080e7          	jalr	-1108(ra) # 800062d4 <_Z11printStringPKc>
    80005730:	00000613          	li	a2,0
    80005734:	00a00593          	li	a1,10
    80005738:	00048513          	mv	a0,s1
    8000573c:	00001097          	auipc	ra,0x1
    80005740:	d30080e7          	jalr	-720(ra) # 8000646c <_Z8printIntiii>
    80005744:	00004517          	auipc	a0,0x4
    80005748:	9b450513          	addi	a0,a0,-1612 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000574c:	00001097          	auipc	ra,0x1
    80005750:	b88080e7          	jalr	-1144(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005754:	0014849b          	addiw	s1,s1,1
    80005758:	0ff4f493          	andi	s1,s1,255
    8000575c:	00500793          	li	a5,5
    80005760:	fc97f0e3          	bgeu	a5,s1,80005720 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80005764:	00004517          	auipc	a0,0x4
    80005768:	c8450513          	addi	a0,a0,-892 # 800093e8 <CONSOLE_STATUS+0x3d8>
    8000576c:	00001097          	auipc	ra,0x1
    80005770:	b68080e7          	jalr	-1176(ra) # 800062d4 <_Z11printStringPKc>
    finishedC = true;
    80005774:	00100793          	li	a5,1
    80005778:	0000a717          	auipc	a4,0xa
    8000577c:	6cf70f23          	sb	a5,1758(a4) # 8000fe56 <_ZL9finishedC>
    thread_dispatch();
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	bb4080e7          	jalr	-1100(ra) # 80001334 <thread_dispatch>
}
    80005788:	01813083          	ld	ra,24(sp)
    8000578c:	01013403          	ld	s0,16(sp)
    80005790:	00813483          	ld	s1,8(sp)
    80005794:	00013903          	ld	s2,0(sp)
    80005798:	02010113          	addi	sp,sp,32
    8000579c:	00008067          	ret

00000000800057a0 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800057a0:	fe010113          	addi	sp,sp,-32
    800057a4:	00113c23          	sd	ra,24(sp)
    800057a8:	00813823          	sd	s0,16(sp)
    800057ac:	00913423          	sd	s1,8(sp)
    800057b0:	01213023          	sd	s2,0(sp)
    800057b4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800057b8:	00a00493          	li	s1,10
    800057bc:	0400006f          	j	800057fc <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800057c0:	00004517          	auipc	a0,0x4
    800057c4:	c8050513          	addi	a0,a0,-896 # 80009440 <CONSOLE_STATUS+0x430>
    800057c8:	00001097          	auipc	ra,0x1
    800057cc:	b0c080e7          	jalr	-1268(ra) # 800062d4 <_Z11printStringPKc>
    800057d0:	00000613          	li	a2,0
    800057d4:	00a00593          	li	a1,10
    800057d8:	00048513          	mv	a0,s1
    800057dc:	00001097          	auipc	ra,0x1
    800057e0:	c90080e7          	jalr	-880(ra) # 8000646c <_Z8printIntiii>
    800057e4:	00004517          	auipc	a0,0x4
    800057e8:	91450513          	addi	a0,a0,-1772 # 800090f8 <CONSOLE_STATUS+0xe8>
    800057ec:	00001097          	auipc	ra,0x1
    800057f0:	ae8080e7          	jalr	-1304(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800057f4:	0014849b          	addiw	s1,s1,1
    800057f8:	0ff4f493          	andi	s1,s1,255
    800057fc:	00c00793          	li	a5,12
    80005800:	fc97f0e3          	bgeu	a5,s1,800057c0 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005804:	00004517          	auipc	a0,0x4
    80005808:	c4450513          	addi	a0,a0,-956 # 80009448 <CONSOLE_STATUS+0x438>
    8000580c:	00001097          	auipc	ra,0x1
    80005810:	ac8080e7          	jalr	-1336(ra) # 800062d4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005814:	00500313          	li	t1,5
    thread_dispatch();
    80005818:	ffffc097          	auipc	ra,0xffffc
    8000581c:	b1c080e7          	jalr	-1252(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005820:	01000513          	li	a0,16
    80005824:	00000097          	auipc	ra,0x0
    80005828:	d88080e7          	jalr	-632(ra) # 800055ac <_ZL9fibonaccim>
    8000582c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005830:	00004517          	auipc	a0,0x4
    80005834:	c2850513          	addi	a0,a0,-984 # 80009458 <CONSOLE_STATUS+0x448>
    80005838:	00001097          	auipc	ra,0x1
    8000583c:	a9c080e7          	jalr	-1380(ra) # 800062d4 <_Z11printStringPKc>
    80005840:	00000613          	li	a2,0
    80005844:	00a00593          	li	a1,10
    80005848:	0009051b          	sext.w	a0,s2
    8000584c:	00001097          	auipc	ra,0x1
    80005850:	c20080e7          	jalr	-992(ra) # 8000646c <_Z8printIntiii>
    80005854:	00004517          	auipc	a0,0x4
    80005858:	8a450513          	addi	a0,a0,-1884 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000585c:	00001097          	auipc	ra,0x1
    80005860:	a78080e7          	jalr	-1416(ra) # 800062d4 <_Z11printStringPKc>
    80005864:	0400006f          	j	800058a4 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005868:	00004517          	auipc	a0,0x4
    8000586c:	bd850513          	addi	a0,a0,-1064 # 80009440 <CONSOLE_STATUS+0x430>
    80005870:	00001097          	auipc	ra,0x1
    80005874:	a64080e7          	jalr	-1436(ra) # 800062d4 <_Z11printStringPKc>
    80005878:	00000613          	li	a2,0
    8000587c:	00a00593          	li	a1,10
    80005880:	00048513          	mv	a0,s1
    80005884:	00001097          	auipc	ra,0x1
    80005888:	be8080e7          	jalr	-1048(ra) # 8000646c <_Z8printIntiii>
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	86c50513          	addi	a0,a0,-1940 # 800090f8 <CONSOLE_STATUS+0xe8>
    80005894:	00001097          	auipc	ra,0x1
    80005898:	a40080e7          	jalr	-1472(ra) # 800062d4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000589c:	0014849b          	addiw	s1,s1,1
    800058a0:	0ff4f493          	andi	s1,s1,255
    800058a4:	00f00793          	li	a5,15
    800058a8:	fc97f0e3          	bgeu	a5,s1,80005868 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800058ac:	00004517          	auipc	a0,0x4
    800058b0:	bbc50513          	addi	a0,a0,-1092 # 80009468 <CONSOLE_STATUS+0x458>
    800058b4:	00001097          	auipc	ra,0x1
    800058b8:	a20080e7          	jalr	-1504(ra) # 800062d4 <_Z11printStringPKc>
    finishedD = true;
    800058bc:	00100793          	li	a5,1
    800058c0:	0000a717          	auipc	a4,0xa
    800058c4:	58f70ba3          	sb	a5,1431(a4) # 8000fe57 <_ZL9finishedD>
    thread_dispatch();
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	a6c080e7          	jalr	-1428(ra) # 80001334 <thread_dispatch>
}
    800058d0:	01813083          	ld	ra,24(sp)
    800058d4:	01013403          	ld	s0,16(sp)
    800058d8:	00813483          	ld	s1,8(sp)
    800058dc:	00013903          	ld	s2,0(sp)
    800058e0:	02010113          	addi	sp,sp,32
    800058e4:	00008067          	ret

00000000800058e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800058e8:	fc010113          	addi	sp,sp,-64
    800058ec:	02113c23          	sd	ra,56(sp)
    800058f0:	02813823          	sd	s0,48(sp)
    800058f4:	02913423          	sd	s1,40(sp)
    800058f8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800058fc:	00000613          	li	a2,0
    80005900:	00000597          	auipc	a1,0x0
    80005904:	b0c58593          	addi	a1,a1,-1268 # 8000540c <_Z11workerBodyAPv>
    80005908:	fc040513          	addi	a0,s0,-64
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	9a8080e7          	jalr	-1624(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005914:	00004517          	auipc	a0,0x4
    80005918:	b6450513          	addi	a0,a0,-1180 # 80009478 <CONSOLE_STATUS+0x468>
    8000591c:	00001097          	auipc	ra,0x1
    80005920:	9b8080e7          	jalr	-1608(ra) # 800062d4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005924:	00000613          	li	a2,0
    80005928:	00000597          	auipc	a1,0x0
    8000592c:	bb058593          	addi	a1,a1,-1104 # 800054d8 <_Z11workerBodyBPv>
    80005930:	fc840513          	addi	a0,s0,-56
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	980080e7          	jalr	-1664(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    8000593c:	00004517          	auipc	a0,0x4
    80005940:	b5450513          	addi	a0,a0,-1196 # 80009490 <CONSOLE_STATUS+0x480>
    80005944:	00001097          	auipc	ra,0x1
    80005948:	990080e7          	jalr	-1648(ra) # 800062d4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000594c:	00000613          	li	a2,0
    80005950:	00000597          	auipc	a1,0x0
    80005954:	cd058593          	addi	a1,a1,-816 # 80005620 <_Z11workerBodyCPv>
    80005958:	fd040513          	addi	a0,s0,-48
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	958080e7          	jalr	-1704(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005964:	00004517          	auipc	a0,0x4
    80005968:	b4450513          	addi	a0,a0,-1212 # 800094a8 <CONSOLE_STATUS+0x498>
    8000596c:	00001097          	auipc	ra,0x1
    80005970:	968080e7          	jalr	-1688(ra) # 800062d4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005974:	00000613          	li	a2,0
    80005978:	00000597          	auipc	a1,0x0
    8000597c:	e2858593          	addi	a1,a1,-472 # 800057a0 <_Z11workerBodyDPv>
    80005980:	fd840513          	addi	a0,s0,-40
    80005984:	ffffc097          	auipc	ra,0xffffc
    80005988:	930080e7          	jalr	-1744(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    8000598c:	00004517          	auipc	a0,0x4
    80005990:	b3450513          	addi	a0,a0,-1228 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005994:	00001097          	auipc	ra,0x1
    80005998:	940080e7          	jalr	-1728(ra) # 800062d4 <_Z11printStringPKc>
    8000599c:	00c0006f          	j	800059a8 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800059a0:	ffffc097          	auipc	ra,0xffffc
    800059a4:	994080e7          	jalr	-1644(ra) # 80001334 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800059a8:	0000a797          	auipc	a5,0xa
    800059ac:	4ac7c783          	lbu	a5,1196(a5) # 8000fe54 <_ZL9finishedA>
    800059b0:	fe0788e3          	beqz	a5,800059a0 <_Z18Threads_C_API_testv+0xb8>
    800059b4:	0000a797          	auipc	a5,0xa
    800059b8:	4a17c783          	lbu	a5,1185(a5) # 8000fe55 <_ZL9finishedB>
    800059bc:	fe0782e3          	beqz	a5,800059a0 <_Z18Threads_C_API_testv+0xb8>
    800059c0:	0000a797          	auipc	a5,0xa
    800059c4:	4967c783          	lbu	a5,1174(a5) # 8000fe56 <_ZL9finishedC>
    800059c8:	fc078ce3          	beqz	a5,800059a0 <_Z18Threads_C_API_testv+0xb8>
    800059cc:	0000a797          	auipc	a5,0xa
    800059d0:	48b7c783          	lbu	a5,1163(a5) # 8000fe57 <_ZL9finishedD>
    800059d4:	fc0786e3          	beqz	a5,800059a0 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete (uint64*)thread; }
    800059d8:	fc040493          	addi	s1,s0,-64
    800059dc:	0080006f          	j	800059e4 <_Z18Threads_C_API_testv+0xfc>
    800059e0:	00848493          	addi	s1,s1,8
    800059e4:	fe040793          	addi	a5,s0,-32
    800059e8:	00f48c63          	beq	s1,a5,80005a00 <_Z18Threads_C_API_testv+0x118>
    800059ec:	0004b503          	ld	a0,0(s1)
    800059f0:	fe0508e3          	beqz	a0,800059e0 <_Z18Threads_C_API_testv+0xf8>
    800059f4:	ffffe097          	auipc	ra,0xffffe
    800059f8:	9bc080e7          	jalr	-1604(ra) # 800033b0 <_ZdlPv>
    800059fc:	fe5ff06f          	j	800059e0 <_Z18Threads_C_API_testv+0xf8>
}
    80005a00:	03813083          	ld	ra,56(sp)
    80005a04:	03013403          	ld	s0,48(sp)
    80005a08:	02813483          	ld	s1,40(sp)
    80005a0c:	04010113          	addi	sp,sp,64
    80005a10:	00008067          	ret

0000000080005a14 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    Semaphore* wait;
};

extern volatile int threadEnd;

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005a14:	fd010113          	addi	sp,sp,-48
    80005a18:	02113423          	sd	ra,40(sp)
    80005a1c:	02813023          	sd	s0,32(sp)
    80005a20:	00913c23          	sd	s1,24(sp)
    80005a24:	01213823          	sd	s2,16(sp)
    80005a28:	01313423          	sd	s3,8(sp)
    80005a2c:	03010413          	addi	s0,sp,48
    80005a30:	00050993          	mv	s3,a0
    80005a34:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005a38:	00000913          	li	s2,0
    80005a3c:	00c0006f          	j	80005a48 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005a40:	ffffe097          	auipc	ra,0xffffe
    80005a44:	a50080e7          	jalr	-1456(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'q') {
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	ac8080e7          	jalr	-1336(ra) # 80001510 <getc>
    80005a50:	0005059b          	sext.w	a1,a0
    80005a54:	07100793          	li	a5,113
    80005a58:	02f58a63          	beq	a1,a5,80005a8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005a5c:	0084b503          	ld	a0,8(s1)
    80005a60:	00001097          	auipc	ra,0x1
    80005a64:	c74080e7          	jalr	-908(ra) # 800066d4 <_ZN9BufferCPP3putEi>
        i++;
    80005a68:	0019071b          	addiw	a4,s2,1
    80005a6c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005a70:	0004a683          	lw	a3,0(s1)
    80005a74:	0026979b          	slliw	a5,a3,0x2
    80005a78:	00d787bb          	addw	a5,a5,a3
    80005a7c:	0017979b          	slliw	a5,a5,0x1
    80005a80:	02f767bb          	remw	a5,a4,a5
    80005a84:	fc0792e3          	bnez	a5,80005a48 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005a88:	fb9ff06f          	j	80005a40 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005a8c:	00006797          	auipc	a5,0x6
    80005a90:	2947b783          	ld	a5,660(a5) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005a94:	00100713          	li	a4,1
    80005a98:	00e7a023          	sw	a4,0(a5)
    td->buffer->put('!');
    80005a9c:	0109b783          	ld	a5,16(s3)
    80005aa0:	02100593          	li	a1,33
    80005aa4:	0087b503          	ld	a0,8(a5)
    80005aa8:	00001097          	auipc	ra,0x1
    80005aac:	c2c080e7          	jalr	-980(ra) # 800066d4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005ab0:	0104b503          	ld	a0,16(s1)
    80005ab4:	ffffe097          	auipc	ra,0xffffe
    80005ab8:	b6c080e7          	jalr	-1172(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005abc:	02813083          	ld	ra,40(sp)
    80005ac0:	02013403          	ld	s0,32(sp)
    80005ac4:	01813483          	ld	s1,24(sp)
    80005ac8:	01013903          	ld	s2,16(sp)
    80005acc:	00813983          	ld	s3,8(sp)
    80005ad0:	03010113          	addi	sp,sp,48
    80005ad4:	00008067          	ret

0000000080005ad8 <_ZN8Producer8producerEPv>:

void Producer::producer(void *arg) {
    80005ad8:	fe010113          	addi	sp,sp,-32
    80005adc:	00113c23          	sd	ra,24(sp)
    80005ae0:	00813823          	sd	s0,16(sp)
    80005ae4:	00913423          	sd	s1,8(sp)
    80005ae8:	01213023          	sd	s2,0(sp)
    80005aec:	02010413          	addi	s0,sp,32
    80005af0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005af4:	00000913          	li	s2,0
    80005af8:	00c0006f          	j	80005b04 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005afc:	ffffe097          	auipc	ra,0xffffe
    80005b00:	994080e7          	jalr	-1644(ra) # 80003490 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005b04:	00006797          	auipc	a5,0x6
    80005b08:	21c7b783          	ld	a5,540(a5) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005b0c:	0007a783          	lw	a5,0(a5)
    80005b10:	0007879b          	sext.w	a5,a5
    80005b14:	02079e63          	bnez	a5,80005b50 <_ZN8Producer8producerEPv+0x78>
        data->buffer->put(data->id + '0');
    80005b18:	0004a583          	lw	a1,0(s1)
    80005b1c:	0305859b          	addiw	a1,a1,48
    80005b20:	0084b503          	ld	a0,8(s1)
    80005b24:	00001097          	auipc	ra,0x1
    80005b28:	bb0080e7          	jalr	-1104(ra) # 800066d4 <_ZN9BufferCPP3putEi>
        i++;
    80005b2c:	0019071b          	addiw	a4,s2,1
    80005b30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005b34:	0004a683          	lw	a3,0(s1)
    80005b38:	0026979b          	slliw	a5,a3,0x2
    80005b3c:	00d787bb          	addw	a5,a5,a3
    80005b40:	0017979b          	slliw	a5,a5,0x1
    80005b44:	02f767bb          	remw	a5,a4,a5
    80005b48:	fa079ee3          	bnez	a5,80005b04 <_ZN8Producer8producerEPv+0x2c>
    80005b4c:	fb1ff06f          	j	80005afc <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005b50:	0104b503          	ld	a0,16(s1)
    80005b54:	ffffe097          	auipc	ra,0xffffe
    80005b58:	acc080e7          	jalr	-1332(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005b5c:	01813083          	ld	ra,24(sp)
    80005b60:	01013403          	ld	s0,16(sp)
    80005b64:	00813483          	ld	s1,8(sp)
    80005b68:	00013903          	ld	s2,0(sp)
    80005b6c:	02010113          	addi	sp,sp,32
    80005b70:	00008067          	ret

0000000080005b74 <_ZN8Consumer8consumerEPv>:

void Consumer::consumer(void *arg) {
    80005b74:	fd010113          	addi	sp,sp,-48
    80005b78:	02113423          	sd	ra,40(sp)
    80005b7c:	02813023          	sd	s0,32(sp)
    80005b80:	00913c23          	sd	s1,24(sp)
    80005b84:	01213823          	sd	s2,16(sp)
    80005b88:	01313423          	sd	s3,8(sp)
    80005b8c:	01413023          	sd	s4,0(sp)
    80005b90:	03010413          	addi	s0,sp,48
    80005b94:	00050993          	mv	s3,a0
    80005b98:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b9c:	00000a13          	li	s4,0
    80005ba0:	01c0006f          	j	80005bbc <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005ba4:	ffffe097          	auipc	ra,0xffffe
    80005ba8:	8ec080e7          	jalr	-1812(ra) # 80003490 <_ZN6Thread8dispatchEv>
    80005bac:	0580006f          	j	80005c04 <_ZN8Consumer8consumerEPv+0x90>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005bb0:	00a00513          	li	a0,10
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	984080e7          	jalr	-1660(ra) # 80001538 <putc>
    while (!threadEnd) {
    80005bbc:	00006797          	auipc	a5,0x6
    80005bc0:	1647b783          	ld	a5,356(a5) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005bc4:	0007a783          	lw	a5,0(a5)
    80005bc8:	0007879b          	sext.w	a5,a5
    80005bcc:	06079263          	bnez	a5,80005c30 <_ZN8Consumer8consumerEPv+0xbc>
        int key = data->buffer->get();
    80005bd0:	00893503          	ld	a0,8(s2)
    80005bd4:	00001097          	auipc	ra,0x1
    80005bd8:	b90080e7          	jalr	-1136(ra) # 80006764 <_ZN9BufferCPP3getEv>
        i++;
    80005bdc:	001a049b          	addiw	s1,s4,1
    80005be0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005be4:	0ff57513          	andi	a0,a0,255
    80005be8:	ffffc097          	auipc	ra,0xffffc
    80005bec:	950080e7          	jalr	-1712(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80005bf0:	00092703          	lw	a4,0(s2)
    80005bf4:	0027179b          	slliw	a5,a4,0x2
    80005bf8:	00e787bb          	addw	a5,a5,a4
    80005bfc:	02f4e7bb          	remw	a5,s1,a5
    80005c00:	fa0782e3          	beqz	a5,80005ba4 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005c04:	05000793          	li	a5,80
    80005c08:	02f4e4bb          	remw	s1,s1,a5
    80005c0c:	fa0498e3          	bnez	s1,80005bbc <_ZN8Consumer8consumerEPv+0x48>
    80005c10:	fa1ff06f          	j	80005bb0 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005c14:	0109b783          	ld	a5,16(s3)
    80005c18:	0087b503          	ld	a0,8(a5)
    80005c1c:	00001097          	auipc	ra,0x1
    80005c20:	b48080e7          	jalr	-1208(ra) # 80006764 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005c24:	0ff57513          	andi	a0,a0,255
    80005c28:	ffffe097          	auipc	ra,0xffffe
    80005c2c:	a58080e7          	jalr	-1448(ra) # 80003680 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005c30:	0109b783          	ld	a5,16(s3)
    80005c34:	0087b503          	ld	a0,8(a5)
    80005c38:	00001097          	auipc	ra,0x1
    80005c3c:	bb8080e7          	jalr	-1096(ra) # 800067f0 <_ZN9BufferCPP6getCntEv>
    80005c40:	fca04ae3          	bgtz	a0,80005c14 <_ZN8Consumer8consumerEPv+0xa0>
    }

    data->wait->signal();
    80005c44:	01093503          	ld	a0,16(s2)
    80005c48:	ffffe097          	auipc	ra,0xffffe
    80005c4c:	9d8080e7          	jalr	-1576(ra) # 80003620 <_ZN9Semaphore6signalEv>
}
    80005c50:	02813083          	ld	ra,40(sp)
    80005c54:	02013403          	ld	s0,32(sp)
    80005c58:	01813483          	ld	s1,24(sp)
    80005c5c:	01013903          	ld	s2,16(sp)
    80005c60:	00813983          	ld	s3,8(sp)
    80005c64:	00013a03          	ld	s4,0(sp)
    80005c68:	03010113          	addi	sp,sp,48
    80005c6c:	00008067          	ret

0000000080005c70 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API()
{
    80005c70:	f8010113          	addi	sp,sp,-128
    80005c74:	06113c23          	sd	ra,120(sp)
    80005c78:	06813823          	sd	s0,112(sp)
    80005c7c:	06913423          	sd	s1,104(sp)
    80005c80:	07213023          	sd	s2,96(sp)
    80005c84:	05313c23          	sd	s3,88(sp)
    80005c88:	05413823          	sd	s4,80(sp)
    80005c8c:	05513423          	sd	s5,72(sp)
    80005c90:	05613023          	sd	s6,64(sp)
    80005c94:	03713c23          	sd	s7,56(sp)
    80005c98:	03813823          	sd	s8,48(sp)
    80005c9c:	03913423          	sd	s9,40(sp)
    80005ca0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005ca4:	00010b93          	mv	s7,sp
    threadEnd = 0;
    80005ca8:	00006797          	auipc	a5,0x6
    80005cac:	0787b783          	ld	a5,120(a5) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005cb0:	0007a023          	sw	zero,0(a5)
    printString("Unesite broj proizvodjaca?\n");
    80005cb4:	00003517          	auipc	a0,0x3
    80005cb8:	64450513          	addi	a0,a0,1604 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005cbc:	00000097          	auipc	ra,0x0
    80005cc0:	618080e7          	jalr	1560(ra) # 800062d4 <_Z11printStringPKc>
    getString(input, 30);
    80005cc4:	01e00593          	li	a1,30
    80005cc8:	f8040493          	addi	s1,s0,-128
    80005ccc:	00048513          	mv	a0,s1
    80005cd0:	00000097          	auipc	ra,0x0
    80005cd4:	680080e7          	jalr	1664(ra) # 80006350 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005cd8:	00048513          	mv	a0,s1
    80005cdc:	00000097          	auipc	ra,0x0
    80005ce0:	740080e7          	jalr	1856(ra) # 8000641c <_Z11stringToIntPKc>
    80005ce4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005ce8:	00003517          	auipc	a0,0x3
    80005cec:	63050513          	addi	a0,a0,1584 # 80009318 <CONSOLE_STATUS+0x308>
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	5e4080e7          	jalr	1508(ra) # 800062d4 <_Z11printStringPKc>
    getString(input, 30);
    80005cf8:	01e00593          	li	a1,30
    80005cfc:	00048513          	mv	a0,s1
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	650080e7          	jalr	1616(ra) # 80006350 <_Z9getStringPci>
    n = stringToInt(input);
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	00000097          	auipc	ra,0x0
    80005d10:	710080e7          	jalr	1808(ra) # 8000641c <_Z11stringToIntPKc>
    80005d14:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005d18:	00003517          	auipc	a0,0x3
    80005d1c:	62050513          	addi	a0,a0,1568 # 80009338 <CONSOLE_STATUS+0x328>
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	5b4080e7          	jalr	1460(ra) # 800062d4 <_Z11printStringPKc>
    80005d28:	00000613          	li	a2,0
    80005d2c:	00a00593          	li	a1,10
    80005d30:	00090513          	mv	a0,s2
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	738080e7          	jalr	1848(ra) # 8000646c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	61450513          	addi	a0,a0,1556 # 80009350 <CONSOLE_STATUS+0x340>
    80005d44:	00000097          	auipc	ra,0x0
    80005d48:	590080e7          	jalr	1424(ra) # 800062d4 <_Z11printStringPKc>
    80005d4c:	00000613          	li	a2,0
    80005d50:	00a00593          	li	a1,10
    80005d54:	00048513          	mv	a0,s1
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	714080e7          	jalr	1812(ra) # 8000646c <_Z8printIntiii>
    printString(".\n");
    80005d60:	00003517          	auipc	a0,0x3
    80005d64:	60850513          	addi	a0,a0,1544 # 80009368 <CONSOLE_STATUS+0x358>
    80005d68:	00000097          	auipc	ra,0x0
    80005d6c:	56c080e7          	jalr	1388(ra) # 800062d4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005d70:	0324c463          	blt	s1,s2,80005d98 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    } else if (threadNum < 1) {
    80005d74:	03205c63          	blez	s2,80005dac <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
    BufferCPP *buffer = new BufferCPP(n);
    80005d78:	03800513          	li	a0,56
    80005d7c:	ffffd097          	auipc	ra,0xffffd
    80005d80:	60c080e7          	jalr	1548(ra) # 80003388 <_Znwm>
    80005d84:	00050a93          	mv	s5,a0
    80005d88:	00048593          	mv	a1,s1
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	7f4080e7          	jalr	2036(ra) # 80006580 <_ZN9BufferCPPC1Ei>
    80005d94:	0300006f          	j	80005dc4 <_Z29producerConsumer_CPP_Sync_APIv+0x154>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005d98:	00003517          	auipc	a0,0x3
    80005d9c:	5d850513          	addi	a0,a0,1496 # 80009370 <CONSOLE_STATUS+0x360>
    80005da0:	00000097          	auipc	ra,0x0
    80005da4:	534080e7          	jalr	1332(ra) # 800062d4 <_Z11printStringPKc>
        return;
    80005da8:	0140006f          	j	80005dbc <_Z29producerConsumer_CPP_Sync_APIv+0x14c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	60450513          	addi	a0,a0,1540 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	520080e7          	jalr	1312(ra) # 800062d4 <_Z11printStringPKc>
        return;
    80005dbc:	000b8113          	mv	sp,s7
    80005dc0:	24c0006f          	j	8000600c <_Z29producerConsumer_CPP_Sync_APIv+0x39c>
    waitForAll = new Semaphore(0);
    80005dc4:	01000513          	li	a0,16
    80005dc8:	ffffd097          	auipc	ra,0xffffd
    80005dcc:	5c0080e7          	jalr	1472(ra) # 80003388 <_Znwm>
    80005dd0:	00050493          	mv	s1,a0
    80005dd4:	00000593          	li	a1,0
    80005dd8:	ffffd097          	auipc	ra,0xffffd
    80005ddc:	7fc080e7          	jalr	2044(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80005de0:	00006717          	auipc	a4,0x6
    80005de4:	f2873703          	ld	a4,-216(a4) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005de8:	00973023          	sd	s1,0(a4)
    Thread* threads[threadNum];
    80005dec:	00391793          	slli	a5,s2,0x3
    80005df0:	00f78793          	addi	a5,a5,15
    80005df4:	ff07f793          	andi	a5,a5,-16
    80005df8:	40f10133          	sub	sp,sp,a5
    80005dfc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005e00:	0019069b          	addiw	a3,s2,1
    80005e04:	00169793          	slli	a5,a3,0x1
    80005e08:	00d787b3          	add	a5,a5,a3
    80005e0c:	00379793          	slli	a5,a5,0x3
    80005e10:	00f78793          	addi	a5,a5,15
    80005e14:	ff07f793          	andi	a5,a5,-16
    80005e18:	40f10133          	sub	sp,sp,a5
    80005e1c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005e20:	00191493          	slli	s1,s2,0x1
    80005e24:	012487b3          	add	a5,s1,s2
    80005e28:	00379793          	slli	a5,a5,0x3
    80005e2c:	00fa07b3          	add	a5,s4,a5
    80005e30:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005e34:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005e38:	00073703          	ld	a4,0(a4)
    80005e3c:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80005e40:	01800513          	li	a0,24
    80005e44:	ffffd097          	auipc	ra,0xffffd
    80005e48:	544080e7          	jalr	1348(ra) # 80003388 <_Znwm>
    80005e4c:	00050b13          	mv	s6,a0
    80005e50:	012484b3          	add	s1,s1,s2
    80005e54:	00349493          	slli	s1,s1,0x3
    80005e58:	009a04b3          	add	s1,s4,s1

class Consumer:public Thread {
    thread_data* td;
    void consumer(void *arg);
public:
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80005e5c:	ffffd097          	auipc	ra,0xffffd
    80005e60:	6fc080e7          	jalr	1788(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005e64:	00006797          	auipc	a5,0x6
    80005e68:	e0c78793          	addi	a5,a5,-500 # 8000bc70 <_ZTV8Consumer+0x10>
    80005e6c:	00fb3023          	sd	a5,0(s6)
    80005e70:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80005e74:	000b0513          	mv	a0,s6
    80005e78:	ffffd097          	auipc	ra,0xffffd
    80005e7c:	5e0080e7          	jalr	1504(ra) # 80003458 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005e80:	00000493          	li	s1,0
    80005e84:	0380006f          	j	80005ebc <_Z29producerConsumer_CPP_Sync_APIv+0x24c>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80005e88:	00006797          	auipc	a5,0x6
    80005e8c:	dc078793          	addi	a5,a5,-576 # 8000bc48 <_ZTV8Producer+0x10>
    80005e90:	00fcb023          	sd	a5,0(s9)
    80005e94:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80005e98:	00349793          	slli	a5,s1,0x3
    80005e9c:	00f987b3          	add	a5,s3,a5
    80005ea0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005ea4:	00349793          	slli	a5,s1,0x3
    80005ea8:	00f987b3          	add	a5,s3,a5
    80005eac:	0007b503          	ld	a0,0(a5)
    80005eb0:	ffffd097          	auipc	ra,0xffffd
    80005eb4:	5a8080e7          	jalr	1448(ra) # 80003458 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005eb8:	0014849b          	addiw	s1,s1,1
    80005ebc:	0b24d263          	bge	s1,s2,80005f60 <_Z29producerConsumer_CPP_Sync_APIv+0x2f0>
        data[i].id = i;
    80005ec0:	00149793          	slli	a5,s1,0x1
    80005ec4:	009787b3          	add	a5,a5,s1
    80005ec8:	00379793          	slli	a5,a5,0x3
    80005ecc:	00fa07b3          	add	a5,s4,a5
    80005ed0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005ed4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005ed8:	00006717          	auipc	a4,0x6
    80005edc:	e3073703          	ld	a4,-464(a4) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005ee0:	00073703          	ld	a4,0(a4)
    80005ee4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005ee8:	02905863          	blez	s1,80005f18 <_Z29producerConsumer_CPP_Sync_APIv+0x2a8>
            threads[i] = new Producer(data+i);
    80005eec:	01800513          	li	a0,24
    80005ef0:	ffffd097          	auipc	ra,0xffffd
    80005ef4:	498080e7          	jalr	1176(ra) # 80003388 <_Znwm>
    80005ef8:	00050c93          	mv	s9,a0
    80005efc:	00149c13          	slli	s8,s1,0x1
    80005f00:	009c0c33          	add	s8,s8,s1
    80005f04:	003c1c13          	slli	s8,s8,0x3
    80005f08:	018a0c33          	add	s8,s4,s8
    80005f0c:	ffffd097          	auipc	ra,0xffffd
    80005f10:	64c080e7          	jalr	1612(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005f14:	f75ff06f          	j	80005e88 <_Z29producerConsumer_CPP_Sync_APIv+0x218>
            threads[i] = new ProducerKeyboard(data+i);
    80005f18:	01800513          	li	a0,24
    80005f1c:	ffffd097          	auipc	ra,0xffffd
    80005f20:	46c080e7          	jalr	1132(ra) # 80003388 <_Znwm>
    80005f24:	00050c93          	mv	s9,a0
    80005f28:	00149c13          	slli	s8,s1,0x1
    80005f2c:	009c0c33          	add	s8,s8,s1
    80005f30:	003c1c13          	slli	s8,s8,0x3
    80005f34:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005f38:	ffffd097          	auipc	ra,0xffffd
    80005f3c:	620080e7          	jalr	1568(ra) # 80003558 <_ZN6ThreadC1Ev>
    80005f40:	00006797          	auipc	a5,0x6
    80005f44:	ce078793          	addi	a5,a5,-800 # 8000bc20 <_ZTV16ProducerKeyboard+0x10>
    80005f48:	00fcb023          	sd	a5,0(s9)
    80005f4c:	018cb823          	sd	s8,16(s9)
    80005f50:	00349793          	slli	a5,s1,0x3
    80005f54:	00f987b3          	add	a5,s3,a5
    80005f58:	0197b023          	sd	s9,0(a5)
    80005f5c:	f49ff06f          	j	80005ea4 <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    Thread::dispatch();
    80005f60:	ffffd097          	auipc	ra,0xffffd
    80005f64:	530080e7          	jalr	1328(ra) # 80003490 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f68:	00000493          	li	s1,0
    80005f6c:	02994063          	blt	s2,s1,80005f8c <_Z29producerConsumer_CPP_Sync_APIv+0x31c>
        waitForAll->wait();
    80005f70:	00006797          	auipc	a5,0x6
    80005f74:	d987b783          	ld	a5,-616(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005f78:	0007b503          	ld	a0,0(a5)
    80005f7c:	ffffd097          	auipc	ra,0xffffd
    80005f80:	620080e7          	jalr	1568(ra) # 8000359c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f84:	0014849b          	addiw	s1,s1,1
    80005f88:	fe5ff06f          	j	80005f6c <_Z29producerConsumer_CPP_Sync_APIv+0x2fc>
    for (int i = 0; i < threadNum; i++) {
    80005f8c:	00000493          	li	s1,0
    80005f90:	0080006f          	j	80005f98 <_Z29producerConsumer_CPP_Sync_APIv+0x328>
    80005f94:	0014849b          	addiw	s1,s1,1
    80005f98:	0324d263          	bge	s1,s2,80005fbc <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
        delete threads[i];
    80005f9c:	00349793          	slli	a5,s1,0x3
    80005fa0:	00f987b3          	add	a5,s3,a5
    80005fa4:	0007b503          	ld	a0,0(a5)
    80005fa8:	fe0506e3          	beqz	a0,80005f94 <_Z29producerConsumer_CPP_Sync_APIv+0x324>
    80005fac:	00053783          	ld	a5,0(a0)
    80005fb0:	0087b783          	ld	a5,8(a5)
    80005fb4:	000780e7          	jalr	a5
    80005fb8:	fddff06f          	j	80005f94 <_Z29producerConsumer_CPP_Sync_APIv+0x324>
    delete consumerThread;
    80005fbc:	000b0a63          	beqz	s6,80005fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    80005fc0:	000b3783          	ld	a5,0(s6)
    80005fc4:	0087b783          	ld	a5,8(a5)
    80005fc8:	000b0513          	mv	a0,s6
    80005fcc:	000780e7          	jalr	a5
    delete waitForAll;
    80005fd0:	00006797          	auipc	a5,0x6
    80005fd4:	d387b783          	ld	a5,-712(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005fd8:	0007b503          	ld	a0,0(a5)
    80005fdc:	00050863          	beqz	a0,80005fec <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    80005fe0:	00053783          	ld	a5,0(a0)
    80005fe4:	0087b783          	ld	a5,8(a5)
    80005fe8:	000780e7          	jalr	a5
    delete buffer;
    80005fec:	000a8e63          	beqz	s5,80006008 <_Z29producerConsumer_CPP_Sync_APIv+0x398>
    80005ff0:	000a8513          	mv	a0,s5
    80005ff4:	00001097          	auipc	ra,0x1
    80005ff8:	884080e7          	jalr	-1916(ra) # 80006878 <_ZN9BufferCPPD1Ev>
    80005ffc:	000a8513          	mv	a0,s5
    80006000:	ffffd097          	auipc	ra,0xffffd
    80006004:	3b0080e7          	jalr	944(ra) # 800033b0 <_ZdlPv>
    80006008:	000b8113          	mv	sp,s7

    8000600c:	f8040113          	addi	sp,s0,-128
    80006010:	07813083          	ld	ra,120(sp)
    80006014:	07013403          	ld	s0,112(sp)
    80006018:	06813483          	ld	s1,104(sp)
    8000601c:	06013903          	ld	s2,96(sp)
    80006020:	05813983          	ld	s3,88(sp)
    80006024:	05013a03          	ld	s4,80(sp)
    80006028:	04813a83          	ld	s5,72(sp)
    8000602c:	04013b03          	ld	s6,64(sp)
    80006030:	03813b83          	ld	s7,56(sp)
    80006034:	03013c03          	ld	s8,48(sp)
    80006038:	02813c83          	ld	s9,40(sp)
    8000603c:	08010113          	addi	sp,sp,128
    80006040:	00008067          	ret
    80006044:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006048:	000a8513          	mv	a0,s5
    8000604c:	ffffd097          	auipc	ra,0xffffd
    80006050:	364080e7          	jalr	868(ra) # 800033b0 <_ZdlPv>
    80006054:	00048513          	mv	a0,s1
    80006058:	0000b097          	auipc	ra,0xb
    8000605c:	ee0080e7          	jalr	-288(ra) # 80010f38 <_Unwind_Resume>
    80006060:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006064:	00048513          	mv	a0,s1
    80006068:	ffffd097          	auipc	ra,0xffffd
    8000606c:	348080e7          	jalr	840(ra) # 800033b0 <_ZdlPv>
    80006070:	00090513          	mv	a0,s2
    80006074:	0000b097          	auipc	ra,0xb
    80006078:	ec4080e7          	jalr	-316(ra) # 80010f38 <_Unwind_Resume>
    8000607c:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80006080:	000b0513          	mv	a0,s6
    80006084:	ffffd097          	auipc	ra,0xffffd
    80006088:	32c080e7          	jalr	812(ra) # 800033b0 <_ZdlPv>
    8000608c:	00048513          	mv	a0,s1
    80006090:	0000b097          	auipc	ra,0xb
    80006094:	ea8080e7          	jalr	-344(ra) # 80010f38 <_Unwind_Resume>
    80006098:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    8000609c:	000c8513          	mv	a0,s9
    800060a0:	ffffd097          	auipc	ra,0xffffd
    800060a4:	310080e7          	jalr	784(ra) # 800033b0 <_ZdlPv>
    800060a8:	00048513          	mv	a0,s1
    800060ac:	0000b097          	auipc	ra,0xb
    800060b0:	e8c080e7          	jalr	-372(ra) # 80010f38 <_Unwind_Resume>
    800060b4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800060b8:	000c8513          	mv	a0,s9
    800060bc:	ffffd097          	auipc	ra,0xffffd
    800060c0:	2f4080e7          	jalr	756(ra) # 800033b0 <_ZdlPv>
    800060c4:	00048513          	mv	a0,s1
    800060c8:	0000b097          	auipc	ra,0xb
    800060cc:	e70080e7          	jalr	-400(ra) # 80010f38 <_Unwind_Resume>

00000000800060d0 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800060d0:	ff010113          	addi	sp,sp,-16
    800060d4:	00113423          	sd	ra,8(sp)
    800060d8:	00813023          	sd	s0,0(sp)
    800060dc:	01010413          	addi	s0,sp,16
    800060e0:	00006797          	auipc	a5,0x6
    800060e4:	b9078793          	addi	a5,a5,-1136 # 8000bc70 <_ZTV8Consumer+0x10>
    800060e8:	00f53023          	sd	a5,0(a0)
    800060ec:	ffffd097          	auipc	ra,0xffffd
    800060f0:	22c080e7          	jalr	556(ra) # 80003318 <_ZN6ThreadD1Ev>
    800060f4:	00813083          	ld	ra,8(sp)
    800060f8:	00013403          	ld	s0,0(sp)
    800060fc:	01010113          	addi	sp,sp,16
    80006100:	00008067          	ret

0000000080006104 <_ZN8ConsumerD0Ev>:
    80006104:	fe010113          	addi	sp,sp,-32
    80006108:	00113c23          	sd	ra,24(sp)
    8000610c:	00813823          	sd	s0,16(sp)
    80006110:	00913423          	sd	s1,8(sp)
    80006114:	02010413          	addi	s0,sp,32
    80006118:	00050493          	mv	s1,a0
    8000611c:	00006797          	auipc	a5,0x6
    80006120:	b5478793          	addi	a5,a5,-1196 # 8000bc70 <_ZTV8Consumer+0x10>
    80006124:	00f53023          	sd	a5,0(a0)
    80006128:	ffffd097          	auipc	ra,0xffffd
    8000612c:	1f0080e7          	jalr	496(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006130:	00048513          	mv	a0,s1
    80006134:	ffffd097          	auipc	ra,0xffffd
    80006138:	27c080e7          	jalr	636(ra) # 800033b0 <_ZdlPv>
    8000613c:	01813083          	ld	ra,24(sp)
    80006140:	01013403          	ld	s0,16(sp)
    80006144:	00813483          	ld	s1,8(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret

0000000080006150 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80006150:	ff010113          	addi	sp,sp,-16
    80006154:	00113423          	sd	ra,8(sp)
    80006158:	00813023          	sd	s0,0(sp)
    8000615c:	01010413          	addi	s0,sp,16
    80006160:	00006797          	auipc	a5,0x6
    80006164:	ae878793          	addi	a5,a5,-1304 # 8000bc48 <_ZTV8Producer+0x10>
    80006168:	00f53023          	sd	a5,0(a0)
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	1ac080e7          	jalr	428(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006174:	00813083          	ld	ra,8(sp)
    80006178:	00013403          	ld	s0,0(sp)
    8000617c:	01010113          	addi	sp,sp,16
    80006180:	00008067          	ret

0000000080006184 <_ZN8ProducerD0Ev>:
    80006184:	fe010113          	addi	sp,sp,-32
    80006188:	00113c23          	sd	ra,24(sp)
    8000618c:	00813823          	sd	s0,16(sp)
    80006190:	00913423          	sd	s1,8(sp)
    80006194:	02010413          	addi	s0,sp,32
    80006198:	00050493          	mv	s1,a0
    8000619c:	00006797          	auipc	a5,0x6
    800061a0:	aac78793          	addi	a5,a5,-1364 # 8000bc48 <_ZTV8Producer+0x10>
    800061a4:	00f53023          	sd	a5,0(a0)
    800061a8:	ffffd097          	auipc	ra,0xffffd
    800061ac:	170080e7          	jalr	368(ra) # 80003318 <_ZN6ThreadD1Ev>
    800061b0:	00048513          	mv	a0,s1
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	1fc080e7          	jalr	508(ra) # 800033b0 <_ZdlPv>
    800061bc:	01813083          	ld	ra,24(sp)
    800061c0:	01013403          	ld	s0,16(sp)
    800061c4:	00813483          	ld	s1,8(sp)
    800061c8:	02010113          	addi	sp,sp,32
    800061cc:	00008067          	ret

00000000800061d0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00113423          	sd	ra,8(sp)
    800061d8:	00813023          	sd	s0,0(sp)
    800061dc:	01010413          	addi	s0,sp,16
    800061e0:	00006797          	auipc	a5,0x6
    800061e4:	a4078793          	addi	a5,a5,-1472 # 8000bc20 <_ZTV16ProducerKeyboard+0x10>
    800061e8:	00f53023          	sd	a5,0(a0)
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	12c080e7          	jalr	300(ra) # 80003318 <_ZN6ThreadD1Ev>
    800061f4:	00813083          	ld	ra,8(sp)
    800061f8:	00013403          	ld	s0,0(sp)
    800061fc:	01010113          	addi	sp,sp,16
    80006200:	00008067          	ret

0000000080006204 <_ZN16ProducerKeyboardD0Ev>:
    80006204:	fe010113          	addi	sp,sp,-32
    80006208:	00113c23          	sd	ra,24(sp)
    8000620c:	00813823          	sd	s0,16(sp)
    80006210:	00913423          	sd	s1,8(sp)
    80006214:	02010413          	addi	s0,sp,32
    80006218:	00050493          	mv	s1,a0
    8000621c:	00006797          	auipc	a5,0x6
    80006220:	a0478793          	addi	a5,a5,-1532 # 8000bc20 <_ZTV16ProducerKeyboard+0x10>
    80006224:	00f53023          	sd	a5,0(a0)
    80006228:	ffffd097          	auipc	ra,0xffffd
    8000622c:	0f0080e7          	jalr	240(ra) # 80003318 <_ZN6ThreadD1Ev>
    80006230:	00048513          	mv	a0,s1
    80006234:	ffffd097          	auipc	ra,0xffffd
    80006238:	17c080e7          	jalr	380(ra) # 800033b0 <_ZdlPv>
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret

0000000080006250 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006250:	ff010113          	addi	sp,sp,-16
    80006254:	00113423          	sd	ra,8(sp)
    80006258:	00813023          	sd	s0,0(sp)
    8000625c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006260:	01053583          	ld	a1,16(a0)
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	7b0080e7          	jalr	1968(ra) # 80005a14 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000626c:	00813083          	ld	ra,8(sp)
    80006270:	00013403          	ld	s0,0(sp)
    80006274:	01010113          	addi	sp,sp,16
    80006278:	00008067          	ret

000000008000627c <_ZN8Producer3runEv>:
    void run() override {
    8000627c:	ff010113          	addi	sp,sp,-16
    80006280:	00113423          	sd	ra,8(sp)
    80006284:	00813023          	sd	s0,0(sp)
    80006288:	01010413          	addi	s0,sp,16
        producer(td);
    8000628c:	01053583          	ld	a1,16(a0)
    80006290:	00000097          	auipc	ra,0x0
    80006294:	848080e7          	jalr	-1976(ra) # 80005ad8 <_ZN8Producer8producerEPv>
    }
    80006298:	00813083          	ld	ra,8(sp)
    8000629c:	00013403          	ld	s0,0(sp)
    800062a0:	01010113          	addi	sp,sp,16
    800062a4:	00008067          	ret

00000000800062a8 <_ZN8Consumer3runEv>:

    void run() override {
    800062a8:	ff010113          	addi	sp,sp,-16
    800062ac:	00113423          	sd	ra,8(sp)
    800062b0:	00813023          	sd	s0,0(sp)
    800062b4:	01010413          	addi	s0,sp,16
        consumer(td);
    800062b8:	01053583          	ld	a1,16(a0)
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	8b8080e7          	jalr	-1864(ra) # 80005b74 <_ZN8Consumer8consumerEPv>
    }
    800062c4:	00813083          	ld	ra,8(sp)
    800062c8:	00013403          	ld	s0,0(sp)
    800062cc:	01010113          	addi	sp,sp,16
    800062d0:	00008067          	ret

00000000800062d4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800062d4:	fe010113          	addi	sp,sp,-32
    800062d8:	00113c23          	sd	ra,24(sp)
    800062dc:	00813823          	sd	s0,16(sp)
    800062e0:	00913423          	sd	s1,8(sp)
    800062e4:	02010413          	addi	s0,sp,32
    800062e8:	00050493          	mv	s1,a0
    LOCK();
    800062ec:	00100613          	li	a2,1
    800062f0:	00000593          	li	a1,0
    800062f4:	0000a517          	auipc	a0,0xa
    800062f8:	b6450513          	addi	a0,a0,-1180 # 8000fe58 <lockPrint>
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	f1c080e7          	jalr	-228(ra) # 80001218 <copy_and_swap>
    80006304:	fe0514e3          	bnez	a0,800062ec <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006308:	0004c503          	lbu	a0,0(s1)
    8000630c:	00050a63          	beqz	a0,80006320 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	228080e7          	jalr	552(ra) # 80001538 <putc>
        string++;
    80006318:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000631c:	fedff06f          	j	80006308 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80006320:	00000613          	li	a2,0
    80006324:	00100593          	li	a1,1
    80006328:	0000a517          	auipc	a0,0xa
    8000632c:	b3050513          	addi	a0,a0,-1232 # 8000fe58 <lockPrint>
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	ee8080e7          	jalr	-280(ra) # 80001218 <copy_and_swap>
    80006338:	fe0514e3          	bnez	a0,80006320 <_Z11printStringPKc+0x4c>
}
    8000633c:	01813083          	ld	ra,24(sp)
    80006340:	01013403          	ld	s0,16(sp)
    80006344:	00813483          	ld	s1,8(sp)
    80006348:	02010113          	addi	sp,sp,32
    8000634c:	00008067          	ret

0000000080006350 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006350:	fd010113          	addi	sp,sp,-48
    80006354:	02113423          	sd	ra,40(sp)
    80006358:	02813023          	sd	s0,32(sp)
    8000635c:	00913c23          	sd	s1,24(sp)
    80006360:	01213823          	sd	s2,16(sp)
    80006364:	01313423          	sd	s3,8(sp)
    80006368:	01413023          	sd	s4,0(sp)
    8000636c:	03010413          	addi	s0,sp,48
    80006370:	00050993          	mv	s3,a0
    80006374:	00058a13          	mv	s4,a1
    LOCK();
    80006378:	00100613          	li	a2,1
    8000637c:	00000593          	li	a1,0
    80006380:	0000a517          	auipc	a0,0xa
    80006384:	ad850513          	addi	a0,a0,-1320 # 8000fe58 <lockPrint>
    80006388:	ffffb097          	auipc	ra,0xffffb
    8000638c:	e90080e7          	jalr	-368(ra) # 80001218 <copy_and_swap>
    80006390:	fe0514e3          	bnez	a0,80006378 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006394:	00000913          	li	s2,0
    80006398:	00090493          	mv	s1,s2
    8000639c:	0019091b          	addiw	s2,s2,1
    800063a0:	03495a63          	bge	s2,s4,800063d4 <_Z9getStringPci+0x84>
        cc = getc();
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	16c080e7          	jalr	364(ra) # 80001510 <getc>
        if(cc < 1)
    800063ac:	02050463          	beqz	a0,800063d4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800063b0:	009984b3          	add	s1,s3,s1
    800063b4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800063b8:	00a00793          	li	a5,10
    800063bc:	00f50a63          	beq	a0,a5,800063d0 <_Z9getStringPci+0x80>
    800063c0:	00d00793          	li	a5,13
    800063c4:	fcf51ae3          	bne	a0,a5,80006398 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800063c8:	00090493          	mv	s1,s2
    800063cc:	0080006f          	j	800063d4 <_Z9getStringPci+0x84>
    800063d0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800063d4:	009984b3          	add	s1,s3,s1
    800063d8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800063dc:	00000613          	li	a2,0
    800063e0:	00100593          	li	a1,1
    800063e4:	0000a517          	auipc	a0,0xa
    800063e8:	a7450513          	addi	a0,a0,-1420 # 8000fe58 <lockPrint>
    800063ec:	ffffb097          	auipc	ra,0xffffb
    800063f0:	e2c080e7          	jalr	-468(ra) # 80001218 <copy_and_swap>
    800063f4:	fe0514e3          	bnez	a0,800063dc <_Z9getStringPci+0x8c>
    return buf;
}
    800063f8:	00098513          	mv	a0,s3
    800063fc:	02813083          	ld	ra,40(sp)
    80006400:	02013403          	ld	s0,32(sp)
    80006404:	01813483          	ld	s1,24(sp)
    80006408:	01013903          	ld	s2,16(sp)
    8000640c:	00813983          	ld	s3,8(sp)
    80006410:	00013a03          	ld	s4,0(sp)
    80006414:	03010113          	addi	sp,sp,48
    80006418:	00008067          	ret

000000008000641c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000641c:	ff010113          	addi	sp,sp,-16
    80006420:	00813423          	sd	s0,8(sp)
    80006424:	01010413          	addi	s0,sp,16
    80006428:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000642c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006430:	0006c603          	lbu	a2,0(a3)
    80006434:	fd06071b          	addiw	a4,a2,-48
    80006438:	0ff77713          	andi	a4,a4,255
    8000643c:	00900793          	li	a5,9
    80006440:	02e7e063          	bltu	a5,a4,80006460 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006444:	0025179b          	slliw	a5,a0,0x2
    80006448:	00a787bb          	addw	a5,a5,a0
    8000644c:	0017979b          	slliw	a5,a5,0x1
    80006450:	00168693          	addi	a3,a3,1
    80006454:	00c787bb          	addw	a5,a5,a2
    80006458:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000645c:	fd5ff06f          	j	80006430 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006460:	00813403          	ld	s0,8(sp)
    80006464:	01010113          	addi	sp,sp,16
    80006468:	00008067          	ret

000000008000646c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000646c:	fc010113          	addi	sp,sp,-64
    80006470:	02113c23          	sd	ra,56(sp)
    80006474:	02813823          	sd	s0,48(sp)
    80006478:	02913423          	sd	s1,40(sp)
    8000647c:	03213023          	sd	s2,32(sp)
    80006480:	01313c23          	sd	s3,24(sp)
    80006484:	04010413          	addi	s0,sp,64
    80006488:	00050493          	mv	s1,a0
    8000648c:	00058913          	mv	s2,a1
    80006490:	00060993          	mv	s3,a2
    LOCK();
    80006494:	00100613          	li	a2,1
    80006498:	00000593          	li	a1,0
    8000649c:	0000a517          	auipc	a0,0xa
    800064a0:	9bc50513          	addi	a0,a0,-1604 # 8000fe58 <lockPrint>
    800064a4:	ffffb097          	auipc	ra,0xffffb
    800064a8:	d74080e7          	jalr	-652(ra) # 80001218 <copy_and_swap>
    800064ac:	fe0514e3          	bnez	a0,80006494 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800064b0:	00098463          	beqz	s3,800064b8 <_Z8printIntiii+0x4c>
    800064b4:	0804c463          	bltz	s1,8000653c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800064b8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800064bc:	00000593          	li	a1,0
    }

    i = 0;
    800064c0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800064c4:	0009079b          	sext.w	a5,s2
    800064c8:	0325773b          	remuw	a4,a0,s2
    800064cc:	00048613          	mv	a2,s1
    800064d0:	0014849b          	addiw	s1,s1,1
    800064d4:	02071693          	slli	a3,a4,0x20
    800064d8:	0206d693          	srli	a3,a3,0x20
    800064dc:	00005717          	auipc	a4,0x5
    800064e0:	7ac70713          	addi	a4,a4,1964 # 8000bc88 <digits>
    800064e4:	00d70733          	add	a4,a4,a3
    800064e8:	00074683          	lbu	a3,0(a4)
    800064ec:	fd040713          	addi	a4,s0,-48
    800064f0:	00c70733          	add	a4,a4,a2
    800064f4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800064f8:	0005071b          	sext.w	a4,a0
    800064fc:	0325553b          	divuw	a0,a0,s2
    80006500:	fcf772e3          	bgeu	a4,a5,800064c4 <_Z8printIntiii+0x58>
    if(neg)
    80006504:	00058c63          	beqz	a1,8000651c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80006508:	fd040793          	addi	a5,s0,-48
    8000650c:	009784b3          	add	s1,a5,s1
    80006510:	02d00793          	li	a5,45
    80006514:	fef48823          	sb	a5,-16(s1)
    80006518:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000651c:	fff4849b          	addiw	s1,s1,-1
    80006520:	0204c463          	bltz	s1,80006548 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80006524:	fd040793          	addi	a5,s0,-48
    80006528:	009787b3          	add	a5,a5,s1
    8000652c:	ff07c503          	lbu	a0,-16(a5)
    80006530:	ffffb097          	auipc	ra,0xffffb
    80006534:	008080e7          	jalr	8(ra) # 80001538 <putc>
    80006538:	fe5ff06f          	j	8000651c <_Z8printIntiii+0xb0>
        x = -xx;
    8000653c:	4090053b          	negw	a0,s1
        neg = 1;
    80006540:	00100593          	li	a1,1
        x = -xx;
    80006544:	f7dff06f          	j	800064c0 <_Z8printIntiii+0x54>

    UNLOCK();
    80006548:	00000613          	li	a2,0
    8000654c:	00100593          	li	a1,1
    80006550:	0000a517          	auipc	a0,0xa
    80006554:	90850513          	addi	a0,a0,-1784 # 8000fe58 <lockPrint>
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	cc0080e7          	jalr	-832(ra) # 80001218 <copy_and_swap>
    80006560:	fe0514e3          	bnez	a0,80006548 <_Z8printIntiii+0xdc>
}
    80006564:	03813083          	ld	ra,56(sp)
    80006568:	03013403          	ld	s0,48(sp)
    8000656c:	02813483          	ld	s1,40(sp)
    80006570:	02013903          	ld	s2,32(sp)
    80006574:	01813983          	ld	s3,24(sp)
    80006578:	04010113          	addi	sp,sp,64
    8000657c:	00008067          	ret

0000000080006580 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"
BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006580:	fd010113          	addi	sp,sp,-48
    80006584:	02113423          	sd	ra,40(sp)
    80006588:	02813023          	sd	s0,32(sp)
    8000658c:	00913c23          	sd	s1,24(sp)
    80006590:	01213823          	sd	s2,16(sp)
    80006594:	01313423          	sd	s3,8(sp)
    80006598:	03010413          	addi	s0,sp,48
    8000659c:	00050493          	mv	s1,a0
    800065a0:	00058913          	mv	s2,a1
    800065a4:	0015879b          	addiw	a5,a1,1
    800065a8:	0007851b          	sext.w	a0,a5
    800065ac:	00f4a023          	sw	a5,0(s1)
    800065b0:	0004a823          	sw	zero,16(s1)
    800065b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800065b8:	00251513          	slli	a0,a0,0x2
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	c9c080e7          	jalr	-868(ra) # 80001258 <mem_alloc>
    800065c4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800065c8:	01000513          	li	a0,16
    800065cc:	ffffd097          	auipc	ra,0xffffd
    800065d0:	dbc080e7          	jalr	-580(ra) # 80003388 <_Znwm>
    800065d4:	00050993          	mv	s3,a0
    800065d8:	00000593          	li	a1,0
    800065dc:	ffffd097          	auipc	ra,0xffffd
    800065e0:	ff8080e7          	jalr	-8(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    800065e4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800065e8:	01000513          	li	a0,16
    800065ec:	ffffd097          	auipc	ra,0xffffd
    800065f0:	d9c080e7          	jalr	-612(ra) # 80003388 <_Znwm>
    800065f4:	00050993          	mv	s3,a0
    800065f8:	00090593          	mv	a1,s2
    800065fc:	ffffd097          	auipc	ra,0xffffd
    80006600:	fd8080e7          	jalr	-40(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80006604:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006608:	01000513          	li	a0,16
    8000660c:	ffffd097          	auipc	ra,0xffffd
    80006610:	d7c080e7          	jalr	-644(ra) # 80003388 <_Znwm>
    80006614:	00050913          	mv	s2,a0
    80006618:	00100593          	li	a1,1
    8000661c:	ffffd097          	auipc	ra,0xffffd
    80006620:	fb8080e7          	jalr	-72(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80006624:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006628:	01000513          	li	a0,16
    8000662c:	ffffd097          	auipc	ra,0xffffd
    80006630:	d5c080e7          	jalr	-676(ra) # 80003388 <_Znwm>
    80006634:	00050913          	mv	s2,a0
    80006638:	00100593          	li	a1,1
    8000663c:	ffffd097          	auipc	ra,0xffffd
    80006640:	f98080e7          	jalr	-104(ra) # 800035d4 <_ZN9SemaphoreC1Ej>
    80006644:	0324b823          	sd	s2,48(s1)
}
    80006648:	02813083          	ld	ra,40(sp)
    8000664c:	02013403          	ld	s0,32(sp)
    80006650:	01813483          	ld	s1,24(sp)
    80006654:	01013903          	ld	s2,16(sp)
    80006658:	00813983          	ld	s3,8(sp)
    8000665c:	03010113          	addi	sp,sp,48
    80006660:	00008067          	ret
    80006664:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006668:	00098513          	mv	a0,s3
    8000666c:	ffffd097          	auipc	ra,0xffffd
    80006670:	d44080e7          	jalr	-700(ra) # 800033b0 <_ZdlPv>
    80006674:	00048513          	mv	a0,s1
    80006678:	0000b097          	auipc	ra,0xb
    8000667c:	8c0080e7          	jalr	-1856(ra) # 80010f38 <_Unwind_Resume>
    80006680:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006684:	00098513          	mv	a0,s3
    80006688:	ffffd097          	auipc	ra,0xffffd
    8000668c:	d28080e7          	jalr	-728(ra) # 800033b0 <_ZdlPv>
    80006690:	00048513          	mv	a0,s1
    80006694:	0000b097          	auipc	ra,0xb
    80006698:	8a4080e7          	jalr	-1884(ra) # 80010f38 <_Unwind_Resume>
    8000669c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800066a0:	00090513          	mv	a0,s2
    800066a4:	ffffd097          	auipc	ra,0xffffd
    800066a8:	d0c080e7          	jalr	-756(ra) # 800033b0 <_ZdlPv>
    800066ac:	00048513          	mv	a0,s1
    800066b0:	0000b097          	auipc	ra,0xb
    800066b4:	888080e7          	jalr	-1912(ra) # 80010f38 <_Unwind_Resume>
    800066b8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800066bc:	00090513          	mv	a0,s2
    800066c0:	ffffd097          	auipc	ra,0xffffd
    800066c4:	cf0080e7          	jalr	-784(ra) # 800033b0 <_ZdlPv>
    800066c8:	00048513          	mv	a0,s1
    800066cc:	0000b097          	auipc	ra,0xb
    800066d0:	86c080e7          	jalr	-1940(ra) # 80010f38 <_Unwind_Resume>

00000000800066d4 <_ZN9BufferCPP3putEi>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void BufferCPP::put(int val) {
    800066d4:	fe010113          	addi	sp,sp,-32
    800066d8:	00113c23          	sd	ra,24(sp)
    800066dc:	00813823          	sd	s0,16(sp)
    800066e0:	00913423          	sd	s1,8(sp)
    800066e4:	01213023          	sd	s2,0(sp)
    800066e8:	02010413          	addi	s0,sp,32
    800066ec:	00050493          	mv	s1,a0
    800066f0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800066f4:	01853503          	ld	a0,24(a0)
    800066f8:	ffffd097          	auipc	ra,0xffffd
    800066fc:	ea4080e7          	jalr	-348(ra) # 8000359c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006700:	0304b503          	ld	a0,48(s1)
    80006704:	ffffd097          	auipc	ra,0xffffd
    80006708:	e98080e7          	jalr	-360(ra) # 8000359c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000670c:	0084b783          	ld	a5,8(s1)
    80006710:	0144a703          	lw	a4,20(s1)
    80006714:	00271713          	slli	a4,a4,0x2
    80006718:	00e787b3          	add	a5,a5,a4
    8000671c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006720:	0144a783          	lw	a5,20(s1)
    80006724:	0017879b          	addiw	a5,a5,1
    80006728:	0004a703          	lw	a4,0(s1)
    8000672c:	02e7e7bb          	remw	a5,a5,a4
    80006730:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006734:	0304b503          	ld	a0,48(s1)
    80006738:	ffffd097          	auipc	ra,0xffffd
    8000673c:	ee8080e7          	jalr	-280(ra) # 80003620 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006740:	0204b503          	ld	a0,32(s1)
    80006744:	ffffd097          	auipc	ra,0xffffd
    80006748:	edc080e7          	jalr	-292(ra) # 80003620 <_ZN9Semaphore6signalEv>

}
    8000674c:	01813083          	ld	ra,24(sp)
    80006750:	01013403          	ld	s0,16(sp)
    80006754:	00813483          	ld	s1,8(sp)
    80006758:	00013903          	ld	s2,0(sp)
    8000675c:	02010113          	addi	sp,sp,32
    80006760:	00008067          	ret

0000000080006764 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006764:	fe010113          	addi	sp,sp,-32
    80006768:	00113c23          	sd	ra,24(sp)
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00913423          	sd	s1,8(sp)
    80006774:	01213023          	sd	s2,0(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006780:	02053503          	ld	a0,32(a0)
    80006784:	ffffd097          	auipc	ra,0xffffd
    80006788:	e18080e7          	jalr	-488(ra) # 8000359c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000678c:	0284b503          	ld	a0,40(s1)
    80006790:	ffffd097          	auipc	ra,0xffffd
    80006794:	e0c080e7          	jalr	-500(ra) # 8000359c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006798:	0084b703          	ld	a4,8(s1)
    8000679c:	0104a783          	lw	a5,16(s1)
    800067a0:	00279693          	slli	a3,a5,0x2
    800067a4:	00d70733          	add	a4,a4,a3
    800067a8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800067ac:	0017879b          	addiw	a5,a5,1
    800067b0:	0004a703          	lw	a4,0(s1)
    800067b4:	02e7e7bb          	remw	a5,a5,a4
    800067b8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800067bc:	0284b503          	ld	a0,40(s1)
    800067c0:	ffffd097          	auipc	ra,0xffffd
    800067c4:	e60080e7          	jalr	-416(ra) # 80003620 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800067c8:	0184b503          	ld	a0,24(s1)
    800067cc:	ffffd097          	auipc	ra,0xffffd
    800067d0:	e54080e7          	jalr	-428(ra) # 80003620 <_ZN9Semaphore6signalEv>

    return ret;
}
    800067d4:	00090513          	mv	a0,s2
    800067d8:	01813083          	ld	ra,24(sp)
    800067dc:	01013403          	ld	s0,16(sp)
    800067e0:	00813483          	ld	s1,8(sp)
    800067e4:	00013903          	ld	s2,0(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret

00000000800067f0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800067f0:	fe010113          	addi	sp,sp,-32
    800067f4:	00113c23          	sd	ra,24(sp)
    800067f8:	00813823          	sd	s0,16(sp)
    800067fc:	00913423          	sd	s1,8(sp)
    80006800:	01213023          	sd	s2,0(sp)
    80006804:	02010413          	addi	s0,sp,32
    80006808:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000680c:	02853503          	ld	a0,40(a0)
    80006810:	ffffd097          	auipc	ra,0xffffd
    80006814:	d8c080e7          	jalr	-628(ra) # 8000359c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006818:	0304b503          	ld	a0,48(s1)
    8000681c:	ffffd097          	auipc	ra,0xffffd
    80006820:	d80080e7          	jalr	-640(ra) # 8000359c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006824:	0144a783          	lw	a5,20(s1)
    80006828:	0104a903          	lw	s2,16(s1)
    8000682c:	0327ce63          	blt	a5,s2,80006868 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006830:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006834:	0304b503          	ld	a0,48(s1)
    80006838:	ffffd097          	auipc	ra,0xffffd
    8000683c:	de8080e7          	jalr	-536(ra) # 80003620 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006840:	0284b503          	ld	a0,40(s1)
    80006844:	ffffd097          	auipc	ra,0xffffd
    80006848:	ddc080e7          	jalr	-548(ra) # 80003620 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000684c:	00090513          	mv	a0,s2
    80006850:	01813083          	ld	ra,24(sp)
    80006854:	01013403          	ld	s0,16(sp)
    80006858:	00813483          	ld	s1,8(sp)
    8000685c:	00013903          	ld	s2,0(sp)
    80006860:	02010113          	addi	sp,sp,32
    80006864:	00008067          	ret
        ret = cap - head + tail;
    80006868:	0004a703          	lw	a4,0(s1)
    8000686c:	4127093b          	subw	s2,a4,s2
    80006870:	00f9093b          	addw	s2,s2,a5
    80006874:	fc1ff06f          	j	80006834 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006878 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006878:	fe010113          	addi	sp,sp,-32
    8000687c:	00113c23          	sd	ra,24(sp)
    80006880:	00813823          	sd	s0,16(sp)
    80006884:	00913423          	sd	s1,8(sp)
    80006888:	02010413          	addi	s0,sp,32
    8000688c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006890:	00a00513          	li	a0,10
    80006894:	ffffd097          	auipc	ra,0xffffd
    80006898:	dec080e7          	jalr	-532(ra) # 80003680 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000689c:	00003517          	auipc	a0,0x3
    800068a0:	c3c50513          	addi	a0,a0,-964 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	a30080e7          	jalr	-1488(ra) # 800062d4 <_Z11printStringPKc>
    while (getCnt()) {
    800068ac:	00048513          	mv	a0,s1
    800068b0:	00000097          	auipc	ra,0x0
    800068b4:	f40080e7          	jalr	-192(ra) # 800067f0 <_ZN9BufferCPP6getCntEv>
    800068b8:	02050c63          	beqz	a0,800068f0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800068bc:	0084b783          	ld	a5,8(s1)
    800068c0:	0104a703          	lw	a4,16(s1)
    800068c4:	00271713          	slli	a4,a4,0x2
    800068c8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800068cc:	0007c503          	lbu	a0,0(a5)
    800068d0:	ffffd097          	auipc	ra,0xffffd
    800068d4:	db0080e7          	jalr	-592(ra) # 80003680 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800068d8:	0104a783          	lw	a5,16(s1)
    800068dc:	0017879b          	addiw	a5,a5,1
    800068e0:	0004a703          	lw	a4,0(s1)
    800068e4:	02e7e7bb          	remw	a5,a5,a4
    800068e8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800068ec:	fc1ff06f          	j	800068ac <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800068f0:	02100513          	li	a0,33
    800068f4:	ffffd097          	auipc	ra,0xffffd
    800068f8:	d8c080e7          	jalr	-628(ra) # 80003680 <_ZN7Console4putcEc>
    Console::putc('\n');
    800068fc:	00a00513          	li	a0,10
    80006900:	ffffd097          	auipc	ra,0xffffd
    80006904:	d80080e7          	jalr	-640(ra) # 80003680 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006908:	0084b503          	ld	a0,8(s1)
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	97c080e7          	jalr	-1668(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006914:	0204b503          	ld	a0,32(s1)
    80006918:	00050863          	beqz	a0,80006928 <_ZN9BufferCPPD1Ev+0xb0>
    8000691c:	00053783          	ld	a5,0(a0)
    80006920:	0087b783          	ld	a5,8(a5)
    80006924:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006928:	0184b503          	ld	a0,24(s1)
    8000692c:	00050863          	beqz	a0,8000693c <_ZN9BufferCPPD1Ev+0xc4>
    80006930:	00053783          	ld	a5,0(a0)
    80006934:	0087b783          	ld	a5,8(a5)
    80006938:	000780e7          	jalr	a5
    delete mutexTail;
    8000693c:	0304b503          	ld	a0,48(s1)
    80006940:	00050863          	beqz	a0,80006950 <_ZN9BufferCPPD1Ev+0xd8>
    80006944:	00053783          	ld	a5,0(a0)
    80006948:	0087b783          	ld	a5,8(a5)
    8000694c:	000780e7          	jalr	a5
    delete mutexHead;
    80006950:	0284b503          	ld	a0,40(s1)
    80006954:	00050863          	beqz	a0,80006964 <_ZN9BufferCPPD1Ev+0xec>
    80006958:	00053783          	ld	a5,0(a0)
    8000695c:	0087b783          	ld	a5,8(a5)
    80006960:	000780e7          	jalr	a5
}
    80006964:	01813083          	ld	ra,24(sp)
    80006968:	01013403          	ld	s0,16(sp)
    8000696c:	00813483          	ld	s1,8(sp)
    80006970:	02010113          	addi	sp,sp,32
    80006974:	00008067          	ret

0000000080006978 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    80006978:	ff010113          	addi	sp,sp,-16
    8000697c:	00113423          	sd	ra,8(sp)
    80006980:	00813023          	sd	s0,0(sp)
    80006984:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80006988:	00000097          	auipc	ra,0x0
    8000698c:	0bc080e7          	jalr	188(ra) # 80006a44 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006990:	00813083          	ld	ra,8(sp)
    80006994:	00013403          	ld	s0,0(sp)
    80006998:	01010113          	addi	sp,sp,16
    8000699c:	00008067          	ret

00000000800069a0 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800069a0:	fe010113          	addi	sp,sp,-32
    800069a4:	00113c23          	sd	ra,24(sp)
    800069a8:	00813823          	sd	s0,16(sp)
    800069ac:	00913423          	sd	s1,8(sp)
    800069b0:	01213023          	sd	s2,0(sp)
    800069b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800069b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800069bc:	00600493          	li	s1,6
    while (--i > 0) {
    800069c0:	fff4849b          	addiw	s1,s1,-1
    800069c4:	04905463          	blez	s1,80006a0c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	b2850513          	addi	a0,a0,-1240 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800069d0:	00000097          	auipc	ra,0x0
    800069d4:	904080e7          	jalr	-1788(ra) # 800062d4 <_Z11printStringPKc>
        printInt(sleep_time);
    800069d8:	00000613          	li	a2,0
    800069dc:	00a00593          	li	a1,10
    800069e0:	0009051b          	sext.w	a0,s2
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	a88080e7          	jalr	-1400(ra) # 8000646c <_Z8printIntiii>
        printString(" !\n");
    800069ec:	00003517          	auipc	a0,0x3
    800069f0:	b0c50513          	addi	a0,a0,-1268 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800069f4:	00000097          	auipc	ra,0x0
    800069f8:	8e0080e7          	jalr	-1824(ra) # 800062d4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800069fc:	00090513          	mv	a0,s2
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	a38080e7          	jalr	-1480(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006a08:	fb9ff06f          	j	800069c0 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006a0c:	00a00793          	li	a5,10
    80006a10:	02f95933          	divu	s2,s2,a5
    80006a14:	fff90913          	addi	s2,s2,-1
    80006a18:	00009797          	auipc	a5,0x9
    80006a1c:	44878793          	addi	a5,a5,1096 # 8000fe60 <finished>
    80006a20:	01278933          	add	s2,a5,s2
    80006a24:	00100793          	li	a5,1
    80006a28:	00f90023          	sb	a5,0(s2)
}
    80006a2c:	01813083          	ld	ra,24(sp)
    80006a30:	01013403          	ld	s0,16(sp)
    80006a34:	00813483          	ld	s1,8(sp)
    80006a38:	00013903          	ld	s2,0(sp)
    80006a3c:	02010113          	addi	sp,sp,32
    80006a40:	00008067          	ret

0000000080006a44 <_Z12testSleepingv>:

void testSleeping() {
    80006a44:	fc010113          	addi	sp,sp,-64
    80006a48:	02113c23          	sd	ra,56(sp)
    80006a4c:	02813823          	sd	s0,48(sp)
    80006a50:	02913423          	sd	s1,40(sp)
    80006a54:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006a58:	00a00793          	li	a5,10
    80006a5c:	fcf43823          	sd	a5,-48(s0)
    80006a60:	01400793          	li	a5,20
    80006a64:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a68:	00000493          	li	s1,0
    80006a6c:	02c0006f          	j	80006a98 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006a70:	00349793          	slli	a5,s1,0x3
    80006a74:	fd040613          	addi	a2,s0,-48
    80006a78:	00f60633          	add	a2,a2,a5
    80006a7c:	00000597          	auipc	a1,0x0
    80006a80:	f2458593          	addi	a1,a1,-220 # 800069a0 <_Z9sleepyRunPv>
    80006a84:	fc040513          	addi	a0,s0,-64
    80006a88:	00f50533          	add	a0,a0,a5
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	828080e7          	jalr	-2008(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a94:	0014849b          	addiw	s1,s1,1
    80006a98:	00100793          	li	a5,1
    80006a9c:	fc97dae3          	bge	a5,s1,80006a70 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006aa0:	00009797          	auipc	a5,0x9
    80006aa4:	3c07c783          	lbu	a5,960(a5) # 8000fe60 <finished>
    80006aa8:	fe078ce3          	beqz	a5,80006aa0 <_Z12testSleepingv+0x5c>
    80006aac:	00009797          	auipc	a5,0x9
    80006ab0:	3b57c783          	lbu	a5,949(a5) # 8000fe61 <finished+0x1>
    80006ab4:	fe0786e3          	beqz	a5,80006aa0 <_Z12testSleepingv+0x5c>
    80006ab8:	03813083          	ld	ra,56(sp)
    80006abc:	03013403          	ld	s0,48(sp)
    80006ac0:	02813483          	ld	s1,40(sp)
    80006ac4:	04010113          	addi	sp,sp,64
    80006ac8:	00008067          	ret

0000000080006acc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006acc:	fe010113          	addi	sp,sp,-32
    80006ad0:	00113c23          	sd	ra,24(sp)
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00913423          	sd	s1,8(sp)
    80006adc:	01213023          	sd	s2,0(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    80006ae4:	00050493          	mv	s1,a0
    80006ae8:	00058913          	mv	s2,a1
    80006aec:	0015879b          	addiw	a5,a1,1
    80006af0:	0007851b          	sext.w	a0,a5
    80006af4:	00f4a023          	sw	a5,0(s1)
    80006af8:	0004a823          	sw	zero,16(s1)
    80006afc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006b00:	00251513          	slli	a0,a0,0x2
    80006b04:	ffffa097          	auipc	ra,0xffffa
    80006b08:	754080e7          	jalr	1876(ra) # 80001258 <mem_alloc>
    80006b0c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006b10:	00000593          	li	a1,0
    80006b14:	02048513          	addi	a0,s1,32
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	864080e7          	jalr	-1948(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006b20:	00090593          	mv	a1,s2
    80006b24:	01848513          	addi	a0,s1,24
    80006b28:	ffffb097          	auipc	ra,0xffffb
    80006b2c:	854080e7          	jalr	-1964(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006b30:	00100593          	li	a1,1
    80006b34:	02848513          	addi	a0,s1,40
    80006b38:	ffffb097          	auipc	ra,0xffffb
    80006b3c:	844080e7          	jalr	-1980(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006b40:	00100593          	li	a1,1
    80006b44:	03048513          	addi	a0,s1,48
    80006b48:	ffffb097          	auipc	ra,0xffffb
    80006b4c:	834080e7          	jalr	-1996(ra) # 8000137c <sem_open>
}
    80006b50:	01813083          	ld	ra,24(sp)
    80006b54:	01013403          	ld	s0,16(sp)
    80006b58:	00813483          	ld	s1,8(sp)
    80006b5c:	00013903          	ld	s2,0(sp)
    80006b60:	02010113          	addi	sp,sp,32
    80006b64:	00008067          	ret

0000000080006b68 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006b68:	fe010113          	addi	sp,sp,-32
    80006b6c:	00113c23          	sd	ra,24(sp)
    80006b70:	00813823          	sd	s0,16(sp)
    80006b74:	00913423          	sd	s1,8(sp)
    80006b78:	01213023          	sd	s2,0(sp)
    80006b7c:	02010413          	addi	s0,sp,32
    80006b80:	00050493          	mv	s1,a0
    80006b84:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006b88:	01853503          	ld	a0,24(a0)
    80006b8c:	ffffb097          	auipc	ra,0xffffb
    80006b90:	854080e7          	jalr	-1964(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    80006b94:	0304b503          	ld	a0,48(s1)
    80006b98:	ffffb097          	auipc	ra,0xffffb
    80006b9c:	848080e7          	jalr	-1976(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    80006ba0:	0084b783          	ld	a5,8(s1)
    80006ba4:	0144a703          	lw	a4,20(s1)
    80006ba8:	00271713          	slli	a4,a4,0x2
    80006bac:	00e787b3          	add	a5,a5,a4
    80006bb0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006bb4:	0144a783          	lw	a5,20(s1)
    80006bb8:	0017879b          	addiw	a5,a5,1
    80006bbc:	0004a703          	lw	a4,0(s1)
    80006bc0:	02e7e7bb          	remw	a5,a5,a4
    80006bc4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006bc8:	0304b503          	ld	a0,48(s1)
    80006bcc:	ffffb097          	auipc	ra,0xffffb
    80006bd0:	840080e7          	jalr	-1984(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006bd4:	0204b503          	ld	a0,32(s1)
    80006bd8:	ffffb097          	auipc	ra,0xffffb
    80006bdc:	834080e7          	jalr	-1996(ra) # 8000140c <sem_signal>

}
    80006be0:	01813083          	ld	ra,24(sp)
    80006be4:	01013403          	ld	s0,16(sp)
    80006be8:	00813483          	ld	s1,8(sp)
    80006bec:	00013903          	ld	s2,0(sp)
    80006bf0:	02010113          	addi	sp,sp,32
    80006bf4:	00008067          	ret

0000000080006bf8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006bf8:	fe010113          	addi	sp,sp,-32
    80006bfc:	00113c23          	sd	ra,24(sp)
    80006c00:	00813823          	sd	s0,16(sp)
    80006c04:	00913423          	sd	s1,8(sp)
    80006c08:	01213023          	sd	s2,0(sp)
    80006c0c:	02010413          	addi	s0,sp,32
    80006c10:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006c14:	02053503          	ld	a0,32(a0)
    80006c18:	ffffa097          	auipc	ra,0xffffa
    80006c1c:	7c8080e7          	jalr	1992(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006c20:	0284b503          	ld	a0,40(s1)
    80006c24:	ffffa097          	auipc	ra,0xffffa
    80006c28:	7bc080e7          	jalr	1980(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006c2c:	0084b703          	ld	a4,8(s1)
    80006c30:	0104a783          	lw	a5,16(s1)
    80006c34:	00279693          	slli	a3,a5,0x2
    80006c38:	00d70733          	add	a4,a4,a3
    80006c3c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006c40:	0017879b          	addiw	a5,a5,1
    80006c44:	0004a703          	lw	a4,0(s1)
    80006c48:	02e7e7bb          	remw	a5,a5,a4
    80006c4c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006c50:	0284b503          	ld	a0,40(s1)
    80006c54:	ffffa097          	auipc	ra,0xffffa
    80006c58:	7b8080e7          	jalr	1976(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    80006c5c:	0184b503          	ld	a0,24(s1)
    80006c60:	ffffa097          	auipc	ra,0xffffa
    80006c64:	7ac080e7          	jalr	1964(ra) # 8000140c <sem_signal>

    return ret;
}
    80006c68:	00090513          	mv	a0,s2
    80006c6c:	01813083          	ld	ra,24(sp)
    80006c70:	01013403          	ld	s0,16(sp)
    80006c74:	00813483          	ld	s1,8(sp)
    80006c78:	00013903          	ld	s2,0(sp)
    80006c7c:	02010113          	addi	sp,sp,32
    80006c80:	00008067          	ret

0000000080006c84 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt()
{
    80006c84:	fe010113          	addi	sp,sp,-32
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	00813823          	sd	s0,16(sp)
    80006c90:	00913423          	sd	s1,8(sp)
    80006c94:	01213023          	sd	s2,0(sp)
    80006c98:	02010413          	addi	s0,sp,32
    80006c9c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006ca0:	02853503          	ld	a0,40(a0)
    80006ca4:	ffffa097          	auipc	ra,0xffffa
    80006ca8:	73c080e7          	jalr	1852(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    80006cac:	0304b503          	ld	a0,48(s1)
    80006cb0:	ffffa097          	auipc	ra,0xffffa
    80006cb4:	730080e7          	jalr	1840(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    80006cb8:	0144a783          	lw	a5,20(s1)
    80006cbc:	0104a903          	lw	s2,16(s1)
    80006cc0:	0327ce63          	blt	a5,s2,80006cfc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006cc4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006cc8:	0304b503          	ld	a0,48(s1)
    80006ccc:	ffffa097          	auipc	ra,0xffffa
    80006cd0:	740080e7          	jalr	1856(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80006cd4:	0284b503          	ld	a0,40(s1)
    80006cd8:	ffffa097          	auipc	ra,0xffffa
    80006cdc:	734080e7          	jalr	1844(ra) # 8000140c <sem_signal>

    return ret;
}
    80006ce0:	00090513          	mv	a0,s2
    80006ce4:	01813083          	ld	ra,24(sp)
    80006ce8:	01013403          	ld	s0,16(sp)
    80006cec:	00813483          	ld	s1,8(sp)
    80006cf0:	00013903          	ld	s2,0(sp)
    80006cf4:	02010113          	addi	sp,sp,32
    80006cf8:	00008067          	ret
        ret = cap - head + tail;
    80006cfc:	0004a703          	lw	a4,0(s1)
    80006d00:	4127093b          	subw	s2,a4,s2
    80006d04:	00f9093b          	addw	s2,s2,a5
    80006d08:	fc1ff06f          	j	80006cc8 <_ZN6Buffer6getCntEv+0x44>

0000000080006d0c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006d0c:	fe010113          	addi	sp,sp,-32
    80006d10:	00113c23          	sd	ra,24(sp)
    80006d14:	00813823          	sd	s0,16(sp)
    80006d18:	00913423          	sd	s1,8(sp)
    80006d1c:	02010413          	addi	s0,sp,32
    80006d20:	00050493          	mv	s1,a0
    putc('\n');
    80006d24:	00a00513          	li	a0,10
    80006d28:	ffffb097          	auipc	ra,0xffffb
    80006d2c:	810080e7          	jalr	-2032(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80006d30:	00002517          	auipc	a0,0x2
    80006d34:	7a850513          	addi	a0,a0,1960 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006d38:	fffff097          	auipc	ra,0xfffff
    80006d3c:	59c080e7          	jalr	1436(ra) # 800062d4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006d40:	00048513          	mv	a0,s1
    80006d44:	00000097          	auipc	ra,0x0
    80006d48:	f40080e7          	jalr	-192(ra) # 80006c84 <_ZN6Buffer6getCntEv>
    80006d4c:	02a05c63          	blez	a0,80006d84 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006d50:	0084b783          	ld	a5,8(s1)
    80006d54:	0104a703          	lw	a4,16(s1)
    80006d58:	00271713          	slli	a4,a4,0x2
    80006d5c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006d60:	0007c503          	lbu	a0,0(a5)
    80006d64:	ffffa097          	auipc	ra,0xffffa
    80006d68:	7d4080e7          	jalr	2004(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    80006d6c:	0104a783          	lw	a5,16(s1)
    80006d70:	0017879b          	addiw	a5,a5,1
    80006d74:	0004a703          	lw	a4,0(s1)
    80006d78:	02e7e7bb          	remw	a5,a5,a4
    80006d7c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006d80:	fc1ff06f          	j	80006d40 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006d84:	02100513          	li	a0,33
    80006d88:	ffffa097          	auipc	ra,0xffffa
    80006d8c:	7b0080e7          	jalr	1968(ra) # 80001538 <putc>
    putc('\n');
    80006d90:	00a00513          	li	a0,10
    80006d94:	ffffa097          	auipc	ra,0xffffa
    80006d98:	7a4080e7          	jalr	1956(ra) # 80001538 <putc>
    mem_free(buffer);
    80006d9c:	0084b503          	ld	a0,8(s1)
    80006da0:	ffffa097          	auipc	ra,0xffffa
    80006da4:	4e8080e7          	jalr	1256(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80006da8:	0204b503          	ld	a0,32(s1)
    80006dac:	ffffa097          	auipc	ra,0xffffa
    80006db0:	608080e7          	jalr	1544(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    80006db4:	0184b503          	ld	a0,24(s1)
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	5fc080e7          	jalr	1532(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006dc0:	0304b503          	ld	a0,48(s1)
    80006dc4:	ffffa097          	auipc	ra,0xffffa
    80006dc8:	5f0080e7          	jalr	1520(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006dcc:	0284b503          	ld	a0,40(s1)
    80006dd0:	ffffa097          	auipc	ra,0xffffa
    80006dd4:	5e4080e7          	jalr	1508(ra) # 800013b4 <sem_close>
}
    80006dd8:	01813083          	ld	ra,24(sp)
    80006ddc:	01013403          	ld	s0,16(sp)
    80006de0:	00813483          	ld	s1,8(sp)
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	00008067          	ret

0000000080006dec <start>:
    80006dec:	ff010113          	addi	sp,sp,-16
    80006df0:	00813423          	sd	s0,8(sp)
    80006df4:	01010413          	addi	s0,sp,16
    80006df8:	300027f3          	csrr	a5,mstatus
    80006dfc:	ffffe737          	lui	a4,0xffffe
    80006e00:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed72f>
    80006e04:	00e7f7b3          	and	a5,a5,a4
    80006e08:	00001737          	lui	a4,0x1
    80006e0c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006e10:	00e7e7b3          	or	a5,a5,a4
    80006e14:	30079073          	csrw	mstatus,a5
    80006e18:	00000797          	auipc	a5,0x0
    80006e1c:	16078793          	addi	a5,a5,352 # 80006f78 <system_main>
    80006e20:	34179073          	csrw	mepc,a5
    80006e24:	00000793          	li	a5,0
    80006e28:	18079073          	csrw	satp,a5
    80006e2c:	000107b7          	lui	a5,0x10
    80006e30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006e34:	30279073          	csrw	medeleg,a5
    80006e38:	30379073          	csrw	mideleg,a5
    80006e3c:	104027f3          	csrr	a5,sie
    80006e40:	2227e793          	ori	a5,a5,546
    80006e44:	10479073          	csrw	sie,a5
    80006e48:	fff00793          	li	a5,-1
    80006e4c:	00a7d793          	srli	a5,a5,0xa
    80006e50:	3b079073          	csrw	pmpaddr0,a5
    80006e54:	00f00793          	li	a5,15
    80006e58:	3a079073          	csrw	pmpcfg0,a5
    80006e5c:	f14027f3          	csrr	a5,mhartid
    80006e60:	0200c737          	lui	a4,0x200c
    80006e64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006e68:	0007869b          	sext.w	a3,a5
    80006e6c:	00269713          	slli	a4,a3,0x2
    80006e70:	000f4637          	lui	a2,0xf4
    80006e74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006e78:	00d70733          	add	a4,a4,a3
    80006e7c:	0037979b          	slliw	a5,a5,0x3
    80006e80:	020046b7          	lui	a3,0x2004
    80006e84:	00d787b3          	add	a5,a5,a3
    80006e88:	00c585b3          	add	a1,a1,a2
    80006e8c:	00371693          	slli	a3,a4,0x3
    80006e90:	00009717          	auipc	a4,0x9
    80006e94:	fe070713          	addi	a4,a4,-32 # 8000fe70 <timer_scratch>
    80006e98:	00b7b023          	sd	a1,0(a5)
    80006e9c:	00d70733          	add	a4,a4,a3
    80006ea0:	00f73c23          	sd	a5,24(a4)
    80006ea4:	02c73023          	sd	a2,32(a4)
    80006ea8:	34071073          	csrw	mscratch,a4
    80006eac:	00000797          	auipc	a5,0x0
    80006eb0:	6e478793          	addi	a5,a5,1764 # 80007590 <timervec>
    80006eb4:	30579073          	csrw	mtvec,a5
    80006eb8:	300027f3          	csrr	a5,mstatus
    80006ebc:	0087e793          	ori	a5,a5,8
    80006ec0:	30079073          	csrw	mstatus,a5
    80006ec4:	304027f3          	csrr	a5,mie
    80006ec8:	0807e793          	ori	a5,a5,128
    80006ecc:	30479073          	csrw	mie,a5
    80006ed0:	f14027f3          	csrr	a5,mhartid
    80006ed4:	0007879b          	sext.w	a5,a5
    80006ed8:	00078213          	mv	tp,a5
    80006edc:	30200073          	mret
    80006ee0:	00813403          	ld	s0,8(sp)
    80006ee4:	01010113          	addi	sp,sp,16
    80006ee8:	00008067          	ret

0000000080006eec <timerinit>:
    80006eec:	ff010113          	addi	sp,sp,-16
    80006ef0:	00813423          	sd	s0,8(sp)
    80006ef4:	01010413          	addi	s0,sp,16
    80006ef8:	f14027f3          	csrr	a5,mhartid
    80006efc:	0200c737          	lui	a4,0x200c
    80006f00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f04:	0007869b          	sext.w	a3,a5
    80006f08:	00269713          	slli	a4,a3,0x2
    80006f0c:	000f4637          	lui	a2,0xf4
    80006f10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f14:	00d70733          	add	a4,a4,a3
    80006f18:	0037979b          	slliw	a5,a5,0x3
    80006f1c:	020046b7          	lui	a3,0x2004
    80006f20:	00d787b3          	add	a5,a5,a3
    80006f24:	00c585b3          	add	a1,a1,a2
    80006f28:	00371693          	slli	a3,a4,0x3
    80006f2c:	00009717          	auipc	a4,0x9
    80006f30:	f4470713          	addi	a4,a4,-188 # 8000fe70 <timer_scratch>
    80006f34:	00b7b023          	sd	a1,0(a5)
    80006f38:	00d70733          	add	a4,a4,a3
    80006f3c:	00f73c23          	sd	a5,24(a4)
    80006f40:	02c73023          	sd	a2,32(a4)
    80006f44:	34071073          	csrw	mscratch,a4
    80006f48:	00000797          	auipc	a5,0x0
    80006f4c:	64878793          	addi	a5,a5,1608 # 80007590 <timervec>
    80006f50:	30579073          	csrw	mtvec,a5
    80006f54:	300027f3          	csrr	a5,mstatus
    80006f58:	0087e793          	ori	a5,a5,8
    80006f5c:	30079073          	csrw	mstatus,a5
    80006f60:	304027f3          	csrr	a5,mie
    80006f64:	0807e793          	ori	a5,a5,128
    80006f68:	30479073          	csrw	mie,a5
    80006f6c:	00813403          	ld	s0,8(sp)
    80006f70:	01010113          	addi	sp,sp,16
    80006f74:	00008067          	ret

0000000080006f78 <system_main>:
    80006f78:	fe010113          	addi	sp,sp,-32
    80006f7c:	00813823          	sd	s0,16(sp)
    80006f80:	00913423          	sd	s1,8(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	02010413          	addi	s0,sp,32
    80006f8c:	00000097          	auipc	ra,0x0
    80006f90:	0c4080e7          	jalr	196(ra) # 80007050 <cpuid>
    80006f94:	00005497          	auipc	s1,0x5
    80006f98:	dac48493          	addi	s1,s1,-596 # 8000bd40 <started>
    80006f9c:	02050263          	beqz	a0,80006fc0 <system_main+0x48>
    80006fa0:	0004a783          	lw	a5,0(s1)
    80006fa4:	0007879b          	sext.w	a5,a5
    80006fa8:	fe078ce3          	beqz	a5,80006fa0 <system_main+0x28>
    80006fac:	0ff0000f          	fence
    80006fb0:	00002517          	auipc	a0,0x2
    80006fb4:	58050513          	addi	a0,a0,1408 # 80009530 <CONSOLE_STATUS+0x520>
    80006fb8:	00001097          	auipc	ra,0x1
    80006fbc:	a74080e7          	jalr	-1420(ra) # 80007a2c <panic>
    80006fc0:	00001097          	auipc	ra,0x1
    80006fc4:	9c8080e7          	jalr	-1592(ra) # 80007988 <consoleinit>
    80006fc8:	00001097          	auipc	ra,0x1
    80006fcc:	154080e7          	jalr	340(ra) # 8000811c <printfinit>
    80006fd0:	00002517          	auipc	a0,0x2
    80006fd4:	12850513          	addi	a0,a0,296 # 800090f8 <CONSOLE_STATUS+0xe8>
    80006fd8:	00001097          	auipc	ra,0x1
    80006fdc:	ab0080e7          	jalr	-1360(ra) # 80007a88 <__printf>
    80006fe0:	00002517          	auipc	a0,0x2
    80006fe4:	52050513          	addi	a0,a0,1312 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006fe8:	00001097          	auipc	ra,0x1
    80006fec:	aa0080e7          	jalr	-1376(ra) # 80007a88 <__printf>
    80006ff0:	00002517          	auipc	a0,0x2
    80006ff4:	10850513          	addi	a0,a0,264 # 800090f8 <CONSOLE_STATUS+0xe8>
    80006ff8:	00001097          	auipc	ra,0x1
    80006ffc:	a90080e7          	jalr	-1392(ra) # 80007a88 <__printf>
    80007000:	00001097          	auipc	ra,0x1
    80007004:	4a8080e7          	jalr	1192(ra) # 800084a8 <kinit>
    80007008:	00000097          	auipc	ra,0x0
    8000700c:	148080e7          	jalr	328(ra) # 80007150 <trapinit>
    80007010:	00000097          	auipc	ra,0x0
    80007014:	16c080e7          	jalr	364(ra) # 8000717c <trapinithart>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	5b8080e7          	jalr	1464(ra) # 800075d0 <plicinit>
    80007020:	00000097          	auipc	ra,0x0
    80007024:	5d8080e7          	jalr	1496(ra) # 800075f8 <plicinithart>
    80007028:	00000097          	auipc	ra,0x0
    8000702c:	078080e7          	jalr	120(ra) # 800070a0 <userinit>
    80007030:	0ff0000f          	fence
    80007034:	00100793          	li	a5,1
    80007038:	00002517          	auipc	a0,0x2
    8000703c:	4e050513          	addi	a0,a0,1248 # 80009518 <CONSOLE_STATUS+0x508>
    80007040:	00f4a023          	sw	a5,0(s1)
    80007044:	00001097          	auipc	ra,0x1
    80007048:	a44080e7          	jalr	-1468(ra) # 80007a88 <__printf>
    8000704c:	0000006f          	j	8000704c <system_main+0xd4>

0000000080007050 <cpuid>:
    80007050:	ff010113          	addi	sp,sp,-16
    80007054:	00813423          	sd	s0,8(sp)
    80007058:	01010413          	addi	s0,sp,16
    8000705c:	00020513          	mv	a0,tp
    80007060:	00813403          	ld	s0,8(sp)
    80007064:	0005051b          	sext.w	a0,a0
    80007068:	01010113          	addi	sp,sp,16
    8000706c:	00008067          	ret

0000000080007070 <mycpu>:
    80007070:	ff010113          	addi	sp,sp,-16
    80007074:	00813423          	sd	s0,8(sp)
    80007078:	01010413          	addi	s0,sp,16
    8000707c:	00020793          	mv	a5,tp
    80007080:	00813403          	ld	s0,8(sp)
    80007084:	0007879b          	sext.w	a5,a5
    80007088:	00779793          	slli	a5,a5,0x7
    8000708c:	0000a517          	auipc	a0,0xa
    80007090:	e1450513          	addi	a0,a0,-492 # 80010ea0 <cpus>
    80007094:	00f50533          	add	a0,a0,a5
    80007098:	01010113          	addi	sp,sp,16
    8000709c:	00008067          	ret

00000000800070a0 <userinit>:
    800070a0:	ff010113          	addi	sp,sp,-16
    800070a4:	00813423          	sd	s0,8(sp)
    800070a8:	01010413          	addi	s0,sp,16
    800070ac:	00813403          	ld	s0,8(sp)
    800070b0:	01010113          	addi	sp,sp,16
    800070b4:	ffffc317          	auipc	t1,0xffffc
    800070b8:	21030067          	jr	528(t1) # 800032c4 <main>

00000000800070bc <either_copyout>:
    800070bc:	ff010113          	addi	sp,sp,-16
    800070c0:	00813023          	sd	s0,0(sp)
    800070c4:	00113423          	sd	ra,8(sp)
    800070c8:	01010413          	addi	s0,sp,16
    800070cc:	02051663          	bnez	a0,800070f8 <either_copyout+0x3c>
    800070d0:	00058513          	mv	a0,a1
    800070d4:	00060593          	mv	a1,a2
    800070d8:	0006861b          	sext.w	a2,a3
    800070dc:	00002097          	auipc	ra,0x2
    800070e0:	c58080e7          	jalr	-936(ra) # 80008d34 <__memmove>
    800070e4:	00813083          	ld	ra,8(sp)
    800070e8:	00013403          	ld	s0,0(sp)
    800070ec:	00000513          	li	a0,0
    800070f0:	01010113          	addi	sp,sp,16
    800070f4:	00008067          	ret
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	46050513          	addi	a0,a0,1120 # 80009558 <CONSOLE_STATUS+0x548>
    80007100:	00001097          	auipc	ra,0x1
    80007104:	92c080e7          	jalr	-1748(ra) # 80007a2c <panic>

0000000080007108 <either_copyin>:
    80007108:	ff010113          	addi	sp,sp,-16
    8000710c:	00813023          	sd	s0,0(sp)
    80007110:	00113423          	sd	ra,8(sp)
    80007114:	01010413          	addi	s0,sp,16
    80007118:	02059463          	bnez	a1,80007140 <either_copyin+0x38>
    8000711c:	00060593          	mv	a1,a2
    80007120:	0006861b          	sext.w	a2,a3
    80007124:	00002097          	auipc	ra,0x2
    80007128:	c10080e7          	jalr	-1008(ra) # 80008d34 <__memmove>
    8000712c:	00813083          	ld	ra,8(sp)
    80007130:	00013403          	ld	s0,0(sp)
    80007134:	00000513          	li	a0,0
    80007138:	01010113          	addi	sp,sp,16
    8000713c:	00008067          	ret
    80007140:	00002517          	auipc	a0,0x2
    80007144:	44050513          	addi	a0,a0,1088 # 80009580 <CONSOLE_STATUS+0x570>
    80007148:	00001097          	auipc	ra,0x1
    8000714c:	8e4080e7          	jalr	-1820(ra) # 80007a2c <panic>

0000000080007150 <trapinit>:
    80007150:	ff010113          	addi	sp,sp,-16
    80007154:	00813423          	sd	s0,8(sp)
    80007158:	01010413          	addi	s0,sp,16
    8000715c:	00813403          	ld	s0,8(sp)
    80007160:	00002597          	auipc	a1,0x2
    80007164:	44858593          	addi	a1,a1,1096 # 800095a8 <CONSOLE_STATUS+0x598>
    80007168:	0000a517          	auipc	a0,0xa
    8000716c:	db850513          	addi	a0,a0,-584 # 80010f20 <tickslock>
    80007170:	01010113          	addi	sp,sp,16
    80007174:	00001317          	auipc	t1,0x1
    80007178:	5c430067          	jr	1476(t1) # 80008738 <initlock>

000000008000717c <trapinithart>:
    8000717c:	ff010113          	addi	sp,sp,-16
    80007180:	00813423          	sd	s0,8(sp)
    80007184:	01010413          	addi	s0,sp,16
    80007188:	00000797          	auipc	a5,0x0
    8000718c:	2f878793          	addi	a5,a5,760 # 80007480 <kernelvec>
    80007190:	10579073          	csrw	stvec,a5
    80007194:	00813403          	ld	s0,8(sp)
    80007198:	01010113          	addi	sp,sp,16
    8000719c:	00008067          	ret

00000000800071a0 <usertrap>:
    800071a0:	ff010113          	addi	sp,sp,-16
    800071a4:	00813423          	sd	s0,8(sp)
    800071a8:	01010413          	addi	s0,sp,16
    800071ac:	00813403          	ld	s0,8(sp)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret

00000000800071b8 <usertrapret>:
    800071b8:	ff010113          	addi	sp,sp,-16
    800071bc:	00813423          	sd	s0,8(sp)
    800071c0:	01010413          	addi	s0,sp,16
    800071c4:	00813403          	ld	s0,8(sp)
    800071c8:	01010113          	addi	sp,sp,16
    800071cc:	00008067          	ret

00000000800071d0 <kerneltrap>:
    800071d0:	fe010113          	addi	sp,sp,-32
    800071d4:	00813823          	sd	s0,16(sp)
    800071d8:	00113c23          	sd	ra,24(sp)
    800071dc:	00913423          	sd	s1,8(sp)
    800071e0:	02010413          	addi	s0,sp,32
    800071e4:	142025f3          	csrr	a1,scause
    800071e8:	100027f3          	csrr	a5,sstatus
    800071ec:	0027f793          	andi	a5,a5,2
    800071f0:	10079c63          	bnez	a5,80007308 <kerneltrap+0x138>
    800071f4:	142027f3          	csrr	a5,scause
    800071f8:	0207ce63          	bltz	a5,80007234 <kerneltrap+0x64>
    800071fc:	00002517          	auipc	a0,0x2
    80007200:	3f450513          	addi	a0,a0,1012 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80007204:	00001097          	auipc	ra,0x1
    80007208:	884080e7          	jalr	-1916(ra) # 80007a88 <__printf>
    8000720c:	141025f3          	csrr	a1,sepc
    80007210:	14302673          	csrr	a2,stval
    80007214:	00002517          	auipc	a0,0x2
    80007218:	3ec50513          	addi	a0,a0,1004 # 80009600 <CONSOLE_STATUS+0x5f0>
    8000721c:	00001097          	auipc	ra,0x1
    80007220:	86c080e7          	jalr	-1940(ra) # 80007a88 <__printf>
    80007224:	00002517          	auipc	a0,0x2
    80007228:	3f450513          	addi	a0,a0,1012 # 80009618 <CONSOLE_STATUS+0x608>
    8000722c:	00001097          	auipc	ra,0x1
    80007230:	800080e7          	jalr	-2048(ra) # 80007a2c <panic>
    80007234:	0ff7f713          	andi	a4,a5,255
    80007238:	00900693          	li	a3,9
    8000723c:	04d70063          	beq	a4,a3,8000727c <kerneltrap+0xac>
    80007240:	fff00713          	li	a4,-1
    80007244:	03f71713          	slli	a4,a4,0x3f
    80007248:	00170713          	addi	a4,a4,1
    8000724c:	fae798e3          	bne	a5,a4,800071fc <kerneltrap+0x2c>
    80007250:	00000097          	auipc	ra,0x0
    80007254:	e00080e7          	jalr	-512(ra) # 80007050 <cpuid>
    80007258:	06050663          	beqz	a0,800072c4 <kerneltrap+0xf4>
    8000725c:	144027f3          	csrr	a5,sip
    80007260:	ffd7f793          	andi	a5,a5,-3
    80007264:	14479073          	csrw	sip,a5
    80007268:	01813083          	ld	ra,24(sp)
    8000726c:	01013403          	ld	s0,16(sp)
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	02010113          	addi	sp,sp,32
    80007278:	00008067          	ret
    8000727c:	00000097          	auipc	ra,0x0
    80007280:	3c8080e7          	jalr	968(ra) # 80007644 <plic_claim>
    80007284:	00a00793          	li	a5,10
    80007288:	00050493          	mv	s1,a0
    8000728c:	06f50863          	beq	a0,a5,800072fc <kerneltrap+0x12c>
    80007290:	fc050ce3          	beqz	a0,80007268 <kerneltrap+0x98>
    80007294:	00050593          	mv	a1,a0
    80007298:	00002517          	auipc	a0,0x2
    8000729c:	33850513          	addi	a0,a0,824 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800072a0:	00000097          	auipc	ra,0x0
    800072a4:	7e8080e7          	jalr	2024(ra) # 80007a88 <__printf>
    800072a8:	01013403          	ld	s0,16(sp)
    800072ac:	01813083          	ld	ra,24(sp)
    800072b0:	00048513          	mv	a0,s1
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00000317          	auipc	t1,0x0
    800072c0:	3c030067          	jr	960(t1) # 8000767c <plic_complete>
    800072c4:	0000a517          	auipc	a0,0xa
    800072c8:	c5c50513          	addi	a0,a0,-932 # 80010f20 <tickslock>
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	490080e7          	jalr	1168(ra) # 8000875c <acquire>
    800072d4:	00005717          	auipc	a4,0x5
    800072d8:	a7070713          	addi	a4,a4,-1424 # 8000bd44 <ticks>
    800072dc:	00072783          	lw	a5,0(a4)
    800072e0:	0000a517          	auipc	a0,0xa
    800072e4:	c4050513          	addi	a0,a0,-960 # 80010f20 <tickslock>
    800072e8:	0017879b          	addiw	a5,a5,1
    800072ec:	00f72023          	sw	a5,0(a4)
    800072f0:	00001097          	auipc	ra,0x1
    800072f4:	538080e7          	jalr	1336(ra) # 80008828 <release>
    800072f8:	f65ff06f          	j	8000725c <kerneltrap+0x8c>
    800072fc:	00001097          	auipc	ra,0x1
    80007300:	094080e7          	jalr	148(ra) # 80008390 <uartintr>
    80007304:	fa5ff06f          	j	800072a8 <kerneltrap+0xd8>
    80007308:	00002517          	auipc	a0,0x2
    8000730c:	2a850513          	addi	a0,a0,680 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80007310:	00000097          	auipc	ra,0x0
    80007314:	71c080e7          	jalr	1820(ra) # 80007a2c <panic>

0000000080007318 <clockintr>:
    80007318:	fe010113          	addi	sp,sp,-32
    8000731c:	00813823          	sd	s0,16(sp)
    80007320:	00913423          	sd	s1,8(sp)
    80007324:	00113c23          	sd	ra,24(sp)
    80007328:	02010413          	addi	s0,sp,32
    8000732c:	0000a497          	auipc	s1,0xa
    80007330:	bf448493          	addi	s1,s1,-1036 # 80010f20 <tickslock>
    80007334:	00048513          	mv	a0,s1
    80007338:	00001097          	auipc	ra,0x1
    8000733c:	424080e7          	jalr	1060(ra) # 8000875c <acquire>
    80007340:	00005717          	auipc	a4,0x5
    80007344:	a0470713          	addi	a4,a4,-1532 # 8000bd44 <ticks>
    80007348:	00072783          	lw	a5,0(a4)
    8000734c:	01013403          	ld	s0,16(sp)
    80007350:	01813083          	ld	ra,24(sp)
    80007354:	00048513          	mv	a0,s1
    80007358:	0017879b          	addiw	a5,a5,1
    8000735c:	00813483          	ld	s1,8(sp)
    80007360:	00f72023          	sw	a5,0(a4)
    80007364:	02010113          	addi	sp,sp,32
    80007368:	00001317          	auipc	t1,0x1
    8000736c:	4c030067          	jr	1216(t1) # 80008828 <release>

0000000080007370 <devintr>:
    80007370:	142027f3          	csrr	a5,scause
    80007374:	00000513          	li	a0,0
    80007378:	0007c463          	bltz	a5,80007380 <devintr+0x10>
    8000737c:	00008067          	ret
    80007380:	fe010113          	addi	sp,sp,-32
    80007384:	00813823          	sd	s0,16(sp)
    80007388:	00113c23          	sd	ra,24(sp)
    8000738c:	00913423          	sd	s1,8(sp)
    80007390:	02010413          	addi	s0,sp,32
    80007394:	0ff7f713          	andi	a4,a5,255
    80007398:	00900693          	li	a3,9
    8000739c:	04d70c63          	beq	a4,a3,800073f4 <devintr+0x84>
    800073a0:	fff00713          	li	a4,-1
    800073a4:	03f71713          	slli	a4,a4,0x3f
    800073a8:	00170713          	addi	a4,a4,1
    800073ac:	00e78c63          	beq	a5,a4,800073c4 <devintr+0x54>
    800073b0:	01813083          	ld	ra,24(sp)
    800073b4:	01013403          	ld	s0,16(sp)
    800073b8:	00813483          	ld	s1,8(sp)
    800073bc:	02010113          	addi	sp,sp,32
    800073c0:	00008067          	ret
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	c8c080e7          	jalr	-884(ra) # 80007050 <cpuid>
    800073cc:	06050663          	beqz	a0,80007438 <devintr+0xc8>
    800073d0:	144027f3          	csrr	a5,sip
    800073d4:	ffd7f793          	andi	a5,a5,-3
    800073d8:	14479073          	csrw	sip,a5
    800073dc:	01813083          	ld	ra,24(sp)
    800073e0:	01013403          	ld	s0,16(sp)
    800073e4:	00813483          	ld	s1,8(sp)
    800073e8:	00200513          	li	a0,2
    800073ec:	02010113          	addi	sp,sp,32
    800073f0:	00008067          	ret
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	250080e7          	jalr	592(ra) # 80007644 <plic_claim>
    800073fc:	00a00793          	li	a5,10
    80007400:	00050493          	mv	s1,a0
    80007404:	06f50663          	beq	a0,a5,80007470 <devintr+0x100>
    80007408:	00100513          	li	a0,1
    8000740c:	fa0482e3          	beqz	s1,800073b0 <devintr+0x40>
    80007410:	00048593          	mv	a1,s1
    80007414:	00002517          	auipc	a0,0x2
    80007418:	1bc50513          	addi	a0,a0,444 # 800095d0 <CONSOLE_STATUS+0x5c0>
    8000741c:	00000097          	auipc	ra,0x0
    80007420:	66c080e7          	jalr	1644(ra) # 80007a88 <__printf>
    80007424:	00048513          	mv	a0,s1
    80007428:	00000097          	auipc	ra,0x0
    8000742c:	254080e7          	jalr	596(ra) # 8000767c <plic_complete>
    80007430:	00100513          	li	a0,1
    80007434:	f7dff06f          	j	800073b0 <devintr+0x40>
    80007438:	0000a517          	auipc	a0,0xa
    8000743c:	ae850513          	addi	a0,a0,-1304 # 80010f20 <tickslock>
    80007440:	00001097          	auipc	ra,0x1
    80007444:	31c080e7          	jalr	796(ra) # 8000875c <acquire>
    80007448:	00005717          	auipc	a4,0x5
    8000744c:	8fc70713          	addi	a4,a4,-1796 # 8000bd44 <ticks>
    80007450:	00072783          	lw	a5,0(a4)
    80007454:	0000a517          	auipc	a0,0xa
    80007458:	acc50513          	addi	a0,a0,-1332 # 80010f20 <tickslock>
    8000745c:	0017879b          	addiw	a5,a5,1
    80007460:	00f72023          	sw	a5,0(a4)
    80007464:	00001097          	auipc	ra,0x1
    80007468:	3c4080e7          	jalr	964(ra) # 80008828 <release>
    8000746c:	f65ff06f          	j	800073d0 <devintr+0x60>
    80007470:	00001097          	auipc	ra,0x1
    80007474:	f20080e7          	jalr	-224(ra) # 80008390 <uartintr>
    80007478:	fadff06f          	j	80007424 <devintr+0xb4>
    8000747c:	0000                	unimp
	...

0000000080007480 <kernelvec>:
    80007480:	f0010113          	addi	sp,sp,-256
    80007484:	00113023          	sd	ra,0(sp)
    80007488:	00213423          	sd	sp,8(sp)
    8000748c:	00313823          	sd	gp,16(sp)
    80007490:	00413c23          	sd	tp,24(sp)
    80007494:	02513023          	sd	t0,32(sp)
    80007498:	02613423          	sd	t1,40(sp)
    8000749c:	02713823          	sd	t2,48(sp)
    800074a0:	02813c23          	sd	s0,56(sp)
    800074a4:	04913023          	sd	s1,64(sp)
    800074a8:	04a13423          	sd	a0,72(sp)
    800074ac:	04b13823          	sd	a1,80(sp)
    800074b0:	04c13c23          	sd	a2,88(sp)
    800074b4:	06d13023          	sd	a3,96(sp)
    800074b8:	06e13423          	sd	a4,104(sp)
    800074bc:	06f13823          	sd	a5,112(sp)
    800074c0:	07013c23          	sd	a6,120(sp)
    800074c4:	09113023          	sd	a7,128(sp)
    800074c8:	09213423          	sd	s2,136(sp)
    800074cc:	09313823          	sd	s3,144(sp)
    800074d0:	09413c23          	sd	s4,152(sp)
    800074d4:	0b513023          	sd	s5,160(sp)
    800074d8:	0b613423          	sd	s6,168(sp)
    800074dc:	0b713823          	sd	s7,176(sp)
    800074e0:	0b813c23          	sd	s8,184(sp)
    800074e4:	0d913023          	sd	s9,192(sp)
    800074e8:	0da13423          	sd	s10,200(sp)
    800074ec:	0db13823          	sd	s11,208(sp)
    800074f0:	0dc13c23          	sd	t3,216(sp)
    800074f4:	0fd13023          	sd	t4,224(sp)
    800074f8:	0fe13423          	sd	t5,232(sp)
    800074fc:	0ff13823          	sd	t6,240(sp)
    80007500:	cd1ff0ef          	jal	ra,800071d0 <kerneltrap>
    80007504:	00013083          	ld	ra,0(sp)
    80007508:	00813103          	ld	sp,8(sp)
    8000750c:	01013183          	ld	gp,16(sp)
    80007510:	02013283          	ld	t0,32(sp)
    80007514:	02813303          	ld	t1,40(sp)
    80007518:	03013383          	ld	t2,48(sp)
    8000751c:	03813403          	ld	s0,56(sp)
    80007520:	04013483          	ld	s1,64(sp)
    80007524:	04813503          	ld	a0,72(sp)
    80007528:	05013583          	ld	a1,80(sp)
    8000752c:	05813603          	ld	a2,88(sp)
    80007530:	06013683          	ld	a3,96(sp)
    80007534:	06813703          	ld	a4,104(sp)
    80007538:	07013783          	ld	a5,112(sp)
    8000753c:	07813803          	ld	a6,120(sp)
    80007540:	08013883          	ld	a7,128(sp)
    80007544:	08813903          	ld	s2,136(sp)
    80007548:	09013983          	ld	s3,144(sp)
    8000754c:	09813a03          	ld	s4,152(sp)
    80007550:	0a013a83          	ld	s5,160(sp)
    80007554:	0a813b03          	ld	s6,168(sp)
    80007558:	0b013b83          	ld	s7,176(sp)
    8000755c:	0b813c03          	ld	s8,184(sp)
    80007560:	0c013c83          	ld	s9,192(sp)
    80007564:	0c813d03          	ld	s10,200(sp)
    80007568:	0d013d83          	ld	s11,208(sp)
    8000756c:	0d813e03          	ld	t3,216(sp)
    80007570:	0e013e83          	ld	t4,224(sp)
    80007574:	0e813f03          	ld	t5,232(sp)
    80007578:	0f013f83          	ld	t6,240(sp)
    8000757c:	10010113          	addi	sp,sp,256
    80007580:	10200073          	sret
    80007584:	00000013          	nop
    80007588:	00000013          	nop
    8000758c:	00000013          	nop

0000000080007590 <timervec>:
    80007590:	34051573          	csrrw	a0,mscratch,a0
    80007594:	00b53023          	sd	a1,0(a0)
    80007598:	00c53423          	sd	a2,8(a0)
    8000759c:	00d53823          	sd	a3,16(a0)
    800075a0:	01853583          	ld	a1,24(a0)
    800075a4:	02053603          	ld	a2,32(a0)
    800075a8:	0005b683          	ld	a3,0(a1)
    800075ac:	00c686b3          	add	a3,a3,a2
    800075b0:	00d5b023          	sd	a3,0(a1)
    800075b4:	00200593          	li	a1,2
    800075b8:	14459073          	csrw	sip,a1
    800075bc:	01053683          	ld	a3,16(a0)
    800075c0:	00853603          	ld	a2,8(a0)
    800075c4:	00053583          	ld	a1,0(a0)
    800075c8:	34051573          	csrrw	a0,mscratch,a0
    800075cc:	30200073          	mret

00000000800075d0 <plicinit>:
    800075d0:	ff010113          	addi	sp,sp,-16
    800075d4:	00813423          	sd	s0,8(sp)
    800075d8:	01010413          	addi	s0,sp,16
    800075dc:	00813403          	ld	s0,8(sp)
    800075e0:	0c0007b7          	lui	a5,0xc000
    800075e4:	00100713          	li	a4,1
    800075e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800075ec:	00e7a223          	sw	a4,4(a5)
    800075f0:	01010113          	addi	sp,sp,16
    800075f4:	00008067          	ret

00000000800075f8 <plicinithart>:
    800075f8:	ff010113          	addi	sp,sp,-16
    800075fc:	00813023          	sd	s0,0(sp)
    80007600:	00113423          	sd	ra,8(sp)
    80007604:	01010413          	addi	s0,sp,16
    80007608:	00000097          	auipc	ra,0x0
    8000760c:	a48080e7          	jalr	-1464(ra) # 80007050 <cpuid>
    80007610:	0085171b          	slliw	a4,a0,0x8
    80007614:	0c0027b7          	lui	a5,0xc002
    80007618:	00e787b3          	add	a5,a5,a4
    8000761c:	40200713          	li	a4,1026
    80007620:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007624:	00813083          	ld	ra,8(sp)
    80007628:	00013403          	ld	s0,0(sp)
    8000762c:	00d5151b          	slliw	a0,a0,0xd
    80007630:	0c2017b7          	lui	a5,0xc201
    80007634:	00a78533          	add	a0,a5,a0
    80007638:	00052023          	sw	zero,0(a0)
    8000763c:	01010113          	addi	sp,sp,16
    80007640:	00008067          	ret

0000000080007644 <plic_claim>:
    80007644:	ff010113          	addi	sp,sp,-16
    80007648:	00813023          	sd	s0,0(sp)
    8000764c:	00113423          	sd	ra,8(sp)
    80007650:	01010413          	addi	s0,sp,16
    80007654:	00000097          	auipc	ra,0x0
    80007658:	9fc080e7          	jalr	-1540(ra) # 80007050 <cpuid>
    8000765c:	00813083          	ld	ra,8(sp)
    80007660:	00013403          	ld	s0,0(sp)
    80007664:	00d5151b          	slliw	a0,a0,0xd
    80007668:	0c2017b7          	lui	a5,0xc201
    8000766c:	00a78533          	add	a0,a5,a0
    80007670:	00452503          	lw	a0,4(a0)
    80007674:	01010113          	addi	sp,sp,16
    80007678:	00008067          	ret

000000008000767c <plic_complete>:
    8000767c:	fe010113          	addi	sp,sp,-32
    80007680:	00813823          	sd	s0,16(sp)
    80007684:	00913423          	sd	s1,8(sp)
    80007688:	00113c23          	sd	ra,24(sp)
    8000768c:	02010413          	addi	s0,sp,32
    80007690:	00050493          	mv	s1,a0
    80007694:	00000097          	auipc	ra,0x0
    80007698:	9bc080e7          	jalr	-1604(ra) # 80007050 <cpuid>
    8000769c:	01813083          	ld	ra,24(sp)
    800076a0:	01013403          	ld	s0,16(sp)
    800076a4:	00d5179b          	slliw	a5,a0,0xd
    800076a8:	0c201737          	lui	a4,0xc201
    800076ac:	00f707b3          	add	a5,a4,a5
    800076b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800076b4:	00813483          	ld	s1,8(sp)
    800076b8:	02010113          	addi	sp,sp,32
    800076bc:	00008067          	ret

00000000800076c0 <consolewrite>:
    800076c0:	fb010113          	addi	sp,sp,-80
    800076c4:	04813023          	sd	s0,64(sp)
    800076c8:	04113423          	sd	ra,72(sp)
    800076cc:	02913c23          	sd	s1,56(sp)
    800076d0:	03213823          	sd	s2,48(sp)
    800076d4:	03313423          	sd	s3,40(sp)
    800076d8:	03413023          	sd	s4,32(sp)
    800076dc:	01513c23          	sd	s5,24(sp)
    800076e0:	05010413          	addi	s0,sp,80
    800076e4:	06c05c63          	blez	a2,8000775c <consolewrite+0x9c>
    800076e8:	00060993          	mv	s3,a2
    800076ec:	00050a13          	mv	s4,a0
    800076f0:	00058493          	mv	s1,a1
    800076f4:	00000913          	li	s2,0
    800076f8:	fff00a93          	li	s5,-1
    800076fc:	01c0006f          	j	80007718 <consolewrite+0x58>
    80007700:	fbf44503          	lbu	a0,-65(s0)
    80007704:	0019091b          	addiw	s2,s2,1
    80007708:	00148493          	addi	s1,s1,1
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	a9c080e7          	jalr	-1380(ra) # 800081a8 <uartputc>
    80007714:	03298063          	beq	s3,s2,80007734 <consolewrite+0x74>
    80007718:	00048613          	mv	a2,s1
    8000771c:	00100693          	li	a3,1
    80007720:	000a0593          	mv	a1,s4
    80007724:	fbf40513          	addi	a0,s0,-65
    80007728:	00000097          	auipc	ra,0x0
    8000772c:	9e0080e7          	jalr	-1568(ra) # 80007108 <either_copyin>
    80007730:	fd5518e3          	bne	a0,s5,80007700 <consolewrite+0x40>
    80007734:	04813083          	ld	ra,72(sp)
    80007738:	04013403          	ld	s0,64(sp)
    8000773c:	03813483          	ld	s1,56(sp)
    80007740:	02813983          	ld	s3,40(sp)
    80007744:	02013a03          	ld	s4,32(sp)
    80007748:	01813a83          	ld	s5,24(sp)
    8000774c:	00090513          	mv	a0,s2
    80007750:	03013903          	ld	s2,48(sp)
    80007754:	05010113          	addi	sp,sp,80
    80007758:	00008067          	ret
    8000775c:	00000913          	li	s2,0
    80007760:	fd5ff06f          	j	80007734 <consolewrite+0x74>

0000000080007764 <consoleread>:
    80007764:	f9010113          	addi	sp,sp,-112
    80007768:	06813023          	sd	s0,96(sp)
    8000776c:	04913c23          	sd	s1,88(sp)
    80007770:	05213823          	sd	s2,80(sp)
    80007774:	05313423          	sd	s3,72(sp)
    80007778:	05413023          	sd	s4,64(sp)
    8000777c:	03513c23          	sd	s5,56(sp)
    80007780:	03613823          	sd	s6,48(sp)
    80007784:	03713423          	sd	s7,40(sp)
    80007788:	03813023          	sd	s8,32(sp)
    8000778c:	06113423          	sd	ra,104(sp)
    80007790:	01913c23          	sd	s9,24(sp)
    80007794:	07010413          	addi	s0,sp,112
    80007798:	00060b93          	mv	s7,a2
    8000779c:	00050913          	mv	s2,a0
    800077a0:	00058c13          	mv	s8,a1
    800077a4:	00060b1b          	sext.w	s6,a2
    800077a8:	00009497          	auipc	s1,0x9
    800077ac:	7a048493          	addi	s1,s1,1952 # 80010f48 <cons>
    800077b0:	00400993          	li	s3,4
    800077b4:	fff00a13          	li	s4,-1
    800077b8:	00a00a93          	li	s5,10
    800077bc:	05705e63          	blez	s7,80007818 <consoleread+0xb4>
    800077c0:	09c4a703          	lw	a4,156(s1)
    800077c4:	0984a783          	lw	a5,152(s1)
    800077c8:	0007071b          	sext.w	a4,a4
    800077cc:	08e78463          	beq	a5,a4,80007854 <consoleread+0xf0>
    800077d0:	07f7f713          	andi	a4,a5,127
    800077d4:	00e48733          	add	a4,s1,a4
    800077d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800077dc:	0017869b          	addiw	a3,a5,1
    800077e0:	08d4ac23          	sw	a3,152(s1)
    800077e4:	00070c9b          	sext.w	s9,a4
    800077e8:	0b370663          	beq	a4,s3,80007894 <consoleread+0x130>
    800077ec:	00100693          	li	a3,1
    800077f0:	f9f40613          	addi	a2,s0,-97
    800077f4:	000c0593          	mv	a1,s8
    800077f8:	00090513          	mv	a0,s2
    800077fc:	f8e40fa3          	sb	a4,-97(s0)
    80007800:	00000097          	auipc	ra,0x0
    80007804:	8bc080e7          	jalr	-1860(ra) # 800070bc <either_copyout>
    80007808:	01450863          	beq	a0,s4,80007818 <consoleread+0xb4>
    8000780c:	001c0c13          	addi	s8,s8,1
    80007810:	fffb8b9b          	addiw	s7,s7,-1
    80007814:	fb5c94e3          	bne	s9,s5,800077bc <consoleread+0x58>
    80007818:	000b851b          	sext.w	a0,s7
    8000781c:	06813083          	ld	ra,104(sp)
    80007820:	06013403          	ld	s0,96(sp)
    80007824:	05813483          	ld	s1,88(sp)
    80007828:	05013903          	ld	s2,80(sp)
    8000782c:	04813983          	ld	s3,72(sp)
    80007830:	04013a03          	ld	s4,64(sp)
    80007834:	03813a83          	ld	s5,56(sp)
    80007838:	02813b83          	ld	s7,40(sp)
    8000783c:	02013c03          	ld	s8,32(sp)
    80007840:	01813c83          	ld	s9,24(sp)
    80007844:	40ab053b          	subw	a0,s6,a0
    80007848:	03013b03          	ld	s6,48(sp)
    8000784c:	07010113          	addi	sp,sp,112
    80007850:	00008067          	ret
    80007854:	00001097          	auipc	ra,0x1
    80007858:	1d8080e7          	jalr	472(ra) # 80008a2c <push_on>
    8000785c:	0984a703          	lw	a4,152(s1)
    80007860:	09c4a783          	lw	a5,156(s1)
    80007864:	0007879b          	sext.w	a5,a5
    80007868:	fef70ce3          	beq	a4,a5,80007860 <consoleread+0xfc>
    8000786c:	00001097          	auipc	ra,0x1
    80007870:	234080e7          	jalr	564(ra) # 80008aa0 <pop_on>
    80007874:	0984a783          	lw	a5,152(s1)
    80007878:	07f7f713          	andi	a4,a5,127
    8000787c:	00e48733          	add	a4,s1,a4
    80007880:	01874703          	lbu	a4,24(a4)
    80007884:	0017869b          	addiw	a3,a5,1
    80007888:	08d4ac23          	sw	a3,152(s1)
    8000788c:	00070c9b          	sext.w	s9,a4
    80007890:	f5371ee3          	bne	a4,s3,800077ec <consoleread+0x88>
    80007894:	000b851b          	sext.w	a0,s7
    80007898:	f96bf2e3          	bgeu	s7,s6,8000781c <consoleread+0xb8>
    8000789c:	08f4ac23          	sw	a5,152(s1)
    800078a0:	f7dff06f          	j	8000781c <consoleread+0xb8>

00000000800078a4 <consputc>:
    800078a4:	10000793          	li	a5,256
    800078a8:	00f50663          	beq	a0,a5,800078b4 <consputc+0x10>
    800078ac:	00001317          	auipc	t1,0x1
    800078b0:	9f430067          	jr	-1548(t1) # 800082a0 <uartputc_sync>
    800078b4:	ff010113          	addi	sp,sp,-16
    800078b8:	00113423          	sd	ra,8(sp)
    800078bc:	00813023          	sd	s0,0(sp)
    800078c0:	01010413          	addi	s0,sp,16
    800078c4:	00800513          	li	a0,8
    800078c8:	00001097          	auipc	ra,0x1
    800078cc:	9d8080e7          	jalr	-1576(ra) # 800082a0 <uartputc_sync>
    800078d0:	02000513          	li	a0,32
    800078d4:	00001097          	auipc	ra,0x1
    800078d8:	9cc080e7          	jalr	-1588(ra) # 800082a0 <uartputc_sync>
    800078dc:	00013403          	ld	s0,0(sp)
    800078e0:	00813083          	ld	ra,8(sp)
    800078e4:	00800513          	li	a0,8
    800078e8:	01010113          	addi	sp,sp,16
    800078ec:	00001317          	auipc	t1,0x1
    800078f0:	9b430067          	jr	-1612(t1) # 800082a0 <uartputc_sync>

00000000800078f4 <consoleintr>:
    800078f4:	fe010113          	addi	sp,sp,-32
    800078f8:	00813823          	sd	s0,16(sp)
    800078fc:	00913423          	sd	s1,8(sp)
    80007900:	01213023          	sd	s2,0(sp)
    80007904:	00113c23          	sd	ra,24(sp)
    80007908:	02010413          	addi	s0,sp,32
    8000790c:	00009917          	auipc	s2,0x9
    80007910:	63c90913          	addi	s2,s2,1596 # 80010f48 <cons>
    80007914:	00050493          	mv	s1,a0
    80007918:	00090513          	mv	a0,s2
    8000791c:	00001097          	auipc	ra,0x1
    80007920:	e40080e7          	jalr	-448(ra) # 8000875c <acquire>
    80007924:	02048c63          	beqz	s1,8000795c <consoleintr+0x68>
    80007928:	0a092783          	lw	a5,160(s2)
    8000792c:	09892703          	lw	a4,152(s2)
    80007930:	07f00693          	li	a3,127
    80007934:	40e7873b          	subw	a4,a5,a4
    80007938:	02e6e263          	bltu	a3,a4,8000795c <consoleintr+0x68>
    8000793c:	00d00713          	li	a4,13
    80007940:	04e48063          	beq	s1,a4,80007980 <consoleintr+0x8c>
    80007944:	07f7f713          	andi	a4,a5,127
    80007948:	00e90733          	add	a4,s2,a4
    8000794c:	0017879b          	addiw	a5,a5,1
    80007950:	0af92023          	sw	a5,160(s2)
    80007954:	00970c23          	sb	s1,24(a4)
    80007958:	08f92e23          	sw	a5,156(s2)
    8000795c:	01013403          	ld	s0,16(sp)
    80007960:	01813083          	ld	ra,24(sp)
    80007964:	00813483          	ld	s1,8(sp)
    80007968:	00013903          	ld	s2,0(sp)
    8000796c:	00009517          	auipc	a0,0x9
    80007970:	5dc50513          	addi	a0,a0,1500 # 80010f48 <cons>
    80007974:	02010113          	addi	sp,sp,32
    80007978:	00001317          	auipc	t1,0x1
    8000797c:	eb030067          	jr	-336(t1) # 80008828 <release>
    80007980:	00a00493          	li	s1,10
    80007984:	fc1ff06f          	j	80007944 <consoleintr+0x50>

0000000080007988 <consoleinit>:
    80007988:	fe010113          	addi	sp,sp,-32
    8000798c:	00113c23          	sd	ra,24(sp)
    80007990:	00813823          	sd	s0,16(sp)
    80007994:	00913423          	sd	s1,8(sp)
    80007998:	02010413          	addi	s0,sp,32
    8000799c:	00009497          	auipc	s1,0x9
    800079a0:	5ac48493          	addi	s1,s1,1452 # 80010f48 <cons>
    800079a4:	00048513          	mv	a0,s1
    800079a8:	00002597          	auipc	a1,0x2
    800079ac:	c8058593          	addi	a1,a1,-896 # 80009628 <CONSOLE_STATUS+0x618>
    800079b0:	00001097          	auipc	ra,0x1
    800079b4:	d88080e7          	jalr	-632(ra) # 80008738 <initlock>
    800079b8:	00000097          	auipc	ra,0x0
    800079bc:	7ac080e7          	jalr	1964(ra) # 80008164 <uartinit>
    800079c0:	01813083          	ld	ra,24(sp)
    800079c4:	01013403          	ld	s0,16(sp)
    800079c8:	00000797          	auipc	a5,0x0
    800079cc:	d9c78793          	addi	a5,a5,-612 # 80007764 <consoleread>
    800079d0:	0af4bc23          	sd	a5,184(s1)
    800079d4:	00000797          	auipc	a5,0x0
    800079d8:	cec78793          	addi	a5,a5,-788 # 800076c0 <consolewrite>
    800079dc:	0cf4b023          	sd	a5,192(s1)
    800079e0:	00813483          	ld	s1,8(sp)
    800079e4:	02010113          	addi	sp,sp,32
    800079e8:	00008067          	ret

00000000800079ec <console_read>:
    800079ec:	ff010113          	addi	sp,sp,-16
    800079f0:	00813423          	sd	s0,8(sp)
    800079f4:	01010413          	addi	s0,sp,16
    800079f8:	00813403          	ld	s0,8(sp)
    800079fc:	00009317          	auipc	t1,0x9
    80007a00:	60433303          	ld	t1,1540(t1) # 80011000 <devsw+0x10>
    80007a04:	01010113          	addi	sp,sp,16
    80007a08:	00030067          	jr	t1

0000000080007a0c <console_write>:
    80007a0c:	ff010113          	addi	sp,sp,-16
    80007a10:	00813423          	sd	s0,8(sp)
    80007a14:	01010413          	addi	s0,sp,16
    80007a18:	00813403          	ld	s0,8(sp)
    80007a1c:	00009317          	auipc	t1,0x9
    80007a20:	5ec33303          	ld	t1,1516(t1) # 80011008 <devsw+0x18>
    80007a24:	01010113          	addi	sp,sp,16
    80007a28:	00030067          	jr	t1

0000000080007a2c <panic>:
    80007a2c:	fe010113          	addi	sp,sp,-32
    80007a30:	00113c23          	sd	ra,24(sp)
    80007a34:	00813823          	sd	s0,16(sp)
    80007a38:	00913423          	sd	s1,8(sp)
    80007a3c:	02010413          	addi	s0,sp,32
    80007a40:	00050493          	mv	s1,a0
    80007a44:	00002517          	auipc	a0,0x2
    80007a48:	bec50513          	addi	a0,a0,-1044 # 80009630 <CONSOLE_STATUS+0x620>
    80007a4c:	00009797          	auipc	a5,0x9
    80007a50:	6407ae23          	sw	zero,1628(a5) # 800110a8 <pr+0x18>
    80007a54:	00000097          	auipc	ra,0x0
    80007a58:	034080e7          	jalr	52(ra) # 80007a88 <__printf>
    80007a5c:	00048513          	mv	a0,s1
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	028080e7          	jalr	40(ra) # 80007a88 <__printf>
    80007a68:	00001517          	auipc	a0,0x1
    80007a6c:	69050513          	addi	a0,a0,1680 # 800090f8 <CONSOLE_STATUS+0xe8>
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	018080e7          	jalr	24(ra) # 80007a88 <__printf>
    80007a78:	00100793          	li	a5,1
    80007a7c:	00004717          	auipc	a4,0x4
    80007a80:	2cf72623          	sw	a5,716(a4) # 8000bd48 <panicked>
    80007a84:	0000006f          	j	80007a84 <panic+0x58>

0000000080007a88 <__printf>:
    80007a88:	f3010113          	addi	sp,sp,-208
    80007a8c:	08813023          	sd	s0,128(sp)
    80007a90:	07313423          	sd	s3,104(sp)
    80007a94:	09010413          	addi	s0,sp,144
    80007a98:	05813023          	sd	s8,64(sp)
    80007a9c:	08113423          	sd	ra,136(sp)
    80007aa0:	06913c23          	sd	s1,120(sp)
    80007aa4:	07213823          	sd	s2,112(sp)
    80007aa8:	07413023          	sd	s4,96(sp)
    80007aac:	05513c23          	sd	s5,88(sp)
    80007ab0:	05613823          	sd	s6,80(sp)
    80007ab4:	05713423          	sd	s7,72(sp)
    80007ab8:	03913c23          	sd	s9,56(sp)
    80007abc:	03a13823          	sd	s10,48(sp)
    80007ac0:	03b13423          	sd	s11,40(sp)
    80007ac4:	00009317          	auipc	t1,0x9
    80007ac8:	5cc30313          	addi	t1,t1,1484 # 80011090 <pr>
    80007acc:	01832c03          	lw	s8,24(t1)
    80007ad0:	00b43423          	sd	a1,8(s0)
    80007ad4:	00c43823          	sd	a2,16(s0)
    80007ad8:	00d43c23          	sd	a3,24(s0)
    80007adc:	02e43023          	sd	a4,32(s0)
    80007ae0:	02f43423          	sd	a5,40(s0)
    80007ae4:	03043823          	sd	a6,48(s0)
    80007ae8:	03143c23          	sd	a7,56(s0)
    80007aec:	00050993          	mv	s3,a0
    80007af0:	4a0c1663          	bnez	s8,80007f9c <__printf+0x514>
    80007af4:	60098c63          	beqz	s3,8000810c <__printf+0x684>
    80007af8:	0009c503          	lbu	a0,0(s3)
    80007afc:	00840793          	addi	a5,s0,8
    80007b00:	f6f43c23          	sd	a5,-136(s0)
    80007b04:	00000493          	li	s1,0
    80007b08:	22050063          	beqz	a0,80007d28 <__printf+0x2a0>
    80007b0c:	00002a37          	lui	s4,0x2
    80007b10:	00018ab7          	lui	s5,0x18
    80007b14:	000f4b37          	lui	s6,0xf4
    80007b18:	00989bb7          	lui	s7,0x989
    80007b1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007b20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007b24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007b28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007b2c:	00148c9b          	addiw	s9,s1,1
    80007b30:	02500793          	li	a5,37
    80007b34:	01998933          	add	s2,s3,s9
    80007b38:	38f51263          	bne	a0,a5,80007ebc <__printf+0x434>
    80007b3c:	00094783          	lbu	a5,0(s2)
    80007b40:	00078c9b          	sext.w	s9,a5
    80007b44:	1e078263          	beqz	a5,80007d28 <__printf+0x2a0>
    80007b48:	0024849b          	addiw	s1,s1,2
    80007b4c:	07000713          	li	a4,112
    80007b50:	00998933          	add	s2,s3,s1
    80007b54:	38e78a63          	beq	a5,a4,80007ee8 <__printf+0x460>
    80007b58:	20f76863          	bltu	a4,a5,80007d68 <__printf+0x2e0>
    80007b5c:	42a78863          	beq	a5,a0,80007f8c <__printf+0x504>
    80007b60:	06400713          	li	a4,100
    80007b64:	40e79663          	bne	a5,a4,80007f70 <__printf+0x4e8>
    80007b68:	f7843783          	ld	a5,-136(s0)
    80007b6c:	0007a603          	lw	a2,0(a5)
    80007b70:	00878793          	addi	a5,a5,8
    80007b74:	f6f43c23          	sd	a5,-136(s0)
    80007b78:	42064a63          	bltz	a2,80007fac <__printf+0x524>
    80007b7c:	00a00713          	li	a4,10
    80007b80:	02e677bb          	remuw	a5,a2,a4
    80007b84:	00002d97          	auipc	s11,0x2
    80007b88:	ad4d8d93          	addi	s11,s11,-1324 # 80009658 <digits>
    80007b8c:	00900593          	li	a1,9
    80007b90:	0006051b          	sext.w	a0,a2
    80007b94:	00000c93          	li	s9,0
    80007b98:	02079793          	slli	a5,a5,0x20
    80007b9c:	0207d793          	srli	a5,a5,0x20
    80007ba0:	00fd87b3          	add	a5,s11,a5
    80007ba4:	0007c783          	lbu	a5,0(a5)
    80007ba8:	02e656bb          	divuw	a3,a2,a4
    80007bac:	f8f40023          	sb	a5,-128(s0)
    80007bb0:	14c5d863          	bge	a1,a2,80007d00 <__printf+0x278>
    80007bb4:	06300593          	li	a1,99
    80007bb8:	00100c93          	li	s9,1
    80007bbc:	02e6f7bb          	remuw	a5,a3,a4
    80007bc0:	02079793          	slli	a5,a5,0x20
    80007bc4:	0207d793          	srli	a5,a5,0x20
    80007bc8:	00fd87b3          	add	a5,s11,a5
    80007bcc:	0007c783          	lbu	a5,0(a5)
    80007bd0:	02e6d73b          	divuw	a4,a3,a4
    80007bd4:	f8f400a3          	sb	a5,-127(s0)
    80007bd8:	12a5f463          	bgeu	a1,a0,80007d00 <__printf+0x278>
    80007bdc:	00a00693          	li	a3,10
    80007be0:	00900593          	li	a1,9
    80007be4:	02d777bb          	remuw	a5,a4,a3
    80007be8:	02079793          	slli	a5,a5,0x20
    80007bec:	0207d793          	srli	a5,a5,0x20
    80007bf0:	00fd87b3          	add	a5,s11,a5
    80007bf4:	0007c503          	lbu	a0,0(a5)
    80007bf8:	02d757bb          	divuw	a5,a4,a3
    80007bfc:	f8a40123          	sb	a0,-126(s0)
    80007c00:	48e5f263          	bgeu	a1,a4,80008084 <__printf+0x5fc>
    80007c04:	06300513          	li	a0,99
    80007c08:	02d7f5bb          	remuw	a1,a5,a3
    80007c0c:	02059593          	slli	a1,a1,0x20
    80007c10:	0205d593          	srli	a1,a1,0x20
    80007c14:	00bd85b3          	add	a1,s11,a1
    80007c18:	0005c583          	lbu	a1,0(a1)
    80007c1c:	02d7d7bb          	divuw	a5,a5,a3
    80007c20:	f8b401a3          	sb	a1,-125(s0)
    80007c24:	48e57263          	bgeu	a0,a4,800080a8 <__printf+0x620>
    80007c28:	3e700513          	li	a0,999
    80007c2c:	02d7f5bb          	remuw	a1,a5,a3
    80007c30:	02059593          	slli	a1,a1,0x20
    80007c34:	0205d593          	srli	a1,a1,0x20
    80007c38:	00bd85b3          	add	a1,s11,a1
    80007c3c:	0005c583          	lbu	a1,0(a1)
    80007c40:	02d7d7bb          	divuw	a5,a5,a3
    80007c44:	f8b40223          	sb	a1,-124(s0)
    80007c48:	46e57663          	bgeu	a0,a4,800080b4 <__printf+0x62c>
    80007c4c:	02d7f5bb          	remuw	a1,a5,a3
    80007c50:	02059593          	slli	a1,a1,0x20
    80007c54:	0205d593          	srli	a1,a1,0x20
    80007c58:	00bd85b3          	add	a1,s11,a1
    80007c5c:	0005c583          	lbu	a1,0(a1)
    80007c60:	02d7d7bb          	divuw	a5,a5,a3
    80007c64:	f8b402a3          	sb	a1,-123(s0)
    80007c68:	46ea7863          	bgeu	s4,a4,800080d8 <__printf+0x650>
    80007c6c:	02d7f5bb          	remuw	a1,a5,a3
    80007c70:	02059593          	slli	a1,a1,0x20
    80007c74:	0205d593          	srli	a1,a1,0x20
    80007c78:	00bd85b3          	add	a1,s11,a1
    80007c7c:	0005c583          	lbu	a1,0(a1)
    80007c80:	02d7d7bb          	divuw	a5,a5,a3
    80007c84:	f8b40323          	sb	a1,-122(s0)
    80007c88:	3eeaf863          	bgeu	s5,a4,80008078 <__printf+0x5f0>
    80007c8c:	02d7f5bb          	remuw	a1,a5,a3
    80007c90:	02059593          	slli	a1,a1,0x20
    80007c94:	0205d593          	srli	a1,a1,0x20
    80007c98:	00bd85b3          	add	a1,s11,a1
    80007c9c:	0005c583          	lbu	a1,0(a1)
    80007ca0:	02d7d7bb          	divuw	a5,a5,a3
    80007ca4:	f8b403a3          	sb	a1,-121(s0)
    80007ca8:	42eb7e63          	bgeu	s6,a4,800080e4 <__printf+0x65c>
    80007cac:	02d7f5bb          	remuw	a1,a5,a3
    80007cb0:	02059593          	slli	a1,a1,0x20
    80007cb4:	0205d593          	srli	a1,a1,0x20
    80007cb8:	00bd85b3          	add	a1,s11,a1
    80007cbc:	0005c583          	lbu	a1,0(a1)
    80007cc0:	02d7d7bb          	divuw	a5,a5,a3
    80007cc4:	f8b40423          	sb	a1,-120(s0)
    80007cc8:	42ebfc63          	bgeu	s7,a4,80008100 <__printf+0x678>
    80007ccc:	02079793          	slli	a5,a5,0x20
    80007cd0:	0207d793          	srli	a5,a5,0x20
    80007cd4:	00fd8db3          	add	s11,s11,a5
    80007cd8:	000dc703          	lbu	a4,0(s11)
    80007cdc:	00a00793          	li	a5,10
    80007ce0:	00900c93          	li	s9,9
    80007ce4:	f8e404a3          	sb	a4,-119(s0)
    80007ce8:	00065c63          	bgez	a2,80007d00 <__printf+0x278>
    80007cec:	f9040713          	addi	a4,s0,-112
    80007cf0:	00f70733          	add	a4,a4,a5
    80007cf4:	02d00693          	li	a3,45
    80007cf8:	fed70823          	sb	a3,-16(a4)
    80007cfc:	00078c93          	mv	s9,a5
    80007d00:	f8040793          	addi	a5,s0,-128
    80007d04:	01978cb3          	add	s9,a5,s9
    80007d08:	f7f40d13          	addi	s10,s0,-129
    80007d0c:	000cc503          	lbu	a0,0(s9)
    80007d10:	fffc8c93          	addi	s9,s9,-1
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	b90080e7          	jalr	-1136(ra) # 800078a4 <consputc>
    80007d1c:	ffac98e3          	bne	s9,s10,80007d0c <__printf+0x284>
    80007d20:	00094503          	lbu	a0,0(s2)
    80007d24:	e00514e3          	bnez	a0,80007b2c <__printf+0xa4>
    80007d28:	1a0c1663          	bnez	s8,80007ed4 <__printf+0x44c>
    80007d2c:	08813083          	ld	ra,136(sp)
    80007d30:	08013403          	ld	s0,128(sp)
    80007d34:	07813483          	ld	s1,120(sp)
    80007d38:	07013903          	ld	s2,112(sp)
    80007d3c:	06813983          	ld	s3,104(sp)
    80007d40:	06013a03          	ld	s4,96(sp)
    80007d44:	05813a83          	ld	s5,88(sp)
    80007d48:	05013b03          	ld	s6,80(sp)
    80007d4c:	04813b83          	ld	s7,72(sp)
    80007d50:	04013c03          	ld	s8,64(sp)
    80007d54:	03813c83          	ld	s9,56(sp)
    80007d58:	03013d03          	ld	s10,48(sp)
    80007d5c:	02813d83          	ld	s11,40(sp)
    80007d60:	0d010113          	addi	sp,sp,208
    80007d64:	00008067          	ret
    80007d68:	07300713          	li	a4,115
    80007d6c:	1ce78a63          	beq	a5,a4,80007f40 <__printf+0x4b8>
    80007d70:	07800713          	li	a4,120
    80007d74:	1ee79e63          	bne	a5,a4,80007f70 <__printf+0x4e8>
    80007d78:	f7843783          	ld	a5,-136(s0)
    80007d7c:	0007a703          	lw	a4,0(a5)
    80007d80:	00878793          	addi	a5,a5,8
    80007d84:	f6f43c23          	sd	a5,-136(s0)
    80007d88:	28074263          	bltz	a4,8000800c <__printf+0x584>
    80007d8c:	00002d97          	auipc	s11,0x2
    80007d90:	8ccd8d93          	addi	s11,s11,-1844 # 80009658 <digits>
    80007d94:	00f77793          	andi	a5,a4,15
    80007d98:	00fd87b3          	add	a5,s11,a5
    80007d9c:	0007c683          	lbu	a3,0(a5)
    80007da0:	00f00613          	li	a2,15
    80007da4:	0007079b          	sext.w	a5,a4
    80007da8:	f8d40023          	sb	a3,-128(s0)
    80007dac:	0047559b          	srliw	a1,a4,0x4
    80007db0:	0047569b          	srliw	a3,a4,0x4
    80007db4:	00000c93          	li	s9,0
    80007db8:	0ee65063          	bge	a2,a4,80007e98 <__printf+0x410>
    80007dbc:	00f6f693          	andi	a3,a3,15
    80007dc0:	00dd86b3          	add	a3,s11,a3
    80007dc4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007dc8:	0087d79b          	srliw	a5,a5,0x8
    80007dcc:	00100c93          	li	s9,1
    80007dd0:	f8d400a3          	sb	a3,-127(s0)
    80007dd4:	0cb67263          	bgeu	a2,a1,80007e98 <__printf+0x410>
    80007dd8:	00f7f693          	andi	a3,a5,15
    80007ddc:	00dd86b3          	add	a3,s11,a3
    80007de0:	0006c583          	lbu	a1,0(a3)
    80007de4:	00f00613          	li	a2,15
    80007de8:	0047d69b          	srliw	a3,a5,0x4
    80007dec:	f8b40123          	sb	a1,-126(s0)
    80007df0:	0047d593          	srli	a1,a5,0x4
    80007df4:	28f67e63          	bgeu	a2,a5,80008090 <__printf+0x608>
    80007df8:	00f6f693          	andi	a3,a3,15
    80007dfc:	00dd86b3          	add	a3,s11,a3
    80007e00:	0006c503          	lbu	a0,0(a3)
    80007e04:	0087d813          	srli	a6,a5,0x8
    80007e08:	0087d69b          	srliw	a3,a5,0x8
    80007e0c:	f8a401a3          	sb	a0,-125(s0)
    80007e10:	28b67663          	bgeu	a2,a1,8000809c <__printf+0x614>
    80007e14:	00f6f693          	andi	a3,a3,15
    80007e18:	00dd86b3          	add	a3,s11,a3
    80007e1c:	0006c583          	lbu	a1,0(a3)
    80007e20:	00c7d513          	srli	a0,a5,0xc
    80007e24:	00c7d69b          	srliw	a3,a5,0xc
    80007e28:	f8b40223          	sb	a1,-124(s0)
    80007e2c:	29067a63          	bgeu	a2,a6,800080c0 <__printf+0x638>
    80007e30:	00f6f693          	andi	a3,a3,15
    80007e34:	00dd86b3          	add	a3,s11,a3
    80007e38:	0006c583          	lbu	a1,0(a3)
    80007e3c:	0107d813          	srli	a6,a5,0x10
    80007e40:	0107d69b          	srliw	a3,a5,0x10
    80007e44:	f8b402a3          	sb	a1,-123(s0)
    80007e48:	28a67263          	bgeu	a2,a0,800080cc <__printf+0x644>
    80007e4c:	00f6f693          	andi	a3,a3,15
    80007e50:	00dd86b3          	add	a3,s11,a3
    80007e54:	0006c683          	lbu	a3,0(a3)
    80007e58:	0147d79b          	srliw	a5,a5,0x14
    80007e5c:	f8d40323          	sb	a3,-122(s0)
    80007e60:	21067663          	bgeu	a2,a6,8000806c <__printf+0x5e4>
    80007e64:	02079793          	slli	a5,a5,0x20
    80007e68:	0207d793          	srli	a5,a5,0x20
    80007e6c:	00fd8db3          	add	s11,s11,a5
    80007e70:	000dc683          	lbu	a3,0(s11)
    80007e74:	00800793          	li	a5,8
    80007e78:	00700c93          	li	s9,7
    80007e7c:	f8d403a3          	sb	a3,-121(s0)
    80007e80:	00075c63          	bgez	a4,80007e98 <__printf+0x410>
    80007e84:	f9040713          	addi	a4,s0,-112
    80007e88:	00f70733          	add	a4,a4,a5
    80007e8c:	02d00693          	li	a3,45
    80007e90:	fed70823          	sb	a3,-16(a4)
    80007e94:	00078c93          	mv	s9,a5
    80007e98:	f8040793          	addi	a5,s0,-128
    80007e9c:	01978cb3          	add	s9,a5,s9
    80007ea0:	f7f40d13          	addi	s10,s0,-129
    80007ea4:	000cc503          	lbu	a0,0(s9)
    80007ea8:	fffc8c93          	addi	s9,s9,-1
    80007eac:	00000097          	auipc	ra,0x0
    80007eb0:	9f8080e7          	jalr	-1544(ra) # 800078a4 <consputc>
    80007eb4:	ff9d18e3          	bne	s10,s9,80007ea4 <__printf+0x41c>
    80007eb8:	0100006f          	j	80007ec8 <__printf+0x440>
    80007ebc:	00000097          	auipc	ra,0x0
    80007ec0:	9e8080e7          	jalr	-1560(ra) # 800078a4 <consputc>
    80007ec4:	000c8493          	mv	s1,s9
    80007ec8:	00094503          	lbu	a0,0(s2)
    80007ecc:	c60510e3          	bnez	a0,80007b2c <__printf+0xa4>
    80007ed0:	e40c0ee3          	beqz	s8,80007d2c <__printf+0x2a4>
    80007ed4:	00009517          	auipc	a0,0x9
    80007ed8:	1bc50513          	addi	a0,a0,444 # 80011090 <pr>
    80007edc:	00001097          	auipc	ra,0x1
    80007ee0:	94c080e7          	jalr	-1716(ra) # 80008828 <release>
    80007ee4:	e49ff06f          	j	80007d2c <__printf+0x2a4>
    80007ee8:	f7843783          	ld	a5,-136(s0)
    80007eec:	03000513          	li	a0,48
    80007ef0:	01000d13          	li	s10,16
    80007ef4:	00878713          	addi	a4,a5,8
    80007ef8:	0007bc83          	ld	s9,0(a5)
    80007efc:	f6e43c23          	sd	a4,-136(s0)
    80007f00:	00000097          	auipc	ra,0x0
    80007f04:	9a4080e7          	jalr	-1628(ra) # 800078a4 <consputc>
    80007f08:	07800513          	li	a0,120
    80007f0c:	00000097          	auipc	ra,0x0
    80007f10:	998080e7          	jalr	-1640(ra) # 800078a4 <consputc>
    80007f14:	00001d97          	auipc	s11,0x1
    80007f18:	744d8d93          	addi	s11,s11,1860 # 80009658 <digits>
    80007f1c:	03ccd793          	srli	a5,s9,0x3c
    80007f20:	00fd87b3          	add	a5,s11,a5
    80007f24:	0007c503          	lbu	a0,0(a5)
    80007f28:	fffd0d1b          	addiw	s10,s10,-1
    80007f2c:	004c9c93          	slli	s9,s9,0x4
    80007f30:	00000097          	auipc	ra,0x0
    80007f34:	974080e7          	jalr	-1676(ra) # 800078a4 <consputc>
    80007f38:	fe0d12e3          	bnez	s10,80007f1c <__printf+0x494>
    80007f3c:	f8dff06f          	j	80007ec8 <__printf+0x440>
    80007f40:	f7843783          	ld	a5,-136(s0)
    80007f44:	0007bc83          	ld	s9,0(a5)
    80007f48:	00878793          	addi	a5,a5,8
    80007f4c:	f6f43c23          	sd	a5,-136(s0)
    80007f50:	000c9a63          	bnez	s9,80007f64 <__printf+0x4dc>
    80007f54:	1080006f          	j	8000805c <__printf+0x5d4>
    80007f58:	001c8c93          	addi	s9,s9,1
    80007f5c:	00000097          	auipc	ra,0x0
    80007f60:	948080e7          	jalr	-1720(ra) # 800078a4 <consputc>
    80007f64:	000cc503          	lbu	a0,0(s9)
    80007f68:	fe0518e3          	bnez	a0,80007f58 <__printf+0x4d0>
    80007f6c:	f5dff06f          	j	80007ec8 <__printf+0x440>
    80007f70:	02500513          	li	a0,37
    80007f74:	00000097          	auipc	ra,0x0
    80007f78:	930080e7          	jalr	-1744(ra) # 800078a4 <consputc>
    80007f7c:	000c8513          	mv	a0,s9
    80007f80:	00000097          	auipc	ra,0x0
    80007f84:	924080e7          	jalr	-1756(ra) # 800078a4 <consputc>
    80007f88:	f41ff06f          	j	80007ec8 <__printf+0x440>
    80007f8c:	02500513          	li	a0,37
    80007f90:	00000097          	auipc	ra,0x0
    80007f94:	914080e7          	jalr	-1772(ra) # 800078a4 <consputc>
    80007f98:	f31ff06f          	j	80007ec8 <__printf+0x440>
    80007f9c:	00030513          	mv	a0,t1
    80007fa0:	00000097          	auipc	ra,0x0
    80007fa4:	7bc080e7          	jalr	1980(ra) # 8000875c <acquire>
    80007fa8:	b4dff06f          	j	80007af4 <__printf+0x6c>
    80007fac:	40c0053b          	negw	a0,a2
    80007fb0:	00a00713          	li	a4,10
    80007fb4:	02e576bb          	remuw	a3,a0,a4
    80007fb8:	00001d97          	auipc	s11,0x1
    80007fbc:	6a0d8d93          	addi	s11,s11,1696 # 80009658 <digits>
    80007fc0:	ff700593          	li	a1,-9
    80007fc4:	02069693          	slli	a3,a3,0x20
    80007fc8:	0206d693          	srli	a3,a3,0x20
    80007fcc:	00dd86b3          	add	a3,s11,a3
    80007fd0:	0006c683          	lbu	a3,0(a3)
    80007fd4:	02e557bb          	divuw	a5,a0,a4
    80007fd8:	f8d40023          	sb	a3,-128(s0)
    80007fdc:	10b65e63          	bge	a2,a1,800080f8 <__printf+0x670>
    80007fe0:	06300593          	li	a1,99
    80007fe4:	02e7f6bb          	remuw	a3,a5,a4
    80007fe8:	02069693          	slli	a3,a3,0x20
    80007fec:	0206d693          	srli	a3,a3,0x20
    80007ff0:	00dd86b3          	add	a3,s11,a3
    80007ff4:	0006c683          	lbu	a3,0(a3)
    80007ff8:	02e7d73b          	divuw	a4,a5,a4
    80007ffc:	00200793          	li	a5,2
    80008000:	f8d400a3          	sb	a3,-127(s0)
    80008004:	bca5ece3          	bltu	a1,a0,80007bdc <__printf+0x154>
    80008008:	ce5ff06f          	j	80007cec <__printf+0x264>
    8000800c:	40e007bb          	negw	a5,a4
    80008010:	00001d97          	auipc	s11,0x1
    80008014:	648d8d93          	addi	s11,s11,1608 # 80009658 <digits>
    80008018:	00f7f693          	andi	a3,a5,15
    8000801c:	00dd86b3          	add	a3,s11,a3
    80008020:	0006c583          	lbu	a1,0(a3)
    80008024:	ff100613          	li	a2,-15
    80008028:	0047d69b          	srliw	a3,a5,0x4
    8000802c:	f8b40023          	sb	a1,-128(s0)
    80008030:	0047d59b          	srliw	a1,a5,0x4
    80008034:	0ac75e63          	bge	a4,a2,800080f0 <__printf+0x668>
    80008038:	00f6f693          	andi	a3,a3,15
    8000803c:	00dd86b3          	add	a3,s11,a3
    80008040:	0006c603          	lbu	a2,0(a3)
    80008044:	00f00693          	li	a3,15
    80008048:	0087d79b          	srliw	a5,a5,0x8
    8000804c:	f8c400a3          	sb	a2,-127(s0)
    80008050:	d8b6e4e3          	bltu	a3,a1,80007dd8 <__printf+0x350>
    80008054:	00200793          	li	a5,2
    80008058:	e2dff06f          	j	80007e84 <__printf+0x3fc>
    8000805c:	00001c97          	auipc	s9,0x1
    80008060:	5dcc8c93          	addi	s9,s9,1500 # 80009638 <CONSOLE_STATUS+0x628>
    80008064:	02800513          	li	a0,40
    80008068:	ef1ff06f          	j	80007f58 <__printf+0x4d0>
    8000806c:	00700793          	li	a5,7
    80008070:	00600c93          	li	s9,6
    80008074:	e0dff06f          	j	80007e80 <__printf+0x3f8>
    80008078:	00700793          	li	a5,7
    8000807c:	00600c93          	li	s9,6
    80008080:	c69ff06f          	j	80007ce8 <__printf+0x260>
    80008084:	00300793          	li	a5,3
    80008088:	00200c93          	li	s9,2
    8000808c:	c5dff06f          	j	80007ce8 <__printf+0x260>
    80008090:	00300793          	li	a5,3
    80008094:	00200c93          	li	s9,2
    80008098:	de9ff06f          	j	80007e80 <__printf+0x3f8>
    8000809c:	00400793          	li	a5,4
    800080a0:	00300c93          	li	s9,3
    800080a4:	dddff06f          	j	80007e80 <__printf+0x3f8>
    800080a8:	00400793          	li	a5,4
    800080ac:	00300c93          	li	s9,3
    800080b0:	c39ff06f          	j	80007ce8 <__printf+0x260>
    800080b4:	00500793          	li	a5,5
    800080b8:	00400c93          	li	s9,4
    800080bc:	c2dff06f          	j	80007ce8 <__printf+0x260>
    800080c0:	00500793          	li	a5,5
    800080c4:	00400c93          	li	s9,4
    800080c8:	db9ff06f          	j	80007e80 <__printf+0x3f8>
    800080cc:	00600793          	li	a5,6
    800080d0:	00500c93          	li	s9,5
    800080d4:	dadff06f          	j	80007e80 <__printf+0x3f8>
    800080d8:	00600793          	li	a5,6
    800080dc:	00500c93          	li	s9,5
    800080e0:	c09ff06f          	j	80007ce8 <__printf+0x260>
    800080e4:	00800793          	li	a5,8
    800080e8:	00700c93          	li	s9,7
    800080ec:	bfdff06f          	j	80007ce8 <__printf+0x260>
    800080f0:	00100793          	li	a5,1
    800080f4:	d91ff06f          	j	80007e84 <__printf+0x3fc>
    800080f8:	00100793          	li	a5,1
    800080fc:	bf1ff06f          	j	80007cec <__printf+0x264>
    80008100:	00900793          	li	a5,9
    80008104:	00800c93          	li	s9,8
    80008108:	be1ff06f          	j	80007ce8 <__printf+0x260>
    8000810c:	00001517          	auipc	a0,0x1
    80008110:	53450513          	addi	a0,a0,1332 # 80009640 <CONSOLE_STATUS+0x630>
    80008114:	00000097          	auipc	ra,0x0
    80008118:	918080e7          	jalr	-1768(ra) # 80007a2c <panic>

000000008000811c <printfinit>:
    8000811c:	fe010113          	addi	sp,sp,-32
    80008120:	00813823          	sd	s0,16(sp)
    80008124:	00913423          	sd	s1,8(sp)
    80008128:	00113c23          	sd	ra,24(sp)
    8000812c:	02010413          	addi	s0,sp,32
    80008130:	00009497          	auipc	s1,0x9
    80008134:	f6048493          	addi	s1,s1,-160 # 80011090 <pr>
    80008138:	00048513          	mv	a0,s1
    8000813c:	00001597          	auipc	a1,0x1
    80008140:	51458593          	addi	a1,a1,1300 # 80009650 <CONSOLE_STATUS+0x640>
    80008144:	00000097          	auipc	ra,0x0
    80008148:	5f4080e7          	jalr	1524(ra) # 80008738 <initlock>
    8000814c:	01813083          	ld	ra,24(sp)
    80008150:	01013403          	ld	s0,16(sp)
    80008154:	0004ac23          	sw	zero,24(s1)
    80008158:	00813483          	ld	s1,8(sp)
    8000815c:	02010113          	addi	sp,sp,32
    80008160:	00008067          	ret

0000000080008164 <uartinit>:
    80008164:	ff010113          	addi	sp,sp,-16
    80008168:	00813423          	sd	s0,8(sp)
    8000816c:	01010413          	addi	s0,sp,16
    80008170:	100007b7          	lui	a5,0x10000
    80008174:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008178:	f8000713          	li	a4,-128
    8000817c:	00e781a3          	sb	a4,3(a5)
    80008180:	00300713          	li	a4,3
    80008184:	00e78023          	sb	a4,0(a5)
    80008188:	000780a3          	sb	zero,1(a5)
    8000818c:	00e781a3          	sb	a4,3(a5)
    80008190:	00700693          	li	a3,7
    80008194:	00d78123          	sb	a3,2(a5)
    80008198:	00e780a3          	sb	a4,1(a5)
    8000819c:	00813403          	ld	s0,8(sp)
    800081a0:	01010113          	addi	sp,sp,16
    800081a4:	00008067          	ret

00000000800081a8 <uartputc>:
    800081a8:	00004797          	auipc	a5,0x4
    800081ac:	ba07a783          	lw	a5,-1120(a5) # 8000bd48 <panicked>
    800081b0:	00078463          	beqz	a5,800081b8 <uartputc+0x10>
    800081b4:	0000006f          	j	800081b4 <uartputc+0xc>
    800081b8:	fd010113          	addi	sp,sp,-48
    800081bc:	02813023          	sd	s0,32(sp)
    800081c0:	00913c23          	sd	s1,24(sp)
    800081c4:	01213823          	sd	s2,16(sp)
    800081c8:	01313423          	sd	s3,8(sp)
    800081cc:	02113423          	sd	ra,40(sp)
    800081d0:	03010413          	addi	s0,sp,48
    800081d4:	00004917          	auipc	s2,0x4
    800081d8:	b7c90913          	addi	s2,s2,-1156 # 8000bd50 <uart_tx_r>
    800081dc:	00093783          	ld	a5,0(s2)
    800081e0:	00004497          	auipc	s1,0x4
    800081e4:	b7848493          	addi	s1,s1,-1160 # 8000bd58 <uart_tx_w>
    800081e8:	0004b703          	ld	a4,0(s1)
    800081ec:	02078693          	addi	a3,a5,32
    800081f0:	00050993          	mv	s3,a0
    800081f4:	02e69c63          	bne	a3,a4,8000822c <uartputc+0x84>
    800081f8:	00001097          	auipc	ra,0x1
    800081fc:	834080e7          	jalr	-1996(ra) # 80008a2c <push_on>
    80008200:	00093783          	ld	a5,0(s2)
    80008204:	0004b703          	ld	a4,0(s1)
    80008208:	02078793          	addi	a5,a5,32
    8000820c:	00e79463          	bne	a5,a4,80008214 <uartputc+0x6c>
    80008210:	0000006f          	j	80008210 <uartputc+0x68>
    80008214:	00001097          	auipc	ra,0x1
    80008218:	88c080e7          	jalr	-1908(ra) # 80008aa0 <pop_on>
    8000821c:	00093783          	ld	a5,0(s2)
    80008220:	0004b703          	ld	a4,0(s1)
    80008224:	02078693          	addi	a3,a5,32
    80008228:	fce688e3          	beq	a3,a4,800081f8 <uartputc+0x50>
    8000822c:	01f77693          	andi	a3,a4,31
    80008230:	00009597          	auipc	a1,0x9
    80008234:	e8058593          	addi	a1,a1,-384 # 800110b0 <uart_tx_buf>
    80008238:	00d586b3          	add	a3,a1,a3
    8000823c:	00170713          	addi	a4,a4,1
    80008240:	01368023          	sb	s3,0(a3)
    80008244:	00e4b023          	sd	a4,0(s1)
    80008248:	10000637          	lui	a2,0x10000
    8000824c:	02f71063          	bne	a4,a5,8000826c <uartputc+0xc4>
    80008250:	0340006f          	j	80008284 <uartputc+0xdc>
    80008254:	00074703          	lbu	a4,0(a4)
    80008258:	00f93023          	sd	a5,0(s2)
    8000825c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008260:	00093783          	ld	a5,0(s2)
    80008264:	0004b703          	ld	a4,0(s1)
    80008268:	00f70e63          	beq	a4,a5,80008284 <uartputc+0xdc>
    8000826c:	00564683          	lbu	a3,5(a2)
    80008270:	01f7f713          	andi	a4,a5,31
    80008274:	00e58733          	add	a4,a1,a4
    80008278:	0206f693          	andi	a3,a3,32
    8000827c:	00178793          	addi	a5,a5,1
    80008280:	fc069ae3          	bnez	a3,80008254 <uartputc+0xac>
    80008284:	02813083          	ld	ra,40(sp)
    80008288:	02013403          	ld	s0,32(sp)
    8000828c:	01813483          	ld	s1,24(sp)
    80008290:	01013903          	ld	s2,16(sp)
    80008294:	00813983          	ld	s3,8(sp)
    80008298:	03010113          	addi	sp,sp,48
    8000829c:	00008067          	ret

00000000800082a0 <uartputc_sync>:
    800082a0:	ff010113          	addi	sp,sp,-16
    800082a4:	00813423          	sd	s0,8(sp)
    800082a8:	01010413          	addi	s0,sp,16
    800082ac:	00004717          	auipc	a4,0x4
    800082b0:	a9c72703          	lw	a4,-1380(a4) # 8000bd48 <panicked>
    800082b4:	02071663          	bnez	a4,800082e0 <uartputc_sync+0x40>
    800082b8:	00050793          	mv	a5,a0
    800082bc:	100006b7          	lui	a3,0x10000
    800082c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800082c4:	02077713          	andi	a4,a4,32
    800082c8:	fe070ce3          	beqz	a4,800082c0 <uartputc_sync+0x20>
    800082cc:	0ff7f793          	andi	a5,a5,255
    800082d0:	00f68023          	sb	a5,0(a3)
    800082d4:	00813403          	ld	s0,8(sp)
    800082d8:	01010113          	addi	sp,sp,16
    800082dc:	00008067          	ret
    800082e0:	0000006f          	j	800082e0 <uartputc_sync+0x40>

00000000800082e4 <uartstart>:
    800082e4:	ff010113          	addi	sp,sp,-16
    800082e8:	00813423          	sd	s0,8(sp)
    800082ec:	01010413          	addi	s0,sp,16
    800082f0:	00004617          	auipc	a2,0x4
    800082f4:	a6060613          	addi	a2,a2,-1440 # 8000bd50 <uart_tx_r>
    800082f8:	00004517          	auipc	a0,0x4
    800082fc:	a6050513          	addi	a0,a0,-1440 # 8000bd58 <uart_tx_w>
    80008300:	00063783          	ld	a5,0(a2)
    80008304:	00053703          	ld	a4,0(a0)
    80008308:	04f70263          	beq	a4,a5,8000834c <uartstart+0x68>
    8000830c:	100005b7          	lui	a1,0x10000
    80008310:	00009817          	auipc	a6,0x9
    80008314:	da080813          	addi	a6,a6,-608 # 800110b0 <uart_tx_buf>
    80008318:	01c0006f          	j	80008334 <uartstart+0x50>
    8000831c:	0006c703          	lbu	a4,0(a3)
    80008320:	00f63023          	sd	a5,0(a2)
    80008324:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008328:	00063783          	ld	a5,0(a2)
    8000832c:	00053703          	ld	a4,0(a0)
    80008330:	00f70e63          	beq	a4,a5,8000834c <uartstart+0x68>
    80008334:	01f7f713          	andi	a4,a5,31
    80008338:	00e806b3          	add	a3,a6,a4
    8000833c:	0055c703          	lbu	a4,5(a1)
    80008340:	00178793          	addi	a5,a5,1
    80008344:	02077713          	andi	a4,a4,32
    80008348:	fc071ae3          	bnez	a4,8000831c <uartstart+0x38>
    8000834c:	00813403          	ld	s0,8(sp)
    80008350:	01010113          	addi	sp,sp,16
    80008354:	00008067          	ret

0000000080008358 <uartgetc>:
    80008358:	ff010113          	addi	sp,sp,-16
    8000835c:	00813423          	sd	s0,8(sp)
    80008360:	01010413          	addi	s0,sp,16
    80008364:	10000737          	lui	a4,0x10000
    80008368:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000836c:	0017f793          	andi	a5,a5,1
    80008370:	00078c63          	beqz	a5,80008388 <uartgetc+0x30>
    80008374:	00074503          	lbu	a0,0(a4)
    80008378:	0ff57513          	andi	a0,a0,255
    8000837c:	00813403          	ld	s0,8(sp)
    80008380:	01010113          	addi	sp,sp,16
    80008384:	00008067          	ret
    80008388:	fff00513          	li	a0,-1
    8000838c:	ff1ff06f          	j	8000837c <uartgetc+0x24>

0000000080008390 <uartintr>:
    80008390:	100007b7          	lui	a5,0x10000
    80008394:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008398:	0017f793          	andi	a5,a5,1
    8000839c:	0a078463          	beqz	a5,80008444 <uartintr+0xb4>
    800083a0:	fe010113          	addi	sp,sp,-32
    800083a4:	00813823          	sd	s0,16(sp)
    800083a8:	00913423          	sd	s1,8(sp)
    800083ac:	00113c23          	sd	ra,24(sp)
    800083b0:	02010413          	addi	s0,sp,32
    800083b4:	100004b7          	lui	s1,0x10000
    800083b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800083bc:	0ff57513          	andi	a0,a0,255
    800083c0:	fffff097          	auipc	ra,0xfffff
    800083c4:	534080e7          	jalr	1332(ra) # 800078f4 <consoleintr>
    800083c8:	0054c783          	lbu	a5,5(s1)
    800083cc:	0017f793          	andi	a5,a5,1
    800083d0:	fe0794e3          	bnez	a5,800083b8 <uartintr+0x28>
    800083d4:	00004617          	auipc	a2,0x4
    800083d8:	97c60613          	addi	a2,a2,-1668 # 8000bd50 <uart_tx_r>
    800083dc:	00004517          	auipc	a0,0x4
    800083e0:	97c50513          	addi	a0,a0,-1668 # 8000bd58 <uart_tx_w>
    800083e4:	00063783          	ld	a5,0(a2)
    800083e8:	00053703          	ld	a4,0(a0)
    800083ec:	04f70263          	beq	a4,a5,80008430 <uartintr+0xa0>
    800083f0:	100005b7          	lui	a1,0x10000
    800083f4:	00009817          	auipc	a6,0x9
    800083f8:	cbc80813          	addi	a6,a6,-836 # 800110b0 <uart_tx_buf>
    800083fc:	01c0006f          	j	80008418 <uartintr+0x88>
    80008400:	0006c703          	lbu	a4,0(a3)
    80008404:	00f63023          	sd	a5,0(a2)
    80008408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000840c:	00063783          	ld	a5,0(a2)
    80008410:	00053703          	ld	a4,0(a0)
    80008414:	00f70e63          	beq	a4,a5,80008430 <uartintr+0xa0>
    80008418:	01f7f713          	andi	a4,a5,31
    8000841c:	00e806b3          	add	a3,a6,a4
    80008420:	0055c703          	lbu	a4,5(a1)
    80008424:	00178793          	addi	a5,a5,1
    80008428:	02077713          	andi	a4,a4,32
    8000842c:	fc071ae3          	bnez	a4,80008400 <uartintr+0x70>
    80008430:	01813083          	ld	ra,24(sp)
    80008434:	01013403          	ld	s0,16(sp)
    80008438:	00813483          	ld	s1,8(sp)
    8000843c:	02010113          	addi	sp,sp,32
    80008440:	00008067          	ret
    80008444:	00004617          	auipc	a2,0x4
    80008448:	90c60613          	addi	a2,a2,-1780 # 8000bd50 <uart_tx_r>
    8000844c:	00004517          	auipc	a0,0x4
    80008450:	90c50513          	addi	a0,a0,-1780 # 8000bd58 <uart_tx_w>
    80008454:	00063783          	ld	a5,0(a2)
    80008458:	00053703          	ld	a4,0(a0)
    8000845c:	04f70263          	beq	a4,a5,800084a0 <uartintr+0x110>
    80008460:	100005b7          	lui	a1,0x10000
    80008464:	00009817          	auipc	a6,0x9
    80008468:	c4c80813          	addi	a6,a6,-948 # 800110b0 <uart_tx_buf>
    8000846c:	01c0006f          	j	80008488 <uartintr+0xf8>
    80008470:	0006c703          	lbu	a4,0(a3)
    80008474:	00f63023          	sd	a5,0(a2)
    80008478:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000847c:	00063783          	ld	a5,0(a2)
    80008480:	00053703          	ld	a4,0(a0)
    80008484:	02f70063          	beq	a4,a5,800084a4 <uartintr+0x114>
    80008488:	01f7f713          	andi	a4,a5,31
    8000848c:	00e806b3          	add	a3,a6,a4
    80008490:	0055c703          	lbu	a4,5(a1)
    80008494:	00178793          	addi	a5,a5,1
    80008498:	02077713          	andi	a4,a4,32
    8000849c:	fc071ae3          	bnez	a4,80008470 <uartintr+0xe0>
    800084a0:	00008067          	ret
    800084a4:	00008067          	ret

00000000800084a8 <kinit>:
    800084a8:	fc010113          	addi	sp,sp,-64
    800084ac:	02913423          	sd	s1,40(sp)
    800084b0:	fffff7b7          	lui	a5,0xfffff
    800084b4:	0000a497          	auipc	s1,0xa
    800084b8:	c1b48493          	addi	s1,s1,-997 # 800120cf <end+0xfff>
    800084bc:	02813823          	sd	s0,48(sp)
    800084c0:	01313c23          	sd	s3,24(sp)
    800084c4:	00f4f4b3          	and	s1,s1,a5
    800084c8:	02113c23          	sd	ra,56(sp)
    800084cc:	03213023          	sd	s2,32(sp)
    800084d0:	01413823          	sd	s4,16(sp)
    800084d4:	01513423          	sd	s5,8(sp)
    800084d8:	04010413          	addi	s0,sp,64
    800084dc:	000017b7          	lui	a5,0x1
    800084e0:	01100993          	li	s3,17
    800084e4:	00f487b3          	add	a5,s1,a5
    800084e8:	01b99993          	slli	s3,s3,0x1b
    800084ec:	06f9e063          	bltu	s3,a5,8000854c <kinit+0xa4>
    800084f0:	00009a97          	auipc	s5,0x9
    800084f4:	be0a8a93          	addi	s5,s5,-1056 # 800110d0 <end>
    800084f8:	0754ec63          	bltu	s1,s5,80008570 <kinit+0xc8>
    800084fc:	0734fa63          	bgeu	s1,s3,80008570 <kinit+0xc8>
    80008500:	00088a37          	lui	s4,0x88
    80008504:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008508:	00004917          	auipc	s2,0x4
    8000850c:	85890913          	addi	s2,s2,-1960 # 8000bd60 <kmem>
    80008510:	00ca1a13          	slli	s4,s4,0xc
    80008514:	0140006f          	j	80008528 <kinit+0x80>
    80008518:	000017b7          	lui	a5,0x1
    8000851c:	00f484b3          	add	s1,s1,a5
    80008520:	0554e863          	bltu	s1,s5,80008570 <kinit+0xc8>
    80008524:	0534f663          	bgeu	s1,s3,80008570 <kinit+0xc8>
    80008528:	00001637          	lui	a2,0x1
    8000852c:	00100593          	li	a1,1
    80008530:	00048513          	mv	a0,s1
    80008534:	00000097          	auipc	ra,0x0
    80008538:	5e4080e7          	jalr	1508(ra) # 80008b18 <__memset>
    8000853c:	00093783          	ld	a5,0(s2)
    80008540:	00f4b023          	sd	a5,0(s1)
    80008544:	00993023          	sd	s1,0(s2)
    80008548:	fd4498e3          	bne	s1,s4,80008518 <kinit+0x70>
    8000854c:	03813083          	ld	ra,56(sp)
    80008550:	03013403          	ld	s0,48(sp)
    80008554:	02813483          	ld	s1,40(sp)
    80008558:	02013903          	ld	s2,32(sp)
    8000855c:	01813983          	ld	s3,24(sp)
    80008560:	01013a03          	ld	s4,16(sp)
    80008564:	00813a83          	ld	s5,8(sp)
    80008568:	04010113          	addi	sp,sp,64
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	10050513          	addi	a0,a0,256 # 80009670 <digits+0x18>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	4b4080e7          	jalr	1204(ra) # 80007a2c <panic>

0000000080008580 <freerange>:
    80008580:	fc010113          	addi	sp,sp,-64
    80008584:	000017b7          	lui	a5,0x1
    80008588:	02913423          	sd	s1,40(sp)
    8000858c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008590:	009504b3          	add	s1,a0,s1
    80008594:	fffff537          	lui	a0,0xfffff
    80008598:	02813823          	sd	s0,48(sp)
    8000859c:	02113c23          	sd	ra,56(sp)
    800085a0:	03213023          	sd	s2,32(sp)
    800085a4:	01313c23          	sd	s3,24(sp)
    800085a8:	01413823          	sd	s4,16(sp)
    800085ac:	01513423          	sd	s5,8(sp)
    800085b0:	01613023          	sd	s6,0(sp)
    800085b4:	04010413          	addi	s0,sp,64
    800085b8:	00a4f4b3          	and	s1,s1,a0
    800085bc:	00f487b3          	add	a5,s1,a5
    800085c0:	06f5e463          	bltu	a1,a5,80008628 <freerange+0xa8>
    800085c4:	00009a97          	auipc	s5,0x9
    800085c8:	b0ca8a93          	addi	s5,s5,-1268 # 800110d0 <end>
    800085cc:	0954e263          	bltu	s1,s5,80008650 <freerange+0xd0>
    800085d0:	01100993          	li	s3,17
    800085d4:	01b99993          	slli	s3,s3,0x1b
    800085d8:	0734fc63          	bgeu	s1,s3,80008650 <freerange+0xd0>
    800085dc:	00058a13          	mv	s4,a1
    800085e0:	00003917          	auipc	s2,0x3
    800085e4:	78090913          	addi	s2,s2,1920 # 8000bd60 <kmem>
    800085e8:	00002b37          	lui	s6,0x2
    800085ec:	0140006f          	j	80008600 <freerange+0x80>
    800085f0:	000017b7          	lui	a5,0x1
    800085f4:	00f484b3          	add	s1,s1,a5
    800085f8:	0554ec63          	bltu	s1,s5,80008650 <freerange+0xd0>
    800085fc:	0534fa63          	bgeu	s1,s3,80008650 <freerange+0xd0>
    80008600:	00001637          	lui	a2,0x1
    80008604:	00100593          	li	a1,1
    80008608:	00048513          	mv	a0,s1
    8000860c:	00000097          	auipc	ra,0x0
    80008610:	50c080e7          	jalr	1292(ra) # 80008b18 <__memset>
    80008614:	00093703          	ld	a4,0(s2)
    80008618:	016487b3          	add	a5,s1,s6
    8000861c:	00e4b023          	sd	a4,0(s1)
    80008620:	00993023          	sd	s1,0(s2)
    80008624:	fcfa76e3          	bgeu	s4,a5,800085f0 <freerange+0x70>
    80008628:	03813083          	ld	ra,56(sp)
    8000862c:	03013403          	ld	s0,48(sp)
    80008630:	02813483          	ld	s1,40(sp)
    80008634:	02013903          	ld	s2,32(sp)
    80008638:	01813983          	ld	s3,24(sp)
    8000863c:	01013a03          	ld	s4,16(sp)
    80008640:	00813a83          	ld	s5,8(sp)
    80008644:	00013b03          	ld	s6,0(sp)
    80008648:	04010113          	addi	sp,sp,64
    8000864c:	00008067          	ret
    80008650:	00001517          	auipc	a0,0x1
    80008654:	02050513          	addi	a0,a0,32 # 80009670 <digits+0x18>
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	3d4080e7          	jalr	980(ra) # 80007a2c <panic>

0000000080008660 <kfree>:
    80008660:	fe010113          	addi	sp,sp,-32
    80008664:	00813823          	sd	s0,16(sp)
    80008668:	00113c23          	sd	ra,24(sp)
    8000866c:	00913423          	sd	s1,8(sp)
    80008670:	02010413          	addi	s0,sp,32
    80008674:	03451793          	slli	a5,a0,0x34
    80008678:	04079c63          	bnez	a5,800086d0 <kfree+0x70>
    8000867c:	00009797          	auipc	a5,0x9
    80008680:	a5478793          	addi	a5,a5,-1452 # 800110d0 <end>
    80008684:	00050493          	mv	s1,a0
    80008688:	04f56463          	bltu	a0,a5,800086d0 <kfree+0x70>
    8000868c:	01100793          	li	a5,17
    80008690:	01b79793          	slli	a5,a5,0x1b
    80008694:	02f57e63          	bgeu	a0,a5,800086d0 <kfree+0x70>
    80008698:	00001637          	lui	a2,0x1
    8000869c:	00100593          	li	a1,1
    800086a0:	00000097          	auipc	ra,0x0
    800086a4:	478080e7          	jalr	1144(ra) # 80008b18 <__memset>
    800086a8:	00003797          	auipc	a5,0x3
    800086ac:	6b878793          	addi	a5,a5,1720 # 8000bd60 <kmem>
    800086b0:	0007b703          	ld	a4,0(a5)
    800086b4:	01813083          	ld	ra,24(sp)
    800086b8:	01013403          	ld	s0,16(sp)
    800086bc:	00e4b023          	sd	a4,0(s1)
    800086c0:	0097b023          	sd	s1,0(a5)
    800086c4:	00813483          	ld	s1,8(sp)
    800086c8:	02010113          	addi	sp,sp,32
    800086cc:	00008067          	ret
    800086d0:	00001517          	auipc	a0,0x1
    800086d4:	fa050513          	addi	a0,a0,-96 # 80009670 <digits+0x18>
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	354080e7          	jalr	852(ra) # 80007a2c <panic>

00000000800086e0 <kalloc>:
    800086e0:	fe010113          	addi	sp,sp,-32
    800086e4:	00813823          	sd	s0,16(sp)
    800086e8:	00913423          	sd	s1,8(sp)
    800086ec:	00113c23          	sd	ra,24(sp)
    800086f0:	02010413          	addi	s0,sp,32
    800086f4:	00003797          	auipc	a5,0x3
    800086f8:	66c78793          	addi	a5,a5,1644 # 8000bd60 <kmem>
    800086fc:	0007b483          	ld	s1,0(a5)
    80008700:	02048063          	beqz	s1,80008720 <kalloc+0x40>
    80008704:	0004b703          	ld	a4,0(s1)
    80008708:	00001637          	lui	a2,0x1
    8000870c:	00500593          	li	a1,5
    80008710:	00048513          	mv	a0,s1
    80008714:	00e7b023          	sd	a4,0(a5)
    80008718:	00000097          	auipc	ra,0x0
    8000871c:	400080e7          	jalr	1024(ra) # 80008b18 <__memset>
    80008720:	01813083          	ld	ra,24(sp)
    80008724:	01013403          	ld	s0,16(sp)
    80008728:	00048513          	mv	a0,s1
    8000872c:	00813483          	ld	s1,8(sp)
    80008730:	02010113          	addi	sp,sp,32
    80008734:	00008067          	ret

0000000080008738 <initlock>:
    80008738:	ff010113          	addi	sp,sp,-16
    8000873c:	00813423          	sd	s0,8(sp)
    80008740:	01010413          	addi	s0,sp,16
    80008744:	00813403          	ld	s0,8(sp)
    80008748:	00b53423          	sd	a1,8(a0)
    8000874c:	00052023          	sw	zero,0(a0)
    80008750:	00053823          	sd	zero,16(a0)
    80008754:	01010113          	addi	sp,sp,16
    80008758:	00008067          	ret

000000008000875c <acquire>:
    8000875c:	fe010113          	addi	sp,sp,-32
    80008760:	00813823          	sd	s0,16(sp)
    80008764:	00913423          	sd	s1,8(sp)
    80008768:	00113c23          	sd	ra,24(sp)
    8000876c:	01213023          	sd	s2,0(sp)
    80008770:	02010413          	addi	s0,sp,32
    80008774:	00050493          	mv	s1,a0
    80008778:	10002973          	csrr	s2,sstatus
    8000877c:	100027f3          	csrr	a5,sstatus
    80008780:	ffd7f793          	andi	a5,a5,-3
    80008784:	10079073          	csrw	sstatus,a5
    80008788:	fffff097          	auipc	ra,0xfffff
    8000878c:	8e8080e7          	jalr	-1816(ra) # 80007070 <mycpu>
    80008790:	07852783          	lw	a5,120(a0)
    80008794:	06078e63          	beqz	a5,80008810 <acquire+0xb4>
    80008798:	fffff097          	auipc	ra,0xfffff
    8000879c:	8d8080e7          	jalr	-1832(ra) # 80007070 <mycpu>
    800087a0:	07852783          	lw	a5,120(a0)
    800087a4:	0004a703          	lw	a4,0(s1)
    800087a8:	0017879b          	addiw	a5,a5,1
    800087ac:	06f52c23          	sw	a5,120(a0)
    800087b0:	04071063          	bnez	a4,800087f0 <acquire+0x94>
    800087b4:	00100713          	li	a4,1
    800087b8:	00070793          	mv	a5,a4
    800087bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800087c0:	0007879b          	sext.w	a5,a5
    800087c4:	fe079ae3          	bnez	a5,800087b8 <acquire+0x5c>
    800087c8:	0ff0000f          	fence
    800087cc:	fffff097          	auipc	ra,0xfffff
    800087d0:	8a4080e7          	jalr	-1884(ra) # 80007070 <mycpu>
    800087d4:	01813083          	ld	ra,24(sp)
    800087d8:	01013403          	ld	s0,16(sp)
    800087dc:	00a4b823          	sd	a0,16(s1)
    800087e0:	00013903          	ld	s2,0(sp)
    800087e4:	00813483          	ld	s1,8(sp)
    800087e8:	02010113          	addi	sp,sp,32
    800087ec:	00008067          	ret
    800087f0:	0104b903          	ld	s2,16(s1)
    800087f4:	fffff097          	auipc	ra,0xfffff
    800087f8:	87c080e7          	jalr	-1924(ra) # 80007070 <mycpu>
    800087fc:	faa91ce3          	bne	s2,a0,800087b4 <acquire+0x58>
    80008800:	00001517          	auipc	a0,0x1
    80008804:	e7850513          	addi	a0,a0,-392 # 80009678 <digits+0x20>
    80008808:	fffff097          	auipc	ra,0xfffff
    8000880c:	224080e7          	jalr	548(ra) # 80007a2c <panic>
    80008810:	00195913          	srli	s2,s2,0x1
    80008814:	fffff097          	auipc	ra,0xfffff
    80008818:	85c080e7          	jalr	-1956(ra) # 80007070 <mycpu>
    8000881c:	00197913          	andi	s2,s2,1
    80008820:	07252e23          	sw	s2,124(a0)
    80008824:	f75ff06f          	j	80008798 <acquire+0x3c>

0000000080008828 <release>:
    80008828:	fe010113          	addi	sp,sp,-32
    8000882c:	00813823          	sd	s0,16(sp)
    80008830:	00113c23          	sd	ra,24(sp)
    80008834:	00913423          	sd	s1,8(sp)
    80008838:	01213023          	sd	s2,0(sp)
    8000883c:	02010413          	addi	s0,sp,32
    80008840:	00052783          	lw	a5,0(a0)
    80008844:	00079a63          	bnez	a5,80008858 <release+0x30>
    80008848:	00001517          	auipc	a0,0x1
    8000884c:	e3850513          	addi	a0,a0,-456 # 80009680 <digits+0x28>
    80008850:	fffff097          	auipc	ra,0xfffff
    80008854:	1dc080e7          	jalr	476(ra) # 80007a2c <panic>
    80008858:	01053903          	ld	s2,16(a0)
    8000885c:	00050493          	mv	s1,a0
    80008860:	fffff097          	auipc	ra,0xfffff
    80008864:	810080e7          	jalr	-2032(ra) # 80007070 <mycpu>
    80008868:	fea910e3          	bne	s2,a0,80008848 <release+0x20>
    8000886c:	0004b823          	sd	zero,16(s1)
    80008870:	0ff0000f          	fence
    80008874:	0f50000f          	fence	iorw,ow
    80008878:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000887c:	ffffe097          	auipc	ra,0xffffe
    80008880:	7f4080e7          	jalr	2036(ra) # 80007070 <mycpu>
    80008884:	100027f3          	csrr	a5,sstatus
    80008888:	0027f793          	andi	a5,a5,2
    8000888c:	04079a63          	bnez	a5,800088e0 <release+0xb8>
    80008890:	07852783          	lw	a5,120(a0)
    80008894:	02f05e63          	blez	a5,800088d0 <release+0xa8>
    80008898:	fff7871b          	addiw	a4,a5,-1
    8000889c:	06e52c23          	sw	a4,120(a0)
    800088a0:	00071c63          	bnez	a4,800088b8 <release+0x90>
    800088a4:	07c52783          	lw	a5,124(a0)
    800088a8:	00078863          	beqz	a5,800088b8 <release+0x90>
    800088ac:	100027f3          	csrr	a5,sstatus
    800088b0:	0027e793          	ori	a5,a5,2
    800088b4:	10079073          	csrw	sstatus,a5
    800088b8:	01813083          	ld	ra,24(sp)
    800088bc:	01013403          	ld	s0,16(sp)
    800088c0:	00813483          	ld	s1,8(sp)
    800088c4:	00013903          	ld	s2,0(sp)
    800088c8:	02010113          	addi	sp,sp,32
    800088cc:	00008067          	ret
    800088d0:	00001517          	auipc	a0,0x1
    800088d4:	dd050513          	addi	a0,a0,-560 # 800096a0 <digits+0x48>
    800088d8:	fffff097          	auipc	ra,0xfffff
    800088dc:	154080e7          	jalr	340(ra) # 80007a2c <panic>
    800088e0:	00001517          	auipc	a0,0x1
    800088e4:	da850513          	addi	a0,a0,-600 # 80009688 <digits+0x30>
    800088e8:	fffff097          	auipc	ra,0xfffff
    800088ec:	144080e7          	jalr	324(ra) # 80007a2c <panic>

00000000800088f0 <holding>:
    800088f0:	00052783          	lw	a5,0(a0)
    800088f4:	00079663          	bnez	a5,80008900 <holding+0x10>
    800088f8:	00000513          	li	a0,0
    800088fc:	00008067          	ret
    80008900:	fe010113          	addi	sp,sp,-32
    80008904:	00813823          	sd	s0,16(sp)
    80008908:	00913423          	sd	s1,8(sp)
    8000890c:	00113c23          	sd	ra,24(sp)
    80008910:	02010413          	addi	s0,sp,32
    80008914:	01053483          	ld	s1,16(a0)
    80008918:	ffffe097          	auipc	ra,0xffffe
    8000891c:	758080e7          	jalr	1880(ra) # 80007070 <mycpu>
    80008920:	01813083          	ld	ra,24(sp)
    80008924:	01013403          	ld	s0,16(sp)
    80008928:	40a48533          	sub	a0,s1,a0
    8000892c:	00153513          	seqz	a0,a0
    80008930:	00813483          	ld	s1,8(sp)
    80008934:	02010113          	addi	sp,sp,32
    80008938:	00008067          	ret

000000008000893c <push_off>:
    8000893c:	fe010113          	addi	sp,sp,-32
    80008940:	00813823          	sd	s0,16(sp)
    80008944:	00113c23          	sd	ra,24(sp)
    80008948:	00913423          	sd	s1,8(sp)
    8000894c:	02010413          	addi	s0,sp,32
    80008950:	100024f3          	csrr	s1,sstatus
    80008954:	100027f3          	csrr	a5,sstatus
    80008958:	ffd7f793          	andi	a5,a5,-3
    8000895c:	10079073          	csrw	sstatus,a5
    80008960:	ffffe097          	auipc	ra,0xffffe
    80008964:	710080e7          	jalr	1808(ra) # 80007070 <mycpu>
    80008968:	07852783          	lw	a5,120(a0)
    8000896c:	02078663          	beqz	a5,80008998 <push_off+0x5c>
    80008970:	ffffe097          	auipc	ra,0xffffe
    80008974:	700080e7          	jalr	1792(ra) # 80007070 <mycpu>
    80008978:	07852783          	lw	a5,120(a0)
    8000897c:	01813083          	ld	ra,24(sp)
    80008980:	01013403          	ld	s0,16(sp)
    80008984:	0017879b          	addiw	a5,a5,1
    80008988:	06f52c23          	sw	a5,120(a0)
    8000898c:	00813483          	ld	s1,8(sp)
    80008990:	02010113          	addi	sp,sp,32
    80008994:	00008067          	ret
    80008998:	0014d493          	srli	s1,s1,0x1
    8000899c:	ffffe097          	auipc	ra,0xffffe
    800089a0:	6d4080e7          	jalr	1748(ra) # 80007070 <mycpu>
    800089a4:	0014f493          	andi	s1,s1,1
    800089a8:	06952e23          	sw	s1,124(a0)
    800089ac:	fc5ff06f          	j	80008970 <push_off+0x34>

00000000800089b0 <pop_off>:
    800089b0:	ff010113          	addi	sp,sp,-16
    800089b4:	00813023          	sd	s0,0(sp)
    800089b8:	00113423          	sd	ra,8(sp)
    800089bc:	01010413          	addi	s0,sp,16
    800089c0:	ffffe097          	auipc	ra,0xffffe
    800089c4:	6b0080e7          	jalr	1712(ra) # 80007070 <mycpu>
    800089c8:	100027f3          	csrr	a5,sstatus
    800089cc:	0027f793          	andi	a5,a5,2
    800089d0:	04079663          	bnez	a5,80008a1c <pop_off+0x6c>
    800089d4:	07852783          	lw	a5,120(a0)
    800089d8:	02f05a63          	blez	a5,80008a0c <pop_off+0x5c>
    800089dc:	fff7871b          	addiw	a4,a5,-1
    800089e0:	06e52c23          	sw	a4,120(a0)
    800089e4:	00071c63          	bnez	a4,800089fc <pop_off+0x4c>
    800089e8:	07c52783          	lw	a5,124(a0)
    800089ec:	00078863          	beqz	a5,800089fc <pop_off+0x4c>
    800089f0:	100027f3          	csrr	a5,sstatus
    800089f4:	0027e793          	ori	a5,a5,2
    800089f8:	10079073          	csrw	sstatus,a5
    800089fc:	00813083          	ld	ra,8(sp)
    80008a00:	00013403          	ld	s0,0(sp)
    80008a04:	01010113          	addi	sp,sp,16
    80008a08:	00008067          	ret
    80008a0c:	00001517          	auipc	a0,0x1
    80008a10:	c9450513          	addi	a0,a0,-876 # 800096a0 <digits+0x48>
    80008a14:	fffff097          	auipc	ra,0xfffff
    80008a18:	018080e7          	jalr	24(ra) # 80007a2c <panic>
    80008a1c:	00001517          	auipc	a0,0x1
    80008a20:	c6c50513          	addi	a0,a0,-916 # 80009688 <digits+0x30>
    80008a24:	fffff097          	auipc	ra,0xfffff
    80008a28:	008080e7          	jalr	8(ra) # 80007a2c <panic>

0000000080008a2c <push_on>:
    80008a2c:	fe010113          	addi	sp,sp,-32
    80008a30:	00813823          	sd	s0,16(sp)
    80008a34:	00113c23          	sd	ra,24(sp)
    80008a38:	00913423          	sd	s1,8(sp)
    80008a3c:	02010413          	addi	s0,sp,32
    80008a40:	100024f3          	csrr	s1,sstatus
    80008a44:	100027f3          	csrr	a5,sstatus
    80008a48:	0027e793          	ori	a5,a5,2
    80008a4c:	10079073          	csrw	sstatus,a5
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	620080e7          	jalr	1568(ra) # 80007070 <mycpu>
    80008a58:	07852783          	lw	a5,120(a0)
    80008a5c:	02078663          	beqz	a5,80008a88 <push_on+0x5c>
    80008a60:	ffffe097          	auipc	ra,0xffffe
    80008a64:	610080e7          	jalr	1552(ra) # 80007070 <mycpu>
    80008a68:	07852783          	lw	a5,120(a0)
    80008a6c:	01813083          	ld	ra,24(sp)
    80008a70:	01013403          	ld	s0,16(sp)
    80008a74:	0017879b          	addiw	a5,a5,1
    80008a78:	06f52c23          	sw	a5,120(a0)
    80008a7c:	00813483          	ld	s1,8(sp)
    80008a80:	02010113          	addi	sp,sp,32
    80008a84:	00008067          	ret
    80008a88:	0014d493          	srli	s1,s1,0x1
    80008a8c:	ffffe097          	auipc	ra,0xffffe
    80008a90:	5e4080e7          	jalr	1508(ra) # 80007070 <mycpu>
    80008a94:	0014f493          	andi	s1,s1,1
    80008a98:	06952e23          	sw	s1,124(a0)
    80008a9c:	fc5ff06f          	j	80008a60 <push_on+0x34>

0000000080008aa0 <pop_on>:
    80008aa0:	ff010113          	addi	sp,sp,-16
    80008aa4:	00813023          	sd	s0,0(sp)
    80008aa8:	00113423          	sd	ra,8(sp)
    80008aac:	01010413          	addi	s0,sp,16
    80008ab0:	ffffe097          	auipc	ra,0xffffe
    80008ab4:	5c0080e7          	jalr	1472(ra) # 80007070 <mycpu>
    80008ab8:	100027f3          	csrr	a5,sstatus
    80008abc:	0027f793          	andi	a5,a5,2
    80008ac0:	04078463          	beqz	a5,80008b08 <pop_on+0x68>
    80008ac4:	07852783          	lw	a5,120(a0)
    80008ac8:	02f05863          	blez	a5,80008af8 <pop_on+0x58>
    80008acc:	fff7879b          	addiw	a5,a5,-1
    80008ad0:	06f52c23          	sw	a5,120(a0)
    80008ad4:	07853783          	ld	a5,120(a0)
    80008ad8:	00079863          	bnez	a5,80008ae8 <pop_on+0x48>
    80008adc:	100027f3          	csrr	a5,sstatus
    80008ae0:	ffd7f793          	andi	a5,a5,-3
    80008ae4:	10079073          	csrw	sstatus,a5
    80008ae8:	00813083          	ld	ra,8(sp)
    80008aec:	00013403          	ld	s0,0(sp)
    80008af0:	01010113          	addi	sp,sp,16
    80008af4:	00008067          	ret
    80008af8:	00001517          	auipc	a0,0x1
    80008afc:	bd050513          	addi	a0,a0,-1072 # 800096c8 <digits+0x70>
    80008b00:	fffff097          	auipc	ra,0xfffff
    80008b04:	f2c080e7          	jalr	-212(ra) # 80007a2c <panic>
    80008b08:	00001517          	auipc	a0,0x1
    80008b0c:	ba050513          	addi	a0,a0,-1120 # 800096a8 <digits+0x50>
    80008b10:	fffff097          	auipc	ra,0xfffff
    80008b14:	f1c080e7          	jalr	-228(ra) # 80007a2c <panic>

0000000080008b18 <__memset>:
    80008b18:	ff010113          	addi	sp,sp,-16
    80008b1c:	00813423          	sd	s0,8(sp)
    80008b20:	01010413          	addi	s0,sp,16
    80008b24:	1a060e63          	beqz	a2,80008ce0 <__memset+0x1c8>
    80008b28:	40a007b3          	neg	a5,a0
    80008b2c:	0077f793          	andi	a5,a5,7
    80008b30:	00778693          	addi	a3,a5,7
    80008b34:	00b00813          	li	a6,11
    80008b38:	0ff5f593          	andi	a1,a1,255
    80008b3c:	fff6071b          	addiw	a4,a2,-1
    80008b40:	1b06e663          	bltu	a3,a6,80008cec <__memset+0x1d4>
    80008b44:	1cd76463          	bltu	a4,a3,80008d0c <__memset+0x1f4>
    80008b48:	1a078e63          	beqz	a5,80008d04 <__memset+0x1ec>
    80008b4c:	00b50023          	sb	a1,0(a0)
    80008b50:	00100713          	li	a4,1
    80008b54:	1ae78463          	beq	a5,a4,80008cfc <__memset+0x1e4>
    80008b58:	00b500a3          	sb	a1,1(a0)
    80008b5c:	00200713          	li	a4,2
    80008b60:	1ae78a63          	beq	a5,a4,80008d14 <__memset+0x1fc>
    80008b64:	00b50123          	sb	a1,2(a0)
    80008b68:	00300713          	li	a4,3
    80008b6c:	18e78463          	beq	a5,a4,80008cf4 <__memset+0x1dc>
    80008b70:	00b501a3          	sb	a1,3(a0)
    80008b74:	00400713          	li	a4,4
    80008b78:	1ae78263          	beq	a5,a4,80008d1c <__memset+0x204>
    80008b7c:	00b50223          	sb	a1,4(a0)
    80008b80:	00500713          	li	a4,5
    80008b84:	1ae78063          	beq	a5,a4,80008d24 <__memset+0x20c>
    80008b88:	00b502a3          	sb	a1,5(a0)
    80008b8c:	00700713          	li	a4,7
    80008b90:	18e79e63          	bne	a5,a4,80008d2c <__memset+0x214>
    80008b94:	00b50323          	sb	a1,6(a0)
    80008b98:	00700e93          	li	t4,7
    80008b9c:	00859713          	slli	a4,a1,0x8
    80008ba0:	00e5e733          	or	a4,a1,a4
    80008ba4:	01059e13          	slli	t3,a1,0x10
    80008ba8:	01c76e33          	or	t3,a4,t3
    80008bac:	01859313          	slli	t1,a1,0x18
    80008bb0:	006e6333          	or	t1,t3,t1
    80008bb4:	02059893          	slli	a7,a1,0x20
    80008bb8:	40f60e3b          	subw	t3,a2,a5
    80008bbc:	011368b3          	or	a7,t1,a7
    80008bc0:	02859813          	slli	a6,a1,0x28
    80008bc4:	0108e833          	or	a6,a7,a6
    80008bc8:	03059693          	slli	a3,a1,0x30
    80008bcc:	003e589b          	srliw	a7,t3,0x3
    80008bd0:	00d866b3          	or	a3,a6,a3
    80008bd4:	03859713          	slli	a4,a1,0x38
    80008bd8:	00389813          	slli	a6,a7,0x3
    80008bdc:	00f507b3          	add	a5,a0,a5
    80008be0:	00e6e733          	or	a4,a3,a4
    80008be4:	000e089b          	sext.w	a7,t3
    80008be8:	00f806b3          	add	a3,a6,a5
    80008bec:	00e7b023          	sd	a4,0(a5)
    80008bf0:	00878793          	addi	a5,a5,8
    80008bf4:	fed79ce3          	bne	a5,a3,80008bec <__memset+0xd4>
    80008bf8:	ff8e7793          	andi	a5,t3,-8
    80008bfc:	0007871b          	sext.w	a4,a5
    80008c00:	01d787bb          	addw	a5,a5,t4
    80008c04:	0ce88e63          	beq	a7,a4,80008ce0 <__memset+0x1c8>
    80008c08:	00f50733          	add	a4,a0,a5
    80008c0c:	00b70023          	sb	a1,0(a4)
    80008c10:	0017871b          	addiw	a4,a5,1
    80008c14:	0cc77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c18:	00e50733          	add	a4,a0,a4
    80008c1c:	00b70023          	sb	a1,0(a4)
    80008c20:	0027871b          	addiw	a4,a5,2
    80008c24:	0ac77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c28:	00e50733          	add	a4,a0,a4
    80008c2c:	00b70023          	sb	a1,0(a4)
    80008c30:	0037871b          	addiw	a4,a5,3
    80008c34:	0ac77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c38:	00e50733          	add	a4,a0,a4
    80008c3c:	00b70023          	sb	a1,0(a4)
    80008c40:	0047871b          	addiw	a4,a5,4
    80008c44:	08c77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c48:	00e50733          	add	a4,a0,a4
    80008c4c:	00b70023          	sb	a1,0(a4)
    80008c50:	0057871b          	addiw	a4,a5,5
    80008c54:	08c77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c58:	00e50733          	add	a4,a0,a4
    80008c5c:	00b70023          	sb	a1,0(a4)
    80008c60:	0067871b          	addiw	a4,a5,6
    80008c64:	06c77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c68:	00e50733          	add	a4,a0,a4
    80008c6c:	00b70023          	sb	a1,0(a4)
    80008c70:	0077871b          	addiw	a4,a5,7
    80008c74:	06c77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c78:	00e50733          	add	a4,a0,a4
    80008c7c:	00b70023          	sb	a1,0(a4)
    80008c80:	0087871b          	addiw	a4,a5,8
    80008c84:	04c77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c88:	00e50733          	add	a4,a0,a4
    80008c8c:	00b70023          	sb	a1,0(a4)
    80008c90:	0097871b          	addiw	a4,a5,9
    80008c94:	04c77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008c98:	00e50733          	add	a4,a0,a4
    80008c9c:	00b70023          	sb	a1,0(a4)
    80008ca0:	00a7871b          	addiw	a4,a5,10
    80008ca4:	02c77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008ca8:	00e50733          	add	a4,a0,a4
    80008cac:	00b70023          	sb	a1,0(a4)
    80008cb0:	00b7871b          	addiw	a4,a5,11
    80008cb4:	02c77663          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008cb8:	00e50733          	add	a4,a0,a4
    80008cbc:	00b70023          	sb	a1,0(a4)
    80008cc0:	00c7871b          	addiw	a4,a5,12
    80008cc4:	00c77e63          	bgeu	a4,a2,80008ce0 <__memset+0x1c8>
    80008cc8:	00e50733          	add	a4,a0,a4
    80008ccc:	00b70023          	sb	a1,0(a4)
    80008cd0:	00d7879b          	addiw	a5,a5,13
    80008cd4:	00c7f663          	bgeu	a5,a2,80008ce0 <__memset+0x1c8>
    80008cd8:	00f507b3          	add	a5,a0,a5
    80008cdc:	00b78023          	sb	a1,0(a5)
    80008ce0:	00813403          	ld	s0,8(sp)
    80008ce4:	01010113          	addi	sp,sp,16
    80008ce8:	00008067          	ret
    80008cec:	00b00693          	li	a3,11
    80008cf0:	e55ff06f          	j	80008b44 <__memset+0x2c>
    80008cf4:	00300e93          	li	t4,3
    80008cf8:	ea5ff06f          	j	80008b9c <__memset+0x84>
    80008cfc:	00100e93          	li	t4,1
    80008d00:	e9dff06f          	j	80008b9c <__memset+0x84>
    80008d04:	00000e93          	li	t4,0
    80008d08:	e95ff06f          	j	80008b9c <__memset+0x84>
    80008d0c:	00000793          	li	a5,0
    80008d10:	ef9ff06f          	j	80008c08 <__memset+0xf0>
    80008d14:	00200e93          	li	t4,2
    80008d18:	e85ff06f          	j	80008b9c <__memset+0x84>
    80008d1c:	00400e93          	li	t4,4
    80008d20:	e7dff06f          	j	80008b9c <__memset+0x84>
    80008d24:	00500e93          	li	t4,5
    80008d28:	e75ff06f          	j	80008b9c <__memset+0x84>
    80008d2c:	00600e93          	li	t4,6
    80008d30:	e6dff06f          	j	80008b9c <__memset+0x84>

0000000080008d34 <__memmove>:
    80008d34:	ff010113          	addi	sp,sp,-16
    80008d38:	00813423          	sd	s0,8(sp)
    80008d3c:	01010413          	addi	s0,sp,16
    80008d40:	0e060863          	beqz	a2,80008e30 <__memmove+0xfc>
    80008d44:	fff6069b          	addiw	a3,a2,-1
    80008d48:	0006881b          	sext.w	a6,a3
    80008d4c:	0ea5e863          	bltu	a1,a0,80008e3c <__memmove+0x108>
    80008d50:	00758713          	addi	a4,a1,7
    80008d54:	00a5e7b3          	or	a5,a1,a0
    80008d58:	40a70733          	sub	a4,a4,a0
    80008d5c:	0077f793          	andi	a5,a5,7
    80008d60:	00f73713          	sltiu	a4,a4,15
    80008d64:	00174713          	xori	a4,a4,1
    80008d68:	0017b793          	seqz	a5,a5
    80008d6c:	00e7f7b3          	and	a5,a5,a4
    80008d70:	10078863          	beqz	a5,80008e80 <__memmove+0x14c>
    80008d74:	00900793          	li	a5,9
    80008d78:	1107f463          	bgeu	a5,a6,80008e80 <__memmove+0x14c>
    80008d7c:	0036581b          	srliw	a6,a2,0x3
    80008d80:	fff8081b          	addiw	a6,a6,-1
    80008d84:	02081813          	slli	a6,a6,0x20
    80008d88:	01d85893          	srli	a7,a6,0x1d
    80008d8c:	00858813          	addi	a6,a1,8
    80008d90:	00058793          	mv	a5,a1
    80008d94:	00050713          	mv	a4,a0
    80008d98:	01088833          	add	a6,a7,a6
    80008d9c:	0007b883          	ld	a7,0(a5)
    80008da0:	00878793          	addi	a5,a5,8
    80008da4:	00870713          	addi	a4,a4,8
    80008da8:	ff173c23          	sd	a7,-8(a4)
    80008dac:	ff0798e3          	bne	a5,a6,80008d9c <__memmove+0x68>
    80008db0:	ff867713          	andi	a4,a2,-8
    80008db4:	02071793          	slli	a5,a4,0x20
    80008db8:	0207d793          	srli	a5,a5,0x20
    80008dbc:	00f585b3          	add	a1,a1,a5
    80008dc0:	40e686bb          	subw	a3,a3,a4
    80008dc4:	00f507b3          	add	a5,a0,a5
    80008dc8:	06e60463          	beq	a2,a4,80008e30 <__memmove+0xfc>
    80008dcc:	0005c703          	lbu	a4,0(a1)
    80008dd0:	00e78023          	sb	a4,0(a5)
    80008dd4:	04068e63          	beqz	a3,80008e30 <__memmove+0xfc>
    80008dd8:	0015c603          	lbu	a2,1(a1)
    80008ddc:	00100713          	li	a4,1
    80008de0:	00c780a3          	sb	a2,1(a5)
    80008de4:	04e68663          	beq	a3,a4,80008e30 <__memmove+0xfc>
    80008de8:	0025c603          	lbu	a2,2(a1)
    80008dec:	00200713          	li	a4,2
    80008df0:	00c78123          	sb	a2,2(a5)
    80008df4:	02e68e63          	beq	a3,a4,80008e30 <__memmove+0xfc>
    80008df8:	0035c603          	lbu	a2,3(a1)
    80008dfc:	00300713          	li	a4,3
    80008e00:	00c781a3          	sb	a2,3(a5)
    80008e04:	02e68663          	beq	a3,a4,80008e30 <__memmove+0xfc>
    80008e08:	0045c603          	lbu	a2,4(a1)
    80008e0c:	00400713          	li	a4,4
    80008e10:	00c78223          	sb	a2,4(a5)
    80008e14:	00e68e63          	beq	a3,a4,80008e30 <__memmove+0xfc>
    80008e18:	0055c603          	lbu	a2,5(a1)
    80008e1c:	00500713          	li	a4,5
    80008e20:	00c782a3          	sb	a2,5(a5)
    80008e24:	00e68663          	beq	a3,a4,80008e30 <__memmove+0xfc>
    80008e28:	0065c703          	lbu	a4,6(a1)
    80008e2c:	00e78323          	sb	a4,6(a5)
    80008e30:	00813403          	ld	s0,8(sp)
    80008e34:	01010113          	addi	sp,sp,16
    80008e38:	00008067          	ret
    80008e3c:	02061713          	slli	a4,a2,0x20
    80008e40:	02075713          	srli	a4,a4,0x20
    80008e44:	00e587b3          	add	a5,a1,a4
    80008e48:	f0f574e3          	bgeu	a0,a5,80008d50 <__memmove+0x1c>
    80008e4c:	02069613          	slli	a2,a3,0x20
    80008e50:	02065613          	srli	a2,a2,0x20
    80008e54:	fff64613          	not	a2,a2
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00c78633          	add	a2,a5,a2
    80008e60:	fff7c683          	lbu	a3,-1(a5)
    80008e64:	fff78793          	addi	a5,a5,-1
    80008e68:	fff70713          	addi	a4,a4,-1
    80008e6c:	00d70023          	sb	a3,0(a4)
    80008e70:	fec798e3          	bne	a5,a2,80008e60 <__memmove+0x12c>
    80008e74:	00813403          	ld	s0,8(sp)
    80008e78:	01010113          	addi	sp,sp,16
    80008e7c:	00008067          	ret
    80008e80:	02069713          	slli	a4,a3,0x20
    80008e84:	02075713          	srli	a4,a4,0x20
    80008e88:	00170713          	addi	a4,a4,1
    80008e8c:	00e50733          	add	a4,a0,a4
    80008e90:	00050793          	mv	a5,a0
    80008e94:	0005c683          	lbu	a3,0(a1)
    80008e98:	00178793          	addi	a5,a5,1
    80008e9c:	00158593          	addi	a1,a1,1
    80008ea0:	fed78fa3          	sb	a3,-1(a5)
    80008ea4:	fee798e3          	bne	a5,a4,80008e94 <__memmove+0x160>
    80008ea8:	f89ff06f          	j	80008e30 <__memmove+0xfc>
	...
