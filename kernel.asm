
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a9013103          	ld	sp,-1392(sp) # 8000ba90 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4b4060ef          	jal	ra,800064d0 <start>

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
    80001088:	205020ef          	jal	ra,80003a8c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z4idlePv>:
#include "../h/Tests.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void idle(void* args)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00113423          	sd	ra,8(sp)
    80001564:	00813023          	sd	s0,0(sp)
    80001568:	01010413          	addi	s0,sp,16
    while(true)
    {
        printString("Idle\n");
    8000156c:	00008517          	auipc	a0,0x8
    80001570:	ab450513          	addi	a0,a0,-1356 # 80009020 <CONSOLE_STATUS+0x10>
    80001574:	00004097          	auipc	ra,0x4
    80001578:	5d4080e7          	jalr	1492(ra) # 80005b48 <_Z11printStringPKc>
        thread_dispatch();
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	db8080e7          	jalr	-584(ra) # 80001334 <thread_dispatch>
    while(true)
    80001584:	fe9ff06f          	j	8000156c <_Z4idlePv+0x10>

0000000080001588 <_Z15thread1FunctionPv>:
    }
}

void thread1Function(void* p)
{
    80001588:	fe010113          	addi	sp,sp,-32
    8000158c:	00113c23          	sd	ra,24(sp)
    80001590:	00813823          	sd	s0,16(sp)
    80001594:	00913423          	sd	s1,8(sp)
    80001598:	02010413          	addi	s0,sp,32
    printString("Thread 1 started...\n");
    8000159c:	00008517          	auipc	a0,0x8
    800015a0:	a8c50513          	addi	a0,a0,-1396 # 80009028 <CONSOLE_STATUS+0x18>
    800015a4:	00004097          	auipc	ra,0x4
    800015a8:	5a4080e7          	jalr	1444(ra) # 80005b48 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 i = 0; i < num;i++)
    800015ac:	00000493          	li	s1,0
    800015b0:	0440006f          	j	800015f4 <_Z15thread1FunctionPv+0x6c>
    {
        if(i % 150 == 0 && i > 0)
            thread_dispatch();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	d80080e7          	jalr	-640(ra) # 80001334 <thread_dispatch>
        printString("i : ");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	a8450513          	addi	a0,a0,-1404 # 80009040 <CONSOLE_STATUS+0x30>
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	584080e7          	jalr	1412(ra) # 80005b48 <_Z11printStringPKc>
        printInt(i);
    800015cc:	00000613          	li	a2,0
    800015d0:	00a00593          	li	a1,10
    800015d4:	0004851b          	sext.w	a0,s1
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	708080e7          	jalr	1800(ra) # 80005ce0 <_Z8printIntiii>
        printString("\n");
    800015e0:	00008517          	auipc	a0,0x8
    800015e4:	b2050513          	addi	a0,a0,-1248 # 80009100 <CONSOLE_STATUS+0xf0>
    800015e8:	00004097          	auipc	ra,0x4
    800015ec:	560080e7          	jalr	1376(ra) # 80005b48 <_Z11printStringPKc>
    for(uint64 i = 0; i < num;i++)
    800015f0:	00148493          	addi	s1,s1,1
    800015f4:	000027b7          	lui	a5,0x2
    800015f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015fc:	0097ec63          	bltu	a5,s1,80001614 <_Z15thread1FunctionPv+0x8c>
        if(i % 150 == 0 && i > 0)
    80001600:	09600793          	li	a5,150
    80001604:	02f4f7b3          	remu	a5,s1,a5
    80001608:	fa079ae3          	bnez	a5,800015bc <_Z15thread1FunctionPv+0x34>
    8000160c:	fa0488e3          	beqz	s1,800015bc <_Z15thread1FunctionPv+0x34>
    80001610:	fa5ff06f          	j	800015b4 <_Z15thread1FunctionPv+0x2c>
    }
}
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret

0000000080001628 <_Z15thread2FunctionPv>:

void thread2Function(void* p)
{
    80001628:	fe010113          	addi	sp,sp,-32
    8000162c:	00113c23          	sd	ra,24(sp)
    80001630:	00813823          	sd	s0,16(sp)
    80001634:	00913423          	sd	s1,8(sp)
    80001638:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    8000163c:	00008517          	auipc	a0,0x8
    80001640:	a0c50513          	addi	a0,a0,-1524 # 80009048 <CONSOLE_STATUS+0x38>
    80001644:	00004097          	auipc	ra,0x4
    80001648:	504080e7          	jalr	1284(ra) # 80005b48 <_Z11printStringPKc>
    uint64 num = 10000;
    for(uint64 j = 0; j < num;j++)
    8000164c:	00000493          	li	s1,0
    80001650:	0440006f          	j	80001694 <_Z15thread2FunctionPv+0x6c>
    {
        if(j % 50 == 0 && j > 0)
            thread_dispatch();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	ce0080e7          	jalr	-800(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    8000165c:	00008517          	auipc	a0,0x8
    80001660:	a0450513          	addi	a0,a0,-1532 # 80009060 <CONSOLE_STATUS+0x50>
    80001664:	00004097          	auipc	ra,0x4
    80001668:	4e4080e7          	jalr	1252(ra) # 80005b48 <_Z11printStringPKc>
        printInt(j);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	0004851b          	sext.w	a0,s1
    80001678:	00004097          	auipc	ra,0x4
    8000167c:	668080e7          	jalr	1640(ra) # 80005ce0 <_Z8printIntiii>
        printString("\n");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	a8050513          	addi	a0,a0,-1408 # 80009100 <CONSOLE_STATUS+0xf0>
    80001688:	00004097          	auipc	ra,0x4
    8000168c:	4c0080e7          	jalr	1216(ra) # 80005b48 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001690:	00148493          	addi	s1,s1,1
    80001694:	000027b7          	lui	a5,0x2
    80001698:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000169c:	0097ec63          	bltu	a5,s1,800016b4 <_Z15thread2FunctionPv+0x8c>
        if(j % 50 == 0 && j > 0)
    800016a0:	03200793          	li	a5,50
    800016a4:	02f4f7b3          	remu	a5,s1,a5
    800016a8:	fa079ae3          	bnez	a5,8000165c <_Z15thread2FunctionPv+0x34>
    800016ac:	fa0488e3          	beqz	s1,8000165c <_Z15thread2FunctionPv+0x34>
    800016b0:	fa5ff06f          	j	80001654 <_Z15thread2FunctionPv+0x2c>
    }
}
    800016b4:	01813083          	ld	ra,24(sp)
    800016b8:	01013403          	ld	s0,16(sp)
    800016bc:	00813483          	ld	s1,8(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_ZN12TestPeriodic18periodicActivationEv>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {

}

void TestPeriodic::periodicActivation()
{
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
    for(int i = 0 ; i < 10000;i++)
    800016dc:	00000493          	li	s1,0
    800016e0:	000027b7          	lui	a5,0x2
    800016e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800016e8:	0297c863          	blt	a5,s1,80001718 <_ZN12TestPeriodic18periodicActivationEv+0x50>
    {
        printString("i : ");
    800016ec:	00008517          	auipc	a0,0x8
    800016f0:	95450513          	addi	a0,a0,-1708 # 80009040 <CONSOLE_STATUS+0x30>
    800016f4:	00004097          	auipc	ra,0x4
    800016f8:	454080e7          	jalr	1108(ra) # 80005b48 <_Z11printStringPKc>
        printInt(i);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	00048513          	mv	a0,s1
    80001708:	00004097          	auipc	ra,0x4
    8000170c:	5d8080e7          	jalr	1496(ra) # 80005ce0 <_Z8printIntiii>
    for(int i = 0 ; i < 10000;i++)
    80001710:	0014849b          	addiw	s1,s1,1
    80001714:	fcdff06f          	j	800016e0 <_ZN12TestPeriodic18periodicActivationEv+0x18>
    }
}
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	00813483          	ld	s1,8(sp)
    80001724:	02010113          	addi	sp,sp,32
    80001728:	00008067          	ret

000000008000172c <_Z20thread2FunctionTest2Pv>:
{
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    printString("Thread 2 started...\n");
    80001740:	00008517          	auipc	a0,0x8
    80001744:	90850513          	addi	a0,a0,-1784 # 80009048 <CONSOLE_STATUS+0x38>
    80001748:	00004097          	auipc	ra,0x4
    8000174c:	400080e7          	jalr	1024(ra) # 80005b48 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    80001750:	00000493          	li	s1,0
    80001754:	0500006f          	j	800017a4 <_Z20thread2FunctionTest2Pv+0x78>
            thread_exit();
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	bfc080e7          	jalr	-1028(ra) # 80001354 <thread_exit>
    80001760:	0580006f          	j	800017b8 <_Z20thread2FunctionTest2Pv+0x8c>
            thread_dispatch();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	bd0080e7          	jalr	-1072(ra) # 80001334 <thread_dispatch>
        printString("j : ");
    8000176c:	00008517          	auipc	a0,0x8
    80001770:	8f450513          	addi	a0,a0,-1804 # 80009060 <CONSOLE_STATUS+0x50>
    80001774:	00004097          	auipc	ra,0x4
    80001778:	3d4080e7          	jalr	980(ra) # 80005b48 <_Z11printStringPKc>
        printInt(j);
    8000177c:	00000613          	li	a2,0
    80001780:	00a00593          	li	a1,10
    80001784:	0004851b          	sext.w	a0,s1
    80001788:	00004097          	auipc	ra,0x4
    8000178c:	558080e7          	jalr	1368(ra) # 80005ce0 <_Z8printIntiii>
        printString("\n");
    80001790:	00008517          	auipc	a0,0x8
    80001794:	97050513          	addi	a0,a0,-1680 # 80009100 <CONSOLE_STATUS+0xf0>
    80001798:	00004097          	auipc	ra,0x4
    8000179c:	3b0080e7          	jalr	944(ra) # 80005b48 <_Z11printStringPKc>
    for(uint64 j = 0; j < num;j++)
    800017a0:	00148493          	addi	s1,s1,1
    800017a4:	000027b7          	lui	a5,0x2
    800017a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017ac:	0297e063          	bltu	a5,s1,800017cc <_Z20thread2FunctionTest2Pv+0xa0>
        if(j == 200)
    800017b0:	0c800793          	li	a5,200
    800017b4:	faf482e3          	beq	s1,a5,80001758 <_Z20thread2FunctionTest2Pv+0x2c>
        if(j % 50 == 0 && j > 0)
    800017b8:	03200793          	li	a5,50
    800017bc:	02f4f7b3          	remu	a5,s1,a5
    800017c0:	fa0796e3          	bnez	a5,8000176c <_Z20thread2FunctionTest2Pv+0x40>
    800017c4:	fa0484e3          	beqz	s1,8000176c <_Z20thread2FunctionTest2Pv+0x40>
    800017c8:	f9dff06f          	j	80001764 <_Z20thread2FunctionTest2Pv+0x38>
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	02010113          	addi	sp,sp,32
    800017dc:	00008067          	ret

00000000800017e0 <_Z9consumerAPv>:
sem_t spaceAvailable, itemAvailable;
char string[11] = "this is ni";

void consumerA(void *arg)
{
    while(head!=10)
    800017e0:	0000a717          	auipc	a4,0xa
    800017e4:	32072703          	lw	a4,800(a4) # 8000bb00 <head>
    800017e8:	00a00793          	li	a5,10
    800017ec:	06f70c63          	beq	a4,a5,80001864 <_Z9consumerAPv+0x84>
{
    800017f0:	fe010113          	addi	sp,sp,-32
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00813823          	sd	s0,16(sp)
    800017fc:	00913423          	sd	s1,8(sp)
    80001800:	02010413          	addi	s0,sp,32
    {
        sem_wait(itemAvailable);
    80001804:	0000a497          	auipc	s1,0xa
    80001808:	2fc48493          	addi	s1,s1,764 # 8000bb00 <head>
    8000180c:	0084b503          	ld	a0,8(s1)
    80001810:	00000097          	auipc	ra,0x0
    80001814:	bd0080e7          	jalr	-1072(ra) # 800013e0 <sem_wait>
        __putc(buffer[head++]);
    80001818:	0004a783          	lw	a5,0(s1)
    8000181c:	0017871b          	addiw	a4,a5,1
    80001820:	00e4a023          	sw	a4,0(s1)
    80001824:	00f487b3          	add	a5,s1,a5
    80001828:	0107c503          	lbu	a0,16(a5)
    8000182c:	00007097          	auipc	ra,0x7
    80001830:	d60080e7          	jalr	-672(ra) # 8000858c <__putc>
        sem_signal(spaceAvailable);
    80001834:	0204b503          	ld	a0,32(s1)
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	bd4080e7          	jalr	-1068(ra) # 8000140c <sem_signal>
    while(head!=10)
    80001840:	0000a717          	auipc	a4,0xa
    80001844:	2c072703          	lw	a4,704(a4) # 8000bb00 <head>
    80001848:	00a00793          	li	a5,10
    8000184c:	faf71ce3          	bne	a4,a5,80001804 <_Z9consumerAPv+0x24>
    }
}
    80001850:	01813083          	ld	ra,24(sp)
    80001854:	01013403          	ld	s0,16(sp)
    80001858:	00813483          	ld	s1,8(sp)
    8000185c:	02010113          	addi	sp,sp,32
    80001860:	00008067          	ret
    80001864:	00008067          	ret

0000000080001868 <_Z9producerAPv>:

void producerA(void *arg)
{
    while(tail!=10)
    80001868:	0000a717          	auipc	a4,0xa
    8000186c:	2c072703          	lw	a4,704(a4) # 8000bb28 <tail>
    80001870:	00a00793          	li	a5,10
    80001874:	08f70063          	beq	a4,a5,800018f4 <_Z9producerAPv+0x8c>
{
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
    {
        sem_wait(spaceAvailable);
    8000188c:	0000a497          	auipc	s1,0xa
    80001890:	27448493          	addi	s1,s1,628 # 8000bb00 <head>
    80001894:	0204b503          	ld	a0,32(s1)
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	b48080e7          	jalr	-1208(ra) # 800013e0 <sem_wait>
        buffer[tail] = string[tail];
    800018a0:	0284a783          	lw	a5,40(s1)
    800018a4:	0000a717          	auipc	a4,0xa
    800018a8:	04c70713          	addi	a4,a4,76 # 8000b8f0 <string>
    800018ac:	00f70733          	add	a4,a4,a5
    800018b0:	00074683          	lbu	a3,0(a4)
    800018b4:	00f48733          	add	a4,s1,a5
    800018b8:	00d70823          	sb	a3,16(a4)
        tail++;
    800018bc:	0017879b          	addiw	a5,a5,1
    800018c0:	02f4a423          	sw	a5,40(s1)
        sem_signal(itemAvailable);
    800018c4:	0084b503          	ld	a0,8(s1)
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	b44080e7          	jalr	-1212(ra) # 8000140c <sem_signal>
    while(tail!=10)
    800018d0:	0000a717          	auipc	a4,0xa
    800018d4:	25872703          	lw	a4,600(a4) # 8000bb28 <tail>
    800018d8:	00a00793          	li	a5,10
    800018dc:	faf718e3          	bne	a4,a5,8000188c <_Z9producerAPv+0x24>
    }
}
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret
    800018f4:	00008067          	ret

00000000800018f8 <_Z11threadTest1v>:
{
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00913423          	sd	s1,8(sp)
    80001908:	01213023          	sd	s2,0(sp)
    8000190c:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(&thread1Function, 0);
    80001910:	01000513          	li	a0,16
    80001914:	00002097          	auipc	ra,0x2
    80001918:	d18080e7          	jalr	-744(ra) # 8000362c <_Znwm>
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000613          	li	a2,0
    80001924:	00000597          	auipc	a1,0x0
    80001928:	c6458593          	addi	a1,a1,-924 # 80001588 <_Z15thread1FunctionPv>
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	e98080e7          	jalr	-360(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001934:	00048513          	mv	a0,s1
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	dc4080e7          	jalr	-572(ra) # 800036fc <_ZN6Thread5startEv>
    Thread* t2 = new Thread(&thread2Function, 0);
    80001940:	01000513          	li	a0,16
    80001944:	00002097          	auipc	ra,0x2
    80001948:	ce8080e7          	jalr	-792(ra) # 8000362c <_Znwm>
    8000194c:	00050493          	mv	s1,a0
    80001950:	00000613          	li	a2,0
    80001954:	00000597          	auipc	a1,0x0
    80001958:	cd458593          	addi	a1,a1,-812 # 80001628 <_Z15thread2FunctionPv>
    8000195c:	00002097          	auipc	ra,0x2
    80001960:	e68080e7          	jalr	-408(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	d94080e7          	jalr	-620(ra) # 800036fc <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001970:	00002097          	auipc	ra,0x2
    80001974:	094080e7          	jalr	148(ra) # 80003a04 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001978:	00007517          	auipc	a0,0x7
    8000197c:	6f050513          	addi	a0,a0,1776 # 80009068 <CONSOLE_STATUS+0x58>
    80001980:	00004097          	auipc	ra,0x4
    80001984:	1c8080e7          	jalr	456(ra) # 80005b48 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	09c080e7          	jalr	156(ra) # 80003a24 <_ZN5Riscv17disableInterruptsEv>
}
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	00013903          	ld	s2,0(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
    800019a8:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    800019ac:	00048513          	mv	a0,s1
    800019b0:	00002097          	auipc	ra,0x2
    800019b4:	ca4080e7          	jalr	-860(ra) # 80003654 <_ZdlPv>
    800019b8:	00090513          	mv	a0,s2
    800019bc:	0000b097          	auipc	ra,0xb
    800019c0:	2ec080e7          	jalr	748(ra) # 8000cca8 <_Unwind_Resume>
    800019c4:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(&thread2Function, 0);
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	c88080e7          	jalr	-888(ra) # 80003654 <_ZdlPv>
    800019d4:	00090513          	mv	a0,s2
    800019d8:	0000b097          	auipc	ra,0xb
    800019dc:	2d0080e7          	jalr	720(ra) # 8000cca8 <_Unwind_Resume>

00000000800019e0 <_Z11threadTest2v>:
{
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	01213023          	sd	s2,0(sp)
    800019f4:	02010413          	addi	s0,sp,32
    Thread* idleThread = new Thread(&idle, 0);
    800019f8:	01000513          	li	a0,16
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	c30080e7          	jalr	-976(ra) # 8000362c <_Znwm>
    80001a04:	00050493          	mv	s1,a0
    80001a08:	00000613          	li	a2,0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	b5058593          	addi	a1,a1,-1200 # 8000155c <_Z4idlePv>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	db0080e7          	jalr	-592(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    idleThread->start();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	cdc080e7          	jalr	-804(ra) # 800036fc <_ZN6Thread5startEv>
    Thread* t1 = new Thread(&thread1Function, 0);
    80001a28:	01000513          	li	a0,16
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	c00080e7          	jalr	-1024(ra) # 8000362c <_Znwm>
    80001a34:	00050493          	mv	s1,a0
    80001a38:	00000613          	li	a2,0
    80001a3c:	00000597          	auipc	a1,0x0
    80001a40:	b4c58593          	addi	a1,a1,-1204 # 80001588 <_Z15thread1FunctionPv>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	d80080e7          	jalr	-640(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	00002097          	auipc	ra,0x2
    80001a54:	cac080e7          	jalr	-852(ra) # 800036fc <_ZN6Thread5startEv>
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001a58:	01000513          	li	a0,16
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	bd0080e7          	jalr	-1072(ra) # 8000362c <_Znwm>
    80001a64:	00050493          	mv	s1,a0
    80001a68:	00000613          	li	a2,0
    80001a6c:	00000597          	auipc	a1,0x0
    80001a70:	cc058593          	addi	a1,a1,-832 # 8000172c <_Z20thread2FunctionTest2Pv>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	d50080e7          	jalr	-688(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    t2->start();
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00002097          	auipc	ra,0x2
    80001a84:	c7c080e7          	jalr	-900(ra) # 800036fc <_ZN6Thread5startEv>
    Riscv::enableInterrupts();
    80001a88:	00002097          	auipc	ra,0x2
    80001a8c:	f7c080e7          	jalr	-132(ra) # 80003a04 <_ZN5Riscv16enableInterruptsEv>
    printString("End...\n");
    80001a90:	00007517          	auipc	a0,0x7
    80001a94:	5d850513          	addi	a0,a0,1496 # 80009068 <CONSOLE_STATUS+0x58>
    80001a98:	00004097          	auipc	ra,0x4
    80001a9c:	0b0080e7          	jalr	176(ra) # 80005b48 <_Z11printStringPKc>
    Riscv::disableInterrupts();
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	f84080e7          	jalr	-124(ra) # 80003a24 <_ZN5Riscv17disableInterruptsEv>
}
    80001aa8:	01813083          	ld	ra,24(sp)
    80001aac:	01013403          	ld	s0,16(sp)
    80001ab0:	00813483          	ld	s1,8(sp)
    80001ab4:	00013903          	ld	s2,0(sp)
    80001ab8:	02010113          	addi	sp,sp,32
    80001abc:	00008067          	ret
    80001ac0:	00050913          	mv	s2,a0
    Thread* idleThread = new Thread(&idle, 0);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	b8c080e7          	jalr	-1140(ra) # 80003654 <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	0000b097          	auipc	ra,0xb
    80001ad8:	1d4080e7          	jalr	468(ra) # 8000cca8 <_Unwind_Resume>
    80001adc:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(&thread1Function, 0);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00002097          	auipc	ra,0x2
    80001ae8:	b70080e7          	jalr	-1168(ra) # 80003654 <_ZdlPv>
    80001aec:	00090513          	mv	a0,s2
    80001af0:	0000b097          	auipc	ra,0xb
    80001af4:	1b8080e7          	jalr	440(ra) # 8000cca8 <_Unwind_Resume>
    80001af8:	00050913          	mv	s2,a0
    Thread* t2  = new Thread(&thread2FunctionTest2, 0);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	b54080e7          	jalr	-1196(ra) # 80003654 <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	0000b097          	auipc	ra,0xb
    80001b10:	19c080e7          	jalr	412(ra) # 8000cca8 <_Unwind_Resume>

0000000080001b14 <_Z10mallocFreev>:
{
    80001b14:	cc010113          	addi	sp,sp,-832
    80001b18:	32113c23          	sd	ra,824(sp)
    80001b1c:	32813823          	sd	s0,816(sp)
    80001b20:	32913423          	sd	s1,808(sp)
    80001b24:	34010413          	addi	s0,sp,832
    printString("mallocFree\n");
    80001b28:	00007517          	auipc	a0,0x7
    80001b2c:	54850513          	addi	a0,a0,1352 # 80009070 <CONSOLE_STATUS+0x60>
    80001b30:	00004097          	auipc	ra,0x4
    80001b34:	018080e7          	jalr	24(ra) # 80005b48 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001b38:	00000493          	li	s1,0
    80001b3c:	0080006f          	j	80001b44 <_Z10mallocFreev+0x30>
    80001b40:	0014849b          	addiw	s1,s1,1
    80001b44:	06300793          	li	a5,99
    80001b48:	0497c463          	blt	a5,s1,80001b90 <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(100);
    80001b4c:	06400513          	li	a0,100
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	708080e7          	jalr	1800(ra) # 80001258 <mem_alloc>
    80001b58:	00349793          	slli	a5,s1,0x3
    80001b5c:	fe040713          	addi	a4,s0,-32
    80001b60:	00f707b3          	add	a5,a4,a5
    80001b64:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001b68:	fc051ce3          	bnez	a0,80001b40 <_Z10mallocFreev+0x2c>
            printString("not OK\n");
    80001b6c:	00007517          	auipc	a0,0x7
    80001b70:	51450513          	addi	a0,a0,1300 # 80009080 <CONSOLE_STATUS+0x70>
    80001b74:	00004097          	auipc	ra,0x4
    80001b78:	fd4080e7          	jalr	-44(ra) # 80005b48 <_Z11printStringPKc>
}
    80001b7c:	33813083          	ld	ra,824(sp)
    80001b80:	33013403          	ld	s0,816(sp)
    80001b84:	32813483          	ld	s1,808(sp)
    80001b88:	34010113          	addi	sp,sp,832
    80001b8c:	00008067          	ret
    for(int i = 0 ; i < num;i+=2)
    80001b90:	00000493          	li	s1,0
    80001b94:	06300793          	li	a5,99
    80001b98:	0297ce63          	blt	a5,s1,80001bd4 <_Z10mallocFreev+0xc0>
        int retval = mem_free(addrs[i]);
    80001b9c:	00349793          	slli	a5,s1,0x3
    80001ba0:	fe040713          	addi	a4,s0,-32
    80001ba4:	00f707b3          	add	a5,a4,a5
    80001ba8:	ce07b503          	ld	a0,-800(a5)
    80001bac:	fffff097          	auipc	ra,0xfffff
    80001bb0:	6dc080e7          	jalr	1756(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001bb4:	00051663          	bnez	a0,80001bc0 <_Z10mallocFreev+0xac>
    for(int i = 0 ; i < num;i+=2)
    80001bb8:	0024849b          	addiw	s1,s1,2
    80001bbc:	fd9ff06f          	j	80001b94 <_Z10mallocFreev+0x80>
            printString("not OK\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	4c050513          	addi	a0,a0,1216 # 80009080 <CONSOLE_STATUS+0x70>
    80001bc8:	00004097          	auipc	ra,0x4
    80001bcc:	f80080e7          	jalr	-128(ra) # 80005b48 <_Z11printStringPKc>
            return;
    80001bd0:	fadff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    for(int i = 0 ; i < num;i+=2)
    80001bd4:	00000493          	li	s1,0
    80001bd8:	0080006f          	j	80001be0 <_Z10mallocFreev+0xcc>
    80001bdc:	0024849b          	addiw	s1,s1,2
    80001be0:	06300793          	li	a5,99
    80001be4:	0297cc63          	blt	a5,s1,80001c1c <_Z10mallocFreev+0x108>
        addrs[i] = mem_alloc(20);
    80001be8:	01400513          	li	a0,20
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	66c080e7          	jalr	1644(ra) # 80001258 <mem_alloc>
    80001bf4:	00349793          	slli	a5,s1,0x3
    80001bf8:	fe040713          	addi	a4,s0,-32
    80001bfc:	00f707b3          	add	a5,a4,a5
    80001c00:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001c04:	fc051ce3          	bnez	a0,80001bdc <_Z10mallocFreev+0xc8>
            printString("not OK\n");
    80001c08:	00007517          	auipc	a0,0x7
    80001c0c:	47850513          	addi	a0,a0,1144 # 80009080 <CONSOLE_STATUS+0x70>
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	f38080e7          	jalr	-200(ra) # 80005b48 <_Z11printStringPKc>
            return;
    80001c18:	f65ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    for(int i = 0; i < num;i++)
    80001c1c:	00000493          	li	s1,0
    80001c20:	06300793          	li	a5,99
    80001c24:	0297ce63          	blt	a5,s1,80001c60 <_Z10mallocFreev+0x14c>
        int retval = mem_free(addrs[i]);
    80001c28:	00349793          	slli	a5,s1,0x3
    80001c2c:	fe040713          	addi	a4,s0,-32
    80001c30:	00f707b3          	add	a5,a4,a5
    80001c34:	ce07b503          	ld	a0,-800(a5)
    80001c38:	fffff097          	auipc	ra,0xfffff
    80001c3c:	650080e7          	jalr	1616(ra) # 80001288 <mem_free>
        if(retval != 0)
    80001c40:	00051663          	bnez	a0,80001c4c <_Z10mallocFreev+0x138>
    for(int i = 0; i < num;i++)
    80001c44:	0014849b          	addiw	s1,s1,1
    80001c48:	fd9ff06f          	j	80001c20 <_Z10mallocFreev+0x10c>
            printString("not OK\n");
    80001c4c:	00007517          	auipc	a0,0x7
    80001c50:	43450513          	addi	a0,a0,1076 # 80009080 <CONSOLE_STATUS+0x70>
    80001c54:	00004097          	auipc	ra,0x4
    80001c58:	ef4080e7          	jalr	-268(ra) # 80005b48 <_Z11printStringPKc>
            return;
    80001c5c:	f21ff06f          	j	80001b7c <_Z10mallocFreev+0x68>
    printString("OK\n");
    80001c60:	00007517          	auipc	a0,0x7
    80001c64:	42850513          	addi	a0,a0,1064 # 80009088 <CONSOLE_STATUS+0x78>
    80001c68:	00004097          	auipc	ra,0x4
    80001c6c:	ee0080e7          	jalr	-288(ra) # 80005b48 <_Z11printStringPKc>
    80001c70:	f0dff06f          	j	80001b7c <_Z10mallocFreev+0x68>

0000000080001c74 <_Z9bigMallocv>:
{
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    printString("bigMalloc\n");
    80001c84:	00007517          	auipc	a0,0x7
    80001c88:	40c50513          	addi	a0,a0,1036 # 80009090 <CONSOLE_STATUS+0x80>
    80001c8c:	00004097          	auipc	ra,0x4
    80001c90:	ebc080e7          	jalr	-324(ra) # 80005b48 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c94:	0000a797          	auipc	a5,0xa
    80001c98:	e147b783          	ld	a5,-492(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001c9c:	0007b503          	ld	a0,0(a5)
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	dc87b783          	ld	a5,-568(a5) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ca8:	0007b783          	ld	a5,0(a5)
    80001cac:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cb0:	06450513          	addi	a0,a0,100
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	5a4080e7          	jalr	1444(ra) # 80001258 <mem_alloc>
    if(p == 0)
    80001cbc:	02050263          	beqz	a0,80001ce0 <_Z9bigMallocv+0x6c>
        printString("not OK\n");
    80001cc0:	00007517          	auipc	a0,0x7
    80001cc4:	3c050513          	addi	a0,a0,960 # 80009080 <CONSOLE_STATUS+0x70>
    80001cc8:	00004097          	auipc	ra,0x4
    80001ccc:	e80080e7          	jalr	-384(ra) # 80005b48 <_Z11printStringPKc>
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret
        printString("OK\n");
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	3a850513          	addi	a0,a0,936 # 80009088 <CONSOLE_STATUS+0x78>
    80001ce8:	00004097          	auipc	ra,0x4
    80001cec:	e60080e7          	jalr	-416(ra) # 80005b48 <_Z11printStringPKc>
    80001cf0:	fe1ff06f          	j	80001cd0 <_Z9bigMallocv+0x5c>

0000000080001cf4 <_Z17lotOfSmallMallocsv>:
{
    80001cf4:	fd010113          	addi	sp,sp,-48
    80001cf8:	02113423          	sd	ra,40(sp)
    80001cfc:	02813023          	sd	s0,32(sp)
    80001d00:	00913c23          	sd	s1,24(sp)
    80001d04:	01213823          	sd	s2,16(sp)
    80001d08:	01313423          	sd	s3,8(sp)
    80001d0c:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");
    80001d10:	00007517          	auipc	a0,0x7
    80001d14:	39050513          	addi	a0,a0,912 # 800090a0 <CONSOLE_STATUS+0x90>
    80001d18:	00004097          	auipc	ra,0x4
    80001d1c:	e30080e7          	jalr	-464(ra) # 80005b48 <_Z11printStringPKc>
    for(uint64 i = 0; i < N;i++)
    80001d20:	00000493          	li	s1,0
    uint64 sum = 0;
    80001d24:	00000993          	li	s3,0
    uint64 cnt = 0;
    80001d28:	00000913          	li	s2,0
    80001d2c:	0180006f          	j	80001d44 <_Z17lotOfSmallMallocsv+0x50>
        t->a = X;
    80001d30:	00a00793          	li	a5,10
    80001d34:	00f53023          	sd	a5,0(a0)
        sum+=t->a;
    80001d38:	00a98993          	addi	s3,s3,10
        cnt++;
    80001d3c:	00190913          	addi	s2,s2,1
    for(uint64 i = 0; i < N;i++)
    80001d40:	00148493          	addi	s1,s1,1
    80001d44:	000027b7          	lui	a5,0x2
    80001d48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d4c:	0097ea63          	bltu	a5,s1,80001d60 <_Z17lotOfSmallMallocsv+0x6c>
        Test* t = (Test*)mem_alloc(sizeof(Test));
    80001d50:	00800513          	li	a0,8
    80001d54:	fffff097          	auipc	ra,0xfffff
    80001d58:	504080e7          	jalr	1284(ra) # 80001258 <mem_alloc>
        if(t == 0)
    80001d5c:	fc051ae3          	bnez	a0,80001d30 <_Z17lotOfSmallMallocsv+0x3c>
    printInt(cnt);
    80001d60:	00000613          	li	a2,0
    80001d64:	00a00593          	li	a1,10
    80001d68:	0009051b          	sext.w	a0,s2
    80001d6c:	00004097          	auipc	ra,0x4
    80001d70:	f74080e7          	jalr	-140(ra) # 80005ce0 <_Z8printIntiii>
    printString("\n");
    80001d74:	00007517          	auipc	a0,0x7
    80001d78:	38c50513          	addi	a0,a0,908 # 80009100 <CONSOLE_STATUS+0xf0>
    80001d7c:	00004097          	auipc	ra,0x4
    80001d80:	dcc080e7          	jalr	-564(ra) # 80005b48 <_Z11printStringPKc>
    if(sum == X*cnt)
    80001d84:	00291793          	slli	a5,s2,0x2
    80001d88:	01278933          	add	s2,a5,s2
    80001d8c:	00191913          	slli	s2,s2,0x1
    80001d90:	03390863          	beq	s2,s3,80001dc0 <_Z17lotOfSmallMallocsv+0xcc>
        printString("not OK\n");
    80001d94:	00007517          	auipc	a0,0x7
    80001d98:	2ec50513          	addi	a0,a0,748 # 80009080 <CONSOLE_STATUS+0x70>
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	dac080e7          	jalr	-596(ra) # 80005b48 <_Z11printStringPKc>
}
    80001da4:	02813083          	ld	ra,40(sp)
    80001da8:	02013403          	ld	s0,32(sp)
    80001dac:	01813483          	ld	s1,24(sp)
    80001db0:	01013903          	ld	s2,16(sp)
    80001db4:	00813983          	ld	s3,8(sp)
    80001db8:	03010113          	addi	sp,sp,48
    80001dbc:	00008067          	ret
        printString("OK\n");
    80001dc0:	00007517          	auipc	a0,0x7
    80001dc4:	2c850513          	addi	a0,a0,712 # 80009088 <CONSOLE_STATUS+0x78>
    80001dc8:	00004097          	auipc	ra,0x4
    80001dcc:	d80080e7          	jalr	-640(ra) # 80005b48 <_Z11printStringPKc>
    80001dd0:	fd5ff06f          	j	80001da4 <_Z17lotOfSmallMallocsv+0xb0>

0000000080001dd4 <_Z7badFreev>:
{
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    printString("badFree\n");
    80001de4:	00007517          	auipc	a0,0x7
    80001de8:	2d450513          	addi	a0,a0,724 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001dec:	00004097          	auipc	ra,0x4
    80001df0:	d5c080e7          	jalr	-676(ra) # 80005b48 <_Z11printStringPKc>
    Test* t = (Test*)mem_alloc(sizeof(Test));
    80001df4:	00800513          	li	a0,8
    80001df8:	fffff097          	auipc	ra,0xfffff
    80001dfc:	460080e7          	jalr	1120(ra) # 80001258 <mem_alloc>
    uint64 retval = mem_free((char*)t + 2);
    80001e00:	00250513          	addi	a0,a0,2
    80001e04:	fffff097          	auipc	ra,0xfffff
    80001e08:	484080e7          	jalr	1156(ra) # 80001288 <mem_free>
    if(retval == 0)
    80001e0c:	02051263          	bnez	a0,80001e30 <_Z7badFreev+0x5c>
        printString("not OK\n");
    80001e10:	00007517          	auipc	a0,0x7
    80001e14:	27050513          	addi	a0,a0,624 # 80009080 <CONSOLE_STATUS+0x70>
    80001e18:	00004097          	auipc	ra,0x4
    80001e1c:	d30080e7          	jalr	-720(ra) # 80005b48 <_Z11printStringPKc>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret
         printString("OK\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	25850513          	addi	a0,a0,600 # 80009088 <CONSOLE_STATUS+0x78>
    80001e38:	00004097          	auipc	ra,0x4
    80001e3c:	d10080e7          	jalr	-752(ra) # 80005b48 <_Z11printStringPKc>
}
    80001e40:	fe1ff06f          	j	80001e20 <_Z7badFreev+0x4c>

0000000080001e44 <_Z13stressTestingv>:
{
    80001e44:	cc010113          	addi	sp,sp,-832
    80001e48:	32113c23          	sd	ra,824(sp)
    80001e4c:	32813823          	sd	s0,816(sp)
    80001e50:	32913423          	sd	s1,808(sp)
    80001e54:	33213023          	sd	s2,800(sp)
    80001e58:	34010413          	addi	s0,sp,832
    printString("stressTesting\n");
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	26c50513          	addi	a0,a0,620 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001e64:	00004097          	auipc	ra,0x4
    80001e68:	ce4080e7          	jalr	-796(ra) # 80005b48 <_Z11printStringPKc>
    for(int i = 0; i < num;i++)
    80001e6c:	00000493          	li	s1,0
    80001e70:	0080006f          	j	80001e78 <_Z13stressTestingv+0x34>
    80001e74:	0014849b          	addiw	s1,s1,1
    80001e78:	06300793          	li	a5,99
    80001e7c:	0497c663          	blt	a5,s1,80001ec8 <_Z13stressTestingv+0x84>
        addrs[i] = mem_alloc(1);
    80001e80:	00100513          	li	a0,1
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	3d4080e7          	jalr	980(ra) # 80001258 <mem_alloc>
    80001e8c:	00349793          	slli	a5,s1,0x3
    80001e90:	fe040713          	addi	a4,s0,-32
    80001e94:	00f707b3          	add	a5,a4,a5
    80001e98:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0)
    80001e9c:	fc051ce3          	bnez	a0,80001e74 <_Z13stressTestingv+0x30>
            printString("not OK\n");
    80001ea0:	00007517          	auipc	a0,0x7
    80001ea4:	1e050513          	addi	a0,a0,480 # 80009080 <CONSOLE_STATUS+0x70>
    80001ea8:	00004097          	auipc	ra,0x4
    80001eac:	ca0080e7          	jalr	-864(ra) # 80005b48 <_Z11printStringPKc>
}
    80001eb0:	33813083          	ld	ra,824(sp)
    80001eb4:	33013403          	ld	s0,816(sp)
    80001eb8:	32813483          	ld	s1,808(sp)
    80001ebc:	32013903          	ld	s2,800(sp)
    80001ec0:	34010113          	addi	sp,sp,832
    80001ec4:	00008067          	ret
    int sz = 300;
    80001ec8:	12c00913          	li	s2,300
    while(sz > 0)
    80001ecc:	11205263          	blez	s2,80001fd0 <_Z13stressTestingv+0x18c>
        for(int i = 0 ; i < num;i+=2)
    80001ed0:	00000493          	li	s1,0
    80001ed4:	06300793          	li	a5,99
    80001ed8:	0697cc63          	blt	a5,s1,80001f50 <_Z13stressTestingv+0x10c>
            int retval = mem_free(addrs[i]);
    80001edc:	00349793          	slli	a5,s1,0x3
    80001ee0:	fe040713          	addi	a4,s0,-32
    80001ee4:	00f707b3          	add	a5,a4,a5
    80001ee8:	ce07b503          	ld	a0,-800(a5)
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	39c080e7          	jalr	924(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001ef4:	02051a63          	bnez	a0,80001f28 <_Z13stressTestingv+0xe4>
            addrs[i] = mem_alloc(sz/2);
    80001ef8:	01f9551b          	srliw	a0,s2,0x1f
    80001efc:	0125053b          	addw	a0,a0,s2
    80001f00:	4015551b          	sraiw	a0,a0,0x1
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	354080e7          	jalr	852(ra) # 80001258 <mem_alloc>
    80001f0c:	00349793          	slli	a5,s1,0x3
    80001f10:	fe040713          	addi	a4,s0,-32
    80001f14:	00f707b3          	add	a5,a4,a5
    80001f18:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f1c:	02050063          	beqz	a0,80001f3c <_Z13stressTestingv+0xf8>
        for(int i = 0 ; i < num;i+=2)
    80001f20:	0024849b          	addiw	s1,s1,2
    80001f24:	fb1ff06f          	j	80001ed4 <_Z13stressTestingv+0x90>
                printString("not OK\n");
    80001f28:	00007517          	auipc	a0,0x7
    80001f2c:	15850513          	addi	a0,a0,344 # 80009080 <CONSOLE_STATUS+0x70>
    80001f30:	00004097          	auipc	ra,0x4
    80001f34:	c18080e7          	jalr	-1000(ra) # 80005b48 <_Z11printStringPKc>
                return;
    80001f38:	f79ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	19c50513          	addi	a0,a0,412 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	c04080e7          	jalr	-1020(ra) # 80005b48 <_Z11printStringPKc>
                return;
    80001f4c:	f65ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
        for(int i = 1 ; i < num;i+=2)
    80001f50:	00100493          	li	s1,1
    80001f54:	06300793          	li	a5,99
    80001f58:	0697c863          	blt	a5,s1,80001fc8 <_Z13stressTestingv+0x184>
            int retval = mem_free(addrs[i]);
    80001f5c:	00349793          	slli	a5,s1,0x3
    80001f60:	fe040713          	addi	a4,s0,-32
    80001f64:	00f707b3          	add	a5,a4,a5
    80001f68:	ce07b503          	ld	a0,-800(a5)
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	31c080e7          	jalr	796(ra) # 80001288 <mem_free>
            if(retval != 0)
    80001f74:	02051663          	bnez	a0,80001fa0 <_Z13stressTestingv+0x15c>
            addrs[i] = mem_alloc(sz);
    80001f78:	00090513          	mv	a0,s2
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	2dc080e7          	jalr	732(ra) # 80001258 <mem_alloc>
    80001f84:	00349793          	slli	a5,s1,0x3
    80001f88:	fe040713          	addi	a4,s0,-32
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	cea7b023          	sd	a0,-800(a5)
            if(addrs[i] == 0)
    80001f94:	02050063          	beqz	a0,80001fb4 <_Z13stressTestingv+0x170>
        for(int i = 1 ; i < num;i+=2)
    80001f98:	0024849b          	addiw	s1,s1,2
    80001f9c:	fb9ff06f          	j	80001f54 <_Z13stressTestingv+0x110>
                printString("not OK\n");
    80001fa0:	00007517          	auipc	a0,0x7
    80001fa4:	0e050513          	addi	a0,a0,224 # 80009080 <CONSOLE_STATUS+0x70>
    80001fa8:	00004097          	auipc	ra,0x4
    80001fac:	ba0080e7          	jalr	-1120(ra) # 80005b48 <_Z11printStringPKc>
                return;
    80001fb0:	f01ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
                printString("not Ok\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	12450513          	addi	a0,a0,292 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001fbc:	00004097          	auipc	ra,0x4
    80001fc0:	b8c080e7          	jalr	-1140(ra) # 80005b48 <_Z11printStringPKc>
                return;
    80001fc4:	eedff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>
        sz-=10;
    80001fc8:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0)
    80001fcc:	f01ff06f          	j	80001ecc <_Z13stressTestingv+0x88>
    printString("OK\n");
    80001fd0:	00007517          	auipc	a0,0x7
    80001fd4:	0b850513          	addi	a0,a0,184 # 80009088 <CONSOLE_STATUS+0x78>
    80001fd8:	00004097          	auipc	ra,0x4
    80001fdc:	b70080e7          	jalr	-1168(ra) # 80005b48 <_Z11printStringPKc>
    80001fe0:	ed1ff06f          	j	80001eb0 <_Z13stressTestingv+0x6c>

0000000080001fe4 <_ZN12TestPeriodicC1Em>:
TestPeriodic::TestPeriodic(time_t time) : PeriodicThread(time) {
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	02010413          	addi	s0,sp,32
    80001ff8:	00050493          	mv	s1,a0
    80001ffc:	00002097          	auipc	ra,0x2
    80002000:	934080e7          	jalr	-1740(ra) # 80003930 <_ZN14PeriodicThreadC1Em>
    80002004:	0000a797          	auipc	a5,0xa
    80002008:	93c78793          	addi	a5,a5,-1732 # 8000b940 <_ZTV12TestPeriodic+0x10>
    8000200c:	00f4b023          	sd	a5,0(s1)
}
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret

0000000080002024 <_Z11threadTest3v>:
{
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	01213023          	sd	s2,0(sp)
    80002038:	02010413          	addi	s0,sp,32
    Thread* t = new TestPeriodic(50);
    8000203c:	01000513          	li	a0,16
    80002040:	00001097          	auipc	ra,0x1
    80002044:	5ec080e7          	jalr	1516(ra) # 8000362c <_Znwm>
    80002048:	00050913          	mv	s2,a0
    8000204c:	03200593          	li	a1,50
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f94080e7          	jalr	-108(ra) # 80001fe4 <_ZN12TestPeriodicC1Em>
    t->start();
    80002058:	00090513          	mv	a0,s2
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	6a0080e7          	jalr	1696(ra) # 800036fc <_ZN6Thread5startEv>
    while(true)
    80002064:	0000006f          	j	80002064 <_Z11threadTest3v+0x40>
    80002068:	00050493          	mv	s1,a0
    Thread* t = new TestPeriodic(50);
    8000206c:	00090513          	mv	a0,s2
    80002070:	00001097          	auipc	ra,0x1
    80002074:	5e4080e7          	jalr	1508(ra) # 80003654 <_ZdlPv>
    80002078:	00048513          	mv	a0,s1
    8000207c:	0000b097          	auipc	ra,0xb
    80002080:	c2c080e7          	jalr	-980(ra) # 8000cca8 <_Unwind_Resume>

0000000080002084 <_Z11threadTestsv>:
{
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    threadTest3();
    80002094:	00000097          	auipc	ra,0x0
    80002098:	f90080e7          	jalr	-112(ra) # 80002024 <_Z11threadTest3v>

000000008000209c <_Z10mallocTestv>:
{
    8000209c:	fc010113          	addi	sp,sp,-64
    800020a0:	02113c23          	sd	ra,56(sp)
    800020a4:	02813823          	sd	s0,48(sp)
    800020a8:	02913423          	sd	s1,40(sp)
    800020ac:	03213023          	sd	s2,32(sp)
    800020b0:	01313c23          	sd	s3,24(sp)
    800020b4:	01413823          	sd	s4,16(sp)
    800020b8:	01513423          	sd	s5,8(sp)
    800020bc:	01613023          	sd	s6,0(sp)
    800020c0:	04010413          	addi	s0,sp,64
    printString("Testing a few mallocs and frees\n\n");
    800020c4:	00007517          	auipc	a0,0x7
    800020c8:	01c50513          	addi	a0,a0,28 # 800090e0 <CONSOLE_STATUS+0xd0>
    800020cc:	00004097          	auipc	ra,0x4
    800020d0:	a7c080e7          	jalr	-1412(ra) # 80005b48 <_Z11printStringPKc>
    object* o = new object;
    800020d4:	02c00513          	li	a0,44
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	554080e7          	jalr	1364(ra) # 8000362c <_Znwm>
    800020e0:	00050493          	mv	s1,a0
    o->a = 3;
    800020e4:	00300793          	li	a5,3
    800020e8:	00f52023          	sw	a5,0(a0)
    void* m1 = mem_alloc(10);
    800020ec:	00a00513          	li	a0,10
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	168080e7          	jalr	360(ra) # 80001258 <mem_alloc>
    800020f8:	00050913          	mv	s2,a0
    void* m2 = mem_alloc(100);
    800020fc:	06400513          	li	a0,100
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	158080e7          	jalr	344(ra) # 80001258 <mem_alloc>
    80002108:	00050993          	mv	s3,a0
    void* m3 = mem_alloc(1000);
    8000210c:	3e800513          	li	a0,1000
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	148080e7          	jalr	328(ra) # 80001258 <mem_alloc>
    80002118:	00050a13          	mv	s4,a0
    void* m4 = mem_alloc(10000);
    8000211c:	00002537          	lui	a0,0x2
    80002120:	71050513          	addi	a0,a0,1808 # 2710 <_entry-0x7fffd8f0>
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	134080e7          	jalr	308(ra) # 80001258 <mem_alloc>
    8000212c:	00050a93          	mv	s5,a0
    void* m5 = mem_alloc(1);
    80002130:	00100513          	li	a0,1
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	124080e7          	jalr	292(ra) # 80001258 <mem_alloc>
    if(!m1 || !m2 || !m3 || !m4 || !m5){
    8000213c:	06090c63          	beqz	s2,800021b4 <_Z10mallocTestv+0x118>
    80002140:	00050b13          	mv	s6,a0
    80002144:	06098863          	beqz	s3,800021b4 <_Z10mallocTestv+0x118>
    80002148:	060a0663          	beqz	s4,800021b4 <_Z10mallocTestv+0x118>
    8000214c:	060a8463          	beqz	s5,800021b4 <_Z10mallocTestv+0x118>
    80002150:	06050263          	beqz	a0,800021b4 <_Z10mallocTestv+0x118>
    delete (uint64*)m1;
    80002154:	00090513          	mv	a0,s2
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	4fc080e7          	jalr	1276(ra) # 80003654 <_ZdlPv>
    delete (uint64*)m3;
    80002160:	000a0513          	mv	a0,s4
    80002164:	00001097          	auipc	ra,0x1
    80002168:	4f0080e7          	jalr	1264(ra) # 80003654 <_ZdlPv>
    delete (uint64*)m4;
    8000216c:	000a8513          	mv	a0,s5
    80002170:	00001097          	auipc	ra,0x1
    80002174:	4e4080e7          	jalr	1252(ra) # 80003654 <_ZdlPv>
    delete (uint64*)m2;
    80002178:	00098513          	mv	a0,s3
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	4d8080e7          	jalr	1240(ra) # 80003654 <_ZdlPv>
    delete (uint64*)m5;
    80002184:	000b0513          	mv	a0,s6
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	4cc080e7          	jalr	1228(ra) # 80003654 <_ZdlPv>
    delete o;
    80002190:	00048863          	beqz	s1,800021a0 <_Z10mallocTestv+0x104>
    80002194:	00048513          	mv	a0,s1
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	4bc080e7          	jalr	1212(ra) # 80003654 <_ZdlPv>
    printString("SUCCESSFUL: Testing a few mallocs and frees\n\n");
    800021a0:	00007517          	auipc	a0,0x7
    800021a4:	f6850513          	addi	a0,a0,-152 # 80009108 <CONSOLE_STATUS+0xf8>
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	9a0080e7          	jalr	-1632(ra) # 80005b48 <_Z11printStringPKc>
    800021b0:	0140006f          	j	800021c4 <_Z10mallocTestv+0x128>
        printString("not OK\n");
    800021b4:	00007517          	auipc	a0,0x7
    800021b8:	ecc50513          	addi	a0,a0,-308 # 80009080 <CONSOLE_STATUS+0x70>
    800021bc:	00004097          	auipc	ra,0x4
    800021c0:	98c080e7          	jalr	-1652(ra) # 80005b48 <_Z11printStringPKc>
}
    800021c4:	03813083          	ld	ra,56(sp)
    800021c8:	03013403          	ld	s0,48(sp)
    800021cc:	02813483          	ld	s1,40(sp)
    800021d0:	02013903          	ld	s2,32(sp)
    800021d4:	01813983          	ld	s3,24(sp)
    800021d8:	01013a03          	ld	s4,16(sp)
    800021dc:	00813a83          	ld	s5,8(sp)
    800021e0:	00013b03          	ld	s6,0(sp)
    800021e4:	04010113          	addi	sp,sp,64
    800021e8:	00008067          	ret

00000000800021ec <_Z16mallocEverythingv>:
{
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    printString("Testing allocating whole address space\n\n");
    80002200:	00007517          	auipc	a0,0x7
    80002204:	f3850513          	addi	a0,a0,-200 # 80009138 <CONSOLE_STATUS+0x128>
    80002208:	00004097          	auipc	ra,0x4
    8000220c:	940080e7          	jalr	-1728(ra) # 80005b48 <_Z11printStringPKc>
    uint64 neg_size = (uint64)HEAP_START_ADDR - (uint64)HEAP_END_ADDR -sizeof(MemoryAllocator::BlockHeader);
    80002210:	0000a797          	auipc	a5,0xa
    80002214:	8587b783          	ld	a5,-1960(a5) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002218:	0007b503          	ld	a0,0(a5)
    8000221c:	0000a797          	auipc	a5,0xa
    80002220:	88c7b783          	ld	a5,-1908(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002224:	0007b783          	ld	a5,0(a5)
    80002228:	40f50533          	sub	a0,a0,a5
    void* m = mem_alloc(neg_size);
    8000222c:	ff050513          	addi	a0,a0,-16
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	028080e7          	jalr	40(ra) # 80001258 <mem_alloc>
    if(m!=nullptr){
    80002238:	02050463          	beqz	a0,80002260 <_Z16mallocEverythingv+0x74>
        printString("not OK\n");
    8000223c:	00007517          	auipc	a0,0x7
    80002240:	e4450513          	addi	a0,a0,-444 # 80009080 <CONSOLE_STATUS+0x70>
    80002244:	00004097          	auipc	ra,0x4
    80002248:	904080e7          	jalr	-1788(ra) # 80005b48 <_Z11printStringPKc>
}
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret
    uint64 blockSize = (((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - sizeof(MemoryAllocator::BlockHeader))>>6)-300;
    80002260:	0000a797          	auipc	a5,0xa
    80002264:	8487b783          	ld	a5,-1976(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002268:	0007b503          	ld	a0,0(a5)
    8000226c:	00009797          	auipc	a5,0x9
    80002270:	7fc7b783          	ld	a5,2044(a5) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002274:	0007b783          	ld	a5,0(a5)
    80002278:	40f50533          	sub	a0,a0,a5
    8000227c:	ff050513          	addi	a0,a0,-16
    80002280:	00655513          	srli	a0,a0,0x6
    80002284:	ed450513          	addi	a0,a0,-300
    m = mem_alloc(blockSize<<6);
    80002288:	00651513          	slli	a0,a0,0x6
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	fcc080e7          	jalr	-52(ra) # 80001258 <mem_alloc>
    80002294:	00050493          	mv	s1,a0
    if(m==nullptr){
    80002298:	02050a63          	beqz	a0,800022cc <_Z16mallocEverythingv+0xe0>
    void *small_chunk = mem_alloc(1);
    8000229c:	00100513          	li	a0,1
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	fb8080e7          	jalr	-72(ra) # 80001258 <mem_alloc>
    if(small_chunk == nullptr){
    800022a8:	02050c63          	beqz	a0,800022e0 <_Z16mallocEverythingv+0xf4>
    delete (uint64*)m;
    800022ac:	00048513          	mv	a0,s1
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	3a4080e7          	jalr	932(ra) # 80003654 <_ZdlPv>
    printString("SUCCESSFUL: Testing allocating whole address space\n\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	eb050513          	addi	a0,a0,-336 # 80009168 <CONSOLE_STATUS+0x158>
    800022c0:	00004097          	auipc	ra,0x4
    800022c4:	888080e7          	jalr	-1912(ra) # 80005b48 <_Z11printStringPKc>
    800022c8:	f85ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	db450513          	addi	a0,a0,-588 # 80009080 <CONSOLE_STATUS+0x70>
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	874080e7          	jalr	-1932(ra) # 80005b48 <_Z11printStringPKc>
        return;
    800022dc:	f71ff06f          	j	8000224c <_Z16mallocEverythingv+0x60>
        printString("not OK\n");
    800022e0:	00007517          	auipc	a0,0x7
    800022e4:	da050513          	addi	a0,a0,-608 # 80009080 <CONSOLE_STATUS+0x70>
    800022e8:	00004097          	auipc	ra,0x4
    800022ec:	860080e7          	jalr	-1952(ra) # 80005b48 <_Z11printStringPKc>
        return;
    800022f0:	f5dff06f          	j	8000224c <_Z16mallocEverythingv+0x60>

00000000800022f4 <_Z17mallocGapFillTestv>:
{
    800022f4:	f6010113          	addi	sp,sp,-160
    800022f8:	08113c23          	sd	ra,152(sp)
    800022fc:	08813823          	sd	s0,144(sp)
    80002300:	08913423          	sd	s1,136(sp)
    80002304:	09213023          	sd	s2,128(sp)
    80002308:	07313c23          	sd	s3,120(sp)
    8000230c:	07413823          	sd	s4,112(sp)
    80002310:	07513423          	sd	s5,104(sp)
    80002314:	07613023          	sd	s6,96(sp)
    80002318:	05713c23          	sd	s7,88(sp)
    8000231c:	05813823          	sd	s8,80(sp)
    80002320:	0a010413          	addi	s0,sp,160
    printString("Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002324:	00007517          	auipc	a0,0x7
    80002328:	e7c50513          	addi	a0,a0,-388 # 800091a0 <CONSOLE_STATUS+0x190>
    8000232c:	00004097          	auipc	ra,0x4
    80002330:	81c080e7          	jalr	-2020(ra) # 80005b48 <_Z11printStringPKc>
    for(int i=0;i<N;i++)
    80002334:	00000493          	li	s1,0
    80002338:	00900793          	li	a5,9
    8000233c:	0697c863          	blt	a5,s1,800023ac <_Z17mallocGapFillTestv+0xb8>
        m[i] = mem_alloc((i<<6)+1);
    80002340:	0064951b          	slliw	a0,s1,0x6
    80002344:	0015051b          	addiw	a0,a0,1
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	f10080e7          	jalr	-240(ra) # 80001258 <mem_alloc>
    80002350:	00349793          	slli	a5,s1,0x3
    80002354:	fb040713          	addi	a4,s0,-80
    80002358:	00f707b3          	add	a5,a4,a5
    8000235c:	faa7b823          	sd	a0,-80(a5)
        if(m[i] == nullptr){
    80002360:	00050663          	beqz	a0,8000236c <_Z17mallocGapFillTestv+0x78>
    for(int i=0;i<N;i++)
    80002364:	0014849b          	addiw	s1,s1,1
    80002368:	fd1ff06f          	j	80002338 <_Z17mallocGapFillTestv+0x44>
            printString("not OK\n");
    8000236c:	00007517          	auipc	a0,0x7
    80002370:	d1450513          	addi	a0,a0,-748 # 80009080 <CONSOLE_STATUS+0x70>
    80002374:	00003097          	auipc	ra,0x3
    80002378:	7d4080e7          	jalr	2004(ra) # 80005b48 <_Z11printStringPKc>
}
    8000237c:	09813083          	ld	ra,152(sp)
    80002380:	09013403          	ld	s0,144(sp)
    80002384:	08813483          	ld	s1,136(sp)
    80002388:	08013903          	ld	s2,128(sp)
    8000238c:	07813983          	ld	s3,120(sp)
    80002390:	07013a03          	ld	s4,112(sp)
    80002394:	06813a83          	ld	s5,104(sp)
    80002398:	06013b03          	ld	s6,96(sp)
    8000239c:	05813b83          	ld	s7,88(sp)
    800023a0:	05013c03          	ld	s8,80(sp)
    800023a4:	0a010113          	addi	sp,sp,160
    800023a8:	00008067          	ret
    delete (uint64*)m[2];
    800023ac:	f7043503          	ld	a0,-144(s0)
    800023b0:	00050663          	beqz	a0,800023bc <_Z17mallocGapFillTestv+0xc8>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	2a0080e7          	jalr	672(ra) # 80003654 <_ZdlPv>
    void* tmp1 = mem_alloc(1);
    800023bc:	00100513          	li	a0,1
    800023c0:	fffff097          	auipc	ra,0xfffff
    800023c4:	e98080e7          	jalr	-360(ra) # 80001258 <mem_alloc>
    800023c8:	00050493          	mv	s1,a0
    void* tmp2 = mem_alloc(1);
    800023cc:	00100513          	li	a0,1
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	e88080e7          	jalr	-376(ra) # 80001258 <mem_alloc>
    800023d8:	00050913          	mv	s2,a0
    void* tmp3 = mem_alloc(1);
    800023dc:	00100513          	li	a0,1
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	e78080e7          	jalr	-392(ra) # 80001258 <mem_alloc>
    800023e8:	00050993          	mv	s3,a0
    if(!tmp1 || !tmp2 || !tmp3)
    800023ec:	08048863          	beqz	s1,8000247c <_Z17mallocGapFillTestv+0x188>
    800023f0:	08090663          	beqz	s2,8000247c <_Z17mallocGapFillTestv+0x188>
    800023f4:	08050463          	beqz	a0,8000247c <_Z17mallocGapFillTestv+0x188>
    uint64 im1 = (uint64)m[1];
    800023f8:	f6843783          	ld	a5,-152(s0)
    uint64 im3 = (uint64)m[3];
    800023fc:	f7843503          	ld	a0,-136(s0)
    uint64 im5 = (uint64)m[5];
    80002400:	f8843b03          	ld	s6,-120(s0)
    uint64 imN = (uint64)m[N];
    80002404:	fb043603          	ld	a2,-80(s0)
    uint64 itmp2 = (uint64)tmp2;
    80002408:	00090a13          	mv	s4,s2
    uint64 itmp3 = (uint64)tmp3;
    8000240c:	00098a93          	mv	s5,s3
    if(!(im1<itmp1 && itmp1<im3 && im1<itmp2 && itmp2<im3 && itmp3>imN))
    80002410:	0897f063          	bgeu	a5,s1,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002414:	06a4fe63          	bgeu	s1,a0,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002418:	0727fc63          	bgeu	a5,s2,80002490 <_Z17mallocGapFillTestv+0x19c>
    8000241c:	06a97a63          	bgeu	s2,a0,80002490 <_Z17mallocGapFillTestv+0x19c>
    80002420:	07367863          	bgeu	a2,s3,80002490 <_Z17mallocGapFillTestv+0x19c>
    delete (uint64*)m[3];
    80002424:	00050663          	beqz	a0,80002430 <_Z17mallocGapFillTestv+0x13c>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	22c080e7          	jalr	556(ra) # 80003654 <_ZdlPv>
    delete (uint64*)m[4];
    80002430:	f8043503          	ld	a0,-128(s0)
    80002434:	00050663          	beqz	a0,80002440 <_Z17mallocGapFillTestv+0x14c>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	21c080e7          	jalr	540(ra) # 80003654 <_ZdlPv>
    void* tmp4 = mem_alloc(640);
    80002440:	28000513          	li	a0,640
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	e14080e7          	jalr	-492(ra) # 80001258 <mem_alloc>
    8000244c:	00050c13          	mv	s8,a0
    void* tmp5 = mem_alloc(576);
    80002450:	24000513          	li	a0,576
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	e04080e7          	jalr	-508(ra) # 80001258 <mem_alloc>
    8000245c:	00050b93          	mv	s7,a0
    if(!tmp4 || !tmp5){
    80002460:	040c0263          	beqz	s8,800024a4 <_Z17mallocGapFillTestv+0x1b0>
    80002464:	04050063          	beqz	a0,800024a4 <_Z17mallocGapFillTestv+0x1b0>
    if(!(itmp5>itmp2 && itmp5>im5 && itmp4<itmp3)){
    80002468:	04aa7863          	bgeu	s4,a0,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    8000246c:	04ab7663          	bgeu	s6,a0,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    80002470:	055c7463          	bgeu	s8,s5,800024b8 <_Z17mallocGapFillTestv+0x1c4>
    for(int i=0;i<N;i++){
    80002474:	00000a13          	li	s4,0
    80002478:	0580006f          	j	800024d0 <_Z17mallocGapFillTestv+0x1dc>
        printString("not OK\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	c0450513          	addi	a0,a0,-1020 # 80009080 <CONSOLE_STATUS+0x70>
    80002484:	00003097          	auipc	ra,0x3
    80002488:	6c4080e7          	jalr	1732(ra) # 80005b48 <_Z11printStringPKc>
        return;
    8000248c:	ef1ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    80002490:	00007517          	auipc	a0,0x7
    80002494:	bf050513          	addi	a0,a0,-1040 # 80009080 <CONSOLE_STATUS+0x70>
    80002498:	00003097          	auipc	ra,0x3
    8000249c:	6b0080e7          	jalr	1712(ra) # 80005b48 <_Z11printStringPKc>
        return;
    800024a0:	eddff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024a4:	00007517          	auipc	a0,0x7
    800024a8:	bdc50513          	addi	a0,a0,-1060 # 80009080 <CONSOLE_STATUS+0x70>
    800024ac:	00003097          	auipc	ra,0x3
    800024b0:	69c080e7          	jalr	1692(ra) # 80005b48 <_Z11printStringPKc>
        return;
    800024b4:	ec9ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
        printString("not OK\n");
    800024b8:	00007517          	auipc	a0,0x7
    800024bc:	bc850513          	addi	a0,a0,-1080 # 80009080 <CONSOLE_STATUS+0x70>
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	688080e7          	jalr	1672(ra) # 80005b48 <_Z11printStringPKc>
        return;
    800024c8:	eb5ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>
    for(int i=0;i<N;i++){
    800024cc:	001a0a1b          	addiw	s4,s4,1
    800024d0:	00900793          	li	a5,9
    800024d4:	0347c263          	blt	a5,s4,800024f8 <_Z17mallocGapFillTestv+0x204>
        delete (uint64*)m[i];
    800024d8:	003a1793          	slli	a5,s4,0x3
    800024dc:	fb040713          	addi	a4,s0,-80
    800024e0:	00f707b3          	add	a5,a4,a5
    800024e4:	fb07b503          	ld	a0,-80(a5)
    800024e8:	fe0502e3          	beqz	a0,800024cc <_Z17mallocGapFillTestv+0x1d8>
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	168080e7          	jalr	360(ra) # 80003654 <_ZdlPv>
    800024f4:	fd9ff06f          	j	800024cc <_Z17mallocGapFillTestv+0x1d8>
    delete (uint64*)tmp1;
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	158080e7          	jalr	344(ra) # 80003654 <_ZdlPv>
    delete (uint64*)tmp2;
    80002504:	00090513          	mv	a0,s2
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	14c080e7          	jalr	332(ra) # 80003654 <_ZdlPv>
    delete (uint64*)tmp3;
    80002510:	00098513          	mv	a0,s3
    80002514:	00001097          	auipc	ra,0x1
    80002518:	140080e7          	jalr	320(ra) # 80003654 <_ZdlPv>
    delete (uint64*)tmp4;
    8000251c:	000c0513          	mv	a0,s8
    80002520:	00001097          	auipc	ra,0x1
    80002524:	134080e7          	jalr	308(ra) # 80003654 <_ZdlPv>
    delete (uint64*)tmp5;
    80002528:	000b8513          	mv	a0,s7
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	128080e7          	jalr	296(ra) # 80003654 <_ZdlPv>
    printString("SUCCESSFUL: Testing gap filling and chunk merge after multiple mallocs and frees\n\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	cb450513          	addi	a0,a0,-844 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	60c080e7          	jalr	1548(ra) # 80005b48 <_Z11printStringPKc>
    80002544:	e39ff06f          	j	8000237c <_Z17mallocGapFillTestv+0x88>

0000000080002548 <_Z21memoryAllocationTestsv>:
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    mallocGapFillTest();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	d9c080e7          	jalr	-612(ra) # 800022f4 <_Z17mallocGapFillTestv>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_Z8semTest1v>:

void semTest1()
{
    80002570:	fe010113          	addi	sp,sp,-32
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	00813823          	sd	s0,16(sp)
    8000257c:	02010413          	addi	s0,sp,32
    sem_open(&spaceAvailable, 10);
    80002580:	00a00593          	li	a1,10
    80002584:	00009517          	auipc	a0,0x9
    80002588:	59c50513          	addi	a0,a0,1436 # 8000bb20 <spaceAvailable>
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	df0080e7          	jalr	-528(ra) # 8000137c <sem_open>

    sem_open(&itemAvailable, 0);
    80002594:	00000593          	li	a1,0
    80002598:	00009517          	auipc	a0,0x9
    8000259c:	57050513          	addi	a0,a0,1392 # 8000bb08 <itemAvailable>
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	ddc080e7          	jalr	-548(ra) # 8000137c <sem_open>

    thread_t threadA, threadB;

    thread_create(&threadA, producerA, nullptr);
    800025a8:	00000613          	li	a2,0
    800025ac:	fffff597          	auipc	a1,0xfffff
    800025b0:	2bc58593          	addi	a1,a1,700 # 80001868 <_Z9producerAPv>
    800025b4:	fe840513          	addi	a0,s0,-24
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	cfc080e7          	jalr	-772(ra) # 800012b4 <thread_create>

    thread_create(&threadB, consumerA, nullptr);
    800025c0:	00000613          	li	a2,0
    800025c4:	fffff597          	auipc	a1,0xfffff
    800025c8:	21c58593          	addi	a1,a1,540 # 800017e0 <_Z9consumerAPv>
    800025cc:	fe040513          	addi	a0,s0,-32
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	ce4080e7          	jalr	-796(ra) # 800012b4 <thread_create>
    800025d8:	00c0006f          	j	800025e4 <_Z8semTest1v+0x74>

    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
        thread_dispatch();
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	d58080e7          	jalr	-680(ra) # 80001334 <thread_dispatch>
    while(!((PCB*)threadA)->isFinished() || !((PCB*)threadA)->isFinished())
    800025e4:	fe843503          	ld	a0,-24(s0)
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	454080e7          	jalr	1108(ra) # 80002a3c <_ZN3PCB10isFinishedEv>
    800025f0:	fe0506e3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
    800025f4:	fe843503          	ld	a0,-24(s0)
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	444080e7          	jalr	1092(ra) # 80002a3c <_ZN3PCB10isFinishedEv>
    80002600:	fc050ee3          	beqz	a0,800025dc <_Z8semTest1v+0x6c>
}
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret

0000000080002614 <_Z14semaphoreTestsv>:
{
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00113423          	sd	ra,8(sp)
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	01010413          	addi	s0,sp,16
    semTest1();
    80002624:	00000097          	auipc	ra,0x0
    80002628:	f4c080e7          	jalr	-180(ra) # 80002570 <_Z8semTest1v>
}
    8000262c:	00813083          	ld	ra,8(sp)
    80002630:	00013403          	ld	s0,0(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_Z12consoleTest1v>:

void consoleTest1()
{
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00113c23          	sd	ra,24(sp)
    80002644:	00813823          	sd	s0,16(sp)
    80002648:	00913423          	sd	s1,8(sp)
    8000264c:	02010413          	addi	s0,sp,32
    for(int i = 0; i < 100;i++)
    80002650:	00000493          	li	s1,0
    80002654:	06300793          	li	a5,99
    80002658:	0097ca63          	blt	a5,s1,8000266c <_Z12consoleTest1v+0x30>
    {
        getc();
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	eb4080e7          	jalr	-332(ra) # 80001510 <getc>
    for(int i = 0; i < 100;i++)
    80002664:	0014849b          	addiw	s1,s1,1
    80002668:	fedff06f          	j	80002654 <_Z12consoleTest1v+0x18>
    }
}
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret

0000000080002680 <_Z12consoleTestsv>:

void consoleTests()
{
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    consoleTest1();
    80002690:	00000097          	auipc	ra,0x0
    80002694:	fac080e7          	jalr	-84(ra) # 8000263c <_Z12consoleTest1v>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_Z7myTestsv>:
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    consoleTests();
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	fc8080e7          	jalr	-56(ra) # 80002680 <_Z12consoleTestsv>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	00813403          	ld	s0,8(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00813403          	ld	s0,8(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00009797          	auipc	a5,0x9
    80002714:	20078793          	addi	a5,a5,512 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002718:	00f53023          	sd	a5,0(a0)
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	ea0080e7          	jalr	-352(ra) # 800035bc <_ZN6ThreadD1Ev>
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZN14PeriodicThreadD0Ev>:
    80002734:	fe010113          	addi	sp,sp,-32
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00813823          	sd	s0,16(sp)
    80002740:	00913423          	sd	s1,8(sp)
    80002744:	02010413          	addi	s0,sp,32
    80002748:	00050493          	mv	s1,a0
    8000274c:	00009797          	auipc	a5,0x9
    80002750:	1c478793          	addi	a5,a5,452 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	e64080e7          	jalr	-412(ra) # 800035bc <_ZN6ThreadD1Ev>
    80002760:	00048513          	mv	a0,s1
    80002764:	00001097          	auipc	ra,0x1
    80002768:	ef0080e7          	jalr	-272(ra) # 80003654 <_ZdlPv>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	02010113          	addi	sp,sp,32
    8000277c:	00008067          	ret

0000000080002780 <_ZN12TestPeriodicD1Ev>:
void threadTest2();
void threadTest3();

void threadTests();

class TestPeriodic : public PeriodicThread
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00113423          	sd	ra,8(sp)
    80002788:	00813023          	sd	s0,0(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00009797          	auipc	a5,0x9
    80002794:	18078793          	addi	a5,a5,384 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80002798:	00f53023          	sd	a5,0(a0)
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	e20080e7          	jalr	-480(ra) # 800035bc <_ZN6ThreadD1Ev>
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN12TestPeriodicD0Ev>:
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
    800027c8:	00050493          	mv	s1,a0
    800027cc:	00009797          	auipc	a5,0x9
    800027d0:	14478793          	addi	a5,a5,324 # 8000b910 <_ZTV14PeriodicThread+0x10>
    800027d4:	00f53023          	sd	a5,0(a0)
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	de4080e7          	jalr	-540(ra) # 800035bc <_ZN6ThreadD1Ev>
    800027e0:	00048513          	mv	a0,s1
    800027e4:	00001097          	auipc	ra,0x1
    800027e8:	e70080e7          	jalr	-400(ra) # 80003654 <_ZdlPv>
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret

0000000080002800 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
    //Riscv::printString("Runner started...\n");
    Riscv::popSppSpie();
    80002810:	00001097          	auipc	ra,0x1
    80002814:	25c080e7          	jalr	604(ra) # 80003a6c <_ZN5Riscv10popSppSpieEv>

    running->body(running->args);
    80002818:	00009797          	auipc	a5,0x9
    8000281c:	3187b783          	ld	a5,792(a5) # 8000bb30 <_ZN3PCB7runningE>
    80002820:	0207b703          	ld	a4,32(a5)
    80002824:	0287b503          	ld	a0,40(a5)
    80002828:	000700e7          	jalr	a4

    thread_exit();
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	b28080e7          	jalr	-1240(ra) # 80001354 <thread_exit>
}
    80002834:	00813083          	ld	ra,8(sp)
    80002838:	00013403          	ld	s0,0(sp)
    8000283c:	01010113          	addi	sp,sp,16
    80002840:	00008067          	ret

0000000080002844 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00813423          	sd	s0,8(sp)
    8000284c:	01010413          	addi	s0,sp,16
    })
    80002850:	00050023          	sb	zero,0(a0)
    80002854:	00e53823          	sd	a4,16(a0)
    80002858:	00053c23          	sd	zero,24(a0)
    8000285c:	02b53023          	sd	a1,32(a0)
    80002860:	02c53423          	sd	a2,40(a0)
    80002864:	02d53823          	sd	a3,48(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002868:	000017b7          	lui	a5,0x1
    8000286c:	00f686b3          	add	a3,a3,a5
    })
    80002870:	04d53023          	sd	a3,64(a0)
    80002874:	00000797          	auipc	a5,0x0
    80002878:	f8c78793          	addi	a5,a5,-116 # 80002800 <_ZN3PCB6runnerEv>
    8000287c:	04f53423          	sd	a5,72(a0)
    nextPCB = 0;
    80002880:	00053423          	sd	zero,8(a0)
}
    80002884:	00813403          	ld	s0,8(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN3PCB5sleepEm>:
{
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00813423          	sd	s0,8(sp)
    80002898:	01010413          	addi	s0,sp,16
}
    8000289c:	00813403          	ld	s0,8(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN3PCB5startEv>:
{
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800028b8:	00001097          	auipc	ra,0x1
    800028bc:	ba0080e7          	jalr	-1120(ra) # 80003458 <_ZN9Scheduler3putEP3PCB>
}
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800028d0:	fe010113          	addi	sp,sp,-32
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	02010413          	addi	s0,sp,32
    //Riscv::printString("Dispatch called...\n");
    PCB* old = running;
    800028e4:	00009497          	auipc	s1,0x9
    800028e8:	24c4b483          	ld	s1,588(s1) # 8000bb30 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800028ec:	0384a703          	lw	a4,56(s1)
    if(old->getState() == PCB::RUNNING)
    800028f0:	00100793          	li	a5,1
    800028f4:	04f70063          	beq	a4,a5,80002934 <_ZN3PCB8dispatchEv+0x64>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800028f8:	00001097          	auipc	ra,0x1
    800028fc:	bb4080e7          	jalr	-1100(ra) # 800034ac <_ZN9Scheduler3getEv>
    80002900:	00009797          	auipc	a5,0x9
    80002904:	22a7b823          	sd	a0,560(a5) # 8000bb30 <_ZN3PCB7runningE>
    void setState(State s) {state = s;}
    80002908:	00100793          	li	a5,1
    8000290c:	02f52c23          	sw	a5,56(a0)
    //if(PCB::running->systemThread)
    //    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    //else
    //    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);

    PCB::contextSwitch(&old->context, &running->context);
    80002910:	04050593          	addi	a1,a0,64
    80002914:	04048513          	addi	a0,s1,64
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	920080e7          	jalr	-1760(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret
        Scheduler::put(old);
    80002934:	00048513          	mv	a0,s1
    80002938:	00001097          	auipc	ra,0x1
    8000293c:	b20080e7          	jalr	-1248(ra) # 80003458 <_ZN9Scheduler3putEP3PCB>
    80002940:	fb9ff06f          	j	800028f8 <_ZN3PCB8dispatchEv+0x28>

0000000080002944 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00113423          	sd	ra,8(sp)
    8000294c:	00813023          	sd	s0,0(sp)
    80002950:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    80002954:	00002097          	auipc	ra,0x2
    80002958:	910080e7          	jalr	-1776(ra) # 80004264 <_Z7kmallocm>
}
    8000295c:	00813083          	ld	ra,8(sp)
    80002960:	00013403          	ld	s0,0(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00113423          	sd	ra,8(sp)
    80002974:	00813023          	sd	s0,0(sp)
    80002978:	01010413          	addi	s0,sp,16
    kfree(p);
    8000297c:	00002097          	auipc	ra,0x2
    80002980:	94c080e7          	jalr	-1716(ra) # 800042c8 <_Z5kfreePv>
}
    80002984:	00813083          	ld	ra,8(sp)
    80002988:	00013403          	ld	s0,0(sp)
    8000298c:	01010113          	addi	sp,sp,16
    80002990:	00008067          	ret

0000000080002994 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
{
    kfree(beginSP);
    800029a4:	03053503          	ld	a0,48(a0)
    800029a8:	00002097          	auipc	ra,0x2
    800029ac:	920080e7          	jalr	-1760(ra) # 800042c8 <_Z5kfreePv>
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029d4:	05000513          	li	a0,80
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	f6c080e7          	jalr	-148(ra) # 80002944 <_ZN3PCBnwEm>
    800029e0:	00050493          	mv	s1,a0
    800029e4:	00000713          	li	a4,0
    800029e8:	00000693          	li	a3,0
    800029ec:	00000613          	li	a2,0
    800029f0:	00000593          	li	a1,0
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	e50080e7          	jalr	-432(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->start();
    800029fc:	00048513          	mv	a0,s1
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	ea8080e7          	jalr	-344(ra) # 800028a8 <_ZN3PCB5startEv>
    mainSystem->systemThread = true;
    80002a08:	00100793          	li	a5,1
    80002a0c:	00f48023          	sb	a5,0(s1)
    PCB::running = Scheduler::get();
    80002a10:	00001097          	auipc	ra,0x1
    80002a14:	a9c080e7          	jalr	-1380(ra) # 800034ac <_ZN9Scheduler3getEv>
    80002a18:	00009797          	auipc	a5,0x9
    80002a1c:	10a7bc23          	sd	a0,280(a5) # 8000bb30 <_ZN3PCB7runningE>
    80002a20:	00100793          	li	a5,1
    80002a24:	02f52c23          	sw	a5,56(a0)
    //consolePCB->systemThread = true;
    //consolePCB->start();
    //PCB* idlePCB = new PCB(&Riscv::idleRiscv, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    //idlePCB->start();
    //idlePCB->systemThread = true;
}
    80002a28:	01813083          	ld	ra,24(sp)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret

0000000080002a3c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002a48:	03852503          	lw	a0,56(a0)
    80002a4c:	ffd50513          	addi	a0,a0,-3
}
    80002a50:	00153513          	seqz	a0,a0
    80002a54:	00813403          	ld	s0,8(sp)
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00113423          	sd	ra,8(sp)
    80002a68:	00813023          	sd	s0,0(sp)
    80002a6c:	01010413          	addi	s0,sp,16
    printString("Exiting thread...\n");
    80002a70:	00006517          	auipc	a0,0x6
    80002a74:	7d050513          	addi	a0,a0,2000 # 80009240 <CONSOLE_STATUS+0x230>
    80002a78:	00003097          	auipc	ra,0x3
    80002a7c:	0d0080e7          	jalr	208(ra) # 80005b48 <_Z11printStringPKc>
    PCB::timeSliceCounter = 0;
    80002a80:	00009797          	auipc	a5,0x9
    80002a84:	0b078793          	addi	a5,a5,176 # 8000bb30 <_ZN3PCB7runningE>
    80002a88:	0007b423          	sd	zero,8(a5)
    PCB::running->setState(PCB::FINISHED);
    80002a8c:	0007b783          	ld	a5,0(a5)
    80002a90:	00300713          	li	a4,3
    80002a94:	02e7ac23          	sw	a4,56(a5)
    PCB::dispatch();
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	e38080e7          	jalr	-456(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002aa0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	3d4080e7          	jalr	980(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002acc:	00009797          	auipc	a5,0x9
    80002ad0:	0607b623          	sd	zero,108(a5) # 8000bb38 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	dfc080e7          	jalr	-516(ra) # 800028d0 <_ZN3PCB8dispatchEv>
}
    80002adc:	00813083          	ld	ra,8(sp)
    80002ae0:	00013403          	ld	s0,0(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret

0000000080002aec <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00113423          	sd	ra,8(sp)
    80002af4:	00813023          	sd	s0,0(sp)
    80002af8:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002afc:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b00:	00009717          	auipc	a4,0x9
    80002b04:	03070713          	addi	a4,a4,48 # 8000bb30 <_ZN3PCB7runningE>
    80002b08:	00073423          	sd	zero,8(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b0c:	00073703          	ld	a4,0(a4)
    80002b10:	00009697          	auipc	a3,0x9
    80002b14:	f886b683          	ld	a3,-120(a3) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b18:	0006b683          	ld	a3,0(a3)
    80002b1c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b20:	00f73c23          	sd	a5,24(a4)
    SleepPCBList::insertSleepingPCB();
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	62c080e7          	jalr	1580(ra) # 80003150 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	da4080e7          	jalr	-604(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b34:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	340080e7          	jalr	832(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002b50:	fd010113          	addi	sp,sp,-48
    80002b54:	02113423          	sd	ra,40(sp)
    80002b58:	02813023          	sd	s0,32(sp)
    80002b5c:	00913c23          	sd	s1,24(sp)
    80002b60:	01213823          	sd	s2,16(sp)
    80002b64:	01313423          	sd	s3,8(sp)
    80002b68:	01413023          	sd	s4,0(sp)
    80002b6c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b70:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b74:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b78:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002b7c:	05000513          	li	a0,80
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	dc4080e7          	jalr	-572(ra) # 80002944 <_ZN3PCBnwEm>
    80002b88:	00050493          	mv	s1,a0
    80002b8c:	00200713          	li	a4,2
    80002b90:	00009697          	auipc	a3,0x9
    80002b94:	fb06b683          	ld	a3,-80(a3) # 8000bb40 <_ZN3PCB10savedRegA4E>
    80002b98:	000a0613          	mv	a2,s4
    80002b9c:	00098593          	mv	a1,s3
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	ca4080e7          	jalr	-860(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002ba8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002bac:	02048e63          	beqz	s1,80002be8 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	cf4080e7          	jalr	-780(ra) # 800028a8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002bbc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	2b8080e7          	jalr	696(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002bc8:	02813083          	ld	ra,40(sp)
    80002bcc:	02013403          	ld	s0,32(sp)
    80002bd0:	01813483          	ld	s1,24(sp)
    80002bd4:	01013903          	ld	s2,16(sp)
    80002bd8:	00813983          	ld	s3,8(sp)
    80002bdc:	00013a03          	ld	s4,0(sp)
    80002be0:	03010113          	addi	sp,sp,48
    80002be4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002be8:	fff00513          	li	a0,-1
    80002bec:	fd5ff06f          	j	80002bc0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002bf0 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002bf0:	ff010113          	addi	sp,sp,-16
    80002bf4:	00113423          	sd	ra,8(sp)
    80002bf8:	00813023          	sd	s0,0(sp)
    80002bfc:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c00:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002c04:	02050463          	beqz	a0,80002c2c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	ca0080e7          	jalr	-864(ra) # 800028a8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c10:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	264080e7          	jalr	612(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c1c:	00813083          	ld	ra,8(sp)
    80002c20:	00013403          	ld	s0,0(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002c2c:	fff00513          	li	a0,-1
    80002c30:	fe5ff06f          	j	80002c14 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002c34 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c34:	fd010113          	addi	sp,sp,-48
    80002c38:	02113423          	sd	ra,40(sp)
    80002c3c:	02813023          	sd	s0,32(sp)
    80002c40:	00913c23          	sd	s1,24(sp)
    80002c44:	01213823          	sd	s2,16(sp)
    80002c48:	01313423          	sd	s3,8(sp)
    80002c4c:	01413023          	sd	s4,0(sp)
    80002c50:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002c54:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002c58:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002c5c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002c60:	05000513          	li	a0,80
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	ce0080e7          	jalr	-800(ra) # 80002944 <_ZN3PCBnwEm>
    80002c6c:	00050493          	mv	s1,a0
    80002c70:	00200713          	li	a4,2
    80002c74:	00009697          	auipc	a3,0x9
    80002c78:	ecc6b683          	ld	a3,-308(a3) # 8000bb40 <_ZN3PCB10savedRegA4E>
    80002c7c:	000a0613          	mv	a2,s4
    80002c80:	00098593          	mv	a1,s3
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	bc0080e7          	jalr	-1088(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c8c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002c90:	02048863          	beqz	s1,80002cc0 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002c94:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002c98:	00001097          	auipc	ra,0x1
    80002c9c:	1e0080e7          	jalr	480(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ca0:	02813083          	ld	ra,40(sp)
    80002ca4:	02013403          	ld	s0,32(sp)
    80002ca8:	01813483          	ld	s1,24(sp)
    80002cac:	01013903          	ld	s2,16(sp)
    80002cb0:	00813983          	ld	s3,8(sp)
    80002cb4:	00013a03          	ld	s4,0(sp)
    80002cb8:	03010113          	addi	sp,sp,48
    80002cbc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002cc0:	fff00513          	li	a0,-1
    80002cc4:	fd5ff06f          	j	80002c98 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002cc8 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>:
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;

void KConsole::putChar(char c, Elem*& head, Elem*& tail)
{
    80002cc8:	fd010113          	addi	sp,sp,-48
    80002ccc:	02113423          	sd	ra,40(sp)
    80002cd0:	02813023          	sd	s0,32(sp)
    80002cd4:	00913c23          	sd	s1,24(sp)
    80002cd8:	01213823          	sd	s2,16(sp)
    80002cdc:	01313423          	sd	s3,8(sp)
    80002ce0:	03010413          	addi	s0,sp,48
    80002ce4:	00050993          	mv	s3,a0
    80002ce8:	00058913          	mv	s2,a1
    80002cec:	00060493          	mv	s1,a2
    Elem* newElem = (Elem*)kmalloc(sizeof(Elem));
    80002cf0:	01000513          	li	a0,16
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	570080e7          	jalr	1392(ra) # 80004264 <_Z7kmallocm>
    newElem->next = 0;
    80002cfc:	00053023          	sd	zero,0(a0)
    newElem->data = c;
    80002d00:	01350423          	sb	s3,8(a0)
    if(head == 0)
    80002d04:	00093783          	ld	a5,0(s2)
    80002d08:	02078663          	beqz	a5,80002d34 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x6c>
    {
        head = tail = newElem;
    }
    else
    {
        tail->next = newElem;
    80002d0c:	0004b783          	ld	a5,0(s1)
    80002d10:	00a7b023          	sd	a0,0(a5)
        tail = newElem;
    80002d14:	00a4b023          	sd	a0,0(s1)
    }
}
    80002d18:	02813083          	ld	ra,40(sp)
    80002d1c:	02013403          	ld	s0,32(sp)
    80002d20:	01813483          	ld	s1,24(sp)
    80002d24:	01013903          	ld	s2,16(sp)
    80002d28:	00813983          	ld	s3,8(sp)
    80002d2c:	03010113          	addi	sp,sp,48
    80002d30:	00008067          	ret
        head = tail = newElem;
    80002d34:	00a4b023          	sd	a0,0(s1)
    80002d38:	00a93023          	sd	a0,0(s2)
    80002d3c:	fddff06f          	j	80002d18 <_ZN8KConsole7putCharEcRPNS_4ElemES2_+0x50>

0000000080002d40 <_ZN8KConsole7getCharERPNS_4ElemES2_>:

char KConsole::getChar(Elem*& head, Elem*& tail)
{
    80002d40:	fe010113          	addi	sp,sp,-32
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	00813823          	sd	s0,16(sp)
    80002d4c:	00913423          	sd	s1,8(sp)
    80002d50:	02010413          	addi	s0,sp,32
    80002d54:	00050793          	mv	a5,a0
    if(head == 0)
    80002d58:	00053503          	ld	a0,0(a0)
    80002d5c:	02050e63          	beqz	a0,80002d98 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x58>
        return 0;

    Elem* ret = head;
    head = head->next;
    80002d60:	00053703          	ld	a4,0(a0)
    80002d64:	00e7b023          	sd	a4,0(a5)
    if(head == 0)
    80002d68:	02070463          	beqz	a4,80002d90 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x50>
        tail = 0;

    char c = ret->data;
    80002d6c:	00854483          	lbu	s1,8(a0)
    kfree(ret);
    80002d70:	00001097          	auipc	ra,0x1
    80002d74:	558080e7          	jalr	1368(ra) # 800042c8 <_Z5kfreePv>
    return c;
}
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	01813083          	ld	ra,24(sp)
    80002d80:	01013403          	ld	s0,16(sp)
    80002d84:	00813483          	ld	s1,8(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret
        tail = 0;
    80002d90:	0005b023          	sd	zero,0(a1)
    80002d94:	fd9ff06f          	j	80002d6c <_ZN8KConsole7getCharERPNS_4ElemES2_+0x2c>
        return 0;
    80002d98:	00000493          	li	s1,0
    80002d9c:	fddff06f          	j	80002d78 <_ZN8KConsole7getCharERPNS_4ElemES2_+0x38>

0000000080002da0 <_ZN8KConsole10initializeEv>:

void KConsole::initialize()
{
    80002da0:	fe010113          	addi	sp,sp,-32
    80002da4:	00113c23          	sd	ra,24(sp)
    80002da8:	00813823          	sd	s0,16(sp)
    80002dac:	00913423          	sd	s1,8(sp)
    80002db0:	01213023          	sd	s2,0(sp)
    80002db4:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002db8:	01800513          	li	a0,24
    80002dbc:	00001097          	auipc	ra,0x1
    80002dc0:	7bc080e7          	jalr	1980(ra) # 80004578 <_ZN10KSemaphorenwEm>
    80002dc4:	00050493          	mv	s1,a0
    80002dc8:	00000593          	li	a1,0
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	55c080e7          	jalr	1372(ra) # 80004328 <_ZN10KSemaphoreC1Ei>
    80002dd4:	00009797          	auipc	a5,0x9
    80002dd8:	d697ba23          	sd	s1,-652(a5) # 8000bb48 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002ddc:	01800513          	li	a0,24
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	798080e7          	jalr	1944(ra) # 80004578 <_ZN10KSemaphorenwEm>
    80002de8:	00050493          	mv	s1,a0
    80002dec:	00000593          	li	a1,0
    80002df0:	00001097          	auipc	ra,0x1
    80002df4:	538080e7          	jalr	1336(ra) # 80004328 <_ZN10KSemaphoreC1Ei>
    80002df8:	00009797          	auipc	a5,0x9
    80002dfc:	d497bc23          	sd	s1,-680(a5) # 8000bb50 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e00:	01813083          	ld	ra,24(sp)
    80002e04:	01013403          	ld	s0,16(sp)
    80002e08:	00813483          	ld	s1,8(sp)
    80002e0c:	00013903          	ld	s2,0(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret
    80002e18:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	00001097          	auipc	ra,0x1
    80002e24:	7f0080e7          	jalr	2032(ra) # 80004610 <_ZN10KSemaphoredlEPv>
    80002e28:	00090513          	mv	a0,s2
    80002e2c:	0000a097          	auipc	ra,0xa
    80002e30:	e7c080e7          	jalr	-388(ra) # 8000cca8 <_Unwind_Resume>
    80002e34:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	7d4080e7          	jalr	2004(ra) # 80004610 <_ZN10KSemaphoredlEPv>
    80002e44:	00090513          	mv	a0,s2
    80002e48:	0000a097          	auipc	ra,0xa
    80002e4c:	e60080e7          	jalr	-416(ra) # 8000cca8 <_Unwind_Resume>

0000000080002e50 <_ZN8KConsole17putCharacterInputEc>:
                thread_dispatch();
    }
}

void KConsole::putCharacterInput(char c)
{
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00113423          	sd	ra,8(sp)
    80002e58:	00813023          	sd	s0,0(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    putChar(c, headInput, tailInput);
    80002e60:	00009617          	auipc	a2,0x9
    80002e64:	cf860613          	addi	a2,a2,-776 # 8000bb58 <_ZN8KConsole9tailInputE>
    80002e68:	00009597          	auipc	a1,0x9
    80002e6c:	cf858593          	addi	a1,a1,-776 # 8000bb60 <_ZN8KConsole9headInputE>
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	e58080e7          	jalr	-424(ra) # 80002cc8 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersInput->signal();
    80002e78:	00009517          	auipc	a0,0x9
    80002e7c:	cd053503          	ld	a0,-816(a0) # 8000bb48 <_ZN8KConsole18hasCharactersInputE>
    80002e80:	00001097          	auipc	ra,0x1
    80002e84:	6b0080e7          	jalr	1712(ra) # 80004530 <_ZN10KSemaphore6signalEv>
}
    80002e88:	00813083          	ld	ra,8(sp)
    80002e8c:	00013403          	ld	s0,0(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret

0000000080002e98 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002e98:	ff010113          	addi	sp,sp,-16
    80002e9c:	00113423          	sd	ra,8(sp)
    80002ea0:	00813023          	sd	s0,0(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    hasCharactersInput->wait();
    80002ea8:	00009517          	auipc	a0,0x9
    80002eac:	ca053503          	ld	a0,-864(a0) # 8000bb48 <_ZN8KConsole18hasCharactersInputE>
    80002eb0:	00001097          	auipc	ra,0x1
    80002eb4:	520080e7          	jalr	1312(ra) # 800043d0 <_ZN10KSemaphore4waitEv>
    return getChar(headInput, tailInput);
    80002eb8:	00009597          	auipc	a1,0x9
    80002ebc:	ca058593          	addi	a1,a1,-864 # 8000bb58 <_ZN8KConsole9tailInputE>
    80002ec0:	00009517          	auipc	a0,0x9
    80002ec4:	ca050513          	addi	a0,a0,-864 # 8000bb60 <_ZN8KConsole9headInputE>
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	e78080e7          	jalr	-392(ra) # 80002d40 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80002ed0:	00813083          	ld	ra,8(sp)
    80002ed4:	00013403          	ld	s0,0(sp)
    80002ed8:	01010113          	addi	sp,sp,16
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00113423          	sd	ra,8(sp)
    80002ee8:	00813023          	sd	s0,0(sp)
    80002eec:	01010413          	addi	s0,sp,16
    putChar(c, headOutput, tailOutput);
    80002ef0:	00009617          	auipc	a2,0x9
    80002ef4:	c7860613          	addi	a2,a2,-904 # 8000bb68 <_ZN8KConsole10tailOutputE>
    80002ef8:	00009597          	auipc	a1,0x9
    80002efc:	c7858593          	addi	a1,a1,-904 # 8000bb70 <_ZN8KConsole10headOutputE>
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	dc8080e7          	jalr	-568(ra) # 80002cc8 <_ZN8KConsole7putCharEcRPNS_4ElemES2_>
    hasCharactersOutput->signal();
    80002f08:	00009517          	auipc	a0,0x9
    80002f0c:	c4853503          	ld	a0,-952(a0) # 8000bb50 <_ZN8KConsole19hasCharactersOutputE>
    80002f10:	00001097          	auipc	ra,0x1
    80002f14:	620080e7          	jalr	1568(ra) # 80004530 <_ZN10KSemaphore6signalEv>
}
    80002f18:	00813083          	ld	ra,8(sp)
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <_ZN8KConsole24getCharactersFromConsoleEPv>:
        uint64 x = CONSOLE_STATUS;
    80002f28:	00009797          	auipc	a5,0x9
    80002f2c:	b387b783          	ld	a5,-1224(a5) # 8000ba60 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f30:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f34:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002f38:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002f3c:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002f40:	0017f793          	andi	a5,a5,1
    80002f44:	08078063          	beqz	a5,80002fc4 <_ZN8KConsole24getCharactersFromConsoleEPv+0x9c>
{
    80002f48:	fe010113          	addi	sp,sp,-32
    80002f4c:	00113c23          	sd	ra,24(sp)
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	02010413          	addi	s0,sp,32
            x = CONSOLE_TX_DATA;
    80002f5c:	00009797          	auipc	a5,0x9
    80002f60:	b247b783          	ld	a5,-1244(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f64:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80002f68:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1,0(a0)");
    80002f6c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(c));
    80002f70:	00058493          	mv	s1,a1
    80002f74:	0ff4f493          	andi	s1,s1,255
            putCharacterInput(c);
    80002f78:	00048513          	mv	a0,s1
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	ed4080e7          	jalr	-300(ra) # 80002e50 <_ZN8KConsole17putCharacterInputEc>
            putCharacterOutput(c);
    80002f84:	00048513          	mv	a0,s1
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	f58080e7          	jalr	-168(ra) # 80002ee0 <_ZN8KConsole18putCharacterOutputEc>
        uint64 x = CONSOLE_STATUS;
    80002f90:	00009797          	auipc	a5,0x9
    80002f94:	ad07b783          	ld	a5,-1328(a5) # 8000ba60 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f98:	0007b783          	ld	a5,0(a5)
        __asm__ volatile("mv a0, %0"::"r"(x));
    80002f9c:	00078513          	mv	a0,a5
        __asm__ volatile("lb a1, 0(a0)");
    80002fa0:	00050583          	lb	a1,0(a0)
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80002fa4:	00058793          	mv	a5,a1
        if(operation & STATUS_READ_MASK)
    80002fa8:	0017f793          	andi	a5,a5,1
    80002fac:	fa0798e3          	bnez	a5,80002f5c <_ZN8KConsole24getCharactersFromConsoleEPv+0x34>
}
    80002fb0:	01813083          	ld	ra,24(sp)
    80002fb4:	01013403          	ld	s0,16(sp)
    80002fb8:	00813483          	ld	s1,8(sp)
    80002fbc:	02010113          	addi	sp,sp,32
    80002fc0:	00008067          	ret
    80002fc4:	00008067          	ret

0000000080002fc8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00113423          	sd	ra,8(sp)
    80002fd0:	00813023          	sd	s0,0(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    hasCharactersOutput->wait();
    80002fd8:	00009517          	auipc	a0,0x9
    80002fdc:	b7853503          	ld	a0,-1160(a0) # 8000bb50 <_ZN8KConsole19hasCharactersOutputE>
    80002fe0:	00001097          	auipc	ra,0x1
    80002fe4:	3f0080e7          	jalr	1008(ra) # 800043d0 <_ZN10KSemaphore4waitEv>
    return getChar(headOutput, tailOutput);
    80002fe8:	00009597          	auipc	a1,0x9
    80002fec:	b8058593          	addi	a1,a1,-1152 # 8000bb68 <_ZN8KConsole10tailOutputE>
    80002ff0:	00009517          	auipc	a0,0x9
    80002ff4:	b8050513          	addi	a0,a0,-1152 # 8000bb70 <_ZN8KConsole10headOutputE>
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	d48080e7          	jalr	-696(ra) # 80002d40 <_ZN8KConsole7getCharERPNS_4ElemES2_>
}
    80003000:	00813083          	ld	ra,8(sp)
    80003004:	00013403          	ld	s0,0(sp)
    80003008:	01010113          	addi	sp,sp,16
    8000300c:	00008067          	ret

0000000080003010 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003010:	fe010113          	addi	sp,sp,-32
    80003014:	00113c23          	sd	ra,24(sp)
    80003018:	00813823          	sd	s0,16(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00c0006f          	j	8000302c <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>
                thread_dispatch();
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	310080e7          	jalr	784(ra) # 80001334 <thread_dispatch>
            uint64 x = CONSOLE_STATUS;
    8000302c:	00009797          	auipc	a5,0x9
    80003030:	a347b783          	ld	a5,-1484(a5) # 8000ba60 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003034:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003038:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    8000303c:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003040:	00058793          	mv	a5,a1
            if (operation & STATUS_WRITE_MASK)
    80003044:	0207f793          	andi	a5,a5,32
    80003048:	fc078ee3          	beqz	a5,80003024 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
                char volatile c = getCharacterOutput();
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	f7c080e7          	jalr	-132(ra) # 80002fc8 <_ZN8KConsole18getCharacterOutputEv>
    80003054:	fea407a3          	sb	a0,-17(s0)
                x = CONSOLE_RX_DATA;
    80003058:	00009797          	auipc	a5,0x9
    8000305c:	a007b783          	ld	a5,-1536(a5) # 8000ba58 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003060:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003064:	00078513          	mv	a0,a5
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
    80003068:	fef44783          	lbu	a5,-17(s0)
    8000306c:	0ff7f793          	andi	a5,a5,255
    80003070:	00078593          	mv	a1,a5
                __asm__ volatile("sb a1,0(a0)");
    80003074:	00b50023          	sb	a1,0(a0)
    80003078:	fb5ff06f          	j	8000302c <_ZN8KConsole23sendCharactersToConsoleEPv+0x1c>

000000008000307c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00113423          	sd	ra,8(sp)
    80003084:	00813023          	sd	s0,0(sp)
    80003088:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    8000308c:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003090:	0ff57513          	andi	a0,a0,255
    80003094:	00000097          	auipc	ra,0x0
    80003098:	e4c080e7          	jalr	-436(ra) # 80002ee0 <_ZN8KConsole18putCharacterOutputEc>
    Elem* curr = headOutput;
    8000309c:	00009797          	auipc	a5,0x9
    800030a0:	ad47b783          	ld	a5,-1324(a5) # 8000bb70 <_ZN8KConsole10headOutputE>
    while(curr != 0)
    800030a4:	00078663          	beqz	a5,800030b0 <_ZN8KConsole11putcHandlerEv+0x34>
    {
        curr = curr->next;
    800030a8:	0007b783          	ld	a5,0(a5)
    while(curr != 0)
    800030ac:	ff9ff06f          	j	800030a4 <_ZN8KConsole11putcHandlerEv+0x28>
    }
}
    800030b0:	00813083          	ld	ra,8(sp)
    800030b4:	00013403          	ld	s0,0(sp)
    800030b8:	01010113          	addi	sp,sp,16
    800030bc:	00008067          	ret

00000000800030c0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00113423          	sd	ra,8(sp)
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	01010413          	addi	s0,sp,16
    pendingGetc++;
    800030d0:	00009717          	auipc	a4,0x9
    800030d4:	a7870713          	addi	a4,a4,-1416 # 8000bb48 <_ZN8KConsole18hasCharactersInputE>
    800030d8:	03073783          	ld	a5,48(a4)
    800030dc:	00178793          	addi	a5,a5,1
    800030e0:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	db4080e7          	jalr	-588(ra) # 80002e98 <_ZN8KConsole17getCharacterInputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800030ec:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800030f0:	00001097          	auipc	ra,0x1
    800030f4:	d88080e7          	jalr	-632(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    800030f8:	00813083          	ld	ra,8(sp)
    800030fc:	00013403          	ld	s0,0(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <_ZN8KConsole11printBufferEv>:

void KConsole::printBuffer()
{
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00113c23          	sd	ra,24(sp)
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	02010413          	addi	s0,sp,32
    Elem* curr = headInput;
    8000311c:	00009497          	auipc	s1,0x9
    80003120:	a444b483          	ld	s1,-1468(s1) # 8000bb60 <_ZN8KConsole9headInputE>
    while(curr != 0)
    80003124:	00048c63          	beqz	s1,8000313c <_ZN8KConsole11printBufferEv+0x34>
    {
        putc(curr->data);
    80003128:	0084c503          	lbu	a0,8(s1)
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	40c080e7          	jalr	1036(ra) # 80001538 <putc>
        curr = curr->next;
    80003134:	0004b483          	ld	s1,0(s1)
    while(curr != 0)
    80003138:	fedff06f          	j	80003124 <_ZN8KConsole11printBufferEv+0x1c>
    }
}
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	02010113          	addi	sp,sp,32
    8000314c:	00008067          	ret

0000000080003150 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/SleepPCBList.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00813423          	sd	s0,8(sp)
    80003158:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    8000315c:	00009797          	auipc	a5,0x9
    80003160:	9447b783          	ld	a5,-1724(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003164:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003168:	00500793          	li	a5,5
    8000316c:	02f62c23          	sw	a5,56(a2)
    //Riscv::printString("Inserting sleeping PCB...\n");
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003170:	00009797          	auipc	a5,0x9
    80003174:	a107b783          	ld	a5,-1520(a5) # 8000bb80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003178:	00000593          	li	a1,0
    while(curr != 0)
    8000317c:	02078063          	beqz	a5,8000319c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003180:	01863683          	ld	a3,24(a2)
    80003184:	0187b703          	ld	a4,24(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003188:	00e6e863          	bltu	a3,a4,80003198 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000318c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003190:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003194:	fe9ff06f          	j	8000317c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003198:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000319c:	00058a63          	beqz	a1,800031b0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        //    sleepingPCBHead->nextPCB->setTimeToSleep(sleepingPCBHead->nextPCB->getTimeToSleep() - sleepingPCBHead->getTimeToSleep());
    }
    else
    {
        //PCB::running->setTimeToSleep(PCB::running->getTimeToSleep() - prev->getTimeToSleep());
        prev->nextPCB = PCB::running;
    800031a0:	00c5b423          	sd	a2,8(a1)
    }
}
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800031b0:	00009797          	auipc	a5,0x9
    800031b4:	9cc7b823          	sd	a2,-1584(a5) # 8000bb80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800031b8:	fedff06f          	j	800031a4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800031bc <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    //Riscv::printString("Waking PCBs...\n");
    PCB* curr = sleepingPCBHead;
    800031bc:	00009517          	auipc	a0,0x9
    800031c0:	9c453503          	ld	a0,-1596(a0) # 8000bb80 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800031c4:	06050e63          	beqz	a0,80003240 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    {
        //Riscv::printString("No sleeping PCBs...\n");
        return;
    }
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800031c8:	06050c63          	beqz	a0,80003240 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800031cc:	01853783          	ld	a5,24(a0)
    800031d0:	00009717          	auipc	a4,0x9
    800031d4:	8c873703          	ld	a4,-1848(a4) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x48>
    800031d8:	00073703          	ld	a4,0(a4)
    800031dc:	06f76263          	bltu	a4,a5,80003240 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	00813823          	sd	s0,16(sp)
    800031ec:	00913423          	sd	s1,8(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	0180006f          	j	8000320c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800031f8:	0184b783          	ld	a5,24(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800031fc:	00009717          	auipc	a4,0x9
    80003200:	89c73703          	ld	a4,-1892(a4) # 8000ba98 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003204:	00073703          	ld	a4,0(a4)
    80003208:	02f76263          	bltu	a4,a5,8000322c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000320c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003210:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003214:	00000097          	auipc	ra,0x0
    80003218:	244080e7          	jalr	580(ra) # 80003458 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000321c:	00009797          	auipc	a5,0x9
    80003220:	9697b223          	sd	s1,-1692(a5) # 8000bb80 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003224:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003228:	fc0498e3          	bnez	s1,800031f8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret
    80003240:	00008067          	ret

0000000080003244 <_ZN5Queue3popEv>:
//

#include "../h/Queue.hpp"

void Queue::pop()
{
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00813823          	sd	s0,16(sp)
    80003250:	00913423          	sd	s1,8(sp)
    80003254:	01213023          	sd	s2,0(sp)
    80003258:	02010413          	addi	s0,sp,32
    8000325c:	00050493          	mv	s1,a0
    Elem* newFirst = first->next;
    80003260:	00053503          	ld	a0,0(a0)
    80003264:	00853903          	ld	s2,8(a0)
    kfree(first);
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	060080e7          	jalr	96(ra) # 800042c8 <_Z5kfreePv>
    first = newFirst;
    80003270:	0124b023          	sd	s2,0(s1)
    if(first == 0)
    80003274:	00090e63          	beqz	s2,80003290 <_ZN5Queue3popEv+0x4c>
        first = last = 0;
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	00013903          	ld	s2,0(sp)
    80003288:	02010113          	addi	sp,sp,32
    8000328c:	00008067          	ret
        first = last = 0;
    80003290:	0004b423          	sd	zero,8(s1)
    80003294:	0004b023          	sd	zero,0(s1)
}
    80003298:	fe1ff06f          	j	80003278 <_ZN5Queue3popEv+0x34>

000000008000329c <_ZN5Queue4pushEP3PCB>:

void Queue::push(PCB* t)
{
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050493          	mv	s1,a0
    800032b8:	00058913          	mv	s2,a1
    Elem* newElem = (Elem*) kmalloc(sizeof(Elem));
    800032bc:	01000513          	li	a0,16
    800032c0:	00001097          	auipc	ra,0x1
    800032c4:	fa4080e7          	jalr	-92(ra) # 80004264 <_Z7kmallocm>
    newElem->data = t;
    800032c8:	01253023          	sd	s2,0(a0)
    newElem->next = 0;
    800032cc:	00053423          	sd	zero,8(a0)
    if(first == 0) {
    800032d0:	0004b783          	ld	a5,0(s1)
    800032d4:	02078463          	beqz	a5,800032fc <_ZN5Queue4pushEP3PCB+0x60>
        last = newElem;
        first->next = last->next = 0;
    }
    else
    {
        last->next = newElem;
    800032d8:	0084b783          	ld	a5,8(s1)
    800032dc:	00a7b423          	sd	a0,8(a5)
        last = newElem;
    800032e0:	00a4b423          	sd	a0,8(s1)
    }
}
    800032e4:	01813083          	ld	ra,24(sp)
    800032e8:	01013403          	ld	s0,16(sp)
    800032ec:	00813483          	ld	s1,8(sp)
    800032f0:	00013903          	ld	s2,0(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret
        first = newElem;
    800032fc:	00a4b023          	sd	a0,0(s1)
        last = newElem;
    80003300:	00a4b423          	sd	a0,8(s1)
        first->next = last->next = 0;
    80003304:	00053423          	sd	zero,8(a0)
    80003308:	0004b783          	ld	a5,0(s1)
    8000330c:	0007b423          	sd	zero,8(a5)
    80003310:	fd5ff06f          	j	800032e4 <_ZN5Queue4pushEP3PCB+0x48>

0000000080003314 <_ZN5Queue5frontEv>:


PCB* Queue::front()
{
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00813423          	sd	s0,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    if(first == 0)
    80003320:	00053503          	ld	a0,0(a0)
    80003324:	00050463          	beqz	a0,8000332c <_ZN5Queue5frontEv+0x18>
        return 0;
    return first->data;
    80003328:	00053503          	ld	a0,0(a0)
}
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret

0000000080003338 <_ZN5QueueC1Ev>:

Queue::Queue()
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00813423          	sd	s0,8(sp)
    80003340:	01010413          	addi	s0,sp,16
{
    first = last = 0;
    80003344:	00053423          	sd	zero,8(a0)
    80003348:	00053023          	sd	zero,0(a0)
}
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <_ZN5QueueD1Ev>:

Queue::~Queue()
{
    Elem* curr = first;
    80003358:	00053503          	ld	a0,0(a0)
    while(curr != 0)
    8000335c:	04050063          	beqz	a0,8000339c <_ZN5QueueD1Ev+0x44>
Queue::~Queue()
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	02010413          	addi	s0,sp,32
    {
        Elem* old = curr;
        curr = curr->next;
    80003374:	00853483          	ld	s1,8(a0)
        kfree(old);
    80003378:	00001097          	auipc	ra,0x1
    8000337c:	f50080e7          	jalr	-176(ra) # 800042c8 <_Z5kfreePv>
        curr = curr->next;
    80003380:	00048513          	mv	a0,s1
    while(curr != 0)
    80003384:	fe0498e3          	bnez	s1,80003374 <_ZN5QueueD1Ev+0x1c>
    }
}
    80003388:	01813083          	ld	ra,24(sp)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret
    8000339c:	00008067          	ret

00000000800033a0 <_ZN5Queue4sizeEv>:

int Queue::size()
{
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00813423          	sd	s0,8(sp)
    800033a8:	01010413          	addi	s0,sp,16
    Elem* curr = first;
    800033ac:	00053783          	ld	a5,0(a0)
    int cnt = 0;
    800033b0:	00000513          	li	a0,0
    while(curr != 0)
    800033b4:	00078863          	beqz	a5,800033c4 <_ZN5Queue4sizeEv+0x24>
    {
        cnt++;
    800033b8:	0015051b          	addiw	a0,a0,1
        curr = curr->next;
    800033bc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800033c0:	ff5ff06f          	j	800033b4 <_ZN5Queue4sizeEv+0x14>
    }
    return cnt;
    800033c4:	00813403          	ld	s0,8(sp)
    800033c8:	01010113          	addi	sp,sp,16
    800033cc:	00008067          	ret

00000000800033d0 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800033d0:	ff010113          	addi	sp,sp,-16
    800033d4:	00113423          	sd	ra,8(sp)
    800033d8:	00813023          	sd	s0,0(sp)
    800033dc:	01010413          	addi	s0,sp,16
    return kmalloc(size);
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	e84080e7          	jalr	-380(ra) # 80004264 <_Z7kmallocm>
}
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00113423          	sd	ra,8(sp)
    80003400:	00813023          	sd	s0,0(sp)
    80003404:	01010413          	addi	s0,sp,16
    kfree(p);
    80003408:	00001097          	auipc	ra,0x1
    8000340c:	ec0080e7          	jalr	-320(ra) # 800042c8 <_Z5kfreePv>
}
    80003410:	00813083          	ld	ra,8(sp)
    80003414:	00013403          	ld	s0,0(sp)
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00813423          	sd	s0,8(sp)
    80003428:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000342c:	00008797          	auipc	a5,0x8
    80003430:	75c7b783          	ld	a5,1884(a5) # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003434:	00000513          	li	a0,0
    while(curr != 0)
    80003438:	00078863          	beqz	a5,80003448 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000343c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003440:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003444:	ff5ff06f          	j	80003438 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003448:	0005051b          	sext.w	a0,a0
    8000344c:	00813403          	ld	s0,8(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003458:	ff010113          	addi	sp,sp,-16
    8000345c:	00813423          	sd	s0,8(sp)
    80003460:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003464:	02052c23          	sw	zero,56(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003468:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    8000346c:	00008797          	auipc	a5,0x8
    80003470:	71c7b783          	ld	a5,1820(a5) # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    80003474:	02078263          	beqz	a5,80003498 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003478:	00008797          	auipc	a5,0x8
    8000347c:	71078793          	addi	a5,a5,1808 # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    80003480:	0087b703          	ld	a4,8(a5)
    80003484:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003488:	00a7b423          	sd	a0,8(a5)
    }
}
    8000348c:	00813403          	ld	s0,8(sp)
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003498:	00008797          	auipc	a5,0x8
    8000349c:	6f078793          	addi	a5,a5,1776 # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    800034a0:	00a7b423          	sd	a0,8(a5)
    800034a4:	00a7b023          	sd	a0,0(a5)
    800034a8:	fe5ff06f          	j	8000348c <_ZN9Scheduler3putEP3PCB+0x34>

00000000800034ac <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00813423          	sd	s0,8(sp)
    800034b4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800034b8:	00008517          	auipc	a0,0x8
    800034bc:	6d053503          	ld	a0,1744(a0) # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    800034c0:	00050c63          	beqz	a0,800034d8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800034c4:	00853783          	ld	a5,8(a0)
    800034c8:	00078e63          	beqz	a5,800034e4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800034cc:	00008717          	auipc	a4,0x8
    800034d0:	6af73e23          	sd	a5,1724(a4) # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800034d4:	00053423          	sd	zero,8(a0)
    return retval;
}
    800034d8:	00813403          	ld	s0,8(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800034e4:	00008797          	auipc	a5,0x8
    800034e8:	6a478793          	addi	a5,a5,1700 # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    800034ec:	0007b423          	sd	zero,8(a5)
    800034f0:	0007b023          	sd	zero,0(a5)
    800034f4:	fe1ff06f          	j	800034d4 <_ZN9Scheduler3getEv+0x28>

00000000800034f8 <_ZN9Scheduler5printEv>:

void Scheduler::print() {
    800034f8:	fe010113          	addi	sp,sp,-32
    800034fc:	00113c23          	sd	ra,24(sp)
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	02010413          	addi	s0,sp,32
    printString("Scheduler print\n");
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	d4c50513          	addi	a0,a0,-692 # 80009258 <CONSOLE_STATUS+0x248>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	634080e7          	jalr	1588(ra) # 80005b48 <_Z11printStringPKc>
    PCB* curr = schedulerPCBHead;
    8000351c:	00008497          	auipc	s1,0x8
    80003520:	66c4b483          	ld	s1,1644(s1) # 8000bb88 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003524:	02048863          	beqz	s1,80003554 <_ZN9Scheduler5printEv+0x5c>
    {
        printInt((uint64)curr, 16);
    80003528:	00000613          	li	a2,0
    8000352c:	01000593          	li	a1,16
    80003530:	0004851b          	sext.w	a0,s1
    80003534:	00002097          	auipc	ra,0x2
    80003538:	7ac080e7          	jalr	1964(ra) # 80005ce0 <_Z8printIntiii>
        printString("\n");
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	bc450513          	addi	a0,a0,-1084 # 80009100 <CONSOLE_STATUS+0xf0>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	604080e7          	jalr	1540(ra) # 80005b48 <_Z11printStringPKc>
        curr = curr->nextPCB;
    8000354c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003550:	fd5ff06f          	j	80003524 <_ZN9Scheduler5printEv+0x2c>
    }
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	02010113          	addi	sp,sp,32
    80003564:	00008067          	ret

0000000080003568 <main>:
#include "../h/Riscv.hpp"
#include "../h/Tests.hpp"
#include "../test/userMain.hpp"

void main()
{
    80003568:	ff010113          	addi	sp,sp,-16
    8000356c:	00113423          	sd	ra,8(sp)
    80003570:	00813023          	sd	s0,0(sp)
    80003574:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	7c8080e7          	jalr	1992(ra) # 80003d40 <_ZN5Riscv10kernelMainEv>
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret

0000000080003590 <_ZN6Thread6runnerEPv>:
{
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00113423          	sd	ra,8(sp)
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800035a0:	00053783          	ld	a5,0(a0)
    800035a4:	0107b783          	ld	a5,16(a5)
    800035a8:	000780e7          	jalr	a5
}
    800035ac:	00813083          	ld	ra,8(sp)
    800035b0:	00013403          	ld	s0,0(sp)
    800035b4:	01010113          	addi	sp,sp,16
    800035b8:	00008067          	ret

00000000800035bc <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00113423          	sd	ra,8(sp)
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	01010413          	addi	s0,sp,16
    800035cc:	00008797          	auipc	a5,0x8
    800035d0:	3ac78793          	addi	a5,a5,940 # 8000b978 <_ZTV6Thread+0x10>
    800035d4:	00f53023          	sd	a5,0(a0)
{
    mem_free(myHandle);
    800035d8:	00853503          	ld	a0,8(a0)
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	cac080e7          	jalr	-852(ra) # 80001288 <mem_free>
}
    800035e4:	00813083          	ld	ra,8(sp)
    800035e8:	00013403          	ld	s0,0(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00113423          	sd	ra,8(sp)
    800035fc:	00813023          	sd	s0,0(sp)
    80003600:	01010413          	addi	s0,sp,16
    80003604:	00008797          	auipc	a5,0x8
    80003608:	39c78793          	addi	a5,a5,924 # 8000b9a0 <_ZTV9Semaphore+0x10>
    8000360c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80003610:	00853503          	ld	a0,8(a0)
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	c74080e7          	jalr	-908(ra) # 80001288 <mem_free>
}
    8000361c:	00813083          	ld	ra,8(sp)
    80003620:	00013403          	ld	s0,0(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <_Znwm>:
{
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00113423          	sd	ra,8(sp)
    80003634:	00813023          	sd	s0,0(sp)
    80003638:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	c1c080e7          	jalr	-996(ra) # 80001258 <mem_alloc>
}
    80003644:	00813083          	ld	ra,8(sp)
    80003648:	00013403          	ld	s0,0(sp)
    8000364c:	01010113          	addi	sp,sp,16
    80003650:	00008067          	ret

0000000080003654 <_ZdlPv>:
{
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	c24080e7          	jalr	-988(ra) # 80001288 <mem_free>
}
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00050493          	mv	s1,a0
}
    80003694:	00000097          	auipc	ra,0x0
    80003698:	f28080e7          	jalr	-216(ra) # 800035bc <_ZN6ThreadD1Ev>
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	fb4080e7          	jalr	-76(ra) # 80003654 <_ZdlPv>
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	02010113          	addi	sp,sp,32
    800036b8:	00008067          	ret

00000000800036bc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00050493          	mv	s1,a0
}
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	f20080e7          	jalr	-224(ra) # 800035f4 <_ZN9SemaphoreD1Ev>
    800036dc:	00048513          	mv	a0,s1
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	f74080e7          	jalr	-140(ra) # 80003654 <_ZdlPv>
    800036e8:	01813083          	ld	ra,24(sp)
    800036ec:	01013403          	ld	s0,16(sp)
    800036f0:	00813483          	ld	s1,8(sp)
    800036f4:	02010113          	addi	sp,sp,32
    800036f8:	00008067          	ret

00000000800036fc <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800036fc:	00853503          	ld	a0,8(a0)
    80003700:	02050663          	beqz	a0,8000372c <_ZN6Thread5startEv+0x30>
{
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	00813023          	sd	s0,0(sp)
    80003710:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	d50080e7          	jalr	-688(ra) # 80001464 <thread_start>
}
    8000371c:	00813083          	ld	ra,8(sp)
    80003720:	00013403          	ld	s0,0(sp)
    80003724:	01010113          	addi	sp,sp,16
    80003728:	00008067          	ret
        return -1;
    8000372c:	fff00513          	li	a0,-1
}
    80003730:	00008067          	ret

0000000080003734 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00113423          	sd	ra,8(sp)
    8000373c:	00813023          	sd	s0,0(sp)
    80003740:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	bf0080e7          	jalr	-1040(ra) # 80001334 <thread_dispatch>
}
    8000374c:	00813083          	ld	ra,8(sp)
    80003750:	00013403          	ld	s0,0(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret

000000008000375c <_ZN6Thread5sleepEm>:
{
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00113423          	sd	ra,8(sp)
    80003764:	00813023          	sd	s0,0(sp)
    80003768:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	ccc080e7          	jalr	-820(ra) # 80001438 <time_sleep>
}
    80003774:	00813083          	ld	ra,8(sp)
    80003778:	00013403          	ld	s0,0(sp)
    8000377c:	01010113          	addi	sp,sp,16
    80003780:	00008067          	ret

0000000080003784 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	01213023          	sd	s2,0(sp)
    80003798:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000379c:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800037a0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800037a4:	0004b783          	ld	a5,0(s1)
    800037a8:	0187b783          	ld	a5,24(a5)
    800037ac:	00048513          	mv	a0,s1
    800037b0:	000780e7          	jalr	a5
        Thread::sleep(time);
    800037b4:	00090513          	mv	a0,s2
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	fa4080e7          	jalr	-92(ra) # 8000375c <_ZN6Thread5sleepEm>
    while(true)
    800037c0:	fe5ff06f          	j	800037a4 <_ZN14PeriodicThread6runnerEPv+0x20>

00000000800037c4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
    800037d4:	00008797          	auipc	a5,0x8
    800037d8:	1a478793          	addi	a5,a5,420 # 8000b978 <_ZTV6Thread+0x10>
    800037dc:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, body, args);
    800037e0:	00850513          	addi	a0,a0,8
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	cac080e7          	jalr	-852(ra) # 80001490 <thread_make_pcb>
}
    800037ec:	00813083          	ld	ra,8(sp)
    800037f0:	00013403          	ld	s0,0(sp)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret

00000000800037fc <_ZN6ThreadC1Ev>:
Thread::Thread()
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
    8000380c:	00008797          	auipc	a5,0x8
    80003810:	16c78793          	addi	a5,a5,364 # 8000b978 <_ZTV6Thread+0x10>
    80003814:	00f53023          	sd	a5,0(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003818:	00050613          	mv	a2,a0
    8000381c:	00000597          	auipc	a1,0x0
    80003820:	d7458593          	addi	a1,a1,-652 # 80003590 <_ZN6Thread6runnerEPv>
    80003824:	00850513          	addi	a0,a0,8
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	c68080e7          	jalr	-920(ra) # 80001490 <thread_make_pcb>
}
    80003830:	00813083          	ld	ra,8(sp)
    80003834:	00013403          	ld	s0,0(sp)
    80003838:	01010113          	addi	sp,sp,16
    8000383c:	00008067          	ret

0000000080003840 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003840:	00853503          	ld	a0,8(a0)
    80003844:	02050663          	beqz	a0,80003870 <_ZN9Semaphore4waitEv+0x30>
{
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00113423          	sd	ra,8(sp)
    80003850:	00813023          	sd	s0,0(sp)
    80003854:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	b88080e7          	jalr	-1144(ra) # 800013e0 <sem_wait>
}
    80003860:	00813083          	ld	ra,8(sp)
    80003864:	00013403          	ld	s0,0(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret
        return -1;
    80003870:	fff00513          	li	a0,-1
}
    80003874:	00008067          	ret

0000000080003878 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003878:	fe010113          	addi	sp,sp,-32
    8000387c:	00113c23          	sd	ra,24(sp)
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00913423          	sd	s1,8(sp)
    80003888:	02010413          	addi	s0,sp,32
    8000388c:	00050493          	mv	s1,a0
    80003890:	00008797          	auipc	a5,0x8
    80003894:	11078793          	addi	a5,a5,272 # 8000b9a0 <_ZTV9Semaphore+0x10>
    80003898:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000389c:	00850513          	addi	a0,a0,8
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	adc080e7          	jalr	-1316(ra) # 8000137c <sem_open>
    if(retval != 0)
    800038a8:	00050463          	beqz	a0,800038b0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    800038ac:	0004b423          	sd	zero,8(s1)
}
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00813483          	ld	s1,8(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret

00000000800038c4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    800038c4:	00853503          	ld	a0,8(a0)
    800038c8:	02050663          	beqz	a0,800038f4 <_ZN9Semaphore6signalEv+0x30>
{
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00113423          	sd	ra,8(sp)
    800038d4:	00813023          	sd	s0,0(sp)
    800038d8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	b30080e7          	jalr	-1232(ra) # 8000140c <sem_signal>
}
    800038e4:	00813083          	ld	ra,8(sp)
    800038e8:	00013403          	ld	s0,0(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret
        return -1;
    800038f4:	fff00513          	li	a0,-1
}
    800038f8:	00008067          	ret

00000000800038fc <_ZN7Console4getcEv>:
{
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00813423          	sd	s0,8(sp)
    80003904:	01010413          	addi	s0,sp,16
}
    80003908:	00000513          	li	a0,0
    8000390c:	00813403          	ld	s0,8(sp)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret

0000000080003918 <_ZN7Console4putcEc>:
{
    80003918:	ff010113          	addi	sp,sp,-16
    8000391c:	00813423          	sd	s0,8(sp)
    80003920:	01010413          	addi	s0,sp,16
}
    80003924:	00813403          	ld	s0,8(sp)
    80003928:	01010113          	addi	sp,sp,16
    8000392c:	00008067          	ret

0000000080003930 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00113c23          	sd	ra,24(sp)
    80003938:	00813823          	sd	s0,16(sp)
    8000393c:	00913423          	sd	s1,8(sp)
    80003940:	01213023          	sd	s2,0(sp)
    80003944:	02010413          	addi	s0,sp,32
    80003948:	00050493          	mv	s1,a0
    8000394c:	00058913          	mv	s2,a1
    80003950:	01000513          	li	a0,16
    80003954:	00000097          	auipc	ra,0x0
    80003958:	cd8080e7          	jalr	-808(ra) # 8000362c <_Znwm>
    8000395c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003960:	00953023          	sd	s1,0(a0)
    80003964:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003968:	00000597          	auipc	a1,0x0
    8000396c:	e1c58593          	addi	a1,a1,-484 # 80003784 <_ZN14PeriodicThread6runnerEPv>
    80003970:	00048513          	mv	a0,s1
    80003974:	00000097          	auipc	ra,0x0
    80003978:	e50080e7          	jalr	-432(ra) # 800037c4 <_ZN6ThreadC1EPFvPvES0_>
    8000397c:	00008797          	auipc	a5,0x8
    80003980:	f9478793          	addi	a5,a5,-108 # 8000b910 <_ZTV14PeriodicThread+0x10>
    80003984:	00f4b023          	sd	a5,0(s1)
}
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	01013403          	ld	s0,16(sp)
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	00013903          	ld	s2,0(sp)
    80003998:	02010113          	addi	sp,sp,32
    8000399c:	00008067          	ret

00000000800039a0 <_ZN5Riscv15userMainWrapperEPv>:

    ::printString("End...\n");
}

void Riscv::userMainWrapper(void* )
{
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00113423          	sd	ra,8(sp)
    800039a8:	00813023          	sd	s0,0(sp)
    800039ac:	01010413          	addi	s0,sp,16
    userMain();
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	76c080e7          	jalr	1900(ra) # 8000611c <_Z8userMainv>
}
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_ZN5Riscv10initSystemEv>:
{
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00113423          	sd	ra,8(sp)
    800039d0:	00813023          	sd	s0,0(sp)
    800039d4:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	0987b783          	ld	a5,152(a5) # 8000ba70 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800039e0:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	fdc080e7          	jalr	-36(ra) # 800029c0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	3b4080e7          	jalr	948(ra) # 80002da0 <_ZN8KConsole10initializeEv>
}
    800039f4:	00813083          	ld	ra,8(sp)
    800039f8:	00013403          	ld	s0,0(sp)
    800039fc:	01010113          	addi	sp,sp,16
    80003a00:	00008067          	ret

0000000080003a04 <_ZN5Riscv16enableInterruptsEv>:
void Riscv::enableInterrupts() {
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00813423          	sd	s0,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003a10:	00200793          	li	a5,2
    80003a14:	1007a073          	csrs	sstatus,a5
}
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN5Riscv17disableInterruptsEv>:
{
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003a30:	00200793          	li	a5,2
    80003a34:	1007b073          	csrc	sstatus,a5
}
    80003a38:	00813403          	ld	s0,8(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <_ZN5Riscv9endSystemEv>:
{
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
    Riscv::disableInterrupts();
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	fd0080e7          	jalr	-48(ra) # 80003a24 <_ZN5Riscv17disableInterruptsEv>
}
    80003a5c:	00813083          	ld	ra,8(sp)
    80003a60:	00013403          	ld	s0,0(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN5Riscv10popSppSpieEv>:
{
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00813423          	sd	s0,8(sp)
    80003a74:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80003a78:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80003a7c:	10200073          	sret
}
    80003a80:	00813403          	ld	s0,8(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80003a8c:	f9010113          	addi	sp,sp,-112
    80003a90:	06113423          	sd	ra,104(sp)
    80003a94:	06813023          	sd	s0,96(sp)
    80003a98:	04913c23          	sd	s1,88(sp)
    80003a9c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003aa0:	00070713          	mv	a4,a4
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	00c7b783          	ld	a5,12(a5) # 8000bab0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003aac:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003ab0:	00008797          	auipc	a5,0x8
    80003ab4:	ff07b783          	ld	a5,-16(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003ab8:	0007b783          	ld	a5,0(a5)
    80003abc:	14002773          	csrr	a4,sscratch
    80003ac0:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003ac4:	142027f3          	csrr	a5,scause
    80003ac8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80003acc:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003ad0:	fff00713          	li	a4,-1
    80003ad4:	03f71713          	slli	a4,a4,0x3f
    80003ad8:	00170713          	addi	a4,a4,1
    80003adc:	0ce78e63          	beq	a5,a4,80003bb8 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    80003ae0:	fff00713          	li	a4,-1
    80003ae4:	03f71713          	slli	a4,a4,0x3f
    80003ae8:	00170713          	addi	a4,a4,1
    80003aec:	04f76e63          	bltu	a4,a5,80003b48 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>
    80003af0:	ff878793          	addi	a5,a5,-8
    80003af4:	00100713          	li	a4,1
    80003af8:	18f76c63          	bltu	a4,a5,80003c90 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003afc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003b00:	14102773          	csrr	a4,sepc
    80003b04:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003b08:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003b0c:	00470713          	addi	a4,a4,4
    80003b10:	fae43423          	sd	a4,-88(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003b14:	10002773          	csrr	a4,sstatus
    80003b18:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003b1c:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003b20:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80003b24:	04200713          	li	a4,66
    80003b28:	14f76c63          	bltu	a4,a5,80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
    80003b2c:	00279793          	slli	a5,a5,0x2
    80003b30:	00005717          	auipc	a4,0x5
    80003b34:	73c70713          	addi	a4,a4,1852 # 8000926c <CONSOLE_STATUS+0x25c>
    80003b38:	00e787b3          	add	a5,a5,a4
    80003b3c:	0007a783          	lw	a5,0(a5)
    80003b40:	00e787b3          	add	a5,a5,a4
    80003b44:	00078067          	jr	a5
    switch(scause)
    80003b48:	fff00713          	li	a4,-1
    80003b4c:	03f71713          	slli	a4,a4,0x3f
    80003b50:	00970713          	addi	a4,a4,9
    80003b54:	12e79e63          	bne	a5,a4,80003c90 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            uint64 x = CONSOLE_STATUS;
    80003b58:	00008797          	auipc	a5,0x8
    80003b5c:	f087b783          	ld	a5,-248(a5) # 8000ba60 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003b60:	0007b783          	ld	a5,0(a5)
            __asm__ volatile("mv a0, %0"::"r"(x));
    80003b64:	00078513          	mv	a0,a5
            __asm__ volatile("lb a1, 0(a0)");
    80003b68:	00050583          	lb	a1,0(a0)
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
    80003b6c:	00058793          	mv	a5,a1
            if(operation & KConsole::STATUS_READ_MASK)
    80003b70:	0017f793          	andi	a5,a5,1
    80003b74:	02078863          	beqz	a5,80003ba4 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                x = CONSOLE_TX_DATA;
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	f087b783          	ld	a5,-248(a5) # 8000ba80 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003b80:	0007b783          	ld	a5,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(x));
    80003b84:	00078513          	mv	a0,a5
                __asm__ volatile("lb a1,0(a0)");
    80003b88:	00050583          	lb	a1,0(a0)
                __asm__ volatile("mv %0, a1" :  "=r"(c));
    80003b8c:	00058513          	mv	a0,a1
    80003b90:	0ff57493          	andi	s1,a0,255
                if(KConsole::pendingGetc > 0)
    80003b94:	00008797          	auipc	a5,0x8
    80003b98:	ee47b783          	ld	a5,-284(a5) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b9c:	0007b783          	ld	a5,0(a5)
    80003ba0:	0a079663          	bnez	a5,80003c4c <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            plic_complete(plic_claim());
    80003ba4:	00003097          	auipc	ra,0x3
    80003ba8:	180080e7          	jalr	384(ra) # 80006d24 <plic_claim>
    80003bac:	00003097          	auipc	ra,0x3
    80003bb0:	1b0080e7          	jalr	432(ra) # 80006d5c <plic_complete>
            break;
    80003bb4:	0dc0006f          	j	80003c90 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003bb8:	141027f3          	csrr	a5,sepc
    80003bbc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80003bc0:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80003bc4:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003bc8:	100027f3          	csrr	a5,sstatus
    80003bcc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003bd0:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003bd4:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80003bd8:	00200793          	li	a5,2
    80003bdc:	1447b073          	csrc	sip,a5
            totalTime++;
    80003be0:	00008717          	auipc	a4,0x8
    80003be4:	fb870713          	addi	a4,a4,-72 # 8000bb98 <_ZN5Riscv9totalTimeE>
    80003be8:	00073783          	ld	a5,0(a4)
    80003bec:	00178793          	addi	a5,a5,1
    80003bf0:	00f73023          	sd	a5,0(a4)
            PCB::timeSliceCounter++;
    80003bf4:	00008497          	auipc	s1,0x8
    80003bf8:	e944b483          	ld	s1,-364(s1) # 8000ba88 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003bfc:	0004b783          	ld	a5,0(s1)
    80003c00:	00178793          	addi	a5,a5,1
    80003c04:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	5b4080e7          	jalr	1460(ra) # 800031bc <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003c10:	00008797          	auipc	a5,0x8
    80003c14:	e907b783          	ld	a5,-368(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003c18:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003c1c:	0187b783          	ld	a5,24(a5)
    80003c20:	0004b703          	ld	a4,0(s1)
    80003c24:	00f77c63          	bgeu	a4,a5,80003c3c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            Riscv::w_sstatus(sstatus);
    80003c28:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c2c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c30:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c34:	14179073          	csrw	sepc,a5
}
    80003c38:	0580006f          	j	80003c90 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                PCB::timeSliceCounter = 0;
    80003c3c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	c90080e7          	jalr	-880(ra) # 800028d0 <_ZN3PCB8dispatchEv>
    80003c48:	fe1ff06f          	j	80003c28 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    KConsole::pendingGetc--;
    80003c4c:	fff78793          	addi	a5,a5,-1
    80003c50:	00008717          	auipc	a4,0x8
    80003c54:	e2873703          	ld	a4,-472(a4) # 8000ba78 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003c58:	00f73023          	sd	a5,0(a4)
                    KConsole::putCharacterInput(c);
    80003c5c:	00048513          	mv	a0,s1
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	1f0080e7          	jalr	496(ra) # 80002e50 <_ZN8KConsole17putCharacterInputEc>
                    KConsole::putCharacterOutput(c);
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	fffff097          	auipc	ra,0xfffff
    80003c70:	274080e7          	jalr	628(ra) # 80002ee0 <_ZN8KConsole18putCharacterOutputEc>
    80003c74:	f31ff06f          	j	80003ba4 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
                    MemoryAllocator::memAllocHandler();
    80003c78:	00000097          	auipc	ra,0x0
    80003c7c:	614080e7          	jalr	1556(ra) # 8000428c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80003c80:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003c84:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003c88:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003c8c:	14179073          	csrw	sepc,a5
}
    80003c90:	06813083          	ld	ra,104(sp)
    80003c94:	06013403          	ld	s0,96(sp)
    80003c98:	05813483          	ld	s1,88(sp)
    80003c9c:	07010113          	addi	sp,sp,112
    80003ca0:	00008067          	ret
                    MemoryAllocator::memFreeHandler();
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	64c080e7          	jalr	1612(ra) # 800042f0 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80003cac:	fd5ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadMakePCBHandler();
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	f84080e7          	jalr	-124(ra) # 80002c34 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80003cb8:	fc9ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadCreateHandler();
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	e94080e7          	jalr	-364(ra) # 80002b50 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003cc4:	fbdff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadStartHandler();
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	f28080e7          	jalr	-216(ra) # 80002bf0 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003cd0:	fb1ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadDispatchHandler();
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	de8080e7          	jalr	-536(ra) # 80002abc <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80003cdc:	fa5ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadExitHandler();
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	d80080e7          	jalr	-640(ra) # 80002a60 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003ce8:	f99ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    PCB::threadSleepHandler();
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	e00080e7          	jalr	-512(ra) # 80002aec <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003cf4:	f8dff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semOpenHandler();
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	8a8080e7          	jalr	-1880(ra) # 800045a0 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80003d00:	f81ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semWaitHandler();
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	934080e7          	jalr	-1740(ra) # 80004638 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003d0c:	f75ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semSignalHandler();
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	968080e7          	jalr	-1688(ra) # 80004678 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003d18:	f69ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KSemaphore::semCloseHandler();
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	99c080e7          	jalr	-1636(ra) # 800046b8 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003d24:	f5dff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KConsole::getcHandler();
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	398080e7          	jalr	920(ra) # 800030c0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80003d30:	f51ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                    KConsole::putcHandler();
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	348080e7          	jalr	840(ra) # 8000307c <_ZN8KConsole11putcHandlerEv>
                    break;
    80003d3c:	f45ff06f          	j	80003c80 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>

0000000080003d40 <_ZN5Riscv10kernelMainEv>:
{
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00813823          	sd	s0,16(sp)
    80003d4c:	00913423          	sd	s1,8(sp)
    80003d50:	01213023          	sd	s2,0(sp)
    80003d54:	02010413          	addi	s0,sp,32
    initSystem();
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	c70080e7          	jalr	-912(ra) # 800039c8 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	ca4080e7          	jalr	-860(ra) # 80003a04 <_ZN5Riscv16enableInterruptsEv>
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003d68:	00001537          	lui	a0,0x1
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	4f8080e7          	jalr	1272(ra) # 80004264 <_Z7kmallocm>
    80003d74:	00050913          	mv	s2,a0
    80003d78:	05800513          	li	a0,88
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	bc8080e7          	jalr	-1080(ra) # 80002944 <_ZN3PCBnwEm>
    80003d84:	00050493          	mv	s1,a0
    80003d88:	00200713          	li	a4,2
    80003d8c:	00090693          	mv	a3,s2
    80003d90:	00000613          	li	a2,0
    80003d94:	00000597          	auipc	a1,0x0
    80003d98:	c0c58593          	addi	a1,a1,-1012 # 800039a0 <_ZN5Riscv15userMainWrapperEPv>
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	aa8080e7          	jalr	-1368(ra) # 80002844 <_ZN3PCBC1EPFvPvES0_S0_m>
    userPCB->start();
    80003da4:	00048513          	mv	a0,s1
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	b00080e7          	jalr	-1280(ra) # 800028a8 <_ZN3PCB5startEv>
    while(!userPCB->isFinished())
    80003db0:	00048513          	mv	a0,s1
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	c88080e7          	jalr	-888(ra) # 80002a3c <_ZN3PCB10isFinishedEv>
    80003dbc:	00051863          	bnez	a0,80003dcc <_ZN5Riscv10kernelMainEv+0x8c>
        thread_dispatch();
    80003dc0:	ffffd097          	auipc	ra,0xffffd
    80003dc4:	574080e7          	jalr	1396(ra) # 80001334 <thread_dispatch>
    while(!userPCB->isFinished())
    80003dc8:	fe9ff06f          	j	80003db0 <_ZN5Riscv10kernelMainEv+0x70>
    disableInterrupts();
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	c58080e7          	jalr	-936(ra) # 80003a24 <_ZN5Riscv17disableInterruptsEv>
    endSystem();
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	c70080e7          	jalr	-912(ra) # 80003a44 <_ZN5Riscv9endSystemEv>
    ::printString("End...\n");
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	28c50513          	addi	a0,a0,652 # 80009068 <CONSOLE_STATUS+0x58>
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	d64080e7          	jalr	-668(ra) # 80005b48 <_Z11printStringPKc>
}
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	00013903          	ld	s2,0(sp)
    80003dfc:	02010113          	addi	sp,sp,32
    80003e00:	00008067          	ret
    80003e04:	00050913          	mv	s2,a0
    PCB* userPCB = new PCB(&Riscv::userMainWrapper, 0, kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	b60080e7          	jalr	-1184(ra) # 8000296c <_ZN3PCBdlEPv>
    80003e14:	00090513          	mv	a0,s2
    80003e18:	00009097          	auipc	ra,0x9
    80003e1c:	e90080e7          	jalr	-368(ra) # 8000cca8 <_Unwind_Resume>

0000000080003e20 <_ZN5Riscv14myTestsWrapperEPv>:

void Riscv::myTestsWrapper(void* p)
{
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00113423          	sd	ra,8(sp)
    80003e28:	00813023          	sd	s0,0(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    myTests();
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	878080e7          	jalr	-1928(ra) # 800026a8 <_Z7myTestsv>
}
    80003e38:	00813083          	ld	ra,8(sp)
    80003e3c:	00013403          	ld	s0,0(sp)
    80003e40:	01010113          	addi	sp,sp,16
    80003e44:	00008067          	ret

0000000080003e48 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80003e48:	ff010113          	addi	sp,sp,-16
    80003e4c:	00813423          	sd	s0,8(sp)
    80003e50:	01010413          	addi	s0,sp,16
    //uint64 x = 0x200;
    //__asm__ volatile("csrs sie, %0"::"r"(x));
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80003e54:	00200793          	li	a5,2
    80003e58:	1047b073          	csrc	sie,a5
}
    80003e5c:	00813403          	ld	s0,8(sp)
    80003e60:	01010113          	addi	sp,sp,16
    80003e64:	00008067          	ret

0000000080003e68 <_ZN5Riscv9idleRiscvEPv>:

void Riscv::idleRiscv(void* p)
{
    80003e68:	ff010113          	addi	sp,sp,-16
    80003e6c:	00813423          	sd	s0,8(sp)
    80003e70:	01010413          	addi	s0,sp,16
    while(true)
    80003e74:	0000006f          	j	80003e74 <_ZN5Riscv9idleRiscvEPv+0xc>

0000000080003e78 <_ZN5Riscv13w_a0_sscratchEv>:

    }
}

void Riscv::w_a0_sscratch()
{
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00813423          	sd	s0,8(sp)
    80003e80:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003e84:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003e88:	00008717          	auipc	a4,0x8
    80003e8c:	c1873703          	ld	a4,-1000(a4) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003e90:	00073703          	ld	a4,0(a4)
    80003e94:	01073703          	ld	a4,16(a4)
    80003e98:	00070593          	mv	a1,a4
    //__asm__ volatile("csrr a1, sscratch");
    __asm__ volatile("sd a0, 80(a1)");
    80003e9c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003ea0:	00078593          	mv	a1,a5
}
    80003ea4:	00813403          	ld	s0,8(sp)
    80003ea8:	01010113          	addi	sp,sp,16
    80003eac:	00008067          	ret

0000000080003eb0 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003eb0:	ff010113          	addi	sp,sp,-16
    80003eb4:	00813423          	sd	s0,8(sp)
    80003eb8:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80003ebc:	00008717          	auipc	a4,0x8
    80003ec0:	ce472703          	lw	a4,-796(a4) # 8000bba0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ec4:	00100793          	li	a5,1
    80003ec8:	04f70263          	beq	a4,a5,80003f0c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    80003ecc:	00008797          	auipc	a5,0x8
    80003ed0:	cd478793          	addi	a5,a5,-812 # 8000bba0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80003ed4:	00100713          	li	a4,1
    80003ed8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80003edc:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80003ee0:	00008717          	auipc	a4,0x8
    80003ee4:	b8873703          	ld	a4,-1144(a4) # 8000ba68 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ee8:	00073703          	ld	a4,0(a4)
    80003eec:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80003ef0:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80003ef4:	00008797          	auipc	a5,0x8
    80003ef8:	bb47b783          	ld	a5,-1100(a5) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003efc:	0007b783          	ld	a5,0(a5)
    80003f00:	40e787b3          	sub	a5,a5,a4
    80003f04:	ff178793          	addi	a5,a5,-15
    80003f08:	00f73023          	sd	a5,0(a4)
}
    80003f0c:	00813403          	ld	s0,8(sp)
    80003f10:	01010113          	addi	sp,sp,16
    80003f14:	00008067          	ret

0000000080003f18 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003f18:	fe010113          	addi	sp,sp,-32
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	00813823          	sd	s0,16(sp)
    80003f24:	00913423          	sd	s1,8(sp)
    80003f28:	01213023          	sd	s2,0(sp)
    80003f2c:	02010413          	addi	s0,sp,32
    80003f30:	00050493          	mv	s1,a0
    80003f34:	00058913          	mv	s2,a1
    initMemory();
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	f78080e7          	jalr	-136(ra) # 80003eb0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80003f40:	00008797          	auipc	a5,0x8
    80003f44:	c687b783          	ld	a5,-920(a5) # 8000bba8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003f48:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003f4c:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80003f50:	00000713          	li	a4,0
    while(curr != 0)
    80003f54:	00078c63          	beqz	a5,80003f6c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80003f58:	00f4e863          	bltu	s1,a5,80003f68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80003f5c:	00078713          	mv	a4,a5
        curr = curr->next;
    80003f60:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003f64:	ff1ff06f          	j	80003f54 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80003f68:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80003f6c:	02070063          	beqz	a4,80003f8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80003f70:	00973423          	sd	s1,8(a4)
}
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00813483          	ld	s1,8(sp)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret
        headAllocated = newAllocated;
    80003f8c:	00008797          	auipc	a5,0x8
    80003f90:	c097be23          	sd	s1,-996(a5) # 8000bba8 <_ZN15MemoryAllocator13headAllocatedE>
    80003f94:	fe1ff06f          	j	80003f74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	01213023          	sd	s2,0(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00050913          	mv	s2,a0
    initMemory();
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	efc080e7          	jalr	-260(ra) # 80003eb0 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003fbc:	00008497          	auipc	s1,0x8
    80003fc0:	bf44b483          	ld	s1,-1036(s1) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003fc4:	00000713          	li	a4,0
    while(curr != 0)
    80003fc8:	0a048863          	beqz	s1,80004078 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
    {
        if(curr->size >= size)
    80003fcc:	0004b783          	ld	a5,0(s1)
    80003fd0:	0127f863          	bgeu	a5,s2,80003fe0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003fd4:	00048713          	mv	a4,s1
        curr = curr->next;
    80003fd8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003fdc:	fedff06f          	j	80003fc8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003fe0:	01090693          	addi	a3,s2,16
    80003fe4:	00d486b3          	add	a3,s1,a3
            if(newAddr <= HEAP_END_ADDR)
    80003fe8:	00008617          	auipc	a2,0x8
    80003fec:	ac063603          	ld	a2,-1344(a2) # 8000baa8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003ff0:	00063603          	ld	a2,0(a2)
    80003ff4:	04d66c63          	bltu	a2,a3,8000404c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb4>
                uint64 size2 = curr->size - size;
    80003ff8:	412787b3          	sub	a5,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003ffc:	01000613          	li	a2,16
    80004000:	02f67663          	bgeu	a2,a5,8000402c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x94>
                    newFree->next = curr->next;
    80004004:	0084b603          	ld	a2,8(s1)
    80004008:	00c6b423          	sd	a2,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000400c:	ff078793          	addi	a5,a5,-16
    80004010:	00f6b023          	sd	a5,0(a3)
                    if (prev != 0)
    80004014:	00070663          	beqz	a4,80004020 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x88>
                        prev->next = newFree;
    80004018:	00d73423          	sd	a3,8(a4)
    8000401c:	0380006f          	j	80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = newFree;
    80004020:	00008797          	auipc	a5,0x8
    80004024:	b8d7b823          	sd	a3,-1136(a5) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    80004028:	02c0006f          	j	80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                    if(prev != 0)
    8000402c:	00070863          	beqz	a4,8000403c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xa4>
                        prev->next = curr->next;
    80004030:	0084b783          	ld	a5,8(s1)
    80004034:	00f73423          	sd	a5,8(a4)
    80004038:	01c0006f          	j	80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                        headFree = curr->next;
    8000403c:	0084b783          	ld	a5,8(s1)
    80004040:	00008717          	auipc	a4,0x8
    80004044:	b6f73823          	sd	a5,-1168(a4) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    80004048:	00c0006f          	j	80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
                if(prev != 0)
    8000404c:	02070063          	beqz	a4,8000406c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xd4>
                    prev->next = 0;
    80004050:	00073423          	sd	zero,8(a4)
            insertNewAllocatedFragment(oldAddr, size);
    80004054:	00090593          	mv	a1,s2
    80004058:	00048513          	mv	a0,s1
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	ebc080e7          	jalr	-324(ra) # 80003f18 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004064:	01048513          	addi	a0,s1,16
            break;
    80004068:	0140006f          	j	8000407c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    headFree = 0;
    8000406c:	00008797          	auipc	a5,0x8
    80004070:	b407b223          	sd	zero,-1212(a5) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    80004074:	fe1ff06f          	j	80004054 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xbc>
    uint64 retval = 0;
    80004078:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000407c:	01813083          	ld	ra,24(sp)
    80004080:	01013403          	ld	s0,16(sp)
    80004084:	00813483          	ld	s1,8(sp)
    80004088:	00013903          	ld	s2,0(sp)
    8000408c:	02010113          	addi	sp,sp,32
    80004090:	00008067          	ret

0000000080004094 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	ef4080e7          	jalr	-268(ra) # 80003f98 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800040ac:	00813083          	ld	ra,8(sp)
    800040b0:	00013403          	ld	s0,0(sp)
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00008067          	ret

00000000800040bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	01213023          	sd	s2,0(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00050493          	mv	s1,a0
    800040d8:	00058913          	mv	s2,a1
    initMemory();
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	dd4080e7          	jalr	-556(ra) # 80003eb0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800040e4:	00008797          	auipc	a5,0x8
    800040e8:	acc7b783          	ld	a5,-1332(a5) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800040ec:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800040f0:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800040f4:	00000713          	li	a4,0
    while(curr != 0)
    800040f8:	00078c63          	beqz	a5,80004110 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800040fc:	00f4e863          	bltu	s1,a5,8000410c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004100:	00078713          	mv	a4,a5
        curr = curr->next;
    80004104:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004108:	ff1ff06f          	j	800040f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000410c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004110:	04070663          	beqz	a4,8000415c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004114:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004118:	0084b783          	ld	a5,8(s1)
    8000411c:	00078a63          	beqz	a5,80004130 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004120:	0004b603          	ld	a2,0(s1)
    80004124:	01060693          	addi	a3,a2,16
    80004128:	00d486b3          	add	a3,s1,a3
    8000412c:	02d78e63          	beq	a5,a3,80004168 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004130:	00070a63          	beqz	a4,80004144 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    80004134:	00073683          	ld	a3,0(a4)
    80004138:	01068793          	addi	a5,a3,16
    8000413c:	00f707b3          	add	a5,a4,a5
    80004140:	04978263          	beq	a5,s1,80004184 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	00813483          	ld	s1,8(sp)
    80004150:	00013903          	ld	s2,0(sp)
    80004154:	02010113          	addi	sp,sp,32
    80004158:	00008067          	ret
        headFree = newSegment;
    8000415c:	00008797          	auipc	a5,0x8
    80004160:	a497ba23          	sd	s1,-1452(a5) # 8000bbb0 <_ZN15MemoryAllocator8headFreeE>
    80004164:	fb5ff06f          	j	80004118 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004168:	0007b683          	ld	a3,0(a5)
    8000416c:	00d60633          	add	a2,a2,a3
    80004170:	01060613          	addi	a2,a2,16
    80004174:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004178:	0087b783          	ld	a5,8(a5)
    8000417c:	00f4b423          	sd	a5,8(s1)
    80004180:	fb1ff06f          	j	80004130 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004184:	0004b783          	ld	a5,0(s1)
    80004188:	00f686b3          	add	a3,a3,a5
    8000418c:	01068693          	addi	a3,a3,16
    80004190:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004194:	0084b783          	ld	a5,8(s1)
    80004198:	00f73423          	sd	a5,8(a4)
}
    8000419c:	fa9ff06f          	j	80004144 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

00000000800041a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	00113c23          	sd	ra,24(sp)
    800041a8:	00813823          	sd	s0,16(sp)
    800041ac:	00913423          	sd	s1,8(sp)
    800041b0:	01213023          	sd	s2,0(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050913          	mv	s2,a0
    initMemory();
    800041bc:	00000097          	auipc	ra,0x0
    800041c0:	cf4080e7          	jalr	-780(ra) # 80003eb0 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800041c4:	00008497          	auipc	s1,0x8
    800041c8:	9e44b483          	ld	s1,-1564(s1) # 8000bba8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800041cc:	00000713          	li	a4,0
    while(curr != 0)
    800041d0:	02048a63          	beqz	s1,80004204 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800041d4:	01048793          	addi	a5,s1,16
    800041d8:	01278863          	beq	a5,s2,800041e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800041dc:	00048713          	mv	a4,s1
        curr = curr->next;
    800041e0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800041e4:	fedff06f          	j	800041d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800041e8:	02070e63          	beqz	a4,80004224 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800041ec:	0084b783          	ld	a5,8(s1)
    800041f0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800041f4:	0004b583          	ld	a1,0(s1)
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	ec0080e7          	jalr	-320(ra) # 800040bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004204:	02048863          	beqz	s1,80004234 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004208:	00000513          	li	a0,0
    else
        return 1;
}
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	00813483          	ld	s1,8(sp)
    80004218:	00013903          	ld	s2,0(sp)
    8000421c:	02010113          	addi	sp,sp,32
    80004220:	00008067          	ret
                headAllocated = curr->next;
    80004224:	0084b783          	ld	a5,8(s1)
    80004228:	00008717          	auipc	a4,0x8
    8000422c:	98f73023          	sd	a5,-1664(a4) # 8000bba8 <_ZN15MemoryAllocator13headAllocatedE>
    80004230:	fc5ff06f          	j	800041f4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004234:	00100513          	li	a0,1
    80004238:	fd5ff06f          	j	8000420c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

000000008000423c <_ZN15MemoryAllocator8mem_freeEPv>:
{
    8000423c:	ff010113          	addi	sp,sp,-16
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	f54080e7          	jalr	-172(ra) # 800041a0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004254:	00813083          	ld	ra,8(sp)
    80004258:	00013403          	ld	s0,0(sp)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <_Z7kmallocm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* kmalloc(size_t size)
{
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00113423          	sd	ra,8(sp)
    8000426c:	00813023          	sd	s0,0(sp)
    80004270:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004274:	00000097          	auipc	ra,0x0
    80004278:	e20080e7          	jalr	-480(ra) # 80004094 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    8000429c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800042a0:	00651513          	slli	a0,a0,0x6
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	fc0080e7          	jalr	-64(ra) # 80004264 <_Z7kmallocm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800042ac:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	bc8080e7          	jalr	-1080(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    800042b8:	00813083          	ld	ra,8(sp)
    800042bc:	00013403          	ld	s0,0(sp)
    800042c0:	01010113          	addi	sp,sp,16
    800042c4:	00008067          	ret

00000000800042c8 <_Z5kfreePv>:

uint64 kfree(void* p)
{
    800042c8:	ff010113          	addi	sp,sp,-16
    800042cc:	00113423          	sd	ra,8(sp)
    800042d0:	00813023          	sd	s0,0(sp)
    800042d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	f64080e7          	jalr	-156(ra) # 8000423c <_ZN15MemoryAllocator8mem_freeEPv>
    800042e0:	00813083          	ld	ra,8(sp)
    800042e4:	00013403          	ld	s0,0(sp)
    800042e8:	01010113          	addi	sp,sp,16
    800042ec:	00008067          	ret

00000000800042f0 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00113423          	sd	ra,8(sp)
    800042f8:	00813023          	sd	s0,0(sp)
    800042fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004300:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004304:	00000097          	auipc	ra,0x0
    80004308:	fc4080e7          	jalr	-60(ra) # 800042c8 <_Z5kfreePv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000430c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004310:	00000097          	auipc	ra,0x0
    80004314:	b68080e7          	jalr	-1176(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004318:	00813083          	ld	ra,8(sp)
    8000431c:	00013403          	ld	s0,0(sp)
    80004320:	01010113          	addi	sp,sp,16
    80004324:	00008067          	ret

0000000080004328 <_ZN10KSemaphoreC1Ei>:
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"

KSemaphore::KSemaphore(int val)
    80004328:	ff010113          	addi	sp,sp,-16
    8000432c:	00813423          	sd	s0,8(sp)
    80004330:	01010413          	addi	s0,sp,16
{
    this->val = this->beginVal = val;
    80004334:	00b52a23          	sw	a1,20(a0)
    80004338:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000433c:	00053423          	sd	zero,8(a0)
    80004340:	00053023          	sd	zero,0(a0)
}
    80004344:	00813403          	ld	s0,8(sp)
    80004348:	01010113          	addi	sp,sp,16
    8000434c:	00008067          	ret

0000000080004350 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00813423          	sd	s0,8(sp)
    80004358:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000435c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004360:	00053783          	ld	a5,0(a0)
    80004364:	00078e63          	beqz	a5,80004380 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004368:	00853783          	ld	a5,8(a0)
    8000436c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004370:	00b53423          	sd	a1,8(a0)
    }
}
    80004374:	00813403          	ld	s0,8(sp)
    80004378:	01010113          	addi	sp,sp,16
    8000437c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004380:	00b53423          	sd	a1,8(a0)
    80004384:	00b53023          	sd	a1,0(a0)
    80004388:	fedff06f          	j	80004374 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000438c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00113423          	sd	ra,8(sp)
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000439c:	00007797          	auipc	a5,0x7
    800043a0:	7047b783          	ld	a5,1796(a5) # 8000baa0 <_GLOBAL_OFFSET_TABLE_+0x50>
    800043a4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800043a8:	00200793          	li	a5,2
    800043ac:	02f5ac23          	sw	a5,56(a1)
    addToBlocked(PCB::running);
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	fa0080e7          	jalr	-96(ra) # 80004350 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	518080e7          	jalr	1304(ra) # 800028d0 <_ZN3PCB8dispatchEv>
}
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN10KSemaphore4waitEv>:
    if(--val < 0)
    800043d0:	01052783          	lw	a5,16(a0)
    800043d4:	fff7879b          	addiw	a5,a5,-1
    800043d8:	00f52823          	sw	a5,16(a0)
    800043dc:	02079713          	slli	a4,a5,0x20
    800043e0:	00074663          	bltz	a4,800043ec <_ZN10KSemaphore4waitEv+0x1c>
}
    800043e4:	00000513          	li	a0,0
    800043e8:	00008067          	ret
uint64 KSemaphore::wait() {
    800043ec:	ff010113          	addi	sp,sp,-16
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	00813023          	sd	s0,0(sp)
    800043f8:	01010413          	addi	s0,sp,16
        block();
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	f90080e7          	jalr	-112(ra) # 8000438c <_ZN10KSemaphore5blockEv>
}
    80004404:	00000513          	li	a0,0
    80004408:	00813083          	ld	ra,8(sp)
    8000440c:	00013403          	ld	s0,0(sp)
    80004410:	01010113          	addi	sp,sp,16
    80004414:	00008067          	ret

0000000080004418 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004418:	ff010113          	addi	sp,sp,-16
    8000441c:	00813423          	sd	s0,8(sp)
    80004420:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004424:	00053503          	ld	a0,0(a0)
    80004428:	00813403          	ld	s0,8(sp)
    8000442c:	01010113          	addi	sp,sp,16
    80004430:	00008067          	ret

0000000080004434 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00813423          	sd	s0,8(sp)
    8000443c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004440:	00053783          	ld	a5,0(a0)
    80004444:	00078c63          	beqz	a5,8000445c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004448:	0087b703          	ld	a4,8(a5)
    8000444c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004450:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004454:	00053783          	ld	a5,0(a0)
    80004458:	00078863          	beqz	a5,80004468 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000445c:	00813403          	ld	s0,8(sp)
    80004460:	01010113          	addi	sp,sp,16
    80004464:	00008067          	ret
        tailBlocked =0;
    80004468:	00053423          	sd	zero,8(a0)
    8000446c:	ff1ff06f          	j	8000445c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004470 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004470:	fe010113          	addi	sp,sp,-32
    80004474:	00113c23          	sd	ra,24(sp)
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000448c:	00090513          	mv	a0,s2
    80004490:	00000097          	auipc	ra,0x0
    80004494:	f88080e7          	jalr	-120(ra) # 80004418 <_ZN10KSemaphore15getFirstBlockedEv>
    80004498:	00050493          	mv	s1,a0
    8000449c:	02050063          	beqz	a0,800044bc <_ZN10KSemaphoreD1Ev+0x4c>
        removeFirstBlocked();
    800044a0:	00090513          	mv	a0,s2
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	f90080e7          	jalr	-112(ra) # 80004434 <_ZN10KSemaphore18removeFirstBlockedEv>
        Scheduler::put(pcb);
    800044ac:	00048513          	mv	a0,s1
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	fa8080e7          	jalr	-88(ra) # 80003458 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800044b8:	fd5ff06f          	j	8000448c <_ZN10KSemaphoreD1Ev+0x1c>
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
    800044f4:	f28080e7          	jalr	-216(ra) # 80004418 <_ZN10KSemaphore15getFirstBlockedEv>
    800044f8:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800044fc:	00090513          	mv	a0,s2
    80004500:	00000097          	auipc	ra,0x0
    80004504:	f34080e7          	jalr	-204(ra) # 80004434 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004508:	00048863          	beqz	s1,80004518 <_ZN10KSemaphore7unblockEv+0x44>
    {
        //Riscv::printString("Unblocked thread\n");
        Scheduler::put(fr);
    8000450c:	00048513          	mv	a0,s1
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	f48080e7          	jalr	-184(ra) # 80003458 <_ZN9Scheduler3putEP3PCB>
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
    return kmalloc(size);
    80004588:	00000097          	auipc	ra,0x0
    8000458c:	cdc080e7          	jalr	-804(ra) # 80004264 <_Z7kmallocm>
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
    800045dc:	d50080e7          	jalr	-688(ra) # 80004328 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800045e0:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800045e4:	02048263          	beqz	s1,80004608 <_ZN10KSemaphore14semOpenHandlerEv+0x68>
            __asm__ volatile("li a0, 0");
    800045e8:	00000513          	li	a0,0
}
    800045ec:	02813083          	ld	ra,40(sp)
    800045f0:	02013403          	ld	s0,32(sp)
    800045f4:	01813483          	ld	s1,24(sp)
    800045f8:	01013903          	ld	s2,16(sp)
    800045fc:	00813983          	ld	s3,8(sp)
    80004600:	03010113          	addi	sp,sp,48
    80004604:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004608:	fff00513          	li	a0,-1
    8000460c:	fe1ff06f          	j	800045ec <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004610 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00113423          	sd	ra,8(sp)
    80004618:	00813023          	sd	s0,0(sp)
    8000461c:	01010413          	addi	s0,sp,16
    kfree(p);
    80004620:	00000097          	auipc	ra,0x0
    80004624:	ca8080e7          	jalr	-856(ra) # 800042c8 <_Z5kfreePv>
}
    80004628:	00813083          	ld	ra,8(sp)
    8000462c:	00013403          	ld	s0,0(sp)
    80004630:	01010113          	addi	sp,sp,16
    80004634:	00008067          	ret

0000000080004638 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004638:	fe010113          	addi	sp,sp,-32
    8000463c:	00113c23          	sd	ra,24(sp)
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004648:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->wait();
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	d84080e7          	jalr	-636(ra) # 800043d0 <_ZN10KSemaphore4waitEv>
    80004654:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004658:	fe843783          	ld	a5,-24(s0)
    8000465c:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    80004660:	00000097          	auipc	ra,0x0
    80004664:	818080e7          	jalr	-2024(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004668:	01813083          	ld	ra,24(sp)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	02010113          	addi	sp,sp,32
    80004674:	00008067          	ret

0000000080004678 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler()
{
    80004678:	fe010113          	addi	sp,sp,-32
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004688:	00058513          	mv	a0,a1
    uint64 volatile retval = kSem->signal();
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	ea4080e7          	jalr	-348(ra) # 80004530 <_ZN10KSemaphore6signalEv>
    80004694:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004698:	fe843783          	ld	a5,-24(s0)
    8000469c:	00078513          	mv	a0,a5
    Riscv::w_a0_sscratch();
    800046a0:	fffff097          	auipc	ra,0xfffff
    800046a4:	7d8080e7          	jalr	2008(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret

00000000800046b8 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800046b8:	fe010113          	addi	sp,sp,-32
    800046bc:	00113c23          	sd	ra,24(sp)
    800046c0:	00813823          	sd	s0,16(sp)
    800046c4:	00913423          	sd	s1,8(sp)
    800046c8:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800046cc:	00058493          	mv	s1,a1
    delete kSem;
    800046d0:	00048e63          	beqz	s1,800046ec <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800046d4:	00048513          	mv	a0,s1
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	d98080e7          	jalr	-616(ra) # 80004470 <_ZN10KSemaphoreD1Ev>
    800046e0:	00048513          	mv	a0,s1
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	f2c080e7          	jalr	-212(ra) # 80004610 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800046ec:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800046f0:	fffff097          	auipc	ra,0xfffff
    800046f4:	788080e7          	jalr	1928(ra) # 80003e78 <_ZN5Riscv13w_a0_sscratchEv>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret

000000008000470c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000470c:	fe010113          	addi	sp,sp,-32
    80004710:	00113c23          	sd	ra,24(sp)
    80004714:	00813823          	sd	s0,16(sp)
    80004718:	00913423          	sd	s1,8(sp)
    8000471c:	01213023          	sd	s2,0(sp)
    80004720:	02010413          	addi	s0,sp,32
    80004724:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004728:	00000913          	li	s2,0
    8000472c:	00c0006f          	j	80004738 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	c04080e7          	jalr	-1020(ra) # 80001334 <thread_dispatch>
    while ((key = getc()) != 'q') {
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	dd8080e7          	jalr	-552(ra) # 80001510 <getc>
    80004740:	0005059b          	sext.w	a1,a0
    80004744:	07100793          	li	a5,113
    80004748:	02f58a63          	beq	a1,a5,8000477c <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000474c:	0084b503          	ld	a0,8(s1)
    80004750:	00002097          	auipc	ra,0x2
    80004754:	c64080e7          	jalr	-924(ra) # 800063b4 <_ZN6Buffer3putEi>
        i++;
    80004758:	0019071b          	addiw	a4,s2,1
    8000475c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004760:	0004a683          	lw	a3,0(s1)
    80004764:	0026979b          	slliw	a5,a3,0x2
    80004768:	00d787bb          	addw	a5,a5,a3
    8000476c:	0017979b          	slliw	a5,a5,0x1
    80004770:	02f767bb          	remw	a5,a4,a5
    80004774:	fc0792e3          	bnez	a5,80004738 <_Z16producerKeyboardPv+0x2c>
    80004778:	fb9ff06f          	j	80004730 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000477c:	00100793          	li	a5,1
    80004780:	00007717          	auipc	a4,0x7
    80004784:	42f72c23          	sw	a5,1080(a4) # 8000bbb8 <threadEnd>

    delete data->buffer;
    80004788:	0084b903          	ld	s2,8(s1)
    8000478c:	00090e63          	beqz	s2,800047a8 <_Z16producerKeyboardPv+0x9c>
    80004790:	00090513          	mv	a0,s2
    80004794:	00002097          	auipc	ra,0x2
    80004798:	b64080e7          	jalr	-1180(ra) # 800062f8 <_ZN6BufferD1Ev>
    8000479c:	00090513          	mv	a0,s2
    800047a0:	fffff097          	auipc	ra,0xfffff
    800047a4:	eb4080e7          	jalr	-332(ra) # 80003654 <_ZdlPv>

    sem_signal(data->wait);
    800047a8:	0104b503          	ld	a0,16(s1)
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	c60080e7          	jalr	-928(ra) # 8000140c <sem_signal>
}
    800047b4:	01813083          	ld	ra,24(sp)
    800047b8:	01013403          	ld	s0,16(sp)
    800047bc:	00813483          	ld	s1,8(sp)
    800047c0:	00013903          	ld	s2,0(sp)
    800047c4:	02010113          	addi	sp,sp,32
    800047c8:	00008067          	ret

00000000800047cc <_Z8producerPv>:

void producer(void *arg) {
    800047cc:	fe010113          	addi	sp,sp,-32
    800047d0:	00113c23          	sd	ra,24(sp)
    800047d4:	00813823          	sd	s0,16(sp)
    800047d8:	00913423          	sd	s1,8(sp)
    800047dc:	01213023          	sd	s2,0(sp)
    800047e0:	02010413          	addi	s0,sp,32
    800047e4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800047e8:	00000913          	li	s2,0
    800047ec:	00c0006f          	j	800047f8 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	b44080e7          	jalr	-1212(ra) # 80001334 <thread_dispatch>
    while (!threadEnd) {
    800047f8:	00007797          	auipc	a5,0x7
    800047fc:	3c07a783          	lw	a5,960(a5) # 8000bbb8 <threadEnd>
    80004800:	02079e63          	bnez	a5,8000483c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004804:	0004a583          	lw	a1,0(s1)
    80004808:	0305859b          	addiw	a1,a1,48
    8000480c:	0084b503          	ld	a0,8(s1)
    80004810:	00002097          	auipc	ra,0x2
    80004814:	ba4080e7          	jalr	-1116(ra) # 800063b4 <_ZN6Buffer3putEi>
        i++;
    80004818:	0019071b          	addiw	a4,s2,1
    8000481c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004820:	0004a683          	lw	a3,0(s1)
    80004824:	0026979b          	slliw	a5,a3,0x2
    80004828:	00d787bb          	addw	a5,a5,a3
    8000482c:	0017979b          	slliw	a5,a5,0x1
    80004830:	02f767bb          	remw	a5,a4,a5
    80004834:	fc0792e3          	bnez	a5,800047f8 <_Z8producerPv+0x2c>
    80004838:	fb9ff06f          	j	800047f0 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000483c:	0104b503          	ld	a0,16(s1)
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	bcc080e7          	jalr	-1076(ra) # 8000140c <sem_signal>
}
    80004848:	01813083          	ld	ra,24(sp)
    8000484c:	01013403          	ld	s0,16(sp)
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	00013903          	ld	s2,0(sp)
    80004858:	02010113          	addi	sp,sp,32
    8000485c:	00008067          	ret

0000000080004860 <_Z8consumerPv>:

void consumer(void *arg) {
    80004860:	fd010113          	addi	sp,sp,-48
    80004864:	02113423          	sd	ra,40(sp)
    80004868:	02813023          	sd	s0,32(sp)
    8000486c:	00913c23          	sd	s1,24(sp)
    80004870:	01213823          	sd	s2,16(sp)
    80004874:	01313423          	sd	s3,8(sp)
    80004878:	03010413          	addi	s0,sp,48
    8000487c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;


    int i = 0;
    80004880:	00000993          	li	s3,0
    80004884:	01c0006f          	j	800048a0 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	aac080e7          	jalr	-1364(ra) # 80001334 <thread_dispatch>
    80004890:	0500006f          	j	800048e0 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004894:	00a00513          	li	a0,10
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	ca0080e7          	jalr	-864(ra) # 80001538 <putc>
    while (!threadEnd) {
    800048a0:	00007797          	auipc	a5,0x7
    800048a4:	3187a783          	lw	a5,792(a5) # 8000bbb8 <threadEnd>
    800048a8:	04079463          	bnez	a5,800048f0 <_Z8consumerPv+0x90>
        int key = data->buffer->get();
    800048ac:	00893503          	ld	a0,8(s2)
    800048b0:	00002097          	auipc	ra,0x2
    800048b4:	b94080e7          	jalr	-1132(ra) # 80006444 <_ZN6Buffer3getEv>
        i++;
    800048b8:	0019849b          	addiw	s1,s3,1
    800048bc:	0004899b          	sext.w	s3,s1
        putc(key);
    800048c0:	0ff57513          	andi	a0,a0,255
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	c74080e7          	jalr	-908(ra) # 80001538 <putc>
        if (i % (5 * data->id) == 0) {
    800048cc:	00092703          	lw	a4,0(s2)
    800048d0:	0027179b          	slliw	a5,a4,0x2
    800048d4:	00e787bb          	addw	a5,a5,a4
    800048d8:	02f4e7bb          	remw	a5,s1,a5
    800048dc:	fa0786e3          	beqz	a5,80004888 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800048e0:	05000793          	li	a5,80
    800048e4:	02f4e4bb          	remw	s1,s1,a5
    800048e8:	fa049ce3          	bnez	s1,800048a0 <_Z8consumerPv+0x40>
    800048ec:	fa9ff06f          	j	80004894 <_Z8consumerPv+0x34>
        }
    }

    sem_signal(data->wait);
    800048f0:	01093503          	ld	a0,16(s2)
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	b18080e7          	jalr	-1256(ra) # 8000140c <sem_signal>
}
    800048fc:	02813083          	ld	ra,40(sp)
    80004900:	02013403          	ld	s0,32(sp)
    80004904:	01813483          	ld	s1,24(sp)
    80004908:	01013903          	ld	s2,16(sp)
    8000490c:	00813983          	ld	s3,8(sp)
    80004910:	03010113          	addi	sp,sp,48
    80004914:	00008067          	ret

0000000080004918 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004918:	f9010113          	addi	sp,sp,-112
    8000491c:	06113423          	sd	ra,104(sp)
    80004920:	06813023          	sd	s0,96(sp)
    80004924:	04913c23          	sd	s1,88(sp)
    80004928:	05213823          	sd	s2,80(sp)
    8000492c:	05313423          	sd	s3,72(sp)
    80004930:	05413023          	sd	s4,64(sp)
    80004934:	03513c23          	sd	s5,56(sp)
    80004938:	07010413          	addi	s0,sp,112
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    8000493c:	00005517          	auipc	a0,0x5
    80004940:	a3c50513          	addi	a0,a0,-1476 # 80009378 <CONSOLE_STATUS+0x368>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	204080e7          	jalr	516(ra) # 80005b48 <_Z11printStringPKc>
    getString(input, 30);
    8000494c:	01e00593          	li	a1,30
    80004950:	fa040493          	addi	s1,s0,-96
    80004954:	00048513          	mv	a0,s1
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	26c080e7          	jalr	620(ra) # 80005bc4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004960:	00048513          	mv	a0,s1
    80004964:	00001097          	auipc	ra,0x1
    80004968:	32c080e7          	jalr	812(ra) # 80005c90 <_Z11stringToIntPKc>
    8000496c:	00050913          	mv	s2,a0

    printString("Unesite velicinu bafera?\n");
    80004970:	00005517          	auipc	a0,0x5
    80004974:	a2850513          	addi	a0,a0,-1496 # 80009398 <CONSOLE_STATUS+0x388>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	1d0080e7          	jalr	464(ra) # 80005b48 <_Z11printStringPKc>
    getString(input, 30);
    80004980:	01e00593          	li	a1,30
    80004984:	00048513          	mv	a0,s1
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	23c080e7          	jalr	572(ra) # 80005bc4 <_Z9getStringPci>
    n = stringToInt(input);
    80004990:	00048513          	mv	a0,s1
    80004994:	00001097          	auipc	ra,0x1
    80004998:	2fc080e7          	jalr	764(ra) # 80005c90 <_Z11stringToIntPKc>
    8000499c:	00050493          	mv	s1,a0

    printString("Broj proizvodjaca "); printInt(threadNum);
    800049a0:	00005517          	auipc	a0,0x5
    800049a4:	a1850513          	addi	a0,a0,-1512 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800049a8:	00001097          	auipc	ra,0x1
    800049ac:	1a0080e7          	jalr	416(ra) # 80005b48 <_Z11printStringPKc>
    800049b0:	00000613          	li	a2,0
    800049b4:	00a00593          	li	a1,10
    800049b8:	00090513          	mv	a0,s2
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	324080e7          	jalr	804(ra) # 80005ce0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800049c4:	00005517          	auipc	a0,0x5
    800049c8:	a0c50513          	addi	a0,a0,-1524 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	17c080e7          	jalr	380(ra) # 80005b48 <_Z11printStringPKc>
    800049d4:	00000613          	li	a2,0
    800049d8:	00a00593          	li	a1,10
    800049dc:	00048513          	mv	a0,s1
    800049e0:	00001097          	auipc	ra,0x1
    800049e4:	300080e7          	jalr	768(ra) # 80005ce0 <_Z8printIntiii>
    printString(".\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	86850513          	addi	a0,a0,-1944 # 80009250 <CONSOLE_STATUS+0x240>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	158080e7          	jalr	344(ra) # 80005b48 <_Z11printStringPKc>

    Buffer *buffer = new Buffer(n);
    800049f8:	03800513          	li	a0,56
    800049fc:	fffff097          	auipc	ra,0xfffff
    80004a00:	c30080e7          	jalr	-976(ra) # 8000362c <_Znwm>
    80004a04:	00050a13          	mv	s4,a0
    80004a08:	00048593          	mv	a1,s1
    80004a0c:	00002097          	auipc	ra,0x2
    80004a10:	864080e7          	jalr	-1948(ra) # 80006270 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80004a14:	00000593          	li	a1,0
    80004a18:	00007517          	auipc	a0,0x7
    80004a1c:	1a850513          	addi	a0,a0,424 # 8000bbc0 <waitForAll>
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	95c080e7          	jalr	-1700(ra) # 8000137c <sem_open>

    thread_t threads[threadNum];
    80004a28:	00391793          	slli	a5,s2,0x3
    80004a2c:	00f78793          	addi	a5,a5,15
    80004a30:	ff07f793          	andi	a5,a5,-16
    80004a34:	40f10133          	sub	sp,sp,a5
    80004a38:	00010a93          	mv	s5,sp
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80004a3c:	0019071b          	addiw	a4,s2,1
    80004a40:	00171793          	slli	a5,a4,0x1
    80004a44:	00e787b3          	add	a5,a5,a4
    80004a48:	00379793          	slli	a5,a5,0x3
    80004a4c:	00f78793          	addi	a5,a5,15
    80004a50:	ff07f793          	andi	a5,a5,-16
    80004a54:	40f10133          	sub	sp,sp,a5
    80004a58:	00010993          	mv	s3,sp

    data[threadNum].id = threadNum;
    80004a5c:	00191613          	slli	a2,s2,0x1
    80004a60:	012607b3          	add	a5,a2,s2
    80004a64:	00379793          	slli	a5,a5,0x3
    80004a68:	00f987b3          	add	a5,s3,a5
    80004a6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004a70:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004a74:	00007717          	auipc	a4,0x7
    80004a78:	14c73703          	ld	a4,332(a4) # 8000bbc0 <waitForAll>
    80004a7c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004a80:	00078613          	mv	a2,a5
    80004a84:	00000597          	auipc	a1,0x0
    80004a88:	ddc58593          	addi	a1,a1,-548 # 80004860 <_Z8consumerPv>
    80004a8c:	f9840513          	addi	a0,s0,-104
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	824080e7          	jalr	-2012(ra) # 800012b4 <thread_create>

    for (int i = 0; i < threadNum; i++) {
    80004a98:	00000493          	li	s1,0
    80004a9c:	0280006f          	j	80004ac4 <_Z22producerConsumer_C_APIv+0x1ac>
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
    80004aa0:	00000597          	auipc	a1,0x0
    80004aa4:	c6c58593          	addi	a1,a1,-916 # 8000470c <_Z16producerKeyboardPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80004aa8:	00179613          	slli	a2,a5,0x1
    80004aac:	00f60633          	add	a2,a2,a5
    80004ab0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004ab4:	00c98633          	add	a2,s3,a2
    80004ab8:	ffffc097          	auipc	ra,0xffffc
    80004abc:	7fc080e7          	jalr	2044(ra) # 800012b4 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004ac0:	0014849b          	addiw	s1,s1,1
    80004ac4:	0524d263          	bge	s1,s2,80004b08 <_Z22producerConsumer_C_APIv+0x1f0>
        data[i].id = i;
    80004ac8:	00149793          	slli	a5,s1,0x1
    80004acc:	009787b3          	add	a5,a5,s1
    80004ad0:	00379793          	slli	a5,a5,0x3
    80004ad4:	00f987b3          	add	a5,s3,a5
    80004ad8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004adc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004ae0:	00007717          	auipc	a4,0x7
    80004ae4:	0e073703          	ld	a4,224(a4) # 8000bbc0 <waitForAll>
    80004ae8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004aec:	00048793          	mv	a5,s1
    80004af0:	00349513          	slli	a0,s1,0x3
    80004af4:	00aa8533          	add	a0,s5,a0
    80004af8:	fa9054e3          	blez	s1,80004aa0 <_Z22producerConsumer_C_APIv+0x188>
    80004afc:	00000597          	auipc	a1,0x0
    80004b00:	cd058593          	addi	a1,a1,-816 # 800047cc <_Z8producerPv>
    80004b04:	fa5ff06f          	j	80004aa8 <_Z22producerConsumer_C_APIv+0x190>
    }

    thread_dispatch();
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	82c080e7          	jalr	-2004(ra) # 80001334 <thread_dispatch>

    for (int i = 0; i <= threadNum; i++) {
    80004b10:	00000493          	li	s1,0
    80004b14:	00994e63          	blt	s2,s1,80004b30 <_Z22producerConsumer_C_APIv+0x218>
        sem_wait(waitForAll);
    80004b18:	00007517          	auipc	a0,0x7
    80004b1c:	0a853503          	ld	a0,168(a0) # 8000bbc0 <waitForAll>
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	8c0080e7          	jalr	-1856(ra) # 800013e0 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80004b28:	0014849b          	addiw	s1,s1,1
    80004b2c:	fe9ff06f          	j	80004b14 <_Z22producerConsumer_C_APIv+0x1fc>
    }

    sem_close(waitForAll);
    80004b30:	00007517          	auipc	a0,0x7
    80004b34:	09053503          	ld	a0,144(a0) # 8000bbc0 <waitForAll>
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	87c080e7          	jalr	-1924(ra) # 800013b4 <sem_close>
    80004b40:	f9040113          	addi	sp,s0,-112
    80004b44:	06813083          	ld	ra,104(sp)
    80004b48:	06013403          	ld	s0,96(sp)
    80004b4c:	05813483          	ld	s1,88(sp)
    80004b50:	05013903          	ld	s2,80(sp)
    80004b54:	04813983          	ld	s3,72(sp)
    80004b58:	04013a03          	ld	s4,64(sp)
    80004b5c:	03813a83          	ld	s5,56(sp)
    80004b60:	07010113          	addi	sp,sp,112
    80004b64:	00008067          	ret
    80004b68:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004b6c:	000a0513          	mv	a0,s4
    80004b70:	fffff097          	auipc	ra,0xfffff
    80004b74:	ae4080e7          	jalr	-1308(ra) # 80003654 <_ZdlPv>
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	00008097          	auipc	ra,0x8
    80004b80:	12c080e7          	jalr	300(ra) # 8000cca8 <_Unwind_Resume>

0000000080004b84 <_ZL9fibonaccim>:
static bool finishedA = false;
static bool finishedB = false;
static bool finishedC = false;
static bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004b84:	fe010113          	addi	sp,sp,-32
    80004b88:	00113c23          	sd	ra,24(sp)
    80004b8c:	00813823          	sd	s0,16(sp)
    80004b90:	00913423          	sd	s1,8(sp)
    80004b94:	01213023          	sd	s2,0(sp)
    80004b98:	02010413          	addi	s0,sp,32
    80004b9c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ba0:	00100793          	li	a5,1
    80004ba4:	02a7f863          	bgeu	a5,a0,80004bd4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ba8:	00a00793          	li	a5,10
    80004bac:	02f577b3          	remu	a5,a0,a5
    80004bb0:	02078e63          	beqz	a5,80004bec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004bb4:	fff48513          	addi	a0,s1,-1
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	fcc080e7          	jalr	-52(ra) # 80004b84 <_ZL9fibonaccim>
    80004bc0:	00050913          	mv	s2,a0
    80004bc4:	ffe48513          	addi	a0,s1,-2
    80004bc8:	00000097          	auipc	ra,0x0
    80004bcc:	fbc080e7          	jalr	-68(ra) # 80004b84 <_ZL9fibonaccim>
    80004bd0:	00a90533          	add	a0,s2,a0
}
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	00013903          	ld	s2,0(sp)
    80004be4:	02010113          	addi	sp,sp,32
    80004be8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004bec:	ffffc097          	auipc	ra,0xffffc
    80004bf0:	748080e7          	jalr	1864(ra) # 80001334 <thread_dispatch>
    80004bf4:	fc1ff06f          	j	80004bb4 <_ZL9fibonaccim+0x30>

0000000080004bf8 <_ZN7WorkerA11workerBodyAEPv>:

void WorkerA::workerBodyA(void *arg) {
    80004bf8:	fe010113          	addi	sp,sp,-32
    80004bfc:	00113c23          	sd	ra,24(sp)
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00913423          	sd	s1,8(sp)
    80004c08:	01213023          	sd	s2,0(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c10:	00000913          	li	s2,0
    80004c14:	0380006f          	j	80004c4c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004c18:	ffffc097          	auipc	ra,0xffffc
    80004c1c:	71c080e7          	jalr	1820(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004c20:	00148493          	addi	s1,s1,1
    80004c24:	000027b7          	lui	a5,0x2
    80004c28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c2c:	0097ee63          	bltu	a5,s1,80004c48 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c30:	00000713          	li	a4,0
    80004c34:	000077b7          	lui	a5,0x7
    80004c38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c3c:	fce7eee3          	bltu	a5,a4,80004c18 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004c40:	00170713          	addi	a4,a4,1
    80004c44:	ff1ff06f          	j	80004c34 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c48:	00190913          	addi	s2,s2,1
    80004c4c:	00900793          	li	a5,9
    80004c50:	0527e063          	bltu	a5,s2,80004c90 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	79450513          	addi	a0,a0,1940 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	eec080e7          	jalr	-276(ra) # 80005b48 <_Z11printStringPKc>
    80004c64:	00000613          	li	a2,0
    80004c68:	00a00593          	li	a1,10
    80004c6c:	0009051b          	sext.w	a0,s2
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	070080e7          	jalr	112(ra) # 80005ce0 <_Z8printIntiii>
    80004c78:	00004517          	auipc	a0,0x4
    80004c7c:	48850513          	addi	a0,a0,1160 # 80009100 <CONSOLE_STATUS+0xf0>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	ec8080e7          	jalr	-312(ra) # 80005b48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c88:	00000493          	li	s1,0
    80004c8c:	f99ff06f          	j	80004c24 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004c90:	00004517          	auipc	a0,0x4
    80004c94:	76050513          	addi	a0,a0,1888 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	eb0080e7          	jalr	-336(ra) # 80005b48 <_Z11printStringPKc>
    finishedA = true;
    80004ca0:	00100793          	li	a5,1
    80004ca4:	00007717          	auipc	a4,0x7
    80004ca8:	f2f70223          	sb	a5,-220(a4) # 8000bbc8 <_ZL9finishedA>
}
    80004cac:	01813083          	ld	ra,24(sp)
    80004cb0:	01013403          	ld	s0,16(sp)
    80004cb4:	00813483          	ld	s1,8(sp)
    80004cb8:	00013903          	ld	s2,0(sp)
    80004cbc:	02010113          	addi	sp,sp,32
    80004cc0:	00008067          	ret

0000000080004cc4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg)
{
    80004cc4:	fe010113          	addi	sp,sp,-32
    80004cc8:	00113c23          	sd	ra,24(sp)
    80004ccc:	00813823          	sd	s0,16(sp)
    80004cd0:	00913423          	sd	s1,8(sp)
    80004cd4:	01213023          	sd	s2,0(sp)
    80004cd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cdc:	00000913          	li	s2,0
    80004ce0:	0380006f          	j	80004d18 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	650080e7          	jalr	1616(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004cec:	00148493          	addi	s1,s1,1
    80004cf0:	000027b7          	lui	a5,0x2
    80004cf4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cf8:	0097ee63          	bltu	a5,s1,80004d14 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004cfc:	00000713          	li	a4,0
    80004d00:	000077b7          	lui	a5,0x7
    80004d04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d08:	fce7eee3          	bltu	a5,a4,80004ce4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004d0c:	00170713          	addi	a4,a4,1
    80004d10:	ff1ff06f          	j	80004d00 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d14:	00190913          	addi	s2,s2,1
    80004d18:	00f00793          	li	a5,15
    80004d1c:	0527e063          	bltu	a5,s2,80004d5c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d20:	00004517          	auipc	a0,0x4
    80004d24:	6e050513          	addi	a0,a0,1760 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	e20080e7          	jalr	-480(ra) # 80005b48 <_Z11printStringPKc>
    80004d30:	00000613          	li	a2,0
    80004d34:	00a00593          	li	a1,10
    80004d38:	0009051b          	sext.w	a0,s2
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	fa4080e7          	jalr	-92(ra) # 80005ce0 <_Z8printIntiii>
    80004d44:	00004517          	auipc	a0,0x4
    80004d48:	3bc50513          	addi	a0,a0,956 # 80009100 <CONSOLE_STATUS+0xf0>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	dfc080e7          	jalr	-516(ra) # 80005b48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d54:	00000493          	li	s1,0
    80004d58:	f99ff06f          	j	80004cf0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    thread_dispatch();
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	5d8080e7          	jalr	1496(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    80004d64:	00004517          	auipc	a0,0x4
    80004d68:	6a450513          	addi	a0,a0,1700 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	ddc080e7          	jalr	-548(ra) # 80005b48 <_Z11printStringPKc>
    finishedB = true;
    80004d74:	00100793          	li	a5,1
    80004d78:	00007717          	auipc	a4,0x7
    80004d7c:	e4f708a3          	sb	a5,-431(a4) # 8000bbc9 <_ZL9finishedB>
}
    80004d80:	01813083          	ld	ra,24(sp)
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	00813483          	ld	s1,8(sp)
    80004d8c:	00013903          	ld	s2,0(sp)
    80004d90:	02010113          	addi	sp,sp,32
    80004d94:	00008067          	ret

0000000080004d98 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004d98:	fe010113          	addi	sp,sp,-32
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	00813823          	sd	s0,16(sp)
    80004da4:	00913423          	sd	s1,8(sp)
    80004da8:	01213023          	sd	s2,0(sp)
    80004dac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004db0:	00000493          	li	s1,0
    80004db4:	0400006f          	j	80004df4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	66050513          	addi	a0,a0,1632 # 80009418 <CONSOLE_STATUS+0x408>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	d88080e7          	jalr	-632(ra) # 80005b48 <_Z11printStringPKc>
    80004dc8:	00000613          	li	a2,0
    80004dcc:	00a00593          	li	a1,10
    80004dd0:	00048513          	mv	a0,s1
    80004dd4:	00001097          	auipc	ra,0x1
    80004dd8:	f0c080e7          	jalr	-244(ra) # 80005ce0 <_Z8printIntiii>
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	32450513          	addi	a0,a0,804 # 80009100 <CONSOLE_STATUS+0xf0>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	d64080e7          	jalr	-668(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004dec:	0014849b          	addiw	s1,s1,1
    80004df0:	0ff4f493          	andi	s1,s1,255
    80004df4:	00200793          	li	a5,2
    80004df8:	fc97f0e3          	bgeu	a5,s1,80004db8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004dfc:	00004517          	auipc	a0,0x4
    80004e00:	62450513          	addi	a0,a0,1572 # 80009420 <CONSOLE_STATUS+0x410>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	d44080e7          	jalr	-700(ra) # 80005b48 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e0c:	00700313          	li	t1,7
    thread_dispatch();
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	524080e7          	jalr	1316(ra) # 80001334 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e18:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004e1c:	00004517          	auipc	a0,0x4
    80004e20:	61450513          	addi	a0,a0,1556 # 80009430 <CONSOLE_STATUS+0x420>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	d24080e7          	jalr	-732(ra) # 80005b48 <_Z11printStringPKc>
    80004e2c:	00000613          	li	a2,0
    80004e30:	00a00593          	li	a1,10
    80004e34:	0009051b          	sext.w	a0,s2
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	ea8080e7          	jalr	-344(ra) # 80005ce0 <_Z8printIntiii>
    80004e40:	00004517          	auipc	a0,0x4
    80004e44:	2c050513          	addi	a0,a0,704 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e48:	00001097          	auipc	ra,0x1
    80004e4c:	d00080e7          	jalr	-768(ra) # 80005b48 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004e50:	00c00513          	li	a0,12
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	d30080e7          	jalr	-720(ra) # 80004b84 <_ZL9fibonaccim>
    80004e5c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	5d850513          	addi	a0,a0,1496 # 80009438 <CONSOLE_STATUS+0x428>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	ce0080e7          	jalr	-800(ra) # 80005b48 <_Z11printStringPKc>
    80004e70:	00000613          	li	a2,0
    80004e74:	00a00593          	li	a1,10
    80004e78:	0009051b          	sext.w	a0,s2
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	e64080e7          	jalr	-412(ra) # 80005ce0 <_Z8printIntiii>
    80004e84:	00004517          	auipc	a0,0x4
    80004e88:	27c50513          	addi	a0,a0,636 # 80009100 <CONSOLE_STATUS+0xf0>
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	cbc080e7          	jalr	-836(ra) # 80005b48 <_Z11printStringPKc>
    80004e94:	0400006f          	j	80004ed4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	58050513          	addi	a0,a0,1408 # 80009418 <CONSOLE_STATUS+0x408>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	ca8080e7          	jalr	-856(ra) # 80005b48 <_Z11printStringPKc>
    80004ea8:	00000613          	li	a2,0
    80004eac:	00a00593          	li	a1,10
    80004eb0:	00048513          	mv	a0,s1
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	e2c080e7          	jalr	-468(ra) # 80005ce0 <_Z8printIntiii>
    80004ebc:	00004517          	auipc	a0,0x4
    80004ec0:	24450513          	addi	a0,a0,580 # 80009100 <CONSOLE_STATUS+0xf0>
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	c84080e7          	jalr	-892(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ecc:	0014849b          	addiw	s1,s1,1
    80004ed0:	0ff4f493          	andi	s1,s1,255
    80004ed4:	00500793          	li	a5,5
    80004ed8:	fc97f0e3          	bgeu	a5,s1,80004e98 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    thread_dispatch();
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	458080e7          	jalr	1112(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80004ee4:	00004517          	auipc	a0,0x4
    80004ee8:	56450513          	addi	a0,a0,1380 # 80009448 <CONSOLE_STATUS+0x438>
    80004eec:	00001097          	auipc	ra,0x1
    80004ef0:	c5c080e7          	jalr	-932(ra) # 80005b48 <_Z11printStringPKc>
    finishedC = true;
    80004ef4:	00100793          	li	a5,1
    80004ef8:	00007717          	auipc	a4,0x7
    80004efc:	ccf70923          	sb	a5,-814(a4) # 8000bbca <_ZL9finishedC>
}
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	00013903          	ld	s2,0(sp)
    80004f10:	02010113          	addi	sp,sp,32
    80004f14:	00008067          	ret

0000000080004f18 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004f18:	fe010113          	addi	sp,sp,-32
    80004f1c:	00113c23          	sd	ra,24(sp)
    80004f20:	00813823          	sd	s0,16(sp)
    80004f24:	00913423          	sd	s1,8(sp)
    80004f28:	01213023          	sd	s2,0(sp)
    80004f2c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004f30:	00a00493          	li	s1,10
    80004f34:	0400006f          	j	80004f74 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	52050513          	addi	a0,a0,1312 # 80009458 <CONSOLE_STATUS+0x448>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	c08080e7          	jalr	-1016(ra) # 80005b48 <_Z11printStringPKc>
    80004f48:	00000613          	li	a2,0
    80004f4c:	00a00593          	li	a1,10
    80004f50:	00048513          	mv	a0,s1
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	d8c080e7          	jalr	-628(ra) # 80005ce0 <_Z8printIntiii>
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	1a450513          	addi	a0,a0,420 # 80009100 <CONSOLE_STATUS+0xf0>
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	be4080e7          	jalr	-1052(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004f6c:	0014849b          	addiw	s1,s1,1
    80004f70:	0ff4f493          	andi	s1,s1,255
    80004f74:	00c00793          	li	a5,12
    80004f78:	fc97f0e3          	bgeu	a5,s1,80004f38 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	4e450513          	addi	a0,a0,1252 # 80009460 <CONSOLE_STATUS+0x450>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	bc4080e7          	jalr	-1084(ra) # 80005b48 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004f8c:	00500313          	li	t1,5
    thread_dispatch();
    80004f90:	ffffc097          	auipc	ra,0xffffc
    80004f94:	3a4080e7          	jalr	932(ra) # 80001334 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004f98:	01000513          	li	a0,16
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	be8080e7          	jalr	-1048(ra) # 80004b84 <_ZL9fibonaccim>
    80004fa4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	4c850513          	addi	a0,a0,1224 # 80009470 <CONSOLE_STATUS+0x460>
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	b98080e7          	jalr	-1128(ra) # 80005b48 <_Z11printStringPKc>
    80004fb8:	00000613          	li	a2,0
    80004fbc:	00a00593          	li	a1,10
    80004fc0:	0009051b          	sext.w	a0,s2
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	d1c080e7          	jalr	-740(ra) # 80005ce0 <_Z8printIntiii>
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	13450513          	addi	a0,a0,308 # 80009100 <CONSOLE_STATUS+0xf0>
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	b74080e7          	jalr	-1164(ra) # 80005b48 <_Z11printStringPKc>
    80004fdc:	0400006f          	j	8000501c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	47850513          	addi	a0,a0,1144 # 80009458 <CONSOLE_STATUS+0x448>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	b60080e7          	jalr	-1184(ra) # 80005b48 <_Z11printStringPKc>
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00a00593          	li	a1,10
    80004ff8:	00048513          	mv	a0,s1
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	ce4080e7          	jalr	-796(ra) # 80005ce0 <_Z8printIntiii>
    80005004:	00004517          	auipc	a0,0x4
    80005008:	0fc50513          	addi	a0,a0,252 # 80009100 <CONSOLE_STATUS+0xf0>
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	b3c080e7          	jalr	-1220(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005014:	0014849b          	addiw	s1,s1,1
    80005018:	0ff4f493          	andi	s1,s1,255
    8000501c:	00f00793          	li	a5,15
    80005020:	fc97f0e3          	bgeu	a5,s1,80004fe0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    thread_dispatch();
    80005024:	ffffc097          	auipc	ra,0xffffc
    80005028:	310080e7          	jalr	784(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    8000502c:	00004517          	auipc	a0,0x4
    80005030:	45450513          	addi	a0,a0,1108 # 80009480 <CONSOLE_STATUS+0x470>
    80005034:	00001097          	auipc	ra,0x1
    80005038:	b14080e7          	jalr	-1260(ra) # 80005b48 <_Z11printStringPKc>
    finishedD = true;
    8000503c:	00100793          	li	a5,1
    80005040:	00007717          	auipc	a4,0x7
    80005044:	b8f705a3          	sb	a5,-1141(a4) # 8000bbcb <_ZL9finishedD>
}
    80005048:	01813083          	ld	ra,24(sp)
    8000504c:	01013403          	ld	s0,16(sp)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	00013903          	ld	s2,0(sp)
    80005058:	02010113          	addi	sp,sp,32
    8000505c:	00008067          	ret

0000000080005060 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005060:	fc010113          	addi	sp,sp,-64
    80005064:	02113c23          	sd	ra,56(sp)
    80005068:	02813823          	sd	s0,48(sp)
    8000506c:	02913423          	sd	s1,40(sp)
    80005070:	03213023          	sd	s2,32(sp)
    80005074:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    //Riscv::printString("Got here\n");
    threads[0] = new WorkerA();
    80005078:	01000513          	li	a0,16
    8000507c:	ffffe097          	auipc	ra,0xffffe
    80005080:	5b0080e7          	jalr	1456(ra) # 8000362c <_Znwm>
    80005084:	00050493          	mv	s1,a0
#include "printing.hpp"

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    80005088:	ffffe097          	auipc	ra,0xffffe
    8000508c:	774080e7          	jalr	1908(ra) # 800037fc <_ZN6ThreadC1Ev>
    80005090:	00007797          	auipc	a5,0x7
    80005094:	93078793          	addi	a5,a5,-1744 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80005098:	00f4b023          	sd	a5,0(s1)
    8000509c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	3f050513          	addi	a0,a0,1008 # 80009490 <CONSOLE_STATUS+0x480>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	aa0080e7          	jalr	-1376(ra) # 80005b48 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800050b0:	01000513          	li	a0,16
    800050b4:	ffffe097          	auipc	ra,0xffffe
    800050b8:	578080e7          	jalr	1400(ra) # 8000362c <_Znwm>
    800050bc:	00050493          	mv	s1,a0
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    800050c0:	ffffe097          	auipc	ra,0xffffe
    800050c4:	73c080e7          	jalr	1852(ra) # 800037fc <_ZN6ThreadC1Ev>
    800050c8:	00007797          	auipc	a5,0x7
    800050cc:	92078793          	addi	a5,a5,-1760 # 8000b9e8 <_ZTV7WorkerB+0x10>
    800050d0:	00f4b023          	sd	a5,0(s1)
    800050d4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800050d8:	00004517          	auipc	a0,0x4
    800050dc:	3d050513          	addi	a0,a0,976 # 800094a8 <CONSOLE_STATUS+0x498>
    800050e0:	00001097          	auipc	ra,0x1
    800050e4:	a68080e7          	jalr	-1432(ra) # 80005b48 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800050e8:	01000513          	li	a0,16
    800050ec:	ffffe097          	auipc	ra,0xffffe
    800050f0:	540080e7          	jalr	1344(ra) # 8000362c <_Znwm>
    800050f4:	00050493          	mv	s1,a0
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    800050f8:	ffffe097          	auipc	ra,0xffffe
    800050fc:	704080e7          	jalr	1796(ra) # 800037fc <_ZN6ThreadC1Ev>
    80005100:	00007797          	auipc	a5,0x7
    80005104:	91078793          	addi	a5,a5,-1776 # 8000ba10 <_ZTV7WorkerC+0x10>
    80005108:	00f4b023          	sd	a5,0(s1)
    8000510c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005110:	00004517          	auipc	a0,0x4
    80005114:	3b050513          	addi	a0,a0,944 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	a30080e7          	jalr	-1488(ra) # 80005b48 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005120:	01000513          	li	a0,16
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	508080e7          	jalr	1288(ra) # 8000362c <_Znwm>
    8000512c:	00050493          	mv	s1,a0
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    80005130:	ffffe097          	auipc	ra,0xffffe
    80005134:	6cc080e7          	jalr	1740(ra) # 800037fc <_ZN6ThreadC1Ev>
    80005138:	00007797          	auipc	a5,0x7
    8000513c:	90078793          	addi	a5,a5,-1792 # 8000ba38 <_ZTV7WorkerD+0x10>
    80005140:	00f4b023          	sd	a5,0(s1)
    80005144:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005148:	00004517          	auipc	a0,0x4
    8000514c:	39050513          	addi	a0,a0,912 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005150:	00001097          	auipc	ra,0x1
    80005154:	9f8080e7          	jalr	-1544(ra) # 80005b48 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005158:	00000493          	li	s1,0
    8000515c:	00300793          	li	a5,3
    80005160:	0297c663          	blt	a5,s1,8000518c <_Z20Threads_CPP_API_testv+0x12c>
        //Riscv::printString("Starting...\n");
        threads[i]->start();
    80005164:	00349793          	slli	a5,s1,0x3
    80005168:	fe040713          	addi	a4,s0,-32
    8000516c:	00f707b3          	add	a5,a4,a5
    80005170:	fe07b503          	ld	a0,-32(a5)
    80005174:	ffffe097          	auipc	ra,0xffffe
    80005178:	588080e7          	jalr	1416(ra) # 800036fc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000517c:	0014849b          	addiw	s1,s1,1
    80005180:	fddff06f          	j	8000515c <_Z20Threads_CPP_API_testv+0xfc>
    }

    //Riscv::printString("Thread started\n");
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005184:	ffffe097          	auipc	ra,0xffffe
    80005188:	5b0080e7          	jalr	1456(ra) # 80003734 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000518c:	00007797          	auipc	a5,0x7
    80005190:	a3c7c783          	lbu	a5,-1476(a5) # 8000bbc8 <_ZL9finishedA>
    80005194:	fe0788e3          	beqz	a5,80005184 <_Z20Threads_CPP_API_testv+0x124>
    80005198:	00007797          	auipc	a5,0x7
    8000519c:	a317c783          	lbu	a5,-1487(a5) # 8000bbc9 <_ZL9finishedB>
    800051a0:	fe0782e3          	beqz	a5,80005184 <_Z20Threads_CPP_API_testv+0x124>
    800051a4:	00007797          	auipc	a5,0x7
    800051a8:	a267c783          	lbu	a5,-1498(a5) # 8000bbca <_ZL9finishedC>
    800051ac:	fc078ce3          	beqz	a5,80005184 <_Z20Threads_CPP_API_testv+0x124>
    800051b0:	00007797          	auipc	a5,0x7
    800051b4:	a1b7c783          	lbu	a5,-1509(a5) # 8000bbcb <_ZL9finishedD>
    800051b8:	fc0786e3          	beqz	a5,80005184 <_Z20Threads_CPP_API_testv+0x124>
        //Riscv::printString("main\n");
    }
    for (auto thread: threads) { delete thread; }
    800051bc:	fc040493          	addi	s1,s0,-64
    800051c0:	0080006f          	j	800051c8 <_Z20Threads_CPP_API_testv+0x168>
    800051c4:	00848493          	addi	s1,s1,8
    800051c8:	fe040793          	addi	a5,s0,-32
    800051cc:	08f48663          	beq	s1,a5,80005258 <_Z20Threads_CPP_API_testv+0x1f8>
    800051d0:	0004b503          	ld	a0,0(s1)
    800051d4:	fe0508e3          	beqz	a0,800051c4 <_Z20Threads_CPP_API_testv+0x164>
    800051d8:	00053783          	ld	a5,0(a0)
    800051dc:	0087b783          	ld	a5,8(a5)
    800051e0:	000780e7          	jalr	a5
    800051e4:	fe1ff06f          	j	800051c4 <_Z20Threads_CPP_API_testv+0x164>
    800051e8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800051ec:	00048513          	mv	a0,s1
    800051f0:	ffffe097          	auipc	ra,0xffffe
    800051f4:	464080e7          	jalr	1124(ra) # 80003654 <_ZdlPv>
    800051f8:	00090513          	mv	a0,s2
    800051fc:	00008097          	auipc	ra,0x8
    80005200:	aac080e7          	jalr	-1364(ra) # 8000cca8 <_Unwind_Resume>
    80005204:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005208:	00048513          	mv	a0,s1
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	448080e7          	jalr	1096(ra) # 80003654 <_ZdlPv>
    80005214:	00090513          	mv	a0,s2
    80005218:	00008097          	auipc	ra,0x8
    8000521c:	a90080e7          	jalr	-1392(ra) # 8000cca8 <_Unwind_Resume>
    80005220:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005224:	00048513          	mv	a0,s1
    80005228:	ffffe097          	auipc	ra,0xffffe
    8000522c:	42c080e7          	jalr	1068(ra) # 80003654 <_ZdlPv>
    80005230:	00090513          	mv	a0,s2
    80005234:	00008097          	auipc	ra,0x8
    80005238:	a74080e7          	jalr	-1420(ra) # 8000cca8 <_Unwind_Resume>
    8000523c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005240:	00048513          	mv	a0,s1
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	410080e7          	jalr	1040(ra) # 80003654 <_ZdlPv>
    8000524c:	00090513          	mv	a0,s2
    80005250:	00008097          	auipc	ra,0x8
    80005254:	a58080e7          	jalr	-1448(ra) # 8000cca8 <_Unwind_Resume>
    80005258:	03813083          	ld	ra,56(sp)
    8000525c:	03013403          	ld	s0,48(sp)
    80005260:	02813483          	ld	s1,40(sp)
    80005264:	02013903          	ld	s2,32(sp)
    80005268:	04010113          	addi	sp,sp,64
    8000526c:	00008067          	ret

0000000080005270 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005270:	ff010113          	addi	sp,sp,-16
    80005274:	00113423          	sd	ra,8(sp)
    80005278:	00813023          	sd	s0,0(sp)
    8000527c:	01010413          	addi	s0,sp,16
    80005280:	00006797          	auipc	a5,0x6
    80005284:	74078793          	addi	a5,a5,1856 # 8000b9c0 <_ZTV7WorkerA+0x10>
    80005288:	00f53023          	sd	a5,0(a0)
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	330080e7          	jalr	816(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005294:	00813083          	ld	ra,8(sp)
    80005298:	00013403          	ld	s0,0(sp)
    8000529c:	01010113          	addi	sp,sp,16
    800052a0:	00008067          	ret

00000000800052a4 <_ZN7WorkerAD0Ev>:
    800052a4:	fe010113          	addi	sp,sp,-32
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00813823          	sd	s0,16(sp)
    800052b0:	00913423          	sd	s1,8(sp)
    800052b4:	02010413          	addi	s0,sp,32
    800052b8:	00050493          	mv	s1,a0
    800052bc:	00006797          	auipc	a5,0x6
    800052c0:	70478793          	addi	a5,a5,1796 # 8000b9c0 <_ZTV7WorkerA+0x10>
    800052c4:	00f53023          	sd	a5,0(a0)
    800052c8:	ffffe097          	auipc	ra,0xffffe
    800052cc:	2f4080e7          	jalr	756(ra) # 800035bc <_ZN6ThreadD1Ev>
    800052d0:	00048513          	mv	a0,s1
    800052d4:	ffffe097          	auipc	ra,0xffffe
    800052d8:	380080e7          	jalr	896(ra) # 80003654 <_ZdlPv>
    800052dc:	01813083          	ld	ra,24(sp)
    800052e0:	01013403          	ld	s0,16(sp)
    800052e4:	00813483          	ld	s1,8(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret

00000000800052f0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800052f0:	ff010113          	addi	sp,sp,-16
    800052f4:	00113423          	sd	ra,8(sp)
    800052f8:	00813023          	sd	s0,0(sp)
    800052fc:	01010413          	addi	s0,sp,16
    80005300:	00006797          	auipc	a5,0x6
    80005304:	6e878793          	addi	a5,a5,1768 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80005308:	00f53023          	sd	a5,0(a0)
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	2b0080e7          	jalr	688(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005314:	00813083          	ld	ra,8(sp)
    80005318:	00013403          	ld	s0,0(sp)
    8000531c:	01010113          	addi	sp,sp,16
    80005320:	00008067          	ret

0000000080005324 <_ZN7WorkerBD0Ev>:
    80005324:	fe010113          	addi	sp,sp,-32
    80005328:	00113c23          	sd	ra,24(sp)
    8000532c:	00813823          	sd	s0,16(sp)
    80005330:	00913423          	sd	s1,8(sp)
    80005334:	02010413          	addi	s0,sp,32
    80005338:	00050493          	mv	s1,a0
    8000533c:	00006797          	auipc	a5,0x6
    80005340:	6ac78793          	addi	a5,a5,1708 # 8000b9e8 <_ZTV7WorkerB+0x10>
    80005344:	00f53023          	sd	a5,0(a0)
    80005348:	ffffe097          	auipc	ra,0xffffe
    8000534c:	274080e7          	jalr	628(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005350:	00048513          	mv	a0,s1
    80005354:	ffffe097          	auipc	ra,0xffffe
    80005358:	300080e7          	jalr	768(ra) # 80003654 <_ZdlPv>
    8000535c:	01813083          	ld	ra,24(sp)
    80005360:	01013403          	ld	s0,16(sp)
    80005364:	00813483          	ld	s1,8(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret

0000000080005370 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00113423          	sd	ra,8(sp)
    80005378:	00813023          	sd	s0,0(sp)
    8000537c:	01010413          	addi	s0,sp,16
    80005380:	00006797          	auipc	a5,0x6
    80005384:	69078793          	addi	a5,a5,1680 # 8000ba10 <_ZTV7WorkerC+0x10>
    80005388:	00f53023          	sd	a5,0(a0)
    8000538c:	ffffe097          	auipc	ra,0xffffe
    80005390:	230080e7          	jalr	560(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005394:	00813083          	ld	ra,8(sp)
    80005398:	00013403          	ld	s0,0(sp)
    8000539c:	01010113          	addi	sp,sp,16
    800053a0:	00008067          	ret

00000000800053a4 <_ZN7WorkerCD0Ev>:
    800053a4:	fe010113          	addi	sp,sp,-32
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00913423          	sd	s1,8(sp)
    800053b4:	02010413          	addi	s0,sp,32
    800053b8:	00050493          	mv	s1,a0
    800053bc:	00006797          	auipc	a5,0x6
    800053c0:	65478793          	addi	a5,a5,1620 # 8000ba10 <_ZTV7WorkerC+0x10>
    800053c4:	00f53023          	sd	a5,0(a0)
    800053c8:	ffffe097          	auipc	ra,0xffffe
    800053cc:	1f4080e7          	jalr	500(ra) # 800035bc <_ZN6ThreadD1Ev>
    800053d0:	00048513          	mv	a0,s1
    800053d4:	ffffe097          	auipc	ra,0xffffe
    800053d8:	280080e7          	jalr	640(ra) # 80003654 <_ZdlPv>
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	00813483          	ld	s1,8(sp)
    800053e8:	02010113          	addi	sp,sp,32
    800053ec:	00008067          	ret

00000000800053f0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800053f0:	ff010113          	addi	sp,sp,-16
    800053f4:	00113423          	sd	ra,8(sp)
    800053f8:	00813023          	sd	s0,0(sp)
    800053fc:	01010413          	addi	s0,sp,16
    80005400:	00006797          	auipc	a5,0x6
    80005404:	63878793          	addi	a5,a5,1592 # 8000ba38 <_ZTV7WorkerD+0x10>
    80005408:	00f53023          	sd	a5,0(a0)
    8000540c:	ffffe097          	auipc	ra,0xffffe
    80005410:	1b0080e7          	jalr	432(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005414:	00813083          	ld	ra,8(sp)
    80005418:	00013403          	ld	s0,0(sp)
    8000541c:	01010113          	addi	sp,sp,16
    80005420:	00008067          	ret

0000000080005424 <_ZN7WorkerDD0Ev>:
    80005424:	fe010113          	addi	sp,sp,-32
    80005428:	00113c23          	sd	ra,24(sp)
    8000542c:	00813823          	sd	s0,16(sp)
    80005430:	00913423          	sd	s1,8(sp)
    80005434:	02010413          	addi	s0,sp,32
    80005438:	00050493          	mv	s1,a0
    8000543c:	00006797          	auipc	a5,0x6
    80005440:	5fc78793          	addi	a5,a5,1532 # 8000ba38 <_ZTV7WorkerD+0x10>
    80005444:	00f53023          	sd	a5,0(a0)
    80005448:	ffffe097          	auipc	ra,0xffffe
    8000544c:	174080e7          	jalr	372(ra) # 800035bc <_ZN6ThreadD1Ev>
    80005450:	00048513          	mv	a0,s1
    80005454:	ffffe097          	auipc	ra,0xffffe
    80005458:	200080e7          	jalr	512(ra) # 80003654 <_ZdlPv>
    8000545c:	01813083          	ld	ra,24(sp)
    80005460:	01013403          	ld	s0,16(sp)
    80005464:	00813483          	ld	s1,8(sp)
    80005468:	02010113          	addi	sp,sp,32
    8000546c:	00008067          	ret

0000000080005470 <_ZN7WorkerA3runEv>:
    void run() override {
    80005470:	ff010113          	addi	sp,sp,-16
    80005474:	00113423          	sd	ra,8(sp)
    80005478:	00813023          	sd	s0,0(sp)
    8000547c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005480:	00000593          	li	a1,0
    80005484:	fffff097          	auipc	ra,0xfffff
    80005488:	774080e7          	jalr	1908(ra) # 80004bf8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000548c:	00813083          	ld	ra,8(sp)
    80005490:	00013403          	ld	s0,0(sp)
    80005494:	01010113          	addi	sp,sp,16
    80005498:	00008067          	ret

000000008000549c <_ZN7WorkerB3runEv>:
    void run() override {
    8000549c:	ff010113          	addi	sp,sp,-16
    800054a0:	00113423          	sd	ra,8(sp)
    800054a4:	00813023          	sd	s0,0(sp)
    800054a8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800054ac:	00000593          	li	a1,0
    800054b0:	00000097          	auipc	ra,0x0
    800054b4:	814080e7          	jalr	-2028(ra) # 80004cc4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800054b8:	00813083          	ld	ra,8(sp)
    800054bc:	00013403          	ld	s0,0(sp)
    800054c0:	01010113          	addi	sp,sp,16
    800054c4:	00008067          	ret

00000000800054c8 <_ZN7WorkerC3runEv>:
    void run() override {
    800054c8:	ff010113          	addi	sp,sp,-16
    800054cc:	00113423          	sd	ra,8(sp)
    800054d0:	00813023          	sd	s0,0(sp)
    800054d4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800054d8:	00000593          	li	a1,0
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	8bc080e7          	jalr	-1860(ra) # 80004d98 <_ZN7WorkerC11workerBodyCEPv>
    }
    800054e4:	00813083          	ld	ra,8(sp)
    800054e8:	00013403          	ld	s0,0(sp)
    800054ec:	01010113          	addi	sp,sp,16
    800054f0:	00008067          	ret

00000000800054f4 <_ZN7WorkerD3runEv>:

    void run() override {
    800054f4:	ff010113          	addi	sp,sp,-16
    800054f8:	00113423          	sd	ra,8(sp)
    800054fc:	00813023          	sd	s0,0(sp)
    80005500:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005504:	00000593          	li	a1,0
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	a10080e7          	jalr	-1520(ra) # 80004f18 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005510:	00813083          	ld	ra,8(sp)
    80005514:	00013403          	ld	s0,0(sp)
    80005518:	01010113          	addi	sp,sp,16
    8000551c:	00008067          	ret

0000000080005520 <_Z11workerBodyAPv>:
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    80005520:	fe010113          	addi	sp,sp,-32
    80005524:	00113c23          	sd	ra,24(sp)
    80005528:	00813823          	sd	s0,16(sp)
    8000552c:	00913423          	sd	s1,8(sp)
    80005530:	01213023          	sd	s2,0(sp)
    80005534:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80005538:	00000913          	li	s2,0
    8000553c:	0380006f          	j	80005574 <_Z11workerBodyAPv+0x54>
    {
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	df4080e7          	jalr	-524(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005548:	00148493          	addi	s1,s1,1
    8000554c:	000027b7          	lui	a5,0x2
    80005550:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005554:	0097ee63          	bltu	a5,s1,80005570 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005558:	00000713          	li	a4,0
    8000555c:	000077b7          	lui	a5,0x7
    80005560:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005564:	fce7eee3          	bltu	a5,a4,80005540 <_Z11workerBodyAPv+0x20>
    80005568:	00170713          	addi	a4,a4,1
    8000556c:	ff1ff06f          	j	8000555c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80005570:	00190913          	addi	s2,s2,1
    80005574:	00900793          	li	a5,9
    80005578:	0527e063          	bltu	a5,s2,800055b8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000557c:	00004517          	auipc	a0,0x4
    80005580:	e6c50513          	addi	a0,a0,-404 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005584:	00000097          	auipc	ra,0x0
    80005588:	5c4080e7          	jalr	1476(ra) # 80005b48 <_Z11printStringPKc>
    8000558c:	00000613          	li	a2,0
    80005590:	00a00593          	li	a1,10
    80005594:	0009051b          	sext.w	a0,s2
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	748080e7          	jalr	1864(ra) # 80005ce0 <_Z8printIntiii>
    800055a0:	00004517          	auipc	a0,0x4
    800055a4:	b6050513          	addi	a0,a0,-1184 # 80009100 <CONSOLE_STATUS+0xf0>
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	5a0080e7          	jalr	1440(ra) # 80005b48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800055b0:	00000493          	li	s1,0
    800055b4:	f99ff06f          	j	8000554c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800055b8:	00004517          	auipc	a0,0x4
    800055bc:	e3850513          	addi	a0,a0,-456 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	588080e7          	jalr	1416(ra) # 80005b48 <_Z11printStringPKc>
    finishedA = true;
    800055c8:	00100793          	li	a5,1
    800055cc:	00006717          	auipc	a4,0x6
    800055d0:	60f70023          	sb	a5,1536(a4) # 8000bbcc <_ZL9finishedA>
}
    800055d4:	01813083          	ld	ra,24(sp)
    800055d8:	01013403          	ld	s0,16(sp)
    800055dc:	00813483          	ld	s1,8(sp)
    800055e0:	00013903          	ld	s2,0(sp)
    800055e4:	02010113          	addi	sp,sp,32
    800055e8:	00008067          	ret

00000000800055ec <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00113c23          	sd	ra,24(sp)
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	01213023          	sd	s2,0(sp)
    80005600:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005604:	00000913          	li	s2,0
    80005608:	0380006f          	j	80005640 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000560c:	ffffc097          	auipc	ra,0xffffc
    80005610:	d28080e7          	jalr	-728(ra) # 80001334 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++)
    80005614:	00148493          	addi	s1,s1,1
    80005618:	000027b7          	lui	a5,0x2
    8000561c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005620:	0097ee63          	bltu	a5,s1,8000563c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005624:	00000713          	li	a4,0
    80005628:	000077b7          	lui	a5,0x7
    8000562c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005630:	fce7eee3          	bltu	a5,a4,8000560c <_Z11workerBodyBPv+0x20>
    80005634:	00170713          	addi	a4,a4,1
    80005638:	ff1ff06f          	j	80005628 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000563c:	00190913          	addi	s2,s2,1
    80005640:	00f00793          	li	a5,15
    80005644:	0527e063          	bltu	a5,s2,80005684 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005648:	00004517          	auipc	a0,0x4
    8000564c:	db850513          	addi	a0,a0,-584 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005650:	00000097          	auipc	ra,0x0
    80005654:	4f8080e7          	jalr	1272(ra) # 80005b48 <_Z11printStringPKc>
    80005658:	00000613          	li	a2,0
    8000565c:	00a00593          	li	a1,10
    80005660:	0009051b          	sext.w	a0,s2
    80005664:	00000097          	auipc	ra,0x0
    80005668:	67c080e7          	jalr	1660(ra) # 80005ce0 <_Z8printIntiii>
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	a9450513          	addi	a0,a0,-1388 # 80009100 <CONSOLE_STATUS+0xf0>
    80005674:	00000097          	auipc	ra,0x0
    80005678:	4d4080e7          	jalr	1236(ra) # 80005b48 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000567c:	00000493          	li	s1,0
    80005680:	f99ff06f          	j	80005618 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005684:	ffffc097          	auipc	ra,0xffffc
    80005688:	cb0080e7          	jalr	-848(ra) # 80001334 <thread_dispatch>
    printString("B finished!\n");
    8000568c:	00004517          	auipc	a0,0x4
    80005690:	d7c50513          	addi	a0,a0,-644 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005694:	00000097          	auipc	ra,0x0
    80005698:	4b4080e7          	jalr	1204(ra) # 80005b48 <_Z11printStringPKc>
    finishedB = true;
    8000569c:	00100793          	li	a5,1
    800056a0:	00006717          	auipc	a4,0x6
    800056a4:	52f706a3          	sb	a5,1325(a4) # 8000bbcd <_ZL9finishedB>
}
    800056a8:	01813083          	ld	ra,24(sp)
    800056ac:	01013403          	ld	s0,16(sp)
    800056b0:	00813483          	ld	s1,8(sp)
    800056b4:	00013903          	ld	s2,0(sp)
    800056b8:	02010113          	addi	sp,sp,32
    800056bc:	00008067          	ret

00000000800056c0 <_ZL9fibonaccim>:
{
    800056c0:	fe010113          	addi	sp,sp,-32
    800056c4:	00113c23          	sd	ra,24(sp)
    800056c8:	00813823          	sd	s0,16(sp)
    800056cc:	00913423          	sd	s1,8(sp)
    800056d0:	01213023          	sd	s2,0(sp)
    800056d4:	02010413          	addi	s0,sp,32
    800056d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) {return n; }
    800056dc:	00100793          	li	a5,1
    800056e0:	02a7f863          	bgeu	a5,a0,80005710 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056e4:	00a00793          	li	a5,10
    800056e8:	02f577b3          	remu	a5,a0,a5
    800056ec:	02078e63          	beqz	a5,80005728 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056f0:	fff48513          	addi	a0,s1,-1
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	fcc080e7          	jalr	-52(ra) # 800056c0 <_ZL9fibonaccim>
    800056fc:	00050913          	mv	s2,a0
    80005700:	ffe48513          	addi	a0,s1,-2
    80005704:	00000097          	auipc	ra,0x0
    80005708:	fbc080e7          	jalr	-68(ra) # 800056c0 <_ZL9fibonaccim>
    8000570c:	00a90533          	add	a0,s2,a0
}
    80005710:	01813083          	ld	ra,24(sp)
    80005714:	01013403          	ld	s0,16(sp)
    80005718:	00813483          	ld	s1,8(sp)
    8000571c:	00013903          	ld	s2,0(sp)
    80005720:	02010113          	addi	sp,sp,32
    80005724:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005728:	ffffc097          	auipc	ra,0xffffc
    8000572c:	c0c080e7          	jalr	-1012(ra) # 80001334 <thread_dispatch>
    80005730:	fc1ff06f          	j	800056f0 <_ZL9fibonaccim+0x30>

0000000080005734 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80005734:	fe010113          	addi	sp,sp,-32
    80005738:	00113c23          	sd	ra,24(sp)
    8000573c:	00813823          	sd	s0,16(sp)
    80005740:	00913423          	sd	s1,8(sp)
    80005744:	01213023          	sd	s2,0(sp)
    80005748:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000574c:	00000493          	li	s1,0
    80005750:	0400006f          	j	80005790 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i="); printInt(i); printString("\n");
    80005754:	00004517          	auipc	a0,0x4
    80005758:	cc450513          	addi	a0,a0,-828 # 80009418 <CONSOLE_STATUS+0x408>
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	3ec080e7          	jalr	1004(ra) # 80005b48 <_Z11printStringPKc>
    80005764:	00000613          	li	a2,0
    80005768:	00a00593          	li	a1,10
    8000576c:	00048513          	mv	a0,s1
    80005770:	00000097          	auipc	ra,0x0
    80005774:	570080e7          	jalr	1392(ra) # 80005ce0 <_Z8printIntiii>
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	98850513          	addi	a0,a0,-1656 # 80009100 <CONSOLE_STATUS+0xf0>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	3c8080e7          	jalr	968(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 3; i++)
    80005788:	0014849b          	addiw	s1,s1,1
    8000578c:	0ff4f493          	andi	s1,s1,255
    80005790:	00200793          	li	a5,2
    80005794:	fc97f0e3          	bgeu	a5,s1,80005754 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	c8850513          	addi	a0,a0,-888 # 80009420 <CONSOLE_STATUS+0x410>
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	3a8080e7          	jalr	936(ra) # 80005b48 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800057a8:	00700313          	li	t1,7
    thread_dispatch();
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	b88080e7          	jalr	-1144(ra) # 80001334 <thread_dispatch>
    printString("C: returned\n");
    800057b4:	00004517          	auipc	a0,0x4
    800057b8:	d3c50513          	addi	a0,a0,-708 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800057bc:	00000097          	auipc	ra,0x0
    800057c0:	38c080e7          	jalr	908(ra) # 80005b48 <_Z11printStringPKc>
    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800057c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	c6850513          	addi	a0,a0,-920 # 80009430 <CONSOLE_STATUS+0x420>
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	378080e7          	jalr	888(ra) # 80005b48 <_Z11printStringPKc>
    800057d8:	00000613          	li	a2,0
    800057dc:	00a00593          	li	a1,10
    800057e0:	0009051b          	sext.w	a0,s2
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	4fc080e7          	jalr	1276(ra) # 80005ce0 <_Z8printIntiii>
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	91450513          	addi	a0,a0,-1772 # 80009100 <CONSOLE_STATUS+0xf0>
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	354080e7          	jalr	852(ra) # 80005b48 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800057fc:	00c00513          	li	a0,12
    80005800:	00000097          	auipc	ra,0x0
    80005804:	ec0080e7          	jalr	-320(ra) # 800056c0 <_ZL9fibonaccim>
    80005808:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000580c:	00004517          	auipc	a0,0x4
    80005810:	c2c50513          	addi	a0,a0,-980 # 80009438 <CONSOLE_STATUS+0x428>
    80005814:	00000097          	auipc	ra,0x0
    80005818:	334080e7          	jalr	820(ra) # 80005b48 <_Z11printStringPKc>
    8000581c:	00000613          	li	a2,0
    80005820:	00a00593          	li	a1,10
    80005824:	0009051b          	sext.w	a0,s2
    80005828:	00000097          	auipc	ra,0x0
    8000582c:	4b8080e7          	jalr	1208(ra) # 80005ce0 <_Z8printIntiii>
    80005830:	00004517          	auipc	a0,0x4
    80005834:	8d050513          	addi	a0,a0,-1840 # 80009100 <CONSOLE_STATUS+0xf0>
    80005838:	00000097          	auipc	ra,0x0
    8000583c:	310080e7          	jalr	784(ra) # 80005b48 <_Z11printStringPKc>
    80005840:	0400006f          	j	80005880 <_Z11workerBodyCPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005844:	00004517          	auipc	a0,0x4
    80005848:	bd450513          	addi	a0,a0,-1068 # 80009418 <CONSOLE_STATUS+0x408>
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	2fc080e7          	jalr	764(ra) # 80005b48 <_Z11printStringPKc>
    80005854:	00000613          	li	a2,0
    80005858:	00a00593          	li	a1,10
    8000585c:	00048513          	mv	a0,s1
    80005860:	00000097          	auipc	ra,0x0
    80005864:	480080e7          	jalr	1152(ra) # 80005ce0 <_Z8printIntiii>
    80005868:	00004517          	auipc	a0,0x4
    8000586c:	89850513          	addi	a0,a0,-1896 # 80009100 <CONSOLE_STATUS+0xf0>
    80005870:	00000097          	auipc	ra,0x0
    80005874:	2d8080e7          	jalr	728(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005878:	0014849b          	addiw	s1,s1,1
    8000587c:	0ff4f493          	andi	s1,s1,255
    80005880:	00500793          	li	a5,5
    80005884:	fc97f0e3          	bgeu	a5,s1,80005844 <_Z11workerBodyCPv+0x110>
    }

    thread_dispatch();
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	aac080e7          	jalr	-1364(ra) # 80001334 <thread_dispatch>
    printString("C finished!\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	bb850513          	addi	a0,a0,-1096 # 80009448 <CONSOLE_STATUS+0x438>
    80005898:	00000097          	auipc	ra,0x0
    8000589c:	2b0080e7          	jalr	688(ra) # 80005b48 <_Z11printStringPKc>
    finishedC = true;
    800058a0:	00100793          	li	a5,1
    800058a4:	00006717          	auipc	a4,0x6
    800058a8:	32f70523          	sb	a5,810(a4) # 8000bbce <_ZL9finishedC>
}
    800058ac:	01813083          	ld	ra,24(sp)
    800058b0:	01013403          	ld	s0,16(sp)
    800058b4:	00813483          	ld	s1,8(sp)
    800058b8:	00013903          	ld	s2,0(sp)
    800058bc:	02010113          	addi	sp,sp,32
    800058c0:	00008067          	ret

00000000800058c4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    800058c4:	fe010113          	addi	sp,sp,-32
    800058c8:	00113c23          	sd	ra,24(sp)
    800058cc:	00813823          	sd	s0,16(sp)
    800058d0:	00913423          	sd	s1,8(sp)
    800058d4:	01213023          	sd	s2,0(sp)
    800058d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800058dc:	00a00493          	li	s1,10
    800058e0:	0400006f          	j	80005920 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	b7450513          	addi	a0,a0,-1164 # 80009458 <CONSOLE_STATUS+0x448>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	25c080e7          	jalr	604(ra) # 80005b48 <_Z11printStringPKc>
    800058f4:	00000613          	li	a2,0
    800058f8:	00a00593          	li	a1,10
    800058fc:	00048513          	mv	a0,s1
    80005900:	00000097          	auipc	ra,0x0
    80005904:	3e0080e7          	jalr	992(ra) # 80005ce0 <_Z8printIntiii>
    80005908:	00003517          	auipc	a0,0x3
    8000590c:	7f850513          	addi	a0,a0,2040 # 80009100 <CONSOLE_STATUS+0xf0>
    80005910:	00000097          	auipc	ra,0x0
    80005914:	238080e7          	jalr	568(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005918:	0014849b          	addiw	s1,s1,1
    8000591c:	0ff4f493          	andi	s1,s1,255
    80005920:	00c00793          	li	a5,12
    80005924:	fc97f0e3          	bgeu	a5,s1,800058e4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005928:	00004517          	auipc	a0,0x4
    8000592c:	b3850513          	addi	a0,a0,-1224 # 80009460 <CONSOLE_STATUS+0x450>
    80005930:	00000097          	auipc	ra,0x0
    80005934:	218080e7          	jalr	536(ra) # 80005b48 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005938:	00500313          	li	t1,5
    thread_dispatch();
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	9f8080e7          	jalr	-1544(ra) # 80001334 <thread_dispatch>
    printString("D: returned\n");
    80005944:	00004517          	auipc	a0,0x4
    80005948:	bbc50513          	addi	a0,a0,-1092 # 80009500 <CONSOLE_STATUS+0x4f0>
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	1fc080e7          	jalr	508(ra) # 80005b48 <_Z11printStringPKc>
    uint64 result = fibonacci(16);
    80005954:	01000513          	li	a0,16
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	d68080e7          	jalr	-664(ra) # 800056c0 <_ZL9fibonaccim>
    80005960:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005964:	00004517          	auipc	a0,0x4
    80005968:	b0c50513          	addi	a0,a0,-1268 # 80009470 <CONSOLE_STATUS+0x460>
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	1dc080e7          	jalr	476(ra) # 80005b48 <_Z11printStringPKc>
    80005974:	00000613          	li	a2,0
    80005978:	00a00593          	li	a1,10
    8000597c:	0009051b          	sext.w	a0,s2
    80005980:	00000097          	auipc	ra,0x0
    80005984:	360080e7          	jalr	864(ra) # 80005ce0 <_Z8printIntiii>
    80005988:	00003517          	auipc	a0,0x3
    8000598c:	77850513          	addi	a0,a0,1912 # 80009100 <CONSOLE_STATUS+0xf0>
    80005990:	00000097          	auipc	ra,0x0
    80005994:	1b8080e7          	jalr	440(ra) # 80005b48 <_Z11printStringPKc>
    80005998:	0400006f          	j	800059d8 <_Z11workerBodyDPv+0x114>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	abc50513          	addi	a0,a0,-1348 # 80009458 <CONSOLE_STATUS+0x448>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	1a4080e7          	jalr	420(ra) # 80005b48 <_Z11printStringPKc>
    800059ac:	00000613          	li	a2,0
    800059b0:	00a00593          	li	a1,10
    800059b4:	00048513          	mv	a0,s1
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	328080e7          	jalr	808(ra) # 80005ce0 <_Z8printIntiii>
    800059c0:	00003517          	auipc	a0,0x3
    800059c4:	74050513          	addi	a0,a0,1856 # 80009100 <CONSOLE_STATUS+0xf0>
    800059c8:	00000097          	auipc	ra,0x0
    800059cc:	180080e7          	jalr	384(ra) # 80005b48 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800059d0:	0014849b          	addiw	s1,s1,1
    800059d4:	0ff4f493          	andi	s1,s1,255
    800059d8:	00f00793          	li	a5,15
    800059dc:	fc97f0e3          	bgeu	a5,s1,8000599c <_Z11workerBodyDPv+0xd8>
    }

    thread_dispatch();
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	954080e7          	jalr	-1708(ra) # 80001334 <thread_dispatch>
    printString("D finished!\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	a9850513          	addi	a0,a0,-1384 # 80009480 <CONSOLE_STATUS+0x470>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	158080e7          	jalr	344(ra) # 80005b48 <_Z11printStringPKc>
    finishedD = true;
    800059f8:	00100793          	li	a5,1
    800059fc:	00006717          	auipc	a4,0x6
    80005a00:	1cf709a3          	sb	a5,467(a4) # 8000bbcf <_ZL9finishedD>
}
    80005a04:	01813083          	ld	ra,24(sp)
    80005a08:	01013403          	ld	s0,16(sp)
    80005a0c:	00813483          	ld	s1,8(sp)
    80005a10:	00013903          	ld	s2,0(sp)
    80005a14:	02010113          	addi	sp,sp,32
    80005a18:	00008067          	ret

0000000080005a1c <_Z18Threads_C_API_testv>:


void Threads_C_API_test()
{
    80005a1c:	fc010113          	addi	sp,sp,-64
    80005a20:	02113c23          	sd	ra,56(sp)
    80005a24:	02813823          	sd	s0,48(sp)
    80005a28:	02913423          	sd	s1,40(sp)
    80005a2c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a30:	00000613          	li	a2,0
    80005a34:	00000597          	auipc	a1,0x0
    80005a38:	aec58593          	addi	a1,a1,-1300 # 80005520 <_Z11workerBodyAPv>
    80005a3c:	fc040513          	addi	a0,s0,-64
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	874080e7          	jalr	-1932(ra) # 800012b4 <thread_create>
    printString("ThreadA created\n");
    80005a48:	00004517          	auipc	a0,0x4
    80005a4c:	a4850513          	addi	a0,a0,-1464 # 80009490 <CONSOLE_STATUS+0x480>
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	0f8080e7          	jalr	248(ra) # 80005b48 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a58:	00000613          	li	a2,0
    80005a5c:	00000597          	auipc	a1,0x0
    80005a60:	b9058593          	addi	a1,a1,-1136 # 800055ec <_Z11workerBodyBPv>
    80005a64:	fc840513          	addi	a0,s0,-56
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	84c080e7          	jalr	-1972(ra) # 800012b4 <thread_create>
    printString("ThreadB created\n");
    80005a70:	00004517          	auipc	a0,0x4
    80005a74:	a3850513          	addi	a0,a0,-1480 # 800094a8 <CONSOLE_STATUS+0x498>
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	0d0080e7          	jalr	208(ra) # 80005b48 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a80:	00000613          	li	a2,0
    80005a84:	00000597          	auipc	a1,0x0
    80005a88:	cb058593          	addi	a1,a1,-848 # 80005734 <_Z11workerBodyCPv>
    80005a8c:	fd040513          	addi	a0,s0,-48
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	824080e7          	jalr	-2012(ra) # 800012b4 <thread_create>
    printString("ThreadC created\n");
    80005a98:	00004517          	auipc	a0,0x4
    80005a9c:	a2850513          	addi	a0,a0,-1496 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	0a8080e7          	jalr	168(ra) # 80005b48 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005aa8:	00000613          	li	a2,0
    80005aac:	00000597          	auipc	a1,0x0
    80005ab0:	e1858593          	addi	a1,a1,-488 # 800058c4 <_Z11workerBodyDPv>
    80005ab4:	fd840513          	addi	a0,s0,-40
    80005ab8:	ffffb097          	auipc	ra,0xffffb
    80005abc:	7fc080e7          	jalr	2044(ra) # 800012b4 <thread_create>
    printString("ThreadD created\n");
    80005ac0:	00004517          	auipc	a0,0x4
    80005ac4:	a1850513          	addi	a0,a0,-1512 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005ac8:	00000097          	auipc	ra,0x0
    80005acc:	080080e7          	jalr	128(ra) # 80005b48 <_Z11printStringPKc>
    80005ad0:	00c0006f          	j	80005adc <_Z18Threads_C_API_testv+0xc0>

    while (!finishedA || !finishedB || !finishedC || !finishedD)
    {
        //printString("Main thread\n");
        thread_dispatch();
    80005ad4:	ffffc097          	auipc	ra,0xffffc
    80005ad8:	860080e7          	jalr	-1952(ra) # 80001334 <thread_dispatch>
    while (!finishedA || !finishedB || !finishedC || !finishedD)
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	0f07c783          	lbu	a5,240(a5) # 8000bbcc <_ZL9finishedA>
    80005ae4:	fe0788e3          	beqz	a5,80005ad4 <_Z18Threads_C_API_testv+0xb8>
    80005ae8:	00006797          	auipc	a5,0x6
    80005aec:	0e57c783          	lbu	a5,229(a5) # 8000bbcd <_ZL9finishedB>
    80005af0:	fe0782e3          	beqz	a5,80005ad4 <_Z18Threads_C_API_testv+0xb8>
    80005af4:	00006797          	auipc	a5,0x6
    80005af8:	0da7c783          	lbu	a5,218(a5) # 8000bbce <_ZL9finishedC>
    80005afc:	fc078ce3          	beqz	a5,80005ad4 <_Z18Threads_C_API_testv+0xb8>
    80005b00:	00006797          	auipc	a5,0x6
    80005b04:	0cf7c783          	lbu	a5,207(a5) # 8000bbcf <_ZL9finishedD>
    80005b08:	fc0786e3          	beqz	a5,80005ad4 <_Z18Threads_C_API_testv+0xb8>
    }
    for (auto &thread: threads)
    80005b0c:	fc040493          	addi	s1,s0,-64
    80005b10:	0080006f          	j	80005b18 <_Z18Threads_C_API_testv+0xfc>
    80005b14:	00848493          	addi	s1,s1,8
    80005b18:	fe040793          	addi	a5,s0,-32
    80005b1c:	00f48c63          	beq	s1,a5,80005b34 <_Z18Threads_C_API_testv+0x118>
    {
        //todo
        //in order to syscall.c to stay .c it gotta be converted
        delete (uint64*)thread;
    80005b20:	0004b503          	ld	a0,0(s1)
    80005b24:	fe0508e3          	beqz	a0,80005b14 <_Z18Threads_C_API_testv+0xf8>
    80005b28:	ffffe097          	auipc	ra,0xffffe
    80005b2c:	b2c080e7          	jalr	-1236(ra) # 80003654 <_ZdlPv>
    80005b30:	fe5ff06f          	j	80005b14 <_Z18Threads_C_API_testv+0xf8>
    }
}
    80005b34:	03813083          	ld	ra,56(sp)
    80005b38:	03013403          	ld	s0,48(sp)
    80005b3c:	02813483          	ld	s1,40(sp)
    80005b40:	04010113          	addi	sp,sp,64
    80005b44:	00008067          	ret

0000000080005b48 <_Z11printStringPKc>:
#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

uint64 lockPrint = 0;

void printString(char const *string) {
    80005b48:	fe010113          	addi	sp,sp,-32
    80005b4c:	00113c23          	sd	ra,24(sp)
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00913423          	sd	s1,8(sp)
    80005b58:	02010413          	addi	s0,sp,32
    80005b5c:	00050493          	mv	s1,a0
    LOCK();
    80005b60:	00100613          	li	a2,1
    80005b64:	00000593          	li	a1,0
    80005b68:	00006517          	auipc	a0,0x6
    80005b6c:	06850513          	addi	a0,a0,104 # 8000bbd0 <lockPrint>
    80005b70:	ffffb097          	auipc	ra,0xffffb
    80005b74:	6a8080e7          	jalr	1704(ra) # 80001218 <copy_and_swap>
    80005b78:	fe0514e3          	bnez	a0,80005b60 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80005b7c:	0004c503          	lbu	a0,0(s1)
    80005b80:	00050a63          	beqz	a0,80005b94 <_Z11printStringPKc+0x4c>
        __putc(*string);
    80005b84:	00003097          	auipc	ra,0x3
    80005b88:	a08080e7          	jalr	-1528(ra) # 8000858c <__putc>
        string++;
    80005b8c:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80005b90:	fedff06f          	j	80005b7c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005b94:	00000613          	li	a2,0
    80005b98:	00100593          	li	a1,1
    80005b9c:	00006517          	auipc	a0,0x6
    80005ba0:	03450513          	addi	a0,a0,52 # 8000bbd0 <lockPrint>
    80005ba4:	ffffb097          	auipc	ra,0xffffb
    80005ba8:	674080e7          	jalr	1652(ra) # 80001218 <copy_and_swap>
    80005bac:	fe0514e3          	bnez	a0,80005b94 <_Z11printStringPKc+0x4c>
}
    80005bb0:	01813083          	ld	ra,24(sp)
    80005bb4:	01013403          	ld	s0,16(sp)
    80005bb8:	00813483          	ld	s1,8(sp)
    80005bbc:	02010113          	addi	sp,sp,32
    80005bc0:	00008067          	ret

0000000080005bc4 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80005bc4:	fd010113          	addi	sp,sp,-48
    80005bc8:	02113423          	sd	ra,40(sp)
    80005bcc:	02813023          	sd	s0,32(sp)
    80005bd0:	00913c23          	sd	s1,24(sp)
    80005bd4:	01213823          	sd	s2,16(sp)
    80005bd8:	01313423          	sd	s3,8(sp)
    80005bdc:	01413023          	sd	s4,0(sp)
    80005be0:	03010413          	addi	s0,sp,48
    80005be4:	00050993          	mv	s3,a0
    80005be8:	00058a13          	mv	s4,a1
    LOCK();
    80005bec:	00100613          	li	a2,1
    80005bf0:	00000593          	li	a1,0
    80005bf4:	00006517          	auipc	a0,0x6
    80005bf8:	fdc50513          	addi	a0,a0,-36 # 8000bbd0 <lockPrint>
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	61c080e7          	jalr	1564(ra) # 80001218 <copy_and_swap>
    80005c04:	fe0514e3          	bnez	a0,80005bec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80005c08:	00000913          	li	s2,0
    80005c0c:	00090493          	mv	s1,s2
    80005c10:	0019091b          	addiw	s2,s2,1
    80005c14:	03495a63          	bge	s2,s4,80005c48 <_Z9getStringPci+0x84>
        cc = __getc();
    80005c18:	00003097          	auipc	ra,0x3
    80005c1c:	9b0080e7          	jalr	-1616(ra) # 800085c8 <__getc>
        if (cc < 1)
    80005c20:	02050463          	beqz	a0,80005c48 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005c24:	009984b3          	add	s1,s3,s1
    80005c28:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80005c2c:	00a00793          	li	a5,10
    80005c30:	00f50a63          	beq	a0,a5,80005c44 <_Z9getStringPci+0x80>
    80005c34:	00d00793          	li	a5,13
    80005c38:	fcf51ae3          	bne	a0,a5,80005c0c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005c3c:	00090493          	mv	s1,s2
    80005c40:	0080006f          	j	80005c48 <_Z9getStringPci+0x84>
    80005c44:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c48:	009984b3          	add	s1,s3,s1
    80005c4c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c50:	00000613          	li	a2,0
    80005c54:	00100593          	li	a1,1
    80005c58:	00006517          	auipc	a0,0x6
    80005c5c:	f7850513          	addi	a0,a0,-136 # 8000bbd0 <lockPrint>
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	5b8080e7          	jalr	1464(ra) # 80001218 <copy_and_swap>
    80005c68:	fe0514e3          	bnez	a0,80005c50 <_Z9getStringPci+0x8c>
    return buf;
}
    80005c6c:	00098513          	mv	a0,s3
    80005c70:	02813083          	ld	ra,40(sp)
    80005c74:	02013403          	ld	s0,32(sp)
    80005c78:	01813483          	ld	s1,24(sp)
    80005c7c:	01013903          	ld	s2,16(sp)
    80005c80:	00813983          	ld	s3,8(sp)
    80005c84:	00013a03          	ld	s4,0(sp)
    80005c88:	03010113          	addi	sp,sp,48
    80005c8c:	00008067          	ret

0000000080005c90 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c90:	ff010113          	addi	sp,sp,-16
    80005c94:	00813423          	sd	s0,8(sp)
    80005c98:	01010413          	addi	s0,sp,16
    80005c9c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005ca0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005ca4:	0006c603          	lbu	a2,0(a3)
    80005ca8:	fd06071b          	addiw	a4,a2,-48
    80005cac:	0ff77713          	andi	a4,a4,255
    80005cb0:	00900793          	li	a5,9
    80005cb4:	02e7e063          	bltu	a5,a4,80005cd4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cb8:	0025179b          	slliw	a5,a0,0x2
    80005cbc:	00a787bb          	addw	a5,a5,a0
    80005cc0:	0017979b          	slliw	a5,a5,0x1
    80005cc4:	00168693          	addi	a3,a3,1
    80005cc8:	00c787bb          	addw	a5,a5,a2
    80005ccc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005cd0:	fd5ff06f          	j	80005ca4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005cd4:	00813403          	ld	s0,8(sp)
    80005cd8:	01010113          	addi	sp,sp,16
    80005cdc:	00008067          	ret

0000000080005ce0 <_Z8printIntiii>:

static char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base , int sgn) {
    80005ce0:	fc010113          	addi	sp,sp,-64
    80005ce4:	02113c23          	sd	ra,56(sp)
    80005ce8:	02813823          	sd	s0,48(sp)
    80005cec:	02913423          	sd	s1,40(sp)
    80005cf0:	03213023          	sd	s2,32(sp)
    80005cf4:	01313c23          	sd	s3,24(sp)
    80005cf8:	04010413          	addi	s0,sp,64
    80005cfc:	00050493          	mv	s1,a0
    80005d00:	00058913          	mv	s2,a1
    80005d04:	00060993          	mv	s3,a2
    LOCK();
    80005d08:	00100613          	li	a2,1
    80005d0c:	00000593          	li	a1,0
    80005d10:	00006517          	auipc	a0,0x6
    80005d14:	ec050513          	addi	a0,a0,-320 # 8000bbd0 <lockPrint>
    80005d18:	ffffb097          	auipc	ra,0xffffb
    80005d1c:	500080e7          	jalr	1280(ra) # 80001218 <copy_and_swap>
    80005d20:	fe0514e3          	bnez	a0,80005d08 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80005d24:	00098463          	beqz	s3,80005d2c <_Z8printIntiii+0x4c>
    80005d28:	0804c463          	bltz	s1,80005db0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d2c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d30:	00000593          	li	a1,0
    }

    i = 0;
    80005d34:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80005d38:	0009079b          	sext.w	a5,s2
    80005d3c:	0325773b          	remuw	a4,a0,s2
    80005d40:	00048613          	mv	a2,s1
    80005d44:	0014849b          	addiw	s1,s1,1
    80005d48:	02071693          	slli	a3,a4,0x20
    80005d4c:	0206d693          	srli	a3,a3,0x20
    80005d50:	00003717          	auipc	a4,0x3
    80005d54:	7c070713          	addi	a4,a4,1984 # 80009510 <_ZL6digits>
    80005d58:	00d70733          	add	a4,a4,a3
    80005d5c:	00074683          	lbu	a3,0(a4)
    80005d60:	fd040713          	addi	a4,s0,-48
    80005d64:	00c70733          	add	a4,a4,a2
    80005d68:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80005d6c:	0005071b          	sext.w	a4,a0
    80005d70:	0325553b          	divuw	a0,a0,s2
    80005d74:	fcf772e3          	bgeu	a4,a5,80005d38 <_Z8printIntiii+0x58>
    if (neg)
    80005d78:	00058c63          	beqz	a1,80005d90 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005d7c:	fd040793          	addi	a5,s0,-48
    80005d80:	009784b3          	add	s1,a5,s1
    80005d84:	02d00793          	li	a5,45
    80005d88:	fef48823          	sb	a5,-16(s1)
    80005d8c:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80005d90:	fff4849b          	addiw	s1,s1,-1
    80005d94:	0204c463          	bltz	s1,80005dbc <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    80005d98:	fd040793          	addi	a5,s0,-48
    80005d9c:	009787b3          	add	a5,a5,s1
    80005da0:	ff07c503          	lbu	a0,-16(a5)
    80005da4:	00002097          	auipc	ra,0x2
    80005da8:	7e8080e7          	jalr	2024(ra) # 8000858c <__putc>
    80005dac:	fe5ff06f          	j	80005d90 <_Z8printIntiii+0xb0>
        x = -xx;
    80005db0:	4090053b          	negw	a0,s1
        neg = 1;
    80005db4:	00100593          	li	a1,1
        x = -xx;
    80005db8:	f7dff06f          	j	80005d34 <_Z8printIntiii+0x54>
    UNLOCK();
    80005dbc:	00000613          	li	a2,0
    80005dc0:	00100593          	li	a1,1
    80005dc4:	00006517          	auipc	a0,0x6
    80005dc8:	e0c50513          	addi	a0,a0,-500 # 8000bbd0 <lockPrint>
    80005dcc:	ffffb097          	auipc	ra,0xffffb
    80005dd0:	44c080e7          	jalr	1100(ra) # 80001218 <copy_and_swap>
    80005dd4:	fe0514e3          	bnez	a0,80005dbc <_Z8printIntiii+0xdc>
}
    80005dd8:	03813083          	ld	ra,56(sp)
    80005ddc:	03013403          	ld	s0,48(sp)
    80005de0:	02813483          	ld	s1,40(sp)
    80005de4:	02013903          	ld	s2,32(sp)
    80005de8:	01813983          	ld	s3,24(sp)
    80005dec:	04010113          	addi	sp,sp,64
    80005df0:	00008067          	ret

0000000080005df4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"


BufferCPP::BufferCPP(int _cap) : cap(_cap), head(0), tail(0) {
    80005df4:	fe010113          	addi	sp,sp,-32
    80005df8:	00113c23          	sd	ra,24(sp)
    80005dfc:	00813823          	sd	s0,16(sp)
    80005e00:	00913423          	sd	s1,8(sp)
    80005e04:	01213023          	sd	s2,0(sp)
    80005e08:	02010413          	addi	s0,sp,32
    80005e0c:	00050493          	mv	s1,a0
    80005e10:	00b52023          	sw	a1,0(a0)
    80005e14:	00052823          	sw	zero,16(a0)
    80005e18:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e1c:	00259513          	slli	a0,a1,0x2
    80005e20:	ffffb097          	auipc	ra,0xffffb
    80005e24:	438080e7          	jalr	1080(ra) # 80001258 <mem_alloc>
    80005e28:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e2c:	01000513          	li	a0,16
    80005e30:	ffffd097          	auipc	ra,0xffffd
    80005e34:	7fc080e7          	jalr	2044(ra) # 8000362c <_Znwm>
    80005e38:	00050913          	mv	s2,a0
    80005e3c:	00000593          	li	a1,0
    80005e40:	ffffe097          	auipc	ra,0xffffe
    80005e44:	a38080e7          	jalr	-1480(ra) # 80003878 <_ZN9SemaphoreC1Ej>
    80005e48:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(cap);
    80005e4c:	01000513          	li	a0,16
    80005e50:	ffffd097          	auipc	ra,0xffffd
    80005e54:	7dc080e7          	jalr	2012(ra) # 8000362c <_Znwm>
    80005e58:	00050913          	mv	s2,a0
    80005e5c:	0004a583          	lw	a1,0(s1)
    80005e60:	ffffe097          	auipc	ra,0xffffe
    80005e64:	a18080e7          	jalr	-1512(ra) # 80003878 <_ZN9SemaphoreC1Ej>
    80005e68:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80005e6c:	01000513          	li	a0,16
    80005e70:	ffffd097          	auipc	ra,0xffffd
    80005e74:	7bc080e7          	jalr	1980(ra) # 8000362c <_Znwm>
    80005e78:	00050913          	mv	s2,a0
    80005e7c:	00100593          	li	a1,1
    80005e80:	ffffe097          	auipc	ra,0xffffe
    80005e84:	9f8080e7          	jalr	-1544(ra) # 80003878 <_ZN9SemaphoreC1Ej>
    80005e88:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005e8c:	01000513          	li	a0,16
    80005e90:	ffffd097          	auipc	ra,0xffffd
    80005e94:	79c080e7          	jalr	1948(ra) # 8000362c <_Znwm>
    80005e98:	00050913          	mv	s2,a0
    80005e9c:	00100593          	li	a1,1
    80005ea0:	ffffe097          	auipc	ra,0xffffe
    80005ea4:	9d8080e7          	jalr	-1576(ra) # 80003878 <_ZN9SemaphoreC1Ej>
    80005ea8:	0324b823          	sd	s2,48(s1)
}
    80005eac:	01813083          	ld	ra,24(sp)
    80005eb0:	01013403          	ld	s0,16(sp)
    80005eb4:	00813483          	ld	s1,8(sp)
    80005eb8:	00013903          	ld	s2,0(sp)
    80005ebc:	02010113          	addi	sp,sp,32
    80005ec0:	00008067          	ret
    80005ec4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ec8:	00090513          	mv	a0,s2
    80005ecc:	ffffd097          	auipc	ra,0xffffd
    80005ed0:	788080e7          	jalr	1928(ra) # 80003654 <_ZdlPv>
    80005ed4:	00048513          	mv	a0,s1
    80005ed8:	00007097          	auipc	ra,0x7
    80005edc:	dd0080e7          	jalr	-560(ra) # 8000cca8 <_Unwind_Resume>
    80005ee0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(cap);
    80005ee4:	00090513          	mv	a0,s2
    80005ee8:	ffffd097          	auipc	ra,0xffffd
    80005eec:	76c080e7          	jalr	1900(ra) # 80003654 <_ZdlPv>
    80005ef0:	00048513          	mv	a0,s1
    80005ef4:	00007097          	auipc	ra,0x7
    80005ef8:	db4080e7          	jalr	-588(ra) # 8000cca8 <_Unwind_Resume>
    80005efc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f00:	00090513          	mv	a0,s2
    80005f04:	ffffd097          	auipc	ra,0xffffd
    80005f08:	750080e7          	jalr	1872(ra) # 80003654 <_ZdlPv>
    80005f0c:	00048513          	mv	a0,s1
    80005f10:	00007097          	auipc	ra,0x7
    80005f14:	d98080e7          	jalr	-616(ra) # 8000cca8 <_Unwind_Resume>
    80005f18:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f1c:	00090513          	mv	a0,s2
    80005f20:	ffffd097          	auipc	ra,0xffffd
    80005f24:	734080e7          	jalr	1844(ra) # 80003654 <_ZdlPv>
    80005f28:	00048513          	mv	a0,s1
    80005f2c:	00007097          	auipc	ra,0x7
    80005f30:	d7c080e7          	jalr	-644(ra) # 8000cca8 <_Unwind_Resume>

0000000080005f34 <_ZN9BufferCPPD1Ev>:

BufferCPP::~BufferCPP() {
    80005f34:	fe010113          	addi	sp,sp,-32
    80005f38:	00113c23          	sd	ra,24(sp)
    80005f3c:	00813823          	sd	s0,16(sp)
    80005f40:	00913423          	sd	s1,8(sp)
    80005f44:	02010413          	addi	s0,sp,32
    80005f48:	00050493          	mv	s1,a0
    putc('\n');
    80005f4c:	00a00513          	li	a0,10
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	5e8080e7          	jalr	1512(ra) # 80001538 <putc>
    //todo
    //placeholder
    //printf("Buffer deleted!\n");
    while (head != tail) {
    80005f58:	0104a783          	lw	a5,16(s1)
    80005f5c:	0144a703          	lw	a4,20(s1)
    80005f60:	00e78c63          	beq	a5,a4,80005f78 <_ZN9BufferCPPD1Ev+0x44>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80005f64:	0017879b          	addiw	a5,a5,1
    80005f68:	0004a703          	lw	a4,0(s1)
    80005f6c:	02e7e7bb          	remw	a5,a5,a4
    80005f70:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80005f74:	fe5ff06f          	j	80005f58 <_ZN9BufferCPPD1Ev+0x24>
    }
    putc('!');
    80005f78:	02100513          	li	a0,33
    80005f7c:	ffffb097          	auipc	ra,0xffffb
    80005f80:	5bc080e7          	jalr	1468(ra) # 80001538 <putc>
    putc('\n');
    80005f84:	00a00513          	li	a0,10
    80005f88:	ffffb097          	auipc	ra,0xffffb
    80005f8c:	5b0080e7          	jalr	1456(ra) # 80001538 <putc>

    mem_free(buffer);
    80005f90:	0084b503          	ld	a0,8(s1)
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	2f4080e7          	jalr	756(ra) # 80001288 <mem_free>
    delete itemAvailable;
    80005f9c:	0204b503          	ld	a0,32(s1)
    80005fa0:	00050863          	beqz	a0,80005fb0 <_ZN9BufferCPPD1Ev+0x7c>
    80005fa4:	00053783          	ld	a5,0(a0)
    80005fa8:	0087b783          	ld	a5,8(a5)
    80005fac:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fb0:	0184b503          	ld	a0,24(s1)
    80005fb4:	00050863          	beqz	a0,80005fc4 <_ZN9BufferCPPD1Ev+0x90>
    80005fb8:	00053783          	ld	a5,0(a0)
    80005fbc:	0087b783          	ld	a5,8(a5)
    80005fc0:	000780e7          	jalr	a5
    delete mutexTail;
    80005fc4:	0304b503          	ld	a0,48(s1)
    80005fc8:	00050863          	beqz	a0,80005fd8 <_ZN9BufferCPPD1Ev+0xa4>
    80005fcc:	00053783          	ld	a5,0(a0)
    80005fd0:	0087b783          	ld	a5,8(a5)
    80005fd4:	000780e7          	jalr	a5
    delete mutexHead;
    80005fd8:	0284b503          	ld	a0,40(s1)
    80005fdc:	00050863          	beqz	a0,80005fec <_ZN9BufferCPPD1Ev+0xb8>
    80005fe0:	00053783          	ld	a5,0(a0)
    80005fe4:	0087b783          	ld	a5,8(a5)
    80005fe8:	000780e7          	jalr	a5

}
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret

0000000080006000 <_ZN9BufferCPP3putEi>:

void BufferCPP::put(int val) {
    80006000:	fe010113          	addi	sp,sp,-32
    80006004:	00113c23          	sd	ra,24(sp)
    80006008:	00813823          	sd	s0,16(sp)
    8000600c:	00913423          	sd	s1,8(sp)
    80006010:	01213023          	sd	s2,0(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	00050493          	mv	s1,a0
    8000601c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006020:	01853503          	ld	a0,24(a0)
    80006024:	ffffe097          	auipc	ra,0xffffe
    80006028:	81c080e7          	jalr	-2020(ra) # 80003840 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000602c:	0304b503          	ld	a0,48(s1)
    80006030:	ffffe097          	auipc	ra,0xffffe
    80006034:	810080e7          	jalr	-2032(ra) # 80003840 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006038:	0084b783          	ld	a5,8(s1)
    8000603c:	0144a703          	lw	a4,20(s1)
    80006040:	00271713          	slli	a4,a4,0x2
    80006044:	00e787b3          	add	a5,a5,a4
    80006048:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000604c:	0144a783          	lw	a5,20(s1)
    80006050:	0017879b          	addiw	a5,a5,1
    80006054:	0004a703          	lw	a4,0(s1)
    80006058:	02e7e7bb          	remw	a5,a5,a4
    8000605c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006060:	0304b503          	ld	a0,48(s1)
    80006064:	ffffe097          	auipc	ra,0xffffe
    80006068:	860080e7          	jalr	-1952(ra) # 800038c4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000606c:	0204b503          	ld	a0,32(s1)
    80006070:	ffffe097          	auipc	ra,0xffffe
    80006074:	854080e7          	jalr	-1964(ra) # 800038c4 <_ZN9Semaphore6signalEv>

}
    80006078:	01813083          	ld	ra,24(sp)
    8000607c:	01013403          	ld	s0,16(sp)
    80006080:	00813483          	ld	s1,8(sp)
    80006084:	00013903          	ld	s2,0(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006090:	fe010113          	addi	sp,sp,-32
    80006094:	00113c23          	sd	ra,24(sp)
    80006098:	00813823          	sd	s0,16(sp)
    8000609c:	00913423          	sd	s1,8(sp)
    800060a0:	01213023          	sd	s2,0(sp)
    800060a4:	02010413          	addi	s0,sp,32
    800060a8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800060ac:	02053503          	ld	a0,32(a0)
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	790080e7          	jalr	1936(ra) # 80003840 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800060b8:	0284b503          	ld	a0,40(s1)
    800060bc:	ffffd097          	auipc	ra,0xffffd
    800060c0:	784080e7          	jalr	1924(ra) # 80003840 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800060c4:	0084b703          	ld	a4,8(s1)
    800060c8:	0104a783          	lw	a5,16(s1)
    800060cc:	00279693          	slli	a3,a5,0x2
    800060d0:	00d70733          	add	a4,a4,a3
    800060d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060d8:	0017879b          	addiw	a5,a5,1
    800060dc:	0004a703          	lw	a4,0(s1)
    800060e0:	02e7e7bb          	remw	a5,a5,a4
    800060e4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060e8:	0284b503          	ld	a0,40(s1)
    800060ec:	ffffd097          	auipc	ra,0xffffd
    800060f0:	7d8080e7          	jalr	2008(ra) # 800038c4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060f4:	0184b503          	ld	a0,24(s1)
    800060f8:	ffffd097          	auipc	ra,0xffffd
    800060fc:	7cc080e7          	jalr	1996(ra) # 800038c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006100:	00090513          	mv	a0,s2
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_Z8userMainv>:
//

#include "userMain.hpp"

void userMain()
{
    8000611c:	ff010113          	addi	sp,sp,-16
    80006120:	00113423          	sd	ra,8(sp)
    80006124:	00813023          	sd	s0,0(sp)
    80006128:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	0bc080e7          	jalr	188(ra) # 800061e8 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80006134:	00813083          	ld	ra,8(sp)
    80006138:	00013403          	ld	s0,0(sp)
    8000613c:	01010113          	addi	sp,sp,16
    80006140:	00008067          	ret

0000000080006144 <_Z9sleepyRunPv>:

#include "ThreadSleep_C_API_test.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80006144:	fe010113          	addi	sp,sp,-32
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	00813823          	sd	s0,16(sp)
    80006150:	00913423          	sd	s1,8(sp)
    80006154:	01213023          	sd	s2,0(sp)
    80006158:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000615c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006160:	00600493          	li	s1,6
    while (--i > 0) {
    80006164:	fff4849b          	addiw	s1,s1,-1
    80006168:	04905463          	blez	s1,800061b0 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000616c:	00003517          	auipc	a0,0x3
    80006170:	3bc50513          	addi	a0,a0,956 # 80009528 <_ZL6digits+0x18>
    80006174:	00000097          	auipc	ra,0x0
    80006178:	9d4080e7          	jalr	-1580(ra) # 80005b48 <_Z11printStringPKc>
        printInt(sleep_time);
    8000617c:	00000613          	li	a2,0
    80006180:	00a00593          	li	a1,10
    80006184:	0009051b          	sext.w	a0,s2
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	b58080e7          	jalr	-1192(ra) # 80005ce0 <_Z8printIntiii>
        printString(" !\n");
    80006190:	00003517          	auipc	a0,0x3
    80006194:	3a050513          	addi	a0,a0,928 # 80009530 <_ZL6digits+0x20>
    80006198:	00000097          	auipc	ra,0x0
    8000619c:	9b0080e7          	jalr	-1616(ra) # 80005b48 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800061a0:	00090513          	mv	a0,s2
    800061a4:	ffffb097          	auipc	ra,0xffffb
    800061a8:	294080e7          	jalr	660(ra) # 80001438 <time_sleep>
    while (--i > 0) {
    800061ac:	fb9ff06f          	j	80006164 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800061b0:	00a00793          	li	a5,10
    800061b4:	02f95933          	divu	s2,s2,a5
    800061b8:	fff90913          	addi	s2,s2,-1
    800061bc:	00006797          	auipc	a5,0x6
    800061c0:	a1c78793          	addi	a5,a5,-1508 # 8000bbd8 <finished>
    800061c4:	01278933          	add	s2,a5,s2
    800061c8:	00100793          	li	a5,1
    800061cc:	00f90023          	sb	a5,0(s2)
}
    800061d0:	01813083          	ld	ra,24(sp)
    800061d4:	01013403          	ld	s0,16(sp)
    800061d8:	00813483          	ld	s1,8(sp)
    800061dc:	00013903          	ld	s2,0(sp)
    800061e0:	02010113          	addi	sp,sp,32
    800061e4:	00008067          	ret

00000000800061e8 <_Z12testSleepingv>:

void testSleeping()
{
    800061e8:	fc010113          	addi	sp,sp,-64
    800061ec:	02113c23          	sd	ra,56(sp)
    800061f0:	02813823          	sd	s0,48(sp)
    800061f4:	02913423          	sd	s1,40(sp)
    800061f8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800061fc:	00a00793          	li	a5,10
    80006200:	fcf43823          	sd	a5,-48(s0)
    80006204:	01400793          	li	a5,20
    80006208:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000620c:	00000493          	li	s1,0
    80006210:	02c0006f          	j	8000623c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006214:	00349793          	slli	a5,s1,0x3
    80006218:	fd040613          	addi	a2,s0,-48
    8000621c:	00f60633          	add	a2,a2,a5
    80006220:	00000597          	auipc	a1,0x0
    80006224:	f2458593          	addi	a1,a1,-220 # 80006144 <_Z9sleepyRunPv>
    80006228:	fc040513          	addi	a0,s0,-64
    8000622c:	00f50533          	add	a0,a0,a5
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	084080e7          	jalr	132(ra) # 800012b4 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006238:	0014849b          	addiw	s1,s1,1
    8000623c:	00100793          	li	a5,1
    80006240:	fc97dae3          	bge	a5,s1,80006214 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006244:	00006797          	auipc	a5,0x6
    80006248:	9947c783          	lbu	a5,-1644(a5) # 8000bbd8 <finished>
    8000624c:	fe078ce3          	beqz	a5,80006244 <_Z12testSleepingv+0x5c>
    80006250:	00006797          	auipc	a5,0x6
    80006254:	9897c783          	lbu	a5,-1655(a5) # 8000bbd9 <finished+0x1>
    80006258:	fe0786e3          	beqz	a5,80006244 <_Z12testSleepingv+0x5c>
}
    8000625c:	03813083          	ld	ra,56(sp)
    80006260:	03013403          	ld	s0,48(sp)
    80006264:	02813483          	ld	s1,40(sp)
    80006268:	04010113          	addi	sp,sp,64
    8000626c:	00008067          	ret

0000000080006270 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer(int _cap) : cap(_cap), head(0), tail(0) {
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	00113c23          	sd	ra,24(sp)
    80006278:	00813823          	sd	s0,16(sp)
    8000627c:	00913423          	sd	s1,8(sp)
    80006280:	02010413          	addi	s0,sp,32
    80006284:	00050493          	mv	s1,a0
    80006288:	00b52023          	sw	a1,0(a0)
    8000628c:	00052823          	sw	zero,16(a0)
    80006290:	00052a23          	sw	zero,20(a0)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006294:	00259513          	slli	a0,a1,0x2
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	fc0080e7          	jalr	-64(ra) # 80001258 <mem_alloc>
    800062a0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800062a4:	00000593          	li	a1,0
    800062a8:	02048513          	addi	a0,s1,32
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	0d0080e7          	jalr	208(ra) # 8000137c <sem_open>
    sem_open(&spaceAvailable, cap);
    800062b4:	0004a583          	lw	a1,0(s1)
    800062b8:	01848513          	addi	a0,s1,24
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	0c0080e7          	jalr	192(ra) # 8000137c <sem_open>
    sem_open(&mutexHead, 1);
    800062c4:	00100593          	li	a1,1
    800062c8:	02848513          	addi	a0,s1,40
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	0b0080e7          	jalr	176(ra) # 8000137c <sem_open>
    sem_open(&mutexTail, 1);
    800062d4:	00100593          	li	a1,1
    800062d8:	03048513          	addi	a0,s1,48
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	0a0080e7          	jalr	160(ra) # 8000137c <sem_open>
}
    800062e4:	01813083          	ld	ra,24(sp)
    800062e8:	01013403          	ld	s0,16(sp)
    800062ec:	00813483          	ld	s1,8(sp)
    800062f0:	02010113          	addi	sp,sp,32
    800062f4:	00008067          	ret

00000000800062f8 <_ZN6BufferD1Ev>:

Buffer::~Buffer() {
    800062f8:	fe010113          	addi	sp,sp,-32
    800062fc:	00113c23          	sd	ra,24(sp)
    80006300:	00813823          	sd	s0,16(sp)
    80006304:	00913423          	sd	s1,8(sp)
    80006308:	02010413          	addi	s0,sp,32
    8000630c:	00050493          	mv	s1,a0
    putc('\n');
    80006310:	00a00513          	li	a0,10
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	224080e7          	jalr	548(ra) # 80001538 <putc>
    //todo
    //placeholder
    printString("Buffer deleted!\n");
    8000631c:	00003517          	auipc	a0,0x3
    80006320:	21c50513          	addi	a0,a0,540 # 80009538 <_ZL6digits+0x28>
    80006324:	00000097          	auipc	ra,0x0
    80006328:	824080e7          	jalr	-2012(ra) # 80005b48 <_Z11printStringPKc>
    while (head != tail) {
    8000632c:	0104a783          	lw	a5,16(s1)
    80006330:	0144a703          	lw	a4,20(s1)
    80006334:	00e78c63          	beq	a5,a4,8000634c <_ZN6BufferD1Ev+0x54>
        //todo
        //placeholder
        //printf("%c ", buffer[head]);
        head = (head + 1) % cap;
    80006338:	0017879b          	addiw	a5,a5,1
    8000633c:	0004a703          	lw	a4,0(s1)
    80006340:	02e7e7bb          	remw	a5,a5,a4
    80006344:	00f4a823          	sw	a5,16(s1)
    while (head != tail) {
    80006348:	fe5ff06f          	j	8000632c <_ZN6BufferD1Ev+0x34>
    }
    putc('!');
    8000634c:	02100513          	li	a0,33
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	1e8080e7          	jalr	488(ra) # 80001538 <putc>
    putc('\n');
    80006358:	00a00513          	li	a0,10
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	1dc080e7          	jalr	476(ra) # 80001538 <putc>

    mem_free(buffer);
    80006364:	0084b503          	ld	a0,8(s1)
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	f20080e7          	jalr	-224(ra) # 80001288 <mem_free>
    sem_close(itemAvailable);
    80006370:	0204b503          	ld	a0,32(s1)
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	040080e7          	jalr	64(ra) # 800013b4 <sem_close>
    sem_close(spaceAvailable);
    8000637c:	0184b503          	ld	a0,24(s1)
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	034080e7          	jalr	52(ra) # 800013b4 <sem_close>
    sem_close(mutexTail);
    80006388:	0304b503          	ld	a0,48(s1)
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	028080e7          	jalr	40(ra) # 800013b4 <sem_close>
    sem_close(mutexHead);
    80006394:	0284b503          	ld	a0,40(s1)
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	01c080e7          	jalr	28(ra) # 800013b4 <sem_close>
}
    800063a0:	01813083          	ld	ra,24(sp)
    800063a4:	01013403          	ld	s0,16(sp)
    800063a8:	00813483          	ld	s1,8(sp)
    800063ac:	02010113          	addi	sp,sp,32
    800063b0:	00008067          	ret

00000000800063b4 <_ZN6Buffer3putEi>:

void Buffer::put(int val) {
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00913423          	sd	s1,8(sp)
    800063c4:	01213023          	sd	s2,0(sp)
    800063c8:	02010413          	addi	s0,sp,32
    800063cc:	00050493          	mv	s1,a0
    800063d0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800063d4:	01853503          	ld	a0,24(a0)
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	008080e7          	jalr	8(ra) # 800013e0 <sem_wait>

    sem_wait(mutexTail);
    800063e0:	0304b503          	ld	a0,48(s1)
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	ffc080e7          	jalr	-4(ra) # 800013e0 <sem_wait>
    buffer[tail] = val;
    800063ec:	0084b783          	ld	a5,8(s1)
    800063f0:	0144a703          	lw	a4,20(s1)
    800063f4:	00271713          	slli	a4,a4,0x2
    800063f8:	00e787b3          	add	a5,a5,a4
    800063fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006400:	0144a783          	lw	a5,20(s1)
    80006404:	0017879b          	addiw	a5,a5,1
    80006408:	0004a703          	lw	a4,0(s1)
    8000640c:	02e7e7bb          	remw	a5,a5,a4
    80006410:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006414:	0304b503          	ld	a0,48(s1)
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	ff4080e7          	jalr	-12(ra) # 8000140c <sem_signal>

    sem_signal(itemAvailable);
    80006420:	0204b503          	ld	a0,32(s1)
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	fe8080e7          	jalr	-24(ra) # 8000140c <sem_signal>

}
    8000642c:	01813083          	ld	ra,24(sp)
    80006430:	01013403          	ld	s0,16(sp)
    80006434:	00813483          	ld	s1,8(sp)
    80006438:	00013903          	ld	s2,0(sp)
    8000643c:	02010113          	addi	sp,sp,32
    80006440:	00008067          	ret

0000000080006444 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006444:	fe010113          	addi	sp,sp,-32
    80006448:	00113c23          	sd	ra,24(sp)
    8000644c:	00813823          	sd	s0,16(sp)
    80006450:	00913423          	sd	s1,8(sp)
    80006454:	01213023          	sd	s2,0(sp)
    80006458:	02010413          	addi	s0,sp,32
    8000645c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006460:	02053503          	ld	a0,32(a0)
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	f7c080e7          	jalr	-132(ra) # 800013e0 <sem_wait>

    sem_wait(mutexHead);
    8000646c:	0284b503          	ld	a0,40(s1)
    80006470:	ffffb097          	auipc	ra,0xffffb
    80006474:	f70080e7          	jalr	-144(ra) # 800013e0 <sem_wait>

    int ret = buffer[head];
    80006478:	0084b703          	ld	a4,8(s1)
    8000647c:	0104a783          	lw	a5,16(s1)
    80006480:	00279693          	slli	a3,a5,0x2
    80006484:	00d70733          	add	a4,a4,a3
    80006488:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000648c:	0017879b          	addiw	a5,a5,1
    80006490:	0004a703          	lw	a4,0(s1)
    80006494:	02e7e7bb          	remw	a5,a5,a4
    80006498:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000649c:	0284b503          	ld	a0,40(s1)
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f6c080e7          	jalr	-148(ra) # 8000140c <sem_signal>

    sem_signal(spaceAvailable);
    800064a8:	0184b503          	ld	a0,24(s1)
    800064ac:	ffffb097          	auipc	ra,0xffffb
    800064b0:	f60080e7          	jalr	-160(ra) # 8000140c <sem_signal>

    return ret;
}
    800064b4:	00090513          	mv	a0,s2
    800064b8:	01813083          	ld	ra,24(sp)
    800064bc:	01013403          	ld	s0,16(sp)
    800064c0:	00813483          	ld	s1,8(sp)
    800064c4:	00013903          	ld	s2,0(sp)
    800064c8:	02010113          	addi	sp,sp,32
    800064cc:	00008067          	ret

00000000800064d0 <start>:
    800064d0:	ff010113          	addi	sp,sp,-16
    800064d4:	00813423          	sd	s0,8(sp)
    800064d8:	01010413          	addi	s0,sp,16
    800064dc:	300027f3          	csrr	a5,mstatus
    800064e0:	ffffe737          	lui	a4,0xffffe
    800064e4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19bf>
    800064e8:	00e7f7b3          	and	a5,a5,a4
    800064ec:	00001737          	lui	a4,0x1
    800064f0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064f4:	00e7e7b3          	or	a5,a5,a4
    800064f8:	30079073          	csrw	mstatus,a5
    800064fc:	00000797          	auipc	a5,0x0
    80006500:	16078793          	addi	a5,a5,352 # 8000665c <system_main>
    80006504:	34179073          	csrw	mepc,a5
    80006508:	00000793          	li	a5,0
    8000650c:	18079073          	csrw	satp,a5
    80006510:	000107b7          	lui	a5,0x10
    80006514:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006518:	30279073          	csrw	medeleg,a5
    8000651c:	30379073          	csrw	mideleg,a5
    80006520:	104027f3          	csrr	a5,sie
    80006524:	2227e793          	ori	a5,a5,546
    80006528:	10479073          	csrw	sie,a5
    8000652c:	fff00793          	li	a5,-1
    80006530:	00a7d793          	srli	a5,a5,0xa
    80006534:	3b079073          	csrw	pmpaddr0,a5
    80006538:	00f00793          	li	a5,15
    8000653c:	3a079073          	csrw	pmpcfg0,a5
    80006540:	f14027f3          	csrr	a5,mhartid
    80006544:	0200c737          	lui	a4,0x200c
    80006548:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000654c:	0007869b          	sext.w	a3,a5
    80006550:	00269713          	slli	a4,a3,0x2
    80006554:	000f4637          	lui	a2,0xf4
    80006558:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000655c:	00d70733          	add	a4,a4,a3
    80006560:	0037979b          	slliw	a5,a5,0x3
    80006564:	020046b7          	lui	a3,0x2004
    80006568:	00d787b3          	add	a5,a5,a3
    8000656c:	00c585b3          	add	a1,a1,a2
    80006570:	00371693          	slli	a3,a4,0x3
    80006574:	00005717          	auipc	a4,0x5
    80006578:	66c70713          	addi	a4,a4,1644 # 8000bbe0 <timer_scratch>
    8000657c:	00b7b023          	sd	a1,0(a5)
    80006580:	00d70733          	add	a4,a4,a3
    80006584:	00f73c23          	sd	a5,24(a4)
    80006588:	02c73023          	sd	a2,32(a4)
    8000658c:	34071073          	csrw	mscratch,a4
    80006590:	00000797          	auipc	a5,0x0
    80006594:	6e078793          	addi	a5,a5,1760 # 80006c70 <timervec>
    80006598:	30579073          	csrw	mtvec,a5
    8000659c:	300027f3          	csrr	a5,mstatus
    800065a0:	0087e793          	ori	a5,a5,8
    800065a4:	30079073          	csrw	mstatus,a5
    800065a8:	304027f3          	csrr	a5,mie
    800065ac:	0807e793          	ori	a5,a5,128
    800065b0:	30479073          	csrw	mie,a5
    800065b4:	f14027f3          	csrr	a5,mhartid
    800065b8:	0007879b          	sext.w	a5,a5
    800065bc:	00078213          	mv	tp,a5
    800065c0:	30200073          	mret
    800065c4:	00813403          	ld	s0,8(sp)
    800065c8:	01010113          	addi	sp,sp,16
    800065cc:	00008067          	ret

00000000800065d0 <timerinit>:
    800065d0:	ff010113          	addi	sp,sp,-16
    800065d4:	00813423          	sd	s0,8(sp)
    800065d8:	01010413          	addi	s0,sp,16
    800065dc:	f14027f3          	csrr	a5,mhartid
    800065e0:	0200c737          	lui	a4,0x200c
    800065e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065e8:	0007869b          	sext.w	a3,a5
    800065ec:	00269713          	slli	a4,a3,0x2
    800065f0:	000f4637          	lui	a2,0xf4
    800065f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065f8:	00d70733          	add	a4,a4,a3
    800065fc:	0037979b          	slliw	a5,a5,0x3
    80006600:	020046b7          	lui	a3,0x2004
    80006604:	00d787b3          	add	a5,a5,a3
    80006608:	00c585b3          	add	a1,a1,a2
    8000660c:	00371693          	slli	a3,a4,0x3
    80006610:	00005717          	auipc	a4,0x5
    80006614:	5d070713          	addi	a4,a4,1488 # 8000bbe0 <timer_scratch>
    80006618:	00b7b023          	sd	a1,0(a5)
    8000661c:	00d70733          	add	a4,a4,a3
    80006620:	00f73c23          	sd	a5,24(a4)
    80006624:	02c73023          	sd	a2,32(a4)
    80006628:	34071073          	csrw	mscratch,a4
    8000662c:	00000797          	auipc	a5,0x0
    80006630:	64478793          	addi	a5,a5,1604 # 80006c70 <timervec>
    80006634:	30579073          	csrw	mtvec,a5
    80006638:	300027f3          	csrr	a5,mstatus
    8000663c:	0087e793          	ori	a5,a5,8
    80006640:	30079073          	csrw	mstatus,a5
    80006644:	304027f3          	csrr	a5,mie
    80006648:	0807e793          	ori	a5,a5,128
    8000664c:	30479073          	csrw	mie,a5
    80006650:	00813403          	ld	s0,8(sp)
    80006654:	01010113          	addi	sp,sp,16
    80006658:	00008067          	ret

000000008000665c <system_main>:
    8000665c:	fe010113          	addi	sp,sp,-32
    80006660:	00813823          	sd	s0,16(sp)
    80006664:	00913423          	sd	s1,8(sp)
    80006668:	00113c23          	sd	ra,24(sp)
    8000666c:	02010413          	addi	s0,sp,32
    80006670:	00000097          	auipc	ra,0x0
    80006674:	0c4080e7          	jalr	196(ra) # 80006734 <cpuid>
    80006678:	00005497          	auipc	s1,0x5
    8000667c:	45848493          	addi	s1,s1,1112 # 8000bad0 <started>
    80006680:	02050263          	beqz	a0,800066a4 <system_main+0x48>
    80006684:	0004a783          	lw	a5,0(s1)
    80006688:	0007879b          	sext.w	a5,a5
    8000668c:	fe078ce3          	beqz	a5,80006684 <system_main+0x28>
    80006690:	0ff0000f          	fence
    80006694:	00003517          	auipc	a0,0x3
    80006698:	eec50513          	addi	a0,a0,-276 # 80009580 <_ZL6digits+0x70>
    8000669c:	00001097          	auipc	ra,0x1
    800066a0:	a70080e7          	jalr	-1424(ra) # 8000710c <panic>
    800066a4:	00001097          	auipc	ra,0x1
    800066a8:	9c4080e7          	jalr	-1596(ra) # 80007068 <consoleinit>
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	150080e7          	jalr	336(ra) # 800077fc <printfinit>
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	a4c50513          	addi	a0,a0,-1460 # 80009100 <CONSOLE_STATUS+0xf0>
    800066bc:	00001097          	auipc	ra,0x1
    800066c0:	aac080e7          	jalr	-1364(ra) # 80007168 <__printf>
    800066c4:	00003517          	auipc	a0,0x3
    800066c8:	e8c50513          	addi	a0,a0,-372 # 80009550 <_ZL6digits+0x40>
    800066cc:	00001097          	auipc	ra,0x1
    800066d0:	a9c080e7          	jalr	-1380(ra) # 80007168 <__printf>
    800066d4:	00003517          	auipc	a0,0x3
    800066d8:	a2c50513          	addi	a0,a0,-1492 # 80009100 <CONSOLE_STATUS+0xf0>
    800066dc:	00001097          	auipc	ra,0x1
    800066e0:	a8c080e7          	jalr	-1396(ra) # 80007168 <__printf>
    800066e4:	00001097          	auipc	ra,0x1
    800066e8:	4a4080e7          	jalr	1188(ra) # 80007b88 <kinit>
    800066ec:	00000097          	auipc	ra,0x0
    800066f0:	148080e7          	jalr	328(ra) # 80006834 <trapinit>
    800066f4:	00000097          	auipc	ra,0x0
    800066f8:	16c080e7          	jalr	364(ra) # 80006860 <trapinithart>
    800066fc:	00000097          	auipc	ra,0x0
    80006700:	5b4080e7          	jalr	1460(ra) # 80006cb0 <plicinit>
    80006704:	00000097          	auipc	ra,0x0
    80006708:	5d4080e7          	jalr	1492(ra) # 80006cd8 <plicinithart>
    8000670c:	00000097          	auipc	ra,0x0
    80006710:	078080e7          	jalr	120(ra) # 80006784 <userinit>
    80006714:	0ff0000f          	fence
    80006718:	00100793          	li	a5,1
    8000671c:	00003517          	auipc	a0,0x3
    80006720:	e4c50513          	addi	a0,a0,-436 # 80009568 <_ZL6digits+0x58>
    80006724:	00f4a023          	sw	a5,0(s1)
    80006728:	00001097          	auipc	ra,0x1
    8000672c:	a40080e7          	jalr	-1472(ra) # 80007168 <__printf>
    80006730:	0000006f          	j	80006730 <system_main+0xd4>

0000000080006734 <cpuid>:
    80006734:	ff010113          	addi	sp,sp,-16
    80006738:	00813423          	sd	s0,8(sp)
    8000673c:	01010413          	addi	s0,sp,16
    80006740:	00020513          	mv	a0,tp
    80006744:	00813403          	ld	s0,8(sp)
    80006748:	0005051b          	sext.w	a0,a0
    8000674c:	01010113          	addi	sp,sp,16
    80006750:	00008067          	ret

0000000080006754 <mycpu>:
    80006754:	ff010113          	addi	sp,sp,-16
    80006758:	00813423          	sd	s0,8(sp)
    8000675c:	01010413          	addi	s0,sp,16
    80006760:	00020793          	mv	a5,tp
    80006764:	00813403          	ld	s0,8(sp)
    80006768:	0007879b          	sext.w	a5,a5
    8000676c:	00779793          	slli	a5,a5,0x7
    80006770:	00006517          	auipc	a0,0x6
    80006774:	4a050513          	addi	a0,a0,1184 # 8000cc10 <cpus>
    80006778:	00f50533          	add	a0,a0,a5
    8000677c:	01010113          	addi	sp,sp,16
    80006780:	00008067          	ret

0000000080006784 <userinit>:
    80006784:	ff010113          	addi	sp,sp,-16
    80006788:	00813423          	sd	s0,8(sp)
    8000678c:	01010413          	addi	s0,sp,16
    80006790:	00813403          	ld	s0,8(sp)
    80006794:	01010113          	addi	sp,sp,16
    80006798:	ffffd317          	auipc	t1,0xffffd
    8000679c:	dd030067          	jr	-560(t1) # 80003568 <main>

00000000800067a0 <either_copyout>:
    800067a0:	ff010113          	addi	sp,sp,-16
    800067a4:	00813023          	sd	s0,0(sp)
    800067a8:	00113423          	sd	ra,8(sp)
    800067ac:	01010413          	addi	s0,sp,16
    800067b0:	02051663          	bnez	a0,800067dc <either_copyout+0x3c>
    800067b4:	00058513          	mv	a0,a1
    800067b8:	00060593          	mv	a1,a2
    800067bc:	0006861b          	sext.w	a2,a3
    800067c0:	00002097          	auipc	ra,0x2
    800067c4:	c54080e7          	jalr	-940(ra) # 80008414 <__memmove>
    800067c8:	00813083          	ld	ra,8(sp)
    800067cc:	00013403          	ld	s0,0(sp)
    800067d0:	00000513          	li	a0,0
    800067d4:	01010113          	addi	sp,sp,16
    800067d8:	00008067          	ret
    800067dc:	00003517          	auipc	a0,0x3
    800067e0:	dcc50513          	addi	a0,a0,-564 # 800095a8 <_ZL6digits+0x98>
    800067e4:	00001097          	auipc	ra,0x1
    800067e8:	928080e7          	jalr	-1752(ra) # 8000710c <panic>

00000000800067ec <either_copyin>:
    800067ec:	ff010113          	addi	sp,sp,-16
    800067f0:	00813023          	sd	s0,0(sp)
    800067f4:	00113423          	sd	ra,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	02059463          	bnez	a1,80006824 <either_copyin+0x38>
    80006800:	00060593          	mv	a1,a2
    80006804:	0006861b          	sext.w	a2,a3
    80006808:	00002097          	auipc	ra,0x2
    8000680c:	c0c080e7          	jalr	-1012(ra) # 80008414 <__memmove>
    80006810:	00813083          	ld	ra,8(sp)
    80006814:	00013403          	ld	s0,0(sp)
    80006818:	00000513          	li	a0,0
    8000681c:	01010113          	addi	sp,sp,16
    80006820:	00008067          	ret
    80006824:	00003517          	auipc	a0,0x3
    80006828:	dac50513          	addi	a0,a0,-596 # 800095d0 <_ZL6digits+0xc0>
    8000682c:	00001097          	auipc	ra,0x1
    80006830:	8e0080e7          	jalr	-1824(ra) # 8000710c <panic>

0000000080006834 <trapinit>:
    80006834:	ff010113          	addi	sp,sp,-16
    80006838:	00813423          	sd	s0,8(sp)
    8000683c:	01010413          	addi	s0,sp,16
    80006840:	00813403          	ld	s0,8(sp)
    80006844:	00003597          	auipc	a1,0x3
    80006848:	db458593          	addi	a1,a1,-588 # 800095f8 <_ZL6digits+0xe8>
    8000684c:	00006517          	auipc	a0,0x6
    80006850:	44450513          	addi	a0,a0,1092 # 8000cc90 <tickslock>
    80006854:	01010113          	addi	sp,sp,16
    80006858:	00001317          	auipc	t1,0x1
    8000685c:	5c030067          	jr	1472(t1) # 80007e18 <initlock>

0000000080006860 <trapinithart>:
    80006860:	ff010113          	addi	sp,sp,-16
    80006864:	00813423          	sd	s0,8(sp)
    80006868:	01010413          	addi	s0,sp,16
    8000686c:	00000797          	auipc	a5,0x0
    80006870:	2f478793          	addi	a5,a5,756 # 80006b60 <kernelvec>
    80006874:	10579073          	csrw	stvec,a5
    80006878:	00813403          	ld	s0,8(sp)
    8000687c:	01010113          	addi	sp,sp,16
    80006880:	00008067          	ret

0000000080006884 <usertrap>:
    80006884:	ff010113          	addi	sp,sp,-16
    80006888:	00813423          	sd	s0,8(sp)
    8000688c:	01010413          	addi	s0,sp,16
    80006890:	00813403          	ld	s0,8(sp)
    80006894:	01010113          	addi	sp,sp,16
    80006898:	00008067          	ret

000000008000689c <usertrapret>:
    8000689c:	ff010113          	addi	sp,sp,-16
    800068a0:	00813423          	sd	s0,8(sp)
    800068a4:	01010413          	addi	s0,sp,16
    800068a8:	00813403          	ld	s0,8(sp)
    800068ac:	01010113          	addi	sp,sp,16
    800068b0:	00008067          	ret

00000000800068b4 <kerneltrap>:
    800068b4:	fe010113          	addi	sp,sp,-32
    800068b8:	00813823          	sd	s0,16(sp)
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00913423          	sd	s1,8(sp)
    800068c4:	02010413          	addi	s0,sp,32
    800068c8:	142025f3          	csrr	a1,scause
    800068cc:	100027f3          	csrr	a5,sstatus
    800068d0:	0027f793          	andi	a5,a5,2
    800068d4:	10079c63          	bnez	a5,800069ec <kerneltrap+0x138>
    800068d8:	142027f3          	csrr	a5,scause
    800068dc:	0207ce63          	bltz	a5,80006918 <kerneltrap+0x64>
    800068e0:	00003517          	auipc	a0,0x3
    800068e4:	d6050513          	addi	a0,a0,-672 # 80009640 <_ZL6digits+0x130>
    800068e8:	00001097          	auipc	ra,0x1
    800068ec:	880080e7          	jalr	-1920(ra) # 80007168 <__printf>
    800068f0:	141025f3          	csrr	a1,sepc
    800068f4:	14302673          	csrr	a2,stval
    800068f8:	00003517          	auipc	a0,0x3
    800068fc:	d5850513          	addi	a0,a0,-680 # 80009650 <_ZL6digits+0x140>
    80006900:	00001097          	auipc	ra,0x1
    80006904:	868080e7          	jalr	-1944(ra) # 80007168 <__printf>
    80006908:	00003517          	auipc	a0,0x3
    8000690c:	d6050513          	addi	a0,a0,-672 # 80009668 <_ZL6digits+0x158>
    80006910:	00000097          	auipc	ra,0x0
    80006914:	7fc080e7          	jalr	2044(ra) # 8000710c <panic>
    80006918:	0ff7f713          	andi	a4,a5,255
    8000691c:	00900693          	li	a3,9
    80006920:	04d70063          	beq	a4,a3,80006960 <kerneltrap+0xac>
    80006924:	fff00713          	li	a4,-1
    80006928:	03f71713          	slli	a4,a4,0x3f
    8000692c:	00170713          	addi	a4,a4,1
    80006930:	fae798e3          	bne	a5,a4,800068e0 <kerneltrap+0x2c>
    80006934:	00000097          	auipc	ra,0x0
    80006938:	e00080e7          	jalr	-512(ra) # 80006734 <cpuid>
    8000693c:	06050663          	beqz	a0,800069a8 <kerneltrap+0xf4>
    80006940:	144027f3          	csrr	a5,sip
    80006944:	ffd7f793          	andi	a5,a5,-3
    80006948:	14479073          	csrw	sip,a5
    8000694c:	01813083          	ld	ra,24(sp)
    80006950:	01013403          	ld	s0,16(sp)
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	02010113          	addi	sp,sp,32
    8000695c:	00008067          	ret
    80006960:	00000097          	auipc	ra,0x0
    80006964:	3c4080e7          	jalr	964(ra) # 80006d24 <plic_claim>
    80006968:	00a00793          	li	a5,10
    8000696c:	00050493          	mv	s1,a0
    80006970:	06f50863          	beq	a0,a5,800069e0 <kerneltrap+0x12c>
    80006974:	fc050ce3          	beqz	a0,8000694c <kerneltrap+0x98>
    80006978:	00050593          	mv	a1,a0
    8000697c:	00003517          	auipc	a0,0x3
    80006980:	ca450513          	addi	a0,a0,-860 # 80009620 <_ZL6digits+0x110>
    80006984:	00000097          	auipc	ra,0x0
    80006988:	7e4080e7          	jalr	2020(ra) # 80007168 <__printf>
    8000698c:	01013403          	ld	s0,16(sp)
    80006990:	01813083          	ld	ra,24(sp)
    80006994:	00048513          	mv	a0,s1
    80006998:	00813483          	ld	s1,8(sp)
    8000699c:	02010113          	addi	sp,sp,32
    800069a0:	00000317          	auipc	t1,0x0
    800069a4:	3bc30067          	jr	956(t1) # 80006d5c <plic_complete>
    800069a8:	00006517          	auipc	a0,0x6
    800069ac:	2e850513          	addi	a0,a0,744 # 8000cc90 <tickslock>
    800069b0:	00001097          	auipc	ra,0x1
    800069b4:	48c080e7          	jalr	1164(ra) # 80007e3c <acquire>
    800069b8:	00005717          	auipc	a4,0x5
    800069bc:	11c70713          	addi	a4,a4,284 # 8000bad4 <ticks>
    800069c0:	00072783          	lw	a5,0(a4)
    800069c4:	00006517          	auipc	a0,0x6
    800069c8:	2cc50513          	addi	a0,a0,716 # 8000cc90 <tickslock>
    800069cc:	0017879b          	addiw	a5,a5,1
    800069d0:	00f72023          	sw	a5,0(a4)
    800069d4:	00001097          	auipc	ra,0x1
    800069d8:	534080e7          	jalr	1332(ra) # 80007f08 <release>
    800069dc:	f65ff06f          	j	80006940 <kerneltrap+0x8c>
    800069e0:	00001097          	auipc	ra,0x1
    800069e4:	090080e7          	jalr	144(ra) # 80007a70 <uartintr>
    800069e8:	fa5ff06f          	j	8000698c <kerneltrap+0xd8>
    800069ec:	00003517          	auipc	a0,0x3
    800069f0:	c1450513          	addi	a0,a0,-1004 # 80009600 <_ZL6digits+0xf0>
    800069f4:	00000097          	auipc	ra,0x0
    800069f8:	718080e7          	jalr	1816(ra) # 8000710c <panic>

00000000800069fc <clockintr>:
    800069fc:	fe010113          	addi	sp,sp,-32
    80006a00:	00813823          	sd	s0,16(sp)
    80006a04:	00913423          	sd	s1,8(sp)
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	02010413          	addi	s0,sp,32
    80006a10:	00006497          	auipc	s1,0x6
    80006a14:	28048493          	addi	s1,s1,640 # 8000cc90 <tickslock>
    80006a18:	00048513          	mv	a0,s1
    80006a1c:	00001097          	auipc	ra,0x1
    80006a20:	420080e7          	jalr	1056(ra) # 80007e3c <acquire>
    80006a24:	00005717          	auipc	a4,0x5
    80006a28:	0b070713          	addi	a4,a4,176 # 8000bad4 <ticks>
    80006a2c:	00072783          	lw	a5,0(a4)
    80006a30:	01013403          	ld	s0,16(sp)
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	00048513          	mv	a0,s1
    80006a3c:	0017879b          	addiw	a5,a5,1
    80006a40:	00813483          	ld	s1,8(sp)
    80006a44:	00f72023          	sw	a5,0(a4)
    80006a48:	02010113          	addi	sp,sp,32
    80006a4c:	00001317          	auipc	t1,0x1
    80006a50:	4bc30067          	jr	1212(t1) # 80007f08 <release>

0000000080006a54 <devintr>:
    80006a54:	142027f3          	csrr	a5,scause
    80006a58:	00000513          	li	a0,0
    80006a5c:	0007c463          	bltz	a5,80006a64 <devintr+0x10>
    80006a60:	00008067          	ret
    80006a64:	fe010113          	addi	sp,sp,-32
    80006a68:	00813823          	sd	s0,16(sp)
    80006a6c:	00113c23          	sd	ra,24(sp)
    80006a70:	00913423          	sd	s1,8(sp)
    80006a74:	02010413          	addi	s0,sp,32
    80006a78:	0ff7f713          	andi	a4,a5,255
    80006a7c:	00900693          	li	a3,9
    80006a80:	04d70c63          	beq	a4,a3,80006ad8 <devintr+0x84>
    80006a84:	fff00713          	li	a4,-1
    80006a88:	03f71713          	slli	a4,a4,0x3f
    80006a8c:	00170713          	addi	a4,a4,1
    80006a90:	00e78c63          	beq	a5,a4,80006aa8 <devintr+0x54>
    80006a94:	01813083          	ld	ra,24(sp)
    80006a98:	01013403          	ld	s0,16(sp)
    80006a9c:	00813483          	ld	s1,8(sp)
    80006aa0:	02010113          	addi	sp,sp,32
    80006aa4:	00008067          	ret
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	c8c080e7          	jalr	-884(ra) # 80006734 <cpuid>
    80006ab0:	06050663          	beqz	a0,80006b1c <devintr+0xc8>
    80006ab4:	144027f3          	csrr	a5,sip
    80006ab8:	ffd7f793          	andi	a5,a5,-3
    80006abc:	14479073          	csrw	sip,a5
    80006ac0:	01813083          	ld	ra,24(sp)
    80006ac4:	01013403          	ld	s0,16(sp)
    80006ac8:	00813483          	ld	s1,8(sp)
    80006acc:	00200513          	li	a0,2
    80006ad0:	02010113          	addi	sp,sp,32
    80006ad4:	00008067          	ret
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	24c080e7          	jalr	588(ra) # 80006d24 <plic_claim>
    80006ae0:	00a00793          	li	a5,10
    80006ae4:	00050493          	mv	s1,a0
    80006ae8:	06f50663          	beq	a0,a5,80006b54 <devintr+0x100>
    80006aec:	00100513          	li	a0,1
    80006af0:	fa0482e3          	beqz	s1,80006a94 <devintr+0x40>
    80006af4:	00048593          	mv	a1,s1
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	b2850513          	addi	a0,a0,-1240 # 80009620 <_ZL6digits+0x110>
    80006b00:	00000097          	auipc	ra,0x0
    80006b04:	668080e7          	jalr	1640(ra) # 80007168 <__printf>
    80006b08:	00048513          	mv	a0,s1
    80006b0c:	00000097          	auipc	ra,0x0
    80006b10:	250080e7          	jalr	592(ra) # 80006d5c <plic_complete>
    80006b14:	00100513          	li	a0,1
    80006b18:	f7dff06f          	j	80006a94 <devintr+0x40>
    80006b1c:	00006517          	auipc	a0,0x6
    80006b20:	17450513          	addi	a0,a0,372 # 8000cc90 <tickslock>
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	318080e7          	jalr	792(ra) # 80007e3c <acquire>
    80006b2c:	00005717          	auipc	a4,0x5
    80006b30:	fa870713          	addi	a4,a4,-88 # 8000bad4 <ticks>
    80006b34:	00072783          	lw	a5,0(a4)
    80006b38:	00006517          	auipc	a0,0x6
    80006b3c:	15850513          	addi	a0,a0,344 # 8000cc90 <tickslock>
    80006b40:	0017879b          	addiw	a5,a5,1
    80006b44:	00f72023          	sw	a5,0(a4)
    80006b48:	00001097          	auipc	ra,0x1
    80006b4c:	3c0080e7          	jalr	960(ra) # 80007f08 <release>
    80006b50:	f65ff06f          	j	80006ab4 <devintr+0x60>
    80006b54:	00001097          	auipc	ra,0x1
    80006b58:	f1c080e7          	jalr	-228(ra) # 80007a70 <uartintr>
    80006b5c:	fadff06f          	j	80006b08 <devintr+0xb4>

0000000080006b60 <kernelvec>:
    80006b60:	f0010113          	addi	sp,sp,-256
    80006b64:	00113023          	sd	ra,0(sp)
    80006b68:	00213423          	sd	sp,8(sp)
    80006b6c:	00313823          	sd	gp,16(sp)
    80006b70:	00413c23          	sd	tp,24(sp)
    80006b74:	02513023          	sd	t0,32(sp)
    80006b78:	02613423          	sd	t1,40(sp)
    80006b7c:	02713823          	sd	t2,48(sp)
    80006b80:	02813c23          	sd	s0,56(sp)
    80006b84:	04913023          	sd	s1,64(sp)
    80006b88:	04a13423          	sd	a0,72(sp)
    80006b8c:	04b13823          	sd	a1,80(sp)
    80006b90:	04c13c23          	sd	a2,88(sp)
    80006b94:	06d13023          	sd	a3,96(sp)
    80006b98:	06e13423          	sd	a4,104(sp)
    80006b9c:	06f13823          	sd	a5,112(sp)
    80006ba0:	07013c23          	sd	a6,120(sp)
    80006ba4:	09113023          	sd	a7,128(sp)
    80006ba8:	09213423          	sd	s2,136(sp)
    80006bac:	09313823          	sd	s3,144(sp)
    80006bb0:	09413c23          	sd	s4,152(sp)
    80006bb4:	0b513023          	sd	s5,160(sp)
    80006bb8:	0b613423          	sd	s6,168(sp)
    80006bbc:	0b713823          	sd	s7,176(sp)
    80006bc0:	0b813c23          	sd	s8,184(sp)
    80006bc4:	0d913023          	sd	s9,192(sp)
    80006bc8:	0da13423          	sd	s10,200(sp)
    80006bcc:	0db13823          	sd	s11,208(sp)
    80006bd0:	0dc13c23          	sd	t3,216(sp)
    80006bd4:	0fd13023          	sd	t4,224(sp)
    80006bd8:	0fe13423          	sd	t5,232(sp)
    80006bdc:	0ff13823          	sd	t6,240(sp)
    80006be0:	cd5ff0ef          	jal	ra,800068b4 <kerneltrap>
    80006be4:	00013083          	ld	ra,0(sp)
    80006be8:	00813103          	ld	sp,8(sp)
    80006bec:	01013183          	ld	gp,16(sp)
    80006bf0:	02013283          	ld	t0,32(sp)
    80006bf4:	02813303          	ld	t1,40(sp)
    80006bf8:	03013383          	ld	t2,48(sp)
    80006bfc:	03813403          	ld	s0,56(sp)
    80006c00:	04013483          	ld	s1,64(sp)
    80006c04:	04813503          	ld	a0,72(sp)
    80006c08:	05013583          	ld	a1,80(sp)
    80006c0c:	05813603          	ld	a2,88(sp)
    80006c10:	06013683          	ld	a3,96(sp)
    80006c14:	06813703          	ld	a4,104(sp)
    80006c18:	07013783          	ld	a5,112(sp)
    80006c1c:	07813803          	ld	a6,120(sp)
    80006c20:	08013883          	ld	a7,128(sp)
    80006c24:	08813903          	ld	s2,136(sp)
    80006c28:	09013983          	ld	s3,144(sp)
    80006c2c:	09813a03          	ld	s4,152(sp)
    80006c30:	0a013a83          	ld	s5,160(sp)
    80006c34:	0a813b03          	ld	s6,168(sp)
    80006c38:	0b013b83          	ld	s7,176(sp)
    80006c3c:	0b813c03          	ld	s8,184(sp)
    80006c40:	0c013c83          	ld	s9,192(sp)
    80006c44:	0c813d03          	ld	s10,200(sp)
    80006c48:	0d013d83          	ld	s11,208(sp)
    80006c4c:	0d813e03          	ld	t3,216(sp)
    80006c50:	0e013e83          	ld	t4,224(sp)
    80006c54:	0e813f03          	ld	t5,232(sp)
    80006c58:	0f013f83          	ld	t6,240(sp)
    80006c5c:	10010113          	addi	sp,sp,256
    80006c60:	10200073          	sret
    80006c64:	00000013          	nop
    80006c68:	00000013          	nop
    80006c6c:	00000013          	nop

0000000080006c70 <timervec>:
    80006c70:	34051573          	csrrw	a0,mscratch,a0
    80006c74:	00b53023          	sd	a1,0(a0)
    80006c78:	00c53423          	sd	a2,8(a0)
    80006c7c:	00d53823          	sd	a3,16(a0)
    80006c80:	01853583          	ld	a1,24(a0)
    80006c84:	02053603          	ld	a2,32(a0)
    80006c88:	0005b683          	ld	a3,0(a1)
    80006c8c:	00c686b3          	add	a3,a3,a2
    80006c90:	00d5b023          	sd	a3,0(a1)
    80006c94:	00200593          	li	a1,2
    80006c98:	14459073          	csrw	sip,a1
    80006c9c:	01053683          	ld	a3,16(a0)
    80006ca0:	00853603          	ld	a2,8(a0)
    80006ca4:	00053583          	ld	a1,0(a0)
    80006ca8:	34051573          	csrrw	a0,mscratch,a0
    80006cac:	30200073          	mret

0000000080006cb0 <plicinit>:
    80006cb0:	ff010113          	addi	sp,sp,-16
    80006cb4:	00813423          	sd	s0,8(sp)
    80006cb8:	01010413          	addi	s0,sp,16
    80006cbc:	00813403          	ld	s0,8(sp)
    80006cc0:	0c0007b7          	lui	a5,0xc000
    80006cc4:	00100713          	li	a4,1
    80006cc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006ccc:	00e7a223          	sw	a4,4(a5)
    80006cd0:	01010113          	addi	sp,sp,16
    80006cd4:	00008067          	ret

0000000080006cd8 <plicinithart>:
    80006cd8:	ff010113          	addi	sp,sp,-16
    80006cdc:	00813023          	sd	s0,0(sp)
    80006ce0:	00113423          	sd	ra,8(sp)
    80006ce4:	01010413          	addi	s0,sp,16
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	a4c080e7          	jalr	-1460(ra) # 80006734 <cpuid>
    80006cf0:	0085171b          	slliw	a4,a0,0x8
    80006cf4:	0c0027b7          	lui	a5,0xc002
    80006cf8:	00e787b3          	add	a5,a5,a4
    80006cfc:	40200713          	li	a4,1026
    80006d00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006d04:	00813083          	ld	ra,8(sp)
    80006d08:	00013403          	ld	s0,0(sp)
    80006d0c:	00d5151b          	slliw	a0,a0,0xd
    80006d10:	0c2017b7          	lui	a5,0xc201
    80006d14:	00a78533          	add	a0,a5,a0
    80006d18:	00052023          	sw	zero,0(a0)
    80006d1c:	01010113          	addi	sp,sp,16
    80006d20:	00008067          	ret

0000000080006d24 <plic_claim>:
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00813023          	sd	s0,0(sp)
    80006d2c:	00113423          	sd	ra,8(sp)
    80006d30:	01010413          	addi	s0,sp,16
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	a00080e7          	jalr	-1536(ra) # 80006734 <cpuid>
    80006d3c:	00813083          	ld	ra,8(sp)
    80006d40:	00013403          	ld	s0,0(sp)
    80006d44:	00d5151b          	slliw	a0,a0,0xd
    80006d48:	0c2017b7          	lui	a5,0xc201
    80006d4c:	00a78533          	add	a0,a5,a0
    80006d50:	00452503          	lw	a0,4(a0)
    80006d54:	01010113          	addi	sp,sp,16
    80006d58:	00008067          	ret

0000000080006d5c <plic_complete>:
    80006d5c:	fe010113          	addi	sp,sp,-32
    80006d60:	00813823          	sd	s0,16(sp)
    80006d64:	00913423          	sd	s1,8(sp)
    80006d68:	00113c23          	sd	ra,24(sp)
    80006d6c:	02010413          	addi	s0,sp,32
    80006d70:	00050493          	mv	s1,a0
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	9c0080e7          	jalr	-1600(ra) # 80006734 <cpuid>
    80006d7c:	01813083          	ld	ra,24(sp)
    80006d80:	01013403          	ld	s0,16(sp)
    80006d84:	00d5179b          	slliw	a5,a0,0xd
    80006d88:	0c201737          	lui	a4,0xc201
    80006d8c:	00f707b3          	add	a5,a4,a5
    80006d90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d94:	00813483          	ld	s1,8(sp)
    80006d98:	02010113          	addi	sp,sp,32
    80006d9c:	00008067          	ret

0000000080006da0 <consolewrite>:
    80006da0:	fb010113          	addi	sp,sp,-80
    80006da4:	04813023          	sd	s0,64(sp)
    80006da8:	04113423          	sd	ra,72(sp)
    80006dac:	02913c23          	sd	s1,56(sp)
    80006db0:	03213823          	sd	s2,48(sp)
    80006db4:	03313423          	sd	s3,40(sp)
    80006db8:	03413023          	sd	s4,32(sp)
    80006dbc:	01513c23          	sd	s5,24(sp)
    80006dc0:	05010413          	addi	s0,sp,80
    80006dc4:	06c05c63          	blez	a2,80006e3c <consolewrite+0x9c>
    80006dc8:	00060993          	mv	s3,a2
    80006dcc:	00050a13          	mv	s4,a0
    80006dd0:	00058493          	mv	s1,a1
    80006dd4:	00000913          	li	s2,0
    80006dd8:	fff00a93          	li	s5,-1
    80006ddc:	01c0006f          	j	80006df8 <consolewrite+0x58>
    80006de0:	fbf44503          	lbu	a0,-65(s0)
    80006de4:	0019091b          	addiw	s2,s2,1
    80006de8:	00148493          	addi	s1,s1,1
    80006dec:	00001097          	auipc	ra,0x1
    80006df0:	a9c080e7          	jalr	-1380(ra) # 80007888 <uartputc>
    80006df4:	03298063          	beq	s3,s2,80006e14 <consolewrite+0x74>
    80006df8:	00048613          	mv	a2,s1
    80006dfc:	00100693          	li	a3,1
    80006e00:	000a0593          	mv	a1,s4
    80006e04:	fbf40513          	addi	a0,s0,-65
    80006e08:	00000097          	auipc	ra,0x0
    80006e0c:	9e4080e7          	jalr	-1564(ra) # 800067ec <either_copyin>
    80006e10:	fd5518e3          	bne	a0,s5,80006de0 <consolewrite+0x40>
    80006e14:	04813083          	ld	ra,72(sp)
    80006e18:	04013403          	ld	s0,64(sp)
    80006e1c:	03813483          	ld	s1,56(sp)
    80006e20:	02813983          	ld	s3,40(sp)
    80006e24:	02013a03          	ld	s4,32(sp)
    80006e28:	01813a83          	ld	s5,24(sp)
    80006e2c:	00090513          	mv	a0,s2
    80006e30:	03013903          	ld	s2,48(sp)
    80006e34:	05010113          	addi	sp,sp,80
    80006e38:	00008067          	ret
    80006e3c:	00000913          	li	s2,0
    80006e40:	fd5ff06f          	j	80006e14 <consolewrite+0x74>

0000000080006e44 <consoleread>:
    80006e44:	f9010113          	addi	sp,sp,-112
    80006e48:	06813023          	sd	s0,96(sp)
    80006e4c:	04913c23          	sd	s1,88(sp)
    80006e50:	05213823          	sd	s2,80(sp)
    80006e54:	05313423          	sd	s3,72(sp)
    80006e58:	05413023          	sd	s4,64(sp)
    80006e5c:	03513c23          	sd	s5,56(sp)
    80006e60:	03613823          	sd	s6,48(sp)
    80006e64:	03713423          	sd	s7,40(sp)
    80006e68:	03813023          	sd	s8,32(sp)
    80006e6c:	06113423          	sd	ra,104(sp)
    80006e70:	01913c23          	sd	s9,24(sp)
    80006e74:	07010413          	addi	s0,sp,112
    80006e78:	00060b93          	mv	s7,a2
    80006e7c:	00050913          	mv	s2,a0
    80006e80:	00058c13          	mv	s8,a1
    80006e84:	00060b1b          	sext.w	s6,a2
    80006e88:	00006497          	auipc	s1,0x6
    80006e8c:	e3048493          	addi	s1,s1,-464 # 8000ccb8 <cons>
    80006e90:	00400993          	li	s3,4
    80006e94:	fff00a13          	li	s4,-1
    80006e98:	00a00a93          	li	s5,10
    80006e9c:	05705e63          	blez	s7,80006ef8 <consoleread+0xb4>
    80006ea0:	09c4a703          	lw	a4,156(s1)
    80006ea4:	0984a783          	lw	a5,152(s1)
    80006ea8:	0007071b          	sext.w	a4,a4
    80006eac:	08e78463          	beq	a5,a4,80006f34 <consoleread+0xf0>
    80006eb0:	07f7f713          	andi	a4,a5,127
    80006eb4:	00e48733          	add	a4,s1,a4
    80006eb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006ebc:	0017869b          	addiw	a3,a5,1
    80006ec0:	08d4ac23          	sw	a3,152(s1)
    80006ec4:	00070c9b          	sext.w	s9,a4
    80006ec8:	0b370663          	beq	a4,s3,80006f74 <consoleread+0x130>
    80006ecc:	00100693          	li	a3,1
    80006ed0:	f9f40613          	addi	a2,s0,-97
    80006ed4:	000c0593          	mv	a1,s8
    80006ed8:	00090513          	mv	a0,s2
    80006edc:	f8e40fa3          	sb	a4,-97(s0)
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	8c0080e7          	jalr	-1856(ra) # 800067a0 <either_copyout>
    80006ee8:	01450863          	beq	a0,s4,80006ef8 <consoleread+0xb4>
    80006eec:	001c0c13          	addi	s8,s8,1
    80006ef0:	fffb8b9b          	addiw	s7,s7,-1
    80006ef4:	fb5c94e3          	bne	s9,s5,80006e9c <consoleread+0x58>
    80006ef8:	000b851b          	sext.w	a0,s7
    80006efc:	06813083          	ld	ra,104(sp)
    80006f00:	06013403          	ld	s0,96(sp)
    80006f04:	05813483          	ld	s1,88(sp)
    80006f08:	05013903          	ld	s2,80(sp)
    80006f0c:	04813983          	ld	s3,72(sp)
    80006f10:	04013a03          	ld	s4,64(sp)
    80006f14:	03813a83          	ld	s5,56(sp)
    80006f18:	02813b83          	ld	s7,40(sp)
    80006f1c:	02013c03          	ld	s8,32(sp)
    80006f20:	01813c83          	ld	s9,24(sp)
    80006f24:	40ab053b          	subw	a0,s6,a0
    80006f28:	03013b03          	ld	s6,48(sp)
    80006f2c:	07010113          	addi	sp,sp,112
    80006f30:	00008067          	ret
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	1d8080e7          	jalr	472(ra) # 8000810c <push_on>
    80006f3c:	0984a703          	lw	a4,152(s1)
    80006f40:	09c4a783          	lw	a5,156(s1)
    80006f44:	0007879b          	sext.w	a5,a5
    80006f48:	fef70ce3          	beq	a4,a5,80006f40 <consoleread+0xfc>
    80006f4c:	00001097          	auipc	ra,0x1
    80006f50:	234080e7          	jalr	564(ra) # 80008180 <pop_on>
    80006f54:	0984a783          	lw	a5,152(s1)
    80006f58:	07f7f713          	andi	a4,a5,127
    80006f5c:	00e48733          	add	a4,s1,a4
    80006f60:	01874703          	lbu	a4,24(a4)
    80006f64:	0017869b          	addiw	a3,a5,1
    80006f68:	08d4ac23          	sw	a3,152(s1)
    80006f6c:	00070c9b          	sext.w	s9,a4
    80006f70:	f5371ee3          	bne	a4,s3,80006ecc <consoleread+0x88>
    80006f74:	000b851b          	sext.w	a0,s7
    80006f78:	f96bf2e3          	bgeu	s7,s6,80006efc <consoleread+0xb8>
    80006f7c:	08f4ac23          	sw	a5,152(s1)
    80006f80:	f7dff06f          	j	80006efc <consoleread+0xb8>

0000000080006f84 <consputc>:
    80006f84:	10000793          	li	a5,256
    80006f88:	00f50663          	beq	a0,a5,80006f94 <consputc+0x10>
    80006f8c:	00001317          	auipc	t1,0x1
    80006f90:	9f430067          	jr	-1548(t1) # 80007980 <uartputc_sync>
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00113423          	sd	ra,8(sp)
    80006f9c:	00813023          	sd	s0,0(sp)
    80006fa0:	01010413          	addi	s0,sp,16
    80006fa4:	00800513          	li	a0,8
    80006fa8:	00001097          	auipc	ra,0x1
    80006fac:	9d8080e7          	jalr	-1576(ra) # 80007980 <uartputc_sync>
    80006fb0:	02000513          	li	a0,32
    80006fb4:	00001097          	auipc	ra,0x1
    80006fb8:	9cc080e7          	jalr	-1588(ra) # 80007980 <uartputc_sync>
    80006fbc:	00013403          	ld	s0,0(sp)
    80006fc0:	00813083          	ld	ra,8(sp)
    80006fc4:	00800513          	li	a0,8
    80006fc8:	01010113          	addi	sp,sp,16
    80006fcc:	00001317          	auipc	t1,0x1
    80006fd0:	9b430067          	jr	-1612(t1) # 80007980 <uartputc_sync>

0000000080006fd4 <consoleintr>:
    80006fd4:	fe010113          	addi	sp,sp,-32
    80006fd8:	00813823          	sd	s0,16(sp)
    80006fdc:	00913423          	sd	s1,8(sp)
    80006fe0:	01213023          	sd	s2,0(sp)
    80006fe4:	00113c23          	sd	ra,24(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00006917          	auipc	s2,0x6
    80006ff0:	ccc90913          	addi	s2,s2,-820 # 8000ccb8 <cons>
    80006ff4:	00050493          	mv	s1,a0
    80006ff8:	00090513          	mv	a0,s2
    80006ffc:	00001097          	auipc	ra,0x1
    80007000:	e40080e7          	jalr	-448(ra) # 80007e3c <acquire>
    80007004:	02048c63          	beqz	s1,8000703c <consoleintr+0x68>
    80007008:	0a092783          	lw	a5,160(s2)
    8000700c:	09892703          	lw	a4,152(s2)
    80007010:	07f00693          	li	a3,127
    80007014:	40e7873b          	subw	a4,a5,a4
    80007018:	02e6e263          	bltu	a3,a4,8000703c <consoleintr+0x68>
    8000701c:	00d00713          	li	a4,13
    80007020:	04e48063          	beq	s1,a4,80007060 <consoleintr+0x8c>
    80007024:	07f7f713          	andi	a4,a5,127
    80007028:	00e90733          	add	a4,s2,a4
    8000702c:	0017879b          	addiw	a5,a5,1
    80007030:	0af92023          	sw	a5,160(s2)
    80007034:	00970c23          	sb	s1,24(a4)
    80007038:	08f92e23          	sw	a5,156(s2)
    8000703c:	01013403          	ld	s0,16(sp)
    80007040:	01813083          	ld	ra,24(sp)
    80007044:	00813483          	ld	s1,8(sp)
    80007048:	00013903          	ld	s2,0(sp)
    8000704c:	00006517          	auipc	a0,0x6
    80007050:	c6c50513          	addi	a0,a0,-916 # 8000ccb8 <cons>
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00001317          	auipc	t1,0x1
    8000705c:	eb030067          	jr	-336(t1) # 80007f08 <release>
    80007060:	00a00493          	li	s1,10
    80007064:	fc1ff06f          	j	80007024 <consoleintr+0x50>

0000000080007068 <consoleinit>:
    80007068:	fe010113          	addi	sp,sp,-32
    8000706c:	00113c23          	sd	ra,24(sp)
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	02010413          	addi	s0,sp,32
    8000707c:	00006497          	auipc	s1,0x6
    80007080:	c3c48493          	addi	s1,s1,-964 # 8000ccb8 <cons>
    80007084:	00048513          	mv	a0,s1
    80007088:	00002597          	auipc	a1,0x2
    8000708c:	5f058593          	addi	a1,a1,1520 # 80009678 <_ZL6digits+0x168>
    80007090:	00001097          	auipc	ra,0x1
    80007094:	d88080e7          	jalr	-632(ra) # 80007e18 <initlock>
    80007098:	00000097          	auipc	ra,0x0
    8000709c:	7ac080e7          	jalr	1964(ra) # 80007844 <uartinit>
    800070a0:	01813083          	ld	ra,24(sp)
    800070a4:	01013403          	ld	s0,16(sp)
    800070a8:	00000797          	auipc	a5,0x0
    800070ac:	d9c78793          	addi	a5,a5,-612 # 80006e44 <consoleread>
    800070b0:	0af4bc23          	sd	a5,184(s1)
    800070b4:	00000797          	auipc	a5,0x0
    800070b8:	cec78793          	addi	a5,a5,-788 # 80006da0 <consolewrite>
    800070bc:	0cf4b023          	sd	a5,192(s1)
    800070c0:	00813483          	ld	s1,8(sp)
    800070c4:	02010113          	addi	sp,sp,32
    800070c8:	00008067          	ret

00000000800070cc <console_read>:
    800070cc:	ff010113          	addi	sp,sp,-16
    800070d0:	00813423          	sd	s0,8(sp)
    800070d4:	01010413          	addi	s0,sp,16
    800070d8:	00813403          	ld	s0,8(sp)
    800070dc:	00006317          	auipc	t1,0x6
    800070e0:	c9433303          	ld	t1,-876(t1) # 8000cd70 <devsw+0x10>
    800070e4:	01010113          	addi	sp,sp,16
    800070e8:	00030067          	jr	t1

00000000800070ec <console_write>:
    800070ec:	ff010113          	addi	sp,sp,-16
    800070f0:	00813423          	sd	s0,8(sp)
    800070f4:	01010413          	addi	s0,sp,16
    800070f8:	00813403          	ld	s0,8(sp)
    800070fc:	00006317          	auipc	t1,0x6
    80007100:	c7c33303          	ld	t1,-900(t1) # 8000cd78 <devsw+0x18>
    80007104:	01010113          	addi	sp,sp,16
    80007108:	00030067          	jr	t1

000000008000710c <panic>:
    8000710c:	fe010113          	addi	sp,sp,-32
    80007110:	00113c23          	sd	ra,24(sp)
    80007114:	00813823          	sd	s0,16(sp)
    80007118:	00913423          	sd	s1,8(sp)
    8000711c:	02010413          	addi	s0,sp,32
    80007120:	00050493          	mv	s1,a0
    80007124:	00002517          	auipc	a0,0x2
    80007128:	55c50513          	addi	a0,a0,1372 # 80009680 <_ZL6digits+0x170>
    8000712c:	00006797          	auipc	a5,0x6
    80007130:	ce07a623          	sw	zero,-788(a5) # 8000ce18 <pr+0x18>
    80007134:	00000097          	auipc	ra,0x0
    80007138:	034080e7          	jalr	52(ra) # 80007168 <__printf>
    8000713c:	00048513          	mv	a0,s1
    80007140:	00000097          	auipc	ra,0x0
    80007144:	028080e7          	jalr	40(ra) # 80007168 <__printf>
    80007148:	00002517          	auipc	a0,0x2
    8000714c:	fb850513          	addi	a0,a0,-72 # 80009100 <CONSOLE_STATUS+0xf0>
    80007150:	00000097          	auipc	ra,0x0
    80007154:	018080e7          	jalr	24(ra) # 80007168 <__printf>
    80007158:	00100793          	li	a5,1
    8000715c:	00005717          	auipc	a4,0x5
    80007160:	96f72e23          	sw	a5,-1668(a4) # 8000bad8 <panicked>
    80007164:	0000006f          	j	80007164 <panic+0x58>

0000000080007168 <__printf>:
    80007168:	f3010113          	addi	sp,sp,-208
    8000716c:	08813023          	sd	s0,128(sp)
    80007170:	07313423          	sd	s3,104(sp)
    80007174:	09010413          	addi	s0,sp,144
    80007178:	05813023          	sd	s8,64(sp)
    8000717c:	08113423          	sd	ra,136(sp)
    80007180:	06913c23          	sd	s1,120(sp)
    80007184:	07213823          	sd	s2,112(sp)
    80007188:	07413023          	sd	s4,96(sp)
    8000718c:	05513c23          	sd	s5,88(sp)
    80007190:	05613823          	sd	s6,80(sp)
    80007194:	05713423          	sd	s7,72(sp)
    80007198:	03913c23          	sd	s9,56(sp)
    8000719c:	03a13823          	sd	s10,48(sp)
    800071a0:	03b13423          	sd	s11,40(sp)
    800071a4:	00006317          	auipc	t1,0x6
    800071a8:	c5c30313          	addi	t1,t1,-932 # 8000ce00 <pr>
    800071ac:	01832c03          	lw	s8,24(t1)
    800071b0:	00b43423          	sd	a1,8(s0)
    800071b4:	00c43823          	sd	a2,16(s0)
    800071b8:	00d43c23          	sd	a3,24(s0)
    800071bc:	02e43023          	sd	a4,32(s0)
    800071c0:	02f43423          	sd	a5,40(s0)
    800071c4:	03043823          	sd	a6,48(s0)
    800071c8:	03143c23          	sd	a7,56(s0)
    800071cc:	00050993          	mv	s3,a0
    800071d0:	4a0c1663          	bnez	s8,8000767c <__printf+0x514>
    800071d4:	60098c63          	beqz	s3,800077ec <__printf+0x684>
    800071d8:	0009c503          	lbu	a0,0(s3)
    800071dc:	00840793          	addi	a5,s0,8
    800071e0:	f6f43c23          	sd	a5,-136(s0)
    800071e4:	00000493          	li	s1,0
    800071e8:	22050063          	beqz	a0,80007408 <__printf+0x2a0>
    800071ec:	00002a37          	lui	s4,0x2
    800071f0:	00018ab7          	lui	s5,0x18
    800071f4:	000f4b37          	lui	s6,0xf4
    800071f8:	00989bb7          	lui	s7,0x989
    800071fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007200:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007204:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007208:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000720c:	00148c9b          	addiw	s9,s1,1
    80007210:	02500793          	li	a5,37
    80007214:	01998933          	add	s2,s3,s9
    80007218:	38f51263          	bne	a0,a5,8000759c <__printf+0x434>
    8000721c:	00094783          	lbu	a5,0(s2)
    80007220:	00078c9b          	sext.w	s9,a5
    80007224:	1e078263          	beqz	a5,80007408 <__printf+0x2a0>
    80007228:	0024849b          	addiw	s1,s1,2
    8000722c:	07000713          	li	a4,112
    80007230:	00998933          	add	s2,s3,s1
    80007234:	38e78a63          	beq	a5,a4,800075c8 <__printf+0x460>
    80007238:	20f76863          	bltu	a4,a5,80007448 <__printf+0x2e0>
    8000723c:	42a78863          	beq	a5,a0,8000766c <__printf+0x504>
    80007240:	06400713          	li	a4,100
    80007244:	40e79663          	bne	a5,a4,80007650 <__printf+0x4e8>
    80007248:	f7843783          	ld	a5,-136(s0)
    8000724c:	0007a603          	lw	a2,0(a5)
    80007250:	00878793          	addi	a5,a5,8
    80007254:	f6f43c23          	sd	a5,-136(s0)
    80007258:	42064a63          	bltz	a2,8000768c <__printf+0x524>
    8000725c:	00a00713          	li	a4,10
    80007260:	02e677bb          	remuw	a5,a2,a4
    80007264:	00002d97          	auipc	s11,0x2
    80007268:	444d8d93          	addi	s11,s11,1092 # 800096a8 <digits>
    8000726c:	00900593          	li	a1,9
    80007270:	0006051b          	sext.w	a0,a2
    80007274:	00000c93          	li	s9,0
    80007278:	02079793          	slli	a5,a5,0x20
    8000727c:	0207d793          	srli	a5,a5,0x20
    80007280:	00fd87b3          	add	a5,s11,a5
    80007284:	0007c783          	lbu	a5,0(a5)
    80007288:	02e656bb          	divuw	a3,a2,a4
    8000728c:	f8f40023          	sb	a5,-128(s0)
    80007290:	14c5d863          	bge	a1,a2,800073e0 <__printf+0x278>
    80007294:	06300593          	li	a1,99
    80007298:	00100c93          	li	s9,1
    8000729c:	02e6f7bb          	remuw	a5,a3,a4
    800072a0:	02079793          	slli	a5,a5,0x20
    800072a4:	0207d793          	srli	a5,a5,0x20
    800072a8:	00fd87b3          	add	a5,s11,a5
    800072ac:	0007c783          	lbu	a5,0(a5)
    800072b0:	02e6d73b          	divuw	a4,a3,a4
    800072b4:	f8f400a3          	sb	a5,-127(s0)
    800072b8:	12a5f463          	bgeu	a1,a0,800073e0 <__printf+0x278>
    800072bc:	00a00693          	li	a3,10
    800072c0:	00900593          	li	a1,9
    800072c4:	02d777bb          	remuw	a5,a4,a3
    800072c8:	02079793          	slli	a5,a5,0x20
    800072cc:	0207d793          	srli	a5,a5,0x20
    800072d0:	00fd87b3          	add	a5,s11,a5
    800072d4:	0007c503          	lbu	a0,0(a5)
    800072d8:	02d757bb          	divuw	a5,a4,a3
    800072dc:	f8a40123          	sb	a0,-126(s0)
    800072e0:	48e5f263          	bgeu	a1,a4,80007764 <__printf+0x5fc>
    800072e4:	06300513          	li	a0,99
    800072e8:	02d7f5bb          	remuw	a1,a5,a3
    800072ec:	02059593          	slli	a1,a1,0x20
    800072f0:	0205d593          	srli	a1,a1,0x20
    800072f4:	00bd85b3          	add	a1,s11,a1
    800072f8:	0005c583          	lbu	a1,0(a1)
    800072fc:	02d7d7bb          	divuw	a5,a5,a3
    80007300:	f8b401a3          	sb	a1,-125(s0)
    80007304:	48e57263          	bgeu	a0,a4,80007788 <__printf+0x620>
    80007308:	3e700513          	li	a0,999
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b40223          	sb	a1,-124(s0)
    80007328:	46e57663          	bgeu	a0,a4,80007794 <__printf+0x62c>
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b402a3          	sb	a1,-123(s0)
    80007348:	46ea7863          	bgeu	s4,a4,800077b8 <__printf+0x650>
    8000734c:	02d7f5bb          	remuw	a1,a5,a3
    80007350:	02059593          	slli	a1,a1,0x20
    80007354:	0205d593          	srli	a1,a1,0x20
    80007358:	00bd85b3          	add	a1,s11,a1
    8000735c:	0005c583          	lbu	a1,0(a1)
    80007360:	02d7d7bb          	divuw	a5,a5,a3
    80007364:	f8b40323          	sb	a1,-122(s0)
    80007368:	3eeaf863          	bgeu	s5,a4,80007758 <__printf+0x5f0>
    8000736c:	02d7f5bb          	remuw	a1,a5,a3
    80007370:	02059593          	slli	a1,a1,0x20
    80007374:	0205d593          	srli	a1,a1,0x20
    80007378:	00bd85b3          	add	a1,s11,a1
    8000737c:	0005c583          	lbu	a1,0(a1)
    80007380:	02d7d7bb          	divuw	a5,a5,a3
    80007384:	f8b403a3          	sb	a1,-121(s0)
    80007388:	42eb7e63          	bgeu	s6,a4,800077c4 <__printf+0x65c>
    8000738c:	02d7f5bb          	remuw	a1,a5,a3
    80007390:	02059593          	slli	a1,a1,0x20
    80007394:	0205d593          	srli	a1,a1,0x20
    80007398:	00bd85b3          	add	a1,s11,a1
    8000739c:	0005c583          	lbu	a1,0(a1)
    800073a0:	02d7d7bb          	divuw	a5,a5,a3
    800073a4:	f8b40423          	sb	a1,-120(s0)
    800073a8:	42ebfc63          	bgeu	s7,a4,800077e0 <__printf+0x678>
    800073ac:	02079793          	slli	a5,a5,0x20
    800073b0:	0207d793          	srli	a5,a5,0x20
    800073b4:	00fd8db3          	add	s11,s11,a5
    800073b8:	000dc703          	lbu	a4,0(s11)
    800073bc:	00a00793          	li	a5,10
    800073c0:	00900c93          	li	s9,9
    800073c4:	f8e404a3          	sb	a4,-119(s0)
    800073c8:	00065c63          	bgez	a2,800073e0 <__printf+0x278>
    800073cc:	f9040713          	addi	a4,s0,-112
    800073d0:	00f70733          	add	a4,a4,a5
    800073d4:	02d00693          	li	a3,45
    800073d8:	fed70823          	sb	a3,-16(a4)
    800073dc:	00078c93          	mv	s9,a5
    800073e0:	f8040793          	addi	a5,s0,-128
    800073e4:	01978cb3          	add	s9,a5,s9
    800073e8:	f7f40d13          	addi	s10,s0,-129
    800073ec:	000cc503          	lbu	a0,0(s9)
    800073f0:	fffc8c93          	addi	s9,s9,-1
    800073f4:	00000097          	auipc	ra,0x0
    800073f8:	b90080e7          	jalr	-1136(ra) # 80006f84 <consputc>
    800073fc:	ffac98e3          	bne	s9,s10,800073ec <__printf+0x284>
    80007400:	00094503          	lbu	a0,0(s2)
    80007404:	e00514e3          	bnez	a0,8000720c <__printf+0xa4>
    80007408:	1a0c1663          	bnez	s8,800075b4 <__printf+0x44c>
    8000740c:	08813083          	ld	ra,136(sp)
    80007410:	08013403          	ld	s0,128(sp)
    80007414:	07813483          	ld	s1,120(sp)
    80007418:	07013903          	ld	s2,112(sp)
    8000741c:	06813983          	ld	s3,104(sp)
    80007420:	06013a03          	ld	s4,96(sp)
    80007424:	05813a83          	ld	s5,88(sp)
    80007428:	05013b03          	ld	s6,80(sp)
    8000742c:	04813b83          	ld	s7,72(sp)
    80007430:	04013c03          	ld	s8,64(sp)
    80007434:	03813c83          	ld	s9,56(sp)
    80007438:	03013d03          	ld	s10,48(sp)
    8000743c:	02813d83          	ld	s11,40(sp)
    80007440:	0d010113          	addi	sp,sp,208
    80007444:	00008067          	ret
    80007448:	07300713          	li	a4,115
    8000744c:	1ce78a63          	beq	a5,a4,80007620 <__printf+0x4b8>
    80007450:	07800713          	li	a4,120
    80007454:	1ee79e63          	bne	a5,a4,80007650 <__printf+0x4e8>
    80007458:	f7843783          	ld	a5,-136(s0)
    8000745c:	0007a703          	lw	a4,0(a5)
    80007460:	00878793          	addi	a5,a5,8
    80007464:	f6f43c23          	sd	a5,-136(s0)
    80007468:	28074263          	bltz	a4,800076ec <__printf+0x584>
    8000746c:	00002d97          	auipc	s11,0x2
    80007470:	23cd8d93          	addi	s11,s11,572 # 800096a8 <digits>
    80007474:	00f77793          	andi	a5,a4,15
    80007478:	00fd87b3          	add	a5,s11,a5
    8000747c:	0007c683          	lbu	a3,0(a5)
    80007480:	00f00613          	li	a2,15
    80007484:	0007079b          	sext.w	a5,a4
    80007488:	f8d40023          	sb	a3,-128(s0)
    8000748c:	0047559b          	srliw	a1,a4,0x4
    80007490:	0047569b          	srliw	a3,a4,0x4
    80007494:	00000c93          	li	s9,0
    80007498:	0ee65063          	bge	a2,a4,80007578 <__printf+0x410>
    8000749c:	00f6f693          	andi	a3,a3,15
    800074a0:	00dd86b3          	add	a3,s11,a3
    800074a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800074a8:	0087d79b          	srliw	a5,a5,0x8
    800074ac:	00100c93          	li	s9,1
    800074b0:	f8d400a3          	sb	a3,-127(s0)
    800074b4:	0cb67263          	bgeu	a2,a1,80007578 <__printf+0x410>
    800074b8:	00f7f693          	andi	a3,a5,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c583          	lbu	a1,0(a3)
    800074c4:	00f00613          	li	a2,15
    800074c8:	0047d69b          	srliw	a3,a5,0x4
    800074cc:	f8b40123          	sb	a1,-126(s0)
    800074d0:	0047d593          	srli	a1,a5,0x4
    800074d4:	28f67e63          	bgeu	a2,a5,80007770 <__printf+0x608>
    800074d8:	00f6f693          	andi	a3,a3,15
    800074dc:	00dd86b3          	add	a3,s11,a3
    800074e0:	0006c503          	lbu	a0,0(a3)
    800074e4:	0087d813          	srli	a6,a5,0x8
    800074e8:	0087d69b          	srliw	a3,a5,0x8
    800074ec:	f8a401a3          	sb	a0,-125(s0)
    800074f0:	28b67663          	bgeu	a2,a1,8000777c <__printf+0x614>
    800074f4:	00f6f693          	andi	a3,a3,15
    800074f8:	00dd86b3          	add	a3,s11,a3
    800074fc:	0006c583          	lbu	a1,0(a3)
    80007500:	00c7d513          	srli	a0,a5,0xc
    80007504:	00c7d69b          	srliw	a3,a5,0xc
    80007508:	f8b40223          	sb	a1,-124(s0)
    8000750c:	29067a63          	bgeu	a2,a6,800077a0 <__printf+0x638>
    80007510:	00f6f693          	andi	a3,a3,15
    80007514:	00dd86b3          	add	a3,s11,a3
    80007518:	0006c583          	lbu	a1,0(a3)
    8000751c:	0107d813          	srli	a6,a5,0x10
    80007520:	0107d69b          	srliw	a3,a5,0x10
    80007524:	f8b402a3          	sb	a1,-123(s0)
    80007528:	28a67263          	bgeu	a2,a0,800077ac <__printf+0x644>
    8000752c:	00f6f693          	andi	a3,a3,15
    80007530:	00dd86b3          	add	a3,s11,a3
    80007534:	0006c683          	lbu	a3,0(a3)
    80007538:	0147d79b          	srliw	a5,a5,0x14
    8000753c:	f8d40323          	sb	a3,-122(s0)
    80007540:	21067663          	bgeu	a2,a6,8000774c <__printf+0x5e4>
    80007544:	02079793          	slli	a5,a5,0x20
    80007548:	0207d793          	srli	a5,a5,0x20
    8000754c:	00fd8db3          	add	s11,s11,a5
    80007550:	000dc683          	lbu	a3,0(s11)
    80007554:	00800793          	li	a5,8
    80007558:	00700c93          	li	s9,7
    8000755c:	f8d403a3          	sb	a3,-121(s0)
    80007560:	00075c63          	bgez	a4,80007578 <__printf+0x410>
    80007564:	f9040713          	addi	a4,s0,-112
    80007568:	00f70733          	add	a4,a4,a5
    8000756c:	02d00693          	li	a3,45
    80007570:	fed70823          	sb	a3,-16(a4)
    80007574:	00078c93          	mv	s9,a5
    80007578:	f8040793          	addi	a5,s0,-128
    8000757c:	01978cb3          	add	s9,a5,s9
    80007580:	f7f40d13          	addi	s10,s0,-129
    80007584:	000cc503          	lbu	a0,0(s9)
    80007588:	fffc8c93          	addi	s9,s9,-1
    8000758c:	00000097          	auipc	ra,0x0
    80007590:	9f8080e7          	jalr	-1544(ra) # 80006f84 <consputc>
    80007594:	ff9d18e3          	bne	s10,s9,80007584 <__printf+0x41c>
    80007598:	0100006f          	j	800075a8 <__printf+0x440>
    8000759c:	00000097          	auipc	ra,0x0
    800075a0:	9e8080e7          	jalr	-1560(ra) # 80006f84 <consputc>
    800075a4:	000c8493          	mv	s1,s9
    800075a8:	00094503          	lbu	a0,0(s2)
    800075ac:	c60510e3          	bnez	a0,8000720c <__printf+0xa4>
    800075b0:	e40c0ee3          	beqz	s8,8000740c <__printf+0x2a4>
    800075b4:	00006517          	auipc	a0,0x6
    800075b8:	84c50513          	addi	a0,a0,-1972 # 8000ce00 <pr>
    800075bc:	00001097          	auipc	ra,0x1
    800075c0:	94c080e7          	jalr	-1716(ra) # 80007f08 <release>
    800075c4:	e49ff06f          	j	8000740c <__printf+0x2a4>
    800075c8:	f7843783          	ld	a5,-136(s0)
    800075cc:	03000513          	li	a0,48
    800075d0:	01000d13          	li	s10,16
    800075d4:	00878713          	addi	a4,a5,8
    800075d8:	0007bc83          	ld	s9,0(a5)
    800075dc:	f6e43c23          	sd	a4,-136(s0)
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	9a4080e7          	jalr	-1628(ra) # 80006f84 <consputc>
    800075e8:	07800513          	li	a0,120
    800075ec:	00000097          	auipc	ra,0x0
    800075f0:	998080e7          	jalr	-1640(ra) # 80006f84 <consputc>
    800075f4:	00002d97          	auipc	s11,0x2
    800075f8:	0b4d8d93          	addi	s11,s11,180 # 800096a8 <digits>
    800075fc:	03ccd793          	srli	a5,s9,0x3c
    80007600:	00fd87b3          	add	a5,s11,a5
    80007604:	0007c503          	lbu	a0,0(a5)
    80007608:	fffd0d1b          	addiw	s10,s10,-1
    8000760c:	004c9c93          	slli	s9,s9,0x4
    80007610:	00000097          	auipc	ra,0x0
    80007614:	974080e7          	jalr	-1676(ra) # 80006f84 <consputc>
    80007618:	fe0d12e3          	bnez	s10,800075fc <__printf+0x494>
    8000761c:	f8dff06f          	j	800075a8 <__printf+0x440>
    80007620:	f7843783          	ld	a5,-136(s0)
    80007624:	0007bc83          	ld	s9,0(a5)
    80007628:	00878793          	addi	a5,a5,8
    8000762c:	f6f43c23          	sd	a5,-136(s0)
    80007630:	000c9a63          	bnez	s9,80007644 <__printf+0x4dc>
    80007634:	1080006f          	j	8000773c <__printf+0x5d4>
    80007638:	001c8c93          	addi	s9,s9,1
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	948080e7          	jalr	-1720(ra) # 80006f84 <consputc>
    80007644:	000cc503          	lbu	a0,0(s9)
    80007648:	fe0518e3          	bnez	a0,80007638 <__printf+0x4d0>
    8000764c:	f5dff06f          	j	800075a8 <__printf+0x440>
    80007650:	02500513          	li	a0,37
    80007654:	00000097          	auipc	ra,0x0
    80007658:	930080e7          	jalr	-1744(ra) # 80006f84 <consputc>
    8000765c:	000c8513          	mv	a0,s9
    80007660:	00000097          	auipc	ra,0x0
    80007664:	924080e7          	jalr	-1756(ra) # 80006f84 <consputc>
    80007668:	f41ff06f          	j	800075a8 <__printf+0x440>
    8000766c:	02500513          	li	a0,37
    80007670:	00000097          	auipc	ra,0x0
    80007674:	914080e7          	jalr	-1772(ra) # 80006f84 <consputc>
    80007678:	f31ff06f          	j	800075a8 <__printf+0x440>
    8000767c:	00030513          	mv	a0,t1
    80007680:	00000097          	auipc	ra,0x0
    80007684:	7bc080e7          	jalr	1980(ra) # 80007e3c <acquire>
    80007688:	b4dff06f          	j	800071d4 <__printf+0x6c>
    8000768c:	40c0053b          	negw	a0,a2
    80007690:	00a00713          	li	a4,10
    80007694:	02e576bb          	remuw	a3,a0,a4
    80007698:	00002d97          	auipc	s11,0x2
    8000769c:	010d8d93          	addi	s11,s11,16 # 800096a8 <digits>
    800076a0:	ff700593          	li	a1,-9
    800076a4:	02069693          	slli	a3,a3,0x20
    800076a8:	0206d693          	srli	a3,a3,0x20
    800076ac:	00dd86b3          	add	a3,s11,a3
    800076b0:	0006c683          	lbu	a3,0(a3)
    800076b4:	02e557bb          	divuw	a5,a0,a4
    800076b8:	f8d40023          	sb	a3,-128(s0)
    800076bc:	10b65e63          	bge	a2,a1,800077d8 <__printf+0x670>
    800076c0:	06300593          	li	a1,99
    800076c4:	02e7f6bb          	remuw	a3,a5,a4
    800076c8:	02069693          	slli	a3,a3,0x20
    800076cc:	0206d693          	srli	a3,a3,0x20
    800076d0:	00dd86b3          	add	a3,s11,a3
    800076d4:	0006c683          	lbu	a3,0(a3)
    800076d8:	02e7d73b          	divuw	a4,a5,a4
    800076dc:	00200793          	li	a5,2
    800076e0:	f8d400a3          	sb	a3,-127(s0)
    800076e4:	bca5ece3          	bltu	a1,a0,800072bc <__printf+0x154>
    800076e8:	ce5ff06f          	j	800073cc <__printf+0x264>
    800076ec:	40e007bb          	negw	a5,a4
    800076f0:	00002d97          	auipc	s11,0x2
    800076f4:	fb8d8d93          	addi	s11,s11,-72 # 800096a8 <digits>
    800076f8:	00f7f693          	andi	a3,a5,15
    800076fc:	00dd86b3          	add	a3,s11,a3
    80007700:	0006c583          	lbu	a1,0(a3)
    80007704:	ff100613          	li	a2,-15
    80007708:	0047d69b          	srliw	a3,a5,0x4
    8000770c:	f8b40023          	sb	a1,-128(s0)
    80007710:	0047d59b          	srliw	a1,a5,0x4
    80007714:	0ac75e63          	bge	a4,a2,800077d0 <__printf+0x668>
    80007718:	00f6f693          	andi	a3,a3,15
    8000771c:	00dd86b3          	add	a3,s11,a3
    80007720:	0006c603          	lbu	a2,0(a3)
    80007724:	00f00693          	li	a3,15
    80007728:	0087d79b          	srliw	a5,a5,0x8
    8000772c:	f8c400a3          	sb	a2,-127(s0)
    80007730:	d8b6e4e3          	bltu	a3,a1,800074b8 <__printf+0x350>
    80007734:	00200793          	li	a5,2
    80007738:	e2dff06f          	j	80007564 <__printf+0x3fc>
    8000773c:	00002c97          	auipc	s9,0x2
    80007740:	f4cc8c93          	addi	s9,s9,-180 # 80009688 <_ZL6digits+0x178>
    80007744:	02800513          	li	a0,40
    80007748:	ef1ff06f          	j	80007638 <__printf+0x4d0>
    8000774c:	00700793          	li	a5,7
    80007750:	00600c93          	li	s9,6
    80007754:	e0dff06f          	j	80007560 <__printf+0x3f8>
    80007758:	00700793          	li	a5,7
    8000775c:	00600c93          	li	s9,6
    80007760:	c69ff06f          	j	800073c8 <__printf+0x260>
    80007764:	00300793          	li	a5,3
    80007768:	00200c93          	li	s9,2
    8000776c:	c5dff06f          	j	800073c8 <__printf+0x260>
    80007770:	00300793          	li	a5,3
    80007774:	00200c93          	li	s9,2
    80007778:	de9ff06f          	j	80007560 <__printf+0x3f8>
    8000777c:	00400793          	li	a5,4
    80007780:	00300c93          	li	s9,3
    80007784:	dddff06f          	j	80007560 <__printf+0x3f8>
    80007788:	00400793          	li	a5,4
    8000778c:	00300c93          	li	s9,3
    80007790:	c39ff06f          	j	800073c8 <__printf+0x260>
    80007794:	00500793          	li	a5,5
    80007798:	00400c93          	li	s9,4
    8000779c:	c2dff06f          	j	800073c8 <__printf+0x260>
    800077a0:	00500793          	li	a5,5
    800077a4:	00400c93          	li	s9,4
    800077a8:	db9ff06f          	j	80007560 <__printf+0x3f8>
    800077ac:	00600793          	li	a5,6
    800077b0:	00500c93          	li	s9,5
    800077b4:	dadff06f          	j	80007560 <__printf+0x3f8>
    800077b8:	00600793          	li	a5,6
    800077bc:	00500c93          	li	s9,5
    800077c0:	c09ff06f          	j	800073c8 <__printf+0x260>
    800077c4:	00800793          	li	a5,8
    800077c8:	00700c93          	li	s9,7
    800077cc:	bfdff06f          	j	800073c8 <__printf+0x260>
    800077d0:	00100793          	li	a5,1
    800077d4:	d91ff06f          	j	80007564 <__printf+0x3fc>
    800077d8:	00100793          	li	a5,1
    800077dc:	bf1ff06f          	j	800073cc <__printf+0x264>
    800077e0:	00900793          	li	a5,9
    800077e4:	00800c93          	li	s9,8
    800077e8:	be1ff06f          	j	800073c8 <__printf+0x260>
    800077ec:	00002517          	auipc	a0,0x2
    800077f0:	ea450513          	addi	a0,a0,-348 # 80009690 <_ZL6digits+0x180>
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	918080e7          	jalr	-1768(ra) # 8000710c <panic>

00000000800077fc <printfinit>:
    800077fc:	fe010113          	addi	sp,sp,-32
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00913423          	sd	s1,8(sp)
    80007808:	00113c23          	sd	ra,24(sp)
    8000780c:	02010413          	addi	s0,sp,32
    80007810:	00005497          	auipc	s1,0x5
    80007814:	5f048493          	addi	s1,s1,1520 # 8000ce00 <pr>
    80007818:	00048513          	mv	a0,s1
    8000781c:	00002597          	auipc	a1,0x2
    80007820:	e8458593          	addi	a1,a1,-380 # 800096a0 <_ZL6digits+0x190>
    80007824:	00000097          	auipc	ra,0x0
    80007828:	5f4080e7          	jalr	1524(ra) # 80007e18 <initlock>
    8000782c:	01813083          	ld	ra,24(sp)
    80007830:	01013403          	ld	s0,16(sp)
    80007834:	0004ac23          	sw	zero,24(s1)
    80007838:	00813483          	ld	s1,8(sp)
    8000783c:	02010113          	addi	sp,sp,32
    80007840:	00008067          	ret

0000000080007844 <uartinit>:
    80007844:	ff010113          	addi	sp,sp,-16
    80007848:	00813423          	sd	s0,8(sp)
    8000784c:	01010413          	addi	s0,sp,16
    80007850:	100007b7          	lui	a5,0x10000
    80007854:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007858:	f8000713          	li	a4,-128
    8000785c:	00e781a3          	sb	a4,3(a5)
    80007860:	00300713          	li	a4,3
    80007864:	00e78023          	sb	a4,0(a5)
    80007868:	000780a3          	sb	zero,1(a5)
    8000786c:	00e781a3          	sb	a4,3(a5)
    80007870:	00700693          	li	a3,7
    80007874:	00d78123          	sb	a3,2(a5)
    80007878:	00e780a3          	sb	a4,1(a5)
    8000787c:	00813403          	ld	s0,8(sp)
    80007880:	01010113          	addi	sp,sp,16
    80007884:	00008067          	ret

0000000080007888 <uartputc>:
    80007888:	00004797          	auipc	a5,0x4
    8000788c:	2507a783          	lw	a5,592(a5) # 8000bad8 <panicked>
    80007890:	00078463          	beqz	a5,80007898 <uartputc+0x10>
    80007894:	0000006f          	j	80007894 <uartputc+0xc>
    80007898:	fd010113          	addi	sp,sp,-48
    8000789c:	02813023          	sd	s0,32(sp)
    800078a0:	00913c23          	sd	s1,24(sp)
    800078a4:	01213823          	sd	s2,16(sp)
    800078a8:	01313423          	sd	s3,8(sp)
    800078ac:	02113423          	sd	ra,40(sp)
    800078b0:	03010413          	addi	s0,sp,48
    800078b4:	00004917          	auipc	s2,0x4
    800078b8:	22c90913          	addi	s2,s2,556 # 8000bae0 <uart_tx_r>
    800078bc:	00093783          	ld	a5,0(s2)
    800078c0:	00004497          	auipc	s1,0x4
    800078c4:	22848493          	addi	s1,s1,552 # 8000bae8 <uart_tx_w>
    800078c8:	0004b703          	ld	a4,0(s1)
    800078cc:	02078693          	addi	a3,a5,32
    800078d0:	00050993          	mv	s3,a0
    800078d4:	02e69c63          	bne	a3,a4,8000790c <uartputc+0x84>
    800078d8:	00001097          	auipc	ra,0x1
    800078dc:	834080e7          	jalr	-1996(ra) # 8000810c <push_on>
    800078e0:	00093783          	ld	a5,0(s2)
    800078e4:	0004b703          	ld	a4,0(s1)
    800078e8:	02078793          	addi	a5,a5,32
    800078ec:	00e79463          	bne	a5,a4,800078f4 <uartputc+0x6c>
    800078f0:	0000006f          	j	800078f0 <uartputc+0x68>
    800078f4:	00001097          	auipc	ra,0x1
    800078f8:	88c080e7          	jalr	-1908(ra) # 80008180 <pop_on>
    800078fc:	00093783          	ld	a5,0(s2)
    80007900:	0004b703          	ld	a4,0(s1)
    80007904:	02078693          	addi	a3,a5,32
    80007908:	fce688e3          	beq	a3,a4,800078d8 <uartputc+0x50>
    8000790c:	01f77693          	andi	a3,a4,31
    80007910:	00005597          	auipc	a1,0x5
    80007914:	51058593          	addi	a1,a1,1296 # 8000ce20 <uart_tx_buf>
    80007918:	00d586b3          	add	a3,a1,a3
    8000791c:	00170713          	addi	a4,a4,1
    80007920:	01368023          	sb	s3,0(a3)
    80007924:	00e4b023          	sd	a4,0(s1)
    80007928:	10000637          	lui	a2,0x10000
    8000792c:	02f71063          	bne	a4,a5,8000794c <uartputc+0xc4>
    80007930:	0340006f          	j	80007964 <uartputc+0xdc>
    80007934:	00074703          	lbu	a4,0(a4)
    80007938:	00f93023          	sd	a5,0(s2)
    8000793c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007940:	00093783          	ld	a5,0(s2)
    80007944:	0004b703          	ld	a4,0(s1)
    80007948:	00f70e63          	beq	a4,a5,80007964 <uartputc+0xdc>
    8000794c:	00564683          	lbu	a3,5(a2)
    80007950:	01f7f713          	andi	a4,a5,31
    80007954:	00e58733          	add	a4,a1,a4
    80007958:	0206f693          	andi	a3,a3,32
    8000795c:	00178793          	addi	a5,a5,1
    80007960:	fc069ae3          	bnez	a3,80007934 <uartputc+0xac>
    80007964:	02813083          	ld	ra,40(sp)
    80007968:	02013403          	ld	s0,32(sp)
    8000796c:	01813483          	ld	s1,24(sp)
    80007970:	01013903          	ld	s2,16(sp)
    80007974:	00813983          	ld	s3,8(sp)
    80007978:	03010113          	addi	sp,sp,48
    8000797c:	00008067          	ret

0000000080007980 <uartputc_sync>:
    80007980:	ff010113          	addi	sp,sp,-16
    80007984:	00813423          	sd	s0,8(sp)
    80007988:	01010413          	addi	s0,sp,16
    8000798c:	00004717          	auipc	a4,0x4
    80007990:	14c72703          	lw	a4,332(a4) # 8000bad8 <panicked>
    80007994:	02071663          	bnez	a4,800079c0 <uartputc_sync+0x40>
    80007998:	00050793          	mv	a5,a0
    8000799c:	100006b7          	lui	a3,0x10000
    800079a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800079a4:	02077713          	andi	a4,a4,32
    800079a8:	fe070ce3          	beqz	a4,800079a0 <uartputc_sync+0x20>
    800079ac:	0ff7f793          	andi	a5,a5,255
    800079b0:	00f68023          	sb	a5,0(a3)
    800079b4:	00813403          	ld	s0,8(sp)
    800079b8:	01010113          	addi	sp,sp,16
    800079bc:	00008067          	ret
    800079c0:	0000006f          	j	800079c0 <uartputc_sync+0x40>

00000000800079c4 <uartstart>:
    800079c4:	ff010113          	addi	sp,sp,-16
    800079c8:	00813423          	sd	s0,8(sp)
    800079cc:	01010413          	addi	s0,sp,16
    800079d0:	00004617          	auipc	a2,0x4
    800079d4:	11060613          	addi	a2,a2,272 # 8000bae0 <uart_tx_r>
    800079d8:	00004517          	auipc	a0,0x4
    800079dc:	11050513          	addi	a0,a0,272 # 8000bae8 <uart_tx_w>
    800079e0:	00063783          	ld	a5,0(a2)
    800079e4:	00053703          	ld	a4,0(a0)
    800079e8:	04f70263          	beq	a4,a5,80007a2c <uartstart+0x68>
    800079ec:	100005b7          	lui	a1,0x10000
    800079f0:	00005817          	auipc	a6,0x5
    800079f4:	43080813          	addi	a6,a6,1072 # 8000ce20 <uart_tx_buf>
    800079f8:	01c0006f          	j	80007a14 <uartstart+0x50>
    800079fc:	0006c703          	lbu	a4,0(a3)
    80007a00:	00f63023          	sd	a5,0(a2)
    80007a04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a08:	00063783          	ld	a5,0(a2)
    80007a0c:	00053703          	ld	a4,0(a0)
    80007a10:	00f70e63          	beq	a4,a5,80007a2c <uartstart+0x68>
    80007a14:	01f7f713          	andi	a4,a5,31
    80007a18:	00e806b3          	add	a3,a6,a4
    80007a1c:	0055c703          	lbu	a4,5(a1)
    80007a20:	00178793          	addi	a5,a5,1
    80007a24:	02077713          	andi	a4,a4,32
    80007a28:	fc071ae3          	bnez	a4,800079fc <uartstart+0x38>
    80007a2c:	00813403          	ld	s0,8(sp)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <uartgetc>:
    80007a38:	ff010113          	addi	sp,sp,-16
    80007a3c:	00813423          	sd	s0,8(sp)
    80007a40:	01010413          	addi	s0,sp,16
    80007a44:	10000737          	lui	a4,0x10000
    80007a48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a4c:	0017f793          	andi	a5,a5,1
    80007a50:	00078c63          	beqz	a5,80007a68 <uartgetc+0x30>
    80007a54:	00074503          	lbu	a0,0(a4)
    80007a58:	0ff57513          	andi	a0,a0,255
    80007a5c:	00813403          	ld	s0,8(sp)
    80007a60:	01010113          	addi	sp,sp,16
    80007a64:	00008067          	ret
    80007a68:	fff00513          	li	a0,-1
    80007a6c:	ff1ff06f          	j	80007a5c <uartgetc+0x24>

0000000080007a70 <uartintr>:
    80007a70:	100007b7          	lui	a5,0x10000
    80007a74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a78:	0017f793          	andi	a5,a5,1
    80007a7c:	0a078463          	beqz	a5,80007b24 <uartintr+0xb4>
    80007a80:	fe010113          	addi	sp,sp,-32
    80007a84:	00813823          	sd	s0,16(sp)
    80007a88:	00913423          	sd	s1,8(sp)
    80007a8c:	00113c23          	sd	ra,24(sp)
    80007a90:	02010413          	addi	s0,sp,32
    80007a94:	100004b7          	lui	s1,0x10000
    80007a98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a9c:	0ff57513          	andi	a0,a0,255
    80007aa0:	fffff097          	auipc	ra,0xfffff
    80007aa4:	534080e7          	jalr	1332(ra) # 80006fd4 <consoleintr>
    80007aa8:	0054c783          	lbu	a5,5(s1)
    80007aac:	0017f793          	andi	a5,a5,1
    80007ab0:	fe0794e3          	bnez	a5,80007a98 <uartintr+0x28>
    80007ab4:	00004617          	auipc	a2,0x4
    80007ab8:	02c60613          	addi	a2,a2,44 # 8000bae0 <uart_tx_r>
    80007abc:	00004517          	auipc	a0,0x4
    80007ac0:	02c50513          	addi	a0,a0,44 # 8000bae8 <uart_tx_w>
    80007ac4:	00063783          	ld	a5,0(a2)
    80007ac8:	00053703          	ld	a4,0(a0)
    80007acc:	04f70263          	beq	a4,a5,80007b10 <uartintr+0xa0>
    80007ad0:	100005b7          	lui	a1,0x10000
    80007ad4:	00005817          	auipc	a6,0x5
    80007ad8:	34c80813          	addi	a6,a6,844 # 8000ce20 <uart_tx_buf>
    80007adc:	01c0006f          	j	80007af8 <uartintr+0x88>
    80007ae0:	0006c703          	lbu	a4,0(a3)
    80007ae4:	00f63023          	sd	a5,0(a2)
    80007ae8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007aec:	00063783          	ld	a5,0(a2)
    80007af0:	00053703          	ld	a4,0(a0)
    80007af4:	00f70e63          	beq	a4,a5,80007b10 <uartintr+0xa0>
    80007af8:	01f7f713          	andi	a4,a5,31
    80007afc:	00e806b3          	add	a3,a6,a4
    80007b00:	0055c703          	lbu	a4,5(a1)
    80007b04:	00178793          	addi	a5,a5,1
    80007b08:	02077713          	andi	a4,a4,32
    80007b0c:	fc071ae3          	bnez	a4,80007ae0 <uartintr+0x70>
    80007b10:	01813083          	ld	ra,24(sp)
    80007b14:	01013403          	ld	s0,16(sp)
    80007b18:	00813483          	ld	s1,8(sp)
    80007b1c:	02010113          	addi	sp,sp,32
    80007b20:	00008067          	ret
    80007b24:	00004617          	auipc	a2,0x4
    80007b28:	fbc60613          	addi	a2,a2,-68 # 8000bae0 <uart_tx_r>
    80007b2c:	00004517          	auipc	a0,0x4
    80007b30:	fbc50513          	addi	a0,a0,-68 # 8000bae8 <uart_tx_w>
    80007b34:	00063783          	ld	a5,0(a2)
    80007b38:	00053703          	ld	a4,0(a0)
    80007b3c:	04f70263          	beq	a4,a5,80007b80 <uartintr+0x110>
    80007b40:	100005b7          	lui	a1,0x10000
    80007b44:	00005817          	auipc	a6,0x5
    80007b48:	2dc80813          	addi	a6,a6,732 # 8000ce20 <uart_tx_buf>
    80007b4c:	01c0006f          	j	80007b68 <uartintr+0xf8>
    80007b50:	0006c703          	lbu	a4,0(a3)
    80007b54:	00f63023          	sd	a5,0(a2)
    80007b58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b5c:	00063783          	ld	a5,0(a2)
    80007b60:	00053703          	ld	a4,0(a0)
    80007b64:	02f70063          	beq	a4,a5,80007b84 <uartintr+0x114>
    80007b68:	01f7f713          	andi	a4,a5,31
    80007b6c:	00e806b3          	add	a3,a6,a4
    80007b70:	0055c703          	lbu	a4,5(a1)
    80007b74:	00178793          	addi	a5,a5,1
    80007b78:	02077713          	andi	a4,a4,32
    80007b7c:	fc071ae3          	bnez	a4,80007b50 <uartintr+0xe0>
    80007b80:	00008067          	ret
    80007b84:	00008067          	ret

0000000080007b88 <kinit>:
    80007b88:	fc010113          	addi	sp,sp,-64
    80007b8c:	02913423          	sd	s1,40(sp)
    80007b90:	fffff7b7          	lui	a5,0xfffff
    80007b94:	00006497          	auipc	s1,0x6
    80007b98:	2ab48493          	addi	s1,s1,683 # 8000de3f <end+0xfff>
    80007b9c:	02813823          	sd	s0,48(sp)
    80007ba0:	01313c23          	sd	s3,24(sp)
    80007ba4:	00f4f4b3          	and	s1,s1,a5
    80007ba8:	02113c23          	sd	ra,56(sp)
    80007bac:	03213023          	sd	s2,32(sp)
    80007bb0:	01413823          	sd	s4,16(sp)
    80007bb4:	01513423          	sd	s5,8(sp)
    80007bb8:	04010413          	addi	s0,sp,64
    80007bbc:	000017b7          	lui	a5,0x1
    80007bc0:	01100993          	li	s3,17
    80007bc4:	00f487b3          	add	a5,s1,a5
    80007bc8:	01b99993          	slli	s3,s3,0x1b
    80007bcc:	06f9e063          	bltu	s3,a5,80007c2c <kinit+0xa4>
    80007bd0:	00005a97          	auipc	s5,0x5
    80007bd4:	270a8a93          	addi	s5,s5,624 # 8000ce40 <end>
    80007bd8:	0754ec63          	bltu	s1,s5,80007c50 <kinit+0xc8>
    80007bdc:	0734fa63          	bgeu	s1,s3,80007c50 <kinit+0xc8>
    80007be0:	00088a37          	lui	s4,0x88
    80007be4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007be8:	00004917          	auipc	s2,0x4
    80007bec:	f0890913          	addi	s2,s2,-248 # 8000baf0 <kmem>
    80007bf0:	00ca1a13          	slli	s4,s4,0xc
    80007bf4:	0140006f          	j	80007c08 <kinit+0x80>
    80007bf8:	000017b7          	lui	a5,0x1
    80007bfc:	00f484b3          	add	s1,s1,a5
    80007c00:	0554e863          	bltu	s1,s5,80007c50 <kinit+0xc8>
    80007c04:	0534f663          	bgeu	s1,s3,80007c50 <kinit+0xc8>
    80007c08:	00001637          	lui	a2,0x1
    80007c0c:	00100593          	li	a1,1
    80007c10:	00048513          	mv	a0,s1
    80007c14:	00000097          	auipc	ra,0x0
    80007c18:	5e4080e7          	jalr	1508(ra) # 800081f8 <__memset>
    80007c1c:	00093783          	ld	a5,0(s2)
    80007c20:	00f4b023          	sd	a5,0(s1)
    80007c24:	00993023          	sd	s1,0(s2)
    80007c28:	fd4498e3          	bne	s1,s4,80007bf8 <kinit+0x70>
    80007c2c:	03813083          	ld	ra,56(sp)
    80007c30:	03013403          	ld	s0,48(sp)
    80007c34:	02813483          	ld	s1,40(sp)
    80007c38:	02013903          	ld	s2,32(sp)
    80007c3c:	01813983          	ld	s3,24(sp)
    80007c40:	01013a03          	ld	s4,16(sp)
    80007c44:	00813a83          	ld	s5,8(sp)
    80007c48:	04010113          	addi	sp,sp,64
    80007c4c:	00008067          	ret
    80007c50:	00002517          	auipc	a0,0x2
    80007c54:	a7050513          	addi	a0,a0,-1424 # 800096c0 <digits+0x18>
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	4b4080e7          	jalr	1204(ra) # 8000710c <panic>

0000000080007c60 <freerange>:
    80007c60:	fc010113          	addi	sp,sp,-64
    80007c64:	000017b7          	lui	a5,0x1
    80007c68:	02913423          	sd	s1,40(sp)
    80007c6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c70:	009504b3          	add	s1,a0,s1
    80007c74:	fffff537          	lui	a0,0xfffff
    80007c78:	02813823          	sd	s0,48(sp)
    80007c7c:	02113c23          	sd	ra,56(sp)
    80007c80:	03213023          	sd	s2,32(sp)
    80007c84:	01313c23          	sd	s3,24(sp)
    80007c88:	01413823          	sd	s4,16(sp)
    80007c8c:	01513423          	sd	s5,8(sp)
    80007c90:	01613023          	sd	s6,0(sp)
    80007c94:	04010413          	addi	s0,sp,64
    80007c98:	00a4f4b3          	and	s1,s1,a0
    80007c9c:	00f487b3          	add	a5,s1,a5
    80007ca0:	06f5e463          	bltu	a1,a5,80007d08 <freerange+0xa8>
    80007ca4:	00005a97          	auipc	s5,0x5
    80007ca8:	19ca8a93          	addi	s5,s5,412 # 8000ce40 <end>
    80007cac:	0954e263          	bltu	s1,s5,80007d30 <freerange+0xd0>
    80007cb0:	01100993          	li	s3,17
    80007cb4:	01b99993          	slli	s3,s3,0x1b
    80007cb8:	0734fc63          	bgeu	s1,s3,80007d30 <freerange+0xd0>
    80007cbc:	00058a13          	mv	s4,a1
    80007cc0:	00004917          	auipc	s2,0x4
    80007cc4:	e3090913          	addi	s2,s2,-464 # 8000baf0 <kmem>
    80007cc8:	00002b37          	lui	s6,0x2
    80007ccc:	0140006f          	j	80007ce0 <freerange+0x80>
    80007cd0:	000017b7          	lui	a5,0x1
    80007cd4:	00f484b3          	add	s1,s1,a5
    80007cd8:	0554ec63          	bltu	s1,s5,80007d30 <freerange+0xd0>
    80007cdc:	0534fa63          	bgeu	s1,s3,80007d30 <freerange+0xd0>
    80007ce0:	00001637          	lui	a2,0x1
    80007ce4:	00100593          	li	a1,1
    80007ce8:	00048513          	mv	a0,s1
    80007cec:	00000097          	auipc	ra,0x0
    80007cf0:	50c080e7          	jalr	1292(ra) # 800081f8 <__memset>
    80007cf4:	00093703          	ld	a4,0(s2)
    80007cf8:	016487b3          	add	a5,s1,s6
    80007cfc:	00e4b023          	sd	a4,0(s1)
    80007d00:	00993023          	sd	s1,0(s2)
    80007d04:	fcfa76e3          	bgeu	s4,a5,80007cd0 <freerange+0x70>
    80007d08:	03813083          	ld	ra,56(sp)
    80007d0c:	03013403          	ld	s0,48(sp)
    80007d10:	02813483          	ld	s1,40(sp)
    80007d14:	02013903          	ld	s2,32(sp)
    80007d18:	01813983          	ld	s3,24(sp)
    80007d1c:	01013a03          	ld	s4,16(sp)
    80007d20:	00813a83          	ld	s5,8(sp)
    80007d24:	00013b03          	ld	s6,0(sp)
    80007d28:	04010113          	addi	sp,sp,64
    80007d2c:	00008067          	ret
    80007d30:	00002517          	auipc	a0,0x2
    80007d34:	99050513          	addi	a0,a0,-1648 # 800096c0 <digits+0x18>
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	3d4080e7          	jalr	980(ra) # 8000710c <panic>

0000000080007d40 <kfree>:
    80007d40:	fe010113          	addi	sp,sp,-32
    80007d44:	00813823          	sd	s0,16(sp)
    80007d48:	00113c23          	sd	ra,24(sp)
    80007d4c:	00913423          	sd	s1,8(sp)
    80007d50:	02010413          	addi	s0,sp,32
    80007d54:	03451793          	slli	a5,a0,0x34
    80007d58:	04079c63          	bnez	a5,80007db0 <kfree+0x70>
    80007d5c:	00005797          	auipc	a5,0x5
    80007d60:	0e478793          	addi	a5,a5,228 # 8000ce40 <end>
    80007d64:	00050493          	mv	s1,a0
    80007d68:	04f56463          	bltu	a0,a5,80007db0 <kfree+0x70>
    80007d6c:	01100793          	li	a5,17
    80007d70:	01b79793          	slli	a5,a5,0x1b
    80007d74:	02f57e63          	bgeu	a0,a5,80007db0 <kfree+0x70>
    80007d78:	00001637          	lui	a2,0x1
    80007d7c:	00100593          	li	a1,1
    80007d80:	00000097          	auipc	ra,0x0
    80007d84:	478080e7          	jalr	1144(ra) # 800081f8 <__memset>
    80007d88:	00004797          	auipc	a5,0x4
    80007d8c:	d6878793          	addi	a5,a5,-664 # 8000baf0 <kmem>
    80007d90:	0007b703          	ld	a4,0(a5)
    80007d94:	01813083          	ld	ra,24(sp)
    80007d98:	01013403          	ld	s0,16(sp)
    80007d9c:	00e4b023          	sd	a4,0(s1)
    80007da0:	0097b023          	sd	s1,0(a5)
    80007da4:	00813483          	ld	s1,8(sp)
    80007da8:	02010113          	addi	sp,sp,32
    80007dac:	00008067          	ret
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	91050513          	addi	a0,a0,-1776 # 800096c0 <digits+0x18>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	354080e7          	jalr	852(ra) # 8000710c <panic>

0000000080007dc0 <kalloc>:
    80007dc0:	fe010113          	addi	sp,sp,-32
    80007dc4:	00813823          	sd	s0,16(sp)
    80007dc8:	00913423          	sd	s1,8(sp)
    80007dcc:	00113c23          	sd	ra,24(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	00004797          	auipc	a5,0x4
    80007dd8:	d1c78793          	addi	a5,a5,-740 # 8000baf0 <kmem>
    80007ddc:	0007b483          	ld	s1,0(a5)
    80007de0:	02048063          	beqz	s1,80007e00 <kalloc+0x40>
    80007de4:	0004b703          	ld	a4,0(s1)
    80007de8:	00001637          	lui	a2,0x1
    80007dec:	00500593          	li	a1,5
    80007df0:	00048513          	mv	a0,s1
    80007df4:	00e7b023          	sd	a4,0(a5)
    80007df8:	00000097          	auipc	ra,0x0
    80007dfc:	400080e7          	jalr	1024(ra) # 800081f8 <__memset>
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	00048513          	mv	a0,s1
    80007e0c:	00813483          	ld	s1,8(sp)
    80007e10:	02010113          	addi	sp,sp,32
    80007e14:	00008067          	ret

0000000080007e18 <initlock>:
    80007e18:	ff010113          	addi	sp,sp,-16
    80007e1c:	00813423          	sd	s0,8(sp)
    80007e20:	01010413          	addi	s0,sp,16
    80007e24:	00813403          	ld	s0,8(sp)
    80007e28:	00b53423          	sd	a1,8(a0)
    80007e2c:	00052023          	sw	zero,0(a0)
    80007e30:	00053823          	sd	zero,16(a0)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret

0000000080007e3c <acquire>:
    80007e3c:	fe010113          	addi	sp,sp,-32
    80007e40:	00813823          	sd	s0,16(sp)
    80007e44:	00913423          	sd	s1,8(sp)
    80007e48:	00113c23          	sd	ra,24(sp)
    80007e4c:	01213023          	sd	s2,0(sp)
    80007e50:	02010413          	addi	s0,sp,32
    80007e54:	00050493          	mv	s1,a0
    80007e58:	10002973          	csrr	s2,sstatus
    80007e5c:	100027f3          	csrr	a5,sstatus
    80007e60:	ffd7f793          	andi	a5,a5,-3
    80007e64:	10079073          	csrw	sstatus,a5
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	8ec080e7          	jalr	-1812(ra) # 80006754 <mycpu>
    80007e70:	07852783          	lw	a5,120(a0)
    80007e74:	06078e63          	beqz	a5,80007ef0 <acquire+0xb4>
    80007e78:	fffff097          	auipc	ra,0xfffff
    80007e7c:	8dc080e7          	jalr	-1828(ra) # 80006754 <mycpu>
    80007e80:	07852783          	lw	a5,120(a0)
    80007e84:	0004a703          	lw	a4,0(s1)
    80007e88:	0017879b          	addiw	a5,a5,1
    80007e8c:	06f52c23          	sw	a5,120(a0)
    80007e90:	04071063          	bnez	a4,80007ed0 <acquire+0x94>
    80007e94:	00100713          	li	a4,1
    80007e98:	00070793          	mv	a5,a4
    80007e9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ea0:	0007879b          	sext.w	a5,a5
    80007ea4:	fe079ae3          	bnez	a5,80007e98 <acquire+0x5c>
    80007ea8:	0ff0000f          	fence
    80007eac:	fffff097          	auipc	ra,0xfffff
    80007eb0:	8a8080e7          	jalr	-1880(ra) # 80006754 <mycpu>
    80007eb4:	01813083          	ld	ra,24(sp)
    80007eb8:	01013403          	ld	s0,16(sp)
    80007ebc:	00a4b823          	sd	a0,16(s1)
    80007ec0:	00013903          	ld	s2,0(sp)
    80007ec4:	00813483          	ld	s1,8(sp)
    80007ec8:	02010113          	addi	sp,sp,32
    80007ecc:	00008067          	ret
    80007ed0:	0104b903          	ld	s2,16(s1)
    80007ed4:	fffff097          	auipc	ra,0xfffff
    80007ed8:	880080e7          	jalr	-1920(ra) # 80006754 <mycpu>
    80007edc:	faa91ce3          	bne	s2,a0,80007e94 <acquire+0x58>
    80007ee0:	00001517          	auipc	a0,0x1
    80007ee4:	7e850513          	addi	a0,a0,2024 # 800096c8 <digits+0x20>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	224080e7          	jalr	548(ra) # 8000710c <panic>
    80007ef0:	00195913          	srli	s2,s2,0x1
    80007ef4:	fffff097          	auipc	ra,0xfffff
    80007ef8:	860080e7          	jalr	-1952(ra) # 80006754 <mycpu>
    80007efc:	00197913          	andi	s2,s2,1
    80007f00:	07252e23          	sw	s2,124(a0)
    80007f04:	f75ff06f          	j	80007e78 <acquire+0x3c>

0000000080007f08 <release>:
    80007f08:	fe010113          	addi	sp,sp,-32
    80007f0c:	00813823          	sd	s0,16(sp)
    80007f10:	00113c23          	sd	ra,24(sp)
    80007f14:	00913423          	sd	s1,8(sp)
    80007f18:	01213023          	sd	s2,0(sp)
    80007f1c:	02010413          	addi	s0,sp,32
    80007f20:	00052783          	lw	a5,0(a0)
    80007f24:	00079a63          	bnez	a5,80007f38 <release+0x30>
    80007f28:	00001517          	auipc	a0,0x1
    80007f2c:	7a850513          	addi	a0,a0,1960 # 800096d0 <digits+0x28>
    80007f30:	fffff097          	auipc	ra,0xfffff
    80007f34:	1dc080e7          	jalr	476(ra) # 8000710c <panic>
    80007f38:	01053903          	ld	s2,16(a0)
    80007f3c:	00050493          	mv	s1,a0
    80007f40:	fffff097          	auipc	ra,0xfffff
    80007f44:	814080e7          	jalr	-2028(ra) # 80006754 <mycpu>
    80007f48:	fea910e3          	bne	s2,a0,80007f28 <release+0x20>
    80007f4c:	0004b823          	sd	zero,16(s1)
    80007f50:	0ff0000f          	fence
    80007f54:	0f50000f          	fence	iorw,ow
    80007f58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f5c:	ffffe097          	auipc	ra,0xffffe
    80007f60:	7f8080e7          	jalr	2040(ra) # 80006754 <mycpu>
    80007f64:	100027f3          	csrr	a5,sstatus
    80007f68:	0027f793          	andi	a5,a5,2
    80007f6c:	04079a63          	bnez	a5,80007fc0 <release+0xb8>
    80007f70:	07852783          	lw	a5,120(a0)
    80007f74:	02f05e63          	blez	a5,80007fb0 <release+0xa8>
    80007f78:	fff7871b          	addiw	a4,a5,-1
    80007f7c:	06e52c23          	sw	a4,120(a0)
    80007f80:	00071c63          	bnez	a4,80007f98 <release+0x90>
    80007f84:	07c52783          	lw	a5,124(a0)
    80007f88:	00078863          	beqz	a5,80007f98 <release+0x90>
    80007f8c:	100027f3          	csrr	a5,sstatus
    80007f90:	0027e793          	ori	a5,a5,2
    80007f94:	10079073          	csrw	sstatus,a5
    80007f98:	01813083          	ld	ra,24(sp)
    80007f9c:	01013403          	ld	s0,16(sp)
    80007fa0:	00813483          	ld	s1,8(sp)
    80007fa4:	00013903          	ld	s2,0(sp)
    80007fa8:	02010113          	addi	sp,sp,32
    80007fac:	00008067          	ret
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	74050513          	addi	a0,a0,1856 # 800096f0 <digits+0x48>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	154080e7          	jalr	340(ra) # 8000710c <panic>
    80007fc0:	00001517          	auipc	a0,0x1
    80007fc4:	71850513          	addi	a0,a0,1816 # 800096d8 <digits+0x30>
    80007fc8:	fffff097          	auipc	ra,0xfffff
    80007fcc:	144080e7          	jalr	324(ra) # 8000710c <panic>

0000000080007fd0 <holding>:
    80007fd0:	00052783          	lw	a5,0(a0)
    80007fd4:	00079663          	bnez	a5,80007fe0 <holding+0x10>
    80007fd8:	00000513          	li	a0,0
    80007fdc:	00008067          	ret
    80007fe0:	fe010113          	addi	sp,sp,-32
    80007fe4:	00813823          	sd	s0,16(sp)
    80007fe8:	00913423          	sd	s1,8(sp)
    80007fec:	00113c23          	sd	ra,24(sp)
    80007ff0:	02010413          	addi	s0,sp,32
    80007ff4:	01053483          	ld	s1,16(a0)
    80007ff8:	ffffe097          	auipc	ra,0xffffe
    80007ffc:	75c080e7          	jalr	1884(ra) # 80006754 <mycpu>
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	01013403          	ld	s0,16(sp)
    80008008:	40a48533          	sub	a0,s1,a0
    8000800c:	00153513          	seqz	a0,a0
    80008010:	00813483          	ld	s1,8(sp)
    80008014:	02010113          	addi	sp,sp,32
    80008018:	00008067          	ret

000000008000801c <push_off>:
    8000801c:	fe010113          	addi	sp,sp,-32
    80008020:	00813823          	sd	s0,16(sp)
    80008024:	00113c23          	sd	ra,24(sp)
    80008028:	00913423          	sd	s1,8(sp)
    8000802c:	02010413          	addi	s0,sp,32
    80008030:	100024f3          	csrr	s1,sstatus
    80008034:	100027f3          	csrr	a5,sstatus
    80008038:	ffd7f793          	andi	a5,a5,-3
    8000803c:	10079073          	csrw	sstatus,a5
    80008040:	ffffe097          	auipc	ra,0xffffe
    80008044:	714080e7          	jalr	1812(ra) # 80006754 <mycpu>
    80008048:	07852783          	lw	a5,120(a0)
    8000804c:	02078663          	beqz	a5,80008078 <push_off+0x5c>
    80008050:	ffffe097          	auipc	ra,0xffffe
    80008054:	704080e7          	jalr	1796(ra) # 80006754 <mycpu>
    80008058:	07852783          	lw	a5,120(a0)
    8000805c:	01813083          	ld	ra,24(sp)
    80008060:	01013403          	ld	s0,16(sp)
    80008064:	0017879b          	addiw	a5,a5,1
    80008068:	06f52c23          	sw	a5,120(a0)
    8000806c:	00813483          	ld	s1,8(sp)
    80008070:	02010113          	addi	sp,sp,32
    80008074:	00008067          	ret
    80008078:	0014d493          	srli	s1,s1,0x1
    8000807c:	ffffe097          	auipc	ra,0xffffe
    80008080:	6d8080e7          	jalr	1752(ra) # 80006754 <mycpu>
    80008084:	0014f493          	andi	s1,s1,1
    80008088:	06952e23          	sw	s1,124(a0)
    8000808c:	fc5ff06f          	j	80008050 <push_off+0x34>

0000000080008090 <pop_off>:
    80008090:	ff010113          	addi	sp,sp,-16
    80008094:	00813023          	sd	s0,0(sp)
    80008098:	00113423          	sd	ra,8(sp)
    8000809c:	01010413          	addi	s0,sp,16
    800080a0:	ffffe097          	auipc	ra,0xffffe
    800080a4:	6b4080e7          	jalr	1716(ra) # 80006754 <mycpu>
    800080a8:	100027f3          	csrr	a5,sstatus
    800080ac:	0027f793          	andi	a5,a5,2
    800080b0:	04079663          	bnez	a5,800080fc <pop_off+0x6c>
    800080b4:	07852783          	lw	a5,120(a0)
    800080b8:	02f05a63          	blez	a5,800080ec <pop_off+0x5c>
    800080bc:	fff7871b          	addiw	a4,a5,-1
    800080c0:	06e52c23          	sw	a4,120(a0)
    800080c4:	00071c63          	bnez	a4,800080dc <pop_off+0x4c>
    800080c8:	07c52783          	lw	a5,124(a0)
    800080cc:	00078863          	beqz	a5,800080dc <pop_off+0x4c>
    800080d0:	100027f3          	csrr	a5,sstatus
    800080d4:	0027e793          	ori	a5,a5,2
    800080d8:	10079073          	csrw	sstatus,a5
    800080dc:	00813083          	ld	ra,8(sp)
    800080e0:	00013403          	ld	s0,0(sp)
    800080e4:	01010113          	addi	sp,sp,16
    800080e8:	00008067          	ret
    800080ec:	00001517          	auipc	a0,0x1
    800080f0:	60450513          	addi	a0,a0,1540 # 800096f0 <digits+0x48>
    800080f4:	fffff097          	auipc	ra,0xfffff
    800080f8:	018080e7          	jalr	24(ra) # 8000710c <panic>
    800080fc:	00001517          	auipc	a0,0x1
    80008100:	5dc50513          	addi	a0,a0,1500 # 800096d8 <digits+0x30>
    80008104:	fffff097          	auipc	ra,0xfffff
    80008108:	008080e7          	jalr	8(ra) # 8000710c <panic>

000000008000810c <push_on>:
    8000810c:	fe010113          	addi	sp,sp,-32
    80008110:	00813823          	sd	s0,16(sp)
    80008114:	00113c23          	sd	ra,24(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	02010413          	addi	s0,sp,32
    80008120:	100024f3          	csrr	s1,sstatus
    80008124:	100027f3          	csrr	a5,sstatus
    80008128:	0027e793          	ori	a5,a5,2
    8000812c:	10079073          	csrw	sstatus,a5
    80008130:	ffffe097          	auipc	ra,0xffffe
    80008134:	624080e7          	jalr	1572(ra) # 80006754 <mycpu>
    80008138:	07852783          	lw	a5,120(a0)
    8000813c:	02078663          	beqz	a5,80008168 <push_on+0x5c>
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	614080e7          	jalr	1556(ra) # 80006754 <mycpu>
    80008148:	07852783          	lw	a5,120(a0)
    8000814c:	01813083          	ld	ra,24(sp)
    80008150:	01013403          	ld	s0,16(sp)
    80008154:	0017879b          	addiw	a5,a5,1
    80008158:	06f52c23          	sw	a5,120(a0)
    8000815c:	00813483          	ld	s1,8(sp)
    80008160:	02010113          	addi	sp,sp,32
    80008164:	00008067          	ret
    80008168:	0014d493          	srli	s1,s1,0x1
    8000816c:	ffffe097          	auipc	ra,0xffffe
    80008170:	5e8080e7          	jalr	1512(ra) # 80006754 <mycpu>
    80008174:	0014f493          	andi	s1,s1,1
    80008178:	06952e23          	sw	s1,124(a0)
    8000817c:	fc5ff06f          	j	80008140 <push_on+0x34>

0000000080008180 <pop_on>:
    80008180:	ff010113          	addi	sp,sp,-16
    80008184:	00813023          	sd	s0,0(sp)
    80008188:	00113423          	sd	ra,8(sp)
    8000818c:	01010413          	addi	s0,sp,16
    80008190:	ffffe097          	auipc	ra,0xffffe
    80008194:	5c4080e7          	jalr	1476(ra) # 80006754 <mycpu>
    80008198:	100027f3          	csrr	a5,sstatus
    8000819c:	0027f793          	andi	a5,a5,2
    800081a0:	04078463          	beqz	a5,800081e8 <pop_on+0x68>
    800081a4:	07852783          	lw	a5,120(a0)
    800081a8:	02f05863          	blez	a5,800081d8 <pop_on+0x58>
    800081ac:	fff7879b          	addiw	a5,a5,-1
    800081b0:	06f52c23          	sw	a5,120(a0)
    800081b4:	07853783          	ld	a5,120(a0)
    800081b8:	00079863          	bnez	a5,800081c8 <pop_on+0x48>
    800081bc:	100027f3          	csrr	a5,sstatus
    800081c0:	ffd7f793          	andi	a5,a5,-3
    800081c4:	10079073          	csrw	sstatus,a5
    800081c8:	00813083          	ld	ra,8(sp)
    800081cc:	00013403          	ld	s0,0(sp)
    800081d0:	01010113          	addi	sp,sp,16
    800081d4:	00008067          	ret
    800081d8:	00001517          	auipc	a0,0x1
    800081dc:	54050513          	addi	a0,a0,1344 # 80009718 <digits+0x70>
    800081e0:	fffff097          	auipc	ra,0xfffff
    800081e4:	f2c080e7          	jalr	-212(ra) # 8000710c <panic>
    800081e8:	00001517          	auipc	a0,0x1
    800081ec:	51050513          	addi	a0,a0,1296 # 800096f8 <digits+0x50>
    800081f0:	fffff097          	auipc	ra,0xfffff
    800081f4:	f1c080e7          	jalr	-228(ra) # 8000710c <panic>

00000000800081f8 <__memset>:
    800081f8:	ff010113          	addi	sp,sp,-16
    800081fc:	00813423          	sd	s0,8(sp)
    80008200:	01010413          	addi	s0,sp,16
    80008204:	1a060e63          	beqz	a2,800083c0 <__memset+0x1c8>
    80008208:	40a007b3          	neg	a5,a0
    8000820c:	0077f793          	andi	a5,a5,7
    80008210:	00778693          	addi	a3,a5,7
    80008214:	00b00813          	li	a6,11
    80008218:	0ff5f593          	andi	a1,a1,255
    8000821c:	fff6071b          	addiw	a4,a2,-1
    80008220:	1b06e663          	bltu	a3,a6,800083cc <__memset+0x1d4>
    80008224:	1cd76463          	bltu	a4,a3,800083ec <__memset+0x1f4>
    80008228:	1a078e63          	beqz	a5,800083e4 <__memset+0x1ec>
    8000822c:	00b50023          	sb	a1,0(a0)
    80008230:	00100713          	li	a4,1
    80008234:	1ae78463          	beq	a5,a4,800083dc <__memset+0x1e4>
    80008238:	00b500a3          	sb	a1,1(a0)
    8000823c:	00200713          	li	a4,2
    80008240:	1ae78a63          	beq	a5,a4,800083f4 <__memset+0x1fc>
    80008244:	00b50123          	sb	a1,2(a0)
    80008248:	00300713          	li	a4,3
    8000824c:	18e78463          	beq	a5,a4,800083d4 <__memset+0x1dc>
    80008250:	00b501a3          	sb	a1,3(a0)
    80008254:	00400713          	li	a4,4
    80008258:	1ae78263          	beq	a5,a4,800083fc <__memset+0x204>
    8000825c:	00b50223          	sb	a1,4(a0)
    80008260:	00500713          	li	a4,5
    80008264:	1ae78063          	beq	a5,a4,80008404 <__memset+0x20c>
    80008268:	00b502a3          	sb	a1,5(a0)
    8000826c:	00700713          	li	a4,7
    80008270:	18e79e63          	bne	a5,a4,8000840c <__memset+0x214>
    80008274:	00b50323          	sb	a1,6(a0)
    80008278:	00700e93          	li	t4,7
    8000827c:	00859713          	slli	a4,a1,0x8
    80008280:	00e5e733          	or	a4,a1,a4
    80008284:	01059e13          	slli	t3,a1,0x10
    80008288:	01c76e33          	or	t3,a4,t3
    8000828c:	01859313          	slli	t1,a1,0x18
    80008290:	006e6333          	or	t1,t3,t1
    80008294:	02059893          	slli	a7,a1,0x20
    80008298:	40f60e3b          	subw	t3,a2,a5
    8000829c:	011368b3          	or	a7,t1,a7
    800082a0:	02859813          	slli	a6,a1,0x28
    800082a4:	0108e833          	or	a6,a7,a6
    800082a8:	03059693          	slli	a3,a1,0x30
    800082ac:	003e589b          	srliw	a7,t3,0x3
    800082b0:	00d866b3          	or	a3,a6,a3
    800082b4:	03859713          	slli	a4,a1,0x38
    800082b8:	00389813          	slli	a6,a7,0x3
    800082bc:	00f507b3          	add	a5,a0,a5
    800082c0:	00e6e733          	or	a4,a3,a4
    800082c4:	000e089b          	sext.w	a7,t3
    800082c8:	00f806b3          	add	a3,a6,a5
    800082cc:	00e7b023          	sd	a4,0(a5)
    800082d0:	00878793          	addi	a5,a5,8
    800082d4:	fed79ce3          	bne	a5,a3,800082cc <__memset+0xd4>
    800082d8:	ff8e7793          	andi	a5,t3,-8
    800082dc:	0007871b          	sext.w	a4,a5
    800082e0:	01d787bb          	addw	a5,a5,t4
    800082e4:	0ce88e63          	beq	a7,a4,800083c0 <__memset+0x1c8>
    800082e8:	00f50733          	add	a4,a0,a5
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0017871b          	addiw	a4,a5,1
    800082f4:	0cc77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0027871b          	addiw	a4,a5,2
    80008304:	0ac77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0037871b          	addiw	a4,a5,3
    80008314:	0ac77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0047871b          	addiw	a4,a5,4
    80008324:	08c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0057871b          	addiw	a4,a5,5
    80008334:	08c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0067871b          	addiw	a4,a5,6
    80008344:	06c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	0077871b          	addiw	a4,a5,7
    80008354:	06c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	0087871b          	addiw	a4,a5,8
    80008364:	04c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	0097871b          	addiw	a4,a5,9
    80008374:	04c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	00a7871b          	addiw	a4,a5,10
    80008384:	02c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	00b7871b          	addiw	a4,a5,11
    80008394:	02c77663          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	00c7871b          	addiw	a4,a5,12
    800083a4:	00c77e63          	bgeu	a4,a2,800083c0 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	00d7879b          	addiw	a5,a5,13
    800083b4:	00c7f663          	bgeu	a5,a2,800083c0 <__memset+0x1c8>
    800083b8:	00f507b3          	add	a5,a0,a5
    800083bc:	00b78023          	sb	a1,0(a5)
    800083c0:	00813403          	ld	s0,8(sp)
    800083c4:	01010113          	addi	sp,sp,16
    800083c8:	00008067          	ret
    800083cc:	00b00693          	li	a3,11
    800083d0:	e55ff06f          	j	80008224 <__memset+0x2c>
    800083d4:	00300e93          	li	t4,3
    800083d8:	ea5ff06f          	j	8000827c <__memset+0x84>
    800083dc:	00100e93          	li	t4,1
    800083e0:	e9dff06f          	j	8000827c <__memset+0x84>
    800083e4:	00000e93          	li	t4,0
    800083e8:	e95ff06f          	j	8000827c <__memset+0x84>
    800083ec:	00000793          	li	a5,0
    800083f0:	ef9ff06f          	j	800082e8 <__memset+0xf0>
    800083f4:	00200e93          	li	t4,2
    800083f8:	e85ff06f          	j	8000827c <__memset+0x84>
    800083fc:	00400e93          	li	t4,4
    80008400:	e7dff06f          	j	8000827c <__memset+0x84>
    80008404:	00500e93          	li	t4,5
    80008408:	e75ff06f          	j	8000827c <__memset+0x84>
    8000840c:	00600e93          	li	t4,6
    80008410:	e6dff06f          	j	8000827c <__memset+0x84>

0000000080008414 <__memmove>:
    80008414:	ff010113          	addi	sp,sp,-16
    80008418:	00813423          	sd	s0,8(sp)
    8000841c:	01010413          	addi	s0,sp,16
    80008420:	0e060863          	beqz	a2,80008510 <__memmove+0xfc>
    80008424:	fff6069b          	addiw	a3,a2,-1
    80008428:	0006881b          	sext.w	a6,a3
    8000842c:	0ea5e863          	bltu	a1,a0,8000851c <__memmove+0x108>
    80008430:	00758713          	addi	a4,a1,7
    80008434:	00a5e7b3          	or	a5,a1,a0
    80008438:	40a70733          	sub	a4,a4,a0
    8000843c:	0077f793          	andi	a5,a5,7
    80008440:	00f73713          	sltiu	a4,a4,15
    80008444:	00174713          	xori	a4,a4,1
    80008448:	0017b793          	seqz	a5,a5
    8000844c:	00e7f7b3          	and	a5,a5,a4
    80008450:	10078863          	beqz	a5,80008560 <__memmove+0x14c>
    80008454:	00900793          	li	a5,9
    80008458:	1107f463          	bgeu	a5,a6,80008560 <__memmove+0x14c>
    8000845c:	0036581b          	srliw	a6,a2,0x3
    80008460:	fff8081b          	addiw	a6,a6,-1
    80008464:	02081813          	slli	a6,a6,0x20
    80008468:	01d85893          	srli	a7,a6,0x1d
    8000846c:	00858813          	addi	a6,a1,8
    80008470:	00058793          	mv	a5,a1
    80008474:	00050713          	mv	a4,a0
    80008478:	01088833          	add	a6,a7,a6
    8000847c:	0007b883          	ld	a7,0(a5)
    80008480:	00878793          	addi	a5,a5,8
    80008484:	00870713          	addi	a4,a4,8
    80008488:	ff173c23          	sd	a7,-8(a4)
    8000848c:	ff0798e3          	bne	a5,a6,8000847c <__memmove+0x68>
    80008490:	ff867713          	andi	a4,a2,-8
    80008494:	02071793          	slli	a5,a4,0x20
    80008498:	0207d793          	srli	a5,a5,0x20
    8000849c:	00f585b3          	add	a1,a1,a5
    800084a0:	40e686bb          	subw	a3,a3,a4
    800084a4:	00f507b3          	add	a5,a0,a5
    800084a8:	06e60463          	beq	a2,a4,80008510 <__memmove+0xfc>
    800084ac:	0005c703          	lbu	a4,0(a1)
    800084b0:	00e78023          	sb	a4,0(a5)
    800084b4:	04068e63          	beqz	a3,80008510 <__memmove+0xfc>
    800084b8:	0015c603          	lbu	a2,1(a1)
    800084bc:	00100713          	li	a4,1
    800084c0:	00c780a3          	sb	a2,1(a5)
    800084c4:	04e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084c8:	0025c603          	lbu	a2,2(a1)
    800084cc:	00200713          	li	a4,2
    800084d0:	00c78123          	sb	a2,2(a5)
    800084d4:	02e68e63          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084d8:	0035c603          	lbu	a2,3(a1)
    800084dc:	00300713          	li	a4,3
    800084e0:	00c781a3          	sb	a2,3(a5)
    800084e4:	02e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084e8:	0045c603          	lbu	a2,4(a1)
    800084ec:	00400713          	li	a4,4
    800084f0:	00c78223          	sb	a2,4(a5)
    800084f4:	00e68e63          	beq	a3,a4,80008510 <__memmove+0xfc>
    800084f8:	0055c603          	lbu	a2,5(a1)
    800084fc:	00500713          	li	a4,5
    80008500:	00c782a3          	sb	a2,5(a5)
    80008504:	00e68663          	beq	a3,a4,80008510 <__memmove+0xfc>
    80008508:	0065c703          	lbu	a4,6(a1)
    8000850c:	00e78323          	sb	a4,6(a5)
    80008510:	00813403          	ld	s0,8(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	02061713          	slli	a4,a2,0x20
    80008520:	02075713          	srli	a4,a4,0x20
    80008524:	00e587b3          	add	a5,a1,a4
    80008528:	f0f574e3          	bgeu	a0,a5,80008430 <__memmove+0x1c>
    8000852c:	02069613          	slli	a2,a3,0x20
    80008530:	02065613          	srli	a2,a2,0x20
    80008534:	fff64613          	not	a2,a2
    80008538:	00e50733          	add	a4,a0,a4
    8000853c:	00c78633          	add	a2,a5,a2
    80008540:	fff7c683          	lbu	a3,-1(a5)
    80008544:	fff78793          	addi	a5,a5,-1
    80008548:	fff70713          	addi	a4,a4,-1
    8000854c:	00d70023          	sb	a3,0(a4)
    80008550:	fec798e3          	bne	a5,a2,80008540 <__memmove+0x12c>
    80008554:	00813403          	ld	s0,8(sp)
    80008558:	01010113          	addi	sp,sp,16
    8000855c:	00008067          	ret
    80008560:	02069713          	slli	a4,a3,0x20
    80008564:	02075713          	srli	a4,a4,0x20
    80008568:	00170713          	addi	a4,a4,1
    8000856c:	00e50733          	add	a4,a0,a4
    80008570:	00050793          	mv	a5,a0
    80008574:	0005c683          	lbu	a3,0(a1)
    80008578:	00178793          	addi	a5,a5,1
    8000857c:	00158593          	addi	a1,a1,1
    80008580:	fed78fa3          	sb	a3,-1(a5)
    80008584:	fee798e3          	bne	a5,a4,80008574 <__memmove+0x160>
    80008588:	f89ff06f          	j	80008510 <__memmove+0xfc>

000000008000858c <__putc>:
    8000858c:	fe010113          	addi	sp,sp,-32
    80008590:	00813823          	sd	s0,16(sp)
    80008594:	00113c23          	sd	ra,24(sp)
    80008598:	02010413          	addi	s0,sp,32
    8000859c:	00050793          	mv	a5,a0
    800085a0:	fef40593          	addi	a1,s0,-17
    800085a4:	00100613          	li	a2,1
    800085a8:	00000513          	li	a0,0
    800085ac:	fef407a3          	sb	a5,-17(s0)
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	b3c080e7          	jalr	-1220(ra) # 800070ec <console_write>
    800085b8:	01813083          	ld	ra,24(sp)
    800085bc:	01013403          	ld	s0,16(sp)
    800085c0:	02010113          	addi	sp,sp,32
    800085c4:	00008067          	ret

00000000800085c8 <__getc>:
    800085c8:	fe010113          	addi	sp,sp,-32
    800085cc:	00813823          	sd	s0,16(sp)
    800085d0:	00113c23          	sd	ra,24(sp)
    800085d4:	02010413          	addi	s0,sp,32
    800085d8:	fe840593          	addi	a1,s0,-24
    800085dc:	00100613          	li	a2,1
    800085e0:	00000513          	li	a0,0
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	ae8080e7          	jalr	-1304(ra) # 800070cc <console_read>
    800085ec:	fe844503          	lbu	a0,-24(s0)
    800085f0:	01813083          	ld	ra,24(sp)
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	02010113          	addi	sp,sp,32
    800085fc:	00008067          	ret

0000000080008600 <console_handler>:
    80008600:	fe010113          	addi	sp,sp,-32
    80008604:	00813823          	sd	s0,16(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	00913423          	sd	s1,8(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	14202773          	csrr	a4,scause
    80008618:	100027f3          	csrr	a5,sstatus
    8000861c:	0027f793          	andi	a5,a5,2
    80008620:	06079e63          	bnez	a5,8000869c <console_handler+0x9c>
    80008624:	00074c63          	bltz	a4,8000863c <console_handler+0x3c>
    80008628:	01813083          	ld	ra,24(sp)
    8000862c:	01013403          	ld	s0,16(sp)
    80008630:	00813483          	ld	s1,8(sp)
    80008634:	02010113          	addi	sp,sp,32
    80008638:	00008067          	ret
    8000863c:	0ff77713          	andi	a4,a4,255
    80008640:	00900793          	li	a5,9
    80008644:	fef712e3          	bne	a4,a5,80008628 <console_handler+0x28>
    80008648:	ffffe097          	auipc	ra,0xffffe
    8000864c:	6dc080e7          	jalr	1756(ra) # 80006d24 <plic_claim>
    80008650:	00a00793          	li	a5,10
    80008654:	00050493          	mv	s1,a0
    80008658:	02f50c63          	beq	a0,a5,80008690 <console_handler+0x90>
    8000865c:	fc0506e3          	beqz	a0,80008628 <console_handler+0x28>
    80008660:	00050593          	mv	a1,a0
    80008664:	00001517          	auipc	a0,0x1
    80008668:	fbc50513          	addi	a0,a0,-68 # 80009620 <_ZL6digits+0x110>
    8000866c:	fffff097          	auipc	ra,0xfffff
    80008670:	afc080e7          	jalr	-1284(ra) # 80007168 <__printf>
    80008674:	01013403          	ld	s0,16(sp)
    80008678:	01813083          	ld	ra,24(sp)
    8000867c:	00048513          	mv	a0,s1
    80008680:	00813483          	ld	s1,8(sp)
    80008684:	02010113          	addi	sp,sp,32
    80008688:	ffffe317          	auipc	t1,0xffffe
    8000868c:	6d430067          	jr	1748(t1) # 80006d5c <plic_complete>
    80008690:	fffff097          	auipc	ra,0xfffff
    80008694:	3e0080e7          	jalr	992(ra) # 80007a70 <uartintr>
    80008698:	fddff06f          	j	80008674 <console_handler+0x74>
    8000869c:	00001517          	auipc	a0,0x1
    800086a0:	08450513          	addi	a0,a0,132 # 80009720 <digits+0x78>
    800086a4:	fffff097          	auipc	ra,0xfffff
    800086a8:	a68080e7          	jalr	-1432(ra) # 8000710c <panic>
	...
