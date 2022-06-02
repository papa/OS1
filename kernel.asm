
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ae813103          	ld	sp,-1304(sp) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	001060ef          	jal	ra,8000681c <start>

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
    80001088:	515020ef          	jal	ra,80003d9c <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001584 <_Z4idlePv>:
#include "../h/Tests.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void idle(void* args)
{
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00113423          	sd	ra,8(sp)
    8000158c:	00813023          	sd	s0,0(sp)
    80001590:	01010413          	addi	s0,sp,16
    while(true)
    {
        printString("Idle\n");
    80001594:	00008517          	auipc	a0,0x8
    80001598:	a8c50513          	addi	a0,a0,-1396 # 80009020 <CONSOLE_STATUS+0x10>
    8000159c:	00004097          	auipc	ra,0x4
    800015a0:	768080e7          	jalr	1896(ra) # 80005d04 <_Z11printStringPKc>
        thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	d90080e7          	jalr	-624(ra) # 80001334 <thread_dispatch>
    while(true)
    800015ac:	fe9ff06f          	j	80001594 <_Z4idlePv+0x10>

00000000800015b0 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    800015b0:	fe010113          	addi	sp,sp,-32
    800015b4:	00113c23          	sd	ra,24(sp)
    800015b8:	00813823          	sd	s0,16(sp)
    800015bc:	00913423          	sd	s1,8(sp)
    800015c0:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    800015c4:	00008517          	auipc	a0,0x8
    800015c8:	a6450513          	addi	a0,a0,-1436 # 80009028 <CONSOLE_STATUS+0x18>
    800015cc:	00004097          	auipc	ra,0x4
    800015d0:	738080e7          	jalr	1848(ra) # 80005d04 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800015d4:	00000493          	li	s1,0
    800015d8:	0440006f          	j	8000161c <_Z15thread1FunctionPv+0x6c>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	d58080e7          	jalr	-680(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    800015e4:	00008517          	auipc	a0,0x8
    800015e8:	a5c50513          	addi	a0,a0,-1444 # 80009040 <CONSOLE_STATUS+0x30>
    800015ec:	00004097          	auipc	ra,0x4
    800015f0:	718080e7          	jalr	1816(ra) # 80005d04 <_Z11printStringPKc>
        printInt(i);
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	0004851b          	sext.w	a0,s1
    80001600:	00005097          	auipc	ra,0x5
    80001604:	89c080e7          	jalr	-1892(ra) # 80005e9c <_Z8printIntiii>
        printString("\n");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	af850513          	addi	a0,a0,-1288 # 80009100 <CONSOLE_STATUS+0xf0>
    80001610:	00004097          	auipc	ra,0x4
    80001614:	6f4080e7          	jalr	1780(ra) # 80005d04 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    80001618:	00148493          	addi	s1,s1,1
    8000161c:	000027b7          	lui	a5,0x2
    80001620:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001624:	0097ec63          	bltu	a5,s1,8000163c <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    80001628:	09600793          	li	a5,150
    8000162c:	02f4f7b3          	remu	a5,s1,a5
    80001630:	fa079ae3          	bnez	a5,800015e4 <_Z15thread1FunctionPv+0x34>
    80001634:	fa0488e3          	beqz	s1,800015e4 <_Z15thread1FunctionPv+0x34>
    80001638:	fa5ff06f          	j	800015dc <_Z15thread1FunctionPv+0x2c>
    }
}
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	02010113          	addi	sp,sp,32
    8000164c:	00008067          	ret

0000000080001650 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001650:	fe010113          	addi	sp,sp,-32
    80001654:	00113c23          	sd	ra,24(sp)
    80001658:	00813823          	sd	s0,16(sp)
    8000165c:	00913423          	sd	s1,8(sp)
    80001660:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001664:	00008517          	auipc	a0,0x8
    80001668:	9e450513          	addi	a0,a0,-1564 # 80009048 <CONSOLE_STATUS+0x38>
    8000166c:	00004097          	auipc	ra,0x4
    80001670:	698080e7          	jalr	1688(ra) # 80005d04 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    80001674:	00000493          	li	s1,0
    80001678:	0440006f          	j	800016bc <_Z15thread2FunctionPv+0x6c>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	cb8080e7          	jalr	-840(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    80001684:	00008517          	auipc	a0,0x8
    80001688:	9dc50513          	addi	a0,a0,-1572 # 80009060 <CONSOLE_STATUS+0x50>
    8000168c:	00004097          	auipc	ra,0x4
    80001690:	678080e7          	jalr	1656(ra) # 80005d04 <_Z11printStringPKc>
        printInt(j);
    80001694:	00000613          	li	a2,0
    80001698:	00a00593          	li	a1,10
    8000169c:	0004851b          	sext.w	a0,s1
    800016a0:	00004097          	auipc	ra,0x4
    800016a4:	7fc080e7          	jalr	2044(ra) # 80005e9c <_Z8printIntiii>
        printString("\n");
    800016a8:	00008517          	auipc	a0,0x8
    800016ac:	a5850513          	addi	a0,a0,-1448 # 80009100 <CONSOLE_STATUS+0xf0>
    800016b0:	00004097          	auipc	ra,0x4
    800016b4:	654080e7          	jalr	1620(ra) # 80005d04 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800016b8:	00148493          	addi	s1,s1,1
    800016bc:	000027b7          	lui	a5,0x2
    800016c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016c4:	0097ec63          	bltu	a5,s1,800016dc <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    800016c8:	03200793          	li	a5,50
    800016cc:	02f4f7b3          	remu	a5,s1,a5
    800016d0:	fa079ae3          	bnez	a5,80001684 <_Z15thread2FunctionPv+0x34>
    800016d4:	fa0488e3          	beqz	s1,80001684 <_Z15thread2FunctionPv+0x34>
    800016d8:	fa5ff06f          	j	8000167c <_Z15thread2FunctionPv+0x2c>
    }
}
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	02010113          	addi	sp,sp,32
    800016ec:	00008067          	ret

00000000800016f0 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    80001704:	00000493          	li	s1,0
    80001708:	000027b7          	lui	a5,0x2
    8000170c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001710:	0297c863          	blt	a5,s1,80001740 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    80001714:	00008517          	auipc	a0,0x8
    80001718:	92c50513          	addi	a0,a0,-1748 # 80009040 <CONSOLE_STATUS+0x30>
    8000171c:	00004097          	auipc	ra,0x4
    80001720:	5e8080e7          	jalr	1512(ra) # 80005d04 <_Z11printStringPKc>
        printInt(i);
    80001724:	00000613          	li	a2,0
    80001728:	00a00593          	li	a1,10
    8000172c:	00048513          	mv	a0,s1
    80001730:	00004097          	auipc	ra,0x4
    80001734:	76c080e7          	jalr	1900(ra) # 80005e9c <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    80001738:	0014849b          	addiw	s1,s1,1
    8000173c:	fcdff06f          	j	80001708 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
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
    80001770:	00004097          	auipc	ra,0x4
    80001774:	594080e7          	jalr	1428(ra) # 80005d04 <_Z11printStringPKc>
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
    8000179c:	00004097          	auipc	ra,0x4
    800017a0:	568080e7          	jalr	1384(ra) # 80005d04 <_Z11printStringPKc>
        printInt(j);
    800017a4:	00000613          	li	a2,0
    800017a8:	00a00593          	li	a1,10
    800017ac:	0004851b          	sext.w	a0,s1
    800017b0:	00004097          	auipc	ra,0x4
    800017b4:	6ec080e7          	jalr	1772(ra) # 80005e9c <_Z8printIntiii>
        printString("\n");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	94850513          	addi	a0,a0,-1720 # 80009100 <CONSOLE_STATUS+0xf0>
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	544080e7          	jalr	1348(ra) # 80005d04 <_Z11printStringPKc>
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

0000000080001808 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    80001808:	0000a717          	auipc	a4,0xa
    8000180c:	36872703          	lw	a4,872(a4) # 8000bb70 <head>
    80001810:	00a00793          	li	a5,10
    80001814:	06f70c63          	beq	a4,a5,8000188c <_Z9consumerAPv+0x84>
{
    80001818:	fe010113          	addi	sp,sp,-32
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	00813823          	sd	s0,16(sp)
    80001824:	00913423          	sd	s1,8(sp)
    80001828:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    8000182c:	0000a497          	auipc	s1,0xa
    80001830:	34448493          	addi	s1,s1,836 # 8000bb70 <head>
    80001834:	0084b503          	ld	a0,8(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	ba8080e7          	jalr	-1112(ra) # 800013e0 <sem_wait>
        putc(buffer[head++]);
    80001840:	0004a783          	lw	a5,0(s1)
    80001844:	0017871b          	addiw	a4,a5,1
    80001848:	00e4a023          	sw	a4,0(s1)
    8000184c:	00f487b3          	add	a5,s1,a5
    80001850:	0107c503          	lbu	a0,16(a5)
    80001854:	00000097          	auipc	ra,0x0
    80001858:	ce4080e7          	jalr	-796(ra) # 80001538 <putc>
        sem_signal(spaceAvailable);
    8000185c:	0204b503          	ld	a0,32(s1)
    80001860:	00000097          	auipc	ra,0x0
    80001864:	bac080e7          	jalr	-1108(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001868:	0000a717          	auipc	a4,0xa
    8000186c:	30872703          	lw	a4,776(a4) # 8000bb70 <head>
    80001870:	00a00793          	li	a5,10
    80001874:	faf71ce3          	bne	a4,a5,8000182c <_Z9consumerAPv+0x24>
    }
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret
    8000188c:	00008067          	ret

0000000080001890 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001890:	0000a717          	auipc	a4,0xa
    80001894:	30872703          	lw	a4,776(a4) # 8000bb98 <tail>
    80001898:	00a00793          	li	a5,10
    8000189c:	08f70063          	beq	a4,a5,8000191c <_Z9producerAPv+0x8c>
{
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00113c23          	sd	ra,24(sp)
    800018a8:	00813823          	sd	s0,16(sp)
    800018ac:	00913423          	sd	s1,8(sp)
    800018b0:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    800018b4:	0000a497          	auipc	s1,0xa
    800018b8:	2bc48493          	addi	s1,s1,700 # 8000bb70 <head>
    800018bc:	0204b503          	ld	a0,32(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	b20080e7          	jalr	-1248(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018c8:	0284a783          	lw	a5,40(s1)
    800018cc:	0000a717          	auipc	a4,0xa
    800018d0:	06470713          	addi	a4,a4,100 # 8000b930 <string>
    800018d4:	00f70733          	add	a4,a4,a5
    800018d8:	00074683          	lbu	a3,0(a4)
    800018dc:	00f48733          	add	a4,s1,a5
    800018e0:	00d70823          	sb	a3,16(a4)
        tail++;
    800018e4:	0017879b          	addiw	a5,a5,1
    800018e8:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800018ec:	0084b503          	ld	a0,8(s1)
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	b1c080e7          	jalr	-1252(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800018f8:	0000a717          	auipc	a4,0xa
    800018fc:	2a072703          	lw	a4,672(a4) # 8000bb98 <tail>
    80001900:	00a00793          	li	a5,10
    80001904:	faf718e3          	bne	a4,a5,800018b4 <_Z9producerAPv+0x24>
    }
}
    80001908:	01813083          	ld	ra,24(sp)
    8000190c:	01013403          	ld	s0,16(sp)
    80001910:	00813483          	ld	s1,8(sp)
    80001914:	02010113          	addi	sp,sp,32
    80001918:	00008067          	ret
    8000191c:	00008067          	ret

0000000080001920 <_Z11threadTest1v>:
{
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001938:	01000513          	li	a0,16
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	e20080e7          	jalr	-480(ra) # 8000375c <_Znwm>
    80001944:	00050493          	mv	s1,a0
    80001948:	00000613          	li	a2,0
    8000194c:	00000597          	auipc	a1,0x0
    80001950:	c6458593          	addi	a1,a1,-924 # 800015b0 <_Z15thread1FunctionPv>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	fa0080e7          	jalr	-96(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    8000195c:	00048513          	mv	a0,s1
    80001960:	00002097          	auipc	ra,0x2
    80001964:	ecc080e7          	jalr	-308(ra) # 8000382c <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001968:	01000513          	li	a0,16
    8000196c:	00002097          	auipc	ra,0x2
    80001970:	df0080e7          	jalr	-528(ra) # 8000375c <_Znwm>
    80001974:	00050493          	mv	s1,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000597          	auipc	a1,0x0
    80001980:	cd458593          	addi	a1,a1,-812 # 80001650 <_Z15thread2FunctionPv>
    80001984:	00002097          	auipc	ra,0x2
    80001988:	f70080e7          	jalr	-144(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    8000198c:	00048513          	mv	a0,s1
    80001990:	00002097          	auipc	ra,0x2
    80001994:	e9c080e7          	jalr	-356(ra) # 8000382c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	19c080e7          	jalr	412(ra) # 80003b34 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    800019a0:	00007517          	auipc	a0,0x7
    800019a4:	6c850513          	addi	a0,a0,1736 # 80009068 <CONSOLE_STATUS+0x58>
    800019a8:	00004097          	auipc	ra,0x4
    800019ac:	35c080e7          	jalr	860(ra) # 80005d04 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	1a4080e7          	jalr	420(ra) # 80003b54 <_ZN5Riscv17disableInterruptsEv>
}
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	00013903          	ld	s2,0(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret
    800019d0:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00002097          	auipc	ra,0x2
    800019dc:	dac080e7          	jalr	-596(ra) # 80003784 <_ZdlPv>
    800019e0:	00090513          	mv	a0,s2
    800019e4:	0000f097          	auipc	ra,0xf
    800019e8:	354080e7          	jalr	852(ra) # 80010d38 <_Unwind_Resume>
    800019ec:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	d90080e7          	jalr	-624(ra) # 80003784 <_ZdlPv>
    800019fc:	00090513          	mv	a0,s2
    80001a00:	0000f097          	auipc	ra,0xf
    80001a04:	338080e7          	jalr	824(ra) # 80010d38 <_Unwind_Resume>

0000000080001a08 <_Z11threadTest2v>:
{
    80001a08:	fe010113          	addi	sp,sp,-32
    80001a0c:	00113c23          	sd	ra,24(sp)
    80001a10:	00813823          	sd	s0,16(sp)
    80001a14:	00913423          	sd	s1,8(sp)
    80001a18:	01213023          	sd	s2,0(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    80001a20:	01000513          	li	a0,16
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	d38080e7          	jalr	-712(ra) # 8000375c <_Znwm>
    80001a2c:	00050493          	mv	s1,a0
    80001a30:	00000613          	li	a2,0
    80001a34:	00000597          	auipc	a1,0x0
    80001a38:	b5058593          	addi	a1,a1,-1200 # 80001584 <_Z4idlePv>
    80001a3c:	00002097          	auipc	ra,0x2
    80001a40:	eb8080e7          	jalr	-328(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	de4080e7          	jalr	-540(ra) # 8000382c <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a50:	01000513          	li	a0,16
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	d08080e7          	jalr	-760(ra) # 8000375c <_Znwm>
    80001a5c:	00050493          	mv	s1,a0
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	b4c58593          	addi	a1,a1,-1204 # 800015b0 <_Z15thread1FunctionPv>
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	e88080e7          	jalr	-376(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	db4080e7          	jalr	-588(ra) # 8000382c <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a80:	01000513          	li	a0,16
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	cd8080e7          	jalr	-808(ra) # 8000375c <_Znwm>
    80001a8c:	00050493          	mv	s1,a0
    80001a90:	00000613          	li	a2,0
    80001a94:	00000597          	auipc	a1,0x0
    80001a98:	cc058593          	addi	a1,a1,-832 # 80001754 <_Z20thread2FunctionTest2Pv>
    80001a9c:	00002097          	auipc	ra,0x2
    80001aa0:	e58080e7          	jalr	-424(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	d84080e7          	jalr	-636(ra) # 8000382c <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	084080e7          	jalr	132(ra) # 80003b34 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	5b050513          	addi	a0,a0,1456 # 80009068 <CONSOLE_STATUS+0x58>
    80001ac0:	00004097          	auipc	ra,0x4
    80001ac4:	244080e7          	jalr	580(ra) # 80005d04 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	08c080e7          	jalr	140(ra) # 80003b54 <_ZN5Riscv17disableInterruptsEv>
}
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	00013903          	ld	s2,0(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret
    80001ae8:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00002097          	auipc	ra,0x2
    80001af4:	c94080e7          	jalr	-876(ra) # 80003784 <_ZdlPv>
    80001af8:	00090513          	mv	a0,s2
    80001afc:	0000f097          	auipc	ra,0xf
    80001b00:	23c080e7          	jalr	572(ra) # 80010d38 <_Unwind_Resume>
    80001b04:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	c78080e7          	jalr	-904(ra) # 80003784 <_ZdlPv>
    80001b14:	00090513          	mv	a0,s2
    80001b18:	0000f097          	auipc	ra,0xf
    80001b1c:	220080e7          	jalr	544(ra) # 80010d38 <_Unwind_Resume>
    80001b20:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	c5c080e7          	jalr	-932(ra) # 80003784 <_ZdlPv>
    80001b30:	00090513          	mv	a0,s2
    80001b34:	0000f097          	auipc	ra,0xf
    80001b38:	204080e7          	jalr	516(ra) # 80010d38 <_Unwind_Resume>

0000000080001b3c <_Z10mallocFreev>:
{
    80001b3c:	cc010113          	addi	sp,sp,-832
    80001b40:	32113c23          	sd	ra,824(sp)
    80001b44:	32813823          	sd	s0,816(sp)
    80001b48:	32913423          	sd	s1,808(sp)
    80001b4c:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    80001b50:	00007517          	auipc	a0,0x7
    80001b54:	52050513          	addi	a0,a0,1312 # 80009070 <CONSOLE_STATUS+0x60>
    80001b58:	00004097          	auipc	ra,0x4
    80001b5c:	1ac080e7          	jalr	428(ra) # 80005d04 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b60:	00000493          	li	s1,0
    80001b64:	0080006f          	j	80001b6c <_Z10mallocFreev+0x30>
    80001b68:	0014849b          	addiw	s1,s1,1
    80001b6c:	06300793          	li	a5,99
    80001b70:	0497c463          	blt	a5,s1,80001bb8 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b74:	06400513          	li	a0,100
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	6e0080e7          	jalr	1760(ra) # 80001258 <mem_alloc>
    80001b80:	00349793          	slli	a5,s1,0x3
    80001b84:	fe040713          	addi	a4,s0,-32
    80001b88:	00f707b3          	add	a5,a4,a5
    80001b8c:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b90:	fc051ce3          	bnez	a0,80001b68 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001b94:	00007517          	auipc	a0,0x7
    80001b98:	4ec50513          	addi	a0,a0,1260 # 80009080 <CONSOLE_STATUS+0x70>
    80001b9c:	00004097          	auipc	ra,0x4
    80001ba0:	168080e7          	jalr	360(ra) # 80005d04 <_Z11printStringPKc>
}
    80001ba4:	33813083          	ld	ra,824(sp)
    80001ba8:	33013403          	ld	s0,816(sp)
    80001bac:	32813483          	ld	s1,808(sp)
    80001bb0:	34010113          	addi	sp,sp,832
    80001bb4:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001bb8:	00000493          	li	s1,0
    80001bbc:	06300793          	li	a5,99
    80001bc0:	0297ce63          	blt	a5,s1,80001bfc <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001bc4:	00349793          	slli	a5,s1,0x3
    80001bc8:	fe040713          	addi	a4,s0,-32
    80001bcc:	00f707b3          	add	a5,a4,a5
    80001bd0:	ce07b503          	ld	a0,-800(a5)
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	6b4080e7          	jalr	1716(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001bdc:	00051663          	bnez	a0,80001be8 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001be0:	0024849b          	addiw	s1,s1,2
    80001be4:	fd9ff06f          	j	80001bbc <_Z10mallocFreev+0x80>
            printString("not OK\n");
    80001be8:	00007517          	auipc	a0,0x7
    80001bec:	49850513          	addi	a0,a0,1176 # 80009080 <CONSOLE_STATUS+0x70>
    80001bf0:	00004097          	auipc	ra,0x4
    80001bf4:	114080e7          	jalr	276(ra) # 80005d04 <_Z11printStringPKc>
            return;
    80001bf8:	fadff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001bfc:	00000493          	li	s1,0
    80001c00:	0080006f          	j	80001c08 <_Z10mallocFreev+0xcc>
    80001c04:	0024849b          	addiw	s1,s1,2
    80001c08:	06300793          	li	a5,99
    80001c0c:	0297cc63          	blt	a5,s1,80001c44 <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001c10:	01400513          	li	a0,20
    80001c14:	fffff097          	auipc	ra,0xfffff
    80001c18:	644080e7          	jalr	1604(ra) # 80001258 <mem_alloc>
    80001c1c:	00349793          	slli	a5,s1,0x3
    80001c20:	fe040713          	addi	a4,s0,-32
    80001c24:	00f707b3          	add	a5,a4,a5
    80001c28:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c2c:	fc051ce3          	bnez	a0,80001c04 <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    80001c30:	00007517          	auipc	a0,0x7
    80001c34:	45050513          	addi	a0,a0,1104 # 80009080 <CONSOLE_STATUS+0x70>
    80001c38:	00004097          	auipc	ra,0x4
    80001c3c:	0cc080e7          	jalr	204(ra) # 80005d04 <_Z11printStringPKc>
            return;
    80001c40:	f65ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c44:	00000493          	li	s1,0
    80001c48:	06300793          	li	a5,99
    80001c4c:	0297ce63          	blt	a5,s1,80001c88 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c50:	00349793          	slli	a5,s1,0x3
    80001c54:	fe040713          	addi	a4,s0,-32
    80001c58:	00f707b3          	add	a5,a4,a5
    80001c5c:	ce07b503          	ld	a0,-800(a5)
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	628080e7          	jalr	1576(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001c68:	00051663          	bnez	a0,80001c74 <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c6c:	0014849b          	addiw	s1,s1,1
    80001c70:	fd9ff06f          	j	80001c48 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001c74:	00007517          	auipc	a0,0x7
    80001c78:	40c50513          	addi	a0,a0,1036 # 80009080 <CONSOLE_STATUS+0x70>
    80001c7c:	00004097          	auipc	ra,0x4
    80001c80:	088080e7          	jalr	136(ra) # 80005d04 <_Z11printStringPKc>
            return;
    80001c84:	f21ff06f          	j	80001ba4 <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c88:	00007517          	auipc	a0,0x7
    80001c8c:	40050513          	addi	a0,a0,1024 # 80009088 <CONSOLE_STATUS+0x78>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	074080e7          	jalr	116(ra) # 80005d04 <_Z11printStringPKc>
    80001c98:	f0dff06f          	j	80001ba4 <_Z10mallocFreev+0x68>

0000000080001c9c <_Z9bigMallocv>:
{
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    80001cac:	00007517          	auipc	a0,0x7
    80001cb0:	3e450513          	addi	a0,a0,996 # 80009090 <CONSOLE_STATUS+0x80>
    80001cb4:	00004097          	auipc	ra,0x4
    80001cb8:	050080e7          	jalr	80(ra) # 80005d04 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	e5c7b783          	ld	a5,-420(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001cc4:	0007b503          	ld	a0,0(a5)
    80001cc8:	0000a797          	auipc	a5,0xa
    80001ccc:	df87b783          	ld	a5,-520(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001cd0:	0007b783          	ld	a5,0(a5)
    80001cd4:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cd8:	06450513          	addi	a0,a0,100
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	57c080e7          	jalr	1404(ra) # 80001258 <mem_alloc>
    if(p == 0)
    80001ce4:	02050263          	beqz	a0,80001d08 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    80001ce8:	00007517          	auipc	a0,0x7
    80001cec:	39850513          	addi	a0,a0,920 # 80009080 <CONSOLE_STATUS+0x70>
    80001cf0:	00004097          	auipc	ra,0x4
    80001cf4:	014080e7          	jalr	20(ra) # 80005d04 <_Z11printStringPKc>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret
        printString("OK\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	38050513          	addi	a0,a0,896 # 80009088 <CONSOLE_STATUS+0x78>
    80001d10:	00004097          	auipc	ra,0x4
    80001d14:	ff4080e7          	jalr	-12(ra) # 80005d04 <_Z11printStringPKc>
    80001d18:	fe1ff06f          	j	80001cf8 <_Z9bigMallocv+0x5c>

0000000080001d1c <_Z17lotOfSmallMallocsv>:
{
    80001d1c:	fd010113          	addi	sp,sp,-48
    80001d20:	02113423          	sd	ra,40(sp)
    80001d24:	02813023          	sd	s0,32(sp)
    80001d28:	00913c23          	sd	s1,24(sp)
    80001d2c:	01213823          	sd	s2,16(sp)
    80001d30:	01313423          	sd	s3,8(sp)
    80001d34:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001d38:	00007517          	auipc	a0,0x7
    80001d3c:	36850513          	addi	a0,a0,872 # 800090a0 <CONSOLE_STATUS+0x90>
    80001d40:	00004097          	auipc	ra,0x4
    80001d44:	fc4080e7          	jalr	-60(ra) # 80005d04 <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001d48:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d4c:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d50:	00000913          	li	s2,0
    80001d54:	0180006f          	j	80001d6c <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d58:	00a00793          	li	a5,10
    80001d5c:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d60:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d64:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d68:	00148493          	addi	s1,s1,1
    80001d6c:	000027b7          	lui	a5,0x2
    80001d70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d74:	0097ea63          	bltu	a5,s1,80001d88 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d78:	00800513          	li	a0,8
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	4dc080e7          	jalr	1244(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001d84:	fc051ae3          	bnez	a0,80001d58 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001d88:	00000613          	li	a2,0
    80001d8c:	00a00593          	li	a1,10
    80001d90:	0009051b          	sext.w	a0,s2
    80001d94:	00004097          	auipc	ra,0x4
    80001d98:	108080e7          	jalr	264(ra) # 80005e9c <_Z8printIntiii>
    printString("\n");
    80001d9c:	00007517          	auipc	a0,0x7
    80001da0:	36450513          	addi	a0,a0,868 # 80009100 <CONSOLE_STATUS+0xf0>
    80001da4:	00004097          	auipc	ra,0x4
    80001da8:	f60080e7          	jalr	-160(ra) # 80005d04 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001dac:	00291793          	slli	a5,s2,0x2
    80001db0:	01278933          	add	s2,a5,s2
    80001db4:	00191913          	slli	s2,s2,0x1
    80001db8:	03390863          	beq	s2,s3,80001de8 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	2c450513          	addi	a0,a0,708 # 80009080 <CONSOLE_STATUS+0x70>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	f40080e7          	jalr	-192(ra) # 80005d04 <_Z11printStringPKc>
}
    80001dcc:	02813083          	ld	ra,40(sp)
    80001dd0:	02013403          	ld	s0,32(sp)
    80001dd4:	01813483          	ld	s1,24(sp)
    80001dd8:	01013903          	ld	s2,16(sp)
    80001ddc:	00813983          	ld	s3,8(sp)
    80001de0:	03010113          	addi	sp,sp,48
    80001de4:	00008067          	ret
        printString("OK\n");
    80001de8:	00007517          	auipc	a0,0x7
    80001dec:	2a050513          	addi	a0,a0,672 # 80009088 <CONSOLE_STATUS+0x78>
    80001df0:	00004097          	auipc	ra,0x4
    80001df4:	f14080e7          	jalr	-236(ra) # 80005d04 <_Z11printStringPKc>
    80001df8:	fd5ff06f          	j	80001dcc <_Z17lotOfSmallMallocsv+0xb0>

0000000080001dfc <_Z7badFreev>:
{
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001e0c:	00007517          	auipc	a0,0x7
    80001e10:	2ac50513          	addi	a0,a0,684 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001e14:	00004097          	auipc	ra,0x4
    80001e18:	ef0080e7          	jalr	-272(ra) # 80005d04 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001e1c:	00800513          	li	a0,8
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	438080e7          	jalr	1080(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e28:	00250513          	addi	a0,a0,2
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	45c080e7          	jalr	1116(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001e34:	02051263          	bnez	a0,80001e58 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001e38:	00007517          	auipc	a0,0x7
    80001e3c:	24850513          	addi	a0,a0,584 # 80009080 <CONSOLE_STATUS+0x70>
    80001e40:	00004097          	auipc	ra,0x4
    80001e44:	ec4080e7          	jalr	-316(ra) # 80005d04 <_Z11printStringPKc>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
         printString("OK\n");
    80001e58:	00007517          	auipc	a0,0x7
    80001e5c:	23050513          	addi	a0,a0,560 # 80009088 <CONSOLE_STATUS+0x78>
    80001e60:	00004097          	auipc	ra,0x4
    80001e64:	ea4080e7          	jalr	-348(ra) # 80005d04 <_Z11printStringPKc>
}
    80001e68:	fe1ff06f          	j	80001e48 <_Z7badFreev+0x4c>

0000000080001e6c <_Z13stressTestingv>:
{
    80001e6c:	cc010113          	addi	sp,sp,-832
    80001e70:	32113c23          	sd	ra,824(sp)
    80001e74:	32813823          	sd	s0,816(sp)
    80001e78:	32913423          	sd	s1,808(sp)
    80001e7c:	33213023          	sd	s2,800(sp)
    80001e80:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	24450513          	addi	a0,a0,580 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e8c:	00004097          	auipc	ra,0x4
    80001e90:	e78080e7          	jalr	-392(ra) # 80005d04 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001e94:	00000493          	li	s1,0
    80001e98:	0080006f          	j	80001ea0 <_Z13stressTestingv+0x34>
    80001e9c:	0014849b          	addiw	s1,s1,1
    80001ea0:	06300793          	li	a5,99
    80001ea4:	0497c663          	blt	a5,s1,80001ef0 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001ea8:	00100513          	li	a0,1
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	3ac080e7          	jalr	940(ra) # 80001258 <mem_alloc>
    80001eb4:	00349793          	slli	a5,s1,0x3
    80001eb8:	fe040713          	addi	a4,s0,-32
    80001ebc:	00f707b3          	add	a5,a4,a5
    80001ec0:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001ec4:	fc051ce3          	bnez	a0,80001e9c <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001ec8:	00007517          	auipc	a0,0x7
    80001ecc:	1b850513          	addi	a0,a0,440 # 80009080 <CONSOLE_STATUS+0x70>
    80001ed0:	00004097          	auipc	ra,0x4
    80001ed4:	e34080e7          	jalr	-460(ra) # 80005d04 <_Z11printStringPKc>
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
    80001ef4:	11205263          	blez	s2,80001ff8 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001ef8:	00000493          	li	s1,0
    80001efc:	06300793          	li	a5,99
    80001f00:	0697cc63          	blt	a5,s1,80001f78 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001f04:	00349793          	slli	a5,s1,0x3
    80001f08:	fe040713          	addi	a4,s0,-32
    80001f0c:	00f707b3          	add	a5,a4,a5
    80001f10:	ce07b503          	ld	a0,-800(a5)
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	374080e7          	jalr	884(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f1c:	02051a63          	bnez	a0,80001f50 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001f20:	01f9551b          	srliw	a0,s2,0x1f
    80001f24:	0125053b          	addw	a0,a0,s2
    80001f28:	4015551b          	sraiw	a0,a0,0x1
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	32c080e7          	jalr	812(ra) # 80001258 <mem_alloc>
    80001f34:	00349793          	slli	a5,s1,0x3
    80001f38:	fe040713          	addi	a4,s0,-32
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f44:	02050063          	beqz	a0,80001f64 <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001f48:	0024849b          	addiw	s1,s1,2
    80001f4c:	fb1ff06f          	j	80001efc <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001f50:	00007517          	auipc	a0,0x7
    80001f54:	13050513          	addi	a0,a0,304 # 80009080 <CONSOLE_STATUS+0x70>
    80001f58:	00004097          	auipc	ra,0x4
    80001f5c:	dac080e7          	jalr	-596(ra) # 80005d04 <_Z11printStringPKc>
                return;
    80001f60:	f79ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f64:	00007517          	auipc	a0,0x7
    80001f68:	17450513          	addi	a0,a0,372 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f6c:	00004097          	auipc	ra,0x4
    80001f70:	d98080e7          	jalr	-616(ra) # 80005d04 <_Z11printStringPKc>
                return;
    80001f74:	f65ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f78:	00100493          	li	s1,1
    80001f7c:	06300793          	li	a5,99
    80001f80:	0697c863          	blt	a5,s1,80001ff0 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	ce07b503          	ld	a0,-800(a5)
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	2f4080e7          	jalr	756(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f9c:	02051663          	bnez	a0,80001fc8 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001fa0:	00090513          	mv	a0,s2
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	2b4080e7          	jalr	692(ra) # 80001258 <mem_alloc>
    80001fac:	00349793          	slli	a5,s1,0x3
    80001fb0:	fe040713          	addi	a4,s0,-32
    80001fb4:	00f707b3          	add	a5,a4,a5
    80001fb8:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001fbc:	02050063          	beqz	a0,80001fdc <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001fc0:	0024849b          	addiw	s1,s1,2
    80001fc4:	fb9ff06f          	j	80001f7c <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001fc8:	00007517          	auipc	a0,0x7
    80001fcc:	0b850513          	addi	a0,a0,184 # 80009080 <CONSOLE_STATUS+0x70>
    80001fd0:	00004097          	auipc	ra,0x4
    80001fd4:	d34080e7          	jalr	-716(ra) # 80005d04 <_Z11printStringPKc>
                return;
    80001fd8:	f01ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fdc:	00007517          	auipc	a0,0x7
    80001fe0:	0fc50513          	addi	a0,a0,252 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fe4:	00004097          	auipc	ra,0x4
    80001fe8:	d20080e7          	jalr	-736(ra) # 80005d04 <_Z11printStringPKc>
                return;
    80001fec:	eedff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001ff0:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001ff4:	f01ff06f          	j	80001ef4 <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001ff8:	00007517          	auipc	a0,0x7
    80001ffc:	09050513          	addi	a0,a0,144 # 80009088 <CONSOLE_STATUS+0x78>
    80002000:	00004097          	auipc	ra,0x4
    80002004:	d04080e7          	jalr	-764(ra) # 80005d04 <_Z11printStringPKc>
    80002008:	ed1ff06f          	j	80001ed8 <_Z13stressTestingv+0x6c>

000000008000200c <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00050493          	mv	s1,a0
    80002024:	00002097          	auipc	ra,0x2
    80002028:	a3c080e7          	jalr	-1476(ra) # 80003a60 <_ZN14PeriodicThreadC1Em>
    8000202c:	0000a797          	auipc	a5,0xa
    80002030:	95478793          	addi	a5,a5,-1708 # 8000b980 <_ZTV12TestPeriodic+0x10>
    80002034:	00f4b023          	sd	a5,0(s1)
}
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_Z11threadTest3v>:
{
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	01213023          	sd	s2,0(sp)
    80002060:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    80002064:	01000513          	li	a0,16
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	6f4080e7          	jalr	1780(ra) # 8000375c <_Znwm>
    80002070:	00050913          	mv	s2,a0
    80002074:	03200593          	li	a1,50
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f94080e7          	jalr	-108(ra) # 8000200c <_ZN12TestPeriodicC1Em>
    t->start();
    80002080:	00090513          	mv	a0,s2
    80002084:	00001097          	auipc	ra,0x1
    80002088:	7a8080e7          	jalr	1960(ra) # 8000382c <_ZN6Thread5startEv>
    while(true)
    8000208c:	0000006f          	j	8000208c <_Z11threadTest3v+0x40>
    80002090:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    80002094:	00090513          	mv	a0,s2
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	6ec080e7          	jalr	1772(ra) # 80003784 <_ZdlPv>
    800020a0:	00048513          	mv	a0,s1
    800020a4:	0000f097          	auipc	ra,0xf
    800020a8:	c94080e7          	jalr	-876(ra) # 80010d38 <_Unwind_Resume>

00000000800020ac <_Z11threadTestsv>:
{
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    threadTest3();
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	f90080e7          	jalr	-112(ra) # 8000204c <_Z11threadTest3v>

00000000800020c4 <_Z10mallocTestv>:
{
    800020c4:	fc010113          	addi	sp,sp,-64
    800020c8:	02113c23          	sd	ra,56(sp)
    800020cc:	02813823          	sd	s0,48(sp)
    800020d0:	02913423          	sd	s1,40(sp)
    800020d4:	03213023          	sd	s2,32(sp)
    800020d8:	01313c23          	sd	s3,24(sp)
    800020dc:	01413823          	sd	s4,16(sp)
    800020e0:	01513423          	sd	s5,8(sp)
    800020e4:	01613023          	sd	s6,0(sp)
    800020e8:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    800020ec:	00007517          	auipc	a0,0x7
    800020f0:	ff450513          	addi	a0,a0,-12 # 800090e0 <CONSOLE_STATUS+0xd0>
    800020f4:	00004097          	auipc	ra,0x4
    800020f8:	c10080e7          	jalr	-1008(ra) # 80005d04 <_Z11printStringPKc>
    object* o = new object;
    800020fc:	02c00513          	li	a0,44
    80002100:	00001097          	auipc	ra,0x1
    80002104:	65c080e7          	jalr	1628(ra) # 8000375c <_Znwm>
    80002108:	00050493          	mv	s1,a0
    o->a = 3;
    8000210c:	00300793          	li	a5,3
    80002110:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    80002114:	00a00513          	li	a0,10
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	140080e7          	jalr	320(ra) # 80001258 <mem_alloc>
    80002120:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    80002124:	06400513          	li	a0,100
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	130080e7          	jalr	304(ra) # 80001258 <mem_alloc>
    80002130:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    80002134:	3e800513          	li	a0,1000
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	120080e7          	jalr	288(ra) # 80001258 <mem_alloc>
    80002140:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    80002144:	00002537          	lui	a0,0x2
    80002148:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	10c080e7          	jalr	268(ra) # 80001258 <mem_alloc>
    80002154:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002158:	00100513          	li	a0,1
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	0fc080e7          	jalr	252(ra) # 80001258 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    80002164:	06090c63          	beqz	s2,800021dc <_Z10mallocTestv+0x118>
    80002168:	00050b13          	mv	s6,a0
    8000216c:	06098863          	beqz	s3,800021dc <_Z10mallocTestv+0x118>
    80002170:	060a0663          	beqz	s4,800021dc <_Z10mallocTestv+0x118>
    80002174:	060a8463          	beqz	s5,800021dc <_Z10mallocTestv+0x118>
    80002178:	06050263          	beqz	a0,800021dc <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    8000217c:	00090513          	mv	a0,s2
    80002180:	00001097          	auipc	ra,0x1
    80002184:	604080e7          	jalr	1540(ra) # 80003784 <_ZdlPv>
    delete (uint64*)m3;
    80002188:	000a0513          	mv	a0,s4
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	5f8080e7          	jalr	1528(ra) # 80003784 <_ZdlPv>
    delete (uint64*)m4;
    80002194:	000a8513          	mv	a0,s5
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	5ec080e7          	jalr	1516(ra) # 80003784 <_ZdlPv>
    delete (uint64*)m2;
    800021a0:	00098513          	mv	a0,s3
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	5e0080e7          	jalr	1504(ra) # 80003784 <_ZdlPv>
    delete (uint64*)m5;
    800021ac:	000b0513          	mv	a0,s6
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	5d4080e7          	jalr	1492(ra) # 80003784 <_ZdlPv>
    delete o;
    800021b8:	00048863          	beqz	s1,800021c8 <_Z10mallocTestv+0x104>
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	5c4080e7          	jalr	1476(ra) # 80003784 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021c8:	00007517          	auipc	a0,0x7
    800021cc:	f4050513          	addi	a0,a0,-192 # 80009108 <CONSOLE_STATUS+0xf8>
    800021d0:	00004097          	auipc	ra,0x4
    800021d4:	b34080e7          	jalr	-1228(ra) # 80005d04 <_Z11printStringPKc>
    800021d8:	0140006f          	j	800021ec <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	ea450513          	addi	a0,a0,-348 # 80009080 <CONSOLE_STATUS+0x70>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	b20080e7          	jalr	-1248(ra) # 80005d04 <_Z11printStringPKc>
}
    800021ec:	03813083          	ld	ra,56(sp)
    800021f0:	03013403          	ld	s0,48(sp)
    800021f4:	02813483          	ld	s1,40(sp)
    800021f8:	02013903          	ld	s2,32(sp)
    800021fc:	01813983          	ld	s3,24(sp)
    80002200:	01013a03          	ld	s4,16(sp)
    80002204:	00813a83          	ld	s5,8(sp)
    80002208:	00013b03          	ld	s6,0(sp)
    8000220c:	04010113          	addi	sp,sp,64
    80002210:	00008067          	ret

0000000080002214 <_Z16mallocEverythingv>:
{
    80002214:	fe010113          	addi	sp,sp,-32
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	00813823          	sd	s0,16(sp)
    80002220:	00913423          	sd	s1,8(sp)
    80002224:	02010413          	addi	s0,sp,32
    printString("Testing allocating whole address space\n\n");
    80002228:	00007517          	auipc	a0,0x7
    8000222c:	f1050513          	addi	a0,a0,-240 # 80009138 <CONSOLE_STATUS+0x128>
    80002230:	00004097          	auipc	ra,0x4
    80002234:	ad4080e7          	jalr	-1324(ra) # 80005d04 <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	8887b783          	ld	a5,-1912(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002240:	0007b503          	ld	a0,0(a5)
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	8d47b783          	ld	a5,-1836(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000224c:	0007b783          	ld	a5,0(a5)
    80002250:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    80002254:	ff050513          	addi	a0,a0,-16
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	000080e7          	jalr	ra # 80001258 <mem_alloc>
    if(m!=nullptr){
    80002260:	02050463          	beqz	a0,80002288 <_Z16mallocEverythingv+0x74>
        printString("not OK\n");
    80002264:	00007517          	auipc	a0,0x7
    80002268:	e1c50513          	addi	a0,a0,-484 # 80009080 <CONSOLE_STATUS+0x70>
    8000226c:	00004097          	auipc	ra,0x4
    80002270:	a98080e7          	jalr	-1384(ra) # 80005d04 <_Z11printStringPKc>
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	8907b783          	ld	a5,-1904(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002290:	0007b503          	ld	a0,0(a5)
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	82c7b783          	ld	a5,-2004(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000229c:	0007b783          	ld	a5,0(a5)
    800022a0:	40f50533          	sub	a0,a0,a5
    800022a4:	ff050513          	addi	a0,a0,-16
    800022a8:	00655513          	srli	a0,a0,0x6
    800022ac:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    800022b0:	00651513          	slli	a0,a0,0x6
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	fa4080e7          	jalr	-92(ra) # 80001258 <mem_alloc>
    800022bc:	00050493          	mv	s1,a0
    if(m==nullptr){
    800022c0:	02050a63          	beqz	a0,800022f4 <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    800022c4:	00100513          	li	a0,1
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	f90080e7          	jalr	-112(ra) # 80001258 <mem_alloc>
    if(small_chunk == nullptr){
    800022d0:	02050c63          	beqz	a0,80002308 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800022d4:	00048513          	mv	a0,s1
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	4ac080e7          	jalr	1196(ra) # 80003784 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	e8850513          	addi	a0,a0,-376 # 80009168 <CONSOLE_STATUS+0x158>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	a1c080e7          	jalr	-1508(ra) # 80005d04 <_Z11printStringPKc>
    800022f0:	f85ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	d8c50513          	addi	a0,a0,-628 # 80009080 <CONSOLE_STATUS+0x70>
    800022fc:	00004097          	auipc	ra,0x4
    80002300:	a08080e7          	jalr	-1528(ra) # 80005d04 <_Z11printStringPKc>
        return;
    80002304:	f71ff06f          	j	80002274 <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    80002308:	00007517          	auipc	a0,0x7
    8000230c:	d7850513          	addi	a0,a0,-648 # 80009080 <CONSOLE_STATUS+0x70>
    80002310:	00004097          	auipc	ra,0x4
    80002314:	9f4080e7          	jalr	-1548(ra) # 80005d04 <_Z11printStringPKc>
        return;
    80002318:	f5dff06f          	j	80002274 <_Z16mallocEverythingv+0x60>

000000008000231c <_Z17mallocGapFillTestv>:
{
    8000231c:	f6010113          	addi	sp,sp,-160
    80002320:	08113c23          	sd	ra,152(sp)
    80002324:	08813823          	sd	s0,144(sp)
    80002328:	08913423          	sd	s1,136(sp)
    8000232c:	09213023          	sd	s2,128(sp)
    80002330:	07313c23          	sd	s3,120(sp)
    80002334:	07413823          	sd	s4,112(sp)
    80002338:	07513423          	sd	s5,104(sp)
    8000233c:	07613023          	sd	s6,96(sp)
    80002340:	05713c23          	sd	s7,88(sp)
    80002344:	05813823          	sd	s8,80(sp)
    80002348:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000234c:	00007517          	auipc	a0,0x7
    80002350:	e5450513          	addi	a0,a0,-428 # 800091a0 <CONSOLE_STATUS+0x190>
    80002354:	00004097          	auipc	ra,0x4
    80002358:	9b0080e7          	jalr	-1616(ra) # 80005d04 <_Z11printStringPKc>
    for(int i=0;i<N;i++)
    8000235c:	00000493          	li	s1,0
    80002360:	00900793          	li	a5,9
    80002364:	0697c863          	blt	a5,s1,800023d4 <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002368:	0064951b          	slliw	a0,s1,0x6
    8000236c:	0015051b          	addiw	a0,a0,1
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	ee8080e7          	jalr	-280(ra) # 80001258 <mem_alloc>
    80002378:	00349793          	slli	a5,s1,0x3
    8000237c:	fb040713          	addi	a4,s0,-80
    80002380:	00f707b3          	add	a5,a4,a5
    80002384:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002388:	00050663          	beqz	a0,80002394 <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    8000238c:	0014849b          	addiw	s1,s1,1
    80002390:	fd1ff06f          	j	80002360 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    80002394:	00007517          	auipc	a0,0x7
    80002398:	cec50513          	addi	a0,a0,-788 # 80009080 <CONSOLE_STATUS+0x70>
    8000239c:	00004097          	auipc	ra,0x4
    800023a0:	968080e7          	jalr	-1688(ra) # 80005d04 <_Z11printStringPKc>
}
    800023a4:	09813083          	ld	ra,152(sp)
    800023a8:	09013403          	ld	s0,144(sp)
    800023ac:	08813483          	ld	s1,136(sp)
    800023b0:	08013903          	ld	s2,128(sp)
    800023b4:	07813983          	ld	s3,120(sp)
    800023b8:	07013a03          	ld	s4,112(sp)
    800023bc:	06813a83          	ld	s5,104(sp)
    800023c0:	06013b03          	ld	s6,96(sp)
    800023c4:	05813b83          	ld	s7,88(sp)
    800023c8:	05013c03          	ld	s8,80(sp)
    800023cc:	0a010113          	addi	sp,sp,160
    800023d0:	00008067          	ret
    delete (uint64*)m[2];
    800023d4:	f7043503          	ld	a0,-144(s0)
    800023d8:	00050663          	beqz	a0,800023e4 <_Z17mallocGapFillTestv+0xc8>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	3a8080e7          	jalr	936(ra) # 80003784 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800023e4:	00100513          	li	a0,1
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	e70080e7          	jalr	-400(ra) # 80001258 <mem_alloc>
    800023f0:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800023f4:	00100513          	li	a0,1
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	e60080e7          	jalr	-416(ra) # 80001258 <mem_alloc>
    80002400:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    80002404:	00100513          	li	a0,1
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e50080e7          	jalr	-432(ra) # 80001258 <mem_alloc>
    80002410:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    80002414:	08048863          	beqz	s1,800024a4 <_Z17mallocGapFillTestv+0x188>
    80002418:	08090663          	beqz	s2,800024a4 <_Z17mallocGapFillTestv+0x188>
    8000241c:	08050463          	beqz	a0,800024a4 <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    80002420:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    80002424:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002428:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    8000242c:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002430:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    80002434:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    80002438:	0897f063          	bgeu	a5,s1,800024b8 <_Z17mallocGapFillTestv+0x19c>
    8000243c:	06a4fe63          	bgeu	s1,a0,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002440:	0727fc63          	bgeu	a5,s2,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002444:	06a97a63          	bgeu	s2,a0,800024b8 <_Z17mallocGapFillTestv+0x19c>
    80002448:	07367863          	bgeu	a2,s3,800024b8 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    8000244c:	00050663          	beqz	a0,80002458 <_Z17mallocGapFillTestv+0x13c>
    80002450:	00001097          	auipc	ra,0x1
    80002454:	334080e7          	jalr	820(ra) # 80003784 <_ZdlPv>
    delete (uint64*)m[4];
    80002458:	f8043503          	ld	a0,-128(s0)
    8000245c:	00050663          	beqz	a0,80002468 <_Z17mallocGapFillTestv+0x14c>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	324080e7          	jalr	804(ra) # 80003784 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002468:	28000513          	li	a0,640
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	dec080e7          	jalr	-532(ra) # 80001258 <mem_alloc>
    80002474:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002478:	24000513          	li	a0,576
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	ddc080e7          	jalr	-548(ra) # 80001258 <mem_alloc>
    80002484:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002488:	040c0263          	beqz	s8,800024cc <_Z17mallocGapFillTestv+0x1b0>
    8000248c:	04050063          	beqz	a0,800024cc <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002490:	04aa7863          	bgeu	s4,a0,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    80002494:	04ab7663          	bgeu	s6,a0,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    80002498:	055c7463          	bgeu	s8,s5,800024e0 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    8000249c:	00000a13          	li	s4,0
    800024a0:	0580006f          	j	800024f8 <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00004097          	auipc	ra,0x4
    800024b0:	858080e7          	jalr	-1960(ra) # 80005d04 <_Z11printStringPKc>
        return;
    800024b4:	ef1ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00004097          	auipc	ra,0x4
    800024c4:	844080e7          	jalr	-1980(ra) # 80005d04 <_Z11printStringPKc>
        return;
    800024c8:	eddff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024cc:	00007517          	auipc	a0,0x7
    800024d0:	bb450513          	addi	a0,a0,-1100 # 80009080 <CONSOLE_STATUS+0x70>
    800024d4:	00004097          	auipc	ra,0x4
    800024d8:	830080e7          	jalr	-2000(ra) # 80005d04 <_Z11printStringPKc>
        return;
    800024dc:	ec9ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	ba050513          	addi	a0,a0,-1120 # 80009080 <CONSOLE_STATUS+0x70>
    800024e8:	00004097          	auipc	ra,0x4
    800024ec:	81c080e7          	jalr	-2020(ra) # 80005d04 <_Z11printStringPKc>
        return;
    800024f0:	eb5ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800024f4:	001a0a1b          	addiw	s4,s4,1
    800024f8:	00900793          	li	a5,9
    800024fc:	0347c263          	blt	a5,s4,80002520 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    80002500:	003a1793          	slli	a5,s4,0x3
    80002504:	fb040713          	addi	a4,s0,-80
    80002508:	00f707b3          	add	a5,a4,a5
    8000250c:	fb07b503          	ld	a0,-80(a5)
    80002510:	fe0502e3          	beqz	a0,800024f4 <_Z17mallocGapFillTestv+0x1d8>
    80002514:	00001097          	auipc	ra,0x1
    80002518:	270080e7          	jalr	624(ra) # 80003784 <_ZdlPv>
    8000251c:	fd9ff06f          	j	800024f4 <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    80002520:	00048513          	mv	a0,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	260080e7          	jalr	608(ra) # 80003784 <_ZdlPv>
    delete (uint64*)tmp2;
    8000252c:	00090513          	mv	a0,s2
    80002530:	00001097          	auipc	ra,0x1
    80002534:	254080e7          	jalr	596(ra) # 80003784 <_ZdlPv>
    delete (uint64*)tmp3;
    80002538:	00098513          	mv	a0,s3
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	248080e7          	jalr	584(ra) # 80003784 <_ZdlPv>
    delete (uint64*)tmp4;
    80002544:	000c0513          	mv	a0,s8
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	23c080e7          	jalr	572(ra) # 80003784 <_ZdlPv>
    delete (uint64*)tmp5;
    80002550:	000b8513          	mv	a0,s7
    80002554:	00001097          	auipc	ra,0x1
    80002558:	230080e7          	jalr	560(ra) # 80003784 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	c8c50513          	addi	a0,a0,-884 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	7a0080e7          	jalr	1952(ra) # 80005d04 <_Z11printStringPKc>
    8000256c:	e39ff06f          	j	800023a4 <_Z17mallocGapFillTestv+0x88>

0000000080002570 <_Z21memoryAllocationTestsv>:
{
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002580:	00000097          	auipc	ra,0x0
    80002584:	d9c080e7          	jalr	-612(ra) # 8000231c <_Z17mallocGapFillTestv>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_Z8semTest1v>:

void semTest1()
{
    80002598:	fe010113          	addi	sp,sp,-32
    8000259c:	00113c23          	sd	ra,24(sp)
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    800025a8:	00a00593          	li	a1,10
    800025ac:	00009517          	auipc	a0,0x9
    800025b0:	5e450513          	addi	a0,a0,1508 # 8000bb90 <spaceAvailable>
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	dc8080e7          	jalr	-568(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    800025bc:	00000593          	li	a1,0
    800025c0:	00009517          	auipc	a0,0x9
    800025c4:	5b850513          	addi	a0,a0,1464 # 8000bb78 <itemAvailable>
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	db4080e7          	jalr	-588(ra) # 8000137c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800025d0:	00000613          	li	a2,0
    800025d4:	fffff597          	auipc	a1,0xfffff
    800025d8:	2bc58593          	addi	a1,a1,700 # 80001890 <_Z9producerAPv>
    800025dc:	fe840513          	addi	a0,s0,-24
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	cd4080e7          	jalr	-812(ra) # 800012b4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    800025e8:	00000613          	li	a2,0
    800025ec:	fffff597          	auipc	a1,0xfffff
    800025f0:	21c58593          	addi	a1,a1,540 # 80001808 <_Z9consumerAPv>
    800025f4:	fe040513          	addi	a0,s0,-32
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	cbc080e7          	jalr	-836(ra) # 800012b4 <thread_create>
    80002600:	00c0006f          	j	8000260c <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	d30080e7          	jalr	-720(ra) # 80001334 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    8000260c:	fe843503          	ld	a0,-24(s0)
    80002610:	00000097          	auipc	ra,0x0
    80002614:	51c080e7          	jalr	1308(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80002618:	fe0506e3          	beqz	a0,80002604 <_Z8semTest1v+0x6c>
    8000261c:	fe843503          	ld	a0,-24(s0)
    80002620:	00000097          	auipc	ra,0x0
    80002624:	50c080e7          	jalr	1292(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80002628:	fc050ee3          	beqz	a0,80002604 <_Z8semTest1v+0x6c>
}
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret

000000008000263c <_Z14semaphoreTestsv>:
{
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	01010413          	addi	s0,sp,16
    semTest1();
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	f4c080e7          	jalr	-180(ra) # 80002598 <_Z8semTest1v>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_Z12consoleTest1v>:

void consoleTest1()
{
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002678:	00000493          	li	s1,0
    8000267c:	06300793          	li	a5,99
    80002680:	0097ca63          	blt	a5,s1,80002694 <_Z12consoleTest1v+0x30>
    {
        getc();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	e8c080e7          	jalr	-372(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    8000268c:	0014849b          	addiw	s1,s1,1
    80002690:	fedff06f          	j	8000267c <_Z12consoleTest1v+0x18>
    }
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	02010113          	addi	sp,sp,32
    800026a4:	00008067          	ret

00000000800026a8 <_Z12consoleTestsv>:

void consoleTests()
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    consoleTest1();
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	fac080e7          	jalr	-84(ra) # 80002664 <_Z12consoleTest1v>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_Z7myTestsv>:
{
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    consoleTests();
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	fc8080e7          	jalr	-56(ra) # 800026a8 <_Z12consoleTestsv>
}
    800026e8:	00813083          	ld	ra,8(sp)
    800026ec:	00013403          	ld	s0,0(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_Z15changeModeTest1v>:


void changeModeTest1()
{
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00813423          	sd	s0,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    // u user niti smo
    __asm__ volatile("csrr a0, sstatus"); //treba da pukne
    80002704:	10002573          	csrr	a0,sstatus
}
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_Z15changeModeTestsv>:

void changeModeTests()
{
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    changeModeTest1();
    80002724:	00000097          	auipc	ra,0x0
    80002728:	fd4080e7          	jalr	-44(ra) # 800026f8 <_Z15changeModeTest1v>
}
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	1d478793          	addi	a5,a5,468 # 8000b950 <_ZTV14PeriodicThread+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	f64080e7          	jalr	-156(ra) # 800036ec <_ZN6ThreadD1Ev>
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_ZN14PeriodicThreadD0Ev>:
    800027a0:	fe010113          	addi	sp,sp,-32
    800027a4:	00113c23          	sd	ra,24(sp)
    800027a8:	00813823          	sd	s0,16(sp)
    800027ac:	00913423          	sd	s1,8(sp)
    800027b0:	02010413          	addi	s0,sp,32
    800027b4:	00050493          	mv	s1,a0
    800027b8:	00009797          	auipc	a5,0x9
    800027bc:	19878793          	addi	a5,a5,408 # 8000b950 <_ZTV14PeriodicThread+0x10>
    800027c0:	00f53023          	sd	a5,0(a0)
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	f28080e7          	jalr	-216(ra) # 800036ec <_ZN6ThreadD1Ev>
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	fb4080e7          	jalr	-76(ra) # 80003784 <_ZdlPv>
    800027d8:	01813083          	ld	ra,24(sp)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	00813483          	ld	s1,8(sp)
    800027e4:	02010113          	addi	sp,sp,32
    800027e8:	00008067          	ret

00000000800027ec <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	00009797          	auipc	a5,0x9
    80002800:	15478793          	addi	a5,a5,340 # 8000b950 <_ZTV14PeriodicThread+0x10>
    80002804:	00f53023          	sd	a5,0(a0)
    80002808:	00001097          	auipc	ra,0x1
    8000280c:	ee4080e7          	jalr	-284(ra) # 800036ec <_ZN6ThreadD1Ev>
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN12TestPeriodicD0Ev>:
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	02010413          	addi	s0,sp,32
    80002834:	00050493          	mv	s1,a0
    80002838:	00009797          	auipc	a5,0x9
    8000283c:	11878793          	addi	a5,a5,280 # 8000b950 <_ZTV14PeriodicThread+0x10>
    80002840:	00f53023          	sd	a5,0(a0)
    80002844:	00001097          	auipc	ra,0x1
    80002848:	ea8080e7          	jalr	-344(ra) # 800036ec <_ZN6ThreadD1Ev>
    8000284c:	00048513          	mv	a0,s1
    80002850:	00001097          	auipc	ra,0x1
    80002854:	f34080e7          	jalr	-204(ra) # 80003784 <_ZdlPv>
    80002858:	01813083          	ld	ra,24(sp)
    8000285c:	01013403          	ld	s0,16(sp)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	02010113          	addi	sp,sp,32
    80002868:	00008067          	ret

000000008000286c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00113423          	sd	ra,8(sp)
    80002874:	00813023          	sd	s0,0(sp)
    80002878:	01010413          	addi	s0,sp,16
    //trapPrintString("Runner started...\n");
    Riscv::popSppSpie();
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	320080e7          	jalr	800(ra) # 80003b9c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002884:	00009797          	auipc	a5,0x9
    80002888:	31c7b783          	ld	a5,796(a5) # 8000bba0 <_ZN3PCB7runningE>
    8000288c:	0287b703          	ld	a4,40(a5)
    80002890:	0307b503          	ld	a0,48(a5)
    80002894:	000700e7          	jalr	a4

    //printString("Runner ended...\n");

    thread_exit();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	abc080e7          	jalr	-1348(ra) # 80001354 <thread_exit>
}
    800028a0:	00813083          	ld	ra,8(sp)
    800028a4:	00013403          	ld	s0,0(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00813423          	sd	s0,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    })
    800028bc:	00050023          	sb	zero,0(a0)
    800028c0:	00e53c23          	sd	a4,24(a0)
    800028c4:	02053023          	sd	zero,32(a0)
    800028c8:	02b53423          	sd	a1,40(a0)
    800028cc:	02c53823          	sd	a2,48(a0)
    800028d0:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800028d4:	000017b7          	lui	a5,0x1
    800028d8:	00f686b3          	add	a3,a3,a5
    })
    800028dc:	04d53423          	sd	a3,72(a0)
    800028e0:	00000797          	auipc	a5,0x0
    800028e4:	f8c78793          	addi	a5,a5,-116 # 8000286c <_ZN3PCB6runnerEv>
    800028e8:	04f53823          	sd	a5,80(a0)
    nextPCB = 0;
    800028ec:	00053423          	sd	zero,8(a0)
}
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN3PCB5sleepEm>:
{
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
}
    80002908:	00813403          	ld	s0,8(sp)
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00008067          	ret

0000000080002914 <_ZN3PCB5startEv>:
{
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00113423          	sd	ra,8(sp)
    8000291c:	00813023          	sd	s0,0(sp)
    80002920:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002924:	00001097          	auipc	ra,0x1
    80002928:	c74080e7          	jalr	-908(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
}
    8000292c:	00813083          	ld	ra,8(sp)
    80002930:	00013403          	ld	s0,0(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00113c23          	sd	ra,24(sp)
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	01213023          	sd	s2,0(sp)
    80002950:	02010413          	addi	s0,sp,32
    //trapPrintString("Dispatch called...\n");
    PCB* old = running;
    80002954:	00009497          	auipc	s1,0x9
    80002958:	24c4b483          	ld	s1,588(s1) # 8000bba0 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    8000295c:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002960:	00100793          	li	a5,1
    80002964:	04f70a63          	beq	a4,a5,800029b8 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	c84080e7          	jalr	-892(ra) # 800035ec <_ZN9Scheduler3getEv>
    80002970:	00009917          	auipc	s2,0x9
    80002974:	23090913          	addi	s2,s2,560 # 8000bba0 <_ZN3PCB7runningE>
    80002978:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    8000297c:	00100793          	li	a5,1
    80002980:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);
    //trapPrintString("Switching context...\n");

    Riscv::changePrivMode();
    80002984:	00001097          	auipc	ra,0x1
    80002988:	3d8080e7          	jalr	984(ra) # 80003d5c <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    8000298c:	00093583          	ld	a1,0(s2)
    80002990:	04858593          	addi	a1,a1,72
    80002994:	04848513          	addi	a0,s1,72
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	8a0080e7          	jalr	-1888(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	00013903          	ld	s2,0(sp)
    800029b0:	02010113          	addi	sp,sp,32
    800029b4:	00008067          	ret
        Scheduler::put(old);
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	bdc080e7          	jalr	-1060(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    800029c4:	fa5ff06f          	j	80002968 <_ZN3PCB8dispatchEv+0x2c>

00000000800029c8 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800029d8:	00002097          	auipc	ra,0x2
    800029dc:	a68080e7          	jalr	-1432(ra) # 80004440 <_Z7kmallocm>
}
    800029e0:	00813083          	ld	ra,8(sp)
    800029e4:	00013403          	ld	s0,0(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00113423          	sd	ra,8(sp)
    800029f8:	00813023          	sd	s0,0(sp)
    800029fc:	01010413          	addi	s0,sp,16
    kfree(p);
    80002a00:	00002097          	auipc	ra,0x2
    80002a04:	aa4080e7          	jalr	-1372(ra) # 800044a4 <_Z5kfreePv>
}
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    80002a28:	03853503          	ld	a0,56(a0)
    80002a2c:	00002097          	auipc	ra,0x2
    80002a30:	a78080e7          	jalr	-1416(ra) # 800044a4 <_Z5kfreePv>
}
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002a44:	fd010113          	addi	sp,sp,-48
    80002a48:	02113423          	sd	ra,40(sp)
    80002a4c:	02813023          	sd	s0,32(sp)
    80002a50:	00913c23          	sd	s1,24(sp)
    80002a54:	01213823          	sd	s2,16(sp)
    80002a58:	01313423          	sd	s3,8(sp)
    80002a5c:	01413023          	sd	s4,0(sp)
    80002a60:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002a64:	05800513          	li	a0,88
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	f60080e7          	jalr	-160(ra) # 800029c8 <_ZN3PCBnwEm>
    80002a70:	00050493          	mv	s1,a0
    80002a74:	00000713          	li	a4,0
    80002a78:	00000693          	li	a3,0
    80002a7c:	00000613          	li	a2,0
    80002a80:	00000593          	li	a1,0
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	e2c080e7          	jalr	-468(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	e84080e7          	jalr	-380(ra) # 80002914 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a98:	00100793          	li	a5,1
    80002a9c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002aa0:	00001097          	auipc	ra,0x1
    80002aa4:	b4c080e7          	jalr	-1204(ra) # 800035ec <_ZN9Scheduler3getEv>
    80002aa8:	00009917          	auipc	s2,0x9
    80002aac:	0f890913          	addi	s2,s2,248 # 8000bba0 <_ZN3PCB7runningE>
    80002ab0:	00a93023          	sd	a0,0(s2)
    80002ab4:	00100a13          	li	s4,1
    80002ab8:	05452023          	sw	s4,64(a0)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002abc:	00001537          	lui	a0,0x1
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	980080e7          	jalr	-1664(ra) # 80004440 <_Z7kmallocm>
    80002ac8:	00050993          	mv	s3,a0
    80002acc:	05800513          	li	a0,88
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	ef8080e7          	jalr	-264(ra) # 800029c8 <_ZN3PCBnwEm>
    80002ad8:	00050493          	mv	s1,a0
    80002adc:	00200713          	li	a4,2
    80002ae0:	00098693          	mv	a3,s3
    80002ae4:	00000613          	li	a2,0
    80002ae8:	00009597          	auipc	a1,0x9
    80002aec:	0105b583          	ld	a1,16(a1) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	dc0080e7          	jalr	-576(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002af8:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002afc:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002b00:	00893503          	ld	a0,8(s2)
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	e10080e7          	jalr	-496(ra) # 80002914 <_ZN3PCB5startEv>
}
    80002b0c:	02813083          	ld	ra,40(sp)
    80002b10:	02013403          	ld	s0,32(sp)
    80002b14:	01813483          	ld	s1,24(sp)
    80002b18:	01013903          	ld	s2,16(sp)
    80002b1c:	00813983          	ld	s3,8(sp)
    80002b20:	00013a03          	ld	s4,0(sp)
    80002b24:	03010113          	addi	sp,sp,48
    80002b28:	00008067          	ret

0000000080002b2c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002b38:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002b3c:	ffd50513          	addi	a0,a0,-3
}
    80002b40:	00153513          	seqz	a0,a0
    80002b44:	00813403          	ld	s0,8(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    //trapPrintString("Exiting thread...\n");
    PCB::timeSliceCounter = 0;
    80002b60:	00009797          	auipc	a5,0x9
    80002b64:	04078793          	addi	a5,a5,64 # 8000bba0 <_ZN3PCB7runningE>
    80002b68:	0007b823          	sd	zero,16(a5)
    PCB::running->setState(PCB::FINISHED);
    80002b6c:	0007b783          	ld	a5,0(a5)
    80002b70:	00300713          	li	a4,3
    80002b74:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	dc4080e7          	jalr	-572(ra) # 8000293c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b80:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	1a0080e7          	jalr	416(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00113423          	sd	ra,8(sp)
    80002ba4:	00813023          	sd	s0,0(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002bac:	00009797          	auipc	a5,0x9
    80002bb0:	0007b223          	sd	zero,4(a5) # 8000bbb0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	d88080e7          	jalr	-632(ra) # 8000293c <_ZN3PCB8dispatchEv>
}
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002bcc:	ff010113          	addi	sp,sp,-16
    80002bd0:	00113423          	sd	ra,8(sp)
    80002bd4:	00813023          	sd	s0,0(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002bdc:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002be0:	00009717          	auipc	a4,0x9
    80002be4:	fc070713          	addi	a4,a4,-64 # 8000bba0 <_ZN3PCB7runningE>
    80002be8:	00073823          	sd	zero,16(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002bec:	00073703          	ld	a4,0(a4)
    80002bf0:	00009697          	auipc	a3,0x9
    80002bf4:	f006b683          	ld	a3,-256(a3) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bf8:	0006b683          	ld	a3,0(a3)
    80002bfc:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002c00:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	68c080e7          	jalr	1676(ra) # 80003290 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	d30080e7          	jalr	-720(ra) # 8000293c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002c14:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002c18:	00001097          	auipc	ra,0x1
    80002c1c:	10c080e7          	jalr	268(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c20:	00813083          	ld	ra,8(sp)
    80002c24:	00013403          	ld	s0,0(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002c30:	fd010113          	addi	sp,sp,-48
    80002c34:	02113423          	sd	ra,40(sp)
    80002c38:	02813023          	sd	s0,32(sp)
    80002c3c:	00913c23          	sd	s1,24(sp)
    80002c40:	01213823          	sd	s2,16(sp)
    80002c44:	01313423          	sd	s3,8(sp)
    80002c48:	01413023          	sd	s4,0(sp)
    80002c4c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c50:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c54:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c58:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c5c:	05800513          	li	a0,88
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	d68080e7          	jalr	-664(ra) # 800029c8 <_ZN3PCBnwEm>
    80002c68:	00050493          	mv	s1,a0
    80002c6c:	00200713          	li	a4,2
    80002c70:	00009697          	auipc	a3,0x9
    80002c74:	f486b683          	ld	a3,-184(a3) # 8000bbb8 <_ZN3PCB10savedRegA4E>
    80002c78:	000a0613          	mv	a2,s4
    80002c7c:	00098593          	mv	a1,s3
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	c30080e7          	jalr	-976(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c88:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c8c:	02048e63          	beqz	s1,80002cc8 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002c90:	00048513          	mv	a0,s1
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	c80080e7          	jalr	-896(ra) # 80002914 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c9c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	084080e7          	jalr	132(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ca8:	02813083          	ld	ra,40(sp)
    80002cac:	02013403          	ld	s0,32(sp)
    80002cb0:	01813483          	ld	s1,24(sp)
    80002cb4:	01013903          	ld	s2,16(sp)
    80002cb8:	00813983          	ld	s3,8(sp)
    80002cbc:	00013a03          	ld	s4,0(sp)
    80002cc0:	03010113          	addi	sp,sp,48
    80002cc4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cc8:	fff00513          	li	a0,-1
    80002ccc:	fd5ff06f          	j	80002ca0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002cd0 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00113423          	sd	ra,8(sp)
    80002cd8:	00813023          	sd	s0,0(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002ce0:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002ce4:	02050463          	beqz	a0,80002d0c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	c2c080e7          	jalr	-980(ra) # 80002914 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002cf0:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	030080e7          	jalr	48(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002cfc:	00813083          	ld	ra,8(sp)
    80002d00:	00013403          	ld	s0,0(sp)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002d0c:	fff00513          	li	a0,-1
    80002d10:	fe5ff06f          	j	80002cf4 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002d14 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002d14:	fd010113          	addi	sp,sp,-48
    80002d18:	02113423          	sd	ra,40(sp)
    80002d1c:	02813023          	sd	s0,32(sp)
    80002d20:	00913c23          	sd	s1,24(sp)
    80002d24:	01213823          	sd	s2,16(sp)
    80002d28:	01313423          	sd	s3,8(sp)
    80002d2c:	01413023          	sd	s4,0(sp)
    80002d30:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002d34:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002d38:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002d3c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002d40:	05800513          	li	a0,88
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	c84080e7          	jalr	-892(ra) # 800029c8 <_ZN3PCBnwEm>
    80002d4c:	00050493          	mv	s1,a0
    80002d50:	00200713          	li	a4,2
    80002d54:	00009697          	auipc	a3,0x9
    80002d58:	e646b683          	ld	a3,-412(a3) # 8000bbb8 <_ZN3PCB10savedRegA4E>
    80002d5c:	000a0613          	mv	a2,s4
    80002d60:	00098593          	mv	a1,s3
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	b4c080e7          	jalr	-1204(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002d6c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002d70:	02048863          	beqz	s1,80002da0 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002d74:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	fac080e7          	jalr	-84(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d80:	02813083          	ld	ra,40(sp)
    80002d84:	02013403          	ld	s0,32(sp)
    80002d88:	01813483          	ld	s1,24(sp)
    80002d8c:	01013903          	ld	s2,16(sp)
    80002d90:	00813983          	ld	s3,8(sp)
    80002d94:	00013a03          	ld	s4,0(sp)
    80002d98:	03010113          	addi	sp,sp,48
    80002d9c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002da0:	fff00513          	li	a0,-1
    80002da4:	fd5ff06f          	j	80002d78 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002da8 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002da8:	fe010113          	addi	sp,sp,-32
    80002dac:	00113c23          	sd	ra,24(sp)
    80002db0:	00813823          	sd	s0,16(sp)
    80002db4:	00913423          	sd	s1,8(sp)
    80002db8:	01213023          	sd	s2,0(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002dc0:	01800513          	li	a0,24
    80002dc4:	00002097          	auipc	ra,0x2
    80002dc8:	990080e7          	jalr	-1648(ra) # 80004754 <_ZN10KSemaphorenwEm>
    80002dcc:	00050493          	mv	s1,a0
    80002dd0:	00000593          	li	a1,0
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	730080e7          	jalr	1840(ra) # 80004504 <_ZN10KSemaphoreC1Ei>
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	de97b223          	sd	s1,-540(a5) # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002de4:	01800513          	li	a0,24
    80002de8:	00002097          	auipc	ra,0x2
    80002dec:	96c080e7          	jalr	-1684(ra) # 80004754 <_ZN10KSemaphorenwEm>
    80002df0:	00050493          	mv	s1,a0
    80002df4:	00000593          	li	a1,0
    80002df8:	00001097          	auipc	ra,0x1
    80002dfc:	70c080e7          	jalr	1804(ra) # 80004504 <_ZN10KSemaphoreC1Ei>
    80002e00:	00009797          	auipc	a5,0x9
    80002e04:	dc97b423          	sd	s1,-568(a5) # 8000bbc8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e08:	01813083          	ld	ra,24(sp)
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	00013903          	ld	s2,0(sp)
    80002e18:	02010113          	addi	sp,sp,32
    80002e1c:	00008067          	ret
    80002e20:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e24:	00048513          	mv	a0,s1
    80002e28:	00002097          	auipc	ra,0x2
    80002e2c:	9c4080e7          	jalr	-1596(ra) # 800047ec <_ZN10KSemaphoredlEPv>
    80002e30:	00090513          	mv	a0,s2
    80002e34:	0000e097          	auipc	ra,0xe
    80002e38:	f04080e7          	jalr	-252(ra) # 80010d38 <_Unwind_Resume>
    80002e3c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00002097          	auipc	ra,0x2
    80002e48:	9a8080e7          	jalr	-1624(ra) # 800047ec <_ZN10KSemaphoredlEPv>
    80002e4c:	00090513          	mv	a0,s2
    80002e50:	0000e097          	auipc	ra,0xe
    80002e54:	ee8080e7          	jalr	-280(ra) # 80010d38 <_Unwind_Resume>

0000000080002e58 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002e58:	00009697          	auipc	a3,0x9
    80002e5c:	d6868693          	addi	a3,a3,-664 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    80002e60:	0106b603          	ld	a2,16(a3)
    80002e64:	00160793          	addi	a5,a2,1
    80002e68:	00002737          	lui	a4,0x2
    80002e6c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002e70:	00e7f7b3          	and	a5,a5,a4
    80002e74:	0186b703          	ld	a4,24(a3)
    80002e78:	04e78263          	beq	a5,a4,80002ebc <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00113423          	sd	ra,8(sp)
    80002e84:	00813023          	sd	s0,0(sp)
    80002e88:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002e8c:	0000b717          	auipc	a4,0xb
    80002e90:	d7470713          	addi	a4,a4,-652 # 8000dc00 <_ZN8KConsole11inputBufferE>
    80002e94:	00c70633          	add	a2,a4,a2
    80002e98:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002e9c:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002ea0:	0006b503          	ld	a0,0(a3)
    80002ea4:	00002097          	auipc	ra,0x2
    80002ea8:	868080e7          	jalr	-1944(ra) # 8000470c <_ZN10KSemaphore6signalEv>
}
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret
    80002ebc:	00008067          	ret

0000000080002ec0 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002ed4:	00009497          	auipc	s1,0x9
    80002ed8:	cec48493          	addi	s1,s1,-788 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    80002edc:	0004b503          	ld	a0,0(s1)
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	6cc080e7          	jalr	1740(ra) # 800045ac <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002ee8:	0184b783          	ld	a5,24(s1)
    80002eec:	0104b703          	ld	a4,16(s1)
    80002ef0:	04e78063          	beq	a5,a4,80002f30 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002ef4:	0000b717          	auipc	a4,0xb
    80002ef8:	d0c70713          	addi	a4,a4,-756 # 8000dc00 <_ZN8KConsole11inputBufferE>
    80002efc:	00f70733          	add	a4,a4,a5
    80002f00:	00074503          	lbu	a0,0(a4)

    inputHead = (inputHead+1)%bufferSize;
    80002f04:	00178793          	addi	a5,a5,1
    80002f08:	00002737          	lui	a4,0x2
    80002f0c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f10:	00e7f7b3          	and	a5,a5,a4
    80002f14:	00009717          	auipc	a4,0x9
    80002f18:	ccf73223          	sd	a5,-828(a4) # 8000bbd8 <_ZN8KConsole9inputHeadE>

    return c;
}
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret
        return -1;
    80002f30:	0ff00513          	li	a0,255
    80002f34:	fe9ff06f          	j	80002f1c <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002f38 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002f38:	00009697          	auipc	a3,0x9
    80002f3c:	c8868693          	addi	a3,a3,-888 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    80002f40:	0206b603          	ld	a2,32(a3)
    80002f44:	00160793          	addi	a5,a2,1
    80002f48:	00002737          	lui	a4,0x2
    80002f4c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002f50:	00e7f7b3          	and	a5,a5,a4
    80002f54:	0286b703          	ld	a4,40(a3)
    80002f58:	04e78a63          	beq	a5,a4,80002fac <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002f5c:	ff010113          	addi	sp,sp,-16
    80002f60:	00113423          	sd	ra,8(sp)
    80002f64:	00813023          	sd	s0,0(sp)
    80002f68:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002f6c:	00068713          	mv	a4,a3
    80002f70:	0306b683          	ld	a3,48(a3)
    80002f74:	00168693          	addi	a3,a3,1
    80002f78:	02d73823          	sd	a3,48(a4)
    outputBuffer[outputTail] = c;
    80002f7c:	00009697          	auipc	a3,0x9
    80002f80:	c8468693          	addi	a3,a3,-892 # 8000bc00 <_ZN8KConsole12outputBufferE>
    80002f84:	00c68633          	add	a2,a3,a2
    80002f88:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002f8c:	02f73023          	sd	a5,32(a4)
    hasCharactersOutput->signal();
    80002f90:	00873503          	ld	a0,8(a4)
    80002f94:	00001097          	auipc	ra,0x1
    80002f98:	778080e7          	jalr	1912(ra) # 8000470c <_ZN10KSemaphore6signalEv>
}
    80002f9c:	00813083          	ld	ra,8(sp)
    80002fa0:	00013403          	ld	s0,0(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002fb0:	00009797          	auipc	a5,0x9
    80002fb4:	b087b783          	ld	a5,-1272(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fb8:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002fbc:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fc0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fc4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fc8:	0017f793          	andi	a5,a5,1
    80002fcc:	08078063          	beqz	a5,8000304c <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002fd0:	fe010113          	addi	sp,sp,-32
    80002fd4:	00113c23          	sd	ra,24(sp)
    80002fd8:	00813823          	sd	s0,16(sp)
    80002fdc:	00913423          	sd	s1,8(sp)
    80002fe0:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002fe4:	00009797          	auipc	a5,0x9
    80002fe8:	af47b783          	ld	a5,-1292(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fec:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002ff0:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002ff4:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002ff8:	00058493          	mv	s1,a1
    80002ffc:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	e54080e7          	jalr	-428(ra) # 80002e58 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    8000300c:	00048513          	mv	a0,s1
    80003010:	00000097          	auipc	ra,0x0
    80003014:	f28080e7          	jalr	-216(ra) # 80002f38 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80003018:	00009797          	auipc	a5,0x9
    8000301c:	aa07b783          	ld	a5,-1376(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003020:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80003024:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80003028:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    8000302c:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80003030:	0017f793          	andi	a5,a5,1
    80003034:	fa0798e3          	bnez	a5,80002fe4 <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80003038:	01813083          	ld	ra,24(sp)
    8000303c:	01013403          	ld	s0,16(sp)
    80003040:	00813483          	ld	s1,8(sp)
    80003044:	02010113          	addi	sp,sp,32
    80003048:	00008067          	ret
    8000304c:	00008067          	ret

0000000080003050 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00113c23          	sd	ra,24(sp)
    80003058:	00813823          	sd	s0,16(sp)
    8000305c:	00913423          	sd	s1,8(sp)
    80003060:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003064:	00009497          	auipc	s1,0x9
    80003068:	b5c48493          	addi	s1,s1,-1188 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    8000306c:	0084b503          	ld	a0,8(s1)
    80003070:	00001097          	auipc	ra,0x1
    80003074:	53c080e7          	jalr	1340(ra) # 800045ac <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003078:	0284b783          	ld	a5,40(s1)
    8000307c:	0204b703          	ld	a4,32(s1)
    80003080:	04e78063          	beq	a5,a4,800030c0 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;

    char c = outputBuffer[outputHead];
    80003084:	00009717          	auipc	a4,0x9
    80003088:	b7c70713          	addi	a4,a4,-1156 # 8000bc00 <_ZN8KConsole12outputBufferE>
    8000308c:	00f70733          	add	a4,a4,a5
    80003090:	00074503          	lbu	a0,0(a4)

    outputHead = (outputHead+1)%bufferSize;
    80003094:	00178793          	addi	a5,a5,1
    80003098:	00002737          	lui	a4,0x2
    8000309c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800030a0:	00e7f7b3          	and	a5,a5,a4
    800030a4:	00009717          	auipc	a4,0x9
    800030a8:	b4f73223          	sd	a5,-1212(a4) # 8000bbe8 <_ZN8KConsole10outputHeadE>

    return c;
}
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	00813483          	ld	s1,8(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret
        return -1;
    800030c0:	0ff00513          	li	a0,255
    800030c4:	fe9ff06f          	j	800030ac <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800030c8 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00113423          	sd	ra,8(sp)
    800030d0:	00813023          	sd	s0,0(sp)
    800030d4:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800030d8:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800030dc:	0ff57513          	andi	a0,a0,255
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	e58080e7          	jalr	-424(ra) # 80002f38 <_ZN8KConsole18putCharacterOutputEc>
}
    800030e8:	00813083          	ld	ra,8(sp)
    800030ec:	00013403          	ld	s0,0(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030f8:	fe010113          	addi	sp,sp,-32
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	02010413          	addi	s0,sp,32
    pendingGetc++;
    8000310c:	00009717          	auipc	a4,0x9
    80003110:	ab470713          	addi	a4,a4,-1356 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    80003114:	03873783          	ld	a5,56(a4)
    80003118:	00178793          	addi	a5,a5,1
    8000311c:	02f73c23          	sd	a5,56(a4)
    char ch;
    ch = getCharacterInput();
    80003120:	00000097          	auipc	ra,0x0
    80003124:	da0080e7          	jalr	-608(ra) # 80002ec0 <_ZN8KConsole17getCharacterInputEv>
    80003128:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    8000312c:	01b00793          	li	a5,27
    80003130:	02f51663          	bne	a0,a5,8000315c <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003134:	00d00793          	li	a5,13
    80003138:	02f48863          	beq	s1,a5,80003168 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000313c:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003140:	00001097          	auipc	ra,0x1
    80003144:	be4080e7          	jalr	-1052(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003148:	01813083          	ld	ra,24(sp)
    8000314c:	01013403          	ld	s0,16(sp)
    80003150:	00813483          	ld	s1,8(sp)
    80003154:	02010113          	addi	sp,sp,32
    80003158:	00008067          	ret
        putCharacterOutput(ch);
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	ddc080e7          	jalr	-548(ra) # 80002f38 <_ZN8KConsole18putCharacterOutputEc>
    80003164:	fd1ff06f          	j	80003134 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003168:	00d00513          	li	a0,13
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	dcc080e7          	jalr	-564(ra) # 80002f38 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003174:	00a00513          	li	a0,10
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	dc0080e7          	jalr	-576(ra) # 80002f38 <_ZN8KConsole18putCharacterOutputEc>
    80003180:	fbdff06f          	j	8000313c <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003184 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003190:	00009517          	auipc	a0,0x9
    80003194:	a6053503          	ld	a0,-1440(a0) # 8000bbf0 <_ZN8KConsole11pendingPutcE>
    80003198:	00153513          	seqz	a0,a0
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	0640006f          	j	8000321c <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>
            uint64 x = CONSOLE_STATUS;
    800031bc:	00009797          	auipc	a5,0x9
    800031c0:	8fc7b783          	ld	a5,-1796(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800031c4:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    800031c8:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    800031cc:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    800031d0:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    800031d4:	0207f793          	andi	a5,a5,32
    800031d8:	06078c63          	beqz	a5,80003250 <_ZN8KConsole23sendCharactersToConsoleEPv+0xa8>
                char volatile c = sysCallGetCharOutput();
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	380080e7          	jalr	896(ra) # 8000155c <sysCallGetCharOutput>
    800031e4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800031e8:	00009717          	auipc	a4,0x9
    800031ec:	9d870713          	addi	a4,a4,-1576 # 8000bbc0 <_ZN8KConsole18hasCharactersInputE>
    800031f0:	03073783          	ld	a5,48(a4)
    800031f4:	fff78793          	addi	a5,a5,-1
    800031f8:	02f73823          	sd	a5,48(a4)
                x = CONSOLE_RX_DATA;
    800031fc:	00009797          	auipc	a5,0x9
    80003200:	8b47b783          	ld	a5,-1868(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003204:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003208:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    8000320c:	fef44783          	lbu	a5,-17(s0)
    80003210:	0ff7f793          	andi	a5,a5,255
    80003214:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80003218:	00b50023          	sb	a1,0(a0)
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    8000321c:	00009797          	auipc	a5,0x9
    80003220:	8ec7b783          	ld	a5,-1812(a5) # 8000bb08 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003224:	0007c783          	lbu	a5,0(a5)
    80003228:	f8078ae3          	beqz	a5,800031bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	f58080e7          	jalr	-168(ra) # 80003184 <_ZN8KConsole17outputBufferEmptyEv>
    80003234:	f80504e3          	beqz	a0,800031bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
    80003238:	00009797          	auipc	a5,0x9
    8000323c:	9c07b783          	ld	a5,-1600(a5) # 8000bbf8 <_ZN8KConsole11pendingGetcE>
    80003240:	f6079ee3          	bnez	a5,800031bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_exit();
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	110080e7          	jalr	272(ra) # 80001354 <thread_exit>
    8000324c:	f71ff06f          	j	800031bc <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                thread_dispatch();
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	0e4080e7          	jalr	228(ra) # 80001334 <thread_dispatch>
    80003258:	fc5ff06f          	j	8000321c <_ZN8KConsole23sendCharactersToConsoleEPv+0x74>

000000008000325c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00113423          	sd	ra,8(sp)
    80003264:	00813023          	sd	s0,0(sp)
    80003268:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	de4080e7          	jalr	-540(ra) # 80003050 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003274:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003278:	00001097          	auipc	ra,0x1
    8000327c:	aac080e7          	jalr	-1364(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003280:	00813083          	ld	ra,8(sp)
    80003284:	00013403          	ld	s0,0(sp)
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret

0000000080003290 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813423          	sd	s0,8(sp)
    80003298:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000329c:	00009797          	auipc	a5,0x9
    800032a0:	8747b783          	ld	a5,-1932(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    800032a4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800032a8:	00500793          	li	a5,5
    800032ac:	04f62023          	sw	a5,64(a2)
    //trapPrintString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800032b0:	0000d797          	auipc	a5,0xd
    800032b4:	9507b783          	ld	a5,-1712(a5) # 8000fc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800032b8:	00000593          	li	a1,0
    while(curr != 0)
    800032bc:	02078063          	beqz	a5,800032dc <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800032c0:	02063683          	ld	a3,32(a2)
    800032c4:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800032c8:	00e6e863          	bltu	a3,a4,800032d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800032cc:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800032d0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800032d4:	fe9ff06f          	j	800032bc <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800032d8:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800032dc:	00058a63          	beqz	a1,800032f0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800032e0:	00c5b423          	sd	a2,8(a1)
}
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800032f0:	0000d797          	auipc	a5,0xd
    800032f4:	90c7b823          	sd	a2,-1776(a5) # 8000fc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800032f8:	fedff06f          	j	800032e4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800032fc <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //trapPrintString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800032fc:	0000d517          	auipc	a0,0xd
    80003300:	90453503          	ld	a0,-1788(a0) # 8000fc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003304:	06050e63          	beqz	a0,80003380 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //trapPrintString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003308:	06050c63          	beqz	a0,80003380 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000330c:	02053783          	ld	a5,32(a0)
    80003310:	00008717          	auipc	a4,0x8
    80003314:	7e073703          	ld	a4,2016(a4) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003318:	00073703          	ld	a4,0(a4)
    8000331c:	06f76263          	bltu	a4,a5,80003380 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003320:	fe010113          	addi	sp,sp,-32
    80003324:	00113c23          	sd	ra,24(sp)
    80003328:	00813823          	sd	s0,16(sp)
    8000332c:	00913423          	sd	s1,8(sp)
    80003330:	02010413          	addi	s0,sp,32
    80003334:	0180006f          	j	8000334c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003338:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000333c:	00008717          	auipc	a4,0x8
    80003340:	7b473703          	ld	a4,1972(a4) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003344:	00073703          	ld	a4,0(a4)
    80003348:	02f76263          	bltu	a4,a5,8000336c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000334c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003350:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003354:	00000097          	auipc	ra,0x0
    80003358:	244080e7          	jalr	580(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000335c:	0000d797          	auipc	a5,0xd
    80003360:	8a97b223          	sd	s1,-1884(a5) # 8000fc00 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003364:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003368:	fc0498e3          	bnez	s1,80003338 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret
    80003380:	00008067          	ret

0000000080003384 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003384:	fe010113          	addi	sp,sp,-32
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00913423          	sd	s1,8(sp)
    80003394:	01213023          	sd	s2,0(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    800033a0:	00053503          	ld	a0,0(a0)
    800033a4:	00853903          	ld	s2,8(a0)
    kfree(first);
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	0fc080e7          	jalr	252(ra) # 800044a4 <_Z5kfreePv>
    first = newFirst;
    800033b0:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    800033b4:	00090e63          	beqz	s2,800033d0 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    800033b8:	01813083          	ld	ra,24(sp)
    800033bc:	01013403          	ld	s0,16(sp)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	00013903          	ld	s2,0(sp)
    800033c8:	02010113          	addi	sp,sp,32
    800033cc:	00008067          	ret
        first = last = 0;
    800033d0:	0004b423          	sd	zero,8(s1)
    800033d4:	0004b023          	sd	zero,0(s1)
}
    800033d8:	fe1ff06f          	j	800033b8 <_ZN5Queue3popEv+0x34>

00000000800033dc <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    800033dc:	fe010113          	addi	sp,sp,-32
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00813823          	sd	s0,16(sp)
    800033e8:	00913423          	sd	s1,8(sp)
    800033ec:	01213023          	sd	s2,0(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	00050493          	mv	s1,a0
    800033f8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800033fc:	01000513          	li	a0,16
    80003400:	00001097          	auipc	ra,0x1
    80003404:	040080e7          	jalr	64(ra) # 80004440 <_Z7kmallocm>
    newElem->data = t;
    80003408:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    8000340c:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    80003410:	0004b783          	ld	a5,0(s1)
    80003414:	02078463          	beqz	a5,8000343c <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    80003418:	0084b783          	ld	a5,8(s1)
    8000341c:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    80003420:	00a4b423          	sd	a0,8(s1)
    }
}
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	00013903          	ld	s2,0(sp)
    80003434:	02010113          	addi	sp,sp,32
    80003438:	00008067          	ret
        first = newElem;
    8000343c:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003440:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003444:	00053423          	sd	zero,8(a0)
    80003448:	0004b783          	ld	a5,0(s1)
    8000344c:	0007b423          	sd	zero,8(a5)
    80003450:	fd5ff06f          	j	80003424 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003454 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00813423          	sd	s0,8(sp)
    8000345c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003460:	00053503          	ld	a0,0(a0)
    80003464:	00050463          	beqz	a0,8000346c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003468:	00053503          	ld	a0,0(a0)
}
    8000346c:	00813403          	ld	s0,8(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813423          	sd	s0,8(sp)
    80003480:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003484:	00053423          	sd	zero,8(a0)
    80003488:	00053023          	sd	zero,0(a0)
}
    8000348c:	00813403          	ld	s0,8(sp)
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00008067          	ret

0000000080003498 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003498:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000349c:	04050063          	beqz	a0,800034dc <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00813823          	sd	s0,16(sp)
    800034ac:	00913423          	sd	s1,8(sp)
    800034b0:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    800034b4:	00853483          	ld	s1,8(a0)
        kfree(old);
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	fec080e7          	jalr	-20(ra) # 800044a4 <_Z5kfreePv>
        curr = curr->next;
    800034c0:	00048513          	mv	a0,s1
    while(curr != 0)
    800034c4:	fe0498e3          	bnez	s1,800034b4 <_ZN5QueueD1Ev+0x1c>
    }
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret
    800034dc:	00008067          	ret

00000000800034e0 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813423          	sd	s0,8(sp)
    800034e8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800034ec:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800034f0:	00000513          	li	a0,0
    while(curr != 0)
    800034f4:	00078863          	beqz	a5,80003504 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800034f8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800034fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003500:	ff5ff06f          	j	800034f4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    80003504:	00813403          	ld	s0,8(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret

0000000080003510 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003510:	ff010113          	addi	sp,sp,-16
    80003514:	00113423          	sd	ra,8(sp)
    80003518:	00813023          	sd	s0,0(sp)
    8000351c:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80003520:	00001097          	auipc	ra,0x1
    80003524:	f20080e7          	jalr	-224(ra) # 80004440 <_Z7kmallocm>
}
    80003528:	00813083          	ld	ra,8(sp)
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
    kfree(p);
    80003548:	00001097          	auipc	ra,0x1
    8000354c:	f5c080e7          	jalr	-164(ra) # 800044a4 <_Z5kfreePv>
}
    80003550:	00813083          	ld	ra,8(sp)
    80003554:	00013403          	ld	s0,0(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret

0000000080003560 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813423          	sd	s0,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000356c:	0000c797          	auipc	a5,0xc
    80003570:	69c7b783          	ld	a5,1692(a5) # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003574:	00000513          	li	a0,0
    while(curr != 0)
    80003578:	00078863          	beqz	a5,80003588 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000357c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003580:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003584:	ff5ff06f          	j	80003578 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003588:	0005051b          	sext.w	a0,a0
    8000358c:	00813403          	ld	s0,8(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800035a4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800035a8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800035ac:	0000c797          	auipc	a5,0xc
    800035b0:	65c7b783          	ld	a5,1628(a5) # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800035b4:	02078263          	beqz	a5,800035d8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800035b8:	0000c797          	auipc	a5,0xc
    800035bc:	65078793          	addi	a5,a5,1616 # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800035c0:	0087b703          	ld	a4,8(a5)
    800035c4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800035c8:	00a7b423          	sd	a0,8(a5)
    }
}
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800035d8:	0000c797          	auipc	a5,0xc
    800035dc:	63078793          	addi	a5,a5,1584 # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    800035e0:	00a7b423          	sd	a0,8(a5)
    800035e4:	00a7b023          	sd	a0,0(a5)
    800035e8:	fe5ff06f          	j	800035cc <_ZN9Scheduler3putEP3PCB+0x34>

00000000800035ec <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800035f8:	0000c517          	auipc	a0,0xc
    800035fc:	61053503          	ld	a0,1552(a0) # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    80003600:	00050c63          	beqz	a0,80003618 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003604:	00853783          	ld	a5,8(a0)
    80003608:	00078e63          	beqz	a5,80003624 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000360c:	0000c717          	auipc	a4,0xc
    80003610:	5ef73e23          	sd	a5,1532(a4) # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003614:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003618:	00813403          	ld	s0,8(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003624:	0000c797          	auipc	a5,0xc
    80003628:	5e478793          	addi	a5,a5,1508 # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    8000362c:	0007b423          	sd	zero,8(a5)
    80003630:	0007b023          	sd	zero,0(a5)
    80003634:	fe1ff06f          	j	80003614 <_ZN9Scheduler3getEv+0x28>

0000000080003638 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    8000364c:	0000c497          	auipc	s1,0xc
    80003650:	5bc4b483          	ld	s1,1468(s1) # 8000fc08 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003654:	02048863          	beqz	s1,80003684 <_ZN9Scheduler5printEv+0x4c>
    {
        printInt((uint64)curr, 16);
    80003658:	00000613          	li	a2,0
    8000365c:	01000593          	li	a1,16
    80003660:	0004851b          	sext.w	a0,s1
    80003664:	00003097          	auipc	ra,0x3
    80003668:	838080e7          	jalr	-1992(ra) # 80005e9c <_Z8printIntiii>
        printString("\n");
    8000366c:	00006517          	auipc	a0,0x6
    80003670:	a9450513          	addi	a0,a0,-1388 # 80009100 <CONSOLE_STATUS+0xf0>
    80003674:	00002097          	auipc	ra,0x2
    80003678:	690080e7          	jalr	1680(ra) # 80005d04 <_Z11printStringPKc>
        curr = curr->nextPCB;
    8000367c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003680:	fd5ff06f          	j	80003654 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003684:	01813083          	ld	ra,24(sp)
    80003688:	01013403          	ld	s0,16(sp)
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	02010113          	addi	sp,sp,32
    80003694:	00008067          	ret

0000000080003698 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00113423          	sd	ra,8(sp)
    800036a0:	00813023          	sd	s0,0(sp)
    800036a4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	514080e7          	jalr	1300(ra) # 80003bbc <_ZN5Riscv10kernelMainEv>
    800036b0:	00813083          	ld	ra,8(sp)
    800036b4:	00013403          	ld	s0,0(sp)
    800036b8:	01010113          	addi	sp,sp,16
    800036bc:	00008067          	ret

00000000800036c0 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800036c0:	ff010113          	addi	sp,sp,-16
    800036c4:	00113423          	sd	ra,8(sp)
    800036c8:	00813023          	sd	s0,0(sp)
    800036cc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800036d0:	00053783          	ld	a5,0(a0)
    800036d4:	0107b783          	ld	a5,16(a5)
    800036d8:	000780e7          	jalr	a5
}
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    800036fc:	00008797          	auipc	a5,0x8
    80003700:	2bc78793          	addi	a5,a5,700 # 8000b9b8 <_ZTV6Thread+0x10>
    80003704:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    80003708:	00853503          	ld	a0,8(a0)
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	b7c080e7          	jalr	-1156(ra) # 80001288 <mem_free>
}
    80003714:	00813083          	ld	ra,8(sp)
    80003718:	00013403          	ld	s0,0(sp)
    8000371c:	01010113          	addi	sp,sp,16
    80003720:	00008067          	ret

0000000080003724 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00113423          	sd	ra,8(sp)
    8000372c:	00813023          	sd	s0,0(sp)
    80003730:	01010413          	addi	s0,sp,16
    80003734:	00008797          	auipc	a5,0x8
    80003738:	2ac78793          	addi	a5,a5,684 # 8000b9e0 <_ZTV9Semaphore+0x10>
    8000373c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003740:	00853503          	ld	a0,8(a0)
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	b44080e7          	jalr	-1212(ra) # 80001288 <mem_free>
}
    8000374c:	00813083          	ld	ra,8(sp)
    80003750:	00013403          	ld	s0,0(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <_Znwm>:
{
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	aec080e7          	jalr	-1300(ra) # 80001258 <mem_alloc>
}
    80003774:	00813083          	ld	ra,8(sp)
    80003778:	00013403          	ld	s0,0(sp)
    8000377c:	01010113          	addi	sp,sp,16
    80003780:	00008067          	ret

0000000080003784 <_ZdlPv>:
{
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00113423          	sd	ra,8(sp)
    8000378c:	00813023          	sd	s0,0(sp)
    80003790:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	af4080e7          	jalr	-1292(ra) # 80001288 <mem_free>
}
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	02010413          	addi	s0,sp,32
    800037c0:	00050493          	mv	s1,a0
}
    800037c4:	00000097          	auipc	ra,0x0
    800037c8:	f28080e7          	jalr	-216(ra) # 800036ec <_ZN6ThreadD1Ev>
    800037cc:	00048513          	mv	a0,s1
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	fb4080e7          	jalr	-76(ra) # 80003784 <_ZdlPv>
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	00813483          	ld	s1,8(sp)
    800037e4:	02010113          	addi	sp,sp,32
    800037e8:	00008067          	ret

00000000800037ec <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
}
    80003804:	00000097          	auipc	ra,0x0
    80003808:	f20080e7          	jalr	-224(ra) # 80003724 <_ZN9SemaphoreD1Ev>
    8000380c:	00048513          	mv	a0,s1
    80003810:	00000097          	auipc	ra,0x0
    80003814:	f74080e7          	jalr	-140(ra) # 80003784 <_ZdlPv>
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	02010113          	addi	sp,sp,32
    80003828:	00008067          	ret

000000008000382c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    8000382c:	00853503          	ld	a0,8(a0)
    80003830:	02050663          	beqz	a0,8000385c <_ZN6Thread5startEv+0x30>
{
    80003834:	ff010113          	addi	sp,sp,-16
    80003838:	00113423          	sd	ra,8(sp)
    8000383c:	00813023          	sd	s0,0(sp)
    80003840:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	c20080e7          	jalr	-992(ra) # 80001464 <thread_start>
}
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret
        return -1;
    8000385c:	fff00513          	li	a0,-1
}
    80003860:	00008067          	ret

0000000080003864 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00113423          	sd	ra,8(sp)
    8000386c:	00813023          	sd	s0,0(sp)
    80003870:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	ac0080e7          	jalr	-1344(ra) # 80001334 <thread_dispatch>
}
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN6Thread5sleepEm>:
{
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	b9c080e7          	jalr	-1124(ra) # 80001438 <time_sleep>
}
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	01010113          	addi	sp,sp,16
    800038b0:	00008067          	ret

00000000800038b4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800038b4:	fe010113          	addi	sp,sp,-32
    800038b8:	00113c23          	sd	ra,24(sp)
    800038bc:	00813823          	sd	s0,16(sp)
    800038c0:	00913423          	sd	s1,8(sp)
    800038c4:	01213023          	sd	s2,0(sp)
    800038c8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800038cc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800038d0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800038d4:	0004b783          	ld	a5,0(s1)
    800038d8:	0187b783          	ld	a5,24(a5)
    800038dc:	00048513          	mv	a0,s1
    800038e0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800038e4:	00090513          	mv	a0,s2
    800038e8:	00000097          	auipc	ra,0x0
    800038ec:	fa4080e7          	jalr	-92(ra) # 8000388c <_ZN6Thread5sleepEm>
    while(true)
    800038f0:	fe5ff06f          	j	800038d4 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800038f4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	01010413          	addi	s0,sp,16
    80003904:	00008797          	auipc	a5,0x8
    80003908:	0b478793          	addi	a5,a5,180 # 8000b9b8 <_ZTV6Thread+0x10>
    8000390c:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    80003910:	00850513          	addi	a0,a0,8
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	b7c080e7          	jalr	-1156(ra) # 80001490 <thread_make_pcb>
}
    8000391c:	00813083          	ld	ra,8(sp)
    80003920:	00013403          	ld	s0,0(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret

000000008000392c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000392c:	ff010113          	addi	sp,sp,-16
    80003930:	00113423          	sd	ra,8(sp)
    80003934:	00813023          	sd	s0,0(sp)
    80003938:	01010413          	addi	s0,sp,16
    8000393c:	00008797          	auipc	a5,0x8
    80003940:	07c78793          	addi	a5,a5,124 # 8000b9b8 <_ZTV6Thread+0x10>
    80003944:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003948:	00050613          	mv	a2,a0
    8000394c:	00000597          	auipc	a1,0x0
    80003950:	d7458593          	addi	a1,a1,-652 # 800036c0 <_ZN6Thread6runnerEPv>
    80003954:	00850513          	addi	a0,a0,8
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	b38080e7          	jalr	-1224(ra) # 80001490 <thread_make_pcb>
}
    80003960:	00813083          	ld	ra,8(sp)
    80003964:	00013403          	ld	s0,0(sp)
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00008067          	ret

0000000080003970 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003970:	00853503          	ld	a0,8(a0)
    80003974:	02050663          	beqz	a0,800039a0 <_ZN9Semaphore4waitEv+0x30>
{
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00113423          	sd	ra,8(sp)
    80003980:	00813023          	sd	s0,0(sp)
    80003984:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	a58080e7          	jalr	-1448(ra) # 800013e0 <sem_wait>
}
    80003990:	00813083          	ld	ra,8(sp)
    80003994:	00013403          	ld	s0,0(sp)
    80003998:	01010113          	addi	sp,sp,16
    8000399c:	00008067          	ret
        return -1;
    800039a0:	fff00513          	li	a0,-1
}
    800039a4:	00008067          	ret

00000000800039a8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800039a8:	fe010113          	addi	sp,sp,-32
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	02010413          	addi	s0,sp,32
    800039bc:	00050493          	mv	s1,a0
    800039c0:	00008797          	auipc	a5,0x8
    800039c4:	02078793          	addi	a5,a5,32 # 8000b9e0 <_ZTV9Semaphore+0x10>
    800039c8:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800039cc:	00850513          	addi	a0,a0,8
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	9ac080e7          	jalr	-1620(ra) # 8000137c <sem_open>
    if(retval != 0)
    800039d8:	00050463          	beqz	a0,800039e0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800039dc:	0004b423          	sd	zero,8(s1)
}
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	00813483          	ld	s1,8(sp)
    800039ec:	02010113          	addi	sp,sp,32
    800039f0:	00008067          	ret

00000000800039f4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800039f4:	00853503          	ld	a0,8(a0)
    800039f8:	02050663          	beqz	a0,80003a24 <_ZN9Semaphore6signalEv+0x30>
{
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	a00080e7          	jalr	-1536(ra) # 8000140c <sem_signal>
}
    80003a14:	00813083          	ld	ra,8(sp)
    80003a18:	00013403          	ld	s0,0(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret
        return -1;
    80003a24:	fff00513          	li	a0,-1
}
    80003a28:	00008067          	ret

0000000080003a2c <_ZN7Console4getcEv>:
{
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813423          	sd	s0,8(sp)
    80003a34:	01010413          	addi	s0,sp,16
}
    80003a38:	00000513          	li	a0,0
    80003a3c:	00813403          	ld	s0,8(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_ZN7Console4putcEc>:
{
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00813423          	sd	s0,8(sp)
    80003a50:	01010413          	addi	s0,sp,16
}
    80003a54:	00813403          	ld	s0,8(sp)
    80003a58:	01010113          	addi	sp,sp,16
    80003a5c:	00008067          	ret

0000000080003a60 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00113c23          	sd	ra,24(sp)
    80003a68:	00813823          	sd	s0,16(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	01213023          	sd	s2,0(sp)
    80003a74:	02010413          	addi	s0,sp,32
    80003a78:	00050493          	mv	s1,a0
    80003a7c:	00058913          	mv	s2,a1
    80003a80:	01000513          	li	a0,16
    80003a84:	00000097          	auipc	ra,0x0
    80003a88:	cd8080e7          	jalr	-808(ra) # 8000375c <_Znwm>
    80003a8c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003a90:	00953023          	sd	s1,0(a0)
    80003a94:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003a98:	00000597          	auipc	a1,0x0
    80003a9c:	e1c58593          	addi	a1,a1,-484 # 800038b4 <_ZN14PeriodicThread6runnerEPv>
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	00000097          	auipc	ra,0x0
    80003aa8:	e50080e7          	jalr	-432(ra) # 800038f4 <_ZN6ThreadC1EPFvPvES0_>
    80003aac:	00008797          	auipc	a5,0x8
    80003ab0:	ea478793          	addi	a5,a5,-348 # 8000b950 <_ZTV14PeriodicThread+0x10>
    80003ab4:	00f4b023          	sd	a5,0(s1)
}
    80003ab8:	01813083          	ld	ra,24(sp)
    80003abc:	01013403          	ld	s0,16(sp)
    80003ac0:	00813483          	ld	s1,8(sp)
    80003ac4:	00013903          	ld	s2,0(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret

0000000080003ad0 <_ZN5Riscv15userMainWrapperEPv>:
    disableInterrupts();
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    80003ad0:	ff010113          	addi	sp,sp,-16
    80003ad4:	00113423          	sd	ra,8(sp)
    80003ad8:	00813023          	sd	s0,0(sp)
    80003adc:	01010413          	addi	s0,sp,16
    userMain();
    80003ae0:	00003097          	auipc	ra,0x3
    80003ae4:	8c8080e7          	jalr	-1848(ra) # 800063a8 <_Z8userMainv>
}
    80003ae8:	00813083          	ld	ra,8(sp)
    80003aec:	00013403          	ld	s0,0(sp)
    80003af0:	01010113          	addi	sp,sp,16
    80003af4:	00008067          	ret

0000000080003af8 <_ZN5Riscv10initSystemEv>:
{
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	00813023          	sd	s0,0(sp)
    80003b04:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003b08:	00008797          	auipc	a5,0x8
    80003b0c:	fc07b783          	ld	a5,-64(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003b10:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80003b14:	fffff097          	auipc	ra,0xfffff
    80003b18:	f30080e7          	jalr	-208(ra) # 80002a44 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	28c080e7          	jalr	652(ra) # 80002da8 <_ZN8KConsole10initializeEv>
}
    80003b24:	00813083          	ld	ra,8(sp)
    80003b28:	00013403          	ld	s0,0(sp)
    80003b2c:	01010113          	addi	sp,sp,16
    80003b30:	00008067          	ret

0000000080003b34 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00813423          	sd	s0,8(sp)
    80003b3c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003b40:	00200793          	li	a5,2
    80003b44:	1007a073          	csrs	sstatus,a5
}
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	01010113          	addi	sp,sp,16
    80003b50:	00008067          	ret

0000000080003b54 <_ZN5Riscv17disableInterruptsEv>:
{
    80003b54:	ff010113          	addi	sp,sp,-16
    80003b58:	00813423          	sd	s0,8(sp)
    80003b5c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003b60:	00200793          	li	a5,2
    80003b64:	1007b073          	csrc	sstatus,a5
}
    80003b68:	00813403          	ld	s0,8(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN5Riscv9endSystemEv>:
{
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00113423          	sd	ra,8(sp)
    80003b7c:	00813023          	sd	s0,0(sp)
    80003b80:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	fd0080e7          	jalr	-48(ra) # 80003b54 <_ZN5Riscv17disableInterruptsEv>
}
    80003b8c:	00813083          	ld	ra,8(sp)
    80003b90:	00013403          	ld	s0,0(sp)
    80003b94:	01010113          	addi	sp,sp,16
    80003b98:	00008067          	ret

0000000080003b9c <_ZN5Riscv10popSppSpieEv>:
{
    80003b9c:	ff010113          	addi	sp,sp,-16
    80003ba0:	00813423          	sd	s0,8(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003ba8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003bac:	10200073          	sret
}
    80003bb0:	00813403          	ld	s0,8(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <_ZN5Riscv10kernelMainEv>:
{
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00113c23          	sd	ra,24(sp)
    80003bc4:	00813823          	sd	s0,16(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	01213023          	sd	s2,0(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    initSystem();
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	f24080e7          	jalr	-220(ra) # 80003af8 <_ZN5Riscv10initSystemEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003bdc:	00001537          	lui	a0,0x1
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	860080e7          	jalr	-1952(ra) # 80004440 <_Z7kmallocm>
    80003be8:	00050913          	mv	s2,a0
    80003bec:	05800513          	li	a0,88
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	dd8080e7          	jalr	-552(ra) # 800029c8 <_ZN3PCBnwEm>
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	00200713          	li	a4,2
    80003c00:	00090693          	mv	a3,s2
    80003c04:	00000613          	li	a2,0
    80003c08:	00000597          	auipc	a1,0x0
    80003c0c:	ec858593          	addi	a1,a1,-312 # 80003ad0 <_ZN5Riscv15userMainWrapperEPv>
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	ca0080e7          	jalr	-864(ra) # 800028b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	cf8080e7          	jalr	-776(ra) # 80002914 <_ZN3PCB5startEv>
    enableInterrupts();
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	f10080e7          	jalr	-240(ra) # 80003b34 <_ZN5Riscv16enableInterruptsEv>
    while(!userPCB->isFinished())
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	efc080e7          	jalr	-260(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c38:	00051863          	bnez	a0,80003c48 <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003c3c:	ffffd097          	auipc	ra,0xffffd
    80003c40:	6f8080e7          	jalr	1784(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003c44:	fe9ff06f          	j	80003c2c <_ZN5Riscv10kernelMainEv+0x70>
    finishSystem = true;
    80003c48:	00100793          	li	a5,1
    80003c4c:	0000c717          	auipc	a4,0xc
    80003c50:	fcf70623          	sb	a5,-52(a4) # 8000fc18 <_ZN5Riscv12finishSystemE>
    ::printString("End...\n");
    80003c54:	00005517          	auipc	a0,0x5
    80003c58:	41450513          	addi	a0,a0,1044 # 80009068 <CONSOLE_STATUS+0x58>
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	0a8080e7          	jalr	168(ra) # 80005d04 <_Z11printStringPKc>
    while(!PCB::consolePCB->isFinished())
    80003c64:	00008797          	auipc	a5,0x8
    80003c68:	e9c7b783          	ld	a5,-356(a5) # 8000bb00 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003c6c:	0007b503          	ld	a0,0(a5)
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	ebc080e7          	jalr	-324(ra) # 80002b2c <_ZN3PCB10isFinishedEv>
    80003c78:	00051863          	bnez	a0,80003c88 <_ZN5Riscv10kernelMainEv+0xcc>
        thread_dispatch();
    80003c7c:	ffffd097          	auipc	ra,0xffffd
    80003c80:	6b8080e7          	jalr	1720(ra) # 80001334 <thread_dispatch>
    while(!PCB::consolePCB->isFinished())
    80003c84:	fe1ff06f          	j	80003c64 <_ZN5Riscv10kernelMainEv+0xa8>
    disableInterrupts();
    80003c88:	00000097          	auipc	ra,0x0
    80003c8c:	ecc080e7          	jalr	-308(ra) # 80003b54 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	ee4080e7          	jalr	-284(ra) # 80003b74 <_ZN5Riscv9endSystemEv>
}
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	01013403          	ld	s0,16(sp)
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	00013903          	ld	s2,0(sp)
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret
    80003cb0:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	d38080e7          	jalr	-712(ra) # 800029f0 <_ZN3PCBdlEPv>
    80003cc0:	00090513          	mv	a0,s2
    80003cc4:	0000d097          	auipc	ra,0xd
    80003cc8:	074080e7          	jalr	116(ra) # 80010d38 <_Unwind_Resume>

0000000080003ccc <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00113423          	sd	ra,8(sp)
    80003cd4:	00813023          	sd	s0,0(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    myTests();
    80003cdc:	fffff097          	auipc	ra,0xfffff
    80003ce0:	9f4080e7          	jalr	-1548(ra) # 800026d0 <_Z7myTestsv>
}
    80003ce4:	00813083          	ld	ra,8(sp)
    80003ce8:	00013403          	ld	s0,0(sp)
    80003cec:	01010113          	addi	sp,sp,16
    80003cf0:	00008067          	ret

0000000080003cf4 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003cf4:	ff010113          	addi	sp,sp,-16
    80003cf8:	00813423          	sd	s0,8(sp)
    80003cfc:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003d00:	00200793          	li	a5,2
    80003d04:	1047b073          	csrc	sie,a5
}
    80003d08:	00813403          	ld	s0,8(sp)
    80003d0c:	01010113          	addi	sp,sp,16
    80003d10:	00008067          	ret

0000000080003d14 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813423          	sd	s0,8(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    while(true)
    80003d20:	0000006f          	j	80003d20 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003d24 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003d24:	ff010113          	addi	sp,sp,-16
    80003d28:	00813423          	sd	s0,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003d30:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003d34:	00008717          	auipc	a4,0x8
    80003d38:	ddc73703          	ld	a4,-548(a4) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d3c:	00073703          	ld	a4,0(a4)
    80003d40:	01073703          	ld	a4,16(a4)
    80003d44:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003d48:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003d4c:	00078593          	mv	a1,a5
}
    80003d50:	00813403          	ld	s0,8(sp)
    80003d54:	01010113          	addi	sp,sp,16
    80003d58:	00008067          	ret

0000000080003d5c <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80003d5c:	ff010113          	addi	sp,sp,-16
    80003d60:	00813423          	sd	s0,8(sp)
    80003d64:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80003d68:	00008797          	auipc	a5,0x8
    80003d6c:	da87b783          	ld	a5,-600(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003d70:	0007b783          	ld	a5,0(a5)
    80003d74:	0007c783          	lbu	a5,0(a5)
    80003d78:	00078c63          	beqz	a5,80003d90 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003d7c:	10000793          	li	a5,256
    80003d80:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80003d84:	00813403          	ld	s0,8(sp)
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003d90:	10000793          	li	a5,256
    80003d94:	1007b073          	csrc	sstatus,a5
    80003d98:	fedff06f          	j	80003d84 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080003d9c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003d9c:	f9010113          	addi	sp,sp,-112
    80003da0:	06113423          	sd	ra,104(sp)
    80003da4:	06813023          	sd	s0,96(sp)
    80003da8:	04913c23          	sd	s1,88(sp)
    80003dac:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003db0:	00070713          	mv	a4,a4
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	d6c7b783          	ld	a5,-660(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003dbc:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003dc0:	00008797          	auipc	a5,0x8
    80003dc4:	d507b783          	ld	a5,-688(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003dc8:	0007b783          	ld	a5,0(a5)
    80003dcc:	14002773          	csrr	a4,sscratch
    80003dd0:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003dd4:	142027f3          	csrr	a5,scause
    80003dd8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003ddc:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003de0:	00900713          	li	a4,9
    80003de4:	02f76e63          	bltu	a4,a5,80003e20 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003de8:	00800713          	li	a4,8
    80003dec:	18e7f463          	bgeu	a5,a4,80003f74 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
    80003df0:	00500713          	li	a4,5
    80003df4:	16e78a63          	beq	a5,a4,80003f68 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80003df8:	00700713          	li	a4,7
    80003dfc:	00e79863          	bne	a5,a4,80003e0c <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	d50080e7          	jalr	-688(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003e08:	1200006f          	j	80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003e0c:	00200713          	li	a4,2
    80003e10:	10e79c63          	bne	a5,a4,80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            PCB::threadExitHandler();
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	d3c080e7          	jalr	-708(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003e1c:	10c0006f          	j	80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    switch(scause)
    80003e20:	fff00713          	li	a4,-1
    80003e24:	03f71713          	slli	a4,a4,0x3f
    80003e28:	00170713          	addi	a4,a4,1
    80003e2c:	06e78a63          	beq	a5,a4,80003ea0 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80003e30:	fff00713          	li	a4,-1
    80003e34:	03f71713          	slli	a4,a4,0x3f
    80003e38:	00970713          	addi	a4,a4,9
    80003e3c:	0ee79663          	bne	a5,a4,80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            uint64 x = CONSOLE_STATUS;
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	c787b783          	ld	a5,-904(a5) # 8000bab8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003e48:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003e4c:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003e50:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003e54:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003e58:	0017f793          	andi	a5,a5,1
    80003e5c:	02078863          	beqz	a5,80003e8c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                x = CONSOLE_TX_DATA;
    80003e60:	00008797          	auipc	a5,0x8
    80003e64:	c787b783          	ld	a5,-904(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003e68:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003e6c:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003e70:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003e74:	00058513          	mv	a0,a1
    80003e78:	0ff57513          	andi	a0,a0,255
                if(KConsole::pendingGetc > 0)
    80003e7c:	00008797          	auipc	a5,0x8
    80003e80:	c547b783          	ld	a5,-940(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003e84:	0007b783          	ld	a5,0(a5)
    80003e88:	0c079263          	bnez	a5,80003f4c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            plic_complete(plic_claim());
    80003e8c:	00003097          	auipc	ra,0x3
    80003e90:	1e8080e7          	jalr	488(ra) # 80007074 <plic_claim>
    80003e94:	00003097          	auipc	ra,0x3
    80003e98:	218080e7          	jalr	536(ra) # 800070ac <plic_complete>
            break;
    80003e9c:	08c0006f          	j	80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003ea0:	141027f3          	csrr	a5,sepc
    80003ea4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003ea8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003eac:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003eb0:	100027f3          	csrr	a5,sstatus
    80003eb4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003eb8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003ebc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003ec0:	00200793          	li	a5,2
    80003ec4:	1447b073          	csrc	sip,a5
            totalTime++;
    80003ec8:	0000c717          	auipc	a4,0xc
    80003ecc:	d5070713          	addi	a4,a4,-688 # 8000fc18 <_ZN5Riscv12finishSystemE>
    80003ed0:	00873783          	ld	a5,8(a4)
    80003ed4:	00178793          	addi	a5,a5,1
    80003ed8:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80003edc:	00008497          	auipc	s1,0x8
    80003ee0:	c044b483          	ld	s1,-1020(s1) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003ee4:	0004b783          	ld	a5,0(s1)
    80003ee8:	00178793          	addi	a5,a5,1
    80003eec:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003ef0:	fffff097          	auipc	ra,0xfffff
    80003ef4:	40c080e7          	jalr	1036(ra) # 800032fc <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003ef8:	00008797          	auipc	a5,0x8
    80003efc:	c187b783          	ld	a5,-1000(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003f00:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003f04:	0187b783          	ld	a5,24(a5)
    80003f08:	0004b703          	ld	a4,0(s1)
    80003f0c:	02f77863          	bgeu	a4,a5,80003f3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            Riscv::w_sstatus(sstatus);
    80003f10:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003f14:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003f18:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003f1c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	e3c080e7          	jalr	-452(ra) # 80003d5c <_ZN5Riscv14changePrivModeEv>
}
    80003f28:	06813083          	ld	ra,104(sp)
    80003f2c:	06013403          	ld	s0,96(sp)
    80003f30:	05813483          	ld	s1,88(sp)
    80003f34:	07010113          	addi	sp,sp,112
    80003f38:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003f3c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	9fc080e7          	jalr	-1540(ra) # 8000293c <_ZN3PCB8dispatchEv>
    80003f48:	fc9ff06f          	j	80003f10 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
                    KConsole::pendingGetc--;
    80003f4c:	fff78793          	addi	a5,a5,-1
    80003f50:	00008717          	auipc	a4,0x8
    80003f54:	b8073703          	ld	a4,-1152(a4) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003f58:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003f5c:	fffff097          	auipc	ra,0xfffff
    80003f60:	efc080e7          	jalr	-260(ra) # 80002e58 <_ZN8KConsole17putCharacterInputEc>
    80003f64:	f29ff06f          	j	80003e8c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
            PCB::threadExitHandler();
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	be8080e7          	jalr	-1048(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003f70:	fb9ff06f          	j	80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003f74:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003f78:	14102773          	csrr	a4,sepc
    80003f7c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003f80:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003f84:	00470713          	addi	a4,a4,4
    80003f88:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003f8c:	10002773          	csrr	a4,sstatus
    80003f90:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003f94:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003f98:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003f9c:	04300713          	li	a4,67
    80003fa0:	02f76463          	bltu	a4,a5,80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80003fa4:	00279793          	slli	a5,a5,0x2
    80003fa8:	00005717          	auipc	a4,0x5
    80003fac:	29470713          	addi	a4,a4,660 # 8000923c <CONSOLE_STATUS+0x22c>
    80003fb0:	00e787b3          	add	a5,a5,a4
    80003fb4:	0007a783          	lw	a5,0(a5)
    80003fb8:	00e787b3          	add	a5,a5,a4
    80003fbc:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	4a8080e7          	jalr	1192(ra) # 80004468 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003fc8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003fcc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003fd0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003fd4:	14179073          	csrw	sepc,a5
            changePrivMode();
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	d84080e7          	jalr	-636(ra) # 80003d5c <_ZN5Riscv14changePrivModeEv>
}
    80003fe0:	f49ff06f          	j	80003f28 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    MemoryAllocator::memFreeHandler();
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	4e8080e7          	jalr	1256(ra) # 800044cc <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003fec:	fddff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadMakePCBHandler();
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	d24080e7          	jalr	-732(ra) # 80002d14 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003ff8:	fd1ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadCreateHandler();
    80003ffc:	fffff097          	auipc	ra,0xfffff
    80004000:	c34080e7          	jalr	-972(ra) # 80002c30 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004004:	fc5ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadStartHandler();
    80004008:	fffff097          	auipc	ra,0xfffff
    8000400c:	cc8080e7          	jalr	-824(ra) # 80002cd0 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004010:	fb9ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadDispatchHandler();
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	b88080e7          	jalr	-1144(ra) # 80002b9c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    8000401c:	fadff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadExitHandler();
    80004020:	fffff097          	auipc	ra,0xfffff
    80004024:	b30080e7          	jalr	-1232(ra) # 80002b50 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004028:	fa1ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    PCB::threadSleepHandler();
    8000402c:	fffff097          	auipc	ra,0xfffff
    80004030:	ba0080e7          	jalr	-1120(ra) # 80002bcc <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004034:	f95ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semOpenHandler();
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	744080e7          	jalr	1860(ra) # 8000477c <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004040:	f89ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semWaitHandler();
    80004044:	00000097          	auipc	ra,0x0
    80004048:	7d0080e7          	jalr	2000(ra) # 80004814 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    8000404c:	f7dff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semSignalHandler();
    80004050:	00001097          	auipc	ra,0x1
    80004054:	804080e7          	jalr	-2044(ra) # 80004854 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004058:	f71ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KSemaphore::semCloseHandler();
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	838080e7          	jalr	-1992(ra) # 80004894 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004064:	f65ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getcHandler();
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	090080e7          	jalr	144(ra) # 800030f8 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004070:	f59ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::putcHandler();
    80004074:	fffff097          	auipc	ra,0xfffff
    80004078:	054080e7          	jalr	84(ra) # 800030c8 <_ZN8KConsole11putcHandlerEv>
                    break;
    8000407c:	f4dff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    KConsole::getCharHandler();
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	1dc080e7          	jalr	476(ra) # 8000325c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004088:	f41ff06f          	j	80003fc8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>

000000008000408c <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    8000408c:	ff010113          	addi	sp,sp,-16
    80004090:	00813423          	sd	s0,8(sp)
    80004094:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004098:	0000c717          	auipc	a4,0xc
    8000409c:	b9072703          	lw	a4,-1136(a4) # 8000fc28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040a0:	00100793          	li	a5,1
    800040a4:	04f70263          	beq	a4,a5,800040e8 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800040a8:	0000c797          	auipc	a5,0xc
    800040ac:	b8078793          	addi	a5,a5,-1152 # 8000fc28 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800040b0:	00100713          	li	a4,1
    800040b4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800040b8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800040bc:	00008717          	auipc	a4,0x8
    800040c0:	a0473703          	ld	a4,-1532(a4) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800040c4:	00073703          	ld	a4,0(a4)
    800040c8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800040cc:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800040d0:	00008797          	auipc	a5,0x8
    800040d4:	a487b783          	ld	a5,-1464(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x70>
    800040d8:	0007b783          	ld	a5,0(a5)
    800040dc:	40e787b3          	sub	a5,a5,a4
    800040e0:	ff178793          	addi	a5,a5,-15
    800040e4:	00f73023          	sd	a5,0(a4)
}
    800040e8:	00813403          	ld	s0,8(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00813823          	sd	s0,16(sp)
    80004100:	00913423          	sd	s1,8(sp)
    80004104:	01213023          	sd	s2,0(sp)
    80004108:	02010413          	addi	s0,sp,32
    8000410c:	00050493          	mv	s1,a0
    80004110:	00058913          	mv	s2,a1
    initMemory();
    80004114:	00000097          	auipc	ra,0x0
    80004118:	f78080e7          	jalr	-136(ra) # 8000408c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000411c:	0000c797          	auipc	a5,0xc
    80004120:	b147b783          	ld	a5,-1260(a5) # 8000fc30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004124:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004128:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    8000412c:	00000713          	li	a4,0
    while(curr != 0)
    80004130:	00078c63          	beqz	a5,80004148 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004134:	00f4e863          	bltu	s1,a5,80004144 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004138:	00078713          	mv	a4,a5
        curr = curr->next;
    8000413c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004140:	ff1ff06f          	j	80004130 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004144:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004148:	02070063          	beqz	a4,80004168 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000414c:	00973423          	sd	s1,8(a4)
}
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	00013903          	ld	s2,0(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret
        headAllocated = newAllocated;
    80004168:	0000c797          	auipc	a5,0xc
    8000416c:	ac97b423          	sd	s1,-1336(a5) # 8000fc30 <_ZN15MemoryAllocator13headAllocatedE>
    80004170:	fe1ff06f          	j	80004150 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004174 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004174:	fe010113          	addi	sp,sp,-32
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00913423          	sd	s1,8(sp)
    80004184:	01213023          	sd	s2,0(sp)
    80004188:	02010413          	addi	s0,sp,32
    8000418c:	00050913          	mv	s2,a0
    initMemory();
    80004190:	00000097          	auipc	ra,0x0
    80004194:	efc080e7          	jalr	-260(ra) # 8000408c <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004198:	0000c497          	auipc	s1,0xc
    8000419c:	aa04b483          	ld	s1,-1376(s1) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800041a0:	00000713          	li	a4,0
    while(curr != 0)
    800041a4:	0a048863          	beqz	s1,80004254 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    800041a8:	0004b783          	ld	a5,0(s1)
    800041ac:	0127f863          	bgeu	a5,s2,800041bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800041b0:	00048713          	mv	a4,s1
        curr = curr->next;
    800041b4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800041b8:	fedff06f          	j	800041a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800041bc:	01090693          	addi	a3,s2,16
    800041c0:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    800041c4:	00008617          	auipc	a2,0x8
    800041c8:	95463603          	ld	a2,-1708(a2) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x70>
    800041cc:	00063603          	ld	a2,0(a2)
    800041d0:	04d66c63          	bltu	a2,a3,80004228 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    800041d4:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    800041d8:	01000613          	li	a2,16
    800041dc:	02f67663          	bgeu	a2,a5,80004208 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    800041e0:	0084b603          	ld	a2,8(s1)
    800041e4:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800041e8:	ff078793          	addi	a5,a5,-16
    800041ec:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    800041f0:	00070663          	beqz	a4,800041fc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    800041f4:	00d73423          	sd	a3,8(a4)
    800041f8:	0380006f          	j	80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    800041fc:	0000c797          	auipc	a5,0xc
    80004200:	a2d7be23          	sd	a3,-1476(a5) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    80004204:	02c0006f          	j	80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    80004208:	00070863          	beqz	a4,80004218 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    8000420c:	0084b783          	ld	a5,8(s1)
    80004210:	00f73423          	sd	a5,8(a4)
    80004214:	01c0006f          	j	80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    80004218:	0084b783          	ld	a5,8(s1)
    8000421c:	0000c717          	auipc	a4,0xc
    80004220:	a0f73e23          	sd	a5,-1508(a4) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    80004224:	00c0006f          	j	80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    80004228:	02070063          	beqz	a4,80004248 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    8000422c:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004230:	00090593          	mv	a1,s2
    80004234:	00048513          	mv	a0,s1
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	ebc080e7          	jalr	-324(ra) # 800040f4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004240:	01048513          	addi	a0,s1,16
            break;
    80004244:	0140006f          	j	80004258 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    80004248:	0000c797          	auipc	a5,0xc
    8000424c:	9e07b823          	sd	zero,-1552(a5) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    80004250:	fe1ff06f          	j	80004230 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004254:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004258:	01813083          	ld	ra,24(sp)
    8000425c:	01013403          	ld	s0,16(sp)
    80004260:	00813483          	ld	s1,8(sp)
    80004264:	00013903          	ld	s2,0(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004270:	ff010113          	addi	sp,sp,-16
    80004274:	00113423          	sd	ra,8(sp)
    80004278:	00813023          	sd	s0,0(sp)
    8000427c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004280:	00000097          	auipc	ra,0x0
    80004284:	ef4080e7          	jalr	-268(ra) # 80004174 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004288:	00813083          	ld	ra,8(sp)
    8000428c:	00013403          	ld	s0,0(sp)
    80004290:	01010113          	addi	sp,sp,16
    80004294:	00008067          	ret

0000000080004298 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00113c23          	sd	ra,24(sp)
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	01213023          	sd	s2,0(sp)
    800042ac:	02010413          	addi	s0,sp,32
    800042b0:	00050493          	mv	s1,a0
    800042b4:	00058913          	mv	s2,a1
    initMemory();
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	dd4080e7          	jalr	-556(ra) # 8000408c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800042c0:	0000c797          	auipc	a5,0xc
    800042c4:	9787b783          	ld	a5,-1672(a5) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800042c8:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800042cc:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800042d0:	00000713          	li	a4,0
    while(curr != 0)
    800042d4:	00078c63          	beqz	a5,800042ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800042d8:	00f4e863          	bltu	s1,a5,800042e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800042dc:	00078713          	mv	a4,a5
        curr = curr->next;
    800042e0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800042e4:	ff1ff06f          	j	800042d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800042e8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800042ec:	04070663          	beqz	a4,80004338 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800042f0:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800042f4:	0084b783          	ld	a5,8(s1)
    800042f8:	00078a63          	beqz	a5,8000430c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800042fc:	0004b603          	ld	a2,0(s1)
    80004300:	01060693          	addi	a3,a2,16
    80004304:	00d486b3          	add	a3,s1,a3
    80004308:	02d78e63          	beq	a5,a3,80004344 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    8000430c:	00070a63          	beqz	a4,80004320 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004310:	00073683          	ld	a3,0(a4)
    80004314:	01068793          	addi	a5,a3,16
    80004318:	00f707b3          	add	a5,a4,a5
    8000431c:	04978263          	beq	a5,s1,80004360 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00813483          	ld	s1,8(sp)
    8000432c:	00013903          	ld	s2,0(sp)
    80004330:	02010113          	addi	sp,sp,32
    80004334:	00008067          	ret
        headFree = newSegment;
    80004338:	0000c797          	auipc	a5,0xc
    8000433c:	9097b023          	sd	s1,-1792(a5) # 8000fc38 <_ZN15MemoryAllocator8headFreeE>
    80004340:	fb5ff06f          	j	800042f4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004344:	0007b683          	ld	a3,0(a5)
    80004348:	00d60633          	add	a2,a2,a3
    8000434c:	01060613          	addi	a2,a2,16
    80004350:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004354:	0087b783          	ld	a5,8(a5)
    80004358:	00f4b423          	sd	a5,8(s1)
    8000435c:	fb1ff06f          	j	8000430c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004360:	0004b783          	ld	a5,0(s1)
    80004364:	00f686b3          	add	a3,a3,a5
    80004368:	01068693          	addi	a3,a3,16
    8000436c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004370:	0084b783          	ld	a5,8(s1)
    80004374:	00f73423          	sd	a5,8(a4)
}
    80004378:	fa9ff06f          	j	80004320 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

000000008000437c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	00050913          	mv	s2,a0
    initMemory();
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	cf4080e7          	jalr	-780(ra) # 8000408c <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800043a0:	0000c497          	auipc	s1,0xc
    800043a4:	8904b483          	ld	s1,-1904(s1) # 8000fc30 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800043a8:	00000713          	li	a4,0
    while(curr != 0)
    800043ac:	02048a63          	beqz	s1,800043e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800043b0:	01048793          	addi	a5,s1,16
    800043b4:	01278863          	beq	a5,s2,800043c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800043b8:	00048713          	mv	a4,s1
        curr = curr->next;
    800043bc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800043c0:	fedff06f          	j	800043ac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800043c4:	02070e63          	beqz	a4,80004400 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800043c8:	0084b783          	ld	a5,8(s1)
    800043cc:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800043d0:	0004b583          	ld	a1,0(s1)
    800043d4:	00048513          	mv	a0,s1
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	ec0080e7          	jalr	-320(ra) # 80004298 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800043e0:	02048863          	beqz	s1,80004410 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800043e4:	00000513          	li	a0,0
    else
        return 1;
}
    800043e8:	01813083          	ld	ra,24(sp)
    800043ec:	01013403          	ld	s0,16(sp)
    800043f0:	00813483          	ld	s1,8(sp)
    800043f4:	00013903          	ld	s2,0(sp)
    800043f8:	02010113          	addi	sp,sp,32
    800043fc:	00008067          	ret
                headAllocated = curr->next;
    80004400:	0084b783          	ld	a5,8(s1)
    80004404:	0000c717          	auipc	a4,0xc
    80004408:	82f73623          	sd	a5,-2004(a4) # 8000fc30 <_ZN15MemoryAllocator13headAllocatedE>
    8000440c:	fc5ff06f          	j	800043d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004410:	00100513          	li	a0,1
    80004414:	fd5ff06f          	j	800043e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004418 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00113423          	sd	ra,8(sp)
    80004420:	00813023          	sd	s0,0(sp)
    80004424:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	f54080e7          	jalr	-172(ra) # 8000437c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004430:	00813083          	ld	ra,8(sp)
    80004434:	00013403          	ld	s0,0(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret

0000000080004440 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00113423          	sd	ra,8(sp)
    80004448:	00813023          	sd	s0,0(sp)
    8000444c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004450:	00000097          	auipc	ra,0x0
    80004454:	e20080e7          	jalr	-480(ra) # 80004270 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004458:	00813083          	ld	ra,8(sp)
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	01010113          	addi	sp,sp,16
    80004464:	00008067          	ret

0000000080004468 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004468:	ff010113          	addi	sp,sp,-16
    8000446c:	00113423          	sd	ra,8(sp)
    80004470:	00813023          	sd	s0,0(sp)
    80004474:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004478:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    8000447c:	00651513          	slli	a0,a0,0x6
    80004480:	00000097          	auipc	ra,0x0
    80004484:	fc0080e7          	jalr	-64(ra) # 80004440 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004488:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	898080e7          	jalr	-1896(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800044a4:	ff010113          	addi	sp,sp,-16
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	00813023          	sd	s0,0(sp)
    800044b0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	f64080e7          	jalr	-156(ra) # 80004418 <_ZN15MemoryAllocator8mem_freeEPv>
    800044bc:	00813083          	ld	ra,8(sp)
    800044c0:	00013403          	ld	s0,0(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret

00000000800044cc <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00113423          	sd	ra,8(sp)
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800044dc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	fc4080e7          	jalr	-60(ra) # 800044a4 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    800044e8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	838080e7          	jalr	-1992(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    800044f4:	00813083          	ld	ra,8(sp)
    800044f8:	00013403          	ld	s0,0(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00813423          	sd	s0,8(sp)
    8000450c:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004510:	00b52a23          	sw	a1,20(a0)
    80004514:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004518:	00053423          	sd	zero,8(a0)
    8000451c:	00053023          	sd	zero,0(a0)
}
    80004520:	00813403          	ld	s0,8(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000452c:	ff010113          	addi	sp,sp,-16
    80004530:	00813423          	sd	s0,8(sp)
    80004534:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004538:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000453c:	00053783          	ld	a5,0(a0)
    80004540:	00078e63          	beqz	a5,8000455c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004544:	00853783          	ld	a5,8(a0)
    80004548:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000454c:	00b53423          	sd	a1,8(a0)
    }
}
    80004550:	00813403          	ld	s0,8(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000455c:	00b53423          	sd	a1,8(a0)
    80004560:	00b53023          	sd	a1,0(a0)
    80004564:	fedff06f          	j	80004550 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004568 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004568:	ff010113          	addi	sp,sp,-16
    8000456c:	00113423          	sd	ra,8(sp)
    80004570:	00813023          	sd	s0,0(sp)
    80004574:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004578:	00007797          	auipc	a5,0x7
    8000457c:	5987b783          	ld	a5,1432(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004580:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004584:	00200793          	li	a5,2
    80004588:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	fa0080e7          	jalr	-96(ra) # 8000452c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	3a8080e7          	jalr	936(ra) # 8000293c <_ZN3PCB8dispatchEv>
}
    8000459c:	00813083          	ld	ra,8(sp)
    800045a0:	00013403          	ld	s0,0(sp)
    800045a4:	01010113          	addi	sp,sp,16
    800045a8:	00008067          	ret

00000000800045ac <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800045ac:	01052783          	lw	a5,16(a0)
    800045b0:	fff7879b          	addiw	a5,a5,-1
    800045b4:	00f52823          	sw	a5,16(a0)
    800045b8:	02079713          	slli	a4,a5,0x20
    800045bc:	00074663          	bltz	a4,800045c8 <_ZN10KSemaphore4waitEv+0x1c>
}
    800045c0:	00000513          	li	a0,0
    800045c4:	00008067          	ret
uint64 KSemaphore::wait() {
    800045c8:	ff010113          	addi	sp,sp,-16
    800045cc:	00113423          	sd	ra,8(sp)
    800045d0:	00813023          	sd	s0,0(sp)
    800045d4:	01010413          	addi	s0,sp,16
        block();
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	f90080e7          	jalr	-112(ra) # 80004568 <_ZN10KSemaphore5blockEv>
}
    800045e0:	00000513          	li	a0,0
    800045e4:	00813083          	ld	ra,8(sp)
    800045e8:	00013403          	ld	s0,0(sp)
    800045ec:	01010113          	addi	sp,sp,16
    800045f0:	00008067          	ret

00000000800045f4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800045f4:	ff010113          	addi	sp,sp,-16
    800045f8:	00813423          	sd	s0,8(sp)
    800045fc:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004600:	00053503          	ld	a0,0(a0)
    80004604:	00813403          	ld	s0,8(sp)
    80004608:	01010113          	addi	sp,sp,16
    8000460c:	00008067          	ret

0000000080004610 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00813423          	sd	s0,8(sp)
    80004618:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000461c:	00053783          	ld	a5,0(a0)
    80004620:	00078c63          	beqz	a5,80004638 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004624:	0087b703          	ld	a4,8(a5)
    80004628:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000462c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004630:	00053783          	ld	a5,0(a0)
    80004634:	00078863          	beqz	a5,80004644 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	01010113          	addi	sp,sp,16
    80004640:	00008067          	ret
        tailBlocked =0;
    80004644:	00053423          	sd	zero,8(a0)
    80004648:	ff1ff06f          	j	80004638 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000464c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000464c:	fe010113          	addi	sp,sp,-32
    80004650:	00113c23          	sd	ra,24(sp)
    80004654:	00813823          	sd	s0,16(sp)
    80004658:	00913423          	sd	s1,8(sp)
    8000465c:	01213023          	sd	s2,0(sp)
    80004660:	02010413          	addi	s0,sp,32
    80004664:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004668:	00090513          	mv	a0,s2
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	f88080e7          	jalr	-120(ra) # 800045f4 <_ZN10KSemaphore15getFirstBlockedEv>
    80004674:	00050493          	mv	s1,a0
    80004678:	02050063          	beqz	a0,80004698 <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    8000467c:	00090513          	mv	a0,s2
    80004680:	00000097          	auipc	ra,0x0
    80004684:	f90080e7          	jalr	-112(ra) # 80004610 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    80004688:	00048513          	mv	a0,s1
    8000468c:	fffff097          	auipc	ra,0xfffff
    80004690:	f0c080e7          	jalr	-244(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004694:	fd5ff06f          	j	80004668 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004698:	01813083          	ld	ra,24(sp)
    8000469c:	01013403          	ld	s0,16(sp)
    800046a0:	00813483          	ld	s1,8(sp)
    800046a4:	00013903          	ld	s2,0(sp)
    800046a8:	02010113          	addi	sp,sp,32
    800046ac:	00008067          	ret

00000000800046b0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800046b0:	fe010113          	addi	sp,sp,-32
    800046b4:	00113c23          	sd	ra,24(sp)
    800046b8:	00813823          	sd	s0,16(sp)
    800046bc:	00913423          	sd	s1,8(sp)
    800046c0:	01213023          	sd	s2,0(sp)
    800046c4:	02010413          	addi	s0,sp,32
    800046c8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800046cc:	00000097          	auipc	ra,0x0
    800046d0:	f28080e7          	jalr	-216(ra) # 800045f4 <_ZN10KSemaphore15getFirstBlockedEv>
    800046d4:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800046d8:	00090513          	mv	a0,s2
    800046dc:	00000097          	auipc	ra,0x0
    800046e0:	f34080e7          	jalr	-204(ra) # 80004610 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800046e4:	00048863          	beqz	s1,800046f4 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    800046e8:	00048513          	mv	a0,s1
    800046ec:	fffff097          	auipc	ra,0xfffff
    800046f0:	eac080e7          	jalr	-340(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    }
}
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00813483          	ld	s1,8(sp)
    80004700:	00013903          	ld	s2,0(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret

000000008000470c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000470c:	01052783          	lw	a5,16(a0)
    80004710:	0017879b          	addiw	a5,a5,1
    80004714:	0007871b          	sext.w	a4,a5
    80004718:	00f52823          	sw	a5,16(a0)
    8000471c:	00e05663          	blez	a4,80004728 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004720:	00000513          	li	a0,0
    80004724:	00008067          	ret
uint64 KSemaphore::signal() {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
        unblock();
    80004738:	00000097          	auipc	ra,0x0
    8000473c:	f78080e7          	jalr	-136(ra) # 800046b0 <_ZN10KSemaphore7unblockEv>
}
    80004740:	00000513          	li	a0,0
    80004744:	00813083          	ld	ra,8(sp)
    80004748:	00013403          	ld	s0,0(sp)
    8000474c:	01010113          	addi	sp,sp,16
    80004750:	00008067          	ret

0000000080004754 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004754:	ff010113          	addi	sp,sp,-16
    80004758:	00113423          	sd	ra,8(sp)
    8000475c:	00813023          	sd	s0,0(sp)
    80004760:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80004764:	00000097          	auipc	ra,0x0
    80004768:	cdc080e7          	jalr	-804(ra) # 80004440 <_Z7kmallocm>
}
    8000476c:	00813083          	ld	ra,8(sp)
    80004770:	00013403          	ld	s0,0(sp)
    80004774:	01010113          	addi	sp,sp,16
    80004778:	00008067          	ret

000000008000477c <_ZN10KSemaphore14semOpenHandlerEv>:
{
    8000477c:	fd010113          	addi	sp,sp,-48
    80004780:	02113423          	sd	ra,40(sp)
    80004784:	02813023          	sd	s0,32(sp)
    80004788:	00913c23          	sd	s1,24(sp)
    8000478c:	01213823          	sd	s2,16(sp)
    80004790:	01313423          	sd	s3,8(sp)
    80004794:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004798:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000479c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800047a0:	01800513          	li	a0,24
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	fb0080e7          	jalr	-80(ra) # 80004754 <_ZN10KSemaphorenwEm>
    800047ac:	00050493          	mv	s1,a0
    800047b0:	0009859b          	sext.w	a1,s3
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	d50080e7          	jalr	-688(ra) # 80004504 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800047bc:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800047c0:	02048263          	beqz	s1,800047e4 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800047c4:	00000513          	li	a0,0
}
    800047c8:	02813083          	ld	ra,40(sp)
    800047cc:	02013403          	ld	s0,32(sp)
    800047d0:	01813483          	ld	s1,24(sp)
    800047d4:	01013903          	ld	s2,16(sp)
    800047d8:	00813983          	ld	s3,8(sp)
    800047dc:	03010113          	addi	sp,sp,48
    800047e0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800047e4:	fff00513          	li	a0,-1
    800047e8:	fe1ff06f          	j	800047c8 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800047ec <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800047ec:	ff010113          	addi	sp,sp,-16
    800047f0:	00113423          	sd	ra,8(sp)
    800047f4:	00813023          	sd	s0,0(sp)
    800047f8:	01010413          	addi	s0,sp,16
    kfree(p);
    800047fc:	00000097          	auipc	ra,0x0
    80004800:	ca8080e7          	jalr	-856(ra) # 800044a4 <_Z5kfreePv>
}
    80004804:	00813083          	ld	ra,8(sp)
    80004808:	00013403          	ld	s0,0(sp)
    8000480c:	01010113          	addi	sp,sp,16
    80004810:	00008067          	ret

0000000080004814 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00113c23          	sd	ra,24(sp)
    8000481c:	00813823          	sd	s0,16(sp)
    80004820:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004824:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	d84080e7          	jalr	-636(ra) # 800045ac <_ZN10KSemaphore4waitEv>
    80004830:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004834:	fe843783          	ld	a5,-24(s0)
    80004838:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    8000483c:	fffff097          	auipc	ra,0xfffff
    80004840:	4e8080e7          	jalr	1256(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004844:	01813083          	ld	ra,24(sp)
    80004848:	01013403          	ld	s0,16(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret

0000000080004854 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004854:	fe010113          	addi	sp,sp,-32
    80004858:	00113c23          	sd	ra,24(sp)
    8000485c:	00813823          	sd	s0,16(sp)
    80004860:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004864:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	ea4080e7          	jalr	-348(ra) # 8000470c <_ZN10KSemaphore6signalEv>
    80004870:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004874:	fe843783          	ld	a5,-24(s0)
    80004878:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    8000487c:	fffff097          	auipc	ra,0xfffff
    80004880:	4a8080e7          	jalr	1192(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004884:	01813083          	ld	ra,24(sp)
    80004888:	01013403          	ld	s0,16(sp)
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret

0000000080004894 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004894:	fe010113          	addi	sp,sp,-32
    80004898:	00113c23          	sd	ra,24(sp)
    8000489c:	00813823          	sd	s0,16(sp)
    800048a0:	00913423          	sd	s1,8(sp)
    800048a4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800048a8:	00058493          	mv	s1,a1
    delete kSem;
    800048ac:	00048e63          	beqz	s1,800048c8 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800048b0:	00048513          	mv	a0,s1
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	d98080e7          	jalr	-616(ra) # 8000464c <_ZN10KSemaphoreD1Ev>
    800048bc:	00048513          	mv	a0,s1
    800048c0:	00000097          	auipc	ra,0x0
    800048c4:	f2c080e7          	jalr	-212(ra) # 800047ec <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800048c8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800048cc:	fffff097          	auipc	ra,0xfffff
    800048d0:	458080e7          	jalr	1112(ra) # 80003d24 <_ZN5Riscv13w_a0_sscratchEv>
}
    800048d4:	01813083          	ld	ra,24(sp)
    800048d8:	01013403          	ld	s0,16(sp)
    800048dc:	00813483          	ld	s1,8(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00913423          	sd	s1,8(sp)
    800048f8:	01213023          	sd	s2,0(sp)
    800048fc:	02010413          	addi	s0,sp,32
    80004900:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004904:	00000913          	li	s2,0
    80004908:	00c0006f          	j	80004914 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	a28080e7          	jalr	-1496(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	bfc080e7          	jalr	-1028(ra) # 80001510 <getc>
    8000491c:	0005059b          	sext.w	a1,a0
    80004920:	07100793          	li	a5,113
    80004924:	02f58a63          	beq	a1,a5,80004958 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004928:	0084b503          	ld	a0,8(s1)
    8000492c:	00002097          	auipc	ra,0x2
    80004930:	c6c080e7          	jalr	-916(ra) # 80006598 <_ZN6Buffer3putEi>
        i++;
    80004934:	0019071b          	addiw	a4,s2,1
    80004938:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000493c:	0004a683          	lw	a3,0(s1)
    80004940:	0026979b          	slliw	a5,a3,0x2
    80004944:	00d787bb          	addw	a5,a5,a3
    80004948:	0017979b          	slliw	a5,a5,0x1
    8000494c:	02f767bb          	remw	a5,a4,a5
    80004950:	fc0792e3          	bnez	a5,80004914 <_Z16producerKeyboardPv+0x2c>
    80004954:	fb9ff06f          	j	8000490c <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004958:	00100793          	li	a5,1
    8000495c:	0000b717          	auipc	a4,0xb
    80004960:	2ef72223          	sw	a5,740(a4) # 8000fc40 <threadEnd>

    delete data->buffer;
    80004964:	0084b903          	ld	s2,8(s1)
    80004968:	00090e63          	beqz	s2,80004984 <_Z16producerKeyboardPv+0x9c>
    8000496c:	00090513          	mv	a0,s2
    80004970:	00002097          	auipc	ra,0x2
    80004974:	dcc080e7          	jalr	-564(ra) # 8000673c <_ZN6BufferD1Ev>
    80004978:	00090513          	mv	a0,s2
    8000497c:	fffff097          	auipc	ra,0xfffff
    80004980:	e08080e7          	jalr	-504(ra) # 80003784 <_ZdlPv>

    sem_signal(data->wait);
    80004984:	0104b503          	ld	a0,16(s1)
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	a84080e7          	jalr	-1404(ra) # 8000140c <sem_signal>
}
    80004990:	01813083          	ld	ra,24(sp)
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	00813483          	ld	s1,8(sp)
    8000499c:	00013903          	ld	s2,0(sp)
    800049a0:	02010113          	addi	sp,sp,32
    800049a4:	00008067          	ret

00000000800049a8 <_Z8producerPv>:

void producer(void *arg) {
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	01213023          	sd	s2,0(sp)
    800049bc:	02010413          	addi	s0,sp,32
    800049c0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049c4:	00000913          	li	s2,0
    800049c8:	00c0006f          	j	800049d4 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	968080e7          	jalr	-1688(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800049d4:	0000b797          	auipc	a5,0xb
    800049d8:	26c7a783          	lw	a5,620(a5) # 8000fc40 <threadEnd>
    800049dc:	02079e63          	bnez	a5,80004a18 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800049e0:	0004a583          	lw	a1,0(s1)
    800049e4:	0305859b          	addiw	a1,a1,48
    800049e8:	0084b503          	ld	a0,8(s1)
    800049ec:	00002097          	auipc	ra,0x2
    800049f0:	bac080e7          	jalr	-1108(ra) # 80006598 <_ZN6Buffer3putEi>
        i++;
    800049f4:	0019071b          	addiw	a4,s2,1
    800049f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049fc:	0004a683          	lw	a3,0(s1)
    80004a00:	0026979b          	slliw	a5,a3,0x2
    80004a04:	00d787bb          	addw	a5,a5,a3
    80004a08:	0017979b          	slliw	a5,a5,0x1
    80004a0c:	02f767bb          	remw	a5,a4,a5
    80004a10:	fc0792e3          	bnez	a5,800049d4 <_Z8producerPv+0x2c>
    80004a14:	fb9ff06f          	j	800049cc <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004a18:	0104b503          	ld	a0,16(s1)
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	9f0080e7          	jalr	-1552(ra) # 8000140c <sem_signal>
}
    80004a24:	01813083          	ld	ra,24(sp)
    80004a28:	01013403          	ld	s0,16(sp)
    80004a2c:	00813483          	ld	s1,8(sp)
    80004a30:	00013903          	ld	s2,0(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret

0000000080004a3c <_Z8consumerPv>:

void consumer(void *arg) {
    80004a3c:	fd010113          	addi	sp,sp,-48
    80004a40:	02113423          	sd	ra,40(sp)
    80004a44:	02813023          	sd	s0,32(sp)
    80004a48:	00913c23          	sd	s1,24(sp)
    80004a4c:	01213823          	sd	s2,16(sp)
    80004a50:	01313423          	sd	s3,8(sp)
    80004a54:	03010413          	addi	s0,sp,48
    80004a58:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004a5c:	00000993          	li	s3,0
    80004a60:	01c0006f          	j	80004a7c <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	8d0080e7          	jalr	-1840(ra) # 80001334 <thread_dispatch>
    80004a6c:	0500006f          	j	80004abc <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a70:	00a00513          	li	a0,10
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	ac4080e7          	jalr	-1340(ra) # 80001538 <putc>
    while (!threadEnd) {
    80004a7c:	0000b797          	auipc	a5,0xb
    80004a80:	1c47a783          	lw	a5,452(a5) # 8000fc40 <threadEnd>
    80004a84:	04079463          	bnez	a5,80004acc <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    80004a88:	00893503          	ld	a0,8(s2)
    80004a8c:	00002097          	auipc	ra,0x2
    80004a90:	b9c080e7          	jalr	-1124(ra) # 80006628 <_ZN6Buffer3getEv>
        i++;
    80004a94:	0019849b          	addiw	s1,s3,1
    80004a98:	0004899b          	sext.w	s3,s1
        putc(key);
    80004a9c:	0ff57513          	andi	a0,a0,255
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	a98080e7          	jalr	-1384(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    80004aa8:	00092703          	lw	a4,0(s2)
    80004aac:	0027179b          	slliw	a5,a4,0x2
    80004ab0:	00e787bb          	addw	a5,a5,a4
    80004ab4:	02f4e7bb          	remw	a5,s1,a5
    80004ab8:	fa0786e3          	beqz	a5,80004a64 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80004abc:	05000793          	li	a5,80
    80004ac0:	02f4e4bb          	remw	s1,s1,a5
    80004ac4:	fa049ce3          	bnez	s1,80004a7c <_Z8consumerPv+0x40>
    80004ac8:	fa9ff06f          	j	80004a70 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    80004acc:	01093503          	ld	a0,16(s2)
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	93c080e7          	jalr	-1732(ra) # 8000140c <sem_signal>
}
    80004ad8:	02813083          	ld	ra,40(sp)
    80004adc:	02013403          	ld	s0,32(sp)
    80004ae0:	01813483          	ld	s1,24(sp)
    80004ae4:	01013903          	ld	s2,16(sp)
    80004ae8:	00813983          	ld	s3,8(sp)
    80004aec:	03010113          	addi	sp,sp,48
    80004af0:	00008067          	ret

0000000080004af4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004af4:	f9010113          	addi	sp,sp,-112
    80004af8:	06113423          	sd	ra,104(sp)
    80004afc:	06813023          	sd	s0,96(sp)
    80004b00:	04913c23          	sd	s1,88(sp)
    80004b04:	05213823          	sd	s2,80(sp)
    80004b08:	05313423          	sd	s3,72(sp)
    80004b0c:	05413023          	sd	s4,64(sp)
    80004b10:	03513c23          	sd	s5,56(sp)
    80004b14:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    80004b18:	00005517          	auipc	a0,0x5
    80004b1c:	83850513          	addi	a0,a0,-1992 # 80009350 <CONSOLE_STATUS+0x340>
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	1e4080e7          	jalr	484(ra) # 80005d04 <_Z11printStringPKc>
    getString(input, 30);
    80004b28:	01e00593          	li	a1,30
    80004b2c:	fa040493          	addi	s1,s0,-96
    80004b30:	00048513          	mv	a0,s1
    80004b34:	00001097          	auipc	ra,0x1
    80004b38:	24c080e7          	jalr	588(ra) # 80005d80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004b3c:	00048513          	mv	a0,s1
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	30c080e7          	jalr	780(ra) # 80005e4c <_Z11stringToIntPKc>
    80004b48:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004b4c:	00005517          	auipc	a0,0x5
    80004b50:	82450513          	addi	a0,a0,-2012 # 80009370 <CONSOLE_STATUS+0x360>
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	1b0080e7          	jalr	432(ra) # 80005d04 <_Z11printStringPKc>
    getString(input, 30);
    80004b5c:	01e00593          	li	a1,30
    80004b60:	00048513          	mv	a0,s1
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	21c080e7          	jalr	540(ra) # 80005d80 <_Z9getStringPci>
    n = stringToInt(input);
    80004b6c:	00048513          	mv	a0,s1
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	2dc080e7          	jalr	732(ra) # 80005e4c <_Z11stringToIntPKc>
    80004b78:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	81450513          	addi	a0,a0,-2028 # 80009390 <CONSOLE_STATUS+0x380>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	180080e7          	jalr	384(ra) # 80005d04 <_Z11printStringPKc>
    80004b8c:	00000613          	li	a2,0
    80004b90:	00a00593          	li	a1,10
    80004b94:	00090513          	mv	a0,s2
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	304080e7          	jalr	772(ra) # 80005e9c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ba0:	00005517          	auipc	a0,0x5
    80004ba4:	80850513          	addi	a0,a0,-2040 # 800093a8 <CONSOLE_STATUS+0x398>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	15c080e7          	jalr	348(ra) # 80005d04 <_Z11printStringPKc>
    80004bb0:	00000613          	li	a2,0
    80004bb4:	00a00593          	li	a1,10
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	2e0080e7          	jalr	736(ra) # 80005e9c <_Z8printIntiii>
    printString(".\n");
    80004bc4:	00004517          	auipc	a0,0x4
    80004bc8:	7fc50513          	addi	a0,a0,2044 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	138080e7          	jalr	312(ra) # 80005d04 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    80004bd4:	03800513          	li	a0,56
    80004bd8:	fffff097          	auipc	ra,0xfffff
    80004bdc:	b84080e7          	jalr	-1148(ra) # 8000375c <_Znwm>
    80004be0:	00050a13          	mv	s4,a0
    80004be4:	00048593          	mv	a1,s1
    80004be8:	00002097          	auipc	ra,0x2
    80004bec:	914080e7          	jalr	-1772(ra) # 800064fc <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004bf0:	00000593          	li	a1,0
    80004bf4:	0000b517          	auipc	a0,0xb
    80004bf8:	05450513          	addi	a0,a0,84 # 8000fc48 <waitForAll>
    80004bfc:	ffffc097          	auipc	ra,0xffffc
    80004c00:	780080e7          	jalr	1920(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004c04:	00391793          	slli	a5,s2,0x3
    80004c08:	00f78793          	addi	a5,a5,15
    80004c0c:	ff07f793          	andi	a5,a5,-16
    80004c10:	40f10133          	sub	sp,sp,a5
    80004c14:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004c18:	0019071b          	addiw	a4,s2,1
    80004c1c:	00171793          	slli	a5,a4,0x1
    80004c20:	00e787b3          	add	a5,a5,a4
    80004c24:	00379793          	slli	a5,a5,0x3
    80004c28:	00f78793          	addi	a5,a5,15
    80004c2c:	ff07f793          	andi	a5,a5,-16
    80004c30:	40f10133          	sub	sp,sp,a5
    80004c34:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004c38:	00191613          	slli	a2,s2,0x1
    80004c3c:	012607b3          	add	a5,a2,s2
    80004c40:	00379793          	slli	a5,a5,0x3
    80004c44:	00f987b3          	add	a5,s3,a5
    80004c48:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004c4c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004c50:	0000b717          	auipc	a4,0xb
    80004c54:	ff873703          	ld	a4,-8(a4) # 8000fc48 <waitForAll>
    80004c58:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004c5c:	00078613          	mv	a2,a5
    80004c60:	00000597          	auipc	a1,0x0
    80004c64:	ddc58593          	addi	a1,a1,-548 # 80004a3c <_Z8consumerPv>
    80004c68:	f9840513          	addi	a0,s0,-104
    80004c6c:	ffffc097          	auipc	ra,0xffffc
    80004c70:	648080e7          	jalr	1608(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004c74:	00000493          	li	s1,0
    80004c78:	0280006f          	j	80004ca0 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004c7c:	00000597          	auipc	a1,0x0
    80004c80:	c6c58593          	addi	a1,a1,-916 # 800048e8 <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004c84:	00179613          	slli	a2,a5,0x1
    80004c88:	00f60633          	add	a2,a2,a5
    80004c8c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004c90:	00c98633          	add	a2,s3,a2
    80004c94:	ffffc097          	auipc	ra,0xffffc
    80004c98:	620080e7          	jalr	1568(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004c9c:	0014849b          	addiw	s1,s1,1
    80004ca0:	0524d263          	bge	s1,s2,80004ce4 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004ca4:	00149793          	slli	a5,s1,0x1
    80004ca8:	009787b3          	add	a5,a5,s1
    80004cac:	00379793          	slli	a5,a5,0x3
    80004cb0:	00f987b3          	add	a5,s3,a5
    80004cb4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004cb8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004cbc:	0000b717          	auipc	a4,0xb
    80004cc0:	f8c73703          	ld	a4,-116(a4) # 8000fc48 <waitForAll>
    80004cc4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004cc8:	00048793          	mv	a5,s1
    80004ccc:	00349513          	slli	a0,s1,0x3
    80004cd0:	00aa8533          	add	a0,s5,a0
    80004cd4:	fa9054e3          	blez	s1,80004c7c <_Z22producerConsumer_C_APIv+0x188>
    80004cd8:	00000597          	auipc	a1,0x0
    80004cdc:	cd058593          	addi	a1,a1,-816 # 800049a8 <_Z8producerPv>
    80004ce0:	fa5ff06f          	j	80004c84 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	650080e7          	jalr	1616(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004cec:	00000493          	li	s1,0
    80004cf0:	00994e63          	blt	s2,s1,80004d0c <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004cf4:	0000b517          	auipc	a0,0xb
    80004cf8:	f5453503          	ld	a0,-172(a0) # 8000fc48 <waitForAll>
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	6e4080e7          	jalr	1764(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004d04:	0014849b          	addiw	s1,s1,1
    80004d08:	fe9ff06f          	j	80004cf0 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004d0c:	0000b517          	auipc	a0,0xb
    80004d10:	f3c53503          	ld	a0,-196(a0) # 8000fc48 <waitForAll>
    80004d14:	ffffc097          	auipc	ra,0xffffc
    80004d18:	6a0080e7          	jalr	1696(ra) # 800013b4 <sem_close>
    80004d1c:	f9040113          	addi	sp,s0,-112
    80004d20:	06813083          	ld	ra,104(sp)
    80004d24:	06013403          	ld	s0,96(sp)
    80004d28:	05813483          	ld	s1,88(sp)
    80004d2c:	05013903          	ld	s2,80(sp)
    80004d30:	04813983          	ld	s3,72(sp)
    80004d34:	04013a03          	ld	s4,64(sp)
    80004d38:	03813a83          	ld	s5,56(sp)
    80004d3c:	07010113          	addi	sp,sp,112
    80004d40:	00008067          	ret
    80004d44:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004d48:	000a0513          	mv	a0,s4
    80004d4c:	fffff097          	auipc	ra,0xfffff
    80004d50:	a38080e7          	jalr	-1480(ra) # 80003784 <_ZdlPv>
    80004d54:	00048513          	mv	a0,s1
    80004d58:	0000c097          	auipc	ra,0xc
    80004d5c:	fe0080e7          	jalr	-32(ra) # 80010d38 <_Unwind_Resume>

0000000080004d60 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d60:	fe010113          	addi	sp,sp,-32
    80004d64:	00113c23          	sd	ra,24(sp)
    80004d68:	00813823          	sd	s0,16(sp)
    80004d6c:	00913423          	sd	s1,8(sp)
    80004d70:	01213023          	sd	s2,0(sp)
    80004d74:	02010413          	addi	s0,sp,32
    80004d78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d7c:	00100793          	li	a5,1
    80004d80:	02a7f863          	bgeu	a5,a0,80004db0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d84:	00a00793          	li	a5,10
    80004d88:	02f577b3          	remu	a5,a0,a5
    80004d8c:	02078e63          	beqz	a5,80004dc8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d90:	fff48513          	addi	a0,s1,-1
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	fcc080e7          	jalr	-52(ra) # 80004d60 <_ZL9fibonaccim>
    80004d9c:	00050913          	mv	s2,a0
    80004da0:	ffe48513          	addi	a0,s1,-2
    80004da4:	00000097          	auipc	ra,0x0
    80004da8:	fbc080e7          	jalr	-68(ra) # 80004d60 <_ZL9fibonaccim>
    80004dac:	00a90533          	add	a0,s2,a0
}
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	56c080e7          	jalr	1388(ra) # 80001334 <thread_dispatch>
    80004dd0:	fc1ff06f          	j	80004d90 <_ZL9fibonaccim+0x30>

0000000080004dd4 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004dd4:	fe010113          	addi	sp,sp,-32
    80004dd8:	00113c23          	sd	ra,24(sp)
    80004ddc:	00813823          	sd	s0,16(sp)
    80004de0:	00913423          	sd	s1,8(sp)
    80004de4:	01213023          	sd	s2,0(sp)
    80004de8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004dec:	00000913          	li	s2,0
    80004df0:	0380006f          	j	80004e28 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004df4:	ffffc097          	auipc	ra,0xffffc
    80004df8:	540080e7          	jalr	1344(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004dfc:	00148493          	addi	s1,s1,1
    80004e00:	000027b7          	lui	a5,0x2
    80004e04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e08:	0097ee63          	bltu	a5,s1,80004e24 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e0c:	00000713          	li	a4,0
    80004e10:	000077b7          	lui	a5,0x7
    80004e14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e18:	fce7eee3          	bltu	a5,a4,80004df4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004e1c:	00170713          	addi	a4,a4,1
    80004e20:	ff1ff06f          	j	80004e10 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e24:	00190913          	addi	s2,s2,1
    80004e28:	00900793          	li	a5,9
    80004e2c:	0527e063          	bltu	a5,s2,80004e6c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e30:	00004517          	auipc	a0,0x4
    80004e34:	59850513          	addi	a0,a0,1432 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	ecc080e7          	jalr	-308(ra) # 80005d04 <_Z11printStringPKc>
    80004e40:	00000613          	li	a2,0
    80004e44:	00a00593          	li	a1,10
    80004e48:	0009051b          	sext.w	a0,s2
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	050080e7          	jalr	80(ra) # 80005e9c <_Z8printIntiii>
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	2ac50513          	addi	a0,a0,684 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	ea8080e7          	jalr	-344(ra) # 80005d04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e64:	00000493          	li	s1,0
    80004e68:	f99ff06f          	j	80004e00 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004e6c:	00004517          	auipc	a0,0x4
    80004e70:	56450513          	addi	a0,a0,1380 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	e90080e7          	jalr	-368(ra) # 80005d04 <_Z11printStringPKc>
    finishedA = true;
    80004e7c:	00100793          	li	a5,1
    80004e80:	0000b717          	auipc	a4,0xb
    80004e84:	dcf70823          	sb	a5,-560(a4) # 8000fc50 <_ZL9finishedA>
}
    80004e88:	01813083          	ld	ra,24(sp)
    80004e8c:	01013403          	ld	s0,16(sp)
    80004e90:	00813483          	ld	s1,8(sp)
    80004e94:	00013903          	ld	s2,0(sp)
    80004e98:	02010113          	addi	sp,sp,32
    80004e9c:	00008067          	ret

0000000080004ea0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004ea0:	fe010113          	addi	sp,sp,-32
    80004ea4:	00113c23          	sd	ra,24(sp)
    80004ea8:	00813823          	sd	s0,16(sp)
    80004eac:	00913423          	sd	s1,8(sp)
    80004eb0:	01213023          	sd	s2,0(sp)
    80004eb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004eb8:	00000913          	li	s2,0
    80004ebc:	0380006f          	j	80004ef4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004ec0:	ffffc097          	auipc	ra,0xffffc
    80004ec4:	474080e7          	jalr	1140(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004ec8:	00148493          	addi	s1,s1,1
    80004ecc:	000027b7          	lui	a5,0x2
    80004ed0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ed4:	0097ee63          	bltu	a5,s1,80004ef0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ed8:	00000713          	li	a4,0
    80004edc:	000077b7          	lui	a5,0x7
    80004ee0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ee4:	fce7eee3          	bltu	a5,a4,80004ec0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004ee8:	00170713          	addi	a4,a4,1
    80004eec:	ff1ff06f          	j	80004edc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ef0:	00190913          	addi	s2,s2,1
    80004ef4:	00f00793          	li	a5,15
    80004ef8:	0527e063          	bltu	a5,s2,80004f38 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004efc:	00004517          	auipc	a0,0x4
    80004f00:	4e450513          	addi	a0,a0,1252 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004f04:	00001097          	auipc	ra,0x1
    80004f08:	e00080e7          	jalr	-512(ra) # 80005d04 <_Z11printStringPKc>
    80004f0c:	00000613          	li	a2,0
    80004f10:	00a00593          	li	a1,10
    80004f14:	0009051b          	sext.w	a0,s2
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	f84080e7          	jalr	-124(ra) # 80005e9c <_Z8printIntiii>
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	1e050513          	addi	a0,a0,480 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	ddc080e7          	jalr	-548(ra) # 80005d04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f30:	00000493          	li	s1,0
    80004f34:	f99ff06f          	j	80004ecc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004f38:	ffffc097          	auipc	ra,0xffffc
    80004f3c:	3fc080e7          	jalr	1020(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004f40:	00004517          	auipc	a0,0x4
    80004f44:	4a850513          	addi	a0,a0,1192 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004f48:	00001097          	auipc	ra,0x1
    80004f4c:	dbc080e7          	jalr	-580(ra) # 80005d04 <_Z11printStringPKc>
    finishedB = true;
    80004f50:	00100793          	li	a5,1
    80004f54:	0000b717          	auipc	a4,0xb
    80004f58:	cef70ea3          	sb	a5,-771(a4) # 8000fc51 <_ZL9finishedB>
}
    80004f5c:	01813083          	ld	ra,24(sp)
    80004f60:	01013403          	ld	s0,16(sp)
    80004f64:	00813483          	ld	s1,8(sp)
    80004f68:	00013903          	ld	s2,0(sp)
    80004f6c:	02010113          	addi	sp,sp,32
    80004f70:	00008067          	ret

0000000080004f74 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00113c23          	sd	ra,24(sp)
    80004f7c:	00813823          	sd	s0,16(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	01213023          	sd	s2,0(sp)
    80004f88:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f8c:	00000493          	li	s1,0
    80004f90:	0400006f          	j	80004fd0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004f94:	00004517          	auipc	a0,0x4
    80004f98:	46450513          	addi	a0,a0,1124 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	d68080e7          	jalr	-664(ra) # 80005d04 <_Z11printStringPKc>
    80004fa4:	00000613          	li	a2,0
    80004fa8:	00a00593          	li	a1,10
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	eec080e7          	jalr	-276(ra) # 80005e9c <_Z8printIntiii>
    80004fb8:	00004517          	auipc	a0,0x4
    80004fbc:	14850513          	addi	a0,a0,328 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	d44080e7          	jalr	-700(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004fc8:	0014849b          	addiw	s1,s1,1
    80004fcc:	0ff4f493          	andi	s1,s1,255
    80004fd0:	00200793          	li	a5,2
    80004fd4:	fc97f0e3          	bgeu	a5,s1,80004f94 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004fd8:	00004517          	auipc	a0,0x4
    80004fdc:	42850513          	addi	a0,a0,1064 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	d24080e7          	jalr	-732(ra) # 80005d04 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004fe8:	00700313          	li	t1,7
    thread_dispatch();
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	348080e7          	jalr	840(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004ff4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004ff8:	00004517          	auipc	a0,0x4
    80004ffc:	41850513          	addi	a0,a0,1048 # 80009410 <CONSOLE_STATUS+0x400>
    80005000:	00001097          	auipc	ra,0x1
    80005004:	d04080e7          	jalr	-764(ra) # 80005d04 <_Z11printStringPKc>
    80005008:	00000613          	li	a2,0
    8000500c:	00a00593          	li	a1,10
    80005010:	0009051b          	sext.w	a0,s2
    80005014:	00001097          	auipc	ra,0x1
    80005018:	e88080e7          	jalr	-376(ra) # 80005e9c <_Z8printIntiii>
    8000501c:	00004517          	auipc	a0,0x4
    80005020:	0e450513          	addi	a0,a0,228 # 80009100 <CONSOLE_STATUS+0xf0>
    80005024:	00001097          	auipc	ra,0x1
    80005028:	ce0080e7          	jalr	-800(ra) # 80005d04 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000502c:	00c00513          	li	a0,12
    80005030:	00000097          	auipc	ra,0x0
    80005034:	d30080e7          	jalr	-720(ra) # 80004d60 <_ZL9fibonaccim>
    80005038:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000503c:	00004517          	auipc	a0,0x4
    80005040:	3dc50513          	addi	a0,a0,988 # 80009418 <CONSOLE_STATUS+0x408>
    80005044:	00001097          	auipc	ra,0x1
    80005048:	cc0080e7          	jalr	-832(ra) # 80005d04 <_Z11printStringPKc>
    8000504c:	00000613          	li	a2,0
    80005050:	00a00593          	li	a1,10
    80005054:	0009051b          	sext.w	a0,s2
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	e44080e7          	jalr	-444(ra) # 80005e9c <_Z8printIntiii>
    80005060:	00004517          	auipc	a0,0x4
    80005064:	0a050513          	addi	a0,a0,160 # 80009100 <CONSOLE_STATUS+0xf0>
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	c9c080e7          	jalr	-868(ra) # 80005d04 <_Z11printStringPKc>
    80005070:	0400006f          	j	800050b0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005074:	00004517          	auipc	a0,0x4
    80005078:	38450513          	addi	a0,a0,900 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	c88080e7          	jalr	-888(ra) # 80005d04 <_Z11printStringPKc>
    80005084:	00000613          	li	a2,0
    80005088:	00a00593          	li	a1,10
    8000508c:	00048513          	mv	a0,s1
    80005090:	00001097          	auipc	ra,0x1
    80005094:	e0c080e7          	jalr	-500(ra) # 80005e9c <_Z8printIntiii>
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	06850513          	addi	a0,a0,104 # 80009100 <CONSOLE_STATUS+0xf0>
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	c64080e7          	jalr	-924(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800050a8:	0014849b          	addiw	s1,s1,1
    800050ac:	0ff4f493          	andi	s1,s1,255
    800050b0:	00500793          	li	a5,5
    800050b4:	fc97f0e3          	bgeu	a5,s1,80005074 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    800050b8:	ffffc097          	auipc	ra,0xffffc
    800050bc:	27c080e7          	jalr	636(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    800050c0:	00004517          	auipc	a0,0x4
    800050c4:	36850513          	addi	a0,a0,872 # 80009428 <CONSOLE_STATUS+0x418>
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	c3c080e7          	jalr	-964(ra) # 80005d04 <_Z11printStringPKc>
    finishedC = true;
    800050d0:	00100793          	li	a5,1
    800050d4:	0000b717          	auipc	a4,0xb
    800050d8:	b6f70f23          	sb	a5,-1154(a4) # 8000fc52 <_ZL9finishedC>
}
    800050dc:	01813083          	ld	ra,24(sp)
    800050e0:	01013403          	ld	s0,16(sp)
    800050e4:	00813483          	ld	s1,8(sp)
    800050e8:	00013903          	ld	s2,0(sp)
    800050ec:	02010113          	addi	sp,sp,32
    800050f0:	00008067          	ret

00000000800050f4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800050f4:	fe010113          	addi	sp,sp,-32
    800050f8:	00113c23          	sd	ra,24(sp)
    800050fc:	00813823          	sd	s0,16(sp)
    80005100:	00913423          	sd	s1,8(sp)
    80005104:	01213023          	sd	s2,0(sp)
    80005108:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000510c:	00a00493          	li	s1,10
    80005110:	0400006f          	j	80005150 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	32450513          	addi	a0,a0,804 # 80009438 <CONSOLE_STATUS+0x428>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	be8080e7          	jalr	-1048(ra) # 80005d04 <_Z11printStringPKc>
    80005124:	00000613          	li	a2,0
    80005128:	00a00593          	li	a1,10
    8000512c:	00048513          	mv	a0,s1
    80005130:	00001097          	auipc	ra,0x1
    80005134:	d6c080e7          	jalr	-660(ra) # 80005e9c <_Z8printIntiii>
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	fc850513          	addi	a0,a0,-56 # 80009100 <CONSOLE_STATUS+0xf0>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	bc4080e7          	jalr	-1084(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005148:	0014849b          	addiw	s1,s1,1
    8000514c:	0ff4f493          	andi	s1,s1,255
    80005150:	00c00793          	li	a5,12
    80005154:	fc97f0e3          	bgeu	a5,s1,80005114 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005158:	00004517          	auipc	a0,0x4
    8000515c:	2e850513          	addi	a0,a0,744 # 80009440 <CONSOLE_STATUS+0x430>
    80005160:	00001097          	auipc	ra,0x1
    80005164:	ba4080e7          	jalr	-1116(ra) # 80005d04 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005168:	00500313          	li	t1,5
    thread_dispatch();
    8000516c:	ffffc097          	auipc	ra,0xffffc
    80005170:	1c8080e7          	jalr	456(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005174:	01000513          	li	a0,16
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	be8080e7          	jalr	-1048(ra) # 80004d60 <_ZL9fibonaccim>
    80005180:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005184:	00004517          	auipc	a0,0x4
    80005188:	2cc50513          	addi	a0,a0,716 # 80009450 <CONSOLE_STATUS+0x440>
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	b78080e7          	jalr	-1160(ra) # 80005d04 <_Z11printStringPKc>
    80005194:	00000613          	li	a2,0
    80005198:	00a00593          	li	a1,10
    8000519c:	0009051b          	sext.w	a0,s2
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	cfc080e7          	jalr	-772(ra) # 80005e9c <_Z8printIntiii>
    800051a8:	00004517          	auipc	a0,0x4
    800051ac:	f5850513          	addi	a0,a0,-168 # 80009100 <CONSOLE_STATUS+0xf0>
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	b54080e7          	jalr	-1196(ra) # 80005d04 <_Z11printStringPKc>
    800051b8:	0400006f          	j	800051f8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800051bc:	00004517          	auipc	a0,0x4
    800051c0:	27c50513          	addi	a0,a0,636 # 80009438 <CONSOLE_STATUS+0x428>
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	b40080e7          	jalr	-1216(ra) # 80005d04 <_Z11printStringPKc>
    800051cc:	00000613          	li	a2,0
    800051d0:	00a00593          	li	a1,10
    800051d4:	00048513          	mv	a0,s1
    800051d8:	00001097          	auipc	ra,0x1
    800051dc:	cc4080e7          	jalr	-828(ra) # 80005e9c <_Z8printIntiii>
    800051e0:	00004517          	auipc	a0,0x4
    800051e4:	f2050513          	addi	a0,a0,-224 # 80009100 <CONSOLE_STATUS+0xf0>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	b1c080e7          	jalr	-1252(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800051f0:	0014849b          	addiw	s1,s1,1
    800051f4:	0ff4f493          	andi	s1,s1,255
    800051f8:	00f00793          	li	a5,15
    800051fc:	fc97f0e3          	bgeu	a5,s1,800051bc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005200:	ffffc097          	auipc	ra,0xffffc
    80005204:	134080e7          	jalr	308(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    80005208:	00004517          	auipc	a0,0x4
    8000520c:	25850513          	addi	a0,a0,600 # 80009460 <CONSOLE_STATUS+0x450>
    80005210:	00001097          	auipc	ra,0x1
    80005214:	af4080e7          	jalr	-1292(ra) # 80005d04 <_Z11printStringPKc>
    finishedD = true;
    80005218:	00100793          	li	a5,1
    8000521c:	0000b717          	auipc	a4,0xb
    80005220:	a2f70ba3          	sb	a5,-1481(a4) # 8000fc53 <_ZL9finishedD>
}
    80005224:	01813083          	ld	ra,24(sp)
    80005228:	01013403          	ld	s0,16(sp)
    8000522c:	00813483          	ld	s1,8(sp)
    80005230:	00013903          	ld	s2,0(sp)
    80005234:	02010113          	addi	sp,sp,32
    80005238:	00008067          	ret

000000008000523c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000523c:	fc010113          	addi	sp,sp,-64
    80005240:	02113c23          	sd	ra,56(sp)
    80005244:	02813823          	sd	s0,48(sp)
    80005248:	02913423          	sd	s1,40(sp)
    8000524c:	03213023          	sd	s2,32(sp)
    80005250:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80005254:	01000513          	li	a0,16
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	504080e7          	jalr	1284(ra) # 8000375c <_Znwm>
    80005260:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005264:	ffffe097          	auipc	ra,0xffffe
    80005268:	6c8080e7          	jalr	1736(ra) # 8000392c <_ZN6ThreadC1Ev>
    8000526c:	00006797          	auipc	a5,0x6
    80005270:	79478793          	addi	a5,a5,1940 # 8000ba00 <_ZTV7WorkerA+0x10>
    80005274:	00f4b023          	sd	a5,0(s1)
    80005278:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000527c:	00004517          	auipc	a0,0x4
    80005280:	1f450513          	addi	a0,a0,500 # 80009470 <CONSOLE_STATUS+0x460>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	a80080e7          	jalr	-1408(ra) # 80005d04 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000528c:	01000513          	li	a0,16
    80005290:	ffffe097          	auipc	ra,0xffffe
    80005294:	4cc080e7          	jalr	1228(ra) # 8000375c <_Znwm>
    80005298:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	690080e7          	jalr	1680(ra) # 8000392c <_ZN6ThreadC1Ev>
    800052a4:	00006797          	auipc	a5,0x6
    800052a8:	78478793          	addi	a5,a5,1924 # 8000ba28 <_ZTV7WorkerB+0x10>
    800052ac:	00f4b023          	sd	a5,0(s1)
    800052b0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800052b4:	00004517          	auipc	a0,0x4
    800052b8:	1d450513          	addi	a0,a0,468 # 80009488 <CONSOLE_STATUS+0x478>
    800052bc:	00001097          	auipc	ra,0x1
    800052c0:	a48080e7          	jalr	-1464(ra) # 80005d04 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800052c4:	01000513          	li	a0,16
    800052c8:	ffffe097          	auipc	ra,0xffffe
    800052cc:	494080e7          	jalr	1172(ra) # 8000375c <_Znwm>
    800052d0:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800052d4:	ffffe097          	auipc	ra,0xffffe
    800052d8:	658080e7          	jalr	1624(ra) # 8000392c <_ZN6ThreadC1Ev>
    800052dc:	00006797          	auipc	a5,0x6
    800052e0:	77478793          	addi	a5,a5,1908 # 8000ba50 <_ZTV7WorkerC+0x10>
    800052e4:	00f4b023          	sd	a5,0(s1)
    800052e8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800052ec:	00004517          	auipc	a0,0x4
    800052f0:	1b450513          	addi	a0,a0,436 # 800094a0 <CONSOLE_STATUS+0x490>
    800052f4:	00001097          	auipc	ra,0x1
    800052f8:	a10080e7          	jalr	-1520(ra) # 80005d04 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800052fc:	01000513          	li	a0,16
    80005300:	ffffe097          	auipc	ra,0xffffe
    80005304:	45c080e7          	jalr	1116(ra) # 8000375c <_Znwm>
    80005308:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	620080e7          	jalr	1568(ra) # 8000392c <_ZN6ThreadC1Ev>
    80005314:	00006797          	auipc	a5,0x6
    80005318:	76478793          	addi	a5,a5,1892 # 8000ba78 <_ZTV7WorkerD+0x10>
    8000531c:	00f4b023          	sd	a5,0(s1)
    80005320:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005324:	00004517          	auipc	a0,0x4
    80005328:	19450513          	addi	a0,a0,404 # 800094b8 <CONSOLE_STATUS+0x4a8>
    8000532c:	00001097          	auipc	ra,0x1
    80005330:	9d8080e7          	jalr	-1576(ra) # 80005d04 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005334:	00000493          	li	s1,0
    80005338:	00300793          	li	a5,3
    8000533c:	0297c663          	blt	a5,s1,80005368 <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80005340:	00349793          	slli	a5,s1,0x3
    80005344:	fe040713          	addi	a4,s0,-32
    80005348:	00f707b3          	add	a5,a4,a5
    8000534c:	fe07b503          	ld	a0,-32(a5)
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	4dc080e7          	jalr	1244(ra) # 8000382c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005358:	0014849b          	addiw	s1,s1,1
    8000535c:	fddff06f          	j	80005338 <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005360:	ffffe097          	auipc	ra,0xffffe
    80005364:	504080e7          	jalr	1284(ra) # 80003864 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005368:	0000b797          	auipc	a5,0xb
    8000536c:	8e87c783          	lbu	a5,-1816(a5) # 8000fc50 <_ZL9finishedA>
    80005370:	fe0788e3          	beqz	a5,80005360 <_Z20Threads_CPP_API_testv+0x124>
    80005374:	0000b797          	auipc	a5,0xb
    80005378:	8dd7c783          	lbu	a5,-1827(a5) # 8000fc51 <_ZL9finishedB>
    8000537c:	fe0782e3          	beqz	a5,80005360 <_Z20Threads_CPP_API_testv+0x124>
    80005380:	0000b797          	auipc	a5,0xb
    80005384:	8d27c783          	lbu	a5,-1838(a5) # 8000fc52 <_ZL9finishedC>
    80005388:	fc078ce3          	beqz	a5,80005360 <_Z20Threads_CPP_API_testv+0x124>
    8000538c:	0000b797          	auipc	a5,0xb
    80005390:	8c77c783          	lbu	a5,-1849(a5) # 8000fc53 <_ZL9finishedD>
    80005394:	fc0786e3          	beqz	a5,80005360 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    80005398:	fc040493          	addi	s1,s0,-64
    8000539c:	0080006f          	j	800053a4 <_Z20Threads_CPP_API_testv+0x168>
    800053a0:	00848493          	addi	s1,s1,8
    800053a4:	fe040793          	addi	a5,s0,-32
    800053a8:	08f48663          	beq	s1,a5,80005434 <_Z20Threads_CPP_API_testv+0x1f8>
    800053ac:	0004b503          	ld	a0,0(s1)
    800053b0:	fe0508e3          	beqz	a0,800053a0 <_Z20Threads_CPP_API_testv+0x164>
    800053b4:	00053783          	ld	a5,0(a0)
    800053b8:	0087b783          	ld	a5,8(a5)
    800053bc:	000780e7          	jalr	a5
    800053c0:	fe1ff06f          	j	800053a0 <_Z20Threads_CPP_API_testv+0x164>
    800053c4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800053c8:	00048513          	mv	a0,s1
    800053cc:	ffffe097          	auipc	ra,0xffffe
    800053d0:	3b8080e7          	jalr	952(ra) # 80003784 <_ZdlPv>
    800053d4:	00090513          	mv	a0,s2
    800053d8:	0000c097          	auipc	ra,0xc
    800053dc:	960080e7          	jalr	-1696(ra) # 80010d38 <_Unwind_Resume>
    800053e0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800053e4:	00048513          	mv	a0,s1
    800053e8:	ffffe097          	auipc	ra,0xffffe
    800053ec:	39c080e7          	jalr	924(ra) # 80003784 <_ZdlPv>
    800053f0:	00090513          	mv	a0,s2
    800053f4:	0000c097          	auipc	ra,0xc
    800053f8:	944080e7          	jalr	-1724(ra) # 80010d38 <_Unwind_Resume>
    800053fc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005400:	00048513          	mv	a0,s1
    80005404:	ffffe097          	auipc	ra,0xffffe
    80005408:	380080e7          	jalr	896(ra) # 80003784 <_ZdlPv>
    8000540c:	00090513          	mv	a0,s2
    80005410:	0000c097          	auipc	ra,0xc
    80005414:	928080e7          	jalr	-1752(ra) # 80010d38 <_Unwind_Resume>
    80005418:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000541c:	00048513          	mv	a0,s1
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	364080e7          	jalr	868(ra) # 80003784 <_ZdlPv>
    80005428:	00090513          	mv	a0,s2
    8000542c:	0000c097          	auipc	ra,0xc
    80005430:	90c080e7          	jalr	-1780(ra) # 80010d38 <_Unwind_Resume>
    80005434:	03813083          	ld	ra,56(sp)
    80005438:	03013403          	ld	s0,48(sp)
    8000543c:	02813483          	ld	s1,40(sp)
    80005440:	02013903          	ld	s2,32(sp)
    80005444:	04010113          	addi	sp,sp,64
    80005448:	00008067          	ret

000000008000544c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000544c:	ff010113          	addi	sp,sp,-16
    80005450:	00113423          	sd	ra,8(sp)
    80005454:	00813023          	sd	s0,0(sp)
    80005458:	01010413          	addi	s0,sp,16
    8000545c:	00006797          	auipc	a5,0x6
    80005460:	5a478793          	addi	a5,a5,1444 # 8000ba00 <_ZTV7WorkerA+0x10>
    80005464:	00f53023          	sd	a5,0(a0)
    80005468:	ffffe097          	auipc	ra,0xffffe
    8000546c:	284080e7          	jalr	644(ra) # 800036ec <_ZN6ThreadD1Ev>
    80005470:	00813083          	ld	ra,8(sp)
    80005474:	00013403          	ld	s0,0(sp)
    80005478:	01010113          	addi	sp,sp,16
    8000547c:	00008067          	ret

0000000080005480 <_ZN7WorkerAD0Ev>:
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00813823          	sd	s0,16(sp)
    8000548c:	00913423          	sd	s1,8(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	00050493          	mv	s1,a0
    80005498:	00006797          	auipc	a5,0x6
    8000549c:	56878793          	addi	a5,a5,1384 # 8000ba00 <_ZTV7WorkerA+0x10>
    800054a0:	00f53023          	sd	a5,0(a0)
    800054a4:	ffffe097          	auipc	ra,0xffffe
    800054a8:	248080e7          	jalr	584(ra) # 800036ec <_ZN6ThreadD1Ev>
    800054ac:	00048513          	mv	a0,s1
    800054b0:	ffffe097          	auipc	ra,0xffffe
    800054b4:	2d4080e7          	jalr	724(ra) # 80003784 <_ZdlPv>
    800054b8:	01813083          	ld	ra,24(sp)
    800054bc:	01013403          	ld	s0,16(sp)
    800054c0:	00813483          	ld	s1,8(sp)
    800054c4:	02010113          	addi	sp,sp,32
    800054c8:	00008067          	ret

00000000800054cc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800054cc:	ff010113          	addi	sp,sp,-16
    800054d0:	00113423          	sd	ra,8(sp)
    800054d4:	00813023          	sd	s0,0(sp)
    800054d8:	01010413          	addi	s0,sp,16
    800054dc:	00006797          	auipc	a5,0x6
    800054e0:	54c78793          	addi	a5,a5,1356 # 8000ba28 <_ZTV7WorkerB+0x10>
    800054e4:	00f53023          	sd	a5,0(a0)
    800054e8:	ffffe097          	auipc	ra,0xffffe
    800054ec:	204080e7          	jalr	516(ra) # 800036ec <_ZN6ThreadD1Ev>
    800054f0:	00813083          	ld	ra,8(sp)
    800054f4:	00013403          	ld	s0,0(sp)
    800054f8:	01010113          	addi	sp,sp,16
    800054fc:	00008067          	ret

0000000080005500 <_ZN7WorkerBD0Ev>:
    80005500:	fe010113          	addi	sp,sp,-32
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	00813823          	sd	s0,16(sp)
    8000550c:	00913423          	sd	s1,8(sp)
    80005510:	02010413          	addi	s0,sp,32
    80005514:	00050493          	mv	s1,a0
    80005518:	00006797          	auipc	a5,0x6
    8000551c:	51078793          	addi	a5,a5,1296 # 8000ba28 <_ZTV7WorkerB+0x10>
    80005520:	00f53023          	sd	a5,0(a0)
    80005524:	ffffe097          	auipc	ra,0xffffe
    80005528:	1c8080e7          	jalr	456(ra) # 800036ec <_ZN6ThreadD1Ev>
    8000552c:	00048513          	mv	a0,s1
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	254080e7          	jalr	596(ra) # 80003784 <_ZdlPv>
    80005538:	01813083          	ld	ra,24(sp)
    8000553c:	01013403          	ld	s0,16(sp)
    80005540:	00813483          	ld	s1,8(sp)
    80005544:	02010113          	addi	sp,sp,32
    80005548:	00008067          	ret

000000008000554c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000554c:	ff010113          	addi	sp,sp,-16
    80005550:	00113423          	sd	ra,8(sp)
    80005554:	00813023          	sd	s0,0(sp)
    80005558:	01010413          	addi	s0,sp,16
    8000555c:	00006797          	auipc	a5,0x6
    80005560:	4f478793          	addi	a5,a5,1268 # 8000ba50 <_ZTV7WorkerC+0x10>
    80005564:	00f53023          	sd	a5,0(a0)
    80005568:	ffffe097          	auipc	ra,0xffffe
    8000556c:	184080e7          	jalr	388(ra) # 800036ec <_ZN6ThreadD1Ev>
    80005570:	00813083          	ld	ra,8(sp)
    80005574:	00013403          	ld	s0,0(sp)
    80005578:	01010113          	addi	sp,sp,16
    8000557c:	00008067          	ret

0000000080005580 <_ZN7WorkerCD0Ev>:
    80005580:	fe010113          	addi	sp,sp,-32
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00813823          	sd	s0,16(sp)
    8000558c:	00913423          	sd	s1,8(sp)
    80005590:	02010413          	addi	s0,sp,32
    80005594:	00050493          	mv	s1,a0
    80005598:	00006797          	auipc	a5,0x6
    8000559c:	4b878793          	addi	a5,a5,1208 # 8000ba50 <_ZTV7WorkerC+0x10>
    800055a0:	00f53023          	sd	a5,0(a0)
    800055a4:	ffffe097          	auipc	ra,0xffffe
    800055a8:	148080e7          	jalr	328(ra) # 800036ec <_ZN6ThreadD1Ev>
    800055ac:	00048513          	mv	a0,s1
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	1d4080e7          	jalr	468(ra) # 80003784 <_ZdlPv>
    800055b8:	01813083          	ld	ra,24(sp)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	00813483          	ld	s1,8(sp)
    800055c4:	02010113          	addi	sp,sp,32
    800055c8:	00008067          	ret

00000000800055cc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800055cc:	ff010113          	addi	sp,sp,-16
    800055d0:	00113423          	sd	ra,8(sp)
    800055d4:	00813023          	sd	s0,0(sp)
    800055d8:	01010413          	addi	s0,sp,16
    800055dc:	00006797          	auipc	a5,0x6
    800055e0:	49c78793          	addi	a5,a5,1180 # 8000ba78 <_ZTV7WorkerD+0x10>
    800055e4:	00f53023          	sd	a5,0(a0)
    800055e8:	ffffe097          	auipc	ra,0xffffe
    800055ec:	104080e7          	jalr	260(ra) # 800036ec <_ZN6ThreadD1Ev>
    800055f0:	00813083          	ld	ra,8(sp)
    800055f4:	00013403          	ld	s0,0(sp)
    800055f8:	01010113          	addi	sp,sp,16
    800055fc:	00008067          	ret

0000000080005600 <_ZN7WorkerDD0Ev>:
    80005600:	fe010113          	addi	sp,sp,-32
    80005604:	00113c23          	sd	ra,24(sp)
    80005608:	00813823          	sd	s0,16(sp)
    8000560c:	00913423          	sd	s1,8(sp)
    80005610:	02010413          	addi	s0,sp,32
    80005614:	00050493          	mv	s1,a0
    80005618:	00006797          	auipc	a5,0x6
    8000561c:	46078793          	addi	a5,a5,1120 # 8000ba78 <_ZTV7WorkerD+0x10>
    80005620:	00f53023          	sd	a5,0(a0)
    80005624:	ffffe097          	auipc	ra,0xffffe
    80005628:	0c8080e7          	jalr	200(ra) # 800036ec <_ZN6ThreadD1Ev>
    8000562c:	00048513          	mv	a0,s1
    80005630:	ffffe097          	auipc	ra,0xffffe
    80005634:	154080e7          	jalr	340(ra) # 80003784 <_ZdlPv>
    80005638:	01813083          	ld	ra,24(sp)
    8000563c:	01013403          	ld	s0,16(sp)
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	02010113          	addi	sp,sp,32
    80005648:	00008067          	ret

000000008000564c <_ZN7WorkerA3runEv>:
    void run() override {
    8000564c:	ff010113          	addi	sp,sp,-16
    80005650:	00113423          	sd	ra,8(sp)
    80005654:	00813023          	sd	s0,0(sp)
    80005658:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000565c:	00000593          	li	a1,0
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	774080e7          	jalr	1908(ra) # 80004dd4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005668:	00813083          	ld	ra,8(sp)
    8000566c:	00013403          	ld	s0,0(sp)
    80005670:	01010113          	addi	sp,sp,16
    80005674:	00008067          	ret

0000000080005678 <_ZN7WorkerB3runEv>:
    void run() override {
    80005678:	ff010113          	addi	sp,sp,-16
    8000567c:	00113423          	sd	ra,8(sp)
    80005680:	00813023          	sd	s0,0(sp)
    80005684:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005688:	00000593          	li	a1,0
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	814080e7          	jalr	-2028(ra) # 80004ea0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005694:	00813083          	ld	ra,8(sp)
    80005698:	00013403          	ld	s0,0(sp)
    8000569c:	01010113          	addi	sp,sp,16
    800056a0:	00008067          	ret

00000000800056a4 <_ZN7WorkerC3runEv>:
    void run() override {
    800056a4:	ff010113          	addi	sp,sp,-16
    800056a8:	00113423          	sd	ra,8(sp)
    800056ac:	00813023          	sd	s0,0(sp)
    800056b0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800056b4:	00000593          	li	a1,0
    800056b8:	00000097          	auipc	ra,0x0
    800056bc:	8bc080e7          	jalr	-1860(ra) # 80004f74 <_ZN7WorkerC11workerBodyCEPv>
    }
    800056c0:	00813083          	ld	ra,8(sp)
    800056c4:	00013403          	ld	s0,0(sp)
    800056c8:	01010113          	addi	sp,sp,16
    800056cc:	00008067          	ret

00000000800056d0 <_ZN7WorkerD3runEv>:

    void run() override {
    800056d0:	ff010113          	addi	sp,sp,-16
    800056d4:	00113423          	sd	ra,8(sp)
    800056d8:	00813023          	sd	s0,0(sp)
    800056dc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800056e0:	00000593          	li	a1,0
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	a10080e7          	jalr	-1520(ra) # 800050f4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800056ec:	00813083          	ld	ra,8(sp)
    800056f0:	00013403          	ld	s0,0(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	00008067          	ret

00000000800056fc <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	01213023          	sd	s2,0(sp)
    80005710:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005714:	00000913          	li	s2,0
    80005718:	0380006f          	j	80005750 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	c18080e7          	jalr	-1000(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005724:	00148493          	addi	s1,s1,1
    80005728:	000027b7          	lui	a5,0x2
    8000572c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005730:	0097ee63          	bltu	a5,s1,8000574c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005734:	00000713          	li	a4,0
    80005738:	000077b7          	lui	a5,0x7
    8000573c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005740:	fce7eee3          	bltu	a5,a4,8000571c <_Z11workerBodyAPv+0x20>
    80005744:	00170713          	addi	a4,a4,1
    80005748:	ff1ff06f          	j	80005738 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000574c:	00190913          	addi	s2,s2,1
    80005750:	00900793          	li	a5,9
    80005754:	0527e063          	bltu	a5,s2,80005794 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005758:	00004517          	auipc	a0,0x4
    8000575c:	c7050513          	addi	a0,a0,-912 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005760:	00000097          	auipc	ra,0x0
    80005764:	5a4080e7          	jalr	1444(ra) # 80005d04 <_Z11printStringPKc>
    80005768:	00000613          	li	a2,0
    8000576c:	00a00593          	li	a1,10
    80005770:	0009051b          	sext.w	a0,s2
    80005774:	00000097          	auipc	ra,0x0
    80005778:	728080e7          	jalr	1832(ra) # 80005e9c <_Z8printIntiii>
    8000577c:	00004517          	auipc	a0,0x4
    80005780:	98450513          	addi	a0,a0,-1660 # 80009100 <CONSOLE_STATUS+0xf0>
    80005784:	00000097          	auipc	ra,0x0
    80005788:	580080e7          	jalr	1408(ra) # 80005d04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000578c:	00000493          	li	s1,0
    80005790:	f99ff06f          	j	80005728 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005794:	00004517          	auipc	a0,0x4
    80005798:	c3c50513          	addi	a0,a0,-964 # 800093d0 <CONSOLE_STATUS+0x3c0>
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	568080e7          	jalr	1384(ra) # 80005d04 <_Z11printStringPKc>
    finishedA = true;
    800057a4:	00100793          	li	a5,1
    800057a8:	0000a717          	auipc	a4,0xa
    800057ac:	4af70623          	sb	a5,1196(a4) # 8000fc54 <finishedA>
}
    800057b0:	01813083          	ld	ra,24(sp)
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	00813483          	ld	s1,8(sp)
    800057bc:	00013903          	ld	s2,0(sp)
    800057c0:	02010113          	addi	sp,sp,32
    800057c4:	00008067          	ret

00000000800057c8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800057c8:	fe010113          	addi	sp,sp,-32
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	01213023          	sd	s2,0(sp)
    800057dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800057e0:	00000913          	li	s2,0
    800057e4:	0380006f          	j	8000581c <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800057e8:	ffffc097          	auipc	ra,0xffffc
    800057ec:	b4c080e7          	jalr	-1204(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800057f0:	00148493          	addi	s1,s1,1
    800057f4:	000027b7          	lui	a5,0x2
    800057f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800057fc:	0097ee63          	bltu	a5,s1,80005818 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005800:	00000713          	li	a4,0
    80005804:	000077b7          	lui	a5,0x7
    80005808:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000580c:	fce7eee3          	bltu	a5,a4,800057e8 <_Z11workerBodyBPv+0x20>
    80005810:	00170713          	addi	a4,a4,1
    80005814:	ff1ff06f          	j	80005804 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005818:	00190913          	addi	s2,s2,1
    8000581c:	00f00793          	li	a5,15
    80005820:	0527e063          	bltu	a5,s2,80005860 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005824:	00004517          	auipc	a0,0x4
    80005828:	bbc50513          	addi	a0,a0,-1092 # 800093e0 <CONSOLE_STATUS+0x3d0>
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	4d8080e7          	jalr	1240(ra) # 80005d04 <_Z11printStringPKc>
    80005834:	00000613          	li	a2,0
    80005838:	00a00593          	li	a1,10
    8000583c:	0009051b          	sext.w	a0,s2
    80005840:	00000097          	auipc	ra,0x0
    80005844:	65c080e7          	jalr	1628(ra) # 80005e9c <_Z8printIntiii>
    80005848:	00004517          	auipc	a0,0x4
    8000584c:	8b850513          	addi	a0,a0,-1864 # 80009100 <CONSOLE_STATUS+0xf0>
    80005850:	00000097          	auipc	ra,0x0
    80005854:	4b4080e7          	jalr	1204(ra) # 80005d04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005858:	00000493          	li	s1,0
    8000585c:	f99ff06f          	j	800057f4 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80005860:	00004517          	auipc	a0,0x4
    80005864:	b8850513          	addi	a0,a0,-1144 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005868:	00000097          	auipc	ra,0x0
    8000586c:	49c080e7          	jalr	1180(ra) # 80005d04 <_Z11printStringPKc>
    finishedB = true;
    80005870:	00100793          	li	a5,1
    80005874:	0000a717          	auipc	a4,0xa
    80005878:	3ef700a3          	sb	a5,993(a4) # 8000fc55 <finishedB>
    thread_dispatch();
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	ab8080e7          	jalr	-1352(ra) # 80001334 <thread_dispatch>
}
    80005884:	01813083          	ld	ra,24(sp)
    80005888:	01013403          	ld	s0,16(sp)
    8000588c:	00813483          	ld	s1,8(sp)
    80005890:	00013903          	ld	s2,0(sp)
    80005894:	02010113          	addi	sp,sp,32
    80005898:	00008067          	ret

000000008000589c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    8000589c:	fe010113          	addi	sp,sp,-32
    800058a0:	00113c23          	sd	ra,24(sp)
    800058a4:	00813823          	sd	s0,16(sp)
    800058a8:	00913423          	sd	s1,8(sp)
    800058ac:	01213023          	sd	s2,0(sp)
    800058b0:	02010413          	addi	s0,sp,32
    800058b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800058b8:	00100793          	li	a5,1
    800058bc:	02a7f863          	bgeu	a5,a0,800058ec <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800058c0:	00a00793          	li	a5,10
    800058c4:	02f577b3          	remu	a5,a0,a5
    800058c8:	02078e63          	beqz	a5,80005904 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800058cc:	fff48513          	addi	a0,s1,-1
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	fcc080e7          	jalr	-52(ra) # 8000589c <_Z9fibonaccim>
    800058d8:	00050913          	mv	s2,a0
    800058dc:	ffe48513          	addi	a0,s1,-2
    800058e0:	00000097          	auipc	ra,0x0
    800058e4:	fbc080e7          	jalr	-68(ra) # 8000589c <_Z9fibonaccim>
    800058e8:	00a90533          	add	a0,s2,a0
}
    800058ec:	01813083          	ld	ra,24(sp)
    800058f0:	01013403          	ld	s0,16(sp)
    800058f4:	00813483          	ld	s1,8(sp)
    800058f8:	00013903          	ld	s2,0(sp)
    800058fc:	02010113          	addi	sp,sp,32
    80005900:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	a30080e7          	jalr	-1488(ra) # 80001334 <thread_dispatch>
    8000590c:	fc1ff06f          	j	800058cc <_Z9fibonaccim+0x30>

0000000080005910 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005910:	fe010113          	addi	sp,sp,-32
    80005914:	00113c23          	sd	ra,24(sp)
    80005918:	00813823          	sd	s0,16(sp)
    8000591c:	00913423          	sd	s1,8(sp)
    80005920:	01213023          	sd	s2,0(sp)
    80005924:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005928:	00000493          	li	s1,0
    8000592c:	0400006f          	j	8000596c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005930:	00004517          	auipc	a0,0x4
    80005934:	ac850513          	addi	a0,a0,-1336 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	3cc080e7          	jalr	972(ra) # 80005d04 <_Z11printStringPKc>
    80005940:	00000613          	li	a2,0
    80005944:	00a00593          	li	a1,10
    80005948:	00048513          	mv	a0,s1
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	550080e7          	jalr	1360(ra) # 80005e9c <_Z8printIntiii>
    80005954:	00003517          	auipc	a0,0x3
    80005958:	7ac50513          	addi	a0,a0,1964 # 80009100 <CONSOLE_STATUS+0xf0>
    8000595c:	00000097          	auipc	ra,0x0
    80005960:	3a8080e7          	jalr	936(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005964:	0014849b          	addiw	s1,s1,1
    80005968:	0ff4f493          	andi	s1,s1,255
    8000596c:	00200793          	li	a5,2
    80005970:	fc97f0e3          	bgeu	a5,s1,80005930 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	a8c50513          	addi	a0,a0,-1396 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	388080e7          	jalr	904(ra) # 80005d04 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005984:	00700313          	li	t1,7
    thread_dispatch();
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	9ac080e7          	jalr	-1620(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005990:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005994:	00004517          	auipc	a0,0x4
    80005998:	a7c50513          	addi	a0,a0,-1412 # 80009410 <CONSOLE_STATUS+0x400>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	368080e7          	jalr	872(ra) # 80005d04 <_Z11printStringPKc>
    800059a4:	00000613          	li	a2,0
    800059a8:	00a00593          	li	a1,10
    800059ac:	0009051b          	sext.w	a0,s2
    800059b0:	00000097          	auipc	ra,0x0
    800059b4:	4ec080e7          	jalr	1260(ra) # 80005e9c <_Z8printIntiii>
    800059b8:	00003517          	auipc	a0,0x3
    800059bc:	74850513          	addi	a0,a0,1864 # 80009100 <CONSOLE_STATUS+0xf0>
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	344080e7          	jalr	836(ra) # 80005d04 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800059c8:	00c00513          	li	a0,12
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	ed0080e7          	jalr	-304(ra) # 8000589c <_Z9fibonaccim>
    800059d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	a4050513          	addi	a0,a0,-1472 # 80009418 <CONSOLE_STATUS+0x408>
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	324080e7          	jalr	804(ra) # 80005d04 <_Z11printStringPKc>
    800059e8:	00000613          	li	a2,0
    800059ec:	00a00593          	li	a1,10
    800059f0:	0009051b          	sext.w	a0,s2
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	4a8080e7          	jalr	1192(ra) # 80005e9c <_Z8printIntiii>
    800059fc:	00003517          	auipc	a0,0x3
    80005a00:	70450513          	addi	a0,a0,1796 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	300080e7          	jalr	768(ra) # 80005d04 <_Z11printStringPKc>
    80005a0c:	0400006f          	j	80005a4c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a10:	00004517          	auipc	a0,0x4
    80005a14:	9e850513          	addi	a0,a0,-1560 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005a18:	00000097          	auipc	ra,0x0
    80005a1c:	2ec080e7          	jalr	748(ra) # 80005d04 <_Z11printStringPKc>
    80005a20:	00000613          	li	a2,0
    80005a24:	00a00593          	li	a1,10
    80005a28:	00048513          	mv	a0,s1
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	470080e7          	jalr	1136(ra) # 80005e9c <_Z8printIntiii>
    80005a34:	00003517          	auipc	a0,0x3
    80005a38:	6cc50513          	addi	a0,a0,1740 # 80009100 <CONSOLE_STATUS+0xf0>
    80005a3c:	00000097          	auipc	ra,0x0
    80005a40:	2c8080e7          	jalr	712(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a44:	0014849b          	addiw	s1,s1,1
    80005a48:	0ff4f493          	andi	s1,s1,255
    80005a4c:	00500793          	li	a5,5
    80005a50:	fc97f0e3          	bgeu	a5,s1,80005a10 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	97c50513          	addi	a0,a0,-1668 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	2a8080e7          	jalr	680(ra) # 80005d04 <_Z11printStringPKc>
    finishedC = true;
    80005a64:	00100793          	li	a5,1
    80005a68:	0000a717          	auipc	a4,0xa
    80005a6c:	1ef70723          	sb	a5,494(a4) # 8000fc56 <finishedC>
    thread_dispatch();
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	8c4080e7          	jalr	-1852(ra) # 80001334 <thread_dispatch>
}
    80005a78:	01813083          	ld	ra,24(sp)
    80005a7c:	01013403          	ld	s0,16(sp)
    80005a80:	00813483          	ld	s1,8(sp)
    80005a84:	00013903          	ld	s2,0(sp)
    80005a88:	02010113          	addi	sp,sp,32
    80005a8c:	00008067          	ret

0000000080005a90 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005a90:	fe010113          	addi	sp,sp,-32
    80005a94:	00113c23          	sd	ra,24(sp)
    80005a98:	00813823          	sd	s0,16(sp)
    80005a9c:	00913423          	sd	s1,8(sp)
    80005aa0:	01213023          	sd	s2,0(sp)
    80005aa4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005aa8:	00a00493          	li	s1,10
    80005aac:	0400006f          	j	80005aec <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	98850513          	addi	a0,a0,-1656 # 80009438 <CONSOLE_STATUS+0x428>
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	24c080e7          	jalr	588(ra) # 80005d04 <_Z11printStringPKc>
    80005ac0:	00000613          	li	a2,0
    80005ac4:	00a00593          	li	a1,10
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	3d0080e7          	jalr	976(ra) # 80005e9c <_Z8printIntiii>
    80005ad4:	00003517          	auipc	a0,0x3
    80005ad8:	62c50513          	addi	a0,a0,1580 # 80009100 <CONSOLE_STATUS+0xf0>
    80005adc:	00000097          	auipc	ra,0x0
    80005ae0:	228080e7          	jalr	552(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005ae4:	0014849b          	addiw	s1,s1,1
    80005ae8:	0ff4f493          	andi	s1,s1,255
    80005aec:	00c00793          	li	a5,12
    80005af0:	fc97f0e3          	bgeu	a5,s1,80005ab0 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	94c50513          	addi	a0,a0,-1716 # 80009440 <CONSOLE_STATUS+0x430>
    80005afc:	00000097          	auipc	ra,0x0
    80005b00:	208080e7          	jalr	520(ra) # 80005d04 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005b04:	00500313          	li	t1,5
    thread_dispatch();
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	82c080e7          	jalr	-2004(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005b10:	01000513          	li	a0,16
    80005b14:	00000097          	auipc	ra,0x0
    80005b18:	d88080e7          	jalr	-632(ra) # 8000589c <_Z9fibonaccim>
    80005b1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b20:	00004517          	auipc	a0,0x4
    80005b24:	93050513          	addi	a0,a0,-1744 # 80009450 <CONSOLE_STATUS+0x440>
    80005b28:	00000097          	auipc	ra,0x0
    80005b2c:	1dc080e7          	jalr	476(ra) # 80005d04 <_Z11printStringPKc>
    80005b30:	00000613          	li	a2,0
    80005b34:	00a00593          	li	a1,10
    80005b38:	0009051b          	sext.w	a0,s2
    80005b3c:	00000097          	auipc	ra,0x0
    80005b40:	360080e7          	jalr	864(ra) # 80005e9c <_Z8printIntiii>
    80005b44:	00003517          	auipc	a0,0x3
    80005b48:	5bc50513          	addi	a0,a0,1468 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	1b8080e7          	jalr	440(ra) # 80005d04 <_Z11printStringPKc>
    80005b54:	0400006f          	j	80005b94 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b58:	00004517          	auipc	a0,0x4
    80005b5c:	8e050513          	addi	a0,a0,-1824 # 80009438 <CONSOLE_STATUS+0x428>
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	1a4080e7          	jalr	420(ra) # 80005d04 <_Z11printStringPKc>
    80005b68:	00000613          	li	a2,0
    80005b6c:	00a00593          	li	a1,10
    80005b70:	00048513          	mv	a0,s1
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	328080e7          	jalr	808(ra) # 80005e9c <_Z8printIntiii>
    80005b7c:	00003517          	auipc	a0,0x3
    80005b80:	58450513          	addi	a0,a0,1412 # 80009100 <CONSOLE_STATUS+0xf0>
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	180080e7          	jalr	384(ra) # 80005d04 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005b8c:	0014849b          	addiw	s1,s1,1
    80005b90:	0ff4f493          	andi	s1,s1,255
    80005b94:	00f00793          	li	a5,15
    80005b98:	fc97f0e3          	bgeu	a5,s1,80005b58 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005b9c:	00004517          	auipc	a0,0x4
    80005ba0:	8c450513          	addi	a0,a0,-1852 # 80009460 <CONSOLE_STATUS+0x450>
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	160080e7          	jalr	352(ra) # 80005d04 <_Z11printStringPKc>
    finishedD = true;
    80005bac:	00100793          	li	a5,1
    80005bb0:	0000a717          	auipc	a4,0xa
    80005bb4:	0af703a3          	sb	a5,167(a4) # 8000fc57 <finishedD>
    thread_dispatch();
    80005bb8:	ffffb097          	auipc	ra,0xffffb
    80005bbc:	77c080e7          	jalr	1916(ra) # 80001334 <thread_dispatch>
}
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00813483          	ld	s1,8(sp)
    80005bcc:	00013903          	ld	s2,0(sp)
    80005bd0:	02010113          	addi	sp,sp,32
    80005bd4:	00008067          	ret

0000000080005bd8 <_Z18Threads_C_API_testv>:

void Threads_C_API_test() {
    80005bd8:	fc010113          	addi	sp,sp,-64
    80005bdc:	02113c23          	sd	ra,56(sp)
    80005be0:	02813823          	sd	s0,48(sp)
    80005be4:	02913423          	sd	s1,40(sp)
    80005be8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005bec:	00000613          	li	a2,0
    80005bf0:	00000597          	auipc	a1,0x0
    80005bf4:	b0c58593          	addi	a1,a1,-1268 # 800056fc <_Z11workerBodyAPv>
    80005bf8:	fc040513          	addi	a0,s0,-64
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	6b8080e7          	jalr	1720(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005c04:	00004517          	auipc	a0,0x4
    80005c08:	86c50513          	addi	a0,a0,-1940 # 80009470 <CONSOLE_STATUS+0x460>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	0f8080e7          	jalr	248(ra) # 80005d04 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005c14:	00000613          	li	a2,0
    80005c18:	00000597          	auipc	a1,0x0
    80005c1c:	bb058593          	addi	a1,a1,-1104 # 800057c8 <_Z11workerBodyBPv>
    80005c20:	fc840513          	addi	a0,s0,-56
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	690080e7          	jalr	1680(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	85c50513          	addi	a0,a0,-1956 # 80009488 <CONSOLE_STATUS+0x478>
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	0d0080e7          	jalr	208(ra) # 80005d04 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c3c:	00000613          	li	a2,0
    80005c40:	00000597          	auipc	a1,0x0
    80005c44:	cd058593          	addi	a1,a1,-816 # 80005910 <_Z11workerBodyCPv>
    80005c48:	fd040513          	addi	a0,s0,-48
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	668080e7          	jalr	1640(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005c54:	00004517          	auipc	a0,0x4
    80005c58:	84c50513          	addi	a0,a0,-1972 # 800094a0 <CONSOLE_STATUS+0x490>
    80005c5c:	00000097          	auipc	ra,0x0
    80005c60:	0a8080e7          	jalr	168(ra) # 80005d04 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005c64:	00000613          	li	a2,0
    80005c68:	00000597          	auipc	a1,0x0
    80005c6c:	e2858593          	addi	a1,a1,-472 # 80005a90 <_Z11workerBodyDPv>
    80005c70:	fd840513          	addi	a0,s0,-40
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	640080e7          	jalr	1600(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005c7c:	00004517          	auipc	a0,0x4
    80005c80:	83c50513          	addi	a0,a0,-1988 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	080080e7          	jalr	128(ra) # 80005d04 <_Z11printStringPKc>
    80005c8c:	00c0006f          	j	80005c98 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005c90:	ffffb097          	auipc	ra,0xffffb
    80005c94:	6a4080e7          	jalr	1700(ra) # 80001334 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005c98:	0000a797          	auipc	a5,0xa
    80005c9c:	fbc7c783          	lbu	a5,-68(a5) # 8000fc54 <finishedA>
    80005ca0:	fe0788e3          	beqz	a5,80005c90 <_Z18Threads_C_API_testv+0xb8>
    80005ca4:	0000a797          	auipc	a5,0xa
    80005ca8:	fb17c783          	lbu	a5,-79(a5) # 8000fc55 <finishedB>
    80005cac:	fe0782e3          	beqz	a5,80005c90 <_Z18Threads_C_API_testv+0xb8>
    80005cb0:	0000a797          	auipc	a5,0xa
    80005cb4:	fa67c783          	lbu	a5,-90(a5) # 8000fc56 <finishedC>
    80005cb8:	fc078ce3          	beqz	a5,80005c90 <_Z18Threads_C_API_testv+0xb8>
    80005cbc:	0000a797          	auipc	a5,0xa
    80005cc0:	f9b7c783          	lbu	a5,-101(a5) # 8000fc57 <finishedD>
    80005cc4:	fc0786e3          	beqz	a5,80005c90 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete (uint64*)thread; }
    80005cc8:	fc040493          	addi	s1,s0,-64
    80005ccc:	0080006f          	j	80005cd4 <_Z18Threads_C_API_testv+0xfc>
    80005cd0:	00848493          	addi	s1,s1,8
    80005cd4:	fe040793          	addi	a5,s0,-32
    80005cd8:	00f48c63          	beq	s1,a5,80005cf0 <_Z18Threads_C_API_testv+0x118>
    80005cdc:	0004b503          	ld	a0,0(s1)
    80005ce0:	fe0508e3          	beqz	a0,80005cd0 <_Z18Threads_C_API_testv+0xf8>
    80005ce4:	ffffe097          	auipc	ra,0xffffe
    80005ce8:	aa0080e7          	jalr	-1376(ra) # 80003784 <_ZdlPv>
    80005cec:	fe5ff06f          	j	80005cd0 <_Z18Threads_C_API_testv+0xf8>
}
    80005cf0:	03813083          	ld	ra,56(sp)
    80005cf4:	03013403          	ld	s0,48(sp)
    80005cf8:	02813483          	ld	s1,40(sp)
    80005cfc:	04010113          	addi	sp,sp,64
    80005d00:	00008067          	ret

0000000080005d04 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	02010413          	addi	s0,sp,32
    80005d18:	00050493          	mv	s1,a0
    LOCK();
    80005d1c:	00100613          	li	a2,1
    80005d20:	00000593          	li	a1,0
    80005d24:	0000a517          	auipc	a0,0xa
    80005d28:	f3450513          	addi	a0,a0,-204 # 8000fc58 <lockPrint>
    80005d2c:	ffffb097          	auipc	ra,0xffffb
    80005d30:	4ec080e7          	jalr	1260(ra) # 80001218 <copy_and_swap>
    80005d34:	fe0514e3          	bnez	a0,80005d1c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005d38:	0004c503          	lbu	a0,0(s1)
    80005d3c:	00050a63          	beqz	a0,80005d50 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005d40:	ffffb097          	auipc	ra,0xffffb
    80005d44:	7f8080e7          	jalr	2040(ra) # 80001538 <putc>
        string++;
    80005d48:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005d4c:	fedff06f          	j	80005d38 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005d50:	00000613          	li	a2,0
    80005d54:	00100593          	li	a1,1
    80005d58:	0000a517          	auipc	a0,0xa
    80005d5c:	f0050513          	addi	a0,a0,-256 # 8000fc58 <lockPrint>
    80005d60:	ffffb097          	auipc	ra,0xffffb
    80005d64:	4b8080e7          	jalr	1208(ra) # 80001218 <copy_and_swap>
    80005d68:	fe0514e3          	bnez	a0,80005d50 <_Z11printStringPKc+0x4c>
}
    80005d6c:	01813083          	ld	ra,24(sp)
    80005d70:	01013403          	ld	s0,16(sp)
    80005d74:	00813483          	ld	s1,8(sp)
    80005d78:	02010113          	addi	sp,sp,32
    80005d7c:	00008067          	ret

0000000080005d80 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005d80:	fd010113          	addi	sp,sp,-48
    80005d84:	02113423          	sd	ra,40(sp)
    80005d88:	02813023          	sd	s0,32(sp)
    80005d8c:	00913c23          	sd	s1,24(sp)
    80005d90:	01213823          	sd	s2,16(sp)
    80005d94:	01313423          	sd	s3,8(sp)
    80005d98:	01413023          	sd	s4,0(sp)
    80005d9c:	03010413          	addi	s0,sp,48
    80005da0:	00050993          	mv	s3,a0
    80005da4:	00058a13          	mv	s4,a1
    LOCK();
    80005da8:	00100613          	li	a2,1
    80005dac:	00000593          	li	a1,0
    80005db0:	0000a517          	auipc	a0,0xa
    80005db4:	ea850513          	addi	a0,a0,-344 # 8000fc58 <lockPrint>
    80005db8:	ffffb097          	auipc	ra,0xffffb
    80005dbc:	460080e7          	jalr	1120(ra) # 80001218 <copy_and_swap>
    80005dc0:	fe0514e3          	bnez	a0,80005da8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005dc4:	00000913          	li	s2,0
    80005dc8:	00090493          	mv	s1,s2
    80005dcc:	0019091b          	addiw	s2,s2,1
    80005dd0:	03495a63          	bge	s2,s4,80005e04 <_Z9getStringPci+0x84>
        cc = getc();
    80005dd4:	ffffb097          	auipc	ra,0xffffb
    80005dd8:	73c080e7          	jalr	1852(ra) # 80001510 <getc>
        if(cc < 1)
    80005ddc:	02050463          	beqz	a0,80005e04 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005de0:	009984b3          	add	s1,s3,s1
    80005de4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005de8:	00a00793          	li	a5,10
    80005dec:	00f50a63          	beq	a0,a5,80005e00 <_Z9getStringPci+0x80>
    80005df0:	00d00793          	li	a5,13
    80005df4:	fcf51ae3          	bne	a0,a5,80005dc8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005df8:	00090493          	mv	s1,s2
    80005dfc:	0080006f          	j	80005e04 <_Z9getStringPci+0x84>
    80005e00:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005e04:	009984b3          	add	s1,s3,s1
    80005e08:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005e0c:	00000613          	li	a2,0
    80005e10:	00100593          	li	a1,1
    80005e14:	0000a517          	auipc	a0,0xa
    80005e18:	e4450513          	addi	a0,a0,-444 # 8000fc58 <lockPrint>
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	3fc080e7          	jalr	1020(ra) # 80001218 <copy_and_swap>
    80005e24:	fe0514e3          	bnez	a0,80005e0c <_Z9getStringPci+0x8c>
    return buf;
}
    80005e28:	00098513          	mv	a0,s3
    80005e2c:	02813083          	ld	ra,40(sp)
    80005e30:	02013403          	ld	s0,32(sp)
    80005e34:	01813483          	ld	s1,24(sp)
    80005e38:	01013903          	ld	s2,16(sp)
    80005e3c:	00813983          	ld	s3,8(sp)
    80005e40:	00013a03          	ld	s4,0(sp)
    80005e44:	03010113          	addi	sp,sp,48
    80005e48:	00008067          	ret

0000000080005e4c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005e4c:	ff010113          	addi	sp,sp,-16
    80005e50:	00813423          	sd	s0,8(sp)
    80005e54:	01010413          	addi	s0,sp,16
    80005e58:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005e5c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005e60:	0006c603          	lbu	a2,0(a3)
    80005e64:	fd06071b          	addiw	a4,a2,-48
    80005e68:	0ff77713          	andi	a4,a4,255
    80005e6c:	00900793          	li	a5,9
    80005e70:	02e7e063          	bltu	a5,a4,80005e90 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005e74:	0025179b          	slliw	a5,a0,0x2
    80005e78:	00a787bb          	addw	a5,a5,a0
    80005e7c:	0017979b          	slliw	a5,a5,0x1
    80005e80:	00168693          	addi	a3,a3,1
    80005e84:	00c787bb          	addw	a5,a5,a2
    80005e88:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005e8c:	fd5ff06f          	j	80005e60 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005e90:	00813403          	ld	s0,8(sp)
    80005e94:	01010113          	addi	sp,sp,16
    80005e98:	00008067          	ret

0000000080005e9c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005e9c:	fc010113          	addi	sp,sp,-64
    80005ea0:	02113c23          	sd	ra,56(sp)
    80005ea4:	02813823          	sd	s0,48(sp)
    80005ea8:	02913423          	sd	s1,40(sp)
    80005eac:	03213023          	sd	s2,32(sp)
    80005eb0:	01313c23          	sd	s3,24(sp)
    80005eb4:	04010413          	addi	s0,sp,64
    80005eb8:	00050493          	mv	s1,a0
    80005ebc:	00058913          	mv	s2,a1
    80005ec0:	00060993          	mv	s3,a2
    LOCK();
    80005ec4:	00100613          	li	a2,1
    80005ec8:	00000593          	li	a1,0
    80005ecc:	0000a517          	auipc	a0,0xa
    80005ed0:	d8c50513          	addi	a0,a0,-628 # 8000fc58 <lockPrint>
    80005ed4:	ffffb097          	auipc	ra,0xffffb
    80005ed8:	344080e7          	jalr	836(ra) # 80001218 <copy_and_swap>
    80005edc:	fe0514e3          	bnez	a0,80005ec4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005ee0:	00098463          	beqz	s3,80005ee8 <_Z8printIntiii+0x4c>
    80005ee4:	0804c463          	bltz	s1,80005f6c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005ee8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005eec:	00000593          	li	a1,0
    }

    i = 0;
    80005ef0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005ef4:	0009079b          	sext.w	a5,s2
    80005ef8:	0325773b          	remuw	a4,a0,s2
    80005efc:	00048613          	mv	a2,s1
    80005f00:	0014849b          	addiw	s1,s1,1
    80005f04:	02071693          	slli	a3,a4,0x20
    80005f08:	0206d693          	srli	a3,a3,0x20
    80005f0c:	00006717          	auipc	a4,0x6
    80005f10:	b8470713          	addi	a4,a4,-1148 # 8000ba90 <digits>
    80005f14:	00d70733          	add	a4,a4,a3
    80005f18:	00074683          	lbu	a3,0(a4)
    80005f1c:	fd040713          	addi	a4,s0,-48
    80005f20:	00c70733          	add	a4,a4,a2
    80005f24:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005f28:	0005071b          	sext.w	a4,a0
    80005f2c:	0325553b          	divuw	a0,a0,s2
    80005f30:	fcf772e3          	bgeu	a4,a5,80005ef4 <_Z8printIntiii+0x58>
    if(neg)
    80005f34:	00058c63          	beqz	a1,80005f4c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005f38:	fd040793          	addi	a5,s0,-48
    80005f3c:	009784b3          	add	s1,a5,s1
    80005f40:	02d00793          	li	a5,45
    80005f44:	fef48823          	sb	a5,-16(s1)
    80005f48:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005f4c:	fff4849b          	addiw	s1,s1,-1
    80005f50:	0204c463          	bltz	s1,80005f78 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005f54:	fd040793          	addi	a5,s0,-48
    80005f58:	009787b3          	add	a5,a5,s1
    80005f5c:	ff07c503          	lbu	a0,-16(a5)
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	5d8080e7          	jalr	1496(ra) # 80001538 <putc>
    80005f68:	fe5ff06f          	j	80005f4c <_Z8printIntiii+0xb0>
        x = -xx;
    80005f6c:	4090053b          	negw	a0,s1
        neg = 1;
    80005f70:	00100593          	li	a1,1
        x = -xx;
    80005f74:	f7dff06f          	j	80005ef0 <_Z8printIntiii+0x54>

    UNLOCK();
    80005f78:	00000613          	li	a2,0
    80005f7c:	00100593          	li	a1,1
    80005f80:	0000a517          	auipc	a0,0xa
    80005f84:	cd850513          	addi	a0,a0,-808 # 8000fc58 <lockPrint>
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	290080e7          	jalr	656(ra) # 80001218 <copy_and_swap>
    80005f90:	fe0514e3          	bnez	a0,80005f78 <_Z8printIntiii+0xdc>
}
    80005f94:	03813083          	ld	ra,56(sp)
    80005f98:	03013403          	ld	s0,48(sp)
    80005f9c:	02813483          	ld	s1,40(sp)
    80005fa0:	02013903          	ld	s2,32(sp)
    80005fa4:	01813983          	ld	s3,24(sp)
    80005fa8:	04010113          	addi	sp,sp,64
    80005fac:	00008067          	ret

0000000080005fb0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005fb0:	fd010113          	addi	sp,sp,-48
    80005fb4:	02113423          	sd	ra,40(sp)
    80005fb8:	02813023          	sd	s0,32(sp)
    80005fbc:	00913c23          	sd	s1,24(sp)
    80005fc0:	01213823          	sd	s2,16(sp)
    80005fc4:	01313423          	sd	s3,8(sp)
    80005fc8:	03010413          	addi	s0,sp,48
    80005fcc:	00050493          	mv	s1,a0
    80005fd0:	00058913          	mv	s2,a1
    80005fd4:	0015879b          	addiw	a5,a1,1
    80005fd8:	0007851b          	sext.w	a0,a5
    80005fdc:	00f4a023          	sw	a5,0(s1)
    80005fe0:	0004a823          	sw	zero,16(s1)
    80005fe4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005fe8:	00251513          	slli	a0,a0,0x2
    80005fec:	ffffb097          	auipc	ra,0xffffb
    80005ff0:	26c080e7          	jalr	620(ra) # 80001258 <mem_alloc>
    80005ff4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ff8:	01000513          	li	a0,16
    80005ffc:	ffffd097          	auipc	ra,0xffffd
    80006000:	760080e7          	jalr	1888(ra) # 8000375c <_Znwm>
    80006004:	00050993          	mv	s3,a0
    80006008:	00000593          	li	a1,0
    8000600c:	ffffe097          	auipc	ra,0xffffe
    80006010:	99c080e7          	jalr	-1636(ra) # 800039a8 <_ZN9SemaphoreC1Ej>
    80006014:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006018:	01000513          	li	a0,16
    8000601c:	ffffd097          	auipc	ra,0xffffd
    80006020:	740080e7          	jalr	1856(ra) # 8000375c <_Znwm>
    80006024:	00050993          	mv	s3,a0
    80006028:	00090593          	mv	a1,s2
    8000602c:	ffffe097          	auipc	ra,0xffffe
    80006030:	97c080e7          	jalr	-1668(ra) # 800039a8 <_ZN9SemaphoreC1Ej>
    80006034:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006038:	01000513          	li	a0,16
    8000603c:	ffffd097          	auipc	ra,0xffffd
    80006040:	720080e7          	jalr	1824(ra) # 8000375c <_Znwm>
    80006044:	00050913          	mv	s2,a0
    80006048:	00100593          	li	a1,1
    8000604c:	ffffe097          	auipc	ra,0xffffe
    80006050:	95c080e7          	jalr	-1700(ra) # 800039a8 <_ZN9SemaphoreC1Ej>
    80006054:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006058:	01000513          	li	a0,16
    8000605c:	ffffd097          	auipc	ra,0xffffd
    80006060:	700080e7          	jalr	1792(ra) # 8000375c <_Znwm>
    80006064:	00050913          	mv	s2,a0
    80006068:	00100593          	li	a1,1
    8000606c:	ffffe097          	auipc	ra,0xffffe
    80006070:	93c080e7          	jalr	-1732(ra) # 800039a8 <_ZN9SemaphoreC1Ej>
    80006074:	0324b823          	sd	s2,48(s1)
}
    80006078:	02813083          	ld	ra,40(sp)
    8000607c:	02013403          	ld	s0,32(sp)
    80006080:	01813483          	ld	s1,24(sp)
    80006084:	01013903          	ld	s2,16(sp)
    80006088:	00813983          	ld	s3,8(sp)
    8000608c:	03010113          	addi	sp,sp,48
    80006090:	00008067          	ret
    80006094:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006098:	00098513          	mv	a0,s3
    8000609c:	ffffd097          	auipc	ra,0xffffd
    800060a0:	6e8080e7          	jalr	1768(ra) # 80003784 <_ZdlPv>
    800060a4:	00048513          	mv	a0,s1
    800060a8:	0000b097          	auipc	ra,0xb
    800060ac:	c90080e7          	jalr	-880(ra) # 80010d38 <_Unwind_Resume>
    800060b0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800060b4:	00098513          	mv	a0,s3
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	6cc080e7          	jalr	1740(ra) # 80003784 <_ZdlPv>
    800060c0:	00048513          	mv	a0,s1
    800060c4:	0000b097          	auipc	ra,0xb
    800060c8:	c74080e7          	jalr	-908(ra) # 80010d38 <_Unwind_Resume>
    800060cc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800060d0:	00090513          	mv	a0,s2
    800060d4:	ffffd097          	auipc	ra,0xffffd
    800060d8:	6b0080e7          	jalr	1712(ra) # 80003784 <_ZdlPv>
    800060dc:	00048513          	mv	a0,s1
    800060e0:	0000b097          	auipc	ra,0xb
    800060e4:	c58080e7          	jalr	-936(ra) # 80010d38 <_Unwind_Resume>
    800060e8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800060ec:	00090513          	mv	a0,s2
    800060f0:	ffffd097          	auipc	ra,0xffffd
    800060f4:	694080e7          	jalr	1684(ra) # 80003784 <_ZdlPv>
    800060f8:	00048513          	mv	a0,s1
    800060fc:	0000b097          	auipc	ra,0xb
    80006100:	c3c080e7          	jalr	-964(ra) # 80010d38 <_Unwind_Resume>

0000000080006104 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006104:	fe010113          	addi	sp,sp,-32
    80006108:	00113c23          	sd	ra,24(sp)
    8000610c:	00813823          	sd	s0,16(sp)
    80006110:	00913423          	sd	s1,8(sp)
    80006114:	01213023          	sd	s2,0(sp)
    80006118:	02010413          	addi	s0,sp,32
    8000611c:	00050493          	mv	s1,a0
    80006120:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006124:	01853503          	ld	a0,24(a0)
    80006128:	ffffe097          	auipc	ra,0xffffe
    8000612c:	848080e7          	jalr	-1976(ra) # 80003970 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006130:	0304b503          	ld	a0,48(s1)
    80006134:	ffffe097          	auipc	ra,0xffffe
    80006138:	83c080e7          	jalr	-1988(ra) # 80003970 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000613c:	0084b783          	ld	a5,8(s1)
    80006140:	0144a703          	lw	a4,20(s1)
    80006144:	00271713          	slli	a4,a4,0x2
    80006148:	00e787b3          	add	a5,a5,a4
    8000614c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006150:	0144a783          	lw	a5,20(s1)
    80006154:	0017879b          	addiw	a5,a5,1
    80006158:	0004a703          	lw	a4,0(s1)
    8000615c:	02e7e7bb          	remw	a5,a5,a4
    80006160:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006164:	0304b503          	ld	a0,48(s1)
    80006168:	ffffe097          	auipc	ra,0xffffe
    8000616c:	88c080e7          	jalr	-1908(ra) # 800039f4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006170:	0204b503          	ld	a0,32(s1)
    80006174:	ffffe097          	auipc	ra,0xffffe
    80006178:	880080e7          	jalr	-1920(ra) # 800039f4 <_ZN9Semaphore6signalEv>

}
    8000617c:	01813083          	ld	ra,24(sp)
    80006180:	01013403          	ld	s0,16(sp)
    80006184:	00813483          	ld	s1,8(sp)
    80006188:	00013903          	ld	s2,0(sp)
    8000618c:	02010113          	addi	sp,sp,32
    80006190:	00008067          	ret

0000000080006194 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006194:	fe010113          	addi	sp,sp,-32
    80006198:	00113c23          	sd	ra,24(sp)
    8000619c:	00813823          	sd	s0,16(sp)
    800061a0:	00913423          	sd	s1,8(sp)
    800061a4:	01213023          	sd	s2,0(sp)
    800061a8:	02010413          	addi	s0,sp,32
    800061ac:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800061b0:	02053503          	ld	a0,32(a0)
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	7bc080e7          	jalr	1980(ra) # 80003970 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800061bc:	0284b503          	ld	a0,40(s1)
    800061c0:	ffffd097          	auipc	ra,0xffffd
    800061c4:	7b0080e7          	jalr	1968(ra) # 80003970 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800061c8:	0084b703          	ld	a4,8(s1)
    800061cc:	0104a783          	lw	a5,16(s1)
    800061d0:	00279693          	slli	a3,a5,0x2
    800061d4:	00d70733          	add	a4,a4,a3
    800061d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800061dc:	0017879b          	addiw	a5,a5,1
    800061e0:	0004a703          	lw	a4,0(s1)
    800061e4:	02e7e7bb          	remw	a5,a5,a4
    800061e8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800061ec:	0284b503          	ld	a0,40(s1)
    800061f0:	ffffe097          	auipc	ra,0xffffe
    800061f4:	804080e7          	jalr	-2044(ra) # 800039f4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800061f8:	0184b503          	ld	a0,24(s1)
    800061fc:	ffffd097          	auipc	ra,0xffffd
    80006200:	7f8080e7          	jalr	2040(ra) # 800039f4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006204:	00090513          	mv	a0,s2
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	01013403          	ld	s0,16(sp)
    80006210:	00813483          	ld	s1,8(sp)
    80006214:	00013903          	ld	s2,0(sp)
    80006218:	02010113          	addi	sp,sp,32
    8000621c:	00008067          	ret

0000000080006220 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006220:	fe010113          	addi	sp,sp,-32
    80006224:	00113c23          	sd	ra,24(sp)
    80006228:	00813823          	sd	s0,16(sp)
    8000622c:	00913423          	sd	s1,8(sp)
    80006230:	01213023          	sd	s2,0(sp)
    80006234:	02010413          	addi	s0,sp,32
    80006238:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000623c:	02853503          	ld	a0,40(a0)
    80006240:	ffffd097          	auipc	ra,0xffffd
    80006244:	730080e7          	jalr	1840(ra) # 80003970 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006248:	0304b503          	ld	a0,48(s1)
    8000624c:	ffffd097          	auipc	ra,0xffffd
    80006250:	724080e7          	jalr	1828(ra) # 80003970 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006254:	0144a783          	lw	a5,20(s1)
    80006258:	0104a903          	lw	s2,16(s1)
    8000625c:	0327ce63          	blt	a5,s2,80006298 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006260:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006264:	0304b503          	ld	a0,48(s1)
    80006268:	ffffd097          	auipc	ra,0xffffd
    8000626c:	78c080e7          	jalr	1932(ra) # 800039f4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006270:	0284b503          	ld	a0,40(s1)
    80006274:	ffffd097          	auipc	ra,0xffffd
    80006278:	780080e7          	jalr	1920(ra) # 800039f4 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000627c:	00090513          	mv	a0,s2
    80006280:	01813083          	ld	ra,24(sp)
    80006284:	01013403          	ld	s0,16(sp)
    80006288:	00813483          	ld	s1,8(sp)
    8000628c:	00013903          	ld	s2,0(sp)
    80006290:	02010113          	addi	sp,sp,32
    80006294:	00008067          	ret
        ret = cap - head + tail;
    80006298:	0004a703          	lw	a4,0(s1)
    8000629c:	4127093b          	subw	s2,a4,s2
    800062a0:	00f9093b          	addw	s2,s2,a5
    800062a4:	fc1ff06f          	j	80006264 <_ZN9BufferCPP6getCntEv+0x44>

00000000800062a8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800062a8:	fe010113          	addi	sp,sp,-32
    800062ac:	00113c23          	sd	ra,24(sp)
    800062b0:	00813823          	sd	s0,16(sp)
    800062b4:	00913423          	sd	s1,8(sp)
    800062b8:	02010413          	addi	s0,sp,32
    800062bc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800062c0:	00a00513          	li	a0,10
    800062c4:	ffffd097          	auipc	ra,0xffffd
    800062c8:	784080e7          	jalr	1924(ra) # 80003a48 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800062cc:	00003517          	auipc	a0,0x3
    800062d0:	20450513          	addi	a0,a0,516 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	a30080e7          	jalr	-1488(ra) # 80005d04 <_Z11printStringPKc>
    while (getCnt()) {
    800062dc:	00048513          	mv	a0,s1
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	f40080e7          	jalr	-192(ra) # 80006220 <_ZN9BufferCPP6getCntEv>
    800062e8:	02050c63          	beqz	a0,80006320 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800062ec:	0084b783          	ld	a5,8(s1)
    800062f0:	0104a703          	lw	a4,16(s1)
    800062f4:	00271713          	slli	a4,a4,0x2
    800062f8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800062fc:	0007c503          	lbu	a0,0(a5)
    80006300:	ffffd097          	auipc	ra,0xffffd
    80006304:	748080e7          	jalr	1864(ra) # 80003a48 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006308:	0104a783          	lw	a5,16(s1)
    8000630c:	0017879b          	addiw	a5,a5,1
    80006310:	0004a703          	lw	a4,0(s1)
    80006314:	02e7e7bb          	remw	a5,a5,a4
    80006318:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000631c:	fc1ff06f          	j	800062dc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006320:	02100513          	li	a0,33
    80006324:	ffffd097          	auipc	ra,0xffffd
    80006328:	724080e7          	jalr	1828(ra) # 80003a48 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000632c:	00a00513          	li	a0,10
    80006330:	ffffd097          	auipc	ra,0xffffd
    80006334:	718080e7          	jalr	1816(ra) # 80003a48 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006338:	0084b503          	ld	a0,8(s1)
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	f4c080e7          	jalr	-180(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80006344:	0204b503          	ld	a0,32(s1)
    80006348:	00050863          	beqz	a0,80006358 <_ZN9BufferCPPD1Ev+0xb0>
    8000634c:	00053783          	ld	a5,0(a0)
    80006350:	0087b783          	ld	a5,8(a5)
    80006354:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006358:	0184b503          	ld	a0,24(s1)
    8000635c:	00050863          	beqz	a0,8000636c <_ZN9BufferCPPD1Ev+0xc4>
    80006360:	00053783          	ld	a5,0(a0)
    80006364:	0087b783          	ld	a5,8(a5)
    80006368:	000780e7          	jalr	a5
    delete mutexTail;
    8000636c:	0304b503          	ld	a0,48(s1)
    80006370:	00050863          	beqz	a0,80006380 <_ZN9BufferCPPD1Ev+0xd8>
    80006374:	00053783          	ld	a5,0(a0)
    80006378:	0087b783          	ld	a5,8(a5)
    8000637c:	000780e7          	jalr	a5
    delete mutexHead;
    80006380:	0284b503          	ld	a0,40(s1)
    80006384:	00050863          	beqz	a0,80006394 <_ZN9BufferCPPD1Ev+0xec>
    80006388:	00053783          	ld	a5,0(a0)
    8000638c:	0087b783          	ld	a5,8(a5)
    80006390:	000780e7          	jalr	a5
}
    80006394:	01813083          	ld	ra,24(sp)
    80006398:	01013403          	ld	s0,16(sp)
    8000639c:	00813483          	ld	s1,8(sp)
    800063a0:	02010113          	addi	sp,sp,32
    800063a4:	00008067          	ret

00000000800063a8 <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    800063a8:	ff010113          	addi	sp,sp,-16
    800063ac:	00113423          	sd	ra,8(sp)
    800063b0:	00813023          	sd	s0,0(sp)
    800063b4:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	0bc080e7          	jalr	188(ra) # 80006474 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800063c0:	00813083          	ld	ra,8(sp)
    800063c4:	00013403          	ld	s0,0(sp)
    800063c8:	01010113          	addi	sp,sp,16
    800063cc:	00008067          	ret

00000000800063d0 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800063d0:	fe010113          	addi	sp,sp,-32
    800063d4:	00113c23          	sd	ra,24(sp)
    800063d8:	00813823          	sd	s0,16(sp)
    800063dc:	00913423          	sd	s1,8(sp)
    800063e0:	01213023          	sd	s2,0(sp)
    800063e4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800063e8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800063ec:	00600493          	li	s1,6
    while (--i > 0) {
    800063f0:	fff4849b          	addiw	s1,s1,-1
    800063f4:	04905463          	blez	s1,8000643c <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800063f8:	00003517          	auipc	a0,0x3
    800063fc:	0f050513          	addi	a0,a0,240 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006400:	00000097          	auipc	ra,0x0
    80006404:	904080e7          	jalr	-1788(ra) # 80005d04 <_Z11printStringPKc>
        printInt(sleep_time);
    80006408:	00000613          	li	a2,0
    8000640c:	00a00593          	li	a1,10
    80006410:	0009051b          	sext.w	a0,s2
    80006414:	00000097          	auipc	ra,0x0
    80006418:	a88080e7          	jalr	-1400(ra) # 80005e9c <_Z8printIntiii>
        printString(" !\n");
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	0d450513          	addi	a0,a0,212 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	8e0080e7          	jalr	-1824(ra) # 80005d04 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000642c:	00090513          	mv	a0,s2
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	008080e7          	jalr	8(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    80006438:	fb9ff06f          	j	800063f0 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000643c:	00a00793          	li	a5,10
    80006440:	02f95933          	divu	s2,s2,a5
    80006444:	fff90913          	addi	s2,s2,-1
    80006448:	0000a797          	auipc	a5,0xa
    8000644c:	81878793          	addi	a5,a5,-2024 # 8000fc60 <finished>
    80006450:	01278933          	add	s2,a5,s2
    80006454:	00100793          	li	a5,1
    80006458:	00f90023          	sb	a5,0(s2)
}
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	00013903          	ld	s2,0(sp)
    8000646c:	02010113          	addi	sp,sp,32
    80006470:	00008067          	ret

0000000080006474 <_Z12testSleepingv>:

void testSleeping() {
    80006474:	fc010113          	addi	sp,sp,-64
    80006478:	02113c23          	sd	ra,56(sp)
    8000647c:	02813823          	sd	s0,48(sp)
    80006480:	02913423          	sd	s1,40(sp)
    80006484:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006488:	00a00793          	li	a5,10
    8000648c:	fcf43823          	sd	a5,-48(s0)
    80006490:	01400793          	li	a5,20
    80006494:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006498:	00000493          	li	s1,0
    8000649c:	02c0006f          	j	800064c8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800064a0:	00349793          	slli	a5,s1,0x3
    800064a4:	fd040613          	addi	a2,s0,-48
    800064a8:	00f60633          	add	a2,a2,a5
    800064ac:	00000597          	auipc	a1,0x0
    800064b0:	f2458593          	addi	a1,a1,-220 # 800063d0 <_Z9sleepyRunPv>
    800064b4:	fc040513          	addi	a0,s0,-64
    800064b8:	00f50533          	add	a0,a0,a5
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	df8080e7          	jalr	-520(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800064c4:	0014849b          	addiw	s1,s1,1
    800064c8:	00100793          	li	a5,1
    800064cc:	fc97dae3          	bge	a5,s1,800064a0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800064d0:	00009797          	auipc	a5,0x9
    800064d4:	7907c783          	lbu	a5,1936(a5) # 8000fc60 <finished>
    800064d8:	fe078ce3          	beqz	a5,800064d0 <_Z12testSleepingv+0x5c>
    800064dc:	00009797          	auipc	a5,0x9
    800064e0:	7857c783          	lbu	a5,1925(a5) # 8000fc61 <finished+0x1>
    800064e4:	fe0786e3          	beqz	a5,800064d0 <_Z12testSleepingv+0x5c>
    800064e8:	03813083          	ld	ra,56(sp)
    800064ec:	03013403          	ld	s0,48(sp)
    800064f0:	02813483          	ld	s1,40(sp)
    800064f4:	04010113          	addi	sp,sp,64
    800064f8:	00008067          	ret

00000000800064fc <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00113c23          	sd	ra,24(sp)
    80006504:	00813823          	sd	s0,16(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	01213023          	sd	s2,0(sp)
    80006510:	02010413          	addi	s0,sp,32
    80006514:	00050493          	mv	s1,a0
    80006518:	00058913          	mv	s2,a1
    8000651c:	0015879b          	addiw	a5,a1,1
    80006520:	0007851b          	sext.w	a0,a5
    80006524:	00f4a023          	sw	a5,0(s1)
    80006528:	0004a823          	sw	zero,16(s1)
    8000652c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006530:	00251513          	slli	a0,a0,0x2
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	d24080e7          	jalr	-732(ra) # 80001258 <mem_alloc>
    8000653c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006540:	00000593          	li	a1,0
    80006544:	02048513          	addi	a0,s1,32
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	e34080e7          	jalr	-460(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006550:	00090593          	mv	a1,s2
    80006554:	01848513          	addi	a0,s1,24
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	e24080e7          	jalr	-476(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    80006560:	00100593          	li	a1,1
    80006564:	02848513          	addi	a0,s1,40
    80006568:	ffffb097          	auipc	ra,0xffffb
    8000656c:	e14080e7          	jalr	-492(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    80006570:	00100593          	li	a1,1
    80006574:	03048513          	addi	a0,s1,48
    80006578:	ffffb097          	auipc	ra,0xffffb
    8000657c:	e04080e7          	jalr	-508(ra) # 8000137c <sem_open>
}
    80006580:	01813083          	ld	ra,24(sp)
    80006584:	01013403          	ld	s0,16(sp)
    80006588:	00813483          	ld	s1,8(sp)
    8000658c:	00013903          	ld	s2,0(sp)
    80006590:	02010113          	addi	sp,sp,32
    80006594:	00008067          	ret

0000000080006598 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006598:	fe010113          	addi	sp,sp,-32
    8000659c:	00113c23          	sd	ra,24(sp)
    800065a0:	00813823          	sd	s0,16(sp)
    800065a4:	00913423          	sd	s1,8(sp)
    800065a8:	01213023          	sd	s2,0(sp)
    800065ac:	02010413          	addi	s0,sp,32
    800065b0:	00050493          	mv	s1,a0
    800065b4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800065b8:	01853503          	ld	a0,24(a0)
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	e24080e7          	jalr	-476(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800065c4:	0304b503          	ld	a0,48(s1)
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	e18080e7          	jalr	-488(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    800065d0:	0084b783          	ld	a5,8(s1)
    800065d4:	0144a703          	lw	a4,20(s1)
    800065d8:	00271713          	slli	a4,a4,0x2
    800065dc:	00e787b3          	add	a5,a5,a4
    800065e0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065e4:	0144a783          	lw	a5,20(s1)
    800065e8:	0017879b          	addiw	a5,a5,1
    800065ec:	0004a703          	lw	a4,0(s1)
    800065f0:	02e7e7bb          	remw	a5,a5,a4
    800065f4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800065f8:	0304b503          	ld	a0,48(s1)
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	e10080e7          	jalr	-496(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006604:	0204b503          	ld	a0,32(s1)
    80006608:	ffffb097          	auipc	ra,0xffffb
    8000660c:	e04080e7          	jalr	-508(ra) # 8000140c <sem_signal>

}
    80006610:	01813083          	ld	ra,24(sp)
    80006614:	01013403          	ld	s0,16(sp)
    80006618:	00813483          	ld	s1,8(sp)
    8000661c:	00013903          	ld	s2,0(sp)
    80006620:	02010113          	addi	sp,sp,32
    80006624:	00008067          	ret

0000000080006628 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006628:	fe010113          	addi	sp,sp,-32
    8000662c:	00113c23          	sd	ra,24(sp)
    80006630:	00813823          	sd	s0,16(sp)
    80006634:	00913423          	sd	s1,8(sp)
    80006638:	01213023          	sd	s2,0(sp)
    8000663c:	02010413          	addi	s0,sp,32
    80006640:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006644:	02053503          	ld	a0,32(a0)
    80006648:	ffffb097          	auipc	ra,0xffffb
    8000664c:	d98080e7          	jalr	-616(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    80006650:	0284b503          	ld	a0,40(s1)
    80006654:	ffffb097          	auipc	ra,0xffffb
    80006658:	d8c080e7          	jalr	-628(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    8000665c:	0084b703          	ld	a4,8(s1)
    80006660:	0104a783          	lw	a5,16(s1)
    80006664:	00279693          	slli	a3,a5,0x2
    80006668:	00d70733          	add	a4,a4,a3
    8000666c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006670:	0017879b          	addiw	a5,a5,1
    80006674:	0004a703          	lw	a4,0(s1)
    80006678:	02e7e7bb          	remw	a5,a5,a4
    8000667c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006680:	0284b503          	ld	a0,40(s1)
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	d88080e7          	jalr	-632(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    8000668c:	0184b503          	ld	a0,24(s1)
    80006690:	ffffb097          	auipc	ra,0xffffb
    80006694:	d7c080e7          	jalr	-644(ra) # 8000140c <sem_signal>

    return ret;
}
    80006698:	00090513          	mv	a0,s2
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	00813483          	ld	s1,8(sp)
    800066a8:	00013903          	ld	s2,0(sp)
    800066ac:	02010113          	addi	sp,sp,32
    800066b0:	00008067          	ret

00000000800066b4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800066b4:	fe010113          	addi	sp,sp,-32
    800066b8:	00113c23          	sd	ra,24(sp)
    800066bc:	00813823          	sd	s0,16(sp)
    800066c0:	00913423          	sd	s1,8(sp)
    800066c4:	01213023          	sd	s2,0(sp)
    800066c8:	02010413          	addi	s0,sp,32
    800066cc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800066d0:	02853503          	ld	a0,40(a0)
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	d0c080e7          	jalr	-756(ra) # 800013e0 <sem_wait>
    sem_wait(mutexTail);
    800066dc:	0304b503          	ld	a0,48(s1)
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	d00080e7          	jalr	-768(ra) # 800013e0 <sem_wait>

    if (tail >= head) {
    800066e8:	0144a783          	lw	a5,20(s1)
    800066ec:	0104a903          	lw	s2,16(s1)
    800066f0:	0327ce63          	blt	a5,s2,8000672c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800066f4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800066f8:	0304b503          	ld	a0,48(s1)
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	d10080e7          	jalr	-752(ra) # 8000140c <sem_signal>
    sem_signal(mutexHead);
    80006704:	0284b503          	ld	a0,40(s1)
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	d04080e7          	jalr	-764(ra) # 8000140c <sem_signal>

    return ret;
}
    80006710:	00090513          	mv	a0,s2
    80006714:	01813083          	ld	ra,24(sp)
    80006718:	01013403          	ld	s0,16(sp)
    8000671c:	00813483          	ld	s1,8(sp)
    80006720:	00013903          	ld	s2,0(sp)
    80006724:	02010113          	addi	sp,sp,32
    80006728:	00008067          	ret
        ret = cap - head + tail;
    8000672c:	0004a703          	lw	a4,0(s1)
    80006730:	4127093b          	subw	s2,a4,s2
    80006734:	00f9093b          	addw	s2,s2,a5
    80006738:	fc1ff06f          	j	800066f8 <_ZN6Buffer6getCntEv+0x44>

000000008000673c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000673c:	fe010113          	addi	sp,sp,-32
    80006740:	00113c23          	sd	ra,24(sp)
    80006744:	00813823          	sd	s0,16(sp)
    80006748:	00913423          	sd	s1,8(sp)
    8000674c:	02010413          	addi	s0,sp,32
    80006750:	00050493          	mv	s1,a0
    putc('\n');
    80006754:	00a00513          	li	a0,10
    80006758:	ffffb097          	auipc	ra,0xffffb
    8000675c:	de0080e7          	jalr	-544(ra) # 80001538 <putc>
    printString("Buffer deleted!\n");
    80006760:	00003517          	auipc	a0,0x3
    80006764:	d7050513          	addi	a0,a0,-656 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006768:	fffff097          	auipc	ra,0xfffff
    8000676c:	59c080e7          	jalr	1436(ra) # 80005d04 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006770:	00048513          	mv	a0,s1
    80006774:	00000097          	auipc	ra,0x0
    80006778:	f40080e7          	jalr	-192(ra) # 800066b4 <_ZN6Buffer6getCntEv>
    8000677c:	02a05c63          	blez	a0,800067b4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006780:	0084b783          	ld	a5,8(s1)
    80006784:	0104a703          	lw	a4,16(s1)
    80006788:	00271713          	slli	a4,a4,0x2
    8000678c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006790:	0007c503          	lbu	a0,0(a5)
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	da4080e7          	jalr	-604(ra) # 80001538 <putc>
        head = (head + 1) % cap;
    8000679c:	0104a783          	lw	a5,16(s1)
    800067a0:	0017879b          	addiw	a5,a5,1
    800067a4:	0004a703          	lw	a4,0(s1)
    800067a8:	02e7e7bb          	remw	a5,a5,a4
    800067ac:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800067b0:	fc1ff06f          	j	80006770 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800067b4:	02100513          	li	a0,33
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	d80080e7          	jalr	-640(ra) # 80001538 <putc>
    putc('\n');
    800067c0:	00a00513          	li	a0,10
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	d74080e7          	jalr	-652(ra) # 80001538 <putc>
    mem_free(buffer);
    800067cc:	0084b503          	ld	a0,8(s1)
    800067d0:	ffffb097          	auipc	ra,0xffffb
    800067d4:	ab8080e7          	jalr	-1352(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    800067d8:	0204b503          	ld	a0,32(s1)
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	bd8080e7          	jalr	-1064(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    800067e4:	0184b503          	ld	a0,24(s1)
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	bcc080e7          	jalr	-1076(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    800067f0:	0304b503          	ld	a0,48(s1)
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	bc0080e7          	jalr	-1088(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    800067fc:	0284b503          	ld	a0,40(s1)
    80006800:	ffffb097          	auipc	ra,0xffffb
    80006804:	bb4080e7          	jalr	-1100(ra) # 800013b4 <sem_close>
}
    80006808:	01813083          	ld	ra,24(sp)
    8000680c:	01013403          	ld	s0,16(sp)
    80006810:	00813483          	ld	s1,8(sp)
    80006814:	02010113          	addi	sp,sp,32
    80006818:	00008067          	ret

000000008000681c <start>:
    8000681c:	ff010113          	addi	sp,sp,-16
    80006820:	00813423          	sd	s0,8(sp)
    80006824:	01010413          	addi	s0,sp,16
    80006828:	300027f3          	csrr	a5,mstatus
    8000682c:	ffffe737          	lui	a4,0xffffe
    80006830:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed92f>
    80006834:	00e7f7b3          	and	a5,a5,a4
    80006838:	00001737          	lui	a4,0x1
    8000683c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006840:	00e7e7b3          	or	a5,a5,a4
    80006844:	30079073          	csrw	mstatus,a5
    80006848:	00000797          	auipc	a5,0x0
    8000684c:	16078793          	addi	a5,a5,352 # 800069a8 <system_main>
    80006850:	34179073          	csrw	mepc,a5
    80006854:	00000793          	li	a5,0
    80006858:	18079073          	csrw	satp,a5
    8000685c:	000107b7          	lui	a5,0x10
    80006860:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006864:	30279073          	csrw	medeleg,a5
    80006868:	30379073          	csrw	mideleg,a5
    8000686c:	104027f3          	csrr	a5,sie
    80006870:	2227e793          	ori	a5,a5,546
    80006874:	10479073          	csrw	sie,a5
    80006878:	fff00793          	li	a5,-1
    8000687c:	00a7d793          	srli	a5,a5,0xa
    80006880:	3b079073          	csrw	pmpaddr0,a5
    80006884:	00f00793          	li	a5,15
    80006888:	3a079073          	csrw	pmpcfg0,a5
    8000688c:	f14027f3          	csrr	a5,mhartid
    80006890:	0200c737          	lui	a4,0x200c
    80006894:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006898:	0007869b          	sext.w	a3,a5
    8000689c:	00269713          	slli	a4,a3,0x2
    800068a0:	000f4637          	lui	a2,0xf4
    800068a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068a8:	00d70733          	add	a4,a4,a3
    800068ac:	0037979b          	slliw	a5,a5,0x3
    800068b0:	020046b7          	lui	a3,0x2004
    800068b4:	00d787b3          	add	a5,a5,a3
    800068b8:	00c585b3          	add	a1,a1,a2
    800068bc:	00371693          	slli	a3,a4,0x3
    800068c0:	00009717          	auipc	a4,0x9
    800068c4:	3b070713          	addi	a4,a4,944 # 8000fc70 <timer_scratch>
    800068c8:	00b7b023          	sd	a1,0(a5)
    800068cc:	00d70733          	add	a4,a4,a3
    800068d0:	00f73c23          	sd	a5,24(a4)
    800068d4:	02c73023          	sd	a2,32(a4)
    800068d8:	34071073          	csrw	mscratch,a4
    800068dc:	00000797          	auipc	a5,0x0
    800068e0:	6e478793          	addi	a5,a5,1764 # 80006fc0 <timervec>
    800068e4:	30579073          	csrw	mtvec,a5
    800068e8:	300027f3          	csrr	a5,mstatus
    800068ec:	0087e793          	ori	a5,a5,8
    800068f0:	30079073          	csrw	mstatus,a5
    800068f4:	304027f3          	csrr	a5,mie
    800068f8:	0807e793          	ori	a5,a5,128
    800068fc:	30479073          	csrw	mie,a5
    80006900:	f14027f3          	csrr	a5,mhartid
    80006904:	0007879b          	sext.w	a5,a5
    80006908:	00078213          	mv	tp,a5
    8000690c:	30200073          	mret
    80006910:	00813403          	ld	s0,8(sp)
    80006914:	01010113          	addi	sp,sp,16
    80006918:	00008067          	ret

000000008000691c <timerinit>:
    8000691c:	ff010113          	addi	sp,sp,-16
    80006920:	00813423          	sd	s0,8(sp)
    80006924:	01010413          	addi	s0,sp,16
    80006928:	f14027f3          	csrr	a5,mhartid
    8000692c:	0200c737          	lui	a4,0x200c
    80006930:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006934:	0007869b          	sext.w	a3,a5
    80006938:	00269713          	slli	a4,a3,0x2
    8000693c:	000f4637          	lui	a2,0xf4
    80006940:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006944:	00d70733          	add	a4,a4,a3
    80006948:	0037979b          	slliw	a5,a5,0x3
    8000694c:	020046b7          	lui	a3,0x2004
    80006950:	00d787b3          	add	a5,a5,a3
    80006954:	00c585b3          	add	a1,a1,a2
    80006958:	00371693          	slli	a3,a4,0x3
    8000695c:	00009717          	auipc	a4,0x9
    80006960:	31470713          	addi	a4,a4,788 # 8000fc70 <timer_scratch>
    80006964:	00b7b023          	sd	a1,0(a5)
    80006968:	00d70733          	add	a4,a4,a3
    8000696c:	00f73c23          	sd	a5,24(a4)
    80006970:	02c73023          	sd	a2,32(a4)
    80006974:	34071073          	csrw	mscratch,a4
    80006978:	00000797          	auipc	a5,0x0
    8000697c:	64878793          	addi	a5,a5,1608 # 80006fc0 <timervec>
    80006980:	30579073          	csrw	mtvec,a5
    80006984:	300027f3          	csrr	a5,mstatus
    80006988:	0087e793          	ori	a5,a5,8
    8000698c:	30079073          	csrw	mstatus,a5
    80006990:	304027f3          	csrr	a5,mie
    80006994:	0807e793          	ori	a5,a5,128
    80006998:	30479073          	csrw	mie,a5
    8000699c:	00813403          	ld	s0,8(sp)
    800069a0:	01010113          	addi	sp,sp,16
    800069a4:	00008067          	ret

00000000800069a8 <system_main>:
    800069a8:	fe010113          	addi	sp,sp,-32
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	00113c23          	sd	ra,24(sp)
    800069b8:	02010413          	addi	s0,sp,32
    800069bc:	00000097          	auipc	ra,0x0
    800069c0:	0c4080e7          	jalr	196(ra) # 80006a80 <cpuid>
    800069c4:	00005497          	auipc	s1,0x5
    800069c8:	17c48493          	addi	s1,s1,380 # 8000bb40 <started>
    800069cc:	02050263          	beqz	a0,800069f0 <system_main+0x48>
    800069d0:	0004a783          	lw	a5,0(s1)
    800069d4:	0007879b          	sext.w	a5,a5
    800069d8:	fe078ce3          	beqz	a5,800069d0 <system_main+0x28>
    800069dc:	0ff0000f          	fence
    800069e0:	00003517          	auipc	a0,0x3
    800069e4:	b4850513          	addi	a0,a0,-1208 # 80009528 <CONSOLE_STATUS+0x518>
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	a74080e7          	jalr	-1420(ra) # 8000745c <panic>
    800069f0:	00001097          	auipc	ra,0x1
    800069f4:	9c8080e7          	jalr	-1592(ra) # 800073b8 <consoleinit>
    800069f8:	00001097          	auipc	ra,0x1
    800069fc:	154080e7          	jalr	340(ra) # 80007b4c <printfinit>
    80006a00:	00002517          	auipc	a0,0x2
    80006a04:	70050513          	addi	a0,a0,1792 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a08:	00001097          	auipc	ra,0x1
    80006a0c:	ab0080e7          	jalr	-1360(ra) # 800074b8 <__printf>
    80006a10:	00003517          	auipc	a0,0x3
    80006a14:	ae850513          	addi	a0,a0,-1304 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80006a18:	00001097          	auipc	ra,0x1
    80006a1c:	aa0080e7          	jalr	-1376(ra) # 800074b8 <__printf>
    80006a20:	00002517          	auipc	a0,0x2
    80006a24:	6e050513          	addi	a0,a0,1760 # 80009100 <CONSOLE_STATUS+0xf0>
    80006a28:	00001097          	auipc	ra,0x1
    80006a2c:	a90080e7          	jalr	-1392(ra) # 800074b8 <__printf>
    80006a30:	00001097          	auipc	ra,0x1
    80006a34:	4a8080e7          	jalr	1192(ra) # 80007ed8 <kinit>
    80006a38:	00000097          	auipc	ra,0x0
    80006a3c:	148080e7          	jalr	328(ra) # 80006b80 <trapinit>
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	16c080e7          	jalr	364(ra) # 80006bac <trapinithart>
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	5b8080e7          	jalr	1464(ra) # 80007000 <plicinit>
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	5d8080e7          	jalr	1496(ra) # 80007028 <plicinithart>
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	078080e7          	jalr	120(ra) # 80006ad0 <userinit>
    80006a60:	0ff0000f          	fence
    80006a64:	00100793          	li	a5,1
    80006a68:	00003517          	auipc	a0,0x3
    80006a6c:	aa850513          	addi	a0,a0,-1368 # 80009510 <CONSOLE_STATUS+0x500>
    80006a70:	00f4a023          	sw	a5,0(s1)
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	a44080e7          	jalr	-1468(ra) # 800074b8 <__printf>
    80006a7c:	0000006f          	j	80006a7c <system_main+0xd4>

0000000080006a80 <cpuid>:
    80006a80:	ff010113          	addi	sp,sp,-16
    80006a84:	00813423          	sd	s0,8(sp)
    80006a88:	01010413          	addi	s0,sp,16
    80006a8c:	00020513          	mv	a0,tp
    80006a90:	00813403          	ld	s0,8(sp)
    80006a94:	0005051b          	sext.w	a0,a0
    80006a98:	01010113          	addi	sp,sp,16
    80006a9c:	00008067          	ret

0000000080006aa0 <mycpu>:
    80006aa0:	ff010113          	addi	sp,sp,-16
    80006aa4:	00813423          	sd	s0,8(sp)
    80006aa8:	01010413          	addi	s0,sp,16
    80006aac:	00020793          	mv	a5,tp
    80006ab0:	00813403          	ld	s0,8(sp)
    80006ab4:	0007879b          	sext.w	a5,a5
    80006ab8:	00779793          	slli	a5,a5,0x7
    80006abc:	0000a517          	auipc	a0,0xa
    80006ac0:	1e450513          	addi	a0,a0,484 # 80010ca0 <cpus>
    80006ac4:	00f50533          	add	a0,a0,a5
    80006ac8:	01010113          	addi	sp,sp,16
    80006acc:	00008067          	ret

0000000080006ad0 <userinit>:
    80006ad0:	ff010113          	addi	sp,sp,-16
    80006ad4:	00813423          	sd	s0,8(sp)
    80006ad8:	01010413          	addi	s0,sp,16
    80006adc:	00813403          	ld	s0,8(sp)
    80006ae0:	01010113          	addi	sp,sp,16
    80006ae4:	ffffd317          	auipc	t1,0xffffd
    80006ae8:	bb430067          	jr	-1100(t1) # 80003698 <main>

0000000080006aec <either_copyout>:
    80006aec:	ff010113          	addi	sp,sp,-16
    80006af0:	00813023          	sd	s0,0(sp)
    80006af4:	00113423          	sd	ra,8(sp)
    80006af8:	01010413          	addi	s0,sp,16
    80006afc:	02051663          	bnez	a0,80006b28 <either_copyout+0x3c>
    80006b00:	00058513          	mv	a0,a1
    80006b04:	00060593          	mv	a1,a2
    80006b08:	0006861b          	sext.w	a2,a3
    80006b0c:	00002097          	auipc	ra,0x2
    80006b10:	c58080e7          	jalr	-936(ra) # 80008764 <__memmove>
    80006b14:	00813083          	ld	ra,8(sp)
    80006b18:	00013403          	ld	s0,0(sp)
    80006b1c:	00000513          	li	a0,0
    80006b20:	01010113          	addi	sp,sp,16
    80006b24:	00008067          	ret
    80006b28:	00003517          	auipc	a0,0x3
    80006b2c:	a2850513          	addi	a0,a0,-1496 # 80009550 <CONSOLE_STATUS+0x540>
    80006b30:	00001097          	auipc	ra,0x1
    80006b34:	92c080e7          	jalr	-1748(ra) # 8000745c <panic>

0000000080006b38 <either_copyin>:
    80006b38:	ff010113          	addi	sp,sp,-16
    80006b3c:	00813023          	sd	s0,0(sp)
    80006b40:	00113423          	sd	ra,8(sp)
    80006b44:	01010413          	addi	s0,sp,16
    80006b48:	02059463          	bnez	a1,80006b70 <either_copyin+0x38>
    80006b4c:	00060593          	mv	a1,a2
    80006b50:	0006861b          	sext.w	a2,a3
    80006b54:	00002097          	auipc	ra,0x2
    80006b58:	c10080e7          	jalr	-1008(ra) # 80008764 <__memmove>
    80006b5c:	00813083          	ld	ra,8(sp)
    80006b60:	00013403          	ld	s0,0(sp)
    80006b64:	00000513          	li	a0,0
    80006b68:	01010113          	addi	sp,sp,16
    80006b6c:	00008067          	ret
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	a0850513          	addi	a0,a0,-1528 # 80009578 <CONSOLE_STATUS+0x568>
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	8e4080e7          	jalr	-1820(ra) # 8000745c <panic>

0000000080006b80 <trapinit>:
    80006b80:	ff010113          	addi	sp,sp,-16
    80006b84:	00813423          	sd	s0,8(sp)
    80006b88:	01010413          	addi	s0,sp,16
    80006b8c:	00813403          	ld	s0,8(sp)
    80006b90:	00003597          	auipc	a1,0x3
    80006b94:	a1058593          	addi	a1,a1,-1520 # 800095a0 <CONSOLE_STATUS+0x590>
    80006b98:	0000a517          	auipc	a0,0xa
    80006b9c:	18850513          	addi	a0,a0,392 # 80010d20 <tickslock>
    80006ba0:	01010113          	addi	sp,sp,16
    80006ba4:	00001317          	auipc	t1,0x1
    80006ba8:	5c430067          	jr	1476(t1) # 80008168 <initlock>

0000000080006bac <trapinithart>:
    80006bac:	ff010113          	addi	sp,sp,-16
    80006bb0:	00813423          	sd	s0,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	00000797          	auipc	a5,0x0
    80006bbc:	2f878793          	addi	a5,a5,760 # 80006eb0 <kernelvec>
    80006bc0:	10579073          	csrw	stvec,a5
    80006bc4:	00813403          	ld	s0,8(sp)
    80006bc8:	01010113          	addi	sp,sp,16
    80006bcc:	00008067          	ret

0000000080006bd0 <usertrap>:
    80006bd0:	ff010113          	addi	sp,sp,-16
    80006bd4:	00813423          	sd	s0,8(sp)
    80006bd8:	01010413          	addi	s0,sp,16
    80006bdc:	00813403          	ld	s0,8(sp)
    80006be0:	01010113          	addi	sp,sp,16
    80006be4:	00008067          	ret

0000000080006be8 <usertrapret>:
    80006be8:	ff010113          	addi	sp,sp,-16
    80006bec:	00813423          	sd	s0,8(sp)
    80006bf0:	01010413          	addi	s0,sp,16
    80006bf4:	00813403          	ld	s0,8(sp)
    80006bf8:	01010113          	addi	sp,sp,16
    80006bfc:	00008067          	ret

0000000080006c00 <kerneltrap>:
    80006c00:	fe010113          	addi	sp,sp,-32
    80006c04:	00813823          	sd	s0,16(sp)
    80006c08:	00113c23          	sd	ra,24(sp)
    80006c0c:	00913423          	sd	s1,8(sp)
    80006c10:	02010413          	addi	s0,sp,32
    80006c14:	142025f3          	csrr	a1,scause
    80006c18:	100027f3          	csrr	a5,sstatus
    80006c1c:	0027f793          	andi	a5,a5,2
    80006c20:	10079c63          	bnez	a5,80006d38 <kerneltrap+0x138>
    80006c24:	142027f3          	csrr	a5,scause
    80006c28:	0207ce63          	bltz	a5,80006c64 <kerneltrap+0x64>
    80006c2c:	00003517          	auipc	a0,0x3
    80006c30:	9bc50513          	addi	a0,a0,-1604 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006c34:	00001097          	auipc	ra,0x1
    80006c38:	884080e7          	jalr	-1916(ra) # 800074b8 <__printf>
    80006c3c:	141025f3          	csrr	a1,sepc
    80006c40:	14302673          	csrr	a2,stval
    80006c44:	00003517          	auipc	a0,0x3
    80006c48:	9b450513          	addi	a0,a0,-1612 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006c4c:	00001097          	auipc	ra,0x1
    80006c50:	86c080e7          	jalr	-1940(ra) # 800074b8 <__printf>
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	9bc50513          	addi	a0,a0,-1604 # 80009610 <CONSOLE_STATUS+0x600>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	800080e7          	jalr	-2048(ra) # 8000745c <panic>
    80006c64:	0ff7f713          	andi	a4,a5,255
    80006c68:	00900693          	li	a3,9
    80006c6c:	04d70063          	beq	a4,a3,80006cac <kerneltrap+0xac>
    80006c70:	fff00713          	li	a4,-1
    80006c74:	03f71713          	slli	a4,a4,0x3f
    80006c78:	00170713          	addi	a4,a4,1
    80006c7c:	fae798e3          	bne	a5,a4,80006c2c <kerneltrap+0x2c>
    80006c80:	00000097          	auipc	ra,0x0
    80006c84:	e00080e7          	jalr	-512(ra) # 80006a80 <cpuid>
    80006c88:	06050663          	beqz	a0,80006cf4 <kerneltrap+0xf4>
    80006c8c:	144027f3          	csrr	a5,sip
    80006c90:	ffd7f793          	andi	a5,a5,-3
    80006c94:	14479073          	csrw	sip,a5
    80006c98:	01813083          	ld	ra,24(sp)
    80006c9c:	01013403          	ld	s0,16(sp)
    80006ca0:	00813483          	ld	s1,8(sp)
    80006ca4:	02010113          	addi	sp,sp,32
    80006ca8:	00008067          	ret
    80006cac:	00000097          	auipc	ra,0x0
    80006cb0:	3c8080e7          	jalr	968(ra) # 80007074 <plic_claim>
    80006cb4:	00a00793          	li	a5,10
    80006cb8:	00050493          	mv	s1,a0
    80006cbc:	06f50863          	beq	a0,a5,80006d2c <kerneltrap+0x12c>
    80006cc0:	fc050ce3          	beqz	a0,80006c98 <kerneltrap+0x98>
    80006cc4:	00050593          	mv	a1,a0
    80006cc8:	00003517          	auipc	a0,0x3
    80006ccc:	90050513          	addi	a0,a0,-1792 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	7e8080e7          	jalr	2024(ra) # 800074b8 <__printf>
    80006cd8:	01013403          	ld	s0,16(sp)
    80006cdc:	01813083          	ld	ra,24(sp)
    80006ce0:	00048513          	mv	a0,s1
    80006ce4:	00813483          	ld	s1,8(sp)
    80006ce8:	02010113          	addi	sp,sp,32
    80006cec:	00000317          	auipc	t1,0x0
    80006cf0:	3c030067          	jr	960(t1) # 800070ac <plic_complete>
    80006cf4:	0000a517          	auipc	a0,0xa
    80006cf8:	02c50513          	addi	a0,a0,44 # 80010d20 <tickslock>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	490080e7          	jalr	1168(ra) # 8000818c <acquire>
    80006d04:	00005717          	auipc	a4,0x5
    80006d08:	e4070713          	addi	a4,a4,-448 # 8000bb44 <ticks>
    80006d0c:	00072783          	lw	a5,0(a4)
    80006d10:	0000a517          	auipc	a0,0xa
    80006d14:	01050513          	addi	a0,a0,16 # 80010d20 <tickslock>
    80006d18:	0017879b          	addiw	a5,a5,1
    80006d1c:	00f72023          	sw	a5,0(a4)
    80006d20:	00001097          	auipc	ra,0x1
    80006d24:	538080e7          	jalr	1336(ra) # 80008258 <release>
    80006d28:	f65ff06f          	j	80006c8c <kerneltrap+0x8c>
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	094080e7          	jalr	148(ra) # 80007dc0 <uartintr>
    80006d34:	fa5ff06f          	j	80006cd8 <kerneltrap+0xd8>
    80006d38:	00003517          	auipc	a0,0x3
    80006d3c:	87050513          	addi	a0,a0,-1936 # 800095a8 <CONSOLE_STATUS+0x598>
    80006d40:	00000097          	auipc	ra,0x0
    80006d44:	71c080e7          	jalr	1820(ra) # 8000745c <panic>

0000000080006d48 <clockintr>:
    80006d48:	fe010113          	addi	sp,sp,-32
    80006d4c:	00813823          	sd	s0,16(sp)
    80006d50:	00913423          	sd	s1,8(sp)
    80006d54:	00113c23          	sd	ra,24(sp)
    80006d58:	02010413          	addi	s0,sp,32
    80006d5c:	0000a497          	auipc	s1,0xa
    80006d60:	fc448493          	addi	s1,s1,-60 # 80010d20 <tickslock>
    80006d64:	00048513          	mv	a0,s1
    80006d68:	00001097          	auipc	ra,0x1
    80006d6c:	424080e7          	jalr	1060(ra) # 8000818c <acquire>
    80006d70:	00005717          	auipc	a4,0x5
    80006d74:	dd470713          	addi	a4,a4,-556 # 8000bb44 <ticks>
    80006d78:	00072783          	lw	a5,0(a4)
    80006d7c:	01013403          	ld	s0,16(sp)
    80006d80:	01813083          	ld	ra,24(sp)
    80006d84:	00048513          	mv	a0,s1
    80006d88:	0017879b          	addiw	a5,a5,1
    80006d8c:	00813483          	ld	s1,8(sp)
    80006d90:	00f72023          	sw	a5,0(a4)
    80006d94:	02010113          	addi	sp,sp,32
    80006d98:	00001317          	auipc	t1,0x1
    80006d9c:	4c030067          	jr	1216(t1) # 80008258 <release>

0000000080006da0 <devintr>:
    80006da0:	142027f3          	csrr	a5,scause
    80006da4:	00000513          	li	a0,0
    80006da8:	0007c463          	bltz	a5,80006db0 <devintr+0x10>
    80006dac:	00008067          	ret
    80006db0:	fe010113          	addi	sp,sp,-32
    80006db4:	00813823          	sd	s0,16(sp)
    80006db8:	00113c23          	sd	ra,24(sp)
    80006dbc:	00913423          	sd	s1,8(sp)
    80006dc0:	02010413          	addi	s0,sp,32
    80006dc4:	0ff7f713          	andi	a4,a5,255
    80006dc8:	00900693          	li	a3,9
    80006dcc:	04d70c63          	beq	a4,a3,80006e24 <devintr+0x84>
    80006dd0:	fff00713          	li	a4,-1
    80006dd4:	03f71713          	slli	a4,a4,0x3f
    80006dd8:	00170713          	addi	a4,a4,1
    80006ddc:	00e78c63          	beq	a5,a4,80006df4 <devintr+0x54>
    80006de0:	01813083          	ld	ra,24(sp)
    80006de4:	01013403          	ld	s0,16(sp)
    80006de8:	00813483          	ld	s1,8(sp)
    80006dec:	02010113          	addi	sp,sp,32
    80006df0:	00008067          	ret
    80006df4:	00000097          	auipc	ra,0x0
    80006df8:	c8c080e7          	jalr	-884(ra) # 80006a80 <cpuid>
    80006dfc:	06050663          	beqz	a0,80006e68 <devintr+0xc8>
    80006e00:	144027f3          	csrr	a5,sip
    80006e04:	ffd7f793          	andi	a5,a5,-3
    80006e08:	14479073          	csrw	sip,a5
    80006e0c:	01813083          	ld	ra,24(sp)
    80006e10:	01013403          	ld	s0,16(sp)
    80006e14:	00813483          	ld	s1,8(sp)
    80006e18:	00200513          	li	a0,2
    80006e1c:	02010113          	addi	sp,sp,32
    80006e20:	00008067          	ret
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	250080e7          	jalr	592(ra) # 80007074 <plic_claim>
    80006e2c:	00a00793          	li	a5,10
    80006e30:	00050493          	mv	s1,a0
    80006e34:	06f50663          	beq	a0,a5,80006ea0 <devintr+0x100>
    80006e38:	00100513          	li	a0,1
    80006e3c:	fa0482e3          	beqz	s1,80006de0 <devintr+0x40>
    80006e40:	00048593          	mv	a1,s1
    80006e44:	00002517          	auipc	a0,0x2
    80006e48:	78450513          	addi	a0,a0,1924 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	66c080e7          	jalr	1644(ra) # 800074b8 <__printf>
    80006e54:	00048513          	mv	a0,s1
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	254080e7          	jalr	596(ra) # 800070ac <plic_complete>
    80006e60:	00100513          	li	a0,1
    80006e64:	f7dff06f          	j	80006de0 <devintr+0x40>
    80006e68:	0000a517          	auipc	a0,0xa
    80006e6c:	eb850513          	addi	a0,a0,-328 # 80010d20 <tickslock>
    80006e70:	00001097          	auipc	ra,0x1
    80006e74:	31c080e7          	jalr	796(ra) # 8000818c <acquire>
    80006e78:	00005717          	auipc	a4,0x5
    80006e7c:	ccc70713          	addi	a4,a4,-820 # 8000bb44 <ticks>
    80006e80:	00072783          	lw	a5,0(a4)
    80006e84:	0000a517          	auipc	a0,0xa
    80006e88:	e9c50513          	addi	a0,a0,-356 # 80010d20 <tickslock>
    80006e8c:	0017879b          	addiw	a5,a5,1
    80006e90:	00f72023          	sw	a5,0(a4)
    80006e94:	00001097          	auipc	ra,0x1
    80006e98:	3c4080e7          	jalr	964(ra) # 80008258 <release>
    80006e9c:	f65ff06f          	j	80006e00 <devintr+0x60>
    80006ea0:	00001097          	auipc	ra,0x1
    80006ea4:	f20080e7          	jalr	-224(ra) # 80007dc0 <uartintr>
    80006ea8:	fadff06f          	j	80006e54 <devintr+0xb4>
    80006eac:	0000                	unimp
	...

0000000080006eb0 <kernelvec>:
    80006eb0:	f0010113          	addi	sp,sp,-256
    80006eb4:	00113023          	sd	ra,0(sp)
    80006eb8:	00213423          	sd	sp,8(sp)
    80006ebc:	00313823          	sd	gp,16(sp)
    80006ec0:	00413c23          	sd	tp,24(sp)
    80006ec4:	02513023          	sd	t0,32(sp)
    80006ec8:	02613423          	sd	t1,40(sp)
    80006ecc:	02713823          	sd	t2,48(sp)
    80006ed0:	02813c23          	sd	s0,56(sp)
    80006ed4:	04913023          	sd	s1,64(sp)
    80006ed8:	04a13423          	sd	a0,72(sp)
    80006edc:	04b13823          	sd	a1,80(sp)
    80006ee0:	04c13c23          	sd	a2,88(sp)
    80006ee4:	06d13023          	sd	a3,96(sp)
    80006ee8:	06e13423          	sd	a4,104(sp)
    80006eec:	06f13823          	sd	a5,112(sp)
    80006ef0:	07013c23          	sd	a6,120(sp)
    80006ef4:	09113023          	sd	a7,128(sp)
    80006ef8:	09213423          	sd	s2,136(sp)
    80006efc:	09313823          	sd	s3,144(sp)
    80006f00:	09413c23          	sd	s4,152(sp)
    80006f04:	0b513023          	sd	s5,160(sp)
    80006f08:	0b613423          	sd	s6,168(sp)
    80006f0c:	0b713823          	sd	s7,176(sp)
    80006f10:	0b813c23          	sd	s8,184(sp)
    80006f14:	0d913023          	sd	s9,192(sp)
    80006f18:	0da13423          	sd	s10,200(sp)
    80006f1c:	0db13823          	sd	s11,208(sp)
    80006f20:	0dc13c23          	sd	t3,216(sp)
    80006f24:	0fd13023          	sd	t4,224(sp)
    80006f28:	0fe13423          	sd	t5,232(sp)
    80006f2c:	0ff13823          	sd	t6,240(sp)
    80006f30:	cd1ff0ef          	jal	ra,80006c00 <kerneltrap>
    80006f34:	00013083          	ld	ra,0(sp)
    80006f38:	00813103          	ld	sp,8(sp)
    80006f3c:	01013183          	ld	gp,16(sp)
    80006f40:	02013283          	ld	t0,32(sp)
    80006f44:	02813303          	ld	t1,40(sp)
    80006f48:	03013383          	ld	t2,48(sp)
    80006f4c:	03813403          	ld	s0,56(sp)
    80006f50:	04013483          	ld	s1,64(sp)
    80006f54:	04813503          	ld	a0,72(sp)
    80006f58:	05013583          	ld	a1,80(sp)
    80006f5c:	05813603          	ld	a2,88(sp)
    80006f60:	06013683          	ld	a3,96(sp)
    80006f64:	06813703          	ld	a4,104(sp)
    80006f68:	07013783          	ld	a5,112(sp)
    80006f6c:	07813803          	ld	a6,120(sp)
    80006f70:	08013883          	ld	a7,128(sp)
    80006f74:	08813903          	ld	s2,136(sp)
    80006f78:	09013983          	ld	s3,144(sp)
    80006f7c:	09813a03          	ld	s4,152(sp)
    80006f80:	0a013a83          	ld	s5,160(sp)
    80006f84:	0a813b03          	ld	s6,168(sp)
    80006f88:	0b013b83          	ld	s7,176(sp)
    80006f8c:	0b813c03          	ld	s8,184(sp)
    80006f90:	0c013c83          	ld	s9,192(sp)
    80006f94:	0c813d03          	ld	s10,200(sp)
    80006f98:	0d013d83          	ld	s11,208(sp)
    80006f9c:	0d813e03          	ld	t3,216(sp)
    80006fa0:	0e013e83          	ld	t4,224(sp)
    80006fa4:	0e813f03          	ld	t5,232(sp)
    80006fa8:	0f013f83          	ld	t6,240(sp)
    80006fac:	10010113          	addi	sp,sp,256
    80006fb0:	10200073          	sret
    80006fb4:	00000013          	nop
    80006fb8:	00000013          	nop
    80006fbc:	00000013          	nop

0000000080006fc0 <timervec>:
    80006fc0:	34051573          	csrrw	a0,mscratch,a0
    80006fc4:	00b53023          	sd	a1,0(a0)
    80006fc8:	00c53423          	sd	a2,8(a0)
    80006fcc:	00d53823          	sd	a3,16(a0)
    80006fd0:	01853583          	ld	a1,24(a0)
    80006fd4:	02053603          	ld	a2,32(a0)
    80006fd8:	0005b683          	ld	a3,0(a1)
    80006fdc:	00c686b3          	add	a3,a3,a2
    80006fe0:	00d5b023          	sd	a3,0(a1)
    80006fe4:	00200593          	li	a1,2
    80006fe8:	14459073          	csrw	sip,a1
    80006fec:	01053683          	ld	a3,16(a0)
    80006ff0:	00853603          	ld	a2,8(a0)
    80006ff4:	00053583          	ld	a1,0(a0)
    80006ff8:	34051573          	csrrw	a0,mscratch,a0
    80006ffc:	30200073          	mret

0000000080007000 <plicinit>:
    80007000:	ff010113          	addi	sp,sp,-16
    80007004:	00813423          	sd	s0,8(sp)
    80007008:	01010413          	addi	s0,sp,16
    8000700c:	00813403          	ld	s0,8(sp)
    80007010:	0c0007b7          	lui	a5,0xc000
    80007014:	00100713          	li	a4,1
    80007018:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000701c:	00e7a223          	sw	a4,4(a5)
    80007020:	01010113          	addi	sp,sp,16
    80007024:	00008067          	ret

0000000080007028 <plicinithart>:
    80007028:	ff010113          	addi	sp,sp,-16
    8000702c:	00813023          	sd	s0,0(sp)
    80007030:	00113423          	sd	ra,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	a48080e7          	jalr	-1464(ra) # 80006a80 <cpuid>
    80007040:	0085171b          	slliw	a4,a0,0x8
    80007044:	0c0027b7          	lui	a5,0xc002
    80007048:	00e787b3          	add	a5,a5,a4
    8000704c:	40200713          	li	a4,1026
    80007050:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007054:	00813083          	ld	ra,8(sp)
    80007058:	00013403          	ld	s0,0(sp)
    8000705c:	00d5151b          	slliw	a0,a0,0xd
    80007060:	0c2017b7          	lui	a5,0xc201
    80007064:	00a78533          	add	a0,a5,a0
    80007068:	00052023          	sw	zero,0(a0)
    8000706c:	01010113          	addi	sp,sp,16
    80007070:	00008067          	ret

0000000080007074 <plic_claim>:
    80007074:	ff010113          	addi	sp,sp,-16
    80007078:	00813023          	sd	s0,0(sp)
    8000707c:	00113423          	sd	ra,8(sp)
    80007080:	01010413          	addi	s0,sp,16
    80007084:	00000097          	auipc	ra,0x0
    80007088:	9fc080e7          	jalr	-1540(ra) # 80006a80 <cpuid>
    8000708c:	00813083          	ld	ra,8(sp)
    80007090:	00013403          	ld	s0,0(sp)
    80007094:	00d5151b          	slliw	a0,a0,0xd
    80007098:	0c2017b7          	lui	a5,0xc201
    8000709c:	00a78533          	add	a0,a5,a0
    800070a0:	00452503          	lw	a0,4(a0)
    800070a4:	01010113          	addi	sp,sp,16
    800070a8:	00008067          	ret

00000000800070ac <plic_complete>:
    800070ac:	fe010113          	addi	sp,sp,-32
    800070b0:	00813823          	sd	s0,16(sp)
    800070b4:	00913423          	sd	s1,8(sp)
    800070b8:	00113c23          	sd	ra,24(sp)
    800070bc:	02010413          	addi	s0,sp,32
    800070c0:	00050493          	mv	s1,a0
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	9bc080e7          	jalr	-1604(ra) # 80006a80 <cpuid>
    800070cc:	01813083          	ld	ra,24(sp)
    800070d0:	01013403          	ld	s0,16(sp)
    800070d4:	00d5179b          	slliw	a5,a0,0xd
    800070d8:	0c201737          	lui	a4,0xc201
    800070dc:	00f707b3          	add	a5,a4,a5
    800070e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret

00000000800070f0 <consolewrite>:
    800070f0:	fb010113          	addi	sp,sp,-80
    800070f4:	04813023          	sd	s0,64(sp)
    800070f8:	04113423          	sd	ra,72(sp)
    800070fc:	02913c23          	sd	s1,56(sp)
    80007100:	03213823          	sd	s2,48(sp)
    80007104:	03313423          	sd	s3,40(sp)
    80007108:	03413023          	sd	s4,32(sp)
    8000710c:	01513c23          	sd	s5,24(sp)
    80007110:	05010413          	addi	s0,sp,80
    80007114:	06c05c63          	blez	a2,8000718c <consolewrite+0x9c>
    80007118:	00060993          	mv	s3,a2
    8000711c:	00050a13          	mv	s4,a0
    80007120:	00058493          	mv	s1,a1
    80007124:	00000913          	li	s2,0
    80007128:	fff00a93          	li	s5,-1
    8000712c:	01c0006f          	j	80007148 <consolewrite+0x58>
    80007130:	fbf44503          	lbu	a0,-65(s0)
    80007134:	0019091b          	addiw	s2,s2,1
    80007138:	00148493          	addi	s1,s1,1
    8000713c:	00001097          	auipc	ra,0x1
    80007140:	a9c080e7          	jalr	-1380(ra) # 80007bd8 <uartputc>
    80007144:	03298063          	beq	s3,s2,80007164 <consolewrite+0x74>
    80007148:	00048613          	mv	a2,s1
    8000714c:	00100693          	li	a3,1
    80007150:	000a0593          	mv	a1,s4
    80007154:	fbf40513          	addi	a0,s0,-65
    80007158:	00000097          	auipc	ra,0x0
    8000715c:	9e0080e7          	jalr	-1568(ra) # 80006b38 <either_copyin>
    80007160:	fd5518e3          	bne	a0,s5,80007130 <consolewrite+0x40>
    80007164:	04813083          	ld	ra,72(sp)
    80007168:	04013403          	ld	s0,64(sp)
    8000716c:	03813483          	ld	s1,56(sp)
    80007170:	02813983          	ld	s3,40(sp)
    80007174:	02013a03          	ld	s4,32(sp)
    80007178:	01813a83          	ld	s5,24(sp)
    8000717c:	00090513          	mv	a0,s2
    80007180:	03013903          	ld	s2,48(sp)
    80007184:	05010113          	addi	sp,sp,80
    80007188:	00008067          	ret
    8000718c:	00000913          	li	s2,0
    80007190:	fd5ff06f          	j	80007164 <consolewrite+0x74>

0000000080007194 <consoleread>:
    80007194:	f9010113          	addi	sp,sp,-112
    80007198:	06813023          	sd	s0,96(sp)
    8000719c:	04913c23          	sd	s1,88(sp)
    800071a0:	05213823          	sd	s2,80(sp)
    800071a4:	05313423          	sd	s3,72(sp)
    800071a8:	05413023          	sd	s4,64(sp)
    800071ac:	03513c23          	sd	s5,56(sp)
    800071b0:	03613823          	sd	s6,48(sp)
    800071b4:	03713423          	sd	s7,40(sp)
    800071b8:	03813023          	sd	s8,32(sp)
    800071bc:	06113423          	sd	ra,104(sp)
    800071c0:	01913c23          	sd	s9,24(sp)
    800071c4:	07010413          	addi	s0,sp,112
    800071c8:	00060b93          	mv	s7,a2
    800071cc:	00050913          	mv	s2,a0
    800071d0:	00058c13          	mv	s8,a1
    800071d4:	00060b1b          	sext.w	s6,a2
    800071d8:	0000a497          	auipc	s1,0xa
    800071dc:	b7048493          	addi	s1,s1,-1168 # 80010d48 <cons>
    800071e0:	00400993          	li	s3,4
    800071e4:	fff00a13          	li	s4,-1
    800071e8:	00a00a93          	li	s5,10
    800071ec:	05705e63          	blez	s7,80007248 <consoleread+0xb4>
    800071f0:	09c4a703          	lw	a4,156(s1)
    800071f4:	0984a783          	lw	a5,152(s1)
    800071f8:	0007071b          	sext.w	a4,a4
    800071fc:	08e78463          	beq	a5,a4,80007284 <consoleread+0xf0>
    80007200:	07f7f713          	andi	a4,a5,127
    80007204:	00e48733          	add	a4,s1,a4
    80007208:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000720c:	0017869b          	addiw	a3,a5,1
    80007210:	08d4ac23          	sw	a3,152(s1)
    80007214:	00070c9b          	sext.w	s9,a4
    80007218:	0b370663          	beq	a4,s3,800072c4 <consoleread+0x130>
    8000721c:	00100693          	li	a3,1
    80007220:	f9f40613          	addi	a2,s0,-97
    80007224:	000c0593          	mv	a1,s8
    80007228:	00090513          	mv	a0,s2
    8000722c:	f8e40fa3          	sb	a4,-97(s0)
    80007230:	00000097          	auipc	ra,0x0
    80007234:	8bc080e7          	jalr	-1860(ra) # 80006aec <either_copyout>
    80007238:	01450863          	beq	a0,s4,80007248 <consoleread+0xb4>
    8000723c:	001c0c13          	addi	s8,s8,1
    80007240:	fffb8b9b          	addiw	s7,s7,-1
    80007244:	fb5c94e3          	bne	s9,s5,800071ec <consoleread+0x58>
    80007248:	000b851b          	sext.w	a0,s7
    8000724c:	06813083          	ld	ra,104(sp)
    80007250:	06013403          	ld	s0,96(sp)
    80007254:	05813483          	ld	s1,88(sp)
    80007258:	05013903          	ld	s2,80(sp)
    8000725c:	04813983          	ld	s3,72(sp)
    80007260:	04013a03          	ld	s4,64(sp)
    80007264:	03813a83          	ld	s5,56(sp)
    80007268:	02813b83          	ld	s7,40(sp)
    8000726c:	02013c03          	ld	s8,32(sp)
    80007270:	01813c83          	ld	s9,24(sp)
    80007274:	40ab053b          	subw	a0,s6,a0
    80007278:	03013b03          	ld	s6,48(sp)
    8000727c:	07010113          	addi	sp,sp,112
    80007280:	00008067          	ret
    80007284:	00001097          	auipc	ra,0x1
    80007288:	1d8080e7          	jalr	472(ra) # 8000845c <push_on>
    8000728c:	0984a703          	lw	a4,152(s1)
    80007290:	09c4a783          	lw	a5,156(s1)
    80007294:	0007879b          	sext.w	a5,a5
    80007298:	fef70ce3          	beq	a4,a5,80007290 <consoleread+0xfc>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	234080e7          	jalr	564(ra) # 800084d0 <pop_on>
    800072a4:	0984a783          	lw	a5,152(s1)
    800072a8:	07f7f713          	andi	a4,a5,127
    800072ac:	00e48733          	add	a4,s1,a4
    800072b0:	01874703          	lbu	a4,24(a4)
    800072b4:	0017869b          	addiw	a3,a5,1
    800072b8:	08d4ac23          	sw	a3,152(s1)
    800072bc:	00070c9b          	sext.w	s9,a4
    800072c0:	f5371ee3          	bne	a4,s3,8000721c <consoleread+0x88>
    800072c4:	000b851b          	sext.w	a0,s7
    800072c8:	f96bf2e3          	bgeu	s7,s6,8000724c <consoleread+0xb8>
    800072cc:	08f4ac23          	sw	a5,152(s1)
    800072d0:	f7dff06f          	j	8000724c <consoleread+0xb8>

00000000800072d4 <consputc>:
    800072d4:	10000793          	li	a5,256
    800072d8:	00f50663          	beq	a0,a5,800072e4 <consputc+0x10>
    800072dc:	00001317          	auipc	t1,0x1
    800072e0:	9f430067          	jr	-1548(t1) # 80007cd0 <uartputc_sync>
    800072e4:	ff010113          	addi	sp,sp,-16
    800072e8:	00113423          	sd	ra,8(sp)
    800072ec:	00813023          	sd	s0,0(sp)
    800072f0:	01010413          	addi	s0,sp,16
    800072f4:	00800513          	li	a0,8
    800072f8:	00001097          	auipc	ra,0x1
    800072fc:	9d8080e7          	jalr	-1576(ra) # 80007cd0 <uartputc_sync>
    80007300:	02000513          	li	a0,32
    80007304:	00001097          	auipc	ra,0x1
    80007308:	9cc080e7          	jalr	-1588(ra) # 80007cd0 <uartputc_sync>
    8000730c:	00013403          	ld	s0,0(sp)
    80007310:	00813083          	ld	ra,8(sp)
    80007314:	00800513          	li	a0,8
    80007318:	01010113          	addi	sp,sp,16
    8000731c:	00001317          	auipc	t1,0x1
    80007320:	9b430067          	jr	-1612(t1) # 80007cd0 <uartputc_sync>

0000000080007324 <consoleintr>:
    80007324:	fe010113          	addi	sp,sp,-32
    80007328:	00813823          	sd	s0,16(sp)
    8000732c:	00913423          	sd	s1,8(sp)
    80007330:	01213023          	sd	s2,0(sp)
    80007334:	00113c23          	sd	ra,24(sp)
    80007338:	02010413          	addi	s0,sp,32
    8000733c:	0000a917          	auipc	s2,0xa
    80007340:	a0c90913          	addi	s2,s2,-1524 # 80010d48 <cons>
    80007344:	00050493          	mv	s1,a0
    80007348:	00090513          	mv	a0,s2
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	e40080e7          	jalr	-448(ra) # 8000818c <acquire>
    80007354:	02048c63          	beqz	s1,8000738c <consoleintr+0x68>
    80007358:	0a092783          	lw	a5,160(s2)
    8000735c:	09892703          	lw	a4,152(s2)
    80007360:	07f00693          	li	a3,127
    80007364:	40e7873b          	subw	a4,a5,a4
    80007368:	02e6e263          	bltu	a3,a4,8000738c <consoleintr+0x68>
    8000736c:	00d00713          	li	a4,13
    80007370:	04e48063          	beq	s1,a4,800073b0 <consoleintr+0x8c>
    80007374:	07f7f713          	andi	a4,a5,127
    80007378:	00e90733          	add	a4,s2,a4
    8000737c:	0017879b          	addiw	a5,a5,1
    80007380:	0af92023          	sw	a5,160(s2)
    80007384:	00970c23          	sb	s1,24(a4)
    80007388:	08f92e23          	sw	a5,156(s2)
    8000738c:	01013403          	ld	s0,16(sp)
    80007390:	01813083          	ld	ra,24(sp)
    80007394:	00813483          	ld	s1,8(sp)
    80007398:	00013903          	ld	s2,0(sp)
    8000739c:	0000a517          	auipc	a0,0xa
    800073a0:	9ac50513          	addi	a0,a0,-1620 # 80010d48 <cons>
    800073a4:	02010113          	addi	sp,sp,32
    800073a8:	00001317          	auipc	t1,0x1
    800073ac:	eb030067          	jr	-336(t1) # 80008258 <release>
    800073b0:	00a00493          	li	s1,10
    800073b4:	fc1ff06f          	j	80007374 <consoleintr+0x50>

00000000800073b8 <consoleinit>:
    800073b8:	fe010113          	addi	sp,sp,-32
    800073bc:	00113c23          	sd	ra,24(sp)
    800073c0:	00813823          	sd	s0,16(sp)
    800073c4:	00913423          	sd	s1,8(sp)
    800073c8:	02010413          	addi	s0,sp,32
    800073cc:	0000a497          	auipc	s1,0xa
    800073d0:	97c48493          	addi	s1,s1,-1668 # 80010d48 <cons>
    800073d4:	00048513          	mv	a0,s1
    800073d8:	00002597          	auipc	a1,0x2
    800073dc:	24858593          	addi	a1,a1,584 # 80009620 <CONSOLE_STATUS+0x610>
    800073e0:	00001097          	auipc	ra,0x1
    800073e4:	d88080e7          	jalr	-632(ra) # 80008168 <initlock>
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	7ac080e7          	jalr	1964(ra) # 80007b94 <uartinit>
    800073f0:	01813083          	ld	ra,24(sp)
    800073f4:	01013403          	ld	s0,16(sp)
    800073f8:	00000797          	auipc	a5,0x0
    800073fc:	d9c78793          	addi	a5,a5,-612 # 80007194 <consoleread>
    80007400:	0af4bc23          	sd	a5,184(s1)
    80007404:	00000797          	auipc	a5,0x0
    80007408:	cec78793          	addi	a5,a5,-788 # 800070f0 <consolewrite>
    8000740c:	0cf4b023          	sd	a5,192(s1)
    80007410:	00813483          	ld	s1,8(sp)
    80007414:	02010113          	addi	sp,sp,32
    80007418:	00008067          	ret

000000008000741c <console_read>:
    8000741c:	ff010113          	addi	sp,sp,-16
    80007420:	00813423          	sd	s0,8(sp)
    80007424:	01010413          	addi	s0,sp,16
    80007428:	00813403          	ld	s0,8(sp)
    8000742c:	0000a317          	auipc	t1,0xa
    80007430:	9d433303          	ld	t1,-1580(t1) # 80010e00 <devsw+0x10>
    80007434:	01010113          	addi	sp,sp,16
    80007438:	00030067          	jr	t1

000000008000743c <console_write>:
    8000743c:	ff010113          	addi	sp,sp,-16
    80007440:	00813423          	sd	s0,8(sp)
    80007444:	01010413          	addi	s0,sp,16
    80007448:	00813403          	ld	s0,8(sp)
    8000744c:	0000a317          	auipc	t1,0xa
    80007450:	9bc33303          	ld	t1,-1604(t1) # 80010e08 <devsw+0x18>
    80007454:	01010113          	addi	sp,sp,16
    80007458:	00030067          	jr	t1

000000008000745c <panic>:
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00113c23          	sd	ra,24(sp)
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	00050493          	mv	s1,a0
    80007474:	00002517          	auipc	a0,0x2
    80007478:	1b450513          	addi	a0,a0,436 # 80009628 <CONSOLE_STATUS+0x618>
    8000747c:	0000a797          	auipc	a5,0xa
    80007480:	a207a623          	sw	zero,-1492(a5) # 80010ea8 <pr+0x18>
    80007484:	00000097          	auipc	ra,0x0
    80007488:	034080e7          	jalr	52(ra) # 800074b8 <__printf>
    8000748c:	00048513          	mv	a0,s1
    80007490:	00000097          	auipc	ra,0x0
    80007494:	028080e7          	jalr	40(ra) # 800074b8 <__printf>
    80007498:	00002517          	auipc	a0,0x2
    8000749c:	c6850513          	addi	a0,a0,-920 # 80009100 <CONSOLE_STATUS+0xf0>
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	018080e7          	jalr	24(ra) # 800074b8 <__printf>
    800074a8:	00100793          	li	a5,1
    800074ac:	00004717          	auipc	a4,0x4
    800074b0:	68f72e23          	sw	a5,1692(a4) # 8000bb48 <panicked>
    800074b4:	0000006f          	j	800074b4 <panic+0x58>

00000000800074b8 <__printf>:
    800074b8:	f3010113          	addi	sp,sp,-208
    800074bc:	08813023          	sd	s0,128(sp)
    800074c0:	07313423          	sd	s3,104(sp)
    800074c4:	09010413          	addi	s0,sp,144
    800074c8:	05813023          	sd	s8,64(sp)
    800074cc:	08113423          	sd	ra,136(sp)
    800074d0:	06913c23          	sd	s1,120(sp)
    800074d4:	07213823          	sd	s2,112(sp)
    800074d8:	07413023          	sd	s4,96(sp)
    800074dc:	05513c23          	sd	s5,88(sp)
    800074e0:	05613823          	sd	s6,80(sp)
    800074e4:	05713423          	sd	s7,72(sp)
    800074e8:	03913c23          	sd	s9,56(sp)
    800074ec:	03a13823          	sd	s10,48(sp)
    800074f0:	03b13423          	sd	s11,40(sp)
    800074f4:	0000a317          	auipc	t1,0xa
    800074f8:	99c30313          	addi	t1,t1,-1636 # 80010e90 <pr>
    800074fc:	01832c03          	lw	s8,24(t1)
    80007500:	00b43423          	sd	a1,8(s0)
    80007504:	00c43823          	sd	a2,16(s0)
    80007508:	00d43c23          	sd	a3,24(s0)
    8000750c:	02e43023          	sd	a4,32(s0)
    80007510:	02f43423          	sd	a5,40(s0)
    80007514:	03043823          	sd	a6,48(s0)
    80007518:	03143c23          	sd	a7,56(s0)
    8000751c:	00050993          	mv	s3,a0
    80007520:	4a0c1663          	bnez	s8,800079cc <__printf+0x514>
    80007524:	60098c63          	beqz	s3,80007b3c <__printf+0x684>
    80007528:	0009c503          	lbu	a0,0(s3)
    8000752c:	00840793          	addi	a5,s0,8
    80007530:	f6f43c23          	sd	a5,-136(s0)
    80007534:	00000493          	li	s1,0
    80007538:	22050063          	beqz	a0,80007758 <__printf+0x2a0>
    8000753c:	00002a37          	lui	s4,0x2
    80007540:	00018ab7          	lui	s5,0x18
    80007544:	000f4b37          	lui	s6,0xf4
    80007548:	00989bb7          	lui	s7,0x989
    8000754c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007550:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007554:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007558:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000755c:	00148c9b          	addiw	s9,s1,1
    80007560:	02500793          	li	a5,37
    80007564:	01998933          	add	s2,s3,s9
    80007568:	38f51263          	bne	a0,a5,800078ec <__printf+0x434>
    8000756c:	00094783          	lbu	a5,0(s2)
    80007570:	00078c9b          	sext.w	s9,a5
    80007574:	1e078263          	beqz	a5,80007758 <__printf+0x2a0>
    80007578:	0024849b          	addiw	s1,s1,2
    8000757c:	07000713          	li	a4,112
    80007580:	00998933          	add	s2,s3,s1
    80007584:	38e78a63          	beq	a5,a4,80007918 <__printf+0x460>
    80007588:	20f76863          	bltu	a4,a5,80007798 <__printf+0x2e0>
    8000758c:	42a78863          	beq	a5,a0,800079bc <__printf+0x504>
    80007590:	06400713          	li	a4,100
    80007594:	40e79663          	bne	a5,a4,800079a0 <__printf+0x4e8>
    80007598:	f7843783          	ld	a5,-136(s0)
    8000759c:	0007a603          	lw	a2,0(a5)
    800075a0:	00878793          	addi	a5,a5,8
    800075a4:	f6f43c23          	sd	a5,-136(s0)
    800075a8:	42064a63          	bltz	a2,800079dc <__printf+0x524>
    800075ac:	00a00713          	li	a4,10
    800075b0:	02e677bb          	remuw	a5,a2,a4
    800075b4:	00002d97          	auipc	s11,0x2
    800075b8:	09cd8d93          	addi	s11,s11,156 # 80009650 <digits>
    800075bc:	00900593          	li	a1,9
    800075c0:	0006051b          	sext.w	a0,a2
    800075c4:	00000c93          	li	s9,0
    800075c8:	02079793          	slli	a5,a5,0x20
    800075cc:	0207d793          	srli	a5,a5,0x20
    800075d0:	00fd87b3          	add	a5,s11,a5
    800075d4:	0007c783          	lbu	a5,0(a5)
    800075d8:	02e656bb          	divuw	a3,a2,a4
    800075dc:	f8f40023          	sb	a5,-128(s0)
    800075e0:	14c5d863          	bge	a1,a2,80007730 <__printf+0x278>
    800075e4:	06300593          	li	a1,99
    800075e8:	00100c93          	li	s9,1
    800075ec:	02e6f7bb          	remuw	a5,a3,a4
    800075f0:	02079793          	slli	a5,a5,0x20
    800075f4:	0207d793          	srli	a5,a5,0x20
    800075f8:	00fd87b3          	add	a5,s11,a5
    800075fc:	0007c783          	lbu	a5,0(a5)
    80007600:	02e6d73b          	divuw	a4,a3,a4
    80007604:	f8f400a3          	sb	a5,-127(s0)
    80007608:	12a5f463          	bgeu	a1,a0,80007730 <__printf+0x278>
    8000760c:	00a00693          	li	a3,10
    80007610:	00900593          	li	a1,9
    80007614:	02d777bb          	remuw	a5,a4,a3
    80007618:	02079793          	slli	a5,a5,0x20
    8000761c:	0207d793          	srli	a5,a5,0x20
    80007620:	00fd87b3          	add	a5,s11,a5
    80007624:	0007c503          	lbu	a0,0(a5)
    80007628:	02d757bb          	divuw	a5,a4,a3
    8000762c:	f8a40123          	sb	a0,-126(s0)
    80007630:	48e5f263          	bgeu	a1,a4,80007ab4 <__printf+0x5fc>
    80007634:	06300513          	li	a0,99
    80007638:	02d7f5bb          	remuw	a1,a5,a3
    8000763c:	02059593          	slli	a1,a1,0x20
    80007640:	0205d593          	srli	a1,a1,0x20
    80007644:	00bd85b3          	add	a1,s11,a1
    80007648:	0005c583          	lbu	a1,0(a1)
    8000764c:	02d7d7bb          	divuw	a5,a5,a3
    80007650:	f8b401a3          	sb	a1,-125(s0)
    80007654:	48e57263          	bgeu	a0,a4,80007ad8 <__printf+0x620>
    80007658:	3e700513          	li	a0,999
    8000765c:	02d7f5bb          	remuw	a1,a5,a3
    80007660:	02059593          	slli	a1,a1,0x20
    80007664:	0205d593          	srli	a1,a1,0x20
    80007668:	00bd85b3          	add	a1,s11,a1
    8000766c:	0005c583          	lbu	a1,0(a1)
    80007670:	02d7d7bb          	divuw	a5,a5,a3
    80007674:	f8b40223          	sb	a1,-124(s0)
    80007678:	46e57663          	bgeu	a0,a4,80007ae4 <__printf+0x62c>
    8000767c:	02d7f5bb          	remuw	a1,a5,a3
    80007680:	02059593          	slli	a1,a1,0x20
    80007684:	0205d593          	srli	a1,a1,0x20
    80007688:	00bd85b3          	add	a1,s11,a1
    8000768c:	0005c583          	lbu	a1,0(a1)
    80007690:	02d7d7bb          	divuw	a5,a5,a3
    80007694:	f8b402a3          	sb	a1,-123(s0)
    80007698:	46ea7863          	bgeu	s4,a4,80007b08 <__printf+0x650>
    8000769c:	02d7f5bb          	remuw	a1,a5,a3
    800076a0:	02059593          	slli	a1,a1,0x20
    800076a4:	0205d593          	srli	a1,a1,0x20
    800076a8:	00bd85b3          	add	a1,s11,a1
    800076ac:	0005c583          	lbu	a1,0(a1)
    800076b0:	02d7d7bb          	divuw	a5,a5,a3
    800076b4:	f8b40323          	sb	a1,-122(s0)
    800076b8:	3eeaf863          	bgeu	s5,a4,80007aa8 <__printf+0x5f0>
    800076bc:	02d7f5bb          	remuw	a1,a5,a3
    800076c0:	02059593          	slli	a1,a1,0x20
    800076c4:	0205d593          	srli	a1,a1,0x20
    800076c8:	00bd85b3          	add	a1,s11,a1
    800076cc:	0005c583          	lbu	a1,0(a1)
    800076d0:	02d7d7bb          	divuw	a5,a5,a3
    800076d4:	f8b403a3          	sb	a1,-121(s0)
    800076d8:	42eb7e63          	bgeu	s6,a4,80007b14 <__printf+0x65c>
    800076dc:	02d7f5bb          	remuw	a1,a5,a3
    800076e0:	02059593          	slli	a1,a1,0x20
    800076e4:	0205d593          	srli	a1,a1,0x20
    800076e8:	00bd85b3          	add	a1,s11,a1
    800076ec:	0005c583          	lbu	a1,0(a1)
    800076f0:	02d7d7bb          	divuw	a5,a5,a3
    800076f4:	f8b40423          	sb	a1,-120(s0)
    800076f8:	42ebfc63          	bgeu	s7,a4,80007b30 <__printf+0x678>
    800076fc:	02079793          	slli	a5,a5,0x20
    80007700:	0207d793          	srli	a5,a5,0x20
    80007704:	00fd8db3          	add	s11,s11,a5
    80007708:	000dc703          	lbu	a4,0(s11)
    8000770c:	00a00793          	li	a5,10
    80007710:	00900c93          	li	s9,9
    80007714:	f8e404a3          	sb	a4,-119(s0)
    80007718:	00065c63          	bgez	a2,80007730 <__printf+0x278>
    8000771c:	f9040713          	addi	a4,s0,-112
    80007720:	00f70733          	add	a4,a4,a5
    80007724:	02d00693          	li	a3,45
    80007728:	fed70823          	sb	a3,-16(a4)
    8000772c:	00078c93          	mv	s9,a5
    80007730:	f8040793          	addi	a5,s0,-128
    80007734:	01978cb3          	add	s9,a5,s9
    80007738:	f7f40d13          	addi	s10,s0,-129
    8000773c:	000cc503          	lbu	a0,0(s9)
    80007740:	fffc8c93          	addi	s9,s9,-1
    80007744:	00000097          	auipc	ra,0x0
    80007748:	b90080e7          	jalr	-1136(ra) # 800072d4 <consputc>
    8000774c:	ffac98e3          	bne	s9,s10,8000773c <__printf+0x284>
    80007750:	00094503          	lbu	a0,0(s2)
    80007754:	e00514e3          	bnez	a0,8000755c <__printf+0xa4>
    80007758:	1a0c1663          	bnez	s8,80007904 <__printf+0x44c>
    8000775c:	08813083          	ld	ra,136(sp)
    80007760:	08013403          	ld	s0,128(sp)
    80007764:	07813483          	ld	s1,120(sp)
    80007768:	07013903          	ld	s2,112(sp)
    8000776c:	06813983          	ld	s3,104(sp)
    80007770:	06013a03          	ld	s4,96(sp)
    80007774:	05813a83          	ld	s5,88(sp)
    80007778:	05013b03          	ld	s6,80(sp)
    8000777c:	04813b83          	ld	s7,72(sp)
    80007780:	04013c03          	ld	s8,64(sp)
    80007784:	03813c83          	ld	s9,56(sp)
    80007788:	03013d03          	ld	s10,48(sp)
    8000778c:	02813d83          	ld	s11,40(sp)
    80007790:	0d010113          	addi	sp,sp,208
    80007794:	00008067          	ret
    80007798:	07300713          	li	a4,115
    8000779c:	1ce78a63          	beq	a5,a4,80007970 <__printf+0x4b8>
    800077a0:	07800713          	li	a4,120
    800077a4:	1ee79e63          	bne	a5,a4,800079a0 <__printf+0x4e8>
    800077a8:	f7843783          	ld	a5,-136(s0)
    800077ac:	0007a703          	lw	a4,0(a5)
    800077b0:	00878793          	addi	a5,a5,8
    800077b4:	f6f43c23          	sd	a5,-136(s0)
    800077b8:	28074263          	bltz	a4,80007a3c <__printf+0x584>
    800077bc:	00002d97          	auipc	s11,0x2
    800077c0:	e94d8d93          	addi	s11,s11,-364 # 80009650 <digits>
    800077c4:	00f77793          	andi	a5,a4,15
    800077c8:	00fd87b3          	add	a5,s11,a5
    800077cc:	0007c683          	lbu	a3,0(a5)
    800077d0:	00f00613          	li	a2,15
    800077d4:	0007079b          	sext.w	a5,a4
    800077d8:	f8d40023          	sb	a3,-128(s0)
    800077dc:	0047559b          	srliw	a1,a4,0x4
    800077e0:	0047569b          	srliw	a3,a4,0x4
    800077e4:	00000c93          	li	s9,0
    800077e8:	0ee65063          	bge	a2,a4,800078c8 <__printf+0x410>
    800077ec:	00f6f693          	andi	a3,a3,15
    800077f0:	00dd86b3          	add	a3,s11,a3
    800077f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800077f8:	0087d79b          	srliw	a5,a5,0x8
    800077fc:	00100c93          	li	s9,1
    80007800:	f8d400a3          	sb	a3,-127(s0)
    80007804:	0cb67263          	bgeu	a2,a1,800078c8 <__printf+0x410>
    80007808:	00f7f693          	andi	a3,a5,15
    8000780c:	00dd86b3          	add	a3,s11,a3
    80007810:	0006c583          	lbu	a1,0(a3)
    80007814:	00f00613          	li	a2,15
    80007818:	0047d69b          	srliw	a3,a5,0x4
    8000781c:	f8b40123          	sb	a1,-126(s0)
    80007820:	0047d593          	srli	a1,a5,0x4
    80007824:	28f67e63          	bgeu	a2,a5,80007ac0 <__printf+0x608>
    80007828:	00f6f693          	andi	a3,a3,15
    8000782c:	00dd86b3          	add	a3,s11,a3
    80007830:	0006c503          	lbu	a0,0(a3)
    80007834:	0087d813          	srli	a6,a5,0x8
    80007838:	0087d69b          	srliw	a3,a5,0x8
    8000783c:	f8a401a3          	sb	a0,-125(s0)
    80007840:	28b67663          	bgeu	a2,a1,80007acc <__printf+0x614>
    80007844:	00f6f693          	andi	a3,a3,15
    80007848:	00dd86b3          	add	a3,s11,a3
    8000784c:	0006c583          	lbu	a1,0(a3)
    80007850:	00c7d513          	srli	a0,a5,0xc
    80007854:	00c7d69b          	srliw	a3,a5,0xc
    80007858:	f8b40223          	sb	a1,-124(s0)
    8000785c:	29067a63          	bgeu	a2,a6,80007af0 <__printf+0x638>
    80007860:	00f6f693          	andi	a3,a3,15
    80007864:	00dd86b3          	add	a3,s11,a3
    80007868:	0006c583          	lbu	a1,0(a3)
    8000786c:	0107d813          	srli	a6,a5,0x10
    80007870:	0107d69b          	srliw	a3,a5,0x10
    80007874:	f8b402a3          	sb	a1,-123(s0)
    80007878:	28a67263          	bgeu	a2,a0,80007afc <__printf+0x644>
    8000787c:	00f6f693          	andi	a3,a3,15
    80007880:	00dd86b3          	add	a3,s11,a3
    80007884:	0006c683          	lbu	a3,0(a3)
    80007888:	0147d79b          	srliw	a5,a5,0x14
    8000788c:	f8d40323          	sb	a3,-122(s0)
    80007890:	21067663          	bgeu	a2,a6,80007a9c <__printf+0x5e4>
    80007894:	02079793          	slli	a5,a5,0x20
    80007898:	0207d793          	srli	a5,a5,0x20
    8000789c:	00fd8db3          	add	s11,s11,a5
    800078a0:	000dc683          	lbu	a3,0(s11)
    800078a4:	00800793          	li	a5,8
    800078a8:	00700c93          	li	s9,7
    800078ac:	f8d403a3          	sb	a3,-121(s0)
    800078b0:	00075c63          	bgez	a4,800078c8 <__printf+0x410>
    800078b4:	f9040713          	addi	a4,s0,-112
    800078b8:	00f70733          	add	a4,a4,a5
    800078bc:	02d00693          	li	a3,45
    800078c0:	fed70823          	sb	a3,-16(a4)
    800078c4:	00078c93          	mv	s9,a5
    800078c8:	f8040793          	addi	a5,s0,-128
    800078cc:	01978cb3          	add	s9,a5,s9
    800078d0:	f7f40d13          	addi	s10,s0,-129
    800078d4:	000cc503          	lbu	a0,0(s9)
    800078d8:	fffc8c93          	addi	s9,s9,-1
    800078dc:	00000097          	auipc	ra,0x0
    800078e0:	9f8080e7          	jalr	-1544(ra) # 800072d4 <consputc>
    800078e4:	ff9d18e3          	bne	s10,s9,800078d4 <__printf+0x41c>
    800078e8:	0100006f          	j	800078f8 <__printf+0x440>
    800078ec:	00000097          	auipc	ra,0x0
    800078f0:	9e8080e7          	jalr	-1560(ra) # 800072d4 <consputc>
    800078f4:	000c8493          	mv	s1,s9
    800078f8:	00094503          	lbu	a0,0(s2)
    800078fc:	c60510e3          	bnez	a0,8000755c <__printf+0xa4>
    80007900:	e40c0ee3          	beqz	s8,8000775c <__printf+0x2a4>
    80007904:	00009517          	auipc	a0,0x9
    80007908:	58c50513          	addi	a0,a0,1420 # 80010e90 <pr>
    8000790c:	00001097          	auipc	ra,0x1
    80007910:	94c080e7          	jalr	-1716(ra) # 80008258 <release>
    80007914:	e49ff06f          	j	8000775c <__printf+0x2a4>
    80007918:	f7843783          	ld	a5,-136(s0)
    8000791c:	03000513          	li	a0,48
    80007920:	01000d13          	li	s10,16
    80007924:	00878713          	addi	a4,a5,8
    80007928:	0007bc83          	ld	s9,0(a5)
    8000792c:	f6e43c23          	sd	a4,-136(s0)
    80007930:	00000097          	auipc	ra,0x0
    80007934:	9a4080e7          	jalr	-1628(ra) # 800072d4 <consputc>
    80007938:	07800513          	li	a0,120
    8000793c:	00000097          	auipc	ra,0x0
    80007940:	998080e7          	jalr	-1640(ra) # 800072d4 <consputc>
    80007944:	00002d97          	auipc	s11,0x2
    80007948:	d0cd8d93          	addi	s11,s11,-756 # 80009650 <digits>
    8000794c:	03ccd793          	srli	a5,s9,0x3c
    80007950:	00fd87b3          	add	a5,s11,a5
    80007954:	0007c503          	lbu	a0,0(a5)
    80007958:	fffd0d1b          	addiw	s10,s10,-1
    8000795c:	004c9c93          	slli	s9,s9,0x4
    80007960:	00000097          	auipc	ra,0x0
    80007964:	974080e7          	jalr	-1676(ra) # 800072d4 <consputc>
    80007968:	fe0d12e3          	bnez	s10,8000794c <__printf+0x494>
    8000796c:	f8dff06f          	j	800078f8 <__printf+0x440>
    80007970:	f7843783          	ld	a5,-136(s0)
    80007974:	0007bc83          	ld	s9,0(a5)
    80007978:	00878793          	addi	a5,a5,8
    8000797c:	f6f43c23          	sd	a5,-136(s0)
    80007980:	000c9a63          	bnez	s9,80007994 <__printf+0x4dc>
    80007984:	1080006f          	j	80007a8c <__printf+0x5d4>
    80007988:	001c8c93          	addi	s9,s9,1
    8000798c:	00000097          	auipc	ra,0x0
    80007990:	948080e7          	jalr	-1720(ra) # 800072d4 <consputc>
    80007994:	000cc503          	lbu	a0,0(s9)
    80007998:	fe0518e3          	bnez	a0,80007988 <__printf+0x4d0>
    8000799c:	f5dff06f          	j	800078f8 <__printf+0x440>
    800079a0:	02500513          	li	a0,37
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	930080e7          	jalr	-1744(ra) # 800072d4 <consputc>
    800079ac:	000c8513          	mv	a0,s9
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	924080e7          	jalr	-1756(ra) # 800072d4 <consputc>
    800079b8:	f41ff06f          	j	800078f8 <__printf+0x440>
    800079bc:	02500513          	li	a0,37
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	914080e7          	jalr	-1772(ra) # 800072d4 <consputc>
    800079c8:	f31ff06f          	j	800078f8 <__printf+0x440>
    800079cc:	00030513          	mv	a0,t1
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	7bc080e7          	jalr	1980(ra) # 8000818c <acquire>
    800079d8:	b4dff06f          	j	80007524 <__printf+0x6c>
    800079dc:	40c0053b          	negw	a0,a2
    800079e0:	00a00713          	li	a4,10
    800079e4:	02e576bb          	remuw	a3,a0,a4
    800079e8:	00002d97          	auipc	s11,0x2
    800079ec:	c68d8d93          	addi	s11,s11,-920 # 80009650 <digits>
    800079f0:	ff700593          	li	a1,-9
    800079f4:	02069693          	slli	a3,a3,0x20
    800079f8:	0206d693          	srli	a3,a3,0x20
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c683          	lbu	a3,0(a3)
    80007a04:	02e557bb          	divuw	a5,a0,a4
    80007a08:	f8d40023          	sb	a3,-128(s0)
    80007a0c:	10b65e63          	bge	a2,a1,80007b28 <__printf+0x670>
    80007a10:	06300593          	li	a1,99
    80007a14:	02e7f6bb          	remuw	a3,a5,a4
    80007a18:	02069693          	slli	a3,a3,0x20
    80007a1c:	0206d693          	srli	a3,a3,0x20
    80007a20:	00dd86b3          	add	a3,s11,a3
    80007a24:	0006c683          	lbu	a3,0(a3)
    80007a28:	02e7d73b          	divuw	a4,a5,a4
    80007a2c:	00200793          	li	a5,2
    80007a30:	f8d400a3          	sb	a3,-127(s0)
    80007a34:	bca5ece3          	bltu	a1,a0,8000760c <__printf+0x154>
    80007a38:	ce5ff06f          	j	8000771c <__printf+0x264>
    80007a3c:	40e007bb          	negw	a5,a4
    80007a40:	00002d97          	auipc	s11,0x2
    80007a44:	c10d8d93          	addi	s11,s11,-1008 # 80009650 <digits>
    80007a48:	00f7f693          	andi	a3,a5,15
    80007a4c:	00dd86b3          	add	a3,s11,a3
    80007a50:	0006c583          	lbu	a1,0(a3)
    80007a54:	ff100613          	li	a2,-15
    80007a58:	0047d69b          	srliw	a3,a5,0x4
    80007a5c:	f8b40023          	sb	a1,-128(s0)
    80007a60:	0047d59b          	srliw	a1,a5,0x4
    80007a64:	0ac75e63          	bge	a4,a2,80007b20 <__printf+0x668>
    80007a68:	00f6f693          	andi	a3,a3,15
    80007a6c:	00dd86b3          	add	a3,s11,a3
    80007a70:	0006c603          	lbu	a2,0(a3)
    80007a74:	00f00693          	li	a3,15
    80007a78:	0087d79b          	srliw	a5,a5,0x8
    80007a7c:	f8c400a3          	sb	a2,-127(s0)
    80007a80:	d8b6e4e3          	bltu	a3,a1,80007808 <__printf+0x350>
    80007a84:	00200793          	li	a5,2
    80007a88:	e2dff06f          	j	800078b4 <__printf+0x3fc>
    80007a8c:	00002c97          	auipc	s9,0x2
    80007a90:	ba4c8c93          	addi	s9,s9,-1116 # 80009630 <CONSOLE_STATUS+0x620>
    80007a94:	02800513          	li	a0,40
    80007a98:	ef1ff06f          	j	80007988 <__printf+0x4d0>
    80007a9c:	00700793          	li	a5,7
    80007aa0:	00600c93          	li	s9,6
    80007aa4:	e0dff06f          	j	800078b0 <__printf+0x3f8>
    80007aa8:	00700793          	li	a5,7
    80007aac:	00600c93          	li	s9,6
    80007ab0:	c69ff06f          	j	80007718 <__printf+0x260>
    80007ab4:	00300793          	li	a5,3
    80007ab8:	00200c93          	li	s9,2
    80007abc:	c5dff06f          	j	80007718 <__printf+0x260>
    80007ac0:	00300793          	li	a5,3
    80007ac4:	00200c93          	li	s9,2
    80007ac8:	de9ff06f          	j	800078b0 <__printf+0x3f8>
    80007acc:	00400793          	li	a5,4
    80007ad0:	00300c93          	li	s9,3
    80007ad4:	dddff06f          	j	800078b0 <__printf+0x3f8>
    80007ad8:	00400793          	li	a5,4
    80007adc:	00300c93          	li	s9,3
    80007ae0:	c39ff06f          	j	80007718 <__printf+0x260>
    80007ae4:	00500793          	li	a5,5
    80007ae8:	00400c93          	li	s9,4
    80007aec:	c2dff06f          	j	80007718 <__printf+0x260>
    80007af0:	00500793          	li	a5,5
    80007af4:	00400c93          	li	s9,4
    80007af8:	db9ff06f          	j	800078b0 <__printf+0x3f8>
    80007afc:	00600793          	li	a5,6
    80007b00:	00500c93          	li	s9,5
    80007b04:	dadff06f          	j	800078b0 <__printf+0x3f8>
    80007b08:	00600793          	li	a5,6
    80007b0c:	00500c93          	li	s9,5
    80007b10:	c09ff06f          	j	80007718 <__printf+0x260>
    80007b14:	00800793          	li	a5,8
    80007b18:	00700c93          	li	s9,7
    80007b1c:	bfdff06f          	j	80007718 <__printf+0x260>
    80007b20:	00100793          	li	a5,1
    80007b24:	d91ff06f          	j	800078b4 <__printf+0x3fc>
    80007b28:	00100793          	li	a5,1
    80007b2c:	bf1ff06f          	j	8000771c <__printf+0x264>
    80007b30:	00900793          	li	a5,9
    80007b34:	00800c93          	li	s9,8
    80007b38:	be1ff06f          	j	80007718 <__printf+0x260>
    80007b3c:	00002517          	auipc	a0,0x2
    80007b40:	afc50513          	addi	a0,a0,-1284 # 80009638 <CONSOLE_STATUS+0x628>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	918080e7          	jalr	-1768(ra) # 8000745c <panic>

0000000080007b4c <printfinit>:
    80007b4c:	fe010113          	addi	sp,sp,-32
    80007b50:	00813823          	sd	s0,16(sp)
    80007b54:	00913423          	sd	s1,8(sp)
    80007b58:	00113c23          	sd	ra,24(sp)
    80007b5c:	02010413          	addi	s0,sp,32
    80007b60:	00009497          	auipc	s1,0x9
    80007b64:	33048493          	addi	s1,s1,816 # 80010e90 <pr>
    80007b68:	00048513          	mv	a0,s1
    80007b6c:	00002597          	auipc	a1,0x2
    80007b70:	adc58593          	addi	a1,a1,-1316 # 80009648 <CONSOLE_STATUS+0x638>
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	5f4080e7          	jalr	1524(ra) # 80008168 <initlock>
    80007b7c:	01813083          	ld	ra,24(sp)
    80007b80:	01013403          	ld	s0,16(sp)
    80007b84:	0004ac23          	sw	zero,24(s1)
    80007b88:	00813483          	ld	s1,8(sp)
    80007b8c:	02010113          	addi	sp,sp,32
    80007b90:	00008067          	ret

0000000080007b94 <uartinit>:
    80007b94:	ff010113          	addi	sp,sp,-16
    80007b98:	00813423          	sd	s0,8(sp)
    80007b9c:	01010413          	addi	s0,sp,16
    80007ba0:	100007b7          	lui	a5,0x10000
    80007ba4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ba8:	f8000713          	li	a4,-128
    80007bac:	00e781a3          	sb	a4,3(a5)
    80007bb0:	00300713          	li	a4,3
    80007bb4:	00e78023          	sb	a4,0(a5)
    80007bb8:	000780a3          	sb	zero,1(a5)
    80007bbc:	00e781a3          	sb	a4,3(a5)
    80007bc0:	00700693          	li	a3,7
    80007bc4:	00d78123          	sb	a3,2(a5)
    80007bc8:	00e780a3          	sb	a4,1(a5)
    80007bcc:	00813403          	ld	s0,8(sp)
    80007bd0:	01010113          	addi	sp,sp,16
    80007bd4:	00008067          	ret

0000000080007bd8 <uartputc>:
    80007bd8:	00004797          	auipc	a5,0x4
    80007bdc:	f707a783          	lw	a5,-144(a5) # 8000bb48 <panicked>
    80007be0:	00078463          	beqz	a5,80007be8 <uartputc+0x10>
    80007be4:	0000006f          	j	80007be4 <uartputc+0xc>
    80007be8:	fd010113          	addi	sp,sp,-48
    80007bec:	02813023          	sd	s0,32(sp)
    80007bf0:	00913c23          	sd	s1,24(sp)
    80007bf4:	01213823          	sd	s2,16(sp)
    80007bf8:	01313423          	sd	s3,8(sp)
    80007bfc:	02113423          	sd	ra,40(sp)
    80007c00:	03010413          	addi	s0,sp,48
    80007c04:	00004917          	auipc	s2,0x4
    80007c08:	f4c90913          	addi	s2,s2,-180 # 8000bb50 <uart_tx_r>
    80007c0c:	00093783          	ld	a5,0(s2)
    80007c10:	00004497          	auipc	s1,0x4
    80007c14:	f4848493          	addi	s1,s1,-184 # 8000bb58 <uart_tx_w>
    80007c18:	0004b703          	ld	a4,0(s1)
    80007c1c:	02078693          	addi	a3,a5,32
    80007c20:	00050993          	mv	s3,a0
    80007c24:	02e69c63          	bne	a3,a4,80007c5c <uartputc+0x84>
    80007c28:	00001097          	auipc	ra,0x1
    80007c2c:	834080e7          	jalr	-1996(ra) # 8000845c <push_on>
    80007c30:	00093783          	ld	a5,0(s2)
    80007c34:	0004b703          	ld	a4,0(s1)
    80007c38:	02078793          	addi	a5,a5,32
    80007c3c:	00e79463          	bne	a5,a4,80007c44 <uartputc+0x6c>
    80007c40:	0000006f          	j	80007c40 <uartputc+0x68>
    80007c44:	00001097          	auipc	ra,0x1
    80007c48:	88c080e7          	jalr	-1908(ra) # 800084d0 <pop_on>
    80007c4c:	00093783          	ld	a5,0(s2)
    80007c50:	0004b703          	ld	a4,0(s1)
    80007c54:	02078693          	addi	a3,a5,32
    80007c58:	fce688e3          	beq	a3,a4,80007c28 <uartputc+0x50>
    80007c5c:	01f77693          	andi	a3,a4,31
    80007c60:	00009597          	auipc	a1,0x9
    80007c64:	25058593          	addi	a1,a1,592 # 80010eb0 <uart_tx_buf>
    80007c68:	00d586b3          	add	a3,a1,a3
    80007c6c:	00170713          	addi	a4,a4,1
    80007c70:	01368023          	sb	s3,0(a3)
    80007c74:	00e4b023          	sd	a4,0(s1)
    80007c78:	10000637          	lui	a2,0x10000
    80007c7c:	02f71063          	bne	a4,a5,80007c9c <uartputc+0xc4>
    80007c80:	0340006f          	j	80007cb4 <uartputc+0xdc>
    80007c84:	00074703          	lbu	a4,0(a4)
    80007c88:	00f93023          	sd	a5,0(s2)
    80007c8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007c90:	00093783          	ld	a5,0(s2)
    80007c94:	0004b703          	ld	a4,0(s1)
    80007c98:	00f70e63          	beq	a4,a5,80007cb4 <uartputc+0xdc>
    80007c9c:	00564683          	lbu	a3,5(a2)
    80007ca0:	01f7f713          	andi	a4,a5,31
    80007ca4:	00e58733          	add	a4,a1,a4
    80007ca8:	0206f693          	andi	a3,a3,32
    80007cac:	00178793          	addi	a5,a5,1
    80007cb0:	fc069ae3          	bnez	a3,80007c84 <uartputc+0xac>
    80007cb4:	02813083          	ld	ra,40(sp)
    80007cb8:	02013403          	ld	s0,32(sp)
    80007cbc:	01813483          	ld	s1,24(sp)
    80007cc0:	01013903          	ld	s2,16(sp)
    80007cc4:	00813983          	ld	s3,8(sp)
    80007cc8:	03010113          	addi	sp,sp,48
    80007ccc:	00008067          	ret

0000000080007cd0 <uartputc_sync>:
    80007cd0:	ff010113          	addi	sp,sp,-16
    80007cd4:	00813423          	sd	s0,8(sp)
    80007cd8:	01010413          	addi	s0,sp,16
    80007cdc:	00004717          	auipc	a4,0x4
    80007ce0:	e6c72703          	lw	a4,-404(a4) # 8000bb48 <panicked>
    80007ce4:	02071663          	bnez	a4,80007d10 <uartputc_sync+0x40>
    80007ce8:	00050793          	mv	a5,a0
    80007cec:	100006b7          	lui	a3,0x10000
    80007cf0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007cf4:	02077713          	andi	a4,a4,32
    80007cf8:	fe070ce3          	beqz	a4,80007cf0 <uartputc_sync+0x20>
    80007cfc:	0ff7f793          	andi	a5,a5,255
    80007d00:	00f68023          	sb	a5,0(a3)
    80007d04:	00813403          	ld	s0,8(sp)
    80007d08:	01010113          	addi	sp,sp,16
    80007d0c:	00008067          	ret
    80007d10:	0000006f          	j	80007d10 <uartputc_sync+0x40>

0000000080007d14 <uartstart>:
    80007d14:	ff010113          	addi	sp,sp,-16
    80007d18:	00813423          	sd	s0,8(sp)
    80007d1c:	01010413          	addi	s0,sp,16
    80007d20:	00004617          	auipc	a2,0x4
    80007d24:	e3060613          	addi	a2,a2,-464 # 8000bb50 <uart_tx_r>
    80007d28:	00004517          	auipc	a0,0x4
    80007d2c:	e3050513          	addi	a0,a0,-464 # 8000bb58 <uart_tx_w>
    80007d30:	00063783          	ld	a5,0(a2)
    80007d34:	00053703          	ld	a4,0(a0)
    80007d38:	04f70263          	beq	a4,a5,80007d7c <uartstart+0x68>
    80007d3c:	100005b7          	lui	a1,0x10000
    80007d40:	00009817          	auipc	a6,0x9
    80007d44:	17080813          	addi	a6,a6,368 # 80010eb0 <uart_tx_buf>
    80007d48:	01c0006f          	j	80007d64 <uartstart+0x50>
    80007d4c:	0006c703          	lbu	a4,0(a3)
    80007d50:	00f63023          	sd	a5,0(a2)
    80007d54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d58:	00063783          	ld	a5,0(a2)
    80007d5c:	00053703          	ld	a4,0(a0)
    80007d60:	00f70e63          	beq	a4,a5,80007d7c <uartstart+0x68>
    80007d64:	01f7f713          	andi	a4,a5,31
    80007d68:	00e806b3          	add	a3,a6,a4
    80007d6c:	0055c703          	lbu	a4,5(a1)
    80007d70:	00178793          	addi	a5,a5,1
    80007d74:	02077713          	andi	a4,a4,32
    80007d78:	fc071ae3          	bnez	a4,80007d4c <uartstart+0x38>
    80007d7c:	00813403          	ld	s0,8(sp)
    80007d80:	01010113          	addi	sp,sp,16
    80007d84:	00008067          	ret

0000000080007d88 <uartgetc>:
    80007d88:	ff010113          	addi	sp,sp,-16
    80007d8c:	00813423          	sd	s0,8(sp)
    80007d90:	01010413          	addi	s0,sp,16
    80007d94:	10000737          	lui	a4,0x10000
    80007d98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007d9c:	0017f793          	andi	a5,a5,1
    80007da0:	00078c63          	beqz	a5,80007db8 <uartgetc+0x30>
    80007da4:	00074503          	lbu	a0,0(a4)
    80007da8:	0ff57513          	andi	a0,a0,255
    80007dac:	00813403          	ld	s0,8(sp)
    80007db0:	01010113          	addi	sp,sp,16
    80007db4:	00008067          	ret
    80007db8:	fff00513          	li	a0,-1
    80007dbc:	ff1ff06f          	j	80007dac <uartgetc+0x24>

0000000080007dc0 <uartintr>:
    80007dc0:	100007b7          	lui	a5,0x10000
    80007dc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007dc8:	0017f793          	andi	a5,a5,1
    80007dcc:	0a078463          	beqz	a5,80007e74 <uartintr+0xb4>
    80007dd0:	fe010113          	addi	sp,sp,-32
    80007dd4:	00813823          	sd	s0,16(sp)
    80007dd8:	00913423          	sd	s1,8(sp)
    80007ddc:	00113c23          	sd	ra,24(sp)
    80007de0:	02010413          	addi	s0,sp,32
    80007de4:	100004b7          	lui	s1,0x10000
    80007de8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007dec:	0ff57513          	andi	a0,a0,255
    80007df0:	fffff097          	auipc	ra,0xfffff
    80007df4:	534080e7          	jalr	1332(ra) # 80007324 <consoleintr>
    80007df8:	0054c783          	lbu	a5,5(s1)
    80007dfc:	0017f793          	andi	a5,a5,1
    80007e00:	fe0794e3          	bnez	a5,80007de8 <uartintr+0x28>
    80007e04:	00004617          	auipc	a2,0x4
    80007e08:	d4c60613          	addi	a2,a2,-692 # 8000bb50 <uart_tx_r>
    80007e0c:	00004517          	auipc	a0,0x4
    80007e10:	d4c50513          	addi	a0,a0,-692 # 8000bb58 <uart_tx_w>
    80007e14:	00063783          	ld	a5,0(a2)
    80007e18:	00053703          	ld	a4,0(a0)
    80007e1c:	04f70263          	beq	a4,a5,80007e60 <uartintr+0xa0>
    80007e20:	100005b7          	lui	a1,0x10000
    80007e24:	00009817          	auipc	a6,0x9
    80007e28:	08c80813          	addi	a6,a6,140 # 80010eb0 <uart_tx_buf>
    80007e2c:	01c0006f          	j	80007e48 <uartintr+0x88>
    80007e30:	0006c703          	lbu	a4,0(a3)
    80007e34:	00f63023          	sd	a5,0(a2)
    80007e38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e3c:	00063783          	ld	a5,0(a2)
    80007e40:	00053703          	ld	a4,0(a0)
    80007e44:	00f70e63          	beq	a4,a5,80007e60 <uartintr+0xa0>
    80007e48:	01f7f713          	andi	a4,a5,31
    80007e4c:	00e806b3          	add	a3,a6,a4
    80007e50:	0055c703          	lbu	a4,5(a1)
    80007e54:	00178793          	addi	a5,a5,1
    80007e58:	02077713          	andi	a4,a4,32
    80007e5c:	fc071ae3          	bnez	a4,80007e30 <uartintr+0x70>
    80007e60:	01813083          	ld	ra,24(sp)
    80007e64:	01013403          	ld	s0,16(sp)
    80007e68:	00813483          	ld	s1,8(sp)
    80007e6c:	02010113          	addi	sp,sp,32
    80007e70:	00008067          	ret
    80007e74:	00004617          	auipc	a2,0x4
    80007e78:	cdc60613          	addi	a2,a2,-804 # 8000bb50 <uart_tx_r>
    80007e7c:	00004517          	auipc	a0,0x4
    80007e80:	cdc50513          	addi	a0,a0,-804 # 8000bb58 <uart_tx_w>
    80007e84:	00063783          	ld	a5,0(a2)
    80007e88:	00053703          	ld	a4,0(a0)
    80007e8c:	04f70263          	beq	a4,a5,80007ed0 <uartintr+0x110>
    80007e90:	100005b7          	lui	a1,0x10000
    80007e94:	00009817          	auipc	a6,0x9
    80007e98:	01c80813          	addi	a6,a6,28 # 80010eb0 <uart_tx_buf>
    80007e9c:	01c0006f          	j	80007eb8 <uartintr+0xf8>
    80007ea0:	0006c703          	lbu	a4,0(a3)
    80007ea4:	00f63023          	sd	a5,0(a2)
    80007ea8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007eac:	00063783          	ld	a5,0(a2)
    80007eb0:	00053703          	ld	a4,0(a0)
    80007eb4:	02f70063          	beq	a4,a5,80007ed4 <uartintr+0x114>
    80007eb8:	01f7f713          	andi	a4,a5,31
    80007ebc:	00e806b3          	add	a3,a6,a4
    80007ec0:	0055c703          	lbu	a4,5(a1)
    80007ec4:	00178793          	addi	a5,a5,1
    80007ec8:	02077713          	andi	a4,a4,32
    80007ecc:	fc071ae3          	bnez	a4,80007ea0 <uartintr+0xe0>
    80007ed0:	00008067          	ret
    80007ed4:	00008067          	ret

0000000080007ed8 <kinit>:
    80007ed8:	fc010113          	addi	sp,sp,-64
    80007edc:	02913423          	sd	s1,40(sp)
    80007ee0:	fffff7b7          	lui	a5,0xfffff
    80007ee4:	0000a497          	auipc	s1,0xa
    80007ee8:	feb48493          	addi	s1,s1,-21 # 80011ecf <end+0xfff>
    80007eec:	02813823          	sd	s0,48(sp)
    80007ef0:	01313c23          	sd	s3,24(sp)
    80007ef4:	00f4f4b3          	and	s1,s1,a5
    80007ef8:	02113c23          	sd	ra,56(sp)
    80007efc:	03213023          	sd	s2,32(sp)
    80007f00:	01413823          	sd	s4,16(sp)
    80007f04:	01513423          	sd	s5,8(sp)
    80007f08:	04010413          	addi	s0,sp,64
    80007f0c:	000017b7          	lui	a5,0x1
    80007f10:	01100993          	li	s3,17
    80007f14:	00f487b3          	add	a5,s1,a5
    80007f18:	01b99993          	slli	s3,s3,0x1b
    80007f1c:	06f9e063          	bltu	s3,a5,80007f7c <kinit+0xa4>
    80007f20:	00009a97          	auipc	s5,0x9
    80007f24:	fb0a8a93          	addi	s5,s5,-80 # 80010ed0 <end>
    80007f28:	0754ec63          	bltu	s1,s5,80007fa0 <kinit+0xc8>
    80007f2c:	0734fa63          	bgeu	s1,s3,80007fa0 <kinit+0xc8>
    80007f30:	00088a37          	lui	s4,0x88
    80007f34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f38:	00004917          	auipc	s2,0x4
    80007f3c:	c2890913          	addi	s2,s2,-984 # 8000bb60 <kmem>
    80007f40:	00ca1a13          	slli	s4,s4,0xc
    80007f44:	0140006f          	j	80007f58 <kinit+0x80>
    80007f48:	000017b7          	lui	a5,0x1
    80007f4c:	00f484b3          	add	s1,s1,a5
    80007f50:	0554e863          	bltu	s1,s5,80007fa0 <kinit+0xc8>
    80007f54:	0534f663          	bgeu	s1,s3,80007fa0 <kinit+0xc8>
    80007f58:	00001637          	lui	a2,0x1
    80007f5c:	00100593          	li	a1,1
    80007f60:	00048513          	mv	a0,s1
    80007f64:	00000097          	auipc	ra,0x0
    80007f68:	5e4080e7          	jalr	1508(ra) # 80008548 <__memset>
    80007f6c:	00093783          	ld	a5,0(s2)
    80007f70:	00f4b023          	sd	a5,0(s1)
    80007f74:	00993023          	sd	s1,0(s2)
    80007f78:	fd4498e3          	bne	s1,s4,80007f48 <kinit+0x70>
    80007f7c:	03813083          	ld	ra,56(sp)
    80007f80:	03013403          	ld	s0,48(sp)
    80007f84:	02813483          	ld	s1,40(sp)
    80007f88:	02013903          	ld	s2,32(sp)
    80007f8c:	01813983          	ld	s3,24(sp)
    80007f90:	01013a03          	ld	s4,16(sp)
    80007f94:	00813a83          	ld	s5,8(sp)
    80007f98:	04010113          	addi	sp,sp,64
    80007f9c:	00008067          	ret
    80007fa0:	00001517          	auipc	a0,0x1
    80007fa4:	6c850513          	addi	a0,a0,1736 # 80009668 <digits+0x18>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	4b4080e7          	jalr	1204(ra) # 8000745c <panic>

0000000080007fb0 <freerange>:
    80007fb0:	fc010113          	addi	sp,sp,-64
    80007fb4:	000017b7          	lui	a5,0x1
    80007fb8:	02913423          	sd	s1,40(sp)
    80007fbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007fc0:	009504b3          	add	s1,a0,s1
    80007fc4:	fffff537          	lui	a0,0xfffff
    80007fc8:	02813823          	sd	s0,48(sp)
    80007fcc:	02113c23          	sd	ra,56(sp)
    80007fd0:	03213023          	sd	s2,32(sp)
    80007fd4:	01313c23          	sd	s3,24(sp)
    80007fd8:	01413823          	sd	s4,16(sp)
    80007fdc:	01513423          	sd	s5,8(sp)
    80007fe0:	01613023          	sd	s6,0(sp)
    80007fe4:	04010413          	addi	s0,sp,64
    80007fe8:	00a4f4b3          	and	s1,s1,a0
    80007fec:	00f487b3          	add	a5,s1,a5
    80007ff0:	06f5e463          	bltu	a1,a5,80008058 <freerange+0xa8>
    80007ff4:	00009a97          	auipc	s5,0x9
    80007ff8:	edca8a93          	addi	s5,s5,-292 # 80010ed0 <end>
    80007ffc:	0954e263          	bltu	s1,s5,80008080 <freerange+0xd0>
    80008000:	01100993          	li	s3,17
    80008004:	01b99993          	slli	s3,s3,0x1b
    80008008:	0734fc63          	bgeu	s1,s3,80008080 <freerange+0xd0>
    8000800c:	00058a13          	mv	s4,a1
    80008010:	00004917          	auipc	s2,0x4
    80008014:	b5090913          	addi	s2,s2,-1200 # 8000bb60 <kmem>
    80008018:	00002b37          	lui	s6,0x2
    8000801c:	0140006f          	j	80008030 <freerange+0x80>
    80008020:	000017b7          	lui	a5,0x1
    80008024:	00f484b3          	add	s1,s1,a5
    80008028:	0554ec63          	bltu	s1,s5,80008080 <freerange+0xd0>
    8000802c:	0534fa63          	bgeu	s1,s3,80008080 <freerange+0xd0>
    80008030:	00001637          	lui	a2,0x1
    80008034:	00100593          	li	a1,1
    80008038:	00048513          	mv	a0,s1
    8000803c:	00000097          	auipc	ra,0x0
    80008040:	50c080e7          	jalr	1292(ra) # 80008548 <__memset>
    80008044:	00093703          	ld	a4,0(s2)
    80008048:	016487b3          	add	a5,s1,s6
    8000804c:	00e4b023          	sd	a4,0(s1)
    80008050:	00993023          	sd	s1,0(s2)
    80008054:	fcfa76e3          	bgeu	s4,a5,80008020 <freerange+0x70>
    80008058:	03813083          	ld	ra,56(sp)
    8000805c:	03013403          	ld	s0,48(sp)
    80008060:	02813483          	ld	s1,40(sp)
    80008064:	02013903          	ld	s2,32(sp)
    80008068:	01813983          	ld	s3,24(sp)
    8000806c:	01013a03          	ld	s4,16(sp)
    80008070:	00813a83          	ld	s5,8(sp)
    80008074:	00013b03          	ld	s6,0(sp)
    80008078:	04010113          	addi	sp,sp,64
    8000807c:	00008067          	ret
    80008080:	00001517          	auipc	a0,0x1
    80008084:	5e850513          	addi	a0,a0,1512 # 80009668 <digits+0x18>
    80008088:	fffff097          	auipc	ra,0xfffff
    8000808c:	3d4080e7          	jalr	980(ra) # 8000745c <panic>

0000000080008090 <kfree>:
    80008090:	fe010113          	addi	sp,sp,-32
    80008094:	00813823          	sd	s0,16(sp)
    80008098:	00113c23          	sd	ra,24(sp)
    8000809c:	00913423          	sd	s1,8(sp)
    800080a0:	02010413          	addi	s0,sp,32
    800080a4:	03451793          	slli	a5,a0,0x34
    800080a8:	04079c63          	bnez	a5,80008100 <kfree+0x70>
    800080ac:	00009797          	auipc	a5,0x9
    800080b0:	e2478793          	addi	a5,a5,-476 # 80010ed0 <end>
    800080b4:	00050493          	mv	s1,a0
    800080b8:	04f56463          	bltu	a0,a5,80008100 <kfree+0x70>
    800080bc:	01100793          	li	a5,17
    800080c0:	01b79793          	slli	a5,a5,0x1b
    800080c4:	02f57e63          	bgeu	a0,a5,80008100 <kfree+0x70>
    800080c8:	00001637          	lui	a2,0x1
    800080cc:	00100593          	li	a1,1
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	478080e7          	jalr	1144(ra) # 80008548 <__memset>
    800080d8:	00004797          	auipc	a5,0x4
    800080dc:	a8878793          	addi	a5,a5,-1400 # 8000bb60 <kmem>
    800080e0:	0007b703          	ld	a4,0(a5)
    800080e4:	01813083          	ld	ra,24(sp)
    800080e8:	01013403          	ld	s0,16(sp)
    800080ec:	00e4b023          	sd	a4,0(s1)
    800080f0:	0097b023          	sd	s1,0(a5)
    800080f4:	00813483          	ld	s1,8(sp)
    800080f8:	02010113          	addi	sp,sp,32
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	56850513          	addi	a0,a0,1384 # 80009668 <digits+0x18>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	354080e7          	jalr	852(ra) # 8000745c <panic>

0000000080008110 <kalloc>:
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	00113c23          	sd	ra,24(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	00004797          	auipc	a5,0x4
    80008128:	a3c78793          	addi	a5,a5,-1476 # 8000bb60 <kmem>
    8000812c:	0007b483          	ld	s1,0(a5)
    80008130:	02048063          	beqz	s1,80008150 <kalloc+0x40>
    80008134:	0004b703          	ld	a4,0(s1)
    80008138:	00001637          	lui	a2,0x1
    8000813c:	00500593          	li	a1,5
    80008140:	00048513          	mv	a0,s1
    80008144:	00e7b023          	sd	a4,0(a5)
    80008148:	00000097          	auipc	ra,0x0
    8000814c:	400080e7          	jalr	1024(ra) # 80008548 <__memset>
    80008150:	01813083          	ld	ra,24(sp)
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	00048513          	mv	a0,s1
    8000815c:	00813483          	ld	s1,8(sp)
    80008160:	02010113          	addi	sp,sp,32
    80008164:	00008067          	ret

0000000080008168 <initlock>:
    80008168:	ff010113          	addi	sp,sp,-16
    8000816c:	00813423          	sd	s0,8(sp)
    80008170:	01010413          	addi	s0,sp,16
    80008174:	00813403          	ld	s0,8(sp)
    80008178:	00b53423          	sd	a1,8(a0)
    8000817c:	00052023          	sw	zero,0(a0)
    80008180:	00053823          	sd	zero,16(a0)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret

000000008000818c <acquire>:
    8000818c:	fe010113          	addi	sp,sp,-32
    80008190:	00813823          	sd	s0,16(sp)
    80008194:	00913423          	sd	s1,8(sp)
    80008198:	00113c23          	sd	ra,24(sp)
    8000819c:	01213023          	sd	s2,0(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	00050493          	mv	s1,a0
    800081a8:	10002973          	csrr	s2,sstatus
    800081ac:	100027f3          	csrr	a5,sstatus
    800081b0:	ffd7f793          	andi	a5,a5,-3
    800081b4:	10079073          	csrw	sstatus,a5
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	8e8080e7          	jalr	-1816(ra) # 80006aa0 <mycpu>
    800081c0:	07852783          	lw	a5,120(a0)
    800081c4:	06078e63          	beqz	a5,80008240 <acquire+0xb4>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	8d8080e7          	jalr	-1832(ra) # 80006aa0 <mycpu>
    800081d0:	07852783          	lw	a5,120(a0)
    800081d4:	0004a703          	lw	a4,0(s1)
    800081d8:	0017879b          	addiw	a5,a5,1
    800081dc:	06f52c23          	sw	a5,120(a0)
    800081e0:	04071063          	bnez	a4,80008220 <acquire+0x94>
    800081e4:	00100713          	li	a4,1
    800081e8:	00070793          	mv	a5,a4
    800081ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800081f0:	0007879b          	sext.w	a5,a5
    800081f4:	fe079ae3          	bnez	a5,800081e8 <acquire+0x5c>
    800081f8:	0ff0000f          	fence
    800081fc:	fffff097          	auipc	ra,0xfffff
    80008200:	8a4080e7          	jalr	-1884(ra) # 80006aa0 <mycpu>
    80008204:	01813083          	ld	ra,24(sp)
    80008208:	01013403          	ld	s0,16(sp)
    8000820c:	00a4b823          	sd	a0,16(s1)
    80008210:	00013903          	ld	s2,0(sp)
    80008214:	00813483          	ld	s1,8(sp)
    80008218:	02010113          	addi	sp,sp,32
    8000821c:	00008067          	ret
    80008220:	0104b903          	ld	s2,16(s1)
    80008224:	fffff097          	auipc	ra,0xfffff
    80008228:	87c080e7          	jalr	-1924(ra) # 80006aa0 <mycpu>
    8000822c:	faa91ce3          	bne	s2,a0,800081e4 <acquire+0x58>
    80008230:	00001517          	auipc	a0,0x1
    80008234:	44050513          	addi	a0,a0,1088 # 80009670 <digits+0x20>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	224080e7          	jalr	548(ra) # 8000745c <panic>
    80008240:	00195913          	srli	s2,s2,0x1
    80008244:	fffff097          	auipc	ra,0xfffff
    80008248:	85c080e7          	jalr	-1956(ra) # 80006aa0 <mycpu>
    8000824c:	00197913          	andi	s2,s2,1
    80008250:	07252e23          	sw	s2,124(a0)
    80008254:	f75ff06f          	j	800081c8 <acquire+0x3c>

0000000080008258 <release>:
    80008258:	fe010113          	addi	sp,sp,-32
    8000825c:	00813823          	sd	s0,16(sp)
    80008260:	00113c23          	sd	ra,24(sp)
    80008264:	00913423          	sd	s1,8(sp)
    80008268:	01213023          	sd	s2,0(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	00052783          	lw	a5,0(a0)
    80008274:	00079a63          	bnez	a5,80008288 <release+0x30>
    80008278:	00001517          	auipc	a0,0x1
    8000827c:	40050513          	addi	a0,a0,1024 # 80009678 <digits+0x28>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	1dc080e7          	jalr	476(ra) # 8000745c <panic>
    80008288:	01053903          	ld	s2,16(a0)
    8000828c:	00050493          	mv	s1,a0
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	810080e7          	jalr	-2032(ra) # 80006aa0 <mycpu>
    80008298:	fea910e3          	bne	s2,a0,80008278 <release+0x20>
    8000829c:	0004b823          	sd	zero,16(s1)
    800082a0:	0ff0000f          	fence
    800082a4:	0f50000f          	fence	iorw,ow
    800082a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082ac:	ffffe097          	auipc	ra,0xffffe
    800082b0:	7f4080e7          	jalr	2036(ra) # 80006aa0 <mycpu>
    800082b4:	100027f3          	csrr	a5,sstatus
    800082b8:	0027f793          	andi	a5,a5,2
    800082bc:	04079a63          	bnez	a5,80008310 <release+0xb8>
    800082c0:	07852783          	lw	a5,120(a0)
    800082c4:	02f05e63          	blez	a5,80008300 <release+0xa8>
    800082c8:	fff7871b          	addiw	a4,a5,-1
    800082cc:	06e52c23          	sw	a4,120(a0)
    800082d0:	00071c63          	bnez	a4,800082e8 <release+0x90>
    800082d4:	07c52783          	lw	a5,124(a0)
    800082d8:	00078863          	beqz	a5,800082e8 <release+0x90>
    800082dc:	100027f3          	csrr	a5,sstatus
    800082e0:	0027e793          	ori	a5,a5,2
    800082e4:	10079073          	csrw	sstatus,a5
    800082e8:	01813083          	ld	ra,24(sp)
    800082ec:	01013403          	ld	s0,16(sp)
    800082f0:	00813483          	ld	s1,8(sp)
    800082f4:	00013903          	ld	s2,0(sp)
    800082f8:	02010113          	addi	sp,sp,32
    800082fc:	00008067          	ret
    80008300:	00001517          	auipc	a0,0x1
    80008304:	39850513          	addi	a0,a0,920 # 80009698 <digits+0x48>
    80008308:	fffff097          	auipc	ra,0xfffff
    8000830c:	154080e7          	jalr	340(ra) # 8000745c <panic>
    80008310:	00001517          	auipc	a0,0x1
    80008314:	37050513          	addi	a0,a0,880 # 80009680 <digits+0x30>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	144080e7          	jalr	324(ra) # 8000745c <panic>

0000000080008320 <holding>:
    80008320:	00052783          	lw	a5,0(a0)
    80008324:	00079663          	bnez	a5,80008330 <holding+0x10>
    80008328:	00000513          	li	a0,0
    8000832c:	00008067          	ret
    80008330:	fe010113          	addi	sp,sp,-32
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00913423          	sd	s1,8(sp)
    8000833c:	00113c23          	sd	ra,24(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	01053483          	ld	s1,16(a0)
    80008348:	ffffe097          	auipc	ra,0xffffe
    8000834c:	758080e7          	jalr	1880(ra) # 80006aa0 <mycpu>
    80008350:	01813083          	ld	ra,24(sp)
    80008354:	01013403          	ld	s0,16(sp)
    80008358:	40a48533          	sub	a0,s1,a0
    8000835c:	00153513          	seqz	a0,a0
    80008360:	00813483          	ld	s1,8(sp)
    80008364:	02010113          	addi	sp,sp,32
    80008368:	00008067          	ret

000000008000836c <push_off>:
    8000836c:	fe010113          	addi	sp,sp,-32
    80008370:	00813823          	sd	s0,16(sp)
    80008374:	00113c23          	sd	ra,24(sp)
    80008378:	00913423          	sd	s1,8(sp)
    8000837c:	02010413          	addi	s0,sp,32
    80008380:	100024f3          	csrr	s1,sstatus
    80008384:	100027f3          	csrr	a5,sstatus
    80008388:	ffd7f793          	andi	a5,a5,-3
    8000838c:	10079073          	csrw	sstatus,a5
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	710080e7          	jalr	1808(ra) # 80006aa0 <mycpu>
    80008398:	07852783          	lw	a5,120(a0)
    8000839c:	02078663          	beqz	a5,800083c8 <push_off+0x5c>
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	700080e7          	jalr	1792(ra) # 80006aa0 <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	01813083          	ld	ra,24(sp)
    800083b0:	01013403          	ld	s0,16(sp)
    800083b4:	0017879b          	addiw	a5,a5,1
    800083b8:	06f52c23          	sw	a5,120(a0)
    800083bc:	00813483          	ld	s1,8(sp)
    800083c0:	02010113          	addi	sp,sp,32
    800083c4:	00008067          	ret
    800083c8:	0014d493          	srli	s1,s1,0x1
    800083cc:	ffffe097          	auipc	ra,0xffffe
    800083d0:	6d4080e7          	jalr	1748(ra) # 80006aa0 <mycpu>
    800083d4:	0014f493          	andi	s1,s1,1
    800083d8:	06952e23          	sw	s1,124(a0)
    800083dc:	fc5ff06f          	j	800083a0 <push_off+0x34>

00000000800083e0 <pop_off>:
    800083e0:	ff010113          	addi	sp,sp,-16
    800083e4:	00813023          	sd	s0,0(sp)
    800083e8:	00113423          	sd	ra,8(sp)
    800083ec:	01010413          	addi	s0,sp,16
    800083f0:	ffffe097          	auipc	ra,0xffffe
    800083f4:	6b0080e7          	jalr	1712(ra) # 80006aa0 <mycpu>
    800083f8:	100027f3          	csrr	a5,sstatus
    800083fc:	0027f793          	andi	a5,a5,2
    80008400:	04079663          	bnez	a5,8000844c <pop_off+0x6c>
    80008404:	07852783          	lw	a5,120(a0)
    80008408:	02f05a63          	blez	a5,8000843c <pop_off+0x5c>
    8000840c:	fff7871b          	addiw	a4,a5,-1
    80008410:	06e52c23          	sw	a4,120(a0)
    80008414:	00071c63          	bnez	a4,8000842c <pop_off+0x4c>
    80008418:	07c52783          	lw	a5,124(a0)
    8000841c:	00078863          	beqz	a5,8000842c <pop_off+0x4c>
    80008420:	100027f3          	csrr	a5,sstatus
    80008424:	0027e793          	ori	a5,a5,2
    80008428:	10079073          	csrw	sstatus,a5
    8000842c:	00813083          	ld	ra,8(sp)
    80008430:	00013403          	ld	s0,0(sp)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret
    8000843c:	00001517          	auipc	a0,0x1
    80008440:	25c50513          	addi	a0,a0,604 # 80009698 <digits+0x48>
    80008444:	fffff097          	auipc	ra,0xfffff
    80008448:	018080e7          	jalr	24(ra) # 8000745c <panic>
    8000844c:	00001517          	auipc	a0,0x1
    80008450:	23450513          	addi	a0,a0,564 # 80009680 <digits+0x30>
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	008080e7          	jalr	8(ra) # 8000745c <panic>

000000008000845c <push_on>:
    8000845c:	fe010113          	addi	sp,sp,-32
    80008460:	00813823          	sd	s0,16(sp)
    80008464:	00113c23          	sd	ra,24(sp)
    80008468:	00913423          	sd	s1,8(sp)
    8000846c:	02010413          	addi	s0,sp,32
    80008470:	100024f3          	csrr	s1,sstatus
    80008474:	100027f3          	csrr	a5,sstatus
    80008478:	0027e793          	ori	a5,a5,2
    8000847c:	10079073          	csrw	sstatus,a5
    80008480:	ffffe097          	auipc	ra,0xffffe
    80008484:	620080e7          	jalr	1568(ra) # 80006aa0 <mycpu>
    80008488:	07852783          	lw	a5,120(a0)
    8000848c:	02078663          	beqz	a5,800084b8 <push_on+0x5c>
    80008490:	ffffe097          	auipc	ra,0xffffe
    80008494:	610080e7          	jalr	1552(ra) # 80006aa0 <mycpu>
    80008498:	07852783          	lw	a5,120(a0)
    8000849c:	01813083          	ld	ra,24(sp)
    800084a0:	01013403          	ld	s0,16(sp)
    800084a4:	0017879b          	addiw	a5,a5,1
    800084a8:	06f52c23          	sw	a5,120(a0)
    800084ac:	00813483          	ld	s1,8(sp)
    800084b0:	02010113          	addi	sp,sp,32
    800084b4:	00008067          	ret
    800084b8:	0014d493          	srli	s1,s1,0x1
    800084bc:	ffffe097          	auipc	ra,0xffffe
    800084c0:	5e4080e7          	jalr	1508(ra) # 80006aa0 <mycpu>
    800084c4:	0014f493          	andi	s1,s1,1
    800084c8:	06952e23          	sw	s1,124(a0)
    800084cc:	fc5ff06f          	j	80008490 <push_on+0x34>

00000000800084d0 <pop_on>:
    800084d0:	ff010113          	addi	sp,sp,-16
    800084d4:	00813023          	sd	s0,0(sp)
    800084d8:	00113423          	sd	ra,8(sp)
    800084dc:	01010413          	addi	s0,sp,16
    800084e0:	ffffe097          	auipc	ra,0xffffe
    800084e4:	5c0080e7          	jalr	1472(ra) # 80006aa0 <mycpu>
    800084e8:	100027f3          	csrr	a5,sstatus
    800084ec:	0027f793          	andi	a5,a5,2
    800084f0:	04078463          	beqz	a5,80008538 <pop_on+0x68>
    800084f4:	07852783          	lw	a5,120(a0)
    800084f8:	02f05863          	blez	a5,80008528 <pop_on+0x58>
    800084fc:	fff7879b          	addiw	a5,a5,-1
    80008500:	06f52c23          	sw	a5,120(a0)
    80008504:	07853783          	ld	a5,120(a0)
    80008508:	00079863          	bnez	a5,80008518 <pop_on+0x48>
    8000850c:	100027f3          	csrr	a5,sstatus
    80008510:	ffd7f793          	andi	a5,a5,-3
    80008514:	10079073          	csrw	sstatus,a5
    80008518:	00813083          	ld	ra,8(sp)
    8000851c:	00013403          	ld	s0,0(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret
    80008528:	00001517          	auipc	a0,0x1
    8000852c:	19850513          	addi	a0,a0,408 # 800096c0 <digits+0x70>
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	f2c080e7          	jalr	-212(ra) # 8000745c <panic>
    80008538:	00001517          	auipc	a0,0x1
    8000853c:	16850513          	addi	a0,a0,360 # 800096a0 <digits+0x50>
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	f1c080e7          	jalr	-228(ra) # 8000745c <panic>

0000000080008548 <__memset>:
    80008548:	ff010113          	addi	sp,sp,-16
    8000854c:	00813423          	sd	s0,8(sp)
    80008550:	01010413          	addi	s0,sp,16
    80008554:	1a060e63          	beqz	a2,80008710 <__memset+0x1c8>
    80008558:	40a007b3          	neg	a5,a0
    8000855c:	0077f793          	andi	a5,a5,7
    80008560:	00778693          	addi	a3,a5,7
    80008564:	00b00813          	li	a6,11
    80008568:	0ff5f593          	andi	a1,a1,255
    8000856c:	fff6071b          	addiw	a4,a2,-1
    80008570:	1b06e663          	bltu	a3,a6,8000871c <__memset+0x1d4>
    80008574:	1cd76463          	bltu	a4,a3,8000873c <__memset+0x1f4>
    80008578:	1a078e63          	beqz	a5,80008734 <__memset+0x1ec>
    8000857c:	00b50023          	sb	a1,0(a0)
    80008580:	00100713          	li	a4,1
    80008584:	1ae78463          	beq	a5,a4,8000872c <__memset+0x1e4>
    80008588:	00b500a3          	sb	a1,1(a0)
    8000858c:	00200713          	li	a4,2
    80008590:	1ae78a63          	beq	a5,a4,80008744 <__memset+0x1fc>
    80008594:	00b50123          	sb	a1,2(a0)
    80008598:	00300713          	li	a4,3
    8000859c:	18e78463          	beq	a5,a4,80008724 <__memset+0x1dc>
    800085a0:	00b501a3          	sb	a1,3(a0)
    800085a4:	00400713          	li	a4,4
    800085a8:	1ae78263          	beq	a5,a4,8000874c <__memset+0x204>
    800085ac:	00b50223          	sb	a1,4(a0)
    800085b0:	00500713          	li	a4,5
    800085b4:	1ae78063          	beq	a5,a4,80008754 <__memset+0x20c>
    800085b8:	00b502a3          	sb	a1,5(a0)
    800085bc:	00700713          	li	a4,7
    800085c0:	18e79e63          	bne	a5,a4,8000875c <__memset+0x214>
    800085c4:	00b50323          	sb	a1,6(a0)
    800085c8:	00700e93          	li	t4,7
    800085cc:	00859713          	slli	a4,a1,0x8
    800085d0:	00e5e733          	or	a4,a1,a4
    800085d4:	01059e13          	slli	t3,a1,0x10
    800085d8:	01c76e33          	or	t3,a4,t3
    800085dc:	01859313          	slli	t1,a1,0x18
    800085e0:	006e6333          	or	t1,t3,t1
    800085e4:	02059893          	slli	a7,a1,0x20
    800085e8:	40f60e3b          	subw	t3,a2,a5
    800085ec:	011368b3          	or	a7,t1,a7
    800085f0:	02859813          	slli	a6,a1,0x28
    800085f4:	0108e833          	or	a6,a7,a6
    800085f8:	03059693          	slli	a3,a1,0x30
    800085fc:	003e589b          	srliw	a7,t3,0x3
    80008600:	00d866b3          	or	a3,a6,a3
    80008604:	03859713          	slli	a4,a1,0x38
    80008608:	00389813          	slli	a6,a7,0x3
    8000860c:	00f507b3          	add	a5,a0,a5
    80008610:	00e6e733          	or	a4,a3,a4
    80008614:	000e089b          	sext.w	a7,t3
    80008618:	00f806b3          	add	a3,a6,a5
    8000861c:	00e7b023          	sd	a4,0(a5)
    80008620:	00878793          	addi	a5,a5,8
    80008624:	fed79ce3          	bne	a5,a3,8000861c <__memset+0xd4>
    80008628:	ff8e7793          	andi	a5,t3,-8
    8000862c:	0007871b          	sext.w	a4,a5
    80008630:	01d787bb          	addw	a5,a5,t4
    80008634:	0ce88e63          	beq	a7,a4,80008710 <__memset+0x1c8>
    80008638:	00f50733          	add	a4,a0,a5
    8000863c:	00b70023          	sb	a1,0(a4)
    80008640:	0017871b          	addiw	a4,a5,1
    80008644:	0cc77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0027871b          	addiw	a4,a5,2
    80008654:	0ac77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0037871b          	addiw	a4,a5,3
    80008664:	0ac77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0047871b          	addiw	a4,a5,4
    80008674:	08c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0057871b          	addiw	a4,a5,5
    80008684:	08c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0067871b          	addiw	a4,a5,6
    80008694:	06c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0077871b          	addiw	a4,a5,7
    800086a4:	06c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0087871b          	addiw	a4,a5,8
    800086b4:	04c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0097871b          	addiw	a4,a5,9
    800086c4:	04c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	00a7871b          	addiw	a4,a5,10
    800086d4:	02c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	00b7871b          	addiw	a4,a5,11
    800086e4:	02c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	00c7871b          	addiw	a4,a5,12
    800086f4:	00c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	00d7879b          	addiw	a5,a5,13
    80008704:	00c7f663          	bgeu	a5,a2,80008710 <__memset+0x1c8>
    80008708:	00f507b3          	add	a5,a0,a5
    8000870c:	00b78023          	sb	a1,0(a5)
    80008710:	00813403          	ld	s0,8(sp)
    80008714:	01010113          	addi	sp,sp,16
    80008718:	00008067          	ret
    8000871c:	00b00693          	li	a3,11
    80008720:	e55ff06f          	j	80008574 <__memset+0x2c>
    80008724:	00300e93          	li	t4,3
    80008728:	ea5ff06f          	j	800085cc <__memset+0x84>
    8000872c:	00100e93          	li	t4,1
    80008730:	e9dff06f          	j	800085cc <__memset+0x84>
    80008734:	00000e93          	li	t4,0
    80008738:	e95ff06f          	j	800085cc <__memset+0x84>
    8000873c:	00000793          	li	a5,0
    80008740:	ef9ff06f          	j	80008638 <__memset+0xf0>
    80008744:	00200e93          	li	t4,2
    80008748:	e85ff06f          	j	800085cc <__memset+0x84>
    8000874c:	00400e93          	li	t4,4
    80008750:	e7dff06f          	j	800085cc <__memset+0x84>
    80008754:	00500e93          	li	t4,5
    80008758:	e75ff06f          	j	800085cc <__memset+0x84>
    8000875c:	00600e93          	li	t4,6
    80008760:	e6dff06f          	j	800085cc <__memset+0x84>

0000000080008764 <__memmove>:
    80008764:	ff010113          	addi	sp,sp,-16
    80008768:	00813423          	sd	s0,8(sp)
    8000876c:	01010413          	addi	s0,sp,16
    80008770:	0e060863          	beqz	a2,80008860 <__memmove+0xfc>
    80008774:	fff6069b          	addiw	a3,a2,-1
    80008778:	0006881b          	sext.w	a6,a3
    8000877c:	0ea5e863          	bltu	a1,a0,8000886c <__memmove+0x108>
    80008780:	00758713          	addi	a4,a1,7
    80008784:	00a5e7b3          	or	a5,a1,a0
    80008788:	40a70733          	sub	a4,a4,a0
    8000878c:	0077f793          	andi	a5,a5,7
    80008790:	00f73713          	sltiu	a4,a4,15
    80008794:	00174713          	xori	a4,a4,1
    80008798:	0017b793          	seqz	a5,a5
    8000879c:	00e7f7b3          	and	a5,a5,a4
    800087a0:	10078863          	beqz	a5,800088b0 <__memmove+0x14c>
    800087a4:	00900793          	li	a5,9
    800087a8:	1107f463          	bgeu	a5,a6,800088b0 <__memmove+0x14c>
    800087ac:	0036581b          	srliw	a6,a2,0x3
    800087b0:	fff8081b          	addiw	a6,a6,-1
    800087b4:	02081813          	slli	a6,a6,0x20
    800087b8:	01d85893          	srli	a7,a6,0x1d
    800087bc:	00858813          	addi	a6,a1,8
    800087c0:	00058793          	mv	a5,a1
    800087c4:	00050713          	mv	a4,a0
    800087c8:	01088833          	add	a6,a7,a6
    800087cc:	0007b883          	ld	a7,0(a5)
    800087d0:	00878793          	addi	a5,a5,8
    800087d4:	00870713          	addi	a4,a4,8
    800087d8:	ff173c23          	sd	a7,-8(a4)
    800087dc:	ff0798e3          	bne	a5,a6,800087cc <__memmove+0x68>
    800087e0:	ff867713          	andi	a4,a2,-8
    800087e4:	02071793          	slli	a5,a4,0x20
    800087e8:	0207d793          	srli	a5,a5,0x20
    800087ec:	00f585b3          	add	a1,a1,a5
    800087f0:	40e686bb          	subw	a3,a3,a4
    800087f4:	00f507b3          	add	a5,a0,a5
    800087f8:	06e60463          	beq	a2,a4,80008860 <__memmove+0xfc>
    800087fc:	0005c703          	lbu	a4,0(a1)
    80008800:	00e78023          	sb	a4,0(a5)
    80008804:	04068e63          	beqz	a3,80008860 <__memmove+0xfc>
    80008808:	0015c603          	lbu	a2,1(a1)
    8000880c:	00100713          	li	a4,1
    80008810:	00c780a3          	sb	a2,1(a5)
    80008814:	04e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008818:	0025c603          	lbu	a2,2(a1)
    8000881c:	00200713          	li	a4,2
    80008820:	00c78123          	sb	a2,2(a5)
    80008824:	02e68e63          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008828:	0035c603          	lbu	a2,3(a1)
    8000882c:	00300713          	li	a4,3
    80008830:	00c781a3          	sb	a2,3(a5)
    80008834:	02e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008838:	0045c603          	lbu	a2,4(a1)
    8000883c:	00400713          	li	a4,4
    80008840:	00c78223          	sb	a2,4(a5)
    80008844:	00e68e63          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008848:	0055c603          	lbu	a2,5(a1)
    8000884c:	00500713          	li	a4,5
    80008850:	00c782a3          	sb	a2,5(a5)
    80008854:	00e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008858:	0065c703          	lbu	a4,6(a1)
    8000885c:	00e78323          	sb	a4,6(a5)
    80008860:	00813403          	ld	s0,8(sp)
    80008864:	01010113          	addi	sp,sp,16
    80008868:	00008067          	ret
    8000886c:	02061713          	slli	a4,a2,0x20
    80008870:	02075713          	srli	a4,a4,0x20
    80008874:	00e587b3          	add	a5,a1,a4
    80008878:	f0f574e3          	bgeu	a0,a5,80008780 <__memmove+0x1c>
    8000887c:	02069613          	slli	a2,a3,0x20
    80008880:	02065613          	srli	a2,a2,0x20
    80008884:	fff64613          	not	a2,a2
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00c78633          	add	a2,a5,a2
    80008890:	fff7c683          	lbu	a3,-1(a5)
    80008894:	fff78793          	addi	a5,a5,-1
    80008898:	fff70713          	addi	a4,a4,-1
    8000889c:	00d70023          	sb	a3,0(a4)
    800088a0:	fec798e3          	bne	a5,a2,80008890 <__memmove+0x12c>
    800088a4:	00813403          	ld	s0,8(sp)
    800088a8:	01010113          	addi	sp,sp,16
    800088ac:	00008067          	ret
    800088b0:	02069713          	slli	a4,a3,0x20
    800088b4:	02075713          	srli	a4,a4,0x20
    800088b8:	00170713          	addi	a4,a4,1
    800088bc:	00e50733          	add	a4,a0,a4
    800088c0:	00050793          	mv	a5,a0
    800088c4:	0005c683          	lbu	a3,0(a1)
    800088c8:	00178793          	addi	a5,a5,1
    800088cc:	00158593          	addi	a1,a1,1
    800088d0:	fed78fa3          	sb	a3,-1(a5)
    800088d4:	fee798e3          	bne	a5,a4,800088c4 <__memmove+0x160>
    800088d8:	f89ff06f          	j	80008860 <__memmove+0xfc>
	...
